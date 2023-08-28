; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_jedec.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_jedec.c"
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
%struct.nand_jedec_params = type <{ [4 x i8], i16, i16, [3 x i8], i16, i8, [18 x i8], [12 x i8], [20 x i8], [6 x i8], [10 x i8], i32, i16, [6 x i8], i32, i32, i8, i8, i8, i8, i8, i8, [38 x i8], i16, i16, i16, i8, i8, i8, i16, i16, i16, i16, i16, i16, i16, i16, i8, i16, [36 x i8], i8, i16, [4 x %struct.jedec_ecc_info], [29 x i8], [148 x i8], i16, [88 x i8], i16 }>
%struct.jedec_ecc_info = type { i8, i8, i16, i16, [2 x i8] }

@.str = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@.str.1 = private unnamed_addr constant [55 x i8] c"\013Could not find valid JEDEC parameter page; aborting\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"\016unsupported JEDEC version: %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [25 x i8] c"\014Invalid codeword size\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.4 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @nand_jedec_detect(%struct.nand_chip* %chip) #0 !dbg !115 {
entry:
  %x.addr.i103 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i103, metadata !2807, metadata !DIExpression()), !dbg !2812
  %r.i104 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i104, metadata !2814, metadata !DIExpression()), !dbg !2815
  %x.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %x.addr.i, metadata !2807, metadata !DIExpression()), !dbg !2816
  %r.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %r.i, metadata !2814, metadata !DIExpression()), !dbg !2818
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %base = alloca %struct.nand_device*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %memorg = alloca %struct.nand_memory_organization*, align 8
  %p = alloca %struct.nand_jedec_params*, align 8
  %ecc = alloca %struct.jedec_ecc_info*, align 8
  %use_datain = alloca i8, align 1
  %jedec_version = alloca i32, align 4
  %id = alloca [5 x i8], align 1
  %i = alloca i32, align 4
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  %crc = alloca i16, align 2
  %requirements = alloca %struct.nand_ecc_props, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2819, metadata !DIExpression()), !dbg !2820
  call void @llvm.dbg.declare(metadata %struct.nand_device** %base, metadata !2821, metadata !DIExpression()), !dbg !2822
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2823
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2824
  store %struct.nand_device* %base1, %struct.nand_device** %base, align 8, !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2825, metadata !DIExpression()), !dbg !2826
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2827
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %1) #8, !dbg !2828
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2826
  call void @llvm.dbg.declare(metadata %struct.nand_memory_organization** %memorg, metadata !2829, metadata !DIExpression()), !dbg !2831
  call void @llvm.dbg.declare(metadata %struct.nand_jedec_params** %p, metadata !2832, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.declare(metadata %struct.jedec_ecc_info** %ecc, metadata !2914, metadata !DIExpression()), !dbg !2916
  call void @llvm.dbg.declare(metadata i8* %use_datain, metadata !2917, metadata !DIExpression()), !dbg !2918
  store i8 0, i8* %use_datain, align 1, !dbg !2918
  call void @llvm.dbg.declare(metadata i32* %jedec_version, metadata !2919, metadata !DIExpression()), !dbg !2920
  store i32 0, i32* %jedec_version, align 4, !dbg !2920
  call void @llvm.dbg.declare(metadata [5 x i8]* %id, metadata !2921, metadata !DIExpression()), !dbg !2925
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2926, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2928, metadata !DIExpression()), !dbg !2929
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2930, metadata !DIExpression()), !dbg !2931
  call void @llvm.dbg.declare(metadata i16* %crc, metadata !2932, metadata !DIExpression()), !dbg !2933
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2934
  %base2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 0, !dbg !2935
  %call3 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %base2) #8, !dbg !2936
  store %struct.nand_memory_organization* %call3, %struct.nand_memory_organization** %memorg, align 8, !dbg !2937
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2938
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %id, i64 0, i64 0, !dbg !2939
  %call4 = call i32 @nand_readid_op(%struct.nand_chip* %3, i8 zeroext 64, i8* %arraydecay, i32 5) #8, !dbg !2940
  store i32 %call4, i32* %ret, align 4, !dbg !2941
  %4 = load i32, i32* %ret, align 4, !dbg !2942
  %tobool = icmp ne i32 %4, 0, !dbg !2942
  br i1 %tobool, label %if.then, label %lor.lhs.false, !dbg !2944

lor.lhs.false:                                    ; preds = %entry
  %arraydecay5 = getelementptr inbounds [5 x i8], [5 x i8]* %id, i64 0, i64 0, !dbg !2945
  %call6 = call i32 @strncmp(i8* %arraydecay5, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 5) #8, !dbg !2946
  %tobool7 = icmp ne i32 %call6, 0, !dbg !2946
  br i1 %tobool7, label %if.then, label %if.end, !dbg !2947

if.then:                                          ; preds = %lor.lhs.false, %entry
  store i32 0, i32* %retval, align 4, !dbg !2948
  br label %return, !dbg !2948

if.end:                                           ; preds = %lor.lhs.false
  %call8 = call i8* @kzalloc(i64 512, i32 3264) #8, !dbg !2949
  %5 = bitcast i8* %call8 to %struct.nand_jedec_params*, !dbg !2949
  store %struct.nand_jedec_params* %5, %struct.nand_jedec_params** %p, align 8, !dbg !2950
  %6 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !2951
  %tobool9 = icmp ne %struct.nand_jedec_params* %6, null, !dbg !2951
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !2953

if.then10:                                        ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2954
  br label %return, !dbg !2954

if.end11:                                         ; preds = %if.end
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2955
  %call12 = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %7) #8, !dbg !2957
  br i1 %call12, label %lor.lhs.false13, label %if.then16, !dbg !2958

lor.lhs.false13:                                  ; preds = %if.end11
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2959
  %9 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !2960
  %10 = bitcast %struct.nand_jedec_params* %9 to i8*, !dbg !2960
  %call14 = call i32 @nand_read_data_op(%struct.nand_chip* %8, i8* %10, i32 512, i1 zeroext true, i1 zeroext true) #8, !dbg !2961
  %tobool15 = icmp ne i32 %call14, 0, !dbg !2961
  br i1 %tobool15, label %if.end17, label %if.then16, !dbg !2962

if.then16:                                        ; preds = %lor.lhs.false13, %if.end11
  store i8 1, i8* %use_datain, align 1, !dbg !2963
  br label %if.end17, !dbg !2964

if.end17:                                         ; preds = %if.then16, %lor.lhs.false13
  store i32 0, i32* %i, align 4, !dbg !2965
  br label %for.cond, !dbg !2967

for.cond:                                         ; preds = %for.inc, %if.end17
  %11 = load i32, i32* %i, align 4, !dbg !2968
  %cmp = icmp slt i32 %11, 3, !dbg !2970
  br i1 %cmp, label %for.body, label %for.end, !dbg !2971

for.body:                                         ; preds = %for.cond
  %12 = load i32, i32* %i, align 4, !dbg !2972
  %tobool18 = icmp ne i32 %12, 0, !dbg !2972
  br i1 %tobool18, label %if.else, label %if.then19, !dbg !2975

if.then19:                                        ; preds = %for.body
  %13 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2976
  %14 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !2977
  %15 = bitcast %struct.nand_jedec_params* %14 to i8*, !dbg !2977
  %call20 = call i32 @nand_read_param_page_op(%struct.nand_chip* %13, i8 zeroext 64, i8* %15, i32 512) #8, !dbg !2978
  store i32 %call20, i32* %ret, align 4, !dbg !2979
  br label %if.end28, !dbg !2980

if.else:                                          ; preds = %for.body
  %16 = load i8, i8* %use_datain, align 1, !dbg !2981
  %tobool21 = trunc i8 %16 to i1, !dbg !2981
  br i1 %tobool21, label %if.then22, label %if.else24, !dbg !2983

if.then22:                                        ; preds = %if.else
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2984
  %18 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !2985
  %19 = bitcast %struct.nand_jedec_params* %18 to i8*, !dbg !2985
  %call23 = call i32 @nand_read_data_op(%struct.nand_chip* %17, i8* %19, i32 512, i1 zeroext true, i1 zeroext false) #8, !dbg !2986
  store i32 %call23, i32* %ret, align 4, !dbg !2987
  br label %if.end27, !dbg !2988

if.else24:                                        ; preds = %if.else
  %20 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2989
  %21 = load i32, i32* %i, align 4, !dbg !2990
  %conv = sext i32 %21 to i64, !dbg !2990
  %mul = mul i64 512, %conv, !dbg !2991
  %conv25 = trunc i64 %mul to i32, !dbg !2992
  %22 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !2993
  %23 = bitcast %struct.nand_jedec_params* %22 to i8*, !dbg !2993
  %call26 = call i32 @nand_change_read_column_op(%struct.nand_chip* %20, i32 %conv25, i8* %23, i32 512, i1 zeroext true) #8, !dbg !2994
  store i32 %call26, i32* %ret, align 4, !dbg !2995
  br label %if.end27

if.end27:                                         ; preds = %if.else24, %if.then22
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.then19
  %24 = load i32, i32* %ret, align 4, !dbg !2996
  %tobool29 = icmp ne i32 %24, 0, !dbg !2996
  br i1 %tobool29, label %if.then30, label %if.end31, !dbg !2998

if.then30:                                        ; preds = %if.end28
  store i32 0, i32* %ret, align 4, !dbg !2999
  br label %free_jedec_param_page, !dbg !3001

if.end31:                                         ; preds = %if.end28
  %25 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3002
  %26 = bitcast %struct.nand_jedec_params* %25 to i8*, !dbg !3003
  %call32 = call zeroext i16 @onfi_crc16(i16 zeroext 20302, i8* %26, i64 510) #8, !dbg !3004
  store i16 %call32, i16* %crc, align 2, !dbg !3005
  %27 = load i16, i16* %crc, align 2, !dbg !3006
  %conv33 = zext i16 %27 to i32, !dbg !3006
  %28 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3008
  %crc34 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %28, i32 0, i32 47, !dbg !3008
  %29 = load i16, i16* %crc34, align 1, !dbg !3008
  %conv35 = zext i16 %29 to i32, !dbg !3008
  %cmp36 = icmp eq i32 %conv33, %conv35, !dbg !3009
  br i1 %cmp36, label %if.then38, label %if.end39, !dbg !3010

if.then38:                                        ; preds = %if.end31
  br label %for.end, !dbg !3011

if.end39:                                         ; preds = %if.end31
  br label %for.inc, !dbg !3012

for.inc:                                          ; preds = %if.end39
  %30 = load i32, i32* %i, align 4, !dbg !3013
  %inc = add i32 %30, 1, !dbg !3013
  store i32 %inc, i32* %i, align 4, !dbg !3013
  br label %for.cond, !dbg !3014, !llvm.loop !3015

for.end:                                          ; preds = %if.then38, %for.cond
  %31 = load i32, i32* %i, align 4, !dbg !3017
  %cmp40 = icmp eq i32 %31, 3, !dbg !3019
  br i1 %cmp40, label %if.then42, label %if.end44, !dbg !3020

if.then42:                                        ; preds = %for.end
  %call43 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !3021
  br label %free_jedec_param_page, !dbg !3023

if.end44:                                         ; preds = %for.end
  %32 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3024
  %revision = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %32, i32 0, i32 1, !dbg !3024
  %33 = load i16, i16* %revision, align 1, !dbg !3024
  %conv45 = zext i16 %33 to i32, !dbg !3024
  store i32 %conv45, i32* %val, align 4, !dbg !3025
  %34 = load i32, i32* %val, align 4, !dbg !3026
  %and = and i32 %34, 4, !dbg !3028
  %tobool46 = icmp ne i32 %and, 0, !dbg !3028
  br i1 %tobool46, label %if.then47, label %if.else48, !dbg !3029

if.then47:                                        ; preds = %if.end44
  store i32 10, i32* %jedec_version, align 4, !dbg !3030
  br label %if.end53, !dbg !3031

if.else48:                                        ; preds = %if.end44
  %35 = load i32, i32* %val, align 4, !dbg !3032
  %and49 = and i32 %35, 2, !dbg !3034
  %tobool50 = icmp ne i32 %and49, 0, !dbg !3034
  br i1 %tobool50, label %if.then51, label %if.end52, !dbg !3035

if.then51:                                        ; preds = %if.else48
  store i32 1, i32* %jedec_version, align 4, !dbg !3036
  br label %if.end52, !dbg !3037

if.end52:                                         ; preds = %if.then51, %if.else48
  br label %if.end53

if.end53:                                         ; preds = %if.end52, %if.then47
  %36 = load i32, i32* %jedec_version, align 4, !dbg !3038
  %tobool54 = icmp ne i32 %36, 0, !dbg !3038
  br i1 %tobool54, label %if.end57, label %if.then55, !dbg !3040

if.then55:                                        ; preds = %if.end53
  %37 = load i32, i32* %val, align 4, !dbg !3041
  %call56 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.2, i64 0, i64 0), i32 %37) #9, !dbg !3041
  br label %free_jedec_param_page, !dbg !3043

if.end57:                                         ; preds = %if.end53
  %38 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3044
  %manufacturer = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %38, i32 0, i32 7, !dbg !3045
  %arraydecay58 = getelementptr inbounds [12 x i8], [12 x i8]* %manufacturer, i64 0, i64 0, !dbg !3044
  call void @sanitize_string(i8* %arraydecay58, i64 12) #8, !dbg !3046
  %39 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3047
  %model = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %39, i32 0, i32 8, !dbg !3048
  %arraydecay59 = getelementptr inbounds [20 x i8], [20 x i8]* %model, i64 0, i64 0, !dbg !3047
  call void @sanitize_string(i8* %arraydecay59, i64 20) #8, !dbg !3049
  %40 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3050
  %model60 = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %40, i32 0, i32 8, !dbg !3051
  %arraydecay61 = getelementptr inbounds [20 x i8], [20 x i8]* %model60, i64 0, i64 0, !dbg !3050
  %call62 = call noalias i8* @kstrdup(i8* %arraydecay61, i32 3264) #8, !dbg !3052
  %41 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3053
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 2, !dbg !3054
  %model63 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 0, !dbg !3055
  store i8* %call62, i8** %model63, align 8, !dbg !3056
  %42 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3057
  %parameters64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %42, i32 0, i32 2, !dbg !3059
  %model65 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters64, i32 0, i32 0, !dbg !3060
  %43 = load i8*, i8** %model65, align 8, !dbg !3060
  %tobool66 = icmp ne i8* %43, null, !dbg !3057
  br i1 %tobool66, label %if.end68, label %if.then67, !dbg !3061

if.then67:                                        ; preds = %if.end57
  store i32 -12, i32* %ret, align 4, !dbg !3062
  br label %free_jedec_param_page, !dbg !3064

if.end68:                                         ; preds = %if.end57
  %44 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3065
  %byte_per_page = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %44, i32 0, i32 11, !dbg !3065
  %45 = load i32, i32* %byte_per_page, align 1, !dbg !3065
  %46 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3066
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %46, i32 0, i32 1, !dbg !3067
  store i32 %45, i32* %pagesize, align 4, !dbg !3068
  %47 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3069
  %pagesize69 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %47, i32 0, i32 1, !dbg !3070
  %48 = load i32, i32* %pagesize69, align 4, !dbg !3070
  %49 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3071
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 4, !dbg !3072
  store i32 %48, i32* %writesize, align 4, !dbg !3073
  %50 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3074
  %pages_per_block = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %50, i32 0, i32 14, !dbg !3074
  %51 = load i32, i32* %pages_per_block, align 1, !dbg !3074
  store i32 %51, i32* %x.addr.i, align 4
  %52 = load i32, i32* %x.addr.i, align 4, !dbg !3075
  %53 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %52, i32 -1) #10, !dbg !3076, !srcloc !3077
  store i32 %53, i32* %r.i, align 4, !dbg !3076
  %54 = load i32, i32* %r.i, align 4, !dbg !3078
  %add.i = add i32 %54, 1, !dbg !3079
  %sub = sub i32 %add.i, 1, !dbg !3080
  %shl = shl i32 1, %sub, !dbg !3081
  %55 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3082
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %55, i32 0, i32 3, !dbg !3083
  store i32 %shl, i32* %pages_per_eraseblock, align 4, !dbg !3084
  %56 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3085
  %pages_per_eraseblock71 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %56, i32 0, i32 3, !dbg !3086
  %57 = load i32, i32* %pages_per_eraseblock71, align 4, !dbg !3086
  %58 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3087
  %pagesize72 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %58, i32 0, i32 1, !dbg !3088
  %59 = load i32, i32* %pagesize72, align 4, !dbg !3088
  %mul73 = mul i32 %57, %59, !dbg !3089
  %60 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3090
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 3, !dbg !3091
  store i32 %mul73, i32* %erasesize, align 8, !dbg !3092
  %61 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3093
  %spare_bytes_per_page = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %61, i32 0, i32 12, !dbg !3093
  %62 = load i16, i16* %spare_bytes_per_page, align 1, !dbg !3093
  %conv74 = zext i16 %62 to i32, !dbg !3093
  %63 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3094
  %oobsize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %63, i32 0, i32 2, !dbg !3095
  store i32 %conv74, i32* %oobsize, align 4, !dbg !3096
  %64 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3097
  %oobsize75 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %64, i32 0, i32 2, !dbg !3098
  %65 = load i32, i32* %oobsize75, align 4, !dbg !3098
  %66 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3099
  %oobsize76 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %66, i32 0, i32 6, !dbg !3100
  store i32 %65, i32* %oobsize76, align 4, !dbg !3101
  %67 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3102
  %lun_count = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %67, i32 0, i32 16, !dbg !3103
  %68 = load i8, i8* %lun_count, align 1, !dbg !3103
  %conv77 = zext i8 %68 to i32, !dbg !3102
  %69 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3104
  %luns_per_target = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %69, i32 0, i32 7, !dbg !3105
  store i32 %conv77, i32* %luns_per_target, align 4, !dbg !3106
  %70 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3107
  %multi_plane_addr = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %70, i32 0, i32 20, !dbg !3108
  %71 = load i8, i8* %multi_plane_addr, align 1, !dbg !3108
  %conv78 = zext i8 %71 to i32, !dbg !3107
  %shl79 = shl i32 1, %conv78, !dbg !3109
  %72 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3110
  %planes_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %72, i32 0, i32 6, !dbg !3111
  store i32 %shl79, i32* %planes_per_lun, align 4, !dbg !3112
  %73 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3113
  %blocks_per_lun = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %73, i32 0, i32 15, !dbg !3113
  %74 = load i32, i32* %blocks_per_lun, align 1, !dbg !3113
  store i32 %74, i32* %x.addr.i103, align 4
  %75 = load i32, i32* %x.addr.i103, align 4, !dbg !3114
  %76 = call i32 asm "bsrl $1,$0", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i32 %75, i32 -1) #10, !dbg !3115, !srcloc !3077
  store i32 %76, i32* %r.i104, align 4, !dbg !3115
  %77 = load i32, i32* %r.i104, align 4, !dbg !3116
  %add.i105 = add i32 %77, 1, !dbg !3117
  %sub81 = sub i32 %add.i105, 1, !dbg !3118
  %shl82 = shl i32 1, %sub81, !dbg !3119
  %78 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3120
  %eraseblocks_per_lun = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %78, i32 0, i32 4, !dbg !3121
  store i32 %shl82, i32* %eraseblocks_per_lun, align 4, !dbg !3122
  %79 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3123
  %bits_per_cell = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %79, i32 0, i32 18, !dbg !3124
  %80 = load i8, i8* %bits_per_cell, align 1, !dbg !3124
  %conv83 = zext i8 %80 to i32, !dbg !3123
  %81 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3125
  %bits_per_cell84 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %81, i32 0, i32 0, !dbg !3126
  store i32 %conv83, i32* %bits_per_cell84, align 4, !dbg !3127
  %82 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3128
  %features = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %82, i32 0, i32 2, !dbg !3128
  %83 = load i16, i16* %features, align 1, !dbg !3128
  %conv85 = zext i16 %83 to i32, !dbg !3128
  %and86 = and i32 %conv85, 1, !dbg !3130
  %tobool87 = icmp ne i32 %and86, 0, !dbg !3130
  br i1 %tobool87, label %if.then88, label %if.end91, !dbg !3131

if.then88:                                        ; preds = %if.end68
  %84 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3132
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %84, i32 0, i32 6, !dbg !3133
  %85 = load i32, i32* %options, align 8, !dbg !3134
  %conv89 = zext i32 %85 to i64, !dbg !3134
  %or = or i64 %conv89, 2, !dbg !3134
  %conv90 = trunc i64 %or to i32, !dbg !3134
  store i32 %conv90, i32* %options, align 8, !dbg !3134
  br label %if.end91, !dbg !3132

if.end91:                                         ; preds = %if.then88, %if.end68
  %86 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3135
  %ecc_info = getelementptr inbounds %struct.nand_jedec_params, %struct.nand_jedec_params* %86, i32 0, i32 42, !dbg !3136
  %arrayidx = getelementptr [4 x %struct.jedec_ecc_info], [4 x %struct.jedec_ecc_info]* %ecc_info, i64 0, i64 0, !dbg !3135
  store %struct.jedec_ecc_info* %arrayidx, %struct.jedec_ecc_info** %ecc, align 8, !dbg !3137
  %87 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %ecc, align 8, !dbg !3138
  %codeword_size = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %87, i32 0, i32 1, !dbg !3140
  %88 = load i8, i8* %codeword_size, align 1, !dbg !3140
  %conv92 = zext i8 %88 to i32, !dbg !3138
  %cmp93 = icmp sge i32 %conv92, 9, !dbg !3141
  br i1 %cmp93, label %if.then95, label %if.else100, !dbg !3142

if.then95:                                        ; preds = %if.end91
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props* %requirements, metadata !3143, metadata !DIExpression()), !dbg !3145
  %engine_type = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 0, !dbg !3146
  store i32 0, i32* %engine_type, align 4, !dbg !3146
  %placement = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 1, !dbg !3146
  store i32 0, i32* %placement, align 4, !dbg !3146
  %algo = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 2, !dbg !3146
  store i32 0, i32* %algo, align 4, !dbg !3146
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3146
  %89 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %ecc, align 8, !dbg !3147
  %ecc_bits = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %89, i32 0, i32 0, !dbg !3148
  %90 = load i8, i8* %ecc_bits, align 1, !dbg !3148
  %conv96 = zext i8 %90 to i32, !dbg !3147
  store i32 %conv96, i32* %strength, align 4, !dbg !3146
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3146
  %91 = load %struct.jedec_ecc_info*, %struct.jedec_ecc_info** %ecc, align 8, !dbg !3149
  %codeword_size97 = getelementptr inbounds %struct.jedec_ecc_info, %struct.jedec_ecc_info* %91, i32 0, i32 1, !dbg !3150
  %92 = load i8, i8* %codeword_size97, align 1, !dbg !3150
  %conv98 = zext i8 %92 to i32, !dbg !3149
  %shl99 = shl i32 1, %conv98, !dbg !3151
  store i32 %shl99, i32* %step_size, align 4, !dbg !3146
  %flags = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 5, !dbg !3146
  store i32 0, i32* %flags, align 4, !dbg !3146
  %93 = load %struct.nand_device*, %struct.nand_device** %base, align 8, !dbg !3152
  call void @nanddev_set_ecc_requirements(%struct.nand_device* %93, %struct.nand_ecc_props* %requirements) #8, !dbg !3153
  br label %if.end102, !dbg !3154

if.else100:                                       ; preds = %if.end91
  %call101 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.3, i64 0, i64 0)) #9, !dbg !3155
  br label %if.end102

if.end102:                                        ; preds = %if.else100, %if.then95
  store i32 1, i32* %ret, align 4, !dbg !3157
  br label %free_jedec_param_page, !dbg !3158

free_jedec_param_page:                            ; preds = %if.end102, %if.then67, %if.then55, %if.then42, %if.then30
  call void @llvm.dbg.label(metadata !3159), !dbg !3160
  %94 = load %struct.nand_jedec_params*, %struct.nand_jedec_params** %p, align 8, !dbg !3161
  %95 = bitcast %struct.nand_jedec_params* %94 to i8*, !dbg !3161
  call void @kfree(i8* %95) #8, !dbg !3162
  %96 = load i32, i32* %ret, align 4, !dbg !3163
  store i32 %96, i32* %retval, align 4, !dbg !3164
  br label %return, !dbg !3164

return:                                           ; preds = %free_jedec_param_page, %if.then10, %if.then
  %97 = load i32, i32* %retval, align 4, !dbg !3165
  ret i32 %97, !dbg !3165
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3166 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3169, metadata !DIExpression()), !dbg !3170
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3171
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3172
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3173
  ret %struct.mtd_info* %mtd, !dbg !3174
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %nand) #0 !dbg !3175 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3178, metadata !DIExpression()), !dbg !3179
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3180
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3181
  ret %struct.nand_memory_organization* %memorg, !dbg !3182
}

; Function Attrs: noredzone
declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i8 zeroext, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3183 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3186, metadata !DIExpression()), !dbg !3190
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3196, metadata !DIExpression()), !dbg !3197
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3198, metadata !DIExpression()), !dbg !3199
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3200, metadata !DIExpression()), !dbg !3201
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3202, metadata !DIExpression()), !dbg !3206
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3208, metadata !DIExpression()), !dbg !3212
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3214, metadata !DIExpression()), !dbg !3218
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3223, metadata !DIExpression()), !dbg !3224
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3225, metadata !DIExpression()), !dbg !3226
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3227, metadata !DIExpression()), !dbg !3228
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3229, metadata !DIExpression()), !dbg !3230
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3231, metadata !DIExpression()), !dbg !3232
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3233, metadata !DIExpression()), !dbg !3234
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3235, metadata !DIExpression()), !dbg !3236
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3237, metadata !DIExpression()), !dbg !3238
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3239, metadata !DIExpression()), !dbg !3240
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3241, metadata !DIExpression()), !dbg !3242
  %0 = load i64, i64* %size.addr, align 8, !dbg !3243
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3244
  %or = or i32 %1, 256, !dbg !3245
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3246
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #11, !dbg !3247
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3248

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3249
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3250
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3251

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3252
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3253
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3254
  %call.i.i = call i32 @get_order(i64 %7) #12, !dbg !3255
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3232
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3256
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3257
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3258
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3259
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3260
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3261
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #13, !dbg !3262
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3262
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3262
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3262
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !3262
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3263
  br label %kmalloc.exit, !dbg !3263

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3264
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3265
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3265
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3267

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3268
  br label %kmalloc_index.exit.i, !dbg !3268

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3269
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3271
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3272

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3273
  br label %kmalloc_index.exit.i, !dbg !3273

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3274
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3276
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3277

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3278
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3279
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3280

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3281
  br label %kmalloc_index.exit.i, !dbg !3281

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3282
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3284
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3285

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3286
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3287
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3288

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3289
  br label %kmalloc_index.exit.i, !dbg !3289

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3290
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3292
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3293

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3294
  br label %kmalloc_index.exit.i, !dbg !3294

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3295
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3297
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3298

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3299
  br label %kmalloc_index.exit.i, !dbg !3299

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3300
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3302
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3303

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3304
  br label %kmalloc_index.exit.i, !dbg !3304

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3305
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3307
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3308

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3309
  br label %kmalloc_index.exit.i, !dbg !3309

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3310
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3312
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3313

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3314
  br label %kmalloc_index.exit.i, !dbg !3314

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3315
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3317
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3318

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3319
  br label %kmalloc_index.exit.i, !dbg !3319

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3320
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3322
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3323

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3324
  br label %kmalloc_index.exit.i, !dbg !3324

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3325
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3327
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3328

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3329
  br label %kmalloc_index.exit.i, !dbg !3329

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3330
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3332
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3333

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3334
  br label %kmalloc_index.exit.i, !dbg !3334

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3335
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3337
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3338

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3339
  br label %kmalloc_index.exit.i, !dbg !3339

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3340
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3342
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3343

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3344
  br label %kmalloc_index.exit.i, !dbg !3344

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3345
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3347
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3348

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3349
  br label %kmalloc_index.exit.i, !dbg !3349

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3350
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3352
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3353

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3354
  br label %kmalloc_index.exit.i, !dbg !3354

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3355
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3357
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3358

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3359
  br label %kmalloc_index.exit.i, !dbg !3359

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3360
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3362
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3363

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3364
  br label %kmalloc_index.exit.i, !dbg !3364

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3365
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3367
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3368

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3369
  br label %kmalloc_index.exit.i, !dbg !3369

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3370
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3372
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3373

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3374
  br label %kmalloc_index.exit.i, !dbg !3374

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3375
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3377
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3378

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3379
  br label %kmalloc_index.exit.i, !dbg !3379

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3380
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3382
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3383

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3384
  br label %kmalloc_index.exit.i, !dbg !3384

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3385
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3387
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3388

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3389
  br label %kmalloc_index.exit.i, !dbg !3389

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3390
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3392
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3393

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3394
  br label %kmalloc_index.exit.i, !dbg !3394

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3395
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3397
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3398

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3399
  br label %kmalloc_index.exit.i, !dbg !3399

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3400
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3402
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3403

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3404
  br label %kmalloc_index.exit.i, !dbg !3404

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3405
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3407
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3408

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3409
  br label %kmalloc_index.exit.i, !dbg !3409

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !3410, !srcloc !3413
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #11, !dbg !3414, !srcloc !3417
  unreachable, !dbg !3418

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3419
  store i32 %45, i32* %index.i, align 4, !dbg !3420
  %46 = load i32, i32* %index.i, align 4, !dbg !3421
  %tobool.i = icmp ne i32 %46, 0, !dbg !3421
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3423

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3424
  br label %kmalloc.exit, !dbg !3424

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3425
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3426
  %and.i.i = and i32 %48, 17, !dbg !3426
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3426
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3426
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3426
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3426
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3428

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3429
  br label %kmalloc_type.exit.i, !dbg !3429

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3430
  %and2.i.i = and i32 %49, 1, !dbg !3431
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3430
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3430
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3430
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3432
  br label %kmalloc_type.exit.i, !dbg !3432

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3433
  %idxprom.i = zext i32 %51 to i64, !dbg !3434
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3434
  %52 = load i32, i32* %index.i, align 4, !dbg !3435
  %idxprom6.i = zext i32 %52 to i64, !dbg !3434
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3434
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3434
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3436
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3437
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3438
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3439
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #13, !dbg !3440
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3440
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3440
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3440
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !3440
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3201
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3441
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3442
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3443
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3444
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #13, !dbg !3445
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3446
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3447
  store i8* %62, i8** %retval.i, align 8, !dbg !3448
  br label %kmalloc.exit, !dbg !3448

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3449
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3450
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #13, !dbg !3451
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3451
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3451
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3451
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !3451
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3452
  br label %kmalloc.exit, !dbg !3452

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3453
  ret i8* %65, !dbg !3454
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !3455 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3460
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !3462
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3462
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !3460
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3463

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3464
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !3465
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !3465
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !3466
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3466
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !3464
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3467

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3468
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !3469
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !3469
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !3470
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !3470
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !3471
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3471
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !3468
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3472

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !3473
  br label %return, !dbg !3473

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !3474
  br label %return, !dbg !3474

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3475
  ret i1 %9, !dbg !3475
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i8*, i32, i1 zeroext, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_read_param_page_op(%struct.nand_chip*, i8 zeroext, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i8*, i32, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local zeroext i16 @onfi_crc16(i16 zeroext, i8*, i64) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noredzone
declare dso_local void @sanitize_string(i8*, i64) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_set_ecc_requirements(%struct.nand_device* %nand, %struct.nand_ecc_props* %reqs) #0 !dbg !3476 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %reqs.addr = alloca %struct.nand_ecc_props*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3481, metadata !DIExpression()), !dbg !3482
  store %struct.nand_ecc_props* %reqs, %struct.nand_ecc_props** %reqs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %reqs.addr, metadata !3483, metadata !DIExpression()), !dbg !3484
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3485
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !3486
  %requirements = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 1, !dbg !3487
  %1 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs.addr, align 8, !dbg !3488
  %2 = bitcast %struct.nand_ecc_props* %requirements to i8*, !dbg !3489
  %3 = bitcast %struct.nand_ecc_props* %1 to i8*, !dbg !3489
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 24, i1 false), !dbg !3489
  ret void, !dbg !3490
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3491 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3495, metadata !DIExpression()), !dbg !3499
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3501, metadata !DIExpression()), !dbg !3502
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3503, metadata !DIExpression()), !dbg !3504
  %0 = load i64, i64* %size.addr, align 8, !dbg !3505
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3507
  br i1 %1, label %if.then, label %if.end447, !dbg !3508

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3509
  %tobool = icmp ne i64 %2, 0, !dbg !3509
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3512

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3513
  br label %return, !dbg !3513

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3514
  %cmp = icmp ult i64 %3, 4096, !dbg !3516
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3517

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3518
  br label %return, !dbg !3518

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub = sub i64 %4, 1, !dbg !3519
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3519
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3519

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub4 = sub i64 %6, 1, !dbg !3519
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3519
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3519

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub6 = sub i64 %8, 1, !dbg !3519
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3519
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3519

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3519

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub9 = sub i64 %9, 1, !dbg !3519
  %and = and i64 %sub9, -9223372036854775808, !dbg !3519
  %tobool10 = icmp ne i64 %and, 0, !dbg !3519
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3519

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3519

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub13 = sub i64 %10, 1, !dbg !3519
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3519
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3519
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3519

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3519

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub18 = sub i64 %11, 1, !dbg !3519
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3519
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3519
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3519

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3519

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub23 = sub i64 %12, 1, !dbg !3519
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3519
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3519
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3519

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3519

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub28 = sub i64 %13, 1, !dbg !3519
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3519
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3519
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3519

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3519

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub33 = sub i64 %14, 1, !dbg !3519
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3519
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3519
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3519

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3519

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub38 = sub i64 %15, 1, !dbg !3519
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3519
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3519
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3519

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3519

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub43 = sub i64 %16, 1, !dbg !3519
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3519
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3519
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3519

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3519

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub48 = sub i64 %17, 1, !dbg !3519
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3519
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3519
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3519

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3519

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub53 = sub i64 %18, 1, !dbg !3519
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3519
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3519
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3519

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3519

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub58 = sub i64 %19, 1, !dbg !3519
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3519
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3519
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3519

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3519

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub63 = sub i64 %20, 1, !dbg !3519
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3519
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3519
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3519

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3519

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub68 = sub i64 %21, 1, !dbg !3519
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3519
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3519
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3519

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3519

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub73 = sub i64 %22, 1, !dbg !3519
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3519
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3519
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3519

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3519

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub78 = sub i64 %23, 1, !dbg !3519
  %and79 = and i64 %sub78, 562949953421312, !dbg !3519
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3519
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3519

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3519

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub83 = sub i64 %24, 1, !dbg !3519
  %and84 = and i64 %sub83, 281474976710656, !dbg !3519
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3519
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3519

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3519

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub88 = sub i64 %25, 1, !dbg !3519
  %and89 = and i64 %sub88, 140737488355328, !dbg !3519
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3519
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3519

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3519

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub93 = sub i64 %26, 1, !dbg !3519
  %and94 = and i64 %sub93, 70368744177664, !dbg !3519
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3519
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3519

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3519

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub98 = sub i64 %27, 1, !dbg !3519
  %and99 = and i64 %sub98, 35184372088832, !dbg !3519
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3519
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3519

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3519

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub103 = sub i64 %28, 1, !dbg !3519
  %and104 = and i64 %sub103, 17592186044416, !dbg !3519
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3519
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3519

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3519

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub108 = sub i64 %29, 1, !dbg !3519
  %and109 = and i64 %sub108, 8796093022208, !dbg !3519
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3519
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3519

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3519

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub113 = sub i64 %30, 1, !dbg !3519
  %and114 = and i64 %sub113, 4398046511104, !dbg !3519
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3519
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3519

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3519

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub118 = sub i64 %31, 1, !dbg !3519
  %and119 = and i64 %sub118, 2199023255552, !dbg !3519
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3519
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3519

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3519

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub123 = sub i64 %32, 1, !dbg !3519
  %and124 = and i64 %sub123, 1099511627776, !dbg !3519
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3519
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3519

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3519

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub128 = sub i64 %33, 1, !dbg !3519
  %and129 = and i64 %sub128, 549755813888, !dbg !3519
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3519
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3519

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3519

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub133 = sub i64 %34, 1, !dbg !3519
  %and134 = and i64 %sub133, 274877906944, !dbg !3519
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3519
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3519

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3519

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub138 = sub i64 %35, 1, !dbg !3519
  %and139 = and i64 %sub138, 137438953472, !dbg !3519
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3519
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3519

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3519

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub143 = sub i64 %36, 1, !dbg !3519
  %and144 = and i64 %sub143, 68719476736, !dbg !3519
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3519
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3519

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3519

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub148 = sub i64 %37, 1, !dbg !3519
  %and149 = and i64 %sub148, 34359738368, !dbg !3519
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3519
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3519

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3519

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub153 = sub i64 %38, 1, !dbg !3519
  %and154 = and i64 %sub153, 17179869184, !dbg !3519
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3519
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3519

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3519

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub158 = sub i64 %39, 1, !dbg !3519
  %and159 = and i64 %sub158, 8589934592, !dbg !3519
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3519
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3519

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3519

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub163 = sub i64 %40, 1, !dbg !3519
  %and164 = and i64 %sub163, 4294967296, !dbg !3519
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3519
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3519

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3519

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub168 = sub i64 %41, 1, !dbg !3519
  %and169 = and i64 %sub168, 2147483648, !dbg !3519
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3519
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3519

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3519

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub173 = sub i64 %42, 1, !dbg !3519
  %and174 = and i64 %sub173, 1073741824, !dbg !3519
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3519
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3519

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3519

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub178 = sub i64 %43, 1, !dbg !3519
  %and179 = and i64 %sub178, 536870912, !dbg !3519
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3519
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3519

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3519

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub183 = sub i64 %44, 1, !dbg !3519
  %and184 = and i64 %sub183, 268435456, !dbg !3519
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3519
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3519

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3519

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub188 = sub i64 %45, 1, !dbg !3519
  %and189 = and i64 %sub188, 134217728, !dbg !3519
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3519
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3519

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3519

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub193 = sub i64 %46, 1, !dbg !3519
  %and194 = and i64 %sub193, 67108864, !dbg !3519
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3519
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3519

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3519

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub198 = sub i64 %47, 1, !dbg !3519
  %and199 = and i64 %sub198, 33554432, !dbg !3519
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3519
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3519

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3519

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub203 = sub i64 %48, 1, !dbg !3519
  %and204 = and i64 %sub203, 16777216, !dbg !3519
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3519
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3519

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3519

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub208 = sub i64 %49, 1, !dbg !3519
  %and209 = and i64 %sub208, 8388608, !dbg !3519
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3519
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3519

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3519

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub213 = sub i64 %50, 1, !dbg !3519
  %and214 = and i64 %sub213, 4194304, !dbg !3519
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3519
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3519

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3519

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub218 = sub i64 %51, 1, !dbg !3519
  %and219 = and i64 %sub218, 2097152, !dbg !3519
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3519
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3519

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3519

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub223 = sub i64 %52, 1, !dbg !3519
  %and224 = and i64 %sub223, 1048576, !dbg !3519
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3519
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3519

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3519

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub228 = sub i64 %53, 1, !dbg !3519
  %and229 = and i64 %sub228, 524288, !dbg !3519
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3519
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3519

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3519

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub233 = sub i64 %54, 1, !dbg !3519
  %and234 = and i64 %sub233, 262144, !dbg !3519
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3519
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3519

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3519

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub238 = sub i64 %55, 1, !dbg !3519
  %and239 = and i64 %sub238, 131072, !dbg !3519
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3519
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3519

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3519

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub243 = sub i64 %56, 1, !dbg !3519
  %and244 = and i64 %sub243, 65536, !dbg !3519
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3519
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3519

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3519

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub248 = sub i64 %57, 1, !dbg !3519
  %and249 = and i64 %sub248, 32768, !dbg !3519
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3519
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3519

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3519

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub253 = sub i64 %58, 1, !dbg !3519
  %and254 = and i64 %sub253, 16384, !dbg !3519
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3519
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3519

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3519

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub258 = sub i64 %59, 1, !dbg !3519
  %and259 = and i64 %sub258, 8192, !dbg !3519
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3519
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3519

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3519

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub263 = sub i64 %60, 1, !dbg !3519
  %and264 = and i64 %sub263, 4096, !dbg !3519
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3519
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3519

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3519

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub268 = sub i64 %61, 1, !dbg !3519
  %and269 = and i64 %sub268, 2048, !dbg !3519
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3519
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3519

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3519

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub273 = sub i64 %62, 1, !dbg !3519
  %and274 = and i64 %sub273, 1024, !dbg !3519
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3519
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3519

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3519

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub278 = sub i64 %63, 1, !dbg !3519
  %and279 = and i64 %sub278, 512, !dbg !3519
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3519
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3519

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3519

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub283 = sub i64 %64, 1, !dbg !3519
  %and284 = and i64 %sub283, 256, !dbg !3519
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3519
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3519

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3519

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub288 = sub i64 %65, 1, !dbg !3519
  %and289 = and i64 %sub288, 128, !dbg !3519
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3519
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3519

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3519

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub293 = sub i64 %66, 1, !dbg !3519
  %and294 = and i64 %sub293, 64, !dbg !3519
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3519
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3519

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3519

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub298 = sub i64 %67, 1, !dbg !3519
  %and299 = and i64 %sub298, 32, !dbg !3519
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3519
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3519

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3519

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub303 = sub i64 %68, 1, !dbg !3519
  %and304 = and i64 %sub303, 16, !dbg !3519
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3519
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3519

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3519

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub308 = sub i64 %69, 1, !dbg !3519
  %and309 = and i64 %sub308, 8, !dbg !3519
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3519
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3519

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3519

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub313 = sub i64 %70, 1, !dbg !3519
  %and314 = and i64 %sub313, 4, !dbg !3519
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3519
  %71 = zext i1 %tobool315 to i64, !dbg !3519
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3519
  br label %cond.end, !dbg !3519

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3519
  br label %cond.end317, !dbg !3519

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3519
  br label %cond.end319, !dbg !3519

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3519
  br label %cond.end321, !dbg !3519

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3519
  br label %cond.end323, !dbg !3519

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3519
  br label %cond.end325, !dbg !3519

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3519
  br label %cond.end327, !dbg !3519

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3519
  br label %cond.end329, !dbg !3519

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3519
  br label %cond.end331, !dbg !3519

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3519
  br label %cond.end333, !dbg !3519

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3519
  br label %cond.end335, !dbg !3519

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3519
  br label %cond.end337, !dbg !3519

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3519
  br label %cond.end339, !dbg !3519

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3519
  br label %cond.end341, !dbg !3519

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3519
  br label %cond.end343, !dbg !3519

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3519
  br label %cond.end345, !dbg !3519

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3519
  br label %cond.end347, !dbg !3519

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3519
  br label %cond.end349, !dbg !3519

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3519
  br label %cond.end351, !dbg !3519

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3519
  br label %cond.end353, !dbg !3519

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3519
  br label %cond.end355, !dbg !3519

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3519
  br label %cond.end357, !dbg !3519

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3519
  br label %cond.end359, !dbg !3519

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3519
  br label %cond.end361, !dbg !3519

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3519
  br label %cond.end363, !dbg !3519

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3519
  br label %cond.end365, !dbg !3519

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3519
  br label %cond.end367, !dbg !3519

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3519
  br label %cond.end369, !dbg !3519

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3519
  br label %cond.end371, !dbg !3519

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3519
  br label %cond.end373, !dbg !3519

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3519
  br label %cond.end375, !dbg !3519

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3519
  br label %cond.end377, !dbg !3519

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3519
  br label %cond.end379, !dbg !3519

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3519
  br label %cond.end381, !dbg !3519

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3519
  br label %cond.end383, !dbg !3519

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3519
  br label %cond.end385, !dbg !3519

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3519
  br label %cond.end387, !dbg !3519

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3519
  br label %cond.end389, !dbg !3519

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3519
  br label %cond.end391, !dbg !3519

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3519
  br label %cond.end393, !dbg !3519

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3519
  br label %cond.end395, !dbg !3519

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3519
  br label %cond.end397, !dbg !3519

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3519
  br label %cond.end399, !dbg !3519

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3519
  br label %cond.end401, !dbg !3519

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3519
  br label %cond.end403, !dbg !3519

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3519
  br label %cond.end405, !dbg !3519

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3519
  br label %cond.end407, !dbg !3519

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3519
  br label %cond.end409, !dbg !3519

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3519
  br label %cond.end411, !dbg !3519

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3519
  br label %cond.end413, !dbg !3519

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3519
  br label %cond.end415, !dbg !3519

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3519
  br label %cond.end417, !dbg !3519

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3519
  br label %cond.end419, !dbg !3519

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3519
  br label %cond.end421, !dbg !3519

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3519
  br label %cond.end423, !dbg !3519

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3519
  br label %cond.end425, !dbg !3519

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3519
  br label %cond.end427, !dbg !3519

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3519
  br label %cond.end429, !dbg !3519

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3519
  br label %cond.end431, !dbg !3519

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3519
  br label %cond.end433, !dbg !3519

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3519
  br label %cond.end435, !dbg !3519

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3519
  br label %cond.end437, !dbg !3519

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3519
  br label %cond.end440, !dbg !3519

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3519

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3519
  br label %cond.end444, !dbg !3519

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3519
  %sub443 = sub i64 %72, 1, !dbg !3519
  %call = call i32 @__ilog2_u64(i64 %sub443) #12, !dbg !3519
  br label %cond.end444, !dbg !3519

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3519
  %sub446 = sub i32 %cond445, 12, !dbg !3520
  %add = add i32 %sub446, 1, !dbg !3521
  store i32 %add, i32* %retval, align 4, !dbg !3522
  br label %return, !dbg !3522

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3523
  %dec = add i64 %73, -1, !dbg !3523
  store i64 %dec, i64* %size.addr, align 8, !dbg !3523
  %74 = load i64, i64* %size.addr, align 8, !dbg !3524
  %shr = lshr i64 %74, 12, !dbg !3524
  store i64 %shr, i64* %size.addr, align 8, !dbg !3524
  %75 = load i64, i64* %size.addr, align 8, !dbg !3525
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3502
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3526
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3527
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3526, !srcloc !3528
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3526
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3529
  %add.i = add i32 %79, 1, !dbg !3530
  store i32 %add.i, i32* %retval, align 4, !dbg !3531
  br label %return, !dbg !3531

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3532
  ret i32 %80, !dbg !3532
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3533 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3495, metadata !DIExpression()), !dbg !3537
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3501, metadata !DIExpression()), !dbg !3539
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3540, metadata !DIExpression()), !dbg !3541
  %0 = load i64, i64* %n.addr, align 8, !dbg !3542
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3539
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3543
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3544
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3543, !srcloc !3528
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3543
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3545
  %add.i = add i32 %4, 1, !dbg !3546
  %sub = sub i32 %add.i, 1, !dbg !3547
  ret i32 %sub, !dbg !3548
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3549 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3558, metadata !DIExpression()), !dbg !3559
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3560
  ret i8* %0, !dbg !3561
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind readonly }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind readnone }
attributes #13 = { noredzone nounwind }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !94, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/mtd/nand/raw/nand_jedec.c", directory: "/home/lizy2001/genbc/linux")
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
!94 = !{!95, !97, !103, !105, !107, !108, !109}
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
!110 = !{i32 7, !"Dwarf Version", i32 4}
!111 = !{i32 2, !"Debug Info Version", i32 3}
!112 = !{i32 1, !"wchar_size", i32 2}
!113 = !{i32 1, !"Code Model", i32 2}
!114 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!115 = distinct !DISubprogram(name: "nand_jedec_detect", scope: !1, file: !1, line: 24, type: !116, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !380)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !119}
!118 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !72, line: 1096, size: 16704, elements: !121)
!121 = !{!122, !2410, !2416, !2440, !2533, !2603, !2711, !2712, !2713, !2714, !2715, !2716, !2717, !2718, !2734, !2735, !2736, !2737, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2749, !2750, !2751, !2752, !2753, !2754, !2756, !2806}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !120, file: !72, line: 1097, baseType: !123, size: 11200)
!123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !49, line: 319, size: 11200, elements: !124)
!124 = !{!125, !2303, !2315, !2385, !2390, !2394}
!125 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !123, file: !49, line: 320, baseType: !126, size: 9664)
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !127, line: 235, size: 9664, elements: !128)
!127 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!128 = !{!129, !131, !134, !139, !140, !141, !142, !143, !144, !145, !146, !147, !148, !149, !153, !154, !170, !191, !192, !193, !194, !204, !214, !230, !234, !239, !245, !246, !263, !264, !275, !276, !277, !278, !279, !280, !291, !295, !299, !300, !301, !305, !306, !307, !308, !312, !313, !314, !315, !316, !319, !331, !338, !339, !340, !344, !2273, !2274, !2282, !2286, !2287, !2288}
!129 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !126, file: !127, line: 236, baseType: !130, size: 8)
!130 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !96, line: 79, baseType: !102)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !126, file: !127, line: 237, baseType: !132, size: 32, offset: 32)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !96, line: 104, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !99, line: 21, baseType: !107)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !126, file: !127, line: 238, baseType: !135, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !96, line: 107, baseType: !136)
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !99, line: 23, baseType: !137)
!137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !101, line: 31, baseType: !138)
!138 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !126, file: !127, line: 244, baseType: !132, size: 32, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !126, file: !127, line: 252, baseType: !132, size: 32, offset: 160)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !126, file: !127, line: 263, baseType: !132, size: 32, offset: 192)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !126, file: !127, line: 265, baseType: !132, size: 32, offset: 224)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !126, file: !127, line: 266, baseType: !132, size: 32, offset: 256)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !126, file: !127, line: 272, baseType: !5, size: 32, offset: 288)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !126, file: !127, line: 273, baseType: !5, size: 32, offset: 320)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !126, file: !127, line: 275, baseType: !5, size: 32, offset: 352)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !126, file: !127, line: 276, baseType: !5, size: 32, offset: 384)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !126, file: !127, line: 285, baseType: !5, size: 32, offset: 416)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !126, file: !127, line: 288, baseType: !150, size: 64, offset: 448)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!153 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !126, file: !127, line: 289, baseType: !118, size: 32, offset: 512)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !126, file: !127, line: 292, baseType: !155, size: 64, offset: 576)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !127, line: 101, size: 128, elements: !158)
!158 = !{!159, !169}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !157, file: !127, line: 102, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!118, !163, !118, !164}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !127, line: 87, size: 64, elements: !166)
!166 = !{!167, !168}
!167 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !165, file: !127, line: 88, baseType: !133, size: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !165, file: !127, line: 89, baseType: !133, size: 32, offset: 32)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !157, file: !127, line: 104, baseType: !160, size: 64, offset: 64)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !126, file: !127, line: 295, baseType: !171, size: 64, offset: 640)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !127, line: 176, size: 192, elements: !174)
!174 = !{!175, !176, !185}
!175 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !173, file: !127, line: 177, baseType: !118, size: 32)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !173, file: !127, line: 178, baseType: !177, size: 64, offset: 64)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DISubroutineType(types: !179)
!179 = !{!118, !163, !118, !180}
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !181, size: 64)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !127, line: 138, size: 64, elements: !182)
!182 = !{!183, !184}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !181, file: !127, line: 139, baseType: !118, size: 32)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !181, file: !127, line: 140, baseType: !118, size: 32, offset: 32)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !173, file: !127, line: 180, baseType: !186, size: 64, offset: 128)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DISubroutineType(types: !188)
!188 = !{!118, !163, !189}
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !126, file: !127, line: 298, baseType: !5, size: 32, offset: 704)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !126, file: !127, line: 301, baseType: !5, size: 32, offset: 736)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !126, file: !127, line: 306, baseType: !118, size: 32, offset: 768)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !126, file: !127, line: 307, baseType: !195, size: 64, offset: 832)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !127, line: 36, size: 192, elements: !197)
!197 = !{!198, !199, !200, !201}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !196, file: !127, line: 37, baseType: !135, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !196, file: !127, line: 38, baseType: !132, size: 32, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !196, file: !127, line: 39, baseType: !132, size: 32, offset: 96)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !196, file: !127, line: 40, baseType: !202, size: 64, offset: 128)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !126, file: !127, line: 313, baseType: !205, size: 64, offset: 896)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!118, !163, !208}
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !127, line: 30, size: 192, elements: !210)
!210 = !{!211, !212, !213}
!211 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !209, file: !127, line: 31, baseType: !135, size: 64)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !209, file: !127, line: 32, baseType: !135, size: 64, offset: 64)
!213 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !209, file: !127, line: 33, baseType: !135, size: 64, offset: 128)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !126, file: !127, line: 314, baseType: !215, size: 64, offset: 960)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{!118, !163, !218, !222, !225, !226, !227}
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !96, line: 46, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !220, line: 88, baseType: !221)
!220 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!222 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !96, line: 55, baseType: !223)
!223 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !220, line: 72, baseType: !224)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !220, line: 16, baseType: !203)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !96, line: 158, baseType: !229)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !96, line: 153, baseType: !136)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !126, file: !127, line: 316, baseType: !231, size: 64, offset: 1024)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!118, !163, !218, !222}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !126, file: !127, line: 317, baseType: !235, size: 64, offset: 1088)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!118, !163, !218, !222, !225, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !126, file: !127, line: 319, baseType: !240, size: 64, offset: 1152)
!240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!241 = !DISubroutineType(types: !242)
!242 = !{!118, !163, !218, !222, !225, !243}
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !130)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !126, file: !127, line: 321, baseType: !240, size: 64, offset: 1216)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !126, file: !127, line: 323, baseType: !247, size: 64, offset: 1280)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DISubroutineType(types: !249)
!249 = !{!118, !163, !218, !250}
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !127, line: 64, size: 512, elements: !252)
!252 = !{!253, !254, !255, !256, !257, !258, !259, !262}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !251, file: !127, line: 65, baseType: !5, size: 32)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !251, file: !127, line: 66, baseType: !222, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !251, file: !127, line: 67, baseType: !222, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !251, file: !127, line: 68, baseType: !222, size: 64, offset: 192)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !251, file: !127, line: 69, baseType: !222, size: 64, offset: 256)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !251, file: !127, line: 70, baseType: !132, size: 32, offset: 320)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !251, file: !127, line: 71, baseType: !260, size: 64, offset: 384)
!260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !261, size: 64)
!261 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !96, line: 102, baseType: !98)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !251, file: !127, line: 72, baseType: !260, size: 64, offset: 448)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !126, file: !127, line: 325, baseType: !247, size: 64, offset: 1344)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !126, file: !127, line: 327, baseType: !265, size: 64, offset: 1408)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!118, !163, !222, !225, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !269, size: 64)
!269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !270, line: 146, size: 96, elements: !271)
!270 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!271 = !{!272, !273, !274}
!272 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !269, file: !270, line: 147, baseType: !107, size: 32)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !269, file: !270, line: 148, baseType: !107, size: 32, offset: 32)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !269, file: !270, line: 149, baseType: !107, size: 32, offset: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !126, file: !127, line: 329, baseType: !235, size: 64, offset: 1472)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !126, file: !127, line: 331, baseType: !265, size: 64, offset: 1536)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !126, file: !127, line: 333, baseType: !235, size: 64, offset: 1600)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !126, file: !127, line: 335, baseType: !235, size: 64, offset: 1664)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !126, file: !127, line: 337, baseType: !231, size: 64, offset: 1728)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !126, file: !127, line: 339, baseType: !281, size: 64, offset: 1792)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{!118, !163, !284, !203, !218, !225}
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !286)
!286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !287, line: 15, size: 128, elements: !288)
!287 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!288 = !{!289, !290}
!289 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !286, file: !287, line: 16, baseType: !109, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !286, file: !287, line: 17, baseType: !222, size: 64, offset: 64)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !126, file: !127, line: 341, baseType: !292, size: 64, offset: 1856)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{null, !163}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !126, file: !127, line: 342, baseType: !296, size: 64, offset: 1920)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!118, !163, !218, !135}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !126, file: !127, line: 343, baseType: !296, size: 64, offset: 1984)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !126, file: !127, line: 344, baseType: !296, size: 64, offset: 2048)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !126, file: !127, line: 345, baseType: !302, size: 64, offset: 2112)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !303, size: 64)
!303 = !DISubroutineType(types: !304)
!304 = !{!118, !163, !218}
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !126, file: !127, line: 346, baseType: !302, size: 64, offset: 2176)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !126, file: !127, line: 347, baseType: !302, size: 64, offset: 2240)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !126, file: !127, line: 348, baseType: !231, size: 64, offset: 2304)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !126, file: !127, line: 349, baseType: !309, size: 64, offset: 2368)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!118, !163}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !126, file: !127, line: 350, baseType: !292, size: 64, offset: 2432)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !126, file: !127, line: 351, baseType: !292, size: 64, offset: 2496)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !126, file: !127, line: 356, baseType: !309, size: 64, offset: 2560)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !126, file: !127, line: 357, baseType: !292, size: 64, offset: 2624)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !126, file: !127, line: 363, baseType: !317, size: 8, offset: 2688)
!317 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !96, line: 30, baseType: !318)
!318 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !126, file: !127, line: 365, baseType: !320, size: 192, offset: 2752)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !321, line: 54, size: 192, elements: !322)
!321 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!322 = !{!323, !329, !330}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !320, file: !321, line: 55, baseType: !324, size: 64)
!324 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !321, line: 51, baseType: !325)
!325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !326, size: 64)
!326 = !DISubroutineType(types: !327)
!327 = !{!118, !328, !203, !109}
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !320, file: !321, line: 56, baseType: !328, size: 64, offset: 64)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !320, file: !321, line: 57, baseType: !118, size: 32, offset: 128)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !126, file: !127, line: 368, baseType: !332, size: 128, offset: 2944)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !270, line: 250, size: 128, elements: !333)
!333 = !{!334, !335, !336, !337}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !332, file: !270, line: 251, baseType: !107, size: 32)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !332, file: !270, line: 252, baseType: !107, size: 32, offset: 32)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !332, file: !270, line: 253, baseType: !107, size: 32, offset: 64)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !332, file: !270, line: 254, baseType: !107, size: 32, offset: 96)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !126, file: !127, line: 370, baseType: !118, size: 32, offset: 3072)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !126, file: !127, line: 372, baseType: !109, size: 64, offset: 3136)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !126, file: !127, line: 374, baseType: !341, size: 64, offset: 3200)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !343, line: 76, flags: DIFlagFwdDecl)
!343 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !126, file: !127, line: 375, baseType: !345, size: 5568, offset: 3264)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !346)
!346 = !{!347, !1799, !1801, !1804, !1805, !1856, !1950, !1951, !1952, !1953, !1954, !1963, !2068, !2081, !2084, !2085, !2089, !2091, !2092, !2093, !2097, !2103, !2104, !2107, !2222, !2223, !2226, !2227, !2228, !2229, !2261, !2262, !2263, !2266, !2269, !2270, !2271, !2272}
!347 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !345, file: !28, line: 462, baseType: !348, size: 512)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !349, line: 64, size: 512, elements: !350)
!349 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !352, !358, !360, !420, !1637, !1789, !1794, !1795, !1796, !1797, !1798}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !348, file: !349, line: 65, baseType: !150, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !348, file: !349, line: 66, baseType: !353, size: 128, offset: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !96, line: 178, size: 128, elements: !354)
!354 = !{!355, !357}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !353, file: !96, line: 179, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !353, file: !96, line: 179, baseType: !356, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !348, file: !349, line: 67, baseType: !359, size: 64, offset: 192)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !348, file: !349, line: 68, baseType: !361, size: 64, offset: 256)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !349, line: 192, size: 704, elements: !363)
!363 = !{!364, !365, !381, !382}
!364 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !362, file: !349, line: 193, baseType: !353, size: 128)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !362, file: !349, line: 194, baseType: !366, offset: 128)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !367, line: 83, baseType: !368)
!367 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !367, line: 71, elements: !369)
!369 = !{!370}
!370 = !DIDerivedType(tag: DW_TAG_member, scope: !368, file: !367, line: 72, baseType: !371)
!371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !368, file: !367, line: 72, elements: !372)
!372 = !{!373}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !371, file: !367, line: 73, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !367, line: 20, elements: !375)
!375 = !{!376}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !374, file: !367, line: 21, baseType: !377)
!377 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !378, line: 25, baseType: !379)
!378 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!379 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 25, elements: !380)
!380 = !{}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !362, file: !349, line: 195, baseType: !348, size: 512, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !362, file: !349, line: 196, baseType: !383, size: 64, offset: 640)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !385)
!385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !349, line: 156, size: 192, elements: !386)
!386 = !{!387, !392, !397}
!387 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !385, file: !349, line: 157, baseType: !388, size: 64)
!388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = !DISubroutineType(types: !391)
!391 = !{!118, !361, !359}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !385, file: !349, line: 158, baseType: !393, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !394)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DISubroutineType(types: !396)
!396 = !{!150, !361, !359}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !385, file: !349, line: 159, baseType: !398, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !399)
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DISubroutineType(types: !401)
!401 = !{!118, !361, !359, !402}
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !349, line: 148, size: 20736, elements: !404)
!404 = !{!405, !410, !414, !415, !419}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !403, file: !349, line: 149, baseType: !406, size: 192)
!406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 192, elements: !408)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!408 = !{!409}
!409 = !DISubrange(count: 3)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !403, file: !349, line: 150, baseType: !411, size: 4096, offset: 192)
!411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !407, size: 4096, elements: !412)
!412 = !{!413}
!413 = !DISubrange(count: 64)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !403, file: !349, line: 151, baseType: !118, size: 32, offset: 4288)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !403, file: !349, line: 152, baseType: !416, size: 16384, offset: 4320)
!416 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 16384, elements: !417)
!417 = !{!418}
!418 = !DISubrange(count: 2048)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !403, file: !349, line: 153, baseType: !118, size: 32, offset: 20704)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !348, file: !349, line: 69, baseType: !421, size: 64, offset: 320)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !349, line: 138, size: 448, elements: !423)
!423 = !{!424, !428, !452, !454, !1582, !1615, !1619}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !422, file: !349, line: 139, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !426, size: 64)
!426 = !DISubroutineType(types: !427)
!427 = !{null, !359}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !422, file: !349, line: 140, baseType: !429, size: 64, offset: 64)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !432, line: 230, size: 128, elements: !433)
!432 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!433 = !{!434, !448}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !431, file: !432, line: 231, baseType: !435, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!438, !359, !442, !407}
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !96, line: 60, baseType: !439)
!439 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !220, line: 73, baseType: !440)
!440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !220, line: 15, baseType: !441)
!441 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !432, line: 30, size: 128, elements: !444)
!444 = !{!445, !446}
!445 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !443, file: !432, line: 31, baseType: !150, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !443, file: !432, line: 32, baseType: !447, size: 16, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !96, line: 19, baseType: !104)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !431, file: !432, line: 232, baseType: !449, size: 64, offset: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{!438, !359, !442, !150, !222}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !422, file: !349, line: 141, baseType: !453, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !422, file: !349, line: 142, baseType: !455, size: 64, offset: 192)
!455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !456, size: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !432, line: 84, size: 320, elements: !459)
!459 = !{!460, !461, !465, !1579, !1580}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !458, file: !432, line: 85, baseType: !150, size: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !458, file: !432, line: 86, baseType: !462, size: 64, offset: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!447, !359, !442, !118}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !458, file: !432, line: 88, baseType: !466, size: 64, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!447, !359, !469, !118}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !432, line: 168, size: 448, elements: !471)
!471 = !{!472, !473, !474, !475, !482, !483}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !470, file: !432, line: 169, baseType: !443, size: 128)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !470, file: !432, line: 170, baseType: !222, size: 64, offset: 128)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !470, file: !432, line: 171, baseType: !109, size: 64, offset: 192)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !470, file: !432, line: 172, baseType: !476, size: 64, offset: 256)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!438, !479, !359, !469, !407, !218, !222}
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !481, line: 526, flags: DIFlagFwdDecl)
!481 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!482 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !470, file: !432, line: 174, baseType: !476, size: 64, offset: 320)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !470, file: !432, line: 176, baseType: !484, size: 64, offset: 384)
!484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !485, size: 64)
!485 = !DISubroutineType(types: !486)
!486 = !{!118, !479, !359, !469, !487}
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !489, line: 305, size: 1472, elements: !490)
!489 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!490 = !{!491, !492, !493, !494, !495, !503, !504, !1553, !1559, !1560, !1565, !1566, !1569, !1573, !1574, !1575, !1576, !1577}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !488, file: !489, line: 308, baseType: !203, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !488, file: !489, line: 309, baseType: !203, size: 64, offset: 64)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !488, file: !489, line: 313, baseType: !487, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !488, file: !489, line: 313, baseType: !487, size: 64, offset: 192)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !488, file: !489, line: 315, baseType: !496, size: 192, align: 64, offset: 256)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !497, line: 24, size: 192, align: 64, elements: !498)
!497 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!498 = !{!499, !500, !502}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !496, file: !497, line: 25, baseType: !203, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !496, file: !497, line: 26, baseType: !501, size: 64, offset: 64)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !496, file: !497, line: 27, baseType: !501, size: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !488, file: !489, line: 323, baseType: !203, size: 64, offset: 448)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !488, file: !489, line: 327, baseType: !505, size: 64, offset: 512)
!505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !506, size: 64)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !489, line: 388, size: 7296, elements: !507)
!507 = !{!508, !1549}
!508 = !DIDerivedType(tag: DW_TAG_member, scope: !506, file: !489, line: 389, baseType: !509, size: 7296)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !506, file: !489, line: 389, size: 7296, elements: !510)
!510 = !{!511, !512, !516, !517, !521, !522, !523, !524, !525, !533, !538, !539, !540, !541, !550, !551, !552, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !587, !595, !598, !629, !630, !1520, !1521, !1524, !1527, !1528, !1531, !1532, !1533, !1536, !1548}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !509, file: !489, line: 390, baseType: !487, size: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !509, file: !489, line: 391, baseType: !513, size: 64, offset: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !497, line: 31, size: 64, elements: !514)
!514 = !{!515}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !513, file: !497, line: 32, baseType: !501, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !509, file: !489, line: 392, baseType: !136, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !509, file: !489, line: 394, baseType: !518, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !519, size: 64)
!519 = !DISubroutineType(types: !520)
!520 = !{!203, !479, !203, !203, !203, !203}
!521 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !509, file: !489, line: 398, baseType: !203, size: 64, offset: 256)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !509, file: !489, line: 399, baseType: !203, size: 64, offset: 320)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !509, file: !489, line: 405, baseType: !203, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !509, file: !489, line: 406, baseType: !203, size: 64, offset: 448)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !509, file: !489, line: 407, baseType: !526, size: 64, offset: 512)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !481, line: 286, baseType: !528)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !481, line: 286, size: 64, elements: !529)
!529 = !{!530}
!530 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !528, file: !481, line: 286, baseType: !531, size: 64)
!531 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !532, line: 18, baseType: !203)
!532 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!533 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !509, file: !489, line: 416, baseType: !534, size: 32, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !96, line: 168, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 166, size: 32, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !535, file: !96, line: 167, baseType: !118, size: 32)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !509, file: !489, line: 428, baseType: !534, size: 32, offset: 608)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !509, file: !489, line: 437, baseType: !534, size: 32, offset: 640)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !509, file: !489, line: 447, baseType: !534, size: 32, offset: 672)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !509, file: !489, line: 450, baseType: !542, size: 64, offset: 704)
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !543, line: 13, baseType: !544)
!543 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !96, line: 175, baseType: !545)
!545 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !96, line: 173, size: 64, elements: !546)
!546 = !{!547}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !545, file: !96, line: 174, baseType: !548, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !99, line: 22, baseType: !549)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !101, line: 30, baseType: !221)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !509, file: !489, line: 452, baseType: !118, size: 32, offset: 768)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !509, file: !489, line: 454, baseType: !366, offset: 800)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !509, file: !489, line: 457, baseType: !553, size: 256, offset: 832)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !554, line: 35, size: 256, elements: !555)
!554 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!555 = !{!556, !557, !558, !560}
!556 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !553, file: !554, line: 36, baseType: !542, size: 64)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !553, file: !554, line: 42, baseType: !542, size: 64, offset: 64)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !553, file: !554, line: 46, baseType: !559, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !367, line: 29, baseType: !374)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !553, file: !554, line: 47, baseType: !353, size: 128, offset: 128)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !509, file: !489, line: 459, baseType: !353, size: 128, offset: 1088)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !509, file: !489, line: 466, baseType: !203, size: 64, offset: 1216)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !509, file: !489, line: 467, baseType: !203, size: 64, offset: 1280)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !509, file: !489, line: 469, baseType: !203, size: 64, offset: 1344)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !509, file: !489, line: 470, baseType: !203, size: 64, offset: 1408)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !509, file: !489, line: 471, baseType: !544, size: 64, offset: 1472)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !509, file: !489, line: 472, baseType: !203, size: 64, offset: 1536)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !509, file: !489, line: 473, baseType: !203, size: 64, offset: 1600)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !509, file: !489, line: 474, baseType: !203, size: 64, offset: 1664)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !509, file: !489, line: 475, baseType: !203, size: 64, offset: 1728)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !509, file: !489, line: 477, baseType: !366, offset: 1792)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !509, file: !489, line: 478, baseType: !203, size: 64, offset: 1792)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !509, file: !489, line: 478, baseType: !203, size: 64, offset: 1856)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !509, file: !489, line: 478, baseType: !203, size: 64, offset: 1920)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !509, file: !489, line: 478, baseType: !203, size: 64, offset: 1984)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !509, file: !489, line: 479, baseType: !203, size: 64, offset: 2048)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !509, file: !489, line: 479, baseType: !203, size: 64, offset: 2112)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !509, file: !489, line: 479, baseType: !203, size: 64, offset: 2176)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !509, file: !489, line: 480, baseType: !203, size: 64, offset: 2240)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !509, file: !489, line: 480, baseType: !203, size: 64, offset: 2304)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !509, file: !489, line: 480, baseType: !203, size: 64, offset: 2368)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !509, file: !489, line: 480, baseType: !203, size: 64, offset: 2432)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !509, file: !489, line: 482, baseType: !584, size: 2816, offset: 2496)
!584 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 2816, elements: !585)
!585 = !{!586}
!586 = !DISubrange(count: 44)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !509, file: !489, line: 488, baseType: !588, size: 256, offset: 5312)
!588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !589, line: 60, size: 256, elements: !590)
!589 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!590 = !{!591}
!591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !588, file: !589, line: 61, baseType: !592, size: 256)
!592 = !DICompositeType(tag: DW_TAG_array_type, baseType: !542, size: 256, elements: !593)
!593 = !{!594}
!594 = !DISubrange(count: 4)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !509, file: !489, line: 490, baseType: !596, size: 64, offset: 5568)
!596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !597, size: 64)
!597 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !489, line: 490, flags: DIFlagFwdDecl)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !509, file: !489, line: 493, baseType: !599, size: 896, offset: 5632)
!599 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !600, line: 53, baseType: !601)
!600 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !600, line: 13, size: 896, elements: !602)
!602 = !{!603, !604, !605, !606, !609, !610, !617, !618, !622, !623, !625}
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !601, file: !600, line: 18, baseType: !136, size: 64)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !601, file: !600, line: 28, baseType: !544, size: 64, offset: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !601, file: !600, line: 31, baseType: !553, size: 256, offset: 128)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !601, file: !600, line: 32, baseType: !607, size: 64, offset: 384)
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !600, line: 32, flags: DIFlagFwdDecl)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !601, file: !600, line: 37, baseType: !104, size: 16, offset: 448)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !601, file: !600, line: 40, baseType: !611, size: 192, offset: 512)
!611 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !612, line: 53, size: 192, elements: !613)
!612 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!613 = !{!614, !615, !616}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !611, file: !612, line: 54, baseType: !542, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !611, file: !612, line: 55, baseType: !366, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !611, file: !612, line: 59, baseType: !353, size: 128, offset: 64)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !601, file: !600, line: 41, baseType: !109, size: 64, offset: 704)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !601, file: !600, line: 42, baseType: !619, size: 64, offset: 768)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !620, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !621)
!621 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !600, line: 42, flags: DIFlagFwdDecl)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !601, file: !600, line: 44, baseType: !534, size: 32, offset: 832)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !601, file: !600, line: 50, baseType: !624, size: 16, offset: 864)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !99, line: 19, baseType: !103)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !601, file: !600, line: 51, baseType: !626, size: 16, offset: 880)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !99, line: 18, baseType: !627)
!627 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !101, line: 23, baseType: !628)
!628 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !509, file: !489, line: 495, baseType: !203, size: 64, offset: 6528)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !509, file: !489, line: 497, baseType: !631, size: 64, offset: 6592)
!631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !632, size: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !489, line: 381, size: 384, elements: !633)
!633 = !{!634, !635, !1519}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !632, file: !489, line: 382, baseType: !534, size: 32)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !632, file: !489, line: 383, baseType: !636, size: 128, offset: 64)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !489, line: 376, size: 128, elements: !637)
!637 = !{!638, !1517}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !636, file: !489, line: 377, baseType: !639, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !640, size: 64)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !641, line: 640, size: 48640, elements: !642)
!641 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !649, !651, !652, !658, !659, !660, !661, !662, !663, !664, !665, !669, !687, !698, !790, !791, !792, !803, !804, !806, !807, !808, !809, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !829, !830, !888, !891, !892, !893, !894, !895, !896, !897, !898, !899, !900, !944, !946, !947, !948, !960, !962, !963, !964, !965, !966, !972, !973, !974, !975, !976, !977, !978, !990, !995, !999, !1000, !1001, !1004, !1008, !1011, !1014, !1017, !1020, !1023, !1026, !1029, !1035, !1036, !1037, !1043, !1044, !1045, !1046, !1047, !1056, !1057, !1058, !1059, !1060, !1065, !1066, !1067, !1070, !1071, !1074, !1077, !1080, !1083, !1086, !1089, !1090, !1170, !1173, !1176, !1177, !1180, !1181, !1182, !1188, !1189, !1190, !1203, !1204, !1205, !1215, !1220, !1223, !1321, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1340}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !640, file: !641, line: 646, baseType: !644, size: 128)
!644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !645, line: 56, size: 128, elements: !646)
!645 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!646 = !{!647, !648}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !644, file: !645, line: 57, baseType: !203, size: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !644, file: !645, line: 58, baseType: !133, size: 32, offset: 64)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !640, file: !641, line: 649, baseType: !650, size: 64, offset: 128)
!650 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !441)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !640, file: !641, line: 657, baseType: !109, size: 64, offset: 192)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !640, file: !641, line: 658, baseType: !653, size: 32, offset: 256)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !654, line: 113, baseType: !655)
!654 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !654, line: 111, size: 32, elements: !656)
!656 = !{!657}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !655, file: !654, line: 112, baseType: !534, size: 32)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !640, file: !641, line: 660, baseType: !5, size: 32, offset: 288)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !640, file: !641, line: 661, baseType: !5, size: 32, offset: 320)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !640, file: !641, line: 684, baseType: !118, size: 32, offset: 352)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !640, file: !641, line: 686, baseType: !118, size: 32, offset: 384)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !640, file: !641, line: 687, baseType: !118, size: 32, offset: 416)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !640, file: !641, line: 688, baseType: !118, size: 32, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !640, file: !641, line: 689, baseType: !5, size: 32, offset: 480)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !640, file: !641, line: 691, baseType: !666, size: 64, offset: 512)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !668)
!668 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !641, line: 691, flags: DIFlagFwdDecl)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !640, file: !641, line: 692, baseType: !670, size: 832, offset: 576)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !641, line: 451, size: 832, elements: !671)
!671 = !{!672, !677, !678, !679, !680, !681, !682, !683, !684, !685}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !670, file: !641, line: 453, baseType: !673, size: 128)
!673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !641, line: 325, size: 128, elements: !674)
!674 = !{!675, !676}
!675 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !673, file: !641, line: 326, baseType: !203, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !673, file: !641, line: 327, baseType: !133, size: 32, offset: 64)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !670, file: !641, line: 454, baseType: !496, size: 192, align: 64, offset: 128)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !670, file: !641, line: 455, baseType: !353, size: 128, offset: 320)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !670, file: !641, line: 456, baseType: !5, size: 32, offset: 448)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !670, file: !641, line: 458, baseType: !136, size: 64, offset: 512)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !670, file: !641, line: 459, baseType: !136, size: 64, offset: 576)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !670, file: !641, line: 460, baseType: !136, size: 64, offset: 640)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !670, file: !641, line: 461, baseType: !136, size: 64, offset: 704)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !670, file: !641, line: 463, baseType: !136, size: 64, offset: 768)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !670, file: !641, line: 465, baseType: !686, offset: 832)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !641, line: 415, elements: !380)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !640, file: !641, line: 693, baseType: !688, size: 384, offset: 1408)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !641, line: 489, size: 384, elements: !689)
!689 = !{!690, !691, !692, !693, !694, !695, !696}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !688, file: !641, line: 490, baseType: !353, size: 128)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !688, file: !641, line: 491, baseType: !203, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !688, file: !641, line: 492, baseType: !203, size: 64, offset: 192)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !688, file: !641, line: 493, baseType: !5, size: 32, offset: 256)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !688, file: !641, line: 494, baseType: !104, size: 16, offset: 288)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !688, file: !641, line: 495, baseType: !104, size: 16, offset: 304)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !688, file: !641, line: 497, baseType: !697, size: 64, offset: 320)
!697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !688, size: 64)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !640, file: !641, line: 697, baseType: !699, size: 1792, offset: 1792)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !641, line: 507, size: 1792, elements: !700)
!700 = !{!701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !787, !788}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !699, file: !641, line: 508, baseType: !496, size: 192, align: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !699, file: !641, line: 515, baseType: !136, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !699, file: !641, line: 516, baseType: !136, size: 64, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !699, file: !641, line: 517, baseType: !136, size: 64, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !699, file: !641, line: 518, baseType: !136, size: 64, offset: 384)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !699, file: !641, line: 519, baseType: !136, size: 64, offset: 448)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !699, file: !641, line: 526, baseType: !548, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !699, file: !641, line: 527, baseType: !136, size: 64, offset: 576)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !699, file: !641, line: 528, baseType: !5, size: 32, offset: 640)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !699, file: !641, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !699, file: !641, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !699, file: !641, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !699, file: !641, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !699, file: !641, line: 563, baseType: !715, size: 512, offset: 704)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !716)
!716 = !{!717, !725, !726, !731, !783, !784, !785, !786}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !715, file: !4, line: 119, baseType: !718, size: 256)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !719, line: 9, size: 256, elements: !720)
!719 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!720 = !{!721, !722}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !718, file: !719, line: 10, baseType: !496, size: 192, align: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !718, file: !719, line: 11, baseType: !723, size: 64, offset: 192)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !724, line: 29, baseType: !548)
!724 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!725 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !715, file: !4, line: 120, baseType: !723, size: 64, offset: 256)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !715, file: !4, line: 121, baseType: !727, size: 64, offset: 320)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = !DISubroutineType(types: !729)
!729 = !{!3, !730}
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !715, file: !4, line: 122, baseType: !732, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !733, size: 64)
!733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !734)
!734 = !{!735, !755, !756, !759, !769, !770, !778, !782}
!735 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !733, file: !4, line: 160, baseType: !736, size: 64)
!736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !737, size: 64)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !738)
!738 = !{!739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751}
!739 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !737, file: !4, line: 215, baseType: !559)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !737, file: !4, line: 216, baseType: !5, size: 32)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !737, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !737, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !737, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !737, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !737, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !737, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !737, file: !4, line: 233, baseType: !723, size: 64, offset: 128)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !737, file: !4, line: 234, baseType: !730, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !737, file: !4, line: 235, baseType: !723, size: 64, offset: 256)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !737, file: !4, line: 236, baseType: !730, size: 64, offset: 320)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !737, file: !4, line: 237, baseType: !752, size: 4096, offset: 512)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !733, size: 4096, elements: !753)
!753 = !{!754}
!754 = !DISubrange(count: 8)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !733, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !733, file: !4, line: 162, baseType: !757, size: 32, offset: 96)
!757 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !96, line: 27, baseType: !758)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !220, line: 96, baseType: !118)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !733, file: !4, line: 163, baseType: !760, size: 32, offset: 128)
!760 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !761, line: 276, baseType: !762)
!761 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !761, line: 276, size: 32, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !762, file: !761, line: 276, baseType: !765, size: 32)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !761, line: 70, baseType: !766)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !761, line: 65, size: 32, elements: !767)
!767 = !{!768}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !766, file: !761, line: 66, baseType: !5, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !733, file: !4, line: 164, baseType: !730, size: 64, offset: 192)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !733, file: !4, line: 165, baseType: !771, size: 128, offset: 256)
!771 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !719, line: 14, size: 128, elements: !772)
!772 = !{!773}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !771, file: !719, line: 15, baseType: !774, size: 128)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !497, line: 125, size: 128, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !774, file: !497, line: 126, baseType: !513, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !774, file: !497, line: 127, baseType: !501, size: 64, offset: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !733, file: !4, line: 166, baseType: !779, size: 64, offset: 384)
!779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !780, size: 64)
!780 = !DISubroutineType(types: !781)
!781 = !{!723}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !733, file: !4, line: 167, baseType: !723, size: 64, offset: 448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !715, file: !4, line: 123, baseType: !98, size: 8, offset: 448)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !715, file: !4, line: 124, baseType: !98, size: 8, offset: 456)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !715, file: !4, line: 125, baseType: !98, size: 8, offset: 464)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !715, file: !4, line: 126, baseType: !98, size: 8, offset: 472)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !699, file: !641, line: 572, baseType: !715, size: 512, offset: 1216)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !699, file: !641, line: 580, baseType: !789, size: 64, offset: 1728)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !699, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !640, file: !641, line: 721, baseType: !5, size: 32, offset: 3584)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !640, file: !641, line: 722, baseType: !118, size: 32, offset: 3616)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !640, file: !641, line: 723, baseType: !793, size: 64, offset: 3648)
!793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !794, size: 64)
!794 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !795)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !796, line: 17, baseType: !797)
!796 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!797 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !796, line: 17, size: 64, elements: !798)
!798 = !{!799}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !797, file: !796, line: 17, baseType: !800, size: 64)
!800 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 64, elements: !801)
!801 = !{!802}
!802 = !DISubrange(count: 1)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !640, file: !641, line: 724, baseType: !795, size: 64, offset: 3712)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !640, file: !641, line: 749, baseType: !805, offset: 3776)
!805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !641, line: 290, elements: !380)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !640, file: !641, line: 751, baseType: !353, size: 128, offset: 3776)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !640, file: !641, line: 757, baseType: !505, size: 64, offset: 3904)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !640, file: !641, line: 758, baseType: !505, size: 64, offset: 3968)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !640, file: !641, line: 761, baseType: !810, size: 320, offset: 4032)
!810 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !589, line: 34, size: 320, elements: !811)
!811 = !{!812, !813}
!812 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !810, file: !589, line: 35, baseType: !136, size: 64)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !810, file: !589, line: 36, baseType: !814, size: 256, offset: 64)
!814 = !DICompositeType(tag: DW_TAG_array_type, baseType: !487, size: 256, elements: !593)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !640, file: !641, line: 766, baseType: !118, size: 32, offset: 4352)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !640, file: !641, line: 767, baseType: !118, size: 32, offset: 4384)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !640, file: !641, line: 768, baseType: !118, size: 32, offset: 4416)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !640, file: !641, line: 770, baseType: !118, size: 32, offset: 4448)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !640, file: !641, line: 772, baseType: !203, size: 64, offset: 4480)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !640, file: !641, line: 775, baseType: !5, size: 32, offset: 4544)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !640, file: !641, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !640, file: !641, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !640, file: !641, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !640, file: !641, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !640, file: !641, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !640, file: !641, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !640, file: !641, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !640, file: !641, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !640, file: !641, line: 831, baseType: !203, size: 64, offset: 4672)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !640, file: !641, line: 833, baseType: !831, size: 384, offset: 4736)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !832)
!832 = !{!833, !838}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !831, file: !10, line: 26, baseType: !834, size: 64)
!834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!835 = !DISubroutineType(types: !836)
!836 = !{!441, !837}
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, scope: !831, file: !10, line: 27, baseType: !839, size: 320, offset: 64)
!839 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !831, file: !10, line: 27, size: 320, elements: !840)
!840 = !{!841, !851, !878}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !839, file: !10, line: 36, baseType: !842, size: 320)
!842 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !10, line: 29, size: 320, elements: !843)
!843 = !{!844, !846, !847, !848, !849, !850}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !842, file: !10, line: 30, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !842, file: !10, line: 31, baseType: !133, size: 32, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !842, file: !10, line: 32, baseType: !133, size: 32, offset: 96)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !842, file: !10, line: 33, baseType: !133, size: 32, offset: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !842, file: !10, line: 34, baseType: !136, size: 64, offset: 192)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !842, file: !10, line: 35, baseType: !845, size: 64, offset: 256)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !839, file: !10, line: 46, baseType: !852, size: 192)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !10, line: 38, size: 192, elements: !853)
!853 = !{!854, !855, !856, !877}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !852, file: !10, line: 39, baseType: !757, size: 32)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !852, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!856 = !DIDerivedType(tag: DW_TAG_member, scope: !852, file: !10, line: 41, baseType: !857, size: 64, offset: 64)
!857 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !852, file: !10, line: 41, size: 64, elements: !858)
!858 = !{!859, !867}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !857, file: !10, line: 42, baseType: !860, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !861, size: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !862, line: 7, size: 128, elements: !863)
!862 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!863 = !{!864, !866}
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !861, file: !862, line: 8, baseType: !865, size: 64)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !220, line: 93, baseType: !221)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !861, file: !862, line: 9, baseType: !221, size: 64, offset: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !857, file: !10, line: 43, baseType: !868, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !870, line: 7, size: 64, elements: !871)
!870 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!871 = !{!872, !876}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !869, file: !870, line: 8, baseType: !873, size: 32)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !870, line: 5, baseType: !874)
!874 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !99, line: 20, baseType: !875)
!875 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !101, line: 26, baseType: !118)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !869, file: !870, line: 9, baseType: !874, size: 32, offset: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !852, file: !10, line: 45, baseType: !136, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !839, file: !10, line: 54, baseType: !879, size: 256)
!879 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !839, file: !10, line: 48, size: 256, elements: !880)
!880 = !{!881, !884, !885, !886, !887}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !879, file: !10, line: 49, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !879, file: !10, line: 50, baseType: !118, size: 32, offset: 64)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !879, file: !10, line: 51, baseType: !118, size: 32, offset: 96)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !879, file: !10, line: 52, baseType: !203, size: 64, offset: 128)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !879, file: !10, line: 53, baseType: !203, size: 64, offset: 192)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !640, file: !641, line: 835, baseType: !889, size: 32, offset: 5120)
!889 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !96, line: 22, baseType: !890)
!890 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !220, line: 28, baseType: !118)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !640, file: !641, line: 836, baseType: !889, size: 32, offset: 5152)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !640, file: !641, line: 840, baseType: !203, size: 64, offset: 5184)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !640, file: !641, line: 849, baseType: !639, size: 64, offset: 5248)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !640, file: !641, line: 852, baseType: !639, size: 64, offset: 5312)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !640, file: !641, line: 857, baseType: !353, size: 128, offset: 5376)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !640, file: !641, line: 858, baseType: !353, size: 128, offset: 5504)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !640, file: !641, line: 859, baseType: !639, size: 64, offset: 5632)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !640, file: !641, line: 867, baseType: !353, size: 128, offset: 5696)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !640, file: !641, line: 868, baseType: !353, size: 128, offset: 5824)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !640, file: !641, line: 871, baseType: !901, size: 64, offset: 5952)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !903, line: 59, size: 768, elements: !904)
!903 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!904 = !{!905, !906, !907, !908, !919, !920, !927, !936}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !902, file: !903, line: 61, baseType: !653, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !902, file: !903, line: 62, baseType: !5, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !902, file: !903, line: 63, baseType: !366, offset: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !902, file: !903, line: 65, baseType: !909, size: 256, offset: 64)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !910, size: 256, elements: !593)
!910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !96, line: 182, size: 64, elements: !911)
!911 = !{!912}
!912 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !910, file: !96, line: 183, baseType: !913, size: 64)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !96, line: 186, size: 128, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !914, file: !96, line: 187, baseType: !913, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !914, file: !96, line: 187, baseType: !918, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !902, file: !903, line: 66, baseType: !910, size: 64, offset: 320)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !902, file: !903, line: 68, baseType: !921, size: 128, offset: 384)
!921 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !922, line: 40, baseType: !923)
!922 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !922, line: 36, size: 128, elements: !924)
!924 = !{!925, !926}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !923, file: !922, line: 37, baseType: !366)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !923, file: !922, line: 38, baseType: !353, size: 128)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !902, file: !903, line: 69, baseType: !928, size: 128, align: 64, offset: 512)
!928 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !96, line: 216, size: 128, align: 64, elements: !929)
!929 = !{!930, !932}
!930 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !928, file: !96, line: 217, baseType: !931, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !928, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !928, file: !96, line: 218, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DISubroutineType(types: !935)
!935 = !{null, !931}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !902, file: !903, line: 70, baseType: !937, size: 128, offset: 640)
!937 = !DICompositeType(tag: DW_TAG_array_type, baseType: !938, size: 128, elements: !801)
!938 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !903, line: 54, size: 128, elements: !939)
!939 = !{!940, !941}
!940 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !938, file: !903, line: 55, baseType: !118, size: 32)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !938, file: !903, line: 56, baseType: !942, size: 64, offset: 64)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !903, line: 56, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !640, file: !641, line: 872, baseType: !945, size: 512, offset: 6016)
!945 = !DICompositeType(tag: DW_TAG_array_type, baseType: !914, size: 512, elements: !593)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !640, file: !641, line: 873, baseType: !353, size: 128, offset: 6528)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !640, file: !641, line: 874, baseType: !353, size: 128, offset: 6656)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !640, file: !641, line: 876, baseType: !949, size: 64, offset: 6784)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !951, line: 26, size: 192, elements: !952)
!951 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!952 = !{!953, !954}
!953 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !950, file: !951, line: 27, baseType: !5, size: 32)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !950, file: !951, line: 28, baseType: !955, size: 128, offset: 64)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !956, line: 43, size: 128, elements: !957)
!956 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !955, file: !956, line: 44, baseType: !559)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !955, file: !956, line: 45, baseType: !353, size: 128)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !640, file: !641, line: 879, baseType: !961, size: 64, offset: 6848)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !640, file: !641, line: 882, baseType: !961, size: 64, offset: 6912)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !640, file: !641, line: 884, baseType: !136, size: 64, offset: 6976)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !640, file: !641, line: 885, baseType: !136, size: 64, offset: 7040)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !640, file: !641, line: 890, baseType: !136, size: 64, offset: 7104)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !640, file: !641, line: 891, baseType: !967, size: 128, offset: 7168)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !641, line: 242, size: 128, elements: !968)
!968 = !{!969, !970, !971}
!969 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !967, file: !641, line: 244, baseType: !136, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !967, file: !641, line: 245, baseType: !136, size: 64, offset: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !967, file: !641, line: 246, baseType: !559, offset: 128)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !640, file: !641, line: 900, baseType: !203, size: 64, offset: 7296)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !640, file: !641, line: 901, baseType: !203, size: 64, offset: 7360)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !640, file: !641, line: 904, baseType: !136, size: 64, offset: 7424)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !640, file: !641, line: 907, baseType: !136, size: 64, offset: 7488)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !640, file: !641, line: 910, baseType: !203, size: 64, offset: 7552)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !640, file: !641, line: 911, baseType: !203, size: 64, offset: 7616)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !640, file: !641, line: 914, baseType: !979, size: 640, offset: 7680)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !980, line: 123, size: 640, elements: !981)
!980 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!981 = !{!982, !988, !989}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !979, file: !980, line: 124, baseType: !983, size: 576)
!983 = !DICompositeType(tag: DW_TAG_array_type, baseType: !984, size: 576, elements: !408)
!984 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !980, line: 108, size: 192, elements: !985)
!985 = !{!986, !987}
!986 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !984, file: !980, line: 109, baseType: !136, size: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !984, file: !980, line: 110, baseType: !771, size: 128, offset: 64)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !979, file: !980, line: 125, baseType: !5, size: 32, offset: 576)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !979, file: !980, line: 126, baseType: !5, size: 32, offset: 608)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !640, file: !641, line: 917, baseType: !991, size: 192, offset: 8320)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !980, line: 134, size: 192, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !991, file: !980, line: 135, baseType: !928, size: 128, align: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !991, file: !980, line: 136, baseType: !5, size: 32, offset: 128)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !640, file: !641, line: 923, baseType: !996, size: 64, offset: 8512)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !998)
!998 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !641, line: 923, flags: DIFlagFwdDecl)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !640, file: !641, line: 926, baseType: !996, size: 64, offset: 8576)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !640, file: !641, line: 929, baseType: !996, size: 64, offset: 8640)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !640, file: !641, line: 933, baseType: !1002, size: 64, offset: 8704)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !641, line: 933, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !640, file: !641, line: 943, baseType: !1005, size: 128, offset: 8768)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 128, elements: !1006)
!1006 = !{!1007}
!1007 = !DISubrange(count: 16)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !640, file: !641, line: 945, baseType: !1009, size: 64, offset: 8896)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !641, line: 49, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !640, file: !641, line: 956, baseType: !1012, size: 64, offset: 8960)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !641, line: 45, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !640, file: !641, line: 959, baseType: !1015, size: 64, offset: 9024)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !641, line: 959, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !640, file: !641, line: 962, baseType: !1018, size: 64, offset: 9088)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !641, line: 66, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !640, file: !641, line: 966, baseType: !1021, size: 64, offset: 9152)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !641, line: 50, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !640, file: !641, line: 969, baseType: !1024, size: 64, offset: 9216)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !980, line: 223, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !640, file: !641, line: 970, baseType: !1027, size: 64, offset: 9280)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !641, line: 62, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !640, file: !641, line: 971, baseType: !1030, size: 64, offset: 9344)
!1030 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1031, line: 25, baseType: !1032)
!1031 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1031, line: 23, size: 64, elements: !1033)
!1033 = !{!1034}
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1032, file: !1031, line: 24, baseType: !800, size: 64)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !640, file: !641, line: 972, baseType: !1030, size: 64, offset: 9408)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !640, file: !641, line: 974, baseType: !1030, size: 64, offset: 9472)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !640, file: !641, line: 975, baseType: !1038, size: 192, offset: 9536)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1039, line: 30, size: 192, elements: !1040)
!1039 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1040 = !{!1041, !1042}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1038, file: !1039, line: 31, baseType: !353, size: 128)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1038, file: !1039, line: 32, baseType: !1030, size: 64, offset: 128)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !640, file: !641, line: 976, baseType: !203, size: 64, offset: 9728)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !640, file: !641, line: 977, baseType: !222, size: 64, offset: 9792)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !640, file: !641, line: 978, baseType: !5, size: 32, offset: 9856)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !640, file: !641, line: 980, baseType: !931, size: 64, offset: 9920)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !640, file: !641, line: 989, baseType: !1048, size: 128, offset: 9984)
!1048 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1049, line: 35, size: 128, elements: !1050)
!1049 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1048, file: !1049, line: 36, baseType: !118, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1048, file: !1049, line: 37, baseType: !534, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1048, file: !1049, line: 38, baseType: !1054, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1049, line: 23, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !640, file: !641, line: 992, baseType: !136, size: 64, offset: 10112)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !640, file: !641, line: 993, baseType: !136, size: 64, offset: 10176)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !640, file: !641, line: 996, baseType: !366, offset: 10240)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !640, file: !641, line: 999, baseType: !559, offset: 10240)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !640, file: !641, line: 1001, baseType: !1061, size: 64, offset: 10240)
!1061 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !641, line: 636, size: 64, elements: !1062)
!1062 = !{!1063}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1061, file: !641, line: 637, baseType: !1064, size: 64)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1061, size: 64)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !640, file: !641, line: 1005, baseType: !774, size: 128, offset: 10304)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !640, file: !641, line: 1007, baseType: !639, size: 64, offset: 10432)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !640, file: !641, line: 1009, baseType: !1068, size: 64, offset: 10496)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !641, line: 1009, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !640, file: !641, line: 1043, baseType: !109, size: 64, offset: 10560)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !640, file: !641, line: 1046, baseType: !1072, size: 64, offset: 10624)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !641, line: 41, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !640, file: !641, line: 1050, baseType: !1075, size: 64, offset: 10688)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !641, line: 42, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !640, file: !641, line: 1054, baseType: !1078, size: 64, offset: 10752)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !641, line: 55, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !640, file: !641, line: 1056, baseType: !1081, size: 64, offset: 10816)
!1081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1082, size: 64)
!1082 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !641, line: 40, flags: DIFlagFwdDecl)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !640, file: !641, line: 1058, baseType: !1084, size: 64, offset: 10880)
!1084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1085, size: 64)
!1085 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !641, line: 47, flags: DIFlagFwdDecl)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !640, file: !641, line: 1061, baseType: !1087, size: 64, offset: 10944)
!1087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !641, line: 43, flags: DIFlagFwdDecl)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !640, file: !641, line: 1064, baseType: !203, size: 64, offset: 11008)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !640, file: !641, line: 1065, baseType: !1091, size: 64, offset: 11072)
!1091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1092, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1039, line: 14, baseType: !1093)
!1093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1039, line: 12, size: 384, elements: !1094)
!1094 = !{!1095}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !1039, line: 13, baseType: !1096, size: 384)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1039, line: 13, size: 384, elements: !1097)
!1097 = !{!1098, !1099, !1100, !1101}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1096, file: !1039, line: 13, baseType: !118, size: 32)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1096, file: !1039, line: 13, baseType: !118, size: 32, offset: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1096, file: !1039, line: 13, baseType: !118, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1096, file: !1039, line: 13, baseType: !1102, size: 256, offset: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1103, line: 32, size: 256, elements: !1104)
!1103 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1104 = !{!1105, !1111, !1124, !1130, !1139, !1159, !1164}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1102, file: !1103, line: 37, baseType: !1106, size: 64)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 34, size: 64, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1106, file: !1103, line: 35, baseType: !890, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1106, file: !1103, line: 36, baseType: !1110, size: 32, offset: 32)
!1110 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !220, line: 49, baseType: !5)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1102, file: !1103, line: 45, baseType: !1112, size: 192)
!1112 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 40, size: 192, elements: !1113)
!1113 = !{!1114, !1116, !1117, !1123}
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1112, file: !1103, line: 41, baseType: !1115, size: 32)
!1115 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !220, line: 95, baseType: !118)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1112, file: !1103, line: 42, baseType: !118, size: 32, offset: 32)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1112, file: !1103, line: 43, baseType: !1118, size: 64, offset: 64)
!1118 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1103, line: 11, baseType: !1119)
!1119 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1103, line: 8, size: 64, elements: !1120)
!1120 = !{!1121, !1122}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1119, file: !1103, line: 9, baseType: !118, size: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1119, file: !1103, line: 10, baseType: !109, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1112, file: !1103, line: 44, baseType: !118, size: 32, offset: 128)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1102, file: !1103, line: 52, baseType: !1125, size: 128)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 48, size: 128, elements: !1126)
!1126 = !{!1127, !1128, !1129}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1125, file: !1103, line: 49, baseType: !890, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1125, file: !1103, line: 50, baseType: !1110, size: 32, offset: 32)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1125, file: !1103, line: 51, baseType: !1118, size: 64, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1102, file: !1103, line: 61, baseType: !1131, size: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 55, size: 256, elements: !1132)
!1132 = !{!1133, !1134, !1135, !1136, !1138}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1131, file: !1103, line: 56, baseType: !890, size: 32)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1131, file: !1103, line: 57, baseType: !1110, size: 32, offset: 32)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1131, file: !1103, line: 58, baseType: !118, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1131, file: !1103, line: 59, baseType: !1137, size: 64, offset: 128)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !220, line: 94, baseType: !440)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1131, file: !1103, line: 60, baseType: !1137, size: 64, offset: 192)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1102, file: !1103, line: 95, baseType: !1140, size: 256)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 64, size: 256, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1140, file: !1103, line: 65, baseType: !109, size: 64)
!1143 = !DIDerivedType(tag: DW_TAG_member, scope: !1140, file: !1103, line: 77, baseType: !1144, size: 192, offset: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1140, file: !1103, line: 77, size: 192, elements: !1145)
!1145 = !{!1146, !1147, !1154}
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1144, file: !1103, line: 82, baseType: !628, size: 16)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1144, file: !1103, line: 88, baseType: !1148, size: 192)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1144, file: !1103, line: 84, size: 192, elements: !1149)
!1149 = !{!1150, !1152, !1153}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1148, file: !1103, line: 85, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 64, elements: !753)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1148, file: !1103, line: 86, baseType: !109, size: 64, offset: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1148, file: !1103, line: 87, baseType: !109, size: 64, offset: 128)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1144, file: !1103, line: 93, baseType: !1155, size: 96)
!1155 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1144, file: !1103, line: 90, size: 96, elements: !1156)
!1156 = !{!1157, !1158}
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1155, file: !1103, line: 91, baseType: !1151, size: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1155, file: !1103, line: 92, baseType: !107, size: 32, offset: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1102, file: !1103, line: 101, baseType: !1160, size: 128)
!1160 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 98, size: 128, elements: !1161)
!1161 = !{!1162, !1163}
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1160, file: !1103, line: 99, baseType: !441, size: 64)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1160, file: !1103, line: 100, baseType: !118, size: 32, offset: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1102, file: !1103, line: 108, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1102, file: !1103, line: 104, size: 128, elements: !1166)
!1166 = !{!1167, !1168, !1169}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1165, file: !1103, line: 105, baseType: !109, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1165, file: !1103, line: 106, baseType: !118, size: 32, offset: 64)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1165, file: !1103, line: 107, baseType: !5, size: 32, offset: 96)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !640, file: !641, line: 1067, baseType: !1171, offset: 11136)
!1171 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1172, line: 12, elements: !380)
!1172 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !640, file: !641, line: 1099, baseType: !1174, size: 64, offset: 11136)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !641, line: 56, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !640, file: !641, line: 1103, baseType: !353, size: 128, offset: 11200)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !640, file: !641, line: 1104, baseType: !1178, size: 64, offset: 11328)
!1178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1179, size: 64)
!1179 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !641, line: 46, flags: DIFlagFwdDecl)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !640, file: !641, line: 1105, baseType: !611, size: 192, offset: 11392)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !640, file: !641, line: 1106, baseType: !5, size: 32, offset: 11584)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !640, file: !641, line: 1109, baseType: !1183, size: 128, offset: 11648)
!1183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1184, size: 128, elements: !1186)
!1184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1185, size: 64)
!1185 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !641, line: 51, flags: DIFlagFwdDecl)
!1186 = !{!1187}
!1187 = !DISubrange(count: 2)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !640, file: !641, line: 1110, baseType: !611, size: 192, offset: 11776)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !640, file: !641, line: 1111, baseType: !353, size: 128, offset: 11968)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !640, file: !641, line: 1173, baseType: !1191, size: 64, offset: 12096)
!1191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1192, size: 64)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1193, line: 62, size: 256, align: 256, elements: !1194)
!1193 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1194 = !{!1195, !1196, !1197, !1202}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1192, file: !1193, line: 75, baseType: !107, size: 32)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1192, file: !1193, line: 90, baseType: !107, size: 32, offset: 32)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1192, file: !1193, line: 124, baseType: !1198, size: 64, offset: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1192, file: !1193, line: 109, size: 64, elements: !1199)
!1199 = !{!1200, !1201}
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1198, file: !1193, line: 110, baseType: !137, size: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1198, file: !1193, line: 112, baseType: !137, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1192, file: !1193, line: 144, baseType: !107, size: 32, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !640, file: !641, line: 1174, baseType: !133, size: 32, offset: 12160)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !640, file: !641, line: 1179, baseType: !203, size: 64, offset: 12224)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !640, file: !641, line: 1182, baseType: !1206, size: 128, offset: 12288)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !589, line: 76, size: 128, elements: !1207)
!1207 = !{!1208, !1213, !1214}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1206, file: !589, line: 85, baseType: !1209, size: 64)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1210, line: 7, size: 64, elements: !1211)
!1210 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1209, file: !1210, line: 12, baseType: !797, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1206, file: !589, line: 88, baseType: !317, size: 8, offset: 64)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1206, file: !589, line: 95, baseType: !317, size: 8, offset: 72)
!1215 = !DIDerivedType(tag: DW_TAG_member, scope: !640, file: !641, line: 1184, baseType: !1216, size: 128, offset: 12416)
!1216 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !640, file: !641, line: 1184, size: 128, elements: !1217)
!1217 = !{!1218, !1219}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1216, file: !641, line: 1185, baseType: !653, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1216, file: !641, line: 1186, baseType: !928, size: 128, align: 64)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !640, file: !641, line: 1190, baseType: !1221, size: 64, offset: 12544)
!1221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1222, size: 64)
!1222 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !287, line: 13, flags: DIFlagFwdDecl)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !640, file: !641, line: 1192, baseType: !1224, size: 128, offset: 12608)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !589, line: 64, size: 128, elements: !1225)
!1225 = !{!1226, !1319, !1320}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1224, file: !589, line: 65, baseType: !1227, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !489, line: 68, size: 512, align: 128, elements: !1229)
!1229 = !{!1230, !1231, !1311, !1318}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1228, file: !489, line: 69, baseType: !203, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !489, line: 77, baseType: !1232, size: 320, offset: 64)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !489, line: 77, size: 320, elements: !1233)
!1233 = !{!1234, !1243, !1248, !1276, !1284, !1290, !1303, !1310}
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 78, baseType: !1235, size: 320)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 78, size: 320, elements: !1236)
!1236 = !{!1237, !1238, !1241, !1242}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1235, file: !489, line: 84, baseType: !353, size: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1235, file: !489, line: 86, baseType: !1239, size: 64, offset: 128)
!1239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1240, size: 64)
!1240 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !489, line: 26, flags: DIFlagFwdDecl)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1235, file: !489, line: 87, baseType: !203, size: 64, offset: 192)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1235, file: !489, line: 94, baseType: !203, size: 64, offset: 256)
!1243 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 96, baseType: !1244, size: 64)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 96, size: 64, elements: !1245)
!1245 = !{!1246}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1244, file: !489, line: 101, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !96, line: 143, baseType: !136)
!1248 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 103, baseType: !1249, size: 320)
!1249 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 103, size: 320, elements: !1250)
!1250 = !{!1251, !1261, !1264, !1265}
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !489, line: 104, baseType: !1252, size: 128)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !489, line: 104, size: 128, elements: !1253)
!1253 = !{!1254, !1255}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1252, file: !489, line: 105, baseType: !353, size: 128)
!1255 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !489, line: 106, baseType: !1256, size: 128)
!1256 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !489, line: 106, size: 128, elements: !1257)
!1257 = !{!1258, !1259, !1260}
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1256, file: !489, line: 107, baseType: !1227, size: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1256, file: !489, line: 109, baseType: !118, size: 32, offset: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1256, file: !489, line: 110, baseType: !118, size: 32, offset: 96)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1249, file: !489, line: 117, baseType: !1262, size: 64, offset: 128)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1263, size: 64)
!1263 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !489, line: 117, flags: DIFlagFwdDecl)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1249, file: !489, line: 119, baseType: !109, size: 64, offset: 192)
!1265 = !DIDerivedType(tag: DW_TAG_member, scope: !1249, file: !489, line: 120, baseType: !1266, size: 64, offset: 256)
!1266 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1249, file: !489, line: 120, size: 64, elements: !1267)
!1267 = !{!1268, !1269, !1270}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1266, file: !489, line: 121, baseType: !109, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1266, file: !489, line: 122, baseType: !203, size: 64)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !1266, file: !489, line: 123, baseType: !1271, size: 32)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1266, file: !489, line: 123, size: 32, elements: !1272)
!1272 = !{!1273, !1274, !1275}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1271, file: !489, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1271, file: !489, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1271, file: !489, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 130, baseType: !1277, size: 192)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 130, size: 192, elements: !1278)
!1278 = !{!1279, !1280, !1281, !1282, !1283}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1277, file: !489, line: 131, baseType: !203, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1277, file: !489, line: 134, baseType: !102, size: 8, offset: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1277, file: !489, line: 135, baseType: !102, size: 8, offset: 72)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1277, file: !489, line: 136, baseType: !534, size: 32, offset: 96)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1277, file: !489, line: 137, baseType: !5, size: 32, offset: 128)
!1284 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 139, baseType: !1285, size: 256)
!1285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 139, size: 256, elements: !1286)
!1286 = !{!1287, !1288, !1289}
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1285, file: !489, line: 140, baseType: !203, size: 64)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1285, file: !489, line: 141, baseType: !534, size: 32, offset: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1285, file: !489, line: 143, baseType: !353, size: 128, offset: 128)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 145, baseType: !1291, size: 256)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 145, size: 256, elements: !1292)
!1292 = !{!1293, !1294, !1296, !1297, !1302}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1291, file: !489, line: 146, baseType: !203, size: 64)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1291, file: !489, line: 147, baseType: !1295, size: 64, offset: 64)
!1295 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !481, line: 509, baseType: !1227)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1291, file: !489, line: 148, baseType: !203, size: 64, offset: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !489, line: 149, baseType: !1298, size: 64, offset: 192)
!1298 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !489, line: 149, size: 64, elements: !1299)
!1299 = !{!1300, !1301}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1298, file: !489, line: 150, baseType: !505, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1298, file: !489, line: 151, baseType: !534, size: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1291, file: !489, line: 156, baseType: !366, offset: 256)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !489, line: 159, baseType: !1304, size: 128)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !489, line: 159, size: 128, elements: !1305)
!1305 = !{!1306, !1309}
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1304, file: !489, line: 161, baseType: !1307, size: 64)
!1307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1308, size: 64)
!1308 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !489, line: 161, flags: DIFlagFwdDecl)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1304, file: !489, line: 162, baseType: !109, size: 64, offset: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1232, file: !489, line: 176, baseType: !928, size: 128, align: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1228, file: !489, line: 179, baseType: !1312, size: 32, offset: 384)
!1312 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1228, file: !489, line: 179, size: 32, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1312, file: !489, line: 184, baseType: !534, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1312, file: !489, line: 192, baseType: !5, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1312, file: !489, line: 194, baseType: !5, size: 32)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1312, file: !489, line: 195, baseType: !118, size: 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1228, file: !489, line: 199, baseType: !534, size: 32, offset: 416)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1224, file: !589, line: 67, baseType: !107, size: 32, offset: 64)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1224, file: !589, line: 68, baseType: !107, size: 32, offset: 96)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !640, file: !641, line: 1206, baseType: !118, size: 32, offset: 12736)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !640, file: !641, line: 1207, baseType: !118, size: 32, offset: 12768)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !640, file: !641, line: 1209, baseType: !203, size: 64, offset: 12800)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !640, file: !641, line: 1219, baseType: !136, size: 64, offset: 12864)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !640, file: !641, line: 1220, baseType: !136, size: 64, offset: 12928)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !640, file: !641, line: 1317, baseType: !118, size: 32, offset: 12992)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !640, file: !641, line: 1319, baseType: !639, size: 64, offset: 13056)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !640, file: !641, line: 1322, baseType: !1329, size: 64, offset: 13120)
!1329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1330, size: 64)
!1330 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1331, line: 9, flags: DIFlagFwdDecl)
!1331 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !640, file: !641, line: 1326, baseType: !653, size: 32, offset: 13184)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !640, file: !641, line: 1342, baseType: !109, size: 64, offset: 13248)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !640, file: !641, line: 1343, baseType: !137, size: 64, offset: 13312)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !640, file: !641, line: 1344, baseType: !136, size: 64, offset: 13376)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !640, file: !641, line: 1345, baseType: !137, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !640, file: !641, line: 1346, baseType: !137, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !640, file: !641, line: 1347, baseType: !137, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !640, file: !641, line: 1348, baseType: !928, size: 128, align: 64, offset: 13504)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !640, file: !641, line: 1358, baseType: !1341, size: 34816, offset: 13824)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1342, line: 485, size: 34816, elements: !1343)
!1342 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1373, !1374, !1375, !1376, !1377, !1378, !1381, !1382, !1383}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1341, file: !1342, line: 487, baseType: !1345, size: 192)
!1345 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1346, size: 192, elements: !408)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1347, line: 16, size: 64, elements: !1348)
!1347 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1348 = !{!1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361}
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1346, file: !1347, line: 17, baseType: !624, size: 16)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1346, file: !1347, line: 18, baseType: !624, size: 16, offset: 16)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1346, file: !1347, line: 19, baseType: !624, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1346, file: !1347, line: 19, baseType: !624, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1346, file: !1347, line: 19, baseType: !624, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1346, file: !1347, line: 19, baseType: !624, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1346, file: !1347, line: 19, baseType: !624, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1346, file: !1347, line: 20, baseType: !624, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1346, file: !1347, line: 20, baseType: !624, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1346, file: !1347, line: 20, baseType: !624, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1346, file: !1347, line: 20, baseType: !624, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1346, file: !1347, line: 20, baseType: !624, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1346, file: !1347, line: 20, baseType: !624, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1341, file: !1342, line: 491, baseType: !203, size: 64, offset: 192)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1341, file: !1342, line: 495, baseType: !104, size: 16, offset: 256)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1341, file: !1342, line: 496, baseType: !104, size: 16, offset: 272)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1341, file: !1342, line: 497, baseType: !104, size: 16, offset: 288)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1341, file: !1342, line: 498, baseType: !104, size: 16, offset: 304)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1341, file: !1342, line: 502, baseType: !203, size: 64, offset: 320)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1341, file: !1342, line: 503, baseType: !203, size: 64, offset: 384)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1341, file: !1342, line: 514, baseType: !1370, size: 256, offset: 448)
!1370 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1371, size: 256, elements: !593)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1342, line: 483, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1341, file: !1342, line: 516, baseType: !203, size: 64, offset: 704)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1341, file: !1342, line: 518, baseType: !203, size: 64, offset: 768)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1341, file: !1342, line: 520, baseType: !203, size: 64, offset: 832)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1341, file: !1342, line: 521, baseType: !203, size: 64, offset: 896)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1341, file: !1342, line: 522, baseType: !203, size: 64, offset: 960)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1341, file: !1342, line: 528, baseType: !1379, size: 64, offset: 1024)
!1379 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1380, size: 64)
!1380 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1342, line: 10, flags: DIFlagFwdDecl)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1341, file: !1342, line: 535, baseType: !203, size: 64, offset: 1088)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1341, file: !1342, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1341, file: !1342, line: 540, baseType: !1384, size: 33280, offset: 1536)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1385, line: 317, size: 33280, elements: !1386)
!1385 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1386 = !{!1387, !1388, !1389}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1384, file: !1385, line: 330, baseType: !5, size: 32)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1384, file: !1385, line: 337, baseType: !203, size: 64, offset: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1384, file: !1385, line: 348, baseType: !1390, size: 32768, offset: 512)
!1390 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1385, line: 304, size: 32768, elements: !1391)
!1391 = !{!1392, !1407, !1446, !1496, !1513}
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1390, file: !1385, line: 305, baseType: !1393, size: 896)
!1393 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1385, line: 12, size: 896, elements: !1394)
!1394 = !{!1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402, !1406}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1393, file: !1385, line: 13, baseType: !133, size: 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1393, file: !1385, line: 14, baseType: !133, size: 32, offset: 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1393, file: !1385, line: 15, baseType: !133, size: 32, offset: 64)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1393, file: !1385, line: 16, baseType: !133, size: 32, offset: 96)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1393, file: !1385, line: 17, baseType: !133, size: 32, offset: 128)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1393, file: !1385, line: 18, baseType: !133, size: 32, offset: 160)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1393, file: !1385, line: 19, baseType: !133, size: 32, offset: 192)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1393, file: !1385, line: 22, baseType: !1403, size: 640, offset: 224)
!1403 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 640, elements: !1404)
!1404 = !{!1405}
!1405 = !DISubrange(count: 20)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1393, file: !1385, line: 25, baseType: !133, size: 32, offset: 864)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1390, file: !1385, line: 306, baseType: !1408, size: 4096, align: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1385, line: 34, size: 4096, align: 128, elements: !1409)
!1409 = !{!1410, !1411, !1412, !1413, !1414, !1429, !1430, !1431, !1435, !1437, !1441}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1408, file: !1385, line: 35, baseType: !624, size: 16)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1408, file: !1385, line: 36, baseType: !624, size: 16, offset: 16)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1408, file: !1385, line: 37, baseType: !624, size: 16, offset: 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1408, file: !1385, line: 38, baseType: !624, size: 16, offset: 48)
!1414 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1385, line: 39, baseType: !1415, size: 128, offset: 64)
!1415 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1385, line: 39, size: 128, elements: !1416)
!1416 = !{!1417, !1422}
!1417 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1385, line: 40, baseType: !1418, size: 128)
!1418 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1385, line: 40, size: 128, elements: !1419)
!1419 = !{!1420, !1421}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1418, file: !1385, line: 41, baseType: !136, size: 64)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1418, file: !1385, line: 42, baseType: !136, size: 64, offset: 64)
!1422 = !DIDerivedType(tag: DW_TAG_member, scope: !1415, file: !1385, line: 44, baseType: !1423, size: 128)
!1423 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1415, file: !1385, line: 44, size: 128, elements: !1424)
!1424 = !{!1425, !1426, !1427, !1428}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1423, file: !1385, line: 45, baseType: !133, size: 32)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1423, file: !1385, line: 46, baseType: !133, size: 32, offset: 32)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1423, file: !1385, line: 47, baseType: !133, size: 32, offset: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1423, file: !1385, line: 48, baseType: !133, size: 32, offset: 96)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1408, file: !1385, line: 51, baseType: !133, size: 32, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1408, file: !1385, line: 52, baseType: !133, size: 32, offset: 224)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1408, file: !1385, line: 55, baseType: !1432, size: 1024, offset: 256)
!1432 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 1024, elements: !1433)
!1433 = !{!1434}
!1434 = !DISubrange(count: 32)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1408, file: !1385, line: 58, baseType: !1436, size: 2048, offset: 1280)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 2048, elements: !412)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1408, file: !1385, line: 60, baseType: !1438, size: 384, offset: 3328)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, elements: !1439)
!1439 = !{!1440}
!1440 = !DISubrange(count: 12)
!1441 = !DIDerivedType(tag: DW_TAG_member, scope: !1408, file: !1385, line: 62, baseType: !1442, size: 384, offset: 3712)
!1442 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1408, file: !1385, line: 62, size: 384, elements: !1443)
!1443 = !{!1444, !1445}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1442, file: !1385, line: 63, baseType: !1438, size: 384)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1442, file: !1385, line: 64, baseType: !1438, size: 384)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1390, file: !1385, line: 307, baseType: !1447, size: 1088)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1385, line: 79, size: 1088, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1462, !1463, !1495}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1447, file: !1385, line: 80, baseType: !133, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1447, file: !1385, line: 81, baseType: !133, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1447, file: !1385, line: 82, baseType: !133, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1447, file: !1385, line: 83, baseType: !133, size: 32, offset: 96)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1447, file: !1385, line: 84, baseType: !133, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1447, file: !1385, line: 85, baseType: !133, size: 32, offset: 160)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1447, file: !1385, line: 86, baseType: !133, size: 32, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1447, file: !1385, line: 88, baseType: !1403, size: 640, offset: 224)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1447, file: !1385, line: 89, baseType: !98, size: 8, offset: 864)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1447, file: !1385, line: 90, baseType: !98, size: 8, offset: 872)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1447, file: !1385, line: 91, baseType: !98, size: 8, offset: 880)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1447, file: !1385, line: 92, baseType: !98, size: 8, offset: 888)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1447, file: !1385, line: 93, baseType: !98, size: 8, offset: 896)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1447, file: !1385, line: 94, baseType: !98, size: 8, offset: 904)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1447, file: !1385, line: 95, baseType: !1464, size: 64, offset: 960)
!1464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1465, size: 64)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1466, line: 11, size: 128, elements: !1467)
!1466 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1467 = !{!1468, !1469}
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1465, file: !1466, line: 12, baseType: !441, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1465, file: !1466, line: 13, baseType: !1470, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1472, line: 56, size: 1344, elements: !1473)
!1472 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492, !1493, !1494}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1471, file: !1472, line: 61, baseType: !203, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1471, file: !1472, line: 62, baseType: !203, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1471, file: !1472, line: 63, baseType: !203, size: 64, offset: 128)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1471, file: !1472, line: 64, baseType: !203, size: 64, offset: 192)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1471, file: !1472, line: 65, baseType: !203, size: 64, offset: 256)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1471, file: !1472, line: 66, baseType: !203, size: 64, offset: 320)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1471, file: !1472, line: 68, baseType: !203, size: 64, offset: 384)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1471, file: !1472, line: 69, baseType: !203, size: 64, offset: 448)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1471, file: !1472, line: 70, baseType: !203, size: 64, offset: 512)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1471, file: !1472, line: 71, baseType: !203, size: 64, offset: 576)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1471, file: !1472, line: 72, baseType: !203, size: 64, offset: 640)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1471, file: !1472, line: 73, baseType: !203, size: 64, offset: 704)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1471, file: !1472, line: 74, baseType: !203, size: 64, offset: 768)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1471, file: !1472, line: 75, baseType: !203, size: 64, offset: 832)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1471, file: !1472, line: 76, baseType: !203, size: 64, offset: 896)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1471, file: !1472, line: 81, baseType: !203, size: 64, offset: 960)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1471, file: !1472, line: 83, baseType: !203, size: 64, offset: 1024)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1471, file: !1472, line: 84, baseType: !203, size: 64, offset: 1088)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1471, file: !1472, line: 85, baseType: !203, size: 64, offset: 1152)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1471, file: !1472, line: 86, baseType: !203, size: 64, offset: 1216)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1471, file: !1472, line: 87, baseType: !203, size: 64, offset: 1280)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1447, file: !1385, line: 96, baseType: !133, size: 32, offset: 1024)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1390, file: !1385, line: 308, baseType: !1497, size: 4608, align: 512)
!1497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1385, line: 289, size: 4608, align: 512, elements: !1498)
!1498 = !{!1499, !1500, !1509}
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1497, file: !1385, line: 290, baseType: !1408, size: 4096, align: 128)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1497, file: !1385, line: 291, baseType: !1501, size: 512, offset: 4096)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1385, line: 268, size: 512, elements: !1502)
!1502 = !{!1503, !1504, !1505}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1501, file: !1385, line: 269, baseType: !136, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1501, file: !1385, line: 270, baseType: !136, size: 64, offset: 64)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1501, file: !1385, line: 271, baseType: !1506, size: 384, offset: 128)
!1506 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 384, elements: !1507)
!1507 = !{!1508}
!1508 = !DISubrange(count: 6)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1497, file: !1385, line: 292, baseType: !1510, offset: 4608)
!1510 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, elements: !1511)
!1511 = !{!1512}
!1512 = !DISubrange(count: 0)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1390, file: !1385, line: 309, baseType: !1514, size: 32768)
!1514 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32768, elements: !1515)
!1515 = !{!1516}
!1516 = !DISubrange(count: 4096)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !636, file: !489, line: 378, baseType: !1518, size: 64, offset: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !636, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !632, file: !489, line: 384, baseType: !950, size: 192, offset: 192)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !509, file: !489, line: 500, baseType: !366, offset: 6656)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !509, file: !489, line: 501, baseType: !1522, size: 64, offset: 6656)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !489, line: 387, flags: DIFlagFwdDecl)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !509, file: !489, line: 516, baseType: !1525, size: 64, offset: 6720)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !489, line: 516, flags: DIFlagFwdDecl)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !509, file: !489, line: 519, baseType: !479, size: 64, offset: 6784)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !509, file: !489, line: 521, baseType: !1529, size: 64, offset: 6848)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !489, line: 521, flags: DIFlagFwdDecl)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !509, file: !489, line: 545, baseType: !534, size: 32, offset: 6912)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !509, file: !489, line: 548, baseType: !317, size: 8, offset: 6944)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !509, file: !489, line: 550, baseType: !1534, offset: 6952)
!1534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1535, line: 142, elements: !380)
!1535 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !509, file: !489, line: 554, baseType: !1537, size: 256, offset: 6976)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1538, line: 102, size: 256, elements: !1539)
!1538 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1539 = !{!1540, !1541, !1542}
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1537, file: !1538, line: 103, baseType: !542, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1537, file: !1538, line: 104, baseType: !353, size: 128, offset: 64)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1537, file: !1538, line: 105, baseType: !1543, size: 64, offset: 192)
!1543 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1538, line: 21, baseType: !1544)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !1547}
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !509, file: !489, line: 557, baseType: !133, size: 32, offset: 7232)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !506, file: !489, line: 565, baseType: !1550, offset: 7296)
!1550 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, elements: !1551)
!1551 = !{!1552}
!1552 = !DISubrange(count: -1)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !488, file: !489, line: 333, baseType: !1554, size: 64, offset: 576)
!1554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !481, line: 284, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !481, line: 284, size: 64, elements: !1556)
!1556 = !{!1557}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1555, file: !481, line: 284, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !532, line: 19, baseType: !203)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !488, file: !489, line: 334, baseType: !203, size: 64, offset: 640)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !488, file: !489, line: 343, baseType: !1561, size: 256, offset: 704)
!1561 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !488, file: !489, line: 340, size: 256, elements: !1562)
!1562 = !{!1563, !1564}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1561, file: !489, line: 341, baseType: !496, size: 192, align: 64)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1561, file: !489, line: 342, baseType: !203, size: 64, offset: 192)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !488, file: !489, line: 351, baseType: !353, size: 128, offset: 960)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !488, file: !489, line: 353, baseType: !1567, size: 64, offset: 1088)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !489, line: 353, flags: DIFlagFwdDecl)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !488, file: !489, line: 356, baseType: !1570, size: 64, offset: 1152)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1572)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !489, line: 356, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !488, file: !489, line: 359, baseType: !203, size: 64, offset: 1216)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !488, file: !489, line: 361, baseType: !479, size: 64, offset: 1280)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !488, file: !489, line: 362, baseType: !109, size: 64, offset: 1344)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !488, file: !489, line: 365, baseType: !542, size: 64, offset: 1408)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !488, file: !489, line: 373, baseType: !1578, offset: 1472)
!1578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !489, line: 296, elements: !380)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !458, file: !432, line: 90, baseType: !453, size: 64, offset: 192)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !458, file: !432, line: 91, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !422, file: !349, line: 143, baseType: !1583, size: 64, offset: 256)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1586, !359}
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1588)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1589)
!1589 = !{!1590, !1591, !1595, !1599, !1607, !1611}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1588, file: !16, line: 40, baseType: !15, size: 32)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1588, file: !16, line: 41, baseType: !1592, size: 64, offset: 64)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DISubroutineType(types: !1594)
!1594 = !{!317}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1588, file: !16, line: 42, baseType: !1596, size: 64, offset: 128)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!109}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1588, file: !16, line: 43, baseType: !1600, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DISubroutineType(types: !1602)
!1602 = !{!1603, !1605}
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1588, file: !16, line: 44, baseType: !1608, size: 64, offset: 256)
!1608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1609, size: 64)
!1609 = !DISubroutineType(types: !1610)
!1610 = !{!1603}
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1588, file: !16, line: 45, baseType: !1612, size: 64, offset: 320)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{null, !109}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !422, file: !349, line: 144, baseType: !1616, size: 64, offset: 320)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!1603, !359}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !422, file: !349, line: 145, baseType: !1620, size: 64, offset: 384)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{null, !359, !1623, !1630}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1625, line: 23, baseType: !1626)
!1625 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1625, line: 21, size: 32, elements: !1627)
!1627 = !{!1628}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1626, file: !1625, line: 22, baseType: !1629, size: 32)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !96, line: 32, baseType: !1110)
!1630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1631, size: 64)
!1631 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1625, line: 28, baseType: !1632)
!1632 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1625, line: 26, size: 32, elements: !1633)
!1633 = !{!1634}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1632, file: !1625, line: 27, baseType: !1635, size: 32)
!1635 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !96, line: 33, baseType: !1636)
!1636 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !220, line: 50, baseType: !5)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !348, file: !349, line: 70, baseType: !1638, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1640, line: 123, size: 1024, elements: !1641)
!1640 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1641 = !{!1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1782, !1783, !1784, !1785, !1786}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1639, file: !1640, line: 124, baseType: !534, size: 32)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1639, file: !1640, line: 125, baseType: !534, size: 32, offset: 32)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1639, file: !1640, line: 135, baseType: !1638, size: 64, offset: 64)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1639, file: !1640, line: 136, baseType: !150, size: 64, offset: 128)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1639, file: !1640, line: 138, baseType: !496, size: 192, align: 64, offset: 192)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1639, file: !1640, line: 140, baseType: !1603, size: 64, offset: 384)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1639, file: !1640, line: 141, baseType: !5, size: 32, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, scope: !1639, file: !1640, line: 142, baseType: !1650, size: 256, offset: 512)
!1650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1639, file: !1640, line: 142, size: 256, elements: !1651)
!1651 = !{!1652, !1706, !1710}
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1650, file: !1640, line: 143, baseType: !1653, size: 192)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1640, line: 91, size: 192, elements: !1654)
!1654 = !{!1655, !1656, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1653, file: !1640, line: 92, baseType: !203, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1653, file: !1640, line: 94, baseType: !513, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1653, file: !1640, line: 100, baseType: !1658, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1640, line: 180, size: 704, elements: !1660)
!1660 = !{!1661, !1662, !1663, !1676, !1677, !1678, !1704, !1705}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1659, file: !1640, line: 182, baseType: !1638, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !1640, line: 183, baseType: !5, size: 32, offset: 64)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1659, file: !1640, line: 186, baseType: !1664, size: 192, offset: 128)
!1664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1665, line: 19, size: 192, elements: !1666)
!1665 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1666 = !{!1667, !1674, !1675}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1664, file: !1665, line: 20, baseType: !1668, size: 128)
!1668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1669, line: 292, size: 128, elements: !1670)
!1669 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1670 = !{!1671, !1672, !1673}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1668, file: !1669, line: 293, baseType: !366)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1668, file: !1669, line: 295, baseType: !95, size: 32)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1668, file: !1669, line: 296, baseType: !109, size: 64, offset: 64)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1664, file: !1665, line: 21, baseType: !5, size: 32, offset: 128)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1664, file: !1665, line: 22, baseType: !5, size: 32, offset: 160)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1659, file: !1640, line: 187, baseType: !133, size: 32, offset: 320)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1659, file: !1640, line: 188, baseType: !133, size: 32, offset: 352)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1659, file: !1640, line: 189, baseType: !1679, size: 64, offset: 384)
!1679 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1680, size: 64)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1640, line: 168, size: 320, elements: !1681)
!1681 = !{!1682, !1688, !1692, !1696, !1700}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1680, file: !1640, line: 169, baseType: !1683, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1684, size: 64)
!1684 = !DISubroutineType(types: !1685)
!1685 = !{!118, !1686, !1658}
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !481, line: 539, flags: DIFlagFwdDecl)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1680, file: !1640, line: 171, baseType: !1689, size: 64, offset: 64)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!118, !1638, !150, !447}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1680, file: !1640, line: 173, baseType: !1693, size: 64, offset: 128)
!1693 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1694, size: 64)
!1694 = !DISubroutineType(types: !1695)
!1695 = !{!118, !1638}
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1680, file: !1640, line: 174, baseType: !1697, size: 64, offset: 192)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!118, !1638, !1638, !150}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1680, file: !1640, line: 176, baseType: !1701, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!118, !1686, !1638, !1658}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1659, file: !1640, line: 192, baseType: !353, size: 128, offset: 448)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1659, file: !1640, line: 194, baseType: !921, size: 128, offset: 576)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1650, file: !1640, line: 144, baseType: !1707, size: 64)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1640, line: 103, size: 64, elements: !1708)
!1708 = !{!1709}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1707, file: !1640, line: 104, baseType: !1638, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1650, file: !1640, line: 145, baseType: !1711, size: 256)
!1711 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1640, line: 107, size: 256, elements: !1712)
!1712 = !{!1713, !1777, !1780, !1781}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1711, file: !1640, line: 108, baseType: !1714, size: 64)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1716)
!1716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1640, line: 217, size: 768, elements: !1717)
!1717 = !{!1718, !1738, !1742, !1746, !1751, !1755, !1759, !1763, !1764, !1765, !1766, !1773}
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1716, file: !1640, line: 222, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!118, !1722}
!1722 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1723, size: 64)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1640, line: 197, size: 1088, elements: !1724)
!1724 = !{!1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1723, file: !1640, line: 199, baseType: !1638, size: 64)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1723, file: !1640, line: 200, baseType: !479, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1723, file: !1640, line: 201, baseType: !1686, size: 64, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1723, file: !1640, line: 202, baseType: !109, size: 64, offset: 192)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1723, file: !1640, line: 205, baseType: !611, size: 192, offset: 256)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1723, file: !1640, line: 206, baseType: !611, size: 192, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1723, file: !1640, line: 207, baseType: !118, size: 32, offset: 640)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1723, file: !1640, line: 208, baseType: !353, size: 128, offset: 704)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1723, file: !1640, line: 209, baseType: !407, size: 64, offset: 832)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1723, file: !1640, line: 211, baseType: !222, size: 64, offset: 896)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1723, file: !1640, line: 212, baseType: !317, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1723, file: !1640, line: 213, baseType: !317, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1723, file: !1640, line: 214, baseType: !1570, size: 64, offset: 1024)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1716, file: !1640, line: 223, baseType: !1739, size: 64, offset: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{null, !1722}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1716, file: !1640, line: 236, baseType: !1743, size: 64, offset: 128)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!118, !1686, !109}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1716, file: !1640, line: 238, baseType: !1747, size: 64, offset: 192)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{!109, !1686, !1750}
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1716, file: !1640, line: 239, baseType: !1752, size: 64, offset: 256)
!1752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1753, size: 64)
!1753 = !DISubroutineType(types: !1754)
!1754 = !{!109, !1686, !109, !1750}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1716, file: !1640, line: 240, baseType: !1756, size: 64, offset: 320)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{null, !1686, !109}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1716, file: !1640, line: 242, baseType: !1760, size: 64, offset: 384)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!438, !1722, !407, !222, !218}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1716, file: !1640, line: 252, baseType: !222, size: 64, offset: 448)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1716, file: !1640, line: 259, baseType: !317, size: 8, offset: 512)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1716, file: !1640, line: 260, baseType: !1760, size: 64, offset: 576)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1716, file: !1640, line: 263, baseType: !1767, size: 64, offset: 640)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!1770, !1722, !1771}
!1770 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !106, line: 52, baseType: !5)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1640, line: 27, flags: DIFlagFwdDecl)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1716, file: !1640, line: 266, baseType: !1774, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DISubroutineType(types: !1776)
!1776 = !{!118, !1722, !487}
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1711, file: !1640, line: 109, baseType: !1778, size: 64, offset: 64)
!1778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1779, size: 64)
!1779 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1640, line: 31, flags: DIFlagFwdDecl)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1711, file: !1640, line: 110, baseType: !218, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1711, file: !1640, line: 111, baseType: !1638, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1639, file: !1640, line: 148, baseType: !109, size: 64, offset: 768)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1639, file: !1640, line: 154, baseType: !136, size: 64, offset: 832)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1639, file: !1640, line: 156, baseType: !104, size: 16, offset: 896)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1639, file: !1640, line: 157, baseType: !447, size: 16, offset: 912)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1639, file: !1640, line: 158, baseType: !1787, size: 64, offset: 960)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1640, line: 32, flags: DIFlagFwdDecl)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !348, file: !349, line: 71, baseType: !1790, size: 32, offset: 448)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1791, line: 19, size: 32, elements: !1792)
!1791 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !{!1793}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1790, file: !1791, line: 20, baseType: !653, size: 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !348, file: !349, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !348, file: !349, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !348, file: !349, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !348, file: !349, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !348, file: !349, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !345, file: !28, line: 463, baseType: !1800, size: 64, offset: 512)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !345, file: !28, line: 465, baseType: !1802, size: 64, offset: 576)
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !345, file: !28, line: 467, baseType: !150, size: 64, offset: 640)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !345, file: !28, line: 468, baseType: !1806, size: 64, offset: 704)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1808)
!1808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1809)
!1809 = !{!1810, !1811, !1812, !1816, !1821, !1825}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1808, file: !28, line: 88, baseType: !150, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1808, file: !28, line: 89, baseType: !455, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1808, file: !28, line: 90, baseType: !1813, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!118, !1800, !402}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1808, file: !28, line: 91, baseType: !1817, size: 64, offset: 192)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!407, !1800, !1820, !1623, !1630}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1808, file: !28, line: 93, baseType: !1822, size: 64, offset: 256)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1800}
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1808, file: !28, line: 95, baseType: !1826, size: 64, offset: 320)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1828)
!1828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1829)
!1829 = !{!1830, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1828, file: !35, line: 279, baseType: !1831, size: 64)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!118, !1800}
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1828, file: !35, line: 280, baseType: !1822, size: 64, offset: 64)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1828, file: !35, line: 281, baseType: !1831, size: 64, offset: 128)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1828, file: !35, line: 282, baseType: !1831, size: 64, offset: 192)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1828, file: !35, line: 283, baseType: !1831, size: 64, offset: 256)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1828, file: !35, line: 284, baseType: !1831, size: 64, offset: 320)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1828, file: !35, line: 285, baseType: !1831, size: 64, offset: 384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1828, file: !35, line: 286, baseType: !1831, size: 64, offset: 448)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1828, file: !35, line: 287, baseType: !1831, size: 64, offset: 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1828, file: !35, line: 288, baseType: !1831, size: 64, offset: 576)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1828, file: !35, line: 289, baseType: !1831, size: 64, offset: 640)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1828, file: !35, line: 290, baseType: !1831, size: 64, offset: 704)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1828, file: !35, line: 291, baseType: !1831, size: 64, offset: 768)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1828, file: !35, line: 292, baseType: !1831, size: 64, offset: 832)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1828, file: !35, line: 293, baseType: !1831, size: 64, offset: 896)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1828, file: !35, line: 294, baseType: !1831, size: 64, offset: 960)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1828, file: !35, line: 295, baseType: !1831, size: 64, offset: 1024)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1828, file: !35, line: 296, baseType: !1831, size: 64, offset: 1088)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1828, file: !35, line: 297, baseType: !1831, size: 64, offset: 1152)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1828, file: !35, line: 298, baseType: !1831, size: 64, offset: 1216)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1828, file: !35, line: 299, baseType: !1831, size: 64, offset: 1280)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1828, file: !35, line: 300, baseType: !1831, size: 64, offset: 1344)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1828, file: !35, line: 301, baseType: !1831, size: 64, offset: 1408)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !345, file: !28, line: 470, baseType: !1857, size: 64, offset: 768)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1859, line: 82, size: 1408, elements: !1860)
!1859 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1860 = !{!1861, !1862, !1863, !1864, !1865, !1866, !1867, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1939, !1943, !1946, !1949}
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1858, file: !1859, line: 83, baseType: !150, size: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1858, file: !1859, line: 84, baseType: !150, size: 64, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1858, file: !1859, line: 85, baseType: !1800, size: 64, offset: 128)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1858, file: !1859, line: 86, baseType: !455, size: 64, offset: 192)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1858, file: !1859, line: 87, baseType: !455, size: 64, offset: 256)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1858, file: !1859, line: 88, baseType: !455, size: 64, offset: 320)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1858, file: !1859, line: 90, baseType: !1868, size: 64, offset: 384)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!118, !1800, !1871}
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1873)
!1873 = !{!1874, !1875, !1876, !1877, !1878, !1879, !1880, !1894, !1907, !1908, !1909, !1910, !1911, !1919, !1920, !1921, !1922, !1923, !1924}
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1872, file: !22, line: 96, baseType: !150, size: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1872, file: !22, line: 97, baseType: !1857, size: 64, offset: 64)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1872, file: !22, line: 99, baseType: !341, size: 64, offset: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1872, file: !22, line: 100, baseType: !150, size: 64, offset: 192)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1872, file: !22, line: 102, baseType: !317, size: 8, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1872, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1872, file: !22, line: 105, baseType: !1881, size: 64, offset: 320)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1883)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1884, line: 262, size: 1600, elements: !1885)
!1884 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1885 = !{!1886, !1888, !1889, !1893}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1883, file: !1884, line: 263, baseType: !1887, size: 256)
!1887 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 256, elements: !1433)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1883, file: !1884, line: 264, baseType: !1887, size: 256, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1883, file: !1884, line: 265, baseType: !1890, size: 1024, offset: 512)
!1890 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 1024, elements: !1891)
!1891 = !{!1892}
!1892 = !DISubrange(count: 128)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1883, file: !1884, line: 266, baseType: !1603, size: 64, offset: 1536)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1872, file: !22, line: 106, baseType: !1895, size: 64, offset: 384)
!1895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1896, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1897)
!1897 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1884, line: 210, size: 256, elements: !1898)
!1898 = !{!1899, !1903, !1905, !1906}
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1897, file: !1884, line: 211, baseType: !1900, size: 72)
!1900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 72, elements: !1901)
!1901 = !{!1902}
!1902 = !DISubrange(count: 9)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1897, file: !1884, line: 212, baseType: !1904, size: 64, offset: 128)
!1904 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1884, line: 14, baseType: !203)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1897, file: !1884, line: 213, baseType: !107, size: 32, offset: 192)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1897, file: !1884, line: 214, baseType: !107, size: 32, offset: 224)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1872, file: !22, line: 108, baseType: !1831, size: 64, offset: 448)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1872, file: !22, line: 109, baseType: !1822, size: 64, offset: 512)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1872, file: !22, line: 110, baseType: !1831, size: 64, offset: 576)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1872, file: !22, line: 111, baseType: !1822, size: 64, offset: 640)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1872, file: !22, line: 112, baseType: !1912, size: 64, offset: 704)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DISubroutineType(types: !1914)
!1914 = !{!118, !1800, !1915}
!1915 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1916)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1917)
!1917 = !{!1918}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1916, file: !35, line: 51, baseType: !118, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1872, file: !22, line: 113, baseType: !1831, size: 64, offset: 768)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1872, file: !22, line: 114, baseType: !455, size: 64, offset: 832)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1872, file: !22, line: 115, baseType: !455, size: 64, offset: 896)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1872, file: !22, line: 117, baseType: !1826, size: 64, offset: 960)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1872, file: !22, line: 118, baseType: !1822, size: 64, offset: 1024)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1872, file: !22, line: 120, baseType: !1925, size: 64, offset: 1088)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1858, file: !1859, line: 91, baseType: !1813, size: 64, offset: 448)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1858, file: !1859, line: 92, baseType: !1831, size: 64, offset: 512)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1858, file: !1859, line: 93, baseType: !1822, size: 64, offset: 576)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1858, file: !1859, line: 94, baseType: !1831, size: 64, offset: 640)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1858, file: !1859, line: 95, baseType: !1822, size: 64, offset: 704)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1858, file: !1859, line: 97, baseType: !1831, size: 64, offset: 768)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1858, file: !1859, line: 98, baseType: !1831, size: 64, offset: 832)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1858, file: !1859, line: 100, baseType: !1912, size: 64, offset: 896)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1858, file: !1859, line: 101, baseType: !1831, size: 64, offset: 960)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1858, file: !1859, line: 103, baseType: !1831, size: 64, offset: 1024)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1858, file: !1859, line: 105, baseType: !1831, size: 64, offset: 1088)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1858, file: !1859, line: 107, baseType: !1826, size: 64, offset: 1152)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1858, file: !1859, line: 109, baseType: !1940, size: 64, offset: 1216)
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1941, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1942)
!1942 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1859, line: 109, flags: DIFlagFwdDecl)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1858, file: !1859, line: 111, baseType: !1944, size: 64, offset: 1280)
!1944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1945, size: 64)
!1945 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1859, line: 111, flags: DIFlagFwdDecl)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1858, file: !1859, line: 112, baseType: !1947, offset: 1344)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1948, line: 187, elements: !380)
!1948 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1858, file: !1859, line: 114, baseType: !317, size: 8, offset: 1344)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !345, file: !28, line: 471, baseType: !1871, size: 64, offset: 832)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !345, file: !28, line: 473, baseType: !109, size: 64, offset: 896)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !345, file: !28, line: 475, baseType: !109, size: 64, offset: 960)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !345, file: !28, line: 480, baseType: !611, size: 192, offset: 1024)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !345, file: !28, line: 484, baseType: !1955, size: 576, offset: 1216)
!1955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1956)
!1956 = !{!1957, !1958, !1959, !1960, !1961, !1962}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1955, file: !28, line: 362, baseType: !353, size: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1955, file: !28, line: 363, baseType: !353, size: 128, offset: 128)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1955, file: !28, line: 364, baseType: !353, size: 128, offset: 256)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1955, file: !28, line: 365, baseType: !353, size: 128, offset: 384)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1955, file: !28, line: 366, baseType: !317, size: 8, offset: 512)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1955, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !345, file: !28, line: 485, baseType: !1964, size: 2304, offset: 1792)
!1964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1965)
!1965 = !{!1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2061, !2065}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1964, file: !35, line: 566, baseType: !1915, size: 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1964, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1964, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1964, file: !35, line: 569, baseType: !317, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1964, file: !35, line: 570, baseType: !317, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1964, file: !35, line: 571, baseType: !317, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1964, file: !35, line: 572, baseType: !317, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1964, file: !35, line: 573, baseType: !317, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1964, file: !35, line: 574, baseType: !317, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1964, file: !35, line: 575, baseType: !317, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1964, file: !35, line: 576, baseType: !317, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1964, file: !35, line: 577, baseType: !133, size: 32, offset: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1964, file: !35, line: 578, baseType: !366, offset: 96)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1964, file: !35, line: 580, baseType: !353, size: 128, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1964, file: !35, line: 581, baseType: !950, size: 192, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1964, file: !35, line: 582, baseType: !1982, size: 64, offset: 448)
!1982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1983, size: 64)
!1983 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1984, line: 43, size: 1472, elements: !1985)
!1984 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1985 = !{!1986, !1987, !1988, !1989, !1990, !1993, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1983, file: !1984, line: 44, baseType: !150, size: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1983, file: !1984, line: 45, baseType: !118, size: 32, offset: 64)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1983, file: !1984, line: 46, baseType: !353, size: 128, offset: 128)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1983, file: !1984, line: 47, baseType: !366, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1983, file: !1984, line: 48, baseType: !1991, size: 64, offset: 256)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1983, file: !1984, line: 49, baseType: !1994, size: 320, offset: 320)
!1994 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1995, line: 11, size: 320, elements: !1996)
!1995 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1996 = !{!1997, !1998, !1999, !2004}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1994, file: !1995, line: 16, baseType: !914, size: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1994, file: !1995, line: 17, baseType: !203, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1994, file: !1995, line: 18, baseType: !2000, size: 64, offset: 192)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DISubroutineType(types: !2002)
!2002 = !{null, !2003}
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1994, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1994, file: !1995, line: 19, baseType: !133, size: 32, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1983, file: !1984, line: 50, baseType: !203, size: 64, offset: 640)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1983, file: !1984, line: 51, baseType: !723, size: 64, offset: 704)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1983, file: !1984, line: 52, baseType: !723, size: 64, offset: 768)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1983, file: !1984, line: 53, baseType: !723, size: 64, offset: 832)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1983, file: !1984, line: 54, baseType: !723, size: 64, offset: 896)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1983, file: !1984, line: 55, baseType: !723, size: 64, offset: 960)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1983, file: !1984, line: 56, baseType: !203, size: 64, offset: 1024)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1983, file: !1984, line: 57, baseType: !203, size: 64, offset: 1088)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1983, file: !1984, line: 58, baseType: !203, size: 64, offset: 1152)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1983, file: !1984, line: 59, baseType: !203, size: 64, offset: 1216)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1983, file: !1984, line: 60, baseType: !203, size: 64, offset: 1280)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1983, file: !1984, line: 61, baseType: !1800, size: 64, offset: 1344)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1983, file: !1984, line: 62, baseType: !317, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1983, file: !1984, line: 63, baseType: !317, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1964, file: !35, line: 583, baseType: !317, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1964, file: !35, line: 584, baseType: !317, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1964, file: !35, line: 585, baseType: !317, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1964, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1964, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1964, file: !35, line: 592, baseType: !715, size: 512, offset: 576)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1964, file: !35, line: 593, baseType: !136, size: 64, offset: 1088)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1964, file: !35, line: 594, baseType: !1537, size: 256, offset: 1152)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1964, file: !35, line: 595, baseType: !921, size: 128, offset: 1408)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1964, file: !35, line: 596, baseType: !1991, size: 64, offset: 1536)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1964, file: !35, line: 597, baseType: !534, size: 32, offset: 1600)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1964, file: !35, line: 598, baseType: !534, size: 32, offset: 1632)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1964, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1964, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1964, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1964, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1964, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1964, file: !35, line: 604, baseType: !317, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1964, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1964, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1964, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1964, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1964, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1964, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1964, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1964, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1964, file: !35, line: 613, baseType: !118, size: 32, offset: 1792)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1964, file: !35, line: 614, baseType: !118, size: 32, offset: 1824)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1964, file: !35, line: 615, baseType: !136, size: 64, offset: 1856)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1964, file: !35, line: 616, baseType: !136, size: 64, offset: 1920)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1964, file: !35, line: 617, baseType: !136, size: 64, offset: 1984)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1964, file: !35, line: 618, baseType: !136, size: 64, offset: 2048)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1964, file: !35, line: 620, baseType: !2052, size: 64, offset: 2112)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !2054)
!2054 = !{!2055, !2056, !2057, !2058}
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2053, file: !35, line: 537, baseType: !366)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2053, file: !35, line: 538, baseType: !5, size: 32)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2053, file: !35, line: 540, baseType: !353, size: 128, offset: 64)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2053, file: !35, line: 543, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !35, line: 534, flags: DIFlagFwdDecl)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1964, file: !35, line: 621, baseType: !2062, size: 64, offset: 2176)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DISubroutineType(types: !2064)
!2064 = !{null, !1800, !874}
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1964, file: !35, line: 622, baseType: !2066, size: 64, offset: 2240)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !345, file: !28, line: 486, baseType: !2069, size: 64, offset: 4096)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2078, !2079, !2080}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2070, file: !35, line: 643, baseType: !1828, size: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2070, file: !35, line: 644, baseType: !1831, size: 64, offset: 1472)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2070, file: !35, line: 645, baseType: !2075, size: 64, offset: 1536)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{null, !1800, !317}
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2070, file: !35, line: 646, baseType: !1831, size: 64, offset: 1600)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2070, file: !35, line: 647, baseType: !1822, size: 64, offset: 1664)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2070, file: !35, line: 648, baseType: !1822, size: 64, offset: 1728)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !345, file: !28, line: 493, baseType: !2082, size: 64, offset: 4160)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !345, file: !28, line: 499, baseType: !353, size: 128, offset: 4224)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !345, file: !28, line: 502, baseType: !2086, size: 64, offset: 4352)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !345, file: !28, line: 504, baseType: !2090, size: 64, offset: 4416)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !136, size: 64)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !345, file: !28, line: 505, baseType: !136, size: 64, offset: 4480)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !345, file: !28, line: 510, baseType: !136, size: 64, offset: 4544)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !345, file: !28, line: 511, baseType: !2094, size: 64, offset: 4608)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2096)
!2096 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !345, file: !28, line: 513, baseType: !2098, size: 64, offset: 4672)
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !2100)
!2100 = !{!2101, !2102}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2099, file: !28, line: 293, baseType: !5, size: 32)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2099, file: !28, line: 294, baseType: !203, size: 64, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !345, file: !28, line: 515, baseType: !353, size: 128, offset: 4736)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !345, file: !28, line: 526, baseType: !2105, offset: 4864)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2106, line: 5, elements: !380)
!2106 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !345, file: !28, line: 528, baseType: !2108, size: 64, offset: 4864)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2110, line: 51, size: 1344, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2113, !2115, !2116, !2206, !2215, !2216, !2217, !2218, !2219, !2220, !2221}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2109, file: !2110, line: 52, baseType: !150, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2109, file: !2110, line: 53, baseType: !2114, size: 32, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2110, line: 28, baseType: !133)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2109, file: !2110, line: 54, baseType: !150, size: 64, offset: 128)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2109, file: !2110, line: 55, baseType: !2117, size: 192, offset: 192)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2118, line: 17, size: 192, elements: !2119)
!2118 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2119 = !{!2120, !2122, !2205}
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2117, file: !2118, line: 18, baseType: !2121, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2117, file: !2118, line: 19, baseType: !2123, size: 64, offset: 64)
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2124, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2125)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2118, line: 110, size: 1152, elements: !2126)
!2126 = !{!2127, !2131, !2135, !2141, !2147, !2151, !2155, !2160, !2164, !2165, !2169, !2173, !2177, !2188, !2189, !2190, !2191, !2201}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2125, file: !2118, line: 111, baseType: !2128, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!2121, !2121}
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2125, file: !2118, line: 112, baseType: !2132, size: 64, offset: 64)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = !DISubroutineType(types: !2134)
!2134 = !{null, !2121}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2125, file: !2118, line: 113, baseType: !2136, size: 64, offset: 128)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!317, !2139}
!2139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2140, size: 64)
!2140 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2125, file: !2118, line: 114, baseType: !2142, size: 64, offset: 192)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!1603, !2139, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2125, file: !2118, line: 116, baseType: !2148, size: 64, offset: 256)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!317, !2139, !150}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2125, file: !2118, line: 118, baseType: !2152, size: 64, offset: 320)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!118, !2139, !150, !5, !109, !222}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2125, file: !2118, line: 123, baseType: !2156, size: 64, offset: 384)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!118, !2139, !150, !2159, !222}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2125, file: !2118, line: 126, baseType: !2161, size: 64, offset: 448)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = !DISubroutineType(types: !2163)
!2163 = !{!150, !2139}
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2125, file: !2118, line: 127, baseType: !2161, size: 64, offset: 512)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2125, file: !2118, line: 128, baseType: !2166, size: 64, offset: 576)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2121, !2139}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2125, file: !2118, line: 130, baseType: !2170, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!2121, !2139, !2121}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2125, file: !2118, line: 133, baseType: !2174, size: 64, offset: 704)
!2174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2175, size: 64)
!2175 = !DISubroutineType(types: !2176)
!2176 = !{!2121, !2139, !150}
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2125, file: !2118, line: 135, baseType: !2178, size: 64, offset: 768)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DISubroutineType(types: !2180)
!2180 = !{!118, !2139, !150, !150, !5, !5, !2181}
!2181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2182, size: 64)
!2182 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2118, line: 43, size: 640, elements: !2183)
!2183 = !{!2184, !2185, !2186}
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2182, file: !2118, line: 44, baseType: !2121, size: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2182, file: !2118, line: 45, baseType: !5, size: 32, offset: 64)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2182, file: !2118, line: 46, baseType: !2187, size: 512, offset: 128)
!2187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 512, elements: !753)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2125, file: !2118, line: 140, baseType: !2170, size: 64, offset: 832)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2125, file: !2118, line: 143, baseType: !2166, size: 64, offset: 896)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2125, file: !2118, line: 145, baseType: !2128, size: 64, offset: 960)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2125, file: !2118, line: 146, baseType: !2192, size: 64, offset: 1024)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!118, !2139, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2118, line: 29, size: 128, elements: !2197)
!2197 = !{!2198, !2199, !2200}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2196, file: !2118, line: 30, baseType: !5, size: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2196, file: !2118, line: 31, baseType: !5, size: 32, offset: 32)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2196, file: !2118, line: 32, baseType: !2139, size: 64, offset: 64)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2125, file: !2118, line: 148, baseType: !2202, size: 64, offset: 1088)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!118, !2139, !1800}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2117, file: !2118, line: 20, baseType: !1800, size: 64, offset: 128)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2109, file: !2110, line: 57, baseType: !2207, size: 64, offset: 384)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2110, line: 31, size: 704, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2208, file: !2110, line: 32, baseType: !407, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2208, file: !2110, line: 33, baseType: !118, size: 32, offset: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2208, file: !2110, line: 34, baseType: !109, size: 64, offset: 128)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2208, file: !2110, line: 35, baseType: !2207, size: 64, offset: 192)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2208, file: !2110, line: 43, baseType: !470, size: 448, offset: 256)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2109, file: !2110, line: 58, baseType: !2207, size: 64, offset: 448)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2109, file: !2110, line: 59, baseType: !2108, size: 64, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2109, file: !2110, line: 60, baseType: !2108, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2109, file: !2110, line: 61, baseType: !2108, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2109, file: !2110, line: 63, baseType: !348, size: 512, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2109, file: !2110, line: 65, baseType: !203, size: 64, offset: 1216)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2109, file: !2110, line: 66, baseType: !109, size: 64, offset: 1280)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !345, file: !28, line: 529, baseType: !2121, size: 64, offset: 4928)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !345, file: !28, line: 534, baseType: !2224, size: 32, offset: 4992)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !96, line: 16, baseType: !2225)
!2225 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !96, line: 13, baseType: !133)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !345, file: !28, line: 535, baseType: !133, size: 32, offset: 5024)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !345, file: !28, line: 537, baseType: !366, offset: 5056)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !345, file: !28, line: 538, baseType: !353, size: 128, offset: 5056)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !345, file: !28, line: 540, baseType: !2230, size: 64, offset: 5184)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2232, line: 54, size: 960, elements: !2233)
!2232 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2233 = !{!2234, !2235, !2236, !2237, !2238, !2239, !2240, !2244, !2248, !2249, !2250, !2251, !2255, !2259, !2260}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2231, file: !2232, line: 55, baseType: !150, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2231, file: !2232, line: 56, baseType: !341, size: 64, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2231, file: !2232, line: 58, baseType: !455, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2231, file: !2232, line: 59, baseType: !455, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2231, file: !2232, line: 60, baseType: !359, size: 64, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2231, file: !2232, line: 62, baseType: !1813, size: 64, offset: 320)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2231, file: !2232, line: 63, baseType: !2241, size: 64, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!407, !1800, !1820}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2231, file: !2232, line: 65, baseType: !2245, size: 64, offset: 448)
!2245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2246, size: 64)
!2246 = !DISubroutineType(types: !2247)
!2247 = !{null, !2230}
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2231, file: !2232, line: 66, baseType: !1822, size: 64, offset: 512)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2231, file: !2232, line: 68, baseType: !1831, size: 64, offset: 576)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2231, file: !2232, line: 70, baseType: !1586, size: 64, offset: 640)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2231, file: !2232, line: 71, baseType: !2252, size: 64, offset: 704)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{!1603, !1800}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2231, file: !2232, line: 73, baseType: !2256, size: 64, offset: 768)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DISubroutineType(types: !2258)
!2258 = !{null, !1800, !1623, !1630}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2231, file: !2232, line: 75, baseType: !1826, size: 64, offset: 832)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2231, file: !2232, line: 77, baseType: !1944, size: 64, offset: 896)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !345, file: !28, line: 541, baseType: !455, size: 64, offset: 5248)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !345, file: !28, line: 543, baseType: !1822, size: 64, offset: 5312)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !345, file: !28, line: 544, baseType: !2264, size: 64, offset: 5376)
!2264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2265, size: 64)
!2265 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !345, file: !28, line: 545, baseType: !2267, size: 64, offset: 5440)
!2267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2268, size: 64)
!2268 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !345, file: !28, line: 547, baseType: !317, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !345, file: !28, line: 548, baseType: !317, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !345, file: !28, line: 549, baseType: !317, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !345, file: !28, line: 550, baseType: !317, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !126, file: !127, line: 376, baseType: !118, size: 32, offset: 8832)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !126, file: !127, line: 377, baseType: !2275, size: 192, offset: 8896)
!2275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !127, line: 191, size: 192, elements: !2276)
!2276 = !{!2277, !2280, !2281}
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2275, file: !127, line: 192, baseType: !2278, size: 64)
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2279, size: 64)
!2279 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1640, line: 21, flags: DIFlagFwdDecl)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2275, file: !127, line: 194, baseType: !150, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2275, file: !127, line: 195, baseType: !150, size: 64, offset: 128)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !126, file: !127, line: 378, baseType: !2283, size: 64, offset: 9088)
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2284, size: 64)
!2284 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2285, line: 16, flags: DIFlagFwdDecl)
!2285 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !126, file: !127, line: 386, baseType: !163, size: 64, offset: 9152)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !126, file: !127, line: 389, baseType: !353, size: 128, offset: 9216)
!2288 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !127, line: 391, baseType: !2289, size: 320, offset: 9344)
!2289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !127, line: 391, size: 320, elements: !2290)
!2290 = !{!2291, !2298}
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2289, file: !127, line: 392, baseType: !2292, size: 320)
!2292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !127, line: 211, size: 320, elements: !2293)
!2293 = !{!2294, !2295, !2296, !2297}
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2292, file: !127, line: 212, baseType: !353, size: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2292, file: !127, line: 213, baseType: !136, size: 64, offset: 128)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2292, file: !127, line: 214, baseType: !136, size: 64, offset: 192)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2292, file: !127, line: 215, baseType: !133, size: 32, offset: 256)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2289, file: !127, line: 393, baseType: !2299, size: 256)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !127, line: 230, size: 256, elements: !2300)
!2300 = !{!2301, !2302}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2299, file: !127, line: 231, baseType: !611, size: 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2299, file: !127, line: 232, baseType: !5, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !123, file: !49, line: 321, baseType: !2304, size: 288, offset: 9664)
!2304 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !49, line: 29, size: 288, elements: !2305)
!2305 = !{!2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313, !2314}
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2304, file: !49, line: 30, baseType: !5, size: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2304, file: !49, line: 31, baseType: !5, size: 32, offset: 32)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2304, file: !49, line: 32, baseType: !5, size: 32, offset: 64)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2304, file: !49, line: 33, baseType: !5, size: 32, offset: 96)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2304, file: !49, line: 34, baseType: !5, size: 32, offset: 128)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2304, file: !49, line: 35, baseType: !5, size: 32, offset: 160)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2304, file: !49, line: 36, baseType: !5, size: 32, offset: 192)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2304, file: !49, line: 37, baseType: !5, size: 32, offset: 224)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2304, file: !49, line: 38, baseType: !5, size: 32, offset: 256)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !123, file: !49, line: 322, baseType: !2316, size: 1024, offset: 9984)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !49, line: 291, size: 1024, elements: !2317)
!2317 = !{!2318, !2327, !2328, !2329, !2335, !2384}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2316, file: !49, line: 292, baseType: !2319, size: 192)
!2319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !49, line: 187, size: 192, elements: !2320)
!2320 = !{!2321, !2322, !2323, !2324, !2325, !2326}
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2319, file: !49, line: 188, baseType: !48, size: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2319, file: !49, line: 189, baseType: !56, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2319, file: !49, line: 190, baseType: !61, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2319, file: !49, line: 191, baseType: !5, size: 32, offset: 96)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2319, file: !49, line: 192, baseType: !5, size: 32, offset: 128)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2319, file: !49, line: 193, baseType: !5, size: 32, offset: 160)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2316, file: !49, line: 293, baseType: !2319, size: 192, offset: 192)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2316, file: !49, line: 294, baseType: !2319, size: 192, offset: 384)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2316, file: !49, line: 295, baseType: !2330, size: 320, offset: 576)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !49, line: 238, size: 320, elements: !2331)
!2331 = !{!2332, !2333, !2334}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2330, file: !49, line: 239, baseType: !2319, size: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2330, file: !49, line: 240, baseType: !5, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2330, file: !49, line: 241, baseType: !109, size: 64, offset: 256)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2316, file: !49, line: 296, baseType: !2336, size: 64, offset: 896)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !49, line: 268, size: 64, elements: !2338)
!2338 = !{!2339}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2337, file: !49, line: 269, baseType: !2340, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2341, size: 64)
!2341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !49, line: 255, size: 256, elements: !2342)
!2342 = !{!2343, !2348, !2352, !2383}
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2341, file: !49, line: 256, baseType: !2344, size: 64)
!2344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2345, size: 64)
!2345 = !DISubroutineType(types: !2346)
!2346 = !{!118, !2347}
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2341, file: !49, line: 257, baseType: !2349, size: 64, offset: 64)
!2349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2350, size: 64)
!2350 = !DISubroutineType(types: !2351)
!2351 = !{null, !2347}
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2341, file: !49, line: 258, baseType: !2353, size: 64, offset: 128)
!2353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2354, size: 64)
!2354 = !DISubroutineType(types: !2355)
!2355 = !{!118, !2347, !2356}
!2356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2357, size: 64)
!2357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !49, line: 112, size: 512, elements: !2358)
!2358 = !{!2359, !2360, !2368, !2369, !2370, !2375, !2376, !2377, !2382}
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2357, file: !49, line: 113, baseType: !67, size: 32)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2357, file: !49, line: 114, baseType: !2361, size: 160, offset: 32)
!2361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !49, line: 77, size: 160, elements: !2362)
!2362 = !{!2363, !2364, !2365, !2366, !2367}
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2361, file: !49, line: 78, baseType: !5, size: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2361, file: !49, line: 79, baseType: !5, size: 32, offset: 32)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2361, file: !49, line: 80, baseType: !5, size: 32, offset: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2361, file: !49, line: 81, baseType: !5, size: 32, offset: 96)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2361, file: !49, line: 82, baseType: !5, size: 32, offset: 128)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2357, file: !49, line: 115, baseType: !5, size: 32, offset: 192)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2357, file: !49, line: 116, baseType: !5, size: 32, offset: 224)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2357, file: !49, line: 120, baseType: !2371, size: 64, offset: 256)
!2371 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !49, line: 117, size: 64, elements: !2372)
!2372 = !{!2373, !2374}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2371, file: !49, line: 118, baseType: !1603, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2371, file: !49, line: 119, baseType: !109, size: 64)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2357, file: !49, line: 121, baseType: !5, size: 32, offset: 320)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2357, file: !49, line: 122, baseType: !5, size: 32, offset: 352)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2357, file: !49, line: 126, baseType: !2378, size: 64, offset: 384)
!2378 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2357, file: !49, line: 123, size: 64, elements: !2379)
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2378, file: !49, line: 124, baseType: !1603, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2378, file: !49, line: 125, baseType: !109, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2357, file: !49, line: 127, baseType: !118, size: 32, offset: 448)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2341, file: !49, line: 260, baseType: !2353, size: 64, offset: 192)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2316, file: !49, line: 297, baseType: !2336, size: 64, offset: 960)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !123, file: !49, line: 323, baseType: !2386, size: 64, offset: 11008)
!2386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !49, line: 61, size: 64, elements: !2387)
!2387 = !{!2388, !2389}
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2386, file: !49, line: 62, baseType: !5, size: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2386, file: !49, line: 63, baseType: !5, size: 32, offset: 32)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !123, file: !49, line: 324, baseType: !2391, size: 64, offset: 11072)
!2391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !49, line: 205, size: 64, elements: !2392)
!2392 = !{!2393}
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2391, file: !49, line: 206, baseType: !202, size: 64)
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !123, file: !49, line: 325, baseType: !2395, size: 64, offset: 11136)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2397)
!2397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !49, line: 225, size: 192, elements: !2398)
!2398 = !{!2399, !2405, !2406}
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2397, file: !49, line: 226, baseType: !2400, size: 64)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!118, !2347, !2403}
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2361)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2397, file: !49, line: 227, baseType: !2400, size: 64, offset: 64)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2397, file: !49, line: 228, baseType: !2407, size: 64, offset: 128)
!2407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2408, size: 64)
!2408 = !DISubroutineType(types: !2409)
!2409 = !{!317, !2347, !2403}
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !120, file: !72, line: 1098, baseType: !2411, size: 96, offset: 11200)
!2411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !72, line: 249, size: 96, elements: !2412)
!2412 = !{!2413, !2415}
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2411, file: !72, line: 250, baseType: !2414, size: 64)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 64, elements: !753)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2411, file: !72, line: 251, baseType: !118, size: 32, offset: 64)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !120, file: !72, line: 1099, baseType: !2417, size: 704, offset: 11328)
!2417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !72, line: 230, size: 704, elements: !2418)
!2418 = !{!2419, !2420, !2421, !2423, !2424}
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2417, file: !72, line: 232, baseType: !150, size: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2417, file: !72, line: 233, baseType: !317, size: 8, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2417, file: !72, line: 234, baseType: !2422, size: 256, offset: 128)
!2422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !203, size: 256, elements: !593)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2417, file: !72, line: 235, baseType: !2422, size: 256, offset: 384)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2417, file: !72, line: 238, baseType: !2425, size: 64, offset: 640)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2427, line: 167, size: 832, elements: !2428)
!2427 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2428 = !{!2429, !2430, !2431, !2432, !2433, !2434, !2435, !2436}
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2426, file: !2427, line: 168, baseType: !118, size: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2426, file: !2427, line: 169, baseType: !624, size: 16, offset: 32)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2426, file: !2427, line: 170, baseType: !624, size: 16, offset: 48)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2426, file: !2427, line: 171, baseType: !624, size: 16, offset: 64)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2426, file: !2427, line: 172, baseType: !624, size: 16, offset: 80)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2426, file: !2427, line: 173, baseType: !624, size: 16, offset: 96)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2426, file: !2427, line: 174, baseType: !624, size: 16, offset: 112)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2426, file: !2427, line: 175, baseType: !2437, size: 704, offset: 128)
!2437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 704, elements: !2438)
!2438 = !{!2439}
!2439 = !DISubrange(count: 88)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !120, file: !72, line: 1100, baseType: !2441, size: 128, offset: 12032)
!2441 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !72, line: 1036, size: 128, elements: !2442)
!2442 = !{!2443, !2532}
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2441, file: !72, line: 1037, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2445, size: 64)
!2445 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2446)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !2447, line: 61, size: 192, elements: !2448)
!2447 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450, !2451}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2446, file: !2447, line: 62, baseType: !118, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2446, file: !2447, line: 63, baseType: !407, size: 64, offset: 64)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2446, file: !2447, line: 64, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2453, size: 64)
!2453 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2454)
!2454 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !2447, line: 47, size: 256, elements: !2455)
!2455 = !{!2456, !2460, !2462, !2463}
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2454, file: !2447, line: 48, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2458, size: 64)
!2458 = !DISubroutineType(types: !2459)
!2459 = !{null, !119}
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2454, file: !2447, line: 49, baseType: !2461, size: 64, offset: 64)
!2461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2454, file: !2447, line: 50, baseType: !2457, size: 64, offset: 128)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !2454, file: !2447, line: 51, baseType: !2464, size: 64, offset: 192)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DISubroutineType(types: !2466)
!2466 = !{null, !119, !2467}
!2467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2468, size: 64)
!2468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2427, line: 54, size: 2048, elements: !2469)
!2469 = !{!2470, !2472, !2473, !2474, !2475, !2477, !2478, !2479, !2483, !2485, !2487, !2488, !2489, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531}
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2468, file: !2427, line: 57, baseType: !2471, size: 32)
!2471 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 32, elements: !593)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2468, file: !2427, line: 58, baseType: !105, size: 16, offset: 32)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2468, file: !2427, line: 59, baseType: !105, size: 16, offset: 48)
!2474 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2468, file: !2427, line: 60, baseType: !105, size: 16, offset: 64)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2468, file: !2427, line: 61, baseType: !2476, size: 16, offset: 80)
!2476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 16, elements: !1186)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2468, file: !2427, line: 62, baseType: !105, size: 16, offset: 96)
!2478 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2468, file: !2427, line: 63, baseType: !98, size: 8, offset: 112)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2468, file: !2427, line: 64, baseType: !2480, size: 136, offset: 120)
!2480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 136, elements: !2481)
!2481 = !{!2482}
!2482 = !DISubrange(count: 17)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2468, file: !2427, line: 67, baseType: !2484, size: 96, offset: 256)
!2484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 96, elements: !1439)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2468, file: !2427, line: 68, baseType: !2486, size: 160, offset: 352)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 160, elements: !1404)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2468, file: !2427, line: 69, baseType: !98, size: 8, offset: 512)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2468, file: !2427, line: 70, baseType: !105, size: 16, offset: 520)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2468, file: !2427, line: 71, baseType: !2490, size: 104, offset: 536)
!2490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 104, elements: !2491)
!2491 = !{!2492}
!2492 = !DISubrange(count: 13)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2468, file: !2427, line: 74, baseType: !108, size: 32, offset: 640)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2468, file: !2427, line: 75, baseType: !105, size: 16, offset: 672)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2468, file: !2427, line: 76, baseType: !108, size: 32, offset: 688)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2468, file: !2427, line: 77, baseType: !105, size: 16, offset: 720)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2468, file: !2427, line: 78, baseType: !108, size: 32, offset: 736)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2468, file: !2427, line: 79, baseType: !108, size: 32, offset: 768)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2468, file: !2427, line: 80, baseType: !98, size: 8, offset: 800)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2468, file: !2427, line: 81, baseType: !98, size: 8, offset: 808)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2468, file: !2427, line: 82, baseType: !98, size: 8, offset: 816)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2468, file: !2427, line: 83, baseType: !105, size: 16, offset: 824)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2468, file: !2427, line: 84, baseType: !105, size: 16, offset: 840)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2468, file: !2427, line: 85, baseType: !98, size: 8, offset: 856)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2468, file: !2427, line: 86, baseType: !105, size: 16, offset: 864)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2468, file: !2427, line: 87, baseType: !98, size: 8, offset: 880)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2468, file: !2427, line: 88, baseType: !98, size: 8, offset: 888)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2468, file: !2427, line: 89, baseType: !98, size: 8, offset: 896)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2468, file: !2427, line: 90, baseType: !98, size: 8, offset: 904)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2468, file: !2427, line: 91, baseType: !98, size: 8, offset: 912)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2468, file: !2427, line: 92, baseType: !2490, size: 104, offset: 920)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2468, file: !2427, line: 95, baseType: !98, size: 8, offset: 1024)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2468, file: !2427, line: 96, baseType: !105, size: 16, offset: 1032)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2468, file: !2427, line: 97, baseType: !105, size: 16, offset: 1048)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2468, file: !2427, line: 98, baseType: !105, size: 16, offset: 1064)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2468, file: !2427, line: 99, baseType: !105, size: 16, offset: 1080)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2468, file: !2427, line: 100, baseType: !105, size: 16, offset: 1096)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2468, file: !2427, line: 101, baseType: !105, size: 16, offset: 1112)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2468, file: !2427, line: 102, baseType: !105, size: 16, offset: 1128)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2468, file: !2427, line: 103, baseType: !98, size: 8, offset: 1144)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2468, file: !2427, line: 104, baseType: !105, size: 16, offset: 1152)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2468, file: !2427, line: 105, baseType: !105, size: 16, offset: 1168)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2468, file: !2427, line: 106, baseType: !105, size: 16, offset: 1184)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2468, file: !2427, line: 107, baseType: !98, size: 8, offset: 1200)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2468, file: !2427, line: 108, baseType: !98, size: 8, offset: 1208)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2468, file: !2427, line: 109, baseType: !105, size: 16, offset: 1216)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2468, file: !2427, line: 110, baseType: !105, size: 16, offset: 1232)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2468, file: !2427, line: 111, baseType: !2414, size: 64, offset: 1248)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2468, file: !2427, line: 114, baseType: !105, size: 16, offset: 1312)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2468, file: !2427, line: 115, baseType: !2437, size: 704, offset: 1328)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2468, file: !2427, line: 117, baseType: !105, size: 16, offset: 2032)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2441, file: !72, line: 1038, baseType: !109, size: 64, offset: 64)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !120, file: !72, line: 1101, baseType: !2534, size: 384, offset: 12160)
!2534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !72, line: 1021, size: 384, elements: !2535)
!2535 = !{!2536, !2537, !2538, !2542, !2543, !2547}
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2534, file: !72, line: 1022, baseType: !2461, size: 64)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2534, file: !72, line: 1023, baseType: !2457, size: 64, offset: 64)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2534, file: !72, line: 1024, baseType: !2539, size: 64, offset: 128)
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DISubroutineType(types: !2541)
!2541 = !{!118, !119, !218, !135}
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2534, file: !72, line: 1025, baseType: !2539, size: 64, offset: 192)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2534, file: !72, line: 1026, baseType: !2544, size: 64, offset: 256)
!2544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2545, size: 64)
!2545 = !DISubroutineType(types: !2546)
!2546 = !{!118, !119, !118}
!2547 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2534, file: !72, line: 1027, baseType: !2548, size: 64, offset: 320)
!2548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2549, size: 64)
!2549 = !DISubroutineType(types: !2550)
!2550 = !{!118, !119, !2551}
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !72, line: 492, size: 1536, elements: !2553)
!2553 = !{!2554, !2555}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2552, file: !72, line: 493, baseType: !71, size: 32)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2552, file: !72, line: 499, baseType: !2556, size: 1472, offset: 64)
!2556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !72, line: 494, size: 1472, elements: !2557)
!2557 = !{!2558, !2559}
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2556, file: !72, line: 495, baseType: !5, size: 32)
!2559 = !DIDerivedType(tag: DW_TAG_member, scope: !2556, file: !72, line: 496, baseType: !2560, size: 1408, offset: 64)
!2560 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2556, file: !72, line: 496, size: 1408, elements: !2561)
!2561 = !{!2562}
!2562 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2560, file: !72, line: 497, baseType: !2563, size: 1408)
!2563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !72, line: 436, size: 1408, elements: !2564)
!2564 = !{!2565, !2566, !2567, !2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2563, file: !72, line: 437, baseType: !136, size: 64)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2563, file: !72, line: 438, baseType: !133, size: 32, offset: 64)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2563, file: !72, line: 439, baseType: !136, size: 64, offset: 128)
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2563, file: !72, line: 440, baseType: !136, size: 64, offset: 192)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2563, file: !72, line: 441, baseType: !133, size: 32, offset: 256)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2563, file: !72, line: 442, baseType: !133, size: 32, offset: 288)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2563, file: !72, line: 443, baseType: !133, size: 32, offset: 320)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2563, file: !72, line: 444, baseType: !133, size: 32, offset: 352)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2563, file: !72, line: 445, baseType: !133, size: 32, offset: 384)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2563, file: !72, line: 446, baseType: !133, size: 32, offset: 416)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2563, file: !72, line: 447, baseType: !133, size: 32, offset: 448)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2563, file: !72, line: 448, baseType: !133, size: 32, offset: 480)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2563, file: !72, line: 449, baseType: !133, size: 32, offset: 512)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2563, file: !72, line: 450, baseType: !133, size: 32, offset: 544)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2563, file: !72, line: 451, baseType: !133, size: 32, offset: 576)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2563, file: !72, line: 452, baseType: !133, size: 32, offset: 608)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2563, file: !72, line: 453, baseType: !133, size: 32, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2563, file: !72, line: 454, baseType: !133, size: 32, offset: 672)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2563, file: !72, line: 455, baseType: !133, size: 32, offset: 704)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2563, file: !72, line: 456, baseType: !133, size: 32, offset: 736)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2563, file: !72, line: 457, baseType: !133, size: 32, offset: 768)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2563, file: !72, line: 458, baseType: !133, size: 32, offset: 800)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2563, file: !72, line: 459, baseType: !133, size: 32, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2563, file: !72, line: 460, baseType: !133, size: 32, offset: 864)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2563, file: !72, line: 461, baseType: !133, size: 32, offset: 896)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2563, file: !72, line: 462, baseType: !133, size: 32, offset: 928)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2563, file: !72, line: 463, baseType: !133, size: 32, offset: 960)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2563, file: !72, line: 464, baseType: !133, size: 32, offset: 992)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2563, file: !72, line: 465, baseType: !133, size: 32, offset: 1024)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2563, file: !72, line: 466, baseType: !133, size: 32, offset: 1056)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2563, file: !72, line: 467, baseType: !133, size: 32, offset: 1088)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2563, file: !72, line: 468, baseType: !136, size: 64, offset: 1152)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2563, file: !72, line: 469, baseType: !133, size: 32, offset: 1216)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2563, file: !72, line: 470, baseType: !133, size: 32, offset: 1248)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2563, file: !72, line: 471, baseType: !133, size: 32, offset: 1280)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2563, file: !72, line: 472, baseType: !133, size: 32, offset: 1312)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2563, file: !72, line: 473, baseType: !133, size: 32, offset: 1344)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2563, file: !72, line: 474, baseType: !133, size: 32, offset: 1376)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !120, file: !72, line: 1102, baseType: !2604, size: 1280, offset: 12544)
!2604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !72, line: 989, size: 1280, elements: !2605)
!2605 = !{!2606, !2607, !2608, !2612, !2616, !2620, !2626, !2630, !2634, !2638, !2639, !2640, !2644, !2645, !2649, !2650, !2651}
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2604, file: !72, line: 990, baseType: !109, size: 64)
!2607 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2604, file: !72, line: 991, baseType: !109, size: 64, offset: 64)
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2604, file: !72, line: 992, baseType: !2609, size: 64, offset: 128)
!2609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2610, size: 64)
!2610 = !DISubroutineType(types: !2611)
!2611 = !{null, !119, !118}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2604, file: !72, line: 993, baseType: !2613, size: 64, offset: 192)
!2613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2614, size: 64)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!98, !119}
!2616 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2604, file: !72, line: 994, baseType: !2617, size: 64, offset: 256)
!2617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2618, size: 64)
!2618 = !DISubroutineType(types: !2619)
!2619 = !{null, !119, !98}
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2604, file: !72, line: 995, baseType: !2621, size: 64, offset: 320)
!2621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2622, size: 64)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{null, !119, !2624, !118}
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2604, file: !72, line: 996, baseType: !2627, size: 64, offset: 384)
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DISubroutineType(types: !2629)
!2629 = !{null, !119, !97, !118}
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2604, file: !72, line: 997, baseType: !2631, size: 64, offset: 448)
!2631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2632, size: 64)
!2632 = !DISubroutineType(types: !2633)
!2633 = !{null, !119, !118, !5}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2604, file: !72, line: 998, baseType: !2635, size: 64, offset: 512)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !119, !5, !118, !118}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2604, file: !72, line: 1000, baseType: !2461, size: 64, offset: 576)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2604, file: !72, line: 1001, baseType: !2461, size: 64, offset: 640)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2604, file: !72, line: 1002, baseType: !2641, size: 64, offset: 704)
!2641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2642, size: 64)
!2642 = !DISubroutineType(types: !2643)
!2643 = !{!118, !119, !218}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2604, file: !72, line: 1003, baseType: !2641, size: 64, offset: 768)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2604, file: !72, line: 1004, baseType: !2646, size: 64, offset: 832)
!2646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2647, size: 64)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!118, !119, !118, !97}
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2604, file: !72, line: 1006, baseType: !2646, size: 64, offset: 896)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2604, file: !72, line: 1008, baseType: !118, size: 32, offset: 960)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2604, file: !72, line: 1009, baseType: !2652, size: 256, offset: 1024)
!2652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !72, line: 951, size: 256, elements: !2653)
!2653 = !{!2654, !2655}
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2652, file: !72, line: 952, baseType: !611, size: 192)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2652, file: !72, line: 953, baseType: !2656, size: 64, offset: 192)
!2656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2657, size: 64)
!2657 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2658)
!2658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !72, line: 935, size: 256, elements: !2659)
!2659 = !{!2660, !2661, !2662, !2705}
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2658, file: !72, line: 936, baseType: !2461, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2658, file: !72, line: 937, baseType: !2457, size: 64, offset: 64)
!2662 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2658, file: !72, line: 938, baseType: !2663, size: 64, offset: 128)
!2663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2664, size: 64)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!118, !119, !2666, !317}
!2666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2667, size: 64)
!2667 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2668)
!2668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !72, line: 860, size: 192, elements: !2669)
!2669 = !{!2670, !2671, !2704}
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2668, file: !72, line: 861, baseType: !5, size: 32)
!2671 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2668, file: !72, line: 862, baseType: !2672, size: 64, offset: 64)
!2672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2673, size: 64)
!2673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2674)
!2674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !72, line: 593, size: 320, elements: !2675)
!2675 = !{!2676, !2677, !2703}
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2674, file: !72, line: 594, baseType: !75, size: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2674, file: !72, line: 600, baseType: !2678, size: 192, offset: 64)
!2678 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2674, file: !72, line: 595, size: 192, elements: !2679)
!2679 = !{!2680, !2684, !2689, !2699}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2678, file: !72, line: 596, baseType: !2681, size: 8)
!2681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !72, line: 519, size: 8, elements: !2682)
!2682 = !{!2683}
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2681, file: !72, line: 520, baseType: !98, size: 8)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2678, file: !72, line: 597, baseType: !2685, size: 128)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !72, line: 528, size: 128, elements: !2686)
!2686 = !{!2687, !2688}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2685, file: !72, line: 529, baseType: !5, size: 32)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2685, file: !72, line: 530, baseType: !2624, size: 64, offset: 64)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2678, file: !72, line: 598, baseType: !2690, size: 192)
!2690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !72, line: 545, size: 192, elements: !2691)
!2691 = !{!2692, !2693, !2698}
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2690, file: !72, line: 546, baseType: !5, size: 32)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2690, file: !72, line: 550, baseType: !2694, size: 64, offset: 64)
!2694 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2690, file: !72, line: 547, size: 64, elements: !2695)
!2695 = !{!2696, !2697}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2694, file: !72, line: 548, baseType: !109, size: 64)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2694, file: !72, line: 549, baseType: !1603, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2690, file: !72, line: 551, baseType: !317, size: 8, offset: 128)
!2699 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2678, file: !72, line: 599, baseType: !2700, size: 32)
!2700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !72, line: 558, size: 32, elements: !2701)
!2701 = !{!2702}
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2700, file: !72, line: 559, baseType: !5, size: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2674, file: !72, line: 601, baseType: !5, size: 32, offset: 256)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2668, file: !72, line: 863, baseType: !5, size: 32, offset: 128)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2658, file: !72, line: 941, baseType: !2706, size: 64, offset: 192)
!2706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2707, size: 64)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!118, !119, !118, !2709}
!2709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2710, size: 64)
!2710 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2552)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !120, file: !72, line: 1103, baseType: !5, size: 32, offset: 13824)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !120, file: !72, line: 1106, baseType: !2709, size: 64, offset: 13888)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !120, file: !72, line: 1107, baseType: !2551, size: 64, offset: 13952)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !120, file: !72, line: 1110, baseType: !5, size: 32, offset: 14016)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !120, file: !72, line: 1111, baseType: !5, size: 32, offset: 14048)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !120, file: !72, line: 1112, baseType: !5, size: 32, offset: 14080)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !120, file: !72, line: 1113, baseType: !5, size: 32, offset: 14112)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !120, file: !72, line: 1114, baseType: !2719, size: 64, offset: 14144)
!2719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2720, size: 64)
!2720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2721, line: 41, size: 576, elements: !2722)
!2721 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2722 = !{!2723, !2724, !2726, !2727, !2728, !2730, !2731, !2732, !2733}
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2720, file: !2721, line: 42, baseType: !118, size: 32)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2720, file: !2721, line: 43, baseType: !2725, size: 256, offset: 32)
!2725 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 256, elements: !753)
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2720, file: !2721, line: 44, baseType: !118, size: 32, offset: 288)
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2720, file: !2721, line: 45, baseType: !118, size: 32, offset: 320)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2720, file: !2721, line: 46, baseType: !2729, size: 64, offset: 352)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !261, size: 64, elements: !753)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2720, file: !2721, line: 47, baseType: !118, size: 32, offset: 416)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2720, file: !2721, line: 48, baseType: !118, size: 32, offset: 448)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2720, file: !2721, line: 49, baseType: !118, size: 32, offset: 480)
!2733 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2720, file: !2721, line: 50, baseType: !260, size: 64, offset: 512)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !120, file: !72, line: 1115, baseType: !2719, size: 64, offset: 14208)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !120, file: !72, line: 1116, baseType: !2719, size: 64, offset: 14272)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !120, file: !72, line: 1117, baseType: !97, size: 64, offset: 14336)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !120, file: !72, line: 1120, baseType: !5, size: 32, offset: 14400)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !120, file: !72, line: 1121, baseType: !5, size: 32, offset: 14432)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !120, file: !72, line: 1122, baseType: !5, size: 32, offset: 14464)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !120, file: !72, line: 1123, baseType: !5, size: 32, offset: 14496)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !120, file: !72, line: 1124, baseType: !5, size: 32, offset: 14528)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !120, file: !72, line: 1127, baseType: !97, size: 64, offset: 14592)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !120, file: !72, line: 1128, baseType: !97, size: 64, offset: 14656)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !120, file: !72, line: 1132, baseType: !2745, size: 64, offset: 14720)
!2745 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !120, file: !72, line: 1129, size: 64, elements: !2746)
!2746 = !{!2747, !2748}
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2745, file: !72, line: 1130, baseType: !5, size: 32)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2745, file: !72, line: 1131, baseType: !118, size: 32, offset: 32)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !120, file: !72, line: 1133, baseType: !203, size: 64, offset: 14784)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !120, file: !72, line: 1136, baseType: !611, size: 192, offset: 14848)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !120, file: !72, line: 1137, baseType: !5, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !120, file: !72, line: 1138, baseType: !118, size: 32, offset: 15072)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !120, file: !72, line: 1139, baseType: !118, size: 32, offset: 15104)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !120, file: !72, line: 1142, baseType: !2755, size: 64, offset: 15168)
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !120, file: !72, line: 1143, baseType: !2757, size: 1408, offset: 15232)
!2757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !72, line: 346, size: 1408, elements: !2758)
!2758 = !{!2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2780, !2784, !2788, !2792, !2793, !2797, !2801, !2802, !2803, !2804, !2805}
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2757, file: !72, line: 347, baseType: !48, size: 32)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2757, file: !72, line: 348, baseType: !56, size: 32, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2757, file: !72, line: 349, baseType: !61, size: 32, offset: 64)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2757, file: !72, line: 350, baseType: !118, size: 32, offset: 96)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2757, file: !72, line: 351, baseType: !118, size: 32, offset: 128)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2757, file: !72, line: 352, baseType: !118, size: 32, offset: 160)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2757, file: !72, line: 353, baseType: !118, size: 32, offset: 192)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2757, file: !72, line: 354, baseType: !118, size: 32, offset: 224)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2757, file: !72, line: 355, baseType: !118, size: 32, offset: 256)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2757, file: !72, line: 356, baseType: !118, size: 32, offset: 288)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2757, file: !72, line: 357, baseType: !5, size: 32, offset: 320)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2757, file: !72, line: 358, baseType: !109, size: 64, offset: 384)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2757, file: !72, line: 359, baseType: !97, size: 64, offset: 448)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2757, file: !72, line: 360, baseType: !97, size: 64, offset: 512)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2757, file: !72, line: 361, baseType: !2609, size: 64, offset: 576)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2757, file: !72, line: 362, baseType: !2775, size: 64, offset: 640)
!2775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2776, size: 64)
!2776 = !DISubroutineType(types: !2777)
!2777 = !{!118, !119, !2778, !260}
!2778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2779, size: 64)
!2779 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !261)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2757, file: !72, line: 364, baseType: !2781, size: 64, offset: 704)
!2781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2782, size: 64)
!2782 = !DISubroutineType(types: !2783)
!2783 = !{!118, !119, !260, !260, !260}
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2757, file: !72, line: 366, baseType: !2785, size: 64, offset: 768)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!118, !119, !260, !118, !118}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2757, file: !72, line: 368, baseType: !2789, size: 64, offset: 832)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!118, !119, !2778, !118, !118}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2757, file: !72, line: 370, baseType: !2785, size: 64, offset: 896)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2757, file: !72, line: 372, baseType: !2794, size: 64, offset: 960)
!2794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2795, size: 64)
!2795 = !DISubroutineType(types: !2796)
!2796 = !{!118, !119, !132, !132, !260, !118}
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2757, file: !72, line: 374, baseType: !2798, size: 64, offset: 1024)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!118, !119, !132, !132, !2778, !118, !118}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2757, file: !72, line: 377, baseType: !2789, size: 64, offset: 1088)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2757, file: !72, line: 379, baseType: !2544, size: 64, offset: 1152)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2757, file: !72, line: 380, baseType: !2544, size: 64, offset: 1216)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2757, file: !72, line: 381, baseType: !2544, size: 64, offset: 1280)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2757, file: !72, line: 382, baseType: !2544, size: 64, offset: 1344)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !120, file: !72, line: 1144, baseType: !109, size: 64, offset: 16640)
!2807 = !DILocalVariable(name: "x", arg: 1, scope: !2808, file: !2809, line: 324, type: !5)
!2808 = distinct !DISubprogram(name: "fls", scope: !2809, file: !2809, line: 324, type: !2810, scopeLine: 325, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!2809 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2810 = !DISubroutineType(types: !2811)
!2811 = !{!118, !5}
!2812 = !DILocation(line: 324, column: 45, scope: !2808, inlinedAt: !2813)
!2813 = distinct !DILocation(line: 114, column: 9, scope: !115)
!2814 = !DILocalVariable(name: "r", scope: !2808, file: !2809, line: 326, type: !118)
!2815 = !DILocation(line: 326, column: 6, scope: !2808, inlinedAt: !2813)
!2816 = !DILocation(line: 324, column: 45, scope: !2808, inlinedAt: !2817)
!2817 = distinct !DILocation(line: 103, column: 10, scope: !115)
!2818 = !DILocation(line: 326, column: 6, scope: !2808, inlinedAt: !2817)
!2819 = !DILocalVariable(name: "chip", arg: 1, scope: !115, file: !1, line: 24, type: !119)
!2820 = !DILocation(line: 24, column: 41, scope: !115)
!2821 = !DILocalVariable(name: "base", scope: !115, file: !1, line: 26, type: !2347)
!2822 = !DILocation(line: 26, column: 22, scope: !115)
!2823 = !DILocation(line: 26, column: 30, scope: !115)
!2824 = !DILocation(line: 26, column: 36, scope: !115)
!2825 = !DILocalVariable(name: "mtd", scope: !115, file: !1, line: 27, type: !163)
!2826 = !DILocation(line: 27, column: 19, scope: !115)
!2827 = !DILocation(line: 27, column: 37, scope: !115)
!2828 = !DILocation(line: 27, column: 25, scope: !115)
!2829 = !DILocalVariable(name: "memorg", scope: !115, file: !1, line: 28, type: !2830)
!2830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2304, size: 64)
!2831 = !DILocation(line: 28, column: 35, scope: !115)
!2832 = !DILocalVariable(name: "p", scope: !115, file: !1, line: 29, type: !2833)
!2833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2834, size: 64)
!2834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_jedec_params", file: !2835, line: 24, size: 4096, elements: !2836)
!2835 = !DIFile(filename: "./include/linux/mtd/jedec.h", directory: "/home/lizy2001/genbc/linux")
!2836 = !{!2837, !2838, !2839, !2840, !2842, !2843, !2844, !2848, !2849, !2850, !2852, !2856, !2857, !2858, !2859, !2860, !2861, !2862, !2863, !2864, !2865, !2866, !2867, !2871, !2872, !2873, !2874, !2875, !2876, !2877, !2878, !2879, !2880, !2881, !2882, !2883, !2884, !2885, !2886, !2887, !2891, !2892, !2893, !2902, !2906, !2910, !2911, !2912}
!2837 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2834, file: !2835, line: 27, baseType: !2471, size: 32)
!2838 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2834, file: !2835, line: 28, baseType: !105, size: 16, offset: 32)
!2839 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2834, file: !2835, line: 29, baseType: !105, size: 16, offset: 48)
!2840 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2834, file: !2835, line: 30, baseType: !2841, size: 24, offset: 64)
!2841 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 24, elements: !408)
!2842 = !DIDerivedType(tag: DW_TAG_member, name: "sec_cmd", scope: !2834, file: !2835, line: 31, baseType: !105, size: 16, offset: 88)
!2843 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2834, file: !2835, line: 32, baseType: !98, size: 8, offset: 104)
!2844 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2834, file: !2835, line: 33, baseType: !2845, size: 144, offset: 112)
!2845 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 144, elements: !2846)
!2846 = !{!2847}
!2847 = !DISubrange(count: 18)
!2848 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2834, file: !2835, line: 36, baseType: !2484, size: 96, offset: 256)
!2849 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2834, file: !2835, line: 37, baseType: !2486, size: 160, offset: 352)
!2850 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2834, file: !2835, line: 38, baseType: !2851, size: 48, offset: 512)
!2851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 48, elements: !1507)
!2852 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2834, file: !2835, line: 39, baseType: !2853, size: 80, offset: 560)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 80, elements: !2854)
!2854 = !{!2855}
!2855 = !DISubrange(count: 10)
!2856 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2834, file: !2835, line: 42, baseType: !108, size: 32, offset: 640)
!2857 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2834, file: !2835, line: 43, baseType: !105, size: 16, offset: 672)
!2858 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2834, file: !2835, line: 44, baseType: !2851, size: 48, offset: 688)
!2859 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2834, file: !2835, line: 45, baseType: !108, size: 32, offset: 736)
!2860 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2834, file: !2835, line: 46, baseType: !108, size: 32, offset: 768)
!2861 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2834, file: !2835, line: 47, baseType: !98, size: 8, offset: 800)
!2862 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2834, file: !2835, line: 48, baseType: !98, size: 8, offset: 808)
!2863 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2834, file: !2835, line: 49, baseType: !98, size: 8, offset: 816)
!2864 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2834, file: !2835, line: 50, baseType: !98, size: 8, offset: 824)
!2865 = !DIDerivedType(tag: DW_TAG_member, name: "multi_plane_addr", scope: !2834, file: !2835, line: 51, baseType: !98, size: 8, offset: 832)
!2866 = !DIDerivedType(tag: DW_TAG_member, name: "multi_plane_op_attr", scope: !2834, file: !2835, line: 52, baseType: !98, size: 8, offset: 840)
!2867 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2834, file: !2835, line: 53, baseType: !2868, size: 304, offset: 848)
!2868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 304, elements: !2869)
!2869 = !{!2870}
!2870 = !DISubrange(count: 38)
!2871 = !DIDerivedType(tag: DW_TAG_member, name: "async_sdr_speed_grade", scope: !2834, file: !2835, line: 56, baseType: !105, size: 16, offset: 1152)
!2872 = !DIDerivedType(tag: DW_TAG_member, name: "toggle_ddr_speed_grade", scope: !2834, file: !2835, line: 57, baseType: !105, size: 16, offset: 1168)
!2873 = !DIDerivedType(tag: DW_TAG_member, name: "sync_ddr_speed_grade", scope: !2834, file: !2835, line: 58, baseType: !105, size: 16, offset: 1184)
!2874 = !DIDerivedType(tag: DW_TAG_member, name: "async_sdr_features", scope: !2834, file: !2835, line: 59, baseType: !98, size: 8, offset: 1200)
!2875 = !DIDerivedType(tag: DW_TAG_member, name: "toggle_ddr_features", scope: !2834, file: !2835, line: 60, baseType: !98, size: 8, offset: 1208)
!2876 = !DIDerivedType(tag: DW_TAG_member, name: "sync_ddr_features", scope: !2834, file: !2835, line: 61, baseType: !98, size: 8, offset: 1216)
!2877 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2834, file: !2835, line: 62, baseType: !105, size: 16, offset: 1224)
!2878 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2834, file: !2835, line: 63, baseType: !105, size: 16, offset: 1240)
!2879 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2834, file: !2835, line: 64, baseType: !105, size: 16, offset: 1256)
!2880 = !DIDerivedType(tag: DW_TAG_member, name: "t_r_multi_plane", scope: !2834, file: !2835, line: 65, baseType: !105, size: 16, offset: 1272)
!2881 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2834, file: !2835, line: 66, baseType: !105, size: 16, offset: 1288)
!2882 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2834, file: !2835, line: 67, baseType: !105, size: 16, offset: 1304)
!2883 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2834, file: !2835, line: 68, baseType: !105, size: 16, offset: 1320)
!2884 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2834, file: !2835, line: 69, baseType: !105, size: 16, offset: 1336)
!2885 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2834, file: !2835, line: 70, baseType: !98, size: 8, offset: 1352)
!2886 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2834, file: !2835, line: 71, baseType: !105, size: 16, offset: 1360)
!2887 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2834, file: !2835, line: 72, baseType: !2888, size: 288, offset: 1376)
!2888 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 288, elements: !2889)
!2889 = !{!2890}
!2890 = !DISubrange(count: 36)
!2891 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2834, file: !2835, line: 75, baseType: !98, size: 8, offset: 1664)
!2892 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2834, file: !2835, line: 76, baseType: !105, size: 16, offset: 1672)
!2893 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_info", scope: !2834, file: !2835, line: 77, baseType: !2894, size: 256, offset: 1688)
!2894 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2895, size: 256, elements: !593)
!2895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "jedec_ecc_info", file: !2835, line: 13, size: 64, elements: !2896)
!2896 = !{!2897, !2898, !2899, !2900, !2901}
!2897 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2895, file: !2835, line: 14, baseType: !98, size: 8)
!2898 = !DIDerivedType(tag: DW_TAG_member, name: "codeword_size", scope: !2895, file: !2835, line: 15, baseType: !98, size: 8, offset: 8)
!2899 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2895, file: !2835, line: 16, baseType: !105, size: 16, offset: 16)
!2900 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2895, file: !2835, line: 17, baseType: !105, size: 16, offset: 32)
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2895, file: !2835, line: 18, baseType: !2476, size: 16, offset: 48)
!2902 = !DIDerivedType(tag: DW_TAG_member, name: "reserved5", scope: !2834, file: !2835, line: 78, baseType: !2903, size: 232, offset: 1944)
!2903 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 232, elements: !2904)
!2904 = !{!2905}
!2905 = !DISubrange(count: 29)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "reserved6", scope: !2834, file: !2835, line: 81, baseType: !2907, size: 1184, offset: 2176)
!2907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !98, size: 1184, elements: !2908)
!2908 = !{!2909}
!2909 = !DISubrange(count: 148)
!2910 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_rev_num", scope: !2834, file: !2835, line: 84, baseType: !105, size: 16, offset: 3360)
!2911 = !DIDerivedType(tag: DW_TAG_member, name: "reserved7", scope: !2834, file: !2835, line: 85, baseType: !2437, size: 704, offset: 3376)
!2912 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2834, file: !2835, line: 88, baseType: !105, size: 16, offset: 4080)
!2913 = !DILocation(line: 29, column: 28, scope: !115)
!2914 = !DILocalVariable(name: "ecc", scope: !115, file: !1, line: 30, type: !2915)
!2915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2895, size: 64)
!2916 = !DILocation(line: 30, column: 25, scope: !115)
!2917 = !DILocalVariable(name: "use_datain", scope: !115, file: !1, line: 31, type: !317)
!2918 = !DILocation(line: 31, column: 7, scope: !115)
!2919 = !DILocalVariable(name: "jedec_version", scope: !115, file: !1, line: 32, type: !118)
!2920 = !DILocation(line: 32, column: 6, scope: !115)
!2921 = !DILocalVariable(name: "id", scope: !115, file: !1, line: 33, type: !2922)
!2922 = !DICompositeType(tag: DW_TAG_array_type, baseType: !152, size: 40, elements: !2923)
!2923 = !{!2924}
!2924 = !DISubrange(count: 5)
!2925 = !DILocation(line: 33, column: 7, scope: !115)
!2926 = !DILocalVariable(name: "i", scope: !115, file: !1, line: 34, type: !118)
!2927 = !DILocation(line: 34, column: 6, scope: !115)
!2928 = !DILocalVariable(name: "val", scope: !115, file: !1, line: 34, type: !118)
!2929 = !DILocation(line: 34, column: 9, scope: !115)
!2930 = !DILocalVariable(name: "ret", scope: !115, file: !1, line: 34, type: !118)
!2931 = !DILocation(line: 34, column: 14, scope: !115)
!2932 = !DILocalVariable(name: "crc", scope: !115, file: !1, line: 35, type: !624)
!2933 = !DILocation(line: 35, column: 6, scope: !115)
!2934 = !DILocation(line: 37, column: 31, scope: !115)
!2935 = !DILocation(line: 37, column: 37, scope: !115)
!2936 = !DILocation(line: 37, column: 11, scope: !115)
!2937 = !DILocation(line: 37, column: 9, scope: !115)
!2938 = !DILocation(line: 40, column: 23, scope: !115)
!2939 = !DILocation(line: 40, column: 35, scope: !115)
!2940 = !DILocation(line: 40, column: 8, scope: !115)
!2941 = !DILocation(line: 40, column: 6, scope: !115)
!2942 = !DILocation(line: 41, column: 6, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !115, file: !1, line: 41, column: 6)
!2944 = !DILocation(line: 41, column: 10, scope: !2943)
!2945 = !DILocation(line: 41, column: 21, scope: !2943)
!2946 = !DILocation(line: 41, column: 13, scope: !2943)
!2947 = !DILocation(line: 41, column: 6, scope: !115)
!2948 = !DILocation(line: 42, column: 3, scope: !2943)
!2949 = !DILocation(line: 45, column: 6, scope: !115)
!2950 = !DILocation(line: 45, column: 4, scope: !115)
!2951 = !DILocation(line: 46, column: 7, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !115, file: !1, line: 46, column: 6)
!2953 = !DILocation(line: 46, column: 6, scope: !115)
!2954 = !DILocation(line: 47, column: 3, scope: !2952)
!2955 = !DILocation(line: 49, column: 24, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !115, file: !1, line: 49, column: 6)
!2957 = !DILocation(line: 49, column: 7, scope: !2956)
!2958 = !DILocation(line: 49, column: 30, scope: !2956)
!2959 = !DILocation(line: 50, column: 25, scope: !2956)
!2960 = !DILocation(line: 50, column: 31, scope: !2956)
!2961 = !DILocation(line: 50, column: 7, scope: !2956)
!2962 = !DILocation(line: 49, column: 6, scope: !115)
!2963 = !DILocation(line: 51, column: 14, scope: !2956)
!2964 = !DILocation(line: 51, column: 3, scope: !2956)
!2965 = !DILocation(line: 53, column: 9, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !115, file: !1, line: 53, column: 2)
!2967 = !DILocation(line: 53, column: 7, scope: !2966)
!2968 = !DILocation(line: 53, column: 14, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2966, file: !1, line: 53, column: 2)
!2970 = !DILocation(line: 53, column: 16, scope: !2969)
!2971 = !DILocation(line: 53, column: 2, scope: !2966)
!2972 = !DILocation(line: 54, column: 8, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 54, column: 7)
!2974 = distinct !DILexicalBlock(scope: !2969, file: !1, line: 53, column: 42)
!2975 = !DILocation(line: 54, column: 7, scope: !2974)
!2976 = !DILocation(line: 55, column: 34, scope: !2973)
!2977 = !DILocation(line: 55, column: 46, scope: !2973)
!2978 = !DILocation(line: 55, column: 10, scope: !2973)
!2979 = !DILocation(line: 55, column: 8, scope: !2973)
!2980 = !DILocation(line: 55, column: 4, scope: !2973)
!2981 = !DILocation(line: 57, column: 12, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2973, file: !1, line: 57, column: 12)
!2983 = !DILocation(line: 57, column: 12, scope: !2973)
!2984 = !DILocation(line: 58, column: 28, scope: !2982)
!2985 = !DILocation(line: 58, column: 34, scope: !2982)
!2986 = !DILocation(line: 58, column: 10, scope: !2982)
!2987 = !DILocation(line: 58, column: 8, scope: !2982)
!2988 = !DILocation(line: 58, column: 4, scope: !2982)
!2989 = !DILocation(line: 61, column: 37, scope: !2982)
!2990 = !DILocation(line: 61, column: 56, scope: !2982)
!2991 = !DILocation(line: 61, column: 54, scope: !2982)
!2992 = !DILocation(line: 61, column: 43, scope: !2982)
!2993 = !DILocation(line: 62, column: 9, scope: !2982)
!2994 = !DILocation(line: 61, column: 10, scope: !2982)
!2995 = !DILocation(line: 61, column: 8, scope: !2982)
!2996 = !DILocation(line: 63, column: 7, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 63, column: 7)
!2998 = !DILocation(line: 63, column: 7, scope: !2974)
!2999 = !DILocation(line: 64, column: 8, scope: !3000)
!3000 = distinct !DILexicalBlock(scope: !2997, file: !1, line: 63, column: 12)
!3001 = !DILocation(line: 65, column: 4, scope: !3000)
!3002 = !DILocation(line: 68, column: 41, scope: !2974)
!3003 = !DILocation(line: 68, column: 35, scope: !2974)
!3004 = !DILocation(line: 68, column: 9, scope: !2974)
!3005 = !DILocation(line: 68, column: 7, scope: !2974)
!3006 = !DILocation(line: 69, column: 7, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2974, file: !1, line: 69, column: 7)
!3008 = !DILocation(line: 69, column: 14, scope: !3007)
!3009 = !DILocation(line: 69, column: 11, scope: !3007)
!3010 = !DILocation(line: 69, column: 7, scope: !2974)
!3011 = !DILocation(line: 70, column: 4, scope: !3007)
!3012 = !DILocation(line: 71, column: 2, scope: !2974)
!3013 = !DILocation(line: 53, column: 38, scope: !2969)
!3014 = !DILocation(line: 53, column: 2, scope: !2969)
!3015 = distinct !{!3015, !2971, !3016}
!3016 = !DILocation(line: 71, column: 2, scope: !2966)
!3017 = !DILocation(line: 73, column: 6, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !115, file: !1, line: 73, column: 6)
!3019 = !DILocation(line: 73, column: 8, scope: !3018)
!3020 = !DILocation(line: 73, column: 6, scope: !115)
!3021 = !DILocation(line: 74, column: 3, scope: !3022)
!3022 = distinct !DILexicalBlock(scope: !3018, file: !1, line: 73, column: 30)
!3023 = !DILocation(line: 75, column: 3, scope: !3022)
!3024 = !DILocation(line: 79, column: 8, scope: !115)
!3025 = !DILocation(line: 79, column: 6, scope: !115)
!3026 = !DILocation(line: 80, column: 6, scope: !3027)
!3027 = distinct !DILexicalBlock(scope: !115, file: !1, line: 80, column: 6)
!3028 = !DILocation(line: 80, column: 10, scope: !3027)
!3029 = !DILocation(line: 80, column: 6, scope: !115)
!3030 = !DILocation(line: 81, column: 17, scope: !3027)
!3031 = !DILocation(line: 81, column: 3, scope: !3027)
!3032 = !DILocation(line: 82, column: 11, scope: !3033)
!3033 = distinct !DILexicalBlock(scope: !3027, file: !1, line: 82, column: 11)
!3034 = !DILocation(line: 82, column: 15, scope: !3033)
!3035 = !DILocation(line: 82, column: 11, scope: !3027)
!3036 = !DILocation(line: 83, column: 17, scope: !3033)
!3037 = !DILocation(line: 83, column: 3, scope: !3033)
!3038 = !DILocation(line: 85, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !115, file: !1, line: 85, column: 6)
!3040 = !DILocation(line: 85, column: 6, scope: !115)
!3041 = !DILocation(line: 86, column: 3, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3039, file: !1, line: 85, column: 22)
!3043 = !DILocation(line: 87, column: 3, scope: !3042)
!3044 = !DILocation(line: 90, column: 18, scope: !115)
!3045 = !DILocation(line: 90, column: 21, scope: !115)
!3046 = !DILocation(line: 90, column: 2, scope: !115)
!3047 = !DILocation(line: 91, column: 18, scope: !115)
!3048 = !DILocation(line: 91, column: 21, scope: !115)
!3049 = !DILocation(line: 91, column: 2, scope: !115)
!3050 = !DILocation(line: 92, column: 35, scope: !115)
!3051 = !DILocation(line: 92, column: 38, scope: !115)
!3052 = !DILocation(line: 92, column: 27, scope: !115)
!3053 = !DILocation(line: 92, column: 2, scope: !115)
!3054 = !DILocation(line: 92, column: 8, scope: !115)
!3055 = !DILocation(line: 92, column: 19, scope: !115)
!3056 = !DILocation(line: 92, column: 25, scope: !115)
!3057 = !DILocation(line: 93, column: 7, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !115, file: !1, line: 93, column: 6)
!3059 = !DILocation(line: 93, column: 13, scope: !3058)
!3060 = !DILocation(line: 93, column: 24, scope: !3058)
!3061 = !DILocation(line: 93, column: 6, scope: !115)
!3062 = !DILocation(line: 94, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3058, file: !1, line: 93, column: 31)
!3064 = !DILocation(line: 95, column: 3, scope: !3063)
!3065 = !DILocation(line: 98, column: 21, scope: !115)
!3066 = !DILocation(line: 98, column: 2, scope: !115)
!3067 = !DILocation(line: 98, column: 10, scope: !115)
!3068 = !DILocation(line: 98, column: 19, scope: !115)
!3069 = !DILocation(line: 99, column: 19, scope: !115)
!3070 = !DILocation(line: 99, column: 27, scope: !115)
!3071 = !DILocation(line: 99, column: 2, scope: !115)
!3072 = !DILocation(line: 99, column: 7, scope: !115)
!3073 = !DILocation(line: 99, column: 17, scope: !115)
!3074 = !DILocation(line: 103, column: 14, scope: !115)
!3075 = !DILocation(line: 340, column: 14, scope: !2808, inlinedAt: !2817)
!3076 = !DILocation(line: 338, column: 2, scope: !2808, inlinedAt: !2817)
!3077 = !{i32 302650}
!3078 = !DILocation(line: 351, column: 9, scope: !2808, inlinedAt: !2817)
!3079 = !DILocation(line: 351, column: 11, scope: !2808, inlinedAt: !2817)
!3080 = !DILocation(line: 103, column: 47, scope: !115)
!3081 = !DILocation(line: 103, column: 6, scope: !115)
!3082 = !DILocation(line: 102, column: 2, scope: !115)
!3083 = !DILocation(line: 102, column: 10, scope: !115)
!3084 = !DILocation(line: 102, column: 31, scope: !115)
!3085 = !DILocation(line: 104, column: 19, scope: !115)
!3086 = !DILocation(line: 104, column: 27, scope: !115)
!3087 = !DILocation(line: 104, column: 50, scope: !115)
!3088 = !DILocation(line: 104, column: 58, scope: !115)
!3089 = !DILocation(line: 104, column: 48, scope: !115)
!3090 = !DILocation(line: 104, column: 2, scope: !115)
!3091 = !DILocation(line: 104, column: 7, scope: !115)
!3092 = !DILocation(line: 104, column: 17, scope: !115)
!3093 = !DILocation(line: 106, column: 20, scope: !115)
!3094 = !DILocation(line: 106, column: 2, scope: !115)
!3095 = !DILocation(line: 106, column: 10, scope: !115)
!3096 = !DILocation(line: 106, column: 18, scope: !115)
!3097 = !DILocation(line: 107, column: 17, scope: !115)
!3098 = !DILocation(line: 107, column: 25, scope: !115)
!3099 = !DILocation(line: 107, column: 2, scope: !115)
!3100 = !DILocation(line: 107, column: 7, scope: !115)
!3101 = !DILocation(line: 107, column: 15, scope: !115)
!3102 = !DILocation(line: 109, column: 28, scope: !115)
!3103 = !DILocation(line: 109, column: 31, scope: !115)
!3104 = !DILocation(line: 109, column: 2, scope: !115)
!3105 = !DILocation(line: 109, column: 10, scope: !115)
!3106 = !DILocation(line: 109, column: 26, scope: !115)
!3107 = !DILocation(line: 110, column: 32, scope: !115)
!3108 = !DILocation(line: 110, column: 35, scope: !115)
!3109 = !DILocation(line: 110, column: 29, scope: !115)
!3110 = !DILocation(line: 110, column: 2, scope: !115)
!3111 = !DILocation(line: 110, column: 10, scope: !115)
!3112 = !DILocation(line: 110, column: 25, scope: !115)
!3113 = !DILocation(line: 114, column: 13, scope: !115)
!3114 = !DILocation(line: 340, column: 14, scope: !2808, inlinedAt: !2813)
!3115 = !DILocation(line: 338, column: 2, scope: !2808, inlinedAt: !2813)
!3116 = !DILocation(line: 351, column: 9, scope: !2808, inlinedAt: !2813)
!3117 = !DILocation(line: 351, column: 11, scope: !2808, inlinedAt: !2813)
!3118 = !DILocation(line: 114, column: 45, scope: !115)
!3119 = !DILocation(line: 114, column: 5, scope: !115)
!3120 = !DILocation(line: 113, column: 2, scope: !115)
!3121 = !DILocation(line: 113, column: 10, scope: !115)
!3122 = !DILocation(line: 113, column: 30, scope: !115)
!3123 = !DILocation(line: 115, column: 26, scope: !115)
!3124 = !DILocation(line: 115, column: 29, scope: !115)
!3125 = !DILocation(line: 115, column: 2, scope: !115)
!3126 = !DILocation(line: 115, column: 10, scope: !115)
!3127 = !DILocation(line: 115, column: 24, scope: !115)
!3128 = !DILocation(line: 117, column: 6, scope: !3129)
!3129 = distinct !DILexicalBlock(scope: !115, file: !1, line: 117, column: 6)
!3130 = !DILocation(line: 117, column: 31, scope: !3129)
!3131 = !DILocation(line: 117, column: 6, scope: !115)
!3132 = !DILocation(line: 118, column: 3, scope: !3129)
!3133 = !DILocation(line: 118, column: 9, scope: !3129)
!3134 = !DILocation(line: 118, column: 17, scope: !3129)
!3135 = !DILocation(line: 121, column: 9, scope: !115)
!3136 = !DILocation(line: 121, column: 12, scope: !115)
!3137 = !DILocation(line: 121, column: 6, scope: !115)
!3138 = !DILocation(line: 123, column: 6, scope: !3139)
!3139 = distinct !DILexicalBlock(scope: !115, file: !1, line: 123, column: 6)
!3140 = !DILocation(line: 123, column: 11, scope: !3139)
!3141 = !DILocation(line: 123, column: 25, scope: !3139)
!3142 = !DILocation(line: 123, column: 6, scope: !115)
!3143 = !DILocalVariable(name: "requirements", scope: !3144, file: !1, line: 124, type: !2319)
!3144 = distinct !DILexicalBlock(scope: !3139, file: !1, line: 123, column: 31)
!3145 = !DILocation(line: 124, column: 25, scope: !3144)
!3146 = !DILocation(line: 124, column: 40, scope: !3144)
!3147 = !DILocation(line: 125, column: 16, scope: !3144)
!3148 = !DILocation(line: 125, column: 21, scope: !3144)
!3149 = !DILocation(line: 126, column: 22, scope: !3144)
!3150 = !DILocation(line: 126, column: 27, scope: !3144)
!3151 = !DILocation(line: 126, column: 19, scope: !3144)
!3152 = !DILocation(line: 129, column: 32, scope: !3144)
!3153 = !DILocation(line: 129, column: 3, scope: !3144)
!3154 = !DILocation(line: 130, column: 2, scope: !3144)
!3155 = !DILocation(line: 131, column: 3, scope: !3156)
!3156 = distinct !DILexicalBlock(scope: !3139, file: !1, line: 130, column: 9)
!3157 = !DILocation(line: 134, column: 6, scope: !115)
!3158 = !DILocation(line: 134, column: 2, scope: !115)
!3159 = !DILabel(scope: !115, name: "free_jedec_param_page", file: !1, line: 136)
!3160 = !DILocation(line: 136, column: 1, scope: !115)
!3161 = !DILocation(line: 137, column: 8, scope: !115)
!3162 = !DILocation(line: 137, column: 2, scope: !115)
!3163 = !DILocation(line: 138, column: 9, scope: !115)
!3164 = !DILocation(line: 138, column: 2, scope: !115)
!3165 = !DILocation(line: 139, column: 1, scope: !115)
!3166 = distinct !DISubprogram(name: "nand_to_mtd", scope: !72, file: !72, line: 1152, type: !3167, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3167 = !DISubroutineType(types: !3168)
!3168 = !{!163, !119}
!3169 = !DILocalVariable(name: "chip", arg: 1, scope: !3166, file: !72, line: 1152, type: !119)
!3170 = !DILocation(line: 1152, column: 62, scope: !3166)
!3171 = !DILocation(line: 1154, column: 10, scope: !3166)
!3172 = !DILocation(line: 1154, column: 16, scope: !3166)
!3173 = !DILocation(line: 1154, column: 21, scope: !3166)
!3174 = !DILocation(line: 1154, column: 2, scope: !3166)
!3175 = distinct !DISubprogram(name: "nanddev_get_memorg", scope: !49, file: !49, line: 521, type: !3176, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3176 = !DISubroutineType(types: !3177)
!3177 = !{!2830, !2347}
!3178 = !DILocalVariable(name: "nand", arg: 1, scope: !3175, file: !49, line: 521, type: !2347)
!3179 = !DILocation(line: 521, column: 40, scope: !3175)
!3180 = !DILocation(line: 523, column: 10, scope: !3175)
!3181 = !DILocation(line: 523, column: 16, scope: !3175)
!3182 = !DILocation(line: 523, column: 2, scope: !3175)
!3183 = distinct !DISubprogram(name: "kzalloc", scope: !88, file: !88, line: 662, type: !3184, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3184 = !DISubroutineType(types: !3185)
!3185 = !{!109, !222, !95}
!3186 = !DILocalVariable(name: "s", arg: 1, scope: !3187, file: !88, line: 445, type: !1262)
!3187 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !88, file: !88, line: 445, type: !3188, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3188 = !DISubroutineType(types: !3189)
!3189 = !{!109, !1262, !95, !222}
!3190 = !DILocation(line: 445, column: 72, scope: !3187, inlinedAt: !3191)
!3191 = distinct !DILocation(line: 552, column: 10, scope: !3192, inlinedAt: !3195)
!3192 = distinct !DILexicalBlock(scope: !3193, file: !88, line: 540, column: 34)
!3193 = distinct !DILexicalBlock(scope: !3194, file: !88, line: 540, column: 6)
!3194 = distinct !DISubprogram(name: "kmalloc", scope: !88, file: !88, line: 538, type: !3184, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3195 = distinct !DILocation(line: 664, column: 9, scope: !3183)
!3196 = !DILocalVariable(name: "flags", arg: 2, scope: !3187, file: !88, line: 446, type: !95)
!3197 = !DILocation(line: 446, column: 9, scope: !3187, inlinedAt: !3191)
!3198 = !DILocalVariable(name: "size", arg: 3, scope: !3187, file: !88, line: 446, type: !222)
!3199 = !DILocation(line: 446, column: 23, scope: !3187, inlinedAt: !3191)
!3200 = !DILocalVariable(name: "ret", scope: !3187, file: !88, line: 448, type: !109)
!3201 = !DILocation(line: 448, column: 8, scope: !3187, inlinedAt: !3191)
!3202 = !DILocalVariable(name: "flags", arg: 1, scope: !3203, file: !88, line: 318, type: !95)
!3203 = distinct !DISubprogram(name: "kmalloc_type", scope: !88, file: !88, line: 318, type: !3204, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3204 = !DISubroutineType(types: !3205)
!3205 = !{!87, !95}
!3206 = !DILocation(line: 318, column: 67, scope: !3203, inlinedAt: !3207)
!3207 = distinct !DILocation(line: 553, column: 20, scope: !3192, inlinedAt: !3195)
!3208 = !DILocalVariable(name: "size", arg: 1, scope: !3209, file: !88, line: 346, type: !222)
!3209 = distinct !DISubprogram(name: "kmalloc_index", scope: !88, file: !88, line: 346, type: !3210, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3210 = !DISubroutineType(types: !3211)
!3211 = !{!5, !222}
!3212 = !DILocation(line: 346, column: 58, scope: !3209, inlinedAt: !3213)
!3213 = distinct !DILocation(line: 547, column: 11, scope: !3192, inlinedAt: !3195)
!3214 = !DILocalVariable(name: "size", arg: 1, scope: !3215, file: !88, line: 472, type: !222)
!3215 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !88, file: !88, line: 472, type: !3216, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!109, !222, !95, !5}
!3218 = !DILocation(line: 472, column: 28, scope: !3215, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 481, column: 9, scope: !3220, inlinedAt: !3221)
!3220 = distinct !DISubprogram(name: "kmalloc_large", scope: !88, file: !88, line: 478, type: !3184, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3221 = distinct !DILocation(line: 545, column: 11, scope: !3222, inlinedAt: !3195)
!3222 = distinct !DILexicalBlock(scope: !3192, file: !88, line: 544, column: 7)
!3223 = !DILocalVariable(name: "flags", arg: 2, scope: !3215, file: !88, line: 472, type: !95)
!3224 = !DILocation(line: 472, column: 40, scope: !3215, inlinedAt: !3219)
!3225 = !DILocalVariable(name: "order", arg: 3, scope: !3215, file: !88, line: 472, type: !5)
!3226 = !DILocation(line: 472, column: 60, scope: !3215, inlinedAt: !3219)
!3227 = !DILocalVariable(name: "size", arg: 1, scope: !3220, file: !88, line: 478, type: !222)
!3228 = !DILocation(line: 478, column: 51, scope: !3220, inlinedAt: !3221)
!3229 = !DILocalVariable(name: "flags", arg: 2, scope: !3220, file: !88, line: 478, type: !95)
!3230 = !DILocation(line: 478, column: 63, scope: !3220, inlinedAt: !3221)
!3231 = !DILocalVariable(name: "order", scope: !3220, file: !88, line: 480, type: !5)
!3232 = !DILocation(line: 480, column: 15, scope: !3220, inlinedAt: !3221)
!3233 = !DILocalVariable(name: "size", arg: 1, scope: !3194, file: !88, line: 538, type: !222)
!3234 = !DILocation(line: 538, column: 45, scope: !3194, inlinedAt: !3195)
!3235 = !DILocalVariable(name: "flags", arg: 2, scope: !3194, file: !88, line: 538, type: !95)
!3236 = !DILocation(line: 538, column: 57, scope: !3194, inlinedAt: !3195)
!3237 = !DILocalVariable(name: "index", scope: !3192, file: !88, line: 542, type: !5)
!3238 = !DILocation(line: 542, column: 16, scope: !3192, inlinedAt: !3195)
!3239 = !DILocalVariable(name: "size", arg: 1, scope: !3183, file: !88, line: 662, type: !222)
!3240 = !DILocation(line: 662, column: 36, scope: !3183)
!3241 = !DILocalVariable(name: "flags", arg: 2, scope: !3183, file: !88, line: 662, type: !95)
!3242 = !DILocation(line: 662, column: 48, scope: !3183)
!3243 = !DILocation(line: 664, column: 17, scope: !3183)
!3244 = !DILocation(line: 664, column: 23, scope: !3183)
!3245 = !DILocation(line: 664, column: 29, scope: !3183)
!3246 = !DILocation(line: 540, column: 27, scope: !3193, inlinedAt: !3195)
!3247 = !DILocation(line: 540, column: 6, scope: !3193, inlinedAt: !3195)
!3248 = !DILocation(line: 540, column: 6, scope: !3194, inlinedAt: !3195)
!3249 = !DILocation(line: 544, column: 7, scope: !3222, inlinedAt: !3195)
!3250 = !DILocation(line: 544, column: 12, scope: !3222, inlinedAt: !3195)
!3251 = !DILocation(line: 544, column: 7, scope: !3192, inlinedAt: !3195)
!3252 = !DILocation(line: 545, column: 25, scope: !3222, inlinedAt: !3195)
!3253 = !DILocation(line: 545, column: 31, scope: !3222, inlinedAt: !3195)
!3254 = !DILocation(line: 480, column: 33, scope: !3220, inlinedAt: !3221)
!3255 = !DILocation(line: 480, column: 23, scope: !3220, inlinedAt: !3221)
!3256 = !DILocation(line: 481, column: 29, scope: !3220, inlinedAt: !3221)
!3257 = !DILocation(line: 481, column: 35, scope: !3220, inlinedAt: !3221)
!3258 = !DILocation(line: 481, column: 42, scope: !3220, inlinedAt: !3221)
!3259 = !DILocation(line: 474, column: 23, scope: !3215, inlinedAt: !3219)
!3260 = !DILocation(line: 474, column: 29, scope: !3215, inlinedAt: !3219)
!3261 = !DILocation(line: 474, column: 36, scope: !3215, inlinedAt: !3219)
!3262 = !DILocation(line: 474, column: 9, scope: !3215, inlinedAt: !3219)
!3263 = !DILocation(line: 545, column: 4, scope: !3222, inlinedAt: !3195)
!3264 = !DILocation(line: 547, column: 25, scope: !3192, inlinedAt: !3195)
!3265 = !DILocation(line: 348, column: 7, scope: !3266, inlinedAt: !3213)
!3266 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 348, column: 6)
!3267 = !DILocation(line: 348, column: 6, scope: !3209, inlinedAt: !3213)
!3268 = !DILocation(line: 349, column: 3, scope: !3266, inlinedAt: !3213)
!3269 = !DILocation(line: 351, column: 6, scope: !3270, inlinedAt: !3213)
!3270 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 351, column: 6)
!3271 = !DILocation(line: 351, column: 11, scope: !3270, inlinedAt: !3213)
!3272 = !DILocation(line: 351, column: 6, scope: !3209, inlinedAt: !3213)
!3273 = !DILocation(line: 352, column: 3, scope: !3270, inlinedAt: !3213)
!3274 = !DILocation(line: 354, column: 32, scope: !3275, inlinedAt: !3213)
!3275 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 354, column: 6)
!3276 = !DILocation(line: 354, column: 37, scope: !3275, inlinedAt: !3213)
!3277 = !DILocation(line: 354, column: 42, scope: !3275, inlinedAt: !3213)
!3278 = !DILocation(line: 354, column: 45, scope: !3275, inlinedAt: !3213)
!3279 = !DILocation(line: 354, column: 50, scope: !3275, inlinedAt: !3213)
!3280 = !DILocation(line: 354, column: 6, scope: !3209, inlinedAt: !3213)
!3281 = !DILocation(line: 355, column: 3, scope: !3275, inlinedAt: !3213)
!3282 = !DILocation(line: 356, column: 32, scope: !3283, inlinedAt: !3213)
!3283 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 356, column: 6)
!3284 = !DILocation(line: 356, column: 37, scope: !3283, inlinedAt: !3213)
!3285 = !DILocation(line: 356, column: 43, scope: !3283, inlinedAt: !3213)
!3286 = !DILocation(line: 356, column: 46, scope: !3283, inlinedAt: !3213)
!3287 = !DILocation(line: 356, column: 51, scope: !3283, inlinedAt: !3213)
!3288 = !DILocation(line: 356, column: 6, scope: !3209, inlinedAt: !3213)
!3289 = !DILocation(line: 357, column: 3, scope: !3283, inlinedAt: !3213)
!3290 = !DILocation(line: 358, column: 6, scope: !3291, inlinedAt: !3213)
!3291 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 358, column: 6)
!3292 = !DILocation(line: 358, column: 11, scope: !3291, inlinedAt: !3213)
!3293 = !DILocation(line: 358, column: 6, scope: !3209, inlinedAt: !3213)
!3294 = !DILocation(line: 358, column: 26, scope: !3291, inlinedAt: !3213)
!3295 = !DILocation(line: 359, column: 6, scope: !3296, inlinedAt: !3213)
!3296 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 359, column: 6)
!3297 = !DILocation(line: 359, column: 11, scope: !3296, inlinedAt: !3213)
!3298 = !DILocation(line: 359, column: 6, scope: !3209, inlinedAt: !3213)
!3299 = !DILocation(line: 359, column: 26, scope: !3296, inlinedAt: !3213)
!3300 = !DILocation(line: 360, column: 6, scope: !3301, inlinedAt: !3213)
!3301 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 360, column: 6)
!3302 = !DILocation(line: 360, column: 11, scope: !3301, inlinedAt: !3213)
!3303 = !DILocation(line: 360, column: 6, scope: !3209, inlinedAt: !3213)
!3304 = !DILocation(line: 360, column: 26, scope: !3301, inlinedAt: !3213)
!3305 = !DILocation(line: 361, column: 6, scope: !3306, inlinedAt: !3213)
!3306 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 361, column: 6)
!3307 = !DILocation(line: 361, column: 11, scope: !3306, inlinedAt: !3213)
!3308 = !DILocation(line: 361, column: 6, scope: !3209, inlinedAt: !3213)
!3309 = !DILocation(line: 361, column: 26, scope: !3306, inlinedAt: !3213)
!3310 = !DILocation(line: 362, column: 6, scope: !3311, inlinedAt: !3213)
!3311 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 362, column: 6)
!3312 = !DILocation(line: 362, column: 11, scope: !3311, inlinedAt: !3213)
!3313 = !DILocation(line: 362, column: 6, scope: !3209, inlinedAt: !3213)
!3314 = !DILocation(line: 362, column: 26, scope: !3311, inlinedAt: !3213)
!3315 = !DILocation(line: 363, column: 6, scope: !3316, inlinedAt: !3213)
!3316 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 363, column: 6)
!3317 = !DILocation(line: 363, column: 11, scope: !3316, inlinedAt: !3213)
!3318 = !DILocation(line: 363, column: 6, scope: !3209, inlinedAt: !3213)
!3319 = !DILocation(line: 363, column: 26, scope: !3316, inlinedAt: !3213)
!3320 = !DILocation(line: 364, column: 6, scope: !3321, inlinedAt: !3213)
!3321 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 364, column: 6)
!3322 = !DILocation(line: 364, column: 11, scope: !3321, inlinedAt: !3213)
!3323 = !DILocation(line: 364, column: 6, scope: !3209, inlinedAt: !3213)
!3324 = !DILocation(line: 364, column: 26, scope: !3321, inlinedAt: !3213)
!3325 = !DILocation(line: 365, column: 6, scope: !3326, inlinedAt: !3213)
!3326 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 365, column: 6)
!3327 = !DILocation(line: 365, column: 11, scope: !3326, inlinedAt: !3213)
!3328 = !DILocation(line: 365, column: 6, scope: !3209, inlinedAt: !3213)
!3329 = !DILocation(line: 365, column: 26, scope: !3326, inlinedAt: !3213)
!3330 = !DILocation(line: 366, column: 6, scope: !3331, inlinedAt: !3213)
!3331 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 366, column: 6)
!3332 = !DILocation(line: 366, column: 11, scope: !3331, inlinedAt: !3213)
!3333 = !DILocation(line: 366, column: 6, scope: !3209, inlinedAt: !3213)
!3334 = !DILocation(line: 366, column: 26, scope: !3331, inlinedAt: !3213)
!3335 = !DILocation(line: 367, column: 6, scope: !3336, inlinedAt: !3213)
!3336 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 367, column: 6)
!3337 = !DILocation(line: 367, column: 11, scope: !3336, inlinedAt: !3213)
!3338 = !DILocation(line: 367, column: 6, scope: !3209, inlinedAt: !3213)
!3339 = !DILocation(line: 367, column: 26, scope: !3336, inlinedAt: !3213)
!3340 = !DILocation(line: 368, column: 6, scope: !3341, inlinedAt: !3213)
!3341 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 368, column: 6)
!3342 = !DILocation(line: 368, column: 11, scope: !3341, inlinedAt: !3213)
!3343 = !DILocation(line: 368, column: 6, scope: !3209, inlinedAt: !3213)
!3344 = !DILocation(line: 368, column: 26, scope: !3341, inlinedAt: !3213)
!3345 = !DILocation(line: 369, column: 6, scope: !3346, inlinedAt: !3213)
!3346 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 369, column: 6)
!3347 = !DILocation(line: 369, column: 11, scope: !3346, inlinedAt: !3213)
!3348 = !DILocation(line: 369, column: 6, scope: !3209, inlinedAt: !3213)
!3349 = !DILocation(line: 369, column: 26, scope: !3346, inlinedAt: !3213)
!3350 = !DILocation(line: 370, column: 6, scope: !3351, inlinedAt: !3213)
!3351 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 370, column: 6)
!3352 = !DILocation(line: 370, column: 11, scope: !3351, inlinedAt: !3213)
!3353 = !DILocation(line: 370, column: 6, scope: !3209, inlinedAt: !3213)
!3354 = !DILocation(line: 370, column: 26, scope: !3351, inlinedAt: !3213)
!3355 = !DILocation(line: 371, column: 6, scope: !3356, inlinedAt: !3213)
!3356 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 371, column: 6)
!3357 = !DILocation(line: 371, column: 11, scope: !3356, inlinedAt: !3213)
!3358 = !DILocation(line: 371, column: 6, scope: !3209, inlinedAt: !3213)
!3359 = !DILocation(line: 371, column: 26, scope: !3356, inlinedAt: !3213)
!3360 = !DILocation(line: 372, column: 6, scope: !3361, inlinedAt: !3213)
!3361 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 372, column: 6)
!3362 = !DILocation(line: 372, column: 11, scope: !3361, inlinedAt: !3213)
!3363 = !DILocation(line: 372, column: 6, scope: !3209, inlinedAt: !3213)
!3364 = !DILocation(line: 372, column: 26, scope: !3361, inlinedAt: !3213)
!3365 = !DILocation(line: 373, column: 6, scope: !3366, inlinedAt: !3213)
!3366 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 373, column: 6)
!3367 = !DILocation(line: 373, column: 11, scope: !3366, inlinedAt: !3213)
!3368 = !DILocation(line: 373, column: 6, scope: !3209, inlinedAt: !3213)
!3369 = !DILocation(line: 373, column: 26, scope: !3366, inlinedAt: !3213)
!3370 = !DILocation(line: 374, column: 6, scope: !3371, inlinedAt: !3213)
!3371 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 374, column: 6)
!3372 = !DILocation(line: 374, column: 11, scope: !3371, inlinedAt: !3213)
!3373 = !DILocation(line: 374, column: 6, scope: !3209, inlinedAt: !3213)
!3374 = !DILocation(line: 374, column: 26, scope: !3371, inlinedAt: !3213)
!3375 = !DILocation(line: 375, column: 6, scope: !3376, inlinedAt: !3213)
!3376 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 375, column: 6)
!3377 = !DILocation(line: 375, column: 11, scope: !3376, inlinedAt: !3213)
!3378 = !DILocation(line: 375, column: 6, scope: !3209, inlinedAt: !3213)
!3379 = !DILocation(line: 375, column: 27, scope: !3376, inlinedAt: !3213)
!3380 = !DILocation(line: 376, column: 6, scope: !3381, inlinedAt: !3213)
!3381 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 376, column: 6)
!3382 = !DILocation(line: 376, column: 11, scope: !3381, inlinedAt: !3213)
!3383 = !DILocation(line: 376, column: 6, scope: !3209, inlinedAt: !3213)
!3384 = !DILocation(line: 376, column: 32, scope: !3381, inlinedAt: !3213)
!3385 = !DILocation(line: 377, column: 6, scope: !3386, inlinedAt: !3213)
!3386 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 377, column: 6)
!3387 = !DILocation(line: 377, column: 11, scope: !3386, inlinedAt: !3213)
!3388 = !DILocation(line: 377, column: 6, scope: !3209, inlinedAt: !3213)
!3389 = !DILocation(line: 377, column: 32, scope: !3386, inlinedAt: !3213)
!3390 = !DILocation(line: 378, column: 6, scope: !3391, inlinedAt: !3213)
!3391 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 378, column: 6)
!3392 = !DILocation(line: 378, column: 11, scope: !3391, inlinedAt: !3213)
!3393 = !DILocation(line: 378, column: 6, scope: !3209, inlinedAt: !3213)
!3394 = !DILocation(line: 378, column: 32, scope: !3391, inlinedAt: !3213)
!3395 = !DILocation(line: 379, column: 6, scope: !3396, inlinedAt: !3213)
!3396 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 379, column: 6)
!3397 = !DILocation(line: 379, column: 11, scope: !3396, inlinedAt: !3213)
!3398 = !DILocation(line: 379, column: 6, scope: !3209, inlinedAt: !3213)
!3399 = !DILocation(line: 379, column: 33, scope: !3396, inlinedAt: !3213)
!3400 = !DILocation(line: 380, column: 6, scope: !3401, inlinedAt: !3213)
!3401 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 380, column: 6)
!3402 = !DILocation(line: 380, column: 11, scope: !3401, inlinedAt: !3213)
!3403 = !DILocation(line: 380, column: 6, scope: !3209, inlinedAt: !3213)
!3404 = !DILocation(line: 380, column: 33, scope: !3401, inlinedAt: !3213)
!3405 = !DILocation(line: 381, column: 6, scope: !3406, inlinedAt: !3213)
!3406 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 381, column: 6)
!3407 = !DILocation(line: 381, column: 11, scope: !3406, inlinedAt: !3213)
!3408 = !DILocation(line: 381, column: 6, scope: !3209, inlinedAt: !3213)
!3409 = !DILocation(line: 381, column: 33, scope: !3406, inlinedAt: !3213)
!3410 = !DILocation(line: 382, column: 2, scope: !3411, inlinedAt: !3213)
!3411 = distinct !DILexicalBlock(scope: !3412, file: !88, line: 382, column: 2)
!3412 = distinct !DILexicalBlock(scope: !3209, file: !88, line: 382, column: 2)
!3413 = !{i32 -2144651696, i32 -2144651667, i32 -2144651621, i32 -2144651563, i32 -2144651509, i32 -2144651455, i32 -2144651400, i32 -2144651369}
!3414 = !DILocation(line: 382, column: 2, scope: !3415, inlinedAt: !3213)
!3415 = distinct !DILexicalBlock(scope: !3416, file: !88, line: 382, column: 2)
!3416 = distinct !DILexicalBlock(scope: !3412, file: !88, line: 382, column: 2)
!3417 = !{i32 -2144650926, i32 -2144650919, i32 -2144650865, i32 -2144650834, i32 -2144650804}
!3418 = !DILocation(line: 382, column: 2, scope: !3416, inlinedAt: !3213)
!3419 = !DILocation(line: 386, column: 1, scope: !3209, inlinedAt: !3213)
!3420 = !DILocation(line: 547, column: 9, scope: !3192, inlinedAt: !3195)
!3421 = !DILocation(line: 549, column: 8, scope: !3422, inlinedAt: !3195)
!3422 = distinct !DILexicalBlock(scope: !3192, file: !88, line: 549, column: 7)
!3423 = !DILocation(line: 549, column: 7, scope: !3192, inlinedAt: !3195)
!3424 = !DILocation(line: 550, column: 4, scope: !3422, inlinedAt: !3195)
!3425 = !DILocation(line: 553, column: 33, scope: !3192, inlinedAt: !3195)
!3426 = !DILocation(line: 325, column: 6, scope: !3427, inlinedAt: !3207)
!3427 = distinct !DILexicalBlock(scope: !3203, file: !88, line: 325, column: 6)
!3428 = !DILocation(line: 325, column: 6, scope: !3203, inlinedAt: !3207)
!3429 = !DILocation(line: 326, column: 3, scope: !3427, inlinedAt: !3207)
!3430 = !DILocation(line: 332, column: 9, scope: !3203, inlinedAt: !3207)
!3431 = !DILocation(line: 332, column: 15, scope: !3203, inlinedAt: !3207)
!3432 = !DILocation(line: 332, column: 2, scope: !3203, inlinedAt: !3207)
!3433 = !DILocation(line: 336, column: 1, scope: !3203, inlinedAt: !3207)
!3434 = !DILocation(line: 553, column: 5, scope: !3192, inlinedAt: !3195)
!3435 = !DILocation(line: 553, column: 41, scope: !3192, inlinedAt: !3195)
!3436 = !DILocation(line: 554, column: 5, scope: !3192, inlinedAt: !3195)
!3437 = !DILocation(line: 554, column: 12, scope: !3192, inlinedAt: !3195)
!3438 = !DILocation(line: 448, column: 31, scope: !3187, inlinedAt: !3191)
!3439 = !DILocation(line: 448, column: 34, scope: !3187, inlinedAt: !3191)
!3440 = !DILocation(line: 448, column: 14, scope: !3187, inlinedAt: !3191)
!3441 = !DILocation(line: 450, column: 22, scope: !3187, inlinedAt: !3191)
!3442 = !DILocation(line: 450, column: 25, scope: !3187, inlinedAt: !3191)
!3443 = !DILocation(line: 450, column: 30, scope: !3187, inlinedAt: !3191)
!3444 = !DILocation(line: 450, column: 36, scope: !3187, inlinedAt: !3191)
!3445 = !DILocation(line: 450, column: 8, scope: !3187, inlinedAt: !3191)
!3446 = !DILocation(line: 450, column: 6, scope: !3187, inlinedAt: !3191)
!3447 = !DILocation(line: 451, column: 9, scope: !3187, inlinedAt: !3191)
!3448 = !DILocation(line: 552, column: 3, scope: !3192, inlinedAt: !3195)
!3449 = !DILocation(line: 557, column: 19, scope: !3194, inlinedAt: !3195)
!3450 = !DILocation(line: 557, column: 25, scope: !3194, inlinedAt: !3195)
!3451 = !DILocation(line: 557, column: 9, scope: !3194, inlinedAt: !3195)
!3452 = !DILocation(line: 557, column: 2, scope: !3194, inlinedAt: !3195)
!3453 = !DILocation(line: 558, column: 1, scope: !3194, inlinedAt: !3195)
!3454 = !DILocation(line: 664, column: 2, scope: !3183)
!3455 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !2447, file: !2447, line: 110, type: !3456, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!317, !119}
!3458 = !DILocalVariable(name: "chip", arg: 1, scope: !3455, file: !2447, line: 110, type: !119)
!3459 = !DILocation(line: 110, column: 55, scope: !3455)
!3460 = !DILocation(line: 112, column: 7, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3455, file: !2447, line: 112, column: 6)
!3462 = !DILocation(line: 112, column: 13, scope: !3461)
!3463 = !DILocation(line: 112, column: 24, scope: !3461)
!3464 = !DILocation(line: 112, column: 28, scope: !3461)
!3465 = !DILocation(line: 112, column: 34, scope: !3461)
!3466 = !DILocation(line: 112, column: 46, scope: !3461)
!3467 = !DILocation(line: 112, column: 50, scope: !3461)
!3468 = !DILocation(line: 113, column: 7, scope: !3461)
!3469 = !DILocation(line: 113, column: 13, scope: !3461)
!3470 = !DILocation(line: 113, column: 25, scope: !3461)
!3471 = !DILocation(line: 113, column: 30, scope: !3461)
!3472 = !DILocation(line: 112, column: 6, scope: !3455)
!3473 = !DILocation(line: 114, column: 3, scope: !3461)
!3474 = !DILocation(line: 116, column: 2, scope: !3455)
!3475 = !DILocation(line: 117, column: 1, scope: !3455)
!3476 = distinct !DISubprogram(name: "nanddev_set_ecc_requirements", scope: !49, file: !49, line: 554, type: !3477, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3477 = !DISubroutineType(types: !3478)
!3478 = !{null, !2347, !3479}
!3479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3480, size: 64)
!3480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2319)
!3481 = !DILocalVariable(name: "nand", arg: 1, scope: !3476, file: !49, line: 554, type: !2347)
!3482 = !DILocation(line: 554, column: 50, scope: !3476)
!3483 = !DILocalVariable(name: "reqs", arg: 2, scope: !3476, file: !49, line: 555, type: !3479)
!3484 = !DILocation(line: 555, column: 38, scope: !3476)
!3485 = !DILocation(line: 557, column: 2, scope: !3476)
!3486 = !DILocation(line: 557, column: 8, scope: !3476)
!3487 = !DILocation(line: 557, column: 12, scope: !3476)
!3488 = !DILocation(line: 557, column: 28, scope: !3476)
!3489 = !DILocation(line: 557, column: 27, scope: !3476)
!3490 = !DILocation(line: 558, column: 1, scope: !3476)
!3491 = distinct !DISubprogram(name: "get_order", scope: !3492, file: !3492, line: 29, type: !3493, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3492 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!118, !203}
!3495 = !DILocalVariable(name: "x", arg: 1, scope: !3496, file: !2809, line: 366, type: !137)
!3496 = distinct !DISubprogram(name: "fls64", scope: !2809, file: !2809, line: 366, type: !3497, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!118, !137}
!3499 = !DILocation(line: 366, column: 40, scope: !3496, inlinedAt: !3500)
!3500 = distinct !DILocation(line: 46, column: 9, scope: !3491)
!3501 = !DILocalVariable(name: "bitpos", scope: !3496, file: !2809, line: 368, type: !118)
!3502 = !DILocation(line: 368, column: 6, scope: !3496, inlinedAt: !3500)
!3503 = !DILocalVariable(name: "size", arg: 1, scope: !3491, file: !3492, line: 29, type: !203)
!3504 = !DILocation(line: 29, column: 63, scope: !3491)
!3505 = !DILocation(line: 31, column: 27, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3491, file: !3492, line: 31, column: 6)
!3507 = !DILocation(line: 31, column: 6, scope: !3506)
!3508 = !DILocation(line: 31, column: 6, scope: !3491)
!3509 = !DILocation(line: 32, column: 8, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3511, file: !3492, line: 32, column: 7)
!3511 = distinct !DILexicalBlock(scope: !3506, file: !3492, line: 31, column: 34)
!3512 = !DILocation(line: 32, column: 7, scope: !3511)
!3513 = !DILocation(line: 33, column: 4, scope: !3510)
!3514 = !DILocation(line: 35, column: 7, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3511, file: !3492, line: 35, column: 7)
!3516 = !DILocation(line: 35, column: 12, scope: !3515)
!3517 = !DILocation(line: 35, column: 7, scope: !3511)
!3518 = !DILocation(line: 36, column: 4, scope: !3515)
!3519 = !DILocation(line: 38, column: 10, scope: !3511)
!3520 = !DILocation(line: 38, column: 28, scope: !3511)
!3521 = !DILocation(line: 38, column: 41, scope: !3511)
!3522 = !DILocation(line: 38, column: 3, scope: !3511)
!3523 = !DILocation(line: 41, column: 6, scope: !3491)
!3524 = !DILocation(line: 42, column: 7, scope: !3491)
!3525 = !DILocation(line: 46, column: 15, scope: !3491)
!3526 = !DILocation(line: 374, column: 2, scope: !3496, inlinedAt: !3500)
!3527 = !DILocation(line: 376, column: 14, scope: !3496, inlinedAt: !3500)
!3528 = !{i32 303616}
!3529 = !DILocation(line: 377, column: 9, scope: !3496, inlinedAt: !3500)
!3530 = !DILocation(line: 377, column: 16, scope: !3496, inlinedAt: !3500)
!3531 = !DILocation(line: 46, column: 2, scope: !3491)
!3532 = !DILocation(line: 48, column: 1, scope: !3491)
!3533 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3534, file: !3534, line: 30, type: !3535, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3534 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!118, !136}
!3537 = !DILocation(line: 366, column: 40, scope: !3496, inlinedAt: !3538)
!3538 = distinct !DILocation(line: 32, column: 9, scope: !3533)
!3539 = !DILocation(line: 368, column: 6, scope: !3496, inlinedAt: !3538)
!3540 = !DILocalVariable(name: "n", arg: 1, scope: !3533, file: !3534, line: 30, type: !136)
!3541 = !DILocation(line: 30, column: 21, scope: !3533)
!3542 = !DILocation(line: 32, column: 15, scope: !3533)
!3543 = !DILocation(line: 374, column: 2, scope: !3496, inlinedAt: !3538)
!3544 = !DILocation(line: 376, column: 14, scope: !3496, inlinedAt: !3538)
!3545 = !DILocation(line: 377, column: 9, scope: !3496, inlinedAt: !3538)
!3546 = !DILocation(line: 377, column: 16, scope: !3496, inlinedAt: !3538)
!3547 = !DILocation(line: 32, column: 18, scope: !3533)
!3548 = !DILocation(line: 32, column: 2, scope: !3533)
!3549 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1331, file: !1331, line: 137, type: !3550, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !380)
!3550 = !DISubroutineType(types: !3551)
!3551 = !{!109, !1262, !1603, !222, !95}
!3552 = !DILocalVariable(name: "s", arg: 1, scope: !3549, file: !1331, line: 137, type: !1262)
!3553 = !DILocation(line: 137, column: 54, scope: !3549)
!3554 = !DILocalVariable(name: "object", arg: 2, scope: !3549, file: !1331, line: 137, type: !1603)
!3555 = !DILocation(line: 137, column: 69, scope: !3549)
!3556 = !DILocalVariable(name: "size", arg: 3, scope: !3549, file: !1331, line: 138, type: !222)
!3557 = !DILocation(line: 138, column: 12, scope: !3549)
!3558 = !DILocalVariable(name: "flags", arg: 4, scope: !3549, file: !1331, line: 138, type: !95)
!3559 = !DILocation(line: 138, column: 24, scope: !3549)
!3560 = !DILocation(line: 140, column: 17, scope: !3549)
!3561 = !DILocation(line: 140, column: 2, scope: !3549)
