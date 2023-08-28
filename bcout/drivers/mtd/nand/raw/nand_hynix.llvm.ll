; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_hynix.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_hynix.c"
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
%struct.kmem_cache = type opaque
%struct.hynix_read_retry_otp = type { i32, i8*, i8*, i32, i32 }
%struct.hynix_nand = type { %struct.hynix_read_retry* }
%struct.hynix_read_retry = type { i32, i8*, [0 x i8] }
%struct.nand_op_cmd_instr = type { i8 }
%struct.nand_op_addr_instr = type { i32, i8* }

@hynix_nand_manuf_ops = dso_local constant { void (%struct.nand_chip*)*, i32 (%struct.nand_chip*)*, void (%struct.nand_chip*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* } { void (%struct.nand_chip*)* @hynix_nand_decode_id, i32 (%struct.nand_chip*)* @hynix_nand_init, void (%struct.nand_chip*)* @hynix_nand_cleanup, void (%struct.nand_chip*, %struct.nand_onfi_params*)* null }, align 8, !dbg !0
@.str = private unnamed_addr constant [43 x i8] c"chip->bits_per_cell is used uninitialized\0A\00", align 1
@.str.1 = private unnamed_addr constant [28 x i8] c"include/linux/mtd/rawnand.h\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"JEDEC\00", align 1
@.str.3 = private unnamed_addr constant [17 x i8] c"Invalid OOB size\00", align 1
@.str.4 = private unnamed_addr constant [34 x i8] c"drivers/mtd/nand/raw/nand_hynix.c\00", align 1
@.str.5 = private unnamed_addr constant [25 x i8] c"Invalid ECC requirements\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"H27UCG8T2ATR-BC\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.7 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@hynix_mlc_1xnm_rr_otps = internal constant [2 x %struct.hynix_read_retry_otp] [%struct.hynix_read_retry_otp { i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @hynix_mlc_1xnm_rr_otp_regs, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @hynix_mlc_1xnm_rr_otp_values, i32 0, i32 0), i32 543, i32 784 }, %struct.hynix_read_retry_otp { i32 1, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @hynix_mlc_1xnm_rr_otp_regs, i32 0, i32 0), i8* getelementptr inbounds ([1 x i8], [1 x i8]* @hynix_mlc_1xnm_rr_otp_values, i32 0, i32 0), i32 512, i32 528 }], align 16, !dbg !115
@.str.8 = private unnamed_addr constant [49 x i8] c"\014failed to initialize read-retry infrastructure\00", align 1
@hynix_1xnm_mlc_read_retry_regs = internal global [8 x i8] c"\CC\BF\AA\AB\CD\AD\AE\AF", align 1, !dbg !107
@.str.9 = private unnamed_addr constant [33 x i8] c"drivers/mtd/nand/raw/internals.h\00", align 1
@hynix_mlc_1xnm_rr_otp_regs = internal constant [1 x i8] c"8", align 1, !dbg !130
@hynix_mlc_1xnm_rr_otp_values = internal constant [1 x i8] c"R", align 1, !dbg !135

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hynix_nand_decode_id(%struct.nand_chip* %chip) #0 !dbg !2827 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %memorg = alloca %struct.nand_memory_organization*, align 8
  %valid_jedecid = alloca i8, align 1
  %tmp = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2832
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !2833
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !2831
  call void @llvm.dbg.declare(metadata %struct.nand_memory_organization** %memorg, metadata !2834, metadata !DIExpression()), !dbg !2836
  call void @llvm.dbg.declare(metadata i8* %valid_jedecid, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata i8* %tmp, metadata !2839, metadata !DIExpression()), !dbg !2840
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2841
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 0, !dbg !2842
  %call1 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %base) #8, !dbg !2843
  store %struct.nand_memory_organization* %call1, %struct.nand_memory_organization** %memorg, align 8, !dbg !2844
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2845
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 1, !dbg !2847
  %len = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 1, !dbg !2848
  %3 = load i32, i32* %len, align 8, !dbg !2848
  %cmp = icmp slt i32 %3, 6, !dbg !2849
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2850

lor.lhs.false:                                    ; preds = %entry
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2851
  %call2 = call zeroext i1 @nand_is_slc(%struct.nand_chip* %4) #8, !dbg !2852
  br i1 %call2, label %if.then, label %if.end, !dbg !2853

if.then:                                          ; preds = %lor.lhs.false, %entry
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2854
  call void @nand_decode_ext_id(%struct.nand_chip* %5) #8, !dbg !2856
  br label %return, !dbg !2857

if.end:                                           ; preds = %lor.lhs.false
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2858
  %id3 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 1, !dbg !2859
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id3, i32 0, i32 0, !dbg !2860
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 3, !dbg !2858
  %7 = load i8, i8* %arrayidx, align 1, !dbg !2858
  %conv = zext i8 %7 to i32, !dbg !2858
  %and = and i32 %conv, 3, !dbg !2861
  %shl = shl i32 2048, %and, !dbg !2862
  %8 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2863
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %8, i32 0, i32 1, !dbg !2864
  store i32 %shl, i32* %pagesize, align 4, !dbg !2865
  %9 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2866
  %pagesize4 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %9, i32 0, i32 1, !dbg !2867
  %10 = load i32, i32* %pagesize4, align 4, !dbg !2867
  %11 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2868
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 4, !dbg !2869
  store i32 %10, i32* %writesize, align 4, !dbg !2870
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2871
  %id5 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 1, !dbg !2872
  %data6 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id5, i32 0, i32 0, !dbg !2873
  %arrayidx7 = getelementptr [8 x i8], [8 x i8]* %data6, i64 0, i64 3, !dbg !2871
  %13 = load i8, i8* %arrayidx7, align 1, !dbg !2871
  %conv8 = zext i8 %13 to i32, !dbg !2871
  %shr = ashr i32 %conv8, 4, !dbg !2874
  %and9 = and i32 %shr, 3, !dbg !2875
  %conv10 = trunc i32 %and9 to i8, !dbg !2876
  store i8 %conv10, i8* %tmp, align 1, !dbg !2877
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2878
  %id11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 1, !dbg !2880
  %data12 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id11, i32 0, i32 0, !dbg !2881
  %arrayidx13 = getelementptr [8 x i8], [8 x i8]* %data12, i64 0, i64 3, !dbg !2878
  %15 = load i8, i8* %arrayidx13, align 1, !dbg !2878
  %conv14 = zext i8 %15 to i32, !dbg !2878
  %and15 = and i32 %conv14, 128, !dbg !2882
  %tobool = icmp ne i32 %and15, 0, !dbg !2882
  br i1 %tobool, label %if.then16, label %if.else, !dbg !2883

if.then16:                                        ; preds = %if.end
  %16 = load i8, i8* %tmp, align 1, !dbg !2884
  %conv17 = zext i8 %16 to i32, !dbg !2884
  %shl18 = shl i32 1048576, %conv17, !dbg !2886
  %17 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2887
  %pagesize19 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %17, i32 0, i32 1, !dbg !2888
  %18 = load i32, i32* %pagesize19, align 4, !dbg !2888
  %div = udiv i32 %shl18, %18, !dbg !2889
  %19 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2890
  %pages_per_eraseblock = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %19, i32 0, i32 3, !dbg !2891
  store i32 %div, i32* %pages_per_eraseblock, align 4, !dbg !2892
  %20 = load i8, i8* %tmp, align 1, !dbg !2893
  %conv20 = zext i8 %20 to i32, !dbg !2893
  %shl21 = shl i32 1048576, %conv20, !dbg !2894
  %21 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2895
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 3, !dbg !2896
  store i32 %shl21, i32* %erasesize, align 8, !dbg !2897
  br label %if.end40, !dbg !2898

if.else:                                          ; preds = %if.end
  %22 = load i8, i8* %tmp, align 1, !dbg !2899
  %conv22 = zext i8 %22 to i32, !dbg !2899
  %cmp23 = icmp eq i32 %conv22, 3, !dbg !2901
  br i1 %cmp23, label %if.then25, label %if.else30, !dbg !2902

if.then25:                                        ; preds = %if.else
  %23 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2903
  %pagesize26 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %23, i32 0, i32 1, !dbg !2905
  %24 = load i32, i32* %pagesize26, align 4, !dbg !2905
  %div27 = udiv i32 786432, %24, !dbg !2906
  %25 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2907
  %pages_per_eraseblock28 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %25, i32 0, i32 3, !dbg !2908
  store i32 %div27, i32* %pages_per_eraseblock28, align 4, !dbg !2909
  %26 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2910
  %erasesize29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 3, !dbg !2911
  store i32 786432, i32* %erasesize29, align 8, !dbg !2912
  br label %if.end39, !dbg !2913

if.else30:                                        ; preds = %if.else
  %27 = load i8, i8* %tmp, align 1, !dbg !2914
  %conv31 = zext i8 %27 to i32, !dbg !2914
  %shl32 = shl i32 131072, %conv31, !dbg !2916
  %28 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2917
  %pagesize33 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %28, i32 0, i32 1, !dbg !2918
  %29 = load i32, i32* %pagesize33, align 4, !dbg !2918
  %div34 = udiv i32 %shl32, %29, !dbg !2919
  %30 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !2920
  %pages_per_eraseblock35 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %30, i32 0, i32 3, !dbg !2921
  store i32 %div34, i32* %pages_per_eraseblock35, align 4, !dbg !2922
  %31 = load i8, i8* %tmp, align 1, !dbg !2923
  %conv36 = zext i8 %31 to i32, !dbg !2923
  %shl37 = shl i32 131072, %conv36, !dbg !2924
  %32 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2925
  %erasesize38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %32, i32 0, i32 3, !dbg !2926
  store i32 %shl37, i32* %erasesize38, align 8, !dbg !2927
  br label %if.end39

if.end39:                                         ; preds = %if.else30, %if.then25
  br label %if.end40

if.end40:                                         ; preds = %if.end39, %if.then16
  %33 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2928
  %call41 = call zeroext i1 @hynix_nand_has_valid_jedecid(%struct.nand_chip* %33) #8, !dbg !2929
  %frombool = zext i1 %call41 to i8, !dbg !2930
  store i8 %frombool, i8* %valid_jedecid, align 1, !dbg !2930
  %34 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2931
  %35 = load i8, i8* %valid_jedecid, align 1, !dbg !2932
  %tobool42 = trunc i8 %35 to i1, !dbg !2932
  call void @hynix_nand_extract_oobsize(%struct.nand_chip* %34, i1 zeroext %tobool42) #8, !dbg !2933
  %36 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2934
  %37 = load i8, i8* %valid_jedecid, align 1, !dbg !2935
  %tobool43 = trunc i8 %37 to i1, !dbg !2935
  call void @hynix_nand_extract_ecc_requirements(%struct.nand_chip* %36, i1 zeroext %tobool43) #8, !dbg !2936
  %38 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2937
  %39 = load i8, i8* %valid_jedecid, align 1, !dbg !2938
  %tobool44 = trunc i8 %39 to i1, !dbg !2938
  call void @hynix_nand_extract_scrambling_requirements(%struct.nand_chip* %38, i1 zeroext %tobool44) #8, !dbg !2939
  br label %return, !dbg !2940

return:                                           ; preds = %if.end40, %if.then
  ret void, !dbg !2940
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_nand_init(%struct.nand_chip* %chip) #0 !dbg !2941 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %hynix = alloca %struct.hynix_nand*, align 8
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2942, metadata !DIExpression()), !dbg !2943
  call void @llvm.dbg.declare(metadata %struct.hynix_nand** %hynix, metadata !2944, metadata !DIExpression()), !dbg !2957
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2958, metadata !DIExpression()), !dbg !2959
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2960
  %call = call zeroext i1 @nand_is_slc(%struct.nand_chip* %0) #8, !dbg !2962
  br i1 %call, label %if.else, label %if.then, !dbg !2963

if.then:                                          ; preds = %entry
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2964
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 6, !dbg !2965
  %2 = load i32, i32* %options, align 8, !dbg !2966
  %conv = zext i32 %2 to i64, !dbg !2966
  %or = or i64 %conv, 67108864, !dbg !2966
  %conv1 = trunc i64 %or to i32, !dbg !2966
  store i32 %conv1, i32* %options, align 8, !dbg !2966
  br label %if.end, !dbg !2964

if.else:                                          ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2967
  %options2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 6, !dbg !2968
  %4 = load i32, i32* %options2, align 8, !dbg !2969
  %conv3 = zext i32 %4 to i64, !dbg !2969
  %or4 = or i64 %conv3, 50331648, !dbg !2969
  %conv5 = trunc i64 %or4 to i32, !dbg !2969
  store i32 %conv5, i32* %options2, align 8, !dbg !2969
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %call6 = call i8* @kzalloc(i64 8, i32 3264) #8, !dbg !2970
  %5 = bitcast i8* %call6 to %struct.hynix_nand*, !dbg !2970
  store %struct.hynix_nand* %5, %struct.hynix_nand** %hynix, align 8, !dbg !2971
  %6 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !2972
  %tobool = icmp ne %struct.hynix_nand* %6, null, !dbg !2972
  br i1 %tobool, label %if.end8, label %if.then7, !dbg !2974

if.then7:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2975
  br label %return, !dbg !2975

if.end8:                                          ; preds = %if.end
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2976
  %8 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !2977
  %9 = bitcast %struct.hynix_nand* %8 to i8*, !dbg !2977
  call void @nand_set_manufacturer_data(%struct.nand_chip* %7, i8* %9) #8, !dbg !2978
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2979
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 2, !dbg !2981
  %model = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 0, !dbg !2982
  %11 = load i8*, i8** %model, align 8, !dbg !2982
  %call9 = call i32 @strncmp(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i8* %11, i64 15) #8, !dbg !2983
  %tobool10 = icmp ne i32 %call9, 0, !dbg !2983
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !2984

if.then11:                                        ; preds = %if.end8
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2985
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 4, !dbg !2986
  %choose_interface_config = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 5, !dbg !2987
  store i32 (%struct.nand_chip*, %struct.nand_interface_config*)* @h27ucg8t2atrbc_choose_interface_config, i32 (%struct.nand_chip*, %struct.nand_interface_config*)** %choose_interface_config, align 8, !dbg !2988
  br label %if.end12, !dbg !2985

if.end12:                                         ; preds = %if.then11, %if.end8
  %13 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2989
  %call13 = call i32 @hynix_nand_rr_init(%struct.nand_chip* %13) #8, !dbg !2990
  store i32 %call13, i32* %ret, align 4, !dbg !2991
  %14 = load i32, i32* %ret, align 4, !dbg !2992
  %tobool14 = icmp ne i32 %14, 0, !dbg !2992
  br i1 %tobool14, label %if.then15, label %if.end16, !dbg !2994

if.then15:                                        ; preds = %if.end12
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2995
  call void @hynix_nand_cleanup(%struct.nand_chip* %15) #8, !dbg !2996
  br label %if.end16, !dbg !2996

if.end16:                                         ; preds = %if.then15, %if.end12
  %16 = load i32, i32* %ret, align 4, !dbg !2997
  store i32 %16, i32* %retval, align 4, !dbg !2998
  br label %return, !dbg !2998

return:                                           ; preds = %if.end16, %if.then7
  %17 = load i32, i32* %retval, align 4, !dbg !2999
  ret i32 %17, !dbg !2999
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hynix_nand_cleanup(%struct.nand_chip* %chip) #0 !dbg !3000 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %hynix = alloca %struct.hynix_nand*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3001, metadata !DIExpression()), !dbg !3002
  call void @llvm.dbg.declare(metadata %struct.hynix_nand** %hynix, metadata !3003, metadata !DIExpression()), !dbg !3004
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3005
  %call = call i8* @nand_get_manufacturer_data(%struct.nand_chip* %0) #8, !dbg !3006
  %1 = bitcast i8* %call to %struct.hynix_nand*, !dbg !3006
  store %struct.hynix_nand* %1, %struct.hynix_nand** %hynix, align 8, !dbg !3004
  %2 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !3007
  %tobool = icmp ne %struct.hynix_nand* %2, null, !dbg !3007
  br i1 %tobool, label %if.end, label %if.then, !dbg !3009

if.then:                                          ; preds = %entry
  br label %return, !dbg !3010

if.end:                                           ; preds = %entry
  %3 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !3011
  %read_retry = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %3, i32 0, i32 0, !dbg !3012
  %4 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %read_retry, align 8, !dbg !3012
  %5 = bitcast %struct.hynix_read_retry* %4 to i8*, !dbg !3011
  call void @kfree(i8* %5) #8, !dbg !3013
  %6 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !3014
  %7 = bitcast %struct.hynix_nand* %6 to i8*, !dbg !3014
  call void @kfree(i8* %7) #8, !dbg !3015
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3016
  call void @nand_set_manufacturer_data(%struct.nand_chip* %8, i8* null) #8, !dbg !3017
  br label %return, !dbg !3018

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3018
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3019 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3024
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3025
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3026
  ret %struct.mtd_info* %mtd, !dbg !3027
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %nand) #0 !dbg !3028 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3031, metadata !DIExpression()), !dbg !3032
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3033
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3034
  ret %struct.nand_memory_organization* %memorg, !dbg !3035
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_is_slc(%struct.nand_chip* %chip) #0 !dbg !3036 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3039, metadata !DIExpression()), !dbg !3040
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3041, metadata !DIExpression()), !dbg !3043
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3043
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3043
  %call = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base) #8, !dbg !3043
  %cmp = icmp eq i32 %call, 0, !dbg !3043
  %lnot = xor i1 %cmp, true, !dbg !3043
  %lnot1 = xor i1 %lnot, true, !dbg !3043
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3043
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3043
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3044
  %tobool = icmp ne i32 %1, 0, !dbg !3044
  %lnot2 = xor i1 %tobool, true, !dbg !3044
  %lnot4 = xor i1 %lnot2, true, !dbg !3044
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3044
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3044
  %tobool6 = icmp ne i64 %conv, 0, !dbg !3044
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3043

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3044

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !3046

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !3048

do.end:                                           ; preds = %do.body7
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0)) #8, !dbg !3046
  br label %do.body8, !dbg !3046

do.body8:                                         ; preds = %do.end
  br label %do.body9, !dbg !3050

do.body9:                                         ; preds = %do.body8
  br label %do.end10, !dbg !3052

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !3050

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 1284, i32 2313, i64 12) #9, !dbg !3054, !srcloc !3056
  br label %do.end12, !dbg !3054

do.end12:                                         ; preds = %do.body11
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 170) #9, !dbg !3057, !srcloc !3059
  br label %do.body13, !dbg !3050

do.body13:                                        ; preds = %do.end12
  br label %do.end14, !dbg !3060

do.end14:                                         ; preds = %do.body13
  br label %do.end15, !dbg !3050

do.end15:                                         ; preds = %do.end14
  br label %do.body16, !dbg !3046

do.body16:                                        ; preds = %do.end15
  br label %do.end17, !dbg !3062

do.end17:                                         ; preds = %do.body16
  br label %do.end18, !dbg !3046

do.end18:                                         ; preds = %do.end17
  br label %if.end, !dbg !3046

if.end:                                           ; preds = %do.end18, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3043
  %tobool19 = icmp ne i32 %2, 0, !dbg !3043
  %lnot20 = xor i1 %tobool19, true, !dbg !3043
  %lnot22 = xor i1 %lnot20, true, !dbg !3043
  %lnot.ext23 = zext i1 %lnot22 to i32, !dbg !3043
  %conv24 = sext i32 %lnot.ext23 to i64, !dbg !3043
  store i64 %conv24, i64* %tmp, align 8, !dbg !3044
  %3 = load i64, i64* %tmp, align 8, !dbg !3043
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3064
  %base25 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 0, !dbg !3065
  %call26 = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base25) #8, !dbg !3066
  %cmp27 = icmp eq i32 %call26, 1, !dbg !3067
  ret i1 %cmp27, !dbg !3068
}

; Function Attrs: noredzone
declare dso_local void @nand_decode_ext_id(%struct.nand_chip*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @hynix_nand_has_valid_jedecid(%struct.nand_chip* %chip) #0 !dbg !3069 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  %jedecid = alloca [5 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.declare(metadata [5 x i8]* %jedecid, metadata !3072, metadata !DIExpression()), !dbg !3076
  %0 = bitcast [5 x i8]* %jedecid to i8*, !dbg !3076
  call void @llvm.memset.p0i8.i64(i8* align 1 %0, i8 0, i64 5, i1 false), !dbg !3076
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3077, metadata !DIExpression()), !dbg !3078
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3079
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %jedecid, i64 0, i64 0, !dbg !3080
  %call = call i32 @nand_readid_op(%struct.nand_chip* %1, i8 zeroext 64, i8* %arraydecay, i32 5) #8, !dbg !3081
  store i32 %call, i32* %ret, align 4, !dbg !3082
  %2 = load i32, i32* %ret, align 4, !dbg !3083
  %tobool = icmp ne i32 %2, 0, !dbg !3083
  br i1 %tobool, label %if.then, label %if.end, !dbg !3085

if.then:                                          ; preds = %entry
  store i1 false, i1* %retval, align 1, !dbg !3086
  br label %return, !dbg !3086

if.end:                                           ; preds = %entry
  %arraydecay1 = getelementptr inbounds [5 x i8], [5 x i8]* %jedecid, i64 0, i64 0, !dbg !3087
  %call2 = call i32 @strncmp(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %arraydecay1, i64 5) #8, !dbg !3088
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3089
  %lnot = xor i1 %tobool3, true, !dbg !3089
  store i1 %lnot, i1* %retval, align 1, !dbg !3090
  br label %return, !dbg !3090

return:                                           ; preds = %if.end, %if.then
  %3 = load i1, i1* %retval, align 1, !dbg !3091
  ret i1 %3, !dbg !3091
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hynix_nand_extract_oobsize(%struct.nand_chip* %chip, i1 zeroext %valid_jedecid) #0 !dbg !3092 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %valid_jedecid.addr = alloca i8, align 1
  %mtd = alloca %struct.mtd_info*, align 8
  %memorg = alloca %struct.nand_memory_organization*, align 8
  %oobsize = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on56 = alloca i32, align 4
  %tmp80 = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3095, metadata !DIExpression()), !dbg !3096
  %frombool = zext i1 %valid_jedecid to i8
  store i8 %frombool, i8* %valid_jedecid.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %valid_jedecid.addr, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3099, metadata !DIExpression()), !dbg !3100
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3101
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !3102
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3100
  call void @llvm.dbg.declare(metadata %struct.nand_memory_organization** %memorg, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.declare(metadata i8* %oobsize, metadata !3105, metadata !DIExpression()), !dbg !3106
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3107
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 0, !dbg !3108
  %call1 = call %struct.nand_memory_organization* @nanddev_get_memorg(%struct.nand_device* %base) #8, !dbg !3109
  store %struct.nand_memory_organization* %call1, %struct.nand_memory_organization** %memorg, align 8, !dbg !3110
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3111
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 1, !dbg !3112
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 0, !dbg !3113
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 3, !dbg !3111
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3111
  %conv = zext i8 %3 to i32, !dbg !3111
  %shr = ashr i32 %conv, 2, !dbg !3114
  %and = and i32 %shr, 3, !dbg !3115
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3116
  %id2 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 1, !dbg !3117
  %data3 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id2, i32 0, i32 0, !dbg !3118
  %arrayidx4 = getelementptr [8 x i8], [8 x i8]* %data3, i64 0, i64 3, !dbg !3116
  %5 = load i8, i8* %arrayidx4, align 1, !dbg !3116
  %conv5 = zext i8 %5 to i32, !dbg !3116
  %shr6 = ashr i32 %conv5, 4, !dbg !3119
  %and7 = and i32 %shr6, 4, !dbg !3120
  %or = or i32 %and, %and7, !dbg !3121
  %conv8 = trunc i32 %or to i8, !dbg !3122
  store i8 %conv8, i8* %oobsize, align 1, !dbg !3123
  %6 = load i8, i8* %valid_jedecid.addr, align 1, !dbg !3124
  %tobool = trunc i8 %6 to i1, !dbg !3124
  br i1 %tobool, label %if.then, label %if.else, !dbg !3126

if.then:                                          ; preds = %entry
  %7 = load i8, i8* %oobsize, align 1, !dbg !3127
  %conv9 = zext i8 %7 to i32, !dbg !3127
  switch i32 %conv9, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb13
    i32 3, label %sw.bb15
  ], !dbg !3129

sw.bb:                                            ; preds = %if.then
  %8 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3130
  %oobsize10 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %8, i32 0, i32 2, !dbg !3132
  store i32 2048, i32* %oobsize10, align 4, !dbg !3133
  br label %sw.epilog, !dbg !3134

sw.bb11:                                          ; preds = %if.then
  %9 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3135
  %oobsize12 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %9, i32 0, i32 2, !dbg !3136
  store i32 1664, i32* %oobsize12, align 4, !dbg !3137
  br label %sw.epilog, !dbg !3138

sw.bb13:                                          ; preds = %if.then
  %10 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3139
  %oobsize14 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %10, i32 0, i32 2, !dbg !3140
  store i32 1024, i32* %oobsize14, align 4, !dbg !3141
  br label %sw.epilog, !dbg !3142

sw.bb15:                                          ; preds = %if.then
  %11 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3143
  %oobsize16 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %11, i32 0, i32 2, !dbg !3144
  store i32 640, i32* %oobsize16, align 4, !dbg !3145
  br label %sw.epilog, !dbg !3146

sw.default:                                       ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3147, metadata !DIExpression()), !dbg !3149
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3149
  %12 = load i32, i32* %__ret_warn_on, align 4, !dbg !3150
  %tobool17 = icmp ne i32 %12, 0, !dbg !3150
  %lnot = xor i1 %tobool17, true, !dbg !3150
  %lnot18 = xor i1 %lnot, true, !dbg !3150
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !3150
  %conv19 = sext i32 %lnot.ext to i64, !dbg !3150
  %tobool20 = icmp ne i64 %conv19, 0, !dbg !3150
  br i1 %tobool20, label %if.then21, label %if.end, !dbg !3149

if.then21:                                        ; preds = %sw.default
  br label %do.body, !dbg !3150

do.body:                                          ; preds = %if.then21
  br label %do.body22, !dbg !3152

do.body22:                                        ; preds = %do.body
  br label %do.end, !dbg !3154

do.end:                                           ; preds = %do.body22
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3152
  br label %do.body23, !dbg !3152

do.body23:                                        ; preds = %do.end
  br label %do.body24, !dbg !3156

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !3158

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !3156

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 441, i32 2313, i64 12) #9, !dbg !3160, !srcloc !3162
  br label %do.end27, !dbg !3160

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 172) #9, !dbg !3163, !srcloc !3165
  br label %do.body28, !dbg !3156

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3166

do.end29:                                         ; preds = %do.body28
  br label %do.end30, !dbg !3156

do.end30:                                         ; preds = %do.end29
  br label %do.body31, !dbg !3152

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !3168

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !3152

do.end33:                                         ; preds = %do.end32
  br label %if.end, !dbg !3152

if.end:                                           ; preds = %do.end33, %sw.default
  %13 = load i32, i32* %__ret_warn_on, align 4, !dbg !3149
  %tobool34 = icmp ne i32 %13, 0, !dbg !3149
  %lnot35 = xor i1 %tobool34, true, !dbg !3149
  %lnot37 = xor i1 %lnot35, true, !dbg !3149
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3149
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3149
  store i64 %conv39, i64* %tmp, align 8, !dbg !3150
  %14 = load i64, i64* %tmp, align 8, !dbg !3149
  br label %sw.epilog, !dbg !3170

sw.epilog:                                        ; preds = %if.end, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb
  br label %if.end96, !dbg !3171

if.else:                                          ; preds = %entry
  %15 = load i8, i8* %oobsize, align 1, !dbg !3172
  %conv40 = zext i8 %15 to i32, !dbg !3172
  switch i32 %conv40, label %sw.default55 [
    i32 0, label %sw.bb41
    i32 1, label %sw.bb43
    i32 2, label %sw.bb45
    i32 3, label %sw.bb47
    i32 4, label %sw.bb49
    i32 5, label %sw.bb51
    i32 6, label %sw.bb53
  ], !dbg !3174

sw.bb41:                                          ; preds = %if.else
  %16 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3175
  %oobsize42 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %16, i32 0, i32 2, !dbg !3177
  store i32 128, i32* %oobsize42, align 4, !dbg !3178
  br label %sw.epilog87, !dbg !3179

sw.bb43:                                          ; preds = %if.else
  %17 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3180
  %oobsize44 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %17, i32 0, i32 2, !dbg !3181
  store i32 224, i32* %oobsize44, align 4, !dbg !3182
  br label %sw.epilog87, !dbg !3183

sw.bb45:                                          ; preds = %if.else
  %18 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3184
  %oobsize46 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %18, i32 0, i32 2, !dbg !3185
  store i32 448, i32* %oobsize46, align 4, !dbg !3186
  br label %sw.epilog87, !dbg !3187

sw.bb47:                                          ; preds = %if.else
  %19 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3188
  %oobsize48 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %19, i32 0, i32 2, !dbg !3189
  store i32 64, i32* %oobsize48, align 4, !dbg !3190
  br label %sw.epilog87, !dbg !3191

sw.bb49:                                          ; preds = %if.else
  %20 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3192
  %oobsize50 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %20, i32 0, i32 2, !dbg !3193
  store i32 32, i32* %oobsize50, align 4, !dbg !3194
  br label %sw.epilog87, !dbg !3195

sw.bb51:                                          ; preds = %if.else
  %21 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3196
  %oobsize52 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %21, i32 0, i32 2, !dbg !3197
  store i32 16, i32* %oobsize52, align 4, !dbg !3198
  br label %sw.epilog87, !dbg !3199

sw.bb53:                                          ; preds = %if.else
  %22 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3200
  %oobsize54 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %22, i32 0, i32 2, !dbg !3201
  store i32 640, i32* %oobsize54, align 4, !dbg !3202
  br label %sw.epilog87, !dbg !3203

sw.default55:                                     ; preds = %if.else
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on56, metadata !3204, metadata !DIExpression()), !dbg !3206
  store i32 1, i32* %__ret_warn_on56, align 4, !dbg !3206
  %23 = load i32, i32* %__ret_warn_on56, align 4, !dbg !3207
  %tobool57 = icmp ne i32 %23, 0, !dbg !3207
  %lnot58 = xor i1 %tobool57, true, !dbg !3207
  %lnot60 = xor i1 %lnot58, true, !dbg !3207
  %lnot.ext61 = zext i1 %lnot60 to i32, !dbg !3207
  %conv62 = sext i32 %lnot.ext61 to i64, !dbg !3207
  %tobool63 = icmp ne i64 %conv62, 0, !dbg !3207
  br i1 %tobool63, label %if.then64, label %if.end79, !dbg !3206

if.then64:                                        ; preds = %sw.default55
  br label %do.body65, !dbg !3207

do.body65:                                        ; preds = %if.then64
  br label %do.body66, !dbg !3209

do.body66:                                        ; preds = %do.body65
  br label %do.end67, !dbg !3211

do.end67:                                         ; preds = %do.body66
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.3, i64 0, i64 0)) #8, !dbg !3209
  br label %do.body68, !dbg !3209

do.body68:                                        ; preds = %do.end67
  br label %do.body69, !dbg !3213

do.body69:                                        ; preds = %do.body68
  br label %do.end70, !dbg !3215

do.end70:                                         ; preds = %do.body69
  br label %do.body71, !dbg !3213

do.body71:                                        ; preds = %do.end70
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 474, i32 2313, i64 12) #9, !dbg !3217, !srcloc !3219
  br label %do.end72, !dbg !3217

do.end72:                                         ; preds = %do.body71
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 173) #9, !dbg !3220, !srcloc !3222
  br label %do.body73, !dbg !3213

do.body73:                                        ; preds = %do.end72
  br label %do.end74, !dbg !3223

do.end74:                                         ; preds = %do.body73
  br label %do.end75, !dbg !3213

do.end75:                                         ; preds = %do.end74
  br label %do.body76, !dbg !3209

do.body76:                                        ; preds = %do.end75
  br label %do.end77, !dbg !3225

do.end77:                                         ; preds = %do.body76
  br label %do.end78, !dbg !3209

do.end78:                                         ; preds = %do.end77
  br label %if.end79, !dbg !3209

if.end79:                                         ; preds = %do.end78, %sw.default55
  %24 = load i32, i32* %__ret_warn_on56, align 4, !dbg !3206
  %tobool81 = icmp ne i32 %24, 0, !dbg !3206
  %lnot82 = xor i1 %tobool81, true, !dbg !3206
  %lnot84 = xor i1 %lnot82, true, !dbg !3206
  %lnot.ext85 = zext i1 %lnot84 to i32, !dbg !3206
  %conv86 = sext i32 %lnot.ext85 to i64, !dbg !3206
  store i64 %conv86, i64* %tmp80, align 8, !dbg !3207
  %25 = load i64, i64* %tmp80, align 8, !dbg !3206
  br label %sw.epilog87, !dbg !3227

sw.epilog87:                                      ; preds = %if.end79, %sw.bb53, %sw.bb51, %sw.bb49, %sw.bb47, %sw.bb45, %sw.bb43, %sw.bb41
  %26 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3228
  %id88 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %26, i32 0, i32 1, !dbg !3230
  %data89 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id88, i32 0, i32 0, !dbg !3231
  %arrayidx90 = getelementptr [8 x i8], [8 x i8]* %data89, i64 0, i64 1, !dbg !3228
  %27 = load i8, i8* %arrayidx90, align 1, !dbg !3228
  %conv91 = zext i8 %27 to i32, !dbg !3228
  %cmp = icmp eq i32 %conv91, 222, !dbg !3232
  br i1 %cmp, label %if.then93, label %if.end95, !dbg !3233

if.then93:                                        ; preds = %sw.epilog87
  %28 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3234
  %pagesize = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %28, i32 0, i32 1, !dbg !3235
  %29 = load i32, i32* %pagesize, align 4, !dbg !3235
  %div = udiv i32 %29, 8192, !dbg !3236
  %30 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3237
  %oobsize94 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %30, i32 0, i32 2, !dbg !3238
  %31 = load i32, i32* %oobsize94, align 4, !dbg !3239
  %mul = mul i32 %31, %div, !dbg !3239
  store i32 %mul, i32* %oobsize94, align 4, !dbg !3239
  br label %if.end95, !dbg !3237

if.end95:                                         ; preds = %if.then93, %sw.epilog87
  br label %if.end96

if.end96:                                         ; preds = %if.end95, %sw.epilog
  %32 = load %struct.nand_memory_organization*, %struct.nand_memory_organization** %memorg, align 8, !dbg !3240
  %oobsize97 = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %32, i32 0, i32 2, !dbg !3241
  %33 = load i32, i32* %oobsize97, align 4, !dbg !3241
  %34 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3242
  %oobsize98 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 6, !dbg !3243
  store i32 %33, i32* %oobsize98, align 4, !dbg !3244
  ret void, !dbg !3245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hynix_nand_extract_ecc_requirements(%struct.nand_chip* %chip, i1 zeroext %valid_jedecid) #0 !dbg !3246 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %valid_jedecid.addr = alloca i8, align 1
  %base = alloca %struct.nand_device*, align 8
  %requirements = alloca %struct.nand_ecc_props, align 4
  %ecc_level = alloca i8, align 1
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %nand_tech = alloca i8, align 1
  %__ret_warn_on71 = alloca i32, align 4
  %tmp95 = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3247, metadata !DIExpression()), !dbg !3248
  %frombool = zext i1 %valid_jedecid to i8
  store i8 %frombool, i8* %valid_jedecid.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %valid_jedecid.addr, metadata !3249, metadata !DIExpression()), !dbg !3250
  call void @llvm.dbg.declare(metadata %struct.nand_device** %base, metadata !3251, metadata !DIExpression()), !dbg !3252
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3253
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3254
  store %struct.nand_device* %base1, %struct.nand_device** %base, align 8, !dbg !3252
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props* %requirements, metadata !3255, metadata !DIExpression()), !dbg !3256
  %1 = bitcast %struct.nand_ecc_props* %requirements to i8*, !dbg !3256
  call void @llvm.memset.p0i8.i64(i8* align 4 %1, i8 0, i64 24, i1 false), !dbg !3256
  call void @llvm.dbg.declare(metadata i8* %ecc_level, metadata !3257, metadata !DIExpression()), !dbg !3258
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3259
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 1, !dbg !3260
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 0, !dbg !3261
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 4, !dbg !3259
  %3 = load i8, i8* %arrayidx, align 4, !dbg !3259
  %conv = zext i8 %3 to i32, !dbg !3259
  %shr = ashr i32 %conv, 4, !dbg !3262
  %and = and i32 %shr, 7, !dbg !3263
  %conv2 = trunc i32 %and to i8, !dbg !3264
  store i8 %conv2, i8* %ecc_level, align 1, !dbg !3258
  %4 = load i8, i8* %valid_jedecid.addr, align 1, !dbg !3265
  %tobool = trunc i8 %4 to i1, !dbg !3265
  br i1 %tobool, label %if.then, label %if.else, !dbg !3267

if.then:                                          ; preds = %entry
  %step_size = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3268
  store i32 1024, i32* %step_size, align 4, !dbg !3270
  %5 = load i8, i8* %ecc_level, align 1, !dbg !3271
  %conv3 = zext i8 %5 to i32, !dbg !3271
  switch i32 %conv3, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
    i32 2, label %sw.bb7
    i32 3, label %sw.bb9
    i32 4, label %sw.bb11
    i32 5, label %sw.bb13
    i32 6, label %sw.bb15
  ], !dbg !3272

sw.bb:                                            ; preds = %if.then
  %step_size4 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3273
  store i32 0, i32* %step_size4, align 4, !dbg !3275
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3276
  store i32 0, i32* %strength, align 4, !dbg !3277
  br label %sw.epilog, !dbg !3278

sw.bb5:                                           ; preds = %if.then
  %strength6 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3279
  store i32 4, i32* %strength6, align 4, !dbg !3280
  br label %sw.epilog, !dbg !3281

sw.bb7:                                           ; preds = %if.then
  %strength8 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3282
  store i32 24, i32* %strength8, align 4, !dbg !3283
  br label %sw.epilog, !dbg !3284

sw.bb9:                                           ; preds = %if.then
  %strength10 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3285
  store i32 32, i32* %strength10, align 4, !dbg !3286
  br label %sw.epilog, !dbg !3287

sw.bb11:                                          ; preds = %if.then
  %strength12 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3288
  store i32 40, i32* %strength12, align 4, !dbg !3289
  br label %sw.epilog, !dbg !3290

sw.bb13:                                          ; preds = %if.then
  %strength14 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3291
  store i32 50, i32* %strength14, align 4, !dbg !3292
  br label %sw.epilog, !dbg !3293

sw.bb15:                                          ; preds = %if.then
  %strength16 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3294
  store i32 60, i32* %strength16, align 4, !dbg !3295
  br label %sw.epilog, !dbg !3296

sw.default:                                       ; preds = %if.then
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3297, metadata !DIExpression()), !dbg !3299
  store i32 1, i32* %__ret_warn_on, align 4, !dbg !3299
  %6 = load i32, i32* %__ret_warn_on, align 4, !dbg !3300
  %tobool17 = icmp ne i32 %6, 0, !dbg !3300
  %lnot = xor i1 %tobool17, true, !dbg !3300
  %lnot18 = xor i1 %lnot, true, !dbg !3300
  %lnot.ext = zext i1 %lnot18 to i32, !dbg !3300
  %conv19 = sext i32 %lnot.ext to i64, !dbg !3300
  %tobool20 = icmp ne i64 %conv19, 0, !dbg !3300
  br i1 %tobool20, label %if.then21, label %if.end, !dbg !3299

if.then21:                                        ; preds = %sw.default
  br label %do.body, !dbg !3300

do.body:                                          ; preds = %if.then21
  br label %do.body22, !dbg !3302

do.body22:                                        ; preds = %do.body
  br label %do.end, !dbg !3304

do.end:                                           ; preds = %do.body22
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !3302
  br label %do.body23, !dbg !3302

do.body23:                                        ; preds = %do.end
  br label %do.body24, !dbg !3306

do.body24:                                        ; preds = %do.body23
  br label %do.end25, !dbg !3308

do.end25:                                         ; preds = %do.body24
  br label %do.body26, !dbg !3306

do.body26:                                        ; preds = %do.end25
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 536, i32 2313, i64 12) #9, !dbg !3310, !srcloc !3312
  br label %do.end27, !dbg !3310

do.end27:                                         ; preds = %do.body26
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 174) #9, !dbg !3313, !srcloc !3315
  br label %do.body28, !dbg !3306

do.body28:                                        ; preds = %do.end27
  br label %do.end29, !dbg !3316

do.end29:                                         ; preds = %do.body28
  br label %do.end30, !dbg !3306

do.end30:                                         ; preds = %do.end29
  br label %do.body31, !dbg !3302

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !3318

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !3302

do.end33:                                         ; preds = %do.end32
  br label %if.end, !dbg !3302

if.end:                                           ; preds = %do.end33, %sw.default
  %7 = load i32, i32* %__ret_warn_on, align 4, !dbg !3299
  %tobool34 = icmp ne i32 %7, 0, !dbg !3299
  %lnot35 = xor i1 %tobool34, true, !dbg !3299
  %lnot37 = xor i1 %lnot35, true, !dbg !3299
  %lnot.ext38 = zext i1 %lnot37 to i32, !dbg !3299
  %conv39 = sext i32 %lnot.ext38 to i64, !dbg !3299
  store i64 %conv39, i64* %tmp, align 8, !dbg !3300
  %8 = load i64, i64* %tmp, align 8, !dbg !3299
  br label %sw.epilog, !dbg !3320

sw.epilog:                                        ; preds = %if.end, %sw.bb15, %sw.bb13, %sw.bb11, %sw.bb9, %sw.bb7, %sw.bb5, %sw.bb
  br label %if.end126, !dbg !3321

if.else:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %nand_tech, metadata !3322, metadata !DIExpression()), !dbg !3324
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3325
  %id40 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 1, !dbg !3326
  %data41 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id40, i32 0, i32 0, !dbg !3327
  %arrayidx42 = getelementptr [8 x i8], [8 x i8]* %data41, i64 0, i64 5, !dbg !3325
  %10 = load i8, i8* %arrayidx42, align 1, !dbg !3325
  %conv43 = zext i8 %10 to i32, !dbg !3325
  %and44 = and i32 %conv43, 7, !dbg !3328
  %conv45 = trunc i32 %and44 to i8, !dbg !3325
  store i8 %conv45, i8* %nand_tech, align 1, !dbg !3324
  %11 = load i8, i8* %nand_tech, align 1, !dbg !3329
  %conv46 = zext i8 %11 to i32, !dbg !3329
  %cmp = icmp slt i32 %conv46, 3, !dbg !3331
  br i1 %cmp, label %if.then48, label %if.else104, !dbg !3332

if.then48:                                        ; preds = %if.else
  %12 = load i8, i8* %ecc_level, align 1, !dbg !3333
  %conv49 = zext i8 %12 to i32, !dbg !3333
  %cmp50 = icmp slt i32 %conv49, 5, !dbg !3336
  br i1 %cmp50, label %if.then52, label %if.else56, !dbg !3337

if.then52:                                        ; preds = %if.then48
  %step_size53 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3338
  store i32 512, i32* %step_size53, align 4, !dbg !3340
  %13 = load i8, i8* %ecc_level, align 1, !dbg !3341
  %conv54 = zext i8 %13 to i32, !dbg !3341
  %shl = shl i32 1, %conv54, !dbg !3342
  %strength55 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3343
  store i32 %shl, i32* %strength55, align 4, !dbg !3344
  br label %if.end103, !dbg !3345

if.else56:                                        ; preds = %if.then48
  %14 = load i8, i8* %ecc_level, align 1, !dbg !3346
  %conv57 = zext i8 %14 to i32, !dbg !3346
  %cmp58 = icmp slt i32 %conv57, 7, !dbg !3348
  br i1 %cmp58, label %if.then60, label %if.else70, !dbg !3349

if.then60:                                        ; preds = %if.else56
  %15 = load i8, i8* %ecc_level, align 1, !dbg !3350
  %conv61 = zext i8 %15 to i32, !dbg !3350
  %cmp62 = icmp eq i32 %conv61, 5, !dbg !3353
  br i1 %cmp62, label %if.then64, label %if.else66, !dbg !3354

if.then64:                                        ; preds = %if.then60
  %step_size65 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3355
  store i32 2048, i32* %step_size65, align 4, !dbg !3356
  br label %if.end68, !dbg !3357

if.else66:                                        ; preds = %if.then60
  %step_size67 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3358
  store i32 1024, i32* %step_size67, align 4, !dbg !3359
  br label %if.end68

if.end68:                                         ; preds = %if.else66, %if.then64
  %strength69 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3360
  store i32 24, i32* %strength69, align 4, !dbg !3361
  br label %if.end102, !dbg !3362

if.else70:                                        ; preds = %if.else56
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on71, metadata !3363, metadata !DIExpression()), !dbg !3366
  store i32 1, i32* %__ret_warn_on71, align 4, !dbg !3366
  %16 = load i32, i32* %__ret_warn_on71, align 4, !dbg !3367
  %tobool72 = icmp ne i32 %16, 0, !dbg !3367
  %lnot73 = xor i1 %tobool72, true, !dbg !3367
  %lnot75 = xor i1 %lnot73, true, !dbg !3367
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !3367
  %conv77 = sext i32 %lnot.ext76 to i64, !dbg !3367
  %tobool78 = icmp ne i64 %conv77, 0, !dbg !3367
  br i1 %tobool78, label %if.then79, label %if.end94, !dbg !3366

if.then79:                                        ; preds = %if.else70
  br label %do.body80, !dbg !3367

do.body80:                                        ; preds = %if.then79
  br label %do.body81, !dbg !3369

do.body81:                                        ; preds = %do.body80
  br label %do.end82, !dbg !3371

do.end82:                                         ; preds = %do.body81
  call void (i8*, ...) @__warn_printk(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.5, i64 0, i64 0)) #8, !dbg !3369
  br label %do.body83, !dbg !3369

do.body83:                                        ; preds = %do.end82
  br label %do.body84, !dbg !3373

do.body84:                                        ; preds = %do.body83
  br label %do.end85, !dbg !3375

do.end85:                                         ; preds = %do.body84
  br label %do.body86, !dbg !3373

do.body86:                                        ; preds = %do.end85
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.4, i64 0, i64 0), i32 563, i32 2313, i64 12) #9, !dbg !3377, !srcloc !3379
  br label %do.end87, !dbg !3377

do.end87:                                         ; preds = %do.body86
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 175) #9, !dbg !3380, !srcloc !3382
  br label %do.body88, !dbg !3373

do.body88:                                        ; preds = %do.end87
  br label %do.end89, !dbg !3383

do.end89:                                         ; preds = %do.body88
  br label %do.end90, !dbg !3373

do.end90:                                         ; preds = %do.end89
  br label %do.body91, !dbg !3369

do.body91:                                        ; preds = %do.end90
  br label %do.end92, !dbg !3385

do.end92:                                         ; preds = %do.body91
  br label %do.end93, !dbg !3369

do.end93:                                         ; preds = %do.end92
  br label %if.end94, !dbg !3369

if.end94:                                         ; preds = %do.end93, %if.else70
  %17 = load i32, i32* %__ret_warn_on71, align 4, !dbg !3366
  %tobool96 = icmp ne i32 %17, 0, !dbg !3366
  %lnot97 = xor i1 %tobool96, true, !dbg !3366
  %lnot99 = xor i1 %lnot97, true, !dbg !3366
  %lnot.ext100 = zext i1 %lnot99 to i32, !dbg !3366
  %conv101 = sext i32 %lnot.ext100 to i64, !dbg !3366
  store i64 %conv101, i64* %tmp95, align 8, !dbg !3367
  %18 = load i64, i64* %tmp95, align 8, !dbg !3366
  br label %if.end102

if.end102:                                        ; preds = %if.end94, %if.end68
  br label %if.end103

if.end103:                                        ; preds = %if.end102, %if.then52
  br label %if.end125, !dbg !3387

if.else104:                                       ; preds = %if.else
  %19 = load i8, i8* %ecc_level, align 1, !dbg !3388
  %tobool105 = icmp ne i8 %19, 0, !dbg !3388
  br i1 %tobool105, label %if.else109, label %if.then106, !dbg !3391

if.then106:                                       ; preds = %if.else104
  %step_size107 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3392
  store i32 0, i32* %step_size107, align 4, !dbg !3394
  %strength108 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3395
  store i32 0, i32* %strength108, align 4, !dbg !3396
  br label %if.end124, !dbg !3397

if.else109:                                       ; preds = %if.else104
  %20 = load i8, i8* %ecc_level, align 1, !dbg !3398
  %conv110 = zext i8 %20 to i32, !dbg !3398
  %cmp111 = icmp slt i32 %conv110, 5, !dbg !3400
  br i1 %cmp111, label %if.then113, label %if.else118, !dbg !3401

if.then113:                                       ; preds = %if.else109
  %step_size114 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3402
  store i32 512, i32* %step_size114, align 4, !dbg !3404
  %21 = load i8, i8* %ecc_level, align 1, !dbg !3405
  %conv115 = zext i8 %21 to i32, !dbg !3405
  %sub = sub i32 %conv115, 1, !dbg !3406
  %shl116 = shl i32 1, %sub, !dbg !3407
  %strength117 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3408
  store i32 %shl116, i32* %strength117, align 4, !dbg !3409
  br label %if.end123, !dbg !3410

if.else118:                                       ; preds = %if.else109
  %step_size119 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 4, !dbg !3411
  store i32 1024, i32* %step_size119, align 4, !dbg !3413
  %22 = load i8, i8* %ecc_level, align 1, !dbg !3414
  %conv120 = zext i8 %22 to i32, !dbg !3414
  %sub121 = sub i32 %conv120, 5, !dbg !3415
  %mul = mul i32 8, %sub121, !dbg !3416
  %add = add i32 24, %mul, !dbg !3417
  %strength122 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %requirements, i32 0, i32 3, !dbg !3418
  store i32 %add, i32* %strength122, align 4, !dbg !3419
  br label %if.end123

if.end123:                                        ; preds = %if.else118, %if.then113
  br label %if.end124

if.end124:                                        ; preds = %if.end123, %if.then106
  br label %if.end125

if.end125:                                        ; preds = %if.end124, %if.end103
  br label %if.end126

if.end126:                                        ; preds = %if.end125, %sw.epilog
  %23 = load %struct.nand_device*, %struct.nand_device** %base, align 8, !dbg !3420
  call void @nanddev_set_ecc_requirements(%struct.nand_device* %23, %struct.nand_ecc_props* %requirements) #8, !dbg !3421
  ret void, !dbg !3422
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @hynix_nand_extract_scrambling_requirements(%struct.nand_chip* %chip, i1 zeroext %valid_jedecid) #0 !dbg !3423 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %valid_jedecid.addr = alloca i8, align 1
  %nand_tech = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3424, metadata !DIExpression()), !dbg !3425
  %frombool = zext i1 %valid_jedecid to i8
  store i8 %frombool, i8* %valid_jedecid.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %valid_jedecid.addr, metadata !3426, metadata !DIExpression()), !dbg !3427
  call void @llvm.dbg.declare(metadata i8* %nand_tech, metadata !3428, metadata !DIExpression()), !dbg !3429
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3430
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3432
  %call = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base) #8, !dbg !3433
  %cmp = icmp ugt i32 %call, 2, !dbg !3434
  br i1 %cmp, label %if.then, label %if.end, !dbg !3435

if.then:                                          ; preds = %entry
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3436
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 6, !dbg !3437
  %2 = load i32, i32* %options, align 8, !dbg !3438
  %conv = zext i32 %2 to i64, !dbg !3438
  %or = or i64 %conv, 8192, !dbg !3438
  %conv1 = trunc i64 %or to i32, !dbg !3438
  store i32 %conv1, i32* %options, align 8, !dbg !3438
  br label %if.end, !dbg !3436

if.end:                                           ; preds = %if.then, %entry
  %3 = load i8, i8* %valid_jedecid.addr, align 1, !dbg !3439
  %tobool = trunc i8 %3 to i1, !dbg !3439
  br i1 %tobool, label %if.then2, label %if.else, !dbg !3441

if.then2:                                         ; preds = %if.end
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3442
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 1, !dbg !3444
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 0, !dbg !3445
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 5, !dbg !3442
  %5 = load i8, i8* %arrayidx, align 1, !dbg !3442
  %conv3 = zext i8 %5 to i32, !dbg !3442
  %shr = ashr i32 %conv3, 4, !dbg !3446
  %conv4 = trunc i32 %shr to i8, !dbg !3442
  store i8 %conv4, i8* %nand_tech, align 1, !dbg !3447
  %6 = load i8, i8* %nand_tech, align 1, !dbg !3448
  %conv5 = zext i8 %6 to i32, !dbg !3448
  %cmp6 = icmp sgt i32 %conv5, 0, !dbg !3450
  br i1 %cmp6, label %if.then8, label %if.end13, !dbg !3451

if.then8:                                         ; preds = %if.then2
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3452
  %options9 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 6, !dbg !3453
  %8 = load i32, i32* %options9, align 8, !dbg !3454
  %conv10 = zext i32 %8 to i64, !dbg !3454
  %or11 = or i64 %conv10, 8192, !dbg !3454
  %conv12 = trunc i64 %or11 to i32, !dbg !3454
  store i32 %conv12, i32* %options9, align 8, !dbg !3454
  br label %if.end13, !dbg !3452

if.end13:                                         ; preds = %if.then8, %if.then2
  br label %if.end28, !dbg !3455

if.else:                                          ; preds = %if.end
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3456
  %id14 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 1, !dbg !3458
  %data15 = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id14, i32 0, i32 0, !dbg !3459
  %arrayidx16 = getelementptr [8 x i8], [8 x i8]* %data15, i64 0, i64 5, !dbg !3456
  %10 = load i8, i8* %arrayidx16, align 1, !dbg !3456
  %conv17 = zext i8 %10 to i32, !dbg !3456
  %and = and i32 %conv17, 7, !dbg !3460
  %conv18 = trunc i32 %and to i8, !dbg !3456
  store i8 %conv18, i8* %nand_tech, align 1, !dbg !3461
  %11 = load i8, i8* %nand_tech, align 1, !dbg !3462
  %conv19 = zext i8 %11 to i32, !dbg !3462
  %cmp20 = icmp sgt i32 %conv19, 2, !dbg !3464
  br i1 %cmp20, label %if.then22, label %if.end27, !dbg !3465

if.then22:                                        ; preds = %if.else
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3466
  %options23 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %12, i32 0, i32 6, !dbg !3467
  %13 = load i32, i32* %options23, align 8, !dbg !3468
  %conv24 = zext i32 %13 to i64, !dbg !3468
  %or25 = or i64 %conv24, 8192, !dbg !3468
  %conv26 = trunc i64 %or25 to i32, !dbg !3468
  store i32 %conv26, i32* %options23, align 8, !dbg !3468
  br label %if.end27, !dbg !3466

if.end27:                                         ; preds = %if.then22, %if.else
  br label %if.end28

if.end28:                                         ; preds = %if.end27, %if.end13
  ret void, !dbg !3469
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_bits_per_cell(%struct.nand_device* %nand) #0 !dbg !3470 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3475, metadata !DIExpression()), !dbg !3476
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3477
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !3478
  %bits_per_cell = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 0, !dbg !3479
  %1 = load i32, i32* %bits_per_cell, align 8, !dbg !3479
  ret i32 %1, !dbg !3480
}

; Function Attrs: noredzone
declare dso_local void @__warn_printk(i8*, ...) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i8 zeroext, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nanddev_set_ecc_requirements(%struct.nand_device* %nand, %struct.nand_ecc_props* %reqs) #0 !dbg !3481 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  %reqs.addr = alloca %struct.nand_ecc_props*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3486, metadata !DIExpression()), !dbg !3487
  store %struct.nand_ecc_props* %reqs, %struct.nand_ecc_props** %reqs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %reqs.addr, metadata !3488, metadata !DIExpression()), !dbg !3489
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3490
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !3491
  %requirements = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 1, !dbg !3492
  %1 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %reqs.addr, align 8, !dbg !3493
  %2 = bitcast %struct.nand_ecc_props* %requirements to i8*, !dbg !3494
  %3 = bitcast %struct.nand_ecc_props* %1 to i8*, !dbg !3494
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %2, i8* align 4 %3, i64 24, i1 false), !dbg !3494
  ret void, !dbg !3495
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3496 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3499, metadata !DIExpression()), !dbg !3503
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3509, metadata !DIExpression()), !dbg !3510
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3511, metadata !DIExpression()), !dbg !3512
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3513, metadata !DIExpression()), !dbg !3514
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3515, metadata !DIExpression()), !dbg !3519
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3521, metadata !DIExpression()), !dbg !3525
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3527, metadata !DIExpression()), !dbg !3531
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3536, metadata !DIExpression()), !dbg !3537
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3538, metadata !DIExpression()), !dbg !3539
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3540, metadata !DIExpression()), !dbg !3541
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !3543
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3544, metadata !DIExpression()), !dbg !3545
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3546, metadata !DIExpression()), !dbg !3547
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3548, metadata !DIExpression()), !dbg !3549
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3550, metadata !DIExpression()), !dbg !3551
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3554, metadata !DIExpression()), !dbg !3555
  %0 = load i64, i64* %size.addr, align 8, !dbg !3556
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3557
  %or = or i32 %1, 256, !dbg !3558
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3559
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !3560
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3561

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3562
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3563
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3564

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3565
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3566
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3567
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !3568
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3545
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3569
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3570
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3571
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3572
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3573
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3574
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !3575
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3575
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3575
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3575
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3575
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3576
  br label %kmalloc.exit, !dbg !3576

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3577
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3578
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3578
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3580

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3581
  br label %kmalloc_index.exit.i, !dbg !3581

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3582
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3584
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3585

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3586
  br label %kmalloc_index.exit.i, !dbg !3586

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3587
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3589
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3590

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3591
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3592
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3593

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3594
  br label %kmalloc_index.exit.i, !dbg !3594

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3595
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3597
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3598

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3599
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3600
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3601

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3602
  br label %kmalloc_index.exit.i, !dbg !3602

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3603
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3605
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3606

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3607
  br label %kmalloc_index.exit.i, !dbg !3607

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3608
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3610
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3611

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3612
  br label %kmalloc_index.exit.i, !dbg !3612

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3613
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3615
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3616

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3617
  br label %kmalloc_index.exit.i, !dbg !3617

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3618
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3620
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3621

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3622
  br label %kmalloc_index.exit.i, !dbg !3622

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3623
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3625
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3626

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3627
  br label %kmalloc_index.exit.i, !dbg !3627

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3628
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3630
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3631

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3632
  br label %kmalloc_index.exit.i, !dbg !3632

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3633
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3635
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3636

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3637
  br label %kmalloc_index.exit.i, !dbg !3637

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3638
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3640
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3641

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3642
  br label %kmalloc_index.exit.i, !dbg !3642

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3643
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3645
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3646

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3647
  br label %kmalloc_index.exit.i, !dbg !3647

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3648
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3650
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3651

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3652
  br label %kmalloc_index.exit.i, !dbg !3652

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3653
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3655
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3656

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3657
  br label %kmalloc_index.exit.i, !dbg !3657

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3658
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3660
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3661

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3662
  br label %kmalloc_index.exit.i, !dbg !3662

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3663
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3665
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3666

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3667
  br label %kmalloc_index.exit.i, !dbg !3667

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3668
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3670
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3671

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3672
  br label %kmalloc_index.exit.i, !dbg !3672

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3673
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3675
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3676

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3677
  br label %kmalloc_index.exit.i, !dbg !3677

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3678
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3680
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3681

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3682
  br label %kmalloc_index.exit.i, !dbg !3682

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3683
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3685
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3686

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3687
  br label %kmalloc_index.exit.i, !dbg !3687

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3688
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3690
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3691

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3692
  br label %kmalloc_index.exit.i, !dbg !3692

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3693
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3695
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3696

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3697
  br label %kmalloc_index.exit.i, !dbg !3697

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3698
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3700
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3701

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3702
  br label %kmalloc_index.exit.i, !dbg !3702

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3703
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3705
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3706

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3707
  br label %kmalloc_index.exit.i, !dbg !3707

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3708
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3710
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3711

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3712
  br label %kmalloc_index.exit.i, !dbg !3712

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3713
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3715
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3716

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3717
  br label %kmalloc_index.exit.i, !dbg !3717

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3718
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3720
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3721

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3722
  br label %kmalloc_index.exit.i, !dbg !3722

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3723, !srcloc !3726
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !3727, !srcloc !3730
  unreachable, !dbg !3731

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3732
  store i32 %45, i32* %index.i, align 4, !dbg !3733
  %46 = load i32, i32* %index.i, align 4, !dbg !3734
  %tobool.i = icmp ne i32 %46, 0, !dbg !3734
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3736

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3737
  br label %kmalloc.exit, !dbg !3737

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3738
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3739
  %and.i.i = and i32 %48, 17, !dbg !3739
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3739
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3739
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3739
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3739
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3741

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3742
  br label %kmalloc_type.exit.i, !dbg !3742

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3743
  %and2.i.i = and i32 %49, 1, !dbg !3744
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3743
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3743
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3743
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3745
  br label %kmalloc_type.exit.i, !dbg !3745

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3746
  %idxprom.i = zext i32 %51 to i64, !dbg !3747
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3747
  %52 = load i32, i32* %index.i, align 4, !dbg !3748
  %idxprom6.i = zext i32 %52 to i64, !dbg !3747
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3747
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3747
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3749
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3750
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3751
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3752
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !3753
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3753
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3753
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3753
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3753
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3514
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3754
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3755
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3756
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3757
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !3758
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3759
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3760
  store i8* %62, i8** %retval.i, align 8, !dbg !3761
  br label %kmalloc.exit, !dbg !3761

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3762
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3763
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !3764
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3764
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3764
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3764
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3764
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3765
  br label %kmalloc.exit, !dbg !3765

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3766
  ret i8* %65, !dbg !3767
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_set_manufacturer_data(%struct.nand_chip* %chip, i8* %priv) #0 !dbg !3768 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %priv.addr = alloca i8*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3771, metadata !DIExpression()), !dbg !3772
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !3773, metadata !DIExpression()), !dbg !3774
  %0 = load i8*, i8** %priv.addr, align 8, !dbg !3775
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3776
  %manufacturer = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 3, !dbg !3777
  %priv1 = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer, i32 0, i32 1, !dbg !3778
  store i8* %0, i8** %priv1, align 8, !dbg !3779
  ret void, !dbg !3780
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @h27ucg8t2atrbc_choose_interface_config(%struct.nand_chip* %chip, %struct.nand_interface_config* %iface) #0 !dbg !3781 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %iface.addr = alloca %struct.nand_interface_config*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3782, metadata !DIExpression()), !dbg !3783
  store %struct.nand_interface_config* %iface, %struct.nand_interface_config** %iface.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_interface_config** %iface.addr, metadata !3784, metadata !DIExpression()), !dbg !3785
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3786
  %1 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3787
  call void @onfi_fill_interface_config(%struct.nand_chip* %0, %struct.nand_interface_config* %1, i32 0, i32 4) #8, !dbg !3788
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3789
  %3 = load %struct.nand_interface_config*, %struct.nand_interface_config** %iface.addr, align 8, !dbg !3790
  %call = call i32 @nand_choose_best_sdr_timings(%struct.nand_chip* %2, %struct.nand_interface_config* %3, %struct.nand_sdr_timings* null) #8, !dbg !3791
  ret i32 %call, !dbg !3792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_nand_rr_init(%struct.nand_chip* %chip) #0 !dbg !3793 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %valid_jedecid = alloca i8, align 1
  %nand_tech = alloca i8, align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3796, metadata !DIExpression()), !dbg !3797
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3798, metadata !DIExpression()), !dbg !3799
  store i32 0, i32* %ret, align 4, !dbg !3799
  call void @llvm.dbg.declare(metadata i8* %valid_jedecid, metadata !3800, metadata !DIExpression()), !dbg !3801
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3802
  %call = call zeroext i1 @hynix_nand_has_valid_jedecid(%struct.nand_chip* %0) #8, !dbg !3803
  %frombool = zext i1 %call to i8, !dbg !3804
  store i8 %frombool, i8* %valid_jedecid, align 1, !dbg !3804
  %1 = load i8, i8* %valid_jedecid, align 1, !dbg !3805
  %tobool = trunc i8 %1 to i1, !dbg !3805
  br i1 %tobool, label %if.then, label %if.end12, !dbg !3807

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata i8* %nand_tech, metadata !3808, metadata !DIExpression()), !dbg !3810
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3811
  %id = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 1, !dbg !3812
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id, i32 0, i32 0, !dbg !3813
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 5, !dbg !3811
  %3 = load i8, i8* %arrayidx, align 1, !dbg !3811
  %conv = zext i8 %3 to i32, !dbg !3811
  %shr = ashr i32 %conv, 4, !dbg !3814
  %conv1 = trunc i32 %shr to i8, !dbg !3811
  store i8 %conv1, i8* %nand_tech, align 1, !dbg !3810
  %4 = load i8, i8* %nand_tech, align 1, !dbg !3815
  %conv2 = zext i8 %4 to i32, !dbg !3815
  %cmp = icmp eq i32 %conv2, 4, !dbg !3817
  br i1 %cmp, label %if.then4, label %if.end11, !dbg !3818

if.then4:                                         ; preds = %if.then
  store i32 0, i32* %i, align 4, !dbg !3819
  br label %for.cond, !dbg !3822

for.cond:                                         ; preds = %for.inc, %if.then4
  %5 = load i32, i32* %i, align 4, !dbg !3823
  %conv5 = sext i32 %5 to i64, !dbg !3823
  %cmp6 = icmp ult i64 %conv5, 2, !dbg !3825
  br i1 %cmp6, label %for.body, label %for.end, !dbg !3826

for.body:                                         ; preds = %for.cond
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3827
  %call8 = call i32 @hynix_mlc_1xnm_rr_init(%struct.nand_chip* %6, %struct.hynix_read_retry_otp* getelementptr inbounds ([2 x %struct.hynix_read_retry_otp], [2 x %struct.hynix_read_retry_otp]* @hynix_mlc_1xnm_rr_otps, i64 0, i64 0)) #8, !dbg !3829
  store i32 %call8, i32* %ret, align 4, !dbg !3830
  %7 = load i32, i32* %ret, align 4, !dbg !3831
  %tobool9 = icmp ne i32 %7, 0, !dbg !3831
  br i1 %tobool9, label %if.end, label %if.then10, !dbg !3833

if.then10:                                        ; preds = %for.body
  br label %for.end, !dbg !3834

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3835

for.inc:                                          ; preds = %if.end
  %8 = load i32, i32* %i, align 4, !dbg !3836
  %inc = add i32 %8, 1, !dbg !3836
  store i32 %inc, i32* %i, align 4, !dbg !3836
  br label %for.cond, !dbg !3837, !llvm.loop !3838

for.end:                                          ; preds = %if.then10, %for.cond
  br label %if.end11, !dbg !3840

if.end11:                                         ; preds = %for.end, %if.then
  br label %if.end12, !dbg !3841

if.end12:                                         ; preds = %if.end11, %entry
  %9 = load i32, i32* %ret, align 4, !dbg !3842
  %tobool13 = icmp ne i32 %9, 0, !dbg !3842
  br i1 %tobool13, label %if.then14, label %if.end16, !dbg !3844

if.then14:                                        ; preds = %if.end12
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.8, i64 0, i64 0)) #12, !dbg !3845
  br label %if.end16, !dbg !3845

if.end16:                                         ; preds = %if.then14, %if.end12
  ret i32 0, !dbg !3846
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3847 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3851, metadata !DIExpression()), !dbg !3856
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3858, metadata !DIExpression()), !dbg !3859
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3860, metadata !DIExpression()), !dbg !3861
  %0 = load i64, i64* %size.addr, align 8, !dbg !3862
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3864
  br i1 %1, label %if.then, label %if.end447, !dbg !3865

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3866
  %tobool = icmp ne i64 %2, 0, !dbg !3866
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3869

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3870
  br label %return, !dbg !3870

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3871
  %cmp = icmp ult i64 %3, 4096, !dbg !3873
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3874

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3875
  br label %return, !dbg !3875

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub = sub i64 %4, 1, !dbg !3876
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3876
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3876

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub4 = sub i64 %6, 1, !dbg !3876
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3876
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3876

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub6 = sub i64 %8, 1, !dbg !3876
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3876
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3876

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3876

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub9 = sub i64 %9, 1, !dbg !3876
  %and = and i64 %sub9, -9223372036854775808, !dbg !3876
  %tobool10 = icmp ne i64 %and, 0, !dbg !3876
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3876

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3876

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub13 = sub i64 %10, 1, !dbg !3876
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3876
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3876
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3876

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3876

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub18 = sub i64 %11, 1, !dbg !3876
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3876
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3876
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3876

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3876

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub23 = sub i64 %12, 1, !dbg !3876
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3876
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3876
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3876

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3876

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub28 = sub i64 %13, 1, !dbg !3876
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3876
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3876
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3876

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3876

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub33 = sub i64 %14, 1, !dbg !3876
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3876
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3876
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3876

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3876

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub38 = sub i64 %15, 1, !dbg !3876
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3876
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3876
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3876

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3876

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub43 = sub i64 %16, 1, !dbg !3876
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3876
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3876
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3876

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3876

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub48 = sub i64 %17, 1, !dbg !3876
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3876
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3876
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3876

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3876

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub53 = sub i64 %18, 1, !dbg !3876
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3876
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3876
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3876

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3876

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub58 = sub i64 %19, 1, !dbg !3876
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3876
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3876
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3876

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3876

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub63 = sub i64 %20, 1, !dbg !3876
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3876
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3876
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3876

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3876

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub68 = sub i64 %21, 1, !dbg !3876
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3876
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3876
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3876

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3876

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub73 = sub i64 %22, 1, !dbg !3876
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3876
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3876
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3876

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3876

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub78 = sub i64 %23, 1, !dbg !3876
  %and79 = and i64 %sub78, 562949953421312, !dbg !3876
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3876
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3876

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3876

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub83 = sub i64 %24, 1, !dbg !3876
  %and84 = and i64 %sub83, 281474976710656, !dbg !3876
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3876
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3876

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3876

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub88 = sub i64 %25, 1, !dbg !3876
  %and89 = and i64 %sub88, 140737488355328, !dbg !3876
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3876
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3876

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3876

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub93 = sub i64 %26, 1, !dbg !3876
  %and94 = and i64 %sub93, 70368744177664, !dbg !3876
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3876
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3876

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3876

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub98 = sub i64 %27, 1, !dbg !3876
  %and99 = and i64 %sub98, 35184372088832, !dbg !3876
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3876
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3876

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3876

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub103 = sub i64 %28, 1, !dbg !3876
  %and104 = and i64 %sub103, 17592186044416, !dbg !3876
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3876
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3876

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3876

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub108 = sub i64 %29, 1, !dbg !3876
  %and109 = and i64 %sub108, 8796093022208, !dbg !3876
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3876
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3876

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3876

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub113 = sub i64 %30, 1, !dbg !3876
  %and114 = and i64 %sub113, 4398046511104, !dbg !3876
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3876
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3876

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3876

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub118 = sub i64 %31, 1, !dbg !3876
  %and119 = and i64 %sub118, 2199023255552, !dbg !3876
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3876
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3876

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3876

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub123 = sub i64 %32, 1, !dbg !3876
  %and124 = and i64 %sub123, 1099511627776, !dbg !3876
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3876
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3876

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3876

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub128 = sub i64 %33, 1, !dbg !3876
  %and129 = and i64 %sub128, 549755813888, !dbg !3876
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3876
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3876

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3876

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub133 = sub i64 %34, 1, !dbg !3876
  %and134 = and i64 %sub133, 274877906944, !dbg !3876
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3876
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3876

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3876

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub138 = sub i64 %35, 1, !dbg !3876
  %and139 = and i64 %sub138, 137438953472, !dbg !3876
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3876
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3876

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3876

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub143 = sub i64 %36, 1, !dbg !3876
  %and144 = and i64 %sub143, 68719476736, !dbg !3876
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3876
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3876

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3876

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub148 = sub i64 %37, 1, !dbg !3876
  %and149 = and i64 %sub148, 34359738368, !dbg !3876
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3876
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3876

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3876

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub153 = sub i64 %38, 1, !dbg !3876
  %and154 = and i64 %sub153, 17179869184, !dbg !3876
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3876
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3876

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3876

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub158 = sub i64 %39, 1, !dbg !3876
  %and159 = and i64 %sub158, 8589934592, !dbg !3876
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3876
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3876

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3876

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub163 = sub i64 %40, 1, !dbg !3876
  %and164 = and i64 %sub163, 4294967296, !dbg !3876
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3876
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3876

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3876

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub168 = sub i64 %41, 1, !dbg !3876
  %and169 = and i64 %sub168, 2147483648, !dbg !3876
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3876
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3876

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3876

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub173 = sub i64 %42, 1, !dbg !3876
  %and174 = and i64 %sub173, 1073741824, !dbg !3876
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3876
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3876

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3876

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub178 = sub i64 %43, 1, !dbg !3876
  %and179 = and i64 %sub178, 536870912, !dbg !3876
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3876
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3876

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3876

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub183 = sub i64 %44, 1, !dbg !3876
  %and184 = and i64 %sub183, 268435456, !dbg !3876
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3876
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3876

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3876

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub188 = sub i64 %45, 1, !dbg !3876
  %and189 = and i64 %sub188, 134217728, !dbg !3876
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3876
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3876

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3876

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub193 = sub i64 %46, 1, !dbg !3876
  %and194 = and i64 %sub193, 67108864, !dbg !3876
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3876
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3876

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3876

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub198 = sub i64 %47, 1, !dbg !3876
  %and199 = and i64 %sub198, 33554432, !dbg !3876
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3876
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3876

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3876

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub203 = sub i64 %48, 1, !dbg !3876
  %and204 = and i64 %sub203, 16777216, !dbg !3876
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3876
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3876

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3876

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub208 = sub i64 %49, 1, !dbg !3876
  %and209 = and i64 %sub208, 8388608, !dbg !3876
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3876
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3876

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3876

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub213 = sub i64 %50, 1, !dbg !3876
  %and214 = and i64 %sub213, 4194304, !dbg !3876
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3876
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3876

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3876

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub218 = sub i64 %51, 1, !dbg !3876
  %and219 = and i64 %sub218, 2097152, !dbg !3876
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3876
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3876

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3876

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub223 = sub i64 %52, 1, !dbg !3876
  %and224 = and i64 %sub223, 1048576, !dbg !3876
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3876
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3876

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3876

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub228 = sub i64 %53, 1, !dbg !3876
  %and229 = and i64 %sub228, 524288, !dbg !3876
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3876
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3876

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3876

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub233 = sub i64 %54, 1, !dbg !3876
  %and234 = and i64 %sub233, 262144, !dbg !3876
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3876
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3876

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3876

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub238 = sub i64 %55, 1, !dbg !3876
  %and239 = and i64 %sub238, 131072, !dbg !3876
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3876
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3876

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3876

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub243 = sub i64 %56, 1, !dbg !3876
  %and244 = and i64 %sub243, 65536, !dbg !3876
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3876
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3876

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3876

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub248 = sub i64 %57, 1, !dbg !3876
  %and249 = and i64 %sub248, 32768, !dbg !3876
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3876
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3876

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3876

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub253 = sub i64 %58, 1, !dbg !3876
  %and254 = and i64 %sub253, 16384, !dbg !3876
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3876
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3876

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3876

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub258 = sub i64 %59, 1, !dbg !3876
  %and259 = and i64 %sub258, 8192, !dbg !3876
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3876
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3876

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3876

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub263 = sub i64 %60, 1, !dbg !3876
  %and264 = and i64 %sub263, 4096, !dbg !3876
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3876
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3876

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3876

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub268 = sub i64 %61, 1, !dbg !3876
  %and269 = and i64 %sub268, 2048, !dbg !3876
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3876
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3876

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3876

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub273 = sub i64 %62, 1, !dbg !3876
  %and274 = and i64 %sub273, 1024, !dbg !3876
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3876
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3876

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3876

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub278 = sub i64 %63, 1, !dbg !3876
  %and279 = and i64 %sub278, 512, !dbg !3876
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3876
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3876

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3876

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub283 = sub i64 %64, 1, !dbg !3876
  %and284 = and i64 %sub283, 256, !dbg !3876
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3876
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3876

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3876

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub288 = sub i64 %65, 1, !dbg !3876
  %and289 = and i64 %sub288, 128, !dbg !3876
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3876
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3876

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3876

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub293 = sub i64 %66, 1, !dbg !3876
  %and294 = and i64 %sub293, 64, !dbg !3876
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3876
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3876

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3876

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub298 = sub i64 %67, 1, !dbg !3876
  %and299 = and i64 %sub298, 32, !dbg !3876
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3876
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3876

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3876

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub303 = sub i64 %68, 1, !dbg !3876
  %and304 = and i64 %sub303, 16, !dbg !3876
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3876
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3876

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3876

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub308 = sub i64 %69, 1, !dbg !3876
  %and309 = and i64 %sub308, 8, !dbg !3876
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3876
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3876

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3876

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub313 = sub i64 %70, 1, !dbg !3876
  %and314 = and i64 %sub313, 4, !dbg !3876
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3876
  %71 = zext i1 %tobool315 to i64, !dbg !3876
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3876
  br label %cond.end, !dbg !3876

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3876
  br label %cond.end317, !dbg !3876

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3876
  br label %cond.end319, !dbg !3876

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3876
  br label %cond.end321, !dbg !3876

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3876
  br label %cond.end323, !dbg !3876

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3876
  br label %cond.end325, !dbg !3876

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3876
  br label %cond.end327, !dbg !3876

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3876
  br label %cond.end329, !dbg !3876

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3876
  br label %cond.end331, !dbg !3876

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3876
  br label %cond.end333, !dbg !3876

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3876
  br label %cond.end335, !dbg !3876

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3876
  br label %cond.end337, !dbg !3876

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3876
  br label %cond.end339, !dbg !3876

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3876
  br label %cond.end341, !dbg !3876

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3876
  br label %cond.end343, !dbg !3876

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3876
  br label %cond.end345, !dbg !3876

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3876
  br label %cond.end347, !dbg !3876

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3876
  br label %cond.end349, !dbg !3876

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3876
  br label %cond.end351, !dbg !3876

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3876
  br label %cond.end353, !dbg !3876

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3876
  br label %cond.end355, !dbg !3876

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3876
  br label %cond.end357, !dbg !3876

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3876
  br label %cond.end359, !dbg !3876

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3876
  br label %cond.end361, !dbg !3876

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3876
  br label %cond.end363, !dbg !3876

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3876
  br label %cond.end365, !dbg !3876

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3876
  br label %cond.end367, !dbg !3876

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3876
  br label %cond.end369, !dbg !3876

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3876
  br label %cond.end371, !dbg !3876

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3876
  br label %cond.end373, !dbg !3876

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3876
  br label %cond.end375, !dbg !3876

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3876
  br label %cond.end377, !dbg !3876

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3876
  br label %cond.end379, !dbg !3876

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3876
  br label %cond.end381, !dbg !3876

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3876
  br label %cond.end383, !dbg !3876

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3876
  br label %cond.end385, !dbg !3876

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3876
  br label %cond.end387, !dbg !3876

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3876
  br label %cond.end389, !dbg !3876

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3876
  br label %cond.end391, !dbg !3876

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3876
  br label %cond.end393, !dbg !3876

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3876
  br label %cond.end395, !dbg !3876

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3876
  br label %cond.end397, !dbg !3876

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3876
  br label %cond.end399, !dbg !3876

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3876
  br label %cond.end401, !dbg !3876

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3876
  br label %cond.end403, !dbg !3876

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3876
  br label %cond.end405, !dbg !3876

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3876
  br label %cond.end407, !dbg !3876

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3876
  br label %cond.end409, !dbg !3876

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3876
  br label %cond.end411, !dbg !3876

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3876
  br label %cond.end413, !dbg !3876

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3876
  br label %cond.end415, !dbg !3876

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3876
  br label %cond.end417, !dbg !3876

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3876
  br label %cond.end419, !dbg !3876

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3876
  br label %cond.end421, !dbg !3876

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3876
  br label %cond.end423, !dbg !3876

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3876
  br label %cond.end425, !dbg !3876

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3876
  br label %cond.end427, !dbg !3876

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3876
  br label %cond.end429, !dbg !3876

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3876
  br label %cond.end431, !dbg !3876

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3876
  br label %cond.end433, !dbg !3876

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3876
  br label %cond.end435, !dbg !3876

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3876
  br label %cond.end437, !dbg !3876

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3876
  br label %cond.end440, !dbg !3876

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3876

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3876
  br label %cond.end444, !dbg !3876

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3876
  %sub443 = sub i64 %72, 1, !dbg !3876
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3876
  br label %cond.end444, !dbg !3876

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3876
  %sub446 = sub i32 %cond445, 12, !dbg !3877
  %add = add i32 %sub446, 1, !dbg !3878
  store i32 %add, i32* %retval, align 4, !dbg !3879
  br label %return, !dbg !3879

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3880
  %dec = add i64 %73, -1, !dbg !3880
  store i64 %dec, i64* %size.addr, align 8, !dbg !3880
  %74 = load i64, i64* %size.addr, align 8, !dbg !3881
  %shr = lshr i64 %74, 12, !dbg !3881
  store i64 %shr, i64* %size.addr, align 8, !dbg !3881
  %75 = load i64, i64* %size.addr, align 8, !dbg !3882
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3859
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3883
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3884
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !3883, !srcloc !3885
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3883
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3886
  %add.i = add i32 %79, 1, !dbg !3887
  store i32 %add.i, i32* %retval, align 4, !dbg !3888
  br label %return, !dbg !3888

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3889
  ret i32 %80, !dbg !3889
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3890 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3851, metadata !DIExpression()), !dbg !3894
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3858, metadata !DIExpression()), !dbg !3896
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3897, metadata !DIExpression()), !dbg !3898
  %0 = load i64, i64* %n.addr, align 8, !dbg !3899
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3896
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3900
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3901
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !3900, !srcloc !3885
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3900
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3902
  %add.i = add i32 %4, 1, !dbg !3903
  %sub = sub i32 %add.i, 1, !dbg !3904
  ret i32 %sub, !dbg !3905
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3906 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3909, metadata !DIExpression()), !dbg !3910
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3911, metadata !DIExpression()), !dbg !3912
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3913, metadata !DIExpression()), !dbg !3914
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3915, metadata !DIExpression()), !dbg !3916
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3917
  ret i8* %0, !dbg !3918
}

; Function Attrs: noredzone
declare dso_local void @onfi_fill_interface_config(%struct.nand_chip*, %struct.nand_interface_config*, i32, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_choose_best_sdr_timings(%struct.nand_chip*, %struct.nand_interface_config*, %struct.nand_sdr_timings*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_mlc_1xnm_rr_init(%struct.nand_chip* %chip, %struct.hynix_read_retry_otp* %info) #0 !dbg !3919 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3499, metadata !DIExpression()), !dbg !3923
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3509, metadata !DIExpression()), !dbg !3926
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3511, metadata !DIExpression()), !dbg !3927
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3513, metadata !DIExpression()), !dbg !3928
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3515, metadata !DIExpression()), !dbg !3929
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3521, metadata !DIExpression()), !dbg !3931
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3527, metadata !DIExpression()), !dbg !3933
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3536, metadata !DIExpression()), !dbg !3936
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3538, metadata !DIExpression()), !dbg !3937
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3540, metadata !DIExpression()), !dbg !3938
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3542, metadata !DIExpression()), !dbg !3939
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3544, metadata !DIExpression()), !dbg !3940
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3546, metadata !DIExpression()), !dbg !3941
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3548, metadata !DIExpression()), !dbg !3942
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3550, metadata !DIExpression()), !dbg !3943
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %info.addr = alloca %struct.hynix_read_retry_otp*, align 8
  %hynix = alloca %struct.hynix_nand*, align 8
  %rr = alloca %struct.hynix_read_retry*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %nregs = alloca i8, align 1
  %nmodes = alloca i8, align 1
  %buf = alloca i8*, align 8
  %val = alloca i8*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3944, metadata !DIExpression()), !dbg !3945
  store %struct.hynix_read_retry_otp* %info, %struct.hynix_read_retry_otp** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hynix_read_retry_otp** %info.addr, metadata !3946, metadata !DIExpression()), !dbg !3947
  call void @llvm.dbg.declare(metadata %struct.hynix_nand** %hynix, metadata !3948, metadata !DIExpression()), !dbg !3949
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3950
  %call = call i8* @nand_get_manufacturer_data(%struct.nand_chip* %0) #8, !dbg !3951
  %1 = bitcast i8* %call to %struct.hynix_nand*, !dbg !3951
  store %struct.hynix_nand* %1, %struct.hynix_nand** %hynix, align 8, !dbg !3949
  call void @llvm.dbg.declare(metadata %struct.hynix_read_retry** %rr, metadata !3952, metadata !DIExpression()), !dbg !3954
  store %struct.hynix_read_retry* null, %struct.hynix_read_retry** %rr, align 8, !dbg !3954
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3955, metadata !DIExpression()), !dbg !3956
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3957, metadata !DIExpression()), !dbg !3958
  call void @llvm.dbg.declare(metadata i32* %j, metadata !3959, metadata !DIExpression()), !dbg !3960
  call void @llvm.dbg.declare(metadata i8* %nregs, metadata !3961, metadata !DIExpression()), !dbg !3962
  call void @llvm.dbg.declare(metadata i8* %nmodes, metadata !3963, metadata !DIExpression()), !dbg !3964
  call void @llvm.dbg.declare(metadata i8** %buf, metadata !3965, metadata !DIExpression()), !dbg !3966
  %2 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !3967
  %size = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %2, i32 0, i32 4, !dbg !3968
  %3 = load i32, i32* %size, align 4, !dbg !3968
  %conv = sext i32 %3 to i64, !dbg !3967
  store i64 %conv, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3969
  %5 = call i1 @llvm.is.constant.i64(i64 %4) #9, !dbg !3970
  br i1 %5, label %if.then.i, label %if.end9.i, !dbg !3971

if.then.i:                                        ; preds = %entry
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3972
  %cmp.i = icmp ugt i64 %6, 8192, !dbg !3973
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3974

if.then1.i:                                       ; preds = %if.then.i
  %7 = load i64, i64* %size.addr.i, align 8, !dbg !3975
  %8 = load i32, i32* %flags.addr.i, align 4, !dbg !3976
  store i64 %7, i64* %size.addr.i.i, align 8
  store i32 %8, i32* %flags.addr.i.i, align 4
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !3977
  %call.i.i = call i32 @get_order(i64 %9) #10, !dbg !3978
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3940
  %10 = load i64, i64* %size.addr.i.i, align 8, !dbg !3979
  %11 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3980
  %12 = load i32, i32* %order.i.i, align 4, !dbg !3981
  store i64 %10, i64* %size.addr.i.i.i, align 8
  store i32 %11, i32* %flags.addr.i.i.i, align 4
  store i32 %12, i32* %order.addr.i.i.i, align 4
  %13 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3982
  %14 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3983
  %15 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3984
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %13, i32 %14, i32 %15) #11, !dbg !3985
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3985
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3985
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3985
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3985
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3986
  br label %kmalloc.exit, !dbg !3986

if.end.i:                                         ; preds = %if.then.i
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3987
  store i64 %16, i64* %size.addr.i11.i, align 8
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3988
  %tobool.i.i = icmp ne i64 %17, 0, !dbg !3988
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3989

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3990
  br label %kmalloc_index.exit.i, !dbg !3990

if.end.i.i:                                       ; preds = %if.end.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3991
  %cmp.i.i = icmp ule i64 %18, 8, !dbg !3992
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3993

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3994
  br label %kmalloc_index.exit.i, !dbg !3994

if.end2.i.i:                                      ; preds = %if.end.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3995
  %cmp3.i.i = icmp ugt i64 %19, 64, !dbg !3996
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3997

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3998
  %cmp4.i.i = icmp ule i64 %20, 96, !dbg !3999
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4000

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4001
  br label %kmalloc_index.exit.i, !dbg !4001

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4002
  %cmp7.i.i = icmp ugt i64 %21, 128, !dbg !4003
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4004

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4005
  %cmp9.i.i = icmp ule i64 %22, 192, !dbg !4006
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4007

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4008
  br label %kmalloc_index.exit.i, !dbg !4008

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4009
  %cmp12.i.i = icmp ule i64 %23, 8, !dbg !4010
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4011

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4012
  br label %kmalloc_index.exit.i, !dbg !4012

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4013
  %cmp15.i.i = icmp ule i64 %24, 16, !dbg !4014
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4015

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4016
  br label %kmalloc_index.exit.i, !dbg !4016

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4017
  %cmp18.i.i = icmp ule i64 %25, 32, !dbg !4018
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4019

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4020
  br label %kmalloc_index.exit.i, !dbg !4020

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4021
  %cmp21.i.i = icmp ule i64 %26, 64, !dbg !4022
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4023

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4024
  br label %kmalloc_index.exit.i, !dbg !4024

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4025
  %cmp24.i.i = icmp ule i64 %27, 128, !dbg !4026
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4027

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4028
  br label %kmalloc_index.exit.i, !dbg !4028

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4029
  %cmp27.i.i = icmp ule i64 %28, 256, !dbg !4030
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4031

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4032
  br label %kmalloc_index.exit.i, !dbg !4032

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4033
  %cmp30.i.i = icmp ule i64 %29, 512, !dbg !4034
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4035

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4036
  br label %kmalloc_index.exit.i, !dbg !4036

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4037
  %cmp33.i.i = icmp ule i64 %30, 1024, !dbg !4038
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4039

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4040
  br label %kmalloc_index.exit.i, !dbg !4040

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4041
  %cmp36.i.i = icmp ule i64 %31, 2048, !dbg !4042
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4043

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4044
  br label %kmalloc_index.exit.i, !dbg !4044

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4045
  %cmp39.i.i = icmp ule i64 %32, 4096, !dbg !4046
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4047

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4048
  br label %kmalloc_index.exit.i, !dbg !4048

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4049
  %cmp42.i.i = icmp ule i64 %33, 8192, !dbg !4050
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4051

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4052
  br label %kmalloc_index.exit.i, !dbg !4052

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4053
  %cmp45.i.i = icmp ule i64 %34, 16384, !dbg !4054
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4055

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4056
  br label %kmalloc_index.exit.i, !dbg !4056

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4057
  %cmp48.i.i = icmp ule i64 %35, 32768, !dbg !4058
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4059

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4060
  br label %kmalloc_index.exit.i, !dbg !4060

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4061
  %cmp51.i.i = icmp ule i64 %36, 65536, !dbg !4062
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4063

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4064
  br label %kmalloc_index.exit.i, !dbg !4064

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4065
  %cmp54.i.i = icmp ule i64 %37, 131072, !dbg !4066
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4067

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4068
  br label %kmalloc_index.exit.i, !dbg !4068

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4069
  %cmp57.i.i = icmp ule i64 %38, 262144, !dbg !4070
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4071

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4072
  br label %kmalloc_index.exit.i, !dbg !4072

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4073
  %cmp60.i.i = icmp ule i64 %39, 524288, !dbg !4074
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4075

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4076
  br label %kmalloc_index.exit.i, !dbg !4076

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4077
  %cmp63.i.i = icmp ule i64 %40, 1048576, !dbg !4078
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4079

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4080
  br label %kmalloc_index.exit.i, !dbg !4080

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4081
  %cmp66.i.i = icmp ule i64 %41, 2097152, !dbg !4082
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4083

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4084
  br label %kmalloc_index.exit.i, !dbg !4084

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4085
  %cmp69.i.i = icmp ule i64 %42, 4194304, !dbg !4086
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4087

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4088
  br label %kmalloc_index.exit.i, !dbg !4088

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4089
  %cmp72.i.i = icmp ule i64 %43, 8388608, !dbg !4090
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4091

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4092
  br label %kmalloc_index.exit.i, !dbg !4092

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4093
  %cmp75.i.i = icmp ule i64 %44, 16777216, !dbg !4094
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4095

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4096
  br label %kmalloc_index.exit.i, !dbg !4096

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4097
  %cmp78.i.i = icmp ule i64 %45, 33554432, !dbg !4098
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4099

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4100
  br label %kmalloc_index.exit.i, !dbg !4100

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4101
  %cmp81.i.i = icmp ule i64 %46, 67108864, !dbg !4102
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4103

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4104
  br label %kmalloc_index.exit.i, !dbg !4104

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.7, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !4105, !srcloc !3726
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #9, !dbg !4106, !srcloc !3730
  unreachable, !dbg !4107

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %47 = load i32, i32* %retval.i.i, align 4, !dbg !4108
  store i32 %47, i32* %index.i, align 4, !dbg !4109
  %48 = load i32, i32* %index.i, align 4, !dbg !4110
  %tobool.i = icmp ne i32 %48, 0, !dbg !4110
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4111

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4112
  br label %kmalloc.exit, !dbg !4112

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %49 = load i32, i32* %flags.addr.i, align 4, !dbg !4113
  store i32 %49, i32* %flags.addr.i13.i, align 4
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4114
  %and.i.i = and i32 %50, 17, !dbg !4114
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4114
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4114
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4114
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4114
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4115

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4116
  br label %kmalloc_type.exit.i, !dbg !4116

if.end.i16.i:                                     ; preds = %if.end4.i
  %51 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4117
  %and2.i.i = and i32 %51, 1, !dbg !4118
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4117
  %52 = zext i1 %tobool3.i.i to i64, !dbg !4117
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4117
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4119
  br label %kmalloc_type.exit.i, !dbg !4119

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %53 = load i32, i32* %retval.i12.i, align 4, !dbg !4120
  %idxprom.i = zext i32 %53 to i64, !dbg !4121
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4121
  %54 = load i32, i32* %index.i, align 4, !dbg !4122
  %idxprom6.i = zext i32 %54 to i64, !dbg !4121
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4121
  %55 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4121
  %56 = load i32, i32* %flags.addr.i, align 4, !dbg !4123
  %57 = load i64, i64* %size.addr.i, align 8, !dbg !4124
  store %struct.kmem_cache* %55, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %56, i32* %flags.addr.i17.i, align 4
  store i64 %57, i64* %size.addr.i18.i, align 8
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4125
  %59 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4126
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %58, i32 %59) #11, !dbg !4127
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4127
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4127
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4127
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !4127
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3928
  %60 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4128
  %61 = load i8*, i8** %ret.i.i, align 8, !dbg !4129
  %62 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4130
  %63 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4131
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %60, i8* %61, i64 %62, i32 %63) #11, !dbg !4132
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4133
  %64 = load i8*, i8** %ret.i.i, align 8, !dbg !4134
  store i8* %64, i8** %retval.i, align 8, !dbg !4135
  br label %kmalloc.exit, !dbg !4135

if.end9.i:                                        ; preds = %entry
  %65 = load i64, i64* %size.addr.i, align 8, !dbg !4136
  %66 = load i32, i32* %flags.addr.i, align 4, !dbg !4137
  %call10.i = call noalias i8* @__kmalloc(i64 %65, i32 %66) #11, !dbg !4138
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4138
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4138
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4138
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !4138
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4139
  br label %kmalloc.exit, !dbg !4139

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %67 = load i8*, i8** %retval.i, align 8, !dbg !4140
  store i8* %67, i8** %buf, align 8, !dbg !4141
  %68 = load i8*, i8** %buf, align 8, !dbg !4142
  %tobool = icmp ne i8* %68, null, !dbg !4142
  br i1 %tobool, label %if.end, label %if.then, !dbg !4144

if.then:                                          ; preds = %kmalloc.exit
  store i32 -12, i32* %retval, align 4, !dbg !4145
  br label %return, !dbg !4145

if.end:                                           ; preds = %kmalloc.exit
  %69 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4146
  %70 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !4147
  %71 = load i8*, i8** %buf, align 8, !dbg !4148
  %call2 = call i32 @hynix_read_rr_otp(%struct.nand_chip* %69, %struct.hynix_read_retry_otp* %70, i8* %71) #8, !dbg !4149
  store i32 %call2, i32* %ret, align 4, !dbg !4150
  %72 = load i32, i32* %ret, align 4, !dbg !4151
  %tobool3 = icmp ne i32 %72, 0, !dbg !4151
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !4153

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !4154

if.end5:                                          ; preds = %if.end
  %73 = load i8*, i8** %buf, align 8, !dbg !4155
  %call6 = call i32 @hynix_get_majority(i8* %73, i32 8, i8* %nmodes) #8, !dbg !4156
  store i32 %call6, i32* %ret, align 4, !dbg !4157
  %74 = load i32, i32* %ret, align 4, !dbg !4158
  %tobool7 = icmp ne i32 %74, 0, !dbg !4158
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !4160

if.then8:                                         ; preds = %if.end5
  br label %out, !dbg !4161

if.end9:                                          ; preds = %if.end5
  %75 = load i8*, i8** %buf, align 8, !dbg !4162
  %add.ptr = getelementptr i8, i8* %75, i64 8, !dbg !4163
  %call10 = call i32 @hynix_get_majority(i8* %add.ptr, i32 8, i8* %nregs) #8, !dbg !4164
  store i32 %call10, i32* %ret, align 4, !dbg !4165
  %76 = load i32, i32* %ret, align 4, !dbg !4166
  %tobool11 = icmp ne i32 %76, 0, !dbg !4166
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !4168

if.then12:                                        ; preds = %if.end9
  br label %out, !dbg !4169

if.end13:                                         ; preds = %if.end9
  %77 = load i8, i8* %nregs, align 1, !dbg !4170
  %conv14 = zext i8 %77 to i32, !dbg !4170
  %78 = load i8, i8* %nmodes, align 1, !dbg !4171
  %conv15 = zext i8 %78 to i32, !dbg !4171
  %mul = mul i32 %conv14, %conv15, !dbg !4172
  %conv16 = sext i32 %mul to i64, !dbg !4173
  %add = add i64 16, %conv16, !dbg !4174
  %call17 = call i8* @kzalloc(i64 %add, i32 3264) #8, !dbg !4175
  %79 = bitcast i8* %call17 to %struct.hynix_read_retry*, !dbg !4175
  store %struct.hynix_read_retry* %79, %struct.hynix_read_retry** %rr, align 8, !dbg !4176
  %80 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %rr, align 8, !dbg !4177
  %tobool18 = icmp ne %struct.hynix_read_retry* %80, null, !dbg !4177
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4179

if.then19:                                        ; preds = %if.end13
  store i32 -12, i32* %ret, align 4, !dbg !4180
  br label %out, !dbg !4182

if.end20:                                         ; preds = %if.end13
  store i32 0, i32* %i, align 4, !dbg !4183
  br label %for.cond, !dbg !4185

for.cond:                                         ; preds = %for.inc43, %if.end20
  %81 = load i32, i32* %i, align 4, !dbg !4186
  %82 = load i8, i8* %nmodes, align 1, !dbg !4188
  %conv21 = zext i8 %82 to i32, !dbg !4188
  %cmp = icmp slt i32 %81, %conv21, !dbg !4189
  br i1 %cmp, label %for.body, label %for.end45, !dbg !4190

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %j, align 4, !dbg !4191
  br label %for.cond23, !dbg !4194

for.cond23:                                       ; preds = %for.inc, %for.body
  %83 = load i32, i32* %j, align 4, !dbg !4195
  %84 = load i8, i8* %nregs, align 1, !dbg !4197
  %conv24 = zext i8 %84 to i32, !dbg !4197
  %cmp25 = icmp slt i32 %83, %conv24, !dbg !4198
  br i1 %cmp25, label %for.body27, label %for.end, !dbg !4199

for.body27:                                       ; preds = %for.cond23
  call void @llvm.dbg.declare(metadata i8** %val, metadata !4200, metadata !DIExpression()), !dbg !4202
  %85 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %rr, align 8, !dbg !4203
  %values = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %85, i32 0, i32 2, !dbg !4204
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %values, i64 0, i64 0, !dbg !4203
  %86 = load i32, i32* %i, align 4, !dbg !4205
  %87 = load i8, i8* %nregs, align 1, !dbg !4206
  %conv28 = zext i8 %87 to i32, !dbg !4206
  %mul29 = mul i32 %86, %conv28, !dbg !4207
  %idx.ext = sext i32 %mul29 to i64, !dbg !4208
  %add.ptr30 = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !4208
  store i8* %add.ptr30, i8** %val, align 8, !dbg !4202
  %88 = load i8*, i8** %buf, align 8, !dbg !4209
  %89 = load i8, i8* %nmodes, align 1, !dbg !4210
  %conv31 = zext i8 %89 to i32, !dbg !4210
  %90 = load i8, i8* %nregs, align 1, !dbg !4211
  %conv32 = zext i8 %90 to i32, !dbg !4211
  %91 = load i32, i32* %i, align 4, !dbg !4212
  %92 = load i32, i32* %j, align 4, !dbg !4213
  %93 = load i8*, i8** %val, align 8, !dbg !4214
  %call33 = call i32 @hynix_mlc_1xnm_rr_value(i8* %88, i32 %conv31, i32 %conv32, i32 %91, i32 %92, i1 zeroext false, i8* %93) #8, !dbg !4215
  store i32 %call33, i32* %ret, align 4, !dbg !4216
  %94 = load i32, i32* %ret, align 4, !dbg !4217
  %tobool34 = icmp ne i32 %94, 0, !dbg !4217
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !4219

if.then35:                                        ; preds = %for.body27
  br label %for.inc, !dbg !4220

if.end36:                                         ; preds = %for.body27
  %95 = load i8*, i8** %buf, align 8, !dbg !4221
  %96 = load i8, i8* %nmodes, align 1, !dbg !4222
  %conv37 = zext i8 %96 to i32, !dbg !4222
  %97 = load i8, i8* %nregs, align 1, !dbg !4223
  %conv38 = zext i8 %97 to i32, !dbg !4223
  %98 = load i32, i32* %i, align 4, !dbg !4224
  %99 = load i32, i32* %j, align 4, !dbg !4225
  %100 = load i8*, i8** %val, align 8, !dbg !4226
  %call39 = call i32 @hynix_mlc_1xnm_rr_value(i8* %95, i32 %conv37, i32 %conv38, i32 %98, i32 %99, i1 zeroext true, i8* %100) #8, !dbg !4227
  store i32 %call39, i32* %ret, align 4, !dbg !4228
  %101 = load i32, i32* %ret, align 4, !dbg !4229
  %tobool40 = icmp ne i32 %101, 0, !dbg !4229
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4231

if.then41:                                        ; preds = %if.end36
  br label %out, !dbg !4232

if.end42:                                         ; preds = %if.end36
  br label %for.inc, !dbg !4233

for.inc:                                          ; preds = %if.end42, %if.then35
  %102 = load i32, i32* %j, align 4, !dbg !4234
  %inc = add i32 %102, 1, !dbg !4234
  store i32 %inc, i32* %j, align 4, !dbg !4234
  br label %for.cond23, !dbg !4235, !llvm.loop !4236

for.end:                                          ; preds = %for.cond23
  br label %for.inc43, !dbg !4238

for.inc43:                                        ; preds = %for.end
  %103 = load i32, i32* %i, align 4, !dbg !4239
  %inc44 = add i32 %103, 1, !dbg !4239
  store i32 %inc44, i32* %i, align 4, !dbg !4239
  br label %for.cond, !dbg !4240, !llvm.loop !4241

for.end45:                                        ; preds = %for.cond
  %104 = load i8, i8* %nregs, align 1, !dbg !4243
  %conv46 = zext i8 %104 to i32, !dbg !4243
  %105 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %rr, align 8, !dbg !4244
  %nregs47 = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %105, i32 0, i32 0, !dbg !4245
  store i32 %conv46, i32* %nregs47, align 8, !dbg !4246
  %106 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %rr, align 8, !dbg !4247
  %regs = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %106, i32 0, i32 1, !dbg !4248
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @hynix_1xnm_mlc_read_retry_regs, i64 0, i64 0), i8** %regs, align 8, !dbg !4249
  %107 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %rr, align 8, !dbg !4250
  %108 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !4251
  %read_retry = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %108, i32 0, i32 0, !dbg !4252
  store %struct.hynix_read_retry* %107, %struct.hynix_read_retry** %read_retry, align 8, !dbg !4253
  %109 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4254
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 4, !dbg !4255
  %setup_read_retry = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 4, !dbg !4256
  store i32 (%struct.nand_chip*, i32)* @hynix_nand_setup_read_retry, i32 (%struct.nand_chip*, i32)** %setup_read_retry, align 8, !dbg !4257
  %110 = load i8, i8* %nmodes, align 1, !dbg !4258
  %conv48 = zext i8 %110 to i32, !dbg !4258
  %111 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4259
  %read_retries = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 29, !dbg !4260
  store i32 %conv48, i32* %read_retries, align 8, !dbg !4261
  br label %out, !dbg !4259

out:                                              ; preds = %for.end45, %if.then41, %if.then19, %if.then12, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !4262), !dbg !4263
  %112 = load i8*, i8** %buf, align 8, !dbg !4264
  call void @kfree(i8* %112) #8, !dbg !4265
  %113 = load i32, i32* %ret, align 4, !dbg !4266
  %tobool49 = icmp ne i32 %113, 0, !dbg !4266
  br i1 %tobool49, label %if.then50, label %if.end51, !dbg !4268

if.then50:                                        ; preds = %out
  %114 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %rr, align 8, !dbg !4269
  %115 = bitcast %struct.hynix_read_retry* %114 to i8*, !dbg !4269
  call void @kfree(i8* %115) #8, !dbg !4270
  br label %if.end51, !dbg !4270

if.end51:                                         ; preds = %if.then50, %out
  %116 = load i32, i32* %ret, align 4, !dbg !4271
  store i32 %116, i32* %retval, align 4, !dbg !4272
  br label %return, !dbg !4272

return:                                           ; preds = %if.end51, %if.then
  %117 = load i32, i32* %retval, align 4, !dbg !4273
  ret i32 %117, !dbg !4273
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #7

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @nand_get_manufacturer_data(%struct.nand_chip* %chip) #0 !dbg !4274 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4277, metadata !DIExpression()), !dbg !4278
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4279
  %manufacturer = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 3, !dbg !4280
  %priv = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer, i32 0, i32 1, !dbg !4281
  %1 = load i8*, i8** %priv, align 8, !dbg !4281
  ret i8* %1, !dbg !4282
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_read_rr_otp(%struct.nand_chip* %chip, %struct.hynix_read_retry_otp* %info, i8* %buf) #0 !dbg !4283 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %info.addr = alloca %struct.hynix_read_retry_otp*, align 8
  %buf.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4286, metadata !DIExpression()), !dbg !4287
  store %struct.hynix_read_retry_otp* %info, %struct.hynix_read_retry_otp** %info.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.hynix_read_retry_otp** %info.addr, metadata !4288, metadata !DIExpression()), !dbg !4289
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4290, metadata !DIExpression()), !dbg !4291
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4292, metadata !DIExpression()), !dbg !4293
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4294, metadata !DIExpression()), !dbg !4295
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4296
  %call = call i32 @nand_reset_op(%struct.nand_chip* %0) #8, !dbg !4297
  store i32 %call, i32* %ret, align 4, !dbg !4298
  %1 = load i32, i32* %ret, align 4, !dbg !4299
  %tobool = icmp ne i32 %1, 0, !dbg !4299
  br i1 %tobool, label %if.then, label %if.end, !dbg !4301

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !4302
  store i32 %2, i32* %retval, align 4, !dbg !4303
  br label %return, !dbg !4303

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4304
  %call1 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %3, i8 zeroext 54) #8, !dbg !4305
  store i32 %call1, i32* %ret, align 4, !dbg !4306
  %4 = load i32, i32* %ret, align 4, !dbg !4307
  %tobool2 = icmp ne i32 %4, 0, !dbg !4307
  br i1 %tobool2, label %if.then3, label %if.end4, !dbg !4309

if.then3:                                         ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !4310
  store i32 %5, i32* %retval, align 4, !dbg !4311
  br label %return, !dbg !4311

if.end4:                                          ; preds = %if.end
  store i32 0, i32* %i, align 4, !dbg !4312
  br label %for.cond, !dbg !4314

for.cond:                                         ; preds = %for.inc, %if.end4
  %6 = load i32, i32* %i, align 4, !dbg !4315
  %7 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !4317
  %nregs = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %7, i32 0, i32 0, !dbg !4318
  %8 = load i32, i32* %nregs, align 8, !dbg !4318
  %cmp = icmp slt i32 %6, %8, !dbg !4319
  br i1 %cmp, label %for.body, label %for.end, !dbg !4320

for.body:                                         ; preds = %for.cond
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4321
  %10 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !4323
  %regs = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %10, i32 0, i32 1, !dbg !4324
  %11 = load i8*, i8** %regs, align 8, !dbg !4324
  %12 = load i32, i32* %i, align 4, !dbg !4325
  %idxprom = sext i32 %12 to i64, !dbg !4323
  %arrayidx = getelementptr i8, i8* %11, i64 %idxprom, !dbg !4323
  %13 = load i8, i8* %arrayidx, align 1, !dbg !4323
  %14 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !4326
  %values = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %14, i32 0, i32 2, !dbg !4327
  %15 = load i8*, i8** %values, align 8, !dbg !4327
  %16 = load i32, i32* %i, align 4, !dbg !4328
  %idxprom5 = sext i32 %16 to i64, !dbg !4326
  %arrayidx6 = getelementptr i8, i8* %15, i64 %idxprom5, !dbg !4326
  %17 = load i8, i8* %arrayidx6, align 1, !dbg !4326
  %call7 = call i32 @hynix_nand_reg_write_op(%struct.nand_chip* %9, i8 zeroext %13, i8 zeroext %17) #8, !dbg !4329
  store i32 %call7, i32* %ret, align 4, !dbg !4330
  %18 = load i32, i32* %ret, align 4, !dbg !4331
  %tobool8 = icmp ne i32 %18, 0, !dbg !4331
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !4333

if.then9:                                         ; preds = %for.body
  %19 = load i32, i32* %ret, align 4, !dbg !4334
  store i32 %19, i32* %retval, align 4, !dbg !4335
  br label %return, !dbg !4335

if.end10:                                         ; preds = %for.body
  br label %for.inc, !dbg !4336

for.inc:                                          ; preds = %if.end10
  %20 = load i32, i32* %i, align 4, !dbg !4337
  %inc = add i32 %20, 1, !dbg !4337
  store i32 %inc, i32* %i, align 4, !dbg !4337
  br label %for.cond, !dbg !4338, !llvm.loop !4339

for.end:                                          ; preds = %for.cond
  %21 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4341
  %call11 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %21, i8 zeroext 22) #8, !dbg !4342
  store i32 %call11, i32* %ret, align 4, !dbg !4343
  %22 = load i32, i32* %ret, align 4, !dbg !4344
  %tobool12 = icmp ne i32 %22, 0, !dbg !4344
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4346

if.then13:                                        ; preds = %for.end
  %23 = load i32, i32* %ret, align 4, !dbg !4347
  store i32 %23, i32* %retval, align 4, !dbg !4348
  br label %return, !dbg !4348

if.end14:                                         ; preds = %for.end
  %24 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4349
  %call15 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %24, i8 zeroext 23) #8, !dbg !4350
  store i32 %call15, i32* %ret, align 4, !dbg !4351
  %25 = load i32, i32* %ret, align 4, !dbg !4352
  %tobool16 = icmp ne i32 %25, 0, !dbg !4352
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4354

if.then17:                                        ; preds = %if.end14
  %26 = load i32, i32* %ret, align 4, !dbg !4355
  store i32 %26, i32* %retval, align 4, !dbg !4356
  br label %return, !dbg !4356

if.end18:                                         ; preds = %if.end14
  %27 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4357
  %call19 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %27, i8 zeroext 4) #8, !dbg !4358
  store i32 %call19, i32* %ret, align 4, !dbg !4359
  %28 = load i32, i32* %ret, align 4, !dbg !4360
  %tobool20 = icmp ne i32 %28, 0, !dbg !4360
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4362

if.then21:                                        ; preds = %if.end18
  %29 = load i32, i32* %ret, align 4, !dbg !4363
  store i32 %29, i32* %retval, align 4, !dbg !4364
  br label %return, !dbg !4364

if.end22:                                         ; preds = %if.end18
  %30 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4365
  %call23 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %30, i8 zeroext 25) #8, !dbg !4366
  store i32 %call23, i32* %ret, align 4, !dbg !4367
  %31 = load i32, i32* %ret, align 4, !dbg !4368
  %tobool24 = icmp ne i32 %31, 0, !dbg !4368
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !4370

if.then25:                                        ; preds = %if.end22
  %32 = load i32, i32* %ret, align 4, !dbg !4371
  store i32 %32, i32* %retval, align 4, !dbg !4372
  br label %return, !dbg !4372

if.end26:                                         ; preds = %if.end22
  %33 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4373
  %34 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !4374
  %page = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %34, i32 0, i32 3, !dbg !4375
  %35 = load i32, i32* %page, align 8, !dbg !4375
  %36 = load i8*, i8** %buf.addr, align 8, !dbg !4376
  %37 = load %struct.hynix_read_retry_otp*, %struct.hynix_read_retry_otp** %info.addr, align 8, !dbg !4377
  %size = getelementptr inbounds %struct.hynix_read_retry_otp, %struct.hynix_read_retry_otp* %37, i32 0, i32 4, !dbg !4378
  %38 = load i32, i32* %size, align 4, !dbg !4378
  %call27 = call i32 @nand_read_page_op(%struct.nand_chip* %33, i32 %35, i32 0, i8* %36, i32 %38) #8, !dbg !4379
  store i32 %call27, i32* %ret, align 4, !dbg !4380
  %39 = load i32, i32* %ret, align 4, !dbg !4381
  %tobool28 = icmp ne i32 %39, 0, !dbg !4381
  br i1 %tobool28, label %if.then29, label %if.end30, !dbg !4383

if.then29:                                        ; preds = %if.end26
  %40 = load i32, i32* %ret, align 4, !dbg !4384
  store i32 %40, i32* %retval, align 4, !dbg !4385
  br label %return, !dbg !4385

if.end30:                                         ; preds = %if.end26
  %41 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4386
  %call31 = call i32 @nand_reset_op(%struct.nand_chip* %41) #8, !dbg !4387
  store i32 %call31, i32* %ret, align 4, !dbg !4388
  %42 = load i32, i32* %ret, align 4, !dbg !4389
  %tobool32 = icmp ne i32 %42, 0, !dbg !4389
  br i1 %tobool32, label %if.then33, label %if.end34, !dbg !4391

if.then33:                                        ; preds = %if.end30
  %43 = load i32, i32* %ret, align 4, !dbg !4392
  store i32 %43, i32* %retval, align 4, !dbg !4393
  br label %return, !dbg !4393

if.end34:                                         ; preds = %if.end30
  %44 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4394
  %call35 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %44, i8 zeroext 54) #8, !dbg !4395
  store i32 %call35, i32* %ret, align 4, !dbg !4396
  %45 = load i32, i32* %ret, align 4, !dbg !4397
  %tobool36 = icmp ne i32 %45, 0, !dbg !4397
  br i1 %tobool36, label %if.then37, label %if.end38, !dbg !4399

if.then37:                                        ; preds = %if.end34
  %46 = load i32, i32* %ret, align 4, !dbg !4400
  store i32 %46, i32* %retval, align 4, !dbg !4401
  br label %return, !dbg !4401

if.end38:                                         ; preds = %if.end34
  %47 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4402
  %call39 = call i32 @hynix_nand_reg_write_op(%struct.nand_chip* %47, i8 zeroext 56, i8 zeroext 0) #8, !dbg !4403
  store i32 %call39, i32* %ret, align 4, !dbg !4404
  %48 = load i32, i32* %ret, align 4, !dbg !4405
  %tobool40 = icmp ne i32 %48, 0, !dbg !4405
  br i1 %tobool40, label %if.then41, label %if.end42, !dbg !4407

if.then41:                                        ; preds = %if.end38
  %49 = load i32, i32* %ret, align 4, !dbg !4408
  store i32 %49, i32* %retval, align 4, !dbg !4409
  br label %return, !dbg !4409

if.end42:                                         ; preds = %if.end38
  %50 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4410
  %call43 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %50, i8 zeroext 22) #8, !dbg !4411
  store i32 %call43, i32* %ret, align 4, !dbg !4412
  %51 = load i32, i32* %ret, align 4, !dbg !4413
  %tobool44 = icmp ne i32 %51, 0, !dbg !4413
  br i1 %tobool44, label %if.then45, label %if.end46, !dbg !4415

if.then45:                                        ; preds = %if.end42
  %52 = load i32, i32* %ret, align 4, !dbg !4416
  store i32 %52, i32* %retval, align 4, !dbg !4417
  br label %return, !dbg !4417

if.end46:                                         ; preds = %if.end42
  %53 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4418
  %call47 = call i32 @nand_read_page_op(%struct.nand_chip* %53, i32 0, i32 0, i8* null, i32 0) #8, !dbg !4419
  store i32 %call47, i32* %retval, align 4, !dbg !4420
  br label %return, !dbg !4420

return:                                           ; preds = %if.end46, %if.then45, %if.then41, %if.then37, %if.then33, %if.then29, %if.then25, %if.then21, %if.then17, %if.then13, %if.then9, %if.then3, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !4421
  ret i32 %54, !dbg !4421
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_get_majority(i8* %in, i32 %repeat, i8* %out) #0 !dbg !4422 {
entry:
  %retval = alloca i32, align 4
  %in.addr = alloca i8*, align 8
  %repeat.addr = alloca i32, align 4
  %out.addr = alloca i8*, align 8
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %half = alloca i32, align 4
  %cnt = alloca i32, align 4
  %val = alloca i8, align 1
  store i8* %in, i8** %in.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %in.addr, metadata !4425, metadata !DIExpression()), !dbg !4426
  store i32 %repeat, i32* %repeat.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %repeat.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  store i8* %out, i8** %out.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %out.addr, metadata !4429, metadata !DIExpression()), !dbg !4430
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4431, metadata !DIExpression()), !dbg !4432
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4433, metadata !DIExpression()), !dbg !4434
  call void @llvm.dbg.declare(metadata i32* %half, metadata !4435, metadata !DIExpression()), !dbg !4436
  %0 = load i32, i32* %repeat.addr, align 4, !dbg !4437
  %div = sdiv i32 %0, 2, !dbg !4438
  store i32 %div, i32* %half, align 4, !dbg !4436
  store i32 0, i32* %i, align 4, !dbg !4439
  br label %for.cond, !dbg !4441

for.cond:                                         ; preds = %for.inc14, %entry
  %1 = load i32, i32* %i, align 4, !dbg !4442
  %2 = load i32, i32* %half, align 4, !dbg !4444
  %cmp = icmp slt i32 %1, %2, !dbg !4445
  br i1 %cmp, label %for.body, label %for.end16, !dbg !4446

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !4447, metadata !DIExpression()), !dbg !4449
  store i32 0, i32* %cnt, align 4, !dbg !4449
  call void @llvm.dbg.declare(metadata i8* %val, metadata !4450, metadata !DIExpression()), !dbg !4451
  %3 = load i8*, i8** %in.addr, align 8, !dbg !4452
  %4 = load i32, i32* %i, align 4, !dbg !4453
  %idxprom = sext i32 %4 to i64, !dbg !4452
  %arrayidx = getelementptr i8, i8* %3, i64 %idxprom, !dbg !4452
  %5 = load i8, i8* %arrayidx, align 1, !dbg !4452
  store i8 %5, i8* %val, align 1, !dbg !4451
  %6 = load i32, i32* %i, align 4, !dbg !4454
  %add = add i32 %6, 1, !dbg !4456
  store i32 %add, i32* %j, align 4, !dbg !4457
  br label %for.cond1, !dbg !4458

for.cond1:                                        ; preds = %for.inc, %for.body
  %7 = load i32, i32* %j, align 4, !dbg !4459
  %8 = load i32, i32* %repeat.addr, align 4, !dbg !4461
  %cmp2 = icmp slt i32 %7, %8, !dbg !4462
  br i1 %cmp2, label %for.body3, label %for.end, !dbg !4463

for.body3:                                        ; preds = %for.cond1
  %9 = load i8*, i8** %in.addr, align 8, !dbg !4464
  %10 = load i32, i32* %j, align 4, !dbg !4467
  %idxprom4 = sext i32 %10 to i64, !dbg !4464
  %arrayidx5 = getelementptr i8, i8* %9, i64 %idxprom4, !dbg !4464
  %11 = load i8, i8* %arrayidx5, align 1, !dbg !4464
  %conv = zext i8 %11 to i32, !dbg !4464
  %12 = load i8, i8* %val, align 1, !dbg !4468
  %conv6 = zext i8 %12 to i32, !dbg !4468
  %cmp7 = icmp eq i32 %conv, %conv6, !dbg !4469
  br i1 %cmp7, label %if.then, label %if.end, !dbg !4470

if.then:                                          ; preds = %for.body3
  %13 = load i32, i32* %cnt, align 4, !dbg !4471
  %inc = add i32 %13, 1, !dbg !4471
  store i32 %inc, i32* %cnt, align 4, !dbg !4471
  br label %if.end, !dbg !4472

if.end:                                           ; preds = %if.then, %for.body3
  br label %for.inc, !dbg !4473

for.inc:                                          ; preds = %if.end
  %14 = load i32, i32* %j, align 4, !dbg !4474
  %inc9 = add i32 %14, 1, !dbg !4474
  store i32 %inc9, i32* %j, align 4, !dbg !4474
  br label %for.cond1, !dbg !4475, !llvm.loop !4476

for.end:                                          ; preds = %for.cond1
  %15 = load i32, i32* %cnt, align 4, !dbg !4478
  %16 = load i32, i32* %half, align 4, !dbg !4480
  %cmp10 = icmp sgt i32 %15, %16, !dbg !4481
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !4482

if.then12:                                        ; preds = %for.end
  %17 = load i8, i8* %val, align 1, !dbg !4483
  %18 = load i8*, i8** %out.addr, align 8, !dbg !4485
  store i8 %17, i8* %18, align 1, !dbg !4486
  store i32 0, i32* %retval, align 4, !dbg !4487
  br label %return, !dbg !4487

if.end13:                                         ; preds = %for.end
  br label %for.inc14, !dbg !4488

for.inc14:                                        ; preds = %if.end13
  %19 = load i32, i32* %i, align 4, !dbg !4489
  %inc15 = add i32 %19, 1, !dbg !4489
  store i32 %inc15, i32* %i, align 4, !dbg !4489
  br label %for.cond, !dbg !4490, !llvm.loop !4491

for.end16:                                        ; preds = %for.cond
  store i32 -5, i32* %retval, align 4, !dbg !4493
  br label %return, !dbg !4493

return:                                           ; preds = %for.end16, %if.then12
  %20 = load i32, i32* %retval, align 4, !dbg !4494
  ret i32 %20, !dbg !4494
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_mlc_1xnm_rr_value(i8* %buf, i32 %nmodes, i32 %nregs, i32 %mode, i32 %reg, i1 zeroext %inv, i8* %val) #0 !dbg !4495 {
entry:
  %retval = alloca i32, align 4
  %buf.addr = alloca i8*, align 8
  %nmodes.addr = alloca i32, align 4
  %nregs.addr = alloca i32, align 4
  %mode.addr = alloca i32, align 4
  %reg.addr = alloca i32, align 4
  %inv.addr = alloca i8, align 1
  %val.addr = alloca i8*, align 8
  %tmp = alloca [8 x i8], align 1
  %val_offs = alloca i32, align 4
  %set_size = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %set_offs = alloca i32, align 4
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4498, metadata !DIExpression()), !dbg !4499
  store i32 %nmodes, i32* %nmodes.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nmodes.addr, metadata !4500, metadata !DIExpression()), !dbg !4501
  store i32 %nregs, i32* %nregs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nregs.addr, metadata !4502, metadata !DIExpression()), !dbg !4503
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !4504, metadata !DIExpression()), !dbg !4505
  store i32 %reg, i32* %reg.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %reg.addr, metadata !4506, metadata !DIExpression()), !dbg !4507
  %frombool = zext i1 %inv to i8
  store i8 %frombool, i8* %inv.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %inv.addr, metadata !4508, metadata !DIExpression()), !dbg !4509
  store i8* %val, i8** %val.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %val.addr, metadata !4510, metadata !DIExpression()), !dbg !4511
  call void @llvm.dbg.declare(metadata [8 x i8]* %tmp, metadata !4512, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.declare(metadata i32* %val_offs, metadata !4514, metadata !DIExpression()), !dbg !4515
  %0 = load i32, i32* %mode.addr, align 4, !dbg !4516
  %1 = load i32, i32* %nregs.addr, align 4, !dbg !4517
  %mul = mul i32 %0, %1, !dbg !4518
  %2 = load i32, i32* %reg.addr, align 4, !dbg !4519
  %add = add i32 %mul, %2, !dbg !4520
  store i32 %add, i32* %val_offs, align 4, !dbg !4515
  call void @llvm.dbg.declare(metadata i32* %set_size, metadata !4521, metadata !DIExpression()), !dbg !4522
  %3 = load i32, i32* %nmodes.addr, align 4, !dbg !4523
  %4 = load i32, i32* %nregs.addr, align 4, !dbg !4524
  %mul1 = mul i32 %3, %4, !dbg !4525
  store i32 %mul1, i32* %set_size, align 4, !dbg !4522
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4526, metadata !DIExpression()), !dbg !4527
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4528, metadata !DIExpression()), !dbg !4529
  store i32 0, i32* %i, align 4, !dbg !4530
  br label %for.cond, !dbg !4532

for.cond:                                         ; preds = %for.inc, %entry
  %5 = load i32, i32* %i, align 4, !dbg !4533
  %cmp = icmp slt i32 %5, 8, !dbg !4535
  br i1 %cmp, label %for.body, label %for.end, !dbg !4536

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %set_offs, metadata !4537, metadata !DIExpression()), !dbg !4539
  %6 = load i32, i32* %i, align 4, !dbg !4540
  %mul2 = mul i32 %6, 2, !dbg !4540
  %7 = load i8, i8* %inv.addr, align 1, !dbg !4540
  %tobool = trunc i8 %7 to i1, !dbg !4540
  %8 = zext i1 %tobool to i64, !dbg !4540
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !4540
  %add3 = add i32 %mul2, %cond, !dbg !4540
  %9 = load i32, i32* %set_size, align 4, !dbg !4540
  %mul4 = mul i32 %add3, %9, !dbg !4540
  %add5 = add i32 16, %mul4, !dbg !4540
  store i32 %add5, i32* %set_offs, align 4, !dbg !4539
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !4541
  %11 = load i32, i32* %val_offs, align 4, !dbg !4542
  %12 = load i32, i32* %set_offs, align 4, !dbg !4543
  %add6 = add i32 %11, %12, !dbg !4544
  %idxprom = sext i32 %add6 to i64, !dbg !4541
  %arrayidx = getelementptr i8, i8* %10, i64 %idxprom, !dbg !4541
  %13 = load i8, i8* %arrayidx, align 1, !dbg !4541
  %14 = load i32, i32* %i, align 4, !dbg !4545
  %idxprom7 = sext i32 %14 to i64, !dbg !4546
  %arrayidx8 = getelementptr [8 x i8], [8 x i8]* %tmp, i64 0, i64 %idxprom7, !dbg !4546
  store i8 %13, i8* %arrayidx8, align 1, !dbg !4547
  br label %for.inc, !dbg !4548

for.inc:                                          ; preds = %for.body
  %15 = load i32, i32* %i, align 4, !dbg !4549
  %inc = add i32 %15, 1, !dbg !4549
  store i32 %inc, i32* %i, align 4, !dbg !4549
  br label %for.cond, !dbg !4550, !llvm.loop !4551

for.end:                                          ; preds = %for.cond
  %arraydecay = getelementptr inbounds [8 x i8], [8 x i8]* %tmp, i64 0, i64 0, !dbg !4553
  %16 = load i8*, i8** %val.addr, align 8, !dbg !4554
  %call = call i32 @hynix_get_majority(i8* %arraydecay, i32 8, i8* %16) #8, !dbg !4555
  store i32 %call, i32* %ret, align 4, !dbg !4556
  %17 = load i32, i32* %ret, align 4, !dbg !4557
  %tobool9 = icmp ne i32 %17, 0, !dbg !4557
  br i1 %tobool9, label %if.then, label %if.end, !dbg !4559

if.then:                                          ; preds = %for.end
  %18 = load i32, i32* %ret, align 4, !dbg !4560
  store i32 %18, i32* %retval, align 4, !dbg !4561
  br label %return, !dbg !4561

if.end:                                           ; preds = %for.end
  %19 = load i8, i8* %inv.addr, align 1, !dbg !4562
  %tobool10 = trunc i8 %19 to i1, !dbg !4562
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !4564

if.then11:                                        ; preds = %if.end
  %20 = load i8*, i8** %val.addr, align 8, !dbg !4565
  %21 = load i8, i8* %20, align 1, !dbg !4566
  %conv = zext i8 %21 to i32, !dbg !4566
  %neg = xor i32 %conv, -1, !dbg !4567
  %conv12 = trunc i32 %neg to i8, !dbg !4567
  %22 = load i8*, i8** %val.addr, align 8, !dbg !4568
  store i8 %conv12, i8* %22, align 1, !dbg !4569
  br label %if.end13, !dbg !4570

if.end13:                                         ; preds = %if.then11, %if.end
  store i32 0, i32* %retval, align 4, !dbg !4571
  br label %return, !dbg !4571

return:                                           ; preds = %if.end13, %if.then
  %23 = load i32, i32* %retval, align 4, !dbg !4572
  ret i32 %23, !dbg !4572
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_nand_setup_read_retry(%struct.nand_chip* %chip, i32 %retry_mode) #0 !dbg !4573 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %retry_mode.addr = alloca i32, align 4
  %hynix = alloca %struct.hynix_nand*, align 8
  %values = alloca i8*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4574, metadata !DIExpression()), !dbg !4575
  store i32 %retry_mode, i32* %retry_mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %retry_mode.addr, metadata !4576, metadata !DIExpression()), !dbg !4577
  call void @llvm.dbg.declare(metadata %struct.hynix_nand** %hynix, metadata !4578, metadata !DIExpression()), !dbg !4579
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4580
  %call = call i8* @nand_get_manufacturer_data(%struct.nand_chip* %0) #8, !dbg !4581
  %1 = bitcast i8* %call to %struct.hynix_nand*, !dbg !4581
  store %struct.hynix_nand* %1, %struct.hynix_nand** %hynix, align 8, !dbg !4579
  call void @llvm.dbg.declare(metadata i8** %values, metadata !4582, metadata !DIExpression()), !dbg !4583
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4584, metadata !DIExpression()), !dbg !4585
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4586, metadata !DIExpression()), !dbg !4587
  %2 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !4588
  %read_retry = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %2, i32 0, i32 0, !dbg !4589
  %3 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %read_retry, align 8, !dbg !4589
  %values1 = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %3, i32 0, i32 2, !dbg !4590
  %arraydecay = getelementptr inbounds [0 x i8], [0 x i8]* %values1, i64 0, i64 0, !dbg !4588
  %4 = load i32, i32* %retry_mode.addr, align 4, !dbg !4591
  %5 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !4592
  %read_retry2 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %5, i32 0, i32 0, !dbg !4593
  %6 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %read_retry2, align 8, !dbg !4593
  %nregs = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %6, i32 0, i32 0, !dbg !4594
  %7 = load i32, i32* %nregs, align 8, !dbg !4594
  %mul = mul i32 %4, %7, !dbg !4595
  %idx.ext = sext i32 %mul to i64, !dbg !4596
  %add.ptr = getelementptr i8, i8* %arraydecay, i64 %idx.ext, !dbg !4596
  store i8* %add.ptr, i8** %values, align 8, !dbg !4597
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4598
  %call3 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %8, i8 zeroext 54) #8, !dbg !4599
  store i32 %call3, i32* %ret, align 4, !dbg !4600
  %9 = load i32, i32* %ret, align 4, !dbg !4601
  %tobool = icmp ne i32 %9, 0, !dbg !4601
  br i1 %tobool, label %if.then, label %if.end, !dbg !4603

if.then:                                          ; preds = %entry
  %10 = load i32, i32* %ret, align 4, !dbg !4604
  store i32 %10, i32* %retval, align 4, !dbg !4605
  br label %return, !dbg !4605

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !4606
  br label %for.cond, !dbg !4608

for.cond:                                         ; preds = %for.inc, %if.end
  %11 = load i32, i32* %i, align 4, !dbg !4609
  %12 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !4611
  %read_retry4 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %12, i32 0, i32 0, !dbg !4612
  %13 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %read_retry4, align 8, !dbg !4612
  %nregs5 = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %13, i32 0, i32 0, !dbg !4613
  %14 = load i32, i32* %nregs5, align 8, !dbg !4613
  %cmp = icmp slt i32 %11, %14, !dbg !4614
  br i1 %cmp, label %for.body, label %for.end, !dbg !4615

for.body:                                         ; preds = %for.cond
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4616
  %16 = load %struct.hynix_nand*, %struct.hynix_nand** %hynix, align 8, !dbg !4618
  %read_retry6 = getelementptr inbounds %struct.hynix_nand, %struct.hynix_nand* %16, i32 0, i32 0, !dbg !4619
  %17 = load %struct.hynix_read_retry*, %struct.hynix_read_retry** %read_retry6, align 8, !dbg !4619
  %regs = getelementptr inbounds %struct.hynix_read_retry, %struct.hynix_read_retry* %17, i32 0, i32 1, !dbg !4620
  %18 = load i8*, i8** %regs, align 8, !dbg !4620
  %19 = load i32, i32* %i, align 4, !dbg !4621
  %idxprom = sext i32 %19 to i64, !dbg !4618
  %arrayidx = getelementptr i8, i8* %18, i64 %idxprom, !dbg !4618
  %20 = load i8, i8* %arrayidx, align 1, !dbg !4618
  %21 = load i8*, i8** %values, align 8, !dbg !4622
  %22 = load i32, i32* %i, align 4, !dbg !4623
  %idxprom7 = sext i32 %22 to i64, !dbg !4622
  %arrayidx8 = getelementptr i8, i8* %21, i64 %idxprom7, !dbg !4622
  %23 = load i8, i8* %arrayidx8, align 1, !dbg !4622
  %call9 = call i32 @hynix_nand_reg_write_op(%struct.nand_chip* %15, i8 zeroext %20, i8 zeroext %23) #8, !dbg !4624
  store i32 %call9, i32* %ret, align 4, !dbg !4625
  %24 = load i32, i32* %ret, align 4, !dbg !4626
  %tobool10 = icmp ne i32 %24, 0, !dbg !4626
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !4628

if.then11:                                        ; preds = %for.body
  %25 = load i32, i32* %ret, align 4, !dbg !4629
  store i32 %25, i32* %retval, align 4, !dbg !4630
  br label %return, !dbg !4630

if.end12:                                         ; preds = %for.body
  br label %for.inc, !dbg !4631

for.inc:                                          ; preds = %if.end12
  %26 = load i32, i32* %i, align 4, !dbg !4632
  %inc = add i32 %26, 1, !dbg !4632
  store i32 %inc, i32* %i, align 4, !dbg !4632
  br label %for.cond, !dbg !4633, !llvm.loop !4634

for.end:                                          ; preds = %for.cond
  %27 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4636
  %call13 = call i32 @hynix_nand_cmd_op(%struct.nand_chip* %27, i8 zeroext 22) #8, !dbg !4637
  store i32 %call13, i32* %retval, align 4, !dbg !4638
  br label %return, !dbg !4638

return:                                           ; preds = %for.end, %if.then11, %if.then
  %28 = load i32, i32* %retval, align 4, !dbg !4639
  ret i32 %28, !dbg !4639
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @nand_reset_op(%struct.nand_chip*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_nand_cmd_op(%struct.nand_chip* %chip, i8 zeroext %cmd) #0 !dbg !4640 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %cmd.addr = alloca i8, align 1
  %instrs = alloca [1 x %struct.nand_op_instr], align 16
  %op = alloca %struct.nand_operation, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4643, metadata !DIExpression()), !dbg !4644
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !4645, metadata !DIExpression()), !dbg !4646
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4647
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %0) #8, !dbg !4649
  br i1 %call, label %if.then, label %if.end, !dbg !4650

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [1 x %struct.nand_op_instr]* %instrs, metadata !4651, metadata !DIExpression()), !dbg !4654
  %1 = bitcast [1 x %struct.nand_op_instr]* %instrs to i8*, !dbg !4654
  call void @llvm.memset.p0i8.i64(i8* align 16 %1, i8 0, i64 40, i1 false), !dbg !4654
  %arrayinit.begin = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !4655
  %type = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 0, !dbg !4656
  store i32 0, i32* %type, align 8, !dbg !4656
  %ctx = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 1, !dbg !4656
  %cmd1 = bitcast %union.anon.42* %ctx to %struct.nand_op_cmd_instr*, !dbg !4656
  %opcode = getelementptr inbounds %struct.nand_op_cmd_instr, %struct.nand_op_cmd_instr* %cmd1, i32 0, i32 0, !dbg !4656
  %2 = load i8, i8* %cmd.addr, align 1, !dbg !4656
  store i8 %2, i8* %opcode, align 8, !dbg !4656
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 2, !dbg !4656
  store i32 0, i32* %delay_ns, align 8, !dbg !4656
  call void @llvm.dbg.declare(metadata %struct.nand_operation* %op, metadata !4657, metadata !DIExpression()), !dbg !4658
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 0, !dbg !4659
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4659
  %cur_cs = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 28, !dbg !4659
  %4 = load i32, i32* %cur_cs, align 4, !dbg !4659
  store i32 %4, i32* %cs, align 8, !dbg !4659
  %instrs2 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 1, !dbg !4659
  %arraydecay = getelementptr inbounds [1 x %struct.nand_op_instr], [1 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !4659
  store %struct.nand_op_instr* %arraydecay, %struct.nand_op_instr** %instrs2, align 8, !dbg !4659
  %ninstrs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 2, !dbg !4659
  store i32 1, i32* %ninstrs, align 8, !dbg !4659
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4660
  %call3 = call i32 @nand_exec_op(%struct.nand_chip* %5, %struct.nand_operation* %op) #8, !dbg !4661
  store i32 %call3, i32* %retval, align 4, !dbg !4662
  br label %return, !dbg !4662

if.end:                                           ; preds = %entry
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4663
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 5, !dbg !4664
  %cmdfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 8, !dbg !4665
  %7 = load void (%struct.nand_chip*, i32, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc, align 8, !dbg !4665
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4666
  %9 = load i8, i8* %cmd.addr, align 1, !dbg !4667
  %conv = zext i8 %9 to i32, !dbg !4667
  call void %7(%struct.nand_chip* %8, i32 %conv, i32 -1, i32 -1) #8, !dbg !4663
  store i32 0, i32* %retval, align 4, !dbg !4668
  br label %return, !dbg !4668

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4669
  ret i32 %10, !dbg !4669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @hynix_nand_reg_write_op(%struct.nand_chip* %chip, i8 zeroext %addr, i8 zeroext %val) #0 !dbg !4670 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %addr.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  %column = alloca i16, align 2
  %instrs = alloca [2 x %struct.nand_op_instr], align 16
  %op = alloca %struct.nand_operation, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4673, metadata !DIExpression()), !dbg !4674
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !4675, metadata !DIExpression()), !dbg !4676
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !4677, metadata !DIExpression()), !dbg !4678
  call void @llvm.dbg.declare(metadata i16* %column, metadata !4679, metadata !DIExpression()), !dbg !4680
  %0 = load i8, i8* %addr.addr, align 1, !dbg !4681
  %conv = zext i8 %0 to i16, !dbg !4682
  %conv1 = zext i16 %conv to i32, !dbg !4682
  %shl = shl i32 %conv1, 8, !dbg !4683
  %1 = load i8, i8* %addr.addr, align 1, !dbg !4684
  %conv2 = zext i8 %1 to i32, !dbg !4684
  %or = or i32 %shl, %conv2, !dbg !4685
  %conv3 = trunc i32 %or to i16, !dbg !4686
  store i16 %conv3, i16* %column, align 2, !dbg !4680
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4687
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %2) #8, !dbg !4689
  br i1 %call, label %if.then, label %if.end, !dbg !4690

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata [2 x %struct.nand_op_instr]* %instrs, metadata !4691, metadata !DIExpression()), !dbg !4694
  %arrayinit.begin = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !4695
  %type = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 0, !dbg !4696
  store i32 1, i32* %type, align 8, !dbg !4696
  %ctx = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 1, !dbg !4696
  %addr4 = bitcast %union.anon.42* %ctx to %struct.nand_op_addr_instr*, !dbg !4696
  %naddrs = getelementptr inbounds %struct.nand_op_addr_instr, %struct.nand_op_addr_instr* %addr4, i32 0, i32 0, !dbg !4696
  store i32 1, i32* %naddrs, align 8, !dbg !4696
  %addrs = getelementptr inbounds %struct.nand_op_addr_instr, %struct.nand_op_addr_instr* %addr4, i32 0, i32 1, !dbg !4696
  store i8* %addr.addr, i8** %addrs, align 8, !dbg !4696
  %delay_ns = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i32 0, i32 2, !dbg !4696
  store i32 0, i32* %delay_ns, align 8, !dbg !4696
  %arrayinit.element = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.begin, i64 1, !dbg !4695
  %type5 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.element, i32 0, i32 0, !dbg !4697
  store i32 3, i32* %type5, align 8, !dbg !4697
  %ctx6 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.element, i32 0, i32 1, !dbg !4697
  %data = bitcast %union.anon.42* %ctx6 to %struct.nand_op_data_instr*, !dbg !4697
  %len = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 0, !dbg !4697
  store i32 1, i32* %len, align 8, !dbg !4697
  %buf = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 1, !dbg !4697
  %out = bitcast %union.anon.43* %buf to i8**, !dbg !4697
  store i8* %val.addr, i8** %out, align 8, !dbg !4697
  %force_8bit = getelementptr inbounds %struct.nand_op_data_instr, %struct.nand_op_data_instr* %data, i32 0, i32 2, !dbg !4697
  store i8 1, i8* %force_8bit, align 8, !dbg !4697
  %delay_ns7 = getelementptr inbounds %struct.nand_op_instr, %struct.nand_op_instr* %arrayinit.element, i32 0, i32 2, !dbg !4697
  store i32 0, i32* %delay_ns7, align 8, !dbg !4697
  call void @llvm.dbg.declare(metadata %struct.nand_operation* %op, metadata !4698, metadata !DIExpression()), !dbg !4699
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 0, !dbg !4700
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4700
  %cur_cs = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 28, !dbg !4700
  %4 = load i32, i32* %cur_cs, align 4, !dbg !4700
  store i32 %4, i32* %cs, align 8, !dbg !4700
  %instrs8 = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 1, !dbg !4700
  %arraydecay = getelementptr inbounds [2 x %struct.nand_op_instr], [2 x %struct.nand_op_instr]* %instrs, i64 0, i64 0, !dbg !4700
  store %struct.nand_op_instr* %arraydecay, %struct.nand_op_instr** %instrs8, align 8, !dbg !4700
  %ninstrs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %op, i32 0, i32 2, !dbg !4700
  store i32 2, i32* %ninstrs, align 8, !dbg !4700
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4701
  %call9 = call i32 @nand_exec_op(%struct.nand_chip* %5, %struct.nand_operation* %op) #8, !dbg !4702
  store i32 %call9, i32* %retval, align 4, !dbg !4703
  br label %return, !dbg !4703

if.end:                                           ; preds = %entry
  %6 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4704
  %legacy = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %6, i32 0, i32 5, !dbg !4705
  %cmdfunc = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy, i32 0, i32 8, !dbg !4706
  %7 = load void (%struct.nand_chip*, i32, i32, i32)*, void (%struct.nand_chip*, i32, i32, i32)** %cmdfunc, align 8, !dbg !4706
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4707
  %9 = load i16, i16* %column, align 2, !dbg !4708
  %conv10 = zext i16 %9 to i32, !dbg !4708
  call void %7(%struct.nand_chip* %8, i32 -1, i32 %conv10, i32 -1) #8, !dbg !4704
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4709
  %legacy11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 5, !dbg !4710
  %write_byte = getelementptr inbounds %struct.nand_legacy, %struct.nand_legacy* %legacy11, i32 0, i32 4, !dbg !4711
  %11 = load void (%struct.nand_chip*, i8)*, void (%struct.nand_chip*, i8)** %write_byte, align 8, !dbg !4711
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4712
  %13 = load i8, i8* %val.addr, align 1, !dbg !4713
  call void %11(%struct.nand_chip* %12, i8 zeroext %13) #8, !dbg !4709
  store i32 0, i32* %retval, align 4, !dbg !4714
  br label %return, !dbg !4714

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !4715
  ret i32 %14, !dbg !4715
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !4716 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4717, metadata !DIExpression()), !dbg !4718
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4719
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !4721
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !4721
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !4719
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4722

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4723
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !4724
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !4724
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !4725
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !4725
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !4723
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !4726

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4727
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !4728
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !4728
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !4729
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !4729
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !4730
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !4730
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !4727
  br i1 %tobool6, label %if.end, label %if.then, !dbg !4731

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4732
  br label %return, !dbg !4732

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !4733
  br label %return, !dbg !4733

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !4734
  ret i1 %9, !dbg !4734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nand_exec_op(%struct.nand_chip* %chip, %struct.nand_operation* %op) #0 !dbg !4735 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %op.addr = alloca %struct.nand_operation*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4738, metadata !DIExpression()), !dbg !4739
  store %struct.nand_operation* %op, %struct.nand_operation** %op.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_operation** %op.addr, metadata !4740, metadata !DIExpression()), !dbg !4741
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4742
  %call = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %0) #8, !dbg !4744
  br i1 %call, label %if.end, label %if.then, !dbg !4745

if.then:                                          ; preds = %entry
  store i32 -524, i32* %retval, align 4, !dbg !4746
  br label %return, !dbg !4746

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4747, metadata !DIExpression()), !dbg !4750
  %1 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !4750
  %cs = getelementptr inbounds %struct.nand_operation, %struct.nand_operation* %1, i32 0, i32 0, !dbg !4750
  %2 = load i32, i32* %cs, align 8, !dbg !4750
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4750
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 0, !dbg !4750
  %call1 = call i32 @nanddev_ntargets(%struct.nand_device* %base) #8, !dbg !4750
  %cmp = icmp uge i32 %2, %call1, !dbg !4750
  %lnot = xor i1 %cmp, true, !dbg !4750
  %lnot2 = xor i1 %lnot, true, !dbg !4750
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !4750
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !4750
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !4751
  %tobool = icmp ne i32 %4, 0, !dbg !4751
  %lnot3 = xor i1 %tobool, true, !dbg !4751
  %lnot5 = xor i1 %lnot3, true, !dbg !4751
  %lnot.ext6 = zext i1 %lnot5 to i32, !dbg !4751
  %conv = sext i32 %lnot.ext6 to i64, !dbg !4751
  %tobool7 = icmp ne i64 %conv, 0, !dbg !4751
  br i1 %tobool7, label %if.then8, label %if.end15, !dbg !4750

if.then8:                                         ; preds = %if.end
  br label %do.body, !dbg !4751

do.body:                                          ; preds = %if.then8
  br label %do.body9, !dbg !4753

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !4755

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !4753

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.9, i64 0, i64 0), i32 134, i32 2305, i64 12) #9, !dbg !4757, !srcloc !4759
  br label %do.end11, !dbg !4757

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 171) #9, !dbg !4760, !srcloc !4762
  br label %do.body12, !dbg !4753

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !4763

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !4753

do.end14:                                         ; preds = %do.end13
  br label %if.end15, !dbg !4753

if.end15:                                         ; preds = %do.end14, %if.end
  %5 = load i32, i32* %__ret_warn_on, align 4, !dbg !4750
  %tobool16 = icmp ne i32 %5, 0, !dbg !4750
  %lnot17 = xor i1 %tobool16, true, !dbg !4750
  %lnot19 = xor i1 %lnot17, true, !dbg !4750
  %lnot.ext20 = zext i1 %lnot19 to i32, !dbg !4750
  %conv21 = sext i32 %lnot.ext20 to i64, !dbg !4750
  store i64 %conv21, i64* %tmp, align 8, !dbg !4751
  %6 = load i64, i64* %tmp, align 8, !dbg !4750
  %tobool22 = icmp ne i64 %6, 0, !dbg !4765
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !4766

if.then23:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !4767
  br label %return, !dbg !4767

if.end24:                                         ; preds = %if.end15
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4768
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 30, !dbg !4769
  %8 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !4769
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %8, i32 0, i32 1, !dbg !4770
  %9 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !4770
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %9, i32 0, i32 2, !dbg !4771
  %10 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !4771
  %11 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4772
  %12 = load %struct.nand_operation*, %struct.nand_operation** %op.addr, align 8, !dbg !4773
  %call25 = call i32 %10(%struct.nand_chip* %11, %struct.nand_operation* %12, i1 zeroext false) #8, !dbg !4768
  store i32 %call25, i32* %retval, align 4, !dbg !4774
  br label %return, !dbg !4774

return:                                           ; preds = %if.end24, %if.then23, %if.then
  %13 = load i32, i32* %retval, align 4, !dbg !4775
  ret i32 %13, !dbg !4775
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_ntargets(%struct.nand_device* %nand) #0 !dbg !4776 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !4777, metadata !DIExpression()), !dbg !4778
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4779
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !4780
  %ntargets = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 8, !dbg !4781
  %1 = load i32, i32* %ntargets, align 8, !dbg !4781
  ret i32 %1, !dbg !4782
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { cold noredzone }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2822, !2823, !2824, !2825}
!llvm.ident = !{!2826}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "hynix_nand_manuf_ops", scope: !2, file: !3, line: 717, type: !137, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !96, globals: !106, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/nand_hynix.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73, !77, !84, !89}
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
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !90, line: 305, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93, !94, !95}
!92 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!93 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!94 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!95 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!96 = !{!97, !99, !100, !101}
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !98, line: 148, baseType: !7)
!98 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!100 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !102, line: 19, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !104, line: 24, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!106 = !{!0, !107, !115, !130, !135}
!107 = !DIGlobalVariableExpression(var: !108, expr: !DIExpression())
!108 = distinct !DIGlobalVariable(name: "hynix_1xnm_mlc_read_retry_regs", scope: !2, file: !3, line: 283, type: !109, isLocal: true, isDefinition: true)
!109 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !113)
!110 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !102, line: 17, baseType: !111)
!111 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !104, line: 21, baseType: !112)
!112 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!113 = !{!114}
!114 = !DISubrange(count: 8)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "hynix_mlc_1xnm_rr_otps", scope: !2, file: !3, line: 355, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 512, elements: !128)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hynix_read_retry_otp", file: !3, line: 52, size: 256, elements: !120)
!120 = !{!121, !122, !125, !126, !127}
!121 = !DIDerivedType(tag: DW_TAG_member, name: "nregs", scope: !119, file: !3, line: 53, baseType: !100, size: 32)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !119, file: !3, line: 54, baseType: !123, size: 64, offset: 64)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !119, file: !3, line: 55, baseType: !123, size: 64, offset: 128)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !119, file: !3, line: 56, baseType: !100, size: 32, offset: 192)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !119, file: !3, line: 57, baseType: !100, size: 32, offset: 224)
!128 = !{!129}
!129 = !DISubrange(count: 2)
!130 = !DIGlobalVariableExpression(var: !131, expr: !DIExpression())
!131 = distinct !DIGlobalVariable(name: "hynix_mlc_1xnm_rr_otp_regs", scope: !2, file: !3, line: 352, type: !132, isLocal: true, isDefinition: true)
!132 = !DICompositeType(tag: DW_TAG_array_type, baseType: !124, size: 8, elements: !133)
!133 = !{!134}
!134 = !DISubrange(count: 1)
!135 = !DIGlobalVariableExpression(var: !136, expr: !DIExpression())
!136 = distinct !DIGlobalVariable(name: "hynix_mlc_1xnm_rr_otp_values", scope: !2, file: !3, line: 353, type: !132, isLocal: true, isDefinition: true)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !139, line: 47, size: 256, elements: !140)
!139 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !2749, !2750, !2751}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !138, file: !139, line: 48, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{null, !145}
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !146, size: 64)
!146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !74, line: 1096, size: 16704, elements: !147)
!147 = !{!148, !2431, !2436, !2460, !2473, !2546, !2653, !2654, !2655, !2656, !2657, !2658, !2659, !2660, !2676, !2677, !2678, !2679, !2680, !2681, !2682, !2683, !2684, !2685, !2686, !2691, !2692, !2693, !2694, !2695, !2696, !2698, !2748}
!148 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !146, file: !74, line: 1097, baseType: !149, size: 11200)
!149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !150)
!150 = !{!151, !2324, !2336, !2406, !2411, !2415}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !149, file: !51, line: 320, baseType: !152, size: 9664)
!152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !153, line: 235, size: 9664, elements: !154)
!153 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!154 = !{!155, !157, !161, !166, !167, !168, !169, !170, !171, !172, !173, !174, !175, !176, !180, !181, !197, !218, !219, !220, !221, !231, !241, !257, !261, !266, !272, !273, !290, !291, !302, !303, !304, !305, !306, !307, !318, !322, !326, !327, !328, !332, !333, !334, !335, !339, !340, !341, !342, !343, !346, !358, !365, !366, !367, !371, !2294, !2295, !2303, !2307, !2308, !2309}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !152, file: !153, line: 236, baseType: !156, size: 8)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !98, line: 79, baseType: !112)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !152, file: !153, line: 237, baseType: !158, size: 32, offset: 32)
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !98, line: 104, baseType: !159)
!159 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !102, line: 21, baseType: !160)
!160 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !104, line: 27, baseType: !7)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !152, file: !153, line: 238, baseType: !162, size: 64, offset: 64)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !98, line: 107, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !102, line: 23, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !104, line: 31, baseType: !165)
!165 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !152, file: !153, line: 244, baseType: !158, size: 32, offset: 128)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !152, file: !153, line: 252, baseType: !158, size: 32, offset: 160)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !152, file: !153, line: 263, baseType: !158, size: 32, offset: 192)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !152, file: !153, line: 265, baseType: !158, size: 32, offset: 224)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !152, file: !153, line: 266, baseType: !158, size: 32, offset: 256)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !152, file: !153, line: 272, baseType: !7, size: 32, offset: 288)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !152, file: !153, line: 273, baseType: !7, size: 32, offset: 320)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !152, file: !153, line: 275, baseType: !7, size: 32, offset: 352)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !152, file: !153, line: 276, baseType: !7, size: 32, offset: 384)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !152, file: !153, line: 285, baseType: !7, size: 32, offset: 416)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !152, file: !153, line: 288, baseType: !177, size: 64, offset: 448)
!177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !179)
!179 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !152, file: !153, line: 289, baseType: !100, size: 32, offset: 512)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !152, file: !153, line: 292, baseType: !182, size: 64, offset: 576)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !153, line: 101, size: 128, elements: !185)
!185 = !{!186, !196}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !184, file: !153, line: 102, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!100, !190, !100, !191}
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !153, line: 87, size: 64, elements: !193)
!193 = !{!194, !195}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !192, file: !153, line: 88, baseType: !159, size: 32)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !192, file: !153, line: 89, baseType: !159, size: 32, offset: 32)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !184, file: !153, line: 104, baseType: !187, size: 64, offset: 64)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !152, file: !153, line: 295, baseType: !198, size: 64, offset: 640)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !200)
!200 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !153, line: 176, size: 192, elements: !201)
!201 = !{!202, !203, !212}
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !200, file: !153, line: 177, baseType: !100, size: 32)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !200, file: !153, line: 178, baseType: !204, size: 64, offset: 64)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{!100, !190, !100, !207}
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !153, line: 138, size: 64, elements: !209)
!209 = !{!210, !211}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !208, file: !153, line: 139, baseType: !100, size: 32)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !208, file: !153, line: 140, baseType: !100, size: 32, offset: 32)
!212 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !200, file: !153, line: 180, baseType: !213, size: 64, offset: 128)
!213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!214 = !DISubroutineType(types: !215)
!215 = !{!100, !190, !216}
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !152, file: !153, line: 298, baseType: !7, size: 32, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !152, file: !153, line: 301, baseType: !7, size: 32, offset: 736)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !152, file: !153, line: 306, baseType: !100, size: 32, offset: 768)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !152, file: !153, line: 307, baseType: !222, size: 64, offset: 832)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !223, size: 64)
!223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !153, line: 36, size: 192, elements: !224)
!224 = !{!225, !226, !227, !228}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !223, file: !153, line: 37, baseType: !162, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !223, file: !153, line: 38, baseType: !158, size: 32, offset: 64)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !223, file: !153, line: 39, baseType: !158, size: 32, offset: 96)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !223, file: !153, line: 40, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !152, file: !153, line: 313, baseType: !232, size: 64, offset: 896)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DISubroutineType(types: !234)
!234 = !{!100, !190, !235}
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !153, line: 30, size: 192, elements: !237)
!237 = !{!238, !239, !240}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !236, file: !153, line: 31, baseType: !162, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !236, file: !153, line: 32, baseType: !162, size: 64, offset: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !236, file: !153, line: 33, baseType: !162, size: 64, offset: 128)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !152, file: !153, line: 314, baseType: !242, size: 64, offset: 960)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!100, !190, !245, !249, !252, !253, !254}
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !98, line: 46, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !247, line: 88, baseType: !248)
!247 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!248 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !98, line: 55, baseType: !250)
!250 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !247, line: 72, baseType: !251)
!251 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !247, line: 16, baseType: !230)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !98, line: 158, baseType: !256)
!256 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !98, line: 153, baseType: !163)
!257 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !152, file: !153, line: 316, baseType: !258, size: 64, offset: 1024)
!258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !259, size: 64)
!259 = !DISubroutineType(types: !260)
!260 = !{!100, !190, !245, !249}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !152, file: !153, line: 317, baseType: !262, size: 64, offset: 1088)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!100, !190, !245, !249, !252, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !152, file: !153, line: 319, baseType: !267, size: 64, offset: 1152)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!100, !190, !245, !249, !252, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !156)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !152, file: !153, line: 321, baseType: !267, size: 64, offset: 1216)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !152, file: !153, line: 323, baseType: !274, size: 64, offset: 1280)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DISubroutineType(types: !276)
!276 = !{!100, !190, !245, !277}
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !153, line: 64, size: 512, elements: !279)
!279 = !{!280, !281, !282, !283, !284, !285, !286, !289}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !278, file: !153, line: 65, baseType: !7, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !278, file: !153, line: 66, baseType: !249, size: 64, offset: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !278, file: !153, line: 67, baseType: !249, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !278, file: !153, line: 68, baseType: !249, size: 64, offset: 192)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !278, file: !153, line: 69, baseType: !249, size: 64, offset: 256)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !278, file: !153, line: 70, baseType: !158, size: 32, offset: 320)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !278, file: !153, line: 71, baseType: !287, size: 64, offset: 384)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !98, line: 102, baseType: !110)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !278, file: !153, line: 72, baseType: !287, size: 64, offset: 448)
!290 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !152, file: !153, line: 325, baseType: !274, size: 64, offset: 1344)
!291 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !152, file: !153, line: 327, baseType: !292, size: 64, offset: 1408)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!100, !190, !249, !252, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !297, line: 146, size: 96, elements: !298)
!297 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!298 = !{!299, !300, !301}
!299 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !296, file: !297, line: 147, baseType: !160, size: 32)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !296, file: !297, line: 148, baseType: !160, size: 32, offset: 32)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !296, file: !297, line: 149, baseType: !160, size: 32, offset: 64)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !152, file: !153, line: 329, baseType: !262, size: 64, offset: 1472)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !152, file: !153, line: 331, baseType: !292, size: 64, offset: 1536)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !152, file: !153, line: 333, baseType: !262, size: 64, offset: 1600)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !152, file: !153, line: 335, baseType: !262, size: 64, offset: 1664)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !152, file: !153, line: 337, baseType: !258, size: 64, offset: 1728)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !152, file: !153, line: 339, baseType: !308, size: 64, offset: 1792)
!308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!309 = !DISubroutineType(types: !310)
!310 = !{!100, !190, !311, !230, !245, !252}
!311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!312 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !313)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !314, line: 15, size: 128, elements: !315)
!314 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!315 = !{!316, !317}
!316 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !313, file: !314, line: 16, baseType: !99, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !313, file: !314, line: 17, baseType: !249, size: 64, offset: 64)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !152, file: !153, line: 341, baseType: !319, size: 64, offset: 1856)
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = !DISubroutineType(types: !321)
!321 = !{null, !190}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !152, file: !153, line: 342, baseType: !323, size: 64, offset: 1920)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!100, !190, !245, !162}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !152, file: !153, line: 343, baseType: !323, size: 64, offset: 1984)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !152, file: !153, line: 344, baseType: !323, size: 64, offset: 2048)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !152, file: !153, line: 345, baseType: !329, size: 64, offset: 2112)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DISubroutineType(types: !331)
!331 = !{!100, !190, !245}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !152, file: !153, line: 346, baseType: !329, size: 64, offset: 2176)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !152, file: !153, line: 347, baseType: !329, size: 64, offset: 2240)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !152, file: !153, line: 348, baseType: !258, size: 64, offset: 2304)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !152, file: !153, line: 349, baseType: !336, size: 64, offset: 2368)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!100, !190}
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !152, file: !153, line: 350, baseType: !319, size: 64, offset: 2432)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !152, file: !153, line: 351, baseType: !319, size: 64, offset: 2496)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !152, file: !153, line: 356, baseType: !336, size: 64, offset: 2560)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !152, file: !153, line: 357, baseType: !319, size: 64, offset: 2624)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !152, file: !153, line: 363, baseType: !344, size: 8, offset: 2688)
!344 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !98, line: 30, baseType: !345)
!345 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !152, file: !153, line: 365, baseType: !347, size: 192, offset: 2752)
!347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !348, line: 54, size: 192, elements: !349)
!348 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!349 = !{!350, !356, !357}
!350 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !347, file: !348, line: 55, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !348, line: 51, baseType: !352)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DISubroutineType(types: !354)
!354 = !{!100, !355, !230, !99}
!355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !347, file: !348, line: 56, baseType: !355, size: 64, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !347, file: !348, line: 57, baseType: !100, size: 32, offset: 128)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !152, file: !153, line: 368, baseType: !359, size: 128, offset: 2944)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !297, line: 250, size: 128, elements: !360)
!360 = !{!361, !362, !363, !364}
!361 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !359, file: !297, line: 251, baseType: !160, size: 32)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !359, file: !297, line: 252, baseType: !160, size: 32, offset: 32)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !359, file: !297, line: 253, baseType: !160, size: 32, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !359, file: !297, line: 254, baseType: !160, size: 32, offset: 96)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !152, file: !153, line: 370, baseType: !100, size: 32, offset: 3072)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !152, file: !153, line: 372, baseType: !99, size: 64, offset: 3136)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !152, file: !153, line: 374, baseType: !368, size: 64, offset: 3200)
!368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!369 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !370, line: 76, flags: DIFlagFwdDecl)
!370 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!371 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !152, file: !153, line: 375, baseType: !372, size: 5568, offset: 3264)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !373)
!373 = !{!374, !1820, !1822, !1825, !1826, !1877, !1971, !1972, !1973, !1974, !1975, !1984, !2089, !2102, !2105, !2106, !2110, !2112, !2113, !2114, !2118, !2124, !2125, !2128, !2243, !2244, !2247, !2248, !2249, !2250, !2282, !2283, !2284, !2287, !2290, !2291, !2292, !2293}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !372, file: !30, line: 462, baseType: !375, size: 512)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !376, line: 64, size: 512, elements: !377)
!376 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378, !379, !385, !387, !447, !1657, !1810, !1815, !1816, !1817, !1818, !1819}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !375, file: !376, line: 65, baseType: !177, size: 64)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !375, file: !376, line: 66, baseType: !380, size: 128, offset: 64)
!380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !98, line: 178, size: 128, elements: !381)
!381 = !{!382, !384}
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !380, file: !98, line: 179, baseType: !383, size: 64)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !380, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !380, file: !98, line: 179, baseType: !383, size: 64, offset: 64)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !375, file: !376, line: 67, baseType: !386, size: 64, offset: 192)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !375, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !375, file: !376, line: 68, baseType: !388, size: 64, offset: 256)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !376, line: 192, size: 704, elements: !390)
!390 = !{!391, !392, !408, !409}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !389, file: !376, line: 193, baseType: !380, size: 128)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !389, file: !376, line: 194, baseType: !393, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !394, line: 83, baseType: !395)
!394 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !394, line: 71, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, scope: !395, file: !394, line: 72, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !395, file: !394, line: 72, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !398, file: !394, line: 73, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !394, line: 20, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !401, file: !394, line: 21, baseType: !404)
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !405, line: 25, baseType: !406)
!405 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !405, line: 25, elements: !407)
!407 = !{}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !389, file: !376, line: 195, baseType: !375, size: 512, offset: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !389, file: !376, line: 196, baseType: !410, size: 64, offset: 640)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !412)
!412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !376, line: 156, size: 192, elements: !413)
!413 = !{!414, !419, !424}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !412, file: !376, line: 157, baseType: !415, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !416)
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = !DISubroutineType(types: !418)
!418 = !{!100, !388, !386}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !412, file: !376, line: 158, baseType: !420, size: 64, offset: 64)
!420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !421)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!177, !388, !386}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !412, file: !376, line: 159, baseType: !425, size: 64, offset: 128)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!100, !388, !386, !429}
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !376, line: 148, size: 20736, elements: !431)
!431 = !{!432, !437, !441, !442, !446}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !430, file: !376, line: 149, baseType: !433, size: 192)
!433 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 192, elements: !435)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!435 = !{!436}
!436 = !DISubrange(count: 3)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !430, file: !376, line: 150, baseType: !438, size: 4096, offset: 192)
!438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 4096, elements: !439)
!439 = !{!440}
!440 = !DISubrange(count: 64)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !430, file: !376, line: 151, baseType: !100, size: 32, offset: 4288)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !430, file: !376, line: 152, baseType: !443, size: 16384, offset: 4320)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 16384, elements: !444)
!444 = !{!445}
!445 = !DISubrange(count: 2048)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !430, file: !376, line: 153, baseType: !100, size: 32, offset: 20704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !375, file: !376, line: 69, baseType: !448, size: 64, offset: 320)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !376, line: 138, size: 448, elements: !450)
!450 = !{!451, !455, !479, !481, !1602, !1635, !1639}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !449, file: !376, line: 139, baseType: !452, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = !DISubroutineType(types: !454)
!454 = !{null, !386}
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !449, file: !376, line: 140, baseType: !456, size: 64, offset: 64)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !459, line: 230, size: 128, elements: !460)
!459 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!460 = !{!461, !475}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !458, file: !459, line: 231, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{!465, !386, !469, !434}
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !98, line: 60, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !247, line: 73, baseType: !467)
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !247, line: 15, baseType: !468)
!468 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !459, line: 30, size: 128, elements: !471)
!471 = !{!472, !473}
!472 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !470, file: !459, line: 31, baseType: !177, size: 64)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !470, file: !459, line: 32, baseType: !474, size: 16, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !98, line: 19, baseType: !105)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !458, file: !459, line: 232, baseType: !476, size: 64, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DISubroutineType(types: !478)
!478 = !{!465, !386, !469, !177, !249}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !449, file: !376, line: 141, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !469, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !449, file: !376, line: 142, baseType: !482, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!484 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !485)
!485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !459, line: 84, size: 320, elements: !486)
!486 = !{!487, !488, !492, !1599, !1600}
!487 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !485, file: !459, line: 85, baseType: !177, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !485, file: !459, line: 86, baseType: !489, size: 64, offset: 64)
!489 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !490, size: 64)
!490 = !DISubroutineType(types: !491)
!491 = !{!474, !386, !469, !100}
!492 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !485, file: !459, line: 88, baseType: !493, size: 64, offset: 128)
!493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!494 = !DISubroutineType(types: !495)
!495 = !{!474, !386, !496, !100}
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !459, line: 168, size: 448, elements: !498)
!498 = !{!499, !500, !501, !502, !509, !510}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !497, file: !459, line: 169, baseType: !470, size: 128)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !497, file: !459, line: 170, baseType: !249, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !497, file: !459, line: 171, baseType: !99, size: 64, offset: 192)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !497, file: !459, line: 172, baseType: !503, size: 64, offset: 256)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!465, !506, !386, !496, !434, !245, !249}
!506 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !507, size: 64)
!507 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !508, line: 526, flags: DIFlagFwdDecl)
!508 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!509 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !497, file: !459, line: 174, baseType: !503, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !497, file: !459, line: 176, baseType: !511, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !512, size: 64)
!512 = !DISubroutineType(types: !513)
!513 = !{!100, !506, !386, !496, !514}
!514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !515, size: 64)
!515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !516, line: 305, size: 1472, elements: !517)
!516 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!517 = !{!518, !519, !520, !521, !522, !530, !531, !1573, !1579, !1580, !1585, !1586, !1589, !1593, !1594, !1595, !1596, !1597}
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !515, file: !516, line: 308, baseType: !230, size: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !515, file: !516, line: 309, baseType: !230, size: 64, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !515, file: !516, line: 313, baseType: !514, size: 64, offset: 128)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !515, file: !516, line: 313, baseType: !514, size: 64, offset: 192)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !515, file: !516, line: 315, baseType: !523, size: 192, align: 64, offset: 256)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !524, line: 24, size: 192, align: 64, elements: !525)
!524 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!525 = !{!526, !527, !529}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !523, file: !524, line: 25, baseType: !230, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !523, file: !524, line: 26, baseType: !528, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !523, file: !524, line: 27, baseType: !528, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !515, file: !516, line: 323, baseType: !230, size: 64, offset: 448)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !515, file: !516, line: 327, baseType: !532, size: 64, offset: 512)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !516, line: 388, size: 7296, elements: !534)
!534 = !{!535, !1569}
!535 = !DIDerivedType(tag: DW_TAG_member, scope: !533, file: !516, line: 389, baseType: !536, size: 7296)
!536 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !533, file: !516, line: 389, size: 7296, elements: !537)
!537 = !{!538, !539, !543, !544, !548, !549, !550, !551, !552, !560, !565, !566, !567, !568, !577, !578, !579, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !614, !622, !625, !655, !656, !1540, !1541, !1544, !1547, !1548, !1551, !1552, !1553, !1556, !1568}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !536, file: !516, line: 390, baseType: !514, size: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !536, file: !516, line: 391, baseType: !540, size: 64, offset: 64)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !524, line: 31, size: 64, elements: !541)
!541 = !{!542}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !540, file: !524, line: 32, baseType: !528, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !536, file: !516, line: 392, baseType: !163, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !536, file: !516, line: 394, baseType: !545, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !546, size: 64)
!546 = !DISubroutineType(types: !547)
!547 = !{!230, !506, !230, !230, !230, !230}
!548 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !536, file: !516, line: 398, baseType: !230, size: 64, offset: 256)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !536, file: !516, line: 399, baseType: !230, size: 64, offset: 320)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !536, file: !516, line: 405, baseType: !230, size: 64, offset: 384)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !536, file: !516, line: 406, baseType: !230, size: 64, offset: 448)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !536, file: !516, line: 407, baseType: !553, size: 64, offset: 512)
!553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !554, size: 64)
!554 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !508, line: 286, baseType: !555)
!555 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !508, line: 286, size: 64, elements: !556)
!556 = !{!557}
!557 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !555, file: !508, line: 286, baseType: !558, size: 64)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !559, line: 18, baseType: !230)
!559 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!560 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !536, file: !516, line: 416, baseType: !561, size: 32, offset: 576)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !98, line: 168, baseType: !562)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 166, size: 32, elements: !563)
!563 = !{!564}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !562, file: !98, line: 167, baseType: !100, size: 32)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !536, file: !516, line: 428, baseType: !561, size: 32, offset: 608)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !536, file: !516, line: 437, baseType: !561, size: 32, offset: 640)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !536, file: !516, line: 447, baseType: !561, size: 32, offset: 672)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !536, file: !516, line: 450, baseType: !569, size: 64, offset: 704)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !570, line: 13, baseType: !571)
!570 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!571 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !98, line: 175, baseType: !572)
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !98, line: 173, size: 64, elements: !573)
!573 = !{!574}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !572, file: !98, line: 174, baseType: !575, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !102, line: 22, baseType: !576)
!576 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !104, line: 30, baseType: !248)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !536, file: !516, line: 452, baseType: !100, size: 32, offset: 768)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !536, file: !516, line: 454, baseType: !393, offset: 800)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !536, file: !516, line: 457, baseType: !580, size: 256, offset: 832)
!580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !581, line: 35, size: 256, elements: !582)
!581 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!582 = !{!583, !584, !585, !587}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !580, file: !581, line: 36, baseType: !569, size: 64)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !580, file: !581, line: 42, baseType: !569, size: 64, offset: 64)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !580, file: !581, line: 46, baseType: !586, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !394, line: 29, baseType: !401)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !580, file: !581, line: 47, baseType: !380, size: 128, offset: 128)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !536, file: !516, line: 459, baseType: !380, size: 128, offset: 1088)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !536, file: !516, line: 466, baseType: !230, size: 64, offset: 1216)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !536, file: !516, line: 467, baseType: !230, size: 64, offset: 1280)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !536, file: !516, line: 469, baseType: !230, size: 64, offset: 1344)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !536, file: !516, line: 470, baseType: !230, size: 64, offset: 1408)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !536, file: !516, line: 471, baseType: !571, size: 64, offset: 1472)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !536, file: !516, line: 472, baseType: !230, size: 64, offset: 1536)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !536, file: !516, line: 473, baseType: !230, size: 64, offset: 1600)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !536, file: !516, line: 474, baseType: !230, size: 64, offset: 1664)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !536, file: !516, line: 475, baseType: !230, size: 64, offset: 1728)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !536, file: !516, line: 477, baseType: !393, offset: 1792)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !536, file: !516, line: 478, baseType: !230, size: 64, offset: 1792)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !536, file: !516, line: 478, baseType: !230, size: 64, offset: 1856)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !536, file: !516, line: 478, baseType: !230, size: 64, offset: 1920)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !536, file: !516, line: 478, baseType: !230, size: 64, offset: 1984)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !536, file: !516, line: 479, baseType: !230, size: 64, offset: 2048)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !536, file: !516, line: 479, baseType: !230, size: 64, offset: 2112)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !536, file: !516, line: 479, baseType: !230, size: 64, offset: 2176)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !536, file: !516, line: 480, baseType: !230, size: 64, offset: 2240)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !536, file: !516, line: 480, baseType: !230, size: 64, offset: 2304)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !536, file: !516, line: 480, baseType: !230, size: 64, offset: 2368)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !536, file: !516, line: 480, baseType: !230, size: 64, offset: 2432)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !536, file: !516, line: 482, baseType: !611, size: 2816, offset: 2496)
!611 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 2816, elements: !612)
!612 = !{!613}
!613 = !DISubrange(count: 44)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !536, file: !516, line: 488, baseType: !615, size: 256, offset: 5312)
!615 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !616, line: 60, size: 256, elements: !617)
!616 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!617 = !{!618}
!618 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !615, file: !616, line: 61, baseType: !619, size: 256)
!619 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 256, elements: !620)
!620 = !{!621}
!621 = !DISubrange(count: 4)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !536, file: !516, line: 490, baseType: !623, size: 64, offset: 5568)
!623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!624 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !516, line: 490, flags: DIFlagFwdDecl)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !536, file: !516, line: 493, baseType: !626, size: 896, offset: 5632)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !627, line: 53, baseType: !628)
!627 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !627, line: 13, size: 896, elements: !629)
!629 = !{!630, !631, !632, !633, !636, !637, !644, !645, !649, !650, !651}
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !628, file: !627, line: 18, baseType: !163, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !628, file: !627, line: 28, baseType: !571, size: 64, offset: 64)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !628, file: !627, line: 31, baseType: !580, size: 256, offset: 128)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !628, file: !627, line: 32, baseType: !634, size: 64, offset: 384)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !627, line: 32, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !628, file: !627, line: 37, baseType: !105, size: 16, offset: 448)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !628, file: !627, line: 40, baseType: !638, size: 192, offset: 512)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !639, line: 53, size: 192, elements: !640)
!639 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!640 = !{!641, !642, !643}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !638, file: !639, line: 54, baseType: !569, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !638, file: !639, line: 55, baseType: !393, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !638, file: !639, line: 59, baseType: !380, size: 128, offset: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !628, file: !627, line: 41, baseType: !99, size: 64, offset: 704)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !628, file: !627, line: 42, baseType: !646, size: 64, offset: 768)
!646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !647, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !648)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !627, line: 42, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !628, file: !627, line: 44, baseType: !561, size: 32, offset: 832)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !628, file: !627, line: 50, baseType: !101, size: 16, offset: 864)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !628, file: !627, line: 51, baseType: !652, size: 16, offset: 880)
!652 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !102, line: 18, baseType: !653)
!653 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !104, line: 23, baseType: !654)
!654 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !536, file: !516, line: 495, baseType: !230, size: 64, offset: 6528)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !536, file: !516, line: 497, baseType: !657, size: 64, offset: 6592)
!657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !658, size: 64)
!658 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !516, line: 381, size: 384, elements: !659)
!659 = !{!660, !661, !1539}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !658, file: !516, line: 382, baseType: !561, size: 32)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !658, file: !516, line: 383, baseType: !662, size: 128, offset: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !516, line: 376, size: 128, elements: !663)
!663 = !{!664, !1537}
!664 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !662, file: !516, line: 377, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !666, size: 64)
!666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !667, line: 640, size: 48640, elements: !668)
!667 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!668 = !{!669, !675, !677, !678, !684, !685, !686, !687, !688, !689, !690, !691, !695, !713, !724, !814, !815, !816, !825, !826, !828, !829, !830, !831, !837, !838, !839, !840, !841, !842, !843, !844, !845, !846, !847, !848, !849, !850, !851, !852, !910, !913, !914, !915, !916, !917, !918, !919, !920, !921, !922, !966, !968, !969, !970, !982, !984, !985, !986, !987, !988, !994, !995, !996, !997, !998, !999, !1000, !1012, !1017, !1021, !1022, !1023, !1026, !1030, !1033, !1036, !1039, !1042, !1045, !1048, !1051, !1057, !1058, !1059, !1065, !1066, !1067, !1068, !1069, !1078, !1079, !1080, !1081, !1082, !1087, !1088, !1089, !1092, !1093, !1096, !1099, !1102, !1105, !1108, !1111, !1112, !1192, !1195, !1198, !1199, !1202, !1203, !1204, !1208, !1209, !1210, !1223, !1224, !1225, !1235, !1240, !1243, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !666, file: !667, line: 646, baseType: !670, size: 128)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !671, line: 56, size: 128, elements: !672)
!671 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !671, line: 57, baseType: !230, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !670, file: !671, line: 58, baseType: !159, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !666, file: !667, line: 649, baseType: !676, size: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !468)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !666, file: !667, line: 657, baseType: !99, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !666, file: !667, line: 658, baseType: !679, size: 32, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !680, line: 113, baseType: !681)
!680 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !680, line: 111, size: 32, elements: !682)
!682 = !{!683}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !681, file: !680, line: 112, baseType: !561, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !666, file: !667, line: 660, baseType: !7, size: 32, offset: 288)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !666, file: !667, line: 661, baseType: !7, size: 32, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !666, file: !667, line: 684, baseType: !100, size: 32, offset: 352)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !666, file: !667, line: 686, baseType: !100, size: 32, offset: 384)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !666, file: !667, line: 687, baseType: !100, size: 32, offset: 416)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !666, file: !667, line: 688, baseType: !100, size: 32, offset: 448)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !666, file: !667, line: 689, baseType: !7, size: 32, offset: 480)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !666, file: !667, line: 691, baseType: !692, size: 64, offset: 512)
!692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !694)
!694 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !667, line: 691, flags: DIFlagFwdDecl)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !666, file: !667, line: 692, baseType: !696, size: 832, offset: 576)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !667, line: 451, size: 832, elements: !697)
!697 = !{!698, !703, !704, !705, !706, !707, !708, !709, !710, !711}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !696, file: !667, line: 453, baseType: !699, size: 128)
!699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !667, line: 325, size: 128, elements: !700)
!700 = !{!701, !702}
!701 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !699, file: !667, line: 326, baseType: !230, size: 64)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !699, file: !667, line: 327, baseType: !159, size: 32, offset: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !696, file: !667, line: 454, baseType: !523, size: 192, align: 64, offset: 128)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !696, file: !667, line: 455, baseType: !380, size: 128, offset: 320)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !696, file: !667, line: 456, baseType: !7, size: 32, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !696, file: !667, line: 458, baseType: !163, size: 64, offset: 512)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !696, file: !667, line: 459, baseType: !163, size: 64, offset: 576)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !696, file: !667, line: 460, baseType: !163, size: 64, offset: 640)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !696, file: !667, line: 461, baseType: !163, size: 64, offset: 704)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !696, file: !667, line: 463, baseType: !163, size: 64, offset: 768)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !696, file: !667, line: 465, baseType: !712, offset: 832)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !667, line: 415, elements: !407)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !666, file: !667, line: 693, baseType: !714, size: 384, offset: 1408)
!714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !667, line: 489, size: 384, elements: !715)
!715 = !{!716, !717, !718, !719, !720, !721, !722}
!716 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !714, file: !667, line: 490, baseType: !380, size: 128)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !714, file: !667, line: 491, baseType: !230, size: 64, offset: 128)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !714, file: !667, line: 492, baseType: !230, size: 64, offset: 192)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !714, file: !667, line: 493, baseType: !7, size: 32, offset: 256)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !714, file: !667, line: 494, baseType: !105, size: 16, offset: 288)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !714, file: !667, line: 495, baseType: !105, size: 16, offset: 304)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !714, file: !667, line: 497, baseType: !723, size: 64, offset: 320)
!723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !666, file: !667, line: 697, baseType: !725, size: 1792, offset: 1792)
!725 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !667, line: 507, size: 1792, elements: !726)
!726 = !{!727, !728, !729, !730, !731, !732, !733, !734, !735, !736, !737, !738, !739, !740, !811, !812}
!727 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !725, file: !667, line: 508, baseType: !523, size: 192, align: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !725, file: !667, line: 515, baseType: !163, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !725, file: !667, line: 516, baseType: !163, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !725, file: !667, line: 517, baseType: !163, size: 64, offset: 320)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !725, file: !667, line: 518, baseType: !163, size: 64, offset: 384)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !725, file: !667, line: 519, baseType: !163, size: 64, offset: 448)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !725, file: !667, line: 526, baseType: !575, size: 64, offset: 512)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !725, file: !667, line: 527, baseType: !163, size: 64, offset: 576)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !725, file: !667, line: 528, baseType: !7, size: 32, offset: 640)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !725, file: !667, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !725, file: !667, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !725, file: !667, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !725, file: !667, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !725, file: !667, line: 563, baseType: !741, size: 512, offset: 704)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !742)
!742 = !{!743, !751, !752, !757, !807, !808, !809, !810}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !741, file: !6, line: 119, baseType: !744, size: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !745, line: 9, size: 256, elements: !746)
!745 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !744, file: !745, line: 10, baseType: !523, size: 192, align: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !744, file: !745, line: 11, baseType: !749, size: 64, offset: 192)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !750, line: 29, baseType: !575)
!750 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!751 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !741, file: !6, line: 120, baseType: !749, size: 64, offset: 256)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !741, file: !6, line: 121, baseType: !753, size: 64, offset: 320)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !754, size: 64)
!754 = !DISubroutineType(types: !755)
!755 = !{!5, !756}
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !741, file: !6, line: 122, baseType: !758, size: 64, offset: 384)
!758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !759, size: 64)
!759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !760)
!760 = !{!761, !779, !780, !783, !793, !794, !802, !806}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !759, file: !6, line: 160, baseType: !762, size: 64)
!762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !763, size: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !764)
!764 = !{!765, !766, !767, !768, !769, !770, !771, !772, !773, !774, !775, !776, !777}
!765 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !6, line: 215, baseType: !586)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !763, file: !6, line: 216, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !763, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !763, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !763, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !763, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !763, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !763, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !763, file: !6, line: 233, baseType: !749, size: 64, offset: 128)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !763, file: !6, line: 234, baseType: !756, size: 64, offset: 192)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !763, file: !6, line: 235, baseType: !749, size: 64, offset: 256)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !763, file: !6, line: 236, baseType: !756, size: 64, offset: 320)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !763, file: !6, line: 237, baseType: !778, size: 4096, offset: 512)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !759, size: 4096, elements: !113)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !759, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !759, file: !6, line: 162, baseType: !781, size: 32, offset: 96)
!781 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !98, line: 27, baseType: !782)
!782 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !247, line: 96, baseType: !100)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !759, file: !6, line: 163, baseType: !784, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !785, line: 276, baseType: !786)
!785 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !785, line: 276, size: 32, elements: !787)
!787 = !{!788}
!788 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !786, file: !785, line: 276, baseType: !789, size: 32)
!789 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !785, line: 70, baseType: !790)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !785, line: 65, size: 32, elements: !791)
!791 = !{!792}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !790, file: !785, line: 66, baseType: !7, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !759, file: !6, line: 164, baseType: !756, size: 64, offset: 192)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !759, file: !6, line: 165, baseType: !795, size: 128, offset: 256)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !745, line: 14, size: 128, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !795, file: !745, line: 15, baseType: !798, size: 128)
!798 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !524, line: 125, size: 128, elements: !799)
!799 = !{!800, !801}
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !798, file: !524, line: 126, baseType: !540, size: 64)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !798, file: !524, line: 127, baseType: !528, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !759, file: !6, line: 166, baseType: !803, size: 64, offset: 384)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = !DISubroutineType(types: !805)
!805 = !{!749}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !759, file: !6, line: 167, baseType: !749, size: 64, offset: 448)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !741, file: !6, line: 123, baseType: !110, size: 8, offset: 448)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !741, file: !6, line: 124, baseType: !110, size: 8, offset: 456)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !741, file: !6, line: 125, baseType: !110, size: 8, offset: 464)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !741, file: !6, line: 126, baseType: !110, size: 8, offset: 472)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !725, file: !667, line: 572, baseType: !741, size: 512, offset: 1216)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !725, file: !667, line: 580, baseType: !813, size: 64, offset: 1728)
!813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !725, size: 64)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !666, file: !667, line: 721, baseType: !7, size: 32, offset: 3584)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !666, file: !667, line: 722, baseType: !100, size: 32, offset: 3616)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !666, file: !667, line: 723, baseType: !817, size: 64, offset: 3648)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !819)
!819 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !820, line: 17, baseType: !821)
!820 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !820, line: 17, size: 64, elements: !822)
!822 = !{!823}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !821, file: !820, line: 17, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 64, elements: !133)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !666, file: !667, line: 724, baseType: !819, size: 64, offset: 3712)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !666, file: !667, line: 749, baseType: !827, offset: 3776)
!827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !667, line: 290, elements: !407)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !666, file: !667, line: 751, baseType: !380, size: 128, offset: 3776)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !666, file: !667, line: 757, baseType: !532, size: 64, offset: 3904)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !666, file: !667, line: 758, baseType: !532, size: 64, offset: 3968)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !666, file: !667, line: 761, baseType: !832, size: 320, offset: 4032)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !616, line: 34, size: 320, elements: !833)
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !832, file: !616, line: 35, baseType: !163, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !832, file: !616, line: 36, baseType: !836, size: 256, offset: 64)
!836 = !DICompositeType(tag: DW_TAG_array_type, baseType: !514, size: 256, elements: !620)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !666, file: !667, line: 766, baseType: !100, size: 32, offset: 4352)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !666, file: !667, line: 767, baseType: !100, size: 32, offset: 4384)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !666, file: !667, line: 768, baseType: !100, size: 32, offset: 4416)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !666, file: !667, line: 770, baseType: !100, size: 32, offset: 4448)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !666, file: !667, line: 772, baseType: !230, size: 64, offset: 4480)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !666, file: !667, line: 775, baseType: !7, size: 32, offset: 4544)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !666, file: !667, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !666, file: !667, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !666, file: !667, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !666, file: !667, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !666, file: !667, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !666, file: !667, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !666, file: !667, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !666, file: !667, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !666, file: !667, line: 831, baseType: !230, size: 64, offset: 4672)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !666, file: !667, line: 833, baseType: !853, size: 384, offset: 4736)
!853 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !854)
!854 = !{!855, !860}
!855 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !853, file: !12, line: 26, baseType: !856, size: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !857, size: 64)
!857 = !DISubroutineType(types: !858)
!858 = !{!468, !859}
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, scope: !853, file: !12, line: 27, baseType: !861, size: 320, offset: 64)
!861 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !853, file: !12, line: 27, size: 320, elements: !862)
!862 = !{!863, !873, !900}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !861, file: !12, line: 36, baseType: !864, size: 320)
!864 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !12, line: 29, size: 320, elements: !865)
!865 = !{!866, !868, !869, !870, !871, !872}
!866 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !864, file: !12, line: 30, baseType: !867, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !159, size: 64)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !864, file: !12, line: 31, baseType: !159, size: 32, offset: 64)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !864, file: !12, line: 32, baseType: !159, size: 32, offset: 96)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !864, file: !12, line: 33, baseType: !159, size: 32, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !864, file: !12, line: 34, baseType: !163, size: 64, offset: 192)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !864, file: !12, line: 35, baseType: !867, size: 64, offset: 256)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !861, file: !12, line: 46, baseType: !874, size: 192)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !12, line: 38, size: 192, elements: !875)
!875 = !{!876, !877, !878, !899}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !874, file: !12, line: 39, baseType: !781, size: 32)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !874, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!878 = !DIDerivedType(tag: DW_TAG_member, scope: !874, file: !12, line: 41, baseType: !879, size: 64, offset: 64)
!879 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !874, file: !12, line: 41, size: 64, elements: !880)
!880 = !{!881, !889}
!881 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !879, file: !12, line: 42, baseType: !882, size: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !884, line: 7, size: 128, elements: !885)
!884 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!885 = !{!886, !888}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !883, file: !884, line: 8, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !247, line: 93, baseType: !248)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !883, file: !884, line: 9, baseType: !248, size: 64, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !879, file: !12, line: 43, baseType: !890, size: 64)
!890 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !891, size: 64)
!891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !892, line: 7, size: 64, elements: !893)
!892 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!893 = !{!894, !898}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !891, file: !892, line: 8, baseType: !895, size: 32)
!895 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !892, line: 5, baseType: !896)
!896 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !102, line: 20, baseType: !897)
!897 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !104, line: 26, baseType: !100)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !891, file: !892, line: 9, baseType: !896, size: 32, offset: 32)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !874, file: !12, line: 45, baseType: !163, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !861, file: !12, line: 54, baseType: !901, size: 256)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !861, file: !12, line: 48, size: 256, elements: !902)
!902 = !{!903, !906, !907, !908, !909}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !901, file: !12, line: 49, baseType: !904, size: 64)
!904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !905, size: 64)
!905 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !901, file: !12, line: 50, baseType: !100, size: 32, offset: 64)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !901, file: !12, line: 51, baseType: !100, size: 32, offset: 96)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !901, file: !12, line: 52, baseType: !230, size: 64, offset: 128)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !901, file: !12, line: 53, baseType: !230, size: 64, offset: 192)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !666, file: !667, line: 835, baseType: !911, size: 32, offset: 5120)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !98, line: 22, baseType: !912)
!912 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !247, line: 28, baseType: !100)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !666, file: !667, line: 836, baseType: !911, size: 32, offset: 5152)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !666, file: !667, line: 840, baseType: !230, size: 64, offset: 5184)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !666, file: !667, line: 849, baseType: !665, size: 64, offset: 5248)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !666, file: !667, line: 852, baseType: !665, size: 64, offset: 5312)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !666, file: !667, line: 857, baseType: !380, size: 128, offset: 5376)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !666, file: !667, line: 858, baseType: !380, size: 128, offset: 5504)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !666, file: !667, line: 859, baseType: !665, size: 64, offset: 5632)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !666, file: !667, line: 867, baseType: !380, size: 128, offset: 5696)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !666, file: !667, line: 868, baseType: !380, size: 128, offset: 5824)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !666, file: !667, line: 871, baseType: !923, size: 64, offset: 5952)
!923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !924, size: 64)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !925, line: 59, size: 768, elements: !926)
!925 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!926 = !{!927, !928, !929, !930, !941, !942, !949, !958}
!927 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !924, file: !925, line: 61, baseType: !679, size: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !924, file: !925, line: 62, baseType: !7, size: 32, offset: 32)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !924, file: !925, line: 63, baseType: !393, offset: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !924, file: !925, line: 65, baseType: !931, size: 256, offset: 64)
!931 = !DICompositeType(tag: DW_TAG_array_type, baseType: !932, size: 256, elements: !620)
!932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !98, line: 182, size: 64, elements: !933)
!933 = !{!934}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !932, file: !98, line: 183, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !98, line: 186, size: 128, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !936, file: !98, line: 187, baseType: !935, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !936, file: !98, line: 187, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !924, file: !925, line: 66, baseType: !932, size: 64, offset: 320)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !924, file: !925, line: 68, baseType: !943, size: 128, offset: 384)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !944, line: 40, baseType: !945)
!944 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!945 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !944, line: 36, size: 128, elements: !946)
!946 = !{!947, !948}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !945, file: !944, line: 37, baseType: !393)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !945, file: !944, line: 38, baseType: !380, size: 128)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !924, file: !925, line: 69, baseType: !950, size: 128, align: 64, offset: 512)
!950 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !98, line: 216, size: 128, align: 64, elements: !951)
!951 = !{!952, !954}
!952 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !950, file: !98, line: 217, baseType: !953, size: 64)
!953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !950, file: !98, line: 218, baseType: !955, size: 64, offset: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DISubroutineType(types: !957)
!957 = !{null, !953}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !924, file: !925, line: 70, baseType: !959, size: 128, offset: 640)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !960, size: 128, elements: !133)
!960 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !925, line: 54, size: 128, elements: !961)
!961 = !{!962, !963}
!962 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !960, file: !925, line: 55, baseType: !100, size: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !960, file: !925, line: 56, baseType: !964, size: 64, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !925, line: 56, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !666, file: !667, line: 872, baseType: !967, size: 512, offset: 6016)
!967 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 512, elements: !620)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !666, file: !667, line: 873, baseType: !380, size: 128, offset: 6528)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !666, file: !667, line: 874, baseType: !380, size: 128, offset: 6656)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !666, file: !667, line: 876, baseType: !971, size: 64, offset: 6784)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !973, line: 26, size: 192, elements: !974)
!973 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!974 = !{!975, !976}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !972, file: !973, line: 27, baseType: !7, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !972, file: !973, line: 28, baseType: !977, size: 128, offset: 64)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !978, line: 43, size: 128, elements: !979)
!978 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980, !981}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !977, file: !978, line: 44, baseType: !586)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !977, file: !978, line: 45, baseType: !380, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !666, file: !667, line: 879, baseType: !983, size: 64, offset: 6848)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !666, file: !667, line: 882, baseType: !983, size: 64, offset: 6912)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !666, file: !667, line: 884, baseType: !163, size: 64, offset: 6976)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !666, file: !667, line: 885, baseType: !163, size: 64, offset: 7040)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !666, file: !667, line: 890, baseType: !163, size: 64, offset: 7104)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !666, file: !667, line: 891, baseType: !989, size: 128, offset: 7168)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !667, line: 242, size: 128, elements: !990)
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !989, file: !667, line: 244, baseType: !163, size: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !989, file: !667, line: 245, baseType: !163, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !989, file: !667, line: 246, baseType: !586, offset: 128)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !666, file: !667, line: 900, baseType: !230, size: 64, offset: 7296)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !666, file: !667, line: 901, baseType: !230, size: 64, offset: 7360)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !666, file: !667, line: 904, baseType: !163, size: 64, offset: 7424)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !666, file: !667, line: 907, baseType: !163, size: 64, offset: 7488)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !666, file: !667, line: 910, baseType: !230, size: 64, offset: 7552)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !666, file: !667, line: 911, baseType: !230, size: 64, offset: 7616)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !666, file: !667, line: 914, baseType: !1001, size: 640, offset: 7680)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1002, line: 123, size: 640, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1003 = !{!1004, !1010, !1011}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1001, file: !1002, line: 124, baseType: !1005, size: 576)
!1005 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1006, size: 576, elements: !435)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1002, line: 108, size: 192, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1006, file: !1002, line: 109, baseType: !163, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1006, file: !1002, line: 110, baseType: !795, size: 128, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1001, file: !1002, line: 125, baseType: !7, size: 32, offset: 576)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1001, file: !1002, line: 126, baseType: !7, size: 32, offset: 608)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !666, file: !667, line: 917, baseType: !1013, size: 192, offset: 8320)
!1013 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1002, line: 134, size: 192, elements: !1014)
!1014 = !{!1015, !1016}
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1013, file: !1002, line: 135, baseType: !950, size: 128, align: 64)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1013, file: !1002, line: 136, baseType: !7, size: 32, offset: 128)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !666, file: !667, line: 923, baseType: !1018, size: 64, offset: 8512)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1020)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !667, line: 923, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !666, file: !667, line: 926, baseType: !1018, size: 64, offset: 8576)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !666, file: !667, line: 929, baseType: !1018, size: 64, offset: 8640)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !666, file: !667, line: 933, baseType: !1024, size: 64, offset: 8704)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !667, line: 933, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !666, file: !667, line: 943, baseType: !1027, size: 128, offset: 8768)
!1027 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 128, elements: !1028)
!1028 = !{!1029}
!1029 = !DISubrange(count: 16)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !666, file: !667, line: 945, baseType: !1031, size: 64, offset: 8896)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !667, line: 49, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !666, file: !667, line: 956, baseType: !1034, size: 64, offset: 8960)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !667, line: 45, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !666, file: !667, line: 959, baseType: !1037, size: 64, offset: 9024)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !667, line: 959, flags: DIFlagFwdDecl)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !666, file: !667, line: 962, baseType: !1040, size: 64, offset: 9088)
!1040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1041, size: 64)
!1041 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !667, line: 66, flags: DIFlagFwdDecl)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !666, file: !667, line: 966, baseType: !1043, size: 64, offset: 9152)
!1043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1044, size: 64)
!1044 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !667, line: 50, flags: DIFlagFwdDecl)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !666, file: !667, line: 969, baseType: !1046, size: 64, offset: 9216)
!1046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1047, size: 64)
!1047 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1002, line: 223, flags: DIFlagFwdDecl)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !666, file: !667, line: 970, baseType: !1049, size: 64, offset: 9280)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !667, line: 62, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !666, file: !667, line: 971, baseType: !1052, size: 64, offset: 9344)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1053, line: 25, baseType: !1054)
!1053 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1053, line: 23, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1054, file: !1053, line: 24, baseType: !824, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !666, file: !667, line: 972, baseType: !1052, size: 64, offset: 9408)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !666, file: !667, line: 974, baseType: !1052, size: 64, offset: 9472)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !666, file: !667, line: 975, baseType: !1060, size: 192, offset: 9536)
!1060 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1061, line: 30, size: 192, elements: !1062)
!1061 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1062 = !{!1063, !1064}
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1060, file: !1061, line: 31, baseType: !380, size: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1060, file: !1061, line: 32, baseType: !1052, size: 64, offset: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !666, file: !667, line: 976, baseType: !230, size: 64, offset: 9728)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !666, file: !667, line: 977, baseType: !249, size: 64, offset: 9792)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !666, file: !667, line: 978, baseType: !7, size: 32, offset: 9856)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !666, file: !667, line: 980, baseType: !953, size: 64, offset: 9920)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !666, file: !667, line: 989, baseType: !1070, size: 128, offset: 9984)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1071, line: 35, size: 128, elements: !1072)
!1071 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1072 = !{!1073, !1074, !1075}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1070, file: !1071, line: 36, baseType: !100, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1070, file: !1071, line: 37, baseType: !561, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1070, file: !1071, line: 38, baseType: !1076, size: 64, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1071, line: 23, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !666, file: !667, line: 992, baseType: !163, size: 64, offset: 10112)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !666, file: !667, line: 993, baseType: !163, size: 64, offset: 10176)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !666, file: !667, line: 996, baseType: !393, offset: 10240)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !666, file: !667, line: 999, baseType: !586, offset: 10240)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !666, file: !667, line: 1001, baseType: !1083, size: 64, offset: 10240)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !667, line: 636, size: 64, elements: !1084)
!1084 = !{!1085}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1083, file: !667, line: 637, baseType: !1086, size: 64)
!1086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !666, file: !667, line: 1005, baseType: !798, size: 128, offset: 10304)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !666, file: !667, line: 1007, baseType: !665, size: 64, offset: 10432)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !666, file: !667, line: 1009, baseType: !1090, size: 64, offset: 10496)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !667, line: 1009, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !666, file: !667, line: 1043, baseType: !99, size: 64, offset: 10560)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !666, file: !667, line: 1046, baseType: !1094, size: 64, offset: 10624)
!1094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1095, size: 64)
!1095 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !667, line: 41, flags: DIFlagFwdDecl)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !666, file: !667, line: 1050, baseType: !1097, size: 64, offset: 10688)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !667, line: 42, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !666, file: !667, line: 1054, baseType: !1100, size: 64, offset: 10752)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !667, line: 55, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !666, file: !667, line: 1056, baseType: !1103, size: 64, offset: 10816)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !667, line: 40, flags: DIFlagFwdDecl)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !666, file: !667, line: 1058, baseType: !1106, size: 64, offset: 10880)
!1106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1107, size: 64)
!1107 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !667, line: 47, flags: DIFlagFwdDecl)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !666, file: !667, line: 1061, baseType: !1109, size: 64, offset: 10944)
!1109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1110, size: 64)
!1110 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !667, line: 43, flags: DIFlagFwdDecl)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !666, file: !667, line: 1064, baseType: !230, size: 64, offset: 11008)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !666, file: !667, line: 1065, baseType: !1113, size: 64, offset: 11072)
!1113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1114 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1061, line: 14, baseType: !1115)
!1115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1061, line: 12, size: 384, elements: !1116)
!1116 = !{!1117}
!1117 = !DIDerivedType(tag: DW_TAG_member, scope: !1115, file: !1061, line: 13, baseType: !1118, size: 384)
!1118 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1115, file: !1061, line: 13, size: 384, elements: !1119)
!1119 = !{!1120, !1121, !1122, !1123}
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1118, file: !1061, line: 13, baseType: !100, size: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1118, file: !1061, line: 13, baseType: !100, size: 32, offset: 32)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1118, file: !1061, line: 13, baseType: !100, size: 32, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1118, file: !1061, line: 13, baseType: !1124, size: 256, offset: 128)
!1124 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1125, line: 32, size: 256, elements: !1126)
!1125 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1126 = !{!1127, !1133, !1146, !1152, !1161, !1181, !1186}
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1124, file: !1125, line: 37, baseType: !1128, size: 64)
!1128 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 34, size: 64, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1128, file: !1125, line: 35, baseType: !912, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1128, file: !1125, line: 36, baseType: !1132, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !247, line: 49, baseType: !7)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1124, file: !1125, line: 45, baseType: !1134, size: 192)
!1134 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 40, size: 192, elements: !1135)
!1135 = !{!1136, !1138, !1139, !1145}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1134, file: !1125, line: 41, baseType: !1137, size: 32)
!1137 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !247, line: 95, baseType: !100)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1134, file: !1125, line: 42, baseType: !100, size: 32, offset: 32)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1134, file: !1125, line: 43, baseType: !1140, size: 64, offset: 64)
!1140 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1125, line: 11, baseType: !1141)
!1141 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1125, line: 8, size: 64, elements: !1142)
!1142 = !{!1143, !1144}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1141, file: !1125, line: 9, baseType: !100, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1141, file: !1125, line: 10, baseType: !99, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1134, file: !1125, line: 44, baseType: !100, size: 32, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1124, file: !1125, line: 52, baseType: !1147, size: 128)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 48, size: 128, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1147, file: !1125, line: 49, baseType: !912, size: 32)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1147, file: !1125, line: 50, baseType: !1132, size: 32, offset: 32)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1147, file: !1125, line: 51, baseType: !1140, size: 64, offset: 64)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1124, file: !1125, line: 61, baseType: !1153, size: 256)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 55, size: 256, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1160}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1153, file: !1125, line: 56, baseType: !912, size: 32)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1153, file: !1125, line: 57, baseType: !1132, size: 32, offset: 32)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1153, file: !1125, line: 58, baseType: !100, size: 32, offset: 64)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1153, file: !1125, line: 59, baseType: !1159, size: 64, offset: 128)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !247, line: 94, baseType: !467)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1153, file: !1125, line: 60, baseType: !1159, size: 64, offset: 192)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1124, file: !1125, line: 95, baseType: !1162, size: 256)
!1162 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 64, size: 256, elements: !1163)
!1163 = !{!1164, !1165}
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1162, file: !1125, line: 65, baseType: !99, size: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, scope: !1162, file: !1125, line: 77, baseType: !1166, size: 192, offset: 64)
!1166 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1162, file: !1125, line: 77, size: 192, elements: !1167)
!1167 = !{!1168, !1169, !1176}
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1166, file: !1125, line: 82, baseType: !654, size: 16)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1166, file: !1125, line: 88, baseType: !1170, size: 192)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1125, line: 84, size: 192, elements: !1171)
!1171 = !{!1172, !1174, !1175}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1170, file: !1125, line: 85, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 64, elements: !113)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1170, file: !1125, line: 86, baseType: !99, size: 64, offset: 64)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1170, file: !1125, line: 87, baseType: !99, size: 64, offset: 128)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1166, file: !1125, line: 93, baseType: !1177, size: 96)
!1177 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1166, file: !1125, line: 90, size: 96, elements: !1178)
!1178 = !{!1179, !1180}
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1177, file: !1125, line: 91, baseType: !1173, size: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1177, file: !1125, line: 92, baseType: !160, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1124, file: !1125, line: 101, baseType: !1182, size: 128)
!1182 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 98, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1182, file: !1125, line: 99, baseType: !468, size: 64)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1182, file: !1125, line: 100, baseType: !100, size: 32, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1124, file: !1125, line: 108, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1124, file: !1125, line: 104, size: 128, elements: !1188)
!1188 = !{!1189, !1190, !1191}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1187, file: !1125, line: 105, baseType: !99, size: 64)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1187, file: !1125, line: 106, baseType: !100, size: 32, offset: 64)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1187, file: !1125, line: 107, baseType: !7, size: 32, offset: 96)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !666, file: !667, line: 1067, baseType: !1193, offset: 11136)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1194, line: 12, elements: !407)
!1194 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !666, file: !667, line: 1099, baseType: !1196, size: 64, offset: 11136)
!1196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1197, size: 64)
!1197 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !667, line: 56, flags: DIFlagFwdDecl)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !666, file: !667, line: 1103, baseType: !380, size: 128, offset: 11200)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !666, file: !667, line: 1104, baseType: !1200, size: 64, offset: 11328)
!1200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1201, size: 64)
!1201 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !667, line: 46, flags: DIFlagFwdDecl)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !666, file: !667, line: 1105, baseType: !638, size: 192, offset: 11392)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !666, file: !667, line: 1106, baseType: !7, size: 32, offset: 11584)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !666, file: !667, line: 1109, baseType: !1205, size: 128, offset: 11648)
!1205 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1206, size: 128, elements: !128)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !667, line: 51, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !666, file: !667, line: 1110, baseType: !638, size: 192, offset: 11776)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !666, file: !667, line: 1111, baseType: !380, size: 128, offset: 11968)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !666, file: !667, line: 1173, baseType: !1211, size: 64, offset: 12096)
!1211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1212, size: 64)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1213, line: 62, size: 256, align: 256, elements: !1214)
!1213 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1214 = !{!1215, !1216, !1217, !1222}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1212, file: !1213, line: 75, baseType: !160, size: 32)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1212, file: !1213, line: 90, baseType: !160, size: 32, offset: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1212, file: !1213, line: 124, baseType: !1218, size: 64, offset: 64)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1212, file: !1213, line: 109, size: 64, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1218, file: !1213, line: 110, baseType: !164, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1218, file: !1213, line: 112, baseType: !164, size: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1212, file: !1213, line: 144, baseType: !160, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !666, file: !667, line: 1174, baseType: !159, size: 32, offset: 12160)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !666, file: !667, line: 1179, baseType: !230, size: 64, offset: 12224)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !666, file: !667, line: 1182, baseType: !1226, size: 128, offset: 12288)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !616, line: 76, size: 128, elements: !1227)
!1227 = !{!1228, !1233, !1234}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1226, file: !616, line: 85, baseType: !1229, size: 64)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1230, line: 7, size: 64, elements: !1231)
!1230 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1231 = !{!1232}
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1229, file: !1230, line: 12, baseType: !821, size: 64)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1226, file: !616, line: 88, baseType: !344, size: 8, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1226, file: !616, line: 95, baseType: !344, size: 8, offset: 72)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !666, file: !667, line: 1184, baseType: !1236, size: 128, offset: 12416)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !666, file: !667, line: 1184, size: 128, elements: !1237)
!1237 = !{!1238, !1239}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1236, file: !667, line: 1185, baseType: !679, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1236, file: !667, line: 1186, baseType: !950, size: 128, align: 64)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !666, file: !667, line: 1190, baseType: !1241, size: 64, offset: 12544)
!1241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1242, size: 64)
!1242 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !314, line: 13, flags: DIFlagFwdDecl)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !666, file: !667, line: 1192, baseType: !1244, size: 128, offset: 12608)
!1244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !616, line: 64, size: 128, elements: !1245)
!1245 = !{!1246, !1339, !1340}
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1244, file: !616, line: 65, baseType: !1247, size: 64)
!1247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1248, size: 64)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !516, line: 68, size: 512, align: 128, elements: !1249)
!1249 = !{!1250, !1251, !1331, !1338}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1248, file: !516, line: 69, baseType: !230, size: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !516, line: 77, baseType: !1252, size: 320, offset: 64)
!1252 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !516, line: 77, size: 320, elements: !1253)
!1253 = !{!1254, !1263, !1268, !1296, !1304, !1310, !1323, !1330}
!1254 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 78, baseType: !1255, size: 320)
!1255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 78, size: 320, elements: !1256)
!1256 = !{!1257, !1258, !1261, !1262}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1255, file: !516, line: 84, baseType: !380, size: 128)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1255, file: !516, line: 86, baseType: !1259, size: 64, offset: 128)
!1259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1260, size: 64)
!1260 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !516, line: 26, flags: DIFlagFwdDecl)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1255, file: !516, line: 87, baseType: !230, size: 64, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1255, file: !516, line: 94, baseType: !230, size: 64, offset: 256)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 96, baseType: !1264, size: 64)
!1264 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 96, size: 64, elements: !1265)
!1265 = !{!1266}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1264, file: !516, line: 101, baseType: !1267, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !98, line: 143, baseType: !163)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 103, baseType: !1269, size: 320)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 103, size: 320, elements: !1270)
!1270 = !{!1271, !1281, !1284, !1285}
!1271 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !516, line: 104, baseType: !1272, size: 128)
!1272 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !516, line: 104, size: 128, elements: !1273)
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1272, file: !516, line: 105, baseType: !380, size: 128)
!1275 = !DIDerivedType(tag: DW_TAG_member, scope: !1272, file: !516, line: 106, baseType: !1276, size: 128)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1272, file: !516, line: 106, size: 128, elements: !1277)
!1277 = !{!1278, !1279, !1280}
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1276, file: !516, line: 107, baseType: !1247, size: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1276, file: !516, line: 109, baseType: !100, size: 32, offset: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1276, file: !516, line: 110, baseType: !100, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1269, file: !516, line: 117, baseType: !1282, size: 64, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !516, line: 117, flags: DIFlagFwdDecl)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1269, file: !516, line: 119, baseType: !99, size: 64, offset: 192)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1269, file: !516, line: 120, baseType: !1286, size: 64, offset: 256)
!1286 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1269, file: !516, line: 120, size: 64, elements: !1287)
!1287 = !{!1288, !1289, !1290}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1286, file: !516, line: 121, baseType: !99, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1286, file: !516, line: 122, baseType: !230, size: 64)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1286, file: !516, line: 123, baseType: !1291, size: 32)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1286, file: !516, line: 123, size: 32, elements: !1292)
!1292 = !{!1293, !1294, !1295}
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1291, file: !516, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1291, file: !516, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1291, file: !516, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 130, baseType: !1297, size: 192)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 130, size: 192, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1297, file: !516, line: 131, baseType: !230, size: 64)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1297, file: !516, line: 134, baseType: !112, size: 8, offset: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1297, file: !516, line: 135, baseType: !112, size: 8, offset: 72)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1297, file: !516, line: 136, baseType: !561, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1297, file: !516, line: 137, baseType: !7, size: 32, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 139, baseType: !1305, size: 256)
!1305 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 139, size: 256, elements: !1306)
!1306 = !{!1307, !1308, !1309}
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1305, file: !516, line: 140, baseType: !230, size: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1305, file: !516, line: 141, baseType: !561, size: 32, offset: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1305, file: !516, line: 143, baseType: !380, size: 128, offset: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 145, baseType: !1311, size: 256)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 145, size: 256, elements: !1312)
!1312 = !{!1313, !1314, !1316, !1317, !1322}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1311, file: !516, line: 146, baseType: !230, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1311, file: !516, line: 147, baseType: !1315, size: 64, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !508, line: 509, baseType: !1247)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1311, file: !516, line: 148, baseType: !230, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1311, file: !516, line: 149, baseType: !1318, size: 64, offset: 192)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1311, file: !516, line: 149, size: 64, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1318, file: !516, line: 150, baseType: !532, size: 64)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1318, file: !516, line: 151, baseType: !561, size: 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1311, file: !516, line: 156, baseType: !393, offset: 256)
!1323 = !DIDerivedType(tag: DW_TAG_member, scope: !1252, file: !516, line: 159, baseType: !1324, size: 128)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1252, file: !516, line: 159, size: 128, elements: !1325)
!1325 = !{!1326, !1329}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1324, file: !516, line: 161, baseType: !1327, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !516, line: 161, flags: DIFlagFwdDecl)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1324, file: !516, line: 162, baseType: !99, size: 64, offset: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1252, file: !516, line: 176, baseType: !950, size: 128, align: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1248, file: !516, line: 179, baseType: !1332, size: 32, offset: 384)
!1332 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1248, file: !516, line: 179, size: 32, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1332, file: !516, line: 184, baseType: !561, size: 32)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1332, file: !516, line: 192, baseType: !7, size: 32)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1332, file: !516, line: 194, baseType: !7, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1332, file: !516, line: 195, baseType: !100, size: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1248, file: !516, line: 199, baseType: !561, size: 32, offset: 416)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1244, file: !616, line: 67, baseType: !160, size: 32, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1244, file: !616, line: 68, baseType: !160, size: 32, offset: 96)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !666, file: !667, line: 1206, baseType: !100, size: 32, offset: 12736)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !666, file: !667, line: 1207, baseType: !100, size: 32, offset: 12768)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !666, file: !667, line: 1209, baseType: !230, size: 64, offset: 12800)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !666, file: !667, line: 1219, baseType: !163, size: 64, offset: 12864)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !666, file: !667, line: 1220, baseType: !163, size: 64, offset: 12928)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !666, file: !667, line: 1317, baseType: !100, size: 32, offset: 12992)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !666, file: !667, line: 1319, baseType: !665, size: 64, offset: 13056)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !666, file: !667, line: 1322, baseType: !1349, size: 64, offset: 13120)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1351, line: 9, flags: DIFlagFwdDecl)
!1351 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !666, file: !667, line: 1326, baseType: !679, size: 32, offset: 13184)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !666, file: !667, line: 1342, baseType: !99, size: 64, offset: 13248)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !666, file: !667, line: 1343, baseType: !164, size: 64, offset: 13312)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !666, file: !667, line: 1344, baseType: !163, size: 64, offset: 13376)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !666, file: !667, line: 1345, baseType: !164, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !666, file: !667, line: 1346, baseType: !164, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !666, file: !667, line: 1347, baseType: !164, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !666, file: !667, line: 1348, baseType: !950, size: 128, align: 64, offset: 13504)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !666, file: !667, line: 1358, baseType: !1361, size: 34816, offset: 13824)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1362, line: 485, size: 34816, elements: !1363)
!1362 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1393, !1394, !1395, !1396, !1397, !1398, !1401, !1402, !1403}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1361, file: !1362, line: 487, baseType: !1365, size: 192)
!1365 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1366, size: 192, elements: !435)
!1366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1367, line: 16, size: 64, elements: !1368)
!1367 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1368 = !{!1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1366, file: !1367, line: 17, baseType: !101, size: 16)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1366, file: !1367, line: 18, baseType: !101, size: 16, offset: 16)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1366, file: !1367, line: 19, baseType: !101, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1366, file: !1367, line: 19, baseType: !101, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1366, file: !1367, line: 19, baseType: !101, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1366, file: !1367, line: 19, baseType: !101, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1366, file: !1367, line: 19, baseType: !101, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1366, file: !1367, line: 20, baseType: !101, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1366, file: !1367, line: 20, baseType: !101, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1366, file: !1367, line: 20, baseType: !101, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1366, file: !1367, line: 20, baseType: !101, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1366, file: !1367, line: 20, baseType: !101, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1366, file: !1367, line: 20, baseType: !101, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1361, file: !1362, line: 491, baseType: !230, size: 64, offset: 192)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1361, file: !1362, line: 495, baseType: !105, size: 16, offset: 256)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1361, file: !1362, line: 496, baseType: !105, size: 16, offset: 272)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1361, file: !1362, line: 497, baseType: !105, size: 16, offset: 288)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1361, file: !1362, line: 498, baseType: !105, size: 16, offset: 304)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1361, file: !1362, line: 502, baseType: !230, size: 64, offset: 320)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1361, file: !1362, line: 503, baseType: !230, size: 64, offset: 384)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1361, file: !1362, line: 514, baseType: !1390, size: 256, offset: 448)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1391, size: 256, elements: !620)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1362, line: 483, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1361, file: !1362, line: 516, baseType: !230, size: 64, offset: 704)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1361, file: !1362, line: 518, baseType: !230, size: 64, offset: 768)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1361, file: !1362, line: 520, baseType: !230, size: 64, offset: 832)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1361, file: !1362, line: 521, baseType: !230, size: 64, offset: 896)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1361, file: !1362, line: 522, baseType: !230, size: 64, offset: 960)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1361, file: !1362, line: 528, baseType: !1399, size: 64, offset: 1024)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1362, line: 10, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1361, file: !1362, line: 535, baseType: !230, size: 64, offset: 1088)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1361, file: !1362, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1361, file: !1362, line: 540, baseType: !1404, size: 33280, offset: 1536)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1405, line: 317, size: 33280, elements: !1406)
!1405 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1408, !1409}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1404, file: !1405, line: 330, baseType: !7, size: 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1404, file: !1405, line: 337, baseType: !230, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1404, file: !1405, line: 348, baseType: !1410, size: 32768, offset: 512)
!1410 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1405, line: 304, size: 32768, elements: !1411)
!1411 = !{!1412, !1427, !1466, !1516, !1533}
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1410, file: !1405, line: 305, baseType: !1413, size: 896)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1405, line: 12, size: 896, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1426}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1413, file: !1405, line: 13, baseType: !159, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1413, file: !1405, line: 14, baseType: !159, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1413, file: !1405, line: 15, baseType: !159, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1413, file: !1405, line: 16, baseType: !159, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1413, file: !1405, line: 17, baseType: !159, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1413, file: !1405, line: 18, baseType: !159, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1413, file: !1405, line: 19, baseType: !159, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1413, file: !1405, line: 22, baseType: !1423, size: 640, offset: 224)
!1423 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 640, elements: !1424)
!1424 = !{!1425}
!1425 = !DISubrange(count: 20)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1413, file: !1405, line: 25, baseType: !159, size: 32, offset: 864)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1410, file: !1405, line: 306, baseType: !1428, size: 4096, align: 128)
!1428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1405, line: 34, size: 4096, align: 128, elements: !1429)
!1429 = !{!1430, !1431, !1432, !1433, !1434, !1449, !1450, !1451, !1455, !1457, !1461}
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1428, file: !1405, line: 35, baseType: !101, size: 16)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1428, file: !1405, line: 36, baseType: !101, size: 16, offset: 16)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1428, file: !1405, line: 37, baseType: !101, size: 16, offset: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1428, file: !1405, line: 38, baseType: !101, size: 16, offset: 48)
!1434 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !1405, line: 39, baseType: !1435, size: 128, offset: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !1405, line: 39, size: 128, elements: !1436)
!1436 = !{!1437, !1442}
!1437 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1405, line: 40, baseType: !1438, size: 128)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !1405, line: 40, size: 128, elements: !1439)
!1439 = !{!1440, !1441}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1438, file: !1405, line: 41, baseType: !163, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1438, file: !1405, line: 42, baseType: !163, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, scope: !1435, file: !1405, line: 44, baseType: !1443, size: 128)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1435, file: !1405, line: 44, size: 128, elements: !1444)
!1444 = !{!1445, !1446, !1447, !1448}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1443, file: !1405, line: 45, baseType: !159, size: 32)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1443, file: !1405, line: 46, baseType: !159, size: 32, offset: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1443, file: !1405, line: 47, baseType: !159, size: 32, offset: 64)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1443, file: !1405, line: 48, baseType: !159, size: 32, offset: 96)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1428, file: !1405, line: 51, baseType: !159, size: 32, offset: 192)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1428, file: !1405, line: 52, baseType: !159, size: 32, offset: 224)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1428, file: !1405, line: 55, baseType: !1452, size: 1024, offset: 256)
!1452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 1024, elements: !1453)
!1453 = !{!1454}
!1454 = !DISubrange(count: 32)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1428, file: !1405, line: 58, baseType: !1456, size: 2048, offset: 1280)
!1456 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 2048, elements: !439)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1428, file: !1405, line: 60, baseType: !1458, size: 384, offset: 3328)
!1458 = !DICompositeType(tag: DW_TAG_array_type, baseType: !159, size: 384, elements: !1459)
!1459 = !{!1460}
!1460 = !DISubrange(count: 12)
!1461 = !DIDerivedType(tag: DW_TAG_member, scope: !1428, file: !1405, line: 62, baseType: !1462, size: 384, offset: 3712)
!1462 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1428, file: !1405, line: 62, size: 384, elements: !1463)
!1463 = !{!1464, !1465}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1462, file: !1405, line: 63, baseType: !1458, size: 384)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1462, file: !1405, line: 64, baseType: !1458, size: 384)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1410, file: !1405, line: 307, baseType: !1467, size: 1088)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1405, line: 79, size: 1088, elements: !1468)
!1468 = !{!1469, !1470, !1471, !1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1515}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1467, file: !1405, line: 80, baseType: !159, size: 32)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1467, file: !1405, line: 81, baseType: !159, size: 32, offset: 32)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1467, file: !1405, line: 82, baseType: !159, size: 32, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1467, file: !1405, line: 83, baseType: !159, size: 32, offset: 96)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1467, file: !1405, line: 84, baseType: !159, size: 32, offset: 128)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1467, file: !1405, line: 85, baseType: !159, size: 32, offset: 160)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1467, file: !1405, line: 86, baseType: !159, size: 32, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1467, file: !1405, line: 88, baseType: !1423, size: 640, offset: 224)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1467, file: !1405, line: 89, baseType: !110, size: 8, offset: 864)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1467, file: !1405, line: 90, baseType: !110, size: 8, offset: 872)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1467, file: !1405, line: 91, baseType: !110, size: 8, offset: 880)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1467, file: !1405, line: 92, baseType: !110, size: 8, offset: 888)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1467, file: !1405, line: 93, baseType: !110, size: 8, offset: 896)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1467, file: !1405, line: 94, baseType: !110, size: 8, offset: 904)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1467, file: !1405, line: 95, baseType: !1484, size: 64, offset: 960)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1485, size: 64)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1486, line: 11, size: 128, elements: !1487)
!1486 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1489}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1485, file: !1486, line: 12, baseType: !468, size: 64)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1485, file: !1486, line: 13, baseType: !1490, size: 64, offset: 64)
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1492, line: 56, size: 1344, elements: !1493)
!1492 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1493 = !{!1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514}
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1491, file: !1492, line: 61, baseType: !230, size: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1491, file: !1492, line: 62, baseType: !230, size: 64, offset: 64)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1491, file: !1492, line: 63, baseType: !230, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1491, file: !1492, line: 64, baseType: !230, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1491, file: !1492, line: 65, baseType: !230, size: 64, offset: 256)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1491, file: !1492, line: 66, baseType: !230, size: 64, offset: 320)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1491, file: !1492, line: 68, baseType: !230, size: 64, offset: 384)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1491, file: !1492, line: 69, baseType: !230, size: 64, offset: 448)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1491, file: !1492, line: 70, baseType: !230, size: 64, offset: 512)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1491, file: !1492, line: 71, baseType: !230, size: 64, offset: 576)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1491, file: !1492, line: 72, baseType: !230, size: 64, offset: 640)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1491, file: !1492, line: 73, baseType: !230, size: 64, offset: 704)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1491, file: !1492, line: 74, baseType: !230, size: 64, offset: 768)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1491, file: !1492, line: 75, baseType: !230, size: 64, offset: 832)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1491, file: !1492, line: 76, baseType: !230, size: 64, offset: 896)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1491, file: !1492, line: 81, baseType: !230, size: 64, offset: 960)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1491, file: !1492, line: 83, baseType: !230, size: 64, offset: 1024)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1491, file: !1492, line: 84, baseType: !230, size: 64, offset: 1088)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1491, file: !1492, line: 85, baseType: !230, size: 64, offset: 1152)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1491, file: !1492, line: 86, baseType: !230, size: 64, offset: 1216)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1491, file: !1492, line: 87, baseType: !230, size: 64, offset: 1280)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1467, file: !1405, line: 96, baseType: !159, size: 32, offset: 1024)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1410, file: !1405, line: 308, baseType: !1517, size: 4608, align: 512)
!1517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1405, line: 289, size: 4608, align: 512, elements: !1518)
!1518 = !{!1519, !1520, !1529}
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1517, file: !1405, line: 290, baseType: !1428, size: 4096, align: 128)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1517, file: !1405, line: 291, baseType: !1521, size: 512, offset: 4096)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1405, line: 268, size: 512, elements: !1522)
!1522 = !{!1523, !1524, !1525}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1521, file: !1405, line: 269, baseType: !163, size: 64)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1521, file: !1405, line: 270, baseType: !163, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1521, file: !1405, line: 271, baseType: !1526, size: 384, offset: 128)
!1526 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 384, elements: !1527)
!1527 = !{!1528}
!1528 = !DISubrange(count: 6)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1517, file: !1405, line: 292, baseType: !1530, offset: 4608)
!1530 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !1531)
!1531 = !{!1532}
!1532 = !DISubrange(count: 0)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1410, file: !1405, line: 309, baseType: !1534, size: 32768)
!1534 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32768, elements: !1535)
!1535 = !{!1536}
!1536 = !DISubrange(count: 4096)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !662, file: !516, line: 378, baseType: !1538, size: 64, offset: 64)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !658, file: !516, line: 384, baseType: !972, size: 192, offset: 192)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !536, file: !516, line: 500, baseType: !393, offset: 6656)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !536, file: !516, line: 501, baseType: !1542, size: 64, offset: 6656)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !516, line: 387, flags: DIFlagFwdDecl)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !536, file: !516, line: 516, baseType: !1545, size: 64, offset: 6720)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !516, line: 516, flags: DIFlagFwdDecl)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !536, file: !516, line: 519, baseType: !506, size: 64, offset: 6784)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !536, file: !516, line: 521, baseType: !1549, size: 64, offset: 6848)
!1549 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1550, size: 64)
!1550 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !516, line: 521, flags: DIFlagFwdDecl)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !536, file: !516, line: 545, baseType: !561, size: 32, offset: 6912)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !536, file: !516, line: 548, baseType: !344, size: 8, offset: 6944)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !536, file: !516, line: 550, baseType: !1554, offset: 6952)
!1554 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1555, line: 142, elements: !407)
!1555 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !536, file: !516, line: 554, baseType: !1557, size: 256, offset: 6976)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1558, line: 102, size: 256, elements: !1559)
!1558 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1559 = !{!1560, !1561, !1562}
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1557, file: !1558, line: 103, baseType: !569, size: 64)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1557, file: !1558, line: 104, baseType: !380, size: 128, offset: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1557, file: !1558, line: 105, baseType: !1563, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1558, line: 21, baseType: !1564)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{null, !1567}
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !536, file: !516, line: 557, baseType: !159, size: 32, offset: 7232)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !533, file: !516, line: 565, baseType: !1570, offset: 7296)
!1570 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, elements: !1571)
!1571 = !{!1572}
!1572 = !DISubrange(count: -1)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !515, file: !516, line: 333, baseType: !1574, size: 64, offset: 576)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !508, line: 284, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !508, line: 284, size: 64, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1575, file: !508, line: 284, baseType: !1578, size: 64)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !559, line: 19, baseType: !230)
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !515, file: !516, line: 334, baseType: !230, size: 64, offset: 640)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !515, file: !516, line: 343, baseType: !1581, size: 256, offset: 704)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !515, file: !516, line: 340, size: 256, elements: !1582)
!1582 = !{!1583, !1584}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1581, file: !516, line: 341, baseType: !523, size: 192, align: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1581, file: !516, line: 342, baseType: !230, size: 64, offset: 192)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !515, file: !516, line: 351, baseType: !380, size: 128, offset: 960)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !515, file: !516, line: 353, baseType: !1587, size: 64, offset: 1088)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !516, line: 353, flags: DIFlagFwdDecl)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !515, file: !516, line: 356, baseType: !1590, size: 64, offset: 1152)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1592)
!1592 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !516, line: 356, flags: DIFlagFwdDecl)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !515, file: !516, line: 359, baseType: !230, size: 64, offset: 1216)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !515, file: !516, line: 361, baseType: !506, size: 64, offset: 1280)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !515, file: !516, line: 362, baseType: !99, size: 64, offset: 1344)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !515, file: !516, line: 365, baseType: !569, size: 64, offset: 1408)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !515, file: !516, line: 373, baseType: !1598, offset: 1472)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !516, line: 296, elements: !407)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !485, file: !459, line: 90, baseType: !480, size: 64, offset: 192)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !485, file: !459, line: 91, baseType: !1601, size: 64, offset: 256)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !496, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !449, file: !376, line: 143, baseType: !1603, size: 64, offset: 256)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DISubroutineType(types: !1605)
!1605 = !{!1606, !386}
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1608)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1609)
!1609 = !{!1610, !1611, !1615, !1619, !1627, !1631}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1608, file: !18, line: 40, baseType: !17, size: 32)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1608, file: !18, line: 41, baseType: !1612, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1613, size: 64)
!1613 = !DISubroutineType(types: !1614)
!1614 = !{!344}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1608, file: !18, line: 42, baseType: !1616, size: 64, offset: 128)
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DISubroutineType(types: !1618)
!1618 = !{!99}
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1608, file: !18, line: 43, baseType: !1620, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1621, size: 64)
!1621 = !DISubroutineType(types: !1622)
!1622 = !{!1623, !1625}
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1608, file: !18, line: 44, baseType: !1628, size: 64, offset: 256)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!1623}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1608, file: !18, line: 45, baseType: !1632, size: 64, offset: 320)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{null, !99}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !449, file: !376, line: 144, baseType: !1636, size: 64, offset: 320)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!1623, !386}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !449, file: !376, line: 145, baseType: !1640, size: 64, offset: 384)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{null, !386, !1643, !1650}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1645, line: 23, baseType: !1646)
!1645 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1645, line: 21, size: 32, elements: !1647)
!1647 = !{!1648}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1646, file: !1645, line: 22, baseType: !1649, size: 32)
!1649 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !98, line: 32, baseType: !1132)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1645, line: 28, baseType: !1652)
!1652 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1645, line: 26, size: 32, elements: !1653)
!1653 = !{!1654}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1652, file: !1645, line: 27, baseType: !1655, size: 32)
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !98, line: 33, baseType: !1656)
!1656 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !247, line: 50, baseType: !7)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !375, file: !376, line: 70, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1660, line: 123, size: 1024, elements: !1661)
!1660 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1661 = !{!1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1803, !1804, !1805, !1806, !1807}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1659, file: !1660, line: 124, baseType: !561, size: 32)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1659, file: !1660, line: 125, baseType: !561, size: 32, offset: 32)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1659, file: !1660, line: 135, baseType: !1658, size: 64, offset: 64)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1659, file: !1660, line: 136, baseType: !177, size: 64, offset: 128)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1659, file: !1660, line: 138, baseType: !523, size: 192, align: 64, offset: 192)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1659, file: !1660, line: 140, baseType: !1623, size: 64, offset: 384)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1659, file: !1660, line: 141, baseType: !7, size: 32, offset: 448)
!1669 = !DIDerivedType(tag: DW_TAG_member, scope: !1659, file: !1660, line: 142, baseType: !1670, size: 256, offset: 512)
!1670 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1659, file: !1660, line: 142, size: 256, elements: !1671)
!1671 = !{!1672, !1726, !1730}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1670, file: !1660, line: 143, baseType: !1673, size: 192)
!1673 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1660, line: 91, size: 192, elements: !1674)
!1674 = !{!1675, !1676, !1677}
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1673, file: !1660, line: 92, baseType: !230, size: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1673, file: !1660, line: 94, baseType: !540, size: 64, offset: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1673, file: !1660, line: 100, baseType: !1678, size: 64, offset: 128)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1660, line: 180, size: 704, elements: !1680)
!1680 = !{!1681, !1682, !1683, !1696, !1697, !1698, !1724, !1725}
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1679, file: !1660, line: 182, baseType: !1658, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1679, file: !1660, line: 183, baseType: !7, size: 32, offset: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1679, file: !1660, line: 186, baseType: !1684, size: 192, offset: 128)
!1684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1685, line: 19, size: 192, elements: !1686)
!1685 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1686 = !{!1687, !1694, !1695}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1684, file: !1685, line: 20, baseType: !1688, size: 128)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1689, line: 292, size: 128, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1692, !1693}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1688, file: !1689, line: 293, baseType: !393)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1688, file: !1689, line: 295, baseType: !97, size: 32)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1688, file: !1689, line: 296, baseType: !99, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1684, file: !1685, line: 21, baseType: !7, size: 32, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1684, file: !1685, line: 22, baseType: !7, size: 32, offset: 160)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1679, file: !1660, line: 187, baseType: !159, size: 32, offset: 320)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1679, file: !1660, line: 188, baseType: !159, size: 32, offset: 352)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1679, file: !1660, line: 189, baseType: !1699, size: 64, offset: 384)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1660, line: 168, size: 320, elements: !1701)
!1701 = !{!1702, !1708, !1712, !1716, !1720}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1700, file: !1660, line: 169, baseType: !1703, size: 64)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!100, !1706, !1678}
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !508, line: 539, flags: DIFlagFwdDecl)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1700, file: !1660, line: 171, baseType: !1709, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!100, !1658, !177, !474}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1700, file: !1660, line: 173, baseType: !1713, size: 64, offset: 128)
!1713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1714, size: 64)
!1714 = !DISubroutineType(types: !1715)
!1715 = !{!100, !1658}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1700, file: !1660, line: 174, baseType: !1717, size: 64, offset: 192)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!100, !1658, !1658, !177}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1700, file: !1660, line: 176, baseType: !1721, size: 64, offset: 256)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DISubroutineType(types: !1723)
!1723 = !{!100, !1706, !1658, !1678}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1679, file: !1660, line: 192, baseType: !380, size: 128, offset: 448)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1679, file: !1660, line: 194, baseType: !943, size: 128, offset: 576)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1670, file: !1660, line: 144, baseType: !1727, size: 64)
!1727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1660, line: 103, size: 64, elements: !1728)
!1728 = !{!1729}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1727, file: !1660, line: 104, baseType: !1658, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1670, file: !1660, line: 145, baseType: !1731, size: 256)
!1731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1660, line: 107, size: 256, elements: !1732)
!1732 = !{!1733, !1798, !1801, !1802}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1731, file: !1660, line: 108, baseType: !1734, size: 64)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1736)
!1736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1660, line: 217, size: 768, elements: !1737)
!1737 = !{!1738, !1758, !1762, !1766, !1771, !1775, !1779, !1783, !1784, !1785, !1786, !1794}
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1736, file: !1660, line: 222, baseType: !1739, size: 64)
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DISubroutineType(types: !1741)
!1741 = !{!100, !1742}
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1660, line: 197, size: 1088, elements: !1744)
!1744 = !{!1745, !1746, !1747, !1748, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1743, file: !1660, line: 199, baseType: !1658, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1743, file: !1660, line: 200, baseType: !506, size: 64, offset: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1743, file: !1660, line: 201, baseType: !1706, size: 64, offset: 128)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1743, file: !1660, line: 202, baseType: !99, size: 64, offset: 192)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1743, file: !1660, line: 205, baseType: !638, size: 192, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1743, file: !1660, line: 206, baseType: !638, size: 192, offset: 448)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1743, file: !1660, line: 207, baseType: !100, size: 32, offset: 640)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1743, file: !1660, line: 208, baseType: !380, size: 128, offset: 704)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1743, file: !1660, line: 209, baseType: !434, size: 64, offset: 832)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1743, file: !1660, line: 211, baseType: !249, size: 64, offset: 896)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1743, file: !1660, line: 212, baseType: !344, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1743, file: !1660, line: 213, baseType: !344, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1743, file: !1660, line: 214, baseType: !1590, size: 64, offset: 1024)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1736, file: !1660, line: 223, baseType: !1759, size: 64, offset: 64)
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = !DISubroutineType(types: !1761)
!1761 = !{null, !1742}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1736, file: !1660, line: 236, baseType: !1763, size: 64, offset: 128)
!1763 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1764, size: 64)
!1764 = !DISubroutineType(types: !1765)
!1765 = !{!100, !1706, !99}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1736, file: !1660, line: 238, baseType: !1767, size: 64, offset: 192)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DISubroutineType(types: !1769)
!1769 = !{!99, !1706, !1770}
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1736, file: !1660, line: 239, baseType: !1772, size: 64, offset: 256)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!99, !1706, !99, !1770}
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1736, file: !1660, line: 240, baseType: !1776, size: 64, offset: 320)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1706, !99}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1736, file: !1660, line: 242, baseType: !1780, size: 64, offset: 384)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!465, !1742, !434, !249, !245}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1736, file: !1660, line: 252, baseType: !249, size: 64, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1736, file: !1660, line: 259, baseType: !344, size: 8, offset: 512)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1736, file: !1660, line: 260, baseType: !1780, size: 64, offset: 576)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1736, file: !1660, line: 263, baseType: !1787, size: 64, offset: 640)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = !DISubroutineType(types: !1789)
!1789 = !{!1790, !1742, !1792}
!1790 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1791, line: 52, baseType: !7)
!1791 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1660, line: 27, flags: DIFlagFwdDecl)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1736, file: !1660, line: 266, baseType: !1795, size: 64, offset: 704)
!1795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1796, size: 64)
!1796 = !DISubroutineType(types: !1797)
!1797 = !{!100, !1742, !514}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1731, file: !1660, line: 109, baseType: !1799, size: 64, offset: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1660, line: 31, flags: DIFlagFwdDecl)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1731, file: !1660, line: 110, baseType: !245, size: 64, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1731, file: !1660, line: 111, baseType: !1658, size: 64, offset: 192)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1659, file: !1660, line: 148, baseType: !99, size: 64, offset: 768)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1659, file: !1660, line: 154, baseType: !163, size: 64, offset: 832)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1659, file: !1660, line: 156, baseType: !105, size: 16, offset: 896)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1659, file: !1660, line: 157, baseType: !474, size: 16, offset: 912)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1659, file: !1660, line: 158, baseType: !1808, size: 64, offset: 960)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1660, line: 32, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !375, file: !376, line: 71, baseType: !1811, size: 32, offset: 448)
!1811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1812, line: 19, size: 32, elements: !1813)
!1812 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1813 = !{!1814}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1811, file: !1812, line: 20, baseType: !679, size: 32)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !375, file: !376, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !375, file: !376, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !375, file: !376, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !375, file: !376, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !375, file: !376, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !372, file: !30, line: 463, baseType: !1821, size: 64, offset: 512)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !372, file: !30, line: 465, baseType: !1823, size: 64, offset: 576)
!1823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1824, size: 64)
!1824 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !372, file: !30, line: 467, baseType: !177, size: 64, offset: 640)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !372, file: !30, line: 468, baseType: !1827, size: 64, offset: 704)
!1827 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1828, size: 64)
!1828 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1829)
!1829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1830)
!1830 = !{!1831, !1832, !1833, !1837, !1842, !1846}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1829, file: !30, line: 88, baseType: !177, size: 64)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1829, file: !30, line: 89, baseType: !482, size: 64, offset: 64)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1829, file: !30, line: 90, baseType: !1834, size: 64, offset: 128)
!1834 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1835, size: 64)
!1835 = !DISubroutineType(types: !1836)
!1836 = !{!100, !1821, !429}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1829, file: !30, line: 91, baseType: !1838, size: 64, offset: 192)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = !DISubroutineType(types: !1840)
!1840 = !{!434, !1821, !1841, !1643, !1650}
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1829, file: !30, line: 93, baseType: !1843, size: 64, offset: 256)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DISubroutineType(types: !1845)
!1845 = !{null, !1821}
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1829, file: !30, line: 95, baseType: !1847, size: 64, offset: 320)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1850)
!1850 = !{!1851, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1849, file: !37, line: 279, baseType: !1852, size: 64)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DISubroutineType(types: !1854)
!1854 = !{!100, !1821}
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1849, file: !37, line: 280, baseType: !1843, size: 64, offset: 64)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1849, file: !37, line: 281, baseType: !1852, size: 64, offset: 128)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1849, file: !37, line: 282, baseType: !1852, size: 64, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1849, file: !37, line: 283, baseType: !1852, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1849, file: !37, line: 284, baseType: !1852, size: 64, offset: 320)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1849, file: !37, line: 285, baseType: !1852, size: 64, offset: 384)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1849, file: !37, line: 286, baseType: !1852, size: 64, offset: 448)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1849, file: !37, line: 287, baseType: !1852, size: 64, offset: 512)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1849, file: !37, line: 288, baseType: !1852, size: 64, offset: 576)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1849, file: !37, line: 289, baseType: !1852, size: 64, offset: 640)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1849, file: !37, line: 290, baseType: !1852, size: 64, offset: 704)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1849, file: !37, line: 291, baseType: !1852, size: 64, offset: 768)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1849, file: !37, line: 292, baseType: !1852, size: 64, offset: 832)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1849, file: !37, line: 293, baseType: !1852, size: 64, offset: 896)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1849, file: !37, line: 294, baseType: !1852, size: 64, offset: 960)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1849, file: !37, line: 295, baseType: !1852, size: 64, offset: 1024)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1849, file: !37, line: 296, baseType: !1852, size: 64, offset: 1088)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1849, file: !37, line: 297, baseType: !1852, size: 64, offset: 1152)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1849, file: !37, line: 298, baseType: !1852, size: 64, offset: 1216)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1849, file: !37, line: 299, baseType: !1852, size: 64, offset: 1280)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1849, file: !37, line: 300, baseType: !1852, size: 64, offset: 1344)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1849, file: !37, line: 301, baseType: !1852, size: 64, offset: 1408)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !372, file: !30, line: 470, baseType: !1878, size: 64, offset: 768)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1880, line: 82, size: 1408, elements: !1881)
!1880 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1881 = !{!1882, !1883, !1884, !1885, !1886, !1887, !1888, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1964, !1967, !1970}
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1879, file: !1880, line: 83, baseType: !177, size: 64)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1879, file: !1880, line: 84, baseType: !177, size: 64, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1879, file: !1880, line: 85, baseType: !1821, size: 64, offset: 128)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1879, file: !1880, line: 86, baseType: !482, size: 64, offset: 192)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1879, file: !1880, line: 87, baseType: !482, size: 64, offset: 256)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1879, file: !1880, line: 88, baseType: !482, size: 64, offset: 320)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1879, file: !1880, line: 90, baseType: !1889, size: 64, offset: 384)
!1889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1890, size: 64)
!1890 = !DISubroutineType(types: !1891)
!1891 = !{!100, !1821, !1892}
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1915, !1928, !1929, !1930, !1931, !1932, !1940, !1941, !1942, !1943, !1944, !1945}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1893, file: !24, line: 96, baseType: !177, size: 64)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1893, file: !24, line: 97, baseType: !1878, size: 64, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1893, file: !24, line: 99, baseType: !368, size: 64, offset: 128)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1893, file: !24, line: 100, baseType: !177, size: 64, offset: 192)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1893, file: !24, line: 102, baseType: !344, size: 8, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1893, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1893, file: !24, line: 105, baseType: !1902, size: 64, offset: 320)
!1902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1903, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1904)
!1904 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1905, line: 262, size: 1600, elements: !1906)
!1905 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1906 = !{!1907, !1909, !1910, !1914}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1904, file: !1905, line: 263, baseType: !1908, size: 256)
!1908 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 256, elements: !1453)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1904, file: !1905, line: 264, baseType: !1908, size: 256, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1904, file: !1905, line: 265, baseType: !1911, size: 1024, offset: 512)
!1911 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 1024, elements: !1912)
!1912 = !{!1913}
!1913 = !DISubrange(count: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1904, file: !1905, line: 266, baseType: !1623, size: 64, offset: 1536)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1893, file: !24, line: 106, baseType: !1916, size: 64, offset: 384)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1905, line: 210, size: 256, elements: !1919)
!1919 = !{!1920, !1924, !1926, !1927}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1918, file: !1905, line: 211, baseType: !1921, size: 72)
!1921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 72, elements: !1922)
!1922 = !{!1923}
!1923 = !DISubrange(count: 9)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1918, file: !1905, line: 212, baseType: !1925, size: 64, offset: 128)
!1925 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1905, line: 14, baseType: !230)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1918, file: !1905, line: 213, baseType: !160, size: 32, offset: 192)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1918, file: !1905, line: 214, baseType: !160, size: 32, offset: 224)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1893, file: !24, line: 108, baseType: !1852, size: 64, offset: 448)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1893, file: !24, line: 109, baseType: !1843, size: 64, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1893, file: !24, line: 110, baseType: !1852, size: 64, offset: 576)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1893, file: !24, line: 111, baseType: !1843, size: 64, offset: 640)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1893, file: !24, line: 112, baseType: !1933, size: 64, offset: 704)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!100, !1821, !1936}
!1936 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1937)
!1937 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1938)
!1938 = !{!1939}
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1937, file: !37, line: 51, baseType: !100, size: 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1893, file: !24, line: 113, baseType: !1852, size: 64, offset: 768)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1893, file: !24, line: 114, baseType: !482, size: 64, offset: 832)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1893, file: !24, line: 115, baseType: !482, size: 64, offset: 896)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1893, file: !24, line: 117, baseType: !1847, size: 64, offset: 960)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1893, file: !24, line: 118, baseType: !1843, size: 64, offset: 1024)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1893, file: !24, line: 120, baseType: !1946, size: 64, offset: 1088)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1879, file: !1880, line: 91, baseType: !1834, size: 64, offset: 448)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1879, file: !1880, line: 92, baseType: !1852, size: 64, offset: 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1879, file: !1880, line: 93, baseType: !1843, size: 64, offset: 576)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1879, file: !1880, line: 94, baseType: !1852, size: 64, offset: 640)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1879, file: !1880, line: 95, baseType: !1843, size: 64, offset: 704)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1879, file: !1880, line: 97, baseType: !1852, size: 64, offset: 768)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1879, file: !1880, line: 98, baseType: !1852, size: 64, offset: 832)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1879, file: !1880, line: 100, baseType: !1933, size: 64, offset: 896)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1879, file: !1880, line: 101, baseType: !1852, size: 64, offset: 960)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1879, file: !1880, line: 103, baseType: !1852, size: 64, offset: 1024)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1879, file: !1880, line: 105, baseType: !1852, size: 64, offset: 1088)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1879, file: !1880, line: 107, baseType: !1847, size: 64, offset: 1152)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1879, file: !1880, line: 109, baseType: !1961, size: 64, offset: 1216)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1963)
!1963 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1880, line: 109, flags: DIFlagFwdDecl)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1879, file: !1880, line: 111, baseType: !1965, size: 64, offset: 1280)
!1965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1966, size: 64)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1880, line: 111, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1879, file: !1880, line: 112, baseType: !1968, offset: 1344)
!1968 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1969, line: 187, elements: !407)
!1969 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1879, file: !1880, line: 114, baseType: !344, size: 8, offset: 1344)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !372, file: !30, line: 471, baseType: !1892, size: 64, offset: 832)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !372, file: !30, line: 473, baseType: !99, size: 64, offset: 896)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !372, file: !30, line: 475, baseType: !99, size: 64, offset: 960)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !372, file: !30, line: 480, baseType: !638, size: 192, offset: 1024)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !372, file: !30, line: 484, baseType: !1976, size: 576, offset: 1216)
!1976 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1977)
!1977 = !{!1978, !1979, !1980, !1981, !1982, !1983}
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1976, file: !30, line: 362, baseType: !380, size: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1976, file: !30, line: 363, baseType: !380, size: 128, offset: 128)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1976, file: !30, line: 364, baseType: !380, size: 128, offset: 256)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1976, file: !30, line: 365, baseType: !380, size: 128, offset: 384)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1976, file: !30, line: 366, baseType: !344, size: 8, offset: 512)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1976, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !372, file: !30, line: 485, baseType: !1985, size: 2304, offset: 1792)
!1985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1986)
!1986 = !{!1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2082, !2086}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1985, file: !37, line: 566, baseType: !1936, size: 32)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1985, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1985, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1985, file: !37, line: 569, baseType: !344, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1985, file: !37, line: 570, baseType: !344, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1985, file: !37, line: 571, baseType: !344, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1985, file: !37, line: 572, baseType: !344, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1985, file: !37, line: 573, baseType: !344, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1985, file: !37, line: 574, baseType: !344, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1985, file: !37, line: 575, baseType: !344, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1985, file: !37, line: 576, baseType: !344, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1985, file: !37, line: 577, baseType: !159, size: 32, offset: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1985, file: !37, line: 578, baseType: !393, offset: 96)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1985, file: !37, line: 580, baseType: !380, size: 128, offset: 128)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1985, file: !37, line: 581, baseType: !972, size: 192, offset: 256)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1985, file: !37, line: 582, baseType: !2003, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2005, line: 43, size: 1472, elements: !2006)
!2005 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2006 = !{!2007, !2008, !2009, !2010, !2011, !2014, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2004, file: !2005, line: 44, baseType: !177, size: 64)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2004, file: !2005, line: 45, baseType: !100, size: 32, offset: 64)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2004, file: !2005, line: 46, baseType: !380, size: 128, offset: 128)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2004, file: !2005, line: 47, baseType: !393, offset: 256)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2004, file: !2005, line: 48, baseType: !2012, size: 64, offset: 256)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2004, file: !2005, line: 49, baseType: !2015, size: 320, offset: 320)
!2015 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2016, line: 11, size: 320, elements: !2017)
!2016 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2017 = !{!2018, !2019, !2020, !2025}
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2015, file: !2016, line: 16, baseType: !936, size: 128)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2015, file: !2016, line: 17, baseType: !230, size: 64, offset: 128)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2015, file: !2016, line: 18, baseType: !2021, size: 64, offset: 192)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = !DISubroutineType(types: !2023)
!2023 = !{null, !2024}
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2015, file: !2016, line: 19, baseType: !159, size: 32, offset: 256)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2004, file: !2005, line: 50, baseType: !230, size: 64, offset: 640)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2004, file: !2005, line: 51, baseType: !749, size: 64, offset: 704)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2004, file: !2005, line: 52, baseType: !749, size: 64, offset: 768)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2004, file: !2005, line: 53, baseType: !749, size: 64, offset: 832)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2004, file: !2005, line: 54, baseType: !749, size: 64, offset: 896)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2004, file: !2005, line: 55, baseType: !749, size: 64, offset: 960)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2004, file: !2005, line: 56, baseType: !230, size: 64, offset: 1024)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2004, file: !2005, line: 57, baseType: !230, size: 64, offset: 1088)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2004, file: !2005, line: 58, baseType: !230, size: 64, offset: 1152)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2004, file: !2005, line: 59, baseType: !230, size: 64, offset: 1216)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2004, file: !2005, line: 60, baseType: !230, size: 64, offset: 1280)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2004, file: !2005, line: 61, baseType: !1821, size: 64, offset: 1344)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2004, file: !2005, line: 62, baseType: !344, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2004, file: !2005, line: 63, baseType: !344, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1985, file: !37, line: 583, baseType: !344, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1985, file: !37, line: 584, baseType: !344, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1985, file: !37, line: 585, baseType: !344, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1985, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1985, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1985, file: !37, line: 592, baseType: !741, size: 512, offset: 576)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1985, file: !37, line: 593, baseType: !163, size: 64, offset: 1088)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1985, file: !37, line: 594, baseType: !1557, size: 256, offset: 1152)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1985, file: !37, line: 595, baseType: !943, size: 128, offset: 1408)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1985, file: !37, line: 596, baseType: !2012, size: 64, offset: 1536)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1985, file: !37, line: 597, baseType: !561, size: 32, offset: 1600)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1985, file: !37, line: 598, baseType: !561, size: 32, offset: 1632)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1985, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1985, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1985, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1985, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1985, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1985, file: !37, line: 604, baseType: !344, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1985, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1985, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1985, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1985, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1985, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1985, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1985, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1985, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1985, file: !37, line: 613, baseType: !100, size: 32, offset: 1792)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1985, file: !37, line: 614, baseType: !100, size: 32, offset: 1824)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1985, file: !37, line: 615, baseType: !163, size: 64, offset: 1856)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1985, file: !37, line: 616, baseType: !163, size: 64, offset: 1920)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1985, file: !37, line: 617, baseType: !163, size: 64, offset: 1984)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1985, file: !37, line: 618, baseType: !163, size: 64, offset: 2048)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1985, file: !37, line: 620, baseType: !2073, size: 64, offset: 2112)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2075)
!2075 = !{!2076, !2077, !2078, !2079}
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2074, file: !37, line: 537, baseType: !393)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2074, file: !37, line: 538, baseType: !7, size: 32)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2074, file: !37, line: 540, baseType: !380, size: 128, offset: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2074, file: !37, line: 543, baseType: !2080, size: 64, offset: 192)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1985, file: !37, line: 621, baseType: !2083, size: 64, offset: 2176)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !1821, !896}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1985, file: !37, line: 622, baseType: !2087, size: 64, offset: 2240)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !372, file: !30, line: 486, baseType: !2090, size: 64, offset: 4096)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2092)
!2092 = !{!2093, !2094, !2095, !2099, !2100, !2101}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2091, file: !37, line: 643, baseType: !1849, size: 1472)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2091, file: !37, line: 644, baseType: !1852, size: 64, offset: 1472)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2091, file: !37, line: 645, baseType: !2096, size: 64, offset: 1536)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{null, !1821, !344}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2091, file: !37, line: 646, baseType: !1852, size: 64, offset: 1600)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2091, file: !37, line: 647, baseType: !1843, size: 64, offset: 1664)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2091, file: !37, line: 648, baseType: !1843, size: 64, offset: 1728)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !372, file: !30, line: 493, baseType: !2103, size: 64, offset: 4160)
!2103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2104, size: 64)
!2104 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !372, file: !30, line: 499, baseType: !380, size: 128, offset: 4224)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !372, file: !30, line: 502, baseType: !2107, size: 64, offset: 4352)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2109)
!2109 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !372, file: !30, line: 504, baseType: !2111, size: 64, offset: 4416)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !372, file: !30, line: 505, baseType: !163, size: 64, offset: 4480)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !372, file: !30, line: 510, baseType: !163, size: 64, offset: 4544)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !372, file: !30, line: 511, baseType: !2115, size: 64, offset: 4608)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2117)
!2117 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !372, file: !30, line: 513, baseType: !2119, size: 64, offset: 4672)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2121)
!2121 = !{!2122, !2123}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2120, file: !30, line: 293, baseType: !7, size: 32)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2120, file: !30, line: 294, baseType: !230, size: 64, offset: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !372, file: !30, line: 515, baseType: !380, size: 128, offset: 4736)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !372, file: !30, line: 526, baseType: !2126, offset: 4864)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2127, line: 5, elements: !407)
!2127 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !372, file: !30, line: 528, baseType: !2129, size: 64, offset: 4864)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2131, line: 51, size: 1344, elements: !2132)
!2131 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2132 = !{!2133, !2134, !2136, !2137, !2227, !2236, !2237, !2238, !2239, !2240, !2241, !2242}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2130, file: !2131, line: 52, baseType: !177, size: 64)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2130, file: !2131, line: 53, baseType: !2135, size: 32, offset: 64)
!2135 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2131, line: 28, baseType: !159)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2130, file: !2131, line: 54, baseType: !177, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2130, file: !2131, line: 55, baseType: !2138, size: 192, offset: 192)
!2138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2139, line: 17, size: 192, elements: !2140)
!2139 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2140 = !{!2141, !2143, !2226}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2138, file: !2139, line: 18, baseType: !2142, size: 64)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2138, file: !2139, line: 19, baseType: !2144, size: 64, offset: 64)
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2146)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2139, line: 110, size: 1152, elements: !2147)
!2147 = !{!2148, !2152, !2156, !2162, !2168, !2172, !2176, !2181, !2185, !2186, !2190, !2194, !2198, !2209, !2210, !2211, !2212, !2222}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2146, file: !2139, line: 111, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = !DISubroutineType(types: !2151)
!2151 = !{!2142, !2142}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2146, file: !2139, line: 112, baseType: !2153, size: 64, offset: 64)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{null, !2142}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2146, file: !2139, line: 113, baseType: !2157, size: 64, offset: 128)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{!344, !2160}
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2138)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2146, file: !2139, line: 114, baseType: !2163, size: 64, offset: 192)
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DISubroutineType(types: !2165)
!2165 = !{!1623, !2160, !2166}
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2146, file: !2139, line: 116, baseType: !2169, size: 64, offset: 256)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!344, !2160, !177}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2146, file: !2139, line: 118, baseType: !2173, size: 64, offset: 320)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!100, !2160, !177, !7, !99, !249}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2146, file: !2139, line: 123, baseType: !2177, size: 64, offset: 384)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!100, !2160, !177, !2180, !249}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2146, file: !2139, line: 126, baseType: !2182, size: 64, offset: 448)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{!177, !2160}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2146, file: !2139, line: 127, baseType: !2182, size: 64, offset: 512)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2146, file: !2139, line: 128, baseType: !2187, size: 64, offset: 576)
!2187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2188, size: 64)
!2188 = !DISubroutineType(types: !2189)
!2189 = !{!2142, !2160}
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2146, file: !2139, line: 130, baseType: !2191, size: 64, offset: 640)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!2142, !2160, !2142}
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2146, file: !2139, line: 133, baseType: !2195, size: 64, offset: 704)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DISubroutineType(types: !2197)
!2197 = !{!2142, !2160, !177}
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2146, file: !2139, line: 135, baseType: !2199, size: 64, offset: 768)
!2199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2200 = !DISubroutineType(types: !2201)
!2201 = !{!100, !2160, !177, !177, !7, !7, !2202}
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2139, line: 43, size: 640, elements: !2204)
!2204 = !{!2205, !2206, !2207}
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2203, file: !2139, line: 44, baseType: !2142, size: 64)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2203, file: !2139, line: 45, baseType: !7, size: 32, offset: 64)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2203, file: !2139, line: 46, baseType: !2208, size: 512, offset: 128)
!2208 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, size: 512, elements: !113)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2146, file: !2139, line: 140, baseType: !2191, size: 64, offset: 832)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2146, file: !2139, line: 143, baseType: !2187, size: 64, offset: 896)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2146, file: !2139, line: 145, baseType: !2149, size: 64, offset: 960)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2146, file: !2139, line: 146, baseType: !2213, size: 64, offset: 1024)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{!100, !2160, !2216}
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2139, line: 29, size: 128, elements: !2218)
!2218 = !{!2219, !2220, !2221}
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2217, file: !2139, line: 30, baseType: !7, size: 32)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2217, file: !2139, line: 31, baseType: !7, size: 32, offset: 32)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2217, file: !2139, line: 32, baseType: !2160, size: 64, offset: 64)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2146, file: !2139, line: 148, baseType: !2223, size: 64, offset: 1088)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!100, !2160, !1821}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2138, file: !2139, line: 20, baseType: !1821, size: 64, offset: 128)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2130, file: !2131, line: 57, baseType: !2228, size: 64, offset: 384)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2131, line: 31, size: 704, elements: !2230)
!2230 = !{!2231, !2232, !2233, !2234, !2235}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2229, file: !2131, line: 32, baseType: !434, size: 64)
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2229, file: !2131, line: 33, baseType: !100, size: 32, offset: 64)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2229, file: !2131, line: 34, baseType: !99, size: 64, offset: 128)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2229, file: !2131, line: 35, baseType: !2228, size: 64, offset: 192)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2229, file: !2131, line: 43, baseType: !497, size: 448, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2130, file: !2131, line: 58, baseType: !2228, size: 64, offset: 448)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2130, file: !2131, line: 59, baseType: !2129, size: 64, offset: 512)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2130, file: !2131, line: 60, baseType: !2129, size: 64, offset: 576)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2130, file: !2131, line: 61, baseType: !2129, size: 64, offset: 640)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2130, file: !2131, line: 63, baseType: !375, size: 512, offset: 704)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2130, file: !2131, line: 65, baseType: !230, size: 64, offset: 1216)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2130, file: !2131, line: 66, baseType: !99, size: 64, offset: 1280)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !372, file: !30, line: 529, baseType: !2142, size: 64, offset: 4928)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !372, file: !30, line: 534, baseType: !2245, size: 32, offset: 4992)
!2245 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !98, line: 16, baseType: !2246)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !98, line: 13, baseType: !159)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !372, file: !30, line: 535, baseType: !159, size: 32, offset: 5024)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !372, file: !30, line: 537, baseType: !393, offset: 5056)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !372, file: !30, line: 538, baseType: !380, size: 128, offset: 5056)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !372, file: !30, line: 540, baseType: !2251, size: 64, offset: 5184)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2253, line: 54, size: 960, elements: !2254)
!2253 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2254 = !{!2255, !2256, !2257, !2258, !2259, !2260, !2261, !2265, !2269, !2270, !2271, !2272, !2276, !2280, !2281}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2252, file: !2253, line: 55, baseType: !177, size: 64)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2252, file: !2253, line: 56, baseType: !368, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2252, file: !2253, line: 58, baseType: !482, size: 64, offset: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2252, file: !2253, line: 59, baseType: !482, size: 64, offset: 192)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2252, file: !2253, line: 60, baseType: !386, size: 64, offset: 256)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2252, file: !2253, line: 62, baseType: !1834, size: 64, offset: 320)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2252, file: !2253, line: 63, baseType: !2262, size: 64, offset: 384)
!2262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2263, size: 64)
!2263 = !DISubroutineType(types: !2264)
!2264 = !{!434, !1821, !1841}
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2252, file: !2253, line: 65, baseType: !2266, size: 64, offset: 448)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DISubroutineType(types: !2268)
!2268 = !{null, !2251}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2252, file: !2253, line: 66, baseType: !1843, size: 64, offset: 512)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2252, file: !2253, line: 68, baseType: !1852, size: 64, offset: 576)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2252, file: !2253, line: 70, baseType: !1606, size: 64, offset: 640)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2252, file: !2253, line: 71, baseType: !2273, size: 64, offset: 704)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DISubroutineType(types: !2275)
!2275 = !{!1623, !1821}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2252, file: !2253, line: 73, baseType: !2277, size: 64, offset: 768)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !1821, !1643, !1650}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2252, file: !2253, line: 75, baseType: !1847, size: 64, offset: 832)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2252, file: !2253, line: 77, baseType: !1965, size: 64, offset: 896)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !372, file: !30, line: 541, baseType: !482, size: 64, offset: 5248)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !372, file: !30, line: 543, baseType: !1843, size: 64, offset: 5312)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !372, file: !30, line: 544, baseType: !2285, size: 64, offset: 5376)
!2285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2286, size: 64)
!2286 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !372, file: !30, line: 545, baseType: !2288, size: 64, offset: 5440)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !372, file: !30, line: 547, baseType: !344, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !372, file: !30, line: 548, baseType: !344, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !372, file: !30, line: 549, baseType: !344, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !372, file: !30, line: 550, baseType: !344, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !152, file: !153, line: 376, baseType: !100, size: 32, offset: 8832)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !152, file: !153, line: 377, baseType: !2296, size: 192, offset: 8896)
!2296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !153, line: 191, size: 192, elements: !2297)
!2297 = !{!2298, !2301, !2302}
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2296, file: !153, line: 192, baseType: !2299, size: 64)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1660, line: 21, flags: DIFlagFwdDecl)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2296, file: !153, line: 194, baseType: !177, size: 64, offset: 64)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2296, file: !153, line: 195, baseType: !177, size: 64, offset: 128)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !152, file: !153, line: 378, baseType: !2304, size: 64, offset: 9088)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2306, line: 16, flags: DIFlagFwdDecl)
!2306 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !152, file: !153, line: 386, baseType: !190, size: 64, offset: 9152)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !152, file: !153, line: 389, baseType: !380, size: 128, offset: 9216)
!2309 = !DIDerivedType(tag: DW_TAG_member, scope: !152, file: !153, line: 391, baseType: !2310, size: 320, offset: 9344)
!2310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !152, file: !153, line: 391, size: 320, elements: !2311)
!2311 = !{!2312, !2319}
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2310, file: !153, line: 392, baseType: !2313, size: 320)
!2313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !153, line: 211, size: 320, elements: !2314)
!2314 = !{!2315, !2316, !2317, !2318}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2313, file: !153, line: 212, baseType: !380, size: 128)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2313, file: !153, line: 213, baseType: !163, size: 64, offset: 128)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2313, file: !153, line: 214, baseType: !163, size: 64, offset: 192)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2313, file: !153, line: 215, baseType: !159, size: 32, offset: 256)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2310, file: !153, line: 393, baseType: !2320, size: 256)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !153, line: 230, size: 256, elements: !2321)
!2321 = !{!2322, !2323}
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2320, file: !153, line: 231, baseType: !638, size: 192)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2320, file: !153, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !149, file: !51, line: 321, baseType: !2325, size: 288, offset: 9664)
!2325 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2326)
!2326 = !{!2327, !2328, !2329, !2330, !2331, !2332, !2333, !2334, !2335}
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2325, file: !51, line: 30, baseType: !7, size: 32)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2325, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2325, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2325, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2325, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2325, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2325, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2325, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2325, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !149, file: !51, line: 322, baseType: !2337, size: 1024, offset: 9984)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2338)
!2338 = !{!2339, !2348, !2349, !2350, !2356, !2405}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2337, file: !51, line: 292, baseType: !2340, size: 192)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2341)
!2341 = !{!2342, !2343, !2344, !2345, !2346, !2347}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2340, file: !51, line: 188, baseType: !50, size: 32)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2340, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2340, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2340, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2340, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2340, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2337, file: !51, line: 293, baseType: !2340, size: 192, offset: 192)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2337, file: !51, line: 294, baseType: !2340, size: 192, offset: 384)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2337, file: !51, line: 295, baseType: !2351, size: 320, offset: 576)
!2351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2352)
!2352 = !{!2353, !2354, !2355}
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2351, file: !51, line: 239, baseType: !2340, size: 192)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2351, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2351, file: !51, line: 241, baseType: !99, size: 64, offset: 256)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2337, file: !51, line: 296, baseType: !2357, size: 64, offset: 896)
!2357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2358, size: 64)
!2358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2359)
!2359 = !{!2360}
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2358, file: !51, line: 269, baseType: !2361, size: 64)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2363)
!2363 = !{!2364, !2369, !2373, !2404}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2362, file: !51, line: 256, baseType: !2365, size: 64)
!2365 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2366, size: 64)
!2366 = !DISubroutineType(types: !2367)
!2367 = !{!100, !2368}
!2368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2362, file: !51, line: 257, baseType: !2370, size: 64, offset: 64)
!2370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2371, size: 64)
!2371 = !DISubroutineType(types: !2372)
!2372 = !{null, !2368}
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2362, file: !51, line: 258, baseType: !2374, size: 64, offset: 128)
!2374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2375, size: 64)
!2375 = !DISubroutineType(types: !2376)
!2376 = !{!100, !2368, !2377}
!2377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2378, size: 64)
!2378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2379)
!2379 = !{!2380, !2381, !2389, !2390, !2391, !2396, !2397, !2398, !2403}
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2378, file: !51, line: 113, baseType: !69, size: 32)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2378, file: !51, line: 114, baseType: !2382, size: 160, offset: 32)
!2382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2383)
!2383 = !{!2384, !2385, !2386, !2387, !2388}
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2382, file: !51, line: 78, baseType: !7, size: 32)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2382, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2382, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2382, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2382, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2378, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2378, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2378, file: !51, line: 120, baseType: !2392, size: 64, offset: 256)
!2392 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !51, line: 117, size: 64, elements: !2393)
!2393 = !{!2394, !2395}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2392, file: !51, line: 118, baseType: !1623, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2392, file: !51, line: 119, baseType: !99, size: 64)
!2396 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2378, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2378, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2378, file: !51, line: 126, baseType: !2399, size: 64, offset: 384)
!2399 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2378, file: !51, line: 123, size: 64, elements: !2400)
!2400 = !{!2401, !2402}
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2399, file: !51, line: 124, baseType: !1623, size: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2399, file: !51, line: 125, baseType: !99, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2378, file: !51, line: 127, baseType: !100, size: 32, offset: 448)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2362, file: !51, line: 260, baseType: !2374, size: 64, offset: 192)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2337, file: !51, line: 297, baseType: !2357, size: 64, offset: 960)
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !149, file: !51, line: 323, baseType: !2407, size: 64, offset: 11008)
!2407 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2408)
!2408 = !{!2409, !2410}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2407, file: !51, line: 62, baseType: !7, size: 32)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2407, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !149, file: !51, line: 324, baseType: !2412, size: 64, offset: 11072)
!2412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2413)
!2413 = !{!2414}
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2412, file: !51, line: 206, baseType: !229, size: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !149, file: !51, line: 325, baseType: !2416, size: 64, offset: 11136)
!2416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2417, size: 64)
!2417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2418)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2419)
!2419 = !{!2420, !2426, !2427}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2418, file: !51, line: 226, baseType: !2421, size: 64)
!2421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2422, size: 64)
!2422 = !DISubroutineType(types: !2423)
!2423 = !{!100, !2368, !2424}
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2382)
!2426 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2418, file: !51, line: 227, baseType: !2421, size: 64, offset: 64)
!2427 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2418, file: !51, line: 228, baseType: !2428, size: 64, offset: 128)
!2428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2429, size: 64)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!344, !2368, !2424}
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !146, file: !74, line: 1098, baseType: !2432, size: 96, offset: 11200)
!2432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !74, line: 249, size: 96, elements: !2433)
!2433 = !{!2434, !2435}
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2432, file: !74, line: 250, baseType: !109, size: 64)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2432, file: !74, line: 251, baseType: !100, size: 32, offset: 64)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !146, file: !74, line: 1099, baseType: !2437, size: 704, offset: 11328)
!2437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !74, line: 230, size: 704, elements: !2438)
!2438 = !{!2439, !2440, !2441, !2443, !2444}
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2437, file: !74, line: 232, baseType: !177, size: 64)
!2440 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2437, file: !74, line: 233, baseType: !344, size: 8, offset: 64)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2437, file: !74, line: 234, baseType: !2442, size: 256, offset: 128)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !230, size: 256, elements: !620)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2437, file: !74, line: 235, baseType: !2442, size: 256, offset: 384)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2437, file: !74, line: 238, baseType: !2445, size: 64, offset: 640)
!2445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2446, size: 64)
!2446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2447, line: 167, size: 832, elements: !2448)
!2447 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2448 = !{!2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456}
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2446, file: !2447, line: 168, baseType: !100, size: 32)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2446, file: !2447, line: 169, baseType: !101, size: 16, offset: 32)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2446, file: !2447, line: 170, baseType: !101, size: 16, offset: 48)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2446, file: !2447, line: 171, baseType: !101, size: 16, offset: 64)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2446, file: !2447, line: 172, baseType: !101, size: 16, offset: 80)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2446, file: !2447, line: 173, baseType: !101, size: 16, offset: 96)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2446, file: !2447, line: 174, baseType: !101, size: 16, offset: 112)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2446, file: !2447, line: 175, baseType: !2457, size: 704, offset: 128)
!2457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 704, elements: !2458)
!2458 = !{!2459}
!2459 = !DISubrange(count: 88)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !146, file: !74, line: 1100, baseType: !2461, size: 128, offset: 12032)
!2461 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !74, line: 1036, size: 128, elements: !2462)
!2462 = !{!2463, !2472}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2461, file: !74, line: 1037, baseType: !2464, size: 64)
!2464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2465, size: 64)
!2465 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2466)
!2466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !139, line: 61, size: 192, elements: !2467)
!2467 = !{!2468, !2469, !2470}
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2466, file: !139, line: 62, baseType: !100, size: 32)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2466, file: !139, line: 63, baseType: !434, size: 64, offset: 64)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2466, file: !139, line: 64, baseType: !2471, size: 64, offset: 128)
!2471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!2472 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2461, file: !74, line: 1038, baseType: !99, size: 64, offset: 64)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !146, file: !74, line: 1101, baseType: !2474, size: 384, offset: 12160)
!2474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !74, line: 1021, size: 384, elements: !2475)
!2475 = !{!2476, !2480, !2481, !2485, !2486, !2490}
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2474, file: !74, line: 1022, baseType: !2477, size: 64)
!2477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2478, size: 64)
!2478 = !DISubroutineType(types: !2479)
!2479 = !{!100, !145}
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2474, file: !74, line: 1023, baseType: !142, size: 64, offset: 64)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2474, file: !74, line: 1024, baseType: !2482, size: 64, offset: 128)
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!100, !145, !245, !162}
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2474, file: !74, line: 1025, baseType: !2482, size: 64, offset: 192)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2474, file: !74, line: 1026, baseType: !2487, size: 64, offset: 256)
!2487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2488, size: 64)
!2488 = !DISubroutineType(types: !2489)
!2489 = !{!100, !145, !100}
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2474, file: !74, line: 1027, baseType: !2491, size: 64, offset: 320)
!2491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2492, size: 64)
!2492 = !DISubroutineType(types: !2493)
!2493 = !{!100, !145, !2494}
!2494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2495, size: 64)
!2495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !74, line: 492, size: 1536, elements: !2496)
!2496 = !{!2497, !2498}
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2495, file: !74, line: 493, baseType: !73, size: 32)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2495, file: !74, line: 499, baseType: !2499, size: 1472, offset: 64)
!2499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !74, line: 494, size: 1472, elements: !2500)
!2500 = !{!2501, !2502}
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2499, file: !74, line: 495, baseType: !7, size: 32)
!2502 = !DIDerivedType(tag: DW_TAG_member, scope: !2499, file: !74, line: 496, baseType: !2503, size: 1408, offset: 64)
!2503 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2499, file: !74, line: 496, size: 1408, elements: !2504)
!2504 = !{!2505}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2503, file: !74, line: 497, baseType: !2506, size: 1408)
!2506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !74, line: 436, size: 1408, elements: !2507)
!2507 = !{!2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534, !2535, !2536, !2537, !2538, !2539, !2540, !2541, !2542, !2543, !2544, !2545}
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2506, file: !74, line: 437, baseType: !163, size: 64)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2506, file: !74, line: 438, baseType: !159, size: 32, offset: 64)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2506, file: !74, line: 439, baseType: !163, size: 64, offset: 128)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2506, file: !74, line: 440, baseType: !163, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2506, file: !74, line: 441, baseType: !159, size: 32, offset: 256)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2506, file: !74, line: 442, baseType: !159, size: 32, offset: 288)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2506, file: !74, line: 443, baseType: !159, size: 32, offset: 320)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2506, file: !74, line: 444, baseType: !159, size: 32, offset: 352)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2506, file: !74, line: 445, baseType: !159, size: 32, offset: 384)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2506, file: !74, line: 446, baseType: !159, size: 32, offset: 416)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2506, file: !74, line: 447, baseType: !159, size: 32, offset: 448)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2506, file: !74, line: 448, baseType: !159, size: 32, offset: 480)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2506, file: !74, line: 449, baseType: !159, size: 32, offset: 512)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2506, file: !74, line: 450, baseType: !159, size: 32, offset: 544)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2506, file: !74, line: 451, baseType: !159, size: 32, offset: 576)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2506, file: !74, line: 452, baseType: !159, size: 32, offset: 608)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2506, file: !74, line: 453, baseType: !159, size: 32, offset: 640)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2506, file: !74, line: 454, baseType: !159, size: 32, offset: 672)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2506, file: !74, line: 455, baseType: !159, size: 32, offset: 704)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2506, file: !74, line: 456, baseType: !159, size: 32, offset: 736)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2506, file: !74, line: 457, baseType: !159, size: 32, offset: 768)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2506, file: !74, line: 458, baseType: !159, size: 32, offset: 800)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2506, file: !74, line: 459, baseType: !159, size: 32, offset: 832)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2506, file: !74, line: 460, baseType: !159, size: 32, offset: 864)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2506, file: !74, line: 461, baseType: !159, size: 32, offset: 896)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2506, file: !74, line: 462, baseType: !159, size: 32, offset: 928)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2506, file: !74, line: 463, baseType: !159, size: 32, offset: 960)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2506, file: !74, line: 464, baseType: !159, size: 32, offset: 992)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2506, file: !74, line: 465, baseType: !159, size: 32, offset: 1024)
!2537 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2506, file: !74, line: 466, baseType: !159, size: 32, offset: 1056)
!2538 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2506, file: !74, line: 467, baseType: !159, size: 32, offset: 1088)
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2506, file: !74, line: 468, baseType: !163, size: 64, offset: 1152)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2506, file: !74, line: 469, baseType: !159, size: 32, offset: 1216)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2506, file: !74, line: 470, baseType: !159, size: 32, offset: 1248)
!2542 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2506, file: !74, line: 471, baseType: !159, size: 32, offset: 1280)
!2543 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2506, file: !74, line: 472, baseType: !159, size: 32, offset: 1312)
!2544 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2506, file: !74, line: 473, baseType: !159, size: 32, offset: 1344)
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2506, file: !74, line: 474, baseType: !159, size: 32, offset: 1376)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !146, file: !74, line: 1102, baseType: !2547, size: 1280, offset: 12544)
!2547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !74, line: 989, size: 1280, elements: !2548)
!2548 = !{!2549, !2550, !2551, !2555, !2559, !2563, !2567, !2572, !2576, !2580, !2581, !2582, !2586, !2587, !2591, !2592, !2593}
!2549 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2547, file: !74, line: 990, baseType: !99, size: 64)
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2547, file: !74, line: 991, baseType: !99, size: 64, offset: 64)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2547, file: !74, line: 992, baseType: !2552, size: 64, offset: 128)
!2552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2553, size: 64)
!2553 = !DISubroutineType(types: !2554)
!2554 = !{null, !145, !100}
!2555 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2547, file: !74, line: 993, baseType: !2556, size: 64, offset: 192)
!2556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2557, size: 64)
!2557 = !DISubroutineType(types: !2558)
!2558 = !{!110, !145}
!2559 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2547, file: !74, line: 994, baseType: !2560, size: 64, offset: 256)
!2560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2561, size: 64)
!2561 = !DISubroutineType(types: !2562)
!2562 = !{null, !145, !110}
!2563 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2547, file: !74, line: 995, baseType: !2564, size: 64, offset: 320)
!2564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2565, size: 64)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{null, !145, !123, !100}
!2567 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2547, file: !74, line: 996, baseType: !2568, size: 64, offset: 384)
!2568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2569, size: 64)
!2569 = !DISubroutineType(types: !2570)
!2570 = !{null, !145, !2571, !100}
!2571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2547, file: !74, line: 997, baseType: !2573, size: 64, offset: 448)
!2573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2574, size: 64)
!2574 = !DISubroutineType(types: !2575)
!2575 = !{null, !145, !100, !7}
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2547, file: !74, line: 998, baseType: !2577, size: 64, offset: 512)
!2577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2578, size: 64)
!2578 = !DISubroutineType(types: !2579)
!2579 = !{null, !145, !7, !100, !100}
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2547, file: !74, line: 1000, baseType: !2477, size: 64, offset: 576)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2547, file: !74, line: 1001, baseType: !2477, size: 64, offset: 640)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2547, file: !74, line: 1002, baseType: !2583, size: 64, offset: 704)
!2583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2584, size: 64)
!2584 = !DISubroutineType(types: !2585)
!2585 = !{!100, !145, !245}
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2547, file: !74, line: 1003, baseType: !2583, size: 64, offset: 768)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2547, file: !74, line: 1004, baseType: !2588, size: 64, offset: 832)
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2589, size: 64)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!100, !145, !100, !2571}
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2547, file: !74, line: 1006, baseType: !2588, size: 64, offset: 896)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2547, file: !74, line: 1008, baseType: !100, size: 32, offset: 960)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2547, file: !74, line: 1009, baseType: !2594, size: 256, offset: 1024)
!2594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !74, line: 951, size: 256, elements: !2595)
!2595 = !{!2596, !2597}
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2594, file: !74, line: 952, baseType: !638, size: 192)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2594, file: !74, line: 953, baseType: !2598, size: 64, offset: 192)
!2598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2599, size: 64)
!2599 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2600)
!2600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !74, line: 935, size: 256, elements: !2601)
!2601 = !{!2602, !2603, !2604, !2647}
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2600, file: !74, line: 936, baseType: !2477, size: 64)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2600, file: !74, line: 937, baseType: !142, size: 64, offset: 64)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2600, file: !74, line: 938, baseType: !2605, size: 64, offset: 128)
!2605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2606, size: 64)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!100, !145, !2608, !344}
!2608 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2609, size: 64)
!2609 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2610)
!2610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !74, line: 860, size: 192, elements: !2611)
!2611 = !{!2612, !2613, !2646}
!2612 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2610, file: !74, line: 861, baseType: !7, size: 32)
!2613 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2610, file: !74, line: 862, baseType: !2614, size: 64, offset: 64)
!2614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2615, size: 64)
!2615 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2616)
!2616 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !74, line: 593, size: 320, elements: !2617)
!2617 = !{!2618, !2619, !2645}
!2618 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2616, file: !74, line: 594, baseType: !77, size: 32)
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2616, file: !74, line: 600, baseType: !2620, size: 192, offset: 64)
!2620 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2616, file: !74, line: 595, size: 192, elements: !2621)
!2621 = !{!2622, !2626, !2631, !2641}
!2622 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2620, file: !74, line: 596, baseType: !2623, size: 8)
!2623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !74, line: 519, size: 8, elements: !2624)
!2624 = !{!2625}
!2625 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2623, file: !74, line: 520, baseType: !110, size: 8)
!2626 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2620, file: !74, line: 597, baseType: !2627, size: 128)
!2627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !74, line: 528, size: 128, elements: !2628)
!2628 = !{!2629, !2630}
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2627, file: !74, line: 529, baseType: !7, size: 32)
!2630 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2627, file: !74, line: 530, baseType: !123, size: 64, offset: 64)
!2631 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2620, file: !74, line: 598, baseType: !2632, size: 192)
!2632 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !74, line: 545, size: 192, elements: !2633)
!2633 = !{!2634, !2635, !2640}
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2632, file: !74, line: 546, baseType: !7, size: 32)
!2635 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2632, file: !74, line: 550, baseType: !2636, size: 64, offset: 64)
!2636 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2632, file: !74, line: 547, size: 64, elements: !2637)
!2637 = !{!2638, !2639}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2636, file: !74, line: 548, baseType: !99, size: 64)
!2639 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2636, file: !74, line: 549, baseType: !1623, size: 64)
!2640 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2632, file: !74, line: 551, baseType: !344, size: 8, offset: 128)
!2641 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2620, file: !74, line: 599, baseType: !2642, size: 32)
!2642 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !74, line: 558, size: 32, elements: !2643)
!2643 = !{!2644}
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2642, file: !74, line: 559, baseType: !7, size: 32)
!2645 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2616, file: !74, line: 601, baseType: !7, size: 32, offset: 256)
!2646 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2610, file: !74, line: 863, baseType: !7, size: 32, offset: 128)
!2647 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2600, file: !74, line: 941, baseType: !2648, size: 64, offset: 192)
!2648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2649, size: 64)
!2649 = !DISubroutineType(types: !2650)
!2650 = !{!100, !145, !100, !2651}
!2651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2652, size: 64)
!2652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2495)
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !146, file: !74, line: 1103, baseType: !7, size: 32, offset: 13824)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !146, file: !74, line: 1106, baseType: !2651, size: 64, offset: 13888)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !146, file: !74, line: 1107, baseType: !2494, size: 64, offset: 13952)
!2656 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !146, file: !74, line: 1110, baseType: !7, size: 32, offset: 14016)
!2657 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !146, file: !74, line: 1111, baseType: !7, size: 32, offset: 14048)
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !146, file: !74, line: 1112, baseType: !7, size: 32, offset: 14080)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !146, file: !74, line: 1113, baseType: !7, size: 32, offset: 14112)
!2660 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !146, file: !74, line: 1114, baseType: !2661, size: 64, offset: 14144)
!2661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2662, size: 64)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2663, line: 41, size: 576, elements: !2664)
!2663 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2664 = !{!2665, !2666, !2668, !2669, !2670, !2672, !2673, !2674, !2675}
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2662, file: !2663, line: 42, baseType: !100, size: 32)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2662, file: !2663, line: 43, baseType: !2667, size: 256, offset: 32)
!2667 = !DICompositeType(tag: DW_TAG_array_type, baseType: !100, size: 256, elements: !113)
!2668 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2662, file: !2663, line: 44, baseType: !100, size: 32, offset: 288)
!2669 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2662, file: !2663, line: 45, baseType: !100, size: 32, offset: 320)
!2670 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2662, file: !2663, line: 46, baseType: !2671, size: 64, offset: 352)
!2671 = !DICompositeType(tag: DW_TAG_array_type, baseType: !288, size: 64, elements: !113)
!2672 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2662, file: !2663, line: 47, baseType: !100, size: 32, offset: 416)
!2673 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2662, file: !2663, line: 48, baseType: !100, size: 32, offset: 448)
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2662, file: !2663, line: 49, baseType: !100, size: 32, offset: 480)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2662, file: !2663, line: 50, baseType: !287, size: 64, offset: 512)
!2676 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !146, file: !74, line: 1115, baseType: !2661, size: 64, offset: 14208)
!2677 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !146, file: !74, line: 1116, baseType: !2661, size: 64, offset: 14272)
!2678 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !146, file: !74, line: 1117, baseType: !2571, size: 64, offset: 14336)
!2679 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !146, file: !74, line: 1120, baseType: !7, size: 32, offset: 14400)
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !146, file: !74, line: 1121, baseType: !7, size: 32, offset: 14432)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !146, file: !74, line: 1122, baseType: !7, size: 32, offset: 14464)
!2682 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !146, file: !74, line: 1123, baseType: !7, size: 32, offset: 14496)
!2683 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !146, file: !74, line: 1124, baseType: !7, size: 32, offset: 14528)
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !146, file: !74, line: 1127, baseType: !2571, size: 64, offset: 14592)
!2685 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !146, file: !74, line: 1128, baseType: !2571, size: 64, offset: 14656)
!2686 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !146, file: !74, line: 1132, baseType: !2687, size: 64, offset: 14720)
!2687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !146, file: !74, line: 1129, size: 64, elements: !2688)
!2688 = !{!2689, !2690}
!2689 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2687, file: !74, line: 1130, baseType: !7, size: 32)
!2690 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2687, file: !74, line: 1131, baseType: !100, size: 32, offset: 32)
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !146, file: !74, line: 1133, baseType: !230, size: 64, offset: 14784)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !146, file: !74, line: 1136, baseType: !638, size: 192, offset: 14848)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !146, file: !74, line: 1137, baseType: !7, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2694 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !146, file: !74, line: 1138, baseType: !100, size: 32, offset: 15072)
!2695 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !146, file: !74, line: 1139, baseType: !100, size: 32, offset: 15104)
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !146, file: !74, line: 1142, baseType: !2697, size: 64, offset: 15168)
!2697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2594, size: 64)
!2698 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !146, file: !74, line: 1143, baseType: !2699, size: 1408, offset: 15232)
!2699 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !74, line: 346, size: 1408, elements: !2700)
!2700 = !{!2701, !2702, !2703, !2704, !2705, !2706, !2707, !2708, !2709, !2710, !2711, !2712, !2713, !2714, !2715, !2716, !2722, !2726, !2730, !2734, !2735, !2739, !2743, !2744, !2745, !2746, !2747}
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2699, file: !74, line: 347, baseType: !50, size: 32)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2699, file: !74, line: 348, baseType: !58, size: 32, offset: 32)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2699, file: !74, line: 349, baseType: !63, size: 32, offset: 64)
!2704 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2699, file: !74, line: 350, baseType: !100, size: 32, offset: 96)
!2705 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2699, file: !74, line: 351, baseType: !100, size: 32, offset: 128)
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2699, file: !74, line: 352, baseType: !100, size: 32, offset: 160)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2699, file: !74, line: 353, baseType: !100, size: 32, offset: 192)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2699, file: !74, line: 354, baseType: !100, size: 32, offset: 224)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2699, file: !74, line: 355, baseType: !100, size: 32, offset: 256)
!2710 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2699, file: !74, line: 356, baseType: !100, size: 32, offset: 288)
!2711 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2699, file: !74, line: 357, baseType: !7, size: 32, offset: 320)
!2712 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2699, file: !74, line: 358, baseType: !99, size: 64, offset: 384)
!2713 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2699, file: !74, line: 359, baseType: !2571, size: 64, offset: 448)
!2714 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2699, file: !74, line: 360, baseType: !2571, size: 64, offset: 512)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2699, file: !74, line: 361, baseType: !2552, size: 64, offset: 576)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2699, file: !74, line: 362, baseType: !2717, size: 64, offset: 640)
!2717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2718, size: 64)
!2718 = !DISubroutineType(types: !2719)
!2719 = !{!100, !145, !2720, !287}
!2720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2721, size: 64)
!2721 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !288)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2699, file: !74, line: 364, baseType: !2723, size: 64, offset: 704)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = !DISubroutineType(types: !2725)
!2725 = !{!100, !145, !287, !287, !287}
!2726 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2699, file: !74, line: 366, baseType: !2727, size: 64, offset: 768)
!2727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2728, size: 64)
!2728 = !DISubroutineType(types: !2729)
!2729 = !{!100, !145, !287, !100, !100}
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2699, file: !74, line: 368, baseType: !2731, size: 64, offset: 832)
!2731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2732, size: 64)
!2732 = !DISubroutineType(types: !2733)
!2733 = !{!100, !145, !2720, !100, !100}
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2699, file: !74, line: 370, baseType: !2727, size: 64, offset: 896)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2699, file: !74, line: 372, baseType: !2736, size: 64, offset: 960)
!2736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2737, size: 64)
!2737 = !DISubroutineType(types: !2738)
!2738 = !{!100, !145, !158, !158, !287, !100}
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2699, file: !74, line: 374, baseType: !2740, size: 64, offset: 1024)
!2740 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2741, size: 64)
!2741 = !DISubroutineType(types: !2742)
!2742 = !{!100, !145, !158, !158, !2720, !100, !100}
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2699, file: !74, line: 377, baseType: !2731, size: 64, offset: 1088)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2699, file: !74, line: 379, baseType: !2487, size: 64, offset: 1152)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2699, file: !74, line: 380, baseType: !2487, size: 64, offset: 1216)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2699, file: !74, line: 381, baseType: !2487, size: 64, offset: 1280)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2699, file: !74, line: 382, baseType: !2487, size: 64, offset: 1344)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !146, file: !74, line: 1144, baseType: !99, size: 64, offset: 16640)
!2749 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !138, file: !139, line: 49, baseType: !2477, size: 64, offset: 64)
!2750 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !138, file: !139, line: 50, baseType: !142, size: 64, offset: 128)
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !138, file: !139, line: 51, baseType: !2752, size: 64, offset: 192)
!2752 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2753, size: 64)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{null, !145, !2755}
!2755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2756, size: 64)
!2756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2447, line: 54, size: 2048, elements: !2757)
!2757 = !{!2758, !2760, !2762, !2763, !2764, !2766, !2767, !2768, !2772, !2774, !2776, !2777, !2778, !2782, !2784, !2785, !2786, !2787, !2788, !2789, !2790, !2791, !2792, !2793, !2794, !2795, !2796, !2797, !2798, !2799, !2800, !2801, !2802, !2803, !2804, !2805, !2806, !2807, !2808, !2809, !2810, !2811, !2812, !2813, !2814, !2815, !2816, !2817, !2818, !2819, !2820, !2821}
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2756, file: !2447, line: 57, baseType: !2759, size: 32)
!2759 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 32, elements: !620)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2756, file: !2447, line: 58, baseType: !2761, size: 16, offset: 32)
!2761 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1791, line: 29, baseType: !103)
!2762 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2756, file: !2447, line: 59, baseType: !2761, size: 16, offset: 48)
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2756, file: !2447, line: 60, baseType: !2761, size: 16, offset: 64)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2756, file: !2447, line: 61, baseType: !2765, size: 16, offset: 80)
!2765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 16, elements: !128)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2756, file: !2447, line: 62, baseType: !2761, size: 16, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2756, file: !2447, line: 63, baseType: !110, size: 8, offset: 112)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2756, file: !2447, line: 64, baseType: !2769, size: 136, offset: 120)
!2769 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 136, elements: !2770)
!2770 = !{!2771}
!2771 = !DISubrange(count: 17)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2756, file: !2447, line: 67, baseType: !2773, size: 96, offset: 256)
!2773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 96, elements: !1459)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2756, file: !2447, line: 68, baseType: !2775, size: 160, offset: 352)
!2775 = !DICompositeType(tag: DW_TAG_array_type, baseType: !179, size: 160, elements: !1424)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2756, file: !2447, line: 69, baseType: !110, size: 8, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2756, file: !2447, line: 70, baseType: !2761, size: 16, offset: 520)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2756, file: !2447, line: 71, baseType: !2779, size: 104, offset: 536)
!2779 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 104, elements: !2780)
!2780 = !{!2781}
!2781 = !DISubrange(count: 13)
!2782 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2756, file: !2447, line: 74, baseType: !2783, size: 32, offset: 640)
!2783 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1791, line: 31, baseType: !160)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2756, file: !2447, line: 75, baseType: !2761, size: 16, offset: 672)
!2785 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2756, file: !2447, line: 76, baseType: !2783, size: 32, offset: 688)
!2786 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2756, file: !2447, line: 77, baseType: !2761, size: 16, offset: 720)
!2787 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2756, file: !2447, line: 78, baseType: !2783, size: 32, offset: 736)
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2756, file: !2447, line: 79, baseType: !2783, size: 32, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2756, file: !2447, line: 80, baseType: !110, size: 8, offset: 800)
!2790 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2756, file: !2447, line: 81, baseType: !110, size: 8, offset: 808)
!2791 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2756, file: !2447, line: 82, baseType: !110, size: 8, offset: 816)
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2756, file: !2447, line: 83, baseType: !2761, size: 16, offset: 824)
!2793 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2756, file: !2447, line: 84, baseType: !2761, size: 16, offset: 840)
!2794 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2756, file: !2447, line: 85, baseType: !110, size: 8, offset: 856)
!2795 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2756, file: !2447, line: 86, baseType: !2761, size: 16, offset: 864)
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2756, file: !2447, line: 87, baseType: !110, size: 8, offset: 880)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2756, file: !2447, line: 88, baseType: !110, size: 8, offset: 888)
!2798 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2756, file: !2447, line: 89, baseType: !110, size: 8, offset: 896)
!2799 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2756, file: !2447, line: 90, baseType: !110, size: 8, offset: 904)
!2800 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2756, file: !2447, line: 91, baseType: !110, size: 8, offset: 912)
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2756, file: !2447, line: 92, baseType: !2779, size: 104, offset: 920)
!2802 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2756, file: !2447, line: 95, baseType: !110, size: 8, offset: 1024)
!2803 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2756, file: !2447, line: 96, baseType: !2761, size: 16, offset: 1032)
!2804 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2756, file: !2447, line: 97, baseType: !2761, size: 16, offset: 1048)
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2756, file: !2447, line: 98, baseType: !2761, size: 16, offset: 1064)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2756, file: !2447, line: 99, baseType: !2761, size: 16, offset: 1080)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2756, file: !2447, line: 100, baseType: !2761, size: 16, offset: 1096)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2756, file: !2447, line: 101, baseType: !2761, size: 16, offset: 1112)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2756, file: !2447, line: 102, baseType: !2761, size: 16, offset: 1128)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2756, file: !2447, line: 103, baseType: !110, size: 8, offset: 1144)
!2811 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2756, file: !2447, line: 104, baseType: !2761, size: 16, offset: 1152)
!2812 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2756, file: !2447, line: 105, baseType: !2761, size: 16, offset: 1168)
!2813 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2756, file: !2447, line: 106, baseType: !2761, size: 16, offset: 1184)
!2814 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2756, file: !2447, line: 107, baseType: !110, size: 8, offset: 1200)
!2815 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2756, file: !2447, line: 108, baseType: !110, size: 8, offset: 1208)
!2816 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2756, file: !2447, line: 109, baseType: !2761, size: 16, offset: 1216)
!2817 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2756, file: !2447, line: 110, baseType: !2761, size: 16, offset: 1232)
!2818 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2756, file: !2447, line: 111, baseType: !109, size: 64, offset: 1248)
!2819 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2756, file: !2447, line: 114, baseType: !2761, size: 16, offset: 1312)
!2820 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2756, file: !2447, line: 115, baseType: !2457, size: 704, offset: 1328)
!2821 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2756, file: !2447, line: 117, baseType: !2761, size: 16, offset: 2032)
!2822 = !{i32 7, !"Dwarf Version", i32 4}
!2823 = !{i32 2, !"Debug Info Version", i32 3}
!2824 = !{i32 1, !"wchar_size", i32 2}
!2825 = !{i32 1, !"Code Model", i32 2}
!2826 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2827 = distinct !DISubprogram(name: "hynix_nand_decode_id", scope: !3, file: !3, line: 609, type: !143, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!2828 = !DILocalVariable(name: "chip", arg: 1, scope: !2827, file: !3, line: 609, type: !145)
!2829 = !DILocation(line: 609, column: 52, scope: !2827)
!2830 = !DILocalVariable(name: "mtd", scope: !2827, file: !3, line: 611, type: !190)
!2831 = !DILocation(line: 611, column: 19, scope: !2827)
!2832 = !DILocation(line: 611, column: 37, scope: !2827)
!2833 = !DILocation(line: 611, column: 25, scope: !2827)
!2834 = !DILocalVariable(name: "memorg", scope: !2827, file: !3, line: 612, type: !2835)
!2835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2325, size: 64)
!2836 = !DILocation(line: 612, column: 35, scope: !2827)
!2837 = !DILocalVariable(name: "valid_jedecid", scope: !2827, file: !3, line: 613, type: !344)
!2838 = !DILocation(line: 613, column: 7, scope: !2827)
!2839 = !DILocalVariable(name: "tmp", scope: !2827, file: !3, line: 614, type: !110)
!2840 = !DILocation(line: 614, column: 5, scope: !2827)
!2841 = !DILocation(line: 616, column: 31, scope: !2827)
!2842 = !DILocation(line: 616, column: 37, scope: !2827)
!2843 = !DILocation(line: 616, column: 11, scope: !2827)
!2844 = !DILocation(line: 616, column: 9, scope: !2827)
!2845 = !DILocation(line: 625, column: 6, scope: !2846)
!2846 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 625, column: 6)
!2847 = !DILocation(line: 625, column: 12, scope: !2846)
!2848 = !DILocation(line: 625, column: 15, scope: !2846)
!2849 = !DILocation(line: 625, column: 19, scope: !2846)
!2850 = !DILocation(line: 625, column: 23, scope: !2846)
!2851 = !DILocation(line: 625, column: 38, scope: !2846)
!2852 = !DILocation(line: 625, column: 26, scope: !2846)
!2853 = !DILocation(line: 625, column: 6, scope: !2827)
!2854 = !DILocation(line: 626, column: 22, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2846, file: !3, line: 625, column: 45)
!2856 = !DILocation(line: 626, column: 3, scope: !2855)
!2857 = !DILocation(line: 627, column: 3, scope: !2855)
!2858 = !DILocation(line: 631, column: 30, scope: !2827)
!2859 = !DILocation(line: 631, column: 36, scope: !2827)
!2860 = !DILocation(line: 631, column: 39, scope: !2827)
!2861 = !DILocation(line: 631, column: 47, scope: !2827)
!2862 = !DILocation(line: 631, column: 26, scope: !2827)
!2863 = !DILocation(line: 631, column: 2, scope: !2827)
!2864 = !DILocation(line: 631, column: 10, scope: !2827)
!2865 = !DILocation(line: 631, column: 19, scope: !2827)
!2866 = !DILocation(line: 632, column: 19, scope: !2827)
!2867 = !DILocation(line: 632, column: 27, scope: !2827)
!2868 = !DILocation(line: 632, column: 2, scope: !2827)
!2869 = !DILocation(line: 632, column: 7, scope: !2827)
!2870 = !DILocation(line: 632, column: 17, scope: !2827)
!2871 = !DILocation(line: 634, column: 9, scope: !2827)
!2872 = !DILocation(line: 634, column: 15, scope: !2827)
!2873 = !DILocation(line: 634, column: 18, scope: !2827)
!2874 = !DILocation(line: 634, column: 26, scope: !2827)
!2875 = !DILocation(line: 634, column: 32, scope: !2827)
!2876 = !DILocation(line: 634, column: 8, scope: !2827)
!2877 = !DILocation(line: 634, column: 6, scope: !2827)
!2878 = !DILocation(line: 642, column: 6, scope: !2879)
!2879 = distinct !DILexicalBlock(scope: !2827, file: !3, line: 642, column: 6)
!2880 = !DILocation(line: 642, column: 12, scope: !2879)
!2881 = !DILocation(line: 642, column: 15, scope: !2879)
!2882 = !DILocation(line: 642, column: 23, scope: !2879)
!2883 = !DILocation(line: 642, column: 6, scope: !2827)
!2884 = !DILocation(line: 643, column: 44, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 642, column: 31)
!2886 = !DILocation(line: 643, column: 41, scope: !2885)
!2887 = !DILocation(line: 644, column: 13, scope: !2885)
!2888 = !DILocation(line: 644, column: 21, scope: !2885)
!2889 = !DILocation(line: 643, column: 49, scope: !2885)
!2890 = !DILocation(line: 643, column: 3, scope: !2885)
!2891 = !DILocation(line: 643, column: 11, scope: !2885)
!2892 = !DILocation(line: 643, column: 32, scope: !2885)
!2893 = !DILocation(line: 645, column: 29, scope: !2885)
!2894 = !DILocation(line: 645, column: 26, scope: !2885)
!2895 = !DILocation(line: 645, column: 3, scope: !2885)
!2896 = !DILocation(line: 645, column: 8, scope: !2885)
!2897 = !DILocation(line: 645, column: 18, scope: !2885)
!2898 = !DILocation(line: 646, column: 2, scope: !2885)
!2899 = !DILocation(line: 646, column: 13, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2879, file: !3, line: 646, column: 13)
!2901 = !DILocation(line: 646, column: 17, scope: !2900)
!2902 = !DILocation(line: 646, column: 13, scope: !2879)
!2903 = !DILocation(line: 648, column: 13, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 646, column: 23)
!2905 = !DILocation(line: 648, column: 21, scope: !2904)
!2906 = !DILocation(line: 647, column: 54, scope: !2904)
!2907 = !DILocation(line: 647, column: 3, scope: !2904)
!2908 = !DILocation(line: 647, column: 11, scope: !2904)
!2909 = !DILocation(line: 647, column: 32, scope: !2904)
!2910 = !DILocation(line: 649, column: 3, scope: !2904)
!2911 = !DILocation(line: 649, column: 8, scope: !2904)
!2912 = !DILocation(line: 649, column: 18, scope: !2904)
!2913 = !DILocation(line: 650, column: 2, scope: !2904)
!2914 = !DILocation(line: 651, column: 46, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 650, column: 9)
!2916 = !DILocation(line: 651, column: 43, scope: !2915)
!2917 = !DILocation(line: 652, column: 13, scope: !2915)
!2918 = !DILocation(line: 652, column: 21, scope: !2915)
!2919 = !DILocation(line: 651, column: 51, scope: !2915)
!2920 = !DILocation(line: 651, column: 3, scope: !2915)
!2921 = !DILocation(line: 651, column: 11, scope: !2915)
!2922 = !DILocation(line: 651, column: 32, scope: !2915)
!2923 = !DILocation(line: 653, column: 31, scope: !2915)
!2924 = !DILocation(line: 653, column: 28, scope: !2915)
!2925 = !DILocation(line: 653, column: 3, scope: !2915)
!2926 = !DILocation(line: 653, column: 8, scope: !2915)
!2927 = !DILocation(line: 653, column: 18, scope: !2915)
!2928 = !DILocation(line: 661, column: 47, scope: !2827)
!2929 = !DILocation(line: 661, column: 18, scope: !2827)
!2930 = !DILocation(line: 661, column: 16, scope: !2827)
!2931 = !DILocation(line: 663, column: 29, scope: !2827)
!2932 = !DILocation(line: 663, column: 35, scope: !2827)
!2933 = !DILocation(line: 663, column: 2, scope: !2827)
!2934 = !DILocation(line: 664, column: 38, scope: !2827)
!2935 = !DILocation(line: 664, column: 44, scope: !2827)
!2936 = !DILocation(line: 664, column: 2, scope: !2827)
!2937 = !DILocation(line: 665, column: 45, scope: !2827)
!2938 = !DILocation(line: 665, column: 51, scope: !2827)
!2939 = !DILocation(line: 665, column: 2, scope: !2827)
!2940 = !DILocation(line: 666, column: 1, scope: !2827)
!2941 = distinct !DISubprogram(name: "hynix_nand_init", scope: !3, file: !3, line: 689, type: !2478, scopeLine: 690, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!2942 = !DILocalVariable(name: "chip", arg: 1, scope: !2941, file: !3, line: 689, type: !145)
!2943 = !DILocation(line: 689, column: 46, scope: !2941)
!2944 = !DILocalVariable(name: "hynix", scope: !2941, file: !3, line: 691, type: !2945)
!2945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2946, size: 64)
!2946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hynix_nand", file: !3, line: 37, size: 64, elements: !2947)
!2947 = !{!2948}
!2948 = !DIDerivedType(tag: DW_TAG_member, name: "read_retry", scope: !2946, file: !3, line: 38, baseType: !2949, size: 64)
!2949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2950, size: 64)
!2950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2951)
!2951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hynix_read_retry", file: !3, line: 26, size: 128, elements: !2952)
!2952 = !{!2953, !2954, !2955}
!2953 = !DIDerivedType(tag: DW_TAG_member, name: "nregs", scope: !2951, file: !3, line: 27, baseType: !100, size: 32)
!2954 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !2951, file: !3, line: 28, baseType: !123, size: 64, offset: 64)
!2955 = !DIDerivedType(tag: DW_TAG_member, name: "values", scope: !2951, file: !3, line: 29, baseType: !2956, offset: 128)
!2956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !1571)
!2957 = !DILocation(line: 691, column: 21, scope: !2941)
!2958 = !DILocalVariable(name: "ret", scope: !2941, file: !3, line: 692, type: !100)
!2959 = !DILocation(line: 692, column: 6, scope: !2941)
!2960 = !DILocation(line: 694, column: 19, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 694, column: 6)
!2962 = !DILocation(line: 694, column: 7, scope: !2961)
!2963 = !DILocation(line: 694, column: 6, scope: !2941)
!2964 = !DILocation(line: 695, column: 3, scope: !2961)
!2965 = !DILocation(line: 695, column: 9, scope: !2961)
!2966 = !DILocation(line: 695, column: 17, scope: !2961)
!2967 = !DILocation(line: 697, column: 3, scope: !2961)
!2968 = !DILocation(line: 697, column: 9, scope: !2961)
!2969 = !DILocation(line: 697, column: 17, scope: !2961)
!2970 = !DILocation(line: 699, column: 10, scope: !2941)
!2971 = !DILocation(line: 699, column: 8, scope: !2941)
!2972 = !DILocation(line: 700, column: 7, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 700, column: 6)
!2974 = !DILocation(line: 700, column: 6, scope: !2941)
!2975 = !DILocation(line: 701, column: 3, scope: !2973)
!2976 = !DILocation(line: 703, column: 29, scope: !2941)
!2977 = !DILocation(line: 703, column: 35, scope: !2941)
!2978 = !DILocation(line: 703, column: 2, scope: !2941)
!2979 = !DILocation(line: 705, column: 34, scope: !2980)
!2980 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 705, column: 6)
!2981 = !DILocation(line: 705, column: 40, scope: !2980)
!2982 = !DILocation(line: 705, column: 51, scope: !2980)
!2983 = !DILocation(line: 705, column: 7, scope: !2980)
!2984 = !DILocation(line: 705, column: 6, scope: !2941)
!2985 = !DILocation(line: 707, column: 3, scope: !2980)
!2986 = !DILocation(line: 707, column: 9, scope: !2980)
!2987 = !DILocation(line: 707, column: 13, scope: !2980)
!2988 = !DILocation(line: 707, column: 37, scope: !2980)
!2989 = !DILocation(line: 710, column: 27, scope: !2941)
!2990 = !DILocation(line: 710, column: 8, scope: !2941)
!2991 = !DILocation(line: 710, column: 6, scope: !2941)
!2992 = !DILocation(line: 711, column: 6, scope: !2993)
!2993 = distinct !DILexicalBlock(scope: !2941, file: !3, line: 711, column: 6)
!2994 = !DILocation(line: 711, column: 6, scope: !2941)
!2995 = !DILocation(line: 712, column: 22, scope: !2993)
!2996 = !DILocation(line: 712, column: 3, scope: !2993)
!2997 = !DILocation(line: 714, column: 9, scope: !2941)
!2998 = !DILocation(line: 714, column: 2, scope: !2941)
!2999 = !DILocation(line: 715, column: 1, scope: !2941)
!3000 = distinct !DISubprogram(name: "hynix_nand_cleanup", scope: !3, file: !3, line: 668, type: !143, scopeLine: 669, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3001 = !DILocalVariable(name: "chip", arg: 1, scope: !3000, file: !3, line: 668, type: !145)
!3002 = !DILocation(line: 668, column: 50, scope: !3000)
!3003 = !DILocalVariable(name: "hynix", scope: !3000, file: !3, line: 670, type: !2945)
!3004 = !DILocation(line: 670, column: 21, scope: !3000)
!3005 = !DILocation(line: 670, column: 56, scope: !3000)
!3006 = !DILocation(line: 670, column: 29, scope: !3000)
!3007 = !DILocation(line: 672, column: 7, scope: !3008)
!3008 = distinct !DILexicalBlock(scope: !3000, file: !3, line: 672, column: 6)
!3009 = !DILocation(line: 672, column: 6, scope: !3000)
!3010 = !DILocation(line: 673, column: 3, scope: !3008)
!3011 = !DILocation(line: 675, column: 8, scope: !3000)
!3012 = !DILocation(line: 675, column: 15, scope: !3000)
!3013 = !DILocation(line: 675, column: 2, scope: !3000)
!3014 = !DILocation(line: 676, column: 8, scope: !3000)
!3015 = !DILocation(line: 676, column: 2, scope: !3000)
!3016 = !DILocation(line: 677, column: 29, scope: !3000)
!3017 = !DILocation(line: 677, column: 2, scope: !3000)
!3018 = !DILocation(line: 678, column: 1, scope: !3000)
!3019 = distinct !DISubprogram(name: "nand_to_mtd", scope: !74, file: !74, line: 1152, type: !3020, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3020 = !DISubroutineType(types: !3021)
!3021 = !{!190, !145}
!3022 = !DILocalVariable(name: "chip", arg: 1, scope: !3019, file: !74, line: 1152, type: !145)
!3023 = !DILocation(line: 1152, column: 62, scope: !3019)
!3024 = !DILocation(line: 1154, column: 10, scope: !3019)
!3025 = !DILocation(line: 1154, column: 16, scope: !3019)
!3026 = !DILocation(line: 1154, column: 21, scope: !3019)
!3027 = !DILocation(line: 1154, column: 2, scope: !3019)
!3028 = distinct !DISubprogram(name: "nanddev_get_memorg", scope: !51, file: !51, line: 521, type: !3029, scopeLine: 522, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3029 = !DISubroutineType(types: !3030)
!3030 = !{!2835, !2368}
!3031 = !DILocalVariable(name: "nand", arg: 1, scope: !3028, file: !51, line: 521, type: !2368)
!3032 = !DILocation(line: 521, column: 40, scope: !3028)
!3033 = !DILocation(line: 523, column: 10, scope: !3028)
!3034 = !DILocation(line: 523, column: 16, scope: !3028)
!3035 = !DILocation(line: 523, column: 2, scope: !3028)
!3036 = distinct !DISubprogram(name: "nand_is_slc", scope: !74, file: !74, line: 1281, type: !3037, scopeLine: 1282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3037 = !DISubroutineType(types: !3038)
!3038 = !{!344, !145}
!3039 = !DILocalVariable(name: "chip", arg: 1, scope: !3036, file: !74, line: 1281, type: !145)
!3040 = !DILocation(line: 1281, column: 50, scope: !3036)
!3041 = !DILocalVariable(name: "__ret_warn_on", scope: !3042, file: !74, line: 1283, type: !100)
!3042 = distinct !DILexicalBlock(scope: !3036, file: !74, line: 1283, column: 2)
!3043 = !DILocation(line: 1283, column: 2, scope: !3042)
!3044 = !DILocation(line: 1283, column: 2, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3042, file: !74, line: 1283, column: 2)
!3046 = !DILocation(line: 1283, column: 2, scope: !3047)
!3047 = distinct !DILexicalBlock(scope: !3045, file: !74, line: 1283, column: 2)
!3048 = !DILocation(line: 1283, column: 2, scope: !3049)
!3049 = distinct !DILexicalBlock(scope: !3047, file: !74, line: 1283, column: 2)
!3050 = !DILocation(line: 1283, column: 2, scope: !3051)
!3051 = distinct !DILexicalBlock(scope: !3047, file: !74, line: 1283, column: 2)
!3052 = !DILocation(line: 1283, column: 2, scope: !3053)
!3053 = distinct !DILexicalBlock(scope: !3051, file: !74, line: 1283, column: 2)
!3054 = !DILocation(line: 1283, column: 2, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3051, file: !74, line: 1283, column: 2)
!3056 = !{i32 -2143401638, i32 -2143401609, i32 -2143401563, i32 -2143401505, i32 -2143401451, i32 -2143401397, i32 -2143401342, i32 -2143401311}
!3057 = !DILocation(line: 1283, column: 2, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3051, file: !74, line: 1283, column: 2)
!3059 = !{i32 -2143400890, i32 -2143400883, i32 -2143400831, i32 -2143400800, i32 -2143400770}
!3060 = !DILocation(line: 1283, column: 2, scope: !3061)
!3061 = distinct !DILexicalBlock(scope: !3051, file: !74, line: 1283, column: 2)
!3062 = !DILocation(line: 1283, column: 2, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3047, file: !74, line: 1283, column: 2)
!3064 = !DILocation(line: 1285, column: 32, scope: !3036)
!3065 = !DILocation(line: 1285, column: 38, scope: !3036)
!3066 = !DILocation(line: 1285, column: 9, scope: !3036)
!3067 = !DILocation(line: 1285, column: 44, scope: !3036)
!3068 = !DILocation(line: 1285, column: 2, scope: !3036)
!3069 = distinct !DISubprogram(name: "hynix_nand_has_valid_jedecid", scope: !3, file: !3, line: 60, type: !3037, scopeLine: 61, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3070 = !DILocalVariable(name: "chip", arg: 1, scope: !3069, file: !3, line: 60, type: !145)
!3071 = !DILocation(line: 60, column: 60, scope: !3069)
!3072 = !DILocalVariable(name: "jedecid", scope: !3069, file: !3, line: 62, type: !3073)
!3073 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 40, elements: !3074)
!3074 = !{!3075}
!3075 = !DISubrange(count: 5)
!3076 = !DILocation(line: 62, column: 5, scope: !3069)
!3077 = !DILocalVariable(name: "ret", scope: !3069, file: !3, line: 63, type: !100)
!3078 = !DILocation(line: 63, column: 6, scope: !3069)
!3079 = !DILocation(line: 65, column: 23, scope: !3069)
!3080 = !DILocation(line: 65, column: 35, scope: !3069)
!3081 = !DILocation(line: 65, column: 8, scope: !3069)
!3082 = !DILocation(line: 65, column: 6, scope: !3069)
!3083 = !DILocation(line: 66, column: 6, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3069, file: !3, line: 66, column: 6)
!3085 = !DILocation(line: 66, column: 6, scope: !3069)
!3086 = !DILocation(line: 67, column: 3, scope: !3084)
!3087 = !DILocation(line: 69, column: 27, scope: !3069)
!3088 = !DILocation(line: 69, column: 10, scope: !3069)
!3089 = !DILocation(line: 69, column: 9, scope: !3069)
!3090 = !DILocation(line: 69, column: 2, scope: !3069)
!3091 = !DILocation(line: 70, column: 1, scope: !3069)
!3092 = distinct !DISubprogram(name: "hynix_nand_extract_oobsize", scope: !3, file: !3, line: 408, type: !3093, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3093 = !DISubroutineType(types: !3094)
!3094 = !{null, !145, !344}
!3095 = !DILocalVariable(name: "chip", arg: 1, scope: !3092, file: !3, line: 408, type: !145)
!3096 = !DILocation(line: 408, column: 58, scope: !3092)
!3097 = !DILocalVariable(name: "valid_jedecid", arg: 2, scope: !3092, file: !3, line: 409, type: !344)
!3098 = !DILocation(line: 409, column: 17, scope: !3092)
!3099 = !DILocalVariable(name: "mtd", scope: !3092, file: !3, line: 411, type: !190)
!3100 = !DILocation(line: 411, column: 19, scope: !3092)
!3101 = !DILocation(line: 411, column: 37, scope: !3092)
!3102 = !DILocation(line: 411, column: 25, scope: !3092)
!3103 = !DILocalVariable(name: "memorg", scope: !3092, file: !3, line: 412, type: !2835)
!3104 = !DILocation(line: 412, column: 35, scope: !3092)
!3105 = !DILocalVariable(name: "oobsize", scope: !3092, file: !3, line: 413, type: !110)
!3106 = !DILocation(line: 413, column: 5, scope: !3092)
!3107 = !DILocation(line: 415, column: 31, scope: !3092)
!3108 = !DILocation(line: 415, column: 37, scope: !3092)
!3109 = !DILocation(line: 415, column: 11, scope: !3092)
!3110 = !DILocation(line: 415, column: 9, scope: !3092)
!3111 = !DILocation(line: 417, column: 14, scope: !3092)
!3112 = !DILocation(line: 417, column: 20, scope: !3092)
!3113 = !DILocation(line: 417, column: 23, scope: !3092)
!3114 = !DILocation(line: 417, column: 31, scope: !3092)
!3115 = !DILocation(line: 417, column: 37, scope: !3092)
!3116 = !DILocation(line: 418, column: 7, scope: !3092)
!3117 = !DILocation(line: 418, column: 13, scope: !3092)
!3118 = !DILocation(line: 418, column: 16, scope: !3092)
!3119 = !DILocation(line: 418, column: 24, scope: !3092)
!3120 = !DILocation(line: 418, column: 30, scope: !3092)
!3121 = !DILocation(line: 417, column: 44, scope: !3092)
!3122 = !DILocation(line: 417, column: 12, scope: !3092)
!3123 = !DILocation(line: 417, column: 10, scope: !3092)
!3124 = !DILocation(line: 420, column: 6, scope: !3125)
!3125 = distinct !DILexicalBlock(scope: !3092, file: !3, line: 420, column: 6)
!3126 = !DILocation(line: 420, column: 6, scope: !3092)
!3127 = !DILocation(line: 421, column: 11, scope: !3128)
!3128 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 420, column: 21)
!3129 = !DILocation(line: 421, column: 3, scope: !3128)
!3130 = !DILocation(line: 423, column: 4, scope: !3131)
!3131 = distinct !DILexicalBlock(scope: !3128, file: !3, line: 421, column: 20)
!3132 = !DILocation(line: 423, column: 12, scope: !3131)
!3133 = !DILocation(line: 423, column: 20, scope: !3131)
!3134 = !DILocation(line: 424, column: 4, scope: !3131)
!3135 = !DILocation(line: 426, column: 4, scope: !3131)
!3136 = !DILocation(line: 426, column: 12, scope: !3131)
!3137 = !DILocation(line: 426, column: 20, scope: !3131)
!3138 = !DILocation(line: 427, column: 4, scope: !3131)
!3139 = !DILocation(line: 429, column: 4, scope: !3131)
!3140 = !DILocation(line: 429, column: 12, scope: !3131)
!3141 = !DILocation(line: 429, column: 20, scope: !3131)
!3142 = !DILocation(line: 430, column: 4, scope: !3131)
!3143 = !DILocation(line: 432, column: 4, scope: !3131)
!3144 = !DILocation(line: 432, column: 12, scope: !3131)
!3145 = !DILocation(line: 432, column: 20, scope: !3131)
!3146 = !DILocation(line: 433, column: 4, scope: !3131)
!3147 = !DILocalVariable(name: "__ret_warn_on", scope: !3148, file: !3, line: 441, type: !100)
!3148 = distinct !DILexicalBlock(scope: !3131, file: !3, line: 441, column: 4)
!3149 = !DILocation(line: 441, column: 4, scope: !3148)
!3150 = !DILocation(line: 441, column: 4, scope: !3151)
!3151 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 441, column: 4)
!3152 = !DILocation(line: 441, column: 4, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3151, file: !3, line: 441, column: 4)
!3154 = !DILocation(line: 441, column: 4, scope: !3155)
!3155 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 441, column: 4)
!3156 = !DILocation(line: 441, column: 4, scope: !3157)
!3157 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 441, column: 4)
!3158 = !DILocation(line: 441, column: 4, scope: !3159)
!3159 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 441, column: 4)
!3160 = !DILocation(line: 441, column: 4, scope: !3161)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 441, column: 4)
!3162 = !{i32 -2143393640, i32 -2143393611, i32 -2143393565, i32 -2143393507, i32 -2143393453, i32 -2143393399, i32 -2143393344, i32 -2143393313}
!3163 = !DILocation(line: 441, column: 4, scope: !3164)
!3164 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 441, column: 4)
!3165 = !{i32 -2143392887, i32 -2143392880, i32 -2143392828, i32 -2143392797, i32 -2143392767}
!3166 = !DILocation(line: 441, column: 4, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 441, column: 4)
!3168 = !DILocation(line: 441, column: 4, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 441, column: 4)
!3170 = !DILocation(line: 442, column: 4, scope: !3131)
!3171 = !DILocation(line: 444, column: 2, scope: !3128)
!3172 = !DILocation(line: 445, column: 11, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3125, file: !3, line: 444, column: 9)
!3174 = !DILocation(line: 445, column: 3, scope: !3173)
!3175 = !DILocation(line: 447, column: 4, scope: !3176)
!3176 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 445, column: 20)
!3177 = !DILocation(line: 447, column: 12, scope: !3176)
!3178 = !DILocation(line: 447, column: 20, scope: !3176)
!3179 = !DILocation(line: 448, column: 4, scope: !3176)
!3180 = !DILocation(line: 450, column: 4, scope: !3176)
!3181 = !DILocation(line: 450, column: 12, scope: !3176)
!3182 = !DILocation(line: 450, column: 20, scope: !3176)
!3183 = !DILocation(line: 451, column: 4, scope: !3176)
!3184 = !DILocation(line: 453, column: 4, scope: !3176)
!3185 = !DILocation(line: 453, column: 12, scope: !3176)
!3186 = !DILocation(line: 453, column: 20, scope: !3176)
!3187 = !DILocation(line: 454, column: 4, scope: !3176)
!3188 = !DILocation(line: 456, column: 4, scope: !3176)
!3189 = !DILocation(line: 456, column: 12, scope: !3176)
!3190 = !DILocation(line: 456, column: 20, scope: !3176)
!3191 = !DILocation(line: 457, column: 4, scope: !3176)
!3192 = !DILocation(line: 459, column: 4, scope: !3176)
!3193 = !DILocation(line: 459, column: 12, scope: !3176)
!3194 = !DILocation(line: 459, column: 20, scope: !3176)
!3195 = !DILocation(line: 460, column: 4, scope: !3176)
!3196 = !DILocation(line: 462, column: 4, scope: !3176)
!3197 = !DILocation(line: 462, column: 12, scope: !3176)
!3198 = !DILocation(line: 462, column: 20, scope: !3176)
!3199 = !DILocation(line: 463, column: 4, scope: !3176)
!3200 = !DILocation(line: 465, column: 4, scope: !3176)
!3201 = !DILocation(line: 465, column: 12, scope: !3176)
!3202 = !DILocation(line: 465, column: 20, scope: !3176)
!3203 = !DILocation(line: 466, column: 4, scope: !3176)
!3204 = !DILocalVariable(name: "__ret_warn_on", scope: !3205, file: !3, line: 474, type: !100)
!3205 = distinct !DILexicalBlock(scope: !3176, file: !3, line: 474, column: 4)
!3206 = !DILocation(line: 474, column: 4, scope: !3205)
!3207 = !DILocation(line: 474, column: 4, scope: !3208)
!3208 = distinct !DILexicalBlock(scope: !3205, file: !3, line: 474, column: 4)
!3209 = !DILocation(line: 474, column: 4, scope: !3210)
!3210 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 474, column: 4)
!3211 = !DILocation(line: 474, column: 4, scope: !3212)
!3212 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 474, column: 4)
!3213 = !DILocation(line: 474, column: 4, scope: !3214)
!3214 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 474, column: 4)
!3215 = !DILocation(line: 474, column: 4, scope: !3216)
!3216 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 474, column: 4)
!3217 = !DILocation(line: 474, column: 4, scope: !3218)
!3218 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 474, column: 4)
!3219 = !{i32 -2143391946, i32 -2143391917, i32 -2143391871, i32 -2143391813, i32 -2143391759, i32 -2143391705, i32 -2143391650, i32 -2143391619}
!3220 = !DILocation(line: 474, column: 4, scope: !3221)
!3221 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 474, column: 4)
!3222 = !{i32 -2143391193, i32 -2143391186, i32 -2143391134, i32 -2143391103, i32 -2143391073}
!3223 = !DILocation(line: 474, column: 4, scope: !3224)
!3224 = distinct !DILexicalBlock(scope: !3214, file: !3, line: 474, column: 4)
!3225 = !DILocation(line: 474, column: 4, scope: !3226)
!3226 = distinct !DILexicalBlock(scope: !3210, file: !3, line: 474, column: 4)
!3227 = !DILocation(line: 475, column: 4, scope: !3176)
!3228 = !DILocation(line: 488, column: 7, scope: !3229)
!3229 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 488, column: 7)
!3230 = !DILocation(line: 488, column: 13, scope: !3229)
!3231 = !DILocation(line: 488, column: 16, scope: !3229)
!3232 = !DILocation(line: 488, column: 24, scope: !3229)
!3233 = !DILocation(line: 488, column: 7, scope: !3173)
!3234 = !DILocation(line: 489, column: 23, scope: !3229)
!3235 = !DILocation(line: 489, column: 31, scope: !3229)
!3236 = !DILocation(line: 489, column: 40, scope: !3229)
!3237 = !DILocation(line: 489, column: 4, scope: !3229)
!3238 = !DILocation(line: 489, column: 12, scope: !3229)
!3239 = !DILocation(line: 489, column: 20, scope: !3229)
!3240 = !DILocation(line: 492, column: 17, scope: !3092)
!3241 = !DILocation(line: 492, column: 25, scope: !3092)
!3242 = !DILocation(line: 492, column: 2, scope: !3092)
!3243 = !DILocation(line: 492, column: 7, scope: !3092)
!3244 = !DILocation(line: 492, column: 15, scope: !3092)
!3245 = !DILocation(line: 493, column: 1, scope: !3092)
!3246 = distinct !DISubprogram(name: "hynix_nand_extract_ecc_requirements", scope: !3, file: !3, line: 495, type: !3093, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3247 = !DILocalVariable(name: "chip", arg: 1, scope: !3246, file: !3, line: 495, type: !145)
!3248 = !DILocation(line: 495, column: 67, scope: !3246)
!3249 = !DILocalVariable(name: "valid_jedecid", arg: 2, scope: !3246, file: !3, line: 496, type: !344)
!3250 = !DILocation(line: 496, column: 12, scope: !3246)
!3251 = !DILocalVariable(name: "base", scope: !3246, file: !3, line: 498, type: !2368)
!3252 = !DILocation(line: 498, column: 22, scope: !3246)
!3253 = !DILocation(line: 498, column: 30, scope: !3246)
!3254 = !DILocation(line: 498, column: 36, scope: !3246)
!3255 = !DILocalVariable(name: "requirements", scope: !3246, file: !3, line: 499, type: !2340)
!3256 = !DILocation(line: 499, column: 24, scope: !3246)
!3257 = !DILocalVariable(name: "ecc_level", scope: !3246, file: !3, line: 500, type: !110)
!3258 = !DILocation(line: 500, column: 5, scope: !3246)
!3259 = !DILocation(line: 500, column: 18, scope: !3246)
!3260 = !DILocation(line: 500, column: 24, scope: !3246)
!3261 = !DILocation(line: 500, column: 27, scope: !3246)
!3262 = !DILocation(line: 500, column: 35, scope: !3246)
!3263 = !DILocation(line: 500, column: 41, scope: !3246)
!3264 = !DILocation(line: 500, column: 17, scope: !3246)
!3265 = !DILocation(line: 502, column: 6, scope: !3266)
!3266 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 502, column: 6)
!3267 = !DILocation(line: 502, column: 6, scope: !3246)
!3268 = !DILocation(line: 504, column: 16, scope: !3269)
!3269 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 502, column: 21)
!3270 = !DILocation(line: 504, column: 26, scope: !3269)
!3271 = !DILocation(line: 506, column: 11, scope: !3269)
!3272 = !DILocation(line: 506, column: 3, scope: !3269)
!3273 = !DILocation(line: 508, column: 17, scope: !3274)
!3274 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 506, column: 22)
!3275 = !DILocation(line: 508, column: 27, scope: !3274)
!3276 = !DILocation(line: 509, column: 17, scope: !3274)
!3277 = !DILocation(line: 509, column: 26, scope: !3274)
!3278 = !DILocation(line: 510, column: 4, scope: !3274)
!3279 = !DILocation(line: 512, column: 17, scope: !3274)
!3280 = !DILocation(line: 512, column: 26, scope: !3274)
!3281 = !DILocation(line: 513, column: 4, scope: !3274)
!3282 = !DILocation(line: 515, column: 17, scope: !3274)
!3283 = !DILocation(line: 515, column: 26, scope: !3274)
!3284 = !DILocation(line: 516, column: 4, scope: !3274)
!3285 = !DILocation(line: 518, column: 17, scope: !3274)
!3286 = !DILocation(line: 518, column: 26, scope: !3274)
!3287 = !DILocation(line: 519, column: 4, scope: !3274)
!3288 = !DILocation(line: 521, column: 17, scope: !3274)
!3289 = !DILocation(line: 521, column: 26, scope: !3274)
!3290 = !DILocation(line: 522, column: 4, scope: !3274)
!3291 = !DILocation(line: 524, column: 17, scope: !3274)
!3292 = !DILocation(line: 524, column: 26, scope: !3274)
!3293 = !DILocation(line: 525, column: 4, scope: !3274)
!3294 = !DILocation(line: 527, column: 17, scope: !3274)
!3295 = !DILocation(line: 527, column: 26, scope: !3274)
!3296 = !DILocation(line: 528, column: 4, scope: !3274)
!3297 = !DILocalVariable(name: "__ret_warn_on", scope: !3298, file: !3, line: 536, type: !100)
!3298 = distinct !DILexicalBlock(scope: !3274, file: !3, line: 536, column: 4)
!3299 = !DILocation(line: 536, column: 4, scope: !3298)
!3300 = !DILocation(line: 536, column: 4, scope: !3301)
!3301 = distinct !DILexicalBlock(scope: !3298, file: !3, line: 536, column: 4)
!3302 = !DILocation(line: 536, column: 4, scope: !3303)
!3303 = distinct !DILexicalBlock(scope: !3301, file: !3, line: 536, column: 4)
!3304 = !DILocation(line: 536, column: 4, scope: !3305)
!3305 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 536, column: 4)
!3306 = !DILocation(line: 536, column: 4, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 536, column: 4)
!3308 = !DILocation(line: 536, column: 4, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 536, column: 4)
!3310 = !DILocation(line: 536, column: 4, scope: !3311)
!3311 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 536, column: 4)
!3312 = !{i32 -2143390225, i32 -2143390196, i32 -2143390150, i32 -2143390092, i32 -2143390038, i32 -2143389984, i32 -2143389929, i32 -2143389898}
!3313 = !DILocation(line: 536, column: 4, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 536, column: 4)
!3315 = !{i32 -2143389472, i32 -2143389465, i32 -2143389413, i32 -2143389382, i32 -2143389352}
!3316 = !DILocation(line: 536, column: 4, scope: !3317)
!3317 = distinct !DILexicalBlock(scope: !3307, file: !3, line: 536, column: 4)
!3318 = !DILocation(line: 536, column: 4, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3303, file: !3, line: 536, column: 4)
!3320 = !DILocation(line: 537, column: 3, scope: !3274)
!3321 = !DILocation(line: 538, column: 2, scope: !3269)
!3322 = !DILocalVariable(name: "nand_tech", scope: !3323, file: !3, line: 543, type: !110)
!3323 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 538, column: 9)
!3324 = !DILocation(line: 543, column: 6, scope: !3323)
!3325 = !DILocation(line: 543, column: 18, scope: !3323)
!3326 = !DILocation(line: 543, column: 24, scope: !3323)
!3327 = !DILocation(line: 543, column: 27, scope: !3323)
!3328 = !DILocation(line: 543, column: 35, scope: !3323)
!3329 = !DILocation(line: 545, column: 7, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 545, column: 7)
!3331 = !DILocation(line: 545, column: 17, scope: !3330)
!3332 = !DILocation(line: 545, column: 7, scope: !3323)
!3333 = !DILocation(line: 547, column: 8, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3335, file: !3, line: 547, column: 8)
!3335 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 545, column: 22)
!3336 = !DILocation(line: 547, column: 18, scope: !3334)
!3337 = !DILocation(line: 547, column: 8, scope: !3335)
!3338 = !DILocation(line: 548, column: 18, scope: !3339)
!3339 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 547, column: 23)
!3340 = !DILocation(line: 548, column: 28, scope: !3339)
!3341 = !DILocation(line: 549, column: 34, scope: !3339)
!3342 = !DILocation(line: 549, column: 31, scope: !3339)
!3343 = !DILocation(line: 549, column: 18, scope: !3339)
!3344 = !DILocation(line: 549, column: 27, scope: !3339)
!3345 = !DILocation(line: 550, column: 4, scope: !3339)
!3346 = !DILocation(line: 550, column: 15, scope: !3347)
!3347 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 550, column: 15)
!3348 = !DILocation(line: 550, column: 25, scope: !3347)
!3349 = !DILocation(line: 550, column: 15, scope: !3334)
!3350 = !DILocation(line: 551, column: 9, scope: !3351)
!3351 = distinct !DILexicalBlock(scope: !3352, file: !3, line: 551, column: 9)
!3352 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 550, column: 30)
!3353 = !DILocation(line: 551, column: 19, scope: !3351)
!3354 = !DILocation(line: 551, column: 9, scope: !3352)
!3355 = !DILocation(line: 552, column: 19, scope: !3351)
!3356 = !DILocation(line: 552, column: 29, scope: !3351)
!3357 = !DILocation(line: 552, column: 6, scope: !3351)
!3358 = !DILocation(line: 554, column: 19, scope: !3351)
!3359 = !DILocation(line: 554, column: 29, scope: !3351)
!3360 = !DILocation(line: 555, column: 18, scope: !3352)
!3361 = !DILocation(line: 555, column: 27, scope: !3352)
!3362 = !DILocation(line: 556, column: 4, scope: !3352)
!3363 = !DILocalVariable(name: "__ret_warn_on", scope: !3364, file: !3, line: 563, type: !100)
!3364 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 563, column: 5)
!3365 = distinct !DILexicalBlock(scope: !3347, file: !3, line: 556, column: 11)
!3366 = !DILocation(line: 563, column: 5, scope: !3364)
!3367 = !DILocation(line: 563, column: 5, scope: !3368)
!3368 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 563, column: 5)
!3369 = !DILocation(line: 563, column: 5, scope: !3370)
!3370 = distinct !DILexicalBlock(scope: !3368, file: !3, line: 563, column: 5)
!3371 = !DILocation(line: 563, column: 5, scope: !3372)
!3372 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 563, column: 5)
!3373 = !DILocation(line: 563, column: 5, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 563, column: 5)
!3375 = !DILocation(line: 563, column: 5, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 563, column: 5)
!3377 = !DILocation(line: 563, column: 5, scope: !3378)
!3378 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 563, column: 5)
!3379 = !{i32 -2143388515, i32 -2143388486, i32 -2143388440, i32 -2143388382, i32 -2143388328, i32 -2143388274, i32 -2143388219, i32 -2143388188}
!3380 = !DILocation(line: 563, column: 5, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 563, column: 5)
!3382 = !{i32 -2143387762, i32 -2143387755, i32 -2143387703, i32 -2143387672, i32 -2143387642}
!3383 = !DILocation(line: 563, column: 5, scope: !3384)
!3384 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 563, column: 5)
!3385 = !DILocation(line: 563, column: 5, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3370, file: !3, line: 563, column: 5)
!3387 = !DILocation(line: 565, column: 3, scope: !3335)
!3388 = !DILocation(line: 567, column: 9, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3390, file: !3, line: 567, column: 8)
!3390 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 565, column: 10)
!3391 = !DILocation(line: 567, column: 8, scope: !3390)
!3392 = !DILocation(line: 568, column: 18, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 567, column: 20)
!3394 = !DILocation(line: 568, column: 28, scope: !3393)
!3395 = !DILocation(line: 569, column: 18, scope: !3393)
!3396 = !DILocation(line: 569, column: 27, scope: !3393)
!3397 = !DILocation(line: 570, column: 4, scope: !3393)
!3398 = !DILocation(line: 570, column: 15, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3389, file: !3, line: 570, column: 15)
!3400 = !DILocation(line: 570, column: 25, scope: !3399)
!3401 = !DILocation(line: 570, column: 15, scope: !3389)
!3402 = !DILocation(line: 571, column: 18, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 570, column: 30)
!3404 = !DILocation(line: 571, column: 28, scope: !3403)
!3405 = !DILocation(line: 572, column: 35, scope: !3403)
!3406 = !DILocation(line: 572, column: 45, scope: !3403)
!3407 = !DILocation(line: 572, column: 31, scope: !3403)
!3408 = !DILocation(line: 572, column: 18, scope: !3403)
!3409 = !DILocation(line: 572, column: 27, scope: !3403)
!3410 = !DILocation(line: 573, column: 4, scope: !3403)
!3411 = !DILocation(line: 574, column: 18, scope: !3412)
!3412 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 573, column: 11)
!3413 = !DILocation(line: 574, column: 28, scope: !3412)
!3414 = !DILocation(line: 576, column: 14, scope: !3412)
!3415 = !DILocation(line: 576, column: 24, scope: !3412)
!3416 = !DILocation(line: 576, column: 11, scope: !3412)
!3417 = !DILocation(line: 575, column: 32, scope: !3412)
!3418 = !DILocation(line: 575, column: 18, scope: !3412)
!3419 = !DILocation(line: 575, column: 27, scope: !3412)
!3420 = !DILocation(line: 581, column: 31, scope: !3246)
!3421 = !DILocation(line: 581, column: 2, scope: !3246)
!3422 = !DILocation(line: 582, column: 1, scope: !3246)
!3423 = distinct !DISubprogram(name: "hynix_nand_extract_scrambling_requirements", scope: !3, file: !3, line: 584, type: !3093, scopeLine: 586, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3424 = !DILocalVariable(name: "chip", arg: 1, scope: !3423, file: !3, line: 584, type: !145)
!3425 = !DILocation(line: 584, column: 74, scope: !3423)
!3426 = !DILocalVariable(name: "valid_jedecid", arg: 2, scope: !3423, file: !3, line: 585, type: !344)
!3427 = !DILocation(line: 585, column: 19, scope: !3423)
!3428 = !DILocalVariable(name: "nand_tech", scope: !3423, file: !3, line: 587, type: !110)
!3429 = !DILocation(line: 587, column: 5, scope: !3423)
!3430 = !DILocation(line: 590, column: 29, scope: !3431)
!3431 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 590, column: 6)
!3432 = !DILocation(line: 590, column: 35, scope: !3431)
!3433 = !DILocation(line: 590, column: 6, scope: !3431)
!3434 = !DILocation(line: 590, column: 41, scope: !3431)
!3435 = !DILocation(line: 590, column: 6, scope: !3423)
!3436 = !DILocation(line: 591, column: 3, scope: !3431)
!3437 = !DILocation(line: 591, column: 9, scope: !3431)
!3438 = !DILocation(line: 591, column: 17, scope: !3431)
!3439 = !DILocation(line: 594, column: 6, scope: !3440)
!3440 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 594, column: 6)
!3441 = !DILocation(line: 594, column: 6, scope: !3423)
!3442 = !DILocation(line: 595, column: 15, scope: !3443)
!3443 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 594, column: 21)
!3444 = !DILocation(line: 595, column: 21, scope: !3443)
!3445 = !DILocation(line: 595, column: 24, scope: !3443)
!3446 = !DILocation(line: 595, column: 32, scope: !3443)
!3447 = !DILocation(line: 595, column: 13, scope: !3443)
!3448 = !DILocation(line: 598, column: 7, scope: !3449)
!3449 = distinct !DILexicalBlock(scope: !3443, file: !3, line: 598, column: 7)
!3450 = !DILocation(line: 598, column: 17, scope: !3449)
!3451 = !DILocation(line: 598, column: 7, scope: !3443)
!3452 = !DILocation(line: 599, column: 4, scope: !3449)
!3453 = !DILocation(line: 599, column: 10, scope: !3449)
!3454 = !DILocation(line: 599, column: 18, scope: !3449)
!3455 = !DILocation(line: 600, column: 2, scope: !3443)
!3456 = !DILocation(line: 601, column: 15, scope: !3457)
!3457 = distinct !DILexicalBlock(scope: !3440, file: !3, line: 600, column: 9)
!3458 = !DILocation(line: 601, column: 21, scope: !3457)
!3459 = !DILocation(line: 601, column: 24, scope: !3457)
!3460 = !DILocation(line: 601, column: 32, scope: !3457)
!3461 = !DILocation(line: 601, column: 13, scope: !3457)
!3462 = !DILocation(line: 604, column: 7, scope: !3463)
!3463 = distinct !DILexicalBlock(scope: !3457, file: !3, line: 604, column: 7)
!3464 = !DILocation(line: 604, column: 17, scope: !3463)
!3465 = !DILocation(line: 604, column: 7, scope: !3457)
!3466 = !DILocation(line: 605, column: 4, scope: !3463)
!3467 = !DILocation(line: 605, column: 10, scope: !3463)
!3468 = !DILocation(line: 605, column: 18, scope: !3463)
!3469 = !DILocation(line: 607, column: 1, scope: !3423)
!3470 = distinct !DISubprogram(name: "nanddev_bits_per_cell", scope: !51, file: !51, line: 374, type: !3471, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3471 = !DISubroutineType(types: !3472)
!3472 = !{!7, !3473}
!3473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3474, size: 64)
!3474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!3475 = !DILocalVariable(name: "nand", arg: 1, scope: !3470, file: !51, line: 374, type: !3473)
!3476 = !DILocation(line: 374, column: 76, scope: !3470)
!3477 = !DILocation(line: 376, column: 9, scope: !3470)
!3478 = !DILocation(line: 376, column: 15, scope: !3470)
!3479 = !DILocation(line: 376, column: 22, scope: !3470)
!3480 = !DILocation(line: 376, column: 2, scope: !3470)
!3481 = distinct !DISubprogram(name: "nanddev_set_ecc_requirements", scope: !51, file: !51, line: 554, type: !3482, scopeLine: 556, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3482 = !DISubroutineType(types: !3483)
!3483 = !{null, !2368, !3484}
!3484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3485, size: 64)
!3485 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2340)
!3486 = !DILocalVariable(name: "nand", arg: 1, scope: !3481, file: !51, line: 554, type: !2368)
!3487 = !DILocation(line: 554, column: 50, scope: !3481)
!3488 = !DILocalVariable(name: "reqs", arg: 2, scope: !3481, file: !51, line: 555, type: !3484)
!3489 = !DILocation(line: 555, column: 38, scope: !3481)
!3490 = !DILocation(line: 557, column: 2, scope: !3481)
!3491 = !DILocation(line: 557, column: 8, scope: !3481)
!3492 = !DILocation(line: 557, column: 12, scope: !3481)
!3493 = !DILocation(line: 557, column: 28, scope: !3481)
!3494 = !DILocation(line: 557, column: 27, scope: !3481)
!3495 = !DILocation(line: 558, column: 1, scope: !3481)
!3496 = distinct !DISubprogram(name: "kzalloc", scope: !90, file: !90, line: 662, type: !3497, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3497 = !DISubroutineType(types: !3498)
!3498 = !{!99, !249, !97}
!3499 = !DILocalVariable(name: "s", arg: 1, scope: !3500, file: !90, line: 445, type: !1282)
!3500 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !90, file: !90, line: 445, type: !3501, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3501 = !DISubroutineType(types: !3502)
!3502 = !{!99, !1282, !97, !249}
!3503 = !DILocation(line: 445, column: 72, scope: !3500, inlinedAt: !3504)
!3504 = distinct !DILocation(line: 552, column: 10, scope: !3505, inlinedAt: !3508)
!3505 = distinct !DILexicalBlock(scope: !3506, file: !90, line: 540, column: 34)
!3506 = distinct !DILexicalBlock(scope: !3507, file: !90, line: 540, column: 6)
!3507 = distinct !DISubprogram(name: "kmalloc", scope: !90, file: !90, line: 538, type: !3497, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3508 = distinct !DILocation(line: 664, column: 9, scope: !3496)
!3509 = !DILocalVariable(name: "flags", arg: 2, scope: !3500, file: !90, line: 446, type: !97)
!3510 = !DILocation(line: 446, column: 9, scope: !3500, inlinedAt: !3504)
!3511 = !DILocalVariable(name: "size", arg: 3, scope: !3500, file: !90, line: 446, type: !249)
!3512 = !DILocation(line: 446, column: 23, scope: !3500, inlinedAt: !3504)
!3513 = !DILocalVariable(name: "ret", scope: !3500, file: !90, line: 448, type: !99)
!3514 = !DILocation(line: 448, column: 8, scope: !3500, inlinedAt: !3504)
!3515 = !DILocalVariable(name: "flags", arg: 1, scope: !3516, file: !90, line: 318, type: !97)
!3516 = distinct !DISubprogram(name: "kmalloc_type", scope: !90, file: !90, line: 318, type: !3517, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3517 = !DISubroutineType(types: !3518)
!3518 = !{!89, !97}
!3519 = !DILocation(line: 318, column: 67, scope: !3516, inlinedAt: !3520)
!3520 = distinct !DILocation(line: 553, column: 20, scope: !3505, inlinedAt: !3508)
!3521 = !DILocalVariable(name: "size", arg: 1, scope: !3522, file: !90, line: 346, type: !249)
!3522 = distinct !DISubprogram(name: "kmalloc_index", scope: !90, file: !90, line: 346, type: !3523, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3523 = !DISubroutineType(types: !3524)
!3524 = !{!7, !249}
!3525 = !DILocation(line: 346, column: 58, scope: !3522, inlinedAt: !3526)
!3526 = distinct !DILocation(line: 547, column: 11, scope: !3505, inlinedAt: !3508)
!3527 = !DILocalVariable(name: "size", arg: 1, scope: !3528, file: !90, line: 472, type: !249)
!3528 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !90, file: !90, line: 472, type: !3529, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3529 = !DISubroutineType(types: !3530)
!3530 = !{!99, !249, !97, !7}
!3531 = !DILocation(line: 472, column: 28, scope: !3528, inlinedAt: !3532)
!3532 = distinct !DILocation(line: 481, column: 9, scope: !3533, inlinedAt: !3534)
!3533 = distinct !DISubprogram(name: "kmalloc_large", scope: !90, file: !90, line: 478, type: !3497, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3534 = distinct !DILocation(line: 545, column: 11, scope: !3535, inlinedAt: !3508)
!3535 = distinct !DILexicalBlock(scope: !3505, file: !90, line: 544, column: 7)
!3536 = !DILocalVariable(name: "flags", arg: 2, scope: !3528, file: !90, line: 472, type: !97)
!3537 = !DILocation(line: 472, column: 40, scope: !3528, inlinedAt: !3532)
!3538 = !DILocalVariable(name: "order", arg: 3, scope: !3528, file: !90, line: 472, type: !7)
!3539 = !DILocation(line: 472, column: 60, scope: !3528, inlinedAt: !3532)
!3540 = !DILocalVariable(name: "size", arg: 1, scope: !3533, file: !90, line: 478, type: !249)
!3541 = !DILocation(line: 478, column: 51, scope: !3533, inlinedAt: !3534)
!3542 = !DILocalVariable(name: "flags", arg: 2, scope: !3533, file: !90, line: 478, type: !97)
!3543 = !DILocation(line: 478, column: 63, scope: !3533, inlinedAt: !3534)
!3544 = !DILocalVariable(name: "order", scope: !3533, file: !90, line: 480, type: !7)
!3545 = !DILocation(line: 480, column: 15, scope: !3533, inlinedAt: !3534)
!3546 = !DILocalVariable(name: "size", arg: 1, scope: !3507, file: !90, line: 538, type: !249)
!3547 = !DILocation(line: 538, column: 45, scope: !3507, inlinedAt: !3508)
!3548 = !DILocalVariable(name: "flags", arg: 2, scope: !3507, file: !90, line: 538, type: !97)
!3549 = !DILocation(line: 538, column: 57, scope: !3507, inlinedAt: !3508)
!3550 = !DILocalVariable(name: "index", scope: !3505, file: !90, line: 542, type: !7)
!3551 = !DILocation(line: 542, column: 16, scope: !3505, inlinedAt: !3508)
!3552 = !DILocalVariable(name: "size", arg: 1, scope: !3496, file: !90, line: 662, type: !249)
!3553 = !DILocation(line: 662, column: 36, scope: !3496)
!3554 = !DILocalVariable(name: "flags", arg: 2, scope: !3496, file: !90, line: 662, type: !97)
!3555 = !DILocation(line: 662, column: 48, scope: !3496)
!3556 = !DILocation(line: 664, column: 17, scope: !3496)
!3557 = !DILocation(line: 664, column: 23, scope: !3496)
!3558 = !DILocation(line: 664, column: 29, scope: !3496)
!3559 = !DILocation(line: 540, column: 27, scope: !3506, inlinedAt: !3508)
!3560 = !DILocation(line: 540, column: 6, scope: !3506, inlinedAt: !3508)
!3561 = !DILocation(line: 540, column: 6, scope: !3507, inlinedAt: !3508)
!3562 = !DILocation(line: 544, column: 7, scope: !3535, inlinedAt: !3508)
!3563 = !DILocation(line: 544, column: 12, scope: !3535, inlinedAt: !3508)
!3564 = !DILocation(line: 544, column: 7, scope: !3505, inlinedAt: !3508)
!3565 = !DILocation(line: 545, column: 25, scope: !3535, inlinedAt: !3508)
!3566 = !DILocation(line: 545, column: 31, scope: !3535, inlinedAt: !3508)
!3567 = !DILocation(line: 480, column: 33, scope: !3533, inlinedAt: !3534)
!3568 = !DILocation(line: 480, column: 23, scope: !3533, inlinedAt: !3534)
!3569 = !DILocation(line: 481, column: 29, scope: !3533, inlinedAt: !3534)
!3570 = !DILocation(line: 481, column: 35, scope: !3533, inlinedAt: !3534)
!3571 = !DILocation(line: 481, column: 42, scope: !3533, inlinedAt: !3534)
!3572 = !DILocation(line: 474, column: 23, scope: !3528, inlinedAt: !3532)
!3573 = !DILocation(line: 474, column: 29, scope: !3528, inlinedAt: !3532)
!3574 = !DILocation(line: 474, column: 36, scope: !3528, inlinedAt: !3532)
!3575 = !DILocation(line: 474, column: 9, scope: !3528, inlinedAt: !3532)
!3576 = !DILocation(line: 545, column: 4, scope: !3535, inlinedAt: !3508)
!3577 = !DILocation(line: 547, column: 25, scope: !3505, inlinedAt: !3508)
!3578 = !DILocation(line: 348, column: 7, scope: !3579, inlinedAt: !3526)
!3579 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 348, column: 6)
!3580 = !DILocation(line: 348, column: 6, scope: !3522, inlinedAt: !3526)
!3581 = !DILocation(line: 349, column: 3, scope: !3579, inlinedAt: !3526)
!3582 = !DILocation(line: 351, column: 6, scope: !3583, inlinedAt: !3526)
!3583 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 351, column: 6)
!3584 = !DILocation(line: 351, column: 11, scope: !3583, inlinedAt: !3526)
!3585 = !DILocation(line: 351, column: 6, scope: !3522, inlinedAt: !3526)
!3586 = !DILocation(line: 352, column: 3, scope: !3583, inlinedAt: !3526)
!3587 = !DILocation(line: 354, column: 32, scope: !3588, inlinedAt: !3526)
!3588 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 354, column: 6)
!3589 = !DILocation(line: 354, column: 37, scope: !3588, inlinedAt: !3526)
!3590 = !DILocation(line: 354, column: 42, scope: !3588, inlinedAt: !3526)
!3591 = !DILocation(line: 354, column: 45, scope: !3588, inlinedAt: !3526)
!3592 = !DILocation(line: 354, column: 50, scope: !3588, inlinedAt: !3526)
!3593 = !DILocation(line: 354, column: 6, scope: !3522, inlinedAt: !3526)
!3594 = !DILocation(line: 355, column: 3, scope: !3588, inlinedAt: !3526)
!3595 = !DILocation(line: 356, column: 32, scope: !3596, inlinedAt: !3526)
!3596 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 356, column: 6)
!3597 = !DILocation(line: 356, column: 37, scope: !3596, inlinedAt: !3526)
!3598 = !DILocation(line: 356, column: 43, scope: !3596, inlinedAt: !3526)
!3599 = !DILocation(line: 356, column: 46, scope: !3596, inlinedAt: !3526)
!3600 = !DILocation(line: 356, column: 51, scope: !3596, inlinedAt: !3526)
!3601 = !DILocation(line: 356, column: 6, scope: !3522, inlinedAt: !3526)
!3602 = !DILocation(line: 357, column: 3, scope: !3596, inlinedAt: !3526)
!3603 = !DILocation(line: 358, column: 6, scope: !3604, inlinedAt: !3526)
!3604 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 358, column: 6)
!3605 = !DILocation(line: 358, column: 11, scope: !3604, inlinedAt: !3526)
!3606 = !DILocation(line: 358, column: 6, scope: !3522, inlinedAt: !3526)
!3607 = !DILocation(line: 358, column: 26, scope: !3604, inlinedAt: !3526)
!3608 = !DILocation(line: 359, column: 6, scope: !3609, inlinedAt: !3526)
!3609 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 359, column: 6)
!3610 = !DILocation(line: 359, column: 11, scope: !3609, inlinedAt: !3526)
!3611 = !DILocation(line: 359, column: 6, scope: !3522, inlinedAt: !3526)
!3612 = !DILocation(line: 359, column: 26, scope: !3609, inlinedAt: !3526)
!3613 = !DILocation(line: 360, column: 6, scope: !3614, inlinedAt: !3526)
!3614 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 360, column: 6)
!3615 = !DILocation(line: 360, column: 11, scope: !3614, inlinedAt: !3526)
!3616 = !DILocation(line: 360, column: 6, scope: !3522, inlinedAt: !3526)
!3617 = !DILocation(line: 360, column: 26, scope: !3614, inlinedAt: !3526)
!3618 = !DILocation(line: 361, column: 6, scope: !3619, inlinedAt: !3526)
!3619 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 361, column: 6)
!3620 = !DILocation(line: 361, column: 11, scope: !3619, inlinedAt: !3526)
!3621 = !DILocation(line: 361, column: 6, scope: !3522, inlinedAt: !3526)
!3622 = !DILocation(line: 361, column: 26, scope: !3619, inlinedAt: !3526)
!3623 = !DILocation(line: 362, column: 6, scope: !3624, inlinedAt: !3526)
!3624 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 362, column: 6)
!3625 = !DILocation(line: 362, column: 11, scope: !3624, inlinedAt: !3526)
!3626 = !DILocation(line: 362, column: 6, scope: !3522, inlinedAt: !3526)
!3627 = !DILocation(line: 362, column: 26, scope: !3624, inlinedAt: !3526)
!3628 = !DILocation(line: 363, column: 6, scope: !3629, inlinedAt: !3526)
!3629 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 363, column: 6)
!3630 = !DILocation(line: 363, column: 11, scope: !3629, inlinedAt: !3526)
!3631 = !DILocation(line: 363, column: 6, scope: !3522, inlinedAt: !3526)
!3632 = !DILocation(line: 363, column: 26, scope: !3629, inlinedAt: !3526)
!3633 = !DILocation(line: 364, column: 6, scope: !3634, inlinedAt: !3526)
!3634 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 364, column: 6)
!3635 = !DILocation(line: 364, column: 11, scope: !3634, inlinedAt: !3526)
!3636 = !DILocation(line: 364, column: 6, scope: !3522, inlinedAt: !3526)
!3637 = !DILocation(line: 364, column: 26, scope: !3634, inlinedAt: !3526)
!3638 = !DILocation(line: 365, column: 6, scope: !3639, inlinedAt: !3526)
!3639 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 365, column: 6)
!3640 = !DILocation(line: 365, column: 11, scope: !3639, inlinedAt: !3526)
!3641 = !DILocation(line: 365, column: 6, scope: !3522, inlinedAt: !3526)
!3642 = !DILocation(line: 365, column: 26, scope: !3639, inlinedAt: !3526)
!3643 = !DILocation(line: 366, column: 6, scope: !3644, inlinedAt: !3526)
!3644 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 366, column: 6)
!3645 = !DILocation(line: 366, column: 11, scope: !3644, inlinedAt: !3526)
!3646 = !DILocation(line: 366, column: 6, scope: !3522, inlinedAt: !3526)
!3647 = !DILocation(line: 366, column: 26, scope: !3644, inlinedAt: !3526)
!3648 = !DILocation(line: 367, column: 6, scope: !3649, inlinedAt: !3526)
!3649 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 367, column: 6)
!3650 = !DILocation(line: 367, column: 11, scope: !3649, inlinedAt: !3526)
!3651 = !DILocation(line: 367, column: 6, scope: !3522, inlinedAt: !3526)
!3652 = !DILocation(line: 367, column: 26, scope: !3649, inlinedAt: !3526)
!3653 = !DILocation(line: 368, column: 6, scope: !3654, inlinedAt: !3526)
!3654 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 368, column: 6)
!3655 = !DILocation(line: 368, column: 11, scope: !3654, inlinedAt: !3526)
!3656 = !DILocation(line: 368, column: 6, scope: !3522, inlinedAt: !3526)
!3657 = !DILocation(line: 368, column: 26, scope: !3654, inlinedAt: !3526)
!3658 = !DILocation(line: 369, column: 6, scope: !3659, inlinedAt: !3526)
!3659 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 369, column: 6)
!3660 = !DILocation(line: 369, column: 11, scope: !3659, inlinedAt: !3526)
!3661 = !DILocation(line: 369, column: 6, scope: !3522, inlinedAt: !3526)
!3662 = !DILocation(line: 369, column: 26, scope: !3659, inlinedAt: !3526)
!3663 = !DILocation(line: 370, column: 6, scope: !3664, inlinedAt: !3526)
!3664 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 370, column: 6)
!3665 = !DILocation(line: 370, column: 11, scope: !3664, inlinedAt: !3526)
!3666 = !DILocation(line: 370, column: 6, scope: !3522, inlinedAt: !3526)
!3667 = !DILocation(line: 370, column: 26, scope: !3664, inlinedAt: !3526)
!3668 = !DILocation(line: 371, column: 6, scope: !3669, inlinedAt: !3526)
!3669 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 371, column: 6)
!3670 = !DILocation(line: 371, column: 11, scope: !3669, inlinedAt: !3526)
!3671 = !DILocation(line: 371, column: 6, scope: !3522, inlinedAt: !3526)
!3672 = !DILocation(line: 371, column: 26, scope: !3669, inlinedAt: !3526)
!3673 = !DILocation(line: 372, column: 6, scope: !3674, inlinedAt: !3526)
!3674 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 372, column: 6)
!3675 = !DILocation(line: 372, column: 11, scope: !3674, inlinedAt: !3526)
!3676 = !DILocation(line: 372, column: 6, scope: !3522, inlinedAt: !3526)
!3677 = !DILocation(line: 372, column: 26, scope: !3674, inlinedAt: !3526)
!3678 = !DILocation(line: 373, column: 6, scope: !3679, inlinedAt: !3526)
!3679 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 373, column: 6)
!3680 = !DILocation(line: 373, column: 11, scope: !3679, inlinedAt: !3526)
!3681 = !DILocation(line: 373, column: 6, scope: !3522, inlinedAt: !3526)
!3682 = !DILocation(line: 373, column: 26, scope: !3679, inlinedAt: !3526)
!3683 = !DILocation(line: 374, column: 6, scope: !3684, inlinedAt: !3526)
!3684 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 374, column: 6)
!3685 = !DILocation(line: 374, column: 11, scope: !3684, inlinedAt: !3526)
!3686 = !DILocation(line: 374, column: 6, scope: !3522, inlinedAt: !3526)
!3687 = !DILocation(line: 374, column: 26, scope: !3684, inlinedAt: !3526)
!3688 = !DILocation(line: 375, column: 6, scope: !3689, inlinedAt: !3526)
!3689 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 375, column: 6)
!3690 = !DILocation(line: 375, column: 11, scope: !3689, inlinedAt: !3526)
!3691 = !DILocation(line: 375, column: 6, scope: !3522, inlinedAt: !3526)
!3692 = !DILocation(line: 375, column: 27, scope: !3689, inlinedAt: !3526)
!3693 = !DILocation(line: 376, column: 6, scope: !3694, inlinedAt: !3526)
!3694 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 376, column: 6)
!3695 = !DILocation(line: 376, column: 11, scope: !3694, inlinedAt: !3526)
!3696 = !DILocation(line: 376, column: 6, scope: !3522, inlinedAt: !3526)
!3697 = !DILocation(line: 376, column: 32, scope: !3694, inlinedAt: !3526)
!3698 = !DILocation(line: 377, column: 6, scope: !3699, inlinedAt: !3526)
!3699 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 377, column: 6)
!3700 = !DILocation(line: 377, column: 11, scope: !3699, inlinedAt: !3526)
!3701 = !DILocation(line: 377, column: 6, scope: !3522, inlinedAt: !3526)
!3702 = !DILocation(line: 377, column: 32, scope: !3699, inlinedAt: !3526)
!3703 = !DILocation(line: 378, column: 6, scope: !3704, inlinedAt: !3526)
!3704 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 378, column: 6)
!3705 = !DILocation(line: 378, column: 11, scope: !3704, inlinedAt: !3526)
!3706 = !DILocation(line: 378, column: 6, scope: !3522, inlinedAt: !3526)
!3707 = !DILocation(line: 378, column: 32, scope: !3704, inlinedAt: !3526)
!3708 = !DILocation(line: 379, column: 6, scope: !3709, inlinedAt: !3526)
!3709 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 379, column: 6)
!3710 = !DILocation(line: 379, column: 11, scope: !3709, inlinedAt: !3526)
!3711 = !DILocation(line: 379, column: 6, scope: !3522, inlinedAt: !3526)
!3712 = !DILocation(line: 379, column: 33, scope: !3709, inlinedAt: !3526)
!3713 = !DILocation(line: 380, column: 6, scope: !3714, inlinedAt: !3526)
!3714 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 380, column: 6)
!3715 = !DILocation(line: 380, column: 11, scope: !3714, inlinedAt: !3526)
!3716 = !DILocation(line: 380, column: 6, scope: !3522, inlinedAt: !3526)
!3717 = !DILocation(line: 380, column: 33, scope: !3714, inlinedAt: !3526)
!3718 = !DILocation(line: 381, column: 6, scope: !3719, inlinedAt: !3526)
!3719 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 381, column: 6)
!3720 = !DILocation(line: 381, column: 11, scope: !3719, inlinedAt: !3526)
!3721 = !DILocation(line: 381, column: 6, scope: !3522, inlinedAt: !3526)
!3722 = !DILocation(line: 381, column: 33, scope: !3719, inlinedAt: !3526)
!3723 = !DILocation(line: 382, column: 2, scope: !3724, inlinedAt: !3526)
!3724 = distinct !DILexicalBlock(scope: !3725, file: !90, line: 382, column: 2)
!3725 = distinct !DILexicalBlock(scope: !3522, file: !90, line: 382, column: 2)
!3726 = !{i32 -2144636626, i32 -2144636597, i32 -2144636551, i32 -2144636493, i32 -2144636439, i32 -2144636385, i32 -2144636330, i32 -2144636299}
!3727 = !DILocation(line: 382, column: 2, scope: !3728, inlinedAt: !3526)
!3728 = distinct !DILexicalBlock(scope: !3729, file: !90, line: 382, column: 2)
!3729 = distinct !DILexicalBlock(scope: !3725, file: !90, line: 382, column: 2)
!3730 = !{i32 -2144635856, i32 -2144635849, i32 -2144635795, i32 -2144635764, i32 -2144635734}
!3731 = !DILocation(line: 382, column: 2, scope: !3729, inlinedAt: !3526)
!3732 = !DILocation(line: 386, column: 1, scope: !3522, inlinedAt: !3526)
!3733 = !DILocation(line: 547, column: 9, scope: !3505, inlinedAt: !3508)
!3734 = !DILocation(line: 549, column: 8, scope: !3735, inlinedAt: !3508)
!3735 = distinct !DILexicalBlock(scope: !3505, file: !90, line: 549, column: 7)
!3736 = !DILocation(line: 549, column: 7, scope: !3505, inlinedAt: !3508)
!3737 = !DILocation(line: 550, column: 4, scope: !3735, inlinedAt: !3508)
!3738 = !DILocation(line: 553, column: 33, scope: !3505, inlinedAt: !3508)
!3739 = !DILocation(line: 325, column: 6, scope: !3740, inlinedAt: !3520)
!3740 = distinct !DILexicalBlock(scope: !3516, file: !90, line: 325, column: 6)
!3741 = !DILocation(line: 325, column: 6, scope: !3516, inlinedAt: !3520)
!3742 = !DILocation(line: 326, column: 3, scope: !3740, inlinedAt: !3520)
!3743 = !DILocation(line: 332, column: 9, scope: !3516, inlinedAt: !3520)
!3744 = !DILocation(line: 332, column: 15, scope: !3516, inlinedAt: !3520)
!3745 = !DILocation(line: 332, column: 2, scope: !3516, inlinedAt: !3520)
!3746 = !DILocation(line: 336, column: 1, scope: !3516, inlinedAt: !3520)
!3747 = !DILocation(line: 553, column: 5, scope: !3505, inlinedAt: !3508)
!3748 = !DILocation(line: 553, column: 41, scope: !3505, inlinedAt: !3508)
!3749 = !DILocation(line: 554, column: 5, scope: !3505, inlinedAt: !3508)
!3750 = !DILocation(line: 554, column: 12, scope: !3505, inlinedAt: !3508)
!3751 = !DILocation(line: 448, column: 31, scope: !3500, inlinedAt: !3504)
!3752 = !DILocation(line: 448, column: 34, scope: !3500, inlinedAt: !3504)
!3753 = !DILocation(line: 448, column: 14, scope: !3500, inlinedAt: !3504)
!3754 = !DILocation(line: 450, column: 22, scope: !3500, inlinedAt: !3504)
!3755 = !DILocation(line: 450, column: 25, scope: !3500, inlinedAt: !3504)
!3756 = !DILocation(line: 450, column: 30, scope: !3500, inlinedAt: !3504)
!3757 = !DILocation(line: 450, column: 36, scope: !3500, inlinedAt: !3504)
!3758 = !DILocation(line: 450, column: 8, scope: !3500, inlinedAt: !3504)
!3759 = !DILocation(line: 450, column: 6, scope: !3500, inlinedAt: !3504)
!3760 = !DILocation(line: 451, column: 9, scope: !3500, inlinedAt: !3504)
!3761 = !DILocation(line: 552, column: 3, scope: !3505, inlinedAt: !3508)
!3762 = !DILocation(line: 557, column: 19, scope: !3507, inlinedAt: !3508)
!3763 = !DILocation(line: 557, column: 25, scope: !3507, inlinedAt: !3508)
!3764 = !DILocation(line: 557, column: 9, scope: !3507, inlinedAt: !3508)
!3765 = !DILocation(line: 557, column: 2, scope: !3507, inlinedAt: !3508)
!3766 = !DILocation(line: 558, column: 1, scope: !3507, inlinedAt: !3508)
!3767 = !DILocation(line: 664, column: 2, scope: !3496)
!3768 = distinct !DISubprogram(name: "nand_set_manufacturer_data", scope: !74, file: !74, line: 1167, type: !3769, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3769 = !DISubroutineType(types: !3770)
!3770 = !{null, !145, !99}
!3771 = !DILocalVariable(name: "chip", arg: 1, scope: !3768, file: !74, line: 1167, type: !145)
!3772 = !DILocation(line: 1167, column: 65, scope: !3768)
!3773 = !DILocalVariable(name: "priv", arg: 2, scope: !3768, file: !74, line: 1168, type: !99)
!3774 = !DILocation(line: 1168, column: 18, scope: !3768)
!3775 = !DILocation(line: 1170, column: 28, scope: !3768)
!3776 = !DILocation(line: 1170, column: 2, scope: !3768)
!3777 = !DILocation(line: 1170, column: 8, scope: !3768)
!3778 = !DILocation(line: 1170, column: 21, scope: !3768)
!3779 = !DILocation(line: 1170, column: 26, scope: !3768)
!3780 = !DILocation(line: 1171, column: 1, scope: !3768)
!3781 = distinct !DISubprogram(name: "h27ucg8t2atrbc_choose_interface_config", scope: !3, file: !3, line: 681, type: !2492, scopeLine: 683, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3782 = !DILocalVariable(name: "chip", arg: 1, scope: !3781, file: !3, line: 681, type: !145)
!3783 = !DILocation(line: 681, column: 58, scope: !3781)
!3784 = !DILocalVariable(name: "iface", arg: 2, scope: !3781, file: !3, line: 682, type: !2494)
!3785 = !DILocation(line: 682, column: 42, scope: !3781)
!3786 = !DILocation(line: 684, column: 29, scope: !3781)
!3787 = !DILocation(line: 684, column: 35, scope: !3781)
!3788 = !DILocation(line: 684, column: 2, scope: !3781)
!3789 = !DILocation(line: 686, column: 38, scope: !3781)
!3790 = !DILocation(line: 686, column: 44, scope: !3781)
!3791 = !DILocation(line: 686, column: 9, scope: !3781)
!3792 = !DILocation(line: 686, column: 2, scope: !3781)
!3793 = distinct !DISubprogram(name: "hynix_nand_rr_init", scope: !3, file: !3, line: 372, type: !2478, scopeLine: 373, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3794 = !DILocalVariable(name: "chip", arg: 1, scope: !3793, file: !3, line: 372, type: !145)
!3795 = !DILocation(line: 372, column: 49, scope: !3793)
!3796 = !DILocalVariable(name: "i", scope: !3793, file: !3, line: 374, type: !100)
!3797 = !DILocation(line: 374, column: 6, scope: !3793)
!3798 = !DILocalVariable(name: "ret", scope: !3793, file: !3, line: 374, type: !100)
!3799 = !DILocation(line: 374, column: 9, scope: !3793)
!3800 = !DILocalVariable(name: "valid_jedecid", scope: !3793, file: !3, line: 375, type: !344)
!3801 = !DILocation(line: 375, column: 7, scope: !3793)
!3802 = !DILocation(line: 377, column: 47, scope: !3793)
!3803 = !DILocation(line: 377, column: 18, scope: !3793)
!3804 = !DILocation(line: 377, column: 16, scope: !3793)
!3805 = !DILocation(line: 383, column: 6, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 383, column: 6)
!3807 = !DILocation(line: 383, column: 6, scope: !3793)
!3808 = !DILocalVariable(name: "nand_tech", scope: !3809, file: !3, line: 384, type: !110)
!3809 = distinct !DILexicalBlock(scope: !3806, file: !3, line: 383, column: 21)
!3810 = !DILocation(line: 384, column: 6, scope: !3809)
!3811 = !DILocation(line: 384, column: 18, scope: !3809)
!3812 = !DILocation(line: 384, column: 24, scope: !3809)
!3813 = !DILocation(line: 384, column: 27, scope: !3809)
!3814 = !DILocation(line: 384, column: 35, scope: !3809)
!3815 = !DILocation(line: 387, column: 7, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3809, file: !3, line: 387, column: 7)
!3817 = !DILocation(line: 387, column: 17, scope: !3816)
!3818 = !DILocation(line: 387, column: 7, scope: !3809)
!3819 = !DILocation(line: 388, column: 11, scope: !3820)
!3820 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 388, column: 4)
!3821 = distinct !DILexicalBlock(scope: !3816, file: !3, line: 387, column: 23)
!3822 = !DILocation(line: 388, column: 9, scope: !3820)
!3823 = !DILocation(line: 388, column: 16, scope: !3824)
!3824 = distinct !DILexicalBlock(scope: !3820, file: !3, line: 388, column: 4)
!3825 = !DILocation(line: 388, column: 18, scope: !3824)
!3826 = !DILocation(line: 388, column: 4, scope: !3820)
!3827 = !DILocation(line: 394, column: 34, scope: !3828)
!3828 = distinct !DILexicalBlock(scope: !3824, file: !3, line: 389, column: 14)
!3829 = !DILocation(line: 394, column: 11, scope: !3828)
!3830 = !DILocation(line: 394, column: 9, scope: !3828)
!3831 = !DILocation(line: 396, column: 10, scope: !3832)
!3832 = distinct !DILexicalBlock(scope: !3828, file: !3, line: 396, column: 9)
!3833 = !DILocation(line: 396, column: 9, scope: !3828)
!3834 = !DILocation(line: 397, column: 6, scope: !3832)
!3835 = !DILocation(line: 398, column: 4, scope: !3828)
!3836 = !DILocation(line: 389, column: 10, scope: !3824)
!3837 = !DILocation(line: 388, column: 4, scope: !3824)
!3838 = distinct !{!3838, !3826, !3839}
!3839 = !DILocation(line: 398, column: 4, scope: !3820)
!3840 = !DILocation(line: 399, column: 3, scope: !3821)
!3841 = !DILocation(line: 400, column: 2, scope: !3809)
!3842 = !DILocation(line: 402, column: 6, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3793, file: !3, line: 402, column: 6)
!3844 = !DILocation(line: 402, column: 6, scope: !3793)
!3845 = !DILocation(line: 403, column: 3, scope: !3843)
!3846 = !DILocation(line: 405, column: 2, scope: !3793)
!3847 = distinct !DISubprogram(name: "get_order", scope: !3848, file: !3848, line: 29, type: !3849, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3848 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3849 = !DISubroutineType(types: !3850)
!3850 = !{!100, !230}
!3851 = !DILocalVariable(name: "x", arg: 1, scope: !3852, file: !3853, line: 366, type: !164)
!3852 = distinct !DISubprogram(name: "fls64", scope: !3853, file: !3853, line: 366, type: !3854, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3853 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3854 = !DISubroutineType(types: !3855)
!3855 = !{!100, !164}
!3856 = !DILocation(line: 366, column: 40, scope: !3852, inlinedAt: !3857)
!3857 = distinct !DILocation(line: 46, column: 9, scope: !3847)
!3858 = !DILocalVariable(name: "bitpos", scope: !3852, file: !3853, line: 368, type: !100)
!3859 = !DILocation(line: 368, column: 6, scope: !3852, inlinedAt: !3857)
!3860 = !DILocalVariable(name: "size", arg: 1, scope: !3847, file: !3848, line: 29, type: !230)
!3861 = !DILocation(line: 29, column: 63, scope: !3847)
!3862 = !DILocation(line: 31, column: 27, scope: !3863)
!3863 = distinct !DILexicalBlock(scope: !3847, file: !3848, line: 31, column: 6)
!3864 = !DILocation(line: 31, column: 6, scope: !3863)
!3865 = !DILocation(line: 31, column: 6, scope: !3847)
!3866 = !DILocation(line: 32, column: 8, scope: !3867)
!3867 = distinct !DILexicalBlock(scope: !3868, file: !3848, line: 32, column: 7)
!3868 = distinct !DILexicalBlock(scope: !3863, file: !3848, line: 31, column: 34)
!3869 = !DILocation(line: 32, column: 7, scope: !3868)
!3870 = !DILocation(line: 33, column: 4, scope: !3867)
!3871 = !DILocation(line: 35, column: 7, scope: !3872)
!3872 = distinct !DILexicalBlock(scope: !3868, file: !3848, line: 35, column: 7)
!3873 = !DILocation(line: 35, column: 12, scope: !3872)
!3874 = !DILocation(line: 35, column: 7, scope: !3868)
!3875 = !DILocation(line: 36, column: 4, scope: !3872)
!3876 = !DILocation(line: 38, column: 10, scope: !3868)
!3877 = !DILocation(line: 38, column: 28, scope: !3868)
!3878 = !DILocation(line: 38, column: 41, scope: !3868)
!3879 = !DILocation(line: 38, column: 3, scope: !3868)
!3880 = !DILocation(line: 41, column: 6, scope: !3847)
!3881 = !DILocation(line: 42, column: 7, scope: !3847)
!3882 = !DILocation(line: 46, column: 15, scope: !3847)
!3883 = !DILocation(line: 374, column: 2, scope: !3852, inlinedAt: !3857)
!3884 = !DILocation(line: 376, column: 14, scope: !3852, inlinedAt: !3857)
!3885 = !{i32 318686}
!3886 = !DILocation(line: 377, column: 9, scope: !3852, inlinedAt: !3857)
!3887 = !DILocation(line: 377, column: 16, scope: !3852, inlinedAt: !3857)
!3888 = !DILocation(line: 46, column: 2, scope: !3847)
!3889 = !DILocation(line: 48, column: 1, scope: !3847)
!3890 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3891, file: !3891, line: 30, type: !3892, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3891 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3892 = !DISubroutineType(types: !3893)
!3893 = !{!100, !163}
!3894 = !DILocation(line: 366, column: 40, scope: !3852, inlinedAt: !3895)
!3895 = distinct !DILocation(line: 32, column: 9, scope: !3890)
!3896 = !DILocation(line: 368, column: 6, scope: !3852, inlinedAt: !3895)
!3897 = !DILocalVariable(name: "n", arg: 1, scope: !3890, file: !3891, line: 30, type: !163)
!3898 = !DILocation(line: 30, column: 21, scope: !3890)
!3899 = !DILocation(line: 32, column: 15, scope: !3890)
!3900 = !DILocation(line: 374, column: 2, scope: !3852, inlinedAt: !3895)
!3901 = !DILocation(line: 376, column: 14, scope: !3852, inlinedAt: !3895)
!3902 = !DILocation(line: 377, column: 9, scope: !3852, inlinedAt: !3895)
!3903 = !DILocation(line: 377, column: 16, scope: !3852, inlinedAt: !3895)
!3904 = !DILocation(line: 32, column: 18, scope: !3890)
!3905 = !DILocation(line: 32, column: 2, scope: !3890)
!3906 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1351, file: !1351, line: 137, type: !3907, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3907 = !DISubroutineType(types: !3908)
!3908 = !{!99, !1282, !1623, !249, !97}
!3909 = !DILocalVariable(name: "s", arg: 1, scope: !3906, file: !1351, line: 137, type: !1282)
!3910 = !DILocation(line: 137, column: 54, scope: !3906)
!3911 = !DILocalVariable(name: "object", arg: 2, scope: !3906, file: !1351, line: 137, type: !1623)
!3912 = !DILocation(line: 137, column: 69, scope: !3906)
!3913 = !DILocalVariable(name: "size", arg: 3, scope: !3906, file: !1351, line: 138, type: !249)
!3914 = !DILocation(line: 138, column: 12, scope: !3906)
!3915 = !DILocalVariable(name: "flags", arg: 4, scope: !3906, file: !1351, line: 138, type: !97)
!3916 = !DILocation(line: 138, column: 24, scope: !3906)
!3917 = !DILocation(line: 140, column: 17, scope: !3906)
!3918 = !DILocation(line: 140, column: 2, scope: !3906)
!3919 = distinct !DISubprogram(name: "hynix_mlc_1xnm_rr_init", scope: !3, file: !3, line: 287, type: !3920, scopeLine: 289, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!3920 = !DISubroutineType(types: !3921)
!3921 = !{!100, !145, !3922}
!3922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!3923 = !DILocation(line: 445, column: 72, scope: !3500, inlinedAt: !3924)
!3924 = distinct !DILocation(line: 552, column: 10, scope: !3505, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 296, column: 8, scope: !3919)
!3926 = !DILocation(line: 446, column: 9, scope: !3500, inlinedAt: !3924)
!3927 = !DILocation(line: 446, column: 23, scope: !3500, inlinedAt: !3924)
!3928 = !DILocation(line: 448, column: 8, scope: !3500, inlinedAt: !3924)
!3929 = !DILocation(line: 318, column: 67, scope: !3516, inlinedAt: !3930)
!3930 = distinct !DILocation(line: 553, column: 20, scope: !3505, inlinedAt: !3925)
!3931 = !DILocation(line: 346, column: 58, scope: !3522, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 547, column: 11, scope: !3505, inlinedAt: !3925)
!3933 = !DILocation(line: 472, column: 28, scope: !3528, inlinedAt: !3934)
!3934 = distinct !DILocation(line: 481, column: 9, scope: !3533, inlinedAt: !3935)
!3935 = distinct !DILocation(line: 545, column: 11, scope: !3535, inlinedAt: !3925)
!3936 = !DILocation(line: 472, column: 40, scope: !3528, inlinedAt: !3934)
!3937 = !DILocation(line: 472, column: 60, scope: !3528, inlinedAt: !3934)
!3938 = !DILocation(line: 478, column: 51, scope: !3533, inlinedAt: !3935)
!3939 = !DILocation(line: 478, column: 63, scope: !3533, inlinedAt: !3935)
!3940 = !DILocation(line: 480, column: 15, scope: !3533, inlinedAt: !3935)
!3941 = !DILocation(line: 538, column: 45, scope: !3507, inlinedAt: !3925)
!3942 = !DILocation(line: 538, column: 57, scope: !3507, inlinedAt: !3925)
!3943 = !DILocation(line: 542, column: 16, scope: !3505, inlinedAt: !3925)
!3944 = !DILocalVariable(name: "chip", arg: 1, scope: !3919, file: !3, line: 287, type: !145)
!3945 = !DILocation(line: 287, column: 53, scope: !3919)
!3946 = !DILocalVariable(name: "info", arg: 2, scope: !3919, file: !3, line: 288, type: !3922)
!3947 = !DILocation(line: 288, column: 42, scope: !3919)
!3948 = !DILocalVariable(name: "hynix", scope: !3919, file: !3, line: 290, type: !2945)
!3949 = !DILocation(line: 290, column: 21, scope: !3919)
!3950 = !DILocation(line: 290, column: 56, scope: !3919)
!3951 = !DILocation(line: 290, column: 29, scope: !3919)
!3952 = !DILocalVariable(name: "rr", scope: !3919, file: !3, line: 291, type: !3953)
!3953 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2951, size: 64)
!3954 = !DILocation(line: 291, column: 27, scope: !3919)
!3955 = !DILocalVariable(name: "ret", scope: !3919, file: !3, line: 292, type: !100)
!3956 = !DILocation(line: 292, column: 6, scope: !3919)
!3957 = !DILocalVariable(name: "i", scope: !3919, file: !3, line: 292, type: !100)
!3958 = !DILocation(line: 292, column: 11, scope: !3919)
!3959 = !DILocalVariable(name: "j", scope: !3919, file: !3, line: 292, type: !100)
!3960 = !DILocation(line: 292, column: 14, scope: !3919)
!3961 = !DILocalVariable(name: "nregs", scope: !3919, file: !3, line: 293, type: !110)
!3962 = !DILocation(line: 293, column: 5, scope: !3919)
!3963 = !DILocalVariable(name: "nmodes", scope: !3919, file: !3, line: 293, type: !110)
!3964 = !DILocation(line: 293, column: 12, scope: !3919)
!3965 = !DILocalVariable(name: "buf", scope: !3919, file: !3, line: 294, type: !2571)
!3966 = !DILocation(line: 294, column: 6, scope: !3919)
!3967 = !DILocation(line: 296, column: 16, scope: !3919)
!3968 = !DILocation(line: 296, column: 22, scope: !3919)
!3969 = !DILocation(line: 540, column: 27, scope: !3506, inlinedAt: !3925)
!3970 = !DILocation(line: 540, column: 6, scope: !3506, inlinedAt: !3925)
!3971 = !DILocation(line: 540, column: 6, scope: !3507, inlinedAt: !3925)
!3972 = !DILocation(line: 544, column: 7, scope: !3535, inlinedAt: !3925)
!3973 = !DILocation(line: 544, column: 12, scope: !3535, inlinedAt: !3925)
!3974 = !DILocation(line: 544, column: 7, scope: !3505, inlinedAt: !3925)
!3975 = !DILocation(line: 545, column: 25, scope: !3535, inlinedAt: !3925)
!3976 = !DILocation(line: 545, column: 31, scope: !3535, inlinedAt: !3925)
!3977 = !DILocation(line: 480, column: 33, scope: !3533, inlinedAt: !3935)
!3978 = !DILocation(line: 480, column: 23, scope: !3533, inlinedAt: !3935)
!3979 = !DILocation(line: 481, column: 29, scope: !3533, inlinedAt: !3935)
!3980 = !DILocation(line: 481, column: 35, scope: !3533, inlinedAt: !3935)
!3981 = !DILocation(line: 481, column: 42, scope: !3533, inlinedAt: !3935)
!3982 = !DILocation(line: 474, column: 23, scope: !3528, inlinedAt: !3934)
!3983 = !DILocation(line: 474, column: 29, scope: !3528, inlinedAt: !3934)
!3984 = !DILocation(line: 474, column: 36, scope: !3528, inlinedAt: !3934)
!3985 = !DILocation(line: 474, column: 9, scope: !3528, inlinedAt: !3934)
!3986 = !DILocation(line: 545, column: 4, scope: !3535, inlinedAt: !3925)
!3987 = !DILocation(line: 547, column: 25, scope: !3505, inlinedAt: !3925)
!3988 = !DILocation(line: 348, column: 7, scope: !3579, inlinedAt: !3932)
!3989 = !DILocation(line: 348, column: 6, scope: !3522, inlinedAt: !3932)
!3990 = !DILocation(line: 349, column: 3, scope: !3579, inlinedAt: !3932)
!3991 = !DILocation(line: 351, column: 6, scope: !3583, inlinedAt: !3932)
!3992 = !DILocation(line: 351, column: 11, scope: !3583, inlinedAt: !3932)
!3993 = !DILocation(line: 351, column: 6, scope: !3522, inlinedAt: !3932)
!3994 = !DILocation(line: 352, column: 3, scope: !3583, inlinedAt: !3932)
!3995 = !DILocation(line: 354, column: 32, scope: !3588, inlinedAt: !3932)
!3996 = !DILocation(line: 354, column: 37, scope: !3588, inlinedAt: !3932)
!3997 = !DILocation(line: 354, column: 42, scope: !3588, inlinedAt: !3932)
!3998 = !DILocation(line: 354, column: 45, scope: !3588, inlinedAt: !3932)
!3999 = !DILocation(line: 354, column: 50, scope: !3588, inlinedAt: !3932)
!4000 = !DILocation(line: 354, column: 6, scope: !3522, inlinedAt: !3932)
!4001 = !DILocation(line: 355, column: 3, scope: !3588, inlinedAt: !3932)
!4002 = !DILocation(line: 356, column: 32, scope: !3596, inlinedAt: !3932)
!4003 = !DILocation(line: 356, column: 37, scope: !3596, inlinedAt: !3932)
!4004 = !DILocation(line: 356, column: 43, scope: !3596, inlinedAt: !3932)
!4005 = !DILocation(line: 356, column: 46, scope: !3596, inlinedAt: !3932)
!4006 = !DILocation(line: 356, column: 51, scope: !3596, inlinedAt: !3932)
!4007 = !DILocation(line: 356, column: 6, scope: !3522, inlinedAt: !3932)
!4008 = !DILocation(line: 357, column: 3, scope: !3596, inlinedAt: !3932)
!4009 = !DILocation(line: 358, column: 6, scope: !3604, inlinedAt: !3932)
!4010 = !DILocation(line: 358, column: 11, scope: !3604, inlinedAt: !3932)
!4011 = !DILocation(line: 358, column: 6, scope: !3522, inlinedAt: !3932)
!4012 = !DILocation(line: 358, column: 26, scope: !3604, inlinedAt: !3932)
!4013 = !DILocation(line: 359, column: 6, scope: !3609, inlinedAt: !3932)
!4014 = !DILocation(line: 359, column: 11, scope: !3609, inlinedAt: !3932)
!4015 = !DILocation(line: 359, column: 6, scope: !3522, inlinedAt: !3932)
!4016 = !DILocation(line: 359, column: 26, scope: !3609, inlinedAt: !3932)
!4017 = !DILocation(line: 360, column: 6, scope: !3614, inlinedAt: !3932)
!4018 = !DILocation(line: 360, column: 11, scope: !3614, inlinedAt: !3932)
!4019 = !DILocation(line: 360, column: 6, scope: !3522, inlinedAt: !3932)
!4020 = !DILocation(line: 360, column: 26, scope: !3614, inlinedAt: !3932)
!4021 = !DILocation(line: 361, column: 6, scope: !3619, inlinedAt: !3932)
!4022 = !DILocation(line: 361, column: 11, scope: !3619, inlinedAt: !3932)
!4023 = !DILocation(line: 361, column: 6, scope: !3522, inlinedAt: !3932)
!4024 = !DILocation(line: 361, column: 26, scope: !3619, inlinedAt: !3932)
!4025 = !DILocation(line: 362, column: 6, scope: !3624, inlinedAt: !3932)
!4026 = !DILocation(line: 362, column: 11, scope: !3624, inlinedAt: !3932)
!4027 = !DILocation(line: 362, column: 6, scope: !3522, inlinedAt: !3932)
!4028 = !DILocation(line: 362, column: 26, scope: !3624, inlinedAt: !3932)
!4029 = !DILocation(line: 363, column: 6, scope: !3629, inlinedAt: !3932)
!4030 = !DILocation(line: 363, column: 11, scope: !3629, inlinedAt: !3932)
!4031 = !DILocation(line: 363, column: 6, scope: !3522, inlinedAt: !3932)
!4032 = !DILocation(line: 363, column: 26, scope: !3629, inlinedAt: !3932)
!4033 = !DILocation(line: 364, column: 6, scope: !3634, inlinedAt: !3932)
!4034 = !DILocation(line: 364, column: 11, scope: !3634, inlinedAt: !3932)
!4035 = !DILocation(line: 364, column: 6, scope: !3522, inlinedAt: !3932)
!4036 = !DILocation(line: 364, column: 26, scope: !3634, inlinedAt: !3932)
!4037 = !DILocation(line: 365, column: 6, scope: !3639, inlinedAt: !3932)
!4038 = !DILocation(line: 365, column: 11, scope: !3639, inlinedAt: !3932)
!4039 = !DILocation(line: 365, column: 6, scope: !3522, inlinedAt: !3932)
!4040 = !DILocation(line: 365, column: 26, scope: !3639, inlinedAt: !3932)
!4041 = !DILocation(line: 366, column: 6, scope: !3644, inlinedAt: !3932)
!4042 = !DILocation(line: 366, column: 11, scope: !3644, inlinedAt: !3932)
!4043 = !DILocation(line: 366, column: 6, scope: !3522, inlinedAt: !3932)
!4044 = !DILocation(line: 366, column: 26, scope: !3644, inlinedAt: !3932)
!4045 = !DILocation(line: 367, column: 6, scope: !3649, inlinedAt: !3932)
!4046 = !DILocation(line: 367, column: 11, scope: !3649, inlinedAt: !3932)
!4047 = !DILocation(line: 367, column: 6, scope: !3522, inlinedAt: !3932)
!4048 = !DILocation(line: 367, column: 26, scope: !3649, inlinedAt: !3932)
!4049 = !DILocation(line: 368, column: 6, scope: !3654, inlinedAt: !3932)
!4050 = !DILocation(line: 368, column: 11, scope: !3654, inlinedAt: !3932)
!4051 = !DILocation(line: 368, column: 6, scope: !3522, inlinedAt: !3932)
!4052 = !DILocation(line: 368, column: 26, scope: !3654, inlinedAt: !3932)
!4053 = !DILocation(line: 369, column: 6, scope: !3659, inlinedAt: !3932)
!4054 = !DILocation(line: 369, column: 11, scope: !3659, inlinedAt: !3932)
!4055 = !DILocation(line: 369, column: 6, scope: !3522, inlinedAt: !3932)
!4056 = !DILocation(line: 369, column: 26, scope: !3659, inlinedAt: !3932)
!4057 = !DILocation(line: 370, column: 6, scope: !3664, inlinedAt: !3932)
!4058 = !DILocation(line: 370, column: 11, scope: !3664, inlinedAt: !3932)
!4059 = !DILocation(line: 370, column: 6, scope: !3522, inlinedAt: !3932)
!4060 = !DILocation(line: 370, column: 26, scope: !3664, inlinedAt: !3932)
!4061 = !DILocation(line: 371, column: 6, scope: !3669, inlinedAt: !3932)
!4062 = !DILocation(line: 371, column: 11, scope: !3669, inlinedAt: !3932)
!4063 = !DILocation(line: 371, column: 6, scope: !3522, inlinedAt: !3932)
!4064 = !DILocation(line: 371, column: 26, scope: !3669, inlinedAt: !3932)
!4065 = !DILocation(line: 372, column: 6, scope: !3674, inlinedAt: !3932)
!4066 = !DILocation(line: 372, column: 11, scope: !3674, inlinedAt: !3932)
!4067 = !DILocation(line: 372, column: 6, scope: !3522, inlinedAt: !3932)
!4068 = !DILocation(line: 372, column: 26, scope: !3674, inlinedAt: !3932)
!4069 = !DILocation(line: 373, column: 6, scope: !3679, inlinedAt: !3932)
!4070 = !DILocation(line: 373, column: 11, scope: !3679, inlinedAt: !3932)
!4071 = !DILocation(line: 373, column: 6, scope: !3522, inlinedAt: !3932)
!4072 = !DILocation(line: 373, column: 26, scope: !3679, inlinedAt: !3932)
!4073 = !DILocation(line: 374, column: 6, scope: !3684, inlinedAt: !3932)
!4074 = !DILocation(line: 374, column: 11, scope: !3684, inlinedAt: !3932)
!4075 = !DILocation(line: 374, column: 6, scope: !3522, inlinedAt: !3932)
!4076 = !DILocation(line: 374, column: 26, scope: !3684, inlinedAt: !3932)
!4077 = !DILocation(line: 375, column: 6, scope: !3689, inlinedAt: !3932)
!4078 = !DILocation(line: 375, column: 11, scope: !3689, inlinedAt: !3932)
!4079 = !DILocation(line: 375, column: 6, scope: !3522, inlinedAt: !3932)
!4080 = !DILocation(line: 375, column: 27, scope: !3689, inlinedAt: !3932)
!4081 = !DILocation(line: 376, column: 6, scope: !3694, inlinedAt: !3932)
!4082 = !DILocation(line: 376, column: 11, scope: !3694, inlinedAt: !3932)
!4083 = !DILocation(line: 376, column: 6, scope: !3522, inlinedAt: !3932)
!4084 = !DILocation(line: 376, column: 32, scope: !3694, inlinedAt: !3932)
!4085 = !DILocation(line: 377, column: 6, scope: !3699, inlinedAt: !3932)
!4086 = !DILocation(line: 377, column: 11, scope: !3699, inlinedAt: !3932)
!4087 = !DILocation(line: 377, column: 6, scope: !3522, inlinedAt: !3932)
!4088 = !DILocation(line: 377, column: 32, scope: !3699, inlinedAt: !3932)
!4089 = !DILocation(line: 378, column: 6, scope: !3704, inlinedAt: !3932)
!4090 = !DILocation(line: 378, column: 11, scope: !3704, inlinedAt: !3932)
!4091 = !DILocation(line: 378, column: 6, scope: !3522, inlinedAt: !3932)
!4092 = !DILocation(line: 378, column: 32, scope: !3704, inlinedAt: !3932)
!4093 = !DILocation(line: 379, column: 6, scope: !3709, inlinedAt: !3932)
!4094 = !DILocation(line: 379, column: 11, scope: !3709, inlinedAt: !3932)
!4095 = !DILocation(line: 379, column: 6, scope: !3522, inlinedAt: !3932)
!4096 = !DILocation(line: 379, column: 33, scope: !3709, inlinedAt: !3932)
!4097 = !DILocation(line: 380, column: 6, scope: !3714, inlinedAt: !3932)
!4098 = !DILocation(line: 380, column: 11, scope: !3714, inlinedAt: !3932)
!4099 = !DILocation(line: 380, column: 6, scope: !3522, inlinedAt: !3932)
!4100 = !DILocation(line: 380, column: 33, scope: !3714, inlinedAt: !3932)
!4101 = !DILocation(line: 381, column: 6, scope: !3719, inlinedAt: !3932)
!4102 = !DILocation(line: 381, column: 11, scope: !3719, inlinedAt: !3932)
!4103 = !DILocation(line: 381, column: 6, scope: !3522, inlinedAt: !3932)
!4104 = !DILocation(line: 381, column: 33, scope: !3719, inlinedAt: !3932)
!4105 = !DILocation(line: 382, column: 2, scope: !3724, inlinedAt: !3932)
!4106 = !DILocation(line: 382, column: 2, scope: !3728, inlinedAt: !3932)
!4107 = !DILocation(line: 382, column: 2, scope: !3729, inlinedAt: !3932)
!4108 = !DILocation(line: 386, column: 1, scope: !3522, inlinedAt: !3932)
!4109 = !DILocation(line: 547, column: 9, scope: !3505, inlinedAt: !3925)
!4110 = !DILocation(line: 549, column: 8, scope: !3735, inlinedAt: !3925)
!4111 = !DILocation(line: 549, column: 7, scope: !3505, inlinedAt: !3925)
!4112 = !DILocation(line: 550, column: 4, scope: !3735, inlinedAt: !3925)
!4113 = !DILocation(line: 553, column: 33, scope: !3505, inlinedAt: !3925)
!4114 = !DILocation(line: 325, column: 6, scope: !3740, inlinedAt: !3930)
!4115 = !DILocation(line: 325, column: 6, scope: !3516, inlinedAt: !3930)
!4116 = !DILocation(line: 326, column: 3, scope: !3740, inlinedAt: !3930)
!4117 = !DILocation(line: 332, column: 9, scope: !3516, inlinedAt: !3930)
!4118 = !DILocation(line: 332, column: 15, scope: !3516, inlinedAt: !3930)
!4119 = !DILocation(line: 332, column: 2, scope: !3516, inlinedAt: !3930)
!4120 = !DILocation(line: 336, column: 1, scope: !3516, inlinedAt: !3930)
!4121 = !DILocation(line: 553, column: 5, scope: !3505, inlinedAt: !3925)
!4122 = !DILocation(line: 553, column: 41, scope: !3505, inlinedAt: !3925)
!4123 = !DILocation(line: 554, column: 5, scope: !3505, inlinedAt: !3925)
!4124 = !DILocation(line: 554, column: 12, scope: !3505, inlinedAt: !3925)
!4125 = !DILocation(line: 448, column: 31, scope: !3500, inlinedAt: !3924)
!4126 = !DILocation(line: 448, column: 34, scope: !3500, inlinedAt: !3924)
!4127 = !DILocation(line: 448, column: 14, scope: !3500, inlinedAt: !3924)
!4128 = !DILocation(line: 450, column: 22, scope: !3500, inlinedAt: !3924)
!4129 = !DILocation(line: 450, column: 25, scope: !3500, inlinedAt: !3924)
!4130 = !DILocation(line: 450, column: 30, scope: !3500, inlinedAt: !3924)
!4131 = !DILocation(line: 450, column: 36, scope: !3500, inlinedAt: !3924)
!4132 = !DILocation(line: 450, column: 8, scope: !3500, inlinedAt: !3924)
!4133 = !DILocation(line: 450, column: 6, scope: !3500, inlinedAt: !3924)
!4134 = !DILocation(line: 451, column: 9, scope: !3500, inlinedAt: !3924)
!4135 = !DILocation(line: 552, column: 3, scope: !3505, inlinedAt: !3925)
!4136 = !DILocation(line: 557, column: 19, scope: !3507, inlinedAt: !3925)
!4137 = !DILocation(line: 557, column: 25, scope: !3507, inlinedAt: !3925)
!4138 = !DILocation(line: 557, column: 9, scope: !3507, inlinedAt: !3925)
!4139 = !DILocation(line: 557, column: 2, scope: !3507, inlinedAt: !3925)
!4140 = !DILocation(line: 558, column: 1, scope: !3507, inlinedAt: !3925)
!4141 = !DILocation(line: 296, column: 6, scope: !3919)
!4142 = !DILocation(line: 297, column: 7, scope: !4143)
!4143 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 297, column: 6)
!4144 = !DILocation(line: 297, column: 6, scope: !3919)
!4145 = !DILocation(line: 298, column: 3, scope: !4143)
!4146 = !DILocation(line: 300, column: 26, scope: !3919)
!4147 = !DILocation(line: 300, column: 32, scope: !3919)
!4148 = !DILocation(line: 300, column: 38, scope: !3919)
!4149 = !DILocation(line: 300, column: 8, scope: !3919)
!4150 = !DILocation(line: 300, column: 6, scope: !3919)
!4151 = !DILocation(line: 301, column: 6, scope: !4152)
!4152 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 301, column: 6)
!4153 = !DILocation(line: 301, column: 6, scope: !3919)
!4154 = !DILocation(line: 302, column: 3, scope: !4152)
!4155 = !DILocation(line: 304, column: 27, scope: !3919)
!4156 = !DILocation(line: 304, column: 8, scope: !3919)
!4157 = !DILocation(line: 304, column: 6, scope: !3919)
!4158 = !DILocation(line: 306, column: 6, scope: !4159)
!4159 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 306, column: 6)
!4160 = !DILocation(line: 306, column: 6, scope: !3919)
!4161 = !DILocation(line: 307, column: 3, scope: !4159)
!4162 = !DILocation(line: 309, column: 27, scope: !3919)
!4163 = !DILocation(line: 309, column: 31, scope: !3919)
!4164 = !DILocation(line: 309, column: 8, scope: !3919)
!4165 = !DILocation(line: 309, column: 6, scope: !3919)
!4166 = !DILocation(line: 312, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 312, column: 6)
!4168 = !DILocation(line: 312, column: 6, scope: !3919)
!4169 = !DILocation(line: 313, column: 3, scope: !4167)
!4170 = !DILocation(line: 315, column: 30, scope: !3919)
!4171 = !DILocation(line: 315, column: 38, scope: !3919)
!4172 = !DILocation(line: 315, column: 36, scope: !3919)
!4173 = !DILocation(line: 315, column: 29, scope: !3919)
!4174 = !DILocation(line: 315, column: 27, scope: !3919)
!4175 = !DILocation(line: 315, column: 7, scope: !3919)
!4176 = !DILocation(line: 315, column: 5, scope: !3919)
!4177 = !DILocation(line: 316, column: 7, scope: !4178)
!4178 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 316, column: 6)
!4179 = !DILocation(line: 316, column: 6, scope: !3919)
!4180 = !DILocation(line: 317, column: 7, scope: !4181)
!4181 = distinct !DILexicalBlock(scope: !4178, file: !3, line: 316, column: 11)
!4182 = !DILocation(line: 318, column: 3, scope: !4181)
!4183 = !DILocation(line: 321, column: 9, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 321, column: 2)
!4185 = !DILocation(line: 321, column: 7, scope: !4184)
!4186 = !DILocation(line: 321, column: 14, scope: !4187)
!4187 = distinct !DILexicalBlock(scope: !4184, file: !3, line: 321, column: 2)
!4188 = !DILocation(line: 321, column: 18, scope: !4187)
!4189 = !DILocation(line: 321, column: 16, scope: !4187)
!4190 = !DILocation(line: 321, column: 2, scope: !4184)
!4191 = !DILocation(line: 322, column: 10, scope: !4192)
!4192 = distinct !DILexicalBlock(scope: !4193, file: !3, line: 322, column: 3)
!4193 = distinct !DILexicalBlock(scope: !4187, file: !3, line: 321, column: 31)
!4194 = !DILocation(line: 322, column: 8, scope: !4192)
!4195 = !DILocation(line: 322, column: 15, scope: !4196)
!4196 = distinct !DILexicalBlock(scope: !4192, file: !3, line: 322, column: 3)
!4197 = !DILocation(line: 322, column: 19, scope: !4196)
!4198 = !DILocation(line: 322, column: 17, scope: !4196)
!4199 = !DILocation(line: 322, column: 3, scope: !4192)
!4200 = !DILocalVariable(name: "val", scope: !4201, file: !3, line: 323, type: !2571)
!4201 = distinct !DILexicalBlock(scope: !4196, file: !3, line: 322, column: 31)
!4202 = !DILocation(line: 323, column: 8, scope: !4201)
!4203 = !DILocation(line: 323, column: 14, scope: !4201)
!4204 = !DILocation(line: 323, column: 18, scope: !4201)
!4205 = !DILocation(line: 323, column: 28, scope: !4201)
!4206 = !DILocation(line: 323, column: 32, scope: !4201)
!4207 = !DILocation(line: 323, column: 30, scope: !4201)
!4208 = !DILocation(line: 323, column: 25, scope: !4201)
!4209 = !DILocation(line: 325, column: 34, scope: !4201)
!4210 = !DILocation(line: 325, column: 39, scope: !4201)
!4211 = !DILocation(line: 325, column: 47, scope: !4201)
!4212 = !DILocation(line: 325, column: 54, scope: !4201)
!4213 = !DILocation(line: 325, column: 57, scope: !4201)
!4214 = !DILocation(line: 326, column: 20, scope: !4201)
!4215 = !DILocation(line: 325, column: 10, scope: !4201)
!4216 = !DILocation(line: 325, column: 8, scope: !4201)
!4217 = !DILocation(line: 327, column: 9, scope: !4218)
!4218 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 327, column: 8)
!4219 = !DILocation(line: 327, column: 8, scope: !4201)
!4220 = !DILocation(line: 328, column: 5, scope: !4218)
!4221 = !DILocation(line: 330, column: 34, scope: !4201)
!4222 = !DILocation(line: 330, column: 39, scope: !4201)
!4223 = !DILocation(line: 330, column: 47, scope: !4201)
!4224 = !DILocation(line: 330, column: 54, scope: !4201)
!4225 = !DILocation(line: 330, column: 57, scope: !4201)
!4226 = !DILocation(line: 331, column: 19, scope: !4201)
!4227 = !DILocation(line: 330, column: 10, scope: !4201)
!4228 = !DILocation(line: 330, column: 8, scope: !4201)
!4229 = !DILocation(line: 332, column: 8, scope: !4230)
!4230 = distinct !DILexicalBlock(scope: !4201, file: !3, line: 332, column: 8)
!4231 = !DILocation(line: 332, column: 8, scope: !4201)
!4232 = !DILocation(line: 333, column: 5, scope: !4230)
!4233 = !DILocation(line: 334, column: 3, scope: !4201)
!4234 = !DILocation(line: 322, column: 27, scope: !4196)
!4235 = !DILocation(line: 322, column: 3, scope: !4196)
!4236 = distinct !{!4236, !4199, !4237}
!4237 = !DILocation(line: 334, column: 3, scope: !4192)
!4238 = !DILocation(line: 335, column: 2, scope: !4193)
!4239 = !DILocation(line: 321, column: 27, scope: !4187)
!4240 = !DILocation(line: 321, column: 2, scope: !4187)
!4241 = distinct !{!4241, !4190, !4242}
!4242 = !DILocation(line: 335, column: 2, scope: !4184)
!4243 = !DILocation(line: 337, column: 14, scope: !3919)
!4244 = !DILocation(line: 337, column: 2, scope: !3919)
!4245 = !DILocation(line: 337, column: 6, scope: !3919)
!4246 = !DILocation(line: 337, column: 12, scope: !3919)
!4247 = !DILocation(line: 338, column: 2, scope: !3919)
!4248 = !DILocation(line: 338, column: 6, scope: !3919)
!4249 = !DILocation(line: 338, column: 11, scope: !3919)
!4250 = !DILocation(line: 339, column: 22, scope: !3919)
!4251 = !DILocation(line: 339, column: 2, scope: !3919)
!4252 = !DILocation(line: 339, column: 9, scope: !3919)
!4253 = !DILocation(line: 339, column: 20, scope: !3919)
!4254 = !DILocation(line: 340, column: 2, scope: !3919)
!4255 = !DILocation(line: 340, column: 8, scope: !3919)
!4256 = !DILocation(line: 340, column: 12, scope: !3919)
!4257 = !DILocation(line: 340, column: 29, scope: !3919)
!4258 = !DILocation(line: 341, column: 23, scope: !3919)
!4259 = !DILocation(line: 341, column: 2, scope: !3919)
!4260 = !DILocation(line: 341, column: 8, scope: !3919)
!4261 = !DILocation(line: 341, column: 21, scope: !3919)
!4262 = !DILabel(scope: !3919, name: "out", file: !3, line: 343)
!4263 = !DILocation(line: 343, column: 1, scope: !3919)
!4264 = !DILocation(line: 344, column: 8, scope: !3919)
!4265 = !DILocation(line: 344, column: 2, scope: !3919)
!4266 = !DILocation(line: 346, column: 6, scope: !4267)
!4267 = distinct !DILexicalBlock(scope: !3919, file: !3, line: 346, column: 6)
!4268 = !DILocation(line: 346, column: 6, scope: !3919)
!4269 = !DILocation(line: 347, column: 9, scope: !4267)
!4270 = !DILocation(line: 347, column: 3, scope: !4267)
!4271 = !DILocation(line: 349, column: 9, scope: !3919)
!4272 = !DILocation(line: 349, column: 2, scope: !3919)
!4273 = !DILocation(line: 350, column: 1, scope: !3919)
!4274 = distinct !DISubprogram(name: "nand_get_manufacturer_data", scope: !74, file: !74, line: 1173, type: !4275, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4275 = !DISubroutineType(types: !4276)
!4276 = !{!99, !145}
!4277 = !DILocalVariable(name: "chip", arg: 1, scope: !4274, file: !74, line: 1173, type: !145)
!4278 = !DILocation(line: 1173, column: 66, scope: !4274)
!4279 = !DILocation(line: 1175, column: 9, scope: !4274)
!4280 = !DILocation(line: 1175, column: 15, scope: !4274)
!4281 = !DILocation(line: 1175, column: 28, scope: !4274)
!4282 = !DILocation(line: 1175, column: 2, scope: !4274)
!4283 = distinct !DISubprogram(name: "hynix_read_rr_otp", scope: !3, file: !3, line: 191, type: !4284, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4284 = !DISubroutineType(types: !4285)
!4285 = !{!100, !145, !3922, !99}
!4286 = !DILocalVariable(name: "chip", arg: 1, scope: !4283, file: !3, line: 191, type: !145)
!4287 = !DILocation(line: 191, column: 48, scope: !4283)
!4288 = !DILocalVariable(name: "info", arg: 2, scope: !4283, file: !3, line: 192, type: !3922)
!4289 = !DILocation(line: 192, column: 44, scope: !4283)
!4290 = !DILocalVariable(name: "buf", arg: 3, scope: !4283, file: !3, line: 193, type: !99)
!4291 = !DILocation(line: 193, column: 15, scope: !4283)
!4292 = !DILocalVariable(name: "i", scope: !4283, file: !3, line: 195, type: !100)
!4293 = !DILocation(line: 195, column: 6, scope: !4283)
!4294 = !DILocalVariable(name: "ret", scope: !4283, file: !3, line: 195, type: !100)
!4295 = !DILocation(line: 195, column: 9, scope: !4283)
!4296 = !DILocation(line: 197, column: 22, scope: !4283)
!4297 = !DILocation(line: 197, column: 8, scope: !4283)
!4298 = !DILocation(line: 197, column: 6, scope: !4283)
!4299 = !DILocation(line: 198, column: 6, scope: !4300)
!4300 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 198, column: 6)
!4301 = !DILocation(line: 198, column: 6, scope: !4283)
!4302 = !DILocation(line: 199, column: 10, scope: !4300)
!4303 = !DILocation(line: 199, column: 3, scope: !4300)
!4304 = !DILocation(line: 201, column: 26, scope: !4283)
!4305 = !DILocation(line: 201, column: 8, scope: !4283)
!4306 = !DILocation(line: 201, column: 6, scope: !4283)
!4307 = !DILocation(line: 202, column: 6, scope: !4308)
!4308 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 202, column: 6)
!4309 = !DILocation(line: 202, column: 6, scope: !4283)
!4310 = !DILocation(line: 203, column: 10, scope: !4308)
!4311 = !DILocation(line: 203, column: 3, scope: !4308)
!4312 = !DILocation(line: 205, column: 9, scope: !4313)
!4313 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 205, column: 2)
!4314 = !DILocation(line: 205, column: 7, scope: !4313)
!4315 = !DILocation(line: 205, column: 14, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4313, file: !3, line: 205, column: 2)
!4317 = !DILocation(line: 205, column: 18, scope: !4316)
!4318 = !DILocation(line: 205, column: 24, scope: !4316)
!4319 = !DILocation(line: 205, column: 16, scope: !4316)
!4320 = !DILocation(line: 205, column: 2, scope: !4313)
!4321 = !DILocation(line: 206, column: 33, scope: !4322)
!4322 = distinct !DILexicalBlock(scope: !4316, file: !3, line: 205, column: 36)
!4323 = !DILocation(line: 206, column: 39, scope: !4322)
!4324 = !DILocation(line: 206, column: 45, scope: !4322)
!4325 = !DILocation(line: 206, column: 50, scope: !4322)
!4326 = !DILocation(line: 207, column: 12, scope: !4322)
!4327 = !DILocation(line: 207, column: 18, scope: !4322)
!4328 = !DILocation(line: 207, column: 25, scope: !4322)
!4329 = !DILocation(line: 206, column: 9, scope: !4322)
!4330 = !DILocation(line: 206, column: 7, scope: !4322)
!4331 = !DILocation(line: 208, column: 7, scope: !4332)
!4332 = distinct !DILexicalBlock(scope: !4322, file: !3, line: 208, column: 7)
!4333 = !DILocation(line: 208, column: 7, scope: !4322)
!4334 = !DILocation(line: 209, column: 11, scope: !4332)
!4335 = !DILocation(line: 209, column: 4, scope: !4332)
!4336 = !DILocation(line: 210, column: 2, scope: !4322)
!4337 = !DILocation(line: 205, column: 32, scope: !4316)
!4338 = !DILocation(line: 205, column: 2, scope: !4316)
!4339 = distinct !{!4339, !4320, !4340}
!4340 = !DILocation(line: 210, column: 2, scope: !4313)
!4341 = !DILocation(line: 212, column: 26, scope: !4283)
!4342 = !DILocation(line: 212, column: 8, scope: !4283)
!4343 = !DILocation(line: 212, column: 6, scope: !4283)
!4344 = !DILocation(line: 213, column: 6, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 213, column: 6)
!4346 = !DILocation(line: 213, column: 6, scope: !4283)
!4347 = !DILocation(line: 214, column: 10, scope: !4345)
!4348 = !DILocation(line: 214, column: 3, scope: !4345)
!4349 = !DILocation(line: 217, column: 26, scope: !4283)
!4350 = !DILocation(line: 217, column: 8, scope: !4283)
!4351 = !DILocation(line: 217, column: 6, scope: !4283)
!4352 = !DILocation(line: 218, column: 6, scope: !4353)
!4353 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 218, column: 6)
!4354 = !DILocation(line: 218, column: 6, scope: !4283)
!4355 = !DILocation(line: 219, column: 10, scope: !4353)
!4356 = !DILocation(line: 219, column: 3, scope: !4353)
!4357 = !DILocation(line: 221, column: 26, scope: !4283)
!4358 = !DILocation(line: 221, column: 8, scope: !4283)
!4359 = !DILocation(line: 221, column: 6, scope: !4283)
!4360 = !DILocation(line: 222, column: 6, scope: !4361)
!4361 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 222, column: 6)
!4362 = !DILocation(line: 222, column: 6, scope: !4283)
!4363 = !DILocation(line: 223, column: 10, scope: !4361)
!4364 = !DILocation(line: 223, column: 3, scope: !4361)
!4365 = !DILocation(line: 225, column: 26, scope: !4283)
!4366 = !DILocation(line: 225, column: 8, scope: !4283)
!4367 = !DILocation(line: 225, column: 6, scope: !4283)
!4368 = !DILocation(line: 226, column: 6, scope: !4369)
!4369 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 226, column: 6)
!4370 = !DILocation(line: 226, column: 6, scope: !4283)
!4371 = !DILocation(line: 227, column: 10, scope: !4369)
!4372 = !DILocation(line: 227, column: 3, scope: !4369)
!4373 = !DILocation(line: 230, column: 26, scope: !4283)
!4374 = !DILocation(line: 230, column: 32, scope: !4283)
!4375 = !DILocation(line: 230, column: 38, scope: !4283)
!4376 = !DILocation(line: 230, column: 47, scope: !4283)
!4377 = !DILocation(line: 230, column: 52, scope: !4283)
!4378 = !DILocation(line: 230, column: 58, scope: !4283)
!4379 = !DILocation(line: 230, column: 8, scope: !4283)
!4380 = !DILocation(line: 230, column: 6, scope: !4283)
!4381 = !DILocation(line: 231, column: 6, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 231, column: 6)
!4383 = !DILocation(line: 231, column: 6, scope: !4283)
!4384 = !DILocation(line: 232, column: 10, scope: !4382)
!4385 = !DILocation(line: 232, column: 3, scope: !4382)
!4386 = !DILocation(line: 235, column: 22, scope: !4283)
!4387 = !DILocation(line: 235, column: 8, scope: !4283)
!4388 = !DILocation(line: 235, column: 6, scope: !4283)
!4389 = !DILocation(line: 236, column: 6, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 236, column: 6)
!4391 = !DILocation(line: 236, column: 6, scope: !4283)
!4392 = !DILocation(line: 237, column: 10, scope: !4390)
!4393 = !DILocation(line: 237, column: 3, scope: !4390)
!4394 = !DILocation(line: 239, column: 26, scope: !4283)
!4395 = !DILocation(line: 239, column: 8, scope: !4283)
!4396 = !DILocation(line: 239, column: 6, scope: !4283)
!4397 = !DILocation(line: 240, column: 6, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 240, column: 6)
!4399 = !DILocation(line: 240, column: 6, scope: !4283)
!4400 = !DILocation(line: 241, column: 10, scope: !4398)
!4401 = !DILocation(line: 241, column: 3, scope: !4398)
!4402 = !DILocation(line: 243, column: 32, scope: !4283)
!4403 = !DILocation(line: 243, column: 8, scope: !4283)
!4404 = !DILocation(line: 243, column: 6, scope: !4283)
!4405 = !DILocation(line: 244, column: 6, scope: !4406)
!4406 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 244, column: 6)
!4407 = !DILocation(line: 244, column: 6, scope: !4283)
!4408 = !DILocation(line: 245, column: 10, scope: !4406)
!4409 = !DILocation(line: 245, column: 3, scope: !4406)
!4410 = !DILocation(line: 247, column: 26, scope: !4283)
!4411 = !DILocation(line: 247, column: 8, scope: !4283)
!4412 = !DILocation(line: 247, column: 6, scope: !4283)
!4413 = !DILocation(line: 248, column: 6, scope: !4414)
!4414 = distinct !DILexicalBlock(scope: !4283, file: !3, line: 248, column: 6)
!4415 = !DILocation(line: 248, column: 6, scope: !4283)
!4416 = !DILocation(line: 249, column: 10, scope: !4414)
!4417 = !DILocation(line: 249, column: 3, scope: !4414)
!4418 = !DILocation(line: 251, column: 27, scope: !4283)
!4419 = !DILocation(line: 251, column: 9, scope: !4283)
!4420 = !DILocation(line: 251, column: 2, scope: !4283)
!4421 = !DILocation(line: 252, column: 1, scope: !4283)
!4422 = distinct !DISubprogram(name: "hynix_get_majority", scope: !3, file: !3, line: 159, type: !4423, scopeLine: 160, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!100, !123, !100, !2571}
!4425 = !DILocalVariable(name: "in", arg: 1, scope: !4422, file: !3, line: 159, type: !123)
!4426 = !DILocation(line: 159, column: 41, scope: !4422)
!4427 = !DILocalVariable(name: "repeat", arg: 2, scope: !4422, file: !3, line: 159, type: !100)
!4428 = !DILocation(line: 159, column: 49, scope: !4422)
!4429 = !DILocalVariable(name: "out", arg: 3, scope: !4422, file: !3, line: 159, type: !2571)
!4430 = !DILocation(line: 159, column: 61, scope: !4422)
!4431 = !DILocalVariable(name: "i", scope: !4422, file: !3, line: 161, type: !100)
!4432 = !DILocation(line: 161, column: 6, scope: !4422)
!4433 = !DILocalVariable(name: "j", scope: !4422, file: !3, line: 161, type: !100)
!4434 = !DILocation(line: 161, column: 9, scope: !4422)
!4435 = !DILocalVariable(name: "half", scope: !4422, file: !3, line: 161, type: !100)
!4436 = !DILocation(line: 161, column: 12, scope: !4422)
!4437 = !DILocation(line: 161, column: 19, scope: !4422)
!4438 = !DILocation(line: 161, column: 26, scope: !4422)
!4439 = !DILocation(line: 171, column: 9, scope: !4440)
!4440 = distinct !DILexicalBlock(scope: !4422, file: !3, line: 171, column: 2)
!4441 = !DILocation(line: 171, column: 7, scope: !4440)
!4442 = !DILocation(line: 171, column: 14, scope: !4443)
!4443 = distinct !DILexicalBlock(scope: !4440, file: !3, line: 171, column: 2)
!4444 = !DILocation(line: 171, column: 18, scope: !4443)
!4445 = !DILocation(line: 171, column: 16, scope: !4443)
!4446 = !DILocation(line: 171, column: 2, scope: !4440)
!4447 = !DILocalVariable(name: "cnt", scope: !4448, file: !3, line: 172, type: !100)
!4448 = distinct !DILexicalBlock(scope: !4443, file: !3, line: 171, column: 29)
!4449 = !DILocation(line: 172, column: 7, scope: !4448)
!4450 = !DILocalVariable(name: "val", scope: !4448, file: !3, line: 173, type: !110)
!4451 = !DILocation(line: 173, column: 6, scope: !4448)
!4452 = !DILocation(line: 173, column: 12, scope: !4448)
!4453 = !DILocation(line: 173, column: 15, scope: !4448)
!4454 = !DILocation(line: 176, column: 12, scope: !4455)
!4455 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 176, column: 3)
!4456 = !DILocation(line: 176, column: 14, scope: !4455)
!4457 = !DILocation(line: 176, column: 10, scope: !4455)
!4458 = !DILocation(line: 176, column: 8, scope: !4455)
!4459 = !DILocation(line: 176, column: 19, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4455, file: !3, line: 176, column: 3)
!4461 = !DILocation(line: 176, column: 23, scope: !4460)
!4462 = !DILocation(line: 176, column: 21, scope: !4460)
!4463 = !DILocation(line: 176, column: 3, scope: !4455)
!4464 = !DILocation(line: 177, column: 8, scope: !4465)
!4465 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 177, column: 8)
!4466 = distinct !DILexicalBlock(scope: !4460, file: !3, line: 176, column: 36)
!4467 = !DILocation(line: 177, column: 11, scope: !4465)
!4468 = !DILocation(line: 177, column: 17, scope: !4465)
!4469 = !DILocation(line: 177, column: 14, scope: !4465)
!4470 = !DILocation(line: 177, column: 8, scope: !4466)
!4471 = !DILocation(line: 178, column: 8, scope: !4465)
!4472 = !DILocation(line: 178, column: 5, scope: !4465)
!4473 = !DILocation(line: 179, column: 3, scope: !4466)
!4474 = !DILocation(line: 176, column: 32, scope: !4460)
!4475 = !DILocation(line: 176, column: 3, scope: !4460)
!4476 = distinct !{!4476, !4463, !4477}
!4477 = !DILocation(line: 179, column: 3, scope: !4455)
!4478 = !DILocation(line: 182, column: 7, scope: !4479)
!4479 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 182, column: 7)
!4480 = !DILocation(line: 182, column: 13, scope: !4479)
!4481 = !DILocation(line: 182, column: 11, scope: !4479)
!4482 = !DILocation(line: 182, column: 7, scope: !4448)
!4483 = !DILocation(line: 183, column: 11, scope: !4484)
!4484 = distinct !DILexicalBlock(scope: !4479, file: !3, line: 182, column: 19)
!4485 = !DILocation(line: 183, column: 5, scope: !4484)
!4486 = !DILocation(line: 183, column: 9, scope: !4484)
!4487 = !DILocation(line: 184, column: 4, scope: !4484)
!4488 = !DILocation(line: 186, column: 2, scope: !4448)
!4489 = !DILocation(line: 171, column: 25, scope: !4443)
!4490 = !DILocation(line: 171, column: 2, scope: !4443)
!4491 = distinct !{!4491, !4446, !4492}
!4492 = !DILocation(line: 186, column: 2, scope: !4440)
!4493 = !DILocation(line: 188, column: 2, scope: !4422)
!4494 = !DILocation(line: 189, column: 1, scope: !4422)
!4495 = distinct !DISubprogram(name: "hynix_mlc_1xnm_rr_value", scope: !3, file: !3, line: 259, type: !4496, scopeLine: 261, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4496 = !DISubroutineType(types: !4497)
!4497 = !{!100, !123, !100, !100, !100, !100, !344, !2571}
!4498 = !DILocalVariable(name: "buf", arg: 1, scope: !4495, file: !3, line: 259, type: !123)
!4499 = !DILocation(line: 259, column: 46, scope: !4495)
!4500 = !DILocalVariable(name: "nmodes", arg: 2, scope: !4495, file: !3, line: 259, type: !100)
!4501 = !DILocation(line: 259, column: 55, scope: !4495)
!4502 = !DILocalVariable(name: "nregs", arg: 3, scope: !4495, file: !3, line: 259, type: !100)
!4503 = !DILocation(line: 259, column: 67, scope: !4495)
!4504 = !DILocalVariable(name: "mode", arg: 4, scope: !4495, file: !3, line: 260, type: !100)
!4505 = !DILocation(line: 260, column: 12, scope: !4495)
!4506 = !DILocalVariable(name: "reg", arg: 5, scope: !4495, file: !3, line: 260, type: !100)
!4507 = !DILocation(line: 260, column: 22, scope: !4495)
!4508 = !DILocalVariable(name: "inv", arg: 6, scope: !4495, file: !3, line: 260, type: !344)
!4509 = !DILocation(line: 260, column: 32, scope: !4495)
!4510 = !DILocalVariable(name: "val", arg: 7, scope: !4495, file: !3, line: 260, type: !2571)
!4511 = !DILocation(line: 260, column: 41, scope: !4495)
!4512 = !DILocalVariable(name: "tmp", scope: !4495, file: !3, line: 262, type: !109)
!4513 = !DILocation(line: 262, column: 5, scope: !4495)
!4514 = !DILocalVariable(name: "val_offs", scope: !4495, file: !3, line: 263, type: !100)
!4515 = !DILocation(line: 263, column: 6, scope: !4495)
!4516 = !DILocation(line: 263, column: 18, scope: !4495)
!4517 = !DILocation(line: 263, column: 25, scope: !4495)
!4518 = !DILocation(line: 263, column: 23, scope: !4495)
!4519 = !DILocation(line: 263, column: 34, scope: !4495)
!4520 = !DILocation(line: 263, column: 32, scope: !4495)
!4521 = !DILocalVariable(name: "set_size", scope: !4495, file: !3, line: 264, type: !100)
!4522 = !DILocation(line: 264, column: 6, scope: !4495)
!4523 = !DILocation(line: 264, column: 17, scope: !4495)
!4524 = !DILocation(line: 264, column: 26, scope: !4495)
!4525 = !DILocation(line: 264, column: 24, scope: !4495)
!4526 = !DILocalVariable(name: "i", scope: !4495, file: !3, line: 265, type: !100)
!4527 = !DILocation(line: 265, column: 6, scope: !4495)
!4528 = !DILocalVariable(name: "ret", scope: !4495, file: !3, line: 265, type: !100)
!4529 = !DILocation(line: 265, column: 9, scope: !4495)
!4530 = !DILocation(line: 267, column: 9, scope: !4531)
!4531 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 267, column: 2)
!4532 = !DILocation(line: 267, column: 7, scope: !4531)
!4533 = !DILocation(line: 267, column: 14, scope: !4534)
!4534 = distinct !DILexicalBlock(scope: !4531, file: !3, line: 267, column: 2)
!4535 = !DILocation(line: 267, column: 16, scope: !4534)
!4536 = !DILocation(line: 267, column: 2, scope: !4531)
!4537 = !DILocalVariable(name: "set_offs", scope: !4538, file: !3, line: 268, type: !100)
!4538 = distinct !DILexicalBlock(scope: !4534, file: !3, line: 267, column: 50)
!4539 = !DILocation(line: 268, column: 7, scope: !4538)
!4540 = !DILocation(line: 268, column: 18, scope: !4538)
!4541 = !DILocation(line: 270, column: 12, scope: !4538)
!4542 = !DILocation(line: 270, column: 16, scope: !4538)
!4543 = !DILocation(line: 270, column: 27, scope: !4538)
!4544 = !DILocation(line: 270, column: 25, scope: !4538)
!4545 = !DILocation(line: 270, column: 7, scope: !4538)
!4546 = !DILocation(line: 270, column: 3, scope: !4538)
!4547 = !DILocation(line: 270, column: 10, scope: !4538)
!4548 = !DILocation(line: 271, column: 2, scope: !4538)
!4549 = !DILocation(line: 267, column: 46, scope: !4534)
!4550 = !DILocation(line: 267, column: 2, scope: !4534)
!4551 = distinct !{!4551, !4536, !4552}
!4552 = !DILocation(line: 271, column: 2, scope: !4531)
!4553 = !DILocation(line: 273, column: 27, scope: !4495)
!4554 = !DILocation(line: 273, column: 59, scope: !4495)
!4555 = !DILocation(line: 273, column: 8, scope: !4495)
!4556 = !DILocation(line: 273, column: 6, scope: !4495)
!4557 = !DILocation(line: 274, column: 6, scope: !4558)
!4558 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 274, column: 6)
!4559 = !DILocation(line: 274, column: 6, scope: !4495)
!4560 = !DILocation(line: 275, column: 10, scope: !4558)
!4561 = !DILocation(line: 275, column: 3, scope: !4558)
!4562 = !DILocation(line: 277, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4495, file: !3, line: 277, column: 6)
!4564 = !DILocation(line: 277, column: 6, scope: !4495)
!4565 = !DILocation(line: 278, column: 12, scope: !4563)
!4566 = !DILocation(line: 278, column: 11, scope: !4563)
!4567 = !DILocation(line: 278, column: 10, scope: !4563)
!4568 = !DILocation(line: 278, column: 4, scope: !4563)
!4569 = !DILocation(line: 278, column: 8, scope: !4563)
!4570 = !DILocation(line: 278, column: 3, scope: !4563)
!4571 = !DILocation(line: 280, column: 2, scope: !4495)
!4572 = !DILocation(line: 281, column: 1, scope: !4495)
!4573 = distinct !DISubprogram(name: "hynix_nand_setup_read_retry", scope: !3, file: !3, line: 108, type: !2488, scopeLine: 109, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4574 = !DILocalVariable(name: "chip", arg: 1, scope: !4573, file: !3, line: 108, type: !145)
!4575 = !DILocation(line: 108, column: 58, scope: !4573)
!4576 = !DILocalVariable(name: "retry_mode", arg: 2, scope: !4573, file: !3, line: 108, type: !100)
!4577 = !DILocation(line: 108, column: 68, scope: !4573)
!4578 = !DILocalVariable(name: "hynix", scope: !4573, file: !3, line: 110, type: !2945)
!4579 = !DILocation(line: 110, column: 21, scope: !4573)
!4580 = !DILocation(line: 110, column: 56, scope: !4573)
!4581 = !DILocation(line: 110, column: 29, scope: !4573)
!4582 = !DILocalVariable(name: "values", scope: !4573, file: !3, line: 111, type: !123)
!4583 = !DILocation(line: 111, column: 12, scope: !4573)
!4584 = !DILocalVariable(name: "i", scope: !4573, file: !3, line: 112, type: !100)
!4585 = !DILocation(line: 112, column: 6, scope: !4573)
!4586 = !DILocalVariable(name: "ret", scope: !4573, file: !3, line: 112, type: !100)
!4587 = !DILocation(line: 112, column: 9, scope: !4573)
!4588 = !DILocation(line: 114, column: 11, scope: !4573)
!4589 = !DILocation(line: 114, column: 18, scope: !4573)
!4590 = !DILocation(line: 114, column: 30, scope: !4573)
!4591 = !DILocation(line: 115, column: 5, scope: !4573)
!4592 = !DILocation(line: 115, column: 18, scope: !4573)
!4593 = !DILocation(line: 115, column: 25, scope: !4573)
!4594 = !DILocation(line: 115, column: 37, scope: !4573)
!4595 = !DILocation(line: 115, column: 16, scope: !4573)
!4596 = !DILocation(line: 114, column: 37, scope: !4573)
!4597 = !DILocation(line: 114, column: 9, scope: !4573)
!4598 = !DILocation(line: 118, column: 26, scope: !4573)
!4599 = !DILocation(line: 118, column: 8, scope: !4573)
!4600 = !DILocation(line: 118, column: 6, scope: !4573)
!4601 = !DILocation(line: 119, column: 6, scope: !4602)
!4602 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 119, column: 6)
!4603 = !DILocation(line: 119, column: 6, scope: !4573)
!4604 = !DILocation(line: 120, column: 10, scope: !4602)
!4605 = !DILocation(line: 120, column: 3, scope: !4602)
!4606 = !DILocation(line: 131, column: 9, scope: !4607)
!4607 = distinct !DILexicalBlock(scope: !4573, file: !3, line: 131, column: 2)
!4608 = !DILocation(line: 131, column: 7, scope: !4607)
!4609 = !DILocation(line: 131, column: 14, scope: !4610)
!4610 = distinct !DILexicalBlock(scope: !4607, file: !3, line: 131, column: 2)
!4611 = !DILocation(line: 131, column: 18, scope: !4610)
!4612 = !DILocation(line: 131, column: 25, scope: !4610)
!4613 = !DILocation(line: 131, column: 37, scope: !4610)
!4614 = !DILocation(line: 131, column: 16, scope: !4610)
!4615 = !DILocation(line: 131, column: 2, scope: !4607)
!4616 = !DILocation(line: 132, column: 33, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4610, file: !3, line: 131, column: 49)
!4618 = !DILocation(line: 132, column: 39, scope: !4617)
!4619 = !DILocation(line: 132, column: 46, scope: !4617)
!4620 = !DILocation(line: 132, column: 58, scope: !4617)
!4621 = !DILocation(line: 132, column: 63, scope: !4617)
!4622 = !DILocation(line: 133, column: 12, scope: !4617)
!4623 = !DILocation(line: 133, column: 19, scope: !4617)
!4624 = !DILocation(line: 132, column: 9, scope: !4617)
!4625 = !DILocation(line: 132, column: 7, scope: !4617)
!4626 = !DILocation(line: 134, column: 7, scope: !4627)
!4627 = distinct !DILexicalBlock(scope: !4617, file: !3, line: 134, column: 7)
!4628 = !DILocation(line: 134, column: 7, scope: !4617)
!4629 = !DILocation(line: 135, column: 11, scope: !4627)
!4630 = !DILocation(line: 135, column: 4, scope: !4627)
!4631 = !DILocation(line: 136, column: 2, scope: !4617)
!4632 = !DILocation(line: 131, column: 45, scope: !4610)
!4633 = !DILocation(line: 131, column: 2, scope: !4610)
!4634 = distinct !{!4634, !4615, !4635}
!4635 = !DILocation(line: 136, column: 2, scope: !4607)
!4636 = !DILocation(line: 139, column: 27, scope: !4573)
!4637 = !DILocation(line: 139, column: 9, scope: !4573)
!4638 = !DILocation(line: 139, column: 2, scope: !4573)
!4639 = !DILocation(line: 140, column: 1, scope: !4573)
!4640 = distinct !DISubprogram(name: "hynix_nand_cmd_op", scope: !3, file: !3, line: 72, type: !4641, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4641 = !DISubroutineType(types: !4642)
!4642 = !{!100, !145, !110}
!4643 = !DILocalVariable(name: "chip", arg: 1, scope: !4640, file: !3, line: 72, type: !145)
!4644 = !DILocation(line: 72, column: 48, scope: !4640)
!4645 = !DILocalVariable(name: "cmd", arg: 2, scope: !4640, file: !3, line: 72, type: !110)
!4646 = !DILocation(line: 72, column: 57, scope: !4640)
!4647 = !DILocation(line: 74, column: 23, scope: !4648)
!4648 = distinct !DILexicalBlock(scope: !4640, file: !3, line: 74, column: 6)
!4649 = !DILocation(line: 74, column: 6, scope: !4648)
!4650 = !DILocation(line: 74, column: 6, scope: !4640)
!4651 = !DILocalVariable(name: "instrs", scope: !4652, file: !3, line: 75, type: !4653)
!4652 = distinct !DILexicalBlock(scope: !4648, file: !3, line: 74, column: 30)
!4653 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 320, elements: !133)
!4654 = !DILocation(line: 75, column: 24, scope: !4652)
!4655 = !DILocation(line: 75, column: 35, scope: !4652)
!4656 = !DILocation(line: 76, column: 4, scope: !4652)
!4657 = !DILocalVariable(name: "op", scope: !4652, file: !3, line: 78, type: !2610)
!4658 = !DILocation(line: 78, column: 25, scope: !4652)
!4659 = !DILocation(line: 78, column: 30, scope: !4652)
!4660 = !DILocation(line: 80, column: 23, scope: !4652)
!4661 = !DILocation(line: 80, column: 10, scope: !4652)
!4662 = !DILocation(line: 80, column: 3, scope: !4652)
!4663 = !DILocation(line: 83, column: 2, scope: !4640)
!4664 = !DILocation(line: 83, column: 8, scope: !4640)
!4665 = !DILocation(line: 83, column: 15, scope: !4640)
!4666 = !DILocation(line: 83, column: 23, scope: !4640)
!4667 = !DILocation(line: 83, column: 29, scope: !4640)
!4668 = !DILocation(line: 85, column: 2, scope: !4640)
!4669 = !DILocation(line: 86, column: 1, scope: !4640)
!4670 = distinct !DISubprogram(name: "hynix_nand_reg_write_op", scope: !3, file: !3, line: 88, type: !4671, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4671 = !DISubroutineType(types: !4672)
!4672 = !{!100, !145, !110, !110}
!4673 = !DILocalVariable(name: "chip", arg: 1, scope: !4670, file: !3, line: 88, type: !145)
!4674 = !DILocation(line: 88, column: 54, scope: !4670)
!4675 = !DILocalVariable(name: "addr", arg: 2, scope: !4670, file: !3, line: 88, type: !110)
!4676 = !DILocation(line: 88, column: 63, scope: !4670)
!4677 = !DILocalVariable(name: "val", arg: 3, scope: !4670, file: !3, line: 88, type: !110)
!4678 = !DILocation(line: 88, column: 72, scope: !4670)
!4679 = !DILocalVariable(name: "column", scope: !4670, file: !3, line: 90, type: !101)
!4680 = !DILocation(line: 90, column: 6, scope: !4670)
!4681 = !DILocation(line: 90, column: 21, scope: !4670)
!4682 = !DILocation(line: 90, column: 16, scope: !4670)
!4683 = !DILocation(line: 90, column: 26, scope: !4670)
!4684 = !DILocation(line: 90, column: 34, scope: !4670)
!4685 = !DILocation(line: 90, column: 32, scope: !4670)
!4686 = !DILocation(line: 90, column: 15, scope: !4670)
!4687 = !DILocation(line: 92, column: 23, scope: !4688)
!4688 = distinct !DILexicalBlock(scope: !4670, file: !3, line: 92, column: 6)
!4689 = !DILocation(line: 92, column: 6, scope: !4688)
!4690 = !DILocation(line: 92, column: 6, scope: !4670)
!4691 = !DILocalVariable(name: "instrs", scope: !4692, file: !3, line: 93, type: !4693)
!4692 = distinct !DILexicalBlock(scope: !4688, file: !3, line: 92, column: 30)
!4693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2616, size: 640, elements: !128)
!4694 = !DILocation(line: 93, column: 24, scope: !4692)
!4695 = !DILocation(line: 93, column: 35, scope: !4692)
!4696 = !DILocation(line: 94, column: 4, scope: !4692)
!4697 = !DILocation(line: 95, column: 4, scope: !4692)
!4698 = !DILocalVariable(name: "op", scope: !4692, file: !3, line: 97, type: !2610)
!4699 = !DILocation(line: 97, column: 25, scope: !4692)
!4700 = !DILocation(line: 97, column: 30, scope: !4692)
!4701 = !DILocation(line: 99, column: 23, scope: !4692)
!4702 = !DILocation(line: 99, column: 10, scope: !4692)
!4703 = !DILocation(line: 99, column: 3, scope: !4692)
!4704 = !DILocation(line: 102, column: 2, scope: !4670)
!4705 = !DILocation(line: 102, column: 8, scope: !4670)
!4706 = !DILocation(line: 102, column: 15, scope: !4670)
!4707 = !DILocation(line: 102, column: 23, scope: !4670)
!4708 = !DILocation(line: 102, column: 44, scope: !4670)
!4709 = !DILocation(line: 103, column: 2, scope: !4670)
!4710 = !DILocation(line: 103, column: 8, scope: !4670)
!4711 = !DILocation(line: 103, column: 15, scope: !4670)
!4712 = !DILocation(line: 103, column: 26, scope: !4670)
!4713 = !DILocation(line: 103, column: 32, scope: !4670)
!4714 = !DILocation(line: 105, column: 2, scope: !4670)
!4715 = !DILocation(line: 106, column: 1, scope: !4670)
!4716 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !139, file: !139, line: 110, type: !3037, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4717 = !DILocalVariable(name: "chip", arg: 1, scope: !4716, file: !139, line: 110, type: !145)
!4718 = !DILocation(line: 110, column: 55, scope: !4716)
!4719 = !DILocation(line: 112, column: 7, scope: !4720)
!4720 = distinct !DILexicalBlock(scope: !4716, file: !139, line: 112, column: 6)
!4721 = !DILocation(line: 112, column: 13, scope: !4720)
!4722 = !DILocation(line: 112, column: 24, scope: !4720)
!4723 = !DILocation(line: 112, column: 28, scope: !4720)
!4724 = !DILocation(line: 112, column: 34, scope: !4720)
!4725 = !DILocation(line: 112, column: 46, scope: !4720)
!4726 = !DILocation(line: 112, column: 50, scope: !4720)
!4727 = !DILocation(line: 113, column: 7, scope: !4720)
!4728 = !DILocation(line: 113, column: 13, scope: !4720)
!4729 = !DILocation(line: 113, column: 25, scope: !4720)
!4730 = !DILocation(line: 113, column: 30, scope: !4720)
!4731 = !DILocation(line: 112, column: 6, scope: !4716)
!4732 = !DILocation(line: 114, column: 3, scope: !4720)
!4733 = !DILocation(line: 116, column: 2, scope: !4716)
!4734 = !DILocation(line: 117, column: 1, scope: !4716)
!4735 = distinct !DISubprogram(name: "nand_exec_op", scope: !139, file: !139, line: 128, type: !4736, scopeLine: 130, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4736 = !DISubroutineType(types: !4737)
!4737 = !{!100, !145, !2608}
!4738 = !DILocalVariable(name: "chip", arg: 1, scope: !4735, file: !139, line: 128, type: !145)
!4739 = !DILocation(line: 128, column: 50, scope: !4735)
!4740 = !DILocalVariable(name: "op", arg: 2, scope: !4735, file: !139, line: 129, type: !2608)
!4741 = !DILocation(line: 129, column: 40, scope: !4735)
!4742 = !DILocation(line: 131, column: 24, scope: !4743)
!4743 = distinct !DILexicalBlock(scope: !4735, file: !139, line: 131, column: 6)
!4744 = !DILocation(line: 131, column: 7, scope: !4743)
!4745 = !DILocation(line: 131, column: 6, scope: !4735)
!4746 = !DILocation(line: 132, column: 3, scope: !4743)
!4747 = !DILocalVariable(name: "__ret_warn_on", scope: !4748, file: !139, line: 134, type: !100)
!4748 = distinct !DILexicalBlock(scope: !4749, file: !139, line: 134, column: 6)
!4749 = distinct !DILexicalBlock(scope: !4735, file: !139, line: 134, column: 6)
!4750 = !DILocation(line: 134, column: 6, scope: !4748)
!4751 = !DILocation(line: 134, column: 6, scope: !4752)
!4752 = distinct !DILexicalBlock(scope: !4748, file: !139, line: 134, column: 6)
!4753 = !DILocation(line: 134, column: 6, scope: !4754)
!4754 = distinct !DILexicalBlock(scope: !4752, file: !139, line: 134, column: 6)
!4755 = !DILocation(line: 134, column: 6, scope: !4756)
!4756 = distinct !DILexicalBlock(scope: !4754, file: !139, line: 134, column: 6)
!4757 = !DILocation(line: 134, column: 6, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4754, file: !139, line: 134, column: 6)
!4759 = !{i32 -2143399117, i32 -2143399088, i32 -2143399042, i32 -2143398984, i32 -2143398930, i32 -2143398876, i32 -2143398821, i32 -2143398790}
!4760 = !DILocation(line: 134, column: 6, scope: !4761)
!4761 = distinct !DILexicalBlock(scope: !4754, file: !139, line: 134, column: 6)
!4762 = !{i32 -2143398376, i32 -2143398369, i32 -2143398317, i32 -2143398286, i32 -2143398256}
!4763 = !DILocation(line: 134, column: 6, scope: !4764)
!4764 = distinct !DILexicalBlock(scope: !4754, file: !139, line: 134, column: 6)
!4765 = !DILocation(line: 134, column: 6, scope: !4749)
!4766 = !DILocation(line: 134, column: 6, scope: !4735)
!4767 = !DILocation(line: 135, column: 3, scope: !4749)
!4768 = !DILocation(line: 137, column: 9, scope: !4735)
!4769 = !DILocation(line: 137, column: 15, scope: !4735)
!4770 = !DILocation(line: 137, column: 27, scope: !4735)
!4771 = !DILocation(line: 137, column: 32, scope: !4735)
!4772 = !DILocation(line: 137, column: 40, scope: !4735)
!4773 = !DILocation(line: 137, column: 46, scope: !4735)
!4774 = !DILocation(line: 137, column: 2, scope: !4735)
!4775 = !DILocation(line: 138, column: 1, scope: !4735)
!4776 = distinct !DISubprogram(name: "nanddev_ntargets", scope: !51, file: !51, line: 483, type: !3471, scopeLine: 484, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !407)
!4777 = !DILocalVariable(name: "nand", arg: 1, scope: !4776, file: !51, line: 483, type: !3473)
!4778 = !DILocation(line: 483, column: 71, scope: !4776)
!4779 = !DILocation(line: 485, column: 9, scope: !4776)
!4780 = !DILocation(line: 485, column: 15, scope: !4776)
!4781 = !DILocation(line: 485, column: 22, scope: !4776)
!4782 = !DILocation(line: 485, column: 2, scope: !4776)
