; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_toshiba.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_toshiba.c"
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
%struct.nand_op_cmd_instr = type { i8 }

@toshiba_nand_manuf_ops = dso_local constant { void (%struct.nand_chip*)*, i32 (%struct.nand_chip*)*, void (%struct.nand_chip*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* } { void (%struct.nand_chip*)* @toshiba_nand_decode_id, i32 (%struct.nand_chip*)* @toshiba_nand_init, void (%struct.nand_chip*)* null, void (%struct.nand_chip*, %struct.nand_onfi_params*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [23 x i8] c"Could not get ECC info\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"drivers/mtd/nand/raw/nand_toshiba.c\00", align 1
@.str.2 = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.4 = private unnamed_addr constant [16 x i8] c"TC58TEG5DCLTA00\00", align 1
@.str.5 = private unnamed_addr constant [12 x i8] c"TC58NVG0S3E\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"TH58NVG2S3HBAI4\00", align 1
@.str.7 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1
@dist3_pairing_scheme = external dso_local constant %struct.mtd_pairing_scheme, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @toshiba_nand_decode_id(%struct.nand_chip* %chip) #0 !dbg !2801 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %base = alloca %struct.nand_device*, align 8
  %requirements = alloca %struct.nand_ecc_props, align 4
  %mtd = alloca %struct.mtd_info*, align 8
  %memorg = alloca %struct.nand_memory_organization*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2802, metadata !DIExpression()), !dbg !2803
  call void @llvm.dbg.declare(metadata %struct.nand_device** %base, metadata !2804, metadata !DIExpression()), !dbg !2805
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2806
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2807
  store %struct.nand_device* %base1, %struct.nand_device** %base, align 8, !dbg !2805
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props* %requirements, metadata !2808, metadata !DIExpression()), !dbg !2809
  %1 = bitcast %struct.nand_ecc_props* %requirements to i8*, !dbg !2809
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 24, i1 false), !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2810, metadata !DIExpression()), !dbg !2811
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2812
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %2) #4, !dbg !2813
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2811
  call void @llvm.dbg.declare(metadata %struct.nand_memory_organization** %memorg, metadata !2814, metadata !DIExpression()), !dbg !2816
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2817
  %base2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 0, !dbg !2818
  %call3 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %base2) #4, !dbg !2819
  store %struct.nand_memory_organization* %call3, %struct.nand_memory_organization** %memorg, align 8, !dbg !2820
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2821
  call void @nand_decode_ext_id(%struct.nand_chip* %4) #4, !dbg !2822
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2823
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 1, !dbg !2825
  %len = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 1, !dbg !2826
  %6 = load i32, i32* %len, align 8, !dbg !2826
  %cmp = icmp sge i32 %6, 6, !dbg !2827
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2828

land.lhs.true:                                    ; preds = %entry
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2829
  %call4 = call zeroext i1 @nand_is_slc(%struct.nand_chip* %7) #4, !dbg !2830
  br i1 %call4, label %land.lhs.true5, label %if.end, !dbg !2831

land.lhs.true5:                                   ; preds = %land.lhs.true
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2832
  %id6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 1, !dbg !2833
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id6, i32 0, i32 0, !dbg !2834
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 5, !dbg !2832
  %9 = load i8, i8* %arrayidx, align 1, !dbg !2832
  %conv = zext i8 %9 to i32, !dbg !2832
  %and = and i32 %conv, 7, !dbg !2835
  %cmp7 = icmp eq i32 %and, 6, !dbg !2836
  br i1 %cmp7, label %land.lhs.true9, label %if.end, !dbg !2837

land.lhs.true9:                                   ; preds = %land.lhs.true5
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2838
  %id10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1, !dbg !2839
  %data11 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id10, i32 0, i32 0, !dbg !2840
  %arrayidx12 = getelementptr [8 x i8], [8 x i8]* %data11, i64 0, i64 4, !dbg !2838
  %11 = load i8, i8* %arrayidx12, align 4, !dbg !2838
  %conv13 = zext i8 %11 to i64, !dbg !2838
  %and14 = and i64 %conv13, 128, !dbg !2841
  %tobool = icmp ne i64 %and14, 0, !dbg !2841
  br i1 %tobool, label %if.end, label %if.then, !dbg !2842

if.then:                                          ; preds = %land.lhs.true9
  %12 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2843
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %12, i32 0, i32 1, !dbg !2845
  %13 = load i32, i32* %pagesize, align 4, !dbg !2845
  %mul = mul i32 32, %13, !dbg !2846
  %shr = lshr i32 %mul, 9, !dbg !2847
  %14 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2848
  %oobsize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %14, i32 0, i32 2, !dbg !2849
  store i32 %shr, i32* %oobsize, align 4, !dbg !2850
  %15 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2851
  %oobsize15 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %15, i32 0, i32 2, !dbg !2852
  %16 = load i32, i32* %oobsize15, align 4, !dbg !2852
  %17 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2853
  %oobsize16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 6, !dbg !2854
  store i32 %16, i32* %oobsize16, align 4, !dbg !2855
  br label %if.end, !dbg !2856

if.end:                                           ; preds = %if.then, %land.lhs.true9, %land.lhs.true5, %land.lhs.true, %entry
  %18 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2857
  %id17 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 1, !dbg !2859
  %len18 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id17, i32 0, i32 1, !dbg !2860
  %19 = load i32, i32* %len18, align 8, !dbg !2860
  %cmp19 = icmp sge i32 %19, 6, !dbg !2861
  br i1 %cmp19, label %land.lhs.true21, label %if.end59, !dbg !2862

land.lhs.true21:                                  ; preds = %if.end
  %20 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2863
  %call22 = call zeroext i1 @nand_is_slc(%struct.nand_chip* %20) #4, !dbg !2864
  br i1 %call22, label %if.then24, label %if.end59, !dbg !2865

if.then24:                                        ; preds = %land.lhs.true21
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !2866
  store i32 512, i32* %step_size, align 4, !dbg !2868
  %21 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2869
  %id25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %21, i32 0, i32 1, !dbg !2870
  %data26 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id25, i32 0, i32 0, !dbg !2871
  %arrayidx27 = getelementptr [8 x i8], [8 x i8]* %data26, i64 0, i64 5, !dbg !2869
  %22 = load i8, i8* %arrayidx27, align 1, !dbg !2869
  %conv28 = zext i8 %22 to i32, !dbg !2869
  %and29 = and i32 %conv28, 7, !dbg !2872
  switch i32 %and29, label %sw.default [
    i32 4, label %sw.bb
    i32 5, label %sw.bb30
    i32 6, label %sw.bb32
  ], !dbg !2873

sw.bb:                                            ; preds = %if.then24
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !2874
  store i32 1, i32* %strength, align 4, !dbg !2876
  br label %sw.epilog, !dbg !2877

sw.bb30:                                          ; preds = %if.then24
  %strength31 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !2878
  store i32 4, i32* %strength31, align 4, !dbg !2879
  br label %sw.epilog, !dbg !2880

sw.bb32:                                          ; preds = %if.then24
  %strength33 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !2881
  store i32 8, i32* %strength33, align 4, !dbg !2882
  br label %sw.epilog, !dbg !2883

sw.default:                                       ; preds = %if.then24
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2884, metadata !DIExpression()), !dbg !2886
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !2886
  %23 = load i32, i32* %__ret_warn_on, align 4, !dbg !2887
  %tobool34 = icmp ne i32 %23, 0, !dbg !2887
  %lnot = xor i1 %tobool34, true, !dbg !2887
  %lnot35 = xor i1 %lnot, true, !dbg !2887
  %lnot.ext = zext i1 %lnot35 to i32, !dbg !2887
  %conv36 = sext i32 %lnot.ext to i64, !dbg !2887
  %tobool37 = icmp ne i64 %conv36, 0, !dbg !2887
  br i1 %tobool37, label %if.then38, label %if.end51, !dbg !2886

if.then38:                                        ; preds = %sw.default
  br label %do.body, !dbg !2887

do.body:                                          ; preds = %if.then38
  br label %do.body39, !dbg !2889

do.body39:                                        ; preds = %do.body
  br label %do.end, !dbg !2891

do.end:                                           ; preds = %do.body39
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0)) #4, !dbg !2889
  br label %do.body40, !dbg !2889

do.body40:                                        ; preds = %do.end
  br label %do.body41, !dbg !2893

do.body41:                                        ; preds = %do.body40
  br label %do.end42, !dbg !2895

do.end42:                                         ; preds = %do.body41
  br label %do.body43, !dbg !2893

do.body43:                                        ; preds = %do.end42
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 192, i32 2313, i64 12) #5, !dbg !2897, !srcloc !2899
  br label %do.end44, !dbg !2897

do.end44:                                         ; preds = %do.body43
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 172) #5, !dbg !2900, !srcloc !2902
  br label %do.body45, !dbg !2893

do.body45:                                        ; preds = %do.end44
  br label %do.end46, !dbg !2903

do.end46:                                         ; preds = %do.body45
  br label %do.end47, !dbg !2893

do.end47:                                         ; preds = %do.end46
  br label %do.body48, !dbg !2889

do.body48:                                        ; preds = %do.end47
  br label %do.end49, !dbg !2905

do.end49:                                         ; preds = %do.body48
  br label %do.end50, !dbg !2889

do.end50:                                         ; preds = %do.end49
  br label %if.end51, !dbg !2889

if.end51:                                         ; preds = %do.end50, %sw.default
  %24 = load i32, i32* %__ret_warn_on, align 4, !dbg !2886
  %tobool52 = icmp ne i32 %24, 0, !dbg !2886
  %lnot53 = xor i1 %tobool52, true, !dbg !2886
  %lnot55 = xor i1 %lnot53, true, !dbg !2886
  %lnot.ext56 = zext i1 %lnot55 to i32, !dbg !2886
  %conv57 = sext i32 %lnot.ext56 to i64, !dbg !2886
  store i64 %conv57, i64* %tmp, align 8, !dbg !2887
  %25 = load i64, i64* %tmp, align 8, !dbg !2886
  %step_size58 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !2907
  store i32 0, i32* %step_size58, align 4, !dbg !2908
  br label %sw.epilog, !dbg !2909

sw.epilog:                                        ; preds = %if.end51, %sw.bb32, %sw.bb30, %sw.bb
  br label %if.end59, !dbg !2910

if.end59:                                         ; preds = %sw.epilog, %land.lhs.true21, %if.end
  %26 = load %struct.nand_device*, %struct.nand_device** %base, align 8, !dbg !2911
  call void @nanddev_set_ecc_requirements(%struct.nand_device* %26, %struct.nand_ecc_props* %requirements) #4, !dbg !2912
  ret void, !dbg !2913
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @toshiba_nand_init(%struct.nand_chip* %chip) #0 !dbg !2914 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2915, metadata !DIExpression()), !dbg !2916
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2917
  %call = call zeroext i1 @nand_is_slc(%struct.nand_chip* %0) #4, !dbg !2919
  br i1 %call, label %if.then, label %if.end, !dbg !2920

if.then:                                          ; preds = %entry
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2921
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 6, !dbg !2922
  %2 = load i32, i32* %options, align 8, !dbg !2923
  %conv = zext i32 %2 to i64, !dbg !2923
  %or = or i64 %conv, 50331648, !dbg !2923
  %conv1 = trunc i64 %or to i32, !dbg !2923
  store i32 %conv1, i32* %options, align 8, !dbg !2923
  br label %if.end, !dbg !2921

if.end:                                           ; preds = %if.then, %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2924
  %call2 = call zeroext i1 @nand_is_slc(%struct.nand_chip* %3) #4, !dbg !2926
  br i1 %call2, label %land.lhs.true, label %if.end8, !dbg !2927

land.lhs.true:                                    ; preds = %if.end
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2928
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 31, !dbg !2929
  %engine_type = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 0, !dbg !2930
  %5 = load i32, i32* %engine_type, align 8, !dbg !2930
  %cmp = icmp eq i32 %5, 4, !dbg !2931
  br i1 %cmp, label %land.lhs.true5, label %if.end8, !dbg !2932

land.lhs.true5:                                   ; preds = %land.lhs.true
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2933
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 1, !dbg !2934
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 0, !dbg !2935
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 4, !dbg !2933
  %7 = load i8, i8* %arrayidx, align 4, !dbg !2933
  %conv6 = zext i8 %7 to i64, !dbg !2933
  %and = and i64 %conv6, 128, !dbg !2936
  %tobool = icmp ne i64 %and, 0, !dbg !2936
  br i1 %tobool, label %if.then7, label %if.end8, !dbg !2937

if.then7:                                         ; preds = %land.lhs.true5
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2938
  call void @toshiba_nand_benand_init(%struct.nand_chip* %8) #4, !dbg !2939
  br label %if.end8, !dbg !2939

if.end8:                                          ; preds = %if.then7, %land.lhs.true5, %land.lhs.true, %if.end
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2940
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 2, !dbg !2942
  %model = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 0, !dbg !2943
  %10 = load i8*, i8** %model, align 8, !dbg !2943
  %call9 = call i32 @strcmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.4, i64 0, i64 0), i8* %10) #4, !dbg !2944
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2944
  br i1 %tobool10, label %if.end13, label %if.then11, !dbg !2945

if.then11:                                        ; preds = %if.end8
  %11 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2946
  %call12 = call i32 @tc58teg5dclta00_init(%struct.nand_chip* %11) #4, !dbg !2947
  br label %if.end13, !dbg !2947

if.end13:                                         ; preds = %if.then11, %if.end8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2948
  %parameters14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 2, !dbg !2950
  %model15 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters14, i32 0, i32 0, !dbg !2951
  %13 = load i8*, i8** %model15, align 8, !dbg !2951
  %call16 = call i32 @strncmp(i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.5, i64 0, i64 0), i8* %13, i64 11) #4, !dbg !2952
  %tobool17 = icmp ne i32 %call16, 0, !dbg !2952
  br i1 %tobool17, label %if.end20, label %if.then18, !dbg !2953

if.then18:                                        ; preds = %if.end13
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2954
  %call19 = call i32 @tc58nvg0s3e_init(%struct.nand_chip* %14) #4, !dbg !2955
  br label %if.end20, !dbg !2955

if.end20:                                         ; preds = %if.then18, %if.end13
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2956
  %parameters21 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %15, i32 0, i32 2, !dbg !2958
  %model22 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters21, i32 0, i32 0, !dbg !2959
  %16 = load i8*, i8** %model22, align 8, !dbg !2959
  %call23 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %16, i64 15) #4, !dbg !2960
  %tobool24 = icmp ne i32 %call23, 0, !dbg !2960
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !2961

if.then25:                                        ; preds = %if.end20
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2962
  %call26 = call i32 @th58nvg2s3hbai4_init(%struct.nand_chip* %17) #4, !dbg !2963
  br label %if.end27, !dbg !2963

if.end27:                                         ; preds = %if.then25, %if.end20
  ret i32 0, !dbg !2964
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !2965 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2968, metadata !DIExpression()), !dbg !2969
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2970
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2971
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !2972
  ret %struct.mtd_info* %mtd, !dbg !2973
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %nand) #0 !dbg !2974 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !2977, metadata !DIExpression()), !dbg !2978
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !2979
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !2980
  ret %struct.nand_memory_organization* %memorg, !dbg !2981
}

; Function Attrs: noredzone
declare dso_local void @nand_decode_ext_id(%struct.nand_chip*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_is_slc(%struct.nand_chip* %chip) #0 !dbg !2982 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2985, metadata !DIExpression()), !dbg !2986
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2987, metadata !DIExpression()), !dbg !2989
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2989
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2989
  %call = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base) #4, !dbg !2989
  %cmp = icmp eq i32 %call, 0, !dbg !2989
  %lnot = xor i1 %cmp, true, !dbg !2989
  %lnot1 = xor i1 %lnot, true, !dbg !2989
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2989
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2989
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !2990
  %tobool = icmp ne i32 %1, 0, !dbg !2990
  %lnot2 = xor i1 %tobool, true, !dbg !2990
  %lnot4 = xor i1 %lnot2, true, !dbg !2990
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !2990
  %conv = sext i32 %lnot.ext5 to i64, !dbg !2990
  %tobool6 = icmp ne i64 %conv, 0, !dbg !2990
  br i1 %tobool6, label %if.then, label %if.end, !dbg !2989

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2990

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !2992

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2994

do.end:                                           ; preds = %do.body7
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.2, i64 0, i64 0)) #4, !dbg !2992
  br label %do.body8, !dbg !2992

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !2996

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !2998

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !2996

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0), i32 1284, i32 2313, i64 12) #5, !dbg !3000, !srcloc !3002
  br label %do.end12, !dbg !3000

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #5, !dbg !3003, !srcloc !3005
  br label %do.body13, !dbg !2996

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3006

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !2996

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !2992

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3008

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !2992

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !2992

if.end:                                           ; preds = %do.end18, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !2989
  %tobool19 = icmp ne i32 %2, 0, !dbg !2989
  %lnot20 = xor i1 %tobool19, true, !dbg !2989
  %lnot22 = xor i1 %lnot20, true, !dbg !2989
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !2989
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !2989
  store i64 %conv24, i64* %tmp, align 8, !dbg !2990
  %3 = load i64, i64* %tmp, align 8, !dbg !2989
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3010
  %base25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 0, !dbg !3011
  %call26 = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base25) #4, !dbg !3012
  %cmp27 = icmp eq i32 %call26, 1, !dbg !3013
  ret i1 %cmp27, !dbg !3014
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_set_ecc_requirements(%struct.nand_device* %nand, %struct.nand_ecc_props* %reqs) #0 !dbg !3015 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %reqs.addr = alloca %struct.nand_ecc_props*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  store %struct.nand_ecc_props* %reqs, %struct.nand_ecc_props** %reqs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %reqs.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3024
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !3025
  %requirements = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 1, !dbg !3026
  %1 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs.addr, align 8, !dbg !3027
  %2 = bitcast %struct.nand_ecc_props* %requirements to i8*, !dbg !3028
  %3 = bitcast %struct.nand_ecc_props* %1 to i8*, !dbg !3028
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 24, i1 false), !dbg !3028
  ret void, !dbg !3029
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_bits_per_cell(%struct.nand_device* %nand) #0 !dbg !3030 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3035, metadata !DIExpression()), !dbg !3036
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3037
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3038
  %bits_per_cell = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 0, !dbg !3039
  %1 = load i32, i32* %bits_per_cell, align 8, !dbg !3039
  ret i32 %1, !dbg !3040
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @toshiba_nand_benand_init(%struct.nand_chip* %chip) #0 !dbg !3041 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3044, metadata !DIExpression()), !dbg !3045
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3046
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #4, !dbg !3047
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3045
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3048
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 31, !dbg !3049
  %bytes = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 5, !dbg !3050
  store i32 0, i32* %bytes, align 4, !dbg !3051
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3052
  %ecc1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 31, !dbg !3053
  %size = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc1, i32 0, i32 4, !dbg !3054
  store i32 512, i32* %size, align 8, !dbg !3055
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3056
  %ecc2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 31, !dbg !3057
  %strength = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc2, i32 0, i32 7, !dbg !3058
  store i32 8, i32* %strength, align 4, !dbg !3059
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3060
  %ecc3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 31, !dbg !3061
  %read_page = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc3, i32 0, i32 19, !dbg !3062
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @toshiba_nand_read_page_benand, i32 (%struct.nand_chip*, i8*, i32, i32)** %read_page, align 8, !dbg !3063
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3064
  %ecc4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 31, !dbg !3065
  %read_subpage = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc4, i32 0, i32 20, !dbg !3066
  store i32 (%struct.nand_chip*, i32, i32, i8*, i32)* @toshiba_nand_read_subpage_benand, i32 (%struct.nand_chip*, i32, i32, i8*, i32)** %read_subpage, align 8, !dbg !3067
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3068
  %ecc5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 31, !dbg !3069
  %write_page = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc5, i32 0, i32 22, !dbg !3070
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_write_page_raw, i32 (%struct.nand_chip*, i8*, i32, i32)** %write_page, align 8, !dbg !3071
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3072
  %ecc6 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 31, !dbg !3073
  %read_page_raw = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc6, i32 0, i32 17, !dbg !3074
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_read_page_raw_notsupp, i32 (%struct.nand_chip*, i8*, i32, i32)** %read_page_raw, align 8, !dbg !3075
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3076
  %ecc7 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 31, !dbg !3077
  %write_page_raw = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc7, i32 0, i32 18, !dbg !3078
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_write_page_raw_notsupp, i32 (%struct.nand_chip*, i8*, i32, i32)** %write_page_raw, align 8, !dbg !3079
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3080
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 6, !dbg !3081
  %10 = load i32, i32* %options, align 8, !dbg !3082
  %conv = zext i32 %10 to i64, !dbg !3082
  %or = or i64 %conv, 4096, !dbg !3082
  %conv8 = trunc i64 %or to i32, !dbg !3082
  store i32 %conv8, i32* %options, align 8, !dbg !3082
  %11 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3083
  %call9 = call %struct.mtd_ooblayout_ops* @nand_get_large_page_ooblayout() #4, !dbg !3084
  call void @mtd_set_ooblayout(%struct.mtd_info* %11, %struct.mtd_ooblayout_ops* %call9) #4, !dbg !3085
  ret void, !dbg !3086
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc58teg5dclta00_init(%struct.nand_chip* %chip) #0 !dbg !3087 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3088, metadata !DIExpression()), !dbg !3089
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3090, metadata !DIExpression()), !dbg !3091
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3092
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #4, !dbg !3093
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3091
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3094
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 4, !dbg !3095
  %choose_interface_config = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 5, !dbg !3096
  store i32 (%struct.nand_chip*, %struct.nand_interface_config*)* @tc58teg5dclta00_choose_interface_config, i32 (%struct.nand_chip*, %struct.nand_interface_config*)** %choose_interface_config, align 8, !dbg !3097
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3098
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 6, !dbg !3099
  %3 = load i32, i32* %options, align 8, !dbg !3100
  %conv = zext i32 %3 to i64, !dbg !3100
  %or = or i64 %conv, 8192, !dbg !3100
  %conv1 = trunc i64 %or to i32, !dbg !3100
  store i32 %conv1, i32* %options, align 8, !dbg !3100
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3101
  call void @mtd_set_pairing_scheme(%struct.mtd_info* %4, %struct.mtd_pairing_scheme* @dist3_pairing_scheme) #4, !dbg !3102
  ret i32 0, !dbg !3103
}

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc58nvg0s3e_init(%struct.nand_chip* %chip) #0 !dbg !3104 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3105, metadata !DIExpression()), !dbg !3106
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3107
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 4, !dbg !3108
  %choose_interface_config = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 5, !dbg !3109
  store i32 (%struct.nand_chip*, %struct.nand_interface_config*)* @tc58nvg0s3e_choose_interface_config, i32 (%struct.nand_chip*, %struct.nand_interface_config*)** %choose_interface_config, align 8, !dbg !3110
  ret i32 0, !dbg !3111
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @th58nvg2s3hbai4_init(%struct.nand_chip* %chip) #0 !dbg !3112 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3115
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 4, !dbg !3116
  %choose_interface_config = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 5, !dbg !3117
  store i32 (%struct.nand_chip*, %struct.nand_interface_config*)* @th58nvg2s3hbai4_choose_interface_config, i32 (%struct.nand_chip*, %struct.nand_interface_config*)** %choose_interface_config, align 8, !dbg !3118
  ret i32 0, !dbg !3119
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @toshiba_nand_read_page_benand(%struct.nand_chip* %chip, i8* %buf, i32 %oob_required, i32 %page) #0 !dbg !3120 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %oob_required.addr = alloca i32, align 4
  %page.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3121, metadata !DIExpression()), !dbg !3122
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3123, metadata !DIExpression()), !dbg !3124
  store i32 %oob_required, i32* %oob_required.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %oob_required.addr, metadata !3125, metadata !DIExpression()), !dbg !3126
  store i32 %page, i32* %page.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page.addr, metadata !3127, metadata !DIExpression()), !dbg !3128
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3129, metadata !DIExpression()), !dbg !3130
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3131
  %1 = load i8*, i8** %buf.addr, align 8, !dbg !3132
  %2 = load i32, i32* %oob_required.addr, align 4, !dbg !3133
  %3 = load i32, i32* %page.addr, align 4, !dbg !3134
  %call = call i32 @nand_read_page_raw(%struct.nand_chip* %0, i8* %1, i32 %2, i32 %3) #4, !dbg !3135
  store i32 %call, i32* %ret, align 4, !dbg !3136
  %4 = load i32, i32* %ret, align 4, !dbg !3137
  %tobool = icmp ne i32 %4, 0, !dbg !3137
  br i1 %tobool, label %if.then, label %if.end, !dbg !3139

if.then:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3140
  store i32 %5, i32* %retval, align 4, !dbg !3141
  br label %return, !dbg !3141

if.end:                                           ; preds = %entry
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3142
  %call1 = call i32 @toshiba_nand_benand_eccstatus(%struct.nand_chip* %6) #4, !dbg !3143
  store i32 %call1, i32* %retval, align 4, !dbg !3144
  br label %return, !dbg !3144

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3145
  ret i32 %7, !dbg !3145
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @toshiba_nand_read_subpage_benand(%struct.nand_chip* %chip, i32 %data_offs, i32 %readlen, i8* %bufpoi, i32 %page) #0 !dbg !3146 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %data_offs.addr = alloca i32, align 4
  %readlen.addr = alloca i32, align 4
  %bufpoi.addr = alloca i8*, align 8
  %page.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3147, metadata !DIExpression()), !dbg !3148
  store i32 %data_offs, i32* %data_offs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %data_offs.addr, metadata !3149, metadata !DIExpression()), !dbg !3150
  store i32 %readlen, i32* %readlen.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %readlen.addr, metadata !3151, metadata !DIExpression()), !dbg !3152
  store i8* %bufpoi, i8** %bufpoi.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %bufpoi.addr, metadata !3153, metadata !DIExpression()), !dbg !3154
  store i32 %page, i32* %page.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page.addr, metadata !3155, metadata !DIExpression()), !dbg !3156
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3157, metadata !DIExpression()), !dbg !3158
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3159
  %1 = load i32, i32* %page.addr, align 4, !dbg !3160
  %2 = load i32, i32* %data_offs.addr, align 4, !dbg !3161
  %3 = load i8*, i8** %bufpoi.addr, align 8, !dbg !3162
  %4 = load i32, i32* %data_offs.addr, align 4, !dbg !3163
  %idx.ext = zext i32 %4 to i64, !dbg !3164
  %add.ptr = getelementptr i8, i8* %3, i64 %idx.ext, !dbg !3164
  %5 = load i32, i32* %readlen.addr, align 4, !dbg !3165
  %call = call i32 @nand_read_page_op(%struct.nand_chip* %0, i32 %1, i32 %2, i8* %add.ptr, i32 %5) #4, !dbg !3166
  store i32 %call, i32* %ret, align 4, !dbg !3167
  %6 = load i32, i32* %ret, align 4, !dbg !3168
  %tobool = icmp ne i32 %6, 0, !dbg !3168
  br i1 %tobool, label %if.then, label %if.end, !dbg !3170

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !3171
  store i32 %7, i32* %retval, align 4, !dbg !3172
  br label %return, !dbg !3172

if.end:                                           ; preds = %entry
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3173
  %call1 = call i32 @toshiba_nand_benand_eccstatus(%struct.nand_chip* %8) #4, !dbg !3174
  store i32 %call1, i32* %retval, align 4, !dbg !3175
  br label %return, !dbg !3175

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3176
  ret i32 %9, !dbg !3176
}

; Function Attrs: noredzone
declare dso_local i32 @nand_write_page_raw(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_raw_notsupp(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_write_page_raw_notsupp(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_set_ooblayout(%struct.mtd_info* %mtd, %struct.mtd_ooblayout_ops* %ooblayout) #0 !dbg !3177 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %ooblayout.addr = alloca %struct.mtd_ooblayout_ops*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3180, metadata !DIExpression()), !dbg !3181
  store %struct.mtd_ooblayout_ops* %ooblayout, %struct.mtd_ooblayout_ops** %ooblayout.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_ooblayout_ops** %ooblayout.addr, metadata !3182, metadata !DIExpression()), !dbg !3183
  %0 = load %struct.mtd_ooblayout_ops*, %struct.mtd_ooblayout_ops** %ooblayout.addr, align 8, !dbg !3184
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3185
  %ooblayout1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 15, !dbg !3186
  store %struct.mtd_ooblayout_ops* %0, %struct.mtd_ooblayout_ops** %ooblayout1, align 8, !dbg !3187
  ret void, !dbg !3188
}

; Function Attrs: noredzone
declare dso_local %struct.mtd_ooblayout_ops* @nand_get_large_page_ooblayout() #3

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_raw(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @toshiba_nand_benand_eccstatus(%struct.nand_chip* %chip) #0 !dbg !3189 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %ret = alloca i32, align 4
  %max_bitflips = alloca i32, align 4
  %status = alloca i8, align 1
  %ecc_status = alloca [8 x i8], align 1
  %i = alloca i32, align 4
  %bitflips = alloca i32, align 4
  %__UNIQUE_ID___x170 = alloca i32, align 4
  %__UNIQUE_ID___y171 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3192, metadata !DIExpression()), !dbg !3193
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3194
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #4, !dbg !3195
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3193
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3196, metadata !DIExpression()), !dbg !3197
  call void @llvm.dbg.declare(metadata i32* %max_bitflips, metadata !3198, metadata !DIExpression()), !dbg !3199
  store i32 0, i32* %max_bitflips, align 4, !dbg !3199
  call void @llvm.dbg.declare(metadata i8* %status, metadata !3200, metadata !DIExpression()), !dbg !3201
  call void @llvm.dbg.declare(metadata [8 x i8]* %ecc_status, metadata !3202, metadata !DIExpression()), !dbg !3203
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3204
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %ecc_status, i64 0, i64 0, !dbg !3205
  %call1 = call i32 @toshiba_nand_benand_read_eccstatus_op(%struct.nand_chip* %1, i8* %arraydecay) #4, !dbg !3206
  store i32 %call1, i32* %ret, align 4, !dbg !3207
  %2 = load i32, i32* %ret, align 4, !dbg !3208
  %tobool = icmp ne i32 %2, 0, !dbg !3208
  br i1 %tobool, label %if.end9, label %if.then, !dbg !3210

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3211, metadata !DIExpression()), !dbg !3213
  call void @llvm.dbg.declare(metadata i32* %bitflips, metadata !3214, metadata !DIExpression()), !dbg !3215
  store i32 0, i32* %bitflips, align 4, !dbg !3215
  store i32 0, i32* %i, align 4, !dbg !3216
  br label %for.cond, !dbg !3218

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load i32, i32* %i, align 4, !dbg !3219
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3221
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 31, !dbg !3222
  %steps = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 3, !dbg !3223
  %5 = load i32, i32* %steps, align 4, !dbg !3223
  %cmp = icmp ult i32 %3, %5, !dbg !3224
  br i1 %cmp, label %for.body, label %for.end, !dbg !3225

for.body:                                         ; preds = %for.cond
  %6 = load i32, i32* %i, align 4, !dbg !3226
  %idxprom = zext i32 %6 to i64, !dbg !3228
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %ecc_status, i64 0, i64 %idxprom, !dbg !3228
  %7 = load i8, i8* %arrayidx, align 1, !dbg !3228
  %conv = zext i8 %7 to i32, !dbg !3228
  %and = and i32 %conv, 15, !dbg !3229
  store i32 %and, i32* %bitflips, align 4, !dbg !3230
  %8 = load i32, i32* %bitflips, align 4, !dbg !3231
  %cmp2 = icmp eq i32 %8, 15, !dbg !3233
  br i1 %cmp2, label %if.then4, label %if.else, !dbg !3234

if.then4:                                         ; preds = %for.body
  %9 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3235
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 51, !dbg !3237
  %failed = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 1, !dbg !3238
  %10 = load i32, i32* %failed, align 4, !dbg !3239
  %inc = add i32 %10, 1, !dbg !3239
  store i32 %inc, i32* %failed, align 4, !dbg !3239
  br label %if.end, !dbg !3240

if.else:                                          ; preds = %for.body
  %11 = load i32, i32* %bitflips, align 4, !dbg !3241
  %12 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3243
  %ecc_stats5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 51, !dbg !3244
  %corrected = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats5, i32 0, i32 0, !dbg !3245
  %13 = load i32, i32* %corrected, align 8, !dbg !3246
  %add = add i32 %13, %11, !dbg !3246
  store i32 %add, i32* %corrected, align 8, !dbg !3246
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x170, metadata !3247, metadata !DIExpression()), !dbg !3249
  %14 = load i32, i32* %max_bitflips, align 4, !dbg !3249
  store i32 %14, i32* %__UNIQUE_ID___x170, align 4, !dbg !3249
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y171, metadata !3250, metadata !DIExpression()), !dbg !3249
  %15 = load i32, i32* %bitflips, align 4, !dbg !3249
  store i32 %15, i32* %__UNIQUE_ID___y171, align 4, !dbg !3249
  %16 = load i32, i32* %__UNIQUE_ID___x170, align 4, !dbg !3249
  %17 = load i32, i32* %__UNIQUE_ID___y171, align 4, !dbg !3249
  %cmp6 = icmp ugt i32 %16, %17, !dbg !3249
  br i1 %cmp6, label %cond.true, label %cond.false, !dbg !3249

cond.true:                                        ; preds = %if.else
  %18 = load i32, i32* %__UNIQUE_ID___x170, align 4, !dbg !3249
  br label %cond.end, !dbg !3249

cond.false:                                       ; preds = %if.else
  %19 = load i32, i32* %__UNIQUE_ID___y171, align 4, !dbg !3249
  br label %cond.end, !dbg !3249

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %18, %cond.true ], [ %19, %cond.false ], !dbg !3249
  store i32 %cond, i32* %tmp, align 4, !dbg !3249
  %20 = load i32, i32* %tmp, align 4, !dbg !3249
  store i32 %20, i32* %max_bitflips, align 4, !dbg !3251
  br label %if.end

if.end:                                           ; preds = %cond.end, %if.then4
  br label %for.inc, !dbg !3252

for.inc:                                          ; preds = %if.end
  %21 = load i32, i32* %i, align 4, !dbg !3253
  %inc8 = add i32 %21, 1, !dbg !3253
  store i32 %inc8, i32* %i, align 4, !dbg !3253
  br label %for.cond, !dbg !3254, !llvm.loop !3255

for.end:                                          ; preds = %for.cond
  %22 = load i32, i32* %max_bitflips, align 4, !dbg !3257
  store i32 %22, i32* %retval, align 4, !dbg !3258
  br label %return, !dbg !3258

if.end9:                                          ; preds = %entry
  %23 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3259
  %call10 = call i32 @nand_status_op(%struct.nand_chip* %23, i8* %status) #4, !dbg !3260
  store i32 %call10, i32* %ret, align 4, !dbg !3261
  %24 = load i32, i32* %ret, align 4, !dbg !3262
  %tobool11 = icmp ne i32 %24, 0, !dbg !3262
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3264

if.then12:                                        ; preds = %if.end9
  %25 = load i32, i32* %ret, align 4, !dbg !3265
  store i32 %25, i32* %retval, align 4, !dbg !3266
  br label %return, !dbg !3266

if.end13:                                         ; preds = %if.end9
  %26 = load i8, i8* %status, align 1, !dbg !3267
  %conv14 = zext i8 %26 to i32, !dbg !3267
  %and15 = and i32 %conv14, 1, !dbg !3269
  %tobool16 = icmp ne i32 %and15, 0, !dbg !3269
  br i1 %tobool16, label %if.then17, label %if.else21, !dbg !3270

if.then17:                                        ; preds = %if.end13
  %27 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3271
  %ecc_stats18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 51, !dbg !3273
  %failed19 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats18, i32 0, i32 1, !dbg !3274
  %28 = load i32, i32* %failed19, align 4, !dbg !3275
  %inc20 = add i32 %28, 1, !dbg !3275
  store i32 %inc20, i32* %failed19, align 4, !dbg !3275
  br label %if.end30, !dbg !3276

if.else21:                                        ; preds = %if.end13
  %29 = load i8, i8* %status, align 1, !dbg !3277
  %conv22 = zext i8 %29 to i64, !dbg !3277
  %and23 = and i64 %conv22, 8, !dbg !3279
  %tobool24 = icmp ne i64 %and23, 0, !dbg !3279
  br i1 %tobool24, label %if.then25, label %if.end29, !dbg !3280

if.then25:                                        ; preds = %if.else21
  %30 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3281
  %bitflip_threshold = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 12, !dbg !3283
  %31 = load i32, i32* %bitflip_threshold, align 4, !dbg !3283
  store i32 %31, i32* %max_bitflips, align 4, !dbg !3284
  %32 = load i32, i32* %max_bitflips, align 4, !dbg !3285
  %33 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3286
  %ecc_stats26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 51, !dbg !3287
  %corrected27 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats26, i32 0, i32 0, !dbg !3288
  %34 = load i32, i32* %corrected27, align 8, !dbg !3289
  %add28 = add i32 %34, %32, !dbg !3289
  store i32 %add28, i32* %corrected27, align 8, !dbg !3289
  br label %if.end29, !dbg !3290

if.end29:                                         ; preds = %if.then25, %if.else21
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.then17
  %35 = load i32, i32* %max_bitflips, align 4, !dbg !3291
  store i32 %35, i32* %retval, align 4, !dbg !3292
  br label %return, !dbg !3292

return:                                           ; preds = %if.end30, %if.then12, %for.end
  %36 = load i32, i32* %retval, align 4, !dbg !3293
  ret i32 %36, !dbg !3293
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @toshiba_nand_benand_read_eccstatus_op(%struct.nand_chip* %chip, i8* %buf) #0 !dbg !3294 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %ecc_status = alloca i8*, align 8
  %sdr = alloca %struct.nand_sdr_timings*, align 8
  %instrs = alloca [2 x %struct.nand_op_instr], align 16
  %tmp = alloca i32, align 4
  %op = alloca %struct.nand_operation, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3299, metadata !DIExpression()), !dbg !3300
  call void @llvm.dbg.declare(metadata i8** %ecc_status, metadata !3301, metadata !DIExpression()), !dbg !3302
  %0 = load i8*, i8** %buf.addr, align 8, !dbg !3303
  store i8* %0, i8** %ecc_status, align 8, !dbg !3302
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3304
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %1) #4, !dbg !3306
  br i1 %call, label %if.then, label %if.end, !dbg !3307

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.nand_sdr_timings** %sdr, metadata !3308, metadata !DIExpression()), !dbg !3312
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3313
  %call1 = call %struct.nand_interface_config* @nand_get_interface_config(%struct.nand_chip* %2) #4, !dbg !3314
  %call2 = call %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_interface_config* %call1) #4, !dbg !3315
  store %struct.nand_sdr_timings* %call2, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3312
  call void @llvm.dbg.declare(metadata [2 x %struct.nand_op_instr]* %instrs, metadata !3316, metadata !DIExpression()), !dbg !3318
  %arrayinit.begin = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !3319
  %3 = bitcast %struct.nand_op_instr* %arrayinit.begin to i8*, !dbg !3319
  call void @llvm.memset.p0i8.i64(i8* align 8 %3, i8 0, i64 40, i1 false), !dbg !3319
  %type = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 0, !dbg !3320
  store i32 0, i32* %type, align 8, !dbg !3320
  %ctx = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 1, !dbg !3320
  %cmd = bitcast %union.anon.42* %ctx to %struct.nand_op_cmd_instr*, !dbg !3320
  %opcode = getelementptr inbounds %struct.nand_op_cmd_instr, %struct.nand_op_cmd_instr* %cmd, i32 0, i32 0, !dbg !3320
  store i8 122, i8* %opcode, align 8, !dbg !3320
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 2, !dbg !3320
  %4 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3321
  %tADL_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %4, i32 0, i32 5, !dbg !3321
  %5 = load i32, i32* %tADL_min, align 4, !dbg !3321
  %add = add i32 %5, 1000, !dbg !3321
  %sub = sub i32 %add, 1, !dbg !3321
  %div = udiv i32 %sub, 1000, !dbg !3321
  %conv = zext i32 %div to i64, !dbg !3321
  %conv3 = trunc i64 %conv to i32, !dbg !3321
  store i32 %conv3, i32* %tmp, align 4, !dbg !3320
  %6 = load i32, i32* %tmp, align 4, !dbg !3321
  store i32 %6, i32* %delay_ns, align 8, !dbg !3320
  %arrayinit.element = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i64 1, !dbg !3319
  %type4 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.element, i32 0, i32 0, !dbg !3323
  store i32 2, i32* %type4, align 8, !dbg !3323
  %ctx5 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.element, i32 0, i32 1, !dbg !3323
  %data = bitcast %union.anon.42* %ctx5 to %struct.nand_op_data_instr*, !dbg !3323
  %len = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 0, !dbg !3323
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3323
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 31, !dbg !3323
  %steps = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 3, !dbg !3323
  %8 = load i32, i32* %steps, align 4, !dbg !3323
  store i32 %8, i32* %len, align 8, !dbg !3323
  %buf6 = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 1, !dbg !3323
  %in = bitcast %union.anon.43* %buf6 to i8**, !dbg !3323
  %9 = load i8*, i8** %ecc_status, align 8, !dbg !3323
  store i8* %9, i8** %in, align 8, !dbg !3323
  %force_8bit = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 2, !dbg !3323
  store i8 1, i8* %force_8bit, align 8, !dbg !3323
  %delay_ns7 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.element, i32 0, i32 2, !dbg !3323
  store i32 0, i32* %delay_ns7, align 8, !dbg !3323
  call void @llvm.dbg.declare(metadata %struct.nand_operation* %op, metadata !3324, metadata !DIExpression()), !dbg !3325
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 0, !dbg !3326
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3326
  %cur_cs = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 28, !dbg !3326
  %11 = load i32, i32* %cur_cs, align 4, !dbg !3326
  store i32 %11, i32* %cs, align 8, !dbg !3326
  %instrs8 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 1, !dbg !3326
  %arraydecay = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !3326
  store %struct.nand_op_instr* %arraydecay, %struct.nand_op_instr** %instrs8, align 8, !dbg !3326
  %ninstrs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 2, !dbg !3326
  store i32 2, i32* %ninstrs, align 8, !dbg !3326
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3327
  %call9 = call i32 @nand_exec_op(%struct.nand_chip* %12, %struct.nand_operation* %op) #4, !dbg !3328
  store i32 %call9, i32* %retval, align 4, !dbg !3329
  br label %return, !dbg !3329

if.end:                                           ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !3330
  br label %return, !dbg !3330

return:                                           ; preds = %if.end, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3331
  ret i32 %13, !dbg !3331
}

; Function Attrs: noredzone
declare dso_local i32 @nand_status_op(%struct.nand_chip*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !3332 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3335
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !3337
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3337
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !3335
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3338

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3339
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !3340
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !3340
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !3341
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3341
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !3339
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3342

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3343
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !3344
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !3344
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !3345
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !3345
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !3346
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3346
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !3343
  br i1 %tobool6, label %if.end, label %if.then, !dbg !3347

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !3348
  br label %return, !dbg !3348

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !3349
  br label %return, !dbg !3349

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !3350
  ret i1 %9, !dbg !3350
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_sdr_timings* @nand_get_sdr_timings(%struct.nand_interface_config* %conf) #0 !dbg !3351 {
entry:
  %retval = alloca %struct.nand_sdr_timings*, align 8
  %conf.addr = alloca %struct.nand_interface_config*, align 8
  store %struct.nand_interface_config* %conf, %struct.nand_interface_config** %conf.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %conf.addr, metadata !3354, metadata !DIExpression()), !dbg !3355
  %0 = load %struct.nand_interface_config*, %struct.nand_interface_config** %conf.addr, align 8, !dbg !3356
  %type = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %0, i32 0, i32 0, !dbg !3358
  %1 = load i32, i32* %type, align 8, !dbg !3358
  %cmp = icmp ne i32 %1, 0, !dbg !3359
  br i1 %cmp, label %if.then, label %if.end, !dbg !3360

if.then:                                          ; preds = %entry
  %call = call i8* @ERR_PTR(i64 -22) #4, !dbg !3361
  %2 = bitcast i8* %call to %struct.nand_sdr_timings*, !dbg !3361
  store %struct.nand_sdr_timings* %2, %struct.nand_sdr_timings** %retval, align 8, !dbg !3362
  br label %return, !dbg !3362

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %conf.addr, align 8, !dbg !3363
  %timings = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %3, i32 0, i32 1, !dbg !3364
  %4 = getelementptr inbounds %struct.nand_timings, %struct.nand_timings* %timings, i32 0, i32 1, !dbg !3365
  %sdr = bitcast %union.anon.41* %4 to %struct.nand_sdr_timings*, !dbg !3365
  store %struct.nand_sdr_timings* %sdr, %struct.nand_sdr_timings** %retval, align 8, !dbg !3366
  br label %return, !dbg !3366

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %retval, align 8, !dbg !3367
  ret %struct.nand_sdr_timings* %5, !dbg !3367
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_interface_config* @nand_get_interface_config(%struct.nand_chip* %chip) #0 !dbg !3368 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3371, metadata !DIExpression()), !dbg !3372
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3373
  %current_interface_config = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 7, !dbg !3374
  %1 = load %struct.nand_interface_config*, %struct.nand_interface_config** %current_interface_config, align 8, !dbg !3374
  ret %struct.nand_interface_config* %1, !dbg !3375
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_exec_op(%struct.nand_chip* %chip, %struct.nand_operation* %op) #0 !dbg !3376 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %op.addr = alloca %struct.nand_operation*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3379, metadata !DIExpression()), !dbg !3380
  store %struct.nand_operation* %op, %struct.nand_operation** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_operation** %op.addr, metadata !3381, metadata !DIExpression()), !dbg !3382
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3383
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %0) #4, !dbg !3385
  br i1 %call, label %if.end, label %if.then, !dbg !3386

if.then:                                          ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !3387
  br label %return, !dbg !3387

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3388, metadata !DIExpression()), !dbg !3391
  %1 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3391
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %1, i32 0, i32 0, !dbg !3391
  %2 = load i32, i32* %cs, align 8, !dbg !3391
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3391
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 0, !dbg !3391
  %call1 = call i32 @nanddev_ntargets(%struct.nand_device* %base) #4, !dbg !3391
  %cmp = icmp uge i32 %2, %call1, !dbg !3391
  %lnot = xor i1 %cmp, true, !dbg !3391
  %lnot2 = xor i1 %lnot, true, !dbg !3391
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3391
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3391
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !3392
  %tobool = icmp ne i32 %4, 0, !dbg !3392
  %lnot3 = xor i1 %tobool, true, !dbg !3392
  %lnot5 = xor i1 %lnot3, true, !dbg !3392
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !3392
  %conv = sext i32 %lnot.ext6 to i64, !dbg !3392
  %tobool7 = icmp ne i64 %conv, 0, !dbg !3392
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !3391

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !3392

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !3394

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !3396

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !3394

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.7, i64 0, i64 0), i32 134, i32 2305, i64 12) #5, !dbg !3398, !srcloc !3400
  br label %do.end11, !dbg !3398

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #5, !dbg !3401, !srcloc !3403
  br label %do.body12, !dbg !3394

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !3404

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !3394

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !3394

if.end15:                                         ; preds = %do.end14, %if.end
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !3391
  %tobool16 = icmp ne i32 %5, 0, !dbg !3391
  %lnot17 = xor i1 %tobool16, true, !dbg !3391
  %lnot19 = xor i1 %lnot17, true, !dbg !3391
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !3391
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !3391
  store i64 %conv21, i64* %tmp, align 8, !dbg !3392
  %6 = load i64, i64* %tmp, align 8, !dbg !3391
  %tobool22 = icmp ne i64 %6, 0, !dbg !3406
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3407

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !3408
  br label %return, !dbg !3408

if.end24:                                         ; preds = %if.end15
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3409
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 30, !dbg !3410
  %8 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !3410
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %8, i32 0, i32 1, !dbg !3411
  %9 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !3411
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %9, i32 0, i32 2, !dbg !3412
  %10 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !3412
  %11 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3413
  %12 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !3414
  %call25 = call i32 %10(%struct.nand_chip* %11, %struct.nand_operation* %12, i1 zeroext false) #4, !dbg !3409
  store i32 %call25, i32* %retval, align 4, !dbg !3415
  br label %return, !dbg !3415

return:                                           ; preds = %if.end24, %if.then23, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !3416
  ret i32 %13, !dbg !3416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !3417 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !3421, metadata !DIExpression()), !dbg !3422
  %0 = load i64, i64* %error.addr, align 8, !dbg !3423
  %1 = inttoptr i64 %0 to i8*, !dbg !3424
  ret i8* %1, !dbg !3425
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_ntargets(%struct.nand_device* %nand) #0 !dbg !3426 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3427, metadata !DIExpression()), !dbg !3428
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3429
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3430
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 8, !dbg !3431
  %1 = load i32, i32* %ntargets, align 8, !dbg !3431
  ret i32 %1, !dbg !3432
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc58teg5dclta00_choose_interface_config(%struct.nand_chip* %chip, %struct.nand_interface_config* %iface) #0 !dbg !3433 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %iface.addr = alloca %struct.nand_interface_config*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3434, metadata !DIExpression()), !dbg !3435
  store %struct.nand_interface_config* %iface, %struct.nand_interface_config** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %iface.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3438
  %1 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3439
  call void @onfi_fill_interface_config(%struct.nand_chip* %0, %struct.nand_interface_config* %1, i32 0, i32 5) #4, !dbg !3440
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3441
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3442
  %call = call i32 @nand_choose_best_sdr_timings(%struct.nand_chip* %2, %struct.nand_interface_config* %3, %struct.nand_sdr_timings* null) #4, !dbg !3443
  ret i32 %call, !dbg !3444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_set_pairing_scheme(%struct.mtd_info* %mtd, %struct.mtd_pairing_scheme* %pairing) #0 !dbg !3445 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %pairing.addr = alloca %struct.mtd_pairing_scheme*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3448, metadata !DIExpression()), !dbg !3449
  store %struct.mtd_pairing_scheme* %pairing, %struct.mtd_pairing_scheme** %pairing.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_pairing_scheme** %pairing.addr, metadata !3450, metadata !DIExpression()), !dbg !3451
  %0 = load %struct.mtd_pairing_scheme*, %struct.mtd_pairing_scheme** %pairing.addr, align 8, !dbg !3452
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3453
  %pairing1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 16, !dbg !3454
  store %struct.mtd_pairing_scheme* %0, %struct.mtd_pairing_scheme** %pairing1, align 8, !dbg !3455
  ret void, !dbg !3456
}

; Function Attrs: noredzone
declare dso_local void @onfi_fill_interface_config(%struct.nand_chip*, %struct.nand_interface_config*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_choose_best_sdr_timings(%struct.nand_chip*, %struct.nand_interface_config*, %struct.nand_sdr_timings*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @tc58nvg0s3e_choose_interface_config(%struct.nand_chip* %chip, %struct.nand_interface_config* %iface) #0 !dbg !3457 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %iface.addr = alloca %struct.nand_interface_config*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  store %struct.nand_interface_config* %iface, %struct.nand_interface_config** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %iface.addr, metadata !3460, metadata !DIExpression()), !dbg !3461
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3462
  %1 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3463
  call void @onfi_fill_interface_config(%struct.nand_chip* %0, %struct.nand_interface_config* %1, i32 0, i32 2) #4, !dbg !3464
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3465
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3466
  %call = call i32 @nand_choose_best_sdr_timings(%struct.nand_chip* %2, %struct.nand_interface_config* %3, %struct.nand_sdr_timings* null) #4, !dbg !3467
  ret i32 %call, !dbg !3468
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @th58nvg2s3hbai4_choose_interface_config(%struct.nand_chip* %chip, %struct.nand_interface_config* %iface) #0 !dbg !3469 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %iface.addr = alloca %struct.nand_interface_config*, align 8
  %sdr = alloca %struct.nand_sdr_timings*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3470, metadata !DIExpression()), !dbg !3471
  store %struct.nand_interface_config* %iface, %struct.nand_interface_config** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %iface.addr, metadata !3472, metadata !DIExpression()), !dbg !3473
  call void @llvm.dbg.declare(metadata %struct.nand_sdr_timings** %sdr, metadata !3474, metadata !DIExpression()), !dbg !3476
  %0 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3477
  %timings = getelementptr inbounds %struct.nand_interface_config, %struct.nand_interface_config* %0, i32 0, i32 1, !dbg !3478
  %1 = getelementptr inbounds %struct.nand_timings, %struct.nand_timings* %timings, i32 0, i32 1, !dbg !3479
  %sdr1 = bitcast %union.anon.41* %1 to %struct.nand_sdr_timings*, !dbg !3479
  store %struct.nand_sdr_timings* %sdr1, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3476
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3480
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3481
  call void @onfi_fill_interface_config(%struct.nand_chip* %2, %struct.nand_interface_config* %3, i32 0, i32 4) #4, !dbg !3482
  %4 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3483
  %tALS_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %4, i32 0, i32 6, !dbg !3484
  store i32 12000, i32* %tALS_min, align 8, !dbg !3485
  %5 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3486
  %tCHZ_max = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %5, i32 0, i32 11, !dbg !3487
  store i32 20000, i32* %tCHZ_max, align 4, !dbg !3488
  %6 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3489
  %tCLS_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %6, i32 0, i32 14, !dbg !3490
  store i32 12000, i32* %tCLS_min, align 8, !dbg !3491
  %7 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3492
  %tCOH_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %7, i32 0, i32 15, !dbg !3493
  store i32 0, i32* %tCOH_min, align 4, !dbg !3494
  %8 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3495
  %tDS_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %8, i32 0, i32 18, !dbg !3496
  store i32 12000, i32* %tDS_min, align 8, !dbg !3497
  %9 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3498
  %tRHOH_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %9, i32 0, i32 25, !dbg !3499
  store i32 25000, i32* %tRHOH_min, align 4, !dbg !3500
  %10 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3501
  %tRHW_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %10, i32 0, i32 26, !dbg !3502
  store i32 30000, i32* %tRHW_min, align 8, !dbg !3503
  %11 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3504
  %tRHZ_max = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %11, i32 0, i32 27, !dbg !3505
  store i32 60000, i32* %tRHZ_max, align 4, !dbg !3506
  %12 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3507
  %tWHR_min = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %12, i32 0, i32 35, !dbg !3508
  store i32 60000, i32* %tWHR_min, align 4, !dbg !3509
  %13 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3510
  %tPROG_max = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %13, i32 0, i32 2, !dbg !3511
  store i64 700000000, i64* %tPROG_max, align 8, !dbg !3512
  %14 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3513
  %tBERS_max = getelementptr inbounds %struct.nand_sdr_timings, %struct.nand_sdr_timings* %14, i32 0, i32 0, !dbg !3514
  store i64 5000000000, i64* %tBERS_max, align 8, !dbg !3515
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3516
  %16 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3517
  %17 = load %struct.nand_sdr_timings*, %struct.nand_sdr_timings** %sdr, align 8, !dbg !3518
  %call = call i32 @nand_choose_best_sdr_timings(%struct.nand_chip* %15, %struct.nand_interface_config* %16, %struct.nand_sdr_timings* %17) #4, !dbg !3519
  ret i32 %call, !dbg !3520
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { noredzone }
attributes #5 = { nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2796, !2797, !2798, !2799}
!llvm.ident = !{!2800}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "toshiba_nand_manuf_ops", scope: !2, file: !3, line: 297, type: !97, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !89, globals: !96, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/nand_toshiba.c", directory: "/home/lizy2001/genbc/linux")
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
!89 = !{!90, !94, !95}
!90 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !91, line: 21, baseType: !92)
!91 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!92 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !93, line: 27, baseType: !7)
!93 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!94 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!96 = !{!0}
!97 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !99, line: 47, size: 256, elements: !100)
!99 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!100 = !{!101, !2723, !2724, !2725}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !98, file: !99, line: 48, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!103 = !DISubroutineType(types: !104)
!104 = !{null, !105}
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !74, line: 1096, size: 16704, elements: !107)
!107 = !{!108, !2402, !2408, !2432, !2445, !2518, !2627, !2628, !2629, !2630, !2631, !2632, !2633, !2634, !2650, !2651, !2652, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2665, !2666, !2667, !2668, !2669, !2670, !2672, !2722}
!108 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !106, file: !74, line: 1097, baseType: !109, size: 11200)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !110)
!110 = !{!111, !2295, !2307, !2377, !2382, !2386}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !109, file: !51, line: 320, baseType: !112, size: 9664)
!112 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !113, line: 235, size: 9664, elements: !114)
!113 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!114 = !{!115, !119, !121, !126, !127, !128, !129, !130, !131, !132, !133, !134, !135, !136, !140, !141, !157, !178, !179, !180, !181, !191, !201, !217, !221, !226, !232, !233, !252, !253, !264, !265, !266, !267, !268, !269, !280, !284, !288, !289, !290, !294, !295, !296, !297, !301, !302, !303, !304, !305, !308, !320, !327, !328, !329, !333, !2265, !2266, !2274, !2278, !2279, !2280}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !112, file: !113, line: 236, baseType: !116, size: 8)
!116 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !117, line: 79, baseType: !118)
!117 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!118 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !112, file: !113, line: 237, baseType: !120, size: 32, offset: 32)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !117, line: 104, baseType: !90)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !112, file: !113, line: 238, baseType: !122, size: 64, offset: 64)
!122 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !117, line: 107, baseType: !123)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !91, line: 23, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !93, line: 31, baseType: !125)
!125 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !112, file: !113, line: 244, baseType: !120, size: 32, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !112, file: !113, line: 252, baseType: !120, size: 32, offset: 160)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !112, file: !113, line: 263, baseType: !120, size: 32, offset: 192)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !112, file: !113, line: 265, baseType: !120, size: 32, offset: 224)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !112, file: !113, line: 266, baseType: !120, size: 32, offset: 256)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !112, file: !113, line: 272, baseType: !7, size: 32, offset: 288)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !112, file: !113, line: 273, baseType: !7, size: 32, offset: 320)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !112, file: !113, line: 275, baseType: !7, size: 32, offset: 352)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !112, file: !113, line: 276, baseType: !7, size: 32, offset: 384)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !112, file: !113, line: 285, baseType: !7, size: 32, offset: 416)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !112, file: !113, line: 288, baseType: !137, size: 64, offset: 448)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !139)
!139 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !112, file: !113, line: 289, baseType: !94, size: 32, offset: 512)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !112, file: !113, line: 292, baseType: !142, size: 64, offset: 576)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !113, line: 101, size: 128, elements: !145)
!145 = !{!146, !156}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !144, file: !113, line: 102, baseType: !147, size: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!94, !150, !94, !151}
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !113, line: 87, size: 64, elements: !153)
!153 = !{!154, !155}
!154 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !152, file: !113, line: 88, baseType: !90, size: 32)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !152, file: !113, line: 89, baseType: !90, size: 32, offset: 32)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !144, file: !113, line: 104, baseType: !147, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !112, file: !113, line: 295, baseType: !158, size: 64, offset: 640)
!158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!159 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !160)
!160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !113, line: 176, size: 192, elements: !161)
!161 = !{!162, !163, !172}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !160, file: !113, line: 177, baseType: !94, size: 32)
!163 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !160, file: !113, line: 178, baseType: !164, size: 64, offset: 64)
!164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !165, size: 64)
!165 = !DISubroutineType(types: !166)
!166 = !{!94, !150, !94, !167}
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !113, line: 138, size: 64, elements: !169)
!169 = !{!170, !171}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !168, file: !113, line: 139, baseType: !94, size: 32)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !168, file: !113, line: 140, baseType: !94, size: 32, offset: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !160, file: !113, line: 180, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!94, !150, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !168)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !112, file: !113, line: 298, baseType: !7, size: 32, offset: 704)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !112, file: !113, line: 301, baseType: !7, size: 32, offset: 736)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !112, file: !113, line: 306, baseType: !94, size: 32, offset: 768)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !112, file: !113, line: 307, baseType: !182, size: 64, offset: 832)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !113, line: 36, size: 192, elements: !184)
!184 = !{!185, !186, !187, !188}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !183, file: !113, line: 37, baseType: !122, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !183, file: !113, line: 38, baseType: !120, size: 32, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !183, file: !113, line: 39, baseType: !120, size: 32, offset: 96)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !183, file: !113, line: 40, baseType: !189, size: 64, offset: 128)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !112, file: !113, line: 313, baseType: !192, size: 64, offset: 896)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DISubroutineType(types: !194)
!194 = !{!94, !150, !195}
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !113, line: 30, size: 192, elements: !197)
!197 = !{!198, !199, !200}
!198 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !196, file: !113, line: 31, baseType: !122, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !196, file: !113, line: 32, baseType: !122, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !196, file: !113, line: 33, baseType: !122, size: 64, offset: 128)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !112, file: !113, line: 314, baseType: !202, size: 64, offset: 960)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = !DISubroutineType(types: !204)
!204 = !{!94, !150, !205, !209, !212, !213, !214}
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !117, line: 46, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !207, line: 88, baseType: !208)
!207 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!208 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !117, line: 55, baseType: !210)
!210 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !207, line: 72, baseType: !211)
!211 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !207, line: 16, baseType: !190)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !117, line: 158, baseType: !216)
!216 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !117, line: 153, baseType: !123)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !112, file: !113, line: 316, baseType: !218, size: 64, offset: 1024)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DISubroutineType(types: !220)
!220 = !{!94, !150, !205, !209}
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !112, file: !113, line: 317, baseType: !222, size: 64, offset: 1088)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = !DISubroutineType(types: !224)
!224 = !{!94, !150, !205, !209, !212, !225}
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !112, file: !113, line: 319, baseType: !227, size: 64, offset: 1152)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!94, !150, !205, !209, !212, !230}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !112, file: !113, line: 321, baseType: !227, size: 64, offset: 1216)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !112, file: !113, line: 323, baseType: !234, size: 64, offset: 1280)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!94, !150, !205, !237}
!237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !113, line: 64, size: 512, elements: !239)
!239 = !{!240, !241, !242, !243, !244, !245, !246, !251}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !238, file: !113, line: 65, baseType: !7, size: 32)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !238, file: !113, line: 66, baseType: !209, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !238, file: !113, line: 67, baseType: !209, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !238, file: !113, line: 68, baseType: !209, size: 64, offset: 192)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !238, file: !113, line: 69, baseType: !209, size: 64, offset: 256)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !238, file: !113, line: 70, baseType: !120, size: 32, offset: 320)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !238, file: !113, line: 71, baseType: !247, size: 64, offset: 384)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !117, line: 102, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !91, line: 17, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !93, line: 21, baseType: !118)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !238, file: !113, line: 72, baseType: !247, size: 64, offset: 448)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !112, file: !113, line: 325, baseType: !234, size: 64, offset: 1344)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !112, file: !113, line: 327, baseType: !254, size: 64, offset: 1408)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!94, !150, !209, !212, !257}
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !259, line: 146, size: 96, elements: !260)
!259 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262, !263}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !258, file: !259, line: 147, baseType: !92, size: 32)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !258, file: !259, line: 148, baseType: !92, size: 32, offset: 32)
!263 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !258, file: !259, line: 149, baseType: !92, size: 32, offset: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !112, file: !113, line: 329, baseType: !222, size: 64, offset: 1472)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !112, file: !113, line: 331, baseType: !254, size: 64, offset: 1536)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !112, file: !113, line: 333, baseType: !222, size: 64, offset: 1600)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !112, file: !113, line: 335, baseType: !222, size: 64, offset: 1664)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !112, file: !113, line: 337, baseType: !218, size: 64, offset: 1728)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !112, file: !113, line: 339, baseType: !270, size: 64, offset: 1792)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!94, !150, !273, !190, !205, !212}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !275)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !276, line: 15, size: 128, elements: !277)
!276 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!277 = !{!278, !279}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !275, file: !276, line: 16, baseType: !95, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !275, file: !276, line: 17, baseType: !209, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !112, file: !113, line: 341, baseType: !281, size: 64, offset: 1856)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !282, size: 64)
!282 = !DISubroutineType(types: !283)
!283 = !{null, !150}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !112, file: !113, line: 342, baseType: !285, size: 64, offset: 1920)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!94, !150, !205, !122}
!288 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !112, file: !113, line: 343, baseType: !285, size: 64, offset: 1984)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !112, file: !113, line: 344, baseType: !285, size: 64, offset: 2048)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !112, file: !113, line: 345, baseType: !291, size: 64, offset: 2112)
!291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!292 = !DISubroutineType(types: !293)
!293 = !{!94, !150, !205}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !112, file: !113, line: 346, baseType: !291, size: 64, offset: 2176)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !112, file: !113, line: 347, baseType: !291, size: 64, offset: 2240)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !112, file: !113, line: 348, baseType: !218, size: 64, offset: 2304)
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !112, file: !113, line: 349, baseType: !298, size: 64, offset: 2368)
!298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!299 = !DISubroutineType(types: !300)
!300 = !{!94, !150}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !112, file: !113, line: 350, baseType: !281, size: 64, offset: 2432)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !112, file: !113, line: 351, baseType: !281, size: 64, offset: 2496)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !112, file: !113, line: 356, baseType: !298, size: 64, offset: 2560)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !112, file: !113, line: 357, baseType: !281, size: 64, offset: 2624)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !112, file: !113, line: 363, baseType: !306, size: 8, offset: 2688)
!306 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !117, line: 30, baseType: !307)
!307 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !112, file: !113, line: 365, baseType: !309, size: 192, offset: 2752)
!309 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !310, line: 54, size: 192, elements: !311)
!310 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!311 = !{!312, !318, !319}
!312 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !309, file: !310, line: 55, baseType: !313, size: 64)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !310, line: 51, baseType: !314)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = !DISubroutineType(types: !316)
!316 = !{!94, !317, !190, !95}
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !309, file: !310, line: 56, baseType: !317, size: 64, offset: 64)
!319 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !309, file: !310, line: 57, baseType: !94, size: 32, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !112, file: !113, line: 368, baseType: !321, size: 128, offset: 2944)
!321 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !259, line: 250, size: 128, elements: !322)
!322 = !{!323, !324, !325, !326}
!323 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !321, file: !259, line: 251, baseType: !92, size: 32)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !321, file: !259, line: 252, baseType: !92, size: 32, offset: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !321, file: !259, line: 253, baseType: !92, size: 32, offset: 64)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !321, file: !259, line: 254, baseType: !92, size: 32, offset: 96)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !112, file: !113, line: 370, baseType: !94, size: 32, offset: 3072)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !112, file: !113, line: 372, baseType: !95, size: 64, offset: 3136)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !112, file: !113, line: 374, baseType: !330, size: 64, offset: 3200)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !332, line: 76, flags: DIFlagFwdDecl)
!332 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !112, file: !113, line: 375, baseType: !334, size: 5568, offset: 3264)
!334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !335)
!335 = !{!336, !1791, !1793, !1796, !1797, !1848, !1942, !1943, !1944, !1945, !1946, !1955, !2060, !2073, !2076, !2077, !2081, !2083, !2084, !2085, !2089, !2095, !2096, !2099, !2214, !2215, !2218, !2219, !2220, !2221, !2253, !2254, !2255, !2258, !2261, !2262, !2263, !2264}
!336 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !334, file: !30, line: 462, baseType: !337, size: 512)
!337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !338, line: 64, size: 512, elements: !339)
!338 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!339 = !{!340, !341, !347, !349, !409, !1627, !1781, !1786, !1787, !1788, !1789, !1790}
!340 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !337, file: !338, line: 65, baseType: !137, size: 64)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !337, file: !338, line: 66, baseType: !342, size: 128, offset: 64)
!342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !117, line: 178, size: 128, elements: !343)
!343 = !{!344, !346}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !342, file: !117, line: 179, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !342, file: !117, line: 179, baseType: !345, size: 64, offset: 64)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !337, file: !338, line: 67, baseType: !348, size: 64, offset: 192)
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !337, file: !338, line: 68, baseType: !350, size: 64, offset: 256)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !338, line: 192, size: 704, elements: !352)
!352 = !{!353, !354, !370, !371}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !351, file: !338, line: 193, baseType: !342, size: 128)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !351, file: !338, line: 194, baseType: !355, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !356, line: 83, baseType: !357)
!356 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!357 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !356, line: 71, elements: !358)
!358 = !{!359}
!359 = !DIDerivedType(tag: DW_TAG_member, scope: !357, file: !356, line: 72, baseType: !360)
!360 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !357, file: !356, line: 72, elements: !361)
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !360, file: !356, line: 73, baseType: !363)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !356, line: 20, elements: !364)
!364 = !{!365}
!365 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !363, file: !356, line: 21, baseType: !366)
!366 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !367, line: 25, baseType: !368)
!367 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !367, line: 25, elements: !369)
!369 = !{}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !351, file: !338, line: 195, baseType: !337, size: 512, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !351, file: !338, line: 196, baseType: !372, size: 64, offset: 640)
!372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !373, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !338, line: 156, size: 192, elements: !375)
!375 = !{!376, !381, !386}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !374, file: !338, line: 157, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!94, !350, !348}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !374, file: !338, line: 158, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DISubroutineType(types: !385)
!385 = !{!137, !350, !348}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !374, file: !338, line: 159, baseType: !387, size: 64, offset: 128)
!387 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !388)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = !DISubroutineType(types: !390)
!390 = !{!94, !350, !348, !391}
!391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !392, size: 64)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !338, line: 148, size: 20736, elements: !393)
!393 = !{!394, !399, !403, !404, !408}
!394 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !392, file: !338, line: 149, baseType: !395, size: 192)
!395 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 192, elements: !397)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !139, size: 64)
!397 = !{!398}
!398 = !DISubrange(count: 3)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !392, file: !338, line: 150, baseType: !400, size: 4096, offset: 192)
!400 = !DICompositeType(tag: DW_TAG_array_type, baseType: !396, size: 4096, elements: !401)
!401 = !{!402}
!402 = !DISubrange(count: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !392, file: !338, line: 151, baseType: !94, size: 32, offset: 4288)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !392, file: !338, line: 152, baseType: !405, size: 16384, offset: 4320)
!405 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 16384, elements: !406)
!406 = !{!407}
!407 = !DISubrange(count: 2048)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !392, file: !338, line: 153, baseType: !94, size: 32, offset: 20704)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !337, file: !338, line: 69, baseType: !410, size: 64, offset: 320)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !338, line: 138, size: 448, elements: !412)
!412 = !{!413, !417, !442, !444, !1573, !1606, !1610}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !411, file: !338, line: 139, baseType: !414, size: 64)
!414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !415, size: 64)
!415 = !DISubroutineType(types: !416)
!416 = !{null, !348}
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !411, file: !338, line: 140, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !420)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !421, line: 230, size: 128, elements: !422)
!421 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!422 = !{!423, !438}
!423 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !420, file: !421, line: 231, baseType: !424, size: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DISubroutineType(types: !426)
!426 = !{!427, !348, !431, !396}
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !117, line: 60, baseType: !428)
!428 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !207, line: 73, baseType: !429)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !207, line: 15, baseType: !430)
!430 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !421, line: 30, size: 128, elements: !433)
!433 = !{!434, !435}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !432, file: !421, line: 31, baseType: !137, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !432, file: !421, line: 32, baseType: !436, size: 16, offset: 64)
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !117, line: 19, baseType: !437)
!437 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !420, file: !421, line: 232, baseType: !439, size: 64, offset: 64)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = !DISubroutineType(types: !441)
!441 = !{!427, !348, !431, !137, !209}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !411, file: !338, line: 141, baseType: !443, size: 64, offset: 128)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !431, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !411, file: !338, line: 142, baseType: !445, size: 64, offset: 192)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !421, line: 84, size: 320, elements: !449)
!449 = !{!450, !451, !455, !1570, !1571}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !448, file: !421, line: 85, baseType: !137, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !448, file: !421, line: 86, baseType: !452, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{!436, !348, !431, !94}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !448, file: !421, line: 88, baseType: !456, size: 64, offset: 128)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DISubroutineType(types: !458)
!458 = !{!436, !348, !459, !94}
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !421, line: 168, size: 448, elements: !461)
!461 = !{!462, !463, !464, !465, !472, !473}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !460, file: !421, line: 169, baseType: !432, size: 128)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !460, file: !421, line: 170, baseType: !209, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !460, file: !421, line: 171, baseType: !95, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !460, file: !421, line: 172, baseType: !466, size: 64, offset: 256)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DISubroutineType(types: !468)
!468 = !{!427, !469, !348, !459, !396, !205, !209}
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !471, line: 526, flags: DIFlagFwdDecl)
!471 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!472 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !460, file: !421, line: 174, baseType: !466, size: 64, offset: 320)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !460, file: !421, line: 176, baseType: !474, size: 64, offset: 384)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!94, !469, !348, !459, !477}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !479, line: 305, size: 1472, elements: !480)
!479 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!480 = !{!481, !482, !483, !484, !485, !493, !494, !1544, !1550, !1551, !1556, !1557, !1560, !1564, !1565, !1566, !1567, !1568}
!481 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !478, file: !479, line: 308, baseType: !190, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !478, file: !479, line: 309, baseType: !190, size: 64, offset: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !478, file: !479, line: 313, baseType: !477, size: 64, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !478, file: !479, line: 313, baseType: !477, size: 64, offset: 192)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !478, file: !479, line: 315, baseType: !486, size: 192, align: 64, offset: 256)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !487, line: 24, size: 192, align: 64, elements: !488)
!487 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !490, !492}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !486, file: !487, line: 25, baseType: !190, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !486, file: !487, line: 26, baseType: !491, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !486, file: !487, line: 27, baseType: !491, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !478, file: !479, line: 323, baseType: !190, size: 64, offset: 448)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !478, file: !479, line: 327, baseType: !495, size: 64, offset: 512)
!495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!496 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !479, line: 388, size: 7296, elements: !497)
!497 = !{!498, !1540}
!498 = !DIDerivedType(tag: DW_TAG_member, scope: !496, file: !479, line: 389, baseType: !499, size: 7296)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !496, file: !479, line: 389, size: 7296, elements: !500)
!500 = !{!501, !502, !506, !507, !511, !512, !513, !514, !515, !523, !528, !529, !530, !531, !540, !541, !542, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !577, !585, !588, !620, !621, !1510, !1511, !1514, !1518, !1519, !1522, !1523, !1524, !1527, !1539}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !499, file: !479, line: 390, baseType: !477, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !499, file: !479, line: 391, baseType: !503, size: 64, offset: 64)
!503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !487, line: 31, size: 64, elements: !504)
!504 = !{!505}
!505 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !503, file: !487, line: 32, baseType: !491, size: 64)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !499, file: !479, line: 392, baseType: !123, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !499, file: !479, line: 394, baseType: !508, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = !DISubroutineType(types: !510)
!510 = !{!190, !469, !190, !190, !190, !190}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !499, file: !479, line: 398, baseType: !190, size: 64, offset: 256)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !499, file: !479, line: 399, baseType: !190, size: 64, offset: 320)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !499, file: !479, line: 405, baseType: !190, size: 64, offset: 384)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !499, file: !479, line: 406, baseType: !190, size: 64, offset: 448)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !499, file: !479, line: 407, baseType: !516, size: 64, offset: 512)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !471, line: 286, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !471, line: 286, size: 64, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !518, file: !471, line: 286, baseType: !521, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !522, line: 18, baseType: !190)
!522 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!523 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !499, file: !479, line: 416, baseType: !524, size: 32, offset: 576)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !117, line: 168, baseType: !525)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 166, size: 32, elements: !526)
!526 = !{!527}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !525, file: !117, line: 167, baseType: !94, size: 32)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !499, file: !479, line: 428, baseType: !524, size: 32, offset: 608)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !499, file: !479, line: 437, baseType: !524, size: 32, offset: 640)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !499, file: !479, line: 447, baseType: !524, size: 32, offset: 672)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !499, file: !479, line: 450, baseType: !532, size: 64, offset: 704)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !533, line: 13, baseType: !534)
!533 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!534 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !117, line: 175, baseType: !535)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !117, line: 173, size: 64, elements: !536)
!536 = !{!537}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !535, file: !117, line: 174, baseType: !538, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !91, line: 22, baseType: !539)
!539 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !93, line: 30, baseType: !208)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !499, file: !479, line: 452, baseType: !94, size: 32, offset: 768)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !499, file: !479, line: 454, baseType: !355, offset: 800)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !499, file: !479, line: 457, baseType: !543, size: 256, offset: 832)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !544, line: 35, size: 256, elements: !545)
!544 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!545 = !{!546, !547, !548, !550}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !543, file: !544, line: 36, baseType: !532, size: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !543, file: !544, line: 42, baseType: !532, size: 64, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !543, file: !544, line: 46, baseType: !549, offset: 128)
!549 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !356, line: 29, baseType: !363)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !543, file: !544, line: 47, baseType: !342, size: 128, offset: 128)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !499, file: !479, line: 459, baseType: !342, size: 128, offset: 1088)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !499, file: !479, line: 466, baseType: !190, size: 64, offset: 1216)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !499, file: !479, line: 467, baseType: !190, size: 64, offset: 1280)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !499, file: !479, line: 469, baseType: !190, size: 64, offset: 1344)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !499, file: !479, line: 470, baseType: !190, size: 64, offset: 1408)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !499, file: !479, line: 471, baseType: !534, size: 64, offset: 1472)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !499, file: !479, line: 472, baseType: !190, size: 64, offset: 1536)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !499, file: !479, line: 473, baseType: !190, size: 64, offset: 1600)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !499, file: !479, line: 474, baseType: !190, size: 64, offset: 1664)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !499, file: !479, line: 475, baseType: !190, size: 64, offset: 1728)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !499, file: !479, line: 477, baseType: !355, offset: 1792)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !499, file: !479, line: 478, baseType: !190, size: 64, offset: 1792)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !499, file: !479, line: 478, baseType: !190, size: 64, offset: 1856)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !499, file: !479, line: 478, baseType: !190, size: 64, offset: 1920)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !499, file: !479, line: 478, baseType: !190, size: 64, offset: 1984)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !499, file: !479, line: 479, baseType: !190, size: 64, offset: 2048)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !499, file: !479, line: 479, baseType: !190, size: 64, offset: 2112)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !499, file: !479, line: 479, baseType: !190, size: 64, offset: 2176)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !499, file: !479, line: 480, baseType: !190, size: 64, offset: 2240)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !499, file: !479, line: 480, baseType: !190, size: 64, offset: 2304)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !499, file: !479, line: 480, baseType: !190, size: 64, offset: 2368)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !499, file: !479, line: 480, baseType: !190, size: 64, offset: 2432)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !499, file: !479, line: 482, baseType: !574, size: 2816, offset: 2496)
!574 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 2816, elements: !575)
!575 = !{!576}
!576 = !DISubrange(count: 44)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !499, file: !479, line: 488, baseType: !578, size: 256, offset: 5312)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !579, line: 60, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !578, file: !579, line: 61, baseType: !582, size: 256)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !532, size: 256, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 4)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !499, file: !479, line: 490, baseType: !586, size: 64, offset: 5568)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !479, line: 490, flags: DIFlagFwdDecl)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !499, file: !479, line: 493, baseType: !589, size: 896, offset: 5632)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !590, line: 53, baseType: !591)
!590 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !590, line: 13, size: 896, elements: !592)
!592 = !{!593, !594, !595, !596, !599, !600, !607, !608, !612, !613, !616}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !591, file: !590, line: 18, baseType: !123, size: 64)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !591, file: !590, line: 28, baseType: !534, size: 64, offset: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !591, file: !590, line: 31, baseType: !543, size: 256, offset: 128)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !591, file: !590, line: 32, baseType: !597, size: 64, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !598, size: 64)
!598 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !590, line: 32, flags: DIFlagFwdDecl)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !591, file: !590, line: 37, baseType: !437, size: 16, offset: 448)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !591, file: !590, line: 40, baseType: !601, size: 192, offset: 512)
!601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !602, line: 53, size: 192, elements: !603)
!602 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!603 = !{!604, !605, !606}
!604 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !601, file: !602, line: 54, baseType: !532, size: 64)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !601, file: !602, line: 55, baseType: !355, offset: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !601, file: !602, line: 59, baseType: !342, size: 128, offset: 64)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !591, file: !590, line: 41, baseType: !95, size: 64, offset: 704)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !591, file: !590, line: 42, baseType: !609, size: 64, offset: 768)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !611)
!611 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !590, line: 42, flags: DIFlagFwdDecl)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !591, file: !590, line: 44, baseType: !524, size: 32, offset: 832)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !591, file: !590, line: 50, baseType: !614, size: 16, offset: 864)
!614 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !91, line: 19, baseType: !615)
!615 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !93, line: 24, baseType: !437)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !591, file: !590, line: 51, baseType: !617, size: 16, offset: 880)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !91, line: 18, baseType: !618)
!618 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !93, line: 23, baseType: !619)
!619 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !499, file: !479, line: 495, baseType: !190, size: 64, offset: 6528)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !499, file: !479, line: 497, baseType: !622, size: 64, offset: 6592)
!622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !479, line: 381, size: 384, elements: !624)
!624 = !{!625, !626, !1509}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !623, file: !479, line: 382, baseType: !524, size: 32)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !623, file: !479, line: 383, baseType: !627, size: 128, offset: 64)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !479, line: 376, size: 128, elements: !628)
!628 = !{!629, !1507}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !627, file: !479, line: 377, baseType: !630, size: 64)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !632, line: 640, size: 48640, elements: !633)
!632 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!633 = !{!634, !640, !642, !643, !649, !650, !651, !652, !653, !654, !655, !656, !660, !678, !689, !781, !782, !783, !794, !795, !797, !798, !799, !800, !806, !807, !808, !809, !810, !811, !812, !813, !814, !815, !816, !817, !818, !819, !820, !821, !879, !882, !883, !884, !885, !886, !887, !888, !889, !890, !891, !935, !937, !938, !939, !951, !953, !954, !955, !956, !957, !963, !964, !965, !966, !967, !968, !969, !981, !986, !990, !991, !992, !995, !999, !1002, !1005, !1008, !1011, !1014, !1017, !1020, !1026, !1027, !1028, !1034, !1035, !1036, !1037, !1038, !1047, !1048, !1049, !1050, !1051, !1056, !1057, !1058, !1061, !1062, !1065, !1068, !1071, !1074, !1077, !1080, !1081, !1161, !1164, !1167, !1168, !1171, !1172, !1173, !1179, !1180, !1181, !1194, !1195, !1196, !1206, !1211, !1214, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1322, !1323, !1324, !1325, !1326, !1327, !1328, !1329, !1330}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !631, file: !632, line: 646, baseType: !635, size: 128)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !636, line: 56, size: 128, elements: !637)
!636 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!637 = !{!638, !639}
!638 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !636, line: 57, baseType: !190, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !635, file: !636, line: 58, baseType: !90, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !631, file: !632, line: 649, baseType: !641, size: 64, offset: 128)
!641 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !430)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !631, file: !632, line: 657, baseType: !95, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !631, file: !632, line: 658, baseType: !644, size: 32, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !645, line: 113, baseType: !646)
!645 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !645, line: 111, size: 32, elements: !647)
!647 = !{!648}
!648 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !646, file: !645, line: 112, baseType: !524, size: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !631, file: !632, line: 660, baseType: !7, size: 32, offset: 288)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !631, file: !632, line: 661, baseType: !7, size: 32, offset: 320)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !631, file: !632, line: 684, baseType: !94, size: 32, offset: 352)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !631, file: !632, line: 686, baseType: !94, size: 32, offset: 384)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !631, file: !632, line: 687, baseType: !94, size: 32, offset: 416)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !631, file: !632, line: 688, baseType: !94, size: 32, offset: 448)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !631, file: !632, line: 689, baseType: !7, size: 32, offset: 480)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !631, file: !632, line: 691, baseType: !657, size: 64, offset: 512)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !659)
!659 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !632, line: 691, flags: DIFlagFwdDecl)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !631, file: !632, line: 692, baseType: !661, size: 832, offset: 576)
!661 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !632, line: 451, size: 832, elements: !662)
!662 = !{!663, !668, !669, !670, !671, !672, !673, !674, !675, !676}
!663 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !661, file: !632, line: 453, baseType: !664, size: 128)
!664 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !632, line: 325, size: 128, elements: !665)
!665 = !{!666, !667}
!666 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !664, file: !632, line: 326, baseType: !190, size: 64)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !664, file: !632, line: 327, baseType: !90, size: 32, offset: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !661, file: !632, line: 454, baseType: !486, size: 192, align: 64, offset: 128)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !661, file: !632, line: 455, baseType: !342, size: 128, offset: 320)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !661, file: !632, line: 456, baseType: !7, size: 32, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !661, file: !632, line: 458, baseType: !123, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !661, file: !632, line: 459, baseType: !123, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !661, file: !632, line: 460, baseType: !123, size: 64, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !661, file: !632, line: 461, baseType: !123, size: 64, offset: 704)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !661, file: !632, line: 463, baseType: !123, size: 64, offset: 768)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !661, file: !632, line: 465, baseType: !677, offset: 832)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !632, line: 415, elements: !369)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !631, file: !632, line: 693, baseType: !679, size: 384, offset: 1408)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !632, line: 489, size: 384, elements: !680)
!680 = !{!681, !682, !683, !684, !685, !686, !687}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !679, file: !632, line: 490, baseType: !342, size: 128)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !679, file: !632, line: 491, baseType: !190, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !679, file: !632, line: 492, baseType: !190, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !679, file: !632, line: 493, baseType: !7, size: 32, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !679, file: !632, line: 494, baseType: !437, size: 16, offset: 288)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !679, file: !632, line: 495, baseType: !437, size: 16, offset: 304)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !679, file: !632, line: 497, baseType: !688, size: 64, offset: 320)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !631, file: !632, line: 697, baseType: !690, size: 1792, offset: 1792)
!690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !632, line: 507, size: 1792, elements: !691)
!691 = !{!692, !693, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !778, !779}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !690, file: !632, line: 508, baseType: !486, size: 192, align: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !690, file: !632, line: 515, baseType: !123, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !690, file: !632, line: 516, baseType: !123, size: 64, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !690, file: !632, line: 517, baseType: !123, size: 64, offset: 320)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !690, file: !632, line: 518, baseType: !123, size: 64, offset: 384)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !690, file: !632, line: 519, baseType: !123, size: 64, offset: 448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !690, file: !632, line: 526, baseType: !538, size: 64, offset: 512)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !690, file: !632, line: 527, baseType: !123, size: 64, offset: 576)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !690, file: !632, line: 528, baseType: !7, size: 32, offset: 640)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !690, file: !632, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !690, file: !632, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !690, file: !632, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !690, file: !632, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !690, file: !632, line: 563, baseType: !706, size: 512, offset: 704)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !707)
!707 = !{!708, !716, !717, !722, !774, !775, !776, !777}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !706, file: !6, line: 119, baseType: !709, size: 256)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !710, line: 9, size: 256, elements: !711)
!710 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!711 = !{!712, !713}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !709, file: !710, line: 10, baseType: !486, size: 192, align: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !709, file: !710, line: 11, baseType: !714, size: 64, offset: 192)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !715, line: 29, baseType: !538)
!715 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!716 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !706, file: !6, line: 120, baseType: !714, size: 64, offset: 256)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !706, file: !6, line: 121, baseType: !718, size: 64, offset: 320)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!5, !721}
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !706, file: !6, line: 122, baseType: !723, size: 64, offset: 384)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !724, size: 64)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !725)
!725 = !{!726, !746, !747, !750, !760, !761, !769, !773}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !724, file: !6, line: 160, baseType: !727, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !728, size: 64)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !729)
!729 = !{!730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !741, !742}
!730 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !728, file: !6, line: 215, baseType: !549)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !728, file: !6, line: 216, baseType: !7, size: 32)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !728, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !728, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !728, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !728, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !728, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !728, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !728, file: !6, line: 233, baseType: !714, size: 64, offset: 128)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !728, file: !6, line: 234, baseType: !721, size: 64, offset: 192)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !728, file: !6, line: 235, baseType: !714, size: 64, offset: 256)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !728, file: !6, line: 236, baseType: !721, size: 64, offset: 320)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !728, file: !6, line: 237, baseType: !743, size: 4096, offset: 512)
!743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 4096, elements: !744)
!744 = !{!745}
!745 = !DISubrange(count: 8)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !724, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !724, file: !6, line: 162, baseType: !748, size: 32, offset: 96)
!748 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !117, line: 27, baseType: !749)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !207, line: 96, baseType: !94)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !724, file: !6, line: 163, baseType: !751, size: 32, offset: 128)
!751 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !752, line: 276, baseType: !753)
!752 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !752, line: 276, size: 32, elements: !754)
!754 = !{!755}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !753, file: !752, line: 276, baseType: !756, size: 32)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !752, line: 70, baseType: !757)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !752, line: 65, size: 32, elements: !758)
!758 = !{!759}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !757, file: !752, line: 66, baseType: !7, size: 32)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !724, file: !6, line: 164, baseType: !721, size: 64, offset: 192)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !724, file: !6, line: 165, baseType: !762, size: 128, offset: 256)
!762 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !710, line: 14, size: 128, elements: !763)
!763 = !{!764}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !762, file: !710, line: 15, baseType: !765, size: 128)
!765 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !487, line: 125, size: 128, elements: !766)
!766 = !{!767, !768}
!767 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !765, file: !487, line: 126, baseType: !503, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !765, file: !487, line: 127, baseType: !491, size: 64, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !724, file: !6, line: 166, baseType: !770, size: 64, offset: 384)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DISubroutineType(types: !772)
!772 = !{!714}
!773 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !724, file: !6, line: 167, baseType: !714, size: 64, offset: 448)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !706, file: !6, line: 123, baseType: !249, size: 8, offset: 448)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !706, file: !6, line: 124, baseType: !249, size: 8, offset: 456)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !706, file: !6, line: 125, baseType: !249, size: 8, offset: 464)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !706, file: !6, line: 126, baseType: !249, size: 8, offset: 472)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !690, file: !632, line: 572, baseType: !706, size: 512, offset: 1216)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !690, file: !632, line: 580, baseType: !780, size: 64, offset: 1728)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !690, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !631, file: !632, line: 721, baseType: !7, size: 32, offset: 3584)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !631, file: !632, line: 722, baseType: !94, size: 32, offset: 3616)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !631, file: !632, line: 723, baseType: !784, size: 64, offset: 3648)
!784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !785, size: 64)
!785 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !786)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !787, line: 17, baseType: !788)
!787 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !787, line: 17, size: 64, elements: !789)
!789 = !{!790}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !788, file: !787, line: 17, baseType: !791, size: 64)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 64, elements: !792)
!792 = !{!793}
!793 = !DISubrange(count: 1)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !631, file: !632, line: 724, baseType: !786, size: 64, offset: 3712)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !631, file: !632, line: 749, baseType: !796, offset: 3776)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !632, line: 290, elements: !369)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !631, file: !632, line: 751, baseType: !342, size: 128, offset: 3776)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !631, file: !632, line: 757, baseType: !495, size: 64, offset: 3904)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !631, file: !632, line: 758, baseType: !495, size: 64, offset: 3968)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !631, file: !632, line: 761, baseType: !801, size: 320, offset: 4032)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !579, line: 34, size: 320, elements: !802)
!802 = !{!803, !804}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !801, file: !579, line: 35, baseType: !123, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !801, file: !579, line: 36, baseType: !805, size: 256, offset: 64)
!805 = !DICompositeType(tag: DW_TAG_array_type, baseType: !477, size: 256, elements: !583)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !631, file: !632, line: 766, baseType: !94, size: 32, offset: 4352)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !631, file: !632, line: 767, baseType: !94, size: 32, offset: 4384)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !631, file: !632, line: 768, baseType: !94, size: 32, offset: 4416)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !631, file: !632, line: 770, baseType: !94, size: 32, offset: 4448)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !631, file: !632, line: 772, baseType: !190, size: 64, offset: 4480)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !631, file: !632, line: 775, baseType: !7, size: 32, offset: 4544)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !631, file: !632, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !631, file: !632, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !631, file: !632, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !631, file: !632, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !631, file: !632, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !631, file: !632, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !631, file: !632, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !631, file: !632, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !631, file: !632, line: 831, baseType: !190, size: 64, offset: 4672)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !631, file: !632, line: 833, baseType: !822, size: 384, offset: 4736)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !823)
!823 = !{!824, !829}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !822, file: !12, line: 26, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !826, size: 64)
!826 = !DISubroutineType(types: !827)
!827 = !{!430, !828}
!828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, scope: !822, file: !12, line: 27, baseType: !830, size: 320, offset: 64)
!830 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !822, file: !12, line: 27, size: 320, elements: !831)
!831 = !{!832, !842, !869}
!832 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !830, file: !12, line: 36, baseType: !833, size: 320)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !830, file: !12, line: 29, size: 320, elements: !834)
!834 = !{!835, !837, !838, !839, !840, !841}
!835 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !833, file: !12, line: 30, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !833, file: !12, line: 31, baseType: !90, size: 32, offset: 64)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !833, file: !12, line: 32, baseType: !90, size: 32, offset: 96)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !833, file: !12, line: 33, baseType: !90, size: 32, offset: 128)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !833, file: !12, line: 34, baseType: !123, size: 64, offset: 192)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !833, file: !12, line: 35, baseType: !836, size: 64, offset: 256)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !830, file: !12, line: 46, baseType: !843, size: 192)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !830, file: !12, line: 38, size: 192, elements: !844)
!844 = !{!845, !846, !847, !868}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !843, file: !12, line: 39, baseType: !748, size: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !843, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!847 = !DIDerivedType(tag: DW_TAG_member, scope: !843, file: !12, line: 41, baseType: !848, size: 64, offset: 64)
!848 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !843, file: !12, line: 41, size: 64, elements: !849)
!849 = !{!850, !858}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !848, file: !12, line: 42, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !853, line: 7, size: 128, elements: !854)
!853 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!854 = !{!855, !857}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !852, file: !853, line: 8, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !207, line: 93, baseType: !208)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !852, file: !853, line: 9, baseType: !208, size: 64, offset: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !848, file: !12, line: 43, baseType: !859, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !861, line: 7, size: 64, elements: !862)
!861 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!862 = !{!863, !867}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !860, file: !861, line: 8, baseType: !864, size: 32)
!864 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !861, line: 5, baseType: !865)
!865 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !91, line: 20, baseType: !866)
!866 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !93, line: 26, baseType: !94)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !860, file: !861, line: 9, baseType: !865, size: 32, offset: 32)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !843, file: !12, line: 45, baseType: !123, size: 64, offset: 128)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !830, file: !12, line: 54, baseType: !870, size: 256)
!870 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !830, file: !12, line: 48, size: 256, elements: !871)
!871 = !{!872, !875, !876, !877, !878}
!872 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !870, file: !12, line: 49, baseType: !873, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !874, size: 64)
!874 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !870, file: !12, line: 50, baseType: !94, size: 32, offset: 64)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !870, file: !12, line: 51, baseType: !94, size: 32, offset: 96)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !870, file: !12, line: 52, baseType: !190, size: 64, offset: 128)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !870, file: !12, line: 53, baseType: !190, size: 64, offset: 192)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !631, file: !632, line: 835, baseType: !880, size: 32, offset: 5120)
!880 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !117, line: 22, baseType: !881)
!881 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !207, line: 28, baseType: !94)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !631, file: !632, line: 836, baseType: !880, size: 32, offset: 5152)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !631, file: !632, line: 840, baseType: !190, size: 64, offset: 5184)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !631, file: !632, line: 849, baseType: !630, size: 64, offset: 5248)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !631, file: !632, line: 852, baseType: !630, size: 64, offset: 5312)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !631, file: !632, line: 857, baseType: !342, size: 128, offset: 5376)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !631, file: !632, line: 858, baseType: !342, size: 128, offset: 5504)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !631, file: !632, line: 859, baseType: !630, size: 64, offset: 5632)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !631, file: !632, line: 867, baseType: !342, size: 128, offset: 5696)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !631, file: !632, line: 868, baseType: !342, size: 128, offset: 5824)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !631, file: !632, line: 871, baseType: !892, size: 64, offset: 5952)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !894, line: 59, size: 768, elements: !895)
!894 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897, !898, !899, !910, !911, !918, !927}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !893, file: !894, line: 61, baseType: !644, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !893, file: !894, line: 62, baseType: !7, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !893, file: !894, line: 63, baseType: !355, offset: 64)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !893, file: !894, line: 65, baseType: !900, size: 256, offset: 64)
!900 = !DICompositeType(tag: DW_TAG_array_type, baseType: !901, size: 256, elements: !583)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !117, line: 182, size: 64, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !901, file: !117, line: 183, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !117, line: 186, size: 128, elements: !906)
!906 = !{!907, !908}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !905, file: !117, line: 187, baseType: !904, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !905, file: !117, line: 187, baseType: !909, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !893, file: !894, line: 66, baseType: !901, size: 64, offset: 320)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !893, file: !894, line: 68, baseType: !912, size: 128, offset: 384)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !913, line: 40, baseType: !914)
!913 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !913, line: 36, size: 128, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !914, file: !913, line: 37, baseType: !355)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !914, file: !913, line: 38, baseType: !342, size: 128)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !893, file: !894, line: 69, baseType: !919, size: 128, align: 64, offset: 512)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !117, line: 216, size: 128, align: 64, elements: !920)
!920 = !{!921, !923}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !919, file: !117, line: 217, baseType: !922, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !919, file: !117, line: 218, baseType: !924, size: 64, offset: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DISubroutineType(types: !926)
!926 = !{null, !922}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !893, file: !894, line: 70, baseType: !928, size: 128, offset: 640)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !929, size: 128, elements: !792)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !894, line: 54, size: 128, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !929, file: !894, line: 55, baseType: !94, size: 32)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !929, file: !894, line: 56, baseType: !933, size: 64, offset: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !894, line: 56, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !631, file: !632, line: 872, baseType: !936, size: 512, offset: 6016)
!936 = !DICompositeType(tag: DW_TAG_array_type, baseType: !905, size: 512, elements: !583)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !631, file: !632, line: 873, baseType: !342, size: 128, offset: 6528)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !631, file: !632, line: 874, baseType: !342, size: 128, offset: 6656)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !631, file: !632, line: 876, baseType: !940, size: 64, offset: 6784)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !942, line: 26, size: 192, elements: !943)
!942 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!943 = !{!944, !945}
!944 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !941, file: !942, line: 27, baseType: !7, size: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !941, file: !942, line: 28, baseType: !946, size: 128, offset: 64)
!946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !947, line: 43, size: 128, elements: !948)
!947 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !946, file: !947, line: 44, baseType: !549)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !946, file: !947, line: 45, baseType: !342, size: 128)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !631, file: !632, line: 879, baseType: !952, size: 64, offset: 6848)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !631, file: !632, line: 882, baseType: !952, size: 64, offset: 6912)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !631, file: !632, line: 884, baseType: !123, size: 64, offset: 6976)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !631, file: !632, line: 885, baseType: !123, size: 64, offset: 7040)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !631, file: !632, line: 890, baseType: !123, size: 64, offset: 7104)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !631, file: !632, line: 891, baseType: !958, size: 128, offset: 7168)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !632, line: 242, size: 128, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !958, file: !632, line: 244, baseType: !123, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !958, file: !632, line: 245, baseType: !123, size: 64, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !958, file: !632, line: 246, baseType: !549, offset: 128)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !631, file: !632, line: 900, baseType: !190, size: 64, offset: 7296)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !631, file: !632, line: 901, baseType: !190, size: 64, offset: 7360)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !631, file: !632, line: 904, baseType: !123, size: 64, offset: 7424)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !631, file: !632, line: 907, baseType: !123, size: 64, offset: 7488)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !631, file: !632, line: 910, baseType: !190, size: 64, offset: 7552)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !631, file: !632, line: 911, baseType: !190, size: 64, offset: 7616)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !631, file: !632, line: 914, baseType: !970, size: 640, offset: 7680)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !971, line: 123, size: 640, elements: !972)
!971 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!972 = !{!973, !979, !980}
!973 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !970, file: !971, line: 124, baseType: !974, size: 576)
!974 = !DICompositeType(tag: DW_TAG_array_type, baseType: !975, size: 576, elements: !397)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !971, line: 108, size: 192, elements: !976)
!976 = !{!977, !978}
!977 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !975, file: !971, line: 109, baseType: !123, size: 64)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !975, file: !971, line: 110, baseType: !762, size: 128, offset: 64)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !970, file: !971, line: 125, baseType: !7, size: 32, offset: 576)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !970, file: !971, line: 126, baseType: !7, size: 32, offset: 608)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !631, file: !632, line: 917, baseType: !982, size: 192, offset: 8320)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !971, line: 134, size: 192, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !982, file: !971, line: 135, baseType: !919, size: 128, align: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !982, file: !971, line: 136, baseType: !7, size: 32, offset: 128)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !631, file: !632, line: 923, baseType: !987, size: 64, offset: 8512)
!987 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !989)
!989 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !632, line: 923, flags: DIFlagFwdDecl)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !631, file: !632, line: 926, baseType: !987, size: 64, offset: 8576)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !631, file: !632, line: 929, baseType: !987, size: 64, offset: 8640)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !631, file: !632, line: 933, baseType: !993, size: 64, offset: 8704)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !632, line: 933, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !631, file: !632, line: 943, baseType: !996, size: 128, offset: 8768)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 128, elements: !997)
!997 = !{!998}
!998 = !DISubrange(count: 16)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !631, file: !632, line: 945, baseType: !1000, size: 64, offset: 8896)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !632, line: 49, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !631, file: !632, line: 956, baseType: !1003, size: 64, offset: 8960)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1004, size: 64)
!1004 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !632, line: 45, flags: DIFlagFwdDecl)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !631, file: !632, line: 959, baseType: !1006, size: 64, offset: 9024)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !632, line: 959, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !631, file: !632, line: 962, baseType: !1009, size: 64, offset: 9088)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !632, line: 66, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !631, file: !632, line: 966, baseType: !1012, size: 64, offset: 9152)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !632, line: 50, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !631, file: !632, line: 969, baseType: !1015, size: 64, offset: 9216)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !971, line: 223, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !631, file: !632, line: 970, baseType: !1018, size: 64, offset: 9280)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !632, line: 62, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !631, file: !632, line: 971, baseType: !1021, size: 64, offset: 9344)
!1021 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1022, line: 25, baseType: !1023)
!1022 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1023 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1022, line: 23, size: 64, elements: !1024)
!1024 = !{!1025}
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1023, file: !1022, line: 24, baseType: !791, size: 64)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !631, file: !632, line: 972, baseType: !1021, size: 64, offset: 9408)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !631, file: !632, line: 974, baseType: !1021, size: 64, offset: 9472)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !631, file: !632, line: 975, baseType: !1029, size: 192, offset: 9536)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1030, line: 30, size: 192, elements: !1031)
!1030 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1029, file: !1030, line: 31, baseType: !342, size: 128)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1029, file: !1030, line: 32, baseType: !1021, size: 64, offset: 128)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !631, file: !632, line: 976, baseType: !190, size: 64, offset: 9728)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !631, file: !632, line: 977, baseType: !209, size: 64, offset: 9792)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !631, file: !632, line: 978, baseType: !7, size: 32, offset: 9856)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !631, file: !632, line: 980, baseType: !922, size: 64, offset: 9920)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !631, file: !632, line: 989, baseType: !1039, size: 128, offset: 9984)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1040, line: 35, size: 128, elements: !1041)
!1040 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1043, !1044}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1039, file: !1040, line: 36, baseType: !94, size: 32)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1039, file: !1040, line: 37, baseType: !524, size: 32, offset: 32)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1039, file: !1040, line: 38, baseType: !1045, size: 64, offset: 64)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1040, line: 23, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !631, file: !632, line: 992, baseType: !123, size: 64, offset: 10112)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !631, file: !632, line: 993, baseType: !123, size: 64, offset: 10176)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !631, file: !632, line: 996, baseType: !355, offset: 10240)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !631, file: !632, line: 999, baseType: !549, offset: 10240)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !631, file: !632, line: 1001, baseType: !1052, size: 64, offset: 10240)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !632, line: 636, size: 64, elements: !1053)
!1053 = !{!1054}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1052, file: !632, line: 637, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1052, size: 64)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !631, file: !632, line: 1005, baseType: !765, size: 128, offset: 10304)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !631, file: !632, line: 1007, baseType: !630, size: 64, offset: 10432)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !631, file: !632, line: 1009, baseType: !1059, size: 64, offset: 10496)
!1059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1060, size: 64)
!1060 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !632, line: 1009, flags: DIFlagFwdDecl)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !631, file: !632, line: 1043, baseType: !95, size: 64, offset: 10560)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !631, file: !632, line: 1046, baseType: !1063, size: 64, offset: 10624)
!1063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1064, size: 64)
!1064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !632, line: 41, flags: DIFlagFwdDecl)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !631, file: !632, line: 1050, baseType: !1066, size: 64, offset: 10688)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !632, line: 42, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !631, file: !632, line: 1054, baseType: !1069, size: 64, offset: 10752)
!1069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1070, size: 64)
!1070 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !632, line: 55, flags: DIFlagFwdDecl)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !631, file: !632, line: 1056, baseType: !1072, size: 64, offset: 10816)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !632, line: 40, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !631, file: !632, line: 1058, baseType: !1075, size: 64, offset: 10880)
!1075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1076, size: 64)
!1076 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !632, line: 47, flags: DIFlagFwdDecl)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !631, file: !632, line: 1061, baseType: !1078, size: 64, offset: 10944)
!1078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1079, size: 64)
!1079 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !632, line: 43, flags: DIFlagFwdDecl)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !631, file: !632, line: 1064, baseType: !190, size: 64, offset: 11008)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !631, file: !632, line: 1065, baseType: !1082, size: 64, offset: 11072)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1030, line: 14, baseType: !1084)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1030, line: 12, size: 384, elements: !1085)
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !1030, line: 13, baseType: !1087, size: 384)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !1030, line: 13, size: 384, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1087, file: !1030, line: 13, baseType: !94, size: 32)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1087, file: !1030, line: 13, baseType: !94, size: 32, offset: 32)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1087, file: !1030, line: 13, baseType: !94, size: 32, offset: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1087, file: !1030, line: 13, baseType: !1093, size: 256, offset: 128)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1094, line: 32, size: 256, elements: !1095)
!1094 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1095 = !{!1096, !1102, !1115, !1121, !1130, !1150, !1155}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1093, file: !1094, line: 37, baseType: !1097, size: 64)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 34, size: 64, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1097, file: !1094, line: 35, baseType: !881, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1097, file: !1094, line: 36, baseType: !1101, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !207, line: 49, baseType: !7)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1093, file: !1094, line: 45, baseType: !1103, size: 192)
!1103 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 40, size: 192, elements: !1104)
!1104 = !{!1105, !1107, !1108, !1114}
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1103, file: !1094, line: 41, baseType: !1106, size: 32)
!1106 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !207, line: 95, baseType: !94)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1103, file: !1094, line: 42, baseType: !94, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1103, file: !1094, line: 43, baseType: !1109, size: 64, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1094, line: 11, baseType: !1110)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1094, line: 8, size: 64, elements: !1111)
!1111 = !{!1112, !1113}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1110, file: !1094, line: 9, baseType: !94, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1110, file: !1094, line: 10, baseType: !95, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1103, file: !1094, line: 44, baseType: !94, size: 32, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1093, file: !1094, line: 52, baseType: !1116, size: 128)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 48, size: 128, elements: !1117)
!1117 = !{!1118, !1119, !1120}
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1116, file: !1094, line: 49, baseType: !881, size: 32)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1116, file: !1094, line: 50, baseType: !1101, size: 32, offset: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1116, file: !1094, line: 51, baseType: !1109, size: 64, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1093, file: !1094, line: 61, baseType: !1122, size: 256)
!1122 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 55, size: 256, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127, !1129}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1122, file: !1094, line: 56, baseType: !881, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1122, file: !1094, line: 57, baseType: !1101, size: 32, offset: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1122, file: !1094, line: 58, baseType: !94, size: 32, offset: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1122, file: !1094, line: 59, baseType: !1128, size: 64, offset: 128)
!1128 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !207, line: 94, baseType: !429)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1122, file: !1094, line: 60, baseType: !1128, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1093, file: !1094, line: 95, baseType: !1131, size: 256)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 64, size: 256, elements: !1132)
!1132 = !{!1133, !1134}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1131, file: !1094, line: 65, baseType: !95, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, scope: !1131, file: !1094, line: 77, baseType: !1135, size: 192, offset: 64)
!1135 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1131, file: !1094, line: 77, size: 192, elements: !1136)
!1136 = !{!1137, !1138, !1145}
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1135, file: !1094, line: 82, baseType: !619, size: 16)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1135, file: !1094, line: 88, baseType: !1139, size: 192)
!1139 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1094, line: 84, size: 192, elements: !1140)
!1140 = !{!1141, !1143, !1144}
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1139, file: !1094, line: 85, baseType: !1142, size: 64)
!1142 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 64, elements: !744)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1139, file: !1094, line: 86, baseType: !95, size: 64, offset: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1139, file: !1094, line: 87, baseType: !95, size: 64, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1135, file: !1094, line: 93, baseType: !1146, size: 96)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1135, file: !1094, line: 90, size: 96, elements: !1147)
!1147 = !{!1148, !1149}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1146, file: !1094, line: 91, baseType: !1142, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1146, file: !1094, line: 92, baseType: !92, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1093, file: !1094, line: 101, baseType: !1151, size: 128)
!1151 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 98, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1151, file: !1094, line: 99, baseType: !430, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1151, file: !1094, line: 100, baseType: !94, size: 32, offset: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1093, file: !1094, line: 108, baseType: !1156, size: 128)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !1094, line: 104, size: 128, elements: !1157)
!1157 = !{!1158, !1159, !1160}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1156, file: !1094, line: 105, baseType: !95, size: 64)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1156, file: !1094, line: 106, baseType: !94, size: 32, offset: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1156, file: !1094, line: 107, baseType: !7, size: 32, offset: 96)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !631, file: !632, line: 1067, baseType: !1162, offset: 11136)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1163, line: 12, elements: !369)
!1163 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !631, file: !632, line: 1099, baseType: !1165, size: 64, offset: 11136)
!1165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1166, size: 64)
!1166 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !632, line: 56, flags: DIFlagFwdDecl)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !631, file: !632, line: 1103, baseType: !342, size: 128, offset: 11200)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !631, file: !632, line: 1104, baseType: !1169, size: 64, offset: 11328)
!1169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1170, size: 64)
!1170 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !632, line: 46, flags: DIFlagFwdDecl)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !631, file: !632, line: 1105, baseType: !601, size: 192, offset: 11392)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !631, file: !632, line: 1106, baseType: !7, size: 32, offset: 11584)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !631, file: !632, line: 1109, baseType: !1174, size: 128, offset: 11648)
!1174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1175, size: 128, elements: !1177)
!1175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1176, size: 64)
!1176 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !632, line: 51, flags: DIFlagFwdDecl)
!1177 = !{!1178}
!1178 = !DISubrange(count: 2)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !631, file: !632, line: 1110, baseType: !601, size: 192, offset: 11776)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !631, file: !632, line: 1111, baseType: !342, size: 128, offset: 11968)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !631, file: !632, line: 1173, baseType: !1182, size: 64, offset: 12096)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1184, line: 62, size: 256, align: 256, elements: !1185)
!1184 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1185 = !{!1186, !1187, !1188, !1193}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1183, file: !1184, line: 75, baseType: !92, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1183, file: !1184, line: 90, baseType: !92, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1183, file: !1184, line: 124, baseType: !1189, size: 64, offset: 64)
!1189 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1183, file: !1184, line: 109, size: 64, elements: !1190)
!1190 = !{!1191, !1192}
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1189, file: !1184, line: 110, baseType: !124, size: 64)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1189, file: !1184, line: 112, baseType: !124, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1183, file: !1184, line: 144, baseType: !92, size: 32, offset: 128)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !631, file: !632, line: 1174, baseType: !90, size: 32, offset: 12160)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !631, file: !632, line: 1179, baseType: !190, size: 64, offset: 12224)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !631, file: !632, line: 1182, baseType: !1197, size: 128, offset: 12288)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !579, line: 76, size: 128, elements: !1198)
!1198 = !{!1199, !1204, !1205}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1197, file: !579, line: 85, baseType: !1200, size: 64)
!1200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1201, line: 7, size: 64, elements: !1202)
!1201 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1202 = !{!1203}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1200, file: !1201, line: 12, baseType: !788, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1197, file: !579, line: 88, baseType: !306, size: 8, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1197, file: !579, line: 95, baseType: !306, size: 8, offset: 72)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !631, file: !632, line: 1184, baseType: !1207, size: 128, offset: 12416)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !631, file: !632, line: 1184, size: 128, elements: !1208)
!1208 = !{!1209, !1210}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1207, file: !632, line: 1185, baseType: !644, size: 32)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1207, file: !632, line: 1186, baseType: !919, size: 128, align: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !631, file: !632, line: 1190, baseType: !1212, size: 64, offset: 12544)
!1212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1213, size: 64)
!1213 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !276, line: 13, flags: DIFlagFwdDecl)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !631, file: !632, line: 1192, baseType: !1215, size: 128, offset: 12608)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !579, line: 64, size: 128, elements: !1216)
!1216 = !{!1217, !1310, !1311}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1215, file: !579, line: 65, baseType: !1218, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !479, line: 68, size: 512, align: 128, elements: !1220)
!1220 = !{!1221, !1222, !1302, !1309}
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1219, file: !479, line: 69, baseType: !190, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !479, line: 77, baseType: !1223, size: 320, offset: 64)
!1223 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !479, line: 77, size: 320, elements: !1224)
!1224 = !{!1225, !1234, !1239, !1267, !1275, !1281, !1294, !1301}
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 78, baseType: !1226, size: 320)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 78, size: 320, elements: !1227)
!1227 = !{!1228, !1229, !1232, !1233}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1226, file: !479, line: 84, baseType: !342, size: 128)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1226, file: !479, line: 86, baseType: !1230, size: 64, offset: 128)
!1230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1231, size: 64)
!1231 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !479, line: 26, flags: DIFlagFwdDecl)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1226, file: !479, line: 87, baseType: !190, size: 64, offset: 192)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1226, file: !479, line: 94, baseType: !190, size: 64, offset: 256)
!1234 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 96, baseType: !1235, size: 64)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 96, size: 64, elements: !1236)
!1236 = !{!1237}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1235, file: !479, line: 101, baseType: !1238, size: 64)
!1238 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !117, line: 143, baseType: !123)
!1239 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 103, baseType: !1240, size: 320)
!1240 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 103, size: 320, elements: !1241)
!1241 = !{!1242, !1252, !1255, !1256}
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !479, line: 104, baseType: !1243, size: 128)
!1243 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !479, line: 104, size: 128, elements: !1244)
!1244 = !{!1245, !1246}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1243, file: !479, line: 105, baseType: !342, size: 128)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1243, file: !479, line: 106, baseType: !1247, size: 128)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1243, file: !479, line: 106, size: 128, elements: !1248)
!1248 = !{!1249, !1250, !1251}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1247, file: !479, line: 107, baseType: !1218, size: 64)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1247, file: !479, line: 109, baseType: !94, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1247, file: !479, line: 110, baseType: !94, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1240, file: !479, line: 117, baseType: !1253, size: 64, offset: 128)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !479, line: 117, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1240, file: !479, line: 119, baseType: !95, size: 64, offset: 192)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1240, file: !479, line: 120, baseType: !1257, size: 64, offset: 256)
!1257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1240, file: !479, line: 120, size: 64, elements: !1258)
!1258 = !{!1259, !1260, !1261}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1257, file: !479, line: 121, baseType: !95, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1257, file: !479, line: 122, baseType: !190, size: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !479, line: 123, baseType: !1262, size: 32)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1257, file: !479, line: 123, size: 32, elements: !1263)
!1263 = !{!1264, !1265, !1266}
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1262, file: !479, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1262, file: !479, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1262, file: !479, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1267 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 130, baseType: !1268, size: 192)
!1268 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 130, size: 192, elements: !1269)
!1269 = !{!1270, !1271, !1272, !1273, !1274}
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1268, file: !479, line: 131, baseType: !190, size: 64)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1268, file: !479, line: 134, baseType: !118, size: 8, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1268, file: !479, line: 135, baseType: !118, size: 8, offset: 72)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1268, file: !479, line: 136, baseType: !524, size: 32, offset: 96)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1268, file: !479, line: 137, baseType: !7, size: 32, offset: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 139, baseType: !1276, size: 256)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 139, size: 256, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1276, file: !479, line: 140, baseType: !190, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1276, file: !479, line: 141, baseType: !524, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1276, file: !479, line: 143, baseType: !342, size: 128, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 145, baseType: !1282, size: 256)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 145, size: 256, elements: !1283)
!1283 = !{!1284, !1285, !1287, !1288, !1293}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1282, file: !479, line: 146, baseType: !190, size: 64)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1282, file: !479, line: 147, baseType: !1286, size: 64, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !471, line: 509, baseType: !1218)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1282, file: !479, line: 148, baseType: !190, size: 64, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !479, line: 149, baseType: !1289, size: 64, offset: 192)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !479, line: 149, size: 64, elements: !1290)
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1289, file: !479, line: 150, baseType: !495, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1289, file: !479, line: 151, baseType: !524, size: 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1282, file: !479, line: 156, baseType: !355, offset: 256)
!1294 = !DIDerivedType(tag: DW_TAG_member, scope: !1223, file: !479, line: 159, baseType: !1295, size: 128)
!1295 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1223, file: !479, line: 159, size: 128, elements: !1296)
!1296 = !{!1297, !1300}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1295, file: !479, line: 161, baseType: !1298, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1299, size: 64)
!1299 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !479, line: 161, flags: DIFlagFwdDecl)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1295, file: !479, line: 162, baseType: !95, size: 64, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1223, file: !479, line: 176, baseType: !919, size: 128, align: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, scope: !1219, file: !479, line: 179, baseType: !1303, size: 32, offset: 384)
!1303 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1219, file: !479, line: 179, size: 32, elements: !1304)
!1304 = !{!1305, !1306, !1307, !1308}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1303, file: !479, line: 184, baseType: !524, size: 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1303, file: !479, line: 192, baseType: !7, size: 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1303, file: !479, line: 194, baseType: !7, size: 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1303, file: !479, line: 195, baseType: !94, size: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1219, file: !479, line: 199, baseType: !524, size: 32, offset: 416)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1215, file: !579, line: 67, baseType: !92, size: 32, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1215, file: !579, line: 68, baseType: !92, size: 32, offset: 96)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !631, file: !632, line: 1206, baseType: !94, size: 32, offset: 12736)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !631, file: !632, line: 1207, baseType: !94, size: 32, offset: 12768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !631, file: !632, line: 1209, baseType: !190, size: 64, offset: 12800)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !631, file: !632, line: 1219, baseType: !123, size: 64, offset: 12864)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !631, file: !632, line: 1220, baseType: !123, size: 64, offset: 12928)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !631, file: !632, line: 1317, baseType: !94, size: 32, offset: 12992)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !631, file: !632, line: 1319, baseType: !630, size: 64, offset: 13056)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !631, file: !632, line: 1322, baseType: !1320, size: 64, offset: 13120)
!1320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1321, size: 64)
!1321 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !632, line: 1322, flags: DIFlagFwdDecl)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !631, file: !632, line: 1326, baseType: !644, size: 32, offset: 13184)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !631, file: !632, line: 1342, baseType: !95, size: 64, offset: 13248)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !631, file: !632, line: 1343, baseType: !124, size: 64, offset: 13312)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !631, file: !632, line: 1344, baseType: !123, size: 64, offset: 13376)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !631, file: !632, line: 1345, baseType: !124, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !631, file: !632, line: 1346, baseType: !124, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !631, file: !632, line: 1347, baseType: !124, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !631, file: !632, line: 1348, baseType: !919, size: 128, align: 64, offset: 13504)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !631, file: !632, line: 1358, baseType: !1331, size: 34816, offset: 13824)
!1331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1332, line: 485, size: 34816, elements: !1333)
!1332 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1333 = !{!1334, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1363, !1364, !1365, !1366, !1367, !1368, !1371, !1372, !1373}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1331, file: !1332, line: 487, baseType: !1335, size: 192)
!1335 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1336, size: 192, elements: !397)
!1336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1337, line: 16, size: 64, elements: !1338)
!1337 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1338 = !{!1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1351}
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1336, file: !1337, line: 17, baseType: !614, size: 16)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1336, file: !1337, line: 18, baseType: !614, size: 16, offset: 16)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1336, file: !1337, line: 19, baseType: !614, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1336, file: !1337, line: 19, baseType: !614, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1336, file: !1337, line: 19, baseType: !614, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1336, file: !1337, line: 19, baseType: !614, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1336, file: !1337, line: 19, baseType: !614, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1336, file: !1337, line: 20, baseType: !614, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1336, file: !1337, line: 20, baseType: !614, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1336, file: !1337, line: 20, baseType: !614, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1336, file: !1337, line: 20, baseType: !614, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1336, file: !1337, line: 20, baseType: !614, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1336, file: !1337, line: 20, baseType: !614, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1331, file: !1332, line: 491, baseType: !190, size: 64, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1331, file: !1332, line: 495, baseType: !437, size: 16, offset: 256)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1331, file: !1332, line: 496, baseType: !437, size: 16, offset: 272)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1331, file: !1332, line: 497, baseType: !437, size: 16, offset: 288)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1331, file: !1332, line: 498, baseType: !437, size: 16, offset: 304)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1331, file: !1332, line: 502, baseType: !190, size: 64, offset: 320)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1331, file: !1332, line: 503, baseType: !190, size: 64, offset: 384)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1331, file: !1332, line: 514, baseType: !1360, size: 256, offset: 448)
!1360 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1361, size: 256, elements: !583)
!1361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1362, size: 64)
!1362 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1332, line: 483, flags: DIFlagFwdDecl)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1331, file: !1332, line: 516, baseType: !190, size: 64, offset: 704)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1331, file: !1332, line: 518, baseType: !190, size: 64, offset: 768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1331, file: !1332, line: 520, baseType: !190, size: 64, offset: 832)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1331, file: !1332, line: 521, baseType: !190, size: 64, offset: 896)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1331, file: !1332, line: 522, baseType: !190, size: 64, offset: 960)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1331, file: !1332, line: 528, baseType: !1369, size: 64, offset: 1024)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1332, line: 10, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1331, file: !1332, line: 535, baseType: !190, size: 64, offset: 1088)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1331, file: !1332, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1331, file: !1332, line: 540, baseType: !1374, size: 33280, offset: 1536)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1375, line: 317, size: 33280, elements: !1376)
!1375 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1376 = !{!1377, !1378, !1379}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1374, file: !1375, line: 330, baseType: !7, size: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1374, file: !1375, line: 337, baseType: !190, size: 64, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1374, file: !1375, line: 348, baseType: !1380, size: 32768, offset: 512)
!1380 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1375, line: 304, size: 32768, elements: !1381)
!1381 = !{!1382, !1397, !1436, !1486, !1503}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1380, file: !1375, line: 305, baseType: !1383, size: 896)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1375, line: 12, size: 896, elements: !1384)
!1384 = !{!1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1396}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1383, file: !1375, line: 13, baseType: !90, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1383, file: !1375, line: 14, baseType: !90, size: 32, offset: 32)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1383, file: !1375, line: 15, baseType: !90, size: 32, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1383, file: !1375, line: 16, baseType: !90, size: 32, offset: 96)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1383, file: !1375, line: 17, baseType: !90, size: 32, offset: 128)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1383, file: !1375, line: 18, baseType: !90, size: 32, offset: 160)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1383, file: !1375, line: 19, baseType: !90, size: 32, offset: 192)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1383, file: !1375, line: 22, baseType: !1393, size: 640, offset: 224)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 640, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 20)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1383, file: !1375, line: 25, baseType: !90, size: 32, offset: 864)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1380, file: !1375, line: 306, baseType: !1398, size: 4096, align: 128)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1375, line: 34, size: 4096, align: 128, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1419, !1420, !1421, !1425, !1427, !1431}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1398, file: !1375, line: 35, baseType: !614, size: 16)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1398, file: !1375, line: 36, baseType: !614, size: 16, offset: 16)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1398, file: !1375, line: 37, baseType: !614, size: 16, offset: 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1398, file: !1375, line: 38, baseType: !614, size: 16, offset: 48)
!1404 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !1375, line: 39, baseType: !1405, size: 128, offset: 64)
!1405 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !1375, line: 39, size: 128, elements: !1406)
!1406 = !{!1407, !1412}
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1375, line: 40, baseType: !1408, size: 128)
!1408 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !1375, line: 40, size: 128, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1408, file: !1375, line: 41, baseType: !123, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1408, file: !1375, line: 42, baseType: !123, size: 64, offset: 64)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1405, file: !1375, line: 44, baseType: !1413, size: 128)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1405, file: !1375, line: 44, size: 128, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1413, file: !1375, line: 45, baseType: !90, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1413, file: !1375, line: 46, baseType: !90, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1413, file: !1375, line: 47, baseType: !90, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1413, file: !1375, line: 48, baseType: !90, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1398, file: !1375, line: 51, baseType: !90, size: 32, offset: 192)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1398, file: !1375, line: 52, baseType: !90, size: 32, offset: 224)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1398, file: !1375, line: 55, baseType: !1422, size: 1024, offset: 256)
!1422 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 1024, elements: !1423)
!1423 = !{!1424}
!1424 = !DISubrange(count: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1398, file: !1375, line: 58, baseType: !1426, size: 2048, offset: 1280)
!1426 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 2048, elements: !401)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1398, file: !1375, line: 60, baseType: !1428, size: 384, offset: 3328)
!1428 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 384, elements: !1429)
!1429 = !{!1430}
!1430 = !DISubrange(count: 12)
!1431 = !DIDerivedType(tag: DW_TAG_member, scope: !1398, file: !1375, line: 62, baseType: !1432, size: 384, offset: 3712)
!1432 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1398, file: !1375, line: 62, size: 384, elements: !1433)
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1432, file: !1375, line: 63, baseType: !1428, size: 384)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1432, file: !1375, line: 64, baseType: !1428, size: 384)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1380, file: !1375, line: 307, baseType: !1437, size: 1088)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1375, line: 79, size: 1088, elements: !1438)
!1438 = !{!1439, !1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1485}
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1437, file: !1375, line: 80, baseType: !90, size: 32)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1437, file: !1375, line: 81, baseType: !90, size: 32, offset: 32)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1437, file: !1375, line: 82, baseType: !90, size: 32, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1437, file: !1375, line: 83, baseType: !90, size: 32, offset: 96)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1437, file: !1375, line: 84, baseType: !90, size: 32, offset: 128)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1437, file: !1375, line: 85, baseType: !90, size: 32, offset: 160)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1437, file: !1375, line: 86, baseType: !90, size: 32, offset: 192)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1437, file: !1375, line: 88, baseType: !1393, size: 640, offset: 224)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1437, file: !1375, line: 89, baseType: !249, size: 8, offset: 864)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1437, file: !1375, line: 90, baseType: !249, size: 8, offset: 872)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1437, file: !1375, line: 91, baseType: !249, size: 8, offset: 880)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1437, file: !1375, line: 92, baseType: !249, size: 8, offset: 888)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1437, file: !1375, line: 93, baseType: !249, size: 8, offset: 896)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1437, file: !1375, line: 94, baseType: !249, size: 8, offset: 904)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1437, file: !1375, line: 95, baseType: !1454, size: 64, offset: 960)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1456, line: 11, size: 128, elements: !1457)
!1456 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1457 = !{!1458, !1459}
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1455, file: !1456, line: 12, baseType: !430, size: 64)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1455, file: !1456, line: 13, baseType: !1460, size: 64, offset: 64)
!1460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1461, size: 64)
!1461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1462, line: 56, size: 1344, elements: !1463)
!1462 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1461, file: !1462, line: 61, baseType: !190, size: 64)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1461, file: !1462, line: 62, baseType: !190, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1461, file: !1462, line: 63, baseType: !190, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1461, file: !1462, line: 64, baseType: !190, size: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1461, file: !1462, line: 65, baseType: !190, size: 64, offset: 256)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1461, file: !1462, line: 66, baseType: !190, size: 64, offset: 320)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1461, file: !1462, line: 68, baseType: !190, size: 64, offset: 384)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1461, file: !1462, line: 69, baseType: !190, size: 64, offset: 448)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1461, file: !1462, line: 70, baseType: !190, size: 64, offset: 512)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1461, file: !1462, line: 71, baseType: !190, size: 64, offset: 576)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1461, file: !1462, line: 72, baseType: !190, size: 64, offset: 640)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1461, file: !1462, line: 73, baseType: !190, size: 64, offset: 704)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1461, file: !1462, line: 74, baseType: !190, size: 64, offset: 768)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1461, file: !1462, line: 75, baseType: !190, size: 64, offset: 832)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1461, file: !1462, line: 76, baseType: !190, size: 64, offset: 896)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1461, file: !1462, line: 81, baseType: !190, size: 64, offset: 960)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1461, file: !1462, line: 83, baseType: !190, size: 64, offset: 1024)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1461, file: !1462, line: 84, baseType: !190, size: 64, offset: 1088)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1461, file: !1462, line: 85, baseType: !190, size: 64, offset: 1152)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1461, file: !1462, line: 86, baseType: !190, size: 64, offset: 1216)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1461, file: !1462, line: 87, baseType: !190, size: 64, offset: 1280)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1437, file: !1375, line: 96, baseType: !90, size: 32, offset: 1024)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1380, file: !1375, line: 308, baseType: !1487, size: 4608, align: 512)
!1487 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1375, line: 289, size: 4608, align: 512, elements: !1488)
!1488 = !{!1489, !1490, !1499}
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1487, file: !1375, line: 290, baseType: !1398, size: 4096, align: 128)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1487, file: !1375, line: 291, baseType: !1491, size: 512, offset: 4096)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1375, line: 268, size: 512, elements: !1492)
!1492 = !{!1493, !1494, !1495}
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1491, file: !1375, line: 269, baseType: !123, size: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1491, file: !1375, line: 270, baseType: !123, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1491, file: !1375, line: 271, baseType: !1496, size: 384, offset: 128)
!1496 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 384, elements: !1497)
!1497 = !{!1498}
!1498 = !DISubrange(count: 6)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1487, file: !1375, line: 292, baseType: !1500, offset: 4608)
!1500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, elements: !1501)
!1501 = !{!1502}
!1502 = !DISubrange(count: 0)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1380, file: !1375, line: 309, baseType: !1504, size: 32768)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32768, elements: !1505)
!1505 = !{!1506}
!1506 = !DISubrange(count: 4096)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !627, file: !479, line: 378, baseType: !1508, size: 64, offset: 64)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !623, file: !479, line: 384, baseType: !941, size: 192, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !499, file: !479, line: 500, baseType: !355, offset: 6656)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !499, file: !479, line: 501, baseType: !1512, size: 64, offset: 6656)
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !479, line: 387, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !499, file: !479, line: 516, baseType: !1515, size: 64, offset: 6720)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1517, line: 18, flags: DIFlagFwdDecl)
!1517 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !499, file: !479, line: 519, baseType: !469, size: 64, offset: 6784)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !499, file: !479, line: 521, baseType: !1520, size: 64, offset: 6848)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !479, line: 521, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !499, file: !479, line: 545, baseType: !524, size: 32, offset: 6912)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !499, file: !479, line: 548, baseType: !306, size: 8, offset: 6944)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !499, file: !479, line: 550, baseType: !1525, offset: 6952)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1526, line: 142, elements: !369)
!1526 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !499, file: !479, line: 554, baseType: !1528, size: 256, offset: 6976)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1529, line: 102, size: 256, elements: !1530)
!1529 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1530 = !{!1531, !1532, !1533}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1528, file: !1529, line: 103, baseType: !532, size: 64)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1528, file: !1529, line: 104, baseType: !342, size: 128, offset: 64)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1528, file: !1529, line: 105, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1529, line: 21, baseType: !1535)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{null, !1538}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !499, file: !479, line: 557, baseType: !90, size: 32, offset: 7232)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !496, file: !479, line: 565, baseType: !1541, offset: 7296)
!1541 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, elements: !1542)
!1542 = !{!1543}
!1543 = !DISubrange(count: -1)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !478, file: !479, line: 333, baseType: !1545, size: 64, offset: 576)
!1545 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !471, line: 284, baseType: !1546)
!1546 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !471, line: 284, size: 64, elements: !1547)
!1547 = !{!1548}
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1546, file: !471, line: 284, baseType: !1549, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !522, line: 19, baseType: !190)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !478, file: !479, line: 334, baseType: !190, size: 64, offset: 640)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !478, file: !479, line: 343, baseType: !1552, size: 256, offset: 704)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !478, file: !479, line: 340, size: 256, elements: !1553)
!1553 = !{!1554, !1555}
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1552, file: !479, line: 341, baseType: !486, size: 192, align: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1552, file: !479, line: 342, baseType: !190, size: 64, offset: 192)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !478, file: !479, line: 351, baseType: !342, size: 128, offset: 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !478, file: !479, line: 353, baseType: !1558, size: 64, offset: 1088)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !479, line: 353, flags: DIFlagFwdDecl)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !478, file: !479, line: 356, baseType: !1561, size: 64, offset: 1152)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1563)
!1563 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !479, line: 356, flags: DIFlagFwdDecl)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !478, file: !479, line: 359, baseType: !190, size: 64, offset: 1216)
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !478, file: !479, line: 361, baseType: !469, size: 64, offset: 1280)
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !478, file: !479, line: 362, baseType: !95, size: 64, offset: 1344)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !478, file: !479, line: 365, baseType: !532, size: 64, offset: 1408)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !478, file: !479, line: 373, baseType: !1569, offset: 1472)
!1569 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !479, line: 296, elements: !369)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !448, file: !421, line: 90, baseType: !443, size: 64, offset: 192)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !448, file: !421, line: 91, baseType: !1572, size: 64, offset: 256)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !411, file: !338, line: 143, baseType: !1574, size: 64, offset: 256)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!1577, !348}
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1579)
!1579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1580)
!1580 = !{!1581, !1582, !1586, !1590, !1598, !1602}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1579, file: !18, line: 40, baseType: !17, size: 32)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1579, file: !18, line: 41, baseType: !1583, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!306}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1579, file: !18, line: 42, baseType: !1587, size: 64, offset: 128)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{!95}
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1579, file: !18, line: 43, baseType: !1591, size: 64, offset: 192)
!1591 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1592 = !DISubroutineType(types: !1593)
!1593 = !{!1594, !1596}
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1579, file: !18, line: 44, baseType: !1599, size: 64, offset: 256)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{!1594}
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1579, file: !18, line: 45, baseType: !1603, size: 64, offset: 320)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{null, !95}
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !411, file: !338, line: 144, baseType: !1607, size: 64, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DISubroutineType(types: !1609)
!1609 = !{!1594, !348}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !411, file: !338, line: 145, baseType: !1611, size: 64, offset: 384)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{null, !348, !1614, !1620}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1517, line: 23, baseType: !1616)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1517, line: 21, size: 32, elements: !1617)
!1617 = !{!1618}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1616, file: !1517, line: 22, baseType: !1619, size: 32)
!1619 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !117, line: 32, baseType: !1101)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1517, line: 28, baseType: !1622)
!1622 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1517, line: 26, size: 32, elements: !1623)
!1623 = !{!1624}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1622, file: !1517, line: 27, baseType: !1625, size: 32)
!1625 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !117, line: 33, baseType: !1626)
!1626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !207, line: 50, baseType: !7)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !337, file: !338, line: 70, baseType: !1628, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1630, line: 123, size: 1024, elements: !1631)
!1630 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1631 = !{!1632, !1633, !1634, !1635, !1636, !1637, !1638, !1639, !1774, !1775, !1776, !1777, !1778}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1629, file: !1630, line: 124, baseType: !524, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1629, file: !1630, line: 125, baseType: !524, size: 32, offset: 32)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1629, file: !1630, line: 135, baseType: !1628, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !1630, line: 136, baseType: !137, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1629, file: !1630, line: 138, baseType: !486, size: 192, align: 64, offset: 192)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1629, file: !1630, line: 140, baseType: !1594, size: 64, offset: 384)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1629, file: !1630, line: 141, baseType: !7, size: 32, offset: 448)
!1639 = !DIDerivedType(tag: DW_TAG_member, scope: !1629, file: !1630, line: 142, baseType: !1640, size: 256, offset: 512)
!1640 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1629, file: !1630, line: 142, size: 256, elements: !1641)
!1641 = !{!1642, !1697, !1701}
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1640, file: !1630, line: 143, baseType: !1643, size: 192)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1630, line: 91, size: 192, elements: !1644)
!1644 = !{!1645, !1646, !1647}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1643, file: !1630, line: 92, baseType: !190, size: 64)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1643, file: !1630, line: 94, baseType: !503, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1643, file: !1630, line: 100, baseType: !1648, size: 64, offset: 128)
!1648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1649, size: 64)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1630, line: 180, size: 704, elements: !1650)
!1650 = !{!1651, !1652, !1653, !1667, !1668, !1669, !1695, !1696}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1649, file: !1630, line: 182, baseType: !1628, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1649, file: !1630, line: 183, baseType: !7, size: 32, offset: 64)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1649, file: !1630, line: 186, baseType: !1654, size: 192, offset: 128)
!1654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1655, line: 19, size: 192, elements: !1656)
!1655 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1656 = !{!1657, !1665, !1666}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1654, file: !1655, line: 20, baseType: !1658, size: 128)
!1658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1659, line: 292, size: 128, elements: !1660)
!1659 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1660 = !{!1661, !1662, !1664}
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1658, file: !1659, line: 293, baseType: !355)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1658, file: !1659, line: 295, baseType: !1663, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !117, line: 148, baseType: !7)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1658, file: !1659, line: 296, baseType: !95, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1654, file: !1655, line: 21, baseType: !7, size: 32, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1654, file: !1655, line: 22, baseType: !7, size: 32, offset: 160)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1649, file: !1630, line: 187, baseType: !90, size: 32, offset: 320)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1649, file: !1630, line: 188, baseType: !90, size: 32, offset: 352)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1649, file: !1630, line: 189, baseType: !1670, size: 64, offset: 384)
!1670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1671, size: 64)
!1671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1630, line: 168, size: 320, elements: !1672)
!1672 = !{!1673, !1679, !1683, !1687, !1691}
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1671, file: !1630, line: 169, baseType: !1674, size: 64)
!1674 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1675, size: 64)
!1675 = !DISubroutineType(types: !1676)
!1676 = !{!94, !1677, !1648}
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !471, line: 539, flags: DIFlagFwdDecl)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1671, file: !1630, line: 171, baseType: !1680, size: 64, offset: 64)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!94, !1628, !137, !436}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1671, file: !1630, line: 173, baseType: !1684, size: 64, offset: 128)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{!94, !1628}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1671, file: !1630, line: 174, baseType: !1688, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!94, !1628, !1628, !137}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1671, file: !1630, line: 176, baseType: !1692, size: 64, offset: 256)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!94, !1677, !1628, !1648}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1649, file: !1630, line: 192, baseType: !342, size: 128, offset: 448)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1649, file: !1630, line: 194, baseType: !912, size: 128, offset: 576)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1640, file: !1630, line: 144, baseType: !1698, size: 64)
!1698 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1630, line: 103, size: 64, elements: !1699)
!1699 = !{!1700}
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1698, file: !1630, line: 104, baseType: !1628, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1640, file: !1630, line: 145, baseType: !1702, size: 256)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1630, line: 107, size: 256, elements: !1703)
!1703 = !{!1704, !1769, !1772, !1773}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1702, file: !1630, line: 108, baseType: !1705, size: 64)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1630, line: 217, size: 768, elements: !1708)
!1708 = !{!1709, !1729, !1733, !1737, !1742, !1746, !1750, !1754, !1755, !1756, !1757, !1765}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1707, file: !1630, line: 222, baseType: !1710, size: 64)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!94, !1713}
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1630, line: 197, size: 1088, elements: !1715)
!1715 = !{!1716, !1717, !1718, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1714, file: !1630, line: 199, baseType: !1628, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1714, file: !1630, line: 200, baseType: !469, size: 64, offset: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1714, file: !1630, line: 201, baseType: !1677, size: 64, offset: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1714, file: !1630, line: 202, baseType: !95, size: 64, offset: 192)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1714, file: !1630, line: 205, baseType: !601, size: 192, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1714, file: !1630, line: 206, baseType: !601, size: 192, offset: 448)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1714, file: !1630, line: 207, baseType: !94, size: 32, offset: 640)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1714, file: !1630, line: 208, baseType: !342, size: 128, offset: 704)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1714, file: !1630, line: 209, baseType: !396, size: 64, offset: 832)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1714, file: !1630, line: 211, baseType: !209, size: 64, offset: 896)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1714, file: !1630, line: 212, baseType: !306, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1714, file: !1630, line: 213, baseType: !306, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1714, file: !1630, line: 214, baseType: !1561, size: 64, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1707, file: !1630, line: 223, baseType: !1730, size: 64, offset: 64)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{null, !1713}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1707, file: !1630, line: 236, baseType: !1734, size: 64, offset: 128)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!94, !1677, !95}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1707, file: !1630, line: 238, baseType: !1738, size: 64, offset: 192)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!95, !1677, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1707, file: !1630, line: 239, baseType: !1743, size: 64, offset: 256)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1744, size: 64)
!1744 = !DISubroutineType(types: !1745)
!1745 = !{!95, !1677, !95, !1741}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1707, file: !1630, line: 240, baseType: !1747, size: 64, offset: 320)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DISubroutineType(types: !1749)
!1749 = !{null, !1677, !95}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1707, file: !1630, line: 242, baseType: !1751, size: 64, offset: 384)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{!427, !1713, !396, !209, !205}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1707, file: !1630, line: 252, baseType: !209, size: 64, offset: 448)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1707, file: !1630, line: 259, baseType: !306, size: 8, offset: 512)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1707, file: !1630, line: 260, baseType: !1751, size: 64, offset: 576)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1707, file: !1630, line: 263, baseType: !1758, size: 64, offset: 640)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!1761, !1713, !1763}
!1761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1762, line: 52, baseType: !7)
!1762 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1630, line: 27, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1707, file: !1630, line: 266, baseType: !1766, size: 64, offset: 704)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!94, !1713, !477}
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1702, file: !1630, line: 109, baseType: !1770, size: 64, offset: 64)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1630, line: 31, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1702, file: !1630, line: 110, baseType: !205, size: 64, offset: 128)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1702, file: !1630, line: 111, baseType: !1628, size: 64, offset: 192)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1629, file: !1630, line: 148, baseType: !95, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1629, file: !1630, line: 154, baseType: !123, size: 64, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1629, file: !1630, line: 156, baseType: !437, size: 16, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1629, file: !1630, line: 157, baseType: !436, size: 16, offset: 912)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1629, file: !1630, line: 158, baseType: !1779, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1630, line: 32, flags: DIFlagFwdDecl)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !337, file: !338, line: 71, baseType: !1782, size: 32, offset: 448)
!1782 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1783, line: 19, size: 32, elements: !1784)
!1783 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1784 = !{!1785}
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1782, file: !1783, line: 20, baseType: !644, size: 32)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !337, file: !338, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !337, file: !338, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !337, file: !338, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !337, file: !338, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !337, file: !338, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !334, file: !30, line: 463, baseType: !1792, size: 64, offset: 512)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !334, file: !30, line: 465, baseType: !1794, size: 64, offset: 576)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !334, file: !30, line: 467, baseType: !137, size: 64, offset: 640)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !334, file: !30, line: 468, baseType: !1798, size: 64, offset: 704)
!1798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1800)
!1800 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1801)
!1801 = !{!1802, !1803, !1804, !1808, !1813, !1817}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1800, file: !30, line: 88, baseType: !137, size: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1800, file: !30, line: 89, baseType: !445, size: 64, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1800, file: !30, line: 90, baseType: !1805, size: 64, offset: 128)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!94, !1792, !391}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1800, file: !30, line: 91, baseType: !1809, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{!396, !1792, !1812, !1614, !1620}
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1800, file: !30, line: 93, baseType: !1814, size: 64, offset: 256)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DISubroutineType(types: !1816)
!1816 = !{null, !1792}
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1800, file: !30, line: 95, baseType: !1818, size: 64, offset: 320)
!1818 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1819, size: 64)
!1819 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1820)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1821)
!1821 = !{!1822, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847}
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1820, file: !37, line: 279, baseType: !1823, size: 64)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DISubroutineType(types: !1825)
!1825 = !{!94, !1792}
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1820, file: !37, line: 280, baseType: !1814, size: 64, offset: 64)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1820, file: !37, line: 281, baseType: !1823, size: 64, offset: 128)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1820, file: !37, line: 282, baseType: !1823, size: 64, offset: 192)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1820, file: !37, line: 283, baseType: !1823, size: 64, offset: 256)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1820, file: !37, line: 284, baseType: !1823, size: 64, offset: 320)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1820, file: !37, line: 285, baseType: !1823, size: 64, offset: 384)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1820, file: !37, line: 286, baseType: !1823, size: 64, offset: 448)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1820, file: !37, line: 287, baseType: !1823, size: 64, offset: 512)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1820, file: !37, line: 288, baseType: !1823, size: 64, offset: 576)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1820, file: !37, line: 289, baseType: !1823, size: 64, offset: 640)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1820, file: !37, line: 290, baseType: !1823, size: 64, offset: 704)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1820, file: !37, line: 291, baseType: !1823, size: 64, offset: 768)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1820, file: !37, line: 292, baseType: !1823, size: 64, offset: 832)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1820, file: !37, line: 293, baseType: !1823, size: 64, offset: 896)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1820, file: !37, line: 294, baseType: !1823, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1820, file: !37, line: 295, baseType: !1823, size: 64, offset: 1024)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1820, file: !37, line: 296, baseType: !1823, size: 64, offset: 1088)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1820, file: !37, line: 297, baseType: !1823, size: 64, offset: 1152)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1820, file: !37, line: 298, baseType: !1823, size: 64, offset: 1216)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1820, file: !37, line: 299, baseType: !1823, size: 64, offset: 1280)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1820, file: !37, line: 300, baseType: !1823, size: 64, offset: 1344)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1820, file: !37, line: 301, baseType: !1823, size: 64, offset: 1408)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !334, file: !30, line: 470, baseType: !1849, size: 64, offset: 768)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1851, line: 82, size: 1408, elements: !1852)
!1851 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1852 = !{!1853, !1854, !1855, !1856, !1857, !1858, !1859, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1935, !1938, !1941}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1850, file: !1851, line: 83, baseType: !137, size: 64)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1850, file: !1851, line: 84, baseType: !137, size: 64, offset: 64)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1850, file: !1851, line: 85, baseType: !1792, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1850, file: !1851, line: 86, baseType: !445, size: 64, offset: 192)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1850, file: !1851, line: 87, baseType: !445, size: 64, offset: 256)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1850, file: !1851, line: 88, baseType: !445, size: 64, offset: 320)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1850, file: !1851, line: 90, baseType: !1860, size: 64, offset: 384)
!1860 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1861, size: 64)
!1861 = !DISubroutineType(types: !1862)
!1862 = !{!94, !1792, !1863}
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1865)
!1865 = !{!1866, !1867, !1868, !1869, !1870, !1871, !1872, !1886, !1899, !1900, !1901, !1902, !1903, !1911, !1912, !1913, !1914, !1915, !1916}
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1864, file: !24, line: 96, baseType: !137, size: 64)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1864, file: !24, line: 97, baseType: !1849, size: 64, offset: 64)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1864, file: !24, line: 99, baseType: !330, size: 64, offset: 128)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1864, file: !24, line: 100, baseType: !137, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1864, file: !24, line: 102, baseType: !306, size: 8, offset: 256)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1864, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1864, file: !24, line: 105, baseType: !1873, size: 64, offset: 320)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1875)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1876, line: 262, size: 1600, elements: !1877)
!1876 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1877 = !{!1878, !1880, !1881, !1885}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1875, file: !1876, line: 263, baseType: !1879, size: 256)
!1879 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 256, elements: !1423)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1875, file: !1876, line: 264, baseType: !1879, size: 256, offset: 256)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1875, file: !1876, line: 265, baseType: !1882, size: 1024, offset: 512)
!1882 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 1024, elements: !1883)
!1883 = !{!1884}
!1884 = !DISubrange(count: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1875, file: !1876, line: 266, baseType: !1594, size: 64, offset: 1536)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1864, file: !24, line: 106, baseType: !1887, size: 64, offset: 384)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1889)
!1889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1876, line: 210, size: 256, elements: !1890)
!1890 = !{!1891, !1895, !1897, !1898}
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1889, file: !1876, line: 211, baseType: !1892, size: 72)
!1892 = !DICompositeType(tag: DW_TAG_array_type, baseType: !250, size: 72, elements: !1893)
!1893 = !{!1894}
!1894 = !DISubrange(count: 9)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1889, file: !1876, line: 212, baseType: !1896, size: 64, offset: 128)
!1896 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1876, line: 14, baseType: !190)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1889, file: !1876, line: 213, baseType: !92, size: 32, offset: 192)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1889, file: !1876, line: 214, baseType: !92, size: 32, offset: 224)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1864, file: !24, line: 108, baseType: !1823, size: 64, offset: 448)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1864, file: !24, line: 109, baseType: !1814, size: 64, offset: 512)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1864, file: !24, line: 110, baseType: !1823, size: 64, offset: 576)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1864, file: !24, line: 111, baseType: !1814, size: 64, offset: 640)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1864, file: !24, line: 112, baseType: !1904, size: 64, offset: 704)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DISubroutineType(types: !1906)
!1906 = !{!94, !1792, !1907}
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1908)
!1908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1909)
!1909 = !{!1910}
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1908, file: !37, line: 51, baseType: !94, size: 32)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1864, file: !24, line: 113, baseType: !1823, size: 64, offset: 768)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1864, file: !24, line: 114, baseType: !445, size: 64, offset: 832)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1864, file: !24, line: 115, baseType: !445, size: 64, offset: 896)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1864, file: !24, line: 117, baseType: !1818, size: 64, offset: 960)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1864, file: !24, line: 118, baseType: !1814, size: 64, offset: 1024)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1864, file: !24, line: 120, baseType: !1917, size: 64, offset: 1088)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1850, file: !1851, line: 91, baseType: !1805, size: 64, offset: 448)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1850, file: !1851, line: 92, baseType: !1823, size: 64, offset: 512)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1850, file: !1851, line: 93, baseType: !1814, size: 64, offset: 576)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1850, file: !1851, line: 94, baseType: !1823, size: 64, offset: 640)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1850, file: !1851, line: 95, baseType: !1814, size: 64, offset: 704)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1850, file: !1851, line: 97, baseType: !1823, size: 64, offset: 768)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1850, file: !1851, line: 98, baseType: !1823, size: 64, offset: 832)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1850, file: !1851, line: 100, baseType: !1904, size: 64, offset: 896)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1850, file: !1851, line: 101, baseType: !1823, size: 64, offset: 960)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1850, file: !1851, line: 103, baseType: !1823, size: 64, offset: 1024)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1850, file: !1851, line: 105, baseType: !1823, size: 64, offset: 1088)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1850, file: !1851, line: 107, baseType: !1818, size: 64, offset: 1152)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1850, file: !1851, line: 109, baseType: !1932, size: 64, offset: 1216)
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1934)
!1934 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1851, line: 109, flags: DIFlagFwdDecl)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1850, file: !1851, line: 111, baseType: !1936, size: 64, offset: 1280)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1851, line: 111, flags: DIFlagFwdDecl)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1850, file: !1851, line: 112, baseType: !1939, offset: 1344)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1940, line: 187, elements: !369)
!1940 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1850, file: !1851, line: 114, baseType: !306, size: 8, offset: 1344)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !334, file: !30, line: 471, baseType: !1863, size: 64, offset: 832)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !334, file: !30, line: 473, baseType: !95, size: 64, offset: 896)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !334, file: !30, line: 475, baseType: !95, size: 64, offset: 960)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !334, file: !30, line: 480, baseType: !601, size: 192, offset: 1024)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !334, file: !30, line: 484, baseType: !1947, size: 576, offset: 1216)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1948)
!1948 = !{!1949, !1950, !1951, !1952, !1953, !1954}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1947, file: !30, line: 362, baseType: !342, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1947, file: !30, line: 363, baseType: !342, size: 128, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1947, file: !30, line: 364, baseType: !342, size: 128, offset: 256)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1947, file: !30, line: 365, baseType: !342, size: 128, offset: 384)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1947, file: !30, line: 366, baseType: !306, size: 8, offset: 512)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1947, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !334, file: !30, line: 485, baseType: !1956, size: 2304, offset: 1792)
!1956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1957)
!1957 = !{!1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2053, !2057}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1956, file: !37, line: 566, baseType: !1907, size: 32)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1956, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1956, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1956, file: !37, line: 569, baseType: !306, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1956, file: !37, line: 570, baseType: !306, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1956, file: !37, line: 571, baseType: !306, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1956, file: !37, line: 572, baseType: !306, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1956, file: !37, line: 573, baseType: !306, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1956, file: !37, line: 574, baseType: !306, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1956, file: !37, line: 575, baseType: !306, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1956, file: !37, line: 576, baseType: !306, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1956, file: !37, line: 577, baseType: !90, size: 32, offset: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1956, file: !37, line: 578, baseType: !355, offset: 96)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1956, file: !37, line: 580, baseType: !342, size: 128, offset: 128)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1956, file: !37, line: 581, baseType: !941, size: 192, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1956, file: !37, line: 582, baseType: !1974, size: 64, offset: 448)
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1976, line: 43, size: 1472, elements: !1977)
!1976 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1985, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1975, file: !1976, line: 44, baseType: !137, size: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1975, file: !1976, line: 45, baseType: !94, size: 32, offset: 64)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1975, file: !1976, line: 46, baseType: !342, size: 128, offset: 128)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1975, file: !1976, line: 47, baseType: !355, offset: 256)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1975, file: !1976, line: 48, baseType: !1983, size: 64, offset: 256)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1975, file: !1976, line: 49, baseType: !1986, size: 320, offset: 320)
!1986 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1987, line: 11, size: 320, elements: !1988)
!1987 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1988 = !{!1989, !1990, !1991, !1996}
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1986, file: !1987, line: 16, baseType: !905, size: 128)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1986, file: !1987, line: 17, baseType: !190, size: 64, offset: 128)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1986, file: !1987, line: 18, baseType: !1992, size: 64, offset: 192)
!1992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!1993 = !DISubroutineType(types: !1994)
!1994 = !{null, !1995}
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1986, file: !1987, line: 19, baseType: !90, size: 32, offset: 256)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1975, file: !1976, line: 50, baseType: !190, size: 64, offset: 640)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1975, file: !1976, line: 51, baseType: !714, size: 64, offset: 704)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1975, file: !1976, line: 52, baseType: !714, size: 64, offset: 768)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1975, file: !1976, line: 53, baseType: !714, size: 64, offset: 832)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1975, file: !1976, line: 54, baseType: !714, size: 64, offset: 896)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1975, file: !1976, line: 55, baseType: !714, size: 64, offset: 960)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1975, file: !1976, line: 56, baseType: !190, size: 64, offset: 1024)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1975, file: !1976, line: 57, baseType: !190, size: 64, offset: 1088)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1975, file: !1976, line: 58, baseType: !190, size: 64, offset: 1152)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1975, file: !1976, line: 59, baseType: !190, size: 64, offset: 1216)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1975, file: !1976, line: 60, baseType: !190, size: 64, offset: 1280)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1975, file: !1976, line: 61, baseType: !1792, size: 64, offset: 1344)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1975, file: !1976, line: 62, baseType: !306, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1975, file: !1976, line: 63, baseType: !306, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1956, file: !37, line: 583, baseType: !306, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1956, file: !37, line: 584, baseType: !306, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1956, file: !37, line: 585, baseType: !306, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1956, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1956, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1956, file: !37, line: 592, baseType: !706, size: 512, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1956, file: !37, line: 593, baseType: !123, size: 64, offset: 1088)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1956, file: !37, line: 594, baseType: !1528, size: 256, offset: 1152)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1956, file: !37, line: 595, baseType: !912, size: 128, offset: 1408)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1956, file: !37, line: 596, baseType: !1983, size: 64, offset: 1536)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1956, file: !37, line: 597, baseType: !524, size: 32, offset: 1600)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1956, file: !37, line: 598, baseType: !524, size: 32, offset: 1632)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1956, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1956, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1956, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1956, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1956, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1956, file: !37, line: 604, baseType: !306, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1956, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1956, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1956, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1956, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1956, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1956, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1956, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1956, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1956, file: !37, line: 613, baseType: !94, size: 32, offset: 1792)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1956, file: !37, line: 614, baseType: !94, size: 32, offset: 1824)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1956, file: !37, line: 615, baseType: !123, size: 64, offset: 1856)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1956, file: !37, line: 616, baseType: !123, size: 64, offset: 1920)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1956, file: !37, line: 617, baseType: !123, size: 64, offset: 1984)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1956, file: !37, line: 618, baseType: !123, size: 64, offset: 2048)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1956, file: !37, line: 620, baseType: !2044, size: 64, offset: 2112)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2046)
!2046 = !{!2047, !2048, !2049, !2050}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2045, file: !37, line: 537, baseType: !355)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2045, file: !37, line: 538, baseType: !7, size: 32)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2045, file: !37, line: 540, baseType: !342, size: 128, offset: 64)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2045, file: !37, line: 543, baseType: !2051, size: 64, offset: 192)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1956, file: !37, line: 621, baseType: !2054, size: 64, offset: 2176)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DISubroutineType(types: !2056)
!2056 = !{null, !1792, !865}
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1956, file: !37, line: 622, baseType: !2058, size: 64, offset: 2240)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !334, file: !30, line: 486, baseType: !2061, size: 64, offset: 4096)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2063)
!2063 = !{!2064, !2065, !2066, !2070, !2071, !2072}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2062, file: !37, line: 643, baseType: !1820, size: 1472)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2062, file: !37, line: 644, baseType: !1823, size: 64, offset: 1472)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2062, file: !37, line: 645, baseType: !2067, size: 64, offset: 1536)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{null, !1792, !306}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2062, file: !37, line: 646, baseType: !1823, size: 64, offset: 1600)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2062, file: !37, line: 647, baseType: !1814, size: 64, offset: 1664)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2062, file: !37, line: 648, baseType: !1814, size: 64, offset: 1728)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !334, file: !30, line: 493, baseType: !2074, size: 64, offset: 4160)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !334, file: !30, line: 499, baseType: !342, size: 128, offset: 4224)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !334, file: !30, line: 502, baseType: !2078, size: 64, offset: 4352)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !334, file: !30, line: 504, baseType: !2082, size: 64, offset: 4416)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !334, file: !30, line: 505, baseType: !123, size: 64, offset: 4480)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !334, file: !30, line: 510, baseType: !123, size: 64, offset: 4544)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !334, file: !30, line: 511, baseType: !2086, size: 64, offset: 4608)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2088)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !334, file: !30, line: 513, baseType: !2090, size: 64, offset: 4672)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2091, file: !30, line: 293, baseType: !7, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2091, file: !30, line: 294, baseType: !190, size: 64, offset: 64)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !334, file: !30, line: 515, baseType: !342, size: 128, offset: 4736)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !334, file: !30, line: 526, baseType: !2097, offset: 4864)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2098, line: 5, elements: !369)
!2098 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !334, file: !30, line: 528, baseType: !2100, size: 64, offset: 4864)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2102, line: 51, size: 1344, elements: !2103)
!2102 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2103 = !{!2104, !2105, !2107, !2108, !2198, !2207, !2208, !2209, !2210, !2211, !2212, !2213}
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2101, file: !2102, line: 52, baseType: !137, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2101, file: !2102, line: 53, baseType: !2106, size: 32, offset: 64)
!2106 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2102, line: 28, baseType: !90)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2101, file: !2102, line: 54, baseType: !137, size: 64, offset: 128)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2101, file: !2102, line: 55, baseType: !2109, size: 192, offset: 192)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2110, line: 17, size: 192, elements: !2111)
!2110 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2111 = !{!2112, !2114, !2197}
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2109, file: !2110, line: 18, baseType: !2113, size: 64)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2109, file: !2110, line: 19, baseType: !2115, size: 64, offset: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2110, line: 110, size: 1152, elements: !2118)
!2118 = !{!2119, !2123, !2127, !2133, !2139, !2143, !2147, !2152, !2156, !2157, !2161, !2165, !2169, !2180, !2181, !2182, !2183, !2193}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2117, file: !2110, line: 111, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!2113, !2113}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2117, file: !2110, line: 112, baseType: !2124, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{null, !2113}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2117, file: !2110, line: 113, baseType: !2128, size: 64, offset: 128)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!306, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2117, file: !2110, line: 114, baseType: !2134, size: 64, offset: 192)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!1594, !2131, !2137}
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !334)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2117, file: !2110, line: 116, baseType: !2140, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!306, !2131, !137}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2117, file: !2110, line: 118, baseType: !2144, size: 64, offset: 320)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DISubroutineType(types: !2146)
!2146 = !{!94, !2131, !137, !7, !95, !209}
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2117, file: !2110, line: 123, baseType: !2148, size: 64, offset: 384)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!94, !2131, !137, !2151, !209}
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2117, file: !2110, line: 126, baseType: !2153, size: 64, offset: 448)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!137, !2131}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2117, file: !2110, line: 127, baseType: !2153, size: 64, offset: 512)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2117, file: !2110, line: 128, baseType: !2158, size: 64, offset: 576)
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2159, size: 64)
!2159 = !DISubroutineType(types: !2160)
!2160 = !{!2113, !2131}
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2117, file: !2110, line: 130, baseType: !2162, size: 64, offset: 640)
!2162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2163, size: 64)
!2163 = !DISubroutineType(types: !2164)
!2164 = !{!2113, !2131, !2113}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2117, file: !2110, line: 133, baseType: !2166, size: 64, offset: 704)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!2113, !2131, !137}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2117, file: !2110, line: 135, baseType: !2170, size: 64, offset: 768)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!94, !2131, !137, !137, !7, !7, !2173}
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2110, line: 43, size: 640, elements: !2175)
!2175 = !{!2176, !2177, !2178}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2174, file: !2110, line: 44, baseType: !2113, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2174, file: !2110, line: 45, baseType: !7, size: 32, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2174, file: !2110, line: 46, baseType: !2179, size: 512, offset: 128)
!2179 = !DICompositeType(tag: DW_TAG_array_type, baseType: !123, size: 512, elements: !744)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2117, file: !2110, line: 140, baseType: !2162, size: 64, offset: 832)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2117, file: !2110, line: 143, baseType: !2158, size: 64, offset: 896)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2117, file: !2110, line: 145, baseType: !2120, size: 64, offset: 960)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2117, file: !2110, line: 146, baseType: !2184, size: 64, offset: 1024)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!94, !2131, !2187}
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2110, line: 29, size: 128, elements: !2189)
!2189 = !{!2190, !2191, !2192}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2188, file: !2110, line: 30, baseType: !7, size: 32)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2188, file: !2110, line: 31, baseType: !7, size: 32, offset: 32)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2188, file: !2110, line: 32, baseType: !2131, size: 64, offset: 64)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2117, file: !2110, line: 148, baseType: !2194, size: 64, offset: 1088)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!94, !2131, !1792}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2109, file: !2110, line: 20, baseType: !1792, size: 64, offset: 128)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2101, file: !2102, line: 57, baseType: !2199, size: 64, offset: 384)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2102, line: 31, size: 704, elements: !2201)
!2201 = !{!2202, !2203, !2204, !2205, !2206}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2200, file: !2102, line: 32, baseType: !396, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2200, file: !2102, line: 33, baseType: !94, size: 32, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2200, file: !2102, line: 34, baseType: !95, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2200, file: !2102, line: 35, baseType: !2199, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2200, file: !2102, line: 43, baseType: !460, size: 448, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2101, file: !2102, line: 58, baseType: !2199, size: 64, offset: 448)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2101, file: !2102, line: 59, baseType: !2100, size: 64, offset: 512)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2101, file: !2102, line: 60, baseType: !2100, size: 64, offset: 576)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2101, file: !2102, line: 61, baseType: !2100, size: 64, offset: 640)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2101, file: !2102, line: 63, baseType: !337, size: 512, offset: 704)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2101, file: !2102, line: 65, baseType: !190, size: 64, offset: 1216)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2101, file: !2102, line: 66, baseType: !95, size: 64, offset: 1280)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !334, file: !30, line: 529, baseType: !2113, size: 64, offset: 4928)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !334, file: !30, line: 534, baseType: !2216, size: 32, offset: 4992)
!2216 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !117, line: 16, baseType: !2217)
!2217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !117, line: 13, baseType: !90)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !334, file: !30, line: 535, baseType: !90, size: 32, offset: 5024)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !334, file: !30, line: 537, baseType: !355, offset: 5056)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !334, file: !30, line: 538, baseType: !342, size: 128, offset: 5056)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !334, file: !30, line: 540, baseType: !2222, size: 64, offset: 5184)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2224, line: 54, size: 960, elements: !2225)
!2224 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2225 = !{!2226, !2227, !2228, !2229, !2230, !2231, !2232, !2236, !2240, !2241, !2242, !2243, !2247, !2251, !2252}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2223, file: !2224, line: 55, baseType: !137, size: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2223, file: !2224, line: 56, baseType: !330, size: 64, offset: 64)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2223, file: !2224, line: 58, baseType: !445, size: 64, offset: 128)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2223, file: !2224, line: 59, baseType: !445, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2223, file: !2224, line: 60, baseType: !348, size: 64, offset: 256)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2223, file: !2224, line: 62, baseType: !1805, size: 64, offset: 320)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2223, file: !2224, line: 63, baseType: !2233, size: 64, offset: 384)
!2233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2234, size: 64)
!2234 = !DISubroutineType(types: !2235)
!2235 = !{!396, !1792, !1812}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2223, file: !2224, line: 65, baseType: !2237, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = !DISubroutineType(types: !2239)
!2239 = !{null, !2222}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2223, file: !2224, line: 66, baseType: !1814, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2223, file: !2224, line: 68, baseType: !1823, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2223, file: !2224, line: 70, baseType: !1577, size: 64, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2223, file: !2224, line: 71, baseType: !2244, size: 64, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{!1594, !1792}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2223, file: !2224, line: 73, baseType: !2248, size: 64, offset: 768)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{null, !1792, !1614, !1620}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2223, file: !2224, line: 75, baseType: !1818, size: 64, offset: 832)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2223, file: !2224, line: 77, baseType: !1936, size: 64, offset: 896)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !334, file: !30, line: 541, baseType: !445, size: 64, offset: 5248)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !334, file: !30, line: 543, baseType: !1814, size: 64, offset: 5312)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !334, file: !30, line: 544, baseType: !2256, size: 64, offset: 5376)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !334, file: !30, line: 545, baseType: !2259, size: 64, offset: 5440)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !334, file: !30, line: 547, baseType: !306, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !334, file: !30, line: 548, baseType: !306, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !334, file: !30, line: 549, baseType: !306, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !334, file: !30, line: 550, baseType: !306, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !112, file: !113, line: 376, baseType: !94, size: 32, offset: 8832)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !112, file: !113, line: 377, baseType: !2267, size: 192, offset: 8896)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !113, line: 191, size: 192, elements: !2268)
!2268 = !{!2269, !2272, !2273}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2267, file: !113, line: 192, baseType: !2270, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2271, size: 64)
!2271 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1630, line: 21, flags: DIFlagFwdDecl)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2267, file: !113, line: 194, baseType: !137, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2267, file: !113, line: 195, baseType: !137, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !112, file: !113, line: 378, baseType: !2275, size: 64, offset: 9088)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2277, line: 16, flags: DIFlagFwdDecl)
!2277 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !112, file: !113, line: 386, baseType: !150, size: 64, offset: 9152)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !112, file: !113, line: 389, baseType: !342, size: 128, offset: 9216)
!2280 = !DIDerivedType(tag: DW_TAG_member, scope: !112, file: !113, line: 391, baseType: !2281, size: 320, offset: 9344)
!2281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !112, file: !113, line: 391, size: 320, elements: !2282)
!2282 = !{!2283, !2290}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2281, file: !113, line: 392, baseType: !2284, size: 320)
!2284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !113, line: 211, size: 320, elements: !2285)
!2285 = !{!2286, !2287, !2288, !2289}
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2284, file: !113, line: 212, baseType: !342, size: 128)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2284, file: !113, line: 213, baseType: !123, size: 64, offset: 128)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2284, file: !113, line: 214, baseType: !123, size: 64, offset: 192)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2284, file: !113, line: 215, baseType: !90, size: 32, offset: 256)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2281, file: !113, line: 393, baseType: !2291, size: 256)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !113, line: 230, size: 256, elements: !2292)
!2292 = !{!2293, !2294}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2291, file: !113, line: 231, baseType: !601, size: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2291, file: !113, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !109, file: !51, line: 321, baseType: !2296, size: 288, offset: 9664)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2297)
!2297 = !{!2298, !2299, !2300, !2301, !2302, !2303, !2304, !2305, !2306}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2296, file: !51, line: 30, baseType: !7, size: 32)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2296, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2296, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2296, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2296, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2296, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2296, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2296, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2296, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !109, file: !51, line: 322, baseType: !2308, size: 1024, offset: 9984)
!2308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2309)
!2309 = !{!2310, !2319, !2320, !2321, !2327, !2376}
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2308, file: !51, line: 292, baseType: !2311, size: 192)
!2311 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2312)
!2312 = !{!2313, !2314, !2315, !2316, !2317, !2318}
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2311, file: !51, line: 188, baseType: !50, size: 32)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2311, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2311, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2311, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2311, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2311, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2308, file: !51, line: 293, baseType: !2311, size: 192, offset: 192)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2308, file: !51, line: 294, baseType: !2311, size: 192, offset: 384)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2308, file: !51, line: 295, baseType: !2322, size: 320, offset: 576)
!2322 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2323)
!2323 = !{!2324, !2325, !2326}
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2322, file: !51, line: 239, baseType: !2311, size: 192)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2322, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2322, file: !51, line: 241, baseType: !95, size: 64, offset: 256)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2308, file: !51, line: 296, baseType: !2328, size: 64, offset: 896)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2330)
!2330 = !{!2331}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2329, file: !51, line: 269, baseType: !2332, size: 64)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2334)
!2334 = !{!2335, !2340, !2344, !2375}
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2333, file: !51, line: 256, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DISubroutineType(types: !2338)
!2338 = !{!94, !2339}
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2333, file: !51, line: 257, baseType: !2341, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = !DISubroutineType(types: !2343)
!2343 = !{null, !2339}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2333, file: !51, line: 258, baseType: !2345, size: 64, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2346, size: 64)
!2346 = !DISubroutineType(types: !2347)
!2347 = !{!94, !2339, !2348}
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2350)
!2350 = !{!2351, !2352, !2360, !2361, !2362, !2367, !2368, !2369, !2374}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2349, file: !51, line: 113, baseType: !69, size: 32)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2349, file: !51, line: 114, baseType: !2353, size: 160, offset: 32)
!2353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2354)
!2354 = !{!2355, !2356, !2357, !2358, !2359}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2353, file: !51, line: 78, baseType: !7, size: 32)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2353, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2353, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2353, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2353, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2349, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2361 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2349, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2349, file: !51, line: 120, baseType: !2363, size: 64, offset: 256)
!2363 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2349, file: !51, line: 117, size: 64, elements: !2364)
!2364 = !{!2365, !2366}
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2363, file: !51, line: 118, baseType: !1594, size: 64)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2363, file: !51, line: 119, baseType: !95, size: 64)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2349, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2349, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2349, file: !51, line: 126, baseType: !2370, size: 64, offset: 384)
!2370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2349, file: !51, line: 123, size: 64, elements: !2371)
!2371 = !{!2372, !2373}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2370, file: !51, line: 124, baseType: !1594, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2370, file: !51, line: 125, baseType: !95, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2349, file: !51, line: 127, baseType: !94, size: 32, offset: 448)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2333, file: !51, line: 260, baseType: !2345, size: 64, offset: 192)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2308, file: !51, line: 297, baseType: !2328, size: 64, offset: 960)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !109, file: !51, line: 323, baseType: !2378, size: 64, offset: 11008)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2379)
!2379 = !{!2380, !2381}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2378, file: !51, line: 62, baseType: !7, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2378, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !109, file: !51, line: 324, baseType: !2383, size: 64, offset: 11072)
!2383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2384)
!2384 = !{!2385}
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2383, file: !51, line: 206, baseType: !189, size: 64)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !109, file: !51, line: 325, baseType: !2387, size: 64, offset: 11136)
!2387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2388, size: 64)
!2388 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2389)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2390)
!2390 = !{!2391, !2397, !2398}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2389, file: !51, line: 226, baseType: !2392, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2393, size: 64)
!2393 = !DISubroutineType(types: !2394)
!2394 = !{!94, !2339, !2395}
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2353)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2389, file: !51, line: 227, baseType: !2392, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2389, file: !51, line: 228, baseType: !2399, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!306, !2339, !2395}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !106, file: !74, line: 1098, baseType: !2403, size: 96, offset: 11200)
!2403 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !74, line: 249, size: 96, elements: !2404)
!2404 = !{!2405, !2407}
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2403, file: !74, line: 250, baseType: !2406, size: 64)
!2406 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 64, elements: !744)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2403, file: !74, line: 251, baseType: !94, size: 32, offset: 64)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !106, file: !74, line: 1099, baseType: !2409, size: 704, offset: 11328)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !74, line: 230, size: 704, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2415, !2416}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2409, file: !74, line: 232, baseType: !137, size: 64)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2409, file: !74, line: 233, baseType: !306, size: 8, offset: 64)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2409, file: !74, line: 234, baseType: !2414, size: 256, offset: 128)
!2414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !190, size: 256, elements: !583)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2409, file: !74, line: 235, baseType: !2414, size: 256, offset: 384)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2409, file: !74, line: 238, baseType: !2417, size: 64, offset: 640)
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2419, line: 167, size: 832, elements: !2420)
!2419 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2420 = !{!2421, !2422, !2423, !2424, !2425, !2426, !2427, !2428}
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2418, file: !2419, line: 168, baseType: !94, size: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2418, file: !2419, line: 169, baseType: !614, size: 16, offset: 32)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2418, file: !2419, line: 170, baseType: !614, size: 16, offset: 48)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2418, file: !2419, line: 171, baseType: !614, size: 16, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2418, file: !2419, line: 172, baseType: !614, size: 16, offset: 80)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2418, file: !2419, line: 173, baseType: !614, size: 16, offset: 96)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2418, file: !2419, line: 174, baseType: !614, size: 16, offset: 112)
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2418, file: !2419, line: 175, baseType: !2429, size: 704, offset: 128)
!2429 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 704, elements: !2430)
!2430 = !{!2431}
!2431 = !DISubrange(count: 88)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !106, file: !74, line: 1100, baseType: !2433, size: 128, offset: 12032)
!2433 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !74, line: 1036, size: 128, elements: !2434)
!2434 = !{!2435, !2444}
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2433, file: !74, line: 1037, baseType: !2436, size: 64)
!2436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2437, size: 64)
!2437 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2438)
!2438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !99, line: 61, size: 192, elements: !2439)
!2439 = !{!2440, !2441, !2442}
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2438, file: !99, line: 62, baseType: !94, size: 32)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2438, file: !99, line: 63, baseType: !396, size: 64, offset: 64)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2438, file: !99, line: 64, baseType: !2443, size: 64, offset: 128)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2433, file: !74, line: 1038, baseType: !95, size: 64, offset: 64)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !106, file: !74, line: 1101, baseType: !2446, size: 384, offset: 12160)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !74, line: 1021, size: 384, elements: !2447)
!2447 = !{!2448, !2452, !2453, !2457, !2458, !2462}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2446, file: !74, line: 1022, baseType: !2449, size: 64)
!2449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2450, size: 64)
!2450 = !DISubroutineType(types: !2451)
!2451 = !{!94, !105}
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2446, file: !74, line: 1023, baseType: !102, size: 64, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2446, file: !74, line: 1024, baseType: !2454, size: 64, offset: 128)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DISubroutineType(types: !2456)
!2456 = !{!94, !105, !205, !122}
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2446, file: !74, line: 1025, baseType: !2454, size: 64, offset: 192)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2446, file: !74, line: 1026, baseType: !2459, size: 64, offset: 256)
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2460, size: 64)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{!94, !105, !94}
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2446, file: !74, line: 1027, baseType: !2463, size: 64, offset: 320)
!2463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2464, size: 64)
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!94, !105, !2466}
!2466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2467, size: 64)
!2467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !74, line: 492, size: 1536, elements: !2468)
!2468 = !{!2469, !2470}
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2467, file: !74, line: 493, baseType: !73, size: 32)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2467, file: !74, line: 499, baseType: !2471, size: 1472, offset: 64)
!2471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !74, line: 494, size: 1472, elements: !2472)
!2472 = !{!2473, !2474}
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2471, file: !74, line: 495, baseType: !7, size: 32)
!2474 = !DIDerivedType(tag: DW_TAG_member, scope: !2471, file: !74, line: 496, baseType: !2475, size: 1408, offset: 64)
!2475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2471, file: !74, line: 496, size: 1408, elements: !2476)
!2476 = !{!2477}
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2475, file: !74, line: 497, baseType: !2478, size: 1408)
!2478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !74, line: 436, size: 1408, elements: !2479)
!2479 = !{!2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492, !2493, !2494, !2495, !2496, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2478, file: !74, line: 437, baseType: !123, size: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2478, file: !74, line: 438, baseType: !90, size: 32, offset: 64)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2478, file: !74, line: 439, baseType: !123, size: 64, offset: 128)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2478, file: !74, line: 440, baseType: !123, size: 64, offset: 192)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2478, file: !74, line: 441, baseType: !90, size: 32, offset: 256)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2478, file: !74, line: 442, baseType: !90, size: 32, offset: 288)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2478, file: !74, line: 443, baseType: !90, size: 32, offset: 320)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2478, file: !74, line: 444, baseType: !90, size: 32, offset: 352)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2478, file: !74, line: 445, baseType: !90, size: 32, offset: 384)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2478, file: !74, line: 446, baseType: !90, size: 32, offset: 416)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2478, file: !74, line: 447, baseType: !90, size: 32, offset: 448)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2478, file: !74, line: 448, baseType: !90, size: 32, offset: 480)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2478, file: !74, line: 449, baseType: !90, size: 32, offset: 512)
!2493 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2478, file: !74, line: 450, baseType: !90, size: 32, offset: 544)
!2494 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2478, file: !74, line: 451, baseType: !90, size: 32, offset: 576)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2478, file: !74, line: 452, baseType: !90, size: 32, offset: 608)
!2496 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2478, file: !74, line: 453, baseType: !90, size: 32, offset: 640)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2478, file: !74, line: 454, baseType: !90, size: 32, offset: 672)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2478, file: !74, line: 455, baseType: !90, size: 32, offset: 704)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2478, file: !74, line: 456, baseType: !90, size: 32, offset: 736)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2478, file: !74, line: 457, baseType: !90, size: 32, offset: 768)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2478, file: !74, line: 458, baseType: !90, size: 32, offset: 800)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2478, file: !74, line: 459, baseType: !90, size: 32, offset: 832)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2478, file: !74, line: 460, baseType: !90, size: 32, offset: 864)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2478, file: !74, line: 461, baseType: !90, size: 32, offset: 896)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2478, file: !74, line: 462, baseType: !90, size: 32, offset: 928)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2478, file: !74, line: 463, baseType: !90, size: 32, offset: 960)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2478, file: !74, line: 464, baseType: !90, size: 32, offset: 992)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2478, file: !74, line: 465, baseType: !90, size: 32, offset: 1024)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2478, file: !74, line: 466, baseType: !90, size: 32, offset: 1056)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2478, file: !74, line: 467, baseType: !90, size: 32, offset: 1088)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2478, file: !74, line: 468, baseType: !123, size: 64, offset: 1152)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2478, file: !74, line: 469, baseType: !90, size: 32, offset: 1216)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2478, file: !74, line: 470, baseType: !90, size: 32, offset: 1248)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2478, file: !74, line: 471, baseType: !90, size: 32, offset: 1280)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2478, file: !74, line: 472, baseType: !90, size: 32, offset: 1312)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2478, file: !74, line: 473, baseType: !90, size: 32, offset: 1344)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2478, file: !74, line: 474, baseType: !90, size: 32, offset: 1376)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !106, file: !74, line: 1102, baseType: !2519, size: 1280, offset: 12544)
!2519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !74, line: 989, size: 1280, elements: !2520)
!2520 = !{!2521, !2522, !2523, !2527, !2531, !2535, !2541, !2546, !2550, !2554, !2555, !2556, !2560, !2561, !2565, !2566, !2567}
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2519, file: !74, line: 990, baseType: !95, size: 64)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2519, file: !74, line: 991, baseType: !95, size: 64, offset: 64)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2519, file: !74, line: 992, baseType: !2524, size: 64, offset: 128)
!2524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2525, size: 64)
!2525 = !DISubroutineType(types: !2526)
!2526 = !{null, !105, !94}
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2519, file: !74, line: 993, baseType: !2528, size: 64, offset: 192)
!2528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2529, size: 64)
!2529 = !DISubroutineType(types: !2530)
!2530 = !{!249, !105}
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2519, file: !74, line: 994, baseType: !2532, size: 64, offset: 256)
!2532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2533, size: 64)
!2533 = !DISubroutineType(types: !2534)
!2534 = !{null, !105, !249}
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2519, file: !74, line: 995, baseType: !2536, size: 64, offset: 320)
!2536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2537, size: 64)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{null, !105, !2539, !94}
!2539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2540, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2519, file: !74, line: 996, baseType: !2542, size: 64, offset: 384)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{null, !105, !2545, !94}
!2545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2519, file: !74, line: 997, baseType: !2547, size: 64, offset: 448)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{null, !105, !94, !7}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2519, file: !74, line: 998, baseType: !2551, size: 64, offset: 512)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{null, !105, !7, !94, !94}
!2554 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2519, file: !74, line: 1000, baseType: !2449, size: 64, offset: 576)
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2519, file: !74, line: 1001, baseType: !2449, size: 64, offset: 640)
!2556 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2519, file: !74, line: 1002, baseType: !2557, size: 64, offset: 704)
!2557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2558, size: 64)
!2558 = !DISubroutineType(types: !2559)
!2559 = !{!94, !105, !205}
!2560 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2519, file: !74, line: 1003, baseType: !2557, size: 64, offset: 768)
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2519, file: !74, line: 1004, baseType: !2562, size: 64, offset: 832)
!2562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2563, size: 64)
!2563 = !DISubroutineType(types: !2564)
!2564 = !{!94, !105, !94, !2545}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2519, file: !74, line: 1006, baseType: !2562, size: 64, offset: 896)
!2566 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2519, file: !74, line: 1008, baseType: !94, size: 32, offset: 960)
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2519, file: !74, line: 1009, baseType: !2568, size: 256, offset: 1024)
!2568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !74, line: 951, size: 256, elements: !2569)
!2569 = !{!2570, !2571}
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2568, file: !74, line: 952, baseType: !601, size: 192)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2568, file: !74, line: 953, baseType: !2572, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2573, size: 64)
!2573 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2574)
!2574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !74, line: 935, size: 256, elements: !2575)
!2575 = !{!2576, !2577, !2578, !2621}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2574, file: !74, line: 936, baseType: !2449, size: 64)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2574, file: !74, line: 937, baseType: !102, size: 64, offset: 64)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2574, file: !74, line: 938, baseType: !2579, size: 64, offset: 128)
!2579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2580, size: 64)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{!94, !105, !2582, !306}
!2582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2583, size: 64)
!2583 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2584)
!2584 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !74, line: 860, size: 192, elements: !2585)
!2585 = !{!2586, !2587, !2620}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2584, file: !74, line: 861, baseType: !7, size: 32)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2584, file: !74, line: 862, baseType: !2588, size: 64, offset: 64)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2590)
!2590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !74, line: 593, size: 320, elements: !2591)
!2591 = !{!2592, !2593, !2619}
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2590, file: !74, line: 594, baseType: !77, size: 32)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2590, file: !74, line: 600, baseType: !2594, size: 192, offset: 64)
!2594 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2590, file: !74, line: 595, size: 192, elements: !2595)
!2595 = !{!2596, !2600, !2605, !2615}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2594, file: !74, line: 596, baseType: !2597, size: 8)
!2597 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !74, line: 519, size: 8, elements: !2598)
!2598 = !{!2599}
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2597, file: !74, line: 520, baseType: !249, size: 8)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2594, file: !74, line: 597, baseType: !2601, size: 128)
!2601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !74, line: 528, size: 128, elements: !2602)
!2602 = !{!2603, !2604}
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2601, file: !74, line: 529, baseType: !7, size: 32)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2601, file: !74, line: 530, baseType: !2539, size: 64, offset: 64)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2594, file: !74, line: 598, baseType: !2606, size: 192)
!2606 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !74, line: 545, size: 192, elements: !2607)
!2607 = !{!2608, !2609, !2614}
!2608 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2606, file: !74, line: 546, baseType: !7, size: 32)
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2606, file: !74, line: 550, baseType: !2610, size: 64, offset: 64)
!2610 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2606, file: !74, line: 547, size: 64, elements: !2611)
!2611 = !{!2612, !2613}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2610, file: !74, line: 548, baseType: !95, size: 64)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2610, file: !74, line: 549, baseType: !1594, size: 64)
!2614 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2606, file: !74, line: 551, baseType: !306, size: 8, offset: 128)
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2594, file: !74, line: 599, baseType: !2616, size: 32)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !74, line: 558, size: 32, elements: !2617)
!2617 = !{!2618}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2616, file: !74, line: 559, baseType: !7, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2590, file: !74, line: 601, baseType: !7, size: 32, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2584, file: !74, line: 863, baseType: !7, size: 32, offset: 128)
!2621 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2574, file: !74, line: 941, baseType: !2622, size: 64, offset: 192)
!2622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2623, size: 64)
!2623 = !DISubroutineType(types: !2624)
!2624 = !{!94, !105, !94, !2625}
!2625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2626, size: 64)
!2626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2467)
!2627 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !106, file: !74, line: 1103, baseType: !7, size: 32, offset: 13824)
!2628 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !106, file: !74, line: 1106, baseType: !2625, size: 64, offset: 13888)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !106, file: !74, line: 1107, baseType: !2466, size: 64, offset: 13952)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !106, file: !74, line: 1110, baseType: !7, size: 32, offset: 14016)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !106, file: !74, line: 1111, baseType: !7, size: 32, offset: 14048)
!2632 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !106, file: !74, line: 1112, baseType: !7, size: 32, offset: 14080)
!2633 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !106, file: !74, line: 1113, baseType: !7, size: 32, offset: 14112)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !106, file: !74, line: 1114, baseType: !2635, size: 64, offset: 14144)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2637, line: 41, size: 576, elements: !2638)
!2637 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2638 = !{!2639, !2640, !2642, !2643, !2644, !2646, !2647, !2648, !2649}
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2636, file: !2637, line: 42, baseType: !94, size: 32)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2636, file: !2637, line: 43, baseType: !2641, size: 256, offset: 32)
!2641 = !DICompositeType(tag: DW_TAG_array_type, baseType: !94, size: 256, elements: !744)
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2636, file: !2637, line: 44, baseType: !94, size: 32, offset: 288)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2636, file: !2637, line: 45, baseType: !94, size: 32, offset: 320)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2636, file: !2637, line: 46, baseType: !2645, size: 64, offset: 352)
!2645 = !DICompositeType(tag: DW_TAG_array_type, baseType: !248, size: 64, elements: !744)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2636, file: !2637, line: 47, baseType: !94, size: 32, offset: 416)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2636, file: !2637, line: 48, baseType: !94, size: 32, offset: 448)
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2636, file: !2637, line: 49, baseType: !94, size: 32, offset: 480)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2636, file: !2637, line: 50, baseType: !247, size: 64, offset: 512)
!2650 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !106, file: !74, line: 1115, baseType: !2635, size: 64, offset: 14208)
!2651 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !106, file: !74, line: 1116, baseType: !2635, size: 64, offset: 14272)
!2652 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !106, file: !74, line: 1117, baseType: !2545, size: 64, offset: 14336)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !106, file: !74, line: 1120, baseType: !7, size: 32, offset: 14400)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !106, file: !74, line: 1121, baseType: !7, size: 32, offset: 14432)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !106, file: !74, line: 1122, baseType: !7, size: 32, offset: 14464)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !106, file: !74, line: 1123, baseType: !7, size: 32, offset: 14496)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !106, file: !74, line: 1124, baseType: !7, size: 32, offset: 14528)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !106, file: !74, line: 1127, baseType: !2545, size: 64, offset: 14592)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !106, file: !74, line: 1128, baseType: !2545, size: 64, offset: 14656)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !106, file: !74, line: 1132, baseType: !2661, size: 64, offset: 14720)
!2661 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !106, file: !74, line: 1129, size: 64, elements: !2662)
!2662 = !{!2663, !2664}
!2663 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2661, file: !74, line: 1130, baseType: !7, size: 32)
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2661, file: !74, line: 1131, baseType: !94, size: 32, offset: 32)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !106, file: !74, line: 1133, baseType: !190, size: 64, offset: 14784)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !106, file: !74, line: 1136, baseType: !601, size: 192, offset: 14848)
!2667 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !106, file: !74, line: 1137, baseType: !7, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !106, file: !74, line: 1138, baseType: !94, size: 32, offset: 15072)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !106, file: !74, line: 1139, baseType: !94, size: 32, offset: 15104)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !106, file: !74, line: 1142, baseType: !2671, size: 64, offset: 15168)
!2671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2568, size: 64)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !106, file: !74, line: 1143, baseType: !2673, size: 1408, offset: 15232)
!2673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !74, line: 346, size: 1408, elements: !2674)
!2674 = !{!2675, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2687, !2688, !2689, !2690, !2696, !2700, !2704, !2708, !2709, !2713, !2717, !2718, !2719, !2720, !2721}
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2673, file: !74, line: 347, baseType: !50, size: 32)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2673, file: !74, line: 348, baseType: !58, size: 32, offset: 32)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2673, file: !74, line: 349, baseType: !63, size: 32, offset: 64)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2673, file: !74, line: 350, baseType: !94, size: 32, offset: 96)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2673, file: !74, line: 351, baseType: !94, size: 32, offset: 128)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2673, file: !74, line: 352, baseType: !94, size: 32, offset: 160)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2673, file: !74, line: 353, baseType: !94, size: 32, offset: 192)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2673, file: !74, line: 354, baseType: !94, size: 32, offset: 224)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2673, file: !74, line: 355, baseType: !94, size: 32, offset: 256)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2673, file: !74, line: 356, baseType: !94, size: 32, offset: 288)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2673, file: !74, line: 357, baseType: !7, size: 32, offset: 320)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2673, file: !74, line: 358, baseType: !95, size: 64, offset: 384)
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2673, file: !74, line: 359, baseType: !2545, size: 64, offset: 448)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2673, file: !74, line: 360, baseType: !2545, size: 64, offset: 512)
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2673, file: !74, line: 361, baseType: !2524, size: 64, offset: 576)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2673, file: !74, line: 362, baseType: !2691, size: 64, offset: 640)
!2691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2692, size: 64)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!94, !105, !2694, !247}
!2694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2695, size: 64)
!2695 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !248)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2673, file: !74, line: 364, baseType: !2697, size: 64, offset: 704)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2698, size: 64)
!2698 = !DISubroutineType(types: !2699)
!2699 = !{!94, !105, !247, !247, !247}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2673, file: !74, line: 366, baseType: !2701, size: 64, offset: 768)
!2701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2702, size: 64)
!2702 = !DISubroutineType(types: !2703)
!2703 = !{!94, !105, !247, !94, !94}
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2673, file: !74, line: 368, baseType: !2705, size: 64, offset: 832)
!2705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2706, size: 64)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!94, !105, !2694, !94, !94}
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2673, file: !74, line: 370, baseType: !2701, size: 64, offset: 896)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2673, file: !74, line: 372, baseType: !2710, size: 64, offset: 960)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!94, !105, !120, !120, !247, !94}
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2673, file: !74, line: 374, baseType: !2714, size: 64, offset: 1024)
!2714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2715, size: 64)
!2715 = !DISubroutineType(types: !2716)
!2716 = !{!94, !105, !120, !120, !2694, !94, !94}
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2673, file: !74, line: 377, baseType: !2705, size: 64, offset: 1088)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2673, file: !74, line: 379, baseType: !2459, size: 64, offset: 1152)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2673, file: !74, line: 380, baseType: !2459, size: 64, offset: 1216)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2673, file: !74, line: 381, baseType: !2459, size: 64, offset: 1280)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2673, file: !74, line: 382, baseType: !2459, size: 64, offset: 1344)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !106, file: !74, line: 1144, baseType: !95, size: 64, offset: 16640)
!2723 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !98, file: !99, line: 49, baseType: !2449, size: 64, offset: 64)
!2724 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !98, file: !99, line: 50, baseType: !102, size: 64, offset: 128)
!2725 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !98, file: !99, line: 51, baseType: !2726, size: 64, offset: 192)
!2726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2727, size: 64)
!2727 = !DISubroutineType(types: !2728)
!2728 = !{null, !105, !2729}
!2729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2730, size: 64)
!2730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2419, line: 54, size: 2048, elements: !2731)
!2731 = !{!2732, !2734, !2736, !2737, !2738, !2740, !2741, !2742, !2746, !2748, !2750, !2751, !2752, !2756, !2758, !2759, !2760, !2761, !2762, !2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2779, !2780, !2781, !2782, !2783, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795}
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2730, file: !2419, line: 57, baseType: !2733, size: 32)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 32, elements: !583)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2730, file: !2419, line: 58, baseType: !2735, size: 16, offset: 32)
!2735 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1762, line: 29, baseType: !615)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2730, file: !2419, line: 59, baseType: !2735, size: 16, offset: 48)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2730, file: !2419, line: 60, baseType: !2735, size: 16, offset: 64)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2730, file: !2419, line: 61, baseType: !2739, size: 16, offset: 80)
!2739 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 16, elements: !1177)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2730, file: !2419, line: 62, baseType: !2735, size: 16, offset: 96)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2730, file: !2419, line: 63, baseType: !249, size: 8, offset: 112)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2730, file: !2419, line: 64, baseType: !2743, size: 136, offset: 120)
!2743 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 136, elements: !2744)
!2744 = !{!2745}
!2745 = !DISubrange(count: 17)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2730, file: !2419, line: 67, baseType: !2747, size: 96, offset: 256)
!2747 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 96, elements: !1429)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2730, file: !2419, line: 68, baseType: !2749, size: 160, offset: 352)
!2749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !139, size: 160, elements: !1394)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2730, file: !2419, line: 69, baseType: !249, size: 8, offset: 512)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2730, file: !2419, line: 70, baseType: !2735, size: 16, offset: 520)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2730, file: !2419, line: 71, baseType: !2753, size: 104, offset: 536)
!2753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !249, size: 104, elements: !2754)
!2754 = !{!2755}
!2755 = !DISubrange(count: 13)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2730, file: !2419, line: 74, baseType: !2757, size: 32, offset: 640)
!2757 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1762, line: 31, baseType: !92)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2730, file: !2419, line: 75, baseType: !2735, size: 16, offset: 672)
!2759 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2730, file: !2419, line: 76, baseType: !2757, size: 32, offset: 688)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2730, file: !2419, line: 77, baseType: !2735, size: 16, offset: 720)
!2761 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2730, file: !2419, line: 78, baseType: !2757, size: 32, offset: 736)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2730, file: !2419, line: 79, baseType: !2757, size: 32, offset: 768)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2730, file: !2419, line: 80, baseType: !249, size: 8, offset: 800)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2730, file: !2419, line: 81, baseType: !249, size: 8, offset: 808)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2730, file: !2419, line: 82, baseType: !249, size: 8, offset: 816)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2730, file: !2419, line: 83, baseType: !2735, size: 16, offset: 824)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2730, file: !2419, line: 84, baseType: !2735, size: 16, offset: 840)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2730, file: !2419, line: 85, baseType: !249, size: 8, offset: 856)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2730, file: !2419, line: 86, baseType: !2735, size: 16, offset: 864)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2730, file: !2419, line: 87, baseType: !249, size: 8, offset: 880)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2730, file: !2419, line: 88, baseType: !249, size: 8, offset: 888)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2730, file: !2419, line: 89, baseType: !249, size: 8, offset: 896)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2730, file: !2419, line: 90, baseType: !249, size: 8, offset: 904)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2730, file: !2419, line: 91, baseType: !249, size: 8, offset: 912)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2730, file: !2419, line: 92, baseType: !2753, size: 104, offset: 920)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2730, file: !2419, line: 95, baseType: !249, size: 8, offset: 1024)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2730, file: !2419, line: 96, baseType: !2735, size: 16, offset: 1032)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2730, file: !2419, line: 97, baseType: !2735, size: 16, offset: 1048)
!2779 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2730, file: !2419, line: 98, baseType: !2735, size: 16, offset: 1064)
!2780 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2730, file: !2419, line: 99, baseType: !2735, size: 16, offset: 1080)
!2781 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2730, file: !2419, line: 100, baseType: !2735, size: 16, offset: 1096)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2730, file: !2419, line: 101, baseType: !2735, size: 16, offset: 1112)
!2783 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2730, file: !2419, line: 102, baseType: !2735, size: 16, offset: 1128)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2730, file: !2419, line: 103, baseType: !249, size: 8, offset: 1144)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2730, file: !2419, line: 104, baseType: !2735, size: 16, offset: 1152)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2730, file: !2419, line: 105, baseType: !2735, size: 16, offset: 1168)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2730, file: !2419, line: 106, baseType: !2735, size: 16, offset: 1184)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2730, file: !2419, line: 107, baseType: !249, size: 8, offset: 1200)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2730, file: !2419, line: 108, baseType: !249, size: 8, offset: 1208)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2730, file: !2419, line: 109, baseType: !2735, size: 16, offset: 1216)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2730, file: !2419, line: 110, baseType: !2735, size: 16, offset: 1232)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2730, file: !2419, line: 111, baseType: !2406, size: 64, offset: 1248)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2730, file: !2419, line: 114, baseType: !2735, size: 16, offset: 1312)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2730, file: !2419, line: 115, baseType: !2429, size: 704, offset: 1328)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2730, file: !2419, line: 117, baseType: !2735, size: 16, offset: 2032)
!2796 = !{i32 7, !"Dwarf Version", i32 4}
!2797 = !{i32 2, !"Debug Info Version", i32 3}
!2798 = !{i32 1, !"wchar_size", i32 2}
!2799 = !{i32 1, !"Code Model", i32 2}
!2800 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2801 = distinct !DISubprogram(name: "toshiba_nand_decode_id", scope: !3, file: !3, line: 146, type: !103, scopeLine: 147, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!2802 = !DILocalVariable(name: "chip", arg: 1, scope: !2801, file: !3, line: 146, type: !105)
!2803 = !DILocation(line: 146, column: 54, scope: !2801)
!2804 = !DILocalVariable(name: "base", scope: !2801, file: !3, line: 148, type: !2339)
!2805 = !DILocation(line: 148, column: 22, scope: !2801)
!2806 = !DILocation(line: 148, column: 30, scope: !2801)
!2807 = !DILocation(line: 148, column: 36, scope: !2801)
!2808 = !DILocalVariable(name: "requirements", scope: !2801, file: !3, line: 149, type: !2311)
!2809 = !DILocation(line: 149, column: 24, scope: !2801)
!2810 = !DILocalVariable(name: "mtd", scope: !2801, file: !3, line: 150, type: !150)
!2811 = !DILocation(line: 150, column: 19, scope: !2801)
!2812 = !DILocation(line: 150, column: 37, scope: !2801)
!2813 = !DILocation(line: 150, column: 25, scope: !2801)
!2814 = !DILocalVariable(name: "memorg", scope: !2801, file: !3, line: 151, type: !2815)
!2815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2296, size: 64)
!2816 = !DILocation(line: 151, column: 35, scope: !2801)
!2817 = !DILocation(line: 153, column: 31, scope: !2801)
!2818 = !DILocation(line: 153, column: 37, scope: !2801)
!2819 = !DILocation(line: 153, column: 11, scope: !2801)
!2820 = !DILocation(line: 153, column: 9, scope: !2801)
!2821 = !DILocation(line: 155, column: 21, scope: !2801)
!2822 = !DILocation(line: 155, column: 2, scope: !2801)
!2823 = !DILocation(line: 165, column: 6, scope: !2824)
!2824 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 165, column: 6)
!2825 = !DILocation(line: 165, column: 12, scope: !2824)
!2826 = !DILocation(line: 165, column: 15, scope: !2824)
!2827 = !DILocation(line: 165, column: 19, scope: !2824)
!2828 = !DILocation(line: 165, column: 24, scope: !2824)
!2829 = !DILocation(line: 165, column: 39, scope: !2824)
!2830 = !DILocation(line: 165, column: 27, scope: !2824)
!2831 = !DILocation(line: 165, column: 45, scope: !2824)
!2832 = !DILocation(line: 166, column: 7, scope: !2824)
!2833 = !DILocation(line: 166, column: 13, scope: !2824)
!2834 = !DILocation(line: 166, column: 16, scope: !2824)
!2835 = !DILocation(line: 166, column: 24, scope: !2824)
!2836 = !DILocation(line: 166, column: 31, scope: !2824)
!2837 = !DILocation(line: 166, column: 49, scope: !2824)
!2838 = !DILocation(line: 167, column: 8, scope: !2824)
!2839 = !DILocation(line: 167, column: 14, scope: !2824)
!2840 = !DILocation(line: 167, column: 17, scope: !2824)
!2841 = !DILocation(line: 167, column: 25, scope: !2824)
!2842 = !DILocation(line: 165, column: 6, scope: !2801)
!2843 = !DILocation(line: 168, column: 26, scope: !2844)
!2844 = distinct !DILexicalBlock(scope: !2824, file: !3, line: 167, column: 70)
!2845 = !DILocation(line: 168, column: 34, scope: !2844)
!2846 = !DILocation(line: 168, column: 24, scope: !2844)
!2847 = !DILocation(line: 168, column: 43, scope: !2844)
!2848 = !DILocation(line: 168, column: 3, scope: !2844)
!2849 = !DILocation(line: 168, column: 11, scope: !2844)
!2850 = !DILocation(line: 168, column: 19, scope: !2844)
!2851 = !DILocation(line: 169, column: 18, scope: !2844)
!2852 = !DILocation(line: 169, column: 26, scope: !2844)
!2853 = !DILocation(line: 169, column: 3, scope: !2844)
!2854 = !DILocation(line: 169, column: 8, scope: !2844)
!2855 = !DILocation(line: 169, column: 16, scope: !2844)
!2856 = !DILocation(line: 170, column: 2, scope: !2844)
!2857 = !DILocation(line: 179, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2801, file: !3, line: 179, column: 6)
!2859 = !DILocation(line: 179, column: 12, scope: !2858)
!2860 = !DILocation(line: 179, column: 15, scope: !2858)
!2861 = !DILocation(line: 179, column: 19, scope: !2858)
!2862 = !DILocation(line: 179, column: 24, scope: !2858)
!2863 = !DILocation(line: 179, column: 39, scope: !2858)
!2864 = !DILocation(line: 179, column: 27, scope: !2858)
!2865 = !DILocation(line: 179, column: 6, scope: !2801)
!2866 = !DILocation(line: 180, column: 16, scope: !2867)
!2867 = distinct !DILexicalBlock(scope: !2858, file: !3, line: 179, column: 46)
!2868 = !DILocation(line: 180, column: 26, scope: !2867)
!2869 = !DILocation(line: 181, column: 11, scope: !2867)
!2870 = !DILocation(line: 181, column: 17, scope: !2867)
!2871 = !DILocation(line: 181, column: 20, scope: !2867)
!2872 = !DILocation(line: 181, column: 28, scope: !2867)
!2873 = !DILocation(line: 181, column: 3, scope: !2867)
!2874 = !DILocation(line: 183, column: 17, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2867, file: !3, line: 181, column: 35)
!2876 = !DILocation(line: 183, column: 26, scope: !2875)
!2877 = !DILocation(line: 184, column: 4, scope: !2875)
!2878 = !DILocation(line: 186, column: 17, scope: !2875)
!2879 = !DILocation(line: 186, column: 26, scope: !2875)
!2880 = !DILocation(line: 187, column: 4, scope: !2875)
!2881 = !DILocation(line: 189, column: 17, scope: !2875)
!2882 = !DILocation(line: 189, column: 26, scope: !2875)
!2883 = !DILocation(line: 190, column: 4, scope: !2875)
!2884 = !DILocalVariable(name: "__ret_warn_on", scope: !2885, file: !3, line: 192, type: !94)
!2885 = distinct !DILexicalBlock(scope: !2875, file: !3, line: 192, column: 4)
!2886 = !DILocation(line: 192, column: 4, scope: !2885)
!2887 = !DILocation(line: 192, column: 4, scope: !2888)
!2888 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 192, column: 4)
!2889 = !DILocation(line: 192, column: 4, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2888, file: !3, line: 192, column: 4)
!2891 = !DILocation(line: 192, column: 4, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 192, column: 4)
!2893 = !DILocation(line: 192, column: 4, scope: !2894)
!2894 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 192, column: 4)
!2895 = !DILocation(line: 192, column: 4, scope: !2896)
!2896 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 192, column: 4)
!2897 = !DILocation(line: 192, column: 4, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 192, column: 4)
!2899 = !{i32 -2143493143, i32 -2143493114, i32 -2143493068, i32 -2143493010, i32 -2143492956, i32 -2143492902, i32 -2143492847, i32 -2143492816}
!2900 = !DILocation(line: 192, column: 4, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 192, column: 4)
!2902 = !{i32 -2143492388, i32 -2143492381, i32 -2143492329, i32 -2143492298, i32 -2143492268}
!2903 = !DILocation(line: 192, column: 4, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 192, column: 4)
!2905 = !DILocation(line: 192, column: 4, scope: !2906)
!2906 = distinct !DILexicalBlock(scope: !2890, file: !3, line: 192, column: 4)
!2907 = !DILocation(line: 193, column: 17, scope: !2875)
!2908 = !DILocation(line: 193, column: 27, scope: !2875)
!2909 = !DILocation(line: 194, column: 4, scope: !2875)
!2910 = !DILocation(line: 196, column: 2, scope: !2867)
!2911 = !DILocation(line: 198, column: 31, scope: !2801)
!2912 = !DILocation(line: 198, column: 2, scope: !2801)
!2913 = !DILocation(line: 199, column: 1, scope: !2801)
!2914 = distinct !DISubprogram(name: "toshiba_nand_init", scope: !3, file: !3, line: 274, type: !2450, scopeLine: 275, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!2915 = !DILocalVariable(name: "chip", arg: 1, scope: !2914, file: !3, line: 274, type: !105)
!2916 = !DILocation(line: 274, column: 48, scope: !2914)
!2917 = !DILocation(line: 276, column: 18, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 276, column: 6)
!2919 = !DILocation(line: 276, column: 6, scope: !2918)
!2920 = !DILocation(line: 276, column: 6, scope: !2914)
!2921 = !DILocation(line: 277, column: 3, scope: !2918)
!2922 = !DILocation(line: 277, column: 9, scope: !2918)
!2923 = !DILocation(line: 277, column: 17, scope: !2918)
!2924 = !DILocation(line: 280, column: 18, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 280, column: 6)
!2926 = !DILocation(line: 280, column: 6, scope: !2925)
!2927 = !DILocation(line: 280, column: 24, scope: !2925)
!2928 = !DILocation(line: 281, column: 6, scope: !2925)
!2929 = !DILocation(line: 281, column: 12, scope: !2925)
!2930 = !DILocation(line: 281, column: 16, scope: !2925)
!2931 = !DILocation(line: 281, column: 28, scope: !2925)
!2932 = !DILocation(line: 281, column: 59, scope: !2925)
!2933 = !DILocation(line: 282, column: 6, scope: !2925)
!2934 = !DILocation(line: 282, column: 12, scope: !2925)
!2935 = !DILocation(line: 282, column: 15, scope: !2925)
!2936 = !DILocation(line: 282, column: 23, scope: !2925)
!2937 = !DILocation(line: 280, column: 6, scope: !2914)
!2938 = !DILocation(line: 283, column: 28, scope: !2925)
!2939 = !DILocation(line: 283, column: 3, scope: !2925)
!2940 = !DILocation(line: 285, column: 33, scope: !2941)
!2941 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 285, column: 6)
!2942 = !DILocation(line: 285, column: 39, scope: !2941)
!2943 = !DILocation(line: 285, column: 50, scope: !2941)
!2944 = !DILocation(line: 285, column: 7, scope: !2941)
!2945 = !DILocation(line: 285, column: 6, scope: !2914)
!2946 = !DILocation(line: 286, column: 24, scope: !2941)
!2947 = !DILocation(line: 286, column: 3, scope: !2941)
!2948 = !DILocation(line: 287, column: 30, scope: !2949)
!2949 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 287, column: 6)
!2950 = !DILocation(line: 287, column: 36, scope: !2949)
!2951 = !DILocation(line: 287, column: 47, scope: !2949)
!2952 = !DILocation(line: 287, column: 7, scope: !2949)
!2953 = !DILocation(line: 287, column: 6, scope: !2914)
!2954 = !DILocation(line: 289, column: 20, scope: !2949)
!2955 = !DILocation(line: 289, column: 3, scope: !2949)
!2956 = !DILocation(line: 290, column: 34, scope: !2957)
!2957 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 290, column: 6)
!2958 = !DILocation(line: 290, column: 40, scope: !2957)
!2959 = !DILocation(line: 290, column: 51, scope: !2957)
!2960 = !DILocation(line: 290, column: 7, scope: !2957)
!2961 = !DILocation(line: 290, column: 6, scope: !2914)
!2962 = !DILocation(line: 292, column: 24, scope: !2957)
!2963 = !DILocation(line: 292, column: 3, scope: !2957)
!2964 = !DILocation(line: 294, column: 2, scope: !2914)
!2965 = distinct !DISubprogram(name: "nand_to_mtd", scope: !74, file: !74, line: 1152, type: !2966, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!150, !105}
!2968 = !DILocalVariable(name: "chip", arg: 1, scope: !2965, file: !74, line: 1152, type: !105)
!2969 = !DILocation(line: 1152, column: 62, scope: !2965)
!2970 = !DILocation(line: 1154, column: 10, scope: !2965)
!2971 = !DILocation(line: 1154, column: 16, scope: !2965)
!2972 = !DILocation(line: 1154, column: 21, scope: !2965)
!2973 = !DILocation(line: 1154, column: 2, scope: !2965)
!2974 = distinct !DISubprogram(name: "nanddev_get_memorg", scope: !51, file: !51, line: 521, type: !2975, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!2975 = !DISubroutineType(types: !2976)
!2976 = !{!2815, !2339}
!2977 = !DILocalVariable(name: "nand", arg: 1, scope: !2974, file: !51, line: 521, type: !2339)
!2978 = !DILocation(line: 521, column: 40, scope: !2974)
!2979 = !DILocation(line: 523, column: 10, scope: !2974)
!2980 = !DILocation(line: 523, column: 16, scope: !2974)
!2981 = !DILocation(line: 523, column: 2, scope: !2974)
!2982 = distinct !DISubprogram(name: "nand_is_slc", scope: !74, file: !74, line: 1281, type: !2983, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!2983 = !DISubroutineType(types: !2984)
!2984 = !{!306, !105}
!2985 = !DILocalVariable(name: "chip", arg: 1, scope: !2982, file: !74, line: 1281, type: !105)
!2986 = !DILocation(line: 1281, column: 50, scope: !2982)
!2987 = !DILocalVariable(name: "__ret_warn_on", scope: !2988, file: !74, line: 1283, type: !94)
!2988 = distinct !DILexicalBlock(scope: !2982, file: !74, line: 1283, column: 2)
!2989 = !DILocation(line: 1283, column: 2, scope: !2988)
!2990 = !DILocation(line: 1283, column: 2, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2988, file: !74, line: 1283, column: 2)
!2992 = !DILocation(line: 1283, column: 2, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2991, file: !74, line: 1283, column: 2)
!2994 = !DILocation(line: 1283, column: 2, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2993, file: !74, line: 1283, column: 2)
!2996 = !DILocation(line: 1283, column: 2, scope: !2997)
!2997 = distinct !DILexicalBlock(scope: !2993, file: !74, line: 1283, column: 2)
!2998 = !DILocation(line: 1283, column: 2, scope: !2999)
!2999 = distinct !DILexicalBlock(scope: !2997, file: !74, line: 1283, column: 2)
!3000 = !DILocation(line: 1283, column: 2, scope: !3001)
!3001 = distinct !DILexicalBlock(scope: !2997, file: !74, line: 1283, column: 2)
!3002 = !{i32 -2143501256, i32 -2143501227, i32 -2143501181, i32 -2143501123, i32 -2143501069, i32 -2143501015, i32 -2143500960, i32 -2143500929}
!3003 = !DILocation(line: 1283, column: 2, scope: !3004)
!3004 = distinct !DILexicalBlock(scope: !2997, file: !74, line: 1283, column: 2)
!3005 = !{i32 -2143500508, i32 -2143500501, i32 -2143500449, i32 -2143500418, i32 -2143500388}
!3006 = !DILocation(line: 1283, column: 2, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2997, file: !74, line: 1283, column: 2)
!3008 = !DILocation(line: 1283, column: 2, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2993, file: !74, line: 1283, column: 2)
!3010 = !DILocation(line: 1285, column: 32, scope: !2982)
!3011 = !DILocation(line: 1285, column: 38, scope: !2982)
!3012 = !DILocation(line: 1285, column: 9, scope: !2982)
!3013 = !DILocation(line: 1285, column: 44, scope: !2982)
!3014 = !DILocation(line: 1285, column: 2, scope: !2982)
!3015 = distinct !DISubprogram(name: "nanddev_set_ecc_requirements", scope: !51, file: !51, line: 554, type: !3016, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3016 = !DISubroutineType(types: !3017)
!3017 = !{null, !2339, !3018}
!3018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3019, size: 64)
!3019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2311)
!3020 = !DILocalVariable(name: "nand", arg: 1, scope: !3015, file: !51, line: 554, type: !2339)
!3021 = !DILocation(line: 554, column: 50, scope: !3015)
!3022 = !DILocalVariable(name: "reqs", arg: 2, scope: !3015, file: !51, line: 555, type: !3018)
!3023 = !DILocation(line: 555, column: 38, scope: !3015)
!3024 = !DILocation(line: 557, column: 2, scope: !3015)
!3025 = !DILocation(line: 557, column: 8, scope: !3015)
!3026 = !DILocation(line: 557, column: 12, scope: !3015)
!3027 = !DILocation(line: 557, column: 28, scope: !3015)
!3028 = !DILocation(line: 557, column: 27, scope: !3015)
!3029 = !DILocation(line: 558, column: 1, scope: !3015)
!3030 = distinct !DISubprogram(name: "nanddev_bits_per_cell", scope: !51, file: !51, line: 374, type: !3031, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3031 = !DISubroutineType(types: !3032)
!3032 = !{!7, !3033}
!3033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3034, size: 64)
!3034 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !109)
!3035 = !DILocalVariable(name: "nand", arg: 1, scope: !3030, file: !51, line: 374, type: !3033)
!3036 = !DILocation(line: 374, column: 76, scope: !3030)
!3037 = !DILocation(line: 376, column: 9, scope: !3030)
!3038 = !DILocation(line: 376, column: 15, scope: !3030)
!3039 = !DILocation(line: 376, column: 22, scope: !3030)
!3040 = !DILocation(line: 376, column: 2, scope: !3030)
!3041 = distinct !DISubprogram(name: "toshiba_nand_benand_init", scope: !3, file: !3, line: 122, type: !103, scopeLine: 123, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3042 = !DILocalVariable(name: "chip", arg: 1, scope: !3041, file: !3, line: 122, type: !105)
!3043 = !DILocation(line: 122, column: 56, scope: !3041)
!3044 = !DILocalVariable(name: "mtd", scope: !3041, file: !3, line: 124, type: !150)
!3045 = !DILocation(line: 124, column: 19, scope: !3041)
!3046 = !DILocation(line: 124, column: 37, scope: !3041)
!3047 = !DILocation(line: 124, column: 25, scope: !3041)
!3048 = !DILocation(line: 132, column: 2, scope: !3041)
!3049 = !DILocation(line: 132, column: 8, scope: !3041)
!3050 = !DILocation(line: 132, column: 12, scope: !3041)
!3051 = !DILocation(line: 132, column: 18, scope: !3041)
!3052 = !DILocation(line: 133, column: 2, scope: !3041)
!3053 = !DILocation(line: 133, column: 8, scope: !3041)
!3054 = !DILocation(line: 133, column: 12, scope: !3041)
!3055 = !DILocation(line: 133, column: 17, scope: !3041)
!3056 = !DILocation(line: 134, column: 2, scope: !3041)
!3057 = !DILocation(line: 134, column: 8, scope: !3041)
!3058 = !DILocation(line: 134, column: 12, scope: !3041)
!3059 = !DILocation(line: 134, column: 21, scope: !3041)
!3060 = !DILocation(line: 135, column: 2, scope: !3041)
!3061 = !DILocation(line: 135, column: 8, scope: !3041)
!3062 = !DILocation(line: 135, column: 12, scope: !3041)
!3063 = !DILocation(line: 135, column: 22, scope: !3041)
!3064 = !DILocation(line: 136, column: 2, scope: !3041)
!3065 = !DILocation(line: 136, column: 8, scope: !3041)
!3066 = !DILocation(line: 136, column: 12, scope: !3041)
!3067 = !DILocation(line: 136, column: 25, scope: !3041)
!3068 = !DILocation(line: 137, column: 2, scope: !3041)
!3069 = !DILocation(line: 137, column: 8, scope: !3041)
!3070 = !DILocation(line: 137, column: 12, scope: !3041)
!3071 = !DILocation(line: 137, column: 23, scope: !3041)
!3072 = !DILocation(line: 138, column: 2, scope: !3041)
!3073 = !DILocation(line: 138, column: 8, scope: !3041)
!3074 = !DILocation(line: 138, column: 12, scope: !3041)
!3075 = !DILocation(line: 138, column: 26, scope: !3041)
!3076 = !DILocation(line: 139, column: 2, scope: !3041)
!3077 = !DILocation(line: 139, column: 8, scope: !3041)
!3078 = !DILocation(line: 139, column: 12, scope: !3041)
!3079 = !DILocation(line: 139, column: 27, scope: !3041)
!3080 = !DILocation(line: 141, column: 2, scope: !3041)
!3081 = !DILocation(line: 141, column: 8, scope: !3041)
!3082 = !DILocation(line: 141, column: 16, scope: !3041)
!3083 = !DILocation(line: 143, column: 20, scope: !3041)
!3084 = !DILocation(line: 143, column: 25, scope: !3041)
!3085 = !DILocation(line: 143, column: 2, scope: !3041)
!3086 = !DILocation(line: 144, column: 1, scope: !3041)
!3087 = distinct !DISubprogram(name: "tc58teg5dclta00_init", scope: !3, file: !3, line: 246, type: !2450, scopeLine: 247, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3088 = !DILocalVariable(name: "chip", arg: 1, scope: !3087, file: !3, line: 246, type: !105)
!3089 = !DILocation(line: 246, column: 51, scope: !3087)
!3090 = !DILocalVariable(name: "mtd", scope: !3087, file: !3, line: 248, type: !150)
!3091 = !DILocation(line: 248, column: 19, scope: !3087)
!3092 = !DILocation(line: 248, column: 37, scope: !3087)
!3093 = !DILocation(line: 248, column: 25, scope: !3087)
!3094 = !DILocation(line: 250, column: 2, scope: !3087)
!3095 = !DILocation(line: 250, column: 8, scope: !3087)
!3096 = !DILocation(line: 250, column: 12, scope: !3087)
!3097 = !DILocation(line: 250, column: 36, scope: !3087)
!3098 = !DILocation(line: 252, column: 2, scope: !3087)
!3099 = !DILocation(line: 252, column: 8, scope: !3087)
!3100 = !DILocation(line: 252, column: 16, scope: !3087)
!3101 = !DILocation(line: 253, column: 25, scope: !3087)
!3102 = !DILocation(line: 253, column: 2, scope: !3087)
!3103 = !DILocation(line: 255, column: 2, scope: !3087)
!3104 = distinct !DISubprogram(name: "tc58nvg0s3e_init", scope: !3, file: !3, line: 258, type: !2450, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3105 = !DILocalVariable(name: "chip", arg: 1, scope: !3104, file: !3, line: 258, type: !105)
!3106 = !DILocation(line: 258, column: 47, scope: !3104)
!3107 = !DILocation(line: 260, column: 2, scope: !3104)
!3108 = !DILocation(line: 260, column: 8, scope: !3104)
!3109 = !DILocation(line: 260, column: 12, scope: !3104)
!3110 = !DILocation(line: 260, column: 36, scope: !3104)
!3111 = !DILocation(line: 263, column: 2, scope: !3104)
!3112 = distinct !DISubprogram(name: "th58nvg2s3hbai4_init", scope: !3, file: !3, line: 266, type: !2450, scopeLine: 267, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3113 = !DILocalVariable(name: "chip", arg: 1, scope: !3112, file: !3, line: 266, type: !105)
!3114 = !DILocation(line: 266, column: 51, scope: !3112)
!3115 = !DILocation(line: 268, column: 2, scope: !3112)
!3116 = !DILocation(line: 268, column: 8, scope: !3112)
!3117 = !DILocation(line: 268, column: 12, scope: !3112)
!3118 = !DILocation(line: 268, column: 36, scope: !3112)
!3119 = !DILocation(line: 271, column: 2, scope: !3112)
!3120 = distinct !DISubprogram(name: "toshiba_nand_read_page_benand", scope: !3, file: !3, line: 96, type: !2702, scopeLine: 98, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3121 = !DILocalVariable(name: "chip", arg: 1, scope: !3120, file: !3, line: 96, type: !105)
!3122 = !DILocation(line: 96, column: 49, scope: !3120)
!3123 = !DILocalVariable(name: "buf", arg: 2, scope: !3120, file: !3, line: 96, type: !247)
!3124 = !DILocation(line: 96, column: 64, scope: !3120)
!3125 = !DILocalVariable(name: "oob_required", arg: 3, scope: !3120, file: !3, line: 97, type: !94)
!3126 = !DILocation(line: 97, column: 14, scope: !3120)
!3127 = !DILocalVariable(name: "page", arg: 4, scope: !3120, file: !3, line: 97, type: !94)
!3128 = !DILocation(line: 97, column: 32, scope: !3120)
!3129 = !DILocalVariable(name: "ret", scope: !3120, file: !3, line: 99, type: !94)
!3130 = !DILocation(line: 99, column: 6, scope: !3120)
!3131 = !DILocation(line: 101, column: 27, scope: !3120)
!3132 = !DILocation(line: 101, column: 33, scope: !3120)
!3133 = !DILocation(line: 101, column: 38, scope: !3120)
!3134 = !DILocation(line: 101, column: 52, scope: !3120)
!3135 = !DILocation(line: 101, column: 8, scope: !3120)
!3136 = !DILocation(line: 101, column: 6, scope: !3120)
!3137 = !DILocation(line: 102, column: 6, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3120, file: !3, line: 102, column: 6)
!3139 = !DILocation(line: 102, column: 6, scope: !3120)
!3140 = !DILocation(line: 103, column: 10, scope: !3138)
!3141 = !DILocation(line: 103, column: 3, scope: !3138)
!3142 = !DILocation(line: 105, column: 39, scope: !3120)
!3143 = !DILocation(line: 105, column: 9, scope: !3120)
!3144 = !DILocation(line: 105, column: 2, scope: !3120)
!3145 = !DILocation(line: 106, column: 1, scope: !3120)
!3146 = distinct !DISubprogram(name: "toshiba_nand_read_subpage_benand", scope: !3, file: !3, line: 109, type: !2711, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3147 = !DILocalVariable(name: "chip", arg: 1, scope: !3146, file: !3, line: 109, type: !105)
!3148 = !DILocation(line: 109, column: 52, scope: !3146)
!3149 = !DILocalVariable(name: "data_offs", arg: 2, scope: !3146, file: !3, line: 109, type: !120)
!3150 = !DILocation(line: 109, column: 67, scope: !3146)
!3151 = !DILocalVariable(name: "readlen", arg: 3, scope: !3146, file: !3, line: 110, type: !120)
!3152 = !DILocation(line: 110, column: 15, scope: !3146)
!3153 = !DILocalVariable(name: "bufpoi", arg: 4, scope: !3146, file: !3, line: 110, type: !247)
!3154 = !DILocation(line: 110, column: 33, scope: !3146)
!3155 = !DILocalVariable(name: "page", arg: 5, scope: !3146, file: !3, line: 110, type: !94)
!3156 = !DILocation(line: 110, column: 45, scope: !3146)
!3157 = !DILocalVariable(name: "ret", scope: !3146, file: !3, line: 112, type: !94)
!3158 = !DILocation(line: 112, column: 6, scope: !3146)
!3159 = !DILocation(line: 114, column: 26, scope: !3146)
!3160 = !DILocation(line: 114, column: 32, scope: !3146)
!3161 = !DILocation(line: 114, column: 38, scope: !3146)
!3162 = !DILocation(line: 115, column: 5, scope: !3146)
!3163 = !DILocation(line: 115, column: 14, scope: !3146)
!3164 = !DILocation(line: 115, column: 12, scope: !3146)
!3165 = !DILocation(line: 115, column: 25, scope: !3146)
!3166 = !DILocation(line: 114, column: 8, scope: !3146)
!3167 = !DILocation(line: 114, column: 6, scope: !3146)
!3168 = !DILocation(line: 116, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3146, file: !3, line: 116, column: 6)
!3170 = !DILocation(line: 116, column: 6, scope: !3146)
!3171 = !DILocation(line: 117, column: 10, scope: !3169)
!3172 = !DILocation(line: 117, column: 3, scope: !3169)
!3173 = !DILocation(line: 119, column: 39, scope: !3146)
!3174 = !DILocation(line: 119, column: 9, scope: !3146)
!3175 = !DILocation(line: 119, column: 2, scope: !3146)
!3176 = !DILocation(line: 120, column: 1, scope: !3146)
!3177 = distinct !DISubprogram(name: "mtd_set_ooblayout", scope: !113, file: !113, line: 443, type: !3178, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3178 = !DISubroutineType(types: !3179)
!3179 = !{null, !150, !142}
!3180 = !DILocalVariable(name: "mtd", arg: 1, scope: !3177, file: !113, line: 443, type: !150)
!3181 = !DILocation(line: 443, column: 55, scope: !3177)
!3182 = !DILocalVariable(name: "ooblayout", arg: 2, scope: !3177, file: !113, line: 444, type: !142)
!3183 = !DILocation(line: 444, column: 42, scope: !3177)
!3184 = !DILocation(line: 446, column: 19, scope: !3177)
!3185 = !DILocation(line: 446, column: 2, scope: !3177)
!3186 = !DILocation(line: 446, column: 7, scope: !3177)
!3187 = !DILocation(line: 446, column: 17, scope: !3177)
!3188 = !DILocation(line: 447, column: 1, scope: !3177)
!3189 = distinct !DISubprogram(name: "toshiba_nand_benand_eccstatus", scope: !3, file: !3, line: 50, type: !2450, scopeLine: 51, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3190 = !DILocalVariable(name: "chip", arg: 1, scope: !3189, file: !3, line: 50, type: !105)
!3191 = !DILocation(line: 50, column: 60, scope: !3189)
!3192 = !DILocalVariable(name: "mtd", scope: !3189, file: !3, line: 52, type: !150)
!3193 = !DILocation(line: 52, column: 19, scope: !3189)
!3194 = !DILocation(line: 52, column: 37, scope: !3189)
!3195 = !DILocation(line: 52, column: 25, scope: !3189)
!3196 = !DILocalVariable(name: "ret", scope: !3189, file: !3, line: 53, type: !94)
!3197 = !DILocation(line: 53, column: 6, scope: !3189)
!3198 = !DILocalVariable(name: "max_bitflips", scope: !3189, file: !3, line: 54, type: !7)
!3199 = !DILocation(line: 54, column: 15, scope: !3189)
!3200 = !DILocalVariable(name: "status", scope: !3189, file: !3, line: 55, type: !249)
!3201 = !DILocation(line: 55, column: 5, scope: !3189)
!3202 = !DILocalVariable(name: "ecc_status", scope: !3189, file: !3, line: 55, type: !2406)
!3203 = !DILocation(line: 55, column: 13, scope: !3189)
!3204 = !DILocation(line: 58, column: 46, scope: !3189)
!3205 = !DILocation(line: 58, column: 52, scope: !3189)
!3206 = !DILocation(line: 58, column: 8, scope: !3189)
!3207 = !DILocation(line: 58, column: 6, scope: !3189)
!3208 = !DILocation(line: 59, column: 7, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 59, column: 6)
!3210 = !DILocation(line: 59, column: 6, scope: !3189)
!3211 = !DILocalVariable(name: "i", scope: !3212, file: !3, line: 60, type: !7)
!3212 = distinct !DILexicalBlock(scope: !3209, file: !3, line: 59, column: 12)
!3213 = !DILocation(line: 60, column: 16, scope: !3212)
!3214 = !DILocalVariable(name: "bitflips", scope: !3212, file: !3, line: 60, type: !7)
!3215 = !DILocation(line: 60, column: 19, scope: !3212)
!3216 = !DILocation(line: 62, column: 10, scope: !3217)
!3217 = distinct !DILexicalBlock(scope: !3212, file: !3, line: 62, column: 3)
!3218 = !DILocation(line: 62, column: 8, scope: !3217)
!3219 = !DILocation(line: 62, column: 15, scope: !3220)
!3220 = distinct !DILexicalBlock(scope: !3217, file: !3, line: 62, column: 3)
!3221 = !DILocation(line: 62, column: 19, scope: !3220)
!3222 = !DILocation(line: 62, column: 25, scope: !3220)
!3223 = !DILocation(line: 62, column: 29, scope: !3220)
!3224 = !DILocation(line: 62, column: 17, scope: !3220)
!3225 = !DILocation(line: 62, column: 3, scope: !3217)
!3226 = !DILocation(line: 63, column: 26, scope: !3227)
!3227 = distinct !DILexicalBlock(scope: !3220, file: !3, line: 62, column: 41)
!3228 = !DILocation(line: 63, column: 15, scope: !3227)
!3229 = !DILocation(line: 63, column: 29, scope: !3227)
!3230 = !DILocation(line: 63, column: 13, scope: !3227)
!3231 = !DILocation(line: 64, column: 8, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3227, file: !3, line: 64, column: 8)
!3233 = !DILocation(line: 64, column: 17, scope: !3232)
!3234 = !DILocation(line: 64, column: 8, scope: !3227)
!3235 = !DILocation(line: 65, column: 5, scope: !3236)
!3236 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 64, column: 52)
!3237 = !DILocation(line: 65, column: 10, scope: !3236)
!3238 = !DILocation(line: 65, column: 20, scope: !3236)
!3239 = !DILocation(line: 65, column: 26, scope: !3236)
!3240 = !DILocation(line: 66, column: 4, scope: !3236)
!3241 = !DILocation(line: 67, column: 33, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 66, column: 11)
!3243 = !DILocation(line: 67, column: 5, scope: !3242)
!3244 = !DILocation(line: 67, column: 10, scope: !3242)
!3245 = !DILocation(line: 67, column: 20, scope: !3242)
!3246 = !DILocation(line: 67, column: 30, scope: !3242)
!3247 = !DILocalVariable(name: "__UNIQUE_ID___x170", scope: !3248, file: !3, line: 68, type: !7)
!3248 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 68, column: 20)
!3249 = !DILocation(line: 68, column: 20, scope: !3248)
!3250 = !DILocalVariable(name: "__UNIQUE_ID___y171", scope: !3248, file: !3, line: 68, type: !7)
!3251 = !DILocation(line: 68, column: 18, scope: !3242)
!3252 = !DILocation(line: 70, column: 3, scope: !3227)
!3253 = !DILocation(line: 62, column: 37, scope: !3220)
!3254 = !DILocation(line: 62, column: 3, scope: !3220)
!3255 = distinct !{!3255, !3225, !3256}
!3256 = !DILocation(line: 70, column: 3, scope: !3217)
!3257 = !DILocation(line: 72, column: 10, scope: !3212)
!3258 = !DILocation(line: 72, column: 3, scope: !3212)
!3259 = !DILocation(line: 79, column: 23, scope: !3189)
!3260 = !DILocation(line: 79, column: 8, scope: !3189)
!3261 = !DILocation(line: 79, column: 6, scope: !3189)
!3262 = !DILocation(line: 80, column: 6, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 80, column: 6)
!3264 = !DILocation(line: 80, column: 6, scope: !3189)
!3265 = !DILocation(line: 81, column: 10, scope: !3263)
!3266 = !DILocation(line: 81, column: 3, scope: !3263)
!3267 = !DILocation(line: 83, column: 6, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3189, file: !3, line: 83, column: 6)
!3269 = !DILocation(line: 83, column: 13, scope: !3268)
!3270 = !DILocation(line: 83, column: 6, scope: !3189)
!3271 = !DILocation(line: 85, column: 3, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 83, column: 33)
!3273 = !DILocation(line: 85, column: 8, scope: !3272)
!3274 = !DILocation(line: 85, column: 18, scope: !3272)
!3275 = !DILocation(line: 85, column: 24, scope: !3272)
!3276 = !DILocation(line: 86, column: 2, scope: !3272)
!3277 = !DILocation(line: 86, column: 13, scope: !3278)
!3278 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 86, column: 13)
!3279 = !DILocation(line: 86, column: 20, scope: !3278)
!3280 = !DILocation(line: 86, column: 13, scope: !3268)
!3281 = !DILocation(line: 88, column: 18, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3278, file: !3, line: 86, column: 63)
!3283 = !DILocation(line: 88, column: 23, scope: !3282)
!3284 = !DILocation(line: 88, column: 16, scope: !3282)
!3285 = !DILocation(line: 89, column: 31, scope: !3282)
!3286 = !DILocation(line: 89, column: 3, scope: !3282)
!3287 = !DILocation(line: 89, column: 8, scope: !3282)
!3288 = !DILocation(line: 89, column: 18, scope: !3282)
!3289 = !DILocation(line: 89, column: 28, scope: !3282)
!3290 = !DILocation(line: 90, column: 2, scope: !3282)
!3291 = !DILocation(line: 92, column: 9, scope: !3189)
!3292 = !DILocation(line: 92, column: 2, scope: !3189)
!3293 = !DILocation(line: 93, column: 1, scope: !3189)
!3294 = distinct !DISubprogram(name: "toshiba_nand_benand_read_eccstatus_op", scope: !3, file: !3, line: 29, type: !3295, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3295 = !DISubroutineType(types: !3296)
!3296 = !{!94, !105, !2545}
!3297 = !DILocalVariable(name: "chip", arg: 1, scope: !3294, file: !3, line: 29, type: !105)
!3298 = !DILocation(line: 29, column: 68, scope: !3294)
!3299 = !DILocalVariable(name: "buf", arg: 2, scope: !3294, file: !3, line: 30, type: !2545)
!3300 = !DILocation(line: 30, column: 12, scope: !3294)
!3301 = !DILocalVariable(name: "ecc_status", scope: !3294, file: !3, line: 32, type: !2545)
!3302 = !DILocation(line: 32, column: 6, scope: !3294)
!3303 = !DILocation(line: 32, column: 19, scope: !3294)
!3304 = !DILocation(line: 34, column: 23, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 34, column: 6)
!3306 = !DILocation(line: 34, column: 6, scope: !3305)
!3307 = !DILocation(line: 34, column: 6, scope: !3294)
!3308 = !DILocalVariable(name: "sdr", scope: !3309, file: !3, line: 35, type: !3310)
!3309 = distinct !DILexicalBlock(scope: !3305, file: !3, line: 34, column: 30)
!3310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3311, size: 64)
!3311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2478)
!3312 = !DILocation(line: 35, column: 34, scope: !3309)
!3313 = !DILocation(line: 36, column: 51, scope: !3309)
!3314 = !DILocation(line: 36, column: 25, scope: !3309)
!3315 = !DILocation(line: 36, column: 4, scope: !3309)
!3316 = !DILocalVariable(name: "instrs", scope: !3309, file: !3, line: 37, type: !3317)
!3317 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2590, size: 640, elements: !1177)
!3318 = !DILocation(line: 37, column: 24, scope: !3309)
!3319 = !DILocation(line: 37, column: 35, scope: !3309)
!3320 = !DILocation(line: 38, column: 4, scope: !3309)
!3321 = !DILocation(line: 38, column: 4, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 38, column: 4)
!3323 = !DILocation(line: 40, column: 4, scope: !3309)
!3324 = !DILocalVariable(name: "op", scope: !3309, file: !3, line: 42, type: !2584)
!3325 = !DILocation(line: 42, column: 25, scope: !3309)
!3326 = !DILocation(line: 42, column: 30, scope: !3309)
!3327 = !DILocation(line: 44, column: 23, scope: !3309)
!3328 = !DILocation(line: 44, column: 10, scope: !3309)
!3329 = !DILocation(line: 44, column: 3, scope: !3309)
!3330 = !DILocation(line: 47, column: 2, scope: !3294)
!3331 = !DILocation(line: 48, column: 1, scope: !3294)
!3332 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !99, file: !99, line: 110, type: !2983, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3333 = !DILocalVariable(name: "chip", arg: 1, scope: !3332, file: !99, line: 110, type: !105)
!3334 = !DILocation(line: 110, column: 55, scope: !3332)
!3335 = !DILocation(line: 112, column: 7, scope: !3336)
!3336 = distinct !DILexicalBlock(scope: !3332, file: !99, line: 112, column: 6)
!3337 = !DILocation(line: 112, column: 13, scope: !3336)
!3338 = !DILocation(line: 112, column: 24, scope: !3336)
!3339 = !DILocation(line: 112, column: 28, scope: !3336)
!3340 = !DILocation(line: 112, column: 34, scope: !3336)
!3341 = !DILocation(line: 112, column: 46, scope: !3336)
!3342 = !DILocation(line: 112, column: 50, scope: !3336)
!3343 = !DILocation(line: 113, column: 7, scope: !3336)
!3344 = !DILocation(line: 113, column: 13, scope: !3336)
!3345 = !DILocation(line: 113, column: 25, scope: !3336)
!3346 = !DILocation(line: 113, column: 30, scope: !3336)
!3347 = !DILocation(line: 112, column: 6, scope: !3332)
!3348 = !DILocation(line: 114, column: 3, scope: !3336)
!3349 = !DILocation(line: 116, column: 2, scope: !3332)
!3350 = !DILocation(line: 117, column: 1, scope: !3332)
!3351 = distinct !DISubprogram(name: "nand_get_sdr_timings", scope: !74, file: !74, line: 507, type: !3352, scopeLine: 508, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3352 = !DISubroutineType(types: !3353)
!3353 = !{!3310, !2625}
!3354 = !DILocalVariable(name: "conf", arg: 1, scope: !3351, file: !74, line: 507, type: !2625)
!3355 = !DILocation(line: 507, column: 58, scope: !3351)
!3356 = !DILocation(line: 509, column: 6, scope: !3357)
!3357 = distinct !DILexicalBlock(scope: !3351, file: !74, line: 509, column: 6)
!3358 = !DILocation(line: 509, column: 12, scope: !3357)
!3359 = !DILocation(line: 509, column: 17, scope: !3357)
!3360 = !DILocation(line: 509, column: 6, scope: !3351)
!3361 = !DILocation(line: 510, column: 10, scope: !3357)
!3362 = !DILocation(line: 510, column: 3, scope: !3357)
!3363 = !DILocation(line: 512, column: 10, scope: !3351)
!3364 = !DILocation(line: 512, column: 16, scope: !3351)
!3365 = !DILocation(line: 512, column: 24, scope: !3351)
!3366 = !DILocation(line: 512, column: 2, scope: !3351)
!3367 = !DILocation(line: 513, column: 1, scope: !3351)
!3368 = distinct !DISubprogram(name: "nand_get_interface_config", scope: !74, file: !74, line: 1195, type: !3369, scopeLine: 1196, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3369 = !DISubroutineType(types: !3370)
!3370 = !{!2625, !105}
!3371 = !DILocalVariable(name: "chip", arg: 1, scope: !3368, file: !74, line: 1195, type: !105)
!3372 = !DILocation(line: 1195, column: 45, scope: !3368)
!3373 = !DILocation(line: 1197, column: 9, scope: !3368)
!3374 = !DILocation(line: 1197, column: 15, scope: !3368)
!3375 = !DILocation(line: 1197, column: 2, scope: !3368)
!3376 = distinct !DISubprogram(name: "nand_exec_op", scope: !99, file: !99, line: 128, type: !3377, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3377 = !DISubroutineType(types: !3378)
!3378 = !{!94, !105, !2582}
!3379 = !DILocalVariable(name: "chip", arg: 1, scope: !3376, file: !99, line: 128, type: !105)
!3380 = !DILocation(line: 128, column: 50, scope: !3376)
!3381 = !DILocalVariable(name: "op", arg: 2, scope: !3376, file: !99, line: 129, type: !2582)
!3382 = !DILocation(line: 129, column: 40, scope: !3376)
!3383 = !DILocation(line: 131, column: 24, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3376, file: !99, line: 131, column: 6)
!3385 = !DILocation(line: 131, column: 7, scope: !3384)
!3386 = !DILocation(line: 131, column: 6, scope: !3376)
!3387 = !DILocation(line: 132, column: 3, scope: !3384)
!3388 = !DILocalVariable(name: "__ret_warn_on", scope: !3389, file: !99, line: 134, type: !94)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !99, line: 134, column: 6)
!3390 = distinct !DILexicalBlock(scope: !3376, file: !99, line: 134, column: 6)
!3391 = !DILocation(line: 134, column: 6, scope: !3389)
!3392 = !DILocation(line: 134, column: 6, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !99, line: 134, column: 6)
!3394 = !DILocation(line: 134, column: 6, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3393, file: !99, line: 134, column: 6)
!3396 = !DILocation(line: 134, column: 6, scope: !3397)
!3397 = distinct !DILexicalBlock(scope: !3395, file: !99, line: 134, column: 6)
!3398 = !DILocation(line: 134, column: 6, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3395, file: !99, line: 134, column: 6)
!3400 = !{i32 -2143498735, i32 -2143498706, i32 -2143498660, i32 -2143498602, i32 -2143498548, i32 -2143498494, i32 -2143498439, i32 -2143498408}
!3401 = !DILocation(line: 134, column: 6, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3395, file: !99, line: 134, column: 6)
!3403 = !{i32 -2143497994, i32 -2143497987, i32 -2143497935, i32 -2143497904, i32 -2143497874}
!3404 = !DILocation(line: 134, column: 6, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3395, file: !99, line: 134, column: 6)
!3406 = !DILocation(line: 134, column: 6, scope: !3390)
!3407 = !DILocation(line: 134, column: 6, scope: !3376)
!3408 = !DILocation(line: 135, column: 3, scope: !3390)
!3409 = !DILocation(line: 137, column: 9, scope: !3376)
!3410 = !DILocation(line: 137, column: 15, scope: !3376)
!3411 = !DILocation(line: 137, column: 27, scope: !3376)
!3412 = !DILocation(line: 137, column: 32, scope: !3376)
!3413 = !DILocation(line: 137, column: 40, scope: !3376)
!3414 = !DILocation(line: 137, column: 46, scope: !3376)
!3415 = !DILocation(line: 137, column: 2, scope: !3376)
!3416 = !DILocation(line: 138, column: 1, scope: !3376)
!3417 = distinct !DISubprogram(name: "ERR_PTR", scope: !3418, file: !3418, line: 24, type: !3419, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3418 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3419 = !DISubroutineType(types: !3420)
!3420 = !{!95, !430}
!3421 = !DILocalVariable(name: "error", arg: 1, scope: !3417, file: !3418, line: 24, type: !430)
!3422 = !DILocation(line: 24, column: 48, scope: !3417)
!3423 = !DILocation(line: 26, column: 18, scope: !3417)
!3424 = !DILocation(line: 26, column: 9, scope: !3417)
!3425 = !DILocation(line: 26, column: 2, scope: !3417)
!3426 = distinct !DISubprogram(name: "nanddev_ntargets", scope: !51, file: !51, line: 483, type: !3031, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3427 = !DILocalVariable(name: "nand", arg: 1, scope: !3426, file: !51, line: 483, type: !3033)
!3428 = !DILocation(line: 483, column: 71, scope: !3426)
!3429 = !DILocation(line: 485, column: 9, scope: !3426)
!3430 = !DILocation(line: 485, column: 15, scope: !3426)
!3431 = !DILocation(line: 485, column: 22, scope: !3426)
!3432 = !DILocation(line: 485, column: 2, scope: !3426)
!3433 = distinct !DISubprogram(name: "tc58teg5dclta00_choose_interface_config", scope: !3, file: !3, line: 202, type: !2464, scopeLine: 204, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3434 = !DILocalVariable(name: "chip", arg: 1, scope: !3433, file: !3, line: 202, type: !105)
!3435 = !DILocation(line: 202, column: 59, scope: !3433)
!3436 = !DILocalVariable(name: "iface", arg: 2, scope: !3433, file: !3, line: 203, type: !2466)
!3437 = !DILocation(line: 203, column: 36, scope: !3433)
!3438 = !DILocation(line: 205, column: 29, scope: !3433)
!3439 = !DILocation(line: 205, column: 35, scope: !3433)
!3440 = !DILocation(line: 205, column: 2, scope: !3433)
!3441 = !DILocation(line: 207, column: 38, scope: !3433)
!3442 = !DILocation(line: 207, column: 44, scope: !3433)
!3443 = !DILocation(line: 207, column: 9, scope: !3433)
!3444 = !DILocation(line: 207, column: 2, scope: !3433)
!3445 = distinct !DISubprogram(name: "mtd_set_pairing_scheme", scope: !113, file: !113, line: 449, type: !3446, scopeLine: 451, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{null, !150, !158}
!3448 = !DILocalVariable(name: "mtd", arg: 1, scope: !3445, file: !113, line: 449, type: !150)
!3449 = !DILocation(line: 449, column: 60, scope: !3445)
!3450 = !DILocalVariable(name: "pairing", arg: 2, scope: !3445, file: !113, line: 450, type: !158)
!3451 = !DILocation(line: 450, column: 38, scope: !3445)
!3452 = !DILocation(line: 452, column: 17, scope: !3445)
!3453 = !DILocation(line: 452, column: 2, scope: !3445)
!3454 = !DILocation(line: 452, column: 7, scope: !3445)
!3455 = !DILocation(line: 452, column: 15, scope: !3445)
!3456 = !DILocation(line: 453, column: 1, scope: !3445)
!3457 = distinct !DISubprogram(name: "tc58nvg0s3e_choose_interface_config", scope: !3, file: !3, line: 211, type: !2464, scopeLine: 213, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3458 = !DILocalVariable(name: "chip", arg: 1, scope: !3457, file: !3, line: 211, type: !105)
!3459 = !DILocation(line: 211, column: 55, scope: !3457)
!3460 = !DILocalVariable(name: "iface", arg: 2, scope: !3457, file: !3, line: 212, type: !2466)
!3461 = !DILocation(line: 212, column: 39, scope: !3457)
!3462 = !DILocation(line: 214, column: 29, scope: !3457)
!3463 = !DILocation(line: 214, column: 35, scope: !3457)
!3464 = !DILocation(line: 214, column: 2, scope: !3457)
!3465 = !DILocation(line: 216, column: 38, scope: !3457)
!3466 = !DILocation(line: 216, column: 44, scope: !3457)
!3467 = !DILocation(line: 216, column: 9, scope: !3457)
!3468 = !DILocation(line: 216, column: 2, scope: !3457)
!3469 = distinct !DISubprogram(name: "th58nvg2s3hbai4_choose_interface_config", scope: !3, file: !3, line: 220, type: !2464, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !369)
!3470 = !DILocalVariable(name: "chip", arg: 1, scope: !3469, file: !3, line: 220, type: !105)
!3471 = !DILocation(line: 220, column: 59, scope: !3469)
!3472 = !DILocalVariable(name: "iface", arg: 2, scope: !3469, file: !3, line: 221, type: !2466)
!3473 = !DILocation(line: 221, column: 36, scope: !3469)
!3474 = !DILocalVariable(name: "sdr", scope: !3469, file: !3, line: 223, type: !3475)
!3475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!3476 = !DILocation(line: 223, column: 27, scope: !3469)
!3477 = !DILocation(line: 223, column: 34, scope: !3469)
!3478 = !DILocation(line: 223, column: 41, scope: !3469)
!3479 = !DILocation(line: 223, column: 49, scope: !3469)
!3480 = !DILocation(line: 226, column: 29, scope: !3469)
!3481 = !DILocation(line: 226, column: 35, scope: !3469)
!3482 = !DILocation(line: 226, column: 2, scope: !3469)
!3483 = !DILocation(line: 229, column: 2, scope: !3469)
!3484 = !DILocation(line: 229, column: 7, scope: !3469)
!3485 = !DILocation(line: 229, column: 16, scope: !3469)
!3486 = !DILocation(line: 230, column: 2, scope: !3469)
!3487 = !DILocation(line: 230, column: 7, scope: !3469)
!3488 = !DILocation(line: 230, column: 16, scope: !3469)
!3489 = !DILocation(line: 231, column: 2, scope: !3469)
!3490 = !DILocation(line: 231, column: 7, scope: !3469)
!3491 = !DILocation(line: 231, column: 16, scope: !3469)
!3492 = !DILocation(line: 232, column: 2, scope: !3469)
!3493 = !DILocation(line: 232, column: 7, scope: !3469)
!3494 = !DILocation(line: 232, column: 16, scope: !3469)
!3495 = !DILocation(line: 233, column: 2, scope: !3469)
!3496 = !DILocation(line: 233, column: 7, scope: !3469)
!3497 = !DILocation(line: 233, column: 15, scope: !3469)
!3498 = !DILocation(line: 234, column: 2, scope: !3469)
!3499 = !DILocation(line: 234, column: 7, scope: !3469)
!3500 = !DILocation(line: 234, column: 17, scope: !3469)
!3501 = !DILocation(line: 235, column: 2, scope: !3469)
!3502 = !DILocation(line: 235, column: 7, scope: !3469)
!3503 = !DILocation(line: 235, column: 16, scope: !3469)
!3504 = !DILocation(line: 236, column: 2, scope: !3469)
!3505 = !DILocation(line: 236, column: 7, scope: !3469)
!3506 = !DILocation(line: 236, column: 16, scope: !3469)
!3507 = !DILocation(line: 237, column: 2, scope: !3469)
!3508 = !DILocation(line: 237, column: 7, scope: !3469)
!3509 = !DILocation(line: 237, column: 16, scope: !3469)
!3510 = !DILocation(line: 240, column: 2, scope: !3469)
!3511 = !DILocation(line: 240, column: 7, scope: !3469)
!3512 = !DILocation(line: 240, column: 17, scope: !3469)
!3513 = !DILocation(line: 241, column: 2, scope: !3469)
!3514 = !DILocation(line: 241, column: 7, scope: !3469)
!3515 = !DILocation(line: 241, column: 17, scope: !3469)
!3516 = !DILocation(line: 243, column: 38, scope: !3469)
!3517 = !DILocation(line: 243, column: 44, scope: !3469)
!3518 = !DILocation(line: 243, column: 51, scope: !3469)
!3519 = !DILocation(line: 243, column: 9, scope: !3469)
!3520 = !DILocation(line: 243, column: 2, scope: !3469)
