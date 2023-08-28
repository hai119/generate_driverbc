; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_macronix.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_macronix.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

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
%struct.nand_manufacturer_ops = type { {}*, i32 (%struct.nand_chip*)*, {}*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* }
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
%struct.nand_onfi_params = type <{ [4 x i8], i16, i16, i16, [2 x i8], i16, i8, [17 x i8], [12 x i8], [20 x i8], i8, i16, [13 x i8], i32, i16, i32, i16, i32, i32, i8, i8, i8, i16, i16, i8, i16, i8, i8, i8, i8, i8, [13 x i8], i8, i16, i16, i16, i16, i16, i16, i16, i8, i16, i16, i16, i8, i8, i16, i16, [8 x i8], i16, [88 x i8], i16 }>
%struct.nand_onfi_vendor_macronix = type { i8, i8 }
%struct.nand_op_cmd_instr = type { i8 }

@macronix_nand_manuf_ops = dso_local constant { void (%struct.nand_chip*)*, i32 (%struct.nand_chip*)*, void (%struct.nand_chip*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* } { void (%struct.nand_chip*)* null, i32 (%struct.nand_chip*)* @macronix_nand_init, void (%struct.nand_chip*)* null, void (%struct.nand_chip*, %struct.nand_onfi_params*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@macronix_nand_fix_broken_get_timings.broken_get_timings = internal constant [14 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i32 0, i32 0)], align 16, !dbg !109
@.str.2 = private unnamed_addr constant [13 x i8] c"MX30LF1G18AC\00", align 1
@.str.3 = private unnamed_addr constant [13 x i8] c"MX30LF1G28AC\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"MX30LF2G18AC\00", align 1
@.str.5 = private unnamed_addr constant [13 x i8] c"MX30LF2G28AC\00", align 1
@.str.6 = private unnamed_addr constant [13 x i8] c"MX30LF4G18AC\00", align 1
@.str.7 = private unnamed_addr constant [13 x i8] c"MX30LF4G28AC\00", align 1
@.str.8 = private unnamed_addr constant [13 x i8] c"MX60LF8G18AC\00", align 1
@.str.9 = private unnamed_addr constant [13 x i8] c"MX30UF1G18AC\00", align 1
@.str.10 = private unnamed_addr constant [13 x i8] c"MX30UF1G16AC\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"MX30UF2G18AC\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"MX30UF2G16AC\00", align 1
@.str.13 = private unnamed_addr constant [13 x i8] c"MX30UF4G18AC\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c"MX30UF4G16AC\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"MX30UF4G28AC\00", align 1
@.str.16 = private unnamed_addr constant [27 x i8] c"mxic,enable-randomizer-otp\00", align 1
@.str.17 = private unnamed_addr constant [35 x i8] c"\016Macronix NAND randomizer failed\0A\00", align 1
@.str.18 = private unnamed_addr constant [36 x i8] c"\016Macronix NAND randomizer enabled\0A\00", align 1
@.str.19 = private unnamed_addr constant [33 x i8] c"\013Block protection check failed\0A\00", align 1
@.str.20 = private unnamed_addr constant [24 x i8] c"\013%s all blocks failed\0A\00", align 1
@__func__.mxic_nand_lock = private unnamed_addr constant [15 x i8] c"mxic_nand_lock\00", align 1
@__func__.mxic_nand_unlock = private unnamed_addr constant [17 x i8] c"mxic_nand_unlock\00", align 1
@macronix_nand_deep_power_down_support.deep_power_down_dev = internal constant [3 x i8*] [i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.23, i32 0, i32 0)], align 16, !dbg !2809
@.str.21 = private unnamed_addr constant [13 x i8] c"MX30UF1G28AD\00", align 1
@.str.22 = private unnamed_addr constant [13 x i8] c"MX30UF2G28AD\00", align 1
@.str.23 = private unnamed_addr constant [13 x i8] c"MX30UF4G28AD\00", align 1
@.str.24 = private unnamed_addr constant [41 x i8] c"\013Suspending MXIC NAND chip failed (%d)\0A\00", align 1
@.str.25 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @macronix_nand_init(%struct.nand_chip* %chip) #0 !dbg !2818 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2819, metadata !DIExpression()), !dbg !2820
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2821
  %call = call zeroext i1 @nand_is_slc(%struct.nand_chip* %0) #6, !dbg !2823
  br i1 %call, label %if.then, label %if.end, !dbg !2824

if.then:                                          ; preds = %entry
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2825
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 6, !dbg !2826
  %2 = load i32, i32* %options, align 8, !dbg !2827
  %conv = zext i32 %2 to i64, !dbg !2827
  %or = or i64 %conv, 50331648, !dbg !2827
  %conv1 = trunc i64 %or to i32, !dbg !2827
  store i32 %conv1, i32* %options, align 8, !dbg !2827
  br label %if.end, !dbg !2825

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2828
  call void @macronix_nand_fix_broken_get_timings(%struct.nand_chip* %3) #6, !dbg !2829
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2830
  call void @macronix_nand_onfi_init(%struct.nand_chip* %4) #6, !dbg !2831
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2832
  call void @macronix_nand_block_protection_support(%struct.nand_chip* %5) #6, !dbg !2833
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2834
  call void @macronix_nand_deep_power_down_support(%struct.nand_chip* %6) #6, !dbg !2835
  ret i32 0, !dbg !2836
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_is_slc(%struct.nand_chip* %chip) #0 !dbg !2837 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2840, metadata !DIExpression()), !dbg !2841
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2842, metadata !DIExpression()), !dbg !2844
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2844
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2844
  %call = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base) #6, !dbg !2844
  %cmp = icmp eq i32 %call, 0, !dbg !2844
  %lnot = xor i1 %cmp, true, !dbg !2844
  %lnot1 = xor i1 %lnot, true, !dbg !2844
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2844
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2844
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2845
  %tobool = icmp ne i32 %1, 0, !dbg !2845
  %lnot2 = xor i1 %tobool, true, !dbg !2845
  %lnot4 = xor i1 %lnot2, true, !dbg !2845
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2845
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2845
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2845
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2844

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2845

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !2847

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2849

do.end:                                           ; preds = %do.body7
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2847
  br label %do.body8, !dbg !2847

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !2851

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2853

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !2851

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 1284, i32 2313, i64 12) #7, !dbg !2855, !srcloc !2857
  br label %do.end12, !dbg !2855

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #7, !dbg !2858, !srcloc !2860
  br label %do.body13, !dbg !2851

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !2861

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !2851

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !2847

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !2863

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !2847

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !2847

if.end:                                           ; preds = %do.end18, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2844
  %tobool19 = icmp ne i32 %2, 0, !dbg !2844
  %lnot20 = xor i1 %tobool19, true, !dbg !2844
  %lnot22 = xor i1 %lnot20, true, !dbg !2844
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2844
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2844
  store i64 %conv24, i64* %tmp, align 8, !dbg !2845
  %3 = load i64, i64* %tmp, align 8, !dbg !2844
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2865
  %base25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 0, !dbg !2866
  %call26 = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base25) #6, !dbg !2867
  %cmp27 = icmp eq i32 %call26, 1, !dbg !2868
  ret i1 %cmp27, !dbg !2869
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @macronix_nand_fix_broken_get_timings(%struct.nand_chip* %chip) #0 !dbg !111 {
entry:
  %map.addr.i7 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i7, metadata !2870, metadata !DIExpression()), !dbg !2875
  %start.addr.i8 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i8, metadata !2877, metadata !DIExpression()), !dbg !2878
  %nbits.addr.i9 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i9, metadata !2879, metadata !DIExpression()), !dbg !2880
  %map.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i, metadata !2870, metadata !DIExpression()), !dbg !2881
  %start.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i, metadata !2877, metadata !DIExpression()), !dbg !2883
  %nbits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i, metadata !2879, metadata !DIExpression()), !dbg !2884
  %chip.addr = alloca %struct.nand_chip*, align 8
  %i = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2887, metadata !DIExpression()), !dbg !2888
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2889
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 2, !dbg !2891
  %supports_set_get_features = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 1, !dbg !2892
  %1 = load i8, i8* %supports_set_get_features, align 8, !dbg !2892
  %tobool = trunc i8 %1 to i1, !dbg !2892
  br i1 %tobool, label %if.end, label %if.then, !dbg !2893

if.then:                                          ; preds = %entry
  br label %return, !dbg !2894

if.end:                                           ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2895
  %parameters1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 2, !dbg !2896
  %model = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters1, i32 0, i32 0, !dbg !2897
  %3 = load i8*, i8** %model, align 8, !dbg !2897
  %call = call i32 @match_string(i8** getelementptr inbounds ([14 x i8*], [14 x i8*]* @macronix_nand_fix_broken_get_timings.broken_get_timings, i64 0, i64 0), i64 14, i8* %3) #6, !dbg !2898
  store i32 %call, i32* %i, align 4, !dbg !2899
  %4 = load i32, i32* %i, align 4, !dbg !2900
  %cmp = icmp slt i32 %4, 0, !dbg !2902
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2903

if.then2:                                         ; preds = %if.end
  br label %return, !dbg !2904

if.end3:                                          ; preds = %if.end
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2905
  %parameters4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 2, !dbg !2906
  %get_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters4, i32 0, i32 3, !dbg !2907
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list, i64 0, i64 0, !dbg !2905
  store i64* %arraydecay, i64** %map.addr.i, align 8
  store i32 1, i32* %start.addr.i, align 4
  store i32 1, i32* %nbits.addr.i, align 4
  %6 = load i32, i32* %nbits.addr.i, align 4, !dbg !2908
  %7 = call i1 @llvm.is.constant.i32(i32 %6) #7, !dbg !2910
  br i1 %7, label %land.lhs.true.i, label %if.else.i, !dbg !2911

land.lhs.true.i:                                  ; preds = %if.end3
  %8 = load i32, i32* %nbits.addr.i, align 4, !dbg !2912
  %cmp.i = icmp eq i32 %8, 1, !dbg !2913
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !2914

if.then.i:                                        ; preds = %land.lhs.true.i
  %9 = load i32, i32* %start.addr.i, align 4, !dbg !2915
  %conv.i = zext i32 %9 to i64, !dbg !2915
  %10 = load i64*, i64** %map.addr.i, align 8, !dbg !2916
  call void @__clear_bit(i64 %conv.i, i64* %10) #8, !dbg !2917
  br label %bitmap_clear.exit, !dbg !2917

if.else.i:                                        ; preds = %land.lhs.true.i, %if.end3
  %11 = load i32, i32* %start.addr.i, align 4, !dbg !2918
  %and.i = and i32 %11, 7, !dbg !2920
  %12 = call i1 @llvm.is.constant.i32(i32 %and.i) #7, !dbg !2921
  br i1 %12, label %land.lhs.true1.i, label %if.else14.i, !dbg !2922

land.lhs.true1.i:                                 ; preds = %if.else.i
  %13 = load i32, i32* %start.addr.i, align 4, !dbg !2923
  %and2.i = and i32 %13, 7, !dbg !2923
  %cmp3.i = icmp eq i32 %and2.i, 0, !dbg !2923
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.else14.i, !dbg !2924

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %14 = load i32, i32* %nbits.addr.i, align 4, !dbg !2925
  %and6.i = and i32 %14, 7, !dbg !2926
  %15 = call i1 @llvm.is.constant.i32(i32 %and6.i) #7, !dbg !2927
  br i1 %15, label %land.lhs.true7.i, label %if.else14.i, !dbg !2928

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %16 = load i32, i32* %nbits.addr.i, align 4, !dbg !2929
  %and8.i = and i32 %16, 7, !dbg !2929
  %cmp9.i = icmp eq i32 %and8.i, 0, !dbg !2929
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i, !dbg !2930

if.then11.i:                                      ; preds = %land.lhs.true7.i
  %17 = load i64*, i64** %map.addr.i, align 8, !dbg !2931
  %18 = bitcast i64* %17 to i8*, !dbg !2932
  %19 = load i32, i32* %start.addr.i, align 4, !dbg !2933
  %div.i = udiv i32 %19, 8, !dbg !2934
  %idx.ext.i = zext i32 %div.i to i64, !dbg !2935
  %add.ptr.i = getelementptr i8, i8* %18, i64 %idx.ext.i, !dbg !2935
  %20 = load i32, i32* %nbits.addr.i, align 4, !dbg !2936
  %div12.i = udiv i32 %20, 8, !dbg !2937
  %conv13.i = zext i32 %div12.i to i64, !dbg !2936
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i, i8 0, i64 %conv13.i, i1 false) #7, !dbg !2938
  br label %if.end.i, !dbg !2938

if.else14.i:                                      ; preds = %land.lhs.true7.i, %land.lhs.true5.i, %land.lhs.true1.i, %if.else.i
  %21 = load i64*, i64** %map.addr.i, align 8, !dbg !2939
  %22 = load i32, i32* %start.addr.i, align 4, !dbg !2940
  %23 = load i32, i32* %nbits.addr.i, align 4, !dbg !2941
  call void @__bitmap_clear(i64* %21, i32 %22, i32 %23) #8, !dbg !2942
  br label %if.end.i

if.end.i:                                         ; preds = %if.else14.i, %if.then11.i
  br label %bitmap_clear.exit

bitmap_clear.exit:                                ; preds = %if.then.i, %if.end.i
  %24 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2943
  %parameters5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 2, !dbg !2944
  %set_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters5, i32 0, i32 2, !dbg !2945
  %arraydecay6 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list, i64 0, i64 0, !dbg !2943
  store i64* %arraydecay6, i64** %map.addr.i7, align 8
  store i32 1, i32* %start.addr.i8, align 4
  store i32 1, i32* %nbits.addr.i9, align 4
  %25 = load i32, i32* %nbits.addr.i9, align 4, !dbg !2946
  %26 = call i1 @llvm.is.constant.i32(i32 %25) #7, !dbg !2947
  br i1 %26, label %land.lhs.true.i11, label %if.else.i15, !dbg !2948

land.lhs.true.i11:                                ; preds = %bitmap_clear.exit
  %27 = load i32, i32* %nbits.addr.i9, align 4, !dbg !2949
  %cmp.i10 = icmp eq i32 %27, 1, !dbg !2950
  br i1 %cmp.i10, label %if.then.i13, label %if.else.i15, !dbg !2951

if.then.i13:                                      ; preds = %land.lhs.true.i11
  %28 = load i32, i32* %start.addr.i8, align 4, !dbg !2952
  %conv.i12 = zext i32 %28 to i64, !dbg !2952
  %29 = load i64*, i64** %map.addr.i7, align 8, !dbg !2953
  call void @__clear_bit(i64 %conv.i12, i64* %29) #8, !dbg !2954
  br label %bitmap_clear.exit32, !dbg !2954

if.else.i15:                                      ; preds = %land.lhs.true.i11, %bitmap_clear.exit
  %30 = load i32, i32* %start.addr.i8, align 4, !dbg !2955
  %and.i14 = and i32 %30, 7, !dbg !2956
  %31 = call i1 @llvm.is.constant.i32(i32 %and.i14) #7, !dbg !2957
  br i1 %31, label %land.lhs.true1.i18, label %if.else14.i30, !dbg !2958

land.lhs.true1.i18:                               ; preds = %if.else.i15
  %32 = load i32, i32* %start.addr.i8, align 4, !dbg !2959
  %and2.i16 = and i32 %32, 7, !dbg !2959
  %cmp3.i17 = icmp eq i32 %and2.i16, 0, !dbg !2959
  br i1 %cmp3.i17, label %land.lhs.true5.i20, label %if.else14.i30, !dbg !2960

land.lhs.true5.i20:                               ; preds = %land.lhs.true1.i18
  %33 = load i32, i32* %nbits.addr.i9, align 4, !dbg !2961
  %and6.i19 = and i32 %33, 7, !dbg !2962
  %34 = call i1 @llvm.is.constant.i32(i32 %and6.i19) #7, !dbg !2963
  br i1 %34, label %land.lhs.true7.i23, label %if.else14.i30, !dbg !2964

land.lhs.true7.i23:                               ; preds = %land.lhs.true5.i20
  %35 = load i32, i32* %nbits.addr.i9, align 4, !dbg !2965
  %and8.i21 = and i32 %35, 7, !dbg !2965
  %cmp9.i22 = icmp eq i32 %and8.i21, 0, !dbg !2965
  br i1 %cmp9.i22, label %if.then11.i29, label %if.else14.i30, !dbg !2966

if.then11.i29:                                    ; preds = %land.lhs.true7.i23
  %36 = load i64*, i64** %map.addr.i7, align 8, !dbg !2967
  %37 = bitcast i64* %36 to i8*, !dbg !2968
  %38 = load i32, i32* %start.addr.i8, align 4, !dbg !2969
  %div.i24 = udiv i32 %38, 8, !dbg !2970
  %idx.ext.i25 = zext i32 %div.i24 to i64, !dbg !2971
  %add.ptr.i26 = getelementptr i8, i8* %37, i64 %idx.ext.i25, !dbg !2971
  %39 = load i32, i32* %nbits.addr.i9, align 4, !dbg !2972
  %div12.i27 = udiv i32 %39, 8, !dbg !2973
  %conv13.i28 = zext i32 %div12.i27 to i64, !dbg !2972
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i26, i8 0, i64 %conv13.i28, i1 false) #7, !dbg !2974
  br label %if.end.i31, !dbg !2974

if.else14.i30:                                    ; preds = %land.lhs.true7.i23, %land.lhs.true5.i20, %land.lhs.true1.i18, %if.else.i15
  %40 = load i64*, i64** %map.addr.i7, align 8, !dbg !2975
  %41 = load i32, i32* %start.addr.i8, align 4, !dbg !2976
  %42 = load i32, i32* %nbits.addr.i9, align 4, !dbg !2977
  call void @__bitmap_clear(i64* %40, i32 %41, i32 %42) #8, !dbg !2978
  br label %if.end.i31

if.end.i31:                                       ; preds = %if.else14.i30, %if.then11.i29
  br label %bitmap_clear.exit32

bitmap_clear.exit32:                              ; preds = %if.then.i13, %if.end.i31
  br label %return, !dbg !2979

return:                                           ; preds = %bitmap_clear.exit32, %if.then2, %if.then
  ret void, !dbg !2979
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @macronix_nand_onfi_init(%struct.nand_chip* %chip) #0 !dbg !2980 {
entry:
  %map.addr.i147 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i147, metadata !2981, metadata !DIExpression()), !dbg !2983
  %start.addr.i148 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i148, metadata !2987, metadata !DIExpression()), !dbg !2988
  %nbits.addr.i149 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i149, metadata !2989, metadata !DIExpression()), !dbg !2990
  %map.addr.i121 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i121, metadata !2981, metadata !DIExpression()), !dbg !2991
  %start.addr.i122 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i122, metadata !2987, metadata !DIExpression()), !dbg !2993
  %nbits.addr.i123 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i123, metadata !2989, metadata !DIExpression()), !dbg !2994
  %map.addr.i95 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i95, metadata !2870, metadata !DIExpression()), !dbg !2995
  %start.addr.i96 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i96, metadata !2877, metadata !DIExpression()), !dbg !3003
  %nbits.addr.i97 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i97, metadata !2879, metadata !DIExpression()), !dbg !3004
  %map.addr.i70 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i70, metadata !2870, metadata !DIExpression()), !dbg !3005
  %start.addr.i71 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i71, metadata !2877, metadata !DIExpression()), !dbg !3007
  %nbits.addr.i72 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i72, metadata !2879, metadata !DIExpression()), !dbg !3008
  %map.addr.i44 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i44, metadata !2981, metadata !DIExpression()), !dbg !3009
  %start.addr.i45 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i45, metadata !2987, metadata !DIExpression()), !dbg !3011
  %nbits.addr.i46 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i46, metadata !2989, metadata !DIExpression()), !dbg !3012
  %map.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i, metadata !2981, metadata !DIExpression()), !dbg !3013
  %start.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i, metadata !2987, metadata !DIExpression()), !dbg !3015
  %nbits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i, metadata !2989, metadata !DIExpression()), !dbg !3016
  %chip.addr = alloca %struct.nand_chip*, align 8
  %p = alloca %struct.nand_parameters*, align 8
  %mxic = alloca %struct.nand_onfi_vendor_macronix*, align 8
  %dn = alloca %struct.device_node*, align 8
  %rand_otp = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3017, metadata !DIExpression()), !dbg !3018
  call void @llvm.dbg.declare(metadata %struct.nand_parameters** %p, metadata !3019, metadata !DIExpression()), !dbg !3021
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3022
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 2, !dbg !3023
  store %struct.nand_parameters* %parameters, %struct.nand_parameters** %p, align 8, !dbg !3021
  call void @llvm.dbg.declare(metadata %struct.nand_onfi_vendor_macronix** %mxic, metadata !3024, metadata !DIExpression()), !dbg !3025
  call void @llvm.dbg.declare(metadata %struct.device_node** %dn, metadata !3026, metadata !DIExpression()), !dbg !3027
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3028
  %call = call %struct.device_node* @nand_get_flash_node(%struct.nand_chip* %1) #6, !dbg !3029
  store %struct.device_node* %call, %struct.device_node** %dn, align 8, !dbg !3027
  call void @llvm.dbg.declare(metadata i32* %rand_otp, metadata !3030, metadata !DIExpression()), !dbg !3031
  store i32 0, i32* %rand_otp, align 4, !dbg !3031
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3032, metadata !DIExpression()), !dbg !3033
  %2 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3034
  %onfi = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %2, i32 0, i32 4, !dbg !3036
  %3 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3036
  %tobool = icmp ne %struct.onfi_params* %3, null, !dbg !3034
  br i1 %tobool, label %if.end, label %if.then, !dbg !3037

if.then:                                          ; preds = %entry
  br label %if.end43, !dbg !3038

if.end:                                           ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %dn, align 8, !dbg !3039
  %call1 = call %struct.property* @of_find_property(%struct.device_node* %4, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.16, i64 0, i64 0), i32* null) #6, !dbg !3041
  %tobool2 = icmp ne %struct.property* %call1, null, !dbg !3041
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !3042

if.then3:                                         ; preds = %if.end
  store i32 1, i32* %rand_otp, align 4, !dbg !3043
  br label %if.end4, !dbg !3044

if.end4:                                          ; preds = %if.then3, %if.end
  %5 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3045
  %onfi5 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %5, i32 0, i32 4, !dbg !3046
  %6 = load %struct.onfi_params*, %struct.onfi_params** %onfi5, align 8, !dbg !3046
  %vendor = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %6, i32 0, i32 7, !dbg !3047
  %arraydecay = getelementptr inbounds [88 x i8], [88 x i8]* %vendor, i64 0, i64 0, !dbg !3045
  %7 = bitcast i8* %arraydecay to %struct.nand_onfi_vendor_macronix*, !dbg !3048
  store %struct.nand_onfi_vendor_macronix* %7, %struct.nand_onfi_vendor_macronix** %mxic, align 8, !dbg !3049
  %8 = load i32, i32* %rand_otp, align 4, !dbg !3050
  %tobool6 = icmp ne i32 %8, 0, !dbg !3050
  br i1 %tobool6, label %land.lhs.true, label %if.end28, !dbg !3051

land.lhs.true:                                    ; preds = %if.end4
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3052
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 6, !dbg !3053
  %10 = load i32, i32* %options, align 8, !dbg !3053
  %conv = zext i32 %10 to i64, !dbg !3052
  %and = and i64 %conv, 512, !dbg !3054
  %tobool7 = icmp ne i64 %and, 0, !dbg !3054
  br i1 %tobool7, label %land.lhs.true8, label %if.end28, !dbg !3055

land.lhs.true8:                                   ; preds = %land.lhs.true
  %11 = load %struct.nand_onfi_vendor_macronix*, %struct.nand_onfi_vendor_macronix** %mxic, align 8, !dbg !3056
  %reliability_func = getelementptr inbounds %struct.nand_onfi_vendor_macronix, %struct.nand_onfi_vendor_macronix* %11, i32 0, i32 1, !dbg !3057
  %12 = load i8, i8* %reliability_func, align 1, !dbg !3057
  %conv9 = zext i8 %12 to i64, !dbg !3056
  %and10 = and i64 %conv9, 2, !dbg !3058
  %tobool11 = icmp ne i64 %and10, 0, !dbg !3058
  br i1 %tobool11, label %if.then12, label %if.end28, !dbg !3059

if.then12:                                        ; preds = %land.lhs.true8
  %13 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3060
  %supports_set_get_features = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %13, i32 0, i32 1, !dbg !3061
  %14 = load i8, i8* %supports_set_get_features, align 8, !dbg !3061
  %tobool13 = trunc i8 %14 to i1, !dbg !3061
  br i1 %tobool13, label %if.then14, label %if.end27, !dbg !3062

if.then14:                                        ; preds = %if.then12
  %15 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3063
  %set_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %15, i32 0, i32 2, !dbg !3064
  %arraydecay15 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list, i64 0, i64 0, !dbg !3063
  store i64* %arraydecay15, i64** %map.addr.i, align 8
  store i32 176, i32* %start.addr.i, align 4
  store i32 1, i32* %nbits.addr.i, align 4
  %16 = load i32, i32* %nbits.addr.i, align 4, !dbg !3065
  %17 = call i1 @llvm.is.constant.i32(i32 %16) #7, !dbg !3067
  br i1 %17, label %land.lhs.true.i, label %if.else.i, !dbg !3068

land.lhs.true.i:                                  ; preds = %if.then14
  %18 = load i32, i32* %nbits.addr.i, align 4, !dbg !3069
  %cmp.i = icmp eq i32 %18, 1, !dbg !3070
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !3071

if.then.i:                                        ; preds = %land.lhs.true.i
  %19 = load i32, i32* %start.addr.i, align 4, !dbg !3072
  %conv.i = zext i32 %19 to i64, !dbg !3072
  %20 = load i64*, i64** %map.addr.i, align 8, !dbg !3073
  call void @__set_bit(i64 %conv.i, i64* %20) #8, !dbg !3074
  br label %bitmap_set.exit, !dbg !3074

if.else.i:                                        ; preds = %land.lhs.true.i, %if.then14
  %21 = load i32, i32* %start.addr.i, align 4, !dbg !3075
  %and.i = and i32 %21, 7, !dbg !3077
  %22 = call i1 @llvm.is.constant.i32(i32 %and.i) #7, !dbg !3078
  br i1 %22, label %land.lhs.true1.i, label %if.else14.i, !dbg !3079

land.lhs.true1.i:                                 ; preds = %if.else.i
  %23 = load i32, i32* %start.addr.i, align 4, !dbg !3080
  %and2.i = and i32 %23, 7, !dbg !3080
  %cmp3.i = icmp eq i32 %and2.i, 0, !dbg !3080
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.else14.i, !dbg !3081

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %24 = load i32, i32* %nbits.addr.i, align 4, !dbg !3082
  %and6.i = and i32 %24, 7, !dbg !3083
  %25 = call i1 @llvm.is.constant.i32(i32 %and6.i) #7, !dbg !3084
  br i1 %25, label %land.lhs.true7.i, label %if.else14.i, !dbg !3085

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %26 = load i32, i32* %nbits.addr.i, align 4, !dbg !3086
  %and8.i = and i32 %26, 7, !dbg !3086
  %cmp9.i = icmp eq i32 %and8.i, 0, !dbg !3086
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i, !dbg !3087

if.then11.i:                                      ; preds = %land.lhs.true7.i
  %27 = load i64*, i64** %map.addr.i, align 8, !dbg !3088
  %28 = bitcast i64* %27 to i8*, !dbg !3089
  %29 = load i32, i32* %start.addr.i, align 4, !dbg !3090
  %div.i = udiv i32 %29, 8, !dbg !3091
  %idx.ext.i = zext i32 %div.i to i64, !dbg !3092
  %add.ptr.i = getelementptr i8, i8* %28, i64 %idx.ext.i, !dbg !3092
  %30 = load i32, i32* %nbits.addr.i, align 4, !dbg !3093
  %div12.i = udiv i32 %30, 8, !dbg !3094
  %conv13.i = zext i32 %div12.i to i64, !dbg !3093
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i, i8 -1, i64 %conv13.i, i1 false) #7, !dbg !3095
  br label %if.end.i, !dbg !3095

if.else14.i:                                      ; preds = %land.lhs.true7.i, %land.lhs.true5.i, %land.lhs.true1.i, %if.else.i
  %31 = load i64*, i64** %map.addr.i, align 8, !dbg !3096
  %32 = load i32, i32* %start.addr.i, align 4, !dbg !3097
  %33 = load i32, i32* %nbits.addr.i, align 4, !dbg !3098
  call void @__bitmap_set(i64* %31, i32 %32, i32 %33) #8, !dbg !3099
  br label %if.end.i

if.end.i:                                         ; preds = %if.else14.i, %if.then11.i
  br label %bitmap_set.exit

bitmap_set.exit:                                  ; preds = %if.then.i, %if.end.i
  %34 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3100
  %get_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %34, i32 0, i32 3, !dbg !3101
  %arraydecay16 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list, i64 0, i64 0, !dbg !3100
  store i64* %arraydecay16, i64** %map.addr.i44, align 8
  store i32 176, i32* %start.addr.i45, align 4
  store i32 1, i32* %nbits.addr.i46, align 4
  %35 = load i32, i32* %nbits.addr.i46, align 4, !dbg !3102
  %36 = call i1 @llvm.is.constant.i32(i32 %35) #7, !dbg !3103
  br i1 %36, label %land.lhs.true.i48, label %if.else.i52, !dbg !3104

land.lhs.true.i48:                                ; preds = %bitmap_set.exit
  %37 = load i32, i32* %nbits.addr.i46, align 4, !dbg !3105
  %cmp.i47 = icmp eq i32 %37, 1, !dbg !3106
  br i1 %cmp.i47, label %if.then.i50, label %if.else.i52, !dbg !3107

if.then.i50:                                      ; preds = %land.lhs.true.i48
  %38 = load i32, i32* %start.addr.i45, align 4, !dbg !3108
  %conv.i49 = zext i32 %38 to i64, !dbg !3108
  %39 = load i64*, i64** %map.addr.i44, align 8, !dbg !3109
  call void @__set_bit(i64 %conv.i49, i64* %39) #8, !dbg !3110
  br label %bitmap_set.exit69, !dbg !3110

if.else.i52:                                      ; preds = %land.lhs.true.i48, %bitmap_set.exit
  %40 = load i32, i32* %start.addr.i45, align 4, !dbg !3111
  %and.i51 = and i32 %40, 7, !dbg !3112
  %41 = call i1 @llvm.is.constant.i32(i32 %and.i51) #7, !dbg !3113
  br i1 %41, label %land.lhs.true1.i55, label %if.else14.i67, !dbg !3114

land.lhs.true1.i55:                               ; preds = %if.else.i52
  %42 = load i32, i32* %start.addr.i45, align 4, !dbg !3115
  %and2.i53 = and i32 %42, 7, !dbg !3115
  %cmp3.i54 = icmp eq i32 %and2.i53, 0, !dbg !3115
  br i1 %cmp3.i54, label %land.lhs.true5.i57, label %if.else14.i67, !dbg !3116

land.lhs.true5.i57:                               ; preds = %land.lhs.true1.i55
  %43 = load i32, i32* %nbits.addr.i46, align 4, !dbg !3117
  %and6.i56 = and i32 %43, 7, !dbg !3118
  %44 = call i1 @llvm.is.constant.i32(i32 %and6.i56) #7, !dbg !3119
  br i1 %44, label %land.lhs.true7.i60, label %if.else14.i67, !dbg !3120

land.lhs.true7.i60:                               ; preds = %land.lhs.true5.i57
  %45 = load i32, i32* %nbits.addr.i46, align 4, !dbg !3121
  %and8.i58 = and i32 %45, 7, !dbg !3121
  %cmp9.i59 = icmp eq i32 %and8.i58, 0, !dbg !3121
  br i1 %cmp9.i59, label %if.then11.i66, label %if.else14.i67, !dbg !3122

if.then11.i66:                                    ; preds = %land.lhs.true7.i60
  %46 = load i64*, i64** %map.addr.i44, align 8, !dbg !3123
  %47 = bitcast i64* %46 to i8*, !dbg !3124
  %48 = load i32, i32* %start.addr.i45, align 4, !dbg !3125
  %div.i61 = udiv i32 %48, 8, !dbg !3126
  %idx.ext.i62 = zext i32 %div.i61 to i64, !dbg !3127
  %add.ptr.i63 = getelementptr i8, i8* %47, i64 %idx.ext.i62, !dbg !3127
  %49 = load i32, i32* %nbits.addr.i46, align 4, !dbg !3128
  %div12.i64 = udiv i32 %49, 8, !dbg !3129
  %conv13.i65 = zext i32 %div12.i64 to i64, !dbg !3128
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i63, i8 -1, i64 %conv13.i65, i1 false) #7, !dbg !3130
  br label %if.end.i68, !dbg !3130

if.else14.i67:                                    ; preds = %land.lhs.true7.i60, %land.lhs.true5.i57, %land.lhs.true1.i55, %if.else.i52
  %50 = load i64*, i64** %map.addr.i44, align 8, !dbg !3131
  %51 = load i32, i32* %start.addr.i45, align 4, !dbg !3132
  %52 = load i32, i32* %nbits.addr.i46, align 4, !dbg !3133
  call void @__bitmap_set(i64* %50, i32 %51, i32 %52) #8, !dbg !3134
  br label %if.end.i68

if.end.i68:                                       ; preds = %if.else14.i67, %if.then11.i66
  br label %bitmap_set.exit69

bitmap_set.exit69:                                ; preds = %if.then.i50, %if.end.i68
  %53 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3135
  %call17 = call i32 @macronix_nand_randomizer_check_enable(%struct.nand_chip* %53) #6, !dbg !3136
  store i32 %call17, i32* %ret, align 4, !dbg !3137
  %54 = load i32, i32* %ret, align 4, !dbg !3138
  %cmp = icmp slt i32 %54, 0, !dbg !3139
  br i1 %cmp, label %if.then19, label %if.else, !dbg !3140

if.then19:                                        ; preds = %bitmap_set.exit69
  %55 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3141
  %set_feature_list20 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %55, i32 0, i32 2, !dbg !3142
  %arraydecay21 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list20, i64 0, i64 0, !dbg !3141
  store i64* %arraydecay21, i64** %map.addr.i70, align 8
  store i32 176, i32* %start.addr.i71, align 4
  store i32 1, i32* %nbits.addr.i72, align 4
  %56 = load i32, i32* %nbits.addr.i72, align 4, !dbg !3143
  %57 = call i1 @llvm.is.constant.i32(i32 %56) #7, !dbg !3144
  br i1 %57, label %land.lhs.true.i74, label %if.else.i78, !dbg !3145

land.lhs.true.i74:                                ; preds = %if.then19
  %58 = load i32, i32* %nbits.addr.i72, align 4, !dbg !3146
  %cmp.i73 = icmp eq i32 %58, 1, !dbg !3147
  br i1 %cmp.i73, label %if.then.i76, label %if.else.i78, !dbg !3148

if.then.i76:                                      ; preds = %land.lhs.true.i74
  %59 = load i32, i32* %start.addr.i71, align 4, !dbg !3149
  %conv.i75 = zext i32 %59 to i64, !dbg !3149
  %60 = load i64*, i64** %map.addr.i70, align 8, !dbg !3150
  call void @__clear_bit(i64 %conv.i75, i64* %60) #8, !dbg !3151
  br label %bitmap_clear.exit, !dbg !3151

if.else.i78:                                      ; preds = %land.lhs.true.i74, %if.then19
  %61 = load i32, i32* %start.addr.i71, align 4, !dbg !3152
  %and.i77 = and i32 %61, 7, !dbg !3153
  %62 = call i1 @llvm.is.constant.i32(i32 %and.i77) #7, !dbg !3154
  br i1 %62, label %land.lhs.true1.i81, label %if.else14.i93, !dbg !3155

land.lhs.true1.i81:                               ; preds = %if.else.i78
  %63 = load i32, i32* %start.addr.i71, align 4, !dbg !3156
  %and2.i79 = and i32 %63, 7, !dbg !3156
  %cmp3.i80 = icmp eq i32 %and2.i79, 0, !dbg !3156
  br i1 %cmp3.i80, label %land.lhs.true5.i83, label %if.else14.i93, !dbg !3157

land.lhs.true5.i83:                               ; preds = %land.lhs.true1.i81
  %64 = load i32, i32* %nbits.addr.i72, align 4, !dbg !3158
  %and6.i82 = and i32 %64, 7, !dbg !3159
  %65 = call i1 @llvm.is.constant.i32(i32 %and6.i82) #7, !dbg !3160
  br i1 %65, label %land.lhs.true7.i86, label %if.else14.i93, !dbg !3161

land.lhs.true7.i86:                               ; preds = %land.lhs.true5.i83
  %66 = load i32, i32* %nbits.addr.i72, align 4, !dbg !3162
  %and8.i84 = and i32 %66, 7, !dbg !3162
  %cmp9.i85 = icmp eq i32 %and8.i84, 0, !dbg !3162
  br i1 %cmp9.i85, label %if.then11.i92, label %if.else14.i93, !dbg !3163

if.then11.i92:                                    ; preds = %land.lhs.true7.i86
  %67 = load i64*, i64** %map.addr.i70, align 8, !dbg !3164
  %68 = bitcast i64* %67 to i8*, !dbg !3165
  %69 = load i32, i32* %start.addr.i71, align 4, !dbg !3166
  %div.i87 = udiv i32 %69, 8, !dbg !3167
  %idx.ext.i88 = zext i32 %div.i87 to i64, !dbg !3168
  %add.ptr.i89 = getelementptr i8, i8* %68, i64 %idx.ext.i88, !dbg !3168
  %70 = load i32, i32* %nbits.addr.i72, align 4, !dbg !3169
  %div12.i90 = udiv i32 %70, 8, !dbg !3170
  %conv13.i91 = zext i32 %div12.i90 to i64, !dbg !3169
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i89, i8 0, i64 %conv13.i91, i1 false) #7, !dbg !3171
  br label %if.end.i94, !dbg !3171

if.else14.i93:                                    ; preds = %land.lhs.true7.i86, %land.lhs.true5.i83, %land.lhs.true1.i81, %if.else.i78
  %71 = load i64*, i64** %map.addr.i70, align 8, !dbg !3172
  %72 = load i32, i32* %start.addr.i71, align 4, !dbg !3173
  %73 = load i32, i32* %nbits.addr.i72, align 4, !dbg !3174
  call void @__bitmap_clear(i64* %71, i32 %72, i32 %73) #8, !dbg !3175
  br label %if.end.i94

if.end.i94:                                       ; preds = %if.else14.i93, %if.then11.i92
  br label %bitmap_clear.exit

bitmap_clear.exit:                                ; preds = %if.then.i76, %if.end.i94
  %74 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3176
  %get_feature_list22 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %74, i32 0, i32 3, !dbg !3177
  %arraydecay23 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list22, i64 0, i64 0, !dbg !3176
  store i64* %arraydecay23, i64** %map.addr.i95, align 8
  store i32 176, i32* %start.addr.i96, align 4
  store i32 1, i32* %nbits.addr.i97, align 4
  %75 = load i32, i32* %nbits.addr.i97, align 4, !dbg !3178
  %76 = call i1 @llvm.is.constant.i32(i32 %75) #7, !dbg !3179
  br i1 %76, label %land.lhs.true.i99, label %if.else.i103, !dbg !3180

land.lhs.true.i99:                                ; preds = %bitmap_clear.exit
  %77 = load i32, i32* %nbits.addr.i97, align 4, !dbg !3181
  %cmp.i98 = icmp eq i32 %77, 1, !dbg !3182
  br i1 %cmp.i98, label %if.then.i101, label %if.else.i103, !dbg !3183

if.then.i101:                                     ; preds = %land.lhs.true.i99
  %78 = load i32, i32* %start.addr.i96, align 4, !dbg !3184
  %conv.i100 = zext i32 %78 to i64, !dbg !3184
  %79 = load i64*, i64** %map.addr.i95, align 8, !dbg !3185
  call void @__clear_bit(i64 %conv.i100, i64* %79) #8, !dbg !3186
  br label %bitmap_clear.exit120, !dbg !3186

if.else.i103:                                     ; preds = %land.lhs.true.i99, %bitmap_clear.exit
  %80 = load i32, i32* %start.addr.i96, align 4, !dbg !3187
  %and.i102 = and i32 %80, 7, !dbg !3188
  %81 = call i1 @llvm.is.constant.i32(i32 %and.i102) #7, !dbg !3189
  br i1 %81, label %land.lhs.true1.i106, label %if.else14.i118, !dbg !3190

land.lhs.true1.i106:                              ; preds = %if.else.i103
  %82 = load i32, i32* %start.addr.i96, align 4, !dbg !3191
  %and2.i104 = and i32 %82, 7, !dbg !3191
  %cmp3.i105 = icmp eq i32 %and2.i104, 0, !dbg !3191
  br i1 %cmp3.i105, label %land.lhs.true5.i108, label %if.else14.i118, !dbg !3192

land.lhs.true5.i108:                              ; preds = %land.lhs.true1.i106
  %83 = load i32, i32* %nbits.addr.i97, align 4, !dbg !3193
  %and6.i107 = and i32 %83, 7, !dbg !3194
  %84 = call i1 @llvm.is.constant.i32(i32 %and6.i107) #7, !dbg !3195
  br i1 %84, label %land.lhs.true7.i111, label %if.else14.i118, !dbg !3196

land.lhs.true7.i111:                              ; preds = %land.lhs.true5.i108
  %85 = load i32, i32* %nbits.addr.i97, align 4, !dbg !3197
  %and8.i109 = and i32 %85, 7, !dbg !3197
  %cmp9.i110 = icmp eq i32 %and8.i109, 0, !dbg !3197
  br i1 %cmp9.i110, label %if.then11.i117, label %if.else14.i118, !dbg !3198

if.then11.i117:                                   ; preds = %land.lhs.true7.i111
  %86 = load i64*, i64** %map.addr.i95, align 8, !dbg !3199
  %87 = bitcast i64* %86 to i8*, !dbg !3200
  %88 = load i32, i32* %start.addr.i96, align 4, !dbg !3201
  %div.i112 = udiv i32 %88, 8, !dbg !3202
  %idx.ext.i113 = zext i32 %div.i112 to i64, !dbg !3203
  %add.ptr.i114 = getelementptr i8, i8* %87, i64 %idx.ext.i113, !dbg !3203
  %89 = load i32, i32* %nbits.addr.i97, align 4, !dbg !3204
  %div12.i115 = udiv i32 %89, 8, !dbg !3205
  %conv13.i116 = zext i32 %div12.i115 to i64, !dbg !3204
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i114, i8 0, i64 %conv13.i116, i1 false) #7, !dbg !3206
  br label %if.end.i119, !dbg !3206

if.else14.i118:                                   ; preds = %land.lhs.true7.i111, %land.lhs.true5.i108, %land.lhs.true1.i106, %if.else.i103
  %90 = load i64*, i64** %map.addr.i95, align 8, !dbg !3207
  %91 = load i32, i32* %start.addr.i96, align 4, !dbg !3208
  %92 = load i32, i32* %nbits.addr.i97, align 4, !dbg !3209
  call void @__bitmap_clear(i64* %90, i32 %91, i32 %92) #8, !dbg !3210
  br label %if.end.i119

if.end.i119:                                      ; preds = %if.else14.i118, %if.then11.i117
  br label %bitmap_clear.exit120

bitmap_clear.exit120:                             ; preds = %if.then.i101, %if.end.i119
  %call24 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.17, i64 0, i64 0)) #9, !dbg !3211
  br label %if.end26, !dbg !3212

if.else:                                          ; preds = %bitmap_set.exit69
  %call25 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.18, i64 0, i64 0)) #9, !dbg !3213
  br label %if.end26

if.end26:                                         ; preds = %if.else, %bitmap_clear.exit120
  br label %if.end27, !dbg !3215

if.end27:                                         ; preds = %if.end26, %if.then12
  br label %if.end28, !dbg !3216

if.end28:                                         ; preds = %if.end27, %land.lhs.true8, %land.lhs.true, %if.end4
  %93 = load %struct.nand_onfi_vendor_macronix*, %struct.nand_onfi_vendor_macronix** %mxic, align 8, !dbg !3217
  %reliability_func29 = getelementptr inbounds %struct.nand_onfi_vendor_macronix, %struct.nand_onfi_vendor_macronix* %93, i32 0, i32 1, !dbg !3219
  %94 = load i8, i8* %reliability_func29, align 1, !dbg !3219
  %conv30 = zext i8 %94 to i64, !dbg !3217
  %and31 = and i64 %conv30, 1, !dbg !3220
  %cmp32 = icmp eq i64 %and31, 0, !dbg !3221
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !3222

if.then34:                                        ; preds = %if.end28
  br label %if.end43, !dbg !3223

if.end35:                                         ; preds = %if.end28
  %95 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3224
  %read_retries = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %95, i32 0, i32 29, !dbg !3225
  store i32 6, i32* %read_retries, align 8, !dbg !3226
  %96 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3227
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %96, i32 0, i32 4, !dbg !3228
  %setup_read_retry = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 4, !dbg !3229
  store i32 (%struct.nand_chip*, i32)* @macronix_nand_setup_read_retry, i32 (%struct.nand_chip*, i32)** %setup_read_retry, align 8, !dbg !3230
  %97 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3231
  %supports_set_get_features36 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %97, i32 0, i32 1, !dbg !3232
  %98 = load i8, i8* %supports_set_get_features36, align 8, !dbg !3232
  %tobool37 = trunc i8 %98 to i1, !dbg !3232
  br i1 %tobool37, label %if.then38, label %if.end43, !dbg !3233

if.then38:                                        ; preds = %if.end35
  %99 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3234
  %set_feature_list39 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %99, i32 0, i32 2, !dbg !3235
  %arraydecay40 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list39, i64 0, i64 0, !dbg !3234
  store i64* %arraydecay40, i64** %map.addr.i121, align 8
  store i32 137, i32* %start.addr.i122, align 4
  store i32 1, i32* %nbits.addr.i123, align 4
  %100 = load i32, i32* %nbits.addr.i123, align 4, !dbg !3236
  %101 = call i1 @llvm.is.constant.i32(i32 %100) #7, !dbg !3237
  br i1 %101, label %land.lhs.true.i125, label %if.else.i129, !dbg !3238

land.lhs.true.i125:                               ; preds = %if.then38
  %102 = load i32, i32* %nbits.addr.i123, align 4, !dbg !3239
  %cmp.i124 = icmp eq i32 %102, 1, !dbg !3240
  br i1 %cmp.i124, label %if.then.i127, label %if.else.i129, !dbg !3241

if.then.i127:                                     ; preds = %land.lhs.true.i125
  %103 = load i32, i32* %start.addr.i122, align 4, !dbg !3242
  %conv.i126 = zext i32 %103 to i64, !dbg !3242
  %104 = load i64*, i64** %map.addr.i121, align 8, !dbg !3243
  call void @__set_bit(i64 %conv.i126, i64* %104) #8, !dbg !3244
  br label %bitmap_set.exit146, !dbg !3244

if.else.i129:                                     ; preds = %land.lhs.true.i125, %if.then38
  %105 = load i32, i32* %start.addr.i122, align 4, !dbg !3245
  %and.i128 = and i32 %105, 7, !dbg !3246
  %106 = call i1 @llvm.is.constant.i32(i32 %and.i128) #7, !dbg !3247
  br i1 %106, label %land.lhs.true1.i132, label %if.else14.i144, !dbg !3248

land.lhs.true1.i132:                              ; preds = %if.else.i129
  %107 = load i32, i32* %start.addr.i122, align 4, !dbg !3249
  %and2.i130 = and i32 %107, 7, !dbg !3249
  %cmp3.i131 = icmp eq i32 %and2.i130, 0, !dbg !3249
  br i1 %cmp3.i131, label %land.lhs.true5.i134, label %if.else14.i144, !dbg !3250

land.lhs.true5.i134:                              ; preds = %land.lhs.true1.i132
  %108 = load i32, i32* %nbits.addr.i123, align 4, !dbg !3251
  %and6.i133 = and i32 %108, 7, !dbg !3252
  %109 = call i1 @llvm.is.constant.i32(i32 %and6.i133) #7, !dbg !3253
  br i1 %109, label %land.lhs.true7.i137, label %if.else14.i144, !dbg !3254

land.lhs.true7.i137:                              ; preds = %land.lhs.true5.i134
  %110 = load i32, i32* %nbits.addr.i123, align 4, !dbg !3255
  %and8.i135 = and i32 %110, 7, !dbg !3255
  %cmp9.i136 = icmp eq i32 %and8.i135, 0, !dbg !3255
  br i1 %cmp9.i136, label %if.then11.i143, label %if.else14.i144, !dbg !3256

if.then11.i143:                                   ; preds = %land.lhs.true7.i137
  %111 = load i64*, i64** %map.addr.i121, align 8, !dbg !3257
  %112 = bitcast i64* %111 to i8*, !dbg !3258
  %113 = load i32, i32* %start.addr.i122, align 4, !dbg !3259
  %div.i138 = udiv i32 %113, 8, !dbg !3260
  %idx.ext.i139 = zext i32 %div.i138 to i64, !dbg !3261
  %add.ptr.i140 = getelementptr i8, i8* %112, i64 %idx.ext.i139, !dbg !3261
  %114 = load i32, i32* %nbits.addr.i123, align 4, !dbg !3262
  %div12.i141 = udiv i32 %114, 8, !dbg !3263
  %conv13.i142 = zext i32 %div12.i141 to i64, !dbg !3262
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i140, i8 -1, i64 %conv13.i142, i1 false) #7, !dbg !3264
  br label %if.end.i145, !dbg !3264

if.else14.i144:                                   ; preds = %land.lhs.true7.i137, %land.lhs.true5.i134, %land.lhs.true1.i132, %if.else.i129
  %115 = load i64*, i64** %map.addr.i121, align 8, !dbg !3265
  %116 = load i32, i32* %start.addr.i122, align 4, !dbg !3266
  %117 = load i32, i32* %nbits.addr.i123, align 4, !dbg !3267
  call void @__bitmap_set(i64* %115, i32 %116, i32 %117) #8, !dbg !3268
  br label %if.end.i145

if.end.i145:                                      ; preds = %if.else14.i144, %if.then11.i143
  br label %bitmap_set.exit146

bitmap_set.exit146:                               ; preds = %if.then.i127, %if.end.i145
  %118 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3269
  %get_feature_list41 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %118, i32 0, i32 3, !dbg !3270
  %arraydecay42 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list41, i64 0, i64 0, !dbg !3269
  store i64* %arraydecay42, i64** %map.addr.i147, align 8
  store i32 137, i32* %start.addr.i148, align 4
  store i32 1, i32* %nbits.addr.i149, align 4
  %119 = load i32, i32* %nbits.addr.i149, align 4, !dbg !3271
  %120 = call i1 @llvm.is.constant.i32(i32 %119) #7, !dbg !3272
  br i1 %120, label %land.lhs.true.i151, label %if.else.i155, !dbg !3273

land.lhs.true.i151:                               ; preds = %bitmap_set.exit146
  %121 = load i32, i32* %nbits.addr.i149, align 4, !dbg !3274
  %cmp.i150 = icmp eq i32 %121, 1, !dbg !3275
  br i1 %cmp.i150, label %if.then.i153, label %if.else.i155, !dbg !3276

if.then.i153:                                     ; preds = %land.lhs.true.i151
  %122 = load i32, i32* %start.addr.i148, align 4, !dbg !3277
  %conv.i152 = zext i32 %122 to i64, !dbg !3277
  %123 = load i64*, i64** %map.addr.i147, align 8, !dbg !3278
  call void @__set_bit(i64 %conv.i152, i64* %123) #8, !dbg !3279
  br label %bitmap_set.exit172, !dbg !3279

if.else.i155:                                     ; preds = %land.lhs.true.i151, %bitmap_set.exit146
  %124 = load i32, i32* %start.addr.i148, align 4, !dbg !3280
  %and.i154 = and i32 %124, 7, !dbg !3281
  %125 = call i1 @llvm.is.constant.i32(i32 %and.i154) #7, !dbg !3282
  br i1 %125, label %land.lhs.true1.i158, label %if.else14.i170, !dbg !3283

land.lhs.true1.i158:                              ; preds = %if.else.i155
  %126 = load i32, i32* %start.addr.i148, align 4, !dbg !3284
  %and2.i156 = and i32 %126, 7, !dbg !3284
  %cmp3.i157 = icmp eq i32 %and2.i156, 0, !dbg !3284
  br i1 %cmp3.i157, label %land.lhs.true5.i160, label %if.else14.i170, !dbg !3285

land.lhs.true5.i160:                              ; preds = %land.lhs.true1.i158
  %127 = load i32, i32* %nbits.addr.i149, align 4, !dbg !3286
  %and6.i159 = and i32 %127, 7, !dbg !3287
  %128 = call i1 @llvm.is.constant.i32(i32 %and6.i159) #7, !dbg !3288
  br i1 %128, label %land.lhs.true7.i163, label %if.else14.i170, !dbg !3289

land.lhs.true7.i163:                              ; preds = %land.lhs.true5.i160
  %129 = load i32, i32* %nbits.addr.i149, align 4, !dbg !3290
  %and8.i161 = and i32 %129, 7, !dbg !3290
  %cmp9.i162 = icmp eq i32 %and8.i161, 0, !dbg !3290
  br i1 %cmp9.i162, label %if.then11.i169, label %if.else14.i170, !dbg !3291

if.then11.i169:                                   ; preds = %land.lhs.true7.i163
  %130 = load i64*, i64** %map.addr.i147, align 8, !dbg !3292
  %131 = bitcast i64* %130 to i8*, !dbg !3293
  %132 = load i32, i32* %start.addr.i148, align 4, !dbg !3294
  %div.i164 = udiv i32 %132, 8, !dbg !3295
  %idx.ext.i165 = zext i32 %div.i164 to i64, !dbg !3296
  %add.ptr.i166 = getelementptr i8, i8* %131, i64 %idx.ext.i165, !dbg !3296
  %133 = load i32, i32* %nbits.addr.i149, align 4, !dbg !3297
  %div12.i167 = udiv i32 %133, 8, !dbg !3298
  %conv13.i168 = zext i32 %div12.i167 to i64, !dbg !3297
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i166, i8 -1, i64 %conv13.i168, i1 false) #7, !dbg !3299
  br label %if.end.i171, !dbg !3299

if.else14.i170:                                   ; preds = %land.lhs.true7.i163, %land.lhs.true5.i160, %land.lhs.true1.i158, %if.else.i155
  %134 = load i64*, i64** %map.addr.i147, align 8, !dbg !3300
  %135 = load i32, i32* %start.addr.i148, align 4, !dbg !3301
  %136 = load i32, i32* %nbits.addr.i149, align 4, !dbg !3302
  call void @__bitmap_set(i64* %134, i32 %135, i32 %136) #8, !dbg !3303
  br label %if.end.i171

if.end.i171:                                      ; preds = %if.else14.i170, %if.then11.i169
  br label %bitmap_set.exit172

bitmap_set.exit172:                               ; preds = %if.then.i153, %if.end.i171
  br label %if.end43, !dbg !3304

if.end43:                                         ; preds = %if.then, %if.then34, %bitmap_set.exit172, %if.end35
  ret void, !dbg !3305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @macronix_nand_block_protection_support(%struct.nand_chip* %chip) #0 !dbg !3306 {
entry:
  %map.addr.i39 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i39, metadata !2981, metadata !DIExpression()), !dbg !3307
  %start.addr.i40 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i40, metadata !2987, metadata !DIExpression()), !dbg !3309
  %nbits.addr.i41 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i41, metadata !2989, metadata !DIExpression()), !dbg !3310
  %map.addr.i14 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i14, metadata !2870, metadata !DIExpression()), !dbg !3311
  %start.addr.i15 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i15, metadata !2877, metadata !DIExpression()), !dbg !3315
  %nbits.addr.i16 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i16, metadata !2879, metadata !DIExpression()), !dbg !3316
  %map.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %map.addr.i, metadata !2981, metadata !DIExpression()), !dbg !3317
  %start.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %start.addr.i, metadata !2987, metadata !DIExpression()), !dbg !3319
  %nbits.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr.i, metadata !2989, metadata !DIExpression()), !dbg !3320
  %chip.addr = alloca %struct.nand_chip*, align 8
  %feature = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3321, metadata !DIExpression()), !dbg !3322
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !3323, metadata !DIExpression()), !dbg !3324
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3325, metadata !DIExpression()), !dbg !3326
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3327
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 2, !dbg !3328
  %get_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 3, !dbg !3329
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list, i64 0, i64 0, !dbg !3327
  store i64* %arraydecay, i64** %map.addr.i, align 8
  store i32 160, i32* %start.addr.i, align 4
  store i32 1, i32* %nbits.addr.i, align 4
  %1 = load i32, i32* %nbits.addr.i, align 4, !dbg !3330
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #7, !dbg !3331
  br i1 %2, label %land.lhs.true.i, label %if.else.i, !dbg !3332

land.lhs.true.i:                                  ; preds = %entry
  %3 = load i32, i32* %nbits.addr.i, align 4, !dbg !3333
  %cmp.i = icmp eq i32 %3, 1, !dbg !3334
  br i1 %cmp.i, label %if.then.i, label %if.else.i, !dbg !3335

if.then.i:                                        ; preds = %land.lhs.true.i
  %4 = load i32, i32* %start.addr.i, align 4, !dbg !3336
  %conv.i = zext i32 %4 to i64, !dbg !3336
  %5 = load i64*, i64** %map.addr.i, align 8, !dbg !3337
  call void @__set_bit(i64 %conv.i, i64* %5) #8, !dbg !3338
  br label %bitmap_set.exit, !dbg !3338

if.else.i:                                        ; preds = %land.lhs.true.i, %entry
  %6 = load i32, i32* %start.addr.i, align 4, !dbg !3339
  %and.i = and i32 %6, 7, !dbg !3340
  %7 = call i1 @llvm.is.constant.i32(i32 %and.i) #7, !dbg !3341
  br i1 %7, label %land.lhs.true1.i, label %if.else14.i, !dbg !3342

land.lhs.true1.i:                                 ; preds = %if.else.i
  %8 = load i32, i32* %start.addr.i, align 4, !dbg !3343
  %and2.i = and i32 %8, 7, !dbg !3343
  %cmp3.i = icmp eq i32 %and2.i, 0, !dbg !3343
  br i1 %cmp3.i, label %land.lhs.true5.i, label %if.else14.i, !dbg !3344

land.lhs.true5.i:                                 ; preds = %land.lhs.true1.i
  %9 = load i32, i32* %nbits.addr.i, align 4, !dbg !3345
  %and6.i = and i32 %9, 7, !dbg !3346
  %10 = call i1 @llvm.is.constant.i32(i32 %and6.i) #7, !dbg !3347
  br i1 %10, label %land.lhs.true7.i, label %if.else14.i, !dbg !3348

land.lhs.true7.i:                                 ; preds = %land.lhs.true5.i
  %11 = load i32, i32* %nbits.addr.i, align 4, !dbg !3349
  %and8.i = and i32 %11, 7, !dbg !3349
  %cmp9.i = icmp eq i32 %and8.i, 0, !dbg !3349
  br i1 %cmp9.i, label %if.then11.i, label %if.else14.i, !dbg !3350

if.then11.i:                                      ; preds = %land.lhs.true7.i
  %12 = load i64*, i64** %map.addr.i, align 8, !dbg !3351
  %13 = bitcast i64* %12 to i8*, !dbg !3352
  %14 = load i32, i32* %start.addr.i, align 4, !dbg !3353
  %div.i = udiv i32 %14, 8, !dbg !3354
  %idx.ext.i = zext i32 %div.i to i64, !dbg !3355
  %add.ptr.i = getelementptr i8, i8* %13, i64 %idx.ext.i, !dbg !3355
  %15 = load i32, i32* %nbits.addr.i, align 4, !dbg !3356
  %div12.i = udiv i32 %15, 8, !dbg !3357
  %conv13.i = zext i32 %div12.i to i64, !dbg !3356
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i, i8 -1, i64 %conv13.i, i1 false) #7, !dbg !3358
  br label %if.end.i, !dbg !3358

if.else14.i:                                      ; preds = %land.lhs.true7.i, %land.lhs.true5.i, %land.lhs.true1.i, %if.else.i
  %16 = load i64*, i64** %map.addr.i, align 8, !dbg !3359
  %17 = load i32, i32* %start.addr.i, align 4, !dbg !3360
  %18 = load i32, i32* %nbits.addr.i, align 4, !dbg !3361
  call void @__bitmap_set(i64* %16, i32 %17, i32 %18) #8, !dbg !3362
  br label %if.end.i

if.end.i:                                         ; preds = %if.else14.i, %if.then11.i
  br label %bitmap_set.exit

bitmap_set.exit:                                  ; preds = %if.then.i, %if.end.i
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3363
  store i8 0, i8* %arrayidx, align 1, !dbg !3364
  %19 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3365
  call void @nand_select_target(%struct.nand_chip* %19, i32 0) #6, !dbg !3366
  %20 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3367
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3368
  %call = call i32 @nand_get_features(%struct.nand_chip* %20, i32 160, i8* %arraydecay1) #6, !dbg !3369
  store i32 %call, i32* %ret, align 4, !dbg !3370
  %21 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3371
  call void @nand_deselect_target(%struct.nand_chip* %21) #6, !dbg !3372
  %22 = load i32, i32* %ret, align 4, !dbg !3373
  %tobool = icmp ne i32 %22, 0, !dbg !3373
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !3374

lor.lhs.false:                                    ; preds = %bitmap_set.exit
  %arrayidx2 = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3375
  %23 = load i8, i8* %arrayidx2, align 1, !dbg !3375
  %conv = zext i8 %23 to i32, !dbg !3375
  %cmp = icmp ne i32 %conv, 56, !dbg !3376
  br i1 %cmp, label %if.then, label %if.end10, !dbg !3377

if.then:                                          ; preds = %lor.lhs.false, %bitmap_set.exit
  %24 = load i32, i32* %ret, align 4, !dbg !3378
  %tobool4 = icmp ne i32 %24, 0, !dbg !3378
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !3380

if.then5:                                         ; preds = %if.then
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.19, i64 0, i64 0)) #9, !dbg !3381
  br label %if.end, !dbg !3381

if.end:                                           ; preds = %if.then5, %if.then
  %25 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3382
  %parameters7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %25, i32 0, i32 2, !dbg !3383
  %get_feature_list8 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters7, i32 0, i32 3, !dbg !3384
  %arraydecay9 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list8, i64 0, i64 0, !dbg !3382
  store i64* %arraydecay9, i64** %map.addr.i14, align 8
  store i32 160, i32* %start.addr.i15, align 4
  store i32 1, i32* %nbits.addr.i16, align 4
  %26 = load i32, i32* %nbits.addr.i16, align 4, !dbg !3385
  %27 = call i1 @llvm.is.constant.i32(i32 %26) #7, !dbg !3386
  br i1 %27, label %land.lhs.true.i18, label %if.else.i22, !dbg !3387

land.lhs.true.i18:                                ; preds = %if.end
  %28 = load i32, i32* %nbits.addr.i16, align 4, !dbg !3388
  %cmp.i17 = icmp eq i32 %28, 1, !dbg !3389
  br i1 %cmp.i17, label %if.then.i20, label %if.else.i22, !dbg !3390

if.then.i20:                                      ; preds = %land.lhs.true.i18
  %29 = load i32, i32* %start.addr.i15, align 4, !dbg !3391
  %conv.i19 = zext i32 %29 to i64, !dbg !3391
  %30 = load i64*, i64** %map.addr.i14, align 8, !dbg !3392
  call void @__clear_bit(i64 %conv.i19, i64* %30) #8, !dbg !3393
  br label %bitmap_clear.exit, !dbg !3393

if.else.i22:                                      ; preds = %land.lhs.true.i18, %if.end
  %31 = load i32, i32* %start.addr.i15, align 4, !dbg !3394
  %and.i21 = and i32 %31, 7, !dbg !3395
  %32 = call i1 @llvm.is.constant.i32(i32 %and.i21) #7, !dbg !3396
  br i1 %32, label %land.lhs.true1.i25, label %if.else14.i37, !dbg !3397

land.lhs.true1.i25:                               ; preds = %if.else.i22
  %33 = load i32, i32* %start.addr.i15, align 4, !dbg !3398
  %and2.i23 = and i32 %33, 7, !dbg !3398
  %cmp3.i24 = icmp eq i32 %and2.i23, 0, !dbg !3398
  br i1 %cmp3.i24, label %land.lhs.true5.i27, label %if.else14.i37, !dbg !3399

land.lhs.true5.i27:                               ; preds = %land.lhs.true1.i25
  %34 = load i32, i32* %nbits.addr.i16, align 4, !dbg !3400
  %and6.i26 = and i32 %34, 7, !dbg !3401
  %35 = call i1 @llvm.is.constant.i32(i32 %and6.i26) #7, !dbg !3402
  br i1 %35, label %land.lhs.true7.i30, label %if.else14.i37, !dbg !3403

land.lhs.true7.i30:                               ; preds = %land.lhs.true5.i27
  %36 = load i32, i32* %nbits.addr.i16, align 4, !dbg !3404
  %and8.i28 = and i32 %36, 7, !dbg !3404
  %cmp9.i29 = icmp eq i32 %and8.i28, 0, !dbg !3404
  br i1 %cmp9.i29, label %if.then11.i36, label %if.else14.i37, !dbg !3405

if.then11.i36:                                    ; preds = %land.lhs.true7.i30
  %37 = load i64*, i64** %map.addr.i14, align 8, !dbg !3406
  %38 = bitcast i64* %37 to i8*, !dbg !3407
  %39 = load i32, i32* %start.addr.i15, align 4, !dbg !3408
  %div.i31 = udiv i32 %39, 8, !dbg !3409
  %idx.ext.i32 = zext i32 %div.i31 to i64, !dbg !3410
  %add.ptr.i33 = getelementptr i8, i8* %38, i64 %idx.ext.i32, !dbg !3410
  %40 = load i32, i32* %nbits.addr.i16, align 4, !dbg !3411
  %div12.i34 = udiv i32 %40, 8, !dbg !3412
  %conv13.i35 = zext i32 %div12.i34 to i64, !dbg !3411
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i33, i8 0, i64 %conv13.i35, i1 false) #7, !dbg !3413
  br label %if.end.i38, !dbg !3413

if.else14.i37:                                    ; preds = %land.lhs.true7.i30, %land.lhs.true5.i27, %land.lhs.true1.i25, %if.else.i22
  %41 = load i64*, i64** %map.addr.i14, align 8, !dbg !3414
  %42 = load i32, i32* %start.addr.i15, align 4, !dbg !3415
  %43 = load i32, i32* %nbits.addr.i16, align 4, !dbg !3416
  call void @__bitmap_clear(i64* %41, i32 %42, i32 %43) #8, !dbg !3417
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.else14.i37, %if.then11.i36
  br label %bitmap_clear.exit

bitmap_clear.exit:                                ; preds = %if.then.i20, %if.end.i38
  br label %return, !dbg !3418

if.end10:                                         ; preds = %lor.lhs.false
  %44 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3419
  %parameters11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 2, !dbg !3420
  %set_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters11, i32 0, i32 2, !dbg !3421
  %arraydecay12 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list, i64 0, i64 0, !dbg !3419
  store i64* %arraydecay12, i64** %map.addr.i39, align 8
  store i32 160, i32* %start.addr.i40, align 4
  store i32 1, i32* %nbits.addr.i41, align 4
  %45 = load i32, i32* %nbits.addr.i41, align 4, !dbg !3422
  %46 = call i1 @llvm.is.constant.i32(i32 %45) #7, !dbg !3423
  br i1 %46, label %land.lhs.true.i43, label %if.else.i47, !dbg !3424

land.lhs.true.i43:                                ; preds = %if.end10
  %47 = load i32, i32* %nbits.addr.i41, align 4, !dbg !3425
  %cmp.i42 = icmp eq i32 %47, 1, !dbg !3426
  br i1 %cmp.i42, label %if.then.i45, label %if.else.i47, !dbg !3427

if.then.i45:                                      ; preds = %land.lhs.true.i43
  %48 = load i32, i32* %start.addr.i40, align 4, !dbg !3428
  %conv.i44 = zext i32 %48 to i64, !dbg !3428
  %49 = load i64*, i64** %map.addr.i39, align 8, !dbg !3429
  call void @__set_bit(i64 %conv.i44, i64* %49) #8, !dbg !3430
  br label %bitmap_set.exit64, !dbg !3430

if.else.i47:                                      ; preds = %land.lhs.true.i43, %if.end10
  %50 = load i32, i32* %start.addr.i40, align 4, !dbg !3431
  %and.i46 = and i32 %50, 7, !dbg !3432
  %51 = call i1 @llvm.is.constant.i32(i32 %and.i46) #7, !dbg !3433
  br i1 %51, label %land.lhs.true1.i50, label %if.else14.i62, !dbg !3434

land.lhs.true1.i50:                               ; preds = %if.else.i47
  %52 = load i32, i32* %start.addr.i40, align 4, !dbg !3435
  %and2.i48 = and i32 %52, 7, !dbg !3435
  %cmp3.i49 = icmp eq i32 %and2.i48, 0, !dbg !3435
  br i1 %cmp3.i49, label %land.lhs.true5.i52, label %if.else14.i62, !dbg !3436

land.lhs.true5.i52:                               ; preds = %land.lhs.true1.i50
  %53 = load i32, i32* %nbits.addr.i41, align 4, !dbg !3437
  %and6.i51 = and i32 %53, 7, !dbg !3438
  %54 = call i1 @llvm.is.constant.i32(i32 %and6.i51) #7, !dbg !3439
  br i1 %54, label %land.lhs.true7.i55, label %if.else14.i62, !dbg !3440

land.lhs.true7.i55:                               ; preds = %land.lhs.true5.i52
  %55 = load i32, i32* %nbits.addr.i41, align 4, !dbg !3441
  %and8.i53 = and i32 %55, 7, !dbg !3441
  %cmp9.i54 = icmp eq i32 %and8.i53, 0, !dbg !3441
  br i1 %cmp9.i54, label %if.then11.i61, label %if.else14.i62, !dbg !3442

if.then11.i61:                                    ; preds = %land.lhs.true7.i55
  %56 = load i64*, i64** %map.addr.i39, align 8, !dbg !3443
  %57 = bitcast i64* %56 to i8*, !dbg !3444
  %58 = load i32, i32* %start.addr.i40, align 4, !dbg !3445
  %div.i56 = udiv i32 %58, 8, !dbg !3446
  %idx.ext.i57 = zext i32 %div.i56 to i64, !dbg !3447
  %add.ptr.i58 = getelementptr i8, i8* %57, i64 %idx.ext.i57, !dbg !3447
  %59 = load i32, i32* %nbits.addr.i41, align 4, !dbg !3448
  %div12.i59 = udiv i32 %59, 8, !dbg !3449
  %conv13.i60 = zext i32 %div12.i59 to i64, !dbg !3448
  call void @llvm.memset.p0i8.i64(i8* align 1 %add.ptr.i58, i8 -1, i64 %conv13.i60, i1 false) #7, !dbg !3450
  br label %if.end.i63, !dbg !3450

if.else14.i62:                                    ; preds = %land.lhs.true7.i55, %land.lhs.true5.i52, %land.lhs.true1.i50, %if.else.i47
  %60 = load i64*, i64** %map.addr.i39, align 8, !dbg !3451
  %61 = load i32, i32* %start.addr.i40, align 4, !dbg !3452
  %62 = load i32, i32* %nbits.addr.i41, align 4, !dbg !3453
  call void @__bitmap_set(i64* %60, i32 %61, i32 %62) #8, !dbg !3454
  br label %if.end.i63

if.end.i63:                                       ; preds = %if.else14.i62, %if.then11.i61
  br label %bitmap_set.exit64

bitmap_set.exit64:                                ; preds = %if.then.i45, %if.end.i63
  %63 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3455
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %63, i32 0, i32 4, !dbg !3456
  %lock_area = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 2, !dbg !3457
  store i32 (%struct.nand_chip*, i64, i64)* @mxic_nand_lock, i32 (%struct.nand_chip*, i64, i64)** %lock_area, align 8, !dbg !3458
  %64 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3459
  %ops13 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %64, i32 0, i32 4, !dbg !3460
  %unlock_area = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops13, i32 0, i32 3, !dbg !3461
  store i32 (%struct.nand_chip*, i64, i64)* @mxic_nand_unlock, i32 (%struct.nand_chip*, i64, i64)** %unlock_area, align 8, !dbg !3462
  br label %return, !dbg !3463

return:                                           ; preds = %bitmap_set.exit64, %bitmap_clear.exit
  ret void, !dbg !3463
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @macronix_nand_deep_power_down_support(%struct.nand_chip* %chip) #0 !dbg !2811 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %i = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3464, metadata !DIExpression()), !dbg !3465
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3466, metadata !DIExpression()), !dbg !3467
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3468
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 2, !dbg !3469
  %model = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 0, !dbg !3470
  %1 = load i8*, i8** %model, align 8, !dbg !3470
  %call = call i32 @match_string(i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @macronix_nand_deep_power_down_support.deep_power_down_dev, i64 0, i64 0), i64 3, i8* %1) #6, !dbg !3471
  store i32 %call, i32* %i, align 4, !dbg !3472
  %2 = load i32, i32* %i, align 4, !dbg !3473
  %cmp = icmp slt i32 %2, 0, !dbg !3475
  br i1 %cmp, label %if.then, label %if.end, !dbg !3476

if.then:                                          ; preds = %entry
  br label %return, !dbg !3477

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3478
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 4, !dbg !3479
  %suspend = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 0, !dbg !3480
  store i32 (%struct.nand_chip*)* @mxic_nand_suspend, i32 (%struct.nand_chip*)** %suspend, align 8, !dbg !3481
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3482
  %ops1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 4, !dbg !3483
  %resume = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops1, i32 0, i32 1, !dbg !3484
  %resume2 = bitcast {}** %resume to void (%struct.nand_chip*)**, !dbg !3484
  store void (%struct.nand_chip*)* @mxic_nand_resume, void (%struct.nand_chip*)** %resume2, align 8, !dbg !3485
  br label %return, !dbg !3486

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3486
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_bits_per_cell(%struct.nand_device* %nand) #0 !dbg !3487 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3492, metadata !DIExpression()), !dbg !3493
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3494
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3495
  %bits_per_cell = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 0, !dbg !3496
  %1 = load i32, i32* %bits_per_cell, align 8, !dbg !3496
  ret i32 %1, !dbg !3497
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @match_string(i8**, i64, i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clear_bit(i64 %nr, i64* %addr) #0 !dbg !3498 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3504, metadata !DIExpression()), !dbg !3507
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3509, metadata !DIExpression()), !dbg !3510
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3511, metadata !DIExpression()), !dbg !3519
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3521, metadata !DIExpression()), !dbg !3522
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3523, metadata !DIExpression()), !dbg !3524
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3525, metadata !DIExpression()), !dbg !3526
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3527
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3528
  %div = sdiv i64 %1, 64, !dbg !3528
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3529
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3527
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3530
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3531
  %conv.i = trunc i64 %4 to i32, !dbg !3531
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !3532
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3533
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3533
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #8, !dbg !3533
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3534
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3535
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !3536
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !3537
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #7, !dbg !3538, !srcloc !3539
  ret void, !dbg !3540
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noredzone
declare dso_local void @__bitmap_clear(i64*, i32, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3541 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3545, metadata !DIExpression()), !dbg !3546
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3547, metadata !DIExpression()), !dbg !3548
  ret i1 true, !dbg !3549
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3550 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3558, metadata !DIExpression()), !dbg !3559
  ret void, !dbg !3560
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @nand_get_flash_node(%struct.nand_chip* %chip) #0 !dbg !3561 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3564, metadata !DIExpression()), !dbg !3565
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3566
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #6, !dbg !3567
  %call1 = call %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %call) #6, !dbg !3568
  ret %struct.device_node* %call1, !dbg !3569
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @macronix_nand_randomizer_check_enable(%struct.nand_chip* %chip) #0 !dbg !3570 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %feature = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !3573, metadata !DIExpression()), !dbg !3574
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3575, metadata !DIExpression()), !dbg !3576
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3577
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3578
  %call = call i32 @nand_get_features(%struct.nand_chip* %0, i32 176, i8* %arraydecay) #6, !dbg !3579
  store i32 %call, i32* %ret, align 4, !dbg !3580
  %1 = load i32, i32* %ret, align 4, !dbg !3581
  %cmp = icmp slt i32 %1, 0, !dbg !3583
  br i1 %cmp, label %if.then, label %if.end, !dbg !3584

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3585
  store i32 %2, i32* %retval, align 4, !dbg !3586
  br label %return, !dbg !3586

if.end:                                           ; preds = %entry
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3587
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3587
  %tobool = icmp ne i8 %3, 0, !dbg !3587
  br i1 %tobool, label %if.then1, label %if.end3, !dbg !3589

if.then1:                                         ; preds = %if.end
  %arrayidx2 = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3590
  %4 = load i8, i8* %arrayidx2, align 1, !dbg !3590
  %conv = zext i8 %4 to i32, !dbg !3590
  store i32 %conv, i32* %retval, align 4, !dbg !3591
  br label %return, !dbg !3591

if.end3:                                          ; preds = %if.end
  %arrayidx4 = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3592
  store i8 7, i8* %arrayidx4, align 1, !dbg !3593
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3594
  %arraydecay5 = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3595
  %call6 = call i32 @nand_set_features(%struct.nand_chip* %5, i32 176, i8* %arraydecay5) #6, !dbg !3596
  store i32 %call6, i32* %ret, align 4, !dbg !3597
  %6 = load i32, i32* %ret, align 4, !dbg !3598
  %cmp7 = icmp slt i32 %6, 0, !dbg !3600
  br i1 %cmp7, label %if.then9, label %if.end10, !dbg !3601

if.then9:                                         ; preds = %if.end3
  %7 = load i32, i32* %ret, align 4, !dbg !3602
  store i32 %7, i32* %retval, align 4, !dbg !3603
  br label %return, !dbg !3603

if.end10:                                         ; preds = %if.end3
  %arrayidx11 = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3604
  store i8 0, i8* %arrayidx11, align 1, !dbg !3605
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3606
  %arraydecay12 = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3607
  %call13 = call i32 @nand_prog_page_op(%struct.nand_chip* %8, i32 0, i32 0, i8* %arraydecay12, i32 1) #6, !dbg !3608
  store i32 %call13, i32* %ret, align 4, !dbg !3609
  %9 = load i32, i32* %ret, align 4, !dbg !3610
  %cmp14 = icmp slt i32 %9, 0, !dbg !3612
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !3613

if.then16:                                        ; preds = %if.end10
  %10 = load i32, i32* %ret, align 4, !dbg !3614
  store i32 %10, i32* %retval, align 4, !dbg !3615
  br label %return, !dbg !3615

if.end17:                                         ; preds = %if.end10
  %11 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3616
  %arraydecay18 = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3617
  %call19 = call i32 @nand_get_features(%struct.nand_chip* %11, i32 176, i8* %arraydecay18) #6, !dbg !3618
  store i32 %call19, i32* %ret, align 4, !dbg !3619
  %12 = load i32, i32* %ret, align 4, !dbg !3620
  %cmp20 = icmp slt i32 %12, 0, !dbg !3622
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !3623

if.then22:                                        ; preds = %if.end17
  %13 = load i32, i32* %ret, align 4, !dbg !3624
  store i32 %13, i32* %retval, align 4, !dbg !3625
  br label %return, !dbg !3625

if.end23:                                         ; preds = %if.end17
  %arrayidx24 = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3626
  %14 = load i8, i8* %arrayidx24, align 1, !dbg !3627
  %conv25 = zext i8 %14 to i64, !dbg !3627
  %and = and i64 %conv25, 6, !dbg !3627
  %conv26 = trunc i64 %and to i8, !dbg !3627
  store i8 %conv26, i8* %arrayidx24, align 1, !dbg !3627
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3628
  %arraydecay27 = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3629
  %call28 = call i32 @nand_set_features(%struct.nand_chip* %15, i32 176, i8* %arraydecay27) #6, !dbg !3630
  store i32 %call28, i32* %ret, align 4, !dbg !3631
  %16 = load i32, i32* %ret, align 4, !dbg !3632
  %cmp29 = icmp slt i32 %16, 0, !dbg !3634
  br i1 %cmp29, label %if.then31, label %if.end32, !dbg !3635

if.then31:                                        ; preds = %if.end23
  %17 = load i32, i32* %ret, align 4, !dbg !3636
  store i32 %17, i32* %retval, align 4, !dbg !3637
  br label %return, !dbg !3637

if.end32:                                         ; preds = %if.end23
  store i32 0, i32* %retval, align 4, !dbg !3638
  br label %return, !dbg !3638

return:                                           ; preds = %if.end32, %if.then31, %if.then22, %if.then16, %if.then9, %if.then1, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3639
  ret i32 %18, !dbg !3639
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @macronix_nand_setup_read_retry(%struct.nand_chip* %chip, i32 %mode) #0 !dbg !3640 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %mode.addr = alloca i32, align 4
  %feature = alloca [4 x i8], align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3641, metadata !DIExpression()), !dbg !3642
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !3643, metadata !DIExpression()), !dbg !3644
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !3645, metadata !DIExpression()), !dbg !3646
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3647
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 2, !dbg !3649
  %supports_set_get_features = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 1, !dbg !3650
  %1 = load i8, i8* %supports_set_get_features, align 8, !dbg !3650
  %tobool = trunc i8 %1 to i1, !dbg !3650
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3651

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3652
  %parameters1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 2, !dbg !3653
  %set_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters1, i32 0, i32 2, !dbg !3654
  %arraydecay = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list, i64 0, i64 0, !dbg !3652
  %call = call zeroext i1 @test_bit(i64 137, i64* %arraydecay) #6, !dbg !3655
  br i1 %call, label %if.end, label %if.then, !dbg !3656

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 -524, i32* %retval, align 4, !dbg !3657
  br label %return, !dbg !3657

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, i32* %mode.addr, align 4, !dbg !3658
  %conv = trunc i32 %3 to i8, !dbg !3658
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3659
  store i8 %conv, i8* %arrayidx, align 1, !dbg !3660
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3661
  %arraydecay2 = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3662
  %call3 = call i32 @nand_set_features(%struct.nand_chip* %4, i32 137, i8* %arraydecay2) #6, !dbg !3663
  store i32 %call3, i32* %retval, align 4, !dbg !3664
  br label %return, !dbg !3664

return:                                           ; preds = %if.end, %if.then
  %5 = load i32, i32* %retval, align 4, !dbg !3665
  ret i32 %5, !dbg !3665
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %mtd) #0 !dbg !3666 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3669, metadata !DIExpression()), !dbg !3670
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3671
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 55, !dbg !3672
  %call = call %struct.device_node* @dev_of_node(%struct.device* %dev) #6, !dbg !3673
  ret %struct.device_node* %call, !dbg !3674
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3675 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3678, metadata !DIExpression()), !dbg !3679
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3680
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3681
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3682
  ret %struct.mtd_info* %mtd, !dbg !3683
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @dev_of_node(%struct.device* %dev) #0 !dbg !3684 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3687, metadata !DIExpression()), !dbg !3688
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3689
  %tobool = icmp ne %struct.device* %0, null, !dbg !3689
  br i1 %tobool, label %if.end, label %if.then, !dbg !3691

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3692
  br label %return, !dbg !3692

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3693
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !3694
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3694
  store %struct.device_node* %2, %struct.device_node** %retval, align 8, !dbg !3695
  br label %return, !dbg !3695

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3696
  ret %struct.device_node* %3, !dbg !3696
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__set_bit(i64 %nr, i64* %addr) #0 !dbg !3697 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3698, metadata !DIExpression()), !dbg !3700
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3702, metadata !DIExpression()), !dbg !3703
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3511, metadata !DIExpression()), !dbg !3704
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3521, metadata !DIExpression()), !dbg !3706
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3707, metadata !DIExpression()), !dbg !3708
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3709, metadata !DIExpression()), !dbg !3710
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3711
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3712
  %div = sdiv i64 %1, 64, !dbg !3712
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3713
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3711
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3714
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3715
  %conv.i = trunc i64 %4 to i32, !dbg !3715
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #8, !dbg !3716
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3717
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3717
  call void @kcsan_check_access(i8* %5, i64 %6, i32 1) #8, !dbg !3717
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3718
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3719
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64*, i64** %addr.addr.i, align 8, !dbg !3720
  %10 = load i64, i64* %nr.addr.i, align 8, !dbg !3721
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %9, i64 %10) #7, !dbg !3722, !srcloc !3723
  ret void, !dbg !3724
}

; Function Attrs: noredzone
declare dso_local void @__bitmap_set(i64*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_get_features(%struct.nand_chip*, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_set_features(%struct.nand_chip*, i32, i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_prog_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @test_bit(i64 %nr, i64* %addr) #0 !dbg !3725 {
entry:
  %nr.addr.i3 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i3, metadata !3730, metadata !DIExpression()), !dbg !3732
  %addr.addr.i4 = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i4, metadata !3734, metadata !DIExpression()), !dbg !3735
  %oldbit.i = alloca i8, align 1
  call void @llvm.dbg.declare(metadata i8* %oldbit.i, metadata !3736, metadata !DIExpression()), !dbg !3737
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3738, metadata !DIExpression()), !dbg !3740
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3742, metadata !DIExpression()), !dbg !3743
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3744, metadata !DIExpression()), !dbg !3746
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3748, metadata !DIExpression()), !dbg !3749
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3750, metadata !DIExpression()), !dbg !3751
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3752, metadata !DIExpression()), !dbg !3753
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3754
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3755
  %div = sdiv i64 %1, 64, !dbg !3755
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3756
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3754
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3757
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3758
  %conv.i = trunc i64 %4 to i32, !dbg !3758
  %call.i = call zeroext i1 @kasan_check_read(i8* %3, i32 %conv.i) #8, !dbg !3759
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3760
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3760
  call void @kcsan_check_access(i8* %5, i64 %6, i32 4) #8, !dbg !3760
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3761
  %8 = call i1 @llvm.is.constant.i64(i64 %7), !dbg !3761
  br i1 %8, label %cond.true, label %cond.false, !dbg !3761

cond.true:                                        ; preds = %entry
  %9 = load i64, i64* %nr.addr, align 8, !dbg !3761
  %10 = load i64*, i64** %addr.addr, align 8, !dbg !3761
  store i64 %9, i64* %nr.addr.i, align 8
  store i64* %10, i64** %addr.addr.i, align 8
  %11 = load i64, i64* %nr.addr.i, align 8, !dbg !3762
  %and.i = and i64 %11, 63, !dbg !3763
  %shl.i = shl i64 1, %and.i, !dbg !3764
  %12 = load i64*, i64** %addr.addr.i, align 8, !dbg !3765
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3766
  %shr.i = ashr i64 %13, 6, !dbg !3767
  %arrayidx.i = getelementptr i64, i64* %12, i64 %shr.i, !dbg !3765
  %14 = load volatile i64, i64* %arrayidx.i, align 8, !dbg !3765
  %and1.i = and i64 %shl.i, %14, !dbg !3768
  %cmp.i = icmp ne i64 %and1.i, 0, !dbg !3769
  %conv = zext i1 %cmp.i to i32, !dbg !3761
  br label %cond.end, !dbg !3761

cond.false:                                       ; preds = %entry
  %15 = load i64, i64* %nr.addr, align 8, !dbg !3761
  %16 = load i64*, i64** %addr.addr, align 8, !dbg !3761
  store i64 %15, i64* %nr.addr.i3, align 8
  store i64* %16, i64** %addr.addr.i4, align 8
  %17 = load i64*, i64** %addr.addr.i4, align 8, !dbg !3770
  %18 = load i64, i64* %nr.addr.i3, align 8, !dbg !3771
  %19 = call i8 asm sideeffect " btq  $2,$1\0A\09/* output condition code c*/\0A", "={@ccc},*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %17, i64 %18) #7, !dbg !3772, !srcloc !3773
  store i8 %19, i8* %oldbit.i, align 1, !dbg !3772
  %20 = load i8, i8* %oldbit.i, align 1, !dbg !3774
  %tobool.i = trunc i8 %20 to i1, !dbg !3774
  %conv2 = zext i1 %tobool.i to i32, !dbg !3761
  br label %cond.end, !dbg !3761

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %conv, %cond.true ], [ %conv2, %cond.false ], !dbg !3761
  %tobool = icmp ne i32 %cond, 0, !dbg !3761
  ret i1 %tobool, !dbg !3775
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_read(i8* %p, i32 %size) #0 !dbg !3776 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3777, metadata !DIExpression()), !dbg !3778
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3779, metadata !DIExpression()), !dbg !3780
  ret i1 true, !dbg !3781
}

; Function Attrs: noredzone
declare dso_local void @nand_select_target(%struct.nand_chip*, i32) #2

; Function Attrs: noredzone
declare dso_local void @nand_deselect_target(%struct.nand_chip*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mxic_nand_lock(%struct.nand_chip* %chip, i64 %ofs, i64 %len) #0 !dbg !3782 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %ofs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %feature = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3783, metadata !DIExpression()), !dbg !3784
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !3785, metadata !DIExpression()), !dbg !3786
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3787, metadata !DIExpression()), !dbg !3788
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !3789, metadata !DIExpression()), !dbg !3790
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3791, metadata !DIExpression()), !dbg !3792
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3793
  store i8 56, i8* %arrayidx, align 1, !dbg !3794
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3795
  call void @nand_select_target(%struct.nand_chip* %0, i32 0) #6, !dbg !3796
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3797
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3798
  %call = call i32 @nand_set_features(%struct.nand_chip* %1, i32 160, i8* %arraydecay) #6, !dbg !3799
  store i32 %call, i32* %ret, align 4, !dbg !3800
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3801
  call void @nand_deselect_target(%struct.nand_chip* %2) #6, !dbg !3802
  %3 = load i32, i32* %ret, align 4, !dbg !3803
  %tobool = icmp ne i32 %3, 0, !dbg !3803
  br i1 %tobool, label %if.then, label %if.end, !dbg !3805

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @__func__.mxic_nand_lock, i64 0, i64 0)) #9, !dbg !3806
  br label %if.end, !dbg !3806

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %ret, align 4, !dbg !3807
  ret i32 %4, !dbg !3808
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mxic_nand_unlock(%struct.nand_chip* %chip, i64 %ofs, i64 %len) #0 !dbg !3809 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %ofs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %feature = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3810, metadata !DIExpression()), !dbg !3811
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !3816, metadata !DIExpression()), !dbg !3817
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3818, metadata !DIExpression()), !dbg !3819
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3820
  store i8 0, i8* %arrayidx, align 1, !dbg !3821
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3822
  call void @nand_select_target(%struct.nand_chip* %0, i32 0) #6, !dbg !3823
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3824
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3825
  %call = call i32 @nand_set_features(%struct.nand_chip* %1, i32 160, i8* %arraydecay) #6, !dbg !3826
  store i32 %call, i32* %ret, align 4, !dbg !3827
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3828
  call void @nand_deselect_target(%struct.nand_chip* %2) #6, !dbg !3829
  %3 = load i32, i32* %ret, align 4, !dbg !3830
  %tobool = icmp ne i32 %3, 0, !dbg !3830
  br i1 %tobool, label %if.then, label %if.end, !dbg !3832

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @__func__.mxic_nand_unlock, i64 0, i64 0)) #9, !dbg !3833
  br label %if.end, !dbg !3833

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %ret, align 4, !dbg !3834
  ret i32 %4, !dbg !3835
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mxic_nand_suspend(%struct.nand_chip* %chip) #0 !dbg !3836 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3837, metadata !DIExpression()), !dbg !3838
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3839, metadata !DIExpression()), !dbg !3840
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3841
  call void @nand_select_target(%struct.nand_chip* %0, i32 0) #6, !dbg !3842
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3843
  %call = call i32 @nand_power_down_op(%struct.nand_chip* %1) #6, !dbg !3844
  store i32 %call, i32* %ret, align 4, !dbg !3845
  %2 = load i32, i32* %ret, align 4, !dbg !3846
  %cmp = icmp slt i32 %2, 0, !dbg !3848
  br i1 %cmp, label %if.then, label %if.end, !dbg !3849

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3850
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.24, i64 0, i64 0), i32 %3) #9, !dbg !3850
  br label %if.end, !dbg !3850

if.end:                                           ; preds = %if.then, %entry
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3851
  call void @nand_deselect_target(%struct.nand_chip* %4) #6, !dbg !3852
  %5 = load i32, i32* %ret, align 4, !dbg !3853
  ret i32 %5, !dbg !3854
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mxic_nand_resume(%struct.nand_chip* %chip) #0 !dbg !3855 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3856, metadata !DIExpression()), !dbg !3857
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3858
  call void @nand_select_target(%struct.nand_chip* %0, i32 0) #6, !dbg !3859
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3860
  %call = call i32 @nand_power_down_op(%struct.nand_chip* %1) #6, !dbg !3861
  call void @usleep_range(i64 35, i64 100) #6, !dbg !3862
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3863
  call void @nand_deselect_target(%struct.nand_chip* %2) #6, !dbg !3864
  ret void, !dbg !3865
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_power_down_op(%struct.nand_chip* %chip) #0 !dbg !3866 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %ret = alloca i32, align 4
  %instrs = alloca [1 x %struct.nand_op_instr], align 16
  %op = alloca %struct.nand_operation, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3867, metadata !DIExpression()), !dbg !3868
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3869, metadata !DIExpression()), !dbg !3870
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3871
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %0) #6, !dbg !3873
  br i1 %call, label %if.then, label %if.else, !dbg !3874

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.nand_op_instr]* %instrs, metadata !3875, metadata !DIExpression()), !dbg !3878
  %1 = bitcast [1 x %struct.nand_op_instr]* %instrs to i8*, !dbg !3878
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !3878
  %2 = bitcast i8* %1 to [1 x { i32, [4 x i8], { %struct.nand_op_cmd_instr, [23 x i8] }, i32, [4 x i8] }]*, !dbg !3878
  %3 = getelementptr inbounds [1 x { i32, [4 x i8], { %struct.nand_op_cmd_instr, [23 x i8] }, i32, [4 x i8] }], [1 x { i32, [4 x i8], { %struct.nand_op_cmd_instr, [23 x i8] }, i32, [4 x i8] }]* %2, i32 0, i32 0, !dbg !3878
  %4 = getelementptr inbounds { i32, [4 x i8], { %struct.nand_op_cmd_instr, [23 x i8] }, i32, [4 x i8] }, { i32, [4 x i8], { %struct.nand_op_cmd_instr, [23 x i8] }, i32, [4 x i8] }* %3, i32 0, i32 2, !dbg !3878
  %5 = getelementptr inbounds { %struct.nand_op_cmd_instr, [23 x i8] }, { %struct.nand_op_cmd_instr, [23 x i8] }* %4, i32 0, i32 0, !dbg !3878
  %6 = getelementptr inbounds %struct.nand_op_cmd_instr, %struct.nand_op_cmd_instr* %5, i32 0, i32 0, !dbg !3878
  store i8 -71, i8* %6, align 8, !dbg !3878
  call void @llvm.dbg.declare(metadata %struct.nand_operation* %op, metadata !3879, metadata !DIExpression()), !dbg !3880
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 0, !dbg !3881
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3881
  %cur_cs = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 28, !dbg !3881
  %8 = load i32, i32* %cur_cs, align 4, !dbg !3881
  store i32 %8, i32* %cs, align 8, !dbg !3881
  %instrs1 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 1, !dbg !3881
  %arraydecay = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !3881
  store %struct.nand_op_instr* %arraydecay, %struct.nand_op_instr** %instrs1, align 8, !dbg !3881
  %ninstrs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 2, !dbg !3881
  store i32 1, i32* %ninstrs, align 8, !dbg !3881
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3882
  %call2 = call i32 @nand_exec_op(%struct.nand_chip* %9, %struct.nand_operation* %op) #6, !dbg !3883
  store i32 %call2, i32* %ret, align 4, !dbg !3884
  %10 = load i32, i32* %ret, align 4, !dbg !3885
  %tobool = icmp ne i32 %10, 0, !dbg !3885
  br i1 %tobool, label %if.then3, label %if.end, !dbg !3887

if.then3:                                         ; preds = %if.then
  %11 = load i32, i32* %ret, align 4, !dbg !3888
  store i32 %11, i32* %retval, align 4, !dbg !3889
  br label %return, !dbg !3889

if.end:                                           ; preds = %if.then
  br label %if.end4, !dbg !3890

if.else:                                          ; preds = %entry
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3891
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 5, !dbg !3893
  %cmdfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 8, !dbg !3894
  %13 = load void (%struct.nand_chip*, i32, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc, align 8, !dbg !3894
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3895
  call void %13(%struct.nand_chip* %14, i32 185, i32 -1, i32 -1) #6, !dbg !3891
  br label %if.end4

if.end4:                                          ; preds = %if.else, %if.end
  store i32 0, i32* %retval, align 4, !dbg !3896
  br label %return, !dbg !3896

return:                                           ; preds = %if.end4, %if.then3
  %15 = load i32, i32* %retval, align 4, !dbg !3897
  ret i32 %15, !dbg !3897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !3898 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3899, metadata !DIExpression()), !dbg !3900
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3901
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !3903
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3903
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !3901
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3904

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3905
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !3906
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !3906
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !3907
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3907
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !3905
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3908

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3909
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !3910
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !3910
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !3911
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !3911
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !3912
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3912
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !3909
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3913

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !3914
  br label %return, !dbg !3914

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !3915
  br label %return, !dbg !3915

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3916
  ret i1 %9, !dbg !3916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_exec_op(%struct.nand_chip* %chip, %struct.nand_operation* %op) #0 !dbg !3917 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %op.addr = alloca %struct.nand_operation*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3920, metadata !DIExpression()), !dbg !3921
  store %struct.nand_operation* %op, %struct.nand_operation** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_operation** %op.addr, metadata !3922, metadata !DIExpression()), !dbg !3923
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3924
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %0) #6, !dbg !3926
  br i1 %call, label %if.end, label %if.then, !dbg !3927

if.then:                                          ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !3928
  br label %return, !dbg !3928

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3929, metadata !DIExpression()), !dbg !3932
  %1 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3932
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %1, i32 0, i32 0, !dbg !3932
  %2 = load i32, i32* %cs, align 8, !dbg !3932
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3932
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 0, !dbg !3932
  %call1 = call i32 @nanddev_ntargets(%struct.nand_device* %base) #6, !dbg !3932
  %cmp = icmp uge i32 %2, %call1, !dbg !3932
  %lnot = xor i1 %cmp, true, !dbg !3932
  %lnot2 = xor i1 %lnot, true, !dbg !3932
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3932
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3932
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3933
  %tobool = icmp ne i32 %4, 0, !dbg !3933
  %lnot3 = xor i1 %tobool, true, !dbg !3933
  %lnot5 = xor i1 %lnot3, true, !dbg !3933
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3933
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3933
  %tobool7 = icmp ne i64 %conv, 0, !dbg !3933
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !3932

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !3933

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !3935

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !3937

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !3935

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.25, i64 0, i64 0), i32 134, i32 2305, i64 12) #7, !dbg !3939, !srcloc !3941
  br label %do.end11, !dbg !3939

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #7, !dbg !3942, !srcloc !3944
  br label %do.body12, !dbg !3935

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3945

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !3935

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !3935

if.end15:                                         ; preds = %do.end14, %if.end
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !3932
  %tobool16 = icmp ne i32 %5, 0, !dbg !3932
  %lnot17 = xor i1 %tobool16, true, !dbg !3932
  %lnot19 = xor i1 %lnot17, true, !dbg !3932
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3932
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3932
  store i64 %conv21, i64* %tmp, align 8, !dbg !3933
  %6 = load i64, i64* %tmp, align 8, !dbg !3932
  %tobool22 = icmp ne i64 %6, 0, !dbg !3947
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3948

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !3949
  br label %return, !dbg !3949

if.end24:                                         ; preds = %if.end15
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3950
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 30, !dbg !3951
  %8 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3951
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %8, i32 0, i32 1, !dbg !3952
  %9 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3952
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %9, i32 0, i32 2, !dbg !3953
  %10 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3953
  %11 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3954
  %12 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3955
  %call25 = call i32 %10(%struct.nand_chip* %11, %struct.nand_operation* %12, i1 zeroext false) #6, !dbg !3950
  store i32 %call25, i32* %retval, align 4, !dbg !3956
  br label %return, !dbg !3956

return:                                           ; preds = %if.end24, %if.then23, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3957
  ret i32 %13, !dbg !3957
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_ntargets(%struct.nand_device* %nand) #0 !dbg !3958 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3959, metadata !DIExpression()), !dbg !3960
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3961
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3962
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 8, !dbg !3963
  %1 = load i32, i32* %ntargets, align 8, !dbg !3963
  ret i32 %1, !dbg !3964
}

; Function Attrs: noredzone
declare dso_local void @usleep_range(i64, i64) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { noredzone }
attributes #7 = { nounwind }
attributes #8 = { noredzone nounwind }
attributes #9 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2813, !2814, !2815, !2816}
!llvm.ident = !{!2817}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "macronix_nand_manuf_ops", scope: !2, file: !3, line: 332, type: !2448, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !108, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/nand_macronix.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73, !77, !84}
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !85, line: 10, baseType: !7, size: 32, elements: !86)
!85 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!86 = !{!87, !88}
!87 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!88 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!89 = !{!90, !7, !91, !93, !96, !106}
!90 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !95)
!95 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_vendor_macronix", file: !3, line: 34, size: 16, elements: !98)
!98 = !{!99, !105}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !97, file: !3, line: 35, baseType: !100, size: 8)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !101, line: 17, baseType: !102)
!101 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !103, line: 21, baseType: !104)
!103 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "reliability_func", scope: !97, file: !3, line: 36, baseType: !100, size: 8, offset: 8)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!108 = !{!0, !109, !2809}
!109 = !DIGlobalVariableExpression(var: !110, expr: !DIExpression())
!110 = distinct !DIGlobalVariable(name: "broken_get_timings", scope: !111, file: !3, line: 151, type: !2805, isLocal: true, isDefinition: true)
!111 = distinct !DISubprogram(name: "macronix_nand_fix_broken_get_timings", scope: !3, file: !3, line: 148, type: !112, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !114}
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !74, line: 1096, size: 16704, elements: !116)
!116 = !{!117, !2405, !2411, !2435, !2530, !2600, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2732, !2733, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2747, !2748, !2749, !2750, !2751, !2752, !2754, !2804}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !115, file: !74, line: 1097, baseType: !118, size: 11200)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !119)
!119 = !{!120, !2298, !2310, !2380, !2385, !2389}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !118, file: !51, line: 320, baseType: !121, size: 9664)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !122, line: 235, size: 9664, elements: !123)
!122 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !127, !131, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !150, !166, !187, !188, !189, !190, !198, !208, !225, !229, !234, !240, !241, !258, !259, !270, !271, !272, !273, !274, !275, !286, !290, !294, !295, !296, !300, !301, !302, !303, !307, !308, !309, !310, !311, !314, !326, !333, !334, !335, !339, !2268, !2269, !2277, !2281, !2282, !2283}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !121, file: !122, line: 236, baseType: !125, size: 8)
!125 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !126, line: 79, baseType: !104)
!126 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!127 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !121, file: !122, line: 237, baseType: !128, size: 32, offset: 32)
!128 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !126, line: 104, baseType: !129)
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !101, line: 21, baseType: !130)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !103, line: 27, baseType: !7)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !121, file: !122, line: 238, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !126, line: 107, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !101, line: 23, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !103, line: 31, baseType: !135)
!135 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !121, file: !122, line: 244, baseType: !128, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !121, file: !122, line: 252, baseType: !128, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !121, file: !122, line: 263, baseType: !128, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !121, file: !122, line: 265, baseType: !128, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !121, file: !122, line: 266, baseType: !128, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !121, file: !122, line: 272, baseType: !7, size: 32, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !121, file: !122, line: 273, baseType: !7, size: 32, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !121, file: !122, line: 275, baseType: !7, size: 32, offset: 352)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !121, file: !122, line: 276, baseType: !7, size: 32, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !121, file: !122, line: 285, baseType: !7, size: 32, offset: 416)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !122, line: 288, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !92)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !121, file: !122, line: 289, baseType: !90, size: 32, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !121, file: !122, line: 292, baseType: !151, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !122, line: 101, size: 128, elements: !154)
!154 = !{!155, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !153, file: !122, line: 102, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!90, !159, !90, !160}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !122, line: 87, size: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !161, file: !122, line: 88, baseType: !129, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !161, file: !122, line: 89, baseType: !129, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !153, file: !122, line: 104, baseType: !156, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !121, file: !122, line: 295, baseType: !167, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !122, line: 176, size: 192, elements: !170)
!170 = !{!171, !172, !181}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !169, file: !122, line: 177, baseType: !90, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !169, file: !122, line: 178, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!90, !159, !90, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !122, line: 138, size: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !177, file: !122, line: 139, baseType: !90, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !177, file: !122, line: 140, baseType: !90, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !169, file: !122, line: 180, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!90, !159, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !121, file: !122, line: 298, baseType: !7, size: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !121, file: !122, line: 301, baseType: !7, size: 32, offset: 736)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !121, file: !122, line: 306, baseType: !90, size: 32, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !121, file: !122, line: 307, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !122, line: 36, size: 192, elements: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !192, file: !122, line: 37, baseType: !132, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !192, file: !122, line: 38, baseType: !128, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !192, file: !122, line: 39, baseType: !128, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !192, file: !122, line: 40, baseType: !106, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !121, file: !122, line: 313, baseType: !199, size: 64, offset: 896)
!199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!200 = !DISubroutineType(types: !201)
!201 = !{!90, !159, !202}
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !122, line: 30, size: 192, elements: !204)
!204 = !{!205, !206, !207}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !203, file: !122, line: 31, baseType: !132, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !203, file: !122, line: 32, baseType: !132, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !203, file: !122, line: 33, baseType: !132, size: 64, offset: 128)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !121, file: !122, line: 314, baseType: !209, size: 64, offset: 960)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!90, !159, !212, !216, !219, !220, !222}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !126, line: 46, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !214, line: 88, baseType: !215)
!214 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!215 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !126, line: 55, baseType: !217)
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !214, line: 72, baseType: !218)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !214, line: 16, baseType: !107)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !126, line: 158, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !126, line: 153, baseType: !133)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !121, file: !122, line: 316, baseType: !226, size: 64, offset: 1024)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!90, !159, !212, !216}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !121, file: !122, line: 317, baseType: !230, size: 64, offset: 1088)
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DISubroutineType(types: !232)
!232 = !{!90, !159, !212, !216, !219, !233}
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !121, file: !122, line: 319, baseType: !235, size: 64, offset: 1152)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!90, !159, !212, !216, !219, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !121, file: !122, line: 321, baseType: !235, size: 64, offset: 1216)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !121, file: !122, line: 323, baseType: !242, size: 64, offset: 1280)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!90, !159, !212, !245}
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !122, line: 64, size: 512, elements: !247)
!247 = !{!248, !249, !250, !251, !252, !253, !254, !257}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !246, file: !122, line: 65, baseType: !7, size: 32)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !246, file: !122, line: 66, baseType: !216, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !246, file: !122, line: 67, baseType: !216, size: 64, offset: 128)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !246, file: !122, line: 68, baseType: !216, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !246, file: !122, line: 69, baseType: !216, size: 64, offset: 256)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !246, file: !122, line: 70, baseType: !128, size: 32, offset: 320)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !246, file: !122, line: 71, baseType: !255, size: 64, offset: 384)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !126, line: 102, baseType: !100)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !246, file: !122, line: 72, baseType: !255, size: 64, offset: 448)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !121, file: !122, line: 325, baseType: !242, size: 64, offset: 1344)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !121, file: !122, line: 327, baseType: !260, size: 64, offset: 1408)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DISubroutineType(types: !262)
!262 = !{!90, !159, !216, !219, !263}
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !265, line: 146, size: 96, elements: !266)
!265 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!266 = !{!267, !268, !269}
!267 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !264, file: !265, line: 147, baseType: !130, size: 32)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !264, file: !265, line: 148, baseType: !130, size: 32, offset: 32)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !264, file: !265, line: 149, baseType: !130, size: 32, offset: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !121, file: !122, line: 329, baseType: !230, size: 64, offset: 1472)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !121, file: !122, line: 331, baseType: !260, size: 64, offset: 1536)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !121, file: !122, line: 333, baseType: !230, size: 64, offset: 1600)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !121, file: !122, line: 335, baseType: !230, size: 64, offset: 1664)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !121, file: !122, line: 337, baseType: !226, size: 64, offset: 1728)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !121, file: !122, line: 339, baseType: !276, size: 64, offset: 1792)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DISubroutineType(types: !278)
!278 = !{!90, !159, !279, !107, !212, !219}
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !282, line: 15, size: 128, elements: !283)
!282 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !285}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !281, file: !282, line: 16, baseType: !221, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !281, file: !282, line: 17, baseType: !216, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !121, file: !122, line: 341, baseType: !287, size: 64, offset: 1856)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{null, !159}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !121, file: !122, line: 342, baseType: !291, size: 64, offset: 1920)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!90, !159, !212, !132}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !121, file: !122, line: 343, baseType: !291, size: 64, offset: 1984)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !121, file: !122, line: 344, baseType: !291, size: 64, offset: 2048)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !121, file: !122, line: 345, baseType: !297, size: 64, offset: 2112)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!90, !159, !212}
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !121, file: !122, line: 346, baseType: !297, size: 64, offset: 2176)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !121, file: !122, line: 347, baseType: !297, size: 64, offset: 2240)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !121, file: !122, line: 348, baseType: !226, size: 64, offset: 2304)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !121, file: !122, line: 349, baseType: !304, size: 64, offset: 2368)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!90, !159}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !121, file: !122, line: 350, baseType: !287, size: 64, offset: 2432)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !121, file: !122, line: 351, baseType: !287, size: 64, offset: 2496)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !121, file: !122, line: 356, baseType: !304, size: 64, offset: 2560)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !121, file: !122, line: 357, baseType: !287, size: 64, offset: 2624)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !121, file: !122, line: 363, baseType: !312, size: 8, offset: 2688)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !126, line: 30, baseType: !313)
!313 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !121, file: !122, line: 365, baseType: !315, size: 192, offset: 2752)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !316, line: 54, size: 192, elements: !317)
!316 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!317 = !{!318, !324, !325}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !315, file: !316, line: 55, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !316, line: 51, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!90, !323, !107, !221}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !315, file: !316, line: 56, baseType: !323, size: 64, offset: 64)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !315, file: !316, line: 57, baseType: !90, size: 32, offset: 128)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !121, file: !122, line: 368, baseType: !327, size: 128, offset: 2944)
!327 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !265, line: 250, size: 128, elements: !328)
!328 = !{!329, !330, !331, !332}
!329 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !327, file: !265, line: 251, baseType: !130, size: 32)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !327, file: !265, line: 252, baseType: !130, size: 32, offset: 32)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !327, file: !265, line: 253, baseType: !130, size: 32, offset: 64)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !327, file: !265, line: 254, baseType: !130, size: 32, offset: 96)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !121, file: !122, line: 370, baseType: !90, size: 32, offset: 3072)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !121, file: !122, line: 372, baseType: !221, size: 64, offset: 3136)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !121, file: !122, line: 374, baseType: !336, size: 64, offset: 3200)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !338, line: 76, flags: DIFlagFwdDecl)
!338 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!339 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !121, file: !122, line: 375, baseType: !340, size: 5568, offset: 3264)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !341)
!341 = !{!342, !1794, !1796, !1799, !1800, !1851, !1945, !1946, !1947, !1948, !1949, !1958, !2063, !2076, !2079, !2080, !2084, !2086, !2087, !2088, !2092, !2098, !2099, !2102, !2217, !2218, !2221, !2222, !2223, !2224, !2256, !2257, !2258, !2261, !2264, !2265, !2266, !2267}
!342 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !340, file: !30, line: 462, baseType: !343, size: 512)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !344, line: 64, size: 512, elements: !345)
!344 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!345 = !{!346, !347, !353, !355, !414, !1630, !1784, !1789, !1790, !1791, !1792, !1793}
!346 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !343, file: !344, line: 65, baseType: !147, size: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !343, file: !344, line: 66, baseType: !348, size: 128, offset: 64)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !126, line: 178, size: 128, elements: !349)
!349 = !{!350, !352}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !348, file: !126, line: 179, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !348, file: !126, line: 179, baseType: !351, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !343, file: !344, line: 67, baseType: !354, size: 64, offset: 192)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !343, file: !344, line: 68, baseType: !356, size: 64, offset: 256)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !344, line: 192, size: 704, elements: !358)
!358 = !{!359, !360, !376, !377}
!359 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !357, file: !344, line: 193, baseType: !348, size: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !357, file: !344, line: 194, baseType: !361, offset: 128)
!361 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !362, line: 83, baseType: !363)
!362 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !362, line: 71, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !362, line: 72, baseType: !366)
!366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !363, file: !362, line: 72, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !366, file: !362, line: 73, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !362, line: 20, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !369, file: !362, line: 21, baseType: !372)
!372 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !373, line: 25, baseType: !374)
!373 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !373, line: 25, elements: !375)
!375 = !{}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !357, file: !344, line: 195, baseType: !343, size: 512, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !357, file: !344, line: 196, baseType: !378, size: 64, offset: 640)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !380)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !344, line: 156, size: 192, elements: !381)
!381 = !{!382, !387, !392}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !380, file: !344, line: 157, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!90, !356, !354}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !380, file: !344, line: 158, baseType: !388, size: 64, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!147, !356, !354}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !380, file: !344, line: 159, baseType: !393, size: 64, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!90, !356, !354, !397}
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !344, line: 148, size: 20736, elements: !399)
!399 = !{!400, !404, !408, !409, !413}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !398, file: !344, line: 149, baseType: !401, size: 192)
!401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 192, elements: !402)
!402 = !{!403}
!403 = !DISubrange(count: 3)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !398, file: !344, line: 150, baseType: !405, size: 4096, offset: 192)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 4096, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !398, file: !344, line: 151, baseType: !90, size: 32, offset: 4288)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !398, file: !344, line: 152, baseType: !410, size: 16384, offset: 4320)
!410 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 16384, elements: !411)
!411 = !{!412}
!412 = !DISubrange(count: 2048)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !398, file: !344, line: 153, baseType: !90, size: 32, offset: 20704)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !343, file: !344, line: 69, baseType: !415, size: 64, offset: 320)
!415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !344, line: 138, size: 448, elements: !417)
!417 = !{!418, !422, !446, !448, !1576, !1609, !1613}
!418 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !416, file: !344, line: 139, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = !DISubroutineType(types: !421)
!421 = !{null, !354}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !416, file: !344, line: 140, baseType: !423, size: 64, offset: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !425)
!425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !426, line: 230, size: 128, elements: !427)
!426 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!427 = !{!428, !442}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !425, file: !426, line: 231, baseType: !429, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DISubroutineType(types: !431)
!431 = !{!432, !354, !435, !91}
!432 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !126, line: 60, baseType: !433)
!433 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !214, line: 73, baseType: !434)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !214, line: 15, baseType: !95)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !426, line: 30, size: 128, elements: !437)
!437 = !{!438, !439}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !436, file: !426, line: 31, baseType: !147, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !436, file: !426, line: 32, baseType: !440, size: 16, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !126, line: 19, baseType: !441)
!441 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !425, file: !426, line: 232, baseType: !443, size: 64, offset: 64)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DISubroutineType(types: !445)
!445 = !{!432, !354, !435, !147, !216}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !416, file: !344, line: 141, baseType: !447, size: 64, offset: 128)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !416, file: !344, line: 142, baseType: !449, size: 64, offset: 192)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !426, line: 84, size: 320, elements: !453)
!453 = !{!454, !455, !459, !1573, !1574}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !452, file: !426, line: 85, baseType: !147, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !452, file: !426, line: 86, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!440, !354, !435, !90}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !452, file: !426, line: 88, baseType: !460, size: 64, offset: 128)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!440, !354, !463, !90}
!463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !464, size: 64)
!464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !426, line: 168, size: 448, elements: !465)
!465 = !{!466, !467, !468, !469, !476, !477}
!466 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !464, file: !426, line: 169, baseType: !436, size: 128)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !464, file: !426, line: 170, baseType: !216, size: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !464, file: !426, line: 171, baseType: !221, size: 64, offset: 192)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !464, file: !426, line: 172, baseType: !470, size: 64, offset: 256)
!470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!471 = !DISubroutineType(types: !472)
!472 = !{!432, !473, !354, !463, !91, !212, !216}
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !475, line: 526, flags: DIFlagFwdDecl)
!475 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!476 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !464, file: !426, line: 174, baseType: !470, size: 64, offset: 320)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !464, file: !426, line: 176, baseType: !478, size: 64, offset: 384)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!479 = !DISubroutineType(types: !480)
!480 = !{!90, !473, !354, !463, !481}
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !483, line: 305, size: 1472, elements: !484)
!483 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!484 = !{!485, !486, !487, !488, !489, !497, !498, !1547, !1553, !1554, !1559, !1560, !1563, !1567, !1568, !1569, !1570, !1571}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !482, file: !483, line: 308, baseType: !107, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !482, file: !483, line: 309, baseType: !107, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !482, file: !483, line: 313, baseType: !481, size: 64, offset: 128)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !482, file: !483, line: 313, baseType: !481, size: 64, offset: 192)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !482, file: !483, line: 315, baseType: !490, size: 192, align: 64, offset: 256)
!490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !491, line: 24, size: 192, align: 64, elements: !492)
!491 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!492 = !{!493, !494, !496}
!493 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !490, file: !491, line: 25, baseType: !107, size: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !490, file: !491, line: 26, baseType: !495, size: 64, offset: 64)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !490, file: !491, line: 27, baseType: !495, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !482, file: !483, line: 323, baseType: !107, size: 64, offset: 448)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !482, file: !483, line: 327, baseType: !499, size: 64, offset: 512)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !483, line: 388, size: 7296, elements: !501)
!501 = !{!502, !1543}
!502 = !DIDerivedType(tag: DW_TAG_member, scope: !500, file: !483, line: 389, baseType: !503, size: 7296)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !500, file: !483, line: 389, size: 7296, elements: !504)
!504 = !{!505, !506, !510, !511, !515, !516, !517, !518, !519, !527, !532, !533, !534, !535, !544, !545, !546, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !581, !589, !592, !624, !625, !1513, !1514, !1517, !1521, !1522, !1525, !1526, !1527, !1530, !1542}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !503, file: !483, line: 390, baseType: !481, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !503, file: !483, line: 391, baseType: !507, size: 64, offset: 64)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !491, line: 31, size: 64, elements: !508)
!508 = !{!509}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !507, file: !491, line: 32, baseType: !495, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !503, file: !483, line: 392, baseType: !133, size: 64, offset: 128)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !503, file: !483, line: 394, baseType: !512, size: 64, offset: 192)
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = !DISubroutineType(types: !514)
!514 = !{!107, !473, !107, !107, !107, !107}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !503, file: !483, line: 398, baseType: !107, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !503, file: !483, line: 399, baseType: !107, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !503, file: !483, line: 405, baseType: !107, size: 64, offset: 384)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !503, file: !483, line: 406, baseType: !107, size: 64, offset: 448)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !503, file: !483, line: 407, baseType: !520, size: 64, offset: 512)
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !475, line: 286, baseType: !522)
!522 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !475, line: 286, size: 64, elements: !523)
!523 = !{!524}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !522, file: !475, line: 286, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !526, line: 18, baseType: !107)
!526 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!527 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !503, file: !483, line: 416, baseType: !528, size: 32, offset: 576)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !126, line: 168, baseType: !529)
!529 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 166, size: 32, elements: !530)
!530 = !{!531}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !529, file: !126, line: 167, baseType: !90, size: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !503, file: !483, line: 428, baseType: !528, size: 32, offset: 608)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !503, file: !483, line: 437, baseType: !528, size: 32, offset: 640)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !503, file: !483, line: 447, baseType: !528, size: 32, offset: 672)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !503, file: !483, line: 450, baseType: !536, size: 64, offset: 704)
!536 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !537, line: 13, baseType: !538)
!537 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !126, line: 175, baseType: !539)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !126, line: 173, size: 64, elements: !540)
!540 = !{!541}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !539, file: !126, line: 174, baseType: !542, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !101, line: 22, baseType: !543)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !103, line: 30, baseType: !215)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !503, file: !483, line: 452, baseType: !90, size: 32, offset: 768)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !503, file: !483, line: 454, baseType: !361, offset: 800)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !503, file: !483, line: 457, baseType: !547, size: 256, offset: 832)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !548, line: 35, size: 256, elements: !549)
!548 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!549 = !{!550, !551, !552, !554}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !547, file: !548, line: 36, baseType: !536, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !547, file: !548, line: 42, baseType: !536, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !547, file: !548, line: 46, baseType: !553, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !362, line: 29, baseType: !369)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !547, file: !548, line: 47, baseType: !348, size: 128, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !503, file: !483, line: 459, baseType: !348, size: 128, offset: 1088)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !503, file: !483, line: 466, baseType: !107, size: 64, offset: 1216)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !503, file: !483, line: 467, baseType: !107, size: 64, offset: 1280)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !503, file: !483, line: 469, baseType: !107, size: 64, offset: 1344)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !503, file: !483, line: 470, baseType: !107, size: 64, offset: 1408)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !503, file: !483, line: 471, baseType: !538, size: 64, offset: 1472)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !503, file: !483, line: 472, baseType: !107, size: 64, offset: 1536)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !503, file: !483, line: 473, baseType: !107, size: 64, offset: 1600)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !503, file: !483, line: 474, baseType: !107, size: 64, offset: 1664)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !503, file: !483, line: 475, baseType: !107, size: 64, offset: 1728)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !503, file: !483, line: 477, baseType: !361, offset: 1792)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !503, file: !483, line: 478, baseType: !107, size: 64, offset: 1792)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !503, file: !483, line: 478, baseType: !107, size: 64, offset: 1856)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !503, file: !483, line: 478, baseType: !107, size: 64, offset: 1920)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !503, file: !483, line: 478, baseType: !107, size: 64, offset: 1984)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !503, file: !483, line: 479, baseType: !107, size: 64, offset: 2048)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !503, file: !483, line: 479, baseType: !107, size: 64, offset: 2112)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !503, file: !483, line: 479, baseType: !107, size: 64, offset: 2176)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !503, file: !483, line: 480, baseType: !107, size: 64, offset: 2240)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !503, file: !483, line: 480, baseType: !107, size: 64, offset: 2304)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !503, file: !483, line: 480, baseType: !107, size: 64, offset: 2368)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !503, file: !483, line: 480, baseType: !107, size: 64, offset: 2432)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !503, file: !483, line: 482, baseType: !578, size: 2816, offset: 2496)
!578 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 2816, elements: !579)
!579 = !{!580}
!580 = !DISubrange(count: 44)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !503, file: !483, line: 488, baseType: !582, size: 256, offset: 5312)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !583, line: 60, size: 256, elements: !584)
!583 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !582, file: !583, line: 61, baseType: !586, size: 256)
!586 = !DICompositeType(tag: DW_TAG_array_type, baseType: !536, size: 256, elements: !587)
!587 = !{!588}
!588 = !DISubrange(count: 4)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !503, file: !483, line: 490, baseType: !590, size: 64, offset: 5568)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !483, line: 490, flags: DIFlagFwdDecl)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !503, file: !483, line: 493, baseType: !593, size: 896, offset: 5632)
!593 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !594, line: 53, baseType: !595)
!594 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !594, line: 13, size: 896, elements: !596)
!596 = !{!597, !598, !599, !600, !603, !604, !611, !612, !616, !617, !620}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !595, file: !594, line: 18, baseType: !133, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !595, file: !594, line: 28, baseType: !538, size: 64, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !595, file: !594, line: 31, baseType: !547, size: 256, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !595, file: !594, line: 32, baseType: !601, size: 64, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !594, line: 32, flags: DIFlagFwdDecl)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !595, file: !594, line: 37, baseType: !441, size: 16, offset: 448)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !595, file: !594, line: 40, baseType: !605, size: 192, offset: 512)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !606, line: 53, size: 192, elements: !607)
!606 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!607 = !{!608, !609, !610}
!608 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !605, file: !606, line: 54, baseType: !536, size: 64)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !605, file: !606, line: 55, baseType: !361, offset: 64)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !605, file: !606, line: 59, baseType: !348, size: 128, offset: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !595, file: !594, line: 41, baseType: !221, size: 64, offset: 704)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !595, file: !594, line: 42, baseType: !613, size: 64, offset: 768)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !615)
!615 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !594, line: 42, flags: DIFlagFwdDecl)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !595, file: !594, line: 44, baseType: !528, size: 32, offset: 832)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !595, file: !594, line: 50, baseType: !618, size: 16, offset: 864)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !101, line: 19, baseType: !619)
!619 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !103, line: 24, baseType: !441)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !595, file: !594, line: 51, baseType: !621, size: 16, offset: 880)
!621 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !101, line: 18, baseType: !622)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !103, line: 23, baseType: !623)
!623 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !503, file: !483, line: 495, baseType: !107, size: 64, offset: 6528)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !503, file: !483, line: 497, baseType: !626, size: 64, offset: 6592)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !483, line: 381, size: 384, elements: !628)
!628 = !{!629, !630, !1512}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !627, file: !483, line: 382, baseType: !528, size: 32)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !627, file: !483, line: 383, baseType: !631, size: 128, offset: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !483, line: 376, size: 128, elements: !632)
!632 = !{!633, !1510}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !631, file: !483, line: 377, baseType: !634, size: 64)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !636, line: 640, size: 48640, elements: !637)
!636 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !644, !645, !646, !652, !653, !654, !655, !656, !657, !658, !659, !663, !681, !692, !784, !785, !786, !797, !798, !800, !801, !802, !803, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !882, !885, !886, !887, !888, !889, !890, !891, !892, !893, !894, !938, !940, !941, !942, !954, !956, !957, !958, !959, !960, !966, !967, !968, !969, !970, !971, !972, !984, !989, !993, !994, !995, !998, !1002, !1005, !1008, !1011, !1014, !1017, !1020, !1023, !1029, !1030, !1031, !1037, !1038, !1039, !1040, !1041, !1050, !1051, !1052, !1053, !1054, !1059, !1060, !1061, !1064, !1065, !1068, !1071, !1074, !1077, !1080, !1083, !1084, !1164, !1167, !1170, !1171, !1174, !1175, !1176, !1182, !1183, !1184, !1197, !1198, !1199, !1209, !1214, !1217, !1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !635, file: !636, line: 646, baseType: !639, size: 128)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !640, line: 56, size: 128, elements: !641)
!640 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!641 = !{!642, !643}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !640, line: 57, baseType: !107, size: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !639, file: !640, line: 58, baseType: !129, size: 32, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !635, file: !636, line: 649, baseType: !94, size: 64, offset: 128)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !635, file: !636, line: 657, baseType: !221, size: 64, offset: 192)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !635, file: !636, line: 658, baseType: !647, size: 32, offset: 256)
!647 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !648, line: 113, baseType: !649)
!648 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !648, line: 111, size: 32, elements: !650)
!650 = !{!651}
!651 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !649, file: !648, line: 112, baseType: !528, size: 32)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !636, line: 660, baseType: !7, size: 32, offset: 288)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !635, file: !636, line: 661, baseType: !7, size: 32, offset: 320)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !635, file: !636, line: 684, baseType: !90, size: 32, offset: 352)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !635, file: !636, line: 686, baseType: !90, size: 32, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !635, file: !636, line: 687, baseType: !90, size: 32, offset: 416)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !635, file: !636, line: 688, baseType: !90, size: 32, offset: 448)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !635, file: !636, line: 689, baseType: !7, size: 32, offset: 480)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !635, file: !636, line: 691, baseType: !660, size: 64, offset: 512)
!660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !662)
!662 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !636, line: 691, flags: DIFlagFwdDecl)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !635, file: !636, line: 692, baseType: !664, size: 832, offset: 576)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !636, line: 451, size: 832, elements: !665)
!665 = !{!666, !671, !672, !673, !674, !675, !676, !677, !678, !679}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !664, file: !636, line: 453, baseType: !667, size: 128)
!667 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !636, line: 325, size: 128, elements: !668)
!668 = !{!669, !670}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !667, file: !636, line: 326, baseType: !107, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !667, file: !636, line: 327, baseType: !129, size: 32, offset: 64)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !664, file: !636, line: 454, baseType: !490, size: 192, align: 64, offset: 128)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !664, file: !636, line: 455, baseType: !348, size: 128, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !664, file: !636, line: 456, baseType: !7, size: 32, offset: 448)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !664, file: !636, line: 458, baseType: !133, size: 64, offset: 512)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !664, file: !636, line: 459, baseType: !133, size: 64, offset: 576)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !664, file: !636, line: 460, baseType: !133, size: 64, offset: 640)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !664, file: !636, line: 461, baseType: !133, size: 64, offset: 704)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !664, file: !636, line: 463, baseType: !133, size: 64, offset: 768)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !664, file: !636, line: 465, baseType: !680, offset: 832)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !636, line: 415, elements: !375)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !635, file: !636, line: 693, baseType: !682, size: 384, offset: 1408)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !636, line: 489, size: 384, elements: !683)
!683 = !{!684, !685, !686, !687, !688, !689, !690}
!684 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !682, file: !636, line: 490, baseType: !348, size: 128)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !682, file: !636, line: 491, baseType: !107, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !682, file: !636, line: 492, baseType: !107, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !682, file: !636, line: 493, baseType: !7, size: 32, offset: 256)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !682, file: !636, line: 494, baseType: !441, size: 16, offset: 288)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !682, file: !636, line: 495, baseType: !441, size: 16, offset: 304)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !682, file: !636, line: 497, baseType: !691, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !635, file: !636, line: 697, baseType: !693, size: 1792, offset: 1792)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !636, line: 507, size: 1792, elements: !694)
!694 = !{!695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !781, !782}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !693, file: !636, line: 508, baseType: !490, size: 192, align: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !693, file: !636, line: 515, baseType: !133, size: 64, offset: 192)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !693, file: !636, line: 516, baseType: !133, size: 64, offset: 256)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !693, file: !636, line: 517, baseType: !133, size: 64, offset: 320)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !693, file: !636, line: 518, baseType: !133, size: 64, offset: 384)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !693, file: !636, line: 519, baseType: !133, size: 64, offset: 448)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !693, file: !636, line: 526, baseType: !542, size: 64, offset: 512)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !693, file: !636, line: 527, baseType: !133, size: 64, offset: 576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !636, line: 528, baseType: !7, size: 32, offset: 640)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !693, file: !636, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !693, file: !636, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !693, file: !636, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !693, file: !636, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !693, file: !636, line: 563, baseType: !709, size: 512, offset: 704)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !710)
!710 = !{!711, !719, !720, !725, !777, !778, !779, !780}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !6, line: 119, baseType: !712, size: 256)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !713, line: 9, size: 256, elements: !714)
!713 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !712, file: !713, line: 10, baseType: !490, size: 192, align: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !712, file: !713, line: 11, baseType: !717, size: 64, offset: 192)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !718, line: 29, baseType: !542)
!718 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!719 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !709, file: !6, line: 120, baseType: !717, size: 64, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !709, file: !6, line: 121, baseType: !721, size: 64, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = !DISubroutineType(types: !723)
!723 = !{!5, !724}
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !709, file: !6, line: 122, baseType: !726, size: 64, offset: 384)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !728)
!728 = !{!729, !749, !750, !753, !763, !764, !772, !776}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !727, file: !6, line: 160, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !732)
!732 = !{!733, !734, !735, !736, !737, !738, !739, !740, !741, !742, !743, !744, !745}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !6, line: 215, baseType: !553)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !731, file: !6, line: 216, baseType: !7, size: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !731, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !731, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !731, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !731, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !731, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !731, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !731, file: !6, line: 233, baseType: !717, size: 64, offset: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !731, file: !6, line: 234, baseType: !724, size: 64, offset: 192)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !731, file: !6, line: 235, baseType: !717, size: 64, offset: 256)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !731, file: !6, line: 236, baseType: !724, size: 64, offset: 320)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !731, file: !6, line: 237, baseType: !746, size: 4096, offset: 512)
!746 = !DICompositeType(tag: DW_TAG_array_type, baseType: !727, size: 4096, elements: !747)
!747 = !{!748}
!748 = !DISubrange(count: 8)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !727, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !727, file: !6, line: 162, baseType: !751, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !126, line: 27, baseType: !752)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !214, line: 96, baseType: !90)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !727, file: !6, line: 163, baseType: !754, size: 32, offset: 128)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !755, line: 276, baseType: !756)
!755 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !755, line: 276, size: 32, elements: !757)
!757 = !{!758}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !756, file: !755, line: 276, baseType: !759, size: 32)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !755, line: 70, baseType: !760)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !755, line: 65, size: 32, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !760, file: !755, line: 66, baseType: !7, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !727, file: !6, line: 164, baseType: !724, size: 64, offset: 192)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !727, file: !6, line: 165, baseType: !765, size: 128, offset: 256)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !713, line: 14, size: 128, elements: !766)
!766 = !{!767}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !765, file: !713, line: 15, baseType: !768, size: 128)
!768 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !491, line: 125, size: 128, elements: !769)
!769 = !{!770, !771}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !768, file: !491, line: 126, baseType: !507, size: 64)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !768, file: !491, line: 127, baseType: !495, size: 64, offset: 64)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !727, file: !6, line: 166, baseType: !773, size: 64, offset: 384)
!773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !774, size: 64)
!774 = !DISubroutineType(types: !775)
!775 = !{!717}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !727, file: !6, line: 167, baseType: !717, size: 64, offset: 448)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !709, file: !6, line: 123, baseType: !100, size: 8, offset: 448)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !709, file: !6, line: 124, baseType: !100, size: 8, offset: 456)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !709, file: !6, line: 125, baseType: !100, size: 8, offset: 464)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !709, file: !6, line: 126, baseType: !100, size: 8, offset: 472)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !693, file: !636, line: 572, baseType: !709, size: 512, offset: 1216)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !693, file: !636, line: 580, baseType: !783, size: 64, offset: 1728)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !635, file: !636, line: 721, baseType: !7, size: 32, offset: 3584)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !635, file: !636, line: 722, baseType: !90, size: 32, offset: 3616)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !635, file: !636, line: 723, baseType: !787, size: 64, offset: 3648)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !789)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !790, line: 17, baseType: !791)
!790 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !790, line: 17, size: 64, elements: !792)
!792 = !{!793}
!793 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !791, file: !790, line: 17, baseType: !794, size: 64)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 1)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !635, file: !636, line: 724, baseType: !789, size: 64, offset: 3712)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !635, file: !636, line: 749, baseType: !799, offset: 3776)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !636, line: 290, elements: !375)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !635, file: !636, line: 751, baseType: !348, size: 128, offset: 3776)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !635, file: !636, line: 757, baseType: !499, size: 64, offset: 3904)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !635, file: !636, line: 758, baseType: !499, size: 64, offset: 3968)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !635, file: !636, line: 761, baseType: !804, size: 320, offset: 4032)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !583, line: 34, size: 320, elements: !805)
!805 = !{!806, !807}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !804, file: !583, line: 35, baseType: !133, size: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !804, file: !583, line: 36, baseType: !808, size: 256, offset: 64)
!808 = !DICompositeType(tag: DW_TAG_array_type, baseType: !481, size: 256, elements: !587)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !635, file: !636, line: 766, baseType: !90, size: 32, offset: 4352)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !635, file: !636, line: 767, baseType: !90, size: 32, offset: 4384)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !635, file: !636, line: 768, baseType: !90, size: 32, offset: 4416)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !635, file: !636, line: 770, baseType: !90, size: 32, offset: 4448)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !635, file: !636, line: 772, baseType: !107, size: 64, offset: 4480)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !635, file: !636, line: 775, baseType: !7, size: 32, offset: 4544)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !635, file: !636, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !635, file: !636, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !635, file: !636, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !635, file: !636, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !635, file: !636, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !635, file: !636, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !635, file: !636, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !635, file: !636, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !635, file: !636, line: 831, baseType: !107, size: 64, offset: 4672)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !635, file: !636, line: 833, baseType: !825, size: 384, offset: 4736)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !826)
!826 = !{!827, !832}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !825, file: !12, line: 26, baseType: !828, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!829 = !DISubroutineType(types: !830)
!830 = !{!95, !831}
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, scope: !825, file: !12, line: 27, baseType: !833, size: 320, offset: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !825, file: !12, line: 27, size: 320, elements: !834)
!834 = !{!835, !845, !872}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !833, file: !12, line: 36, baseType: !836, size: 320)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !833, file: !12, line: 29, size: 320, elements: !837)
!837 = !{!838, !840, !841, !842, !843, !844}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !836, file: !12, line: 30, baseType: !839, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !836, file: !12, line: 31, baseType: !129, size: 32, offset: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !836, file: !12, line: 32, baseType: !129, size: 32, offset: 96)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !836, file: !12, line: 33, baseType: !129, size: 32, offset: 128)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !836, file: !12, line: 34, baseType: !133, size: 64, offset: 192)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !836, file: !12, line: 35, baseType: !839, size: 64, offset: 256)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !833, file: !12, line: 46, baseType: !846, size: 192)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !833, file: !12, line: 38, size: 192, elements: !847)
!847 = !{!848, !849, !850, !871}
!848 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !846, file: !12, line: 39, baseType: !751, size: 32)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !846, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!850 = !DIDerivedType(tag: DW_TAG_member, scope: !846, file: !12, line: 41, baseType: !851, size: 64, offset: 64)
!851 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !846, file: !12, line: 41, size: 64, elements: !852)
!852 = !{!853, !861}
!853 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !851, file: !12, line: 42, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !855, size: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !856, line: 7, size: 128, elements: !857)
!856 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!857 = !{!858, !860}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !855, file: !856, line: 8, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !214, line: 93, baseType: !215)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !855, file: !856, line: 9, baseType: !215, size: 64, offset: 64)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !851, file: !12, line: 43, baseType: !862, size: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !864, line: 7, size: 64, elements: !865)
!864 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!865 = !{!866, !870}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !863, file: !864, line: 8, baseType: !867, size: 32)
!867 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !864, line: 5, baseType: !868)
!868 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !101, line: 20, baseType: !869)
!869 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !103, line: 26, baseType: !90)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !863, file: !864, line: 9, baseType: !868, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !846, file: !12, line: 45, baseType: !133, size: 64, offset: 128)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !833, file: !12, line: 54, baseType: !873, size: 256)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !833, file: !12, line: 48, size: 256, elements: !874)
!874 = !{!875, !878, !879, !880, !881}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !873, file: !12, line: 49, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !873, file: !12, line: 50, baseType: !90, size: 32, offset: 64)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !873, file: !12, line: 51, baseType: !90, size: 32, offset: 96)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !873, file: !12, line: 52, baseType: !107, size: 64, offset: 128)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !873, file: !12, line: 53, baseType: !107, size: 64, offset: 192)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !635, file: !636, line: 835, baseType: !883, size: 32, offset: 5120)
!883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !126, line: 22, baseType: !884)
!884 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !214, line: 28, baseType: !90)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !635, file: !636, line: 836, baseType: !883, size: 32, offset: 5152)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !635, file: !636, line: 840, baseType: !107, size: 64, offset: 5184)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !635, file: !636, line: 849, baseType: !634, size: 64, offset: 5248)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !635, file: !636, line: 852, baseType: !634, size: 64, offset: 5312)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !635, file: !636, line: 857, baseType: !348, size: 128, offset: 5376)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !635, file: !636, line: 858, baseType: !348, size: 128, offset: 5504)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !635, file: !636, line: 859, baseType: !634, size: 64, offset: 5632)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !635, file: !636, line: 867, baseType: !348, size: 128, offset: 5696)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !635, file: !636, line: 868, baseType: !348, size: 128, offset: 5824)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !635, file: !636, line: 871, baseType: !895, size: 64, offset: 5952)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !897, line: 59, size: 768, elements: !898)
!897 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!898 = !{!899, !900, !901, !902, !913, !914, !921, !930}
!899 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !896, file: !897, line: 61, baseType: !647, size: 32)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !896, file: !897, line: 62, baseType: !7, size: 32, offset: 32)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !896, file: !897, line: 63, baseType: !361, offset: 64)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !896, file: !897, line: 65, baseType: !903, size: 256, offset: 64)
!903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !904, size: 256, elements: !587)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !126, line: 182, size: 64, elements: !905)
!905 = !{!906}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !904, file: !126, line: 183, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !908, size: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !126, line: 186, size: 128, elements: !909)
!909 = !{!910, !911}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !908, file: !126, line: 187, baseType: !907, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !908, file: !126, line: 187, baseType: !912, size: 64, offset: 64)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !896, file: !897, line: 66, baseType: !904, size: 64, offset: 320)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !896, file: !897, line: 68, baseType: !915, size: 128, offset: 384)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !916, line: 40, baseType: !917)
!916 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !916, line: 36, size: 128, elements: !918)
!918 = !{!919, !920}
!919 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !917, file: !916, line: 37, baseType: !361)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !917, file: !916, line: 38, baseType: !348, size: 128)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !896, file: !897, line: 69, baseType: !922, size: 128, align: 64, offset: 512)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !126, line: 216, size: 128, align: 64, elements: !923)
!923 = !{!924, !926}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !922, file: !126, line: 217, baseType: !925, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !922, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !922, file: !126, line: 218, baseType: !927, size: 64, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!928 = !DISubroutineType(types: !929)
!929 = !{null, !925}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !896, file: !897, line: 70, baseType: !931, size: 128, offset: 640)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 128, elements: !795)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !897, line: 54, size: 128, elements: !933)
!933 = !{!934, !935}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !932, file: !897, line: 55, baseType: !90, size: 32)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !932, file: !897, line: 56, baseType: !936, size: 64, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !937, size: 64)
!937 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !897, line: 56, flags: DIFlagFwdDecl)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !635, file: !636, line: 872, baseType: !939, size: 512, offset: 6016)
!939 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 512, elements: !587)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !635, file: !636, line: 873, baseType: !348, size: 128, offset: 6528)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !635, file: !636, line: 874, baseType: !348, size: 128, offset: 6656)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !635, file: !636, line: 876, baseType: !943, size: 64, offset: 6784)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !945, line: 26, size: 192, elements: !946)
!945 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !944, file: !945, line: 27, baseType: !7, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !944, file: !945, line: 28, baseType: !949, size: 128, offset: 64)
!949 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !950, line: 43, size: 128, elements: !951)
!950 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!951 = !{!952, !953}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !949, file: !950, line: 44, baseType: !553)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !949, file: !950, line: 45, baseType: !348, size: 128)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !635, file: !636, line: 879, baseType: !955, size: 64, offset: 6848)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !635, file: !636, line: 882, baseType: !955, size: 64, offset: 6912)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !635, file: !636, line: 884, baseType: !133, size: 64, offset: 6976)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !635, file: !636, line: 885, baseType: !133, size: 64, offset: 7040)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !635, file: !636, line: 890, baseType: !133, size: 64, offset: 7104)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !635, file: !636, line: 891, baseType: !961, size: 128, offset: 7168)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !636, line: 242, size: 128, elements: !962)
!962 = !{!963, !964, !965}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !961, file: !636, line: 244, baseType: !133, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !961, file: !636, line: 245, baseType: !133, size: 64, offset: 64)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !961, file: !636, line: 246, baseType: !553, offset: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !635, file: !636, line: 900, baseType: !107, size: 64, offset: 7296)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !635, file: !636, line: 901, baseType: !107, size: 64, offset: 7360)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !635, file: !636, line: 904, baseType: !133, size: 64, offset: 7424)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !635, file: !636, line: 907, baseType: !133, size: 64, offset: 7488)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !635, file: !636, line: 910, baseType: !107, size: 64, offset: 7552)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !635, file: !636, line: 911, baseType: !107, size: 64, offset: 7616)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !635, file: !636, line: 914, baseType: !973, size: 640, offset: 7680)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !974, line: 123, size: 640, elements: !975)
!974 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!975 = !{!976, !982, !983}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !973, file: !974, line: 124, baseType: !977, size: 576)
!977 = !DICompositeType(tag: DW_TAG_array_type, baseType: !978, size: 576, elements: !402)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !974, line: 108, size: 192, elements: !979)
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !978, file: !974, line: 109, baseType: !133, size: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !978, file: !974, line: 110, baseType: !765, size: 128, offset: 64)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !973, file: !974, line: 125, baseType: !7, size: 32, offset: 576)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !973, file: !974, line: 126, baseType: !7, size: 32, offset: 608)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !635, file: !636, line: 917, baseType: !985, size: 192, offset: 8320)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !974, line: 134, size: 192, elements: !986)
!986 = !{!987, !988}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !985, file: !974, line: 135, baseType: !922, size: 128, align: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !985, file: !974, line: 136, baseType: !7, size: 32, offset: 128)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !635, file: !636, line: 923, baseType: !990, size: 64, offset: 8512)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !992)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !636, line: 923, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !635, file: !636, line: 926, baseType: !990, size: 64, offset: 8576)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !635, file: !636, line: 929, baseType: !990, size: 64, offset: 8640)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !635, file: !636, line: 933, baseType: !996, size: 64, offset: 8704)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !636, line: 933, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !635, file: !636, line: 943, baseType: !999, size: 128, offset: 8768)
!999 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 128, elements: !1000)
!1000 = !{!1001}
!1001 = !DISubrange(count: 16)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !635, file: !636, line: 945, baseType: !1003, size: 64, offset: 8896)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !636, line: 49, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !635, file: !636, line: 956, baseType: !1006, size: 64, offset: 8960)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !636, line: 45, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !635, file: !636, line: 959, baseType: !1009, size: 64, offset: 9024)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !636, line: 959, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !635, file: !636, line: 962, baseType: !1012, size: 64, offset: 9088)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !636, line: 66, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !635, file: !636, line: 966, baseType: !1015, size: 64, offset: 9152)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !636, line: 50, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !635, file: !636, line: 969, baseType: !1018, size: 64, offset: 9216)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !974, line: 223, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !635, file: !636, line: 970, baseType: !1021, size: 64, offset: 9280)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !636, line: 62, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !635, file: !636, line: 971, baseType: !1024, size: 64, offset: 9344)
!1024 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1025, line: 25, baseType: !1026)
!1025 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1025, line: 23, size: 64, elements: !1027)
!1027 = !{!1028}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1026, file: !1025, line: 24, baseType: !794, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !635, file: !636, line: 972, baseType: !1024, size: 64, offset: 9408)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !635, file: !636, line: 974, baseType: !1024, size: 64, offset: 9472)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !635, file: !636, line: 975, baseType: !1032, size: 192, offset: 9536)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1033, line: 30, size: 192, elements: !1034)
!1033 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1032, file: !1033, line: 31, baseType: !348, size: 128)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1032, file: !1033, line: 32, baseType: !1024, size: 64, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !635, file: !636, line: 976, baseType: !107, size: 64, offset: 9728)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !635, file: !636, line: 977, baseType: !216, size: 64, offset: 9792)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !635, file: !636, line: 978, baseType: !7, size: 32, offset: 9856)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !635, file: !636, line: 980, baseType: !925, size: 64, offset: 9920)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !635, file: !636, line: 989, baseType: !1042, size: 128, offset: 9984)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1043, line: 35, size: 128, elements: !1044)
!1043 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1046, !1047}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1042, file: !1043, line: 36, baseType: !90, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1042, file: !1043, line: 37, baseType: !528, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1042, file: !1043, line: 38, baseType: !1048, size: 64, offset: 64)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1043, line: 23, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !635, file: !636, line: 992, baseType: !133, size: 64, offset: 10112)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !635, file: !636, line: 993, baseType: !133, size: 64, offset: 10176)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !635, file: !636, line: 996, baseType: !361, offset: 10240)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !635, file: !636, line: 999, baseType: !553, offset: 10240)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !635, file: !636, line: 1001, baseType: !1055, size: 64, offset: 10240)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !636, line: 636, size: 64, elements: !1056)
!1056 = !{!1057}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1055, file: !636, line: 637, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !635, file: !636, line: 1005, baseType: !768, size: 128, offset: 10304)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !635, file: !636, line: 1007, baseType: !634, size: 64, offset: 10432)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !635, file: !636, line: 1009, baseType: !1062, size: 64, offset: 10496)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1063, size: 64)
!1063 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !636, line: 1009, flags: DIFlagFwdDecl)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !635, file: !636, line: 1043, baseType: !221, size: 64, offset: 10560)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !635, file: !636, line: 1046, baseType: !1066, size: 64, offset: 10624)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !636, line: 41, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !635, file: !636, line: 1050, baseType: !1069, size: 64, offset: 10688)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !636, line: 42, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !635, file: !636, line: 1054, baseType: !1072, size: 64, offset: 10752)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !636, line: 55, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !635, file: !636, line: 1056, baseType: !1075, size: 64, offset: 10816)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !636, line: 40, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !635, file: !636, line: 1058, baseType: !1078, size: 64, offset: 10880)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !636, line: 47, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !635, file: !636, line: 1061, baseType: !1081, size: 64, offset: 10944)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !636, line: 43, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !635, file: !636, line: 1064, baseType: !107, size: 64, offset: 11008)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !635, file: !636, line: 1065, baseType: !1085, size: 64, offset: 11072)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1033, line: 14, baseType: !1087)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1033, line: 12, size: 384, elements: !1088)
!1088 = !{!1089}
!1089 = !DIDerivedType(tag: DW_TAG_member, scope: !1087, file: !1033, line: 13, baseType: !1090, size: 384)
!1090 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1087, file: !1033, line: 13, size: 384, elements: !1091)
!1091 = !{!1092, !1093, !1094, !1095}
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1090, file: !1033, line: 13, baseType: !90, size: 32)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1090, file: !1033, line: 13, baseType: !90, size: 32, offset: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1090, file: !1033, line: 13, baseType: !90, size: 32, offset: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1090, file: !1033, line: 13, baseType: !1096, size: 256, offset: 128)
!1096 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1097, line: 32, size: 256, elements: !1098)
!1097 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1098 = !{!1099, !1105, !1118, !1124, !1133, !1153, !1158}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1096, file: !1097, line: 37, baseType: !1100, size: 64)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 34, size: 64, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1100, file: !1097, line: 35, baseType: !884, size: 32)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1100, file: !1097, line: 36, baseType: !1104, size: 32, offset: 32)
!1104 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !214, line: 49, baseType: !7)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1096, file: !1097, line: 45, baseType: !1106, size: 192)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 40, size: 192, elements: !1107)
!1107 = !{!1108, !1110, !1111, !1117}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1106, file: !1097, line: 41, baseType: !1109, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !214, line: 95, baseType: !90)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1106, file: !1097, line: 42, baseType: !90, size: 32, offset: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1106, file: !1097, line: 43, baseType: !1112, size: 64, offset: 64)
!1112 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1097, line: 11, baseType: !1113)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1097, line: 8, size: 64, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1113, file: !1097, line: 9, baseType: !90, size: 32)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1113, file: !1097, line: 10, baseType: !221, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1106, file: !1097, line: 44, baseType: !90, size: 32, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1096, file: !1097, line: 52, baseType: !1119, size: 128)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 48, size: 128, elements: !1120)
!1120 = !{!1121, !1122, !1123}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1119, file: !1097, line: 49, baseType: !884, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1119, file: !1097, line: 50, baseType: !1104, size: 32, offset: 32)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1119, file: !1097, line: 51, baseType: !1112, size: 64, offset: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1096, file: !1097, line: 61, baseType: !1125, size: 256)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 55, size: 256, elements: !1126)
!1126 = !{!1127, !1128, !1129, !1130, !1132}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1125, file: !1097, line: 56, baseType: !884, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1125, file: !1097, line: 57, baseType: !1104, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1125, file: !1097, line: 58, baseType: !90, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1125, file: !1097, line: 59, baseType: !1131, size: 64, offset: 128)
!1131 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !214, line: 94, baseType: !434)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1125, file: !1097, line: 60, baseType: !1131, size: 64, offset: 192)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1096, file: !1097, line: 95, baseType: !1134, size: 256)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 64, size: 256, elements: !1135)
!1135 = !{!1136, !1137}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1134, file: !1097, line: 65, baseType: !221, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1134, file: !1097, line: 77, baseType: !1138, size: 192, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1134, file: !1097, line: 77, size: 192, elements: !1139)
!1139 = !{!1140, !1141, !1148}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1138, file: !1097, line: 82, baseType: !623, size: 16)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1138, file: !1097, line: 88, baseType: !1142, size: 192)
!1142 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1097, line: 84, size: 192, elements: !1143)
!1143 = !{!1144, !1146, !1147}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1142, file: !1097, line: 85, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 64, elements: !747)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1142, file: !1097, line: 86, baseType: !221, size: 64, offset: 64)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1142, file: !1097, line: 87, baseType: !221, size: 64, offset: 128)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1138, file: !1097, line: 93, baseType: !1149, size: 96)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1138, file: !1097, line: 90, size: 96, elements: !1150)
!1150 = !{!1151, !1152}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1149, file: !1097, line: 91, baseType: !1145, size: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1149, file: !1097, line: 92, baseType: !130, size: 32, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1096, file: !1097, line: 101, baseType: !1154, size: 128)
!1154 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 98, size: 128, elements: !1155)
!1155 = !{!1156, !1157}
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1154, file: !1097, line: 99, baseType: !95, size: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1154, file: !1097, line: 100, baseType: !90, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1096, file: !1097, line: 108, baseType: !1159, size: 128)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1096, file: !1097, line: 104, size: 128, elements: !1160)
!1160 = !{!1161, !1162, !1163}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1159, file: !1097, line: 105, baseType: !221, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1159, file: !1097, line: 106, baseType: !90, size: 32, offset: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1159, file: !1097, line: 107, baseType: !7, size: 32, offset: 96)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !635, file: !636, line: 1067, baseType: !1165, offset: 11136)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1166, line: 12, elements: !375)
!1166 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !635, file: !636, line: 1099, baseType: !1168, size: 64, offset: 11136)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !636, line: 56, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !635, file: !636, line: 1103, baseType: !348, size: 128, offset: 11200)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !635, file: !636, line: 1104, baseType: !1172, size: 64, offset: 11328)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !636, line: 46, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !635, file: !636, line: 1105, baseType: !605, size: 192, offset: 11392)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !635, file: !636, line: 1106, baseType: !7, size: 32, offset: 11584)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !635, file: !636, line: 1109, baseType: !1177, size: 128, offset: 11648)
!1177 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1178, size: 128, elements: !1180)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !636, line: 51, flags: DIFlagFwdDecl)
!1180 = !{!1181}
!1181 = !DISubrange(count: 2)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !635, file: !636, line: 1110, baseType: !605, size: 192, offset: 11776)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !635, file: !636, line: 1111, baseType: !348, size: 128, offset: 11968)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !635, file: !636, line: 1173, baseType: !1185, size: 64, offset: 12096)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1187, line: 62, size: 256, align: 256, elements: !1188)
!1187 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1188 = !{!1189, !1190, !1191, !1196}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1186, file: !1187, line: 75, baseType: !130, size: 32)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1186, file: !1187, line: 90, baseType: !130, size: 32, offset: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1186, file: !1187, line: 124, baseType: !1192, size: 64, offset: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1186, file: !1187, line: 109, size: 64, elements: !1193)
!1193 = !{!1194, !1195}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1192, file: !1187, line: 110, baseType: !134, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1192, file: !1187, line: 112, baseType: !134, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1186, file: !1187, line: 144, baseType: !130, size: 32, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !635, file: !636, line: 1174, baseType: !129, size: 32, offset: 12160)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !635, file: !636, line: 1179, baseType: !107, size: 64, offset: 12224)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !635, file: !636, line: 1182, baseType: !1200, size: 128, offset: 12288)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !583, line: 76, size: 128, elements: !1201)
!1201 = !{!1202, !1207, !1208}
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1200, file: !583, line: 85, baseType: !1203, size: 64)
!1203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1204, line: 7, size: 64, elements: !1205)
!1204 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1205 = !{!1206}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1203, file: !1204, line: 12, baseType: !791, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1200, file: !583, line: 88, baseType: !312, size: 8, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1200, file: !583, line: 95, baseType: !312, size: 8, offset: 72)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !635, file: !636, line: 1184, baseType: !1210, size: 128, offset: 12416)
!1210 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !635, file: !636, line: 1184, size: 128, elements: !1211)
!1211 = !{!1212, !1213}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1210, file: !636, line: 1185, baseType: !647, size: 32)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1210, file: !636, line: 1186, baseType: !922, size: 128, align: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !635, file: !636, line: 1190, baseType: !1215, size: 64, offset: 12544)
!1215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1216, size: 64)
!1216 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !282, line: 13, flags: DIFlagFwdDecl)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !635, file: !636, line: 1192, baseType: !1218, size: 128, offset: 12608)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !583, line: 64, size: 128, elements: !1219)
!1219 = !{!1220, !1313, !1314}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1218, file: !583, line: 65, baseType: !1221, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !483, line: 68, size: 512, align: 128, elements: !1223)
!1223 = !{!1224, !1225, !1305, !1312}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1222, file: !483, line: 69, baseType: !107, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !483, line: 77, baseType: !1226, size: 320, offset: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !483, line: 77, size: 320, elements: !1227)
!1227 = !{!1228, !1237, !1242, !1270, !1278, !1284, !1297, !1304}
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 78, baseType: !1229, size: 320)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 78, size: 320, elements: !1230)
!1230 = !{!1231, !1232, !1235, !1236}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1229, file: !483, line: 84, baseType: !348, size: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1229, file: !483, line: 86, baseType: !1233, size: 64, offset: 128)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !483, line: 26, flags: DIFlagFwdDecl)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1229, file: !483, line: 87, baseType: !107, size: 64, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1229, file: !483, line: 94, baseType: !107, size: 64, offset: 256)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 96, baseType: !1238, size: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 96, size: 64, elements: !1239)
!1239 = !{!1240}
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1238, file: !483, line: 101, baseType: !1241, size: 64)
!1241 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !126, line: 143, baseType: !133)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 103, baseType: !1243, size: 320)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 103, size: 320, elements: !1244)
!1244 = !{!1245, !1255, !1258, !1259}
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !483, line: 104, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !483, line: 104, size: 128, elements: !1247)
!1247 = !{!1248, !1249}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1246, file: !483, line: 105, baseType: !348, size: 128)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1246, file: !483, line: 106, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1246, file: !483, line: 106, size: 128, elements: !1251)
!1251 = !{!1252, !1253, !1254}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1250, file: !483, line: 107, baseType: !1221, size: 64)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1250, file: !483, line: 109, baseType: !90, size: 32, offset: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1250, file: !483, line: 110, baseType: !90, size: 32, offset: 96)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1243, file: !483, line: 117, baseType: !1256, size: 64, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1257, size: 64)
!1257 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !483, line: 117, flags: DIFlagFwdDecl)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1243, file: !483, line: 119, baseType: !221, size: 64, offset: 192)
!1259 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !483, line: 120, baseType: !1260, size: 64, offset: 256)
!1260 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1243, file: !483, line: 120, size: 64, elements: !1261)
!1261 = !{!1262, !1263, !1264}
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1260, file: !483, line: 121, baseType: !221, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1260, file: !483, line: 122, baseType: !107, size: 64)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1260, file: !483, line: 123, baseType: !1265, size: 32)
!1265 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1260, file: !483, line: 123, size: 32, elements: !1266)
!1266 = !{!1267, !1268, !1269}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1265, file: !483, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1265, file: !483, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1265, file: !483, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 130, baseType: !1271, size: 192)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 130, size: 192, elements: !1272)
!1272 = !{!1273, !1274, !1275, !1276, !1277}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1271, file: !483, line: 131, baseType: !107, size: 64)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1271, file: !483, line: 134, baseType: !104, size: 8, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1271, file: !483, line: 135, baseType: !104, size: 8, offset: 72)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1271, file: !483, line: 136, baseType: !528, size: 32, offset: 96)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1271, file: !483, line: 137, baseType: !7, size: 32, offset: 128)
!1278 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 139, baseType: !1279, size: 256)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 139, size: 256, elements: !1280)
!1280 = !{!1281, !1282, !1283}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1279, file: !483, line: 140, baseType: !107, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1279, file: !483, line: 141, baseType: !528, size: 32, offset: 64)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1279, file: !483, line: 143, baseType: !348, size: 128, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 145, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 145, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1290, !1291, !1296}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1285, file: !483, line: 146, baseType: !107, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1285, file: !483, line: 147, baseType: !1289, size: 64, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !475, line: 509, baseType: !1221)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1285, file: !483, line: 148, baseType: !107, size: 64, offset: 128)
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1285, file: !483, line: 149, baseType: !1292, size: 64, offset: 192)
!1292 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1285, file: !483, line: 149, size: 64, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1292, file: !483, line: 150, baseType: !499, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1292, file: !483, line: 151, baseType: !528, size: 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1285, file: !483, line: 156, baseType: !361, offset: 256)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !483, line: 159, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1226, file: !483, line: 159, size: 128, elements: !1299)
!1299 = !{!1300, !1303}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1298, file: !483, line: 161, baseType: !1301, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1302, size: 64)
!1302 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !483, line: 161, flags: DIFlagFwdDecl)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1298, file: !483, line: 162, baseType: !221, size: 64, offset: 64)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1226, file: !483, line: 176, baseType: !922, size: 128, align: 64)
!1305 = !DIDerivedType(tag: DW_TAG_member, scope: !1222, file: !483, line: 179, baseType: !1306, size: 32, offset: 384)
!1306 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1222, file: !483, line: 179, size: 32, elements: !1307)
!1307 = !{!1308, !1309, !1310, !1311}
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1306, file: !483, line: 184, baseType: !528, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1306, file: !483, line: 192, baseType: !7, size: 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1306, file: !483, line: 194, baseType: !7, size: 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1306, file: !483, line: 195, baseType: !90, size: 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1222, file: !483, line: 199, baseType: !528, size: 32, offset: 416)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1218, file: !583, line: 67, baseType: !130, size: 32, offset: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1218, file: !583, line: 68, baseType: !130, size: 32, offset: 96)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !635, file: !636, line: 1206, baseType: !90, size: 32, offset: 12736)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !635, file: !636, line: 1207, baseType: !90, size: 32, offset: 12768)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !635, file: !636, line: 1209, baseType: !107, size: 64, offset: 12800)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !635, file: !636, line: 1219, baseType: !133, size: 64, offset: 12864)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !635, file: !636, line: 1220, baseType: !133, size: 64, offset: 12928)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !635, file: !636, line: 1317, baseType: !90, size: 32, offset: 12992)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !635, file: !636, line: 1319, baseType: !634, size: 64, offset: 13056)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !635, file: !636, line: 1322, baseType: !1323, size: 64, offset: 13120)
!1323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1324, size: 64)
!1324 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !636, line: 1322, flags: DIFlagFwdDecl)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !635, file: !636, line: 1326, baseType: !647, size: 32, offset: 13184)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !635, file: !636, line: 1342, baseType: !221, size: 64, offset: 13248)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !635, file: !636, line: 1343, baseType: !134, size: 64, offset: 13312)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !635, file: !636, line: 1344, baseType: !133, size: 64, offset: 13376)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !635, file: !636, line: 1345, baseType: !134, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !635, file: !636, line: 1346, baseType: !134, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !635, file: !636, line: 1347, baseType: !134, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !635, file: !636, line: 1348, baseType: !922, size: 128, align: 64, offset: 13504)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !635, file: !636, line: 1358, baseType: !1334, size: 34816, offset: 13824)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1335, line: 485, size: 34816, elements: !1336)
!1335 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1336 = !{!1337, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1366, !1367, !1368, !1369, !1370, !1371, !1374, !1375, !1376}
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1334, file: !1335, line: 487, baseType: !1338, size: 192)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1339, size: 192, elements: !402)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1340, line: 16, size: 64, elements: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1339, file: !1340, line: 17, baseType: !618, size: 16)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1339, file: !1340, line: 18, baseType: !618, size: 16, offset: 16)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1339, file: !1340, line: 19, baseType: !618, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1339, file: !1340, line: 19, baseType: !618, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1339, file: !1340, line: 19, baseType: !618, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1339, file: !1340, line: 19, baseType: !618, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1339, file: !1340, line: 19, baseType: !618, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1339, file: !1340, line: 20, baseType: !618, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1339, file: !1340, line: 20, baseType: !618, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1339, file: !1340, line: 20, baseType: !618, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1339, file: !1340, line: 20, baseType: !618, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1339, file: !1340, line: 20, baseType: !618, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1339, file: !1340, line: 20, baseType: !618, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1334, file: !1335, line: 491, baseType: !107, size: 64, offset: 192)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1334, file: !1335, line: 495, baseType: !441, size: 16, offset: 256)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1334, file: !1335, line: 496, baseType: !441, size: 16, offset: 272)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1334, file: !1335, line: 497, baseType: !441, size: 16, offset: 288)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1334, file: !1335, line: 498, baseType: !441, size: 16, offset: 304)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1334, file: !1335, line: 502, baseType: !107, size: 64, offset: 320)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1334, file: !1335, line: 503, baseType: !107, size: 64, offset: 384)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1334, file: !1335, line: 514, baseType: !1363, size: 256, offset: 448)
!1363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1364, size: 256, elements: !587)
!1364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1365 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1335, line: 483, flags: DIFlagFwdDecl)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1334, file: !1335, line: 516, baseType: !107, size: 64, offset: 704)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1334, file: !1335, line: 518, baseType: !107, size: 64, offset: 768)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1334, file: !1335, line: 520, baseType: !107, size: 64, offset: 832)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1334, file: !1335, line: 521, baseType: !107, size: 64, offset: 896)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1334, file: !1335, line: 522, baseType: !107, size: 64, offset: 960)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1334, file: !1335, line: 528, baseType: !1372, size: 64, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1335, line: 10, flags: DIFlagFwdDecl)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1334, file: !1335, line: 535, baseType: !107, size: 64, offset: 1088)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1334, file: !1335, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1334, file: !1335, line: 540, baseType: !1377, size: 33280, offset: 1536)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1378, line: 317, size: 33280, elements: !1379)
!1378 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1379 = !{!1380, !1381, !1382}
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1377, file: !1378, line: 330, baseType: !7, size: 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1377, file: !1378, line: 337, baseType: !107, size: 64, offset: 64)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1377, file: !1378, line: 348, baseType: !1383, size: 32768, offset: 512)
!1383 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1378, line: 304, size: 32768, elements: !1384)
!1384 = !{!1385, !1400, !1439, !1489, !1506}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1383, file: !1378, line: 305, baseType: !1386, size: 896)
!1386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1378, line: 12, size: 896, elements: !1387)
!1387 = !{!1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1399}
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1386, file: !1378, line: 13, baseType: !129, size: 32)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1386, file: !1378, line: 14, baseType: !129, size: 32, offset: 32)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1386, file: !1378, line: 15, baseType: !129, size: 32, offset: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1386, file: !1378, line: 16, baseType: !129, size: 32, offset: 96)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1386, file: !1378, line: 17, baseType: !129, size: 32, offset: 128)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1386, file: !1378, line: 18, baseType: !129, size: 32, offset: 160)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1386, file: !1378, line: 19, baseType: !129, size: 32, offset: 192)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1386, file: !1378, line: 22, baseType: !1396, size: 640, offset: 224)
!1396 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 640, elements: !1397)
!1397 = !{!1398}
!1398 = !DISubrange(count: 20)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1386, file: !1378, line: 25, baseType: !129, size: 32, offset: 864)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1383, file: !1378, line: 306, baseType: !1401, size: 4096, align: 128)
!1401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1378, line: 34, size: 4096, align: 128, elements: !1402)
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1422, !1423, !1424, !1428, !1430, !1434}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1401, file: !1378, line: 35, baseType: !618, size: 16)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1401, file: !1378, line: 36, baseType: !618, size: 16, offset: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1401, file: !1378, line: 37, baseType: !618, size: 16, offset: 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1401, file: !1378, line: 38, baseType: !618, size: 16, offset: 48)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1401, file: !1378, line: 39, baseType: !1408, size: 128, offset: 64)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1401, file: !1378, line: 39, size: 128, elements: !1409)
!1409 = !{!1410, !1415}
!1410 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1378, line: 40, baseType: !1411, size: 128)
!1411 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1378, line: 40, size: 128, elements: !1412)
!1412 = !{!1413, !1414}
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1411, file: !1378, line: 41, baseType: !133, size: 64)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1411, file: !1378, line: 42, baseType: !133, size: 64, offset: 64)
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1378, line: 44, baseType: !1416, size: 128)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1408, file: !1378, line: 44, size: 128, elements: !1417)
!1417 = !{!1418, !1419, !1420, !1421}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1416, file: !1378, line: 45, baseType: !129, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1416, file: !1378, line: 46, baseType: !129, size: 32, offset: 32)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1416, file: !1378, line: 47, baseType: !129, size: 32, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1416, file: !1378, line: 48, baseType: !129, size: 32, offset: 96)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1401, file: !1378, line: 51, baseType: !129, size: 32, offset: 192)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1401, file: !1378, line: 52, baseType: !129, size: 32, offset: 224)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1401, file: !1378, line: 55, baseType: !1425, size: 1024, offset: 256)
!1425 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 1024, elements: !1426)
!1426 = !{!1427}
!1427 = !DISubrange(count: 32)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1401, file: !1378, line: 58, baseType: !1429, size: 2048, offset: 1280)
!1429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 2048, elements: !406)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1401, file: !1378, line: 60, baseType: !1431, size: 384, offset: 3328)
!1431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !129, size: 384, elements: !1432)
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
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1440, file: !1378, line: 80, baseType: !129, size: 32)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1440, file: !1378, line: 81, baseType: !129, size: 32, offset: 32)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1440, file: !1378, line: 82, baseType: !129, size: 32, offset: 64)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1440, file: !1378, line: 83, baseType: !129, size: 32, offset: 96)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1440, file: !1378, line: 84, baseType: !129, size: 32, offset: 128)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1440, file: !1378, line: 85, baseType: !129, size: 32, offset: 160)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1440, file: !1378, line: 86, baseType: !129, size: 32, offset: 192)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1440, file: !1378, line: 88, baseType: !1396, size: 640, offset: 224)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1440, file: !1378, line: 89, baseType: !100, size: 8, offset: 864)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1440, file: !1378, line: 90, baseType: !100, size: 8, offset: 872)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1440, file: !1378, line: 91, baseType: !100, size: 8, offset: 880)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1440, file: !1378, line: 92, baseType: !100, size: 8, offset: 888)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1440, file: !1378, line: 93, baseType: !100, size: 8, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1440, file: !1378, line: 94, baseType: !100, size: 8, offset: 904)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1440, file: !1378, line: 95, baseType: !1457, size: 64, offset: 960)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1459, line: 11, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1458, file: !1459, line: 12, baseType: !95, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1458, file: !1459, line: 13, baseType: !1463, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1465, line: 56, size: 1344, elements: !1466)
!1465 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1464, file: !1465, line: 61, baseType: !107, size: 64)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1464, file: !1465, line: 62, baseType: !107, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1464, file: !1465, line: 63, baseType: !107, size: 64, offset: 128)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1464, file: !1465, line: 64, baseType: !107, size: 64, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1464, file: !1465, line: 65, baseType: !107, size: 64, offset: 256)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1464, file: !1465, line: 66, baseType: !107, size: 64, offset: 320)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1464, file: !1465, line: 68, baseType: !107, size: 64, offset: 384)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1464, file: !1465, line: 69, baseType: !107, size: 64, offset: 448)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1464, file: !1465, line: 70, baseType: !107, size: 64, offset: 512)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1464, file: !1465, line: 71, baseType: !107, size: 64, offset: 576)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1464, file: !1465, line: 72, baseType: !107, size: 64, offset: 640)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1464, file: !1465, line: 73, baseType: !107, size: 64, offset: 704)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1464, file: !1465, line: 74, baseType: !107, size: 64, offset: 768)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1464, file: !1465, line: 75, baseType: !107, size: 64, offset: 832)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1464, file: !1465, line: 76, baseType: !107, size: 64, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1464, file: !1465, line: 81, baseType: !107, size: 64, offset: 960)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1464, file: !1465, line: 83, baseType: !107, size: 64, offset: 1024)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1464, file: !1465, line: 84, baseType: !107, size: 64, offset: 1088)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1464, file: !1465, line: 85, baseType: !107, size: 64, offset: 1152)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1464, file: !1465, line: 86, baseType: !107, size: 64, offset: 1216)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1464, file: !1465, line: 87, baseType: !107, size: 64, offset: 1280)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1440, file: !1378, line: 96, baseType: !129, size: 32, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1383, file: !1378, line: 308, baseType: !1490, size: 4608, align: 512)
!1490 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1378, line: 289, size: 4608, align: 512, elements: !1491)
!1491 = !{!1492, !1493, !1502}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1490, file: !1378, line: 290, baseType: !1401, size: 4096, align: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1490, file: !1378, line: 291, baseType: !1494, size: 512, offset: 4096)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1378, line: 268, size: 512, elements: !1495)
!1495 = !{!1496, !1497, !1498}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1494, file: !1378, line: 269, baseType: !133, size: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1494, file: !1378, line: 270, baseType: !133, size: 64, offset: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1494, file: !1378, line: 271, baseType: !1499, size: 384, offset: 128)
!1499 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, elements: !1500)
!1500 = !{!1501}
!1501 = !DISubrange(count: 6)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1490, file: !1378, line: 292, baseType: !1503, offset: 4608)
!1503 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, elements: !1504)
!1504 = !{!1505}
!1505 = !DISubrange(count: 0)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1383, file: !1378, line: 309, baseType: !1507, size: 32768)
!1507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32768, elements: !1508)
!1508 = !{!1509}
!1509 = !DISubrange(count: 4096)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !631, file: !483, line: 378, baseType: !1511, size: 64, offset: 64)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !627, file: !483, line: 384, baseType: !944, size: 192, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !503, file: !483, line: 500, baseType: !361, offset: 6656)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !503, file: !483, line: 501, baseType: !1515, size: 64, offset: 6656)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !483, line: 387, flags: DIFlagFwdDecl)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !503, file: !483, line: 516, baseType: !1518, size: 64, offset: 6720)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1520, line: 18, flags: DIFlagFwdDecl)
!1520 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !503, file: !483, line: 519, baseType: !473, size: 64, offset: 6784)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !503, file: !483, line: 521, baseType: !1523, size: 64, offset: 6848)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !483, line: 521, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !503, file: !483, line: 545, baseType: !528, size: 32, offset: 6912)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !503, file: !483, line: 548, baseType: !312, size: 8, offset: 6944)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !503, file: !483, line: 550, baseType: !1528, offset: 6952)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1529, line: 142, elements: !375)
!1529 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !503, file: !483, line: 554, baseType: !1531, size: 256, offset: 6976)
!1531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1532, line: 102, size: 256, elements: !1533)
!1532 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1533 = !{!1534, !1535, !1536}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1531, file: !1532, line: 103, baseType: !536, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1531, file: !1532, line: 104, baseType: !348, size: 128, offset: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1531, file: !1532, line: 105, baseType: !1537, size: 64, offset: 192)
!1537 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1532, line: 21, baseType: !1538)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{null, !1541}
!1541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !503, file: !483, line: 557, baseType: !129, size: 32, offset: 7232)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !500, file: !483, line: 565, baseType: !1544, offset: 7296)
!1544 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, elements: !1545)
!1545 = !{!1546}
!1546 = !DISubrange(count: -1)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !482, file: !483, line: 333, baseType: !1548, size: 64, offset: 576)
!1548 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !475, line: 284, baseType: !1549)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !475, line: 284, size: 64, elements: !1550)
!1550 = !{!1551}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1549, file: !475, line: 284, baseType: !1552, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !526, line: 19, baseType: !107)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !482, file: !483, line: 334, baseType: !107, size: 64, offset: 640)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !482, file: !483, line: 343, baseType: !1555, size: 256, offset: 704)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !482, file: !483, line: 340, size: 256, elements: !1556)
!1556 = !{!1557, !1558}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1555, file: !483, line: 341, baseType: !490, size: 192, align: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1555, file: !483, line: 342, baseType: !107, size: 64, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !482, file: !483, line: 351, baseType: !348, size: 128, offset: 960)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !482, file: !483, line: 353, baseType: !1561, size: 64, offset: 1088)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !483, line: 353, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !482, file: !483, line: 356, baseType: !1564, size: 64, offset: 1152)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1566)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !483, line: 356, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !482, file: !483, line: 359, baseType: !107, size: 64, offset: 1216)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !482, file: !483, line: 361, baseType: !473, size: 64, offset: 1280)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !482, file: !483, line: 362, baseType: !221, size: 64, offset: 1344)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !482, file: !483, line: 365, baseType: !536, size: 64, offset: 1408)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !482, file: !483, line: 373, baseType: !1572, offset: 1472)
!1572 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !483, line: 296, elements: !375)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !452, file: !426, line: 90, baseType: !447, size: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !452, file: !426, line: 91, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !416, file: !344, line: 143, baseType: !1577, size: 64, offset: 256)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{!1580, !354}
!1580 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1581, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1582)
!1582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1583)
!1583 = !{!1584, !1585, !1589, !1593, !1601, !1605}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1582, file: !18, line: 40, baseType: !17, size: 32)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1582, file: !18, line: 41, baseType: !1586, size: 64, offset: 64)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!312}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1582, file: !18, line: 42, baseType: !1590, size: 64, offset: 128)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!221}
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
!1608 = !{null, !221}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !416, file: !344, line: 144, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{!1597, !354}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !416, file: !344, line: 145, baseType: !1614, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{null, !354, !1617, !1623}
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1520, line: 23, baseType: !1619)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 21, size: 32, elements: !1620)
!1620 = !{!1621}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1619, file: !1520, line: 22, baseType: !1622, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !126, line: 32, baseType: !1104)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1520, line: 28, baseType: !1625)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1520, line: 26, size: 32, elements: !1626)
!1626 = !{!1627}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1625, file: !1520, line: 27, baseType: !1628, size: 32)
!1628 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !126, line: 33, baseType: !1629)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !214, line: 50, baseType: !7)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !343, file: !344, line: 70, baseType: !1631, size: 64, offset: 384)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1633, line: 123, size: 1024, elements: !1634)
!1633 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1634 = !{!1635, !1636, !1637, !1638, !1639, !1640, !1641, !1642, !1777, !1778, !1779, !1780, !1781}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1632, file: !1633, line: 124, baseType: !528, size: 32)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1632, file: !1633, line: 125, baseType: !528, size: 32, offset: 32)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1632, file: !1633, line: 135, baseType: !1631, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1632, file: !1633, line: 136, baseType: !147, size: 64, offset: 128)
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1632, file: !1633, line: 138, baseType: !490, size: 192, align: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1632, file: !1633, line: 140, baseType: !1597, size: 64, offset: 384)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1632, file: !1633, line: 141, baseType: !7, size: 32, offset: 448)
!1642 = !DIDerivedType(tag: DW_TAG_member, scope: !1632, file: !1633, line: 142, baseType: !1643, size: 256, offset: 512)
!1643 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1632, file: !1633, line: 142, size: 256, elements: !1644)
!1644 = !{!1645, !1700, !1704}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1643, file: !1633, line: 143, baseType: !1646, size: 192)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1633, line: 91, size: 192, elements: !1647)
!1647 = !{!1648, !1649, !1650}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1646, file: !1633, line: 92, baseType: !107, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1646, file: !1633, line: 94, baseType: !507, size: 64, offset: 64)
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
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1661, file: !1662, line: 293, baseType: !361)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1661, file: !1662, line: 295, baseType: !1666, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !126, line: 148, baseType: !7)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1661, file: !1662, line: 296, baseType: !221, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1657, file: !1658, line: 21, baseType: !7, size: 32, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1657, file: !1658, line: 22, baseType: !7, size: 32, offset: 160)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1652, file: !1633, line: 187, baseType: !129, size: 32, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1652, file: !1633, line: 188, baseType: !129, size: 32, offset: 352)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1652, file: !1633, line: 189, baseType: !1673, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1633, line: 168, size: 320, elements: !1675)
!1675 = !{!1676, !1682, !1686, !1690, !1694}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1674, file: !1633, line: 169, baseType: !1677, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!90, !1680, !1651}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !475, line: 539, flags: DIFlagFwdDecl)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1674, file: !1633, line: 171, baseType: !1683, size: 64, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!90, !1631, !147, !440}
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1674, file: !1633, line: 173, baseType: !1687, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!90, !1631}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1674, file: !1633, line: 174, baseType: !1691, size: 64, offset: 192)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!90, !1631, !1631, !147}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1674, file: !1633, line: 176, baseType: !1695, size: 64, offset: 256)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!90, !1680, !1631, !1651}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1652, file: !1633, line: 192, baseType: !348, size: 128, offset: 448)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1652, file: !1633, line: 194, baseType: !915, size: 128, offset: 576)
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
!1715 = !{!90, !1716}
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1633, line: 197, size: 1088, elements: !1718)
!1718 = !{!1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1717, file: !1633, line: 199, baseType: !1631, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1717, file: !1633, line: 200, baseType: !473, size: 64, offset: 64)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1717, file: !1633, line: 201, baseType: !1680, size: 64, offset: 128)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1717, file: !1633, line: 202, baseType: !221, size: 64, offset: 192)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1717, file: !1633, line: 205, baseType: !605, size: 192, offset: 256)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1717, file: !1633, line: 206, baseType: !605, size: 192, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1717, file: !1633, line: 207, baseType: !90, size: 32, offset: 640)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1717, file: !1633, line: 208, baseType: !348, size: 128, offset: 704)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1717, file: !1633, line: 209, baseType: !91, size: 64, offset: 832)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1717, file: !1633, line: 211, baseType: !216, size: 64, offset: 896)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1717, file: !1633, line: 212, baseType: !312, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1717, file: !1633, line: 213, baseType: !312, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1717, file: !1633, line: 214, baseType: !1564, size: 64, offset: 1024)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1710, file: !1633, line: 223, baseType: !1733, size: 64, offset: 64)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DISubroutineType(types: !1735)
!1735 = !{null, !1716}
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1710, file: !1633, line: 236, baseType: !1737, size: 64, offset: 128)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{!90, !1680, !221}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1710, file: !1633, line: 238, baseType: !1741, size: 64, offset: 192)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!221, !1680, !1744}
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1710, file: !1633, line: 239, baseType: !1746, size: 64, offset: 256)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!221, !1680, !221, !1744}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1710, file: !1633, line: 240, baseType: !1750, size: 64, offset: 320)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{null, !1680, !221}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1710, file: !1633, line: 242, baseType: !1754, size: 64, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!432, !1716, !91, !216, !212}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1710, file: !1633, line: 252, baseType: !216, size: 64, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1710, file: !1633, line: 259, baseType: !312, size: 8, offset: 512)
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
!1771 = !{!90, !1716, !481}
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1705, file: !1633, line: 109, baseType: !1773, size: 64, offset: 64)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1633, line: 31, flags: DIFlagFwdDecl)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1705, file: !1633, line: 110, baseType: !212, size: 64, offset: 128)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1705, file: !1633, line: 111, baseType: !1631, size: 64, offset: 192)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1632, file: !1633, line: 148, baseType: !221, size: 64, offset: 768)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1632, file: !1633, line: 154, baseType: !133, size: 64, offset: 832)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1632, file: !1633, line: 156, baseType: !441, size: 16, offset: 896)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1632, file: !1633, line: 157, baseType: !440, size: 16, offset: 912)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1632, file: !1633, line: 158, baseType: !1782, size: 64, offset: 960)
!1782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1783, size: 64)
!1783 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1633, line: 32, flags: DIFlagFwdDecl)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !343, file: !344, line: 71, baseType: !1785, size: 32, offset: 448)
!1785 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1786, line: 19, size: 32, elements: !1787)
!1786 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1787 = !{!1788}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1785, file: !1786, line: 20, baseType: !647, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !343, file: !344, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !343, file: !344, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !343, file: !344, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !343, file: !344, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !343, file: !344, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !340, file: !30, line: 463, baseType: !1795, size: 64, offset: 512)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !340, file: !30, line: 465, baseType: !1797, size: 64, offset: 576)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !340, file: !30, line: 467, baseType: !147, size: 64, offset: 640)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !340, file: !30, line: 468, baseType: !1801, size: 64, offset: 704)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1803)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1811, !1816, !1820}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !30, line: 88, baseType: !147, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1803, file: !30, line: 89, baseType: !449, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1803, file: !30, line: 90, baseType: !1808, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DISubroutineType(types: !1810)
!1810 = !{!90, !1795, !397}
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1803, file: !30, line: 91, baseType: !1812, size: 64, offset: 192)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!91, !1795, !1815, !1617, !1623}
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
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
!1828 = !{!90, !1795}
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
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !340, file: !30, line: 470, baseType: !1852, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1854, line: 82, size: 1408, elements: !1855)
!1854 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1855 = !{!1856, !1857, !1858, !1859, !1860, !1861, !1862, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1938, !1941, !1944}
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1853, file: !1854, line: 83, baseType: !147, size: 64)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1853, file: !1854, line: 84, baseType: !147, size: 64, offset: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1853, file: !1854, line: 85, baseType: !1795, size: 64, offset: 128)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1853, file: !1854, line: 86, baseType: !449, size: 64, offset: 192)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1853, file: !1854, line: 87, baseType: !449, size: 64, offset: 256)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1853, file: !1854, line: 88, baseType: !449, size: 64, offset: 320)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1853, file: !1854, line: 90, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DISubroutineType(types: !1865)
!1865 = !{!90, !1795, !1866}
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1868)
!1868 = !{!1869, !1870, !1871, !1872, !1873, !1874, !1875, !1889, !1902, !1903, !1904, !1905, !1906, !1914, !1915, !1916, !1917, !1918, !1919}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1867, file: !24, line: 96, baseType: !147, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1867, file: !24, line: 97, baseType: !1852, size: 64, offset: 64)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1867, file: !24, line: 99, baseType: !336, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1867, file: !24, line: 100, baseType: !147, size: 64, offset: 192)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1867, file: !24, line: 102, baseType: !312, size: 8, offset: 256)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1867, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1867, file: !24, line: 105, baseType: !1876, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1877, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1878)
!1878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1879, line: 262, size: 1600, elements: !1880)
!1879 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1880 = !{!1881, !1883, !1884, !1888}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1878, file: !1879, line: 263, baseType: !1882, size: 256)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 256, elements: !1426)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1878, file: !1879, line: 264, baseType: !1882, size: 256, offset: 256)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1878, file: !1879, line: 265, baseType: !1885, size: 1024, offset: 512)
!1885 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 1024, elements: !1886)
!1886 = !{!1887}
!1887 = !DISubrange(count: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1878, file: !1879, line: 266, baseType: !1597, size: 64, offset: 1536)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1867, file: !24, line: 106, baseType: !1890, size: 64, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1891, size: 64)
!1891 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1892)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1879, line: 210, size: 256, elements: !1893)
!1893 = !{!1894, !1898, !1900, !1901}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1892, file: !1879, line: 211, baseType: !1895, size: 72)
!1895 = !DICompositeType(tag: DW_TAG_array_type, baseType: !102, size: 72, elements: !1896)
!1896 = !{!1897}
!1897 = !DISubrange(count: 9)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1892, file: !1879, line: 212, baseType: !1899, size: 64, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1879, line: 14, baseType: !107)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1892, file: !1879, line: 213, baseType: !130, size: 32, offset: 192)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1892, file: !1879, line: 214, baseType: !130, size: 32, offset: 224)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1867, file: !24, line: 108, baseType: !1826, size: 64, offset: 448)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1867, file: !24, line: 109, baseType: !1817, size: 64, offset: 512)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1867, file: !24, line: 110, baseType: !1826, size: 64, offset: 576)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1867, file: !24, line: 111, baseType: !1817, size: 64, offset: 640)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1867, file: !24, line: 112, baseType: !1907, size: 64, offset: 704)
!1907 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1908, size: 64)
!1908 = !DISubroutineType(types: !1909)
!1909 = !{!90, !1795, !1910}
!1910 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1911)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1912)
!1912 = !{!1913}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1911, file: !37, line: 51, baseType: !90, size: 32)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1867, file: !24, line: 113, baseType: !1826, size: 64, offset: 768)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1867, file: !24, line: 114, baseType: !449, size: 64, offset: 832)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1867, file: !24, line: 115, baseType: !449, size: 64, offset: 896)
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
!1942 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1943, line: 187, elements: !375)
!1943 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1853, file: !1854, line: 114, baseType: !312, size: 8, offset: 1344)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !340, file: !30, line: 471, baseType: !1866, size: 64, offset: 832)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !340, file: !30, line: 473, baseType: !221, size: 64, offset: 896)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !340, file: !30, line: 475, baseType: !221, size: 64, offset: 960)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !340, file: !30, line: 480, baseType: !605, size: 192, offset: 1024)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !340, file: !30, line: 484, baseType: !1950, size: 576, offset: 1216)
!1950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1951)
!1951 = !{!1952, !1953, !1954, !1955, !1956, !1957}
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1950, file: !30, line: 362, baseType: !348, size: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1950, file: !30, line: 363, baseType: !348, size: 128, offset: 128)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1950, file: !30, line: 364, baseType: !348, size: 128, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1950, file: !30, line: 365, baseType: !348, size: 128, offset: 384)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1950, file: !30, line: 366, baseType: !312, size: 8, offset: 512)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1950, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !340, file: !30, line: 485, baseType: !1959, size: 2304, offset: 1792)
!1959 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1960)
!1960 = !{!1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2056, !2060}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1959, file: !37, line: 566, baseType: !1910, size: 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1959, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1959, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1959, file: !37, line: 569, baseType: !312, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1959, file: !37, line: 570, baseType: !312, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1959, file: !37, line: 571, baseType: !312, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1959, file: !37, line: 572, baseType: !312, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1959, file: !37, line: 573, baseType: !312, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1959, file: !37, line: 574, baseType: !312, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1959, file: !37, line: 575, baseType: !312, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1959, file: !37, line: 576, baseType: !312, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1959, file: !37, line: 577, baseType: !129, size: 32, offset: 64)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1959, file: !37, line: 578, baseType: !361, offset: 96)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1959, file: !37, line: 580, baseType: !348, size: 128, offset: 128)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1959, file: !37, line: 581, baseType: !944, size: 192, offset: 256)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1959, file: !37, line: 582, baseType: !1977, size: 64, offset: 448)
!1977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1978, size: 64)
!1978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1979, line: 43, size: 1472, elements: !1980)
!1979 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1988, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1978, file: !1979, line: 44, baseType: !147, size: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1978, file: !1979, line: 45, baseType: !90, size: 32, offset: 64)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1978, file: !1979, line: 46, baseType: !348, size: 128, offset: 128)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1978, file: !1979, line: 47, baseType: !361, offset: 256)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1978, file: !1979, line: 48, baseType: !1986, size: 64, offset: 256)
!1986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1987, size: 64)
!1987 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1978, file: !1979, line: 49, baseType: !1989, size: 320, offset: 320)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1990, line: 11, size: 320, elements: !1991)
!1990 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1991 = !{!1992, !1993, !1994, !1999}
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1989, file: !1990, line: 16, baseType: !908, size: 128)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1989, file: !1990, line: 17, baseType: !107, size: 64, offset: 128)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1989, file: !1990, line: 18, baseType: !1995, size: 64, offset: 192)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{null, !1998}
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1989, file: !1990, line: 19, baseType: !129, size: 32, offset: 256)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1978, file: !1979, line: 50, baseType: !107, size: 64, offset: 640)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1978, file: !1979, line: 51, baseType: !717, size: 64, offset: 704)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1978, file: !1979, line: 52, baseType: !717, size: 64, offset: 768)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1978, file: !1979, line: 53, baseType: !717, size: 64, offset: 832)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1978, file: !1979, line: 54, baseType: !717, size: 64, offset: 896)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1978, file: !1979, line: 55, baseType: !717, size: 64, offset: 960)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1978, file: !1979, line: 56, baseType: !107, size: 64, offset: 1024)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1978, file: !1979, line: 57, baseType: !107, size: 64, offset: 1088)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1978, file: !1979, line: 58, baseType: !107, size: 64, offset: 1152)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1978, file: !1979, line: 59, baseType: !107, size: 64, offset: 1216)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1978, file: !1979, line: 60, baseType: !107, size: 64, offset: 1280)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1978, file: !1979, line: 61, baseType: !1795, size: 64, offset: 1344)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1978, file: !1979, line: 62, baseType: !312, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1978, file: !1979, line: 63, baseType: !312, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1959, file: !37, line: 583, baseType: !312, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1959, file: !37, line: 584, baseType: !312, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1959, file: !37, line: 585, baseType: !312, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1959, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1959, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1959, file: !37, line: 592, baseType: !709, size: 512, offset: 576)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1959, file: !37, line: 593, baseType: !133, size: 64, offset: 1088)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1959, file: !37, line: 594, baseType: !1531, size: 256, offset: 1152)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1959, file: !37, line: 595, baseType: !915, size: 128, offset: 1408)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1959, file: !37, line: 596, baseType: !1986, size: 64, offset: 1536)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1959, file: !37, line: 597, baseType: !528, size: 32, offset: 1600)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1959, file: !37, line: 598, baseType: !528, size: 32, offset: 1632)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1959, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1959, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1959, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1959, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1959, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1959, file: !37, line: 604, baseType: !312, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1959, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1959, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1959, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1959, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1959, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1959, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1959, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1959, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1959, file: !37, line: 613, baseType: !90, size: 32, offset: 1792)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1959, file: !37, line: 614, baseType: !90, size: 32, offset: 1824)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1959, file: !37, line: 615, baseType: !133, size: 64, offset: 1856)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1959, file: !37, line: 616, baseType: !133, size: 64, offset: 1920)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1959, file: !37, line: 617, baseType: !133, size: 64, offset: 1984)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1959, file: !37, line: 618, baseType: !133, size: 64, offset: 2048)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1959, file: !37, line: 620, baseType: !2047, size: 64, offset: 2112)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2049)
!2049 = !{!2050, !2051, !2052, !2053}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2048, file: !37, line: 537, baseType: !361)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2048, file: !37, line: 538, baseType: !7, size: 32)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2048, file: !37, line: 540, baseType: !348, size: 128, offset: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2048, file: !37, line: 543, baseType: !2054, size: 64, offset: 192)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1959, file: !37, line: 621, baseType: !2057, size: 64, offset: 2176)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{null, !1795, !868}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1959, file: !37, line: 622, baseType: !2061, size: 64, offset: 2240)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !340, file: !30, line: 486, baseType: !2064, size: 64, offset: 4096)
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2066)
!2066 = !{!2067, !2068, !2069, !2073, !2074, !2075}
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2065, file: !37, line: 643, baseType: !1823, size: 1472)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2065, file: !37, line: 644, baseType: !1826, size: 64, offset: 1472)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2065, file: !37, line: 645, baseType: !2070, size: 64, offset: 1536)
!2070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2071, size: 64)
!2071 = !DISubroutineType(types: !2072)
!2072 = !{null, !1795, !312}
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2065, file: !37, line: 646, baseType: !1826, size: 64, offset: 1600)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2065, file: !37, line: 647, baseType: !1817, size: 64, offset: 1664)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2065, file: !37, line: 648, baseType: !1817, size: 64, offset: 1728)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !340, file: !30, line: 493, baseType: !2077, size: 64, offset: 4160)
!2077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2078, size: 64)
!2078 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !340, file: !30, line: 499, baseType: !348, size: 128, offset: 4224)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !340, file: !30, line: 502, baseType: !2081, size: 64, offset: 4352)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2083)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !340, file: !30, line: 504, baseType: !2085, size: 64, offset: 4416)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !340, file: !30, line: 505, baseType: !133, size: 64, offset: 4480)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !340, file: !30, line: 510, baseType: !133, size: 64, offset: 4544)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !340, file: !30, line: 511, baseType: !2089, size: 64, offset: 4608)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2091)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !340, file: !30, line: 513, baseType: !2093, size: 64, offset: 4672)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2095)
!2095 = !{!2096, !2097}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2094, file: !30, line: 293, baseType: !7, size: 32)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2094, file: !30, line: 294, baseType: !107, size: 64, offset: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !340, file: !30, line: 515, baseType: !348, size: 128, offset: 4736)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !340, file: !30, line: 526, baseType: !2100, offset: 4864)
!2100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2101, line: 5, elements: !375)
!2101 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !340, file: !30, line: 528, baseType: !2103, size: 64, offset: 4864)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2105, line: 51, size: 1344, elements: !2106)
!2105 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !{!2107, !2108, !2110, !2111, !2201, !2210, !2211, !2212, !2213, !2214, !2215, !2216}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2104, file: !2105, line: 52, baseType: !147, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2104, file: !2105, line: 53, baseType: !2109, size: 32, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2105, line: 28, baseType: !129)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2104, file: !2105, line: 54, baseType: !147, size: 64, offset: 128)
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
!2133 = !{!312, !2134}
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2120, file: !2113, line: 114, baseType: !2137, size: 64, offset: 192)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DISubroutineType(types: !2139)
!2139 = !{!1597, !2134, !2140}
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2120, file: !2113, line: 116, baseType: !2143, size: 64, offset: 256)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!312, !2134, !147}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2120, file: !2113, line: 118, baseType: !2147, size: 64, offset: 320)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!90, !2134, !147, !7, !221, !216}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2120, file: !2113, line: 123, baseType: !2151, size: 64, offset: 384)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!90, !2134, !147, !2154, !216}
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2120, file: !2113, line: 126, baseType: !2156, size: 64, offset: 448)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!147, !2134}
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
!2171 = !{!2116, !2134, !147}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2120, file: !2113, line: 135, baseType: !2173, size: 64, offset: 768)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!90, !2134, !147, !147, !7, !7, !2176}
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2113, line: 43, size: 640, elements: !2178)
!2178 = !{!2179, !2180, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2177, file: !2113, line: 44, baseType: !2116, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2177, file: !2113, line: 45, baseType: !7, size: 32, offset: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2177, file: !2113, line: 46, baseType: !2182, size: 512, offset: 128)
!2182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !747)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2120, file: !2113, line: 140, baseType: !2165, size: 64, offset: 832)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2120, file: !2113, line: 143, baseType: !2161, size: 64, offset: 896)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2120, file: !2113, line: 145, baseType: !2123, size: 64, offset: 960)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2120, file: !2113, line: 146, baseType: !2187, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!90, !2134, !2190}
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2113, line: 29, size: 128, elements: !2192)
!2192 = !{!2193, !2194, !2195}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2191, file: !2113, line: 30, baseType: !7, size: 32)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2191, file: !2113, line: 31, baseType: !7, size: 32, offset: 32)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2191, file: !2113, line: 32, baseType: !2134, size: 64, offset: 64)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2120, file: !2113, line: 148, baseType: !2197, size: 64, offset: 1088)
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{!90, !2134, !1795}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2112, file: !2113, line: 20, baseType: !1795, size: 64, offset: 128)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2104, file: !2105, line: 57, baseType: !2202, size: 64, offset: 384)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2105, line: 31, size: 704, elements: !2204)
!2204 = !{!2205, !2206, !2207, !2208, !2209}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2203, file: !2105, line: 32, baseType: !91, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2203, file: !2105, line: 33, baseType: !90, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2203, file: !2105, line: 34, baseType: !221, size: 64, offset: 128)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2203, file: !2105, line: 35, baseType: !2202, size: 64, offset: 192)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2203, file: !2105, line: 43, baseType: !464, size: 448, offset: 256)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2104, file: !2105, line: 58, baseType: !2202, size: 64, offset: 448)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2104, file: !2105, line: 59, baseType: !2103, size: 64, offset: 512)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2104, file: !2105, line: 60, baseType: !2103, size: 64, offset: 576)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2104, file: !2105, line: 61, baseType: !2103, size: 64, offset: 640)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2104, file: !2105, line: 63, baseType: !343, size: 512, offset: 704)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2104, file: !2105, line: 65, baseType: !107, size: 64, offset: 1216)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2104, file: !2105, line: 66, baseType: !221, size: 64, offset: 1280)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !340, file: !30, line: 529, baseType: !2116, size: 64, offset: 4928)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !340, file: !30, line: 534, baseType: !2219, size: 32, offset: 4992)
!2219 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !126, line: 16, baseType: !2220)
!2220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !126, line: 13, baseType: !129)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !340, file: !30, line: 535, baseType: !129, size: 32, offset: 5024)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !340, file: !30, line: 537, baseType: !361, offset: 5056)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !340, file: !30, line: 538, baseType: !348, size: 128, offset: 5056)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !340, file: !30, line: 540, baseType: !2225, size: 64, offset: 5184)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2227, line: 54, size: 960, elements: !2228)
!2227 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !{!2229, !2230, !2231, !2232, !2233, !2234, !2235, !2239, !2243, !2244, !2245, !2246, !2250, !2254, !2255}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2226, file: !2227, line: 55, baseType: !147, size: 64)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2226, file: !2227, line: 56, baseType: !336, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2226, file: !2227, line: 58, baseType: !449, size: 64, offset: 128)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2226, file: !2227, line: 59, baseType: !449, size: 64, offset: 192)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2226, file: !2227, line: 60, baseType: !354, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2226, file: !2227, line: 62, baseType: !1808, size: 64, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2226, file: !2227, line: 63, baseType: !2236, size: 64, offset: 384)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!91, !1795, !1815}
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
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !340, file: !30, line: 541, baseType: !449, size: 64, offset: 5248)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !340, file: !30, line: 543, baseType: !1817, size: 64, offset: 5312)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !340, file: !30, line: 544, baseType: !2259, size: 64, offset: 5376)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !340, file: !30, line: 545, baseType: !2262, size: 64, offset: 5440)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !340, file: !30, line: 547, baseType: !312, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !340, file: !30, line: 548, baseType: !312, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !340, file: !30, line: 549, baseType: !312, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !340, file: !30, line: 550, baseType: !312, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !121, file: !122, line: 376, baseType: !90, size: 32, offset: 8832)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !121, file: !122, line: 377, baseType: !2270, size: 192, offset: 8896)
!2270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !122, line: 191, size: 192, elements: !2271)
!2271 = !{!2272, !2275, !2276}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2270, file: !122, line: 192, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1633, line: 21, flags: DIFlagFwdDecl)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2270, file: !122, line: 194, baseType: !147, size: 64, offset: 64)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2270, file: !122, line: 195, baseType: !147, size: 64, offset: 128)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !121, file: !122, line: 378, baseType: !2278, size: 64, offset: 9088)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2280, line: 16, flags: DIFlagFwdDecl)
!2280 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !122, line: 386, baseType: !159, size: 64, offset: 9152)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !121, file: !122, line: 389, baseType: !348, size: 128, offset: 9216)
!2283 = !DIDerivedType(tag: DW_TAG_member, scope: !121, file: !122, line: 391, baseType: !2284, size: 320, offset: 9344)
!2284 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !121, file: !122, line: 391, size: 320, elements: !2285)
!2285 = !{!2286, !2293}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2284, file: !122, line: 392, baseType: !2287, size: 320)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !122, line: 211, size: 320, elements: !2288)
!2288 = !{!2289, !2290, !2291, !2292}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2287, file: !122, line: 212, baseType: !348, size: 128)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2287, file: !122, line: 213, baseType: !133, size: 64, offset: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2287, file: !122, line: 214, baseType: !133, size: 64, offset: 192)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2287, file: !122, line: 215, baseType: !129, size: 32, offset: 256)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2284, file: !122, line: 393, baseType: !2294, size: 256)
!2294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !122, line: 230, size: 256, elements: !2295)
!2295 = !{!2296, !2297}
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2294, file: !122, line: 231, baseType: !605, size: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2294, file: !122, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !118, file: !51, line: 321, baseType: !2299, size: 288, offset: 9664)
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
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !118, file: !51, line: 322, baseType: !2311, size: 1024, offset: 9984)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2312)
!2312 = !{!2313, !2322, !2323, !2324, !2330, !2379}
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
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2325, file: !51, line: 241, baseType: !221, size: 64, offset: 256)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2311, file: !51, line: 296, baseType: !2331, size: 64, offset: 896)
!2331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2332, size: 64)
!2332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2333)
!2333 = !{!2334}
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2332, file: !51, line: 269, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2337)
!2337 = !{!2338, !2343, !2347, !2378}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2336, file: !51, line: 256, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = !DISubroutineType(types: !2341)
!2341 = !{!90, !2342}
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2336, file: !51, line: 257, baseType: !2344, size: 64, offset: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{null, !2342}
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2336, file: !51, line: 258, baseType: !2348, size: 64, offset: 128)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{!90, !2342, !2351}
!2351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2352, size: 64)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2353)
!2353 = !{!2354, !2355, !2363, !2364, !2365, !2370, !2371, !2372, !2377}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2352, file: !51, line: 113, baseType: !69, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2352, file: !51, line: 114, baseType: !2356, size: 160, offset: 32)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2357)
!2357 = !{!2358, !2359, !2360, !2361, !2362}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2356, file: !51, line: 78, baseType: !7, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2356, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2356, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2356, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2356, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2352, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2352, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2352, file: !51, line: 120, baseType: !2366, size: 64, offset: 256)
!2366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2352, file: !51, line: 117, size: 64, elements: !2367)
!2367 = !{!2368, !2369}
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2366, file: !51, line: 118, baseType: !1597, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2366, file: !51, line: 119, baseType: !221, size: 64)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2352, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2352, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2352, file: !51, line: 126, baseType: !2373, size: 64, offset: 384)
!2373 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2352, file: !51, line: 123, size: 64, elements: !2374)
!2374 = !{!2375, !2376}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2373, file: !51, line: 124, baseType: !1597, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2373, file: !51, line: 125, baseType: !221, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2352, file: !51, line: 127, baseType: !90, size: 32, offset: 448)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2336, file: !51, line: 260, baseType: !2348, size: 64, offset: 192)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2311, file: !51, line: 297, baseType: !2331, size: 64, offset: 960)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !118, file: !51, line: 323, baseType: !2381, size: 64, offset: 11008)
!2381 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2382)
!2382 = !{!2383, !2384}
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2381, file: !51, line: 62, baseType: !7, size: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2381, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !118, file: !51, line: 324, baseType: !2386, size: 64, offset: 11072)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2387)
!2387 = !{!2388}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2386, file: !51, line: 206, baseType: !106, size: 64)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !118, file: !51, line: 325, baseType: !2390, size: 64, offset: 11136)
!2390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2391, size: 64)
!2391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2392)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2393)
!2393 = !{!2394, !2400, !2401}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2392, file: !51, line: 226, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DISubroutineType(types: !2397)
!2397 = !{!90, !2342, !2398}
!2398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2356)
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2392, file: !51, line: 227, baseType: !2395, size: 64, offset: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2392, file: !51, line: 228, baseType: !2402, size: 64, offset: 128)
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DISubroutineType(types: !2404)
!2404 = !{!312, !2342, !2398}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !115, file: !74, line: 1098, baseType: !2406, size: 96, offset: 11200)
!2406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !74, line: 249, size: 96, elements: !2407)
!2407 = !{!2408, !2410}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2406, file: !74, line: 250, baseType: !2409, size: 64)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 64, elements: !747)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2406, file: !74, line: 251, baseType: !90, size: 32, offset: 64)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !115, file: !74, line: 1099, baseType: !2412, size: 704, offset: 11328)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !74, line: 230, size: 704, elements: !2413)
!2413 = !{!2414, !2415, !2416, !2418, !2419}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2412, file: !74, line: 232, baseType: !147, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2412, file: !74, line: 233, baseType: !312, size: 8, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2412, file: !74, line: 234, baseType: !2417, size: 256, offset: 128)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !587)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2412, file: !74, line: 235, baseType: !2417, size: 256, offset: 384)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2412, file: !74, line: 238, baseType: !2420, size: 64, offset: 640)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2422, line: 167, size: 832, elements: !2423)
!2422 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2423 = !{!2424, !2425, !2426, !2427, !2428, !2429, !2430, !2431}
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2421, file: !2422, line: 168, baseType: !90, size: 32)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2421, file: !2422, line: 169, baseType: !618, size: 16, offset: 32)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2421, file: !2422, line: 170, baseType: !618, size: 16, offset: 48)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2421, file: !2422, line: 171, baseType: !618, size: 16, offset: 64)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2421, file: !2422, line: 172, baseType: !618, size: 16, offset: 80)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2421, file: !2422, line: 173, baseType: !618, size: 16, offset: 96)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2421, file: !2422, line: 174, baseType: !618, size: 16, offset: 112)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2421, file: !2422, line: 175, baseType: !2432, size: 704, offset: 128)
!2432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 704, elements: !2433)
!2433 = !{!2434}
!2434 = !DISubrange(count: 88)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !115, file: !74, line: 1100, baseType: !2436, size: 128, offset: 12032)
!2436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !74, line: 1036, size: 128, elements: !2437)
!2437 = !{!2438, !2529}
!2438 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2436, file: !74, line: 1037, baseType: !2439, size: 64)
!2439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2440, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2441)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !2442, line: 61, size: 192, elements: !2443)
!2442 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!2443 = !{!2444, !2445, !2446}
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2441, file: !2442, line: 62, baseType: !90, size: 32)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2441, file: !2442, line: 63, baseType: !91, size: 64, offset: 64)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2441, file: !2442, line: 64, baseType: !2447, size: 64, offset: 128)
!2447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2449)
!2449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !2442, line: 47, size: 256, elements: !2450)
!2450 = !{!2451, !2453, !2457, !2458}
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2449, file: !2442, line: 48, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2449, file: !2442, line: 49, baseType: !2454, size: 64, offset: 64)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!90, !114}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2449, file: !2442, line: 50, baseType: !2452, size: 64, offset: 128)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !2449, file: !2442, line: 51, baseType: !2459, size: 64, offset: 192)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !114, !2462}
!2462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2463, size: 64)
!2463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2422, line: 54, size: 2048, elements: !2464)
!2464 = !{!2465, !2467, !2469, !2470, !2471, !2473, !2474, !2475, !2479, !2481, !2483, !2484, !2485, !2489, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528}
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2463, file: !2422, line: 57, baseType: !2466, size: 32)
!2466 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 32, elements: !587)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2463, file: !2422, line: 58, baseType: !2468, size: 16, offset: 32)
!2468 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1765, line: 29, baseType: !619)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2463, file: !2422, line: 59, baseType: !2468, size: 16, offset: 48)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2463, file: !2422, line: 60, baseType: !2468, size: 16, offset: 64)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2463, file: !2422, line: 61, baseType: !2472, size: 16, offset: 80)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 16, elements: !1180)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2463, file: !2422, line: 62, baseType: !2468, size: 16, offset: 96)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2463, file: !2422, line: 63, baseType: !100, size: 8, offset: 112)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2463, file: !2422, line: 64, baseType: !2476, size: 136, offset: 120)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 136, elements: !2477)
!2477 = !{!2478}
!2478 = !DISubrange(count: 17)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2463, file: !2422, line: 67, baseType: !2480, size: 96, offset: 256)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 96, elements: !1432)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2463, file: !2422, line: 68, baseType: !2482, size: 160, offset: 352)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !92, size: 160, elements: !1397)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2463, file: !2422, line: 69, baseType: !100, size: 8, offset: 512)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2463, file: !2422, line: 70, baseType: !2468, size: 16, offset: 520)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2463, file: !2422, line: 71, baseType: !2486, size: 104, offset: 536)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 104, elements: !2487)
!2487 = !{!2488}
!2488 = !DISubrange(count: 13)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2463, file: !2422, line: 74, baseType: !2490, size: 32, offset: 640)
!2490 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1765, line: 31, baseType: !130)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2463, file: !2422, line: 75, baseType: !2468, size: 16, offset: 672)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2463, file: !2422, line: 76, baseType: !2490, size: 32, offset: 688)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2463, file: !2422, line: 77, baseType: !2468, size: 16, offset: 720)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2463, file: !2422, line: 78, baseType: !2490, size: 32, offset: 736)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2463, file: !2422, line: 79, baseType: !2490, size: 32, offset: 768)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2463, file: !2422, line: 80, baseType: !100, size: 8, offset: 800)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2463, file: !2422, line: 81, baseType: !100, size: 8, offset: 808)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2463, file: !2422, line: 82, baseType: !100, size: 8, offset: 816)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2463, file: !2422, line: 83, baseType: !2468, size: 16, offset: 824)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2463, file: !2422, line: 84, baseType: !2468, size: 16, offset: 840)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2463, file: !2422, line: 85, baseType: !100, size: 8, offset: 856)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2463, file: !2422, line: 86, baseType: !2468, size: 16, offset: 864)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2463, file: !2422, line: 87, baseType: !100, size: 8, offset: 880)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2463, file: !2422, line: 88, baseType: !100, size: 8, offset: 888)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2463, file: !2422, line: 89, baseType: !100, size: 8, offset: 896)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2463, file: !2422, line: 90, baseType: !100, size: 8, offset: 904)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2463, file: !2422, line: 91, baseType: !100, size: 8, offset: 912)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2463, file: !2422, line: 92, baseType: !2486, size: 104, offset: 920)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2463, file: !2422, line: 95, baseType: !100, size: 8, offset: 1024)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2463, file: !2422, line: 96, baseType: !2468, size: 16, offset: 1032)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2463, file: !2422, line: 97, baseType: !2468, size: 16, offset: 1048)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2463, file: !2422, line: 98, baseType: !2468, size: 16, offset: 1064)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2463, file: !2422, line: 99, baseType: !2468, size: 16, offset: 1080)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2463, file: !2422, line: 100, baseType: !2468, size: 16, offset: 1096)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2463, file: !2422, line: 101, baseType: !2468, size: 16, offset: 1112)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2463, file: !2422, line: 102, baseType: !2468, size: 16, offset: 1128)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2463, file: !2422, line: 103, baseType: !100, size: 8, offset: 1144)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2463, file: !2422, line: 104, baseType: !2468, size: 16, offset: 1152)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2463, file: !2422, line: 105, baseType: !2468, size: 16, offset: 1168)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2463, file: !2422, line: 106, baseType: !2468, size: 16, offset: 1184)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2463, file: !2422, line: 107, baseType: !100, size: 8, offset: 1200)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2463, file: !2422, line: 108, baseType: !100, size: 8, offset: 1208)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2463, file: !2422, line: 109, baseType: !2468, size: 16, offset: 1216)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2463, file: !2422, line: 110, baseType: !2468, size: 16, offset: 1232)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2463, file: !2422, line: 111, baseType: !2409, size: 64, offset: 1248)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2463, file: !2422, line: 114, baseType: !2468, size: 16, offset: 1312)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2463, file: !2422, line: 115, baseType: !2432, size: 704, offset: 1328)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2463, file: !2422, line: 117, baseType: !2468, size: 16, offset: 2032)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2436, file: !74, line: 1038, baseType: !221, size: 64, offset: 64)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !115, file: !74, line: 1101, baseType: !2531, size: 384, offset: 12160)
!2531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !74, line: 1021, size: 384, elements: !2532)
!2532 = !{!2533, !2534, !2535, !2539, !2540, !2544}
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2531, file: !74, line: 1022, baseType: !2454, size: 64)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2531, file: !74, line: 1023, baseType: !2452, size: 64, offset: 64)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2531, file: !74, line: 1024, baseType: !2536, size: 64, offset: 128)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!90, !114, !212, !132}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2531, file: !74, line: 1025, baseType: !2536, size: 64, offset: 192)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2531, file: !74, line: 1026, baseType: !2541, size: 64, offset: 256)
!2541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2542, size: 64)
!2542 = !DISubroutineType(types: !2543)
!2543 = !{!90, !114, !90}
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2531, file: !74, line: 1027, baseType: !2545, size: 64, offset: 320)
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2546, size: 64)
!2546 = !DISubroutineType(types: !2547)
!2547 = !{!90, !114, !2548}
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !74, line: 492, size: 1536, elements: !2550)
!2550 = !{!2551, !2552}
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2549, file: !74, line: 493, baseType: !73, size: 32)
!2552 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2549, file: !74, line: 499, baseType: !2553, size: 1472, offset: 64)
!2553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !74, line: 494, size: 1472, elements: !2554)
!2554 = !{!2555, !2556}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2553, file: !74, line: 495, baseType: !7, size: 32)
!2556 = !DIDerivedType(tag: DW_TAG_member, scope: !2553, file: !74, line: 496, baseType: !2557, size: 1408, offset: 64)
!2557 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2553, file: !74, line: 496, size: 1408, elements: !2558)
!2558 = !{!2559}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2557, file: !74, line: 497, baseType: !2560, size: 1408)
!2560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !74, line: 436, size: 1408, elements: !2561)
!2561 = !{!2562, !2563, !2564, !2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2560, file: !74, line: 437, baseType: !133, size: 64)
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2560, file: !74, line: 438, baseType: !129, size: 32, offset: 64)
!2564 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2560, file: !74, line: 439, baseType: !133, size: 64, offset: 128)
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2560, file: !74, line: 440, baseType: !133, size: 64, offset: 192)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2560, file: !74, line: 441, baseType: !129, size: 32, offset: 256)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2560, file: !74, line: 442, baseType: !129, size: 32, offset: 288)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2560, file: !74, line: 443, baseType: !129, size: 32, offset: 320)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2560, file: !74, line: 444, baseType: !129, size: 32, offset: 352)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2560, file: !74, line: 445, baseType: !129, size: 32, offset: 384)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2560, file: !74, line: 446, baseType: !129, size: 32, offset: 416)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2560, file: !74, line: 447, baseType: !129, size: 32, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2560, file: !74, line: 448, baseType: !129, size: 32, offset: 480)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2560, file: !74, line: 449, baseType: !129, size: 32, offset: 512)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2560, file: !74, line: 450, baseType: !129, size: 32, offset: 544)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2560, file: !74, line: 451, baseType: !129, size: 32, offset: 576)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2560, file: !74, line: 452, baseType: !129, size: 32, offset: 608)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2560, file: !74, line: 453, baseType: !129, size: 32, offset: 640)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2560, file: !74, line: 454, baseType: !129, size: 32, offset: 672)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2560, file: !74, line: 455, baseType: !129, size: 32, offset: 704)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2560, file: !74, line: 456, baseType: !129, size: 32, offset: 736)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2560, file: !74, line: 457, baseType: !129, size: 32, offset: 768)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2560, file: !74, line: 458, baseType: !129, size: 32, offset: 800)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2560, file: !74, line: 459, baseType: !129, size: 32, offset: 832)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2560, file: !74, line: 460, baseType: !129, size: 32, offset: 864)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2560, file: !74, line: 461, baseType: !129, size: 32, offset: 896)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2560, file: !74, line: 462, baseType: !129, size: 32, offset: 928)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2560, file: !74, line: 463, baseType: !129, size: 32, offset: 960)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2560, file: !74, line: 464, baseType: !129, size: 32, offset: 992)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2560, file: !74, line: 465, baseType: !129, size: 32, offset: 1024)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2560, file: !74, line: 466, baseType: !129, size: 32, offset: 1056)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2560, file: !74, line: 467, baseType: !129, size: 32, offset: 1088)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2560, file: !74, line: 468, baseType: !133, size: 64, offset: 1152)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2560, file: !74, line: 469, baseType: !129, size: 32, offset: 1216)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2560, file: !74, line: 470, baseType: !129, size: 32, offset: 1248)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2560, file: !74, line: 471, baseType: !129, size: 32, offset: 1280)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2560, file: !74, line: 472, baseType: !129, size: 32, offset: 1312)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2560, file: !74, line: 473, baseType: !129, size: 32, offset: 1344)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2560, file: !74, line: 474, baseType: !129, size: 32, offset: 1376)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !115, file: !74, line: 1102, baseType: !2601, size: 1280, offset: 12544)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !74, line: 989, size: 1280, elements: !2602)
!2602 = !{!2603, !2604, !2605, !2609, !2613, !2617, !2623, !2628, !2632, !2636, !2637, !2638, !2642, !2643, !2647, !2648, !2649}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2601, file: !74, line: 990, baseType: !221, size: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2601, file: !74, line: 991, baseType: !221, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2601, file: !74, line: 992, baseType: !2606, size: 64, offset: 128)
!2606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2607, size: 64)
!2607 = !DISubroutineType(types: !2608)
!2608 = !{null, !114, !90}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2601, file: !74, line: 993, baseType: !2610, size: 64, offset: 192)
!2610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2611, size: 64)
!2611 = !DISubroutineType(types: !2612)
!2612 = !{!100, !114}
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2601, file: !74, line: 994, baseType: !2614, size: 64, offset: 256)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DISubroutineType(types: !2616)
!2616 = !{null, !114, !100}
!2617 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2601, file: !74, line: 995, baseType: !2618, size: 64, offset: 320)
!2618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2619, size: 64)
!2619 = !DISubroutineType(types: !2620)
!2620 = !{null, !114, !2621, !90}
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !100)
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2601, file: !74, line: 996, baseType: !2624, size: 64, offset: 384)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !114, !2627, !90}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2601, file: !74, line: 997, baseType: !2629, size: 64, offset: 448)
!2629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2630, size: 64)
!2630 = !DISubroutineType(types: !2631)
!2631 = !{null, !114, !90, !7}
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2601, file: !74, line: 998, baseType: !2633, size: 64, offset: 512)
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2634, size: 64)
!2634 = !DISubroutineType(types: !2635)
!2635 = !{null, !114, !7, !90, !90}
!2636 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2601, file: !74, line: 1000, baseType: !2454, size: 64, offset: 576)
!2637 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2601, file: !74, line: 1001, baseType: !2454, size: 64, offset: 640)
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2601, file: !74, line: 1002, baseType: !2639, size: 64, offset: 704)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{!90, !114, !212}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2601, file: !74, line: 1003, baseType: !2639, size: 64, offset: 768)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2601, file: !74, line: 1004, baseType: !2644, size: 64, offset: 832)
!2644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2645, size: 64)
!2645 = !DISubroutineType(types: !2646)
!2646 = !{!90, !114, !90, !2627}
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2601, file: !74, line: 1006, baseType: !2644, size: 64, offset: 896)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2601, file: !74, line: 1008, baseType: !90, size: 32, offset: 960)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2601, file: !74, line: 1009, baseType: !2650, size: 256, offset: 1024)
!2650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !74, line: 951, size: 256, elements: !2651)
!2651 = !{!2652, !2653}
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2650, file: !74, line: 952, baseType: !605, size: 192)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2650, file: !74, line: 953, baseType: !2654, size: 64, offset: 192)
!2654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2655, size: 64)
!2655 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2656)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !74, line: 935, size: 256, elements: !2657)
!2657 = !{!2658, !2659, !2660, !2703}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2656, file: !74, line: 936, baseType: !2454, size: 64)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2656, file: !74, line: 937, baseType: !2452, size: 64, offset: 64)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2656, file: !74, line: 938, baseType: !2661, size: 64, offset: 128)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = !DISubroutineType(types: !2663)
!2663 = !{!90, !114, !2664, !312}
!2664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2665, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2666)
!2666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !74, line: 860, size: 192, elements: !2667)
!2667 = !{!2668, !2669, !2702}
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2666, file: !74, line: 861, baseType: !7, size: 32)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2666, file: !74, line: 862, baseType: !2670, size: 64, offset: 64)
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !74, line: 593, size: 320, elements: !2673)
!2673 = !{!2674, !2675, !2701}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2672, file: !74, line: 594, baseType: !77, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2672, file: !74, line: 600, baseType: !2676, size: 192, offset: 64)
!2676 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2672, file: !74, line: 595, size: 192, elements: !2677)
!2677 = !{!2678, !2682, !2687, !2697}
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2676, file: !74, line: 596, baseType: !2679, size: 8)
!2679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !74, line: 519, size: 8, elements: !2680)
!2680 = !{!2681}
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2679, file: !74, line: 520, baseType: !100, size: 8)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2676, file: !74, line: 597, baseType: !2683, size: 128)
!2683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !74, line: 528, size: 128, elements: !2684)
!2684 = !{!2685, !2686}
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2683, file: !74, line: 529, baseType: !7, size: 32)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2683, file: !74, line: 530, baseType: !2621, size: 64, offset: 64)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2676, file: !74, line: 598, baseType: !2688, size: 192)
!2688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !74, line: 545, size: 192, elements: !2689)
!2689 = !{!2690, !2691, !2696}
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2688, file: !74, line: 546, baseType: !7, size: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2688, file: !74, line: 550, baseType: !2692, size: 64, offset: 64)
!2692 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2688, file: !74, line: 547, size: 64, elements: !2693)
!2693 = !{!2694, !2695}
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2692, file: !74, line: 548, baseType: !221, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2692, file: !74, line: 549, baseType: !1597, size: 64)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2688, file: !74, line: 551, baseType: !312, size: 8, offset: 128)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2676, file: !74, line: 599, baseType: !2698, size: 32)
!2698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !74, line: 558, size: 32, elements: !2699)
!2699 = !{!2700}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2698, file: !74, line: 559, baseType: !7, size: 32)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2672, file: !74, line: 601, baseType: !7, size: 32, offset: 256)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2666, file: !74, line: 863, baseType: !7, size: 32, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2656, file: !74, line: 941, baseType: !2704, size: 64, offset: 192)
!2704 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2705, size: 64)
!2705 = !DISubroutineType(types: !2706)
!2706 = !{!90, !114, !90, !2707}
!2707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2708, size: 64)
!2708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2549)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !115, file: !74, line: 1103, baseType: !7, size: 32, offset: 13824)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !115, file: !74, line: 1106, baseType: !2707, size: 64, offset: 13888)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !115, file: !74, line: 1107, baseType: !2548, size: 64, offset: 13952)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !115, file: !74, line: 1110, baseType: !7, size: 32, offset: 14016)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !115, file: !74, line: 1111, baseType: !7, size: 32, offset: 14048)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !115, file: !74, line: 1112, baseType: !7, size: 32, offset: 14080)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !115, file: !74, line: 1113, baseType: !7, size: 32, offset: 14112)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !115, file: !74, line: 1114, baseType: !2717, size: 64, offset: 14144)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2719, line: 41, size: 576, elements: !2720)
!2719 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2720 = !{!2721, !2722, !2724, !2725, !2726, !2728, !2729, !2730, !2731}
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2718, file: !2719, line: 42, baseType: !90, size: 32)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2718, file: !2719, line: 43, baseType: !2723, size: 256, offset: 32)
!2723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 256, elements: !747)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2718, file: !2719, line: 44, baseType: !90, size: 32, offset: 288)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2718, file: !2719, line: 45, baseType: !90, size: 32, offset: 320)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2718, file: !2719, line: 46, baseType: !2727, size: 64, offset: 352)
!2727 = !DICompositeType(tag: DW_TAG_array_type, baseType: !256, size: 64, elements: !747)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2718, file: !2719, line: 47, baseType: !90, size: 32, offset: 416)
!2729 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2718, file: !2719, line: 48, baseType: !90, size: 32, offset: 448)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2718, file: !2719, line: 49, baseType: !90, size: 32, offset: 480)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2718, file: !2719, line: 50, baseType: !255, size: 64, offset: 512)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !115, file: !74, line: 1115, baseType: !2717, size: 64, offset: 14208)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !115, file: !74, line: 1116, baseType: !2717, size: 64, offset: 14272)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !115, file: !74, line: 1117, baseType: !2627, size: 64, offset: 14336)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !115, file: !74, line: 1120, baseType: !7, size: 32, offset: 14400)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !115, file: !74, line: 1121, baseType: !7, size: 32, offset: 14432)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !115, file: !74, line: 1122, baseType: !7, size: 32, offset: 14464)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !115, file: !74, line: 1123, baseType: !7, size: 32, offset: 14496)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !115, file: !74, line: 1124, baseType: !7, size: 32, offset: 14528)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !115, file: !74, line: 1127, baseType: !2627, size: 64, offset: 14592)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !115, file: !74, line: 1128, baseType: !2627, size: 64, offset: 14656)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !115, file: !74, line: 1132, baseType: !2743, size: 64, offset: 14720)
!2743 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !115, file: !74, line: 1129, size: 64, elements: !2744)
!2744 = !{!2745, !2746}
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2743, file: !74, line: 1130, baseType: !7, size: 32)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2743, file: !74, line: 1131, baseType: !90, size: 32, offset: 32)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !115, file: !74, line: 1133, baseType: !107, size: 64, offset: 14784)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !115, file: !74, line: 1136, baseType: !605, size: 192, offset: 14848)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !115, file: !74, line: 1137, baseType: !7, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !115, file: !74, line: 1138, baseType: !90, size: 32, offset: 15072)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !115, file: !74, line: 1139, baseType: !90, size: 32, offset: 15104)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !115, file: !74, line: 1142, baseType: !2753, size: 64, offset: 15168)
!2753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2650, size: 64)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !115, file: !74, line: 1143, baseType: !2755, size: 1408, offset: 15232)
!2755 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !74, line: 346, size: 1408, elements: !2756)
!2756 = !{!2757, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2778, !2782, !2786, !2790, !2791, !2795, !2799, !2800, !2801, !2802, !2803}
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2755, file: !74, line: 347, baseType: !50, size: 32)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2755, file: !74, line: 348, baseType: !58, size: 32, offset: 32)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2755, file: !74, line: 349, baseType: !63, size: 32, offset: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2755, file: !74, line: 350, baseType: !90, size: 32, offset: 96)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2755, file: !74, line: 351, baseType: !90, size: 32, offset: 128)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2755, file: !74, line: 352, baseType: !90, size: 32, offset: 160)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2755, file: !74, line: 353, baseType: !90, size: 32, offset: 192)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2755, file: !74, line: 354, baseType: !90, size: 32, offset: 224)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2755, file: !74, line: 355, baseType: !90, size: 32, offset: 256)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2755, file: !74, line: 356, baseType: !90, size: 32, offset: 288)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2755, file: !74, line: 357, baseType: !7, size: 32, offset: 320)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2755, file: !74, line: 358, baseType: !221, size: 64, offset: 384)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2755, file: !74, line: 359, baseType: !2627, size: 64, offset: 448)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2755, file: !74, line: 360, baseType: !2627, size: 64, offset: 512)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2755, file: !74, line: 361, baseType: !2606, size: 64, offset: 576)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2755, file: !74, line: 362, baseType: !2773, size: 64, offset: 640)
!2773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2774, size: 64)
!2774 = !DISubroutineType(types: !2775)
!2775 = !{!90, !114, !2776, !255}
!2776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2777, size: 64)
!2777 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !256)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2755, file: !74, line: 364, baseType: !2779, size: 64, offset: 704)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!90, !114, !255, !255, !255}
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2755, file: !74, line: 366, baseType: !2783, size: 64, offset: 768)
!2783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2784, size: 64)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!90, !114, !255, !90, !90}
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2755, file: !74, line: 368, baseType: !2787, size: 64, offset: 832)
!2787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2788, size: 64)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!90, !114, !2776, !90, !90}
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2755, file: !74, line: 370, baseType: !2783, size: 64, offset: 896)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2755, file: !74, line: 372, baseType: !2792, size: 64, offset: 960)
!2792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2793, size: 64)
!2793 = !DISubroutineType(types: !2794)
!2794 = !{!90, !114, !128, !128, !255, !90}
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2755, file: !74, line: 374, baseType: !2796, size: 64, offset: 1024)
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2797, size: 64)
!2797 = !DISubroutineType(types: !2798)
!2798 = !{!90, !114, !128, !128, !2776, !90, !90}
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2755, file: !74, line: 377, baseType: !2787, size: 64, offset: 1088)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2755, file: !74, line: 379, baseType: !2541, size: 64, offset: 1152)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2755, file: !74, line: 380, baseType: !2541, size: 64, offset: 1216)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2755, file: !74, line: 381, baseType: !2541, size: 64, offset: 1280)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2755, file: !74, line: 382, baseType: !2541, size: 64, offset: 1344)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !115, file: !74, line: 1144, baseType: !221, size: 64, offset: 16640)
!2805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, size: 896, elements: !2807)
!2806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!2807 = !{!2808}
!2808 = !DISubrange(count: 14)
!2809 = !DIGlobalVariableExpression(var: !2810, expr: !DIExpression())
!2810 = distinct !DIGlobalVariable(name: "deep_power_down_dev", scope: !2811, file: !3, line: 304, type: !2812, isLocal: true, isDefinition: true)
!2811 = distinct !DISubprogram(name: "macronix_nand_deep_power_down_support", scope: !3, file: !3, line: 301, type: !112, scopeLine: 302, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!2812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2806, size: 192, elements: !402)
!2813 = !{i32 7, !"Dwarf Version", i32 4}
!2814 = !{i32 2, !"Debug Info Version", i32 3}
!2815 = !{i32 1, !"wchar_size", i32 2}
!2816 = !{i32 1, !"Code Model", i32 2}
!2817 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2818 = distinct !DISubprogram(name: "macronix_nand_init", scope: !3, file: !3, line: 319, type: !2455, scopeLine: 320, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!2819 = !DILocalVariable(name: "chip", arg: 1, scope: !2818, file: !3, line: 319, type: !114)
!2820 = !DILocation(line: 319, column: 49, scope: !2818)
!2821 = !DILocation(line: 321, column: 18, scope: !2822)
!2822 = distinct !DILexicalBlock(scope: !2818, file: !3, line: 321, column: 6)
!2823 = !DILocation(line: 321, column: 6, scope: !2822)
!2824 = !DILocation(line: 321, column: 6, scope: !2818)
!2825 = !DILocation(line: 322, column: 3, scope: !2822)
!2826 = !DILocation(line: 322, column: 9, scope: !2822)
!2827 = !DILocation(line: 322, column: 17, scope: !2822)
!2828 = !DILocation(line: 324, column: 39, scope: !2818)
!2829 = !DILocation(line: 324, column: 2, scope: !2818)
!2830 = !DILocation(line: 325, column: 26, scope: !2818)
!2831 = !DILocation(line: 325, column: 2, scope: !2818)
!2832 = !DILocation(line: 326, column: 41, scope: !2818)
!2833 = !DILocation(line: 326, column: 2, scope: !2818)
!2834 = !DILocation(line: 327, column: 40, scope: !2818)
!2835 = !DILocation(line: 327, column: 2, scope: !2818)
!2836 = !DILocation(line: 329, column: 2, scope: !2818)
!2837 = distinct !DISubprogram(name: "nand_is_slc", scope: !74, file: !74, line: 1281, type: !2838, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{!312, !114}
!2840 = !DILocalVariable(name: "chip", arg: 1, scope: !2837, file: !74, line: 1281, type: !114)
!2841 = !DILocation(line: 1281, column: 50, scope: !2837)
!2842 = !DILocalVariable(name: "__ret_warn_on", scope: !2843, file: !74, line: 1283, type: !90)
!2843 = distinct !DILexicalBlock(scope: !2837, file: !74, line: 1283, column: 2)
!2844 = !DILocation(line: 1283, column: 2, scope: !2843)
!2845 = !DILocation(line: 1283, column: 2, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2843, file: !74, line: 1283, column: 2)
!2847 = !DILocation(line: 1283, column: 2, scope: !2848)
!2848 = distinct !DILexicalBlock(scope: !2846, file: !74, line: 1283, column: 2)
!2849 = !DILocation(line: 1283, column: 2, scope: !2850)
!2850 = distinct !DILexicalBlock(scope: !2848, file: !74, line: 1283, column: 2)
!2851 = !DILocation(line: 1283, column: 2, scope: !2852)
!2852 = distinct !DILexicalBlock(scope: !2848, file: !74, line: 1283, column: 2)
!2853 = !DILocation(line: 1283, column: 2, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2852, file: !74, line: 1283, column: 2)
!2855 = !DILocation(line: 1283, column: 2, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2852, file: !74, line: 1283, column: 2)
!2857 = !{i32 -2143495963, i32 -2143495934, i32 -2143495888, i32 -2143495830, i32 -2143495776, i32 -2143495722, i32 -2143495667, i32 -2143495636}
!2858 = !DILocation(line: 1283, column: 2, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2852, file: !74, line: 1283, column: 2)
!2860 = !{i32 -2143495215, i32 -2143495208, i32 -2143495156, i32 -2143495125, i32 -2143495095}
!2861 = !DILocation(line: 1283, column: 2, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2852, file: !74, line: 1283, column: 2)
!2863 = !DILocation(line: 1283, column: 2, scope: !2864)
!2864 = distinct !DILexicalBlock(scope: !2848, file: !74, line: 1283, column: 2)
!2865 = !DILocation(line: 1285, column: 32, scope: !2837)
!2866 = !DILocation(line: 1285, column: 38, scope: !2837)
!2867 = !DILocation(line: 1285, column: 9, scope: !2837)
!2868 = !DILocation(line: 1285, column: 44, scope: !2837)
!2869 = !DILocation(line: 1285, column: 2, scope: !2837)
!2870 = !DILocalVariable(name: "map", arg: 1, scope: !2871, file: !2872, line: 419, type: !106)
!2871 = distinct !DISubprogram(name: "bitmap_clear", scope: !2872, file: !2872, line: 419, type: !2873, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!2872 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!2873 = !DISubroutineType(types: !2874)
!2874 = !{null, !106, !7, !7}
!2875 = !DILocation(line: 419, column: 57, scope: !2871, inlinedAt: !2876)
!2876 = distinct !DILocation(line: 178, column: 2, scope: !111)
!2877 = !DILocalVariable(name: "start", arg: 2, scope: !2871, file: !2872, line: 419, type: !7)
!2878 = !DILocation(line: 419, column: 75, scope: !2871, inlinedAt: !2876)
!2879 = !DILocalVariable(name: "nbits", arg: 3, scope: !2871, file: !2872, line: 420, type: !7)
!2880 = !DILocation(line: 420, column: 16, scope: !2871, inlinedAt: !2876)
!2881 = !DILocation(line: 419, column: 57, scope: !2871, inlinedAt: !2882)
!2882 = distinct !DILocation(line: 176, column: 2, scope: !111)
!2883 = !DILocation(line: 419, column: 75, scope: !2871, inlinedAt: !2882)
!2884 = !DILocation(line: 420, column: 16, scope: !2871, inlinedAt: !2882)
!2885 = !DILocalVariable(name: "chip", arg: 1, scope: !111, file: !3, line: 148, type: !114)
!2886 = !DILocation(line: 148, column: 68, scope: !111)
!2887 = !DILocalVariable(name: "i", scope: !111, file: !3, line: 150, type: !90)
!2888 = !DILocation(line: 150, column: 6, scope: !111)
!2889 = !DILocation(line: 168, column: 7, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !111, file: !3, line: 168, column: 6)
!2891 = !DILocation(line: 168, column: 13, scope: !2890)
!2892 = !DILocation(line: 168, column: 24, scope: !2890)
!2893 = !DILocation(line: 168, column: 6, scope: !111)
!2894 = !DILocation(line: 169, column: 3, scope: !2890)
!2895 = !DILocation(line: 172, column: 5, scope: !111)
!2896 = !DILocation(line: 172, column: 11, scope: !111)
!2897 = !DILocation(line: 172, column: 22, scope: !111)
!2898 = !DILocation(line: 171, column: 6, scope: !111)
!2899 = !DILocation(line: 171, column: 4, scope: !111)
!2900 = !DILocation(line: 173, column: 6, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !111, file: !3, line: 173, column: 6)
!2902 = !DILocation(line: 173, column: 8, scope: !2901)
!2903 = !DILocation(line: 173, column: 6, scope: !111)
!2904 = !DILocation(line: 174, column: 3, scope: !2901)
!2905 = !DILocation(line: 176, column: 15, scope: !111)
!2906 = !DILocation(line: 176, column: 21, scope: !111)
!2907 = !DILocation(line: 176, column: 32, scope: !111)
!2908 = !DILocation(line: 422, column: 27, scope: !2909, inlinedAt: !2882)
!2909 = distinct !DILexicalBlock(scope: !2871, file: !2872, line: 422, column: 6)
!2910 = !DILocation(line: 422, column: 6, scope: !2909, inlinedAt: !2882)
!2911 = !DILocation(line: 422, column: 34, scope: !2909, inlinedAt: !2882)
!2912 = !DILocation(line: 422, column: 37, scope: !2909, inlinedAt: !2882)
!2913 = !DILocation(line: 422, column: 43, scope: !2909, inlinedAt: !2882)
!2914 = !DILocation(line: 422, column: 6, scope: !2871, inlinedAt: !2882)
!2915 = !DILocation(line: 423, column: 15, scope: !2909, inlinedAt: !2882)
!2916 = !DILocation(line: 423, column: 22, scope: !2909, inlinedAt: !2882)
!2917 = !DILocation(line: 423, column: 3, scope: !2909, inlinedAt: !2882)
!2918 = !DILocation(line: 424, column: 32, scope: !2919, inlinedAt: !2882)
!2919 = distinct !DILexicalBlock(scope: !2909, file: !2872, line: 424, column: 11)
!2920 = !DILocation(line: 424, column: 38, scope: !2919, inlinedAt: !2882)
!2921 = !DILocation(line: 424, column: 11, scope: !2919, inlinedAt: !2882)
!2922 = !DILocation(line: 424, column: 57, scope: !2919, inlinedAt: !2882)
!2923 = !DILocation(line: 425, column: 4, scope: !2919, inlinedAt: !2882)
!2924 = !DILocation(line: 425, column: 44, scope: !2919, inlinedAt: !2882)
!2925 = !DILocation(line: 426, column: 25, scope: !2919, inlinedAt: !2882)
!2926 = !DILocation(line: 426, column: 31, scope: !2919, inlinedAt: !2882)
!2927 = !DILocation(line: 426, column: 4, scope: !2919, inlinedAt: !2882)
!2928 = !DILocation(line: 426, column: 50, scope: !2919, inlinedAt: !2882)
!2929 = !DILocation(line: 427, column: 4, scope: !2919, inlinedAt: !2882)
!2930 = !DILocation(line: 424, column: 11, scope: !2909, inlinedAt: !2882)
!2931 = !DILocation(line: 428, column: 18, scope: !2919, inlinedAt: !2882)
!2932 = !DILocation(line: 428, column: 10, scope: !2919, inlinedAt: !2882)
!2933 = !DILocation(line: 428, column: 24, scope: !2919, inlinedAt: !2882)
!2934 = !DILocation(line: 428, column: 30, scope: !2919, inlinedAt: !2882)
!2935 = !DILocation(line: 428, column: 22, scope: !2919, inlinedAt: !2882)
!2936 = !DILocation(line: 428, column: 38, scope: !2919, inlinedAt: !2882)
!2937 = !DILocation(line: 428, column: 44, scope: !2919, inlinedAt: !2882)
!2938 = !DILocation(line: 428, column: 3, scope: !2919, inlinedAt: !2882)
!2939 = !DILocation(line: 430, column: 18, scope: !2919, inlinedAt: !2882)
!2940 = !DILocation(line: 430, column: 23, scope: !2919, inlinedAt: !2882)
!2941 = !DILocation(line: 430, column: 30, scope: !2919, inlinedAt: !2882)
!2942 = !DILocation(line: 430, column: 3, scope: !2919, inlinedAt: !2882)
!2943 = !DILocation(line: 178, column: 15, scope: !111)
!2944 = !DILocation(line: 178, column: 21, scope: !111)
!2945 = !DILocation(line: 178, column: 32, scope: !111)
!2946 = !DILocation(line: 422, column: 27, scope: !2909, inlinedAt: !2876)
!2947 = !DILocation(line: 422, column: 6, scope: !2909, inlinedAt: !2876)
!2948 = !DILocation(line: 422, column: 34, scope: !2909, inlinedAt: !2876)
!2949 = !DILocation(line: 422, column: 37, scope: !2909, inlinedAt: !2876)
!2950 = !DILocation(line: 422, column: 43, scope: !2909, inlinedAt: !2876)
!2951 = !DILocation(line: 422, column: 6, scope: !2871, inlinedAt: !2876)
!2952 = !DILocation(line: 423, column: 15, scope: !2909, inlinedAt: !2876)
!2953 = !DILocation(line: 423, column: 22, scope: !2909, inlinedAt: !2876)
!2954 = !DILocation(line: 423, column: 3, scope: !2909, inlinedAt: !2876)
!2955 = !DILocation(line: 424, column: 32, scope: !2919, inlinedAt: !2876)
!2956 = !DILocation(line: 424, column: 38, scope: !2919, inlinedAt: !2876)
!2957 = !DILocation(line: 424, column: 11, scope: !2919, inlinedAt: !2876)
!2958 = !DILocation(line: 424, column: 57, scope: !2919, inlinedAt: !2876)
!2959 = !DILocation(line: 425, column: 4, scope: !2919, inlinedAt: !2876)
!2960 = !DILocation(line: 425, column: 44, scope: !2919, inlinedAt: !2876)
!2961 = !DILocation(line: 426, column: 25, scope: !2919, inlinedAt: !2876)
!2962 = !DILocation(line: 426, column: 31, scope: !2919, inlinedAt: !2876)
!2963 = !DILocation(line: 426, column: 4, scope: !2919, inlinedAt: !2876)
!2964 = !DILocation(line: 426, column: 50, scope: !2919, inlinedAt: !2876)
!2965 = !DILocation(line: 427, column: 4, scope: !2919, inlinedAt: !2876)
!2966 = !DILocation(line: 424, column: 11, scope: !2909, inlinedAt: !2876)
!2967 = !DILocation(line: 428, column: 18, scope: !2919, inlinedAt: !2876)
!2968 = !DILocation(line: 428, column: 10, scope: !2919, inlinedAt: !2876)
!2969 = !DILocation(line: 428, column: 24, scope: !2919, inlinedAt: !2876)
!2970 = !DILocation(line: 428, column: 30, scope: !2919, inlinedAt: !2876)
!2971 = !DILocation(line: 428, column: 22, scope: !2919, inlinedAt: !2876)
!2972 = !DILocation(line: 428, column: 38, scope: !2919, inlinedAt: !2876)
!2973 = !DILocation(line: 428, column: 44, scope: !2919, inlinedAt: !2876)
!2974 = !DILocation(line: 428, column: 3, scope: !2919, inlinedAt: !2876)
!2975 = !DILocation(line: 430, column: 18, scope: !2919, inlinedAt: !2876)
!2976 = !DILocation(line: 430, column: 23, scope: !2919, inlinedAt: !2876)
!2977 = !DILocation(line: 430, column: 30, scope: !2919, inlinedAt: !2876)
!2978 = !DILocation(line: 430, column: 3, scope: !2919, inlinedAt: !2876)
!2979 = !DILocation(line: 180, column: 1, scope: !111)
!2980 = distinct !DISubprogram(name: "macronix_nand_onfi_init", scope: !3, file: !3, line: 91, type: !112, scopeLine: 92, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!2981 = !DILocalVariable(name: "map", arg: 1, scope: !2982, file: !2872, line: 405, type: !106)
!2982 = distinct !DISubprogram(name: "bitmap_set", scope: !2872, file: !2872, line: 405, type: !2873, scopeLine: 407, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!2983 = !DILocation(line: 405, column: 55, scope: !2982, inlinedAt: !2984)
!2984 = distinct !DILocation(line: 138, column: 3, scope: !2985)
!2985 = distinct !DILexicalBlock(scope: !2986, file: !3, line: 135, column: 36)
!2986 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 135, column: 6)
!2987 = !DILocalVariable(name: "start", arg: 2, scope: !2982, file: !2872, line: 405, type: !7)
!2988 = !DILocation(line: 405, column: 73, scope: !2982, inlinedAt: !2984)
!2989 = !DILocalVariable(name: "nbits", arg: 3, scope: !2982, file: !2872, line: 406, type: !7)
!2990 = !DILocation(line: 406, column: 16, scope: !2982, inlinedAt: !2984)
!2991 = !DILocation(line: 405, column: 55, scope: !2982, inlinedAt: !2992)
!2992 = distinct !DILocation(line: 136, column: 3, scope: !2985)
!2993 = !DILocation(line: 405, column: 73, scope: !2982, inlinedAt: !2992)
!2994 = !DILocation(line: 406, column: 16, scope: !2982, inlinedAt: !2992)
!2995 = !DILocation(line: 419, column: 57, scope: !2871, inlinedAt: !2996)
!2996 = distinct !DILocation(line: 119, column: 5, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 115, column: 17)
!2998 = distinct !DILexicalBlock(scope: !2999, file: !3, line: 115, column: 8)
!2999 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 109, column: 37)
!3000 = distinct !DILexicalBlock(scope: !3001, file: !3, line: 109, column: 7)
!3001 = distinct !DILexicalBlock(scope: !3002, file: !3, line: 108, column: 56)
!3002 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 107, column: 6)
!3003 = !DILocation(line: 419, column: 75, scope: !2871, inlinedAt: !2996)
!3004 = !DILocation(line: 420, column: 16, scope: !2871, inlinedAt: !2996)
!3005 = !DILocation(line: 419, column: 57, scope: !2871, inlinedAt: !3006)
!3006 = distinct !DILocation(line: 116, column: 5, scope: !2997)
!3007 = !DILocation(line: 419, column: 75, scope: !2871, inlinedAt: !3006)
!3008 = !DILocation(line: 420, column: 16, scope: !2871, inlinedAt: !3006)
!3009 = !DILocation(line: 405, column: 55, scope: !2982, inlinedAt: !3010)
!3010 = distinct !DILocation(line: 112, column: 4, scope: !2999)
!3011 = !DILocation(line: 405, column: 73, scope: !2982, inlinedAt: !3010)
!3012 = !DILocation(line: 406, column: 16, scope: !2982, inlinedAt: !3010)
!3013 = !DILocation(line: 405, column: 55, scope: !2982, inlinedAt: !3014)
!3014 = distinct !DILocation(line: 110, column: 4, scope: !2999)
!3015 = !DILocation(line: 405, column: 73, scope: !2982, inlinedAt: !3014)
!3016 = !DILocation(line: 406, column: 16, scope: !2982, inlinedAt: !3014)
!3017 = !DILocalVariable(name: "chip", arg: 1, scope: !2980, file: !3, line: 91, type: !114)
!3018 = !DILocation(line: 91, column: 55, scope: !2980)
!3019 = !DILocalVariable(name: "p", scope: !2980, file: !3, line: 93, type: !3020)
!3020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2412, size: 64)
!3021 = !DILocation(line: 93, column: 26, scope: !2980)
!3022 = !DILocation(line: 93, column: 31, scope: !2980)
!3023 = !DILocation(line: 93, column: 37, scope: !2980)
!3024 = !DILocalVariable(name: "mxic", scope: !2980, file: !3, line: 94, type: !96)
!3025 = !DILocation(line: 94, column: 36, scope: !2980)
!3026 = !DILocalVariable(name: "dn", scope: !2980, file: !3, line: 95, type: !2103)
!3027 = !DILocation(line: 95, column: 22, scope: !2980)
!3028 = !DILocation(line: 95, column: 47, scope: !2980)
!3029 = !DILocation(line: 95, column: 27, scope: !2980)
!3030 = !DILocalVariable(name: "rand_otp", scope: !2980, file: !3, line: 96, type: !90)
!3031 = !DILocation(line: 96, column: 6, scope: !2980)
!3032 = !DILocalVariable(name: "ret", scope: !2980, file: !3, line: 97, type: !90)
!3033 = !DILocation(line: 97, column: 6, scope: !2980)
!3034 = !DILocation(line: 99, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 99, column: 6)
!3036 = !DILocation(line: 99, column: 10, scope: !3035)
!3037 = !DILocation(line: 99, column: 6, scope: !2980)
!3038 = !DILocation(line: 100, column: 3, scope: !3035)
!3039 = !DILocation(line: 102, column: 23, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 102, column: 6)
!3041 = !DILocation(line: 102, column: 6, scope: !3040)
!3042 = !DILocation(line: 102, column: 6, scope: !2980)
!3043 = !DILocation(line: 103, column: 12, scope: !3040)
!3044 = !DILocation(line: 103, column: 3, scope: !3040)
!3045 = !DILocation(line: 105, column: 45, scope: !2980)
!3046 = !DILocation(line: 105, column: 48, scope: !2980)
!3047 = !DILocation(line: 105, column: 54, scope: !2980)
!3048 = !DILocation(line: 105, column: 9, scope: !2980)
!3049 = !DILocation(line: 105, column: 7, scope: !2980)
!3050 = !DILocation(line: 107, column: 6, scope: !3002)
!3051 = !DILocation(line: 107, column: 15, scope: !3002)
!3052 = !DILocation(line: 107, column: 18, scope: !3002)
!3053 = !DILocation(line: 107, column: 24, scope: !3002)
!3054 = !DILocation(line: 107, column: 32, scope: !3002)
!3055 = !DILocation(line: 107, column: 56, scope: !3002)
!3056 = !DILocation(line: 108, column: 6, scope: !3002)
!3057 = !DILocation(line: 108, column: 12, scope: !3002)
!3058 = !DILocation(line: 108, column: 29, scope: !3002)
!3059 = !DILocation(line: 107, column: 6, scope: !2980)
!3060 = !DILocation(line: 109, column: 7, scope: !3000)
!3061 = !DILocation(line: 109, column: 10, scope: !3000)
!3062 = !DILocation(line: 109, column: 7, scope: !3001)
!3063 = !DILocation(line: 110, column: 15, scope: !2999)
!3064 = !DILocation(line: 110, column: 18, scope: !2999)
!3065 = !DILocation(line: 408, column: 27, scope: !3066, inlinedAt: !3014)
!3066 = distinct !DILexicalBlock(scope: !2982, file: !2872, line: 408, column: 6)
!3067 = !DILocation(line: 408, column: 6, scope: !3066, inlinedAt: !3014)
!3068 = !DILocation(line: 408, column: 34, scope: !3066, inlinedAt: !3014)
!3069 = !DILocation(line: 408, column: 37, scope: !3066, inlinedAt: !3014)
!3070 = !DILocation(line: 408, column: 43, scope: !3066, inlinedAt: !3014)
!3071 = !DILocation(line: 408, column: 6, scope: !2982, inlinedAt: !3014)
!3072 = !DILocation(line: 409, column: 13, scope: !3066, inlinedAt: !3014)
!3073 = !DILocation(line: 409, column: 20, scope: !3066, inlinedAt: !3014)
!3074 = !DILocation(line: 409, column: 3, scope: !3066, inlinedAt: !3014)
!3075 = !DILocation(line: 410, column: 32, scope: !3076, inlinedAt: !3014)
!3076 = distinct !DILexicalBlock(scope: !3066, file: !2872, line: 410, column: 11)
!3077 = !DILocation(line: 410, column: 38, scope: !3076, inlinedAt: !3014)
!3078 = !DILocation(line: 410, column: 11, scope: !3076, inlinedAt: !3014)
!3079 = !DILocation(line: 410, column: 57, scope: !3076, inlinedAt: !3014)
!3080 = !DILocation(line: 411, column: 4, scope: !3076, inlinedAt: !3014)
!3081 = !DILocation(line: 411, column: 44, scope: !3076, inlinedAt: !3014)
!3082 = !DILocation(line: 412, column: 25, scope: !3076, inlinedAt: !3014)
!3083 = !DILocation(line: 412, column: 31, scope: !3076, inlinedAt: !3014)
!3084 = !DILocation(line: 412, column: 4, scope: !3076, inlinedAt: !3014)
!3085 = !DILocation(line: 412, column: 50, scope: !3076, inlinedAt: !3014)
!3086 = !DILocation(line: 413, column: 4, scope: !3076, inlinedAt: !3014)
!3087 = !DILocation(line: 410, column: 11, scope: !3066, inlinedAt: !3014)
!3088 = !DILocation(line: 414, column: 18, scope: !3076, inlinedAt: !3014)
!3089 = !DILocation(line: 414, column: 10, scope: !3076, inlinedAt: !3014)
!3090 = !DILocation(line: 414, column: 24, scope: !3076, inlinedAt: !3014)
!3091 = !DILocation(line: 414, column: 30, scope: !3076, inlinedAt: !3014)
!3092 = !DILocation(line: 414, column: 22, scope: !3076, inlinedAt: !3014)
!3093 = !DILocation(line: 414, column: 41, scope: !3076, inlinedAt: !3014)
!3094 = !DILocation(line: 414, column: 47, scope: !3076, inlinedAt: !3014)
!3095 = !DILocation(line: 414, column: 3, scope: !3076, inlinedAt: !3014)
!3096 = !DILocation(line: 416, column: 16, scope: !3076, inlinedAt: !3014)
!3097 = !DILocation(line: 416, column: 21, scope: !3076, inlinedAt: !3014)
!3098 = !DILocation(line: 416, column: 28, scope: !3076, inlinedAt: !3014)
!3099 = !DILocation(line: 416, column: 3, scope: !3076, inlinedAt: !3014)
!3100 = !DILocation(line: 112, column: 15, scope: !2999)
!3101 = !DILocation(line: 112, column: 18, scope: !2999)
!3102 = !DILocation(line: 408, column: 27, scope: !3066, inlinedAt: !3010)
!3103 = !DILocation(line: 408, column: 6, scope: !3066, inlinedAt: !3010)
!3104 = !DILocation(line: 408, column: 34, scope: !3066, inlinedAt: !3010)
!3105 = !DILocation(line: 408, column: 37, scope: !3066, inlinedAt: !3010)
!3106 = !DILocation(line: 408, column: 43, scope: !3066, inlinedAt: !3010)
!3107 = !DILocation(line: 408, column: 6, scope: !2982, inlinedAt: !3010)
!3108 = !DILocation(line: 409, column: 13, scope: !3066, inlinedAt: !3010)
!3109 = !DILocation(line: 409, column: 20, scope: !3066, inlinedAt: !3010)
!3110 = !DILocation(line: 409, column: 3, scope: !3066, inlinedAt: !3010)
!3111 = !DILocation(line: 410, column: 32, scope: !3076, inlinedAt: !3010)
!3112 = !DILocation(line: 410, column: 38, scope: !3076, inlinedAt: !3010)
!3113 = !DILocation(line: 410, column: 11, scope: !3076, inlinedAt: !3010)
!3114 = !DILocation(line: 410, column: 57, scope: !3076, inlinedAt: !3010)
!3115 = !DILocation(line: 411, column: 4, scope: !3076, inlinedAt: !3010)
!3116 = !DILocation(line: 411, column: 44, scope: !3076, inlinedAt: !3010)
!3117 = !DILocation(line: 412, column: 25, scope: !3076, inlinedAt: !3010)
!3118 = !DILocation(line: 412, column: 31, scope: !3076, inlinedAt: !3010)
!3119 = !DILocation(line: 412, column: 4, scope: !3076, inlinedAt: !3010)
!3120 = !DILocation(line: 412, column: 50, scope: !3076, inlinedAt: !3010)
!3121 = !DILocation(line: 413, column: 4, scope: !3076, inlinedAt: !3010)
!3122 = !DILocation(line: 410, column: 11, scope: !3066, inlinedAt: !3010)
!3123 = !DILocation(line: 414, column: 18, scope: !3076, inlinedAt: !3010)
!3124 = !DILocation(line: 414, column: 10, scope: !3076, inlinedAt: !3010)
!3125 = !DILocation(line: 414, column: 24, scope: !3076, inlinedAt: !3010)
!3126 = !DILocation(line: 414, column: 30, scope: !3076, inlinedAt: !3010)
!3127 = !DILocation(line: 414, column: 22, scope: !3076, inlinedAt: !3010)
!3128 = !DILocation(line: 414, column: 41, scope: !3076, inlinedAt: !3010)
!3129 = !DILocation(line: 414, column: 47, scope: !3076, inlinedAt: !3010)
!3130 = !DILocation(line: 414, column: 3, scope: !3076, inlinedAt: !3010)
!3131 = !DILocation(line: 416, column: 16, scope: !3076, inlinedAt: !3010)
!3132 = !DILocation(line: 416, column: 21, scope: !3076, inlinedAt: !3010)
!3133 = !DILocation(line: 416, column: 28, scope: !3076, inlinedAt: !3010)
!3134 = !DILocation(line: 416, column: 3, scope: !3076, inlinedAt: !3010)
!3135 = !DILocation(line: 114, column: 48, scope: !2999)
!3136 = !DILocation(line: 114, column: 10, scope: !2999)
!3137 = !DILocation(line: 114, column: 8, scope: !2999)
!3138 = !DILocation(line: 115, column: 8, scope: !2998)
!3139 = !DILocation(line: 115, column: 12, scope: !2998)
!3140 = !DILocation(line: 115, column: 8, scope: !2999)
!3141 = !DILocation(line: 116, column: 18, scope: !2997)
!3142 = !DILocation(line: 116, column: 21, scope: !2997)
!3143 = !DILocation(line: 422, column: 27, scope: !2909, inlinedAt: !3006)
!3144 = !DILocation(line: 422, column: 6, scope: !2909, inlinedAt: !3006)
!3145 = !DILocation(line: 422, column: 34, scope: !2909, inlinedAt: !3006)
!3146 = !DILocation(line: 422, column: 37, scope: !2909, inlinedAt: !3006)
!3147 = !DILocation(line: 422, column: 43, scope: !2909, inlinedAt: !3006)
!3148 = !DILocation(line: 422, column: 6, scope: !2871, inlinedAt: !3006)
!3149 = !DILocation(line: 423, column: 15, scope: !2909, inlinedAt: !3006)
!3150 = !DILocation(line: 423, column: 22, scope: !2909, inlinedAt: !3006)
!3151 = !DILocation(line: 423, column: 3, scope: !2909, inlinedAt: !3006)
!3152 = !DILocation(line: 424, column: 32, scope: !2919, inlinedAt: !3006)
!3153 = !DILocation(line: 424, column: 38, scope: !2919, inlinedAt: !3006)
!3154 = !DILocation(line: 424, column: 11, scope: !2919, inlinedAt: !3006)
!3155 = !DILocation(line: 424, column: 57, scope: !2919, inlinedAt: !3006)
!3156 = !DILocation(line: 425, column: 4, scope: !2919, inlinedAt: !3006)
!3157 = !DILocation(line: 425, column: 44, scope: !2919, inlinedAt: !3006)
!3158 = !DILocation(line: 426, column: 25, scope: !2919, inlinedAt: !3006)
!3159 = !DILocation(line: 426, column: 31, scope: !2919, inlinedAt: !3006)
!3160 = !DILocation(line: 426, column: 4, scope: !2919, inlinedAt: !3006)
!3161 = !DILocation(line: 426, column: 50, scope: !2919, inlinedAt: !3006)
!3162 = !DILocation(line: 427, column: 4, scope: !2919, inlinedAt: !3006)
!3163 = !DILocation(line: 424, column: 11, scope: !2909, inlinedAt: !3006)
!3164 = !DILocation(line: 428, column: 18, scope: !2919, inlinedAt: !3006)
!3165 = !DILocation(line: 428, column: 10, scope: !2919, inlinedAt: !3006)
!3166 = !DILocation(line: 428, column: 24, scope: !2919, inlinedAt: !3006)
!3167 = !DILocation(line: 428, column: 30, scope: !2919, inlinedAt: !3006)
!3168 = !DILocation(line: 428, column: 22, scope: !2919, inlinedAt: !3006)
!3169 = !DILocation(line: 428, column: 38, scope: !2919, inlinedAt: !3006)
!3170 = !DILocation(line: 428, column: 44, scope: !2919, inlinedAt: !3006)
!3171 = !DILocation(line: 428, column: 3, scope: !2919, inlinedAt: !3006)
!3172 = !DILocation(line: 430, column: 18, scope: !2919, inlinedAt: !3006)
!3173 = !DILocation(line: 430, column: 23, scope: !2919, inlinedAt: !3006)
!3174 = !DILocation(line: 430, column: 30, scope: !2919, inlinedAt: !3006)
!3175 = !DILocation(line: 430, column: 3, scope: !2919, inlinedAt: !3006)
!3176 = !DILocation(line: 119, column: 18, scope: !2997)
!3177 = !DILocation(line: 119, column: 21, scope: !2997)
!3178 = !DILocation(line: 422, column: 27, scope: !2909, inlinedAt: !2996)
!3179 = !DILocation(line: 422, column: 6, scope: !2909, inlinedAt: !2996)
!3180 = !DILocation(line: 422, column: 34, scope: !2909, inlinedAt: !2996)
!3181 = !DILocation(line: 422, column: 37, scope: !2909, inlinedAt: !2996)
!3182 = !DILocation(line: 422, column: 43, scope: !2909, inlinedAt: !2996)
!3183 = !DILocation(line: 422, column: 6, scope: !2871, inlinedAt: !2996)
!3184 = !DILocation(line: 423, column: 15, scope: !2909, inlinedAt: !2996)
!3185 = !DILocation(line: 423, column: 22, scope: !2909, inlinedAt: !2996)
!3186 = !DILocation(line: 423, column: 3, scope: !2909, inlinedAt: !2996)
!3187 = !DILocation(line: 424, column: 32, scope: !2919, inlinedAt: !2996)
!3188 = !DILocation(line: 424, column: 38, scope: !2919, inlinedAt: !2996)
!3189 = !DILocation(line: 424, column: 11, scope: !2919, inlinedAt: !2996)
!3190 = !DILocation(line: 424, column: 57, scope: !2919, inlinedAt: !2996)
!3191 = !DILocation(line: 425, column: 4, scope: !2919, inlinedAt: !2996)
!3192 = !DILocation(line: 425, column: 44, scope: !2919, inlinedAt: !2996)
!3193 = !DILocation(line: 426, column: 25, scope: !2919, inlinedAt: !2996)
!3194 = !DILocation(line: 426, column: 31, scope: !2919, inlinedAt: !2996)
!3195 = !DILocation(line: 426, column: 4, scope: !2919, inlinedAt: !2996)
!3196 = !DILocation(line: 426, column: 50, scope: !2919, inlinedAt: !2996)
!3197 = !DILocation(line: 427, column: 4, scope: !2919, inlinedAt: !2996)
!3198 = !DILocation(line: 424, column: 11, scope: !2909, inlinedAt: !2996)
!3199 = !DILocation(line: 428, column: 18, scope: !2919, inlinedAt: !2996)
!3200 = !DILocation(line: 428, column: 10, scope: !2919, inlinedAt: !2996)
!3201 = !DILocation(line: 428, column: 24, scope: !2919, inlinedAt: !2996)
!3202 = !DILocation(line: 428, column: 30, scope: !2919, inlinedAt: !2996)
!3203 = !DILocation(line: 428, column: 22, scope: !2919, inlinedAt: !2996)
!3204 = !DILocation(line: 428, column: 38, scope: !2919, inlinedAt: !2996)
!3205 = !DILocation(line: 428, column: 44, scope: !2919, inlinedAt: !2996)
!3206 = !DILocation(line: 428, column: 3, scope: !2919, inlinedAt: !2996)
!3207 = !DILocation(line: 430, column: 18, scope: !2919, inlinedAt: !2996)
!3208 = !DILocation(line: 430, column: 23, scope: !2919, inlinedAt: !2996)
!3209 = !DILocation(line: 430, column: 30, scope: !2919, inlinedAt: !2996)
!3210 = !DILocation(line: 430, column: 3, scope: !2919, inlinedAt: !2996)
!3211 = !DILocation(line: 122, column: 5, scope: !2997)
!3212 = !DILocation(line: 123, column: 4, scope: !2997)
!3213 = !DILocation(line: 124, column: 5, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 123, column: 11)
!3215 = !DILocation(line: 126, column: 3, scope: !2999)
!3216 = !DILocation(line: 127, column: 2, scope: !3001)
!3217 = !DILocation(line: 129, column: 7, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !2980, file: !3, line: 129, column: 6)
!3219 = !DILocation(line: 129, column: 13, scope: !3218)
!3220 = !DILocation(line: 129, column: 30, scope: !3218)
!3221 = !DILocation(line: 129, column: 57, scope: !3218)
!3222 = !DILocation(line: 129, column: 6, scope: !2980)
!3223 = !DILocation(line: 130, column: 3, scope: !3218)
!3224 = !DILocation(line: 132, column: 2, scope: !2980)
!3225 = !DILocation(line: 132, column: 8, scope: !2980)
!3226 = !DILocation(line: 132, column: 21, scope: !2980)
!3227 = !DILocation(line: 133, column: 2, scope: !2980)
!3228 = !DILocation(line: 133, column: 8, scope: !2980)
!3229 = !DILocation(line: 133, column: 12, scope: !2980)
!3230 = !DILocation(line: 133, column: 29, scope: !2980)
!3231 = !DILocation(line: 135, column: 6, scope: !2986)
!3232 = !DILocation(line: 135, column: 9, scope: !2986)
!3233 = !DILocation(line: 135, column: 6, scope: !2980)
!3234 = !DILocation(line: 136, column: 14, scope: !2985)
!3235 = !DILocation(line: 136, column: 17, scope: !2985)
!3236 = !DILocation(line: 408, column: 27, scope: !3066, inlinedAt: !2992)
!3237 = !DILocation(line: 408, column: 6, scope: !3066, inlinedAt: !2992)
!3238 = !DILocation(line: 408, column: 34, scope: !3066, inlinedAt: !2992)
!3239 = !DILocation(line: 408, column: 37, scope: !3066, inlinedAt: !2992)
!3240 = !DILocation(line: 408, column: 43, scope: !3066, inlinedAt: !2992)
!3241 = !DILocation(line: 408, column: 6, scope: !2982, inlinedAt: !2992)
!3242 = !DILocation(line: 409, column: 13, scope: !3066, inlinedAt: !2992)
!3243 = !DILocation(line: 409, column: 20, scope: !3066, inlinedAt: !2992)
!3244 = !DILocation(line: 409, column: 3, scope: !3066, inlinedAt: !2992)
!3245 = !DILocation(line: 410, column: 32, scope: !3076, inlinedAt: !2992)
!3246 = !DILocation(line: 410, column: 38, scope: !3076, inlinedAt: !2992)
!3247 = !DILocation(line: 410, column: 11, scope: !3076, inlinedAt: !2992)
!3248 = !DILocation(line: 410, column: 57, scope: !3076, inlinedAt: !2992)
!3249 = !DILocation(line: 411, column: 4, scope: !3076, inlinedAt: !2992)
!3250 = !DILocation(line: 411, column: 44, scope: !3076, inlinedAt: !2992)
!3251 = !DILocation(line: 412, column: 25, scope: !3076, inlinedAt: !2992)
!3252 = !DILocation(line: 412, column: 31, scope: !3076, inlinedAt: !2992)
!3253 = !DILocation(line: 412, column: 4, scope: !3076, inlinedAt: !2992)
!3254 = !DILocation(line: 412, column: 50, scope: !3076, inlinedAt: !2992)
!3255 = !DILocation(line: 413, column: 4, scope: !3076, inlinedAt: !2992)
!3256 = !DILocation(line: 410, column: 11, scope: !3066, inlinedAt: !2992)
!3257 = !DILocation(line: 414, column: 18, scope: !3076, inlinedAt: !2992)
!3258 = !DILocation(line: 414, column: 10, scope: !3076, inlinedAt: !2992)
!3259 = !DILocation(line: 414, column: 24, scope: !3076, inlinedAt: !2992)
!3260 = !DILocation(line: 414, column: 30, scope: !3076, inlinedAt: !2992)
!3261 = !DILocation(line: 414, column: 22, scope: !3076, inlinedAt: !2992)
!3262 = !DILocation(line: 414, column: 41, scope: !3076, inlinedAt: !2992)
!3263 = !DILocation(line: 414, column: 47, scope: !3076, inlinedAt: !2992)
!3264 = !DILocation(line: 414, column: 3, scope: !3076, inlinedAt: !2992)
!3265 = !DILocation(line: 416, column: 16, scope: !3076, inlinedAt: !2992)
!3266 = !DILocation(line: 416, column: 21, scope: !3076, inlinedAt: !2992)
!3267 = !DILocation(line: 416, column: 28, scope: !3076, inlinedAt: !2992)
!3268 = !DILocation(line: 416, column: 3, scope: !3076, inlinedAt: !2992)
!3269 = !DILocation(line: 138, column: 14, scope: !2985)
!3270 = !DILocation(line: 138, column: 17, scope: !2985)
!3271 = !DILocation(line: 408, column: 27, scope: !3066, inlinedAt: !2984)
!3272 = !DILocation(line: 408, column: 6, scope: !3066, inlinedAt: !2984)
!3273 = !DILocation(line: 408, column: 34, scope: !3066, inlinedAt: !2984)
!3274 = !DILocation(line: 408, column: 37, scope: !3066, inlinedAt: !2984)
!3275 = !DILocation(line: 408, column: 43, scope: !3066, inlinedAt: !2984)
!3276 = !DILocation(line: 408, column: 6, scope: !2982, inlinedAt: !2984)
!3277 = !DILocation(line: 409, column: 13, scope: !3066, inlinedAt: !2984)
!3278 = !DILocation(line: 409, column: 20, scope: !3066, inlinedAt: !2984)
!3279 = !DILocation(line: 409, column: 3, scope: !3066, inlinedAt: !2984)
!3280 = !DILocation(line: 410, column: 32, scope: !3076, inlinedAt: !2984)
!3281 = !DILocation(line: 410, column: 38, scope: !3076, inlinedAt: !2984)
!3282 = !DILocation(line: 410, column: 11, scope: !3076, inlinedAt: !2984)
!3283 = !DILocation(line: 410, column: 57, scope: !3076, inlinedAt: !2984)
!3284 = !DILocation(line: 411, column: 4, scope: !3076, inlinedAt: !2984)
!3285 = !DILocation(line: 411, column: 44, scope: !3076, inlinedAt: !2984)
!3286 = !DILocation(line: 412, column: 25, scope: !3076, inlinedAt: !2984)
!3287 = !DILocation(line: 412, column: 31, scope: !3076, inlinedAt: !2984)
!3288 = !DILocation(line: 412, column: 4, scope: !3076, inlinedAt: !2984)
!3289 = !DILocation(line: 412, column: 50, scope: !3076, inlinedAt: !2984)
!3290 = !DILocation(line: 413, column: 4, scope: !3076, inlinedAt: !2984)
!3291 = !DILocation(line: 410, column: 11, scope: !3066, inlinedAt: !2984)
!3292 = !DILocation(line: 414, column: 18, scope: !3076, inlinedAt: !2984)
!3293 = !DILocation(line: 414, column: 10, scope: !3076, inlinedAt: !2984)
!3294 = !DILocation(line: 414, column: 24, scope: !3076, inlinedAt: !2984)
!3295 = !DILocation(line: 414, column: 30, scope: !3076, inlinedAt: !2984)
!3296 = !DILocation(line: 414, column: 22, scope: !3076, inlinedAt: !2984)
!3297 = !DILocation(line: 414, column: 41, scope: !3076, inlinedAt: !2984)
!3298 = !DILocation(line: 414, column: 47, scope: !3076, inlinedAt: !2984)
!3299 = !DILocation(line: 414, column: 3, scope: !3076, inlinedAt: !2984)
!3300 = !DILocation(line: 416, column: 16, scope: !3076, inlinedAt: !2984)
!3301 = !DILocation(line: 416, column: 21, scope: !3076, inlinedAt: !2984)
!3302 = !DILocation(line: 416, column: 28, scope: !3076, inlinedAt: !2984)
!3303 = !DILocation(line: 416, column: 3, scope: !3076, inlinedAt: !2984)
!3304 = !DILocation(line: 140, column: 2, scope: !2985)
!3305 = !DILocation(line: 141, column: 1, scope: !2980)
!3306 = distinct !DISubprogram(name: "macronix_nand_block_protection_support", scope: !3, file: !3, line: 220, type: !112, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3307 = !DILocation(line: 405, column: 55, scope: !2982, inlinedAt: !3308)
!3308 = distinct !DILocation(line: 242, column: 2, scope: !3306)
!3309 = !DILocation(line: 405, column: 73, scope: !2982, inlinedAt: !3308)
!3310 = !DILocation(line: 406, column: 16, scope: !2982, inlinedAt: !3308)
!3311 = !DILocation(line: 419, column: 57, scope: !2871, inlinedAt: !3312)
!3312 = distinct !DILocation(line: 237, column: 3, scope: !3313)
!3313 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 233, column: 59)
!3314 = distinct !DILexicalBlock(scope: !3306, file: !3, line: 233, column: 6)
!3315 = !DILocation(line: 419, column: 75, scope: !2871, inlinedAt: !3312)
!3316 = !DILocation(line: 420, column: 16, scope: !2871, inlinedAt: !3312)
!3317 = !DILocation(line: 405, column: 55, scope: !2982, inlinedAt: !3318)
!3318 = distinct !DILocation(line: 225, column: 2, scope: !3306)
!3319 = !DILocation(line: 405, column: 73, scope: !2982, inlinedAt: !3318)
!3320 = !DILocation(line: 406, column: 16, scope: !2982, inlinedAt: !3318)
!3321 = !DILocalVariable(name: "chip", arg: 1, scope: !3306, file: !3, line: 220, type: !114)
!3322 = !DILocation(line: 220, column: 70, scope: !3306)
!3323 = !DILocalVariable(name: "feature", scope: !3306, file: !3, line: 222, type: !2466)
!3324 = !DILocation(line: 222, column: 5, scope: !3306)
!3325 = !DILocalVariable(name: "ret", scope: !3306, file: !3, line: 223, type: !90)
!3326 = !DILocation(line: 223, column: 6, scope: !3306)
!3327 = !DILocation(line: 225, column: 13, scope: !3306)
!3328 = !DILocation(line: 225, column: 19, scope: !3306)
!3329 = !DILocation(line: 225, column: 30, scope: !3306)
!3330 = !DILocation(line: 408, column: 27, scope: !3066, inlinedAt: !3318)
!3331 = !DILocation(line: 408, column: 6, scope: !3066, inlinedAt: !3318)
!3332 = !DILocation(line: 408, column: 34, scope: !3066, inlinedAt: !3318)
!3333 = !DILocation(line: 408, column: 37, scope: !3066, inlinedAt: !3318)
!3334 = !DILocation(line: 408, column: 43, scope: !3066, inlinedAt: !3318)
!3335 = !DILocation(line: 408, column: 6, scope: !2982, inlinedAt: !3318)
!3336 = !DILocation(line: 409, column: 13, scope: !3066, inlinedAt: !3318)
!3337 = !DILocation(line: 409, column: 20, scope: !3066, inlinedAt: !3318)
!3338 = !DILocation(line: 409, column: 3, scope: !3066, inlinedAt: !3318)
!3339 = !DILocation(line: 410, column: 32, scope: !3076, inlinedAt: !3318)
!3340 = !DILocation(line: 410, column: 38, scope: !3076, inlinedAt: !3318)
!3341 = !DILocation(line: 410, column: 11, scope: !3076, inlinedAt: !3318)
!3342 = !DILocation(line: 410, column: 57, scope: !3076, inlinedAt: !3318)
!3343 = !DILocation(line: 411, column: 4, scope: !3076, inlinedAt: !3318)
!3344 = !DILocation(line: 411, column: 44, scope: !3076, inlinedAt: !3318)
!3345 = !DILocation(line: 412, column: 25, scope: !3076, inlinedAt: !3318)
!3346 = !DILocation(line: 412, column: 31, scope: !3076, inlinedAt: !3318)
!3347 = !DILocation(line: 412, column: 4, scope: !3076, inlinedAt: !3318)
!3348 = !DILocation(line: 412, column: 50, scope: !3076, inlinedAt: !3318)
!3349 = !DILocation(line: 413, column: 4, scope: !3076, inlinedAt: !3318)
!3350 = !DILocation(line: 410, column: 11, scope: !3066, inlinedAt: !3318)
!3351 = !DILocation(line: 414, column: 18, scope: !3076, inlinedAt: !3318)
!3352 = !DILocation(line: 414, column: 10, scope: !3076, inlinedAt: !3318)
!3353 = !DILocation(line: 414, column: 24, scope: !3076, inlinedAt: !3318)
!3354 = !DILocation(line: 414, column: 30, scope: !3076, inlinedAt: !3318)
!3355 = !DILocation(line: 414, column: 22, scope: !3076, inlinedAt: !3318)
!3356 = !DILocation(line: 414, column: 41, scope: !3076, inlinedAt: !3318)
!3357 = !DILocation(line: 414, column: 47, scope: !3076, inlinedAt: !3318)
!3358 = !DILocation(line: 414, column: 3, scope: !3076, inlinedAt: !3318)
!3359 = !DILocation(line: 416, column: 16, scope: !3076, inlinedAt: !3318)
!3360 = !DILocation(line: 416, column: 21, scope: !3076, inlinedAt: !3318)
!3361 = !DILocation(line: 416, column: 28, scope: !3076, inlinedAt: !3318)
!3362 = !DILocation(line: 416, column: 3, scope: !3076, inlinedAt: !3318)
!3363 = !DILocation(line: 228, column: 2, scope: !3306)
!3364 = !DILocation(line: 228, column: 13, scope: !3306)
!3365 = !DILocation(line: 229, column: 21, scope: !3306)
!3366 = !DILocation(line: 229, column: 2, scope: !3306)
!3367 = !DILocation(line: 230, column: 26, scope: !3306)
!3368 = !DILocation(line: 231, column: 5, scope: !3306)
!3369 = !DILocation(line: 230, column: 8, scope: !3306)
!3370 = !DILocation(line: 230, column: 6, scope: !3306)
!3371 = !DILocation(line: 232, column: 23, scope: !3306)
!3372 = !DILocation(line: 232, column: 2, scope: !3306)
!3373 = !DILocation(line: 233, column: 6, scope: !3314)
!3374 = !DILocation(line: 233, column: 10, scope: !3314)
!3375 = !DILocation(line: 233, column: 13, scope: !3314)
!3376 = !DILocation(line: 233, column: 24, scope: !3314)
!3377 = !DILocation(line: 233, column: 6, scope: !3306)
!3378 = !DILocation(line: 234, column: 7, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3313, file: !3, line: 234, column: 7)
!3380 = !DILocation(line: 234, column: 7, scope: !3313)
!3381 = !DILocation(line: 235, column: 4, scope: !3379)
!3382 = !DILocation(line: 237, column: 16, scope: !3313)
!3383 = !DILocation(line: 237, column: 22, scope: !3313)
!3384 = !DILocation(line: 237, column: 33, scope: !3313)
!3385 = !DILocation(line: 422, column: 27, scope: !2909, inlinedAt: !3312)
!3386 = !DILocation(line: 422, column: 6, scope: !2909, inlinedAt: !3312)
!3387 = !DILocation(line: 422, column: 34, scope: !2909, inlinedAt: !3312)
!3388 = !DILocation(line: 422, column: 37, scope: !2909, inlinedAt: !3312)
!3389 = !DILocation(line: 422, column: 43, scope: !2909, inlinedAt: !3312)
!3390 = !DILocation(line: 422, column: 6, scope: !2871, inlinedAt: !3312)
!3391 = !DILocation(line: 423, column: 15, scope: !2909, inlinedAt: !3312)
!3392 = !DILocation(line: 423, column: 22, scope: !2909, inlinedAt: !3312)
!3393 = !DILocation(line: 423, column: 3, scope: !2909, inlinedAt: !3312)
!3394 = !DILocation(line: 424, column: 32, scope: !2919, inlinedAt: !3312)
!3395 = !DILocation(line: 424, column: 38, scope: !2919, inlinedAt: !3312)
!3396 = !DILocation(line: 424, column: 11, scope: !2919, inlinedAt: !3312)
!3397 = !DILocation(line: 424, column: 57, scope: !2919, inlinedAt: !3312)
!3398 = !DILocation(line: 425, column: 4, scope: !2919, inlinedAt: !3312)
!3399 = !DILocation(line: 425, column: 44, scope: !2919, inlinedAt: !3312)
!3400 = !DILocation(line: 426, column: 25, scope: !2919, inlinedAt: !3312)
!3401 = !DILocation(line: 426, column: 31, scope: !2919, inlinedAt: !3312)
!3402 = !DILocation(line: 426, column: 4, scope: !2919, inlinedAt: !3312)
!3403 = !DILocation(line: 426, column: 50, scope: !2919, inlinedAt: !3312)
!3404 = !DILocation(line: 427, column: 4, scope: !2919, inlinedAt: !3312)
!3405 = !DILocation(line: 424, column: 11, scope: !2909, inlinedAt: !3312)
!3406 = !DILocation(line: 428, column: 18, scope: !2919, inlinedAt: !3312)
!3407 = !DILocation(line: 428, column: 10, scope: !2919, inlinedAt: !3312)
!3408 = !DILocation(line: 428, column: 24, scope: !2919, inlinedAt: !3312)
!3409 = !DILocation(line: 428, column: 30, scope: !2919, inlinedAt: !3312)
!3410 = !DILocation(line: 428, column: 22, scope: !2919, inlinedAt: !3312)
!3411 = !DILocation(line: 428, column: 38, scope: !2919, inlinedAt: !3312)
!3412 = !DILocation(line: 428, column: 44, scope: !2919, inlinedAt: !3312)
!3413 = !DILocation(line: 428, column: 3, scope: !2919, inlinedAt: !3312)
!3414 = !DILocation(line: 430, column: 18, scope: !2919, inlinedAt: !3312)
!3415 = !DILocation(line: 430, column: 23, scope: !2919, inlinedAt: !3312)
!3416 = !DILocation(line: 430, column: 30, scope: !2919, inlinedAt: !3312)
!3417 = !DILocation(line: 430, column: 3, scope: !2919, inlinedAt: !3312)
!3418 = !DILocation(line: 239, column: 3, scope: !3313)
!3419 = !DILocation(line: 242, column: 13, scope: !3306)
!3420 = !DILocation(line: 242, column: 19, scope: !3306)
!3421 = !DILocation(line: 242, column: 30, scope: !3306)
!3422 = !DILocation(line: 408, column: 27, scope: !3066, inlinedAt: !3308)
!3423 = !DILocation(line: 408, column: 6, scope: !3066, inlinedAt: !3308)
!3424 = !DILocation(line: 408, column: 34, scope: !3066, inlinedAt: !3308)
!3425 = !DILocation(line: 408, column: 37, scope: !3066, inlinedAt: !3308)
!3426 = !DILocation(line: 408, column: 43, scope: !3066, inlinedAt: !3308)
!3427 = !DILocation(line: 408, column: 6, scope: !2982, inlinedAt: !3308)
!3428 = !DILocation(line: 409, column: 13, scope: !3066, inlinedAt: !3308)
!3429 = !DILocation(line: 409, column: 20, scope: !3066, inlinedAt: !3308)
!3430 = !DILocation(line: 409, column: 3, scope: !3066, inlinedAt: !3308)
!3431 = !DILocation(line: 410, column: 32, scope: !3076, inlinedAt: !3308)
!3432 = !DILocation(line: 410, column: 38, scope: !3076, inlinedAt: !3308)
!3433 = !DILocation(line: 410, column: 11, scope: !3076, inlinedAt: !3308)
!3434 = !DILocation(line: 410, column: 57, scope: !3076, inlinedAt: !3308)
!3435 = !DILocation(line: 411, column: 4, scope: !3076, inlinedAt: !3308)
!3436 = !DILocation(line: 411, column: 44, scope: !3076, inlinedAt: !3308)
!3437 = !DILocation(line: 412, column: 25, scope: !3076, inlinedAt: !3308)
!3438 = !DILocation(line: 412, column: 31, scope: !3076, inlinedAt: !3308)
!3439 = !DILocation(line: 412, column: 4, scope: !3076, inlinedAt: !3308)
!3440 = !DILocation(line: 412, column: 50, scope: !3076, inlinedAt: !3308)
!3441 = !DILocation(line: 413, column: 4, scope: !3076, inlinedAt: !3308)
!3442 = !DILocation(line: 410, column: 11, scope: !3066, inlinedAt: !3308)
!3443 = !DILocation(line: 414, column: 18, scope: !3076, inlinedAt: !3308)
!3444 = !DILocation(line: 414, column: 10, scope: !3076, inlinedAt: !3308)
!3445 = !DILocation(line: 414, column: 24, scope: !3076, inlinedAt: !3308)
!3446 = !DILocation(line: 414, column: 30, scope: !3076, inlinedAt: !3308)
!3447 = !DILocation(line: 414, column: 22, scope: !3076, inlinedAt: !3308)
!3448 = !DILocation(line: 414, column: 41, scope: !3076, inlinedAt: !3308)
!3449 = !DILocation(line: 414, column: 47, scope: !3076, inlinedAt: !3308)
!3450 = !DILocation(line: 414, column: 3, scope: !3076, inlinedAt: !3308)
!3451 = !DILocation(line: 416, column: 16, scope: !3076, inlinedAt: !3308)
!3452 = !DILocation(line: 416, column: 21, scope: !3076, inlinedAt: !3308)
!3453 = !DILocation(line: 416, column: 28, scope: !3076, inlinedAt: !3308)
!3454 = !DILocation(line: 416, column: 3, scope: !3076, inlinedAt: !3308)
!3455 = !DILocation(line: 245, column: 2, scope: !3306)
!3456 = !DILocation(line: 245, column: 8, scope: !3306)
!3457 = !DILocation(line: 245, column: 12, scope: !3306)
!3458 = !DILocation(line: 245, column: 22, scope: !3306)
!3459 = !DILocation(line: 246, column: 2, scope: !3306)
!3460 = !DILocation(line: 246, column: 8, scope: !3306)
!3461 = !DILocation(line: 246, column: 12, scope: !3306)
!3462 = !DILocation(line: 246, column: 24, scope: !3306)
!3463 = !DILocation(line: 247, column: 1, scope: !3306)
!3464 = !DILocalVariable(name: "chip", arg: 1, scope: !2811, file: !3, line: 301, type: !114)
!3465 = !DILocation(line: 301, column: 69, scope: !2811)
!3466 = !DILocalVariable(name: "i", scope: !2811, file: !3, line: 303, type: !90)
!3467 = !DILocation(line: 303, column: 6, scope: !2811)
!3468 = !DILocation(line: 311, column: 5, scope: !2811)
!3469 = !DILocation(line: 311, column: 11, scope: !2811)
!3470 = !DILocation(line: 311, column: 22, scope: !2811)
!3471 = !DILocation(line: 310, column: 6, scope: !2811)
!3472 = !DILocation(line: 310, column: 4, scope: !2811)
!3473 = !DILocation(line: 312, column: 6, scope: !3474)
!3474 = distinct !DILexicalBlock(scope: !2811, file: !3, line: 312, column: 6)
!3475 = !DILocation(line: 312, column: 8, scope: !3474)
!3476 = !DILocation(line: 312, column: 6, scope: !2811)
!3477 = !DILocation(line: 313, column: 3, scope: !3474)
!3478 = !DILocation(line: 315, column: 2, scope: !2811)
!3479 = !DILocation(line: 315, column: 8, scope: !2811)
!3480 = !DILocation(line: 315, column: 12, scope: !2811)
!3481 = !DILocation(line: 315, column: 20, scope: !2811)
!3482 = !DILocation(line: 316, column: 2, scope: !2811)
!3483 = !DILocation(line: 316, column: 8, scope: !2811)
!3484 = !DILocation(line: 316, column: 12, scope: !2811)
!3485 = !DILocation(line: 316, column: 19, scope: !2811)
!3486 = !DILocation(line: 317, column: 1, scope: !2811)
!3487 = distinct !DISubprogram(name: "nanddev_bits_per_cell", scope: !51, file: !51, line: 374, type: !3488, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3488 = !DISubroutineType(types: !3489)
!3489 = !{!7, !3490}
!3490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3491, size: 64)
!3491 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!3492 = !DILocalVariable(name: "nand", arg: 1, scope: !3487, file: !51, line: 374, type: !3490)
!3493 = !DILocation(line: 374, column: 76, scope: !3487)
!3494 = !DILocation(line: 376, column: 9, scope: !3487)
!3495 = !DILocation(line: 376, column: 15, scope: !3487)
!3496 = !DILocation(line: 376, column: 22, scope: !3487)
!3497 = !DILocation(line: 376, column: 2, scope: !3487)
!3498 = distinct !DISubprogram(name: "__clear_bit", scope: !3499, file: !3499, line: 40, type: !3500, scopeLine: 41, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3499 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-non-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3500 = !DISubroutineType(types: !3501)
!3501 = !{null, !95, !3502}
!3502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3503, size: 64)
!3503 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!3504 = !DILocalVariable(name: "nr", arg: 1, scope: !3505, file: !3506, line: 92, type: !95)
!3505 = distinct !DISubprogram(name: "arch___clear_bit", scope: !3506, file: !3506, line: 92, type: !3500, scopeLine: 93, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3506 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3507 = !DILocation(line: 92, column: 23, scope: !3505, inlinedAt: !3508)
!3508 = distinct !DILocation(line: 43, column: 2, scope: !3498)
!3509 = !DILocalVariable(name: "addr", arg: 2, scope: !3505, file: !3506, line: 92, type: !3502)
!3510 = !DILocation(line: 92, column: 51, scope: !3505, inlinedAt: !3508)
!3511 = !DILocalVariable(name: "v", arg: 1, scope: !3512, file: !3513, line: 39, type: !3516)
!3512 = distinct !DISubprogram(name: "instrument_write", scope: !3513, file: !3513, line: 39, type: !3514, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3513 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3514 = !DISubroutineType(types: !3515)
!3515 = !{null, !3516, !216}
!3516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3517, size: 64)
!3517 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3518)
!3518 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3519 = !DILocation(line: 39, column: 67, scope: !3512, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 42, column: 2, scope: !3498)
!3521 = !DILocalVariable(name: "size", arg: 2, scope: !3512, file: !3513, line: 39, type: !216)
!3522 = !DILocation(line: 39, column: 77, scope: !3512, inlinedAt: !3520)
!3523 = !DILocalVariable(name: "nr", arg: 1, scope: !3498, file: !3499, line: 40, type: !95)
!3524 = !DILocation(line: 40, column: 37, scope: !3498)
!3525 = !DILocalVariable(name: "addr", arg: 2, scope: !3498, file: !3499, line: 40, type: !3502)
!3526 = !DILocation(line: 40, column: 65, scope: !3498)
!3527 = !DILocation(line: 42, column: 19, scope: !3498)
!3528 = !DILocation(line: 42, column: 26, scope: !3498)
!3529 = !DILocation(line: 42, column: 24, scope: !3498)
!3530 = !DILocation(line: 41, column: 20, scope: !3512, inlinedAt: !3520)
!3531 = !DILocation(line: 41, column: 23, scope: !3512, inlinedAt: !3520)
!3532 = !DILocation(line: 41, column: 2, scope: !3512, inlinedAt: !3520)
!3533 = !DILocation(line: 42, column: 2, scope: !3512, inlinedAt: !3520)
!3534 = !DILocation(line: 43, column: 19, scope: !3498)
!3535 = !DILocation(line: 43, column: 23, scope: !3498)
!3536 = !DILocation(line: 94, column: 44, scope: !3505, inlinedAt: !3508)
!3537 = !DILocation(line: 94, column: 56, scope: !3505, inlinedAt: !3508)
!3538 = !DILocation(line: 94, column: 2, scope: !3505, inlinedAt: !3508)
!3539 = !{i32 -2147200566}
!3540 = !DILocation(line: 44, column: 1, scope: !3498)
!3541 = distinct !DISubprogram(name: "kasan_check_write", scope: !3542, file: !3542, line: 38, type: !3543, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3542 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3543 = !DISubroutineType(types: !3544)
!3544 = !{!312, !3516, !7}
!3545 = !DILocalVariable(name: "p", arg: 1, scope: !3541, file: !3542, line: 38, type: !3516)
!3546 = !DILocation(line: 38, column: 59, scope: !3541)
!3547 = !DILocalVariable(name: "size", arg: 2, scope: !3541, file: !3542, line: 38, type: !7)
!3548 = !DILocation(line: 38, column: 75, scope: !3541)
!3549 = !DILocation(line: 40, column: 2, scope: !3541)
!3550 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3551, file: !3551, line: 178, type: !3552, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3551 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3552 = !DISubroutineType(types: !3553)
!3553 = !{null, !3516, !216, !90}
!3554 = !DILocalVariable(name: "ptr", arg: 1, scope: !3550, file: !3551, line: 178, type: !3516)
!3555 = !DILocation(line: 178, column: 60, scope: !3550)
!3556 = !DILocalVariable(name: "size", arg: 2, scope: !3550, file: !3551, line: 178, type: !216)
!3557 = !DILocation(line: 178, column: 72, scope: !3550)
!3558 = !DILocalVariable(name: "type", arg: 3, scope: !3550, file: !3551, line: 179, type: !90)
!3559 = !DILocation(line: 179, column: 15, scope: !3550)
!3560 = !DILocation(line: 179, column: 23, scope: !3550)
!3561 = distinct !DISubprogram(name: "nand_get_flash_node", scope: !74, file: !74, line: 1184, type: !3562, scopeLine: 1185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3562 = !DISubroutineType(types: !3563)
!3563 = !{!2103, !114}
!3564 = !DILocalVariable(name: "chip", arg: 1, scope: !3561, file: !74, line: 1184, type: !114)
!3565 = !DILocation(line: 1184, column: 73, scope: !3561)
!3566 = !DILocation(line: 1186, column: 37, scope: !3561)
!3567 = !DILocation(line: 1186, column: 25, scope: !3561)
!3568 = !DILocation(line: 1186, column: 9, scope: !3561)
!3569 = !DILocation(line: 1186, column: 2, scope: !3561)
!3570 = distinct !DISubprogram(name: "macronix_nand_randomizer_check_enable", scope: !3, file: !3, line: 52, type: !2455, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3571 = !DILocalVariable(name: "chip", arg: 1, scope: !3570, file: !3, line: 52, type: !114)
!3572 = !DILocation(line: 52, column: 68, scope: !3570)
!3573 = !DILocalVariable(name: "feature", scope: !3570, file: !3, line: 54, type: !2466)
!3574 = !DILocation(line: 54, column: 5, scope: !3570)
!3575 = !DILocalVariable(name: "ret", scope: !3570, file: !3, line: 55, type: !90)
!3576 = !DILocation(line: 55, column: 6, scope: !3570)
!3577 = !DILocation(line: 57, column: 26, scope: !3570)
!3578 = !DILocation(line: 58, column: 5, scope: !3570)
!3579 = !DILocation(line: 57, column: 8, scope: !3570)
!3580 = !DILocation(line: 57, column: 6, scope: !3570)
!3581 = !DILocation(line: 59, column: 6, scope: !3582)
!3582 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 59, column: 6)
!3583 = !DILocation(line: 59, column: 10, scope: !3582)
!3584 = !DILocation(line: 59, column: 6, scope: !3570)
!3585 = !DILocation(line: 60, column: 10, scope: !3582)
!3586 = !DILocation(line: 60, column: 3, scope: !3582)
!3587 = !DILocation(line: 62, column: 6, scope: !3588)
!3588 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 62, column: 6)
!3589 = !DILocation(line: 62, column: 6, scope: !3570)
!3590 = !DILocation(line: 63, column: 10, scope: !3588)
!3591 = !DILocation(line: 63, column: 3, scope: !3588)
!3592 = !DILocation(line: 65, column: 2, scope: !3570)
!3593 = !DILocation(line: 65, column: 13, scope: !3570)
!3594 = !DILocation(line: 66, column: 26, scope: !3570)
!3595 = !DILocation(line: 67, column: 5, scope: !3570)
!3596 = !DILocation(line: 66, column: 8, scope: !3570)
!3597 = !DILocation(line: 66, column: 6, scope: !3570)
!3598 = !DILocation(line: 68, column: 6, scope: !3599)
!3599 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 68, column: 6)
!3600 = !DILocation(line: 68, column: 10, scope: !3599)
!3601 = !DILocation(line: 68, column: 6, scope: !3570)
!3602 = !DILocation(line: 69, column: 10, scope: !3599)
!3603 = !DILocation(line: 69, column: 3, scope: !3599)
!3604 = !DILocation(line: 72, column: 2, scope: !3570)
!3605 = !DILocation(line: 72, column: 13, scope: !3570)
!3606 = !DILocation(line: 73, column: 26, scope: !3570)
!3607 = !DILocation(line: 73, column: 38, scope: !3570)
!3608 = !DILocation(line: 73, column: 8, scope: !3570)
!3609 = !DILocation(line: 73, column: 6, scope: !3570)
!3610 = !DILocation(line: 74, column: 6, scope: !3611)
!3611 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 74, column: 6)
!3612 = !DILocation(line: 74, column: 10, scope: !3611)
!3613 = !DILocation(line: 74, column: 6, scope: !3570)
!3614 = !DILocation(line: 75, column: 10, scope: !3611)
!3615 = !DILocation(line: 75, column: 3, scope: !3611)
!3616 = !DILocation(line: 77, column: 26, scope: !3570)
!3617 = !DILocation(line: 78, column: 5, scope: !3570)
!3618 = !DILocation(line: 77, column: 8, scope: !3570)
!3619 = !DILocation(line: 77, column: 6, scope: !3570)
!3620 = !DILocation(line: 79, column: 6, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 79, column: 6)
!3622 = !DILocation(line: 79, column: 10, scope: !3621)
!3623 = !DILocation(line: 79, column: 6, scope: !3570)
!3624 = !DILocation(line: 80, column: 10, scope: !3621)
!3625 = !DILocation(line: 80, column: 3, scope: !3621)
!3626 = !DILocation(line: 82, column: 2, scope: !3570)
!3627 = !DILocation(line: 82, column: 13, scope: !3570)
!3628 = !DILocation(line: 83, column: 26, scope: !3570)
!3629 = !DILocation(line: 84, column: 5, scope: !3570)
!3630 = !DILocation(line: 83, column: 8, scope: !3570)
!3631 = !DILocation(line: 83, column: 6, scope: !3570)
!3632 = !DILocation(line: 85, column: 6, scope: !3633)
!3633 = distinct !DILexicalBlock(scope: !3570, file: !3, line: 85, column: 6)
!3634 = !DILocation(line: 85, column: 10, scope: !3633)
!3635 = !DILocation(line: 85, column: 6, scope: !3570)
!3636 = !DILocation(line: 86, column: 10, scope: !3633)
!3637 = !DILocation(line: 86, column: 3, scope: !3633)
!3638 = !DILocation(line: 88, column: 2, scope: !3570)
!3639 = !DILocation(line: 89, column: 1, scope: !3570)
!3640 = distinct !DISubprogram(name: "macronix_nand_setup_read_retry", scope: !3, file: !3, line: 39, type: !2542, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3641 = !DILocalVariable(name: "chip", arg: 1, scope: !3640, file: !3, line: 39, type: !114)
!3642 = !DILocation(line: 39, column: 61, scope: !3640)
!3643 = !DILocalVariable(name: "mode", arg: 2, scope: !3640, file: !3, line: 39, type: !90)
!3644 = !DILocation(line: 39, column: 71, scope: !3640)
!3645 = !DILocalVariable(name: "feature", scope: !3640, file: !3, line: 41, type: !2466)
!3646 = !DILocation(line: 41, column: 5, scope: !3640)
!3647 = !DILocation(line: 43, column: 7, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3640, file: !3, line: 43, column: 6)
!3649 = !DILocation(line: 43, column: 13, scope: !3648)
!3650 = !DILocation(line: 43, column: 24, scope: !3648)
!3651 = !DILocation(line: 43, column: 50, scope: !3648)
!3652 = !DILocation(line: 45, column: 9, scope: !3648)
!3653 = !DILocation(line: 45, column: 15, scope: !3648)
!3654 = !DILocation(line: 45, column: 26, scope: !3648)
!3655 = !DILocation(line: 44, column: 7, scope: !3648)
!3656 = !DILocation(line: 43, column: 6, scope: !3640)
!3657 = !DILocation(line: 46, column: 3, scope: !3648)
!3658 = !DILocation(line: 48, column: 15, scope: !3640)
!3659 = !DILocation(line: 48, column: 2, scope: !3640)
!3660 = !DILocation(line: 48, column: 13, scope: !3640)
!3661 = !DILocation(line: 49, column: 27, scope: !3640)
!3662 = !DILocation(line: 49, column: 63, scope: !3640)
!3663 = !DILocation(line: 49, column: 9, scope: !3640)
!3664 = !DILocation(line: 49, column: 2, scope: !3640)
!3665 = !DILocation(line: 50, column: 1, scope: !3640)
!3666 = distinct !DISubprogram(name: "mtd_get_of_node", scope: !122, file: !122, line: 463, type: !3667, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!2103, !159}
!3669 = !DILocalVariable(name: "mtd", arg: 1, scope: !3666, file: !122, line: 463, type: !159)
!3670 = !DILocation(line: 463, column: 68, scope: !3666)
!3671 = !DILocation(line: 465, column: 22, scope: !3666)
!3672 = !DILocation(line: 465, column: 27, scope: !3666)
!3673 = !DILocation(line: 465, column: 9, scope: !3666)
!3674 = !DILocation(line: 465, column: 2, scope: !3666)
!3675 = distinct !DISubprogram(name: "nand_to_mtd", scope: !74, file: !74, line: 1152, type: !3676, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3676 = !DISubroutineType(types: !3677)
!3677 = !{!159, !114}
!3678 = !DILocalVariable(name: "chip", arg: 1, scope: !3675, file: !74, line: 1152, type: !114)
!3679 = !DILocation(line: 1152, column: 62, scope: !3675)
!3680 = !DILocation(line: 1154, column: 10, scope: !3675)
!3681 = !DILocation(line: 1154, column: 16, scope: !3675)
!3682 = !DILocation(line: 1154, column: 21, scope: !3675)
!3683 = !DILocation(line: 1154, column: 2, scope: !3675)
!3684 = distinct !DISubprogram(name: "dev_of_node", scope: !30, file: !30, line: 754, type: !3685, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3685 = !DISubroutineType(types: !3686)
!3686 = !{!2103, !1795}
!3687 = !DILocalVariable(name: "dev", arg: 1, scope: !3684, file: !30, line: 754, type: !1795)
!3688 = !DILocation(line: 754, column: 62, scope: !3684)
!3689 = !DILocation(line: 756, column: 33, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3684, file: !30, line: 756, column: 6)
!3691 = !DILocation(line: 756, column: 6, scope: !3684)
!3692 = !DILocation(line: 757, column: 3, scope: !3690)
!3693 = !DILocation(line: 758, column: 9, scope: !3684)
!3694 = !DILocation(line: 758, column: 14, scope: !3684)
!3695 = !DILocation(line: 758, column: 2, scope: !3684)
!3696 = !DILocation(line: 759, column: 1, scope: !3684)
!3697 = distinct !DISubprogram(name: "__set_bit", scope: !3499, file: !3499, line: 25, type: !3500, scopeLine: 26, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3698 = !DILocalVariable(name: "nr", arg: 1, scope: !3699, file: !3506, line: 66, type: !95)
!3699 = distinct !DISubprogram(name: "arch___set_bit", scope: !3506, file: !3506, line: 66, type: !3500, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3700 = !DILocation(line: 66, column: 21, scope: !3699, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 28, column: 2, scope: !3697)
!3702 = !DILocalVariable(name: "addr", arg: 2, scope: !3699, file: !3506, line: 66, type: !3502)
!3703 = !DILocation(line: 66, column: 49, scope: !3699, inlinedAt: !3701)
!3704 = !DILocation(line: 39, column: 67, scope: !3512, inlinedAt: !3705)
!3705 = distinct !DILocation(line: 27, column: 2, scope: !3697)
!3706 = !DILocation(line: 39, column: 77, scope: !3512, inlinedAt: !3705)
!3707 = !DILocalVariable(name: "nr", arg: 1, scope: !3697, file: !3499, line: 25, type: !95)
!3708 = !DILocation(line: 25, column: 35, scope: !3697)
!3709 = !DILocalVariable(name: "addr", arg: 2, scope: !3697, file: !3499, line: 25, type: !3502)
!3710 = !DILocation(line: 25, column: 63, scope: !3697)
!3711 = !DILocation(line: 27, column: 19, scope: !3697)
!3712 = !DILocation(line: 27, column: 26, scope: !3697)
!3713 = !DILocation(line: 27, column: 24, scope: !3697)
!3714 = !DILocation(line: 41, column: 20, scope: !3512, inlinedAt: !3705)
!3715 = !DILocation(line: 41, column: 23, scope: !3512, inlinedAt: !3705)
!3716 = !DILocation(line: 41, column: 2, scope: !3512, inlinedAt: !3705)
!3717 = !DILocation(line: 42, column: 2, scope: !3512, inlinedAt: !3705)
!3718 = !DILocation(line: 28, column: 17, scope: !3697)
!3719 = !DILocation(line: 28, column: 21, scope: !3697)
!3720 = !DILocation(line: 68, column: 44, scope: !3699, inlinedAt: !3701)
!3721 = !DILocation(line: 68, column: 56, scope: !3699, inlinedAt: !3701)
!3722 = !DILocation(line: 68, column: 2, scope: !3699, inlinedAt: !3701)
!3723 = !{i32 -2147201765}
!3724 = !DILocation(line: 29, column: 1, scope: !3697)
!3725 = distinct !DISubprogram(name: "test_bit", scope: !3499, file: !3499, line: 132, type: !3726, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3726 = !DISubroutineType(types: !3727)
!3727 = !{!312, !95, !3728}
!3728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3729, size: 64)
!3729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3503)
!3730 = !DILocalVariable(name: "nr", arg: 1, scope: !3731, file: !3506, line: 210, type: !95)
!3731 = distinct !DISubprogram(name: "variable_test_bit", scope: !3506, file: !3506, line: 210, type: !3726, scopeLine: 211, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3732 = !DILocation(line: 210, column: 52, scope: !3731, inlinedAt: !3733)
!3733 = distinct !DILocation(line: 135, column: 9, scope: !3725)
!3734 = !DILocalVariable(name: "addr", arg: 2, scope: !3731, file: !3506, line: 210, type: !3728)
!3735 = !DILocation(line: 210, column: 86, scope: !3731, inlinedAt: !3733)
!3736 = !DILocalVariable(name: "oldbit", scope: !3731, file: !3506, line: 212, type: !312)
!3737 = !DILocation(line: 212, column: 7, scope: !3731, inlinedAt: !3733)
!3738 = !DILocalVariable(name: "nr", arg: 1, scope: !3739, file: !3506, line: 204, type: !95)
!3739 = distinct !DISubprogram(name: "constant_test_bit", scope: !3506, file: !3506, line: 204, type: !3726, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3740 = !DILocation(line: 204, column: 52, scope: !3739, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 135, column: 9, scope: !3725)
!3742 = !DILocalVariable(name: "addr", arg: 2, scope: !3739, file: !3506, line: 204, type: !3728)
!3743 = !DILocation(line: 204, column: 86, scope: !3739, inlinedAt: !3741)
!3744 = !DILocalVariable(name: "v", arg: 1, scope: !3745, file: !3513, line: 69, type: !3516)
!3745 = distinct !DISubprogram(name: "instrument_atomic_read", scope: !3513, file: !3513, line: 69, type: !3514, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3746 = !DILocation(line: 69, column: 73, scope: !3745, inlinedAt: !3747)
!3747 = distinct !DILocation(line: 134, column: 2, scope: !3725)
!3748 = !DILocalVariable(name: "size", arg: 2, scope: !3745, file: !3513, line: 69, type: !216)
!3749 = !DILocation(line: 69, column: 83, scope: !3745, inlinedAt: !3747)
!3750 = !DILocalVariable(name: "nr", arg: 1, scope: !3725, file: !3499, line: 132, type: !95)
!3751 = !DILocation(line: 132, column: 34, scope: !3725)
!3752 = !DILocalVariable(name: "addr", arg: 2, scope: !3725, file: !3499, line: 132, type: !3728)
!3753 = !DILocation(line: 132, column: 68, scope: !3725)
!3754 = !DILocation(line: 134, column: 25, scope: !3725)
!3755 = !DILocation(line: 134, column: 32, scope: !3725)
!3756 = !DILocation(line: 134, column: 30, scope: !3725)
!3757 = !DILocation(line: 71, column: 19, scope: !3745, inlinedAt: !3747)
!3758 = !DILocation(line: 71, column: 22, scope: !3745, inlinedAt: !3747)
!3759 = !DILocation(line: 71, column: 2, scope: !3745, inlinedAt: !3747)
!3760 = !DILocation(line: 72, column: 2, scope: !3745, inlinedAt: !3747)
!3761 = !DILocation(line: 135, column: 9, scope: !3725)
!3762 = !DILocation(line: 206, column: 19, scope: !3739, inlinedAt: !3741)
!3763 = !DILocation(line: 206, column: 22, scope: !3739, inlinedAt: !3741)
!3764 = !DILocation(line: 206, column: 15, scope: !3739, inlinedAt: !3741)
!3765 = !DILocation(line: 207, column: 4, scope: !3739, inlinedAt: !3741)
!3766 = !DILocation(line: 207, column: 9, scope: !3739, inlinedAt: !3741)
!3767 = !DILocation(line: 207, column: 12, scope: !3739, inlinedAt: !3741)
!3768 = !DILocation(line: 206, column: 44, scope: !3739, inlinedAt: !3741)
!3769 = !DILocation(line: 207, column: 37, scope: !3739, inlinedAt: !3741)
!3770 = !DILocation(line: 217, column: 33, scope: !3731, inlinedAt: !3733)
!3771 = !DILocation(line: 217, column: 46, scope: !3731, inlinedAt: !3733)
!3772 = !DILocation(line: 214, column: 2, scope: !3731, inlinedAt: !3733)
!3773 = !{i32 -2147193153, i32 -2147193093}
!3774 = !DILocation(line: 219, column: 9, scope: !3731, inlinedAt: !3733)
!3775 = !DILocation(line: 135, column: 2, scope: !3725)
!3776 = distinct !DISubprogram(name: "kasan_check_read", scope: !3542, file: !3542, line: 34, type: !3543, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3777 = !DILocalVariable(name: "p", arg: 1, scope: !3776, file: !3542, line: 34, type: !3516)
!3778 = !DILocation(line: 34, column: 58, scope: !3776)
!3779 = !DILocalVariable(name: "size", arg: 2, scope: !3776, file: !3542, line: 34, type: !7)
!3780 = !DILocation(line: 34, column: 74, scope: !3776)
!3781 = !DILocation(line: 36, column: 2, scope: !3776)
!3782 = distinct !DISubprogram(name: "mxic_nand_lock", scope: !3, file: !3, line: 188, type: !2537, scopeLine: 189, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3783 = !DILocalVariable(name: "chip", arg: 1, scope: !3782, file: !3, line: 188, type: !114)
!3784 = !DILocation(line: 188, column: 45, scope: !3782)
!3785 = !DILocalVariable(name: "ofs", arg: 2, scope: !3782, file: !3, line: 188, type: !212)
!3786 = !DILocation(line: 188, column: 58, scope: !3782)
!3787 = !DILocalVariable(name: "len", arg: 3, scope: !3782, file: !3, line: 188, type: !132)
!3788 = !DILocation(line: 188, column: 72, scope: !3782)
!3789 = !DILocalVariable(name: "feature", scope: !3782, file: !3, line: 190, type: !2466)
!3790 = !DILocation(line: 190, column: 5, scope: !3782)
!3791 = !DILocalVariable(name: "ret", scope: !3782, file: !3, line: 191, type: !90)
!3792 = !DILocation(line: 191, column: 6, scope: !3782)
!3793 = !DILocation(line: 193, column: 2, scope: !3782)
!3794 = !DILocation(line: 193, column: 13, scope: !3782)
!3795 = !DILocation(line: 194, column: 21, scope: !3782)
!3796 = !DILocation(line: 194, column: 2, scope: !3782)
!3797 = !DILocation(line: 195, column: 26, scope: !3782)
!3798 = !DILocation(line: 196, column: 5, scope: !3782)
!3799 = !DILocation(line: 195, column: 8, scope: !3782)
!3800 = !DILocation(line: 195, column: 6, scope: !3782)
!3801 = !DILocation(line: 197, column: 23, scope: !3782)
!3802 = !DILocation(line: 197, column: 2, scope: !3782)
!3803 = !DILocation(line: 198, column: 6, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3782, file: !3, line: 198, column: 6)
!3805 = !DILocation(line: 198, column: 6, scope: !3782)
!3806 = !DILocation(line: 199, column: 3, scope: !3804)
!3807 = !DILocation(line: 201, column: 9, scope: !3782)
!3808 = !DILocation(line: 201, column: 2, scope: !3782)
!3809 = distinct !DISubprogram(name: "mxic_nand_unlock", scope: !3, file: !3, line: 204, type: !2537, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3810 = !DILocalVariable(name: "chip", arg: 1, scope: !3809, file: !3, line: 204, type: !114)
!3811 = !DILocation(line: 204, column: 47, scope: !3809)
!3812 = !DILocalVariable(name: "ofs", arg: 2, scope: !3809, file: !3, line: 204, type: !212)
!3813 = !DILocation(line: 204, column: 60, scope: !3809)
!3814 = !DILocalVariable(name: "len", arg: 3, scope: !3809, file: !3, line: 204, type: !132)
!3815 = !DILocation(line: 204, column: 74, scope: !3809)
!3816 = !DILocalVariable(name: "feature", scope: !3809, file: !3, line: 206, type: !2466)
!3817 = !DILocation(line: 206, column: 5, scope: !3809)
!3818 = !DILocalVariable(name: "ret", scope: !3809, file: !3, line: 207, type: !90)
!3819 = !DILocation(line: 207, column: 6, scope: !3809)
!3820 = !DILocation(line: 209, column: 2, scope: !3809)
!3821 = !DILocation(line: 209, column: 13, scope: !3809)
!3822 = !DILocation(line: 210, column: 21, scope: !3809)
!3823 = !DILocation(line: 210, column: 2, scope: !3809)
!3824 = !DILocation(line: 211, column: 26, scope: !3809)
!3825 = !DILocation(line: 212, column: 5, scope: !3809)
!3826 = !DILocation(line: 211, column: 8, scope: !3809)
!3827 = !DILocation(line: 211, column: 6, scope: !3809)
!3828 = !DILocation(line: 213, column: 23, scope: !3809)
!3829 = !DILocation(line: 213, column: 2, scope: !3809)
!3830 = !DILocation(line: 214, column: 6, scope: !3831)
!3831 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 214, column: 6)
!3832 = !DILocation(line: 214, column: 6, scope: !3809)
!3833 = !DILocation(line: 215, column: 3, scope: !3831)
!3834 = !DILocation(line: 217, column: 9, scope: !3809)
!3835 = !DILocation(line: 217, column: 2, scope: !3809)
!3836 = distinct !DISubprogram(name: "mxic_nand_suspend", scope: !3, file: !3, line: 271, type: !2455, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3837 = !DILocalVariable(name: "chip", arg: 1, scope: !3836, file: !3, line: 271, type: !114)
!3838 = !DILocation(line: 271, column: 48, scope: !3836)
!3839 = !DILocalVariable(name: "ret", scope: !3836, file: !3, line: 273, type: !90)
!3840 = !DILocation(line: 273, column: 6, scope: !3836)
!3841 = !DILocation(line: 275, column: 21, scope: !3836)
!3842 = !DILocation(line: 275, column: 2, scope: !3836)
!3843 = !DILocation(line: 276, column: 27, scope: !3836)
!3844 = !DILocation(line: 276, column: 8, scope: !3836)
!3845 = !DILocation(line: 276, column: 6, scope: !3836)
!3846 = !DILocation(line: 277, column: 6, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3836, file: !3, line: 277, column: 6)
!3848 = !DILocation(line: 277, column: 10, scope: !3847)
!3849 = !DILocation(line: 277, column: 6, scope: !3836)
!3850 = !DILocation(line: 278, column: 3, scope: !3847)
!3851 = !DILocation(line: 279, column: 23, scope: !3836)
!3852 = !DILocation(line: 279, column: 2, scope: !3836)
!3853 = !DILocation(line: 281, column: 9, scope: !3836)
!3854 = !DILocation(line: 281, column: 2, scope: !3836)
!3855 = distinct !DISubprogram(name: "mxic_nand_resume", scope: !3, file: !3, line: 284, type: !112, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3856 = !DILocalVariable(name: "chip", arg: 1, scope: !3855, file: !3, line: 284, type: !114)
!3857 = !DILocation(line: 284, column: 48, scope: !3855)
!3858 = !DILocation(line: 294, column: 21, scope: !3855)
!3859 = !DILocation(line: 294, column: 2, scope: !3855)
!3860 = !DILocation(line: 295, column: 21, scope: !3855)
!3861 = !DILocation(line: 295, column: 2, scope: !3855)
!3862 = !DILocation(line: 297, column: 2, scope: !3855)
!3863 = !DILocation(line: 298, column: 23, scope: !3855)
!3864 = !DILocation(line: 298, column: 2, scope: !3855)
!3865 = !DILocation(line: 299, column: 1, scope: !3855)
!3866 = distinct !DISubprogram(name: "nand_power_down_op", scope: !3, file: !3, line: 249, type: !2455, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3867 = !DILocalVariable(name: "chip", arg: 1, scope: !3866, file: !3, line: 249, type: !114)
!3868 = !DILocation(line: 249, column: 49, scope: !3866)
!3869 = !DILocalVariable(name: "ret", scope: !3866, file: !3, line: 251, type: !90)
!3870 = !DILocation(line: 251, column: 6, scope: !3866)
!3871 = !DILocation(line: 253, column: 23, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3866, file: !3, line: 253, column: 6)
!3873 = !DILocation(line: 253, column: 6, scope: !3872)
!3874 = !DILocation(line: 253, column: 6, scope: !3866)
!3875 = !DILocalVariable(name: "instrs", scope: !3876, file: !3, line: 254, type: !3877)
!3876 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 253, column: 30)
!3877 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2672, size: 320, elements: !795)
!3878 = !DILocation(line: 254, column: 24, scope: !3876)
!3879 = !DILocalVariable(name: "op", scope: !3876, file: !3, line: 258, type: !2666)
!3880 = !DILocation(line: 258, column: 25, scope: !3876)
!3881 = !DILocation(line: 258, column: 30, scope: !3876)
!3882 = !DILocation(line: 260, column: 22, scope: !3876)
!3883 = !DILocation(line: 260, column: 9, scope: !3876)
!3884 = !DILocation(line: 260, column: 7, scope: !3876)
!3885 = !DILocation(line: 261, column: 7, scope: !3886)
!3886 = distinct !DILexicalBlock(scope: !3876, file: !3, line: 261, column: 7)
!3887 = !DILocation(line: 261, column: 7, scope: !3876)
!3888 = !DILocation(line: 262, column: 11, scope: !3886)
!3889 = !DILocation(line: 262, column: 4, scope: !3886)
!3890 = !DILocation(line: 264, column: 2, scope: !3876)
!3891 = !DILocation(line: 265, column: 3, scope: !3892)
!3892 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 264, column: 9)
!3893 = !DILocation(line: 265, column: 9, scope: !3892)
!3894 = !DILocation(line: 265, column: 16, scope: !3892)
!3895 = !DILocation(line: 265, column: 24, scope: !3892)
!3896 = !DILocation(line: 268, column: 2, scope: !3866)
!3897 = !DILocation(line: 269, column: 1, scope: !3866)
!3898 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !2442, file: !2442, line: 110, type: !2838, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3899 = !DILocalVariable(name: "chip", arg: 1, scope: !3898, file: !2442, line: 110, type: !114)
!3900 = !DILocation(line: 110, column: 55, scope: !3898)
!3901 = !DILocation(line: 112, column: 7, scope: !3902)
!3902 = distinct !DILexicalBlock(scope: !3898, file: !2442, line: 112, column: 6)
!3903 = !DILocation(line: 112, column: 13, scope: !3902)
!3904 = !DILocation(line: 112, column: 24, scope: !3902)
!3905 = !DILocation(line: 112, column: 28, scope: !3902)
!3906 = !DILocation(line: 112, column: 34, scope: !3902)
!3907 = !DILocation(line: 112, column: 46, scope: !3902)
!3908 = !DILocation(line: 112, column: 50, scope: !3902)
!3909 = !DILocation(line: 113, column: 7, scope: !3902)
!3910 = !DILocation(line: 113, column: 13, scope: !3902)
!3911 = !DILocation(line: 113, column: 25, scope: !3902)
!3912 = !DILocation(line: 113, column: 30, scope: !3902)
!3913 = !DILocation(line: 112, column: 6, scope: !3898)
!3914 = !DILocation(line: 114, column: 3, scope: !3902)
!3915 = !DILocation(line: 116, column: 2, scope: !3898)
!3916 = !DILocation(line: 117, column: 1, scope: !3898)
!3917 = distinct !DISubprogram(name: "nand_exec_op", scope: !2442, file: !2442, line: 128, type: !3918, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!90, !114, !2664}
!3920 = !DILocalVariable(name: "chip", arg: 1, scope: !3917, file: !2442, line: 128, type: !114)
!3921 = !DILocation(line: 128, column: 50, scope: !3917)
!3922 = !DILocalVariable(name: "op", arg: 2, scope: !3917, file: !2442, line: 129, type: !2664)
!3923 = !DILocation(line: 129, column: 40, scope: !3917)
!3924 = !DILocation(line: 131, column: 24, scope: !3925)
!3925 = distinct !DILexicalBlock(scope: !3917, file: !2442, line: 131, column: 6)
!3926 = !DILocation(line: 131, column: 7, scope: !3925)
!3927 = !DILocation(line: 131, column: 6, scope: !3917)
!3928 = !DILocation(line: 132, column: 3, scope: !3925)
!3929 = !DILocalVariable(name: "__ret_warn_on", scope: !3930, file: !2442, line: 134, type: !90)
!3930 = distinct !DILexicalBlock(scope: !3931, file: !2442, line: 134, column: 6)
!3931 = distinct !DILexicalBlock(scope: !3917, file: !2442, line: 134, column: 6)
!3932 = !DILocation(line: 134, column: 6, scope: !3930)
!3933 = !DILocation(line: 134, column: 6, scope: !3934)
!3934 = distinct !DILexicalBlock(scope: !3930, file: !2442, line: 134, column: 6)
!3935 = !DILocation(line: 134, column: 6, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3934, file: !2442, line: 134, column: 6)
!3937 = !DILocation(line: 134, column: 6, scope: !3938)
!3938 = distinct !DILexicalBlock(scope: !3936, file: !2442, line: 134, column: 6)
!3939 = !DILocation(line: 134, column: 6, scope: !3940)
!3940 = distinct !DILexicalBlock(scope: !3936, file: !2442, line: 134, column: 6)
!3941 = !{i32 -2143493442, i32 -2143493413, i32 -2143493367, i32 -2143493309, i32 -2143493255, i32 -2143493201, i32 -2143493146, i32 -2143493115}
!3942 = !DILocation(line: 134, column: 6, scope: !3943)
!3943 = distinct !DILexicalBlock(scope: !3936, file: !2442, line: 134, column: 6)
!3944 = !{i32 -2143492701, i32 -2143492694, i32 -2143492642, i32 -2143492611, i32 -2143492581}
!3945 = !DILocation(line: 134, column: 6, scope: !3946)
!3946 = distinct !DILexicalBlock(scope: !3936, file: !2442, line: 134, column: 6)
!3947 = !DILocation(line: 134, column: 6, scope: !3931)
!3948 = !DILocation(line: 134, column: 6, scope: !3917)
!3949 = !DILocation(line: 135, column: 3, scope: !3931)
!3950 = !DILocation(line: 137, column: 9, scope: !3917)
!3951 = !DILocation(line: 137, column: 15, scope: !3917)
!3952 = !DILocation(line: 137, column: 27, scope: !3917)
!3953 = !DILocation(line: 137, column: 32, scope: !3917)
!3954 = !DILocation(line: 137, column: 40, scope: !3917)
!3955 = !DILocation(line: 137, column: 46, scope: !3917)
!3956 = !DILocation(line: 137, column: 2, scope: !3917)
!3957 = !DILocation(line: 138, column: 1, scope: !3917)
!3958 = distinct !DISubprogram(name: "nanddev_ntargets", scope: !51, file: !51, line: 483, type: !3488, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !375)
!3959 = !DILocalVariable(name: "nand", arg: 1, scope: !3958, file: !51, line: 483, type: !3490)
!3960 = !DILocation(line: 483, column: 71, scope: !3958)
!3961 = !DILocation(line: 485, column: 9, scope: !3958)
!3962 = !DILocation(line: 485, column: 15, scope: !3958)
!3963 = !DILocation(line: 485, column: 22, scope: !3958)
!3964 = !DILocation(line: 485, column: 2, scope: !3958)
