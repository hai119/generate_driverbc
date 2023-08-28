; ModuleID = '../bcout/drivers/mtd/nand/raw/nand_micron.llvm.bc'
source_filename = "drivers/mtd/nand/raw/nand_micron.c"
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
%struct.micron_nand = type { %struct.micron_on_die_ecc }
%struct.micron_on_die_ecc = type { i8, i8, i8* }
%struct.nand_onfi_vendor_micron = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, [72 x i8], i8 }

@micron_nand_manuf_ops = dso_local constant { void (%struct.nand_chip*)*, i32 (%struct.nand_chip*)*, void (%struct.nand_chip*)*, void (%struct.nand_chip*, %struct.nand_onfi_params*)* } { void (%struct.nand_chip*)* null, i32 (%struct.nand_chip*)* @micron_nand_init, void (%struct.nand_chip*)* @micron_nand_cleanup, void (%struct.nand_chip*, %struct.nand_onfi_params*)* @micron_fixup_onfi_param_page }, align 8, !dbg !0
@.str = private unnamed_addr constant [48 x i8] c"\013On-die ECC forcefully enabled, not supported\0A\00", align 1
@.str.1 = private unnamed_addr constant [41 x i8] c"\013On-die ECC selected but not supported\0A\00", align 1
@micron_nand_on_die_4_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @micron_nand_on_die_4_ooblayout_ecc, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @micron_nand_on_die_4_ooblayout_free }, align 8, !dbg !2812
@micron_nand_on_die_8_ooblayout_ops = internal constant %struct.mtd_ooblayout_ops { i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @micron_nand_on_die_8_ooblayout_ecc, i32 (%struct.mtd_info*, i32, %struct.mtd_oob_region*)* @micron_nand_on_die_8_ooblayout_free }, align 8, !dbg !2814
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.3 = private unnamed_addr constant [35 x i8] c"drivers/mtd/nand/raw/nand_micron.c\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_init(%struct.nand_chip* %chip) #0 !dbg !2821 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2822, metadata !DIExpression()), !dbg !2826
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2838, metadata !DIExpression()), !dbg !2839
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2840, metadata !DIExpression()), !dbg !2841
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2842, metadata !DIExpression()), !dbg !2843
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2844, metadata !DIExpression()), !dbg !2848
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2850, metadata !DIExpression()), !dbg !2854
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2856, metadata !DIExpression()), !dbg !2860
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2865, metadata !DIExpression()), !dbg !2866
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2867, metadata !DIExpression()), !dbg !2868
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2869, metadata !DIExpression()), !dbg !2870
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2871, metadata !DIExpression()), !dbg !2872
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2873, metadata !DIExpression()), !dbg !2874
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2875, metadata !DIExpression()), !dbg !2876
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2877, metadata !DIExpression()), !dbg !2878
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2879, metadata !DIExpression()), !dbg !2880
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %base = alloca %struct.nand_device*, align 8
  %requirements = alloca %struct.nand_ecc_props*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %micron = alloca %struct.micron_nand*, align 8
  %ondie = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !2881, metadata !DIExpression()), !dbg !2882
  call void @llvm.dbg.declare(metadata %struct.nand_device** %base, metadata !2883, metadata !DIExpression()), !dbg !2884
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2885
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !2886
  store %struct.nand_device* %base1, %struct.nand_device** %base, align 8, !dbg !2884
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %requirements, metadata !2887, metadata !DIExpression()), !dbg !2890
  %1 = load %struct.nand_device*, %struct.nand_device** %base, align 8, !dbg !2891
  %call = call %struct.nand_ecc_props* @nanddev_get_ecc_requirements(%struct.nand_device* %1) #8, !dbg !2892
  store %struct.nand_ecc_props* %call, %struct.nand_ecc_props** %requirements, align 8, !dbg !2890
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !2893, metadata !DIExpression()), !dbg !2894
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2895
  %call2 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %2) #8, !dbg !2896
  store %struct.mtd_info* %call2, %struct.mtd_info** %mtd, align 8, !dbg !2894
  call void @llvm.dbg.declare(metadata %struct.micron_nand** %micron, metadata !2897, metadata !DIExpression()), !dbg !2907
  call void @llvm.dbg.declare(metadata i32* %ondie, metadata !2908, metadata !DIExpression()), !dbg !2909
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2910, metadata !DIExpression()), !dbg !2911
  %call3 = call i8* @kzalloc(i64 16, i32 3264) #8, !dbg !2912
  %3 = bitcast i8* %call3 to %struct.micron_nand*, !dbg !2912
  store %struct.micron_nand* %3, %struct.micron_nand** %micron, align 8, !dbg !2913
  %4 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !2914
  %tobool = icmp ne %struct.micron_nand* %4, null, !dbg !2914
  br i1 %tobool, label %if.end, label %if.then, !dbg !2916

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2917
  br label %return, !dbg !2917

if.end:                                           ; preds = %entry
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2918
  %6 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !2919
  %7 = bitcast %struct.micron_nand* %6 to i8*, !dbg !2919
  call void @nand_set_manufacturer_data(%struct.nand_chip* %5, i8* %7) #8, !dbg !2920
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2921
  %call4 = call i32 @micron_nand_onfi_init(%struct.nand_chip* %8) #8, !dbg !2922
  store i32 %call4, i32* %ret, align 4, !dbg !2923
  %9 = load i32, i32* %ret, align 4, !dbg !2924
  %tobool5 = icmp ne i32 %9, 0, !dbg !2924
  br i1 %tobool5, label %if.then6, label %if.end7, !dbg !2926

if.then6:                                         ; preds = %if.end
  br label %err_free_manuf_data, !dbg !2927

if.end7:                                          ; preds = %if.end
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2928
  %options = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 6, !dbg !2929
  %11 = load i32, i32* %options, align 8, !dbg !2930
  %conv = zext i32 %11 to i64, !dbg !2930
  %or = or i64 %conv, 16777216, !dbg !2930
  %conv8 = trunc i64 %or to i32, !dbg !2930
  store i32 %conv8, i32* %options, align 8, !dbg !2930
  %12 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2931
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 4, !dbg !2933
  %13 = load i32, i32* %writesize, align 4, !dbg !2933
  %cmp = icmp eq i32 %13, 2048, !dbg !2934
  br i1 %cmp, label %if.then10, label %if.end15, !dbg !2935

if.then10:                                        ; preds = %if.end7
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2936
  %options11 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %14, i32 0, i32 6, !dbg !2937
  %15 = load i32, i32* %options11, align 8, !dbg !2938
  %conv12 = zext i32 %15 to i64, !dbg !2938
  %or13 = or i64 %conv12, 33554432, !dbg !2938
  %conv14 = trunc i64 %or13 to i32, !dbg !2938
  store i32 %conv14, i32* %options11, align 8, !dbg !2938
  br label %if.end15, !dbg !2936

if.end15:                                         ; preds = %if.then10, %if.end7
  %16 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2939
  %call16 = call i32 @micron_supports_on_die_ecc(%struct.nand_chip* %16) #8, !dbg !2940
  store i32 %call16, i32* %ondie, align 4, !dbg !2941
  %17 = load i32, i32* %ondie, align 4, !dbg !2942
  %cmp17 = icmp eq i32 %17, 2, !dbg !2944
  br i1 %cmp17, label %land.lhs.true, label %if.end23, !dbg !2945

land.lhs.true:                                    ; preds = %if.end15
  %18 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2946
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %18, i32 0, i32 31, !dbg !2947
  %engine_type = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 0, !dbg !2948
  %19 = load i32, i32* %engine_type, align 8, !dbg !2948
  %cmp19 = icmp ne i32 %19, 4, !dbg !2949
  br i1 %cmp19, label %if.then21, label %if.end23, !dbg !2950

if.then21:                                        ; preds = %land.lhs.true
  %call22 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0)) #9, !dbg !2951
  store i32 -22, i32* %ret, align 4, !dbg !2953
  br label %err_free_manuf_data, !dbg !2954

if.end23:                                         ; preds = %land.lhs.true, %if.end15
  %20 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !2955
  %ecc24 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %20, i32 0, i32 31, !dbg !2956
  %engine_type25 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc24, i32 0, i32 0, !dbg !2957
  %21 = load i32, i32* %engine_type25, align 8, !dbg !2957
  %cmp26 = icmp eq i32 %21, 4, !dbg !2958
  br i1 %cmp26, label %if.then28, label %if.end88, !dbg !2959

if.then28:                                        ; preds = %if.end23
  %22 = load i32, i32* %ondie, align 4, !dbg !2960
  %cmp29 = icmp eq i32 %22, 0, !dbg !2962
  br i1 %cmp29, label %if.then31, label %if.end33, !dbg !2963

if.then31:                                        ; preds = %if.then28
  %call32 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str.1, i64 0, i64 0)) #9, !dbg !2964
  store i32 -22, i32* %ret, align 4, !dbg !2966
  br label %err_free_manuf_data, !dbg !2967

if.end33:                                         ; preds = %if.then28
  %23 = load i32, i32* %ondie, align 4, !dbg !2968
  %cmp34 = icmp eq i32 %23, 2, !dbg !2970
  br i1 %cmp34, label %if.then36, label %if.end39, !dbg !2971

if.then36:                                        ; preds = %if.end33
  %24 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !2972
  %ecc37 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %24, i32 0, i32 0, !dbg !2974
  %forced = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc37, i32 0, i32 0, !dbg !2975
  store i8 1, i8* %forced, align 8, !dbg !2976
  %25 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !2977
  %ecc38 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %25, i32 0, i32 0, !dbg !2978
  %enabled = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc38, i32 0, i32 1, !dbg !2979
  store i8 1, i8* %enabled, align 1, !dbg !2980
  br label %if.end39, !dbg !2981

if.end39:                                         ; preds = %if.then36, %if.end33
  %26 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !2982
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %26, i32 0, i32 3, !dbg !2983
  %27 = load i32, i32* %strength, align 4, !dbg !2983
  %cmp40 = icmp eq i32 %27, 4, !dbg !2984
  br i1 %cmp40, label %if.then42, label %if.end52, !dbg !2985

if.then42:                                        ; preds = %if.end39
  %28 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2986
  %writesize43 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 4, !dbg !2987
  %29 = load i32, i32* %writesize43, align 4, !dbg !2987
  %30 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !2988
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 6, !dbg !2989
  %31 = load i32, i32* %oobsize, align 4, !dbg !2989
  %add = add i32 %29, %31, !dbg !2990
  %conv44 = zext i32 %add to i64, !dbg !2986
  store i64 %conv44, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %32 = load i64, i64* %size.addr.i, align 8, !dbg !2991
  %33 = call i1 @llvm.is.constant.i64(i64 %32) #10, !dbg !2992
  br i1 %33, label %if.then.i, label %if.end9.i, !dbg !2993

if.then.i:                                        ; preds = %if.then42
  %34 = load i64, i64* %size.addr.i, align 8, !dbg !2994
  %cmp.i = icmp ugt i64 %34, 8192, !dbg !2995
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2996

if.then1.i:                                       ; preds = %if.then.i
  %35 = load i64, i64* %size.addr.i, align 8, !dbg !2997
  %36 = load i32, i32* %flags.addr.i, align 4, !dbg !2998
  store i64 %35, i64* %size.addr.i.i, align 8
  store i32 %36, i32* %flags.addr.i.i, align 4
  %37 = load i64, i64* %size.addr.i.i, align 8, !dbg !2999
  %call.i.i = call i32 @get_order(i64 %37) #11, !dbg !3000
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2874
  %38 = load i64, i64* %size.addr.i.i, align 8, !dbg !3001
  %39 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3002
  %40 = load i32, i32* %order.i.i, align 4, !dbg !3003
  store i64 %38, i64* %size.addr.i.i.i, align 8
  store i32 %39, i32* %flags.addr.i.i.i, align 4
  store i32 %40, i32* %order.addr.i.i.i, align 4
  %41 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3004
  %42 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3005
  %43 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3006
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %41, i32 %42, i32 %43) #12, !dbg !3007
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3007
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3007
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3007
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3007
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3008
  br label %kmalloc.exit, !dbg !3008

if.end.i:                                         ; preds = %if.then.i
  %44 = load i64, i64* %size.addr.i, align 8, !dbg !3009
  store i64 %44, i64* %size.addr.i11.i, align 8
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3010
  %tobool.i.i = icmp ne i64 %45, 0, !dbg !3010
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3012

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3013
  br label %kmalloc_index.exit.i, !dbg !3013

if.end.i.i:                                       ; preds = %if.end.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3014
  %cmp.i.i = icmp ule i64 %46, 8, !dbg !3016
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3017

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3018
  br label %kmalloc_index.exit.i, !dbg !3018

if.end2.i.i:                                      ; preds = %if.end.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3019
  %cmp3.i.i = icmp ugt i64 %47, 64, !dbg !3021
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3022

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3023
  %cmp4.i.i = icmp ule i64 %48, 96, !dbg !3024
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3025

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3026
  br label %kmalloc_index.exit.i, !dbg !3026

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3027
  %cmp7.i.i = icmp ugt i64 %49, 128, !dbg !3029
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3030

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3031
  %cmp9.i.i = icmp ule i64 %50, 192, !dbg !3032
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3033

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3034
  br label %kmalloc_index.exit.i, !dbg !3034

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3035
  %cmp12.i.i = icmp ule i64 %51, 8, !dbg !3037
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3038

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3039
  br label %kmalloc_index.exit.i, !dbg !3039

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3040
  %cmp15.i.i = icmp ule i64 %52, 16, !dbg !3042
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3043

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3044
  br label %kmalloc_index.exit.i, !dbg !3044

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3045
  %cmp18.i.i = icmp ule i64 %53, 32, !dbg !3047
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3048

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3049
  br label %kmalloc_index.exit.i, !dbg !3049

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3050
  %cmp21.i.i = icmp ule i64 %54, 64, !dbg !3052
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3053

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3054
  br label %kmalloc_index.exit.i, !dbg !3054

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3055
  %cmp24.i.i = icmp ule i64 %55, 128, !dbg !3057
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3058

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3059
  br label %kmalloc_index.exit.i, !dbg !3059

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3060
  %cmp27.i.i = icmp ule i64 %56, 256, !dbg !3062
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3063

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3064
  br label %kmalloc_index.exit.i, !dbg !3064

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3065
  %cmp30.i.i = icmp ule i64 %57, 512, !dbg !3067
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3068

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3069
  br label %kmalloc_index.exit.i, !dbg !3069

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3070
  %cmp33.i.i = icmp ule i64 %58, 1024, !dbg !3072
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3073

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3074
  br label %kmalloc_index.exit.i, !dbg !3074

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3075
  %cmp36.i.i = icmp ule i64 %59, 2048, !dbg !3077
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3078

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3079
  br label %kmalloc_index.exit.i, !dbg !3079

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3080
  %cmp39.i.i = icmp ule i64 %60, 4096, !dbg !3082
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3083

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3084
  br label %kmalloc_index.exit.i, !dbg !3084

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3085
  %cmp42.i.i = icmp ule i64 %61, 8192, !dbg !3087
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3088

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3089
  br label %kmalloc_index.exit.i, !dbg !3089

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3090
  %cmp45.i.i = icmp ule i64 %62, 16384, !dbg !3092
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3093

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3094
  br label %kmalloc_index.exit.i, !dbg !3094

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3095
  %cmp48.i.i = icmp ule i64 %63, 32768, !dbg !3097
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3098

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3099
  br label %kmalloc_index.exit.i, !dbg !3099

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3100
  %cmp51.i.i = icmp ule i64 %64, 65536, !dbg !3102
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3103

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3104
  br label %kmalloc_index.exit.i, !dbg !3104

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %65 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3105
  %cmp54.i.i = icmp ule i64 %65, 131072, !dbg !3107
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3108

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3109
  br label %kmalloc_index.exit.i, !dbg !3109

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %66 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3110
  %cmp57.i.i = icmp ule i64 %66, 262144, !dbg !3112
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3113

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3114
  br label %kmalloc_index.exit.i, !dbg !3114

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %67 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3115
  %cmp60.i.i = icmp ule i64 %67, 524288, !dbg !3117
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3118

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3119
  br label %kmalloc_index.exit.i, !dbg !3119

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %68 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3120
  %cmp63.i.i = icmp ule i64 %68, 1048576, !dbg !3122
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3123

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3124
  br label %kmalloc_index.exit.i, !dbg !3124

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %69 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3125
  %cmp66.i.i = icmp ule i64 %69, 2097152, !dbg !3127
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3128

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3129
  br label %kmalloc_index.exit.i, !dbg !3129

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %70 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3130
  %cmp69.i.i = icmp ule i64 %70, 4194304, !dbg !3132
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3133

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3134
  br label %kmalloc_index.exit.i, !dbg !3134

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %71 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3135
  %cmp72.i.i = icmp ule i64 %71, 8388608, !dbg !3137
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3138

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3139
  br label %kmalloc_index.exit.i, !dbg !3139

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %72 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3140
  %cmp75.i.i = icmp ule i64 %72, 16777216, !dbg !3142
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3143

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3144
  br label %kmalloc_index.exit.i, !dbg !3144

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %73 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3145
  %cmp78.i.i = icmp ule i64 %73, 33554432, !dbg !3147
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3148

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3149
  br label %kmalloc_index.exit.i, !dbg !3149

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %74 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3150
  %cmp81.i.i = icmp ule i64 %74, 67108864, !dbg !3152
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3153

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3154
  br label %kmalloc_index.exit.i, !dbg !3154

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3155, !srcloc !3158
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !3159, !srcloc !3162
  unreachable, !dbg !3163

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %75 = load i32, i32* %retval.i.i, align 4, !dbg !3164
  store i32 %75, i32* %index.i, align 4, !dbg !3165
  %76 = load i32, i32* %index.i, align 4, !dbg !3166
  %tobool.i = icmp ne i32 %76, 0, !dbg !3166
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3168

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3169
  br label %kmalloc.exit, !dbg !3169

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %77 = load i32, i32* %flags.addr.i, align 4, !dbg !3170
  store i32 %77, i32* %flags.addr.i13.i, align 4
  %78 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3171
  %and.i.i = and i32 %78, 17, !dbg !3171
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3171
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3171
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3171
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3171
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3173

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3174
  br label %kmalloc_type.exit.i, !dbg !3174

if.end.i16.i:                                     ; preds = %if.end4.i
  %79 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3175
  %and2.i.i = and i32 %79, 1, !dbg !3176
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3175
  %80 = zext i1 %tobool3.i.i to i64, !dbg !3175
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3175
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3177
  br label %kmalloc_type.exit.i, !dbg !3177

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %81 = load i32, i32* %retval.i12.i, align 4, !dbg !3178
  %idxprom.i = zext i32 %81 to i64, !dbg !3179
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3179
  %82 = load i32, i32* %index.i, align 4, !dbg !3180
  %idxprom6.i = zext i32 %82 to i64, !dbg !3179
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3179
  %83 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3179
  %84 = load i32, i32* %flags.addr.i, align 4, !dbg !3181
  %85 = load i64, i64* %size.addr.i, align 8, !dbg !3182
  store %struct.kmem_cache* %83, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %84, i32* %flags.addr.i17.i, align 4
  store i64 %85, i64* %size.addr.i18.i, align 8
  %86 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3183
  %87 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3184
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %86, i32 %87) #12, !dbg !3185
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3185
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3185
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3185
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3185
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2843
  %88 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3186
  %89 = load i8*, i8** %ret.i.i, align 8, !dbg !3187
  %90 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3188
  %91 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3189
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %88, i8* %89, i64 %90, i32 %91) #12, !dbg !3190
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3191
  %92 = load i8*, i8** %ret.i.i, align 8, !dbg !3192
  store i8* %92, i8** %retval.i, align 8, !dbg !3193
  br label %kmalloc.exit, !dbg !3193

if.end9.i:                                        ; preds = %if.then42
  %93 = load i64, i64* %size.addr.i, align 8, !dbg !3194
  %94 = load i32, i32* %flags.addr.i, align 4, !dbg !3195
  %call10.i = call noalias i8* @__kmalloc(i64 %93, i32 %94) #12, !dbg !3196
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3196
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3196
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3196
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3196
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3197
  br label %kmalloc.exit, !dbg !3197

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %95 = load i8*, i8** %retval.i, align 8, !dbg !3198
  %96 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !3199
  %ecc46 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %96, i32 0, i32 0, !dbg !3200
  %rawbuf = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc46, i32 0, i32 2, !dbg !3201
  store i8* %95, i8** %rawbuf, align 8, !dbg !3202
  %97 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !3203
  %ecc47 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %97, i32 0, i32 0, !dbg !3205
  %rawbuf48 = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc47, i32 0, i32 2, !dbg !3206
  %98 = load i8*, i8** %rawbuf48, align 8, !dbg !3206
  %tobool49 = icmp ne i8* %98, null, !dbg !3203
  br i1 %tobool49, label %if.end51, label %if.then50, !dbg !3207

if.then50:                                        ; preds = %kmalloc.exit
  store i32 -12, i32* %ret, align 4, !dbg !3208
  br label %err_free_manuf_data, !dbg !3210

if.end51:                                         ; preds = %kmalloc.exit
  br label %if.end52, !dbg !3211

if.end52:                                         ; preds = %if.end51, %if.end39
  %99 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3212
  %strength53 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %99, i32 0, i32 3, !dbg !3214
  %100 = load i32, i32* %strength53, align 4, !dbg !3214
  %cmp54 = icmp eq i32 %100, 4, !dbg !3215
  br i1 %cmp54, label %if.then56, label %if.else, !dbg !3216

if.then56:                                        ; preds = %if.end52
  %101 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3217
  call void @mtd_set_ooblayout(%struct.mtd_info* %101, %struct.mtd_ooblayout_ops* @micron_nand_on_die_4_ooblayout_ops) #8, !dbg !3218
  br label %if.end57, !dbg !3218

if.else:                                          ; preds = %if.end52
  %102 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3219
  call void @mtd_set_ooblayout(%struct.mtd_info* %102, %struct.mtd_ooblayout_ops* @micron_nand_on_die_8_ooblayout_ops) #8, !dbg !3220
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then56
  %103 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3221
  %strength58 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %103, i32 0, i32 3, !dbg !3222
  %104 = load i32, i32* %strength58, align 4, !dbg !3222
  %mul = mul i32 %104, 2, !dbg !3223
  %105 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3224
  %ecc59 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %105, i32 0, i32 31, !dbg !3225
  %bytes = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc59, i32 0, i32 5, !dbg !3226
  store i32 %mul, i32* %bytes, align 4, !dbg !3227
  %106 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3228
  %ecc60 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %106, i32 0, i32 31, !dbg !3229
  %size = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc60, i32 0, i32 4, !dbg !3230
  store i32 512, i32* %size, align 8, !dbg !3231
  %107 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3232
  %strength61 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %107, i32 0, i32 3, !dbg !3233
  %108 = load i32, i32* %strength61, align 4, !dbg !3233
  %109 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3234
  %ecc62 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %109, i32 0, i32 31, !dbg !3235
  %strength63 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc62, i32 0, i32 7, !dbg !3236
  store i32 %108, i32* %strength63, align 4, !dbg !3237
  %110 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3238
  %ecc64 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %110, i32 0, i32 31, !dbg !3239
  %algo = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc64, i32 0, i32 2, !dbg !3240
  store i32 2, i32* %algo, align 8, !dbg !3241
  %111 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3242
  %ecc65 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %111, i32 0, i32 31, !dbg !3243
  %read_page = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc65, i32 0, i32 19, !dbg !3244
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @micron_nand_read_page_on_die_ecc, i32 (%struct.nand_chip*, i8*, i32, i32)** %read_page, align 8, !dbg !3245
  %112 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3246
  %ecc66 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %112, i32 0, i32 31, !dbg !3247
  %write_page = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc66, i32 0, i32 22, !dbg !3248
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @micron_nand_write_page_on_die_ecc, i32 (%struct.nand_chip*, i8*, i32, i32)** %write_page, align 8, !dbg !3249
  %113 = load i32, i32* %ondie, align 4, !dbg !3250
  %cmp67 = icmp eq i32 %113, 2, !dbg !3252
  br i1 %cmp67, label %if.then69, label %if.else72, !dbg !3253

if.then69:                                        ; preds = %if.end57
  %114 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3254
  %ecc70 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %114, i32 0, i32 31, !dbg !3256
  %read_page_raw = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc70, i32 0, i32 17, !dbg !3257
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_read_page_raw_notsupp, i32 (%struct.nand_chip*, i8*, i32, i32)** %read_page_raw, align 8, !dbg !3258
  %115 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3259
  %ecc71 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %115, i32 0, i32 31, !dbg !3260
  %write_page_raw = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc71, i32 0, i32 18, !dbg !3261
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_write_page_raw_notsupp, i32 (%struct.nand_chip*, i8*, i32, i32)** %write_page_raw, align 8, !dbg !3262
  br label %if.end87, !dbg !3263

if.else72:                                        ; preds = %if.end57
  %116 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3264
  %ecc73 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %116, i32 0, i32 31, !dbg !3267
  %read_page_raw74 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc73, i32 0, i32 17, !dbg !3268
  %117 = load i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)** %read_page_raw74, align 8, !dbg !3268
  %tobool75 = icmp ne i32 (%struct.nand_chip*, i8*, i32, i32)* %117, null, !dbg !3264
  br i1 %tobool75, label %if.end79, label %if.then76, !dbg !3269

if.then76:                                        ; preds = %if.else72
  %118 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3270
  %ecc77 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %118, i32 0, i32 31, !dbg !3271
  %read_page_raw78 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc77, i32 0, i32 17, !dbg !3272
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_read_page_raw, i32 (%struct.nand_chip*, i8*, i32, i32)** %read_page_raw78, align 8, !dbg !3273
  br label %if.end79, !dbg !3270

if.end79:                                         ; preds = %if.then76, %if.else72
  %119 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3274
  %ecc80 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %119, i32 0, i32 31, !dbg !3276
  %write_page_raw81 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc80, i32 0, i32 18, !dbg !3277
  %120 = load i32 (%struct.nand_chip*, i8*, i32, i32)*, i32 (%struct.nand_chip*, i8*, i32, i32)** %write_page_raw81, align 8, !dbg !3277
  %tobool82 = icmp ne i32 (%struct.nand_chip*, i8*, i32, i32)* %120, null, !dbg !3274
  br i1 %tobool82, label %if.end86, label %if.then83, !dbg !3278

if.then83:                                        ; preds = %if.end79
  %121 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3279
  %ecc84 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %121, i32 0, i32 31, !dbg !3280
  %write_page_raw85 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc84, i32 0, i32 18, !dbg !3281
  store i32 (%struct.nand_chip*, i8*, i32, i32)* @nand_write_page_raw, i32 (%struct.nand_chip*, i8*, i32, i32)** %write_page_raw85, align 8, !dbg !3282
  br label %if.end86, !dbg !3279

if.end86:                                         ; preds = %if.then83, %if.end79
  br label %if.end87

if.end87:                                         ; preds = %if.end86, %if.then69
  br label %if.end88, !dbg !3283

if.end88:                                         ; preds = %if.end87, %if.end23
  store i32 0, i32* %retval, align 4, !dbg !3284
  br label %return, !dbg !3284

err_free_manuf_data:                              ; preds = %if.then50, %if.then31, %if.then21, %if.then6
  call void @llvm.dbg.label(metadata !3285), !dbg !3286
  %122 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !3287
  %ecc89 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %122, i32 0, i32 0, !dbg !3288
  %rawbuf90 = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc89, i32 0, i32 2, !dbg !3289
  %123 = load i8*, i8** %rawbuf90, align 8, !dbg !3289
  call void @kfree(i8* %123) #8, !dbg !3290
  %124 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !3291
  %125 = bitcast %struct.micron_nand* %124 to i8*, !dbg !3291
  call void @kfree(i8* %125) #8, !dbg !3292
  %126 = load i32, i32* %ret, align 4, !dbg !3293
  store i32 %126, i32* %retval, align 4, !dbg !3294
  br label %return, !dbg !3294

return:                                           ; preds = %err_free_manuf_data, %if.end88, %if.then
  %127 = load i32, i32* %retval, align 4, !dbg !3295
  ret i32 %127, !dbg !3295
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @micron_nand_cleanup(%struct.nand_chip* %chip) #0 !dbg !3296 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %micron = alloca %struct.micron_nand*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  call void @llvm.dbg.declare(metadata %struct.micron_nand** %micron, metadata !3299, metadata !DIExpression()), !dbg !3300
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3301
  %call = call i8* @nand_get_manufacturer_data(%struct.nand_chip* %0) #8, !dbg !3302
  %1 = bitcast i8* %call to %struct.micron_nand*, !dbg !3302
  store %struct.micron_nand* %1, %struct.micron_nand** %micron, align 8, !dbg !3300
  %2 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !3303
  %ecc = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %2, i32 0, i32 0, !dbg !3304
  %rawbuf = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc, i32 0, i32 2, !dbg !3305
  %3 = load i8*, i8** %rawbuf, align 8, !dbg !3305
  call void @kfree(i8* %3) #8, !dbg !3306
  %4 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !3307
  %5 = bitcast %struct.micron_nand* %4 to i8*, !dbg !3307
  call void @kfree(i8* %5) #8, !dbg !3308
  ret void, !dbg !3309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @micron_fixup_onfi_param_page(%struct.nand_chip* %chip, %struct.nand_onfi_params* %p) #0 !dbg !3310 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %p.addr = alloca %struct.nand_onfi_params*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3311, metadata !DIExpression()), !dbg !3312
  store %struct.nand_onfi_params* %p, %struct.nand_onfi_params** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_onfi_params** %p.addr, metadata !3313, metadata !DIExpression()), !dbg !3314
  %0 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p.addr, align 8, !dbg !3315
  %revision = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %0, i32 0, i32 1, !dbg !3315
  %1 = load i16, i16* %revision, align 1, !dbg !3315
  %conv = zext i16 %1 to i32, !dbg !3315
  %cmp = icmp eq i32 %conv, 0, !dbg !3317
  br i1 %cmp, label %if.then, label %if.end, !dbg !3318

if.then:                                          ; preds = %entry
  %2 = load %struct.nand_onfi_params*, %struct.nand_onfi_params** %p.addr, align 8, !dbg !3319
  %revision2 = getelementptr inbounds %struct.nand_onfi_params, %struct.nand_onfi_params* %2, i32 0, i32 1, !dbg !3320
  store i16 2, i16* %revision2, align 1, !dbg !3321
  br label %if.end, !dbg !3319

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3322
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_ecc_props* @nanddev_get_ecc_requirements(%struct.nand_device* %nand) #0 !dbg !3323 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !3328
  %ecc = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 2, !dbg !3329
  %requirements = getelementptr inbounds %struct.nand_ecc, %struct.nand_ecc* %ecc, i32 0, i32 1, !dbg !3330
  ret %struct.nand_ecc_props* %requirements, !dbg !3331
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %chip) #0 !dbg !3332 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3337
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3338
  %mtd = getelementptr inbounds %struct.nand_device, %struct.nand_device* %base, i32 0, i32 0, !dbg !3339
  ret %struct.mtd_info* %mtd, !dbg !3340
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3341 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2822, metadata !DIExpression()), !dbg !3342
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2838, metadata !DIExpression()), !dbg !3345
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2840, metadata !DIExpression()), !dbg !3346
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2842, metadata !DIExpression()), !dbg !3347
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2844, metadata !DIExpression()), !dbg !3348
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2850, metadata !DIExpression()), !dbg !3350
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2856, metadata !DIExpression()), !dbg !3352
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2865, metadata !DIExpression()), !dbg !3355
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2867, metadata !DIExpression()), !dbg !3356
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2869, metadata !DIExpression()), !dbg !3357
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2871, metadata !DIExpression()), !dbg !3358
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2873, metadata !DIExpression()), !dbg !3359
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2875, metadata !DIExpression()), !dbg !3360
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2877, metadata !DIExpression()), !dbg !3361
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2879, metadata !DIExpression()), !dbg !3362
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3363, metadata !DIExpression()), !dbg !3364
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3365, metadata !DIExpression()), !dbg !3366
  %0 = load i64, i64* %size.addr, align 8, !dbg !3367
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3368
  %or = or i32 %1, 256, !dbg !3369
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3370
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !3371
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3372

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3373
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3374
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3375

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3376
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3377
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3378
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3379
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3359
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3380
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3381
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3382
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3383
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3384
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3385
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3386
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3386
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3386
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3386
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3386
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3387
  br label %kmalloc.exit, !dbg !3387

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3388
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3389
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3389
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3390

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3391
  br label %kmalloc_index.exit.i, !dbg !3391

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3392
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3393
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3394

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3395
  br label %kmalloc_index.exit.i, !dbg !3395

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3396
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3397
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3398

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3399
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3400
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3401

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3402
  br label %kmalloc_index.exit.i, !dbg !3402

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3403
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3404
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3405

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3406
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3407
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3408

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3409
  br label %kmalloc_index.exit.i, !dbg !3409

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3410
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3411
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3412

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3413
  br label %kmalloc_index.exit.i, !dbg !3413

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3414
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3415
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3416

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3417
  br label %kmalloc_index.exit.i, !dbg !3417

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3418
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3419
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3420

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3421
  br label %kmalloc_index.exit.i, !dbg !3421

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3422
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3423
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3424

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3425
  br label %kmalloc_index.exit.i, !dbg !3425

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3426
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3427
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3428

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3429
  br label %kmalloc_index.exit.i, !dbg !3429

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3430
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3431
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3432

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3433
  br label %kmalloc_index.exit.i, !dbg !3433

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3434
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3435
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3436

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3437
  br label %kmalloc_index.exit.i, !dbg !3437

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3438
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3439
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3440

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3441
  br label %kmalloc_index.exit.i, !dbg !3441

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3442
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3443
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3444

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3445
  br label %kmalloc_index.exit.i, !dbg !3445

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3446
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3447
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3448

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3449
  br label %kmalloc_index.exit.i, !dbg !3449

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3450
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3451
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3452

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3453
  br label %kmalloc_index.exit.i, !dbg !3453

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3454
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3455
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3456

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3457
  br label %kmalloc_index.exit.i, !dbg !3457

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3458
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3459
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3460

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3461
  br label %kmalloc_index.exit.i, !dbg !3461

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3462
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3463
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3464

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3465
  br label %kmalloc_index.exit.i, !dbg !3465

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3466
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3467
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3468

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3469
  br label %kmalloc_index.exit.i, !dbg !3469

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3470
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3471
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3472

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3473
  br label %kmalloc_index.exit.i, !dbg !3473

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3474
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3475
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3476

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3477
  br label %kmalloc_index.exit.i, !dbg !3477

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3478
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3479
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3480

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3481
  br label %kmalloc_index.exit.i, !dbg !3481

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3482
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3483
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3484

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3485
  br label %kmalloc_index.exit.i, !dbg !3485

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3486
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3487
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3488

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3489
  br label %kmalloc_index.exit.i, !dbg !3489

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3490
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3491
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3492

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3493
  br label %kmalloc_index.exit.i, !dbg !3493

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3494
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3495
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3496

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3497
  br label %kmalloc_index.exit.i, !dbg !3497

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3498
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3499
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3500

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3501
  br label %kmalloc_index.exit.i, !dbg !3501

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3502
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3503
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3504

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3505
  br label %kmalloc_index.exit.i, !dbg !3505

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !3506, !srcloc !3158
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 88) #10, !dbg !3507, !srcloc !3162
  unreachable, !dbg !3508

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3509
  store i32 %45, i32* %index.i, align 4, !dbg !3510
  %46 = load i32, i32* %index.i, align 4, !dbg !3511
  %tobool.i = icmp ne i32 %46, 0, !dbg !3511
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3512

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3513
  br label %kmalloc.exit, !dbg !3513

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3514
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3515
  %and.i.i = and i32 %48, 17, !dbg !3515
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3515
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3515
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3515
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3515
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3516

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3517
  br label %kmalloc_type.exit.i, !dbg !3517

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3518
  %and2.i.i = and i32 %49, 1, !dbg !3519
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3518
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3518
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3518
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3520
  br label %kmalloc_type.exit.i, !dbg !3520

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3521
  %idxprom.i = zext i32 %51 to i64, !dbg !3522
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3522
  %52 = load i32, i32* %index.i, align 4, !dbg !3523
  %idxprom6.i = zext i32 %52 to i64, !dbg !3522
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3522
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3522
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3524
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3525
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3526
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3527
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !3528
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3528
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3528
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3528
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !3528
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3347
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3529
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3530
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3531
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3532
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !3533
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3534
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3535
  store i8* %62, i8** %retval.i, align 8, !dbg !3536
  br label %kmalloc.exit, !dbg !3536

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3537
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3538
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !3539
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3539
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3539
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3539
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !3539
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3540
  br label %kmalloc.exit, !dbg !3540

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3541
  ret i8* %65, !dbg !3542
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @nand_set_manufacturer_data(%struct.nand_chip* %chip, i8* %priv) #0 !dbg !3543 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %priv.addr = alloca i8*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  store i8* %priv, i8** %priv.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %priv.addr, metadata !3548, metadata !DIExpression()), !dbg !3549
  %0 = load i8*, i8** %priv.addr, align 8, !dbg !3550
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3551
  %manufacturer = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 3, !dbg !3552
  %priv1 = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer, i32 0, i32 1, !dbg !3553
  store i8* %0, i8** %priv1, align 8, !dbg !3554
  ret void, !dbg !3555
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_onfi_init(%struct.nand_chip* %chip) #0 !dbg !3556 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %p = alloca %struct.nand_parameters*, align 8
  %micron = alloca %struct.nand_onfi_vendor_micron*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3557, metadata !DIExpression()), !dbg !3558
  call void @llvm.dbg.declare(metadata %struct.nand_parameters** %p, metadata !3559, metadata !DIExpression()), !dbg !3561
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3562
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 2, !dbg !3563
  store %struct.nand_parameters* %parameters, %struct.nand_parameters** %p, align 8, !dbg !3561
  %1 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3564
  %onfi = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %1, i32 0, i32 4, !dbg !3566
  %2 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3566
  %tobool = icmp ne %struct.onfi_params* %2, null, !dbg !3564
  br i1 %tobool, label %if.then, label %if.end, !dbg !3567

if.then:                                          ; preds = %entry
  call void @llvm.dbg.declare(metadata %struct.nand_onfi_vendor_micron** %micron, metadata !3568, metadata !DIExpression()), !dbg !3593
  %3 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3594
  %onfi1 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %3, i32 0, i32 4, !dbg !3595
  %4 = load %struct.onfi_params*, %struct.onfi_params** %onfi1, align 8, !dbg !3595
  %vendor = getelementptr inbounds %struct.onfi_params, %struct.onfi_params* %4, i32 0, i32 7, !dbg !3596
  %arraydecay = getelementptr inbounds [88 x i8], [88 x i8]* %vendor, i64 0, i64 0, !dbg !3594
  %5 = bitcast i8* %arraydecay to %struct.nand_onfi_vendor_micron*, !dbg !3597
  store %struct.nand_onfi_vendor_micron* %5, %struct.nand_onfi_vendor_micron** %micron, align 8, !dbg !3593
  %6 = load %struct.nand_onfi_vendor_micron*, %struct.nand_onfi_vendor_micron** %micron, align 8, !dbg !3598
  %read_retry_options = getelementptr inbounds %struct.nand_onfi_vendor_micron, %struct.nand_onfi_vendor_micron* %6, i32 0, i32 14, !dbg !3599
  %7 = load i8, i8* %read_retry_options, align 1, !dbg !3599
  %conv = zext i8 %7 to i32, !dbg !3598
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3600
  %read_retries = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 29, !dbg !3601
  store i32 %conv, i32* %read_retries, align 8, !dbg !3602
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3603
  %ops = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %9, i32 0, i32 4, !dbg !3604
  %setup_read_retry = getelementptr inbounds %struct.nand_chip_ops, %struct.nand_chip_ops* %ops, i32 0, i32 4, !dbg !3605
  store i32 (%struct.nand_chip*, i32)* @micron_nand_setup_read_retry, i32 (%struct.nand_chip*, i32)** %setup_read_retry, align 8, !dbg !3606
  br label %if.end, !dbg !3607

if.end:                                           ; preds = %if.then, %entry
  %10 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3608
  %supports_set_get_features = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %10, i32 0, i32 1, !dbg !3610
  %11 = load i8, i8* %supports_set_get_features, align 8, !dbg !3610
  %tobool2 = trunc i8 %11 to i1, !dbg !3610
  br i1 %tobool2, label %if.then3, label %if.end10, !dbg !3611

if.then3:                                         ; preds = %if.end
  %12 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3612
  %set_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %12, i32 0, i32 2, !dbg !3614
  %arraydecay4 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list, i64 0, i64 0, !dbg !3612
  call void @set_bit(i64 137, i64* %arraydecay4) #8, !dbg !3615
  %13 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3616
  %set_feature_list5 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %13, i32 0, i32 2, !dbg !3617
  %arraydecay6 = getelementptr inbounds [4 x i64], [4 x i64]* %set_feature_list5, i64 0, i64 0, !dbg !3616
  call void @set_bit(i64 144, i64* %arraydecay6) #8, !dbg !3618
  %14 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3619
  %get_feature_list = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %14, i32 0, i32 3, !dbg !3620
  %arraydecay7 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list, i64 0, i64 0, !dbg !3619
  call void @set_bit(i64 137, i64* %arraydecay7) #8, !dbg !3621
  %15 = load %struct.nand_parameters*, %struct.nand_parameters** %p, align 8, !dbg !3622
  %get_feature_list8 = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %15, i32 0, i32 3, !dbg !3623
  %arraydecay9 = getelementptr inbounds [4 x i64], [4 x i64]* %get_feature_list8, i64 0, i64 0, !dbg !3622
  call void @set_bit(i64 144, i64* %arraydecay9) #8, !dbg !3624
  br label %if.end10, !dbg !3625

if.end10:                                         ; preds = %if.then3, %if.end
  ret i32 0, !dbg !3626
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_supports_on_die_ecc(%struct.nand_chip* %chip) #0 !dbg !3627 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %requirements = alloca %struct.nand_ecc_props*, align 8
  %id = alloca [5 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3628, metadata !DIExpression()), !dbg !3629
  call void @llvm.dbg.declare(metadata %struct.nand_ecc_props** %requirements, metadata !3630, metadata !DIExpression()), !dbg !3631
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3632
  %base = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 0, !dbg !3633
  %call = call %struct.nand_ecc_props* @nanddev_get_ecc_requirements(%struct.nand_device* %base) #8, !dbg !3634
  store %struct.nand_ecc_props* %call, %struct.nand_ecc_props** %requirements, align 8, !dbg !3631
  call void @llvm.dbg.declare(metadata [5 x i8]* %id, metadata !3635, metadata !DIExpression()), !dbg !3639
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3640, metadata !DIExpression()), !dbg !3641
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3642
  %parameters = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %1, i32 0, i32 2, !dbg !3644
  %onfi = getelementptr inbounds %struct.nand_parameters, %struct.nand_parameters* %parameters, i32 0, i32 4, !dbg !3645
  %2 = load %struct.onfi_params*, %struct.onfi_params** %onfi, align 8, !dbg !3645
  %tobool = icmp ne %struct.onfi_params* %2, null, !dbg !3642
  br i1 %tobool, label %if.end, label %if.then, !dbg !3646

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3647
  br label %return, !dbg !3647

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3648
  %base1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %3, i32 0, i32 0, !dbg !3650
  %call2 = call i32 @nanddev_bits_per_cell(%struct.nand_device* %base1) #8, !dbg !3651
  %cmp = icmp ne i32 %call2, 1, !dbg !3652
  br i1 %cmp, label %if.then3, label %if.end4, !dbg !3653

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3654
  br label %return, !dbg !3654

if.end4:                                          ; preds = %if.end
  %4 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3655
  %strength = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %4, i32 0, i32 3, !dbg !3657
  %5 = load i32, i32* %strength, align 4, !dbg !3657
  %cmp5 = icmp ne i32 %5, 4, !dbg !3658
  br i1 %cmp5, label %land.lhs.true, label %if.end9, !dbg !3659

land.lhs.true:                                    ; preds = %if.end4
  %6 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3660
  %strength6 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %6, i32 0, i32 3, !dbg !3661
  %7 = load i32, i32* %strength6, align 4, !dbg !3661
  %cmp7 = icmp ne i32 %7, 8, !dbg !3662
  br i1 %cmp7, label %if.then8, label %if.end9, !dbg !3663

if.then8:                                         ; preds = %land.lhs.true
  store i32 0, i32* %retval, align 4, !dbg !3664
  br label %return, !dbg !3664

if.end9:                                          ; preds = %land.lhs.true, %if.end4
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3665
  %id10 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %8, i32 0, i32 1, !dbg !3667
  %len = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id10, i32 0, i32 1, !dbg !3668
  %9 = load i32, i32* %len, align 8, !dbg !3668
  %cmp11 = icmp ne i32 %9, 5, !dbg !3669
  br i1 %cmp11, label %if.then15, label %lor.lhs.false, !dbg !3670

lor.lhs.false:                                    ; preds = %if.end9
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3671
  %id12 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 1, !dbg !3672
  %data = getelementptr inbounds %struct.nand_id, %struct.nand_id* %id12, i32 0, i32 0, !dbg !3673
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %data, i64 0, i64 4, !dbg !3671
  %11 = load i8, i8* %arrayidx, align 4, !dbg !3671
  %conv = zext i8 %11 to i64, !dbg !3671
  %and = and i64 %conv, 3, !dbg !3674
  %cmp13 = icmp ne i64 %and, 2, !dbg !3675
  br i1 %cmp13, label %if.then15, label %if.end16, !dbg !3676

if.then15:                                        ; preds = %lor.lhs.false, %if.end9
  store i32 0, i32* %retval, align 4, !dbg !3677
  br label %return, !dbg !3677

if.end16:                                         ; preds = %lor.lhs.false
  %12 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3678
  %call17 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %12, i1 zeroext true) #8, !dbg !3679
  store i32 %call17, i32* %ret, align 4, !dbg !3680
  %13 = load i32, i32* %ret, align 4, !dbg !3681
  %tobool18 = icmp ne i32 %13, 0, !dbg !3681
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3683

if.then19:                                        ; preds = %if.end16
  store i32 0, i32* %retval, align 4, !dbg !3684
  br label %return, !dbg !3684

if.end20:                                         ; preds = %if.end16
  %14 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3685
  %arraydecay = getelementptr inbounds [5 x i8], [5 x i8]* %id, i64 0, i64 0, !dbg !3686
  %call21 = call i32 @nand_readid_op(%struct.nand_chip* %14, i8 zeroext 0, i8* %arraydecay, i32 5) #8, !dbg !3687
  store i32 %call21, i32* %ret, align 4, !dbg !3688
  %15 = load i32, i32* %ret, align 4, !dbg !3689
  %tobool22 = icmp ne i32 %15, 0, !dbg !3689
  br i1 %tobool22, label %if.then23, label %if.end24, !dbg !3691

if.then23:                                        ; preds = %if.end20
  store i32 0, i32* %retval, align 4, !dbg !3692
  br label %return, !dbg !3692

if.end24:                                         ; preds = %if.end20
  %16 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3693
  %call25 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %16, i1 zeroext false) #8, !dbg !3694
  store i32 %call25, i32* %ret, align 4, !dbg !3695
  %17 = load i32, i32* %ret, align 4, !dbg !3696
  %tobool26 = icmp ne i32 %17, 0, !dbg !3696
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !3698

if.then27:                                        ; preds = %if.end24
  store i32 0, i32* %retval, align 4, !dbg !3699
  br label %return, !dbg !3699

if.end28:                                         ; preds = %if.end24
  %arrayidx29 = getelementptr [5 x i8], [5 x i8]* %id, i64 0, i64 4, !dbg !3700
  %18 = load i8, i8* %arrayidx29, align 1, !dbg !3700
  %conv30 = zext i8 %18 to i64, !dbg !3700
  %and31 = and i64 %conv30, 128, !dbg !3702
  %tobool32 = icmp ne i64 %and31, 0, !dbg !3702
  br i1 %tobool32, label %if.end34, label %if.then33, !dbg !3703

if.then33:                                        ; preds = %if.end28
  store i32 0, i32* %retval, align 4, !dbg !3704
  br label %return, !dbg !3704

if.end34:                                         ; preds = %if.end28
  %19 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3705
  %arraydecay35 = getelementptr inbounds [5 x i8], [5 x i8]* %id, i64 0, i64 0, !dbg !3706
  %call36 = call i32 @nand_readid_op(%struct.nand_chip* %19, i8 zeroext 0, i8* %arraydecay35, i32 5) #8, !dbg !3707
  store i32 %call36, i32* %ret, align 4, !dbg !3708
  %20 = load i32, i32* %ret, align 4, !dbg !3709
  %tobool37 = icmp ne i32 %20, 0, !dbg !3709
  br i1 %tobool37, label %if.then38, label %if.end39, !dbg !3711

if.then38:                                        ; preds = %if.end34
  store i32 0, i32* %retval, align 4, !dbg !3712
  br label %return, !dbg !3712

if.end39:                                         ; preds = %if.end34
  %arrayidx40 = getelementptr [5 x i8], [5 x i8]* %id, i64 0, i64 4, !dbg !3713
  %21 = load i8, i8* %arrayidx40, align 1, !dbg !3713
  %conv41 = zext i8 %21 to i64, !dbg !3713
  %and42 = and i64 %conv41, 128, !dbg !3715
  %tobool43 = icmp ne i64 %and42, 0, !dbg !3715
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3716

if.then44:                                        ; preds = %if.end39
  store i32 2, i32* %retval, align 4, !dbg !3717
  br label %return, !dbg !3717

if.end45:                                         ; preds = %if.end39
  %22 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3718
  %strength46 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %22, i32 0, i32 3, !dbg !3720
  %23 = load i32, i32* %strength46, align 4, !dbg !3720
  %cmp47 = icmp ne i32 %23, 4, !dbg !3721
  br i1 %cmp47, label %land.lhs.true49, label %if.end54, !dbg !3722

land.lhs.true49:                                  ; preds = %if.end45
  %24 = load %struct.nand_ecc_props*, %struct.nand_ecc_props** %requirements, align 8, !dbg !3723
  %strength50 = getelementptr inbounds %struct.nand_ecc_props, %struct.nand_ecc_props* %24, i32 0, i32 3, !dbg !3724
  %25 = load i32, i32* %strength50, align 4, !dbg !3724
  %cmp51 = icmp ne i32 %25, 8, !dbg !3725
  br i1 %cmp51, label %if.then53, label %if.end54, !dbg !3726

if.then53:                                        ; preds = %land.lhs.true49
  store i32 0, i32* %retval, align 4, !dbg !3727
  br label %return, !dbg !3727

if.end54:                                         ; preds = %land.lhs.true49, %if.end45
  store i32 1, i32* %retval, align 4, !dbg !3728
  br label %return, !dbg !3728

return:                                           ; preds = %if.end54, %if.then53, %if.then44, %if.then38, %if.then33, %if.then27, %if.then23, %if.then19, %if.then15, %if.then8, %if.then3, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !3729
  ret i32 %26, !dbg !3729
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_set_ooblayout(%struct.mtd_info* %mtd, %struct.mtd_ooblayout_ops* %ooblayout) #0 !dbg !3730 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %ooblayout.addr = alloca %struct.mtd_ooblayout_ops*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3733, metadata !DIExpression()), !dbg !3734
  store %struct.mtd_ooblayout_ops* %ooblayout, %struct.mtd_ooblayout_ops** %ooblayout.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_ooblayout_ops** %ooblayout.addr, metadata !3735, metadata !DIExpression()), !dbg !3736
  %0 = load %struct.mtd_ooblayout_ops*, %struct.mtd_ooblayout_ops** %ooblayout.addr, align 8, !dbg !3737
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3738
  %ooblayout1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 15, !dbg !3739
  store %struct.mtd_ooblayout_ops* %0, %struct.mtd_ooblayout_ops** %ooblayout1, align 8, !dbg !3740
  ret void, !dbg !3741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_read_page_on_die_ecc(%struct.nand_chip* %chip, i8* %buf, i32 %oob_required, i32 %page) #0 !dbg !3742 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %oob_required.addr = alloca i32, align 4
  %page.addr = alloca i32, align 4
  %mtd = alloca %struct.mtd_info*, align 8
  %use_datain = alloca i8, align 1
  %status = alloca i8, align 1
  %ret = alloca i32, align 4
  %max_bitflips = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3743, metadata !DIExpression()), !dbg !3744
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3745, metadata !DIExpression()), !dbg !3746
  store i32 %oob_required, i32* %oob_required.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %oob_required.addr, metadata !3747, metadata !DIExpression()), !dbg !3748
  store i32 %page, i32* %page.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page.addr, metadata !3749, metadata !DIExpression()), !dbg !3750
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !3751, metadata !DIExpression()), !dbg !3752
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3753
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !3754
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !3752
  call void @llvm.dbg.declare(metadata i8* %use_datain, metadata !3755, metadata !DIExpression()), !dbg !3756
  store i8 0, i8* %use_datain, align 1, !dbg !3756
  call void @llvm.dbg.declare(metadata i8* %status, metadata !3757, metadata !DIExpression()), !dbg !3758
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3759, metadata !DIExpression()), !dbg !3760
  call void @llvm.dbg.declare(metadata i32* %max_bitflips, metadata !3761, metadata !DIExpression()), !dbg !3762
  store i32 0, i32* %max_bitflips, align 4, !dbg !3762
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3763
  %call1 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %1, i1 zeroext true) #8, !dbg !3764
  store i32 %call1, i32* %ret, align 4, !dbg !3765
  %2 = load i32, i32* %ret, align 4, !dbg !3766
  %tobool = icmp ne i32 %2, 0, !dbg !3766
  br i1 %tobool, label %if.then, label %if.end, !dbg !3768

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3769
  store i32 %3, i32* %retval, align 4, !dbg !3770
  br label %return, !dbg !3770

if.end:                                           ; preds = %entry
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3771
  %5 = load i32, i32* %page.addr, align 4, !dbg !3772
  %call2 = call i32 @nand_read_page_op(%struct.nand_chip* %4, i32 %5, i32 0, i8* null, i32 0) #8, !dbg !3773
  store i32 %call2, i32* %ret, align 4, !dbg !3774
  %6 = load i32, i32* %ret, align 4, !dbg !3775
  %tobool3 = icmp ne i32 %6, 0, !dbg !3775
  br i1 %tobool3, label %if.then4, label %if.end5, !dbg !3777

if.then4:                                         ; preds = %if.end
  br label %out, !dbg !3778

if.end5:                                          ; preds = %if.end
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3779
  %call6 = call i32 @nand_status_op(%struct.nand_chip* %7, i8* %status) #8, !dbg !3780
  store i32 %call6, i32* %ret, align 4, !dbg !3781
  %8 = load i32, i32* %ret, align 4, !dbg !3782
  %tobool7 = icmp ne i32 %8, 0, !dbg !3782
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !3784

if.then8:                                         ; preds = %if.end5
  br label %out, !dbg !3785

if.end9:                                          ; preds = %if.end5
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3786
  %call10 = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %9) #8, !dbg !3788
  br i1 %call10, label %lor.lhs.false, label %if.then13, !dbg !3789

lor.lhs.false:                                    ; preds = %if.end9
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3790
  %11 = load i8*, i8** %buf.addr, align 8, !dbg !3791
  %12 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3792
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 4, !dbg !3793
  %13 = load i32, i32* %writesize, align 4, !dbg !3793
  %call11 = call i32 @nand_read_data_op(%struct.nand_chip* %10, i8* %11, i32 %13, i1 zeroext false, i1 zeroext true) #8, !dbg !3794
  %tobool12 = icmp ne i32 %call11, 0, !dbg !3794
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !3795

if.then13:                                        ; preds = %lor.lhs.false, %if.end9
  store i8 1, i8* %use_datain, align 1, !dbg !3796
  br label %if.end14, !dbg !3797

if.end14:                                         ; preds = %if.then13, %lor.lhs.false
  %14 = load i8, i8* %use_datain, align 1, !dbg !3798
  %tobool15 = trunc i8 %14 to i1, !dbg !3798
  br i1 %tobool15, label %if.then16, label %if.else, !dbg !3800

if.then16:                                        ; preds = %if.end14
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3801
  %call17 = call i32 @nand_exit_status_op(%struct.nand_chip* %15) #8, !dbg !3803
  store i32 %call17, i32* %ret, align 4, !dbg !3804
  %16 = load i32, i32* %ret, align 4, !dbg !3805
  %tobool18 = icmp ne i32 %16, 0, !dbg !3805
  br i1 %tobool18, label %if.then19, label %if.end20, !dbg !3807

if.then19:                                        ; preds = %if.then16
  br label %out, !dbg !3808

if.end20:                                         ; preds = %if.then16
  %17 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3809
  %18 = load i8*, i8** %buf.addr, align 8, !dbg !3810
  %19 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3811
  %writesize21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 4, !dbg !3812
  %20 = load i32, i32* %writesize21, align 4, !dbg !3812
  %call22 = call i32 @nand_read_data_op(%struct.nand_chip* %17, i8* %18, i32 %20, i1 zeroext false, i1 zeroext false) #8, !dbg !3813
  store i32 %call22, i32* %ret, align 4, !dbg !3814
  %21 = load i32, i32* %ret, align 4, !dbg !3815
  %tobool23 = icmp ne i32 %21, 0, !dbg !3815
  br i1 %tobool23, label %if.end27, label %land.lhs.true, !dbg !3817

land.lhs.true:                                    ; preds = %if.end20
  %22 = load i32, i32* %oob_required.addr, align 4, !dbg !3818
  %tobool24 = icmp ne i32 %22, 0, !dbg !3818
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !3819

if.then25:                                        ; preds = %land.lhs.true
  %23 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3820
  %24 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3821
  %oob_poi = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %24, i32 0, i32 23, !dbg !3822
  %25 = load i8*, i8** %oob_poi, align 8, !dbg !3822
  %26 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3823
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 6, !dbg !3824
  %27 = load i32, i32* %oobsize, align 4, !dbg !3824
  %call26 = call i32 @nand_read_data_op(%struct.nand_chip* %23, i8* %25, i32 %27, i1 zeroext false, i1 zeroext false) #8, !dbg !3825
  store i32 %call26, i32* %ret, align 4, !dbg !3826
  br label %if.end27, !dbg !3827

if.end27:                                         ; preds = %if.then25, %land.lhs.true, %if.end20
  br label %if.end39, !dbg !3828

if.else:                                          ; preds = %if.end14
  %28 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3829
  %29 = load i8*, i8** %buf.addr, align 8, !dbg !3831
  %30 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3832
  %writesize28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 4, !dbg !3833
  %31 = load i32, i32* %writesize28, align 4, !dbg !3833
  %call29 = call i32 @nand_change_read_column_op(%struct.nand_chip* %28, i32 0, i8* %29, i32 %31, i1 zeroext false) #8, !dbg !3834
  store i32 %call29, i32* %ret, align 4, !dbg !3835
  %32 = load i32, i32* %ret, align 4, !dbg !3836
  %tobool30 = icmp ne i32 %32, 0, !dbg !3836
  br i1 %tobool30, label %if.end38, label %land.lhs.true31, !dbg !3838

land.lhs.true31:                                  ; preds = %if.else
  %33 = load i32, i32* %oob_required.addr, align 4, !dbg !3839
  %tobool32 = icmp ne i32 %33, 0, !dbg !3839
  br i1 %tobool32, label %if.then33, label %if.end38, !dbg !3840

if.then33:                                        ; preds = %land.lhs.true31
  %34 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3841
  %35 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3842
  %writesize34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 4, !dbg !3843
  %36 = load i32, i32* %writesize34, align 4, !dbg !3843
  %37 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3844
  %oob_poi35 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %37, i32 0, i32 23, !dbg !3845
  %38 = load i8*, i8** %oob_poi35, align 8, !dbg !3845
  %39 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !3846
  %oobsize36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 6, !dbg !3847
  %40 = load i32, i32* %oobsize36, align 4, !dbg !3847
  %call37 = call i32 @nand_change_read_column_op(%struct.nand_chip* %34, i32 %36, i8* %38, i32 %40, i1 zeroext false) #8, !dbg !3848
  store i32 %call37, i32* %ret, align 4, !dbg !3849
  br label %if.end38, !dbg !3850

if.end38:                                         ; preds = %if.then33, %land.lhs.true31, %if.else
  br label %if.end39

if.end39:                                         ; preds = %if.end38, %if.end27
  %41 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3851
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 31, !dbg !3853
  %strength = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 7, !dbg !3854
  %42 = load i32, i32* %strength, align 4, !dbg !3854
  %cmp = icmp eq i32 %42, 4, !dbg !3855
  br i1 %cmp, label %if.then40, label %if.else42, !dbg !3856

if.then40:                                        ; preds = %if.end39
  %43 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3857
  %44 = load i8, i8* %status, align 1, !dbg !3858
  %45 = load i8*, i8** %buf.addr, align 8, !dbg !3859
  %46 = load i32, i32* %page.addr, align 4, !dbg !3860
  %47 = load i32, i32* %oob_required.addr, align 4, !dbg !3861
  %call41 = call i32 @micron_nand_on_die_ecc_status_4(%struct.nand_chip* %43, i8 zeroext %44, i8* %45, i32 %46, i32 %47) #8, !dbg !3862
  store i32 %call41, i32* %max_bitflips, align 4, !dbg !3863
  br label %if.end44, !dbg !3864

if.else42:                                        ; preds = %if.end39
  %48 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3865
  %49 = load i8, i8* %status, align 1, !dbg !3866
  %call43 = call i32 @micron_nand_on_die_ecc_status_8(%struct.nand_chip* %48, i8 zeroext %49) #8, !dbg !3867
  store i32 %call43, i32* %max_bitflips, align 4, !dbg !3868
  br label %if.end44

if.end44:                                         ; preds = %if.else42, %if.then40
  br label %out, !dbg !3869

out:                                              ; preds = %if.end44, %if.then19, %if.then8, %if.then4
  call void @llvm.dbg.label(metadata !3870), !dbg !3871
  %50 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3872
  %call45 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %50, i1 zeroext false) #8, !dbg !3873
  %51 = load i32, i32* %ret, align 4, !dbg !3874
  %tobool46 = icmp ne i32 %51, 0, !dbg !3874
  br i1 %tobool46, label %cond.true, label %cond.false, !dbg !3874

cond.true:                                        ; preds = %out
  %52 = load i32, i32* %ret, align 4, !dbg !3875
  br label %cond.end, !dbg !3874

cond.false:                                       ; preds = %out
  %53 = load i32, i32* %max_bitflips, align 4, !dbg !3876
  br label %cond.end, !dbg !3874

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %52, %cond.true ], [ %53, %cond.false ], !dbg !3874
  store i32 %cond, i32* %retval, align 4, !dbg !3877
  br label %return, !dbg !3877

return:                                           ; preds = %cond.end, %if.then
  %54 = load i32, i32* %retval, align 4, !dbg !3878
  ret i32 %54, !dbg !3878
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_write_page_on_die_ecc(%struct.nand_chip* %chip, i8* %buf, i32 %oob_required, i32 %page) #0 !dbg !3879 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %buf.addr = alloca i8*, align 8
  %oob_required.addr = alloca i32, align 4
  %page.addr = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3880, metadata !DIExpression()), !dbg !3881
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3882, metadata !DIExpression()), !dbg !3883
  store i32 %oob_required, i32* %oob_required.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %oob_required.addr, metadata !3884, metadata !DIExpression()), !dbg !3885
  store i32 %page, i32* %page.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page.addr, metadata !3886, metadata !DIExpression()), !dbg !3887
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3888, metadata !DIExpression()), !dbg !3889
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3890
  %call = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %0, i1 zeroext true) #8, !dbg !3891
  store i32 %call, i32* %ret, align 4, !dbg !3892
  %1 = load i32, i32* %ret, align 4, !dbg !3893
  %tobool = icmp ne i32 %1, 0, !dbg !3893
  br i1 %tobool, label %if.then, label %if.end, !dbg !3895

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3896
  store i32 %2, i32* %retval, align 4, !dbg !3897
  br label %return, !dbg !3897

if.end:                                           ; preds = %entry
  %3 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3898
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3899
  %5 = load i32, i32* %oob_required.addr, align 4, !dbg !3900
  %6 = load i32, i32* %page.addr, align 4, !dbg !3901
  %call1 = call i32 @nand_write_page_raw(%struct.nand_chip* %3, i8* %4, i32 %5, i32 %6) #8, !dbg !3902
  store i32 %call1, i32* %ret, align 4, !dbg !3903
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3904
  %call2 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %7, i1 zeroext false) #8, !dbg !3905
  %8 = load i32, i32* %ret, align 4, !dbg !3906
  store i32 %8, i32* %retval, align 4, !dbg !3907
  br label %return, !dbg !3907

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3908
  ret i32 %9, !dbg !3908
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_raw_notsupp(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_write_page_raw_notsupp(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_raw(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_write_page_raw(%struct.nand_chip*, i8*, i32, i32) #3

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_setup_read_retry(%struct.nand_chip* %chip, i32 %retry_mode) #0 !dbg !3909 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  %retry_mode.addr = alloca i32, align 4
  %feature = alloca [4 x i8], align 1
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !3910, metadata !DIExpression()), !dbg !3911
  store i32 %retry_mode, i32* %retry_mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %retry_mode.addr, metadata !3912, metadata !DIExpression()), !dbg !3913
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !3914, metadata !DIExpression()), !dbg !3915
  %arrayinit.begin = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3916
  %0 = load i32, i32* %retry_mode.addr, align 4, !dbg !3917
  %conv = trunc i32 %0 to i8, !dbg !3917
  store i8 %conv, i8* %arrayinit.begin, align 1, !dbg !3916
  %arrayinit.start = getelementptr inbounds i8, i8* %arrayinit.begin, i64 1, !dbg !3916
  %arrayinit.end = getelementptr inbounds i8, i8* %arrayinit.begin, i64 4, !dbg !3916
  br label %arrayinit.body, !dbg !3916

arrayinit.body:                                   ; preds = %arrayinit.body, %entry
  %arrayinit.cur = phi i8* [ %arrayinit.start, %entry ], [ %arrayinit.next, %arrayinit.body ], !dbg !3916
  store i8 0, i8* %arrayinit.cur, align 1, !dbg !3916
  %arrayinit.next = getelementptr inbounds i8, i8* %arrayinit.cur, i64 1, !dbg !3916
  %arrayinit.done = icmp eq i8* %arrayinit.next, %arrayinit.end, !dbg !3916
  br i1 %arrayinit.done, label %arrayinit.end1, label %arrayinit.body, !dbg !3916

arrayinit.end1:                                   ; preds = %arrayinit.body
  %1 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !3918
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !3919
  %call = call i32 @nand_set_features(%struct.nand_chip* %1, i32 137, i8* %arraydecay) #8, !dbg !3920
  ret i32 %call, !dbg !3921
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !3922 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3928, metadata !DIExpression()), !dbg !3931
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3933, metadata !DIExpression()), !dbg !3934
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3935, metadata !DIExpression()), !dbg !3943
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3945, metadata !DIExpression()), !dbg !3946
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3947, metadata !DIExpression()), !dbg !3948
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3949, metadata !DIExpression()), !dbg !3950
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3951
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3952
  %div = sdiv i64 %1, 64, !dbg !3952
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3953
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3951
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3954
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3955
  %conv.i = trunc i64 %4 to i32, !dbg !3955
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !3956
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3957
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3957
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !3957
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3958
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3959
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3960
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !3962
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3963

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3964
  %12 = bitcast i64* %11 to i8*, !dbg !3964
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3964
  %shr.i = ashr i64 %13, 3, !dbg !3964
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3964
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3966
  %and.i = and i64 %14, 7, !dbg !3966
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3966
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3966
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #10, !dbg !3967, !srcloc !3968
  br label %arch_set_bit.exit, !dbg !3969

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3970
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3972
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !3973, !srcloc !3974
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3975
}

; Function Attrs: noredzone
declare dso_local i32 @nand_set_features(%struct.nand_chip*, i32, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3976 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3980, metadata !DIExpression()), !dbg !3981
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3982, metadata !DIExpression()), !dbg !3983
  ret i1 true, !dbg !3984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3985 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3989, metadata !DIExpression()), !dbg !3990
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3991, metadata !DIExpression()), !dbg !3992
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3993, metadata !DIExpression()), !dbg !3994
  ret void, !dbg !3995
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @nanddev_bits_per_cell(%struct.nand_device* %nand) #0 !dbg !3996 {
entry:
  %nand.addr = alloca %struct.nand_device*, align 8
  store %struct.nand_device* %nand, %struct.nand_device** %nand.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_device** %nand.addr, metadata !4001, metadata !DIExpression()), !dbg !4002
  %0 = load %struct.nand_device*, %struct.nand_device** %nand.addr, align 8, !dbg !4003
  %memorg = getelementptr inbounds %struct.nand_device, %struct.nand_device* %0, i32 0, i32 1, !dbg !4004
  %bits_per_cell = getelementptr inbounds %struct.nand_memory_organization, %struct.nand_memory_organization* %memorg, i32 0, i32 0, !dbg !4005
  %1 = load i32, i32* %bits_per_cell, align 8, !dbg !4005
  ret i32 %1, !dbg !4006
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %chip, i1 zeroext %enable) #0 !dbg !4007 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %enable.addr = alloca i8, align 1
  %micron = alloca %struct.micron_nand*, align 8
  %feature = alloca [4 x i8], align 1
  %ret = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4010, metadata !DIExpression()), !dbg !4011
  %frombool = zext i1 %enable to i8
  store i8 %frombool, i8* %enable.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %enable.addr, metadata !4012, metadata !DIExpression()), !dbg !4013
  call void @llvm.dbg.declare(metadata %struct.micron_nand** %micron, metadata !4014, metadata !DIExpression()), !dbg !4015
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4016
  %call = call i8* @nand_get_manufacturer_data(%struct.nand_chip* %0) #8, !dbg !4017
  %1 = bitcast i8* %call to %struct.micron_nand*, !dbg !4017
  store %struct.micron_nand* %1, %struct.micron_nand** %micron, align 8, !dbg !4015
  call void @llvm.dbg.declare(metadata [4 x i8]* %feature, metadata !4018, metadata !DIExpression()), !dbg !4019
  %2 = bitcast [4 x i8]* %feature to i8*, !dbg !4019
  call void @llvm.memset.p0i8.i64(i8* align 1 %2, i8 0, i64 4, i1 false), !dbg !4019
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4020, metadata !DIExpression()), !dbg !4021
  %3 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !4022
  %ecc = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %3, i32 0, i32 0, !dbg !4024
  %forced = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc, i32 0, i32 0, !dbg !4025
  %4 = load i8, i8* %forced, align 8, !dbg !4025
  %tobool = trunc i8 %4 to i1, !dbg !4025
  br i1 %tobool, label %if.then, label %if.end, !dbg !4026

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4027
  br label %return, !dbg !4027

if.end:                                           ; preds = %entry
  %5 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !4028
  %ecc1 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %5, i32 0, i32 0, !dbg !4030
  %enabled = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc1, i32 0, i32 1, !dbg !4031
  %6 = load i8, i8* %enabled, align 1, !dbg !4031
  %tobool2 = trunc i8 %6 to i1, !dbg !4031
  %conv = zext i1 %tobool2 to i32, !dbg !4028
  %7 = load i8, i8* %enable.addr, align 1, !dbg !4032
  %tobool3 = trunc i8 %7 to i1, !dbg !4032
  %conv4 = zext i1 %tobool3 to i32, !dbg !4032
  %cmp = icmp eq i32 %conv, %conv4, !dbg !4033
  br i1 %cmp, label %if.then6, label %if.end7, !dbg !4034

if.then6:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4035
  br label %return, !dbg !4035

if.end7:                                          ; preds = %if.end
  %8 = load i8, i8* %enable.addr, align 1, !dbg !4036
  %tobool8 = trunc i8 %8 to i1, !dbg !4036
  br i1 %tobool8, label %if.then9, label %if.end12, !dbg !4038

if.then9:                                         ; preds = %if.end7
  %arrayidx = getelementptr [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !4039
  %9 = load i8, i8* %arrayidx, align 1, !dbg !4040
  %conv10 = zext i8 %9 to i64, !dbg !4040
  %or = or i64 %conv10, 8, !dbg !4040
  %conv11 = trunc i64 %or to i8, !dbg !4040
  store i8 %conv11, i8* %arrayidx, align 1, !dbg !4040
  br label %if.end12, !dbg !4039

if.end12:                                         ; preds = %if.then9, %if.end7
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4041
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %feature, i64 0, i64 0, !dbg !4042
  %call13 = call i32 @nand_set_features(%struct.nand_chip* %10, i32 144, i8* %arraydecay) #8, !dbg !4043
  store i32 %call13, i32* %ret, align 4, !dbg !4044
  %11 = load i32, i32* %ret, align 4, !dbg !4045
  %tobool14 = icmp ne i32 %11, 0, !dbg !4045
  br i1 %tobool14, label %if.end20, label %if.then15, !dbg !4047

if.then15:                                        ; preds = %if.end12
  %12 = load i8, i8* %enable.addr, align 1, !dbg !4048
  %tobool16 = trunc i8 %12 to i1, !dbg !4048
  %13 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !4049
  %ecc17 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %13, i32 0, i32 0, !dbg !4050
  %enabled18 = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc17, i32 0, i32 1, !dbg !4051
  %frombool19 = zext i1 %tobool16 to i8, !dbg !4052
  store i8 %frombool19, i8* %enabled18, align 1, !dbg !4052
  br label %if.end20, !dbg !4049

if.end20:                                         ; preds = %if.then15, %if.end12
  %14 = load i32, i32* %ret, align 4, !dbg !4053
  store i32 %14, i32* %retval, align 4, !dbg !4054
  br label %return, !dbg !4054

return:                                           ; preds = %if.end20, %if.then6, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !4055
  ret i32 %15, !dbg !4055
}

; Function Attrs: noredzone
declare dso_local i32 @nand_readid_op(%struct.nand_chip*, i8 zeroext, i8*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @nand_get_manufacturer_data(%struct.nand_chip* %chip) #0 !dbg !4056 {
entry:
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4061
  %manufacturer = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 3, !dbg !4062
  %priv = getelementptr inbounds %struct.nand_manufacturer, %struct.nand_manufacturer* %manufacturer, i32 0, i32 1, !dbg !4063
  %1 = load i8*, i8** %priv, align 8, !dbg !4063
  ret i8* %1, !dbg !4064
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4065 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4069, metadata !DIExpression()), !dbg !4073
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4075, metadata !DIExpression()), !dbg !4076
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4077, metadata !DIExpression()), !dbg !4078
  %0 = load i64, i64* %size.addr, align 8, !dbg !4079
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4081
  br i1 %1, label %if.then, label %if.end447, !dbg !4082

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4083
  %tobool = icmp ne i64 %2, 0, !dbg !4083
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4086

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4087
  br label %return, !dbg !4087

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4088
  %cmp = icmp ult i64 %3, 4096, !dbg !4090
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4091

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4092
  br label %return, !dbg !4092

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub = sub i64 %4, 1, !dbg !4093
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4093
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4093

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub4 = sub i64 %6, 1, !dbg !4093
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4093
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4093

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub6 = sub i64 %8, 1, !dbg !4093
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4093
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4093

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4093

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub9 = sub i64 %9, 1, !dbg !4093
  %and = and i64 %sub9, -9223372036854775808, !dbg !4093
  %tobool10 = icmp ne i64 %and, 0, !dbg !4093
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4093

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4093

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub13 = sub i64 %10, 1, !dbg !4093
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4093
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4093
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4093

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4093

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub18 = sub i64 %11, 1, !dbg !4093
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4093
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4093
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4093

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4093

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub23 = sub i64 %12, 1, !dbg !4093
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4093
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4093
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4093

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4093

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub28 = sub i64 %13, 1, !dbg !4093
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4093
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4093
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4093

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4093

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub33 = sub i64 %14, 1, !dbg !4093
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4093
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4093
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4093

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4093

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub38 = sub i64 %15, 1, !dbg !4093
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4093
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4093
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4093

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4093

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub43 = sub i64 %16, 1, !dbg !4093
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4093
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4093
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4093

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4093

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub48 = sub i64 %17, 1, !dbg !4093
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4093
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4093
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4093

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4093

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub53 = sub i64 %18, 1, !dbg !4093
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4093
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4093
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4093

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4093

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub58 = sub i64 %19, 1, !dbg !4093
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4093
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4093
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4093

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4093

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub63 = sub i64 %20, 1, !dbg !4093
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4093
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4093
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4093

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4093

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub68 = sub i64 %21, 1, !dbg !4093
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4093
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4093
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4093

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4093

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub73 = sub i64 %22, 1, !dbg !4093
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4093
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4093
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4093

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4093

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub78 = sub i64 %23, 1, !dbg !4093
  %and79 = and i64 %sub78, 562949953421312, !dbg !4093
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4093
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4093

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4093

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub83 = sub i64 %24, 1, !dbg !4093
  %and84 = and i64 %sub83, 281474976710656, !dbg !4093
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4093
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4093

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4093

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub88 = sub i64 %25, 1, !dbg !4093
  %and89 = and i64 %sub88, 140737488355328, !dbg !4093
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4093
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4093

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4093

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub93 = sub i64 %26, 1, !dbg !4093
  %and94 = and i64 %sub93, 70368744177664, !dbg !4093
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4093
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4093

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4093

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub98 = sub i64 %27, 1, !dbg !4093
  %and99 = and i64 %sub98, 35184372088832, !dbg !4093
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4093
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4093

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4093

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub103 = sub i64 %28, 1, !dbg !4093
  %and104 = and i64 %sub103, 17592186044416, !dbg !4093
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4093
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4093

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4093

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub108 = sub i64 %29, 1, !dbg !4093
  %and109 = and i64 %sub108, 8796093022208, !dbg !4093
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4093
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4093

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4093

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub113 = sub i64 %30, 1, !dbg !4093
  %and114 = and i64 %sub113, 4398046511104, !dbg !4093
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4093
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4093

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4093

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub118 = sub i64 %31, 1, !dbg !4093
  %and119 = and i64 %sub118, 2199023255552, !dbg !4093
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4093
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4093

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4093

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub123 = sub i64 %32, 1, !dbg !4093
  %and124 = and i64 %sub123, 1099511627776, !dbg !4093
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4093
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4093

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4093

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub128 = sub i64 %33, 1, !dbg !4093
  %and129 = and i64 %sub128, 549755813888, !dbg !4093
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4093
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4093

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4093

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub133 = sub i64 %34, 1, !dbg !4093
  %and134 = and i64 %sub133, 274877906944, !dbg !4093
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4093
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4093

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4093

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub138 = sub i64 %35, 1, !dbg !4093
  %and139 = and i64 %sub138, 137438953472, !dbg !4093
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4093
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4093

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4093

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub143 = sub i64 %36, 1, !dbg !4093
  %and144 = and i64 %sub143, 68719476736, !dbg !4093
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4093
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4093

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4093

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub148 = sub i64 %37, 1, !dbg !4093
  %and149 = and i64 %sub148, 34359738368, !dbg !4093
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4093
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4093

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4093

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub153 = sub i64 %38, 1, !dbg !4093
  %and154 = and i64 %sub153, 17179869184, !dbg !4093
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4093
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4093

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4093

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub158 = sub i64 %39, 1, !dbg !4093
  %and159 = and i64 %sub158, 8589934592, !dbg !4093
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4093
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4093

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4093

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub163 = sub i64 %40, 1, !dbg !4093
  %and164 = and i64 %sub163, 4294967296, !dbg !4093
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4093
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4093

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4093

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub168 = sub i64 %41, 1, !dbg !4093
  %and169 = and i64 %sub168, 2147483648, !dbg !4093
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4093
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4093

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4093

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub173 = sub i64 %42, 1, !dbg !4093
  %and174 = and i64 %sub173, 1073741824, !dbg !4093
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4093
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4093

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4093

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub178 = sub i64 %43, 1, !dbg !4093
  %and179 = and i64 %sub178, 536870912, !dbg !4093
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4093
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4093

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4093

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub183 = sub i64 %44, 1, !dbg !4093
  %and184 = and i64 %sub183, 268435456, !dbg !4093
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4093
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4093

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4093

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub188 = sub i64 %45, 1, !dbg !4093
  %and189 = and i64 %sub188, 134217728, !dbg !4093
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4093
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4093

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4093

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub193 = sub i64 %46, 1, !dbg !4093
  %and194 = and i64 %sub193, 67108864, !dbg !4093
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4093
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4093

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4093

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub198 = sub i64 %47, 1, !dbg !4093
  %and199 = and i64 %sub198, 33554432, !dbg !4093
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4093
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4093

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4093

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub203 = sub i64 %48, 1, !dbg !4093
  %and204 = and i64 %sub203, 16777216, !dbg !4093
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4093
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4093

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4093

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub208 = sub i64 %49, 1, !dbg !4093
  %and209 = and i64 %sub208, 8388608, !dbg !4093
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4093
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4093

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4093

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub213 = sub i64 %50, 1, !dbg !4093
  %and214 = and i64 %sub213, 4194304, !dbg !4093
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4093
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4093

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4093

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub218 = sub i64 %51, 1, !dbg !4093
  %and219 = and i64 %sub218, 2097152, !dbg !4093
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4093
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4093

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4093

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub223 = sub i64 %52, 1, !dbg !4093
  %and224 = and i64 %sub223, 1048576, !dbg !4093
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4093
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4093

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4093

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub228 = sub i64 %53, 1, !dbg !4093
  %and229 = and i64 %sub228, 524288, !dbg !4093
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4093
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4093

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4093

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub233 = sub i64 %54, 1, !dbg !4093
  %and234 = and i64 %sub233, 262144, !dbg !4093
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4093
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4093

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4093

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub238 = sub i64 %55, 1, !dbg !4093
  %and239 = and i64 %sub238, 131072, !dbg !4093
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4093
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4093

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4093

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub243 = sub i64 %56, 1, !dbg !4093
  %and244 = and i64 %sub243, 65536, !dbg !4093
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4093
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4093

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4093

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub248 = sub i64 %57, 1, !dbg !4093
  %and249 = and i64 %sub248, 32768, !dbg !4093
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4093
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4093

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4093

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub253 = sub i64 %58, 1, !dbg !4093
  %and254 = and i64 %sub253, 16384, !dbg !4093
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4093
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4093

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4093

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub258 = sub i64 %59, 1, !dbg !4093
  %and259 = and i64 %sub258, 8192, !dbg !4093
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4093
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4093

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4093

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub263 = sub i64 %60, 1, !dbg !4093
  %and264 = and i64 %sub263, 4096, !dbg !4093
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4093
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4093

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4093

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub268 = sub i64 %61, 1, !dbg !4093
  %and269 = and i64 %sub268, 2048, !dbg !4093
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4093
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4093

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4093

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub273 = sub i64 %62, 1, !dbg !4093
  %and274 = and i64 %sub273, 1024, !dbg !4093
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4093
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4093

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4093

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub278 = sub i64 %63, 1, !dbg !4093
  %and279 = and i64 %sub278, 512, !dbg !4093
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4093
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4093

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4093

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub283 = sub i64 %64, 1, !dbg !4093
  %and284 = and i64 %sub283, 256, !dbg !4093
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4093
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4093

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4093

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub288 = sub i64 %65, 1, !dbg !4093
  %and289 = and i64 %sub288, 128, !dbg !4093
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4093
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4093

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4093

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub293 = sub i64 %66, 1, !dbg !4093
  %and294 = and i64 %sub293, 64, !dbg !4093
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4093
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4093

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4093

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub298 = sub i64 %67, 1, !dbg !4093
  %and299 = and i64 %sub298, 32, !dbg !4093
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4093
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4093

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4093

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub303 = sub i64 %68, 1, !dbg !4093
  %and304 = and i64 %sub303, 16, !dbg !4093
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4093
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4093

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4093

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub308 = sub i64 %69, 1, !dbg !4093
  %and309 = and i64 %sub308, 8, !dbg !4093
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4093
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4093

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4093

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub313 = sub i64 %70, 1, !dbg !4093
  %and314 = and i64 %sub313, 4, !dbg !4093
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4093
  %71 = zext i1 %tobool315 to i64, !dbg !4093
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4093
  br label %cond.end, !dbg !4093

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4093
  br label %cond.end317, !dbg !4093

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4093
  br label %cond.end319, !dbg !4093

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4093
  br label %cond.end321, !dbg !4093

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4093
  br label %cond.end323, !dbg !4093

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4093
  br label %cond.end325, !dbg !4093

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4093
  br label %cond.end327, !dbg !4093

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4093
  br label %cond.end329, !dbg !4093

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4093
  br label %cond.end331, !dbg !4093

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4093
  br label %cond.end333, !dbg !4093

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4093
  br label %cond.end335, !dbg !4093

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4093
  br label %cond.end337, !dbg !4093

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4093
  br label %cond.end339, !dbg !4093

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4093
  br label %cond.end341, !dbg !4093

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4093
  br label %cond.end343, !dbg !4093

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4093
  br label %cond.end345, !dbg !4093

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4093
  br label %cond.end347, !dbg !4093

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4093
  br label %cond.end349, !dbg !4093

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4093
  br label %cond.end351, !dbg !4093

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4093
  br label %cond.end353, !dbg !4093

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4093
  br label %cond.end355, !dbg !4093

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4093
  br label %cond.end357, !dbg !4093

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4093
  br label %cond.end359, !dbg !4093

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4093
  br label %cond.end361, !dbg !4093

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4093
  br label %cond.end363, !dbg !4093

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4093
  br label %cond.end365, !dbg !4093

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4093
  br label %cond.end367, !dbg !4093

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4093
  br label %cond.end369, !dbg !4093

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4093
  br label %cond.end371, !dbg !4093

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4093
  br label %cond.end373, !dbg !4093

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4093
  br label %cond.end375, !dbg !4093

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4093
  br label %cond.end377, !dbg !4093

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4093
  br label %cond.end379, !dbg !4093

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4093
  br label %cond.end381, !dbg !4093

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4093
  br label %cond.end383, !dbg !4093

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4093
  br label %cond.end385, !dbg !4093

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4093
  br label %cond.end387, !dbg !4093

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4093
  br label %cond.end389, !dbg !4093

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4093
  br label %cond.end391, !dbg !4093

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4093
  br label %cond.end393, !dbg !4093

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4093
  br label %cond.end395, !dbg !4093

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4093
  br label %cond.end397, !dbg !4093

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4093
  br label %cond.end399, !dbg !4093

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4093
  br label %cond.end401, !dbg !4093

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4093
  br label %cond.end403, !dbg !4093

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4093
  br label %cond.end405, !dbg !4093

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4093
  br label %cond.end407, !dbg !4093

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4093
  br label %cond.end409, !dbg !4093

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4093
  br label %cond.end411, !dbg !4093

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4093
  br label %cond.end413, !dbg !4093

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4093
  br label %cond.end415, !dbg !4093

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4093
  br label %cond.end417, !dbg !4093

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4093
  br label %cond.end419, !dbg !4093

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4093
  br label %cond.end421, !dbg !4093

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4093
  br label %cond.end423, !dbg !4093

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4093
  br label %cond.end425, !dbg !4093

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4093
  br label %cond.end427, !dbg !4093

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4093
  br label %cond.end429, !dbg !4093

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4093
  br label %cond.end431, !dbg !4093

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4093
  br label %cond.end433, !dbg !4093

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4093
  br label %cond.end435, !dbg !4093

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4093
  br label %cond.end437, !dbg !4093

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4093
  br label %cond.end440, !dbg !4093

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4093

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4093
  br label %cond.end444, !dbg !4093

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4093
  %sub443 = sub i64 %72, 1, !dbg !4093
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4093
  br label %cond.end444, !dbg !4093

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4093
  %sub446 = sub i32 %cond445, 12, !dbg !4094
  %add = add i32 %sub446, 1, !dbg !4095
  store i32 %add, i32* %retval, align 4, !dbg !4096
  br label %return, !dbg !4096

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4097
  %dec = add i64 %73, -1, !dbg !4097
  store i64 %dec, i64* %size.addr, align 8, !dbg !4097
  %74 = load i64, i64* %size.addr, align 8, !dbg !4098
  %shr = lshr i64 %74, 12, !dbg !4098
  store i64 %shr, i64* %size.addr, align 8, !dbg !4098
  %75 = load i64, i64* %size.addr, align 8, !dbg !4099
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4076
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4100
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4101
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4100, !srcloc !4102
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4100
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4103
  %add.i = add i32 %79, 1, !dbg !4104
  store i32 %add.i, i32* %retval, align 4, !dbg !4105
  br label %return, !dbg !4105

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4106
  ret i32 %80, !dbg !4106
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4107 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4069, metadata !DIExpression()), !dbg !4111
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4075, metadata !DIExpression()), !dbg !4113
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4114, metadata !DIExpression()), !dbg !4115
  %0 = load i64, i64* %n.addr, align 8, !dbg !4116
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4113
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4117
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4118
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4117, !srcloc !4102
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4117
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4119
  %add.i = add i32 %4, 1, !dbg !4120
  %sub = sub i32 %add.i, 1, !dbg !4121
  ret i32 %sub, !dbg !4122
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4123 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4126, metadata !DIExpression()), !dbg !4127
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4128, metadata !DIExpression()), !dbg !4129
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4130, metadata !DIExpression()), !dbg !4131
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4132, metadata !DIExpression()), !dbg !4133
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4134
  ret i8* %0, !dbg !4135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_4_ooblayout_ecc(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !4136 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4137, metadata !DIExpression()), !dbg !4138
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !4139, metadata !DIExpression()), !dbg !4140
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !4141, metadata !DIExpression()), !dbg !4142
  %0 = load i32, i32* %section.addr, align 4, !dbg !4143
  %cmp = icmp sge i32 %0, 4, !dbg !4145
  br i1 %cmp, label %if.then, label %if.end, !dbg !4146

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !4147
  br label %return, !dbg !4147

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %section.addr, align 4, !dbg !4148
  %mul = mul i32 %1, 16, !dbg !4149
  %add = add i32 %mul, 8, !dbg !4150
  %2 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4151
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %2, i32 0, i32 0, !dbg !4152
  store i32 %add, i32* %offset, align 4, !dbg !4153
  %3 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4154
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %3, i32 0, i32 1, !dbg !4155
  store i32 8, i32* %length, align 4, !dbg !4156
  store i32 0, i32* %retval, align 4, !dbg !4157
  br label %return, !dbg !4157

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4158
  ret i32 %4, !dbg !4158
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_4_ooblayout_free(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !4159 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4160, metadata !DIExpression()), !dbg !4161
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !4162, metadata !DIExpression()), !dbg !4163
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !4164, metadata !DIExpression()), !dbg !4165
  %0 = load i32, i32* %section.addr, align 4, !dbg !4166
  %cmp = icmp sge i32 %0, 4, !dbg !4168
  br i1 %cmp, label %if.then, label %if.end, !dbg !4169

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !4170
  br label %return, !dbg !4170

if.end:                                           ; preds = %entry
  %1 = load i32, i32* %section.addr, align 4, !dbg !4171
  %mul = mul i32 %1, 16, !dbg !4172
  %add = add i32 %mul, 2, !dbg !4173
  %2 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4174
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %2, i32 0, i32 0, !dbg !4175
  store i32 %add, i32* %offset, align 4, !dbg !4176
  %3 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4177
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %3, i32 0, i32 1, !dbg !4178
  store i32 6, i32* %length, align 4, !dbg !4179
  store i32 0, i32* %retval, align 4, !dbg !4180
  br label %return, !dbg !4180

return:                                           ; preds = %if.end, %if.then
  %4 = load i32, i32* %retval, align 4, !dbg !4181
  ret i32 %4, !dbg !4181
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_8_ooblayout_ecc(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !4182 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %chip = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4183, metadata !DIExpression()), !dbg !4184
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !4185, metadata !DIExpression()), !dbg !4186
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !4187, metadata !DIExpression()), !dbg !4188
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip, metadata !4189, metadata !DIExpression()), !dbg !4190
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4191
  %call = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %0) #8, !dbg !4192
  store %struct.nand_chip* %call, %struct.nand_chip** %chip, align 8, !dbg !4190
  %1 = load i32, i32* %section.addr, align 4, !dbg !4193
  %tobool = icmp ne i32 %1, 0, !dbg !4193
  br i1 %tobool, label %if.then, label %if.end, !dbg !4195

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !4196
  br label %return, !dbg !4196

if.end:                                           ; preds = %entry
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4197
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 6, !dbg !4198
  %3 = load i32, i32* %oobsize, align 4, !dbg !4198
  %4 = load %struct.nand_chip*, %struct.nand_chip** %chip, align 8, !dbg !4199
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %4, i32 0, i32 31, !dbg !4200
  %total = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 6, !dbg !4201
  %5 = load i32, i32* %total, align 8, !dbg !4201
  %sub = sub i32 %3, %5, !dbg !4202
  %6 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4203
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %6, i32 0, i32 0, !dbg !4204
  store i32 %sub, i32* %offset, align 4, !dbg !4205
  %7 = load %struct.nand_chip*, %struct.nand_chip** %chip, align 8, !dbg !4206
  %ecc1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %7, i32 0, i32 31, !dbg !4207
  %total2 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc1, i32 0, i32 6, !dbg !4208
  %8 = load i32, i32* %total2, align 8, !dbg !4208
  %9 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4209
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %9, i32 0, i32 1, !dbg !4210
  store i32 %8, i32* %length, align 4, !dbg !4211
  store i32 0, i32* %retval, align 4, !dbg !4212
  br label %return, !dbg !4212

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4213
  ret i32 %10, !dbg !4213
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_8_ooblayout_free(%struct.mtd_info* %mtd, i32 %section, %struct.mtd_oob_region* %oobregion) #0 !dbg !4214 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %section.addr = alloca i32, align 4
  %oobregion.addr = alloca %struct.mtd_oob_region*, align 8
  %chip = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  store i32 %section, i32* %section.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %section.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  store %struct.mtd_oob_region* %oobregion, %struct.mtd_oob_region** %oobregion.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_oob_region** %oobregion.addr, metadata !4219, metadata !DIExpression()), !dbg !4220
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip, metadata !4221, metadata !DIExpression()), !dbg !4222
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4223
  %call = call %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %0) #8, !dbg !4224
  store %struct.nand_chip* %call, %struct.nand_chip** %chip, align 8, !dbg !4222
  %1 = load i32, i32* %section.addr, align 4, !dbg !4225
  %tobool = icmp ne i32 %1, 0, !dbg !4225
  br i1 %tobool, label %if.then, label %if.end, !dbg !4227

if.then:                                          ; preds = %entry
  store i32 -34, i32* %retval, align 4, !dbg !4228
  br label %return, !dbg !4228

if.end:                                           ; preds = %entry
  %2 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4229
  %offset = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %2, i32 0, i32 0, !dbg !4230
  store i32 2, i32* %offset, align 4, !dbg !4231
  %3 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4232
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 6, !dbg !4233
  %4 = load i32, i32* %oobsize, align 4, !dbg !4233
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip, align 8, !dbg !4234
  %ecc = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 31, !dbg !4235
  %total = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc, i32 0, i32 6, !dbg !4236
  %6 = load i32, i32* %total, align 8, !dbg !4236
  %sub = sub i32 %4, %6, !dbg !4237
  %sub1 = sub i32 %sub, 2, !dbg !4238
  %7 = load %struct.mtd_oob_region*, %struct.mtd_oob_region** %oobregion.addr, align 8, !dbg !4239
  %length = getelementptr inbounds %struct.mtd_oob_region, %struct.mtd_oob_region* %7, i32 0, i32 1, !dbg !4240
  store i32 %sub1, i32* %length, align 4, !dbg !4241
  store i32 0, i32* %retval, align 4, !dbg !4242
  br label %return, !dbg !4242

return:                                           ; preds = %if.end, %if.then
  %8 = load i32, i32* %retval, align 4, !dbg !4243
  ret i32 %8, !dbg !4243
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.nand_chip* @mtd_to_nand(%struct.mtd_info* %mtd) #0 !dbg !4244 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.nand_chip*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4249, metadata !DIExpression()), !dbg !4251
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4251
  %1 = bitcast %struct.mtd_info* %0 to i8*, !dbg !4251
  store i8* %1, i8** %__mptr, align 8, !dbg !4251
  br label %do.body, !dbg !4251

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4252

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4251
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !4251
  %3 = bitcast i8* %add.ptr to %struct.nand_chip*, !dbg !4251
  store %struct.nand_chip* %3, %struct.nand_chip** %tmp, align 8, !dbg !4252
  %4 = load %struct.nand_chip*, %struct.nand_chip** %tmp, align 8, !dbg !4251
  ret %struct.nand_chip* %4, !dbg !4254
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_page_op(%struct.nand_chip*, i32, i32, i8*, i32) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_status_op(%struct.nand_chip*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @nand_has_exec_op(%struct.nand_chip* %chip) #0 !dbg !4255 {
entry:
  %retval = alloca i1, align 1
  %chip.addr = alloca %struct.nand_chip*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4258, metadata !DIExpression()), !dbg !4259
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4260
  %controller = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %0, i32 0, i32 30, !dbg !4262
  %1 = load %struct.nand_controller*, %struct.nand_controller** %controller, align 8, !dbg !4262
  %tobool = icmp ne %struct.nand_controller* %1, null, !dbg !4260
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !4263

lor.lhs.false:                                    ; preds = %entry
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4264
  %controller1 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %2, i32 0, i32 30, !dbg !4265
  %3 = load %struct.nand_controller*, %struct.nand_controller** %controller1, align 8, !dbg !4265
  %ops = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %3, i32 0, i32 1, !dbg !4266
  %4 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops, align 8, !dbg !4266
  %tobool2 = icmp ne %struct.nand_controller_ops* %4, null, !dbg !4264
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !4267

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4268
  %controller4 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %5, i32 0, i32 30, !dbg !4269
  %6 = load %struct.nand_controller*, %struct.nand_controller** %controller4, align 8, !dbg !4269
  %ops5 = getelementptr inbounds %struct.nand_controller, %struct.nand_controller* %6, i32 0, i32 1, !dbg !4270
  %7 = load %struct.nand_controller_ops*, %struct.nand_controller_ops** %ops5, align 8, !dbg !4270
  %exec_op = getelementptr inbounds %struct.nand_controller_ops, %struct.nand_controller_ops* %7, i32 0, i32 2, !dbg !4271
  %8 = load i32 (%struct.nand_chip*, %struct.nand_operation*, i1)*, i32 (%struct.nand_chip*, %struct.nand_operation*, i1)** %exec_op, align 8, !dbg !4271
  %tobool6 = icmp ne i32 (%struct.nand_chip*, %struct.nand_operation*, i1)* %8, null, !dbg !4268
  br i1 %tobool6, label %if.end, label %if.then, !dbg !4272

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %entry
  store i1 false, i1* %retval, align 1, !dbg !4273
  br label %return, !dbg !4273

if.end:                                           ; preds = %lor.lhs.false3
  store i1 true, i1* %retval, align 1, !dbg !4274
  br label %return, !dbg !4274

return:                                           ; preds = %if.end, %if.then
  %9 = load i1, i1* %retval, align 1, !dbg !4275
  ret i1 %9, !dbg !4275
}

; Function Attrs: noredzone
declare dso_local i32 @nand_read_data_op(%struct.nand_chip*, i8*, i32, i1 zeroext, i1 zeroext) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_exit_status_op(%struct.nand_chip*) #3

; Function Attrs: noredzone
declare dso_local i32 @nand_change_read_column_op(%struct.nand_chip*, i32, i8*, i32, i1 zeroext) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_ecc_status_4(%struct.nand_chip* %chip, i8 zeroext %status, i8* %buf, i32 %page, i32 %oob_required) #0 !dbg !4276 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %status.addr = alloca i8, align 1
  %buf.addr = alloca i8*, align 8
  %page.addr = alloca i32, align 4
  %oob_required.addr = alloca i32, align 4
  %micron = alloca %struct.micron_nand*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  %step = alloca i32, align 4
  %max_bitflips = alloca i32, align 4
  %use_datain = alloca i8, align 1
  %ret = alloca i32, align 4
  %offs = alloca i32, align 4
  %i = alloca i32, align 4
  %nbitflips = alloca i32, align 4
  %rawbuf36 = alloca i8*, align 8
  %corrbuf = alloca i8*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__UNIQUE_ID___x173 = alloca i32, align 4
  %__UNIQUE_ID___y174 = alloca i32, align 4
  %tmp369 = alloca i32, align 4
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4279, metadata !DIExpression()), !dbg !4280
  store i8 %status, i8* %status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %status.addr, metadata !4281, metadata !DIExpression()), !dbg !4282
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4283, metadata !DIExpression()), !dbg !4284
  store i32 %page, i32* %page.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %page.addr, metadata !4285, metadata !DIExpression()), !dbg !4286
  store i32 %oob_required, i32* %oob_required.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %oob_required.addr, metadata !4287, metadata !DIExpression()), !dbg !4288
  call void @llvm.dbg.declare(metadata %struct.micron_nand** %micron, metadata !4289, metadata !DIExpression()), !dbg !4290
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4291
  %call = call i8* @nand_get_manufacturer_data(%struct.nand_chip* %0) #8, !dbg !4292
  %1 = bitcast i8* %call to %struct.micron_nand*, !dbg !4292
  store %struct.micron_nand* %1, %struct.micron_nand** %micron, align 8, !dbg !4290
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4293, metadata !DIExpression()), !dbg !4294
  %2 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4295
  %call1 = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %2) #8, !dbg !4296
  store %struct.mtd_info* %call1, %struct.mtd_info** %mtd, align 8, !dbg !4294
  call void @llvm.dbg.declare(metadata i32* %step, metadata !4297, metadata !DIExpression()), !dbg !4298
  call void @llvm.dbg.declare(metadata i32* %max_bitflips, metadata !4299, metadata !DIExpression()), !dbg !4300
  store i32 0, i32* %max_bitflips, align 4, !dbg !4300
  call void @llvm.dbg.declare(metadata i8* %use_datain, metadata !4301, metadata !DIExpression()), !dbg !4302
  store i8 0, i8* %use_datain, align 1, !dbg !4302
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4303, metadata !DIExpression()), !dbg !4304
  %3 = load i8, i8* %status.addr, align 1, !dbg !4305
  %conv = zext i8 %3 to i64, !dbg !4305
  %and = and i64 %conv, 8, !dbg !4307
  %tobool = icmp ne i64 %and, 0, !dbg !4307
  br i1 %tobool, label %if.end6, label %if.then, !dbg !4308

if.then:                                          ; preds = %entry
  %4 = load i8, i8* %status.addr, align 1, !dbg !4309
  %conv2 = zext i8 %4 to i32, !dbg !4309
  %and3 = and i32 %conv2, 1, !dbg !4312
  %tobool4 = icmp ne i32 %and3, 0, !dbg !4312
  br i1 %tobool4, label %if.then5, label %if.end, !dbg !4313

if.then5:                                         ; preds = %if.then
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4314
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 51, !dbg !4315
  %failed = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 1, !dbg !4316
  %6 = load i32, i32* %failed, align 4, !dbg !4317
  %inc = add i32 %6, 1, !dbg !4317
  store i32 %inc, i32* %failed, align 4, !dbg !4317
  br label %if.end, !dbg !4314

if.end:                                           ; preds = %if.then5, %if.then
  store i32 0, i32* %retval, align 4, !dbg !4318
  br label %return, !dbg !4318

if.end6:                                          ; preds = %entry
  %7 = load i32, i32* %oob_required.addr, align 4, !dbg !4319
  %tobool7 = icmp ne i32 %7, 0, !dbg !4319
  br i1 %tobool7, label %if.end26, label %if.then8, !dbg !4321

if.then8:                                         ; preds = %if.end6
  %8 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4322
  %call9 = call zeroext i1 @nand_has_exec_op(%struct.nand_chip* %8) #8, !dbg !4325
  br i1 %call9, label %lor.lhs.false, label %if.then12, !dbg !4326

lor.lhs.false:                                    ; preds = %if.then8
  %9 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4327
  %10 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4328
  %oob_poi = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %10, i32 0, i32 23, !dbg !4329
  %11 = load i8*, i8** %oob_poi, align 8, !dbg !4329
  %12 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4330
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 6, !dbg !4331
  %13 = load i32, i32* %oobsize, align 4, !dbg !4331
  %call10 = call i32 @nand_read_data_op(%struct.nand_chip* %9, i8* %11, i32 %13, i1 zeroext false, i1 zeroext true) #8, !dbg !4332
  %tobool11 = icmp ne i32 %call10, 0, !dbg !4332
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !4333

if.then12:                                        ; preds = %lor.lhs.false, %if.then8
  store i8 1, i8* %use_datain, align 1, !dbg !4334
  br label %if.end13, !dbg !4335

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %14 = load i8, i8* %use_datain, align 1, !dbg !4336
  %tobool14 = trunc i8 %14 to i1, !dbg !4336
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !4338

if.then15:                                        ; preds = %if.end13
  %15 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4339
  %16 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4340
  %oob_poi16 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %16, i32 0, i32 23, !dbg !4341
  %17 = load i8*, i8** %oob_poi16, align 8, !dbg !4341
  %18 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4342
  %oobsize17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 6, !dbg !4343
  %19 = load i32, i32* %oobsize17, align 4, !dbg !4343
  %call18 = call i32 @nand_read_data_op(%struct.nand_chip* %15, i8* %17, i32 %19, i1 zeroext false, i1 zeroext false) #8, !dbg !4344
  store i32 %call18, i32* %ret, align 4, !dbg !4345
  br label %if.end22, !dbg !4346

if.else:                                          ; preds = %if.end13
  %20 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4347
  %21 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4348
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %21, i32 0, i32 4, !dbg !4349
  %22 = load i32, i32* %writesize, align 4, !dbg !4349
  %23 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4350
  %oob_poi19 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %23, i32 0, i32 23, !dbg !4351
  %24 = load i8*, i8** %oob_poi19, align 8, !dbg !4351
  %25 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4352
  %oobsize20 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 6, !dbg !4353
  %26 = load i32, i32* %oobsize20, align 4, !dbg !4353
  %call21 = call i32 @nand_change_read_column_op(%struct.nand_chip* %20, i32 %22, i8* %24, i32 %26, i1 zeroext false) #8, !dbg !4354
  store i32 %call21, i32* %ret, align 4, !dbg !4355
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.then15
  %27 = load i32, i32* %ret, align 4, !dbg !4356
  %tobool23 = icmp ne i32 %27, 0, !dbg !4356
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !4358

if.then24:                                        ; preds = %if.end22
  %28 = load i32, i32* %ret, align 4, !dbg !4359
  store i32 %28, i32* %retval, align 4, !dbg !4360
  br label %return, !dbg !4360

if.end25:                                         ; preds = %if.end22
  br label %if.end26, !dbg !4361

if.end26:                                         ; preds = %if.end25, %if.end6
  %29 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4362
  %call27 = call i32 @micron_nand_on_die_ecc_setup(%struct.nand_chip* %29, i1 zeroext false) #8, !dbg !4363
  %30 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4364
  %31 = load i32, i32* %page.addr, align 4, !dbg !4365
  %32 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !4366
  %ecc = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %32, i32 0, i32 0, !dbg !4367
  %rawbuf = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc, i32 0, i32 2, !dbg !4368
  %33 = load i8*, i8** %rawbuf, align 8, !dbg !4368
  %34 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4369
  %writesize28 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %34, i32 0, i32 4, !dbg !4370
  %35 = load i32, i32* %writesize28, align 4, !dbg !4370
  %36 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4371
  %oobsize29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 6, !dbg !4372
  %37 = load i32, i32* %oobsize29, align 4, !dbg !4372
  %add = add i32 %35, %37, !dbg !4373
  %call30 = call i32 @nand_read_page_op(%struct.nand_chip* %30, i32 %31, i32 0, i8* %33, i32 %add) #8, !dbg !4374
  store i32 %call30, i32* %ret, align 4, !dbg !4375
  %38 = load i32, i32* %ret, align 4, !dbg !4376
  %tobool31 = icmp ne i32 %38, 0, !dbg !4376
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !4378

if.then32:                                        ; preds = %if.end26
  %39 = load i32, i32* %ret, align 4, !dbg !4379
  store i32 %39, i32* %retval, align 4, !dbg !4380
  br label %return, !dbg !4380

if.end33:                                         ; preds = %if.end26
  store i32 0, i32* %step, align 4, !dbg !4381
  br label %for.cond, !dbg !4383

for.cond:                                         ; preds = %for.inc378, %if.end33
  %40 = load i32, i32* %step, align 4, !dbg !4384
  %41 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4386
  %ecc34 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %41, i32 0, i32 31, !dbg !4387
  %steps = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc34, i32 0, i32 3, !dbg !4388
  %42 = load i32, i32* %steps, align 4, !dbg !4388
  %cmp = icmp ult i32 %40, %42, !dbg !4389
  br i1 %cmp, label %for.body, label %for.end380, !dbg !4390

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %offs, metadata !4391, metadata !DIExpression()), !dbg !4393
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4394, metadata !DIExpression()), !dbg !4395
  call void @llvm.dbg.declare(metadata i32* %nbitflips, metadata !4396, metadata !DIExpression()), !dbg !4397
  store i32 0, i32* %nbitflips, align 4, !dbg !4397
  call void @llvm.dbg.declare(metadata i8** %rawbuf36, metadata !4398, metadata !DIExpression()), !dbg !4399
  call void @llvm.dbg.declare(metadata i8** %corrbuf, metadata !4400, metadata !DIExpression()), !dbg !4401
  %43 = load i32, i32* %step, align 4, !dbg !4402
  %44 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4403
  %ecc37 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %44, i32 0, i32 31, !dbg !4404
  %size = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc37, i32 0, i32 4, !dbg !4405
  %45 = load i32, i32* %size, align 8, !dbg !4405
  %mul = mul i32 %43, %45, !dbg !4406
  store i32 %mul, i32* %offs, align 4, !dbg !4407
  %46 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !4408
  %ecc38 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %46, i32 0, i32 0, !dbg !4409
  %rawbuf39 = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc38, i32 0, i32 2, !dbg !4410
  %47 = load i8*, i8** %rawbuf39, align 8, !dbg !4410
  %48 = load i32, i32* %offs, align 4, !dbg !4411
  %idx.ext = zext i32 %48 to i64, !dbg !4412
  %add.ptr = getelementptr i8, i8* %47, i64 %idx.ext, !dbg !4412
  store i8* %add.ptr, i8** %rawbuf36, align 8, !dbg !4413
  %49 = load i8*, i8** %buf.addr, align 8, !dbg !4414
  %50 = load i32, i32* %offs, align 4, !dbg !4415
  %idx.ext40 = zext i32 %50 to i64, !dbg !4416
  %add.ptr41 = getelementptr i8, i8* %49, i64 %idx.ext40, !dbg !4416
  store i8* %add.ptr41, i8** %corrbuf, align 8, !dbg !4417
  store i32 0, i32* %i, align 4, !dbg !4418
  br label %for.cond42, !dbg !4420

for.cond42:                                       ; preds = %for.inc, %for.body
  %51 = load i32, i32* %i, align 4, !dbg !4421
  %52 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4423
  %ecc43 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %52, i32 0, i32 31, !dbg !4424
  %size44 = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc43, i32 0, i32 4, !dbg !4425
  %53 = load i32, i32* %size44, align 8, !dbg !4425
  %cmp45 = icmp ult i32 %51, %53, !dbg !4426
  br i1 %cmp45, label %for.body47, label %for.end, !dbg !4427

for.body47:                                       ; preds = %for.cond42
  %54 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %55 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom = zext i32 %55 to i64, !dbg !4428
  %arrayidx = getelementptr i8, i8* %54, i64 %idxprom, !dbg !4428
  %56 = load i8, i8* %arrayidx, align 1, !dbg !4428
  %conv48 = zext i8 %56 to i32, !dbg !4428
  %57 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %58 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom49 = zext i32 %58 to i64, !dbg !4428
  %arrayidx50 = getelementptr i8, i8* %57, i64 %idxprom49, !dbg !4428
  %59 = load i8, i8* %arrayidx50, align 1, !dbg !4428
  %conv51 = zext i8 %59 to i32, !dbg !4428
  %xor = xor i32 %conv48, %conv51, !dbg !4428
  %60 = call i1 @llvm.is.constant.i32(i32 %xor), !dbg !4428
  br i1 %60, label %cond.true, label %cond.false, !dbg !4428

cond.true:                                        ; preds = %for.body47
  %61 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %62 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom52 = zext i32 %62 to i64, !dbg !4428
  %arrayidx53 = getelementptr i8, i8* %61, i64 %idxprom52, !dbg !4428
  %63 = load i8, i8* %arrayidx53, align 1, !dbg !4428
  %conv54 = zext i8 %63 to i32, !dbg !4428
  %64 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %65 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom55 = zext i32 %65 to i64, !dbg !4428
  %arrayidx56 = getelementptr i8, i8* %64, i64 %idxprom55, !dbg !4428
  %66 = load i8, i8* %arrayidx56, align 1, !dbg !4428
  %conv57 = zext i8 %66 to i32, !dbg !4428
  %xor58 = xor i32 %conv54, %conv57, !dbg !4428
  %conv59 = sext i32 %xor58 to i64, !dbg !4428
  %and60 = and i64 %conv59, 1, !dbg !4428
  %tobool61 = icmp ne i64 %and60, 0, !dbg !4428
  %lnot = xor i1 %tobool61, true, !dbg !4428
  %lnot62 = xor i1 %lnot, true, !dbg !4428
  %lnot.ext = zext i1 %lnot62 to i32, !dbg !4428
  %67 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %68 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom63 = zext i32 %68 to i64, !dbg !4428
  %arrayidx64 = getelementptr i8, i8* %67, i64 %idxprom63, !dbg !4428
  %69 = load i8, i8* %arrayidx64, align 1, !dbg !4428
  %conv65 = zext i8 %69 to i32, !dbg !4428
  %70 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %71 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom66 = zext i32 %71 to i64, !dbg !4428
  %arrayidx67 = getelementptr i8, i8* %70, i64 %idxprom66, !dbg !4428
  %72 = load i8, i8* %arrayidx67, align 1, !dbg !4428
  %conv68 = zext i8 %72 to i32, !dbg !4428
  %xor69 = xor i32 %conv65, %conv68, !dbg !4428
  %conv70 = sext i32 %xor69 to i64, !dbg !4428
  %and71 = and i64 %conv70, 2, !dbg !4428
  %tobool72 = icmp ne i64 %and71, 0, !dbg !4428
  %lnot73 = xor i1 %tobool72, true, !dbg !4428
  %lnot75 = xor i1 %lnot73, true, !dbg !4428
  %lnot.ext76 = zext i1 %lnot75 to i32, !dbg !4428
  %add77 = add i32 %lnot.ext, %lnot.ext76, !dbg !4428
  %73 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %74 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom78 = zext i32 %74 to i64, !dbg !4428
  %arrayidx79 = getelementptr i8, i8* %73, i64 %idxprom78, !dbg !4428
  %75 = load i8, i8* %arrayidx79, align 1, !dbg !4428
  %conv80 = zext i8 %75 to i32, !dbg !4428
  %76 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %77 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom81 = zext i32 %77 to i64, !dbg !4428
  %arrayidx82 = getelementptr i8, i8* %76, i64 %idxprom81, !dbg !4428
  %78 = load i8, i8* %arrayidx82, align 1, !dbg !4428
  %conv83 = zext i8 %78 to i32, !dbg !4428
  %xor84 = xor i32 %conv80, %conv83, !dbg !4428
  %conv85 = sext i32 %xor84 to i64, !dbg !4428
  %and86 = and i64 %conv85, 4, !dbg !4428
  %tobool87 = icmp ne i64 %and86, 0, !dbg !4428
  %lnot88 = xor i1 %tobool87, true, !dbg !4428
  %lnot90 = xor i1 %lnot88, true, !dbg !4428
  %lnot.ext91 = zext i1 %lnot90 to i32, !dbg !4428
  %add92 = add i32 %add77, %lnot.ext91, !dbg !4428
  %79 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %80 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom93 = zext i32 %80 to i64, !dbg !4428
  %arrayidx94 = getelementptr i8, i8* %79, i64 %idxprom93, !dbg !4428
  %81 = load i8, i8* %arrayidx94, align 1, !dbg !4428
  %conv95 = zext i8 %81 to i32, !dbg !4428
  %82 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %83 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom96 = zext i32 %83 to i64, !dbg !4428
  %arrayidx97 = getelementptr i8, i8* %82, i64 %idxprom96, !dbg !4428
  %84 = load i8, i8* %arrayidx97, align 1, !dbg !4428
  %conv98 = zext i8 %84 to i32, !dbg !4428
  %xor99 = xor i32 %conv95, %conv98, !dbg !4428
  %conv100 = sext i32 %xor99 to i64, !dbg !4428
  %and101 = and i64 %conv100, 8, !dbg !4428
  %tobool102 = icmp ne i64 %and101, 0, !dbg !4428
  %lnot103 = xor i1 %tobool102, true, !dbg !4428
  %lnot105 = xor i1 %lnot103, true, !dbg !4428
  %lnot.ext106 = zext i1 %lnot105 to i32, !dbg !4428
  %add107 = add i32 %add92, %lnot.ext106, !dbg !4428
  %85 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %86 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom108 = zext i32 %86 to i64, !dbg !4428
  %arrayidx109 = getelementptr i8, i8* %85, i64 %idxprom108, !dbg !4428
  %87 = load i8, i8* %arrayidx109, align 1, !dbg !4428
  %conv110 = zext i8 %87 to i32, !dbg !4428
  %88 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %89 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom111 = zext i32 %89 to i64, !dbg !4428
  %arrayidx112 = getelementptr i8, i8* %88, i64 %idxprom111, !dbg !4428
  %90 = load i8, i8* %arrayidx112, align 1, !dbg !4428
  %conv113 = zext i8 %90 to i32, !dbg !4428
  %xor114 = xor i32 %conv110, %conv113, !dbg !4428
  %conv115 = sext i32 %xor114 to i64, !dbg !4428
  %and116 = and i64 %conv115, 16, !dbg !4428
  %tobool117 = icmp ne i64 %and116, 0, !dbg !4428
  %lnot118 = xor i1 %tobool117, true, !dbg !4428
  %lnot120 = xor i1 %lnot118, true, !dbg !4428
  %lnot.ext121 = zext i1 %lnot120 to i32, !dbg !4428
  %add122 = add i32 %add107, %lnot.ext121, !dbg !4428
  %91 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %92 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom123 = zext i32 %92 to i64, !dbg !4428
  %arrayidx124 = getelementptr i8, i8* %91, i64 %idxprom123, !dbg !4428
  %93 = load i8, i8* %arrayidx124, align 1, !dbg !4428
  %conv125 = zext i8 %93 to i32, !dbg !4428
  %94 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %95 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom126 = zext i32 %95 to i64, !dbg !4428
  %arrayidx127 = getelementptr i8, i8* %94, i64 %idxprom126, !dbg !4428
  %96 = load i8, i8* %arrayidx127, align 1, !dbg !4428
  %conv128 = zext i8 %96 to i32, !dbg !4428
  %xor129 = xor i32 %conv125, %conv128, !dbg !4428
  %conv130 = sext i32 %xor129 to i64, !dbg !4428
  %and131 = and i64 %conv130, 32, !dbg !4428
  %tobool132 = icmp ne i64 %and131, 0, !dbg !4428
  %lnot133 = xor i1 %tobool132, true, !dbg !4428
  %lnot135 = xor i1 %lnot133, true, !dbg !4428
  %lnot.ext136 = zext i1 %lnot135 to i32, !dbg !4428
  %add137 = add i32 %add122, %lnot.ext136, !dbg !4428
  %97 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %98 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom138 = zext i32 %98 to i64, !dbg !4428
  %arrayidx139 = getelementptr i8, i8* %97, i64 %idxprom138, !dbg !4428
  %99 = load i8, i8* %arrayidx139, align 1, !dbg !4428
  %conv140 = zext i8 %99 to i32, !dbg !4428
  %100 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %101 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom141 = zext i32 %101 to i64, !dbg !4428
  %arrayidx142 = getelementptr i8, i8* %100, i64 %idxprom141, !dbg !4428
  %102 = load i8, i8* %arrayidx142, align 1, !dbg !4428
  %conv143 = zext i8 %102 to i32, !dbg !4428
  %xor144 = xor i32 %conv140, %conv143, !dbg !4428
  %conv145 = sext i32 %xor144 to i64, !dbg !4428
  %and146 = and i64 %conv145, 64, !dbg !4428
  %tobool147 = icmp ne i64 %and146, 0, !dbg !4428
  %lnot148 = xor i1 %tobool147, true, !dbg !4428
  %lnot150 = xor i1 %lnot148, true, !dbg !4428
  %lnot.ext151 = zext i1 %lnot150 to i32, !dbg !4428
  %add152 = add i32 %add137, %lnot.ext151, !dbg !4428
  %103 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %104 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom153 = zext i32 %104 to i64, !dbg !4428
  %arrayidx154 = getelementptr i8, i8* %103, i64 %idxprom153, !dbg !4428
  %105 = load i8, i8* %arrayidx154, align 1, !dbg !4428
  %conv155 = zext i8 %105 to i32, !dbg !4428
  %106 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %107 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom156 = zext i32 %107 to i64, !dbg !4428
  %arrayidx157 = getelementptr i8, i8* %106, i64 %idxprom156, !dbg !4428
  %108 = load i8, i8* %arrayidx157, align 1, !dbg !4428
  %conv158 = zext i8 %108 to i32, !dbg !4428
  %xor159 = xor i32 %conv155, %conv158, !dbg !4428
  %conv160 = sext i32 %xor159 to i64, !dbg !4428
  %and161 = and i64 %conv160, 128, !dbg !4428
  %tobool162 = icmp ne i64 %and161, 0, !dbg !4428
  %lnot163 = xor i1 %tobool162, true, !dbg !4428
  %lnot165 = xor i1 %lnot163, true, !dbg !4428
  %lnot.ext166 = zext i1 %lnot165 to i32, !dbg !4428
  %add167 = add i32 %add152, %lnot.ext166, !dbg !4428
  br label %cond.end, !dbg !4428

cond.false:                                       ; preds = %for.body47
  %109 = load i8*, i8** %corrbuf, align 8, !dbg !4428
  %110 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom168 = zext i32 %110 to i64, !dbg !4428
  %arrayidx169 = getelementptr i8, i8* %109, i64 %idxprom168, !dbg !4428
  %111 = load i8, i8* %arrayidx169, align 1, !dbg !4428
  %conv170 = zext i8 %111 to i32, !dbg !4428
  %112 = load i8*, i8** %rawbuf36, align 8, !dbg !4428
  %113 = load i32, i32* %i, align 4, !dbg !4428
  %idxprom171 = zext i32 %113 to i64, !dbg !4428
  %arrayidx172 = getelementptr i8, i8* %112, i64 %idxprom171, !dbg !4428
  %114 = load i8, i8* %arrayidx172, align 1, !dbg !4428
  %conv173 = zext i8 %114 to i32, !dbg !4428
  %xor174 = xor i32 %conv170, %conv173, !dbg !4428
  %call175 = call i32 @__arch_hweight8(i32 %xor174) #8, !dbg !4428
  br label %cond.end, !dbg !4428

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %add167, %cond.true ], [ %call175, %cond.false ], !dbg !4428
  %115 = load i32, i32* %nbitflips, align 4, !dbg !4429
  %add176 = add i32 %115, %cond, !dbg !4429
  store i32 %add176, i32* %nbitflips, align 4, !dbg !4429
  br label %for.inc, !dbg !4430

for.inc:                                          ; preds = %cond.end
  %116 = load i32, i32* %i, align 4, !dbg !4431
  %inc177 = add i32 %116, 1, !dbg !4431
  store i32 %inc177, i32* %i, align 4, !dbg !4431
  br label %for.cond42, !dbg !4432, !llvm.loop !4433

for.end:                                          ; preds = %for.cond42
  %117 = load i32, i32* %step, align 4, !dbg !4435
  %mul178 = mul i32 %117, 16, !dbg !4436
  %add179 = add i32 %mul178, 4, !dbg !4437
  store i32 %add179, i32* %offs, align 4, !dbg !4438
  %118 = load %struct.micron_nand*, %struct.micron_nand** %micron, align 8, !dbg !4439
  %ecc180 = getelementptr inbounds %struct.micron_nand, %struct.micron_nand* %118, i32 0, i32 0, !dbg !4440
  %rawbuf181 = getelementptr inbounds %struct.micron_on_die_ecc, %struct.micron_on_die_ecc* %ecc180, i32 0, i32 2, !dbg !4441
  %119 = load i8*, i8** %rawbuf181, align 8, !dbg !4441
  %120 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4442
  %writesize182 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %120, i32 0, i32 4, !dbg !4443
  %121 = load i32, i32* %writesize182, align 4, !dbg !4443
  %idx.ext183 = zext i32 %121 to i64, !dbg !4444
  %add.ptr184 = getelementptr i8, i8* %119, i64 %idx.ext183, !dbg !4444
  %122 = load i32, i32* %offs, align 4, !dbg !4445
  %idx.ext185 = zext i32 %122 to i64, !dbg !4446
  %add.ptr186 = getelementptr i8, i8* %add.ptr184, i64 %idx.ext185, !dbg !4446
  store i8* %add.ptr186, i8** %rawbuf36, align 8, !dbg !4447
  %123 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4448
  %oob_poi187 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %123, i32 0, i32 23, !dbg !4449
  %124 = load i8*, i8** %oob_poi187, align 8, !dbg !4449
  %125 = load i32, i32* %offs, align 4, !dbg !4450
  %idx.ext188 = zext i32 %125 to i64, !dbg !4451
  %add.ptr189 = getelementptr i8, i8* %124, i64 %idx.ext188, !dbg !4451
  store i8* %add.ptr189, i8** %corrbuf, align 8, !dbg !4452
  store i32 0, i32* %i, align 4, !dbg !4453
  br label %for.cond190, !dbg !4455

for.cond190:                                      ; preds = %for.inc335, %for.end
  %126 = load i32, i32* %i, align 4, !dbg !4456
  %127 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4458
  %ecc191 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %127, i32 0, i32 31, !dbg !4459
  %bytes = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc191, i32 0, i32 5, !dbg !4460
  %128 = load i32, i32* %bytes, align 4, !dbg !4460
  %add192 = add i32 %128, 4, !dbg !4461
  %cmp193 = icmp ult i32 %126, %add192, !dbg !4462
  br i1 %cmp193, label %for.body195, label %for.end337, !dbg !4463

for.body195:                                      ; preds = %for.cond190
  %129 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %130 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom196 = zext i32 %130 to i64, !dbg !4464
  %arrayidx197 = getelementptr i8, i8* %129, i64 %idxprom196, !dbg !4464
  %131 = load i8, i8* %arrayidx197, align 1, !dbg !4464
  %conv198 = zext i8 %131 to i32, !dbg !4464
  %132 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %133 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom199 = zext i32 %133 to i64, !dbg !4464
  %arrayidx200 = getelementptr i8, i8* %132, i64 %idxprom199, !dbg !4464
  %134 = load i8, i8* %arrayidx200, align 1, !dbg !4464
  %conv201 = zext i8 %134 to i32, !dbg !4464
  %xor202 = xor i32 %conv198, %conv201, !dbg !4464
  %135 = call i1 @llvm.is.constant.i32(i32 %xor202), !dbg !4464
  br i1 %135, label %cond.true203, label %cond.false323, !dbg !4464

cond.true203:                                     ; preds = %for.body195
  %136 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %137 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom204 = zext i32 %137 to i64, !dbg !4464
  %arrayidx205 = getelementptr i8, i8* %136, i64 %idxprom204, !dbg !4464
  %138 = load i8, i8* %arrayidx205, align 1, !dbg !4464
  %conv206 = zext i8 %138 to i32, !dbg !4464
  %139 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %140 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom207 = zext i32 %140 to i64, !dbg !4464
  %arrayidx208 = getelementptr i8, i8* %139, i64 %idxprom207, !dbg !4464
  %141 = load i8, i8* %arrayidx208, align 1, !dbg !4464
  %conv209 = zext i8 %141 to i32, !dbg !4464
  %xor210 = xor i32 %conv206, %conv209, !dbg !4464
  %conv211 = sext i32 %xor210 to i64, !dbg !4464
  %and212 = and i64 %conv211, 1, !dbg !4464
  %tobool213 = icmp ne i64 %and212, 0, !dbg !4464
  %lnot214 = xor i1 %tobool213, true, !dbg !4464
  %lnot216 = xor i1 %lnot214, true, !dbg !4464
  %lnot.ext217 = zext i1 %lnot216 to i32, !dbg !4464
  %142 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %143 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom218 = zext i32 %143 to i64, !dbg !4464
  %arrayidx219 = getelementptr i8, i8* %142, i64 %idxprom218, !dbg !4464
  %144 = load i8, i8* %arrayidx219, align 1, !dbg !4464
  %conv220 = zext i8 %144 to i32, !dbg !4464
  %145 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %146 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom221 = zext i32 %146 to i64, !dbg !4464
  %arrayidx222 = getelementptr i8, i8* %145, i64 %idxprom221, !dbg !4464
  %147 = load i8, i8* %arrayidx222, align 1, !dbg !4464
  %conv223 = zext i8 %147 to i32, !dbg !4464
  %xor224 = xor i32 %conv220, %conv223, !dbg !4464
  %conv225 = sext i32 %xor224 to i64, !dbg !4464
  %and226 = and i64 %conv225, 2, !dbg !4464
  %tobool227 = icmp ne i64 %and226, 0, !dbg !4464
  %lnot228 = xor i1 %tobool227, true, !dbg !4464
  %lnot230 = xor i1 %lnot228, true, !dbg !4464
  %lnot.ext231 = zext i1 %lnot230 to i32, !dbg !4464
  %add232 = add i32 %lnot.ext217, %lnot.ext231, !dbg !4464
  %148 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %149 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom233 = zext i32 %149 to i64, !dbg !4464
  %arrayidx234 = getelementptr i8, i8* %148, i64 %idxprom233, !dbg !4464
  %150 = load i8, i8* %arrayidx234, align 1, !dbg !4464
  %conv235 = zext i8 %150 to i32, !dbg !4464
  %151 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %152 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom236 = zext i32 %152 to i64, !dbg !4464
  %arrayidx237 = getelementptr i8, i8* %151, i64 %idxprom236, !dbg !4464
  %153 = load i8, i8* %arrayidx237, align 1, !dbg !4464
  %conv238 = zext i8 %153 to i32, !dbg !4464
  %xor239 = xor i32 %conv235, %conv238, !dbg !4464
  %conv240 = sext i32 %xor239 to i64, !dbg !4464
  %and241 = and i64 %conv240, 4, !dbg !4464
  %tobool242 = icmp ne i64 %and241, 0, !dbg !4464
  %lnot243 = xor i1 %tobool242, true, !dbg !4464
  %lnot245 = xor i1 %lnot243, true, !dbg !4464
  %lnot.ext246 = zext i1 %lnot245 to i32, !dbg !4464
  %add247 = add i32 %add232, %lnot.ext246, !dbg !4464
  %154 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %155 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom248 = zext i32 %155 to i64, !dbg !4464
  %arrayidx249 = getelementptr i8, i8* %154, i64 %idxprom248, !dbg !4464
  %156 = load i8, i8* %arrayidx249, align 1, !dbg !4464
  %conv250 = zext i8 %156 to i32, !dbg !4464
  %157 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %158 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom251 = zext i32 %158 to i64, !dbg !4464
  %arrayidx252 = getelementptr i8, i8* %157, i64 %idxprom251, !dbg !4464
  %159 = load i8, i8* %arrayidx252, align 1, !dbg !4464
  %conv253 = zext i8 %159 to i32, !dbg !4464
  %xor254 = xor i32 %conv250, %conv253, !dbg !4464
  %conv255 = sext i32 %xor254 to i64, !dbg !4464
  %and256 = and i64 %conv255, 8, !dbg !4464
  %tobool257 = icmp ne i64 %and256, 0, !dbg !4464
  %lnot258 = xor i1 %tobool257, true, !dbg !4464
  %lnot260 = xor i1 %lnot258, true, !dbg !4464
  %lnot.ext261 = zext i1 %lnot260 to i32, !dbg !4464
  %add262 = add i32 %add247, %lnot.ext261, !dbg !4464
  %160 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %161 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom263 = zext i32 %161 to i64, !dbg !4464
  %arrayidx264 = getelementptr i8, i8* %160, i64 %idxprom263, !dbg !4464
  %162 = load i8, i8* %arrayidx264, align 1, !dbg !4464
  %conv265 = zext i8 %162 to i32, !dbg !4464
  %163 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %164 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom266 = zext i32 %164 to i64, !dbg !4464
  %arrayidx267 = getelementptr i8, i8* %163, i64 %idxprom266, !dbg !4464
  %165 = load i8, i8* %arrayidx267, align 1, !dbg !4464
  %conv268 = zext i8 %165 to i32, !dbg !4464
  %xor269 = xor i32 %conv265, %conv268, !dbg !4464
  %conv270 = sext i32 %xor269 to i64, !dbg !4464
  %and271 = and i64 %conv270, 16, !dbg !4464
  %tobool272 = icmp ne i64 %and271, 0, !dbg !4464
  %lnot273 = xor i1 %tobool272, true, !dbg !4464
  %lnot275 = xor i1 %lnot273, true, !dbg !4464
  %lnot.ext276 = zext i1 %lnot275 to i32, !dbg !4464
  %add277 = add i32 %add262, %lnot.ext276, !dbg !4464
  %166 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %167 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom278 = zext i32 %167 to i64, !dbg !4464
  %arrayidx279 = getelementptr i8, i8* %166, i64 %idxprom278, !dbg !4464
  %168 = load i8, i8* %arrayidx279, align 1, !dbg !4464
  %conv280 = zext i8 %168 to i32, !dbg !4464
  %169 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %170 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom281 = zext i32 %170 to i64, !dbg !4464
  %arrayidx282 = getelementptr i8, i8* %169, i64 %idxprom281, !dbg !4464
  %171 = load i8, i8* %arrayidx282, align 1, !dbg !4464
  %conv283 = zext i8 %171 to i32, !dbg !4464
  %xor284 = xor i32 %conv280, %conv283, !dbg !4464
  %conv285 = sext i32 %xor284 to i64, !dbg !4464
  %and286 = and i64 %conv285, 32, !dbg !4464
  %tobool287 = icmp ne i64 %and286, 0, !dbg !4464
  %lnot288 = xor i1 %tobool287, true, !dbg !4464
  %lnot290 = xor i1 %lnot288, true, !dbg !4464
  %lnot.ext291 = zext i1 %lnot290 to i32, !dbg !4464
  %add292 = add i32 %add277, %lnot.ext291, !dbg !4464
  %172 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %173 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom293 = zext i32 %173 to i64, !dbg !4464
  %arrayidx294 = getelementptr i8, i8* %172, i64 %idxprom293, !dbg !4464
  %174 = load i8, i8* %arrayidx294, align 1, !dbg !4464
  %conv295 = zext i8 %174 to i32, !dbg !4464
  %175 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %176 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom296 = zext i32 %176 to i64, !dbg !4464
  %arrayidx297 = getelementptr i8, i8* %175, i64 %idxprom296, !dbg !4464
  %177 = load i8, i8* %arrayidx297, align 1, !dbg !4464
  %conv298 = zext i8 %177 to i32, !dbg !4464
  %xor299 = xor i32 %conv295, %conv298, !dbg !4464
  %conv300 = sext i32 %xor299 to i64, !dbg !4464
  %and301 = and i64 %conv300, 64, !dbg !4464
  %tobool302 = icmp ne i64 %and301, 0, !dbg !4464
  %lnot303 = xor i1 %tobool302, true, !dbg !4464
  %lnot305 = xor i1 %lnot303, true, !dbg !4464
  %lnot.ext306 = zext i1 %lnot305 to i32, !dbg !4464
  %add307 = add i32 %add292, %lnot.ext306, !dbg !4464
  %178 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %179 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom308 = zext i32 %179 to i64, !dbg !4464
  %arrayidx309 = getelementptr i8, i8* %178, i64 %idxprom308, !dbg !4464
  %180 = load i8, i8* %arrayidx309, align 1, !dbg !4464
  %conv310 = zext i8 %180 to i32, !dbg !4464
  %181 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %182 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom311 = zext i32 %182 to i64, !dbg !4464
  %arrayidx312 = getelementptr i8, i8* %181, i64 %idxprom311, !dbg !4464
  %183 = load i8, i8* %arrayidx312, align 1, !dbg !4464
  %conv313 = zext i8 %183 to i32, !dbg !4464
  %xor314 = xor i32 %conv310, %conv313, !dbg !4464
  %conv315 = sext i32 %xor314 to i64, !dbg !4464
  %and316 = and i64 %conv315, 128, !dbg !4464
  %tobool317 = icmp ne i64 %and316, 0, !dbg !4464
  %lnot318 = xor i1 %tobool317, true, !dbg !4464
  %lnot320 = xor i1 %lnot318, true, !dbg !4464
  %lnot.ext321 = zext i1 %lnot320 to i32, !dbg !4464
  %add322 = add i32 %add307, %lnot.ext321, !dbg !4464
  br label %cond.end332, !dbg !4464

cond.false323:                                    ; preds = %for.body195
  %184 = load i8*, i8** %corrbuf, align 8, !dbg !4464
  %185 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom324 = zext i32 %185 to i64, !dbg !4464
  %arrayidx325 = getelementptr i8, i8* %184, i64 %idxprom324, !dbg !4464
  %186 = load i8, i8* %arrayidx325, align 1, !dbg !4464
  %conv326 = zext i8 %186 to i32, !dbg !4464
  %187 = load i8*, i8** %rawbuf36, align 8, !dbg !4464
  %188 = load i32, i32* %i, align 4, !dbg !4464
  %idxprom327 = zext i32 %188 to i64, !dbg !4464
  %arrayidx328 = getelementptr i8, i8* %187, i64 %idxprom327, !dbg !4464
  %189 = load i8, i8* %arrayidx328, align 1, !dbg !4464
  %conv329 = zext i8 %189 to i32, !dbg !4464
  %xor330 = xor i32 %conv326, %conv329, !dbg !4464
  %call331 = call i32 @__arch_hweight8(i32 %xor330) #8, !dbg !4464
  br label %cond.end332, !dbg !4464

cond.end332:                                      ; preds = %cond.false323, %cond.true203
  %cond333 = phi i32 [ %add322, %cond.true203 ], [ %call331, %cond.false323 ], !dbg !4464
  %190 = load i32, i32* %nbitflips, align 4, !dbg !4465
  %add334 = add i32 %190, %cond333, !dbg !4465
  store i32 %add334, i32* %nbitflips, align 4, !dbg !4465
  br label %for.inc335, !dbg !4466

for.inc335:                                       ; preds = %cond.end332
  %191 = load i32, i32* %i, align 4, !dbg !4467
  %inc336 = add i32 %191, 1, !dbg !4467
  store i32 %inc336, i32* %i, align 4, !dbg !4467
  br label %for.cond190, !dbg !4468, !llvm.loop !4469

for.end337:                                       ; preds = %for.cond190
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !4471, metadata !DIExpression()), !dbg !4474
  %192 = load i32, i32* %nbitflips, align 4, !dbg !4474
  %193 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4474
  %ecc338 = getelementptr inbounds %struct.nand_chip, %struct.nand_chip* %193, i32 0, i32 31, !dbg !4474
  %strength = getelementptr inbounds %struct.nand_ecc_ctrl, %struct.nand_ecc_ctrl* %ecc338, i32 0, i32 7, !dbg !4474
  %194 = load i32, i32* %strength, align 4, !dbg !4474
  %cmp339 = icmp ugt i32 %192, %194, !dbg !4474
  %lnot341 = xor i1 %cmp339, true, !dbg !4474
  %lnot343 = xor i1 %lnot341, true, !dbg !4474
  %lnot.ext344 = zext i1 %lnot343 to i32, !dbg !4474
  store i32 %lnot.ext344, i32* %__ret_warn_on, align 4, !dbg !4474
  %195 = load i32, i32* %__ret_warn_on, align 4, !dbg !4475
  %tobool345 = icmp ne i32 %195, 0, !dbg !4475
  %lnot346 = xor i1 %tobool345, true, !dbg !4475
  %lnot348 = xor i1 %lnot346, true, !dbg !4475
  %lnot.ext349 = zext i1 %lnot348 to i32, !dbg !4475
  %conv350 = sext i32 %lnot.ext349 to i64, !dbg !4475
  %tobool351 = icmp ne i64 %conv350, 0, !dbg !4475
  br i1 %tobool351, label %if.then352, label %if.end359, !dbg !4474

if.then352:                                       ; preds = %for.end337
  br label %do.body, !dbg !4475

do.body:                                          ; preds = %if.then352
  br label %do.body353, !dbg !4477

do.body353:                                       ; preds = %do.body
  br label %do.end, !dbg !4479

do.end:                                           ; preds = %do.body353
  br label %do.body354, !dbg !4477

do.body354:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.3, i64 0, i64 0), i32 265, i32 2305, i64 12) #10, !dbg !4481, !srcloc !4483
  br label %do.end355, !dbg !4481

do.end355:                                        ; preds = %do.body354
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 172) #10, !dbg !4484, !srcloc !4486
  br label %do.body356, !dbg !4477

do.body356:                                       ; preds = %do.end355
  br label %do.end357, !dbg !4487

do.end357:                                        ; preds = %do.body356
  br label %do.end358, !dbg !4477

do.end358:                                        ; preds = %do.end357
  br label %if.end359, !dbg !4477

if.end359:                                        ; preds = %do.end358, %for.end337
  %196 = load i32, i32* %__ret_warn_on, align 4, !dbg !4474
  %tobool360 = icmp ne i32 %196, 0, !dbg !4474
  %lnot361 = xor i1 %tobool360, true, !dbg !4474
  %lnot363 = xor i1 %lnot361, true, !dbg !4474
  %lnot.ext364 = zext i1 %lnot363 to i32, !dbg !4474
  %conv365 = sext i32 %lnot.ext364 to i64, !dbg !4474
  store i64 %conv365, i64* %tmp, align 8, !dbg !4475
  %197 = load i64, i64* %tmp, align 8, !dbg !4474
  %tobool366 = icmp ne i64 %197, 0, !dbg !4489
  br i1 %tobool366, label %if.then367, label %if.end368, !dbg !4490

if.then367:                                       ; preds = %if.end359
  store i32 -22, i32* %retval, align 4, !dbg !4491
  br label %return, !dbg !4491

if.end368:                                        ; preds = %if.end359
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x173, metadata !4492, metadata !DIExpression()), !dbg !4494
  %198 = load i32, i32* %nbitflips, align 4, !dbg !4494
  store i32 %198, i32* %__UNIQUE_ID___x173, align 4, !dbg !4494
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y174, metadata !4495, metadata !DIExpression()), !dbg !4494
  %199 = load i32, i32* %max_bitflips, align 4, !dbg !4494
  store i32 %199, i32* %__UNIQUE_ID___y174, align 4, !dbg !4494
  %200 = load i32, i32* %__UNIQUE_ID___x173, align 4, !dbg !4494
  %201 = load i32, i32* %__UNIQUE_ID___y174, align 4, !dbg !4494
  %cmp370 = icmp ugt i32 %200, %201, !dbg !4494
  br i1 %cmp370, label %cond.true372, label %cond.false373, !dbg !4494

cond.true372:                                     ; preds = %if.end368
  %202 = load i32, i32* %__UNIQUE_ID___x173, align 4, !dbg !4494
  br label %cond.end374, !dbg !4494

cond.false373:                                    ; preds = %if.end368
  %203 = load i32, i32* %__UNIQUE_ID___y174, align 4, !dbg !4494
  br label %cond.end374, !dbg !4494

cond.end374:                                      ; preds = %cond.false373, %cond.true372
  %cond375 = phi i32 [ %202, %cond.true372 ], [ %203, %cond.false373 ], !dbg !4494
  store i32 %cond375, i32* %tmp369, align 4, !dbg !4494
  %204 = load i32, i32* %tmp369, align 4, !dbg !4494
  store i32 %204, i32* %max_bitflips, align 4, !dbg !4496
  %205 = load i32, i32* %nbitflips, align 4, !dbg !4497
  %206 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4498
  %ecc_stats376 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %206, i32 0, i32 51, !dbg !4499
  %corrected = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats376, i32 0, i32 0, !dbg !4500
  %207 = load i32, i32* %corrected, align 8, !dbg !4501
  %add377 = add i32 %207, %205, !dbg !4501
  store i32 %add377, i32* %corrected, align 8, !dbg !4501
  br label %for.inc378, !dbg !4502

for.inc378:                                       ; preds = %cond.end374
  %208 = load i32, i32* %step, align 4, !dbg !4503
  %inc379 = add i32 %208, 1, !dbg !4503
  store i32 %inc379, i32* %step, align 4, !dbg !4503
  br label %for.cond, !dbg !4504, !llvm.loop !4505

for.end380:                                       ; preds = %for.cond
  %209 = load i32, i32* %max_bitflips, align 4, !dbg !4507
  store i32 %209, i32* %retval, align 4, !dbg !4508
  br label %return, !dbg !4508

return:                                           ; preds = %for.end380, %if.then367, %if.then32, %if.then24, %if.end
  %210 = load i32, i32* %retval, align 4, !dbg !4509
  ret i32 %210, !dbg !4509
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @micron_nand_on_die_ecc_status_8(%struct.nand_chip* %chip, i8 zeroext %status) #0 !dbg !4510 {
entry:
  %retval = alloca i32, align 4
  %chip.addr = alloca %struct.nand_chip*, align 8
  %status.addr = alloca i8, align 1
  %mtd = alloca %struct.mtd_info*, align 8
  store %struct.nand_chip* %chip, %struct.nand_chip** %chip.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.nand_chip** %chip.addr, metadata !4513, metadata !DIExpression()), !dbg !4514
  store i8 %status, i8* %status.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %status.addr, metadata !4515, metadata !DIExpression()), !dbg !4516
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4517, metadata !DIExpression()), !dbg !4518
  %0 = load %struct.nand_chip*, %struct.nand_chip** %chip.addr, align 8, !dbg !4519
  %call = call %struct.mtd_info* @nand_to_mtd(%struct.nand_chip* %0) #8, !dbg !4520
  store %struct.mtd_info* %call, %struct.mtd_info** %mtd, align 8, !dbg !4518
  %1 = load i8, i8* %status.addr, align 1, !dbg !4521
  %conv = zext i8 %1 to i64, !dbg !4521
  %and = and i64 %conv, 25, !dbg !4522
  switch i64 %and, label %sw.default [
    i64 1, label %sw.bb
    i64 16, label %sw.bb1
    i64 8, label %sw.bb3
    i64 24, label %sw.bb7
  ], !dbg !4523

sw.bb:                                            ; preds = %entry
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4524
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 51, !dbg !4526
  %failed = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 1, !dbg !4527
  %3 = load i32, i32* %failed, align 4, !dbg !4528
  %inc = add i32 %3, 1, !dbg !4528
  store i32 %inc, i32* %failed, align 4, !dbg !4528
  store i32 0, i32* %retval, align 4, !dbg !4529
  br label %return, !dbg !4529

sw.bb1:                                           ; preds = %entry
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4530
  %ecc_stats2 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %4, i32 0, i32 51, !dbg !4531
  %corrected = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats2, i32 0, i32 0, !dbg !4532
  %5 = load i32, i32* %corrected, align 8, !dbg !4533
  %add = add i32 %5, 3, !dbg !4533
  store i32 %add, i32* %corrected, align 8, !dbg !4533
  store i32 3, i32* %retval, align 4, !dbg !4534
  br label %return, !dbg !4534

sw.bb3:                                           ; preds = %entry
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4535
  %ecc_stats4 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 51, !dbg !4536
  %corrected5 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats4, i32 0, i32 0, !dbg !4537
  %7 = load i32, i32* %corrected5, align 8, !dbg !4538
  %add6 = add i32 %7, 6, !dbg !4538
  store i32 %add6, i32* %corrected5, align 8, !dbg !4538
  store i32 6, i32* %retval, align 4, !dbg !4539
  br label %return, !dbg !4539

sw.bb7:                                           ; preds = %entry
  %8 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4540
  %ecc_stats8 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 51, !dbg !4541
  %corrected9 = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats8, i32 0, i32 0, !dbg !4542
  %9 = load i32, i32* %corrected9, align 8, !dbg !4543
  %add10 = add i32 %9, 8, !dbg !4543
  store i32 %add10, i32* %corrected9, align 8, !dbg !4543
  store i32 8, i32* %retval, align 4, !dbg !4544
  br label %return, !dbg !4544

sw.default:                                       ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4545
  br label %return, !dbg !4545

return:                                           ; preds = %sw.default, %sw.bb7, %sw.bb3, %sw.bb1, %sw.bb
  %10 = load i32, i32* %retval, align 4, !dbg !4546
  ret i32 %10, !dbg !4546
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__arch_hweight8(i32 %w) #0 !dbg !4547 {
entry:
  %w.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr.i, metadata !4551, metadata !DIExpression()), !dbg !4553
  %res.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %res.i, metadata !4555, metadata !DIExpression()), !dbg !4556
  %w.addr = alloca i32, align 4
  store i32 %w, i32* %w.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %w.addr, metadata !4557, metadata !DIExpression()), !dbg !4558
  %0 = load i32, i32* %w.addr, align 4, !dbg !4559
  %and = and i32 %0, 255, !dbg !4560
  store i32 %and, i32* %w.addr.i, align 4
  %1 = load i32, i32* %w.addr.i, align 4, !dbg !4561
  %2 = call i32 asm "# ALT: oldnstr\0A661:\0A\09call __sw_hweight32\0A662:\0A# ALT: padding\0A.skip -(((6651f-6641f)-(662b-661b)) > 0) * ((6651f-6641f)-(662b-661b)),0x90\0A663:\0A.pushsection .altinstructions,\22a\22\0A .long 661b - .\0A .long 6641f - .\0A .word ( 4*32+23)\0A .byte 663b-661b\0A .byte 6651f-6641f\0A .byte 663b-662b\0A.popsection\0A.pushsection .altinstr_replacement, \22ax\22\0A# ALT: replacement 1\0A6641:\0A\09popcntl $1, $0\0A6651:\0A.popsection\0A", "={ax},{di},~{dirflag},~{fpsr},~{flags}"(i32 %1) #14, !dbg !4562, !srcloc !4563
  store i32 %2, i32* %res.i, align 4, !dbg !4562
  %3 = load i32, i32* %res.i, align 4, !dbg !4564
  ret i32 %3, !dbg !4565
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { argmemonly nounwind willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2816, !2817, !2818, !2819}
!llvm.ident = !{!2820}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "micron_nand_manuf_ops", scope: !2, file: !3, line: 595, type: !2452, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !101, globals: !2811, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/nand/raw/nand_micron.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !58, !63, !69, !73, !77, !84, !89, !94}
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
!84 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !3, line: 384, baseType: !7, size: 32, elements: !85)
!85 = !{!86, !87, !88}
!86 = !DIEnumerator(name: "MICRON_ON_DIE_UNSUPPORTED", value: 0, isUnsigned: true)
!87 = !DIEnumerator(name: "MICRON_ON_DIE_SUPPORTED", value: 1, isUnsigned: true)
!88 = !DIEnumerator(name: "MICRON_ON_DIE_MANDATORY", value: 2, isUnsigned: true)
!89 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !90, line: 10, baseType: !7, size: 32, elements: !91)
!90 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!91 = !{!92, !93}
!92 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!93 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!94 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !95, line: 305, baseType: !7, size: 32, elements: !96)
!95 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!96 = !{!97, !98, !99, !100}
!97 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!98 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!99 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!100 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!101 = !{!102, !104, !105, !108, !111, !112, !7, !623, !2474}
!102 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !103, line: 148, baseType: !7)
!103 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !107)
!107 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !110)
!110 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!111 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip", file: !74, line: 1096, size: 16704, elements: !114)
!114 = !{!115, !2409, !2415, !2439, !2536, !2606, !2715, !2716, !2717, !2718, !2719, !2720, !2721, !2722, !2738, !2739, !2740, !2741, !2742, !2743, !2744, !2745, !2746, !2747, !2748, !2753, !2754, !2755, !2756, !2757, !2758, !2760, !2810}
!115 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !113, file: !74, line: 1097, baseType: !116, size: 11200)
!116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_device", file: !51, line: 319, size: 11200, elements: !117)
!117 = !{!118, !2302, !2314, !2384, !2389, !2393}
!118 = !DIDerivedType(tag: DW_TAG_member, name: "mtd", scope: !116, file: !51, line: 320, baseType: !119, size: 9664)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !120, line: 235, size: 9664, elements: !121)
!120 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !125, !131, !136, !137, !138, !139, !140, !141, !142, !143, !144, !145, !146, !149, !150, !166, !187, !188, !189, !190, !200, !210, !226, !230, !235, !241, !242, !261, !262, !273, !274, !275, !276, !277, !278, !289, !293, !297, !298, !299, !303, !304, !305, !306, !310, !311, !312, !313, !314, !317, !329, !336, !337, !338, !342, !2272, !2273, !2281, !2285, !2286, !2287}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !120, line: 236, baseType: !123, size: 8)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !103, line: 79, baseType: !124)
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !119, file: !120, line: 237, baseType: !126, size: 32, offset: 32)
!126 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !103, line: 104, baseType: !127)
!127 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !128, line: 21, baseType: !129)
!128 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!129 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !130, line: 27, baseType: !7)
!130 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!131 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !119, file: !120, line: 238, baseType: !132, size: 64, offset: 64)
!132 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !103, line: 107, baseType: !133)
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !128, line: 23, baseType: !134)
!134 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !130, line: 31, baseType: !135)
!135 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !119, file: !120, line: 244, baseType: !126, size: 32, offset: 128)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !119, file: !120, line: 252, baseType: !126, size: 32, offset: 160)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !119, file: !120, line: 263, baseType: !126, size: 32, offset: 192)
!139 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !119, file: !120, line: 265, baseType: !126, size: 32, offset: 224)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !119, file: !120, line: 266, baseType: !126, size: 32, offset: 256)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !119, file: !120, line: 272, baseType: !7, size: 32, offset: 288)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !119, file: !120, line: 273, baseType: !7, size: 32, offset: 320)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !119, file: !120, line: 275, baseType: !7, size: 32, offset: 352)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !119, file: !120, line: 276, baseType: !7, size: 32, offset: 384)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !119, file: !120, line: 285, baseType: !7, size: 32, offset: 416)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 288, baseType: !147, size: 64, offset: 448)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !107)
!149 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !119, file: !120, line: 289, baseType: !111, size: 32, offset: 512)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !119, file: !120, line: 292, baseType: !151, size: 64, offset: 576)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !153)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !120, line: 101, size: 128, elements: !154)
!154 = !{!155, !165}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !153, file: !120, line: 102, baseType: !156, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!111, !159, !111, !160}
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !120, line: 87, size: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !161, file: !120, line: 88, baseType: !127, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !161, file: !120, line: 89, baseType: !127, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !153, file: !120, line: 104, baseType: !156, size: 64, offset: 64)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !119, file: !120, line: 295, baseType: !167, size: 64, offset: 640)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !120, line: 176, size: 192, elements: !170)
!170 = !{!171, !172, !181}
!171 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !169, file: !120, line: 177, baseType: !111, size: 32)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !169, file: !120, line: 178, baseType: !173, size: 64, offset: 64)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!111, !159, !111, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !120, line: 138, size: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !177, file: !120, line: 139, baseType: !111, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !177, file: !120, line: 140, baseType: !111, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !169, file: !120, line: 180, baseType: !182, size: 64, offset: 128)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DISubroutineType(types: !184)
!184 = !{!111, !159, !185}
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !177)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !119, file: !120, line: 298, baseType: !7, size: 32, offset: 704)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !119, file: !120, line: 301, baseType: !7, size: 32, offset: 736)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !119, file: !120, line: 306, baseType: !111, size: 32, offset: 768)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !119, file: !120, line: 307, baseType: !191, size: 64, offset: 832)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !120, line: 36, size: 192, elements: !193)
!193 = !{!194, !195, !196, !197}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !192, file: !120, line: 37, baseType: !132, size: 64)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !192, file: !120, line: 38, baseType: !126, size: 32, offset: 64)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !192, file: !120, line: 39, baseType: !126, size: 32, offset: 96)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !192, file: !120, line: 40, baseType: !198, size: 64, offset: 128)
!198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !199, size: 64)
!199 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !119, file: !120, line: 313, baseType: !201, size: 64, offset: 896)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{!111, !159, !204}
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !120, line: 30, size: 192, elements: !206)
!206 = !{!207, !208, !209}
!207 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !205, file: !120, line: 31, baseType: !132, size: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !205, file: !120, line: 32, baseType: !132, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !205, file: !120, line: 33, baseType: !132, size: 64, offset: 128)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !119, file: !120, line: 314, baseType: !211, size: 64, offset: 960)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!111, !159, !214, !218, !221, !222, !223}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !103, line: 46, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !216, line: 88, baseType: !217)
!216 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!218 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !103, line: 55, baseType: !219)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !216, line: 72, baseType: !220)
!220 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !216, line: 16, baseType: !199)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !103, line: 158, baseType: !225)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !103, line: 153, baseType: !133)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !119, file: !120, line: 316, baseType: !227, size: 64, offset: 1024)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!111, !159, !214, !218}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !119, file: !120, line: 317, baseType: !231, size: 64, offset: 1088)
!231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!232 = !DISubroutineType(types: !233)
!233 = !{!111, !159, !214, !218, !221, !234}
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !123, size: 64)
!235 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !119, file: !120, line: 319, baseType: !236, size: 64, offset: 1152)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DISubroutineType(types: !238)
!238 = !{!111, !159, !214, !218, !221, !239}
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !123)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !119, file: !120, line: 321, baseType: !236, size: 64, offset: 1216)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !119, file: !120, line: 323, baseType: !243, size: 64, offset: 1280)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!111, !159, !214, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !120, line: 64, size: 512, elements: !248)
!248 = !{!249, !250, !251, !252, !253, !254, !255, !260}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !247, file: !120, line: 65, baseType: !7, size: 32)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !247, file: !120, line: 66, baseType: !218, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !247, file: !120, line: 67, baseType: !218, size: 64, offset: 128)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !247, file: !120, line: 68, baseType: !218, size: 64, offset: 192)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !247, file: !120, line: 69, baseType: !218, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !247, file: !120, line: 70, baseType: !126, size: 32, offset: 320)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !247, file: !120, line: 71, baseType: !256, size: 64, offset: 384)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !103, line: 102, baseType: !258)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !128, line: 17, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !130, line: 21, baseType: !124)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !247, file: !120, line: 72, baseType: !256, size: 64, offset: 448)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !119, file: !120, line: 325, baseType: !243, size: 64, offset: 1344)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !119, file: !120, line: 327, baseType: !263, size: 64, offset: 1408)
!263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !264, size: 64)
!264 = !DISubroutineType(types: !265)
!265 = !{!111, !159, !218, !221, !266}
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !268, line: 146, size: 96, elements: !269)
!268 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!269 = !{!270, !271, !272}
!270 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !267, file: !268, line: 147, baseType: !129, size: 32)
!271 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !267, file: !268, line: 148, baseType: !129, size: 32, offset: 32)
!272 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !267, file: !268, line: 149, baseType: !129, size: 32, offset: 64)
!273 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !119, file: !120, line: 329, baseType: !231, size: 64, offset: 1472)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !119, file: !120, line: 331, baseType: !263, size: 64, offset: 1536)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !119, file: !120, line: 333, baseType: !231, size: 64, offset: 1600)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !119, file: !120, line: 335, baseType: !231, size: 64, offset: 1664)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !119, file: !120, line: 337, baseType: !227, size: 64, offset: 1728)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !119, file: !120, line: 339, baseType: !279, size: 64, offset: 1792)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DISubroutineType(types: !281)
!281 = !{!111, !159, !282, !199, !214, !221}
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !285, line: 15, size: 128, elements: !286)
!285 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!286 = !{!287, !288}
!287 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !284, file: !285, line: 16, baseType: !104, size: 64)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !284, file: !285, line: 17, baseType: !218, size: 64, offset: 64)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !119, file: !120, line: 341, baseType: !290, size: 64, offset: 1856)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DISubroutineType(types: !292)
!292 = !{null, !159}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !119, file: !120, line: 342, baseType: !294, size: 64, offset: 1920)
!294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !295, size: 64)
!295 = !DISubroutineType(types: !296)
!296 = !{!111, !159, !214, !132}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !119, file: !120, line: 343, baseType: !294, size: 64, offset: 1984)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !119, file: !120, line: 344, baseType: !294, size: 64, offset: 2048)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !119, file: !120, line: 345, baseType: !300, size: 64, offset: 2112)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!111, !159, !214}
!303 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !119, file: !120, line: 346, baseType: !300, size: 64, offset: 2176)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !119, file: !120, line: 347, baseType: !300, size: 64, offset: 2240)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !119, file: !120, line: 348, baseType: !227, size: 64, offset: 2304)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !119, file: !120, line: 349, baseType: !307, size: 64, offset: 2368)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = !DISubroutineType(types: !309)
!309 = !{!111, !159}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !119, file: !120, line: 350, baseType: !290, size: 64, offset: 2432)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !119, file: !120, line: 351, baseType: !290, size: 64, offset: 2496)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !119, file: !120, line: 356, baseType: !307, size: 64, offset: 2560)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !119, file: !120, line: 357, baseType: !290, size: 64, offset: 2624)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !119, file: !120, line: 363, baseType: !315, size: 8, offset: 2688)
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !103, line: 30, baseType: !316)
!316 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!317 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !119, file: !120, line: 365, baseType: !318, size: 192, offset: 2752)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !319, line: 54, size: 192, elements: !320)
!319 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !327, !328}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !318, file: !319, line: 55, baseType: !322, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !319, line: 51, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = !DISubroutineType(types: !325)
!325 = !{!111, !326, !199, !104}
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !318, size: 64)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !318, file: !319, line: 56, baseType: !326, size: 64, offset: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !318, file: !319, line: 57, baseType: !111, size: 32, offset: 128)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !119, file: !120, line: 368, baseType: !330, size: 128, offset: 2944)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !268, line: 250, size: 128, elements: !331)
!331 = !{!332, !333, !334, !335}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !330, file: !268, line: 251, baseType: !129, size: 32)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !330, file: !268, line: 252, baseType: !129, size: 32, offset: 32)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !330, file: !268, line: 253, baseType: !129, size: 32, offset: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !330, file: !268, line: 254, baseType: !129, size: 32, offset: 96)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !119, file: !120, line: 370, baseType: !111, size: 32, offset: 3072)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !119, file: !120, line: 372, baseType: !104, size: 64, offset: 3136)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !119, file: !120, line: 374, baseType: !339, size: 64, offset: 3200)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !341, line: 76, flags: DIFlagFwdDecl)
!341 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!342 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !119, file: !120, line: 375, baseType: !343, size: 5568, offset: 3264)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !344)
!344 = !{!345, !1798, !1800, !1803, !1804, !1855, !1949, !1950, !1951, !1952, !1953, !1962, !2067, !2080, !2083, !2084, !2088, !2090, !2091, !2092, !2096, !2102, !2103, !2106, !2221, !2222, !2225, !2226, !2227, !2228, !2260, !2261, !2262, !2265, !2268, !2269, !2270, !2271}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !343, file: !30, line: 462, baseType: !346, size: 512)
!346 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !347, line: 64, size: 512, elements: !348)
!347 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!348 = !{!349, !350, !356, !358, !418, !1635, !1788, !1793, !1794, !1795, !1796, !1797}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !346, file: !347, line: 65, baseType: !147, size: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !346, file: !347, line: 66, baseType: !351, size: 128, offset: 64)
!351 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !103, line: 178, size: 128, elements: !352)
!352 = !{!353, !355}
!353 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !351, file: !103, line: 179, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !351, file: !103, line: 179, baseType: !354, size: 64, offset: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !346, file: !347, line: 67, baseType: !357, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !346, file: !347, line: 68, baseType: !359, size: 64, offset: 256)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !347, line: 192, size: 704, elements: !361)
!361 = !{!362, !363, !379, !380}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !360, file: !347, line: 193, baseType: !351, size: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !360, file: !347, line: 194, baseType: !364, offset: 128)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !365, line: 83, baseType: !366)
!365 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !365, line: 71, elements: !367)
!367 = !{!368}
!368 = !DIDerivedType(tag: DW_TAG_member, scope: !366, file: !365, line: 72, baseType: !369)
!369 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !366, file: !365, line: 72, elements: !370)
!370 = !{!371}
!371 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !369, file: !365, line: 73, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !365, line: 20, elements: !373)
!373 = !{!374}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !372, file: !365, line: 21, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !376, line: 25, baseType: !377)
!376 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !376, line: 25, elements: !378)
!378 = !{}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !360, file: !347, line: 195, baseType: !346, size: 512, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !360, file: !347, line: 196, baseType: !381, size: 64, offset: 640)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !347, line: 156, size: 192, elements: !384)
!384 = !{!385, !390, !395}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !383, file: !347, line: 157, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !387)
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = !DISubroutineType(types: !389)
!389 = !{!111, !359, !357}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !383, file: !347, line: 158, baseType: !391, size: 64, offset: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!393 = !DISubroutineType(types: !394)
!394 = !{!147, !359, !357}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !383, file: !347, line: 159, baseType: !396, size: 64, offset: 128)
!396 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !398, size: 64)
!398 = !DISubroutineType(types: !399)
!399 = !{!111, !359, !357, !400}
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !401, size: 64)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !347, line: 148, size: 20736, elements: !402)
!402 = !{!403, !408, !412, !413, !417}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !401, file: !347, line: 149, baseType: !404, size: 192)
!404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 192, elements: !406)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!406 = !{!407}
!407 = !DISubrange(count: 3)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !401, file: !347, line: 150, baseType: !409, size: 4096, offset: 192)
!409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !405, size: 4096, elements: !410)
!410 = !{!411}
!411 = !DISubrange(count: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !401, file: !347, line: 151, baseType: !111, size: 32, offset: 4288)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !401, file: !347, line: 152, baseType: !414, size: 16384, offset: 4320)
!414 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 16384, elements: !415)
!415 = !{!416}
!416 = !DISubrange(count: 2048)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !401, file: !347, line: 153, baseType: !111, size: 32, offset: 20704)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !346, file: !347, line: 69, baseType: !419, size: 64, offset: 320)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !347, line: 138, size: 448, elements: !421)
!421 = !{!422, !426, !450, !452, !1580, !1613, !1617}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !420, file: !347, line: 139, baseType: !423, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{null, !357}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !420, file: !347, line: 140, baseType: !427, size: 64, offset: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !429)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !430, line: 230, size: 128, elements: !431)
!430 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!431 = !{!432, !446}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !429, file: !430, line: 231, baseType: !433, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !434, size: 64)
!434 = !DISubroutineType(types: !435)
!435 = !{!436, !357, !439, !405}
!436 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !103, line: 60, baseType: !437)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !216, line: 73, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !216, line: 15, baseType: !110)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !430, line: 30, size: 128, elements: !441)
!441 = !{!442, !443}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !440, file: !430, line: 31, baseType: !147, size: 64)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !440, file: !430, line: 32, baseType: !444, size: 16, offset: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !103, line: 19, baseType: !445)
!445 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !429, file: !430, line: 232, baseType: !447, size: 64, offset: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = !DISubroutineType(types: !449)
!449 = !{!436, !357, !439, !147, !218}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !420, file: !347, line: 141, baseType: !451, size: 64, offset: 128)
!451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !420, file: !347, line: 142, baseType: !453, size: 64, offset: 192)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !455, size: 64)
!455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !456)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !430, line: 84, size: 320, elements: !457)
!457 = !{!458, !459, !463, !1577, !1578}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !456, file: !430, line: 85, baseType: !147, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !456, file: !430, line: 86, baseType: !460, size: 64, offset: 64)
!460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !461, size: 64)
!461 = !DISubroutineType(types: !462)
!462 = !{!444, !357, !439, !111}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !456, file: !430, line: 88, baseType: !464, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !465, size: 64)
!465 = !DISubroutineType(types: !466)
!466 = !{!444, !357, !467, !111}
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !430, line: 168, size: 448, elements: !469)
!469 = !{!470, !471, !472, !473, !480, !481}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !468, file: !430, line: 169, baseType: !440, size: 128)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !468, file: !430, line: 170, baseType: !218, size: 64, offset: 128)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !468, file: !430, line: 171, baseType: !104, size: 64, offset: 192)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !468, file: !430, line: 172, baseType: !474, size: 64, offset: 256)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!436, !477, !357, !467, !405, !214, !218}
!477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !479, line: 526, flags: DIFlagFwdDecl)
!479 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !468, file: !430, line: 174, baseType: !474, size: 64, offset: 320)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !468, file: !430, line: 176, baseType: !482, size: 64, offset: 384)
!482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !483, size: 64)
!483 = !DISubroutineType(types: !484)
!484 = !{!111, !477, !357, !467, !485}
!485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !486, size: 64)
!486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !487, line: 305, size: 1472, elements: !488)
!487 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!488 = !{!489, !490, !491, !492, !493, !501, !502, !1551, !1557, !1558, !1563, !1564, !1567, !1571, !1572, !1573, !1574, !1575}
!489 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !486, file: !487, line: 308, baseType: !199, size: 64)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !486, file: !487, line: 309, baseType: !199, size: 64, offset: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !486, file: !487, line: 313, baseType: !485, size: 64, offset: 128)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !486, file: !487, line: 313, baseType: !485, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !486, file: !487, line: 315, baseType: !494, size: 192, align: 64, offset: 256)
!494 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !495, line: 24, size: 192, align: 64, elements: !496)
!495 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!496 = !{!497, !498, !500}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !494, file: !495, line: 25, baseType: !199, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !494, file: !495, line: 26, baseType: !499, size: 64, offset: 64)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !494, file: !495, line: 27, baseType: !499, size: 64, offset: 128)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !486, file: !487, line: 323, baseType: !199, size: 64, offset: 448)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !486, file: !487, line: 327, baseType: !503, size: 64, offset: 512)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !487, line: 388, size: 7296, elements: !505)
!505 = !{!506, !1547}
!506 = !DIDerivedType(tag: DW_TAG_member, scope: !504, file: !487, line: 389, baseType: !507, size: 7296)
!507 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !504, file: !487, line: 389, size: 7296, elements: !508)
!508 = !{!509, !510, !514, !515, !519, !520, !521, !522, !523, !531, !536, !537, !538, !539, !548, !549, !550, !559, !560, !561, !562, !563, !564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !585, !593, !596, !628, !629, !1518, !1519, !1522, !1525, !1526, !1529, !1530, !1531, !1534, !1546}
!509 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !507, file: !487, line: 390, baseType: !485, size: 64)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !507, file: !487, line: 391, baseType: !511, size: 64, offset: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !495, line: 31, size: 64, elements: !512)
!512 = !{!513}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !511, file: !495, line: 32, baseType: !499, size: 64)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !507, file: !487, line: 392, baseType: !133, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !507, file: !487, line: 394, baseType: !516, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = !DISubroutineType(types: !518)
!518 = !{!199, !477, !199, !199, !199, !199}
!519 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !507, file: !487, line: 398, baseType: !199, size: 64, offset: 256)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !507, file: !487, line: 399, baseType: !199, size: 64, offset: 320)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !507, file: !487, line: 405, baseType: !199, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !507, file: !487, line: 406, baseType: !199, size: 64, offset: 448)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !507, file: !487, line: 407, baseType: !524, size: 64, offset: 512)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !479, line: 286, baseType: !526)
!526 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !479, line: 286, size: 64, elements: !527)
!527 = !{!528}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !526, file: !479, line: 286, baseType: !529, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !530, line: 18, baseType: !199)
!530 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!531 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !507, file: !487, line: 416, baseType: !532, size: 32, offset: 576)
!532 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !103, line: 168, baseType: !533)
!533 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 166, size: 32, elements: !534)
!534 = !{!535}
!535 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !533, file: !103, line: 167, baseType: !111, size: 32)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !507, file: !487, line: 428, baseType: !532, size: 32, offset: 608)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !507, file: !487, line: 437, baseType: !532, size: 32, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !507, file: !487, line: 447, baseType: !532, size: 32, offset: 672)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !507, file: !487, line: 450, baseType: !540, size: 64, offset: 704)
!540 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !541, line: 13, baseType: !542)
!541 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!542 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !103, line: 175, baseType: !543)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !103, line: 173, size: 64, elements: !544)
!544 = !{!545}
!545 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !543, file: !103, line: 174, baseType: !546, size: 64)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !128, line: 22, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !130, line: 30, baseType: !217)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !507, file: !487, line: 452, baseType: !111, size: 32, offset: 768)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !507, file: !487, line: 454, baseType: !364, offset: 800)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !507, file: !487, line: 457, baseType: !551, size: 256, offset: 832)
!551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !552, line: 35, size: 256, elements: !553)
!552 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!553 = !{!554, !555, !556, !558}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !551, file: !552, line: 36, baseType: !540, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !551, file: !552, line: 42, baseType: !540, size: 64, offset: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !551, file: !552, line: 46, baseType: !557, offset: 128)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !365, line: 29, baseType: !372)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !551, file: !552, line: 47, baseType: !351, size: 128, offset: 128)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !507, file: !487, line: 459, baseType: !351, size: 128, offset: 1088)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !507, file: !487, line: 466, baseType: !199, size: 64, offset: 1216)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !507, file: !487, line: 467, baseType: !199, size: 64, offset: 1280)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !507, file: !487, line: 469, baseType: !199, size: 64, offset: 1344)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !507, file: !487, line: 470, baseType: !199, size: 64, offset: 1408)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !507, file: !487, line: 471, baseType: !542, size: 64, offset: 1472)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !507, file: !487, line: 472, baseType: !199, size: 64, offset: 1536)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !507, file: !487, line: 473, baseType: !199, size: 64, offset: 1600)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !507, file: !487, line: 474, baseType: !199, size: 64, offset: 1664)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !507, file: !487, line: 475, baseType: !199, size: 64, offset: 1728)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !507, file: !487, line: 477, baseType: !364, offset: 1792)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !507, file: !487, line: 478, baseType: !199, size: 64, offset: 1792)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !507, file: !487, line: 478, baseType: !199, size: 64, offset: 1856)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !507, file: !487, line: 478, baseType: !199, size: 64, offset: 1920)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !507, file: !487, line: 478, baseType: !199, size: 64, offset: 1984)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !507, file: !487, line: 479, baseType: !199, size: 64, offset: 2048)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !507, file: !487, line: 479, baseType: !199, size: 64, offset: 2112)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !507, file: !487, line: 479, baseType: !199, size: 64, offset: 2176)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !507, file: !487, line: 480, baseType: !199, size: 64, offset: 2240)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !507, file: !487, line: 480, baseType: !199, size: 64, offset: 2304)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !507, file: !487, line: 480, baseType: !199, size: 64, offset: 2368)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !507, file: !487, line: 480, baseType: !199, size: 64, offset: 2432)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !507, file: !487, line: 482, baseType: !582, size: 2816, offset: 2496)
!582 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 2816, elements: !583)
!583 = !{!584}
!584 = !DISubrange(count: 44)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !507, file: !487, line: 488, baseType: !586, size: 256, offset: 5312)
!586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !587, line: 60, size: 256, elements: !588)
!587 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !586, file: !587, line: 61, baseType: !590, size: 256)
!590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !540, size: 256, elements: !591)
!591 = !{!592}
!592 = !DISubrange(count: 4)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !507, file: !487, line: 490, baseType: !594, size: 64, offset: 5568)
!594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !595, size: 64)
!595 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !487, line: 490, flags: DIFlagFwdDecl)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !507, file: !487, line: 493, baseType: !597, size: 896, offset: 5632)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !598, line: 53, baseType: !599)
!598 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !598, line: 13, size: 896, elements: !600)
!600 = !{!601, !602, !603, !604, !607, !608, !615, !616, !620, !621, !624}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !599, file: !598, line: 18, baseType: !133, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !599, file: !598, line: 28, baseType: !542, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !599, file: !598, line: 31, baseType: !551, size: 256, offset: 128)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !599, file: !598, line: 32, baseType: !605, size: 64, offset: 384)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !598, line: 32, flags: DIFlagFwdDecl)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !599, file: !598, line: 37, baseType: !445, size: 16, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !599, file: !598, line: 40, baseType: !609, size: 192, offset: 512)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !610, line: 53, size: 192, elements: !611)
!610 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!611 = !{!612, !613, !614}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !609, file: !610, line: 54, baseType: !540, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !609, file: !610, line: 55, baseType: !364, offset: 64)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !609, file: !610, line: 59, baseType: !351, size: 128, offset: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !599, file: !598, line: 41, baseType: !104, size: 64, offset: 704)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !599, file: !598, line: 42, baseType: !617, size: 64, offset: 768)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !619)
!619 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !598, line: 42, flags: DIFlagFwdDecl)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !599, file: !598, line: 44, baseType: !532, size: 32, offset: 832)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !599, file: !598, line: 50, baseType: !622, size: 16, offset: 864)
!622 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !128, line: 19, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !130, line: 24, baseType: !445)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !599, file: !598, line: 51, baseType: !625, size: 16, offset: 880)
!625 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !128, line: 18, baseType: !626)
!626 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !130, line: 23, baseType: !627)
!627 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !507, file: !487, line: 495, baseType: !199, size: 64, offset: 6528)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !507, file: !487, line: 497, baseType: !630, size: 64, offset: 6592)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !487, line: 381, size: 384, elements: !632)
!632 = !{!633, !634, !1517}
!633 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !631, file: !487, line: 382, baseType: !532, size: 32)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !631, file: !487, line: 383, baseType: !635, size: 128, offset: 64)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !487, line: 376, size: 128, elements: !636)
!636 = !{!637, !1515}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !635, file: !487, line: 377, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !640, line: 640, size: 48640, elements: !641)
!640 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!641 = !{!642, !648, !649, !650, !656, !657, !658, !659, !660, !661, !662, !663, !667, !685, !696, !788, !789, !790, !801, !802, !804, !805, !806, !807, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !823, !824, !825, !826, !827, !828, !886, !889, !890, !891, !892, !893, !894, !895, !896, !897, !898, !942, !944, !945, !946, !958, !960, !961, !962, !963, !964, !970, !971, !972, !973, !974, !975, !976, !988, !993, !997, !998, !999, !1002, !1006, !1009, !1012, !1015, !1018, !1021, !1024, !1027, !1033, !1034, !1035, !1041, !1042, !1043, !1044, !1045, !1054, !1055, !1056, !1057, !1058, !1063, !1064, !1065, !1068, !1069, !1072, !1075, !1078, !1081, !1084, !1087, !1088, !1168, !1171, !1174, !1175, !1178, !1179, !1180, !1186, !1187, !1188, !1201, !1202, !1203, !1213, !1218, !1221, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338}
!642 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !639, file: !640, line: 646, baseType: !643, size: 128)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !644, line: 56, size: 128, elements: !645)
!644 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!645 = !{!646, !647}
!646 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !643, file: !644, line: 57, baseType: !199, size: 64)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !643, file: !644, line: 58, baseType: !127, size: 32, offset: 64)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !639, file: !640, line: 649, baseType: !109, size: 64, offset: 128)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !639, file: !640, line: 657, baseType: !104, size: 64, offset: 192)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !639, file: !640, line: 658, baseType: !651, size: 32, offset: 256)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !652, line: 113, baseType: !653)
!652 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !652, line: 111, size: 32, elements: !654)
!654 = !{!655}
!655 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !653, file: !652, line: 112, baseType: !532, size: 32)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !639, file: !640, line: 660, baseType: !7, size: 32, offset: 288)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !639, file: !640, line: 661, baseType: !7, size: 32, offset: 320)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !639, file: !640, line: 684, baseType: !111, size: 32, offset: 352)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !639, file: !640, line: 686, baseType: !111, size: 32, offset: 384)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !639, file: !640, line: 687, baseType: !111, size: 32, offset: 416)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !639, file: !640, line: 688, baseType: !111, size: 32, offset: 448)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !639, file: !640, line: 689, baseType: !7, size: 32, offset: 480)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !639, file: !640, line: 691, baseType: !664, size: 64, offset: 512)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !666)
!666 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !640, line: 691, flags: DIFlagFwdDecl)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !639, file: !640, line: 692, baseType: !668, size: 832, offset: 576)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !640, line: 451, size: 832, elements: !669)
!669 = !{!670, !675, !676, !677, !678, !679, !680, !681, !682, !683}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !668, file: !640, line: 453, baseType: !671, size: 128)
!671 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !640, line: 325, size: 128, elements: !672)
!672 = !{!673, !674}
!673 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !671, file: !640, line: 326, baseType: !199, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !671, file: !640, line: 327, baseType: !127, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !668, file: !640, line: 454, baseType: !494, size: 192, align: 64, offset: 128)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !668, file: !640, line: 455, baseType: !351, size: 128, offset: 320)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !668, file: !640, line: 456, baseType: !7, size: 32, offset: 448)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !668, file: !640, line: 458, baseType: !133, size: 64, offset: 512)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !668, file: !640, line: 459, baseType: !133, size: 64, offset: 576)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !668, file: !640, line: 460, baseType: !133, size: 64, offset: 640)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !668, file: !640, line: 461, baseType: !133, size: 64, offset: 704)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !668, file: !640, line: 463, baseType: !133, size: 64, offset: 768)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !668, file: !640, line: 465, baseType: !684, offset: 832)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !640, line: 415, elements: !378)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !639, file: !640, line: 693, baseType: !686, size: 384, offset: 1408)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !640, line: 489, size: 384, elements: !687)
!687 = !{!688, !689, !690, !691, !692, !693, !694}
!688 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !686, file: !640, line: 490, baseType: !351, size: 128)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !686, file: !640, line: 491, baseType: !199, size: 64, offset: 128)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !686, file: !640, line: 492, baseType: !199, size: 64, offset: 192)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !686, file: !640, line: 493, baseType: !7, size: 32, offset: 256)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !686, file: !640, line: 494, baseType: !445, size: 16, offset: 288)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !686, file: !640, line: 495, baseType: !445, size: 16, offset: 304)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !686, file: !640, line: 497, baseType: !695, size: 64, offset: 320)
!695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !686, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !639, file: !640, line: 697, baseType: !697, size: 1792, offset: 1792)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !640, line: 507, size: 1792, elements: !698)
!698 = !{!699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !785, !786}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !697, file: !640, line: 508, baseType: !494, size: 192, align: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !697, file: !640, line: 515, baseType: !133, size: 64, offset: 192)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !697, file: !640, line: 516, baseType: !133, size: 64, offset: 256)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !697, file: !640, line: 517, baseType: !133, size: 64, offset: 320)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !697, file: !640, line: 518, baseType: !133, size: 64, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !697, file: !640, line: 519, baseType: !133, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !697, file: !640, line: 526, baseType: !546, size: 64, offset: 512)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !697, file: !640, line: 527, baseType: !133, size: 64, offset: 576)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !697, file: !640, line: 528, baseType: !7, size: 32, offset: 640)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !697, file: !640, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !697, file: !640, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !697, file: !640, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !697, file: !640, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !697, file: !640, line: 563, baseType: !713, size: 512, offset: 704)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !714)
!714 = !{!715, !723, !724, !729, !781, !782, !783, !784}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !713, file: !6, line: 119, baseType: !716, size: 256)
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !717, line: 9, size: 256, elements: !718)
!717 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!718 = !{!719, !720}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !716, file: !717, line: 10, baseType: !494, size: 192, align: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !716, file: !717, line: 11, baseType: !721, size: 64, offset: 192)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !722, line: 29, baseType: !546)
!722 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!723 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !713, file: !6, line: 120, baseType: !721, size: 64, offset: 256)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !713, file: !6, line: 121, baseType: !725, size: 64, offset: 320)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = !DISubroutineType(types: !727)
!727 = !{!5, !728}
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !713, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !713, file: !6, line: 122, baseType: !730, size: 64, offset: 384)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !731, size: 64)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !732)
!732 = !{!733, !753, !754, !757, !767, !768, !776, !780}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !731, file: !6, line: 160, baseType: !734, size: 64)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !736)
!736 = !{!737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !735, file: !6, line: 215, baseType: !557)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !735, file: !6, line: 216, baseType: !7, size: 32)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !735, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !735, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !735, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !735, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !735, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !735, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !735, file: !6, line: 233, baseType: !721, size: 64, offset: 128)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !735, file: !6, line: 234, baseType: !728, size: 64, offset: 192)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !735, file: !6, line: 235, baseType: !721, size: 64, offset: 256)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !735, file: !6, line: 236, baseType: !728, size: 64, offset: 320)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !735, file: !6, line: 237, baseType: !750, size: 4096, offset: 512)
!750 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 4096, elements: !751)
!751 = !{!752}
!752 = !DISubrange(count: 8)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !731, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !731, file: !6, line: 162, baseType: !755, size: 32, offset: 96)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !103, line: 27, baseType: !756)
!756 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !216, line: 96, baseType: !111)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !731, file: !6, line: 163, baseType: !758, size: 32, offset: 128)
!758 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !759, line: 276, baseType: !760)
!759 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !759, line: 276, size: 32, elements: !761)
!761 = !{!762}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !760, file: !759, line: 276, baseType: !763, size: 32)
!763 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !759, line: 70, baseType: !764)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !759, line: 65, size: 32, elements: !765)
!765 = !{!766}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !764, file: !759, line: 66, baseType: !7, size: 32)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !731, file: !6, line: 164, baseType: !728, size: 64, offset: 192)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !731, file: !6, line: 165, baseType: !769, size: 128, offset: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !717, line: 14, size: 128, elements: !770)
!770 = !{!771}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !769, file: !717, line: 15, baseType: !772, size: 128)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !495, line: 125, size: 128, elements: !773)
!773 = !{!774, !775}
!774 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !772, file: !495, line: 126, baseType: !511, size: 64)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !772, file: !495, line: 127, baseType: !499, size: 64, offset: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !731, file: !6, line: 166, baseType: !777, size: 64, offset: 384)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = !DISubroutineType(types: !779)
!779 = !{!721}
!780 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !731, file: !6, line: 167, baseType: !721, size: 64, offset: 448)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !713, file: !6, line: 123, baseType: !258, size: 8, offset: 448)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !713, file: !6, line: 124, baseType: !258, size: 8, offset: 456)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !713, file: !6, line: 125, baseType: !258, size: 8, offset: 464)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !713, file: !6, line: 126, baseType: !258, size: 8, offset: 472)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !697, file: !640, line: 572, baseType: !713, size: 512, offset: 1216)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !697, file: !640, line: 580, baseType: !787, size: 64, offset: 1728)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !639, file: !640, line: 721, baseType: !7, size: 32, offset: 3584)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !639, file: !640, line: 722, baseType: !111, size: 32, offset: 3616)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !639, file: !640, line: 723, baseType: !791, size: 64, offset: 3648)
!791 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !792, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !793)
!793 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !794, line: 17, baseType: !795)
!794 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !794, line: 17, size: 64, elements: !796)
!796 = !{!797}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !795, file: !794, line: 17, baseType: !798, size: 64)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 64, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 1)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !639, file: !640, line: 724, baseType: !793, size: 64, offset: 3712)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !639, file: !640, line: 749, baseType: !803, offset: 3776)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !640, line: 290, elements: !378)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !639, file: !640, line: 751, baseType: !351, size: 128, offset: 3776)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !639, file: !640, line: 757, baseType: !503, size: 64, offset: 3904)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !639, file: !640, line: 758, baseType: !503, size: 64, offset: 3968)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !639, file: !640, line: 761, baseType: !808, size: 320, offset: 4032)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !587, line: 34, size: 320, elements: !809)
!809 = !{!810, !811}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !808, file: !587, line: 35, baseType: !133, size: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !808, file: !587, line: 36, baseType: !812, size: 256, offset: 64)
!812 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !591)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !639, file: !640, line: 766, baseType: !111, size: 32, offset: 4352)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !639, file: !640, line: 767, baseType: !111, size: 32, offset: 4384)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !639, file: !640, line: 768, baseType: !111, size: 32, offset: 4416)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !639, file: !640, line: 770, baseType: !111, size: 32, offset: 4448)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !639, file: !640, line: 772, baseType: !199, size: 64, offset: 4480)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !639, file: !640, line: 775, baseType: !7, size: 32, offset: 4544)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !639, file: !640, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !639, file: !640, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !639, file: !640, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !639, file: !640, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !639, file: !640, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !639, file: !640, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !639, file: !640, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !639, file: !640, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !639, file: !640, line: 831, baseType: !199, size: 64, offset: 4672)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !639, file: !640, line: 833, baseType: !829, size: 384, offset: 4736)
!829 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !830)
!830 = !{!831, !836}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !829, file: !12, line: 26, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DISubroutineType(types: !834)
!834 = !{!110, !835}
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !829, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_member, scope: !829, file: !12, line: 27, baseType: !837, size: 320, offset: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !829, file: !12, line: 27, size: 320, elements: !838)
!838 = !{!839, !849, !876}
!839 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !837, file: !12, line: 36, baseType: !840, size: 320)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !12, line: 29, size: 320, elements: !841)
!841 = !{!842, !844, !845, !846, !847, !848}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !840, file: !12, line: 30, baseType: !843, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !840, file: !12, line: 31, baseType: !127, size: 32, offset: 64)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !840, file: !12, line: 32, baseType: !127, size: 32, offset: 96)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !840, file: !12, line: 33, baseType: !127, size: 32, offset: 128)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !840, file: !12, line: 34, baseType: !133, size: 64, offset: 192)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !840, file: !12, line: 35, baseType: !843, size: 64, offset: 256)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !837, file: !12, line: 46, baseType: !850, size: 192)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !12, line: 38, size: 192, elements: !851)
!851 = !{!852, !853, !854, !875}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !850, file: !12, line: 39, baseType: !755, size: 32)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !850, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!854 = !DIDerivedType(tag: DW_TAG_member, scope: !850, file: !12, line: 41, baseType: !855, size: 64, offset: 64)
!855 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !850, file: !12, line: 41, size: 64, elements: !856)
!856 = !{!857, !865}
!857 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !855, file: !12, line: 42, baseType: !858, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !859, size: 64)
!859 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !860, line: 7, size: 128, elements: !861)
!860 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!861 = !{!862, !864}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !859, file: !860, line: 8, baseType: !863, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !216, line: 93, baseType: !217)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !859, file: !860, line: 9, baseType: !217, size: 64, offset: 64)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !855, file: !12, line: 43, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !868, line: 7, size: 64, elements: !869)
!868 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!869 = !{!870, !874}
!870 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !867, file: !868, line: 8, baseType: !871, size: 32)
!871 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !868, line: 5, baseType: !872)
!872 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !128, line: 20, baseType: !873)
!873 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !130, line: 26, baseType: !111)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !867, file: !868, line: 9, baseType: !872, size: 32, offset: 32)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !850, file: !12, line: 45, baseType: !133, size: 64, offset: 128)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !837, file: !12, line: 54, baseType: !877, size: 256)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !837, file: !12, line: 48, size: 256, elements: !878)
!878 = !{!879, !882, !883, !884, !885}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !877, file: !12, line: 49, baseType: !880, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !877, file: !12, line: 50, baseType: !111, size: 32, offset: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !877, file: !12, line: 51, baseType: !111, size: 32, offset: 96)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !877, file: !12, line: 52, baseType: !199, size: 64, offset: 128)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !877, file: !12, line: 53, baseType: !199, size: 64, offset: 192)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !639, file: !640, line: 835, baseType: !887, size: 32, offset: 5120)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !103, line: 22, baseType: !888)
!888 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !216, line: 28, baseType: !111)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !639, file: !640, line: 836, baseType: !887, size: 32, offset: 5152)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !639, file: !640, line: 840, baseType: !199, size: 64, offset: 5184)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !639, file: !640, line: 849, baseType: !638, size: 64, offset: 5248)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !639, file: !640, line: 852, baseType: !638, size: 64, offset: 5312)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !639, file: !640, line: 857, baseType: !351, size: 128, offset: 5376)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !639, file: !640, line: 858, baseType: !351, size: 128, offset: 5504)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !639, file: !640, line: 859, baseType: !638, size: 64, offset: 5632)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !639, file: !640, line: 867, baseType: !351, size: 128, offset: 5696)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !639, file: !640, line: 868, baseType: !351, size: 128, offset: 5824)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !639, file: !640, line: 871, baseType: !899, size: 64, offset: 5952)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !901, line: 59, size: 768, elements: !902)
!901 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!902 = !{!903, !904, !905, !906, !917, !918, !925, !934}
!903 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !900, file: !901, line: 61, baseType: !651, size: 32)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !900, file: !901, line: 62, baseType: !7, size: 32, offset: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !900, file: !901, line: 63, baseType: !364, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !900, file: !901, line: 65, baseType: !907, size: 256, offset: 64)
!907 = !DICompositeType(tag: DW_TAG_array_type, baseType: !908, size: 256, elements: !591)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !103, line: 182, size: 64, elements: !909)
!909 = !{!910}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !908, file: !103, line: 183, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !103, line: 186, size: 128, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !912, file: !103, line: 187, baseType: !911, size: 64)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !912, file: !103, line: 187, baseType: !916, size: 64, offset: 64)
!916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !900, file: !901, line: 66, baseType: !908, size: 64, offset: 320)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !900, file: !901, line: 68, baseType: !919, size: 128, offset: 384)
!919 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !920, line: 40, baseType: !921)
!920 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !920, line: 36, size: 128, elements: !922)
!922 = !{!923, !924}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !921, file: !920, line: 37, baseType: !364)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !921, file: !920, line: 38, baseType: !351, size: 128)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !900, file: !901, line: 69, baseType: !926, size: 128, align: 64, offset: 512)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !103, line: 216, size: 128, align: 64, elements: !927)
!927 = !{!928, !930}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !926, file: !103, line: 217, baseType: !929, size: 64)
!929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !926, file: !103, line: 218, baseType: !931, size: 64, offset: 64)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DISubroutineType(types: !933)
!933 = !{null, !929}
!934 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !900, file: !901, line: 70, baseType: !935, size: 128, offset: 640)
!935 = !DICompositeType(tag: DW_TAG_array_type, baseType: !936, size: 128, elements: !799)
!936 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !901, line: 54, size: 128, elements: !937)
!937 = !{!938, !939}
!938 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !936, file: !901, line: 55, baseType: !111, size: 32)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !936, file: !901, line: 56, baseType: !940, size: 64, offset: 64)
!940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !941, size: 64)
!941 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !901, line: 56, flags: DIFlagFwdDecl)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !639, file: !640, line: 872, baseType: !943, size: 512, offset: 6016)
!943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !912, size: 512, elements: !591)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !639, file: !640, line: 873, baseType: !351, size: 128, offset: 6528)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !639, file: !640, line: 874, baseType: !351, size: 128, offset: 6656)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !639, file: !640, line: 876, baseType: !947, size: 64, offset: 6784)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !949, line: 26, size: 192, elements: !950)
!949 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!950 = !{!951, !952}
!951 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !948, file: !949, line: 27, baseType: !7, size: 32)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !948, file: !949, line: 28, baseType: !953, size: 128, offset: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !954, line: 43, size: 128, elements: !955)
!954 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956, !957}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !953, file: !954, line: 44, baseType: !557)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !953, file: !954, line: 45, baseType: !351, size: 128)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !639, file: !640, line: 879, baseType: !959, size: 64, offset: 6848)
!959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !639, file: !640, line: 882, baseType: !959, size: 64, offset: 6912)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !639, file: !640, line: 884, baseType: !133, size: 64, offset: 6976)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !639, file: !640, line: 885, baseType: !133, size: 64, offset: 7040)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !639, file: !640, line: 890, baseType: !133, size: 64, offset: 7104)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !639, file: !640, line: 891, baseType: !965, size: 128, offset: 7168)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !640, line: 242, size: 128, elements: !966)
!966 = !{!967, !968, !969}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !965, file: !640, line: 244, baseType: !133, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !965, file: !640, line: 245, baseType: !133, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !965, file: !640, line: 246, baseType: !557, offset: 128)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !639, file: !640, line: 900, baseType: !199, size: 64, offset: 7296)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !639, file: !640, line: 901, baseType: !199, size: 64, offset: 7360)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !639, file: !640, line: 904, baseType: !133, size: 64, offset: 7424)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !639, file: !640, line: 907, baseType: !133, size: 64, offset: 7488)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !639, file: !640, line: 910, baseType: !199, size: 64, offset: 7552)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !639, file: !640, line: 911, baseType: !199, size: 64, offset: 7616)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !639, file: !640, line: 914, baseType: !977, size: 640, offset: 7680)
!977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !978, line: 123, size: 640, elements: !979)
!978 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!979 = !{!980, !986, !987}
!980 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !977, file: !978, line: 124, baseType: !981, size: 576)
!981 = !DICompositeType(tag: DW_TAG_array_type, baseType: !982, size: 576, elements: !406)
!982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !978, line: 108, size: 192, elements: !983)
!983 = !{!984, !985}
!984 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !982, file: !978, line: 109, baseType: !133, size: 64)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !982, file: !978, line: 110, baseType: !769, size: 128, offset: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !977, file: !978, line: 125, baseType: !7, size: 32, offset: 576)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !977, file: !978, line: 126, baseType: !7, size: 32, offset: 608)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !639, file: !640, line: 917, baseType: !989, size: 192, offset: 8320)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !978, line: 134, size: 192, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !989, file: !978, line: 135, baseType: !926, size: 128, align: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !989, file: !978, line: 136, baseType: !7, size: 32, offset: 128)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !639, file: !640, line: 923, baseType: !994, size: 64, offset: 8512)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !996)
!996 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !640, line: 923, flags: DIFlagFwdDecl)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !639, file: !640, line: 926, baseType: !994, size: 64, offset: 8576)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !639, file: !640, line: 929, baseType: !994, size: 64, offset: 8640)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !639, file: !640, line: 933, baseType: !1000, size: 64, offset: 8704)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !640, line: 933, flags: DIFlagFwdDecl)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !639, file: !640, line: 943, baseType: !1003, size: 128, offset: 8768)
!1003 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 128, elements: !1004)
!1004 = !{!1005}
!1005 = !DISubrange(count: 16)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !639, file: !640, line: 945, baseType: !1007, size: 64, offset: 8896)
!1007 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1008, size: 64)
!1008 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !640, line: 49, flags: DIFlagFwdDecl)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !639, file: !640, line: 956, baseType: !1010, size: 64, offset: 8960)
!1010 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1011, size: 64)
!1011 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !640, line: 45, flags: DIFlagFwdDecl)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !639, file: !640, line: 959, baseType: !1013, size: 64, offset: 9024)
!1013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1014, size: 64)
!1014 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !640, line: 959, flags: DIFlagFwdDecl)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !639, file: !640, line: 962, baseType: !1016, size: 64, offset: 9088)
!1016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1017, size: 64)
!1017 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !640, line: 66, flags: DIFlagFwdDecl)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !639, file: !640, line: 966, baseType: !1019, size: 64, offset: 9152)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !640, line: 50, flags: DIFlagFwdDecl)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !639, file: !640, line: 969, baseType: !1022, size: 64, offset: 9216)
!1022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1023, size: 64)
!1023 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !978, line: 223, flags: DIFlagFwdDecl)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !639, file: !640, line: 970, baseType: !1025, size: 64, offset: 9280)
!1025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1026, size: 64)
!1026 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !640, line: 62, flags: DIFlagFwdDecl)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !639, file: !640, line: 971, baseType: !1028, size: 64, offset: 9344)
!1028 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1029, line: 25, baseType: !1030)
!1029 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1029, line: 23, size: 64, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1030, file: !1029, line: 24, baseType: !798, size: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !639, file: !640, line: 972, baseType: !1028, size: 64, offset: 9408)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !639, file: !640, line: 974, baseType: !1028, size: 64, offset: 9472)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !639, file: !640, line: 975, baseType: !1036, size: 192, offset: 9536)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1037, line: 30, size: 192, elements: !1038)
!1037 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1038 = !{!1039, !1040}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1036, file: !1037, line: 31, baseType: !351, size: 128)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1036, file: !1037, line: 32, baseType: !1028, size: 64, offset: 128)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !639, file: !640, line: 976, baseType: !199, size: 64, offset: 9728)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !639, file: !640, line: 977, baseType: !218, size: 64, offset: 9792)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !639, file: !640, line: 978, baseType: !7, size: 32, offset: 9856)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !639, file: !640, line: 980, baseType: !929, size: 64, offset: 9920)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !639, file: !640, line: 989, baseType: !1046, size: 128, offset: 9984)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1047, line: 35, size: 128, elements: !1048)
!1047 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1048 = !{!1049, !1050, !1051}
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1046, file: !1047, line: 36, baseType: !111, size: 32)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1046, file: !1047, line: 37, baseType: !532, size: 32, offset: 32)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1046, file: !1047, line: 38, baseType: !1052, size: 64, offset: 64)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1047, line: 23, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !639, file: !640, line: 992, baseType: !133, size: 64, offset: 10112)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !639, file: !640, line: 993, baseType: !133, size: 64, offset: 10176)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !639, file: !640, line: 996, baseType: !364, offset: 10240)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !639, file: !640, line: 999, baseType: !557, offset: 10240)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !639, file: !640, line: 1001, baseType: !1059, size: 64, offset: 10240)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !640, line: 636, size: 64, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1059, file: !640, line: 637, baseType: !1062, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !639, file: !640, line: 1005, baseType: !772, size: 128, offset: 10304)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !639, file: !640, line: 1007, baseType: !638, size: 64, offset: 10432)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !639, file: !640, line: 1009, baseType: !1066, size: 64, offset: 10496)
!1066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1067, size: 64)
!1067 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !640, line: 1009, flags: DIFlagFwdDecl)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !639, file: !640, line: 1043, baseType: !104, size: 64, offset: 10560)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !639, file: !640, line: 1046, baseType: !1070, size: 64, offset: 10624)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !640, line: 41, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !639, file: !640, line: 1050, baseType: !1073, size: 64, offset: 10688)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !640, line: 42, flags: DIFlagFwdDecl)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !639, file: !640, line: 1054, baseType: !1076, size: 64, offset: 10752)
!1076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1077, size: 64)
!1077 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !640, line: 55, flags: DIFlagFwdDecl)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !639, file: !640, line: 1056, baseType: !1079, size: 64, offset: 10816)
!1079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1080, size: 64)
!1080 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !640, line: 40, flags: DIFlagFwdDecl)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !639, file: !640, line: 1058, baseType: !1082, size: 64, offset: 10880)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !640, line: 47, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !639, file: !640, line: 1061, baseType: !1085, size: 64, offset: 10944)
!1085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1086, size: 64)
!1086 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !640, line: 43, flags: DIFlagFwdDecl)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !639, file: !640, line: 1064, baseType: !199, size: 64, offset: 11008)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !639, file: !640, line: 1065, baseType: !1089, size: 64, offset: 11072)
!1089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1090, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1037, line: 14, baseType: !1091)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1037, line: 12, size: 384, elements: !1092)
!1092 = !{!1093}
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1091, file: !1037, line: 13, baseType: !1094, size: 384)
!1094 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1091, file: !1037, line: 13, size: 384, elements: !1095)
!1095 = !{!1096, !1097, !1098, !1099}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1094, file: !1037, line: 13, baseType: !111, size: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1094, file: !1037, line: 13, baseType: !111, size: 32, offset: 32)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1094, file: !1037, line: 13, baseType: !111, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1094, file: !1037, line: 13, baseType: !1100, size: 256, offset: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1101, line: 32, size: 256, elements: !1102)
!1101 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1102 = !{!1103, !1109, !1122, !1128, !1137, !1157, !1162}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1100, file: !1101, line: 37, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 34, size: 64, elements: !1105)
!1105 = !{!1106, !1107}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1104, file: !1101, line: 35, baseType: !888, size: 32)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1104, file: !1101, line: 36, baseType: !1108, size: 32, offset: 32)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !216, line: 49, baseType: !7)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1100, file: !1101, line: 45, baseType: !1110, size: 192)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 40, size: 192, elements: !1111)
!1111 = !{!1112, !1114, !1115, !1121}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1110, file: !1101, line: 41, baseType: !1113, size: 32)
!1113 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !216, line: 95, baseType: !111)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1110, file: !1101, line: 42, baseType: !111, size: 32, offset: 32)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1110, file: !1101, line: 43, baseType: !1116, size: 64, offset: 64)
!1116 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1101, line: 11, baseType: !1117)
!1117 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1101, line: 8, size: 64, elements: !1118)
!1118 = !{!1119, !1120}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1117, file: !1101, line: 9, baseType: !111, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1117, file: !1101, line: 10, baseType: !104, size: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1110, file: !1101, line: 44, baseType: !111, size: 32, offset: 128)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1100, file: !1101, line: 52, baseType: !1123, size: 128)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 48, size: 128, elements: !1124)
!1124 = !{!1125, !1126, !1127}
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1123, file: !1101, line: 49, baseType: !888, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1123, file: !1101, line: 50, baseType: !1108, size: 32, offset: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1123, file: !1101, line: 51, baseType: !1116, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1100, file: !1101, line: 61, baseType: !1129, size: 256)
!1129 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 55, size: 256, elements: !1130)
!1130 = !{!1131, !1132, !1133, !1134, !1136}
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1129, file: !1101, line: 56, baseType: !888, size: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1129, file: !1101, line: 57, baseType: !1108, size: 32, offset: 32)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1129, file: !1101, line: 58, baseType: !111, size: 32, offset: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1129, file: !1101, line: 59, baseType: !1135, size: 64, offset: 128)
!1135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !216, line: 94, baseType: !438)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1129, file: !1101, line: 60, baseType: !1135, size: 64, offset: 192)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1100, file: !1101, line: 95, baseType: !1138, size: 256)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 64, size: 256, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1138, file: !1101, line: 65, baseType: !104, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1138, file: !1101, line: 77, baseType: !1142, size: 192, offset: 64)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1138, file: !1101, line: 77, size: 192, elements: !1143)
!1143 = !{!1144, !1145, !1152}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1142, file: !1101, line: 82, baseType: !627, size: 16)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1142, file: !1101, line: 88, baseType: !1146, size: 192)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !1101, line: 84, size: 192, elements: !1147)
!1147 = !{!1148, !1150, !1151}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1146, file: !1101, line: 85, baseType: !1149, size: 64)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 64, elements: !751)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1146, file: !1101, line: 86, baseType: !104, size: 64, offset: 64)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1146, file: !1101, line: 87, baseType: !104, size: 64, offset: 128)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1142, file: !1101, line: 93, baseType: !1153, size: 96)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !1101, line: 90, size: 96, elements: !1154)
!1154 = !{!1155, !1156}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1153, file: !1101, line: 91, baseType: !1149, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1153, file: !1101, line: 92, baseType: !129, size: 32, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1100, file: !1101, line: 101, baseType: !1158, size: 128)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 98, size: 128, elements: !1159)
!1159 = !{!1160, !1161}
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1158, file: !1101, line: 99, baseType: !110, size: 64)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1158, file: !1101, line: 100, baseType: !111, size: 32, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1100, file: !1101, line: 108, baseType: !1163, size: 128)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1100, file: !1101, line: 104, size: 128, elements: !1164)
!1164 = !{!1165, !1166, !1167}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1163, file: !1101, line: 105, baseType: !104, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1163, file: !1101, line: 106, baseType: !111, size: 32, offset: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1163, file: !1101, line: 107, baseType: !7, size: 32, offset: 96)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !639, file: !640, line: 1067, baseType: !1169, offset: 11136)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1170, line: 12, elements: !378)
!1170 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !639, file: !640, line: 1099, baseType: !1172, size: 64, offset: 11136)
!1172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1173, size: 64)
!1173 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !640, line: 56, flags: DIFlagFwdDecl)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !639, file: !640, line: 1103, baseType: !351, size: 128, offset: 11200)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !639, file: !640, line: 1104, baseType: !1176, size: 64, offset: 11328)
!1176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1177, size: 64)
!1177 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !640, line: 46, flags: DIFlagFwdDecl)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !639, file: !640, line: 1105, baseType: !609, size: 192, offset: 11392)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !639, file: !640, line: 1106, baseType: !7, size: 32, offset: 11584)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !639, file: !640, line: 1109, baseType: !1181, size: 128, offset: 11648)
!1181 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1182, size: 128, elements: !1184)
!1182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1183, size: 64)
!1183 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !640, line: 51, flags: DIFlagFwdDecl)
!1184 = !{!1185}
!1185 = !DISubrange(count: 2)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !639, file: !640, line: 1110, baseType: !609, size: 192, offset: 11776)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !639, file: !640, line: 1111, baseType: !351, size: 128, offset: 11968)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !639, file: !640, line: 1173, baseType: !1189, size: 64, offset: 12096)
!1189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1190, size: 64)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1191, line: 62, size: 256, align: 256, elements: !1192)
!1191 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195, !1200}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1190, file: !1191, line: 75, baseType: !129, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1190, file: !1191, line: 90, baseType: !129, size: 32, offset: 32)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1190, file: !1191, line: 124, baseType: !1196, size: 64, offset: 64)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !1191, line: 109, size: 64, elements: !1197)
!1197 = !{!1198, !1199}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1196, file: !1191, line: 110, baseType: !134, size: 64)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1196, file: !1191, line: 112, baseType: !134, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1190, file: !1191, line: 144, baseType: !129, size: 32, offset: 128)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !639, file: !640, line: 1174, baseType: !127, size: 32, offset: 12160)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !639, file: !640, line: 1179, baseType: !199, size: 64, offset: 12224)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !639, file: !640, line: 1182, baseType: !1204, size: 128, offset: 12288)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !587, line: 76, size: 128, elements: !1205)
!1205 = !{!1206, !1211, !1212}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1204, file: !587, line: 85, baseType: !1207, size: 64)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1208, line: 7, size: 64, elements: !1209)
!1208 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !{!1210}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1207, file: !1208, line: 12, baseType: !795, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1204, file: !587, line: 88, baseType: !315, size: 8, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1204, file: !587, line: 95, baseType: !315, size: 8, offset: 72)
!1213 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !640, line: 1184, baseType: !1214, size: 128, offset: 12416)
!1214 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !640, line: 1184, size: 128, elements: !1215)
!1215 = !{!1216, !1217}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1214, file: !640, line: 1185, baseType: !651, size: 32)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1214, file: !640, line: 1186, baseType: !926, size: 128, align: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !639, file: !640, line: 1190, baseType: !1219, size: 64, offset: 12544)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !285, line: 13, flags: DIFlagFwdDecl)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !639, file: !640, line: 1192, baseType: !1222, size: 128, offset: 12608)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !587, line: 64, size: 128, elements: !1223)
!1223 = !{!1224, !1317, !1318}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1222, file: !587, line: 65, baseType: !1225, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1226, size: 64)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !487, line: 68, size: 512, align: 128, elements: !1227)
!1227 = !{!1228, !1229, !1309, !1316}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1226, file: !487, line: 69, baseType: !199, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !487, line: 77, baseType: !1230, size: 320, offset: 64)
!1230 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !487, line: 77, size: 320, elements: !1231)
!1231 = !{!1232, !1241, !1246, !1274, !1282, !1288, !1301, !1308}
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 78, baseType: !1233, size: 320)
!1233 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 78, size: 320, elements: !1234)
!1234 = !{!1235, !1236, !1239, !1240}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1233, file: !487, line: 84, baseType: !351, size: 128)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1233, file: !487, line: 86, baseType: !1237, size: 64, offset: 128)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !487, line: 26, flags: DIFlagFwdDecl)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1233, file: !487, line: 87, baseType: !199, size: 64, offset: 192)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1233, file: !487, line: 94, baseType: !199, size: 64, offset: 256)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 96, baseType: !1242, size: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 96, size: 64, elements: !1243)
!1243 = !{!1244}
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1242, file: !487, line: 101, baseType: !1245, size: 64)
!1245 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !103, line: 143, baseType: !133)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 103, baseType: !1247, size: 320)
!1247 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 103, size: 320, elements: !1248)
!1248 = !{!1249, !1259, !1262, !1263}
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !487, line: 104, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !487, line: 104, size: 128, elements: !1251)
!1251 = !{!1252, !1253}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1250, file: !487, line: 105, baseType: !351, size: 128)
!1253 = !DIDerivedType(tag: DW_TAG_member, scope: !1250, file: !487, line: 106, baseType: !1254, size: 128)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1250, file: !487, line: 106, size: 128, elements: !1255)
!1255 = !{!1256, !1257, !1258}
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1254, file: !487, line: 107, baseType: !1225, size: 64)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1254, file: !487, line: 109, baseType: !111, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1254, file: !487, line: 110, baseType: !111, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1247, file: !487, line: 117, baseType: !1260, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !487, line: 117, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1247, file: !487, line: 119, baseType: !104, size: 64, offset: 192)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1247, file: !487, line: 120, baseType: !1264, size: 64, offset: 256)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1247, file: !487, line: 120, size: 64, elements: !1265)
!1265 = !{!1266, !1267, !1268}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1264, file: !487, line: 121, baseType: !104, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1264, file: !487, line: 122, baseType: !199, size: 64)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1264, file: !487, line: 123, baseType: !1269, size: 32)
!1269 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1264, file: !487, line: 123, size: 32, elements: !1270)
!1270 = !{!1271, !1272, !1273}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1269, file: !487, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1269, file: !487, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1269, file: !487, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1274 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 130, baseType: !1275, size: 192)
!1275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 130, size: 192, elements: !1276)
!1276 = !{!1277, !1278, !1279, !1280, !1281}
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1275, file: !487, line: 131, baseType: !199, size: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1275, file: !487, line: 134, baseType: !124, size: 8, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1275, file: !487, line: 135, baseType: !124, size: 8, offset: 72)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1275, file: !487, line: 136, baseType: !532, size: 32, offset: 96)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1275, file: !487, line: 137, baseType: !7, size: 32, offset: 128)
!1282 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 139, baseType: !1283, size: 256)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 139, size: 256, elements: !1284)
!1284 = !{!1285, !1286, !1287}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1283, file: !487, line: 140, baseType: !199, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1283, file: !487, line: 141, baseType: !532, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1283, file: !487, line: 143, baseType: !351, size: 128, offset: 128)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 145, baseType: !1289, size: 256)
!1289 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 145, size: 256, elements: !1290)
!1290 = !{!1291, !1292, !1294, !1295, !1300}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1289, file: !487, line: 146, baseType: !199, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1289, file: !487, line: 147, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !479, line: 509, baseType: !1225)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1289, file: !487, line: 148, baseType: !199, size: 64, offset: 128)
!1295 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !487, line: 149, baseType: !1296, size: 64, offset: 192)
!1296 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1289, file: !487, line: 149, size: 64, elements: !1297)
!1297 = !{!1298, !1299}
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1296, file: !487, line: 150, baseType: !503, size: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1296, file: !487, line: 151, baseType: !532, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1289, file: !487, line: 156, baseType: !364, offset: 256)
!1301 = !DIDerivedType(tag: DW_TAG_member, scope: !1230, file: !487, line: 159, baseType: !1302, size: 128)
!1302 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1230, file: !487, line: 159, size: 128, elements: !1303)
!1303 = !{!1304, !1307}
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1302, file: !487, line: 161, baseType: !1305, size: 64)
!1305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1306, size: 64)
!1306 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !487, line: 161, flags: DIFlagFwdDecl)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1302, file: !487, line: 162, baseType: !104, size: 64, offset: 64)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1230, file: !487, line: 176, baseType: !926, size: 128, align: 64)
!1309 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !487, line: 179, baseType: !1310, size: 32, offset: 384)
!1310 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !487, line: 179, size: 32, elements: !1311)
!1311 = !{!1312, !1313, !1314, !1315}
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1310, file: !487, line: 184, baseType: !532, size: 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1310, file: !487, line: 192, baseType: !7, size: 32)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1310, file: !487, line: 194, baseType: !7, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1310, file: !487, line: 195, baseType: !111, size: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1226, file: !487, line: 199, baseType: !532, size: 32, offset: 416)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1222, file: !587, line: 67, baseType: !129, size: 32, offset: 64)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1222, file: !587, line: 68, baseType: !129, size: 32, offset: 96)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !639, file: !640, line: 1206, baseType: !111, size: 32, offset: 12736)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !639, file: !640, line: 1207, baseType: !111, size: 32, offset: 12768)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !639, file: !640, line: 1209, baseType: !199, size: 64, offset: 12800)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !639, file: !640, line: 1219, baseType: !133, size: 64, offset: 12864)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !639, file: !640, line: 1220, baseType: !133, size: 64, offset: 12928)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !639, file: !640, line: 1317, baseType: !111, size: 32, offset: 12992)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !639, file: !640, line: 1319, baseType: !638, size: 64, offset: 13056)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !639, file: !640, line: 1322, baseType: !1327, size: 64, offset: 13120)
!1327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1328, size: 64)
!1328 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1329, line: 9, flags: DIFlagFwdDecl)
!1329 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !639, file: !640, line: 1326, baseType: !651, size: 32, offset: 13184)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !639, file: !640, line: 1342, baseType: !104, size: 64, offset: 13248)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !639, file: !640, line: 1343, baseType: !134, size: 64, offset: 13312)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !639, file: !640, line: 1344, baseType: !133, size: 64, offset: 13376)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !639, file: !640, line: 1345, baseType: !134, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !639, file: !640, line: 1346, baseType: !134, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !639, file: !640, line: 1347, baseType: !134, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !639, file: !640, line: 1348, baseType: !926, size: 128, align: 64, offset: 13504)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !639, file: !640, line: 1358, baseType: !1339, size: 34816, offset: 13824)
!1339 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1340, line: 485, size: 34816, elements: !1341)
!1340 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1341 = !{!1342, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1371, !1372, !1373, !1374, !1375, !1376, !1379, !1380, !1381}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1339, file: !1340, line: 487, baseType: !1343, size: 192)
!1343 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1344, size: 192, elements: !406)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1345, line: 16, size: 64, elements: !1346)
!1345 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349, !1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1344, file: !1345, line: 17, baseType: !622, size: 16)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1344, file: !1345, line: 18, baseType: !622, size: 16, offset: 16)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1344, file: !1345, line: 19, baseType: !622, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1344, file: !1345, line: 19, baseType: !622, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1344, file: !1345, line: 19, baseType: !622, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1344, file: !1345, line: 19, baseType: !622, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1344, file: !1345, line: 19, baseType: !622, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1344, file: !1345, line: 20, baseType: !622, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1344, file: !1345, line: 20, baseType: !622, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1344, file: !1345, line: 20, baseType: !622, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1344, file: !1345, line: 20, baseType: !622, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1344, file: !1345, line: 20, baseType: !622, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1344, file: !1345, line: 20, baseType: !622, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1339, file: !1340, line: 491, baseType: !199, size: 64, offset: 192)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1339, file: !1340, line: 495, baseType: !445, size: 16, offset: 256)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1339, file: !1340, line: 496, baseType: !445, size: 16, offset: 272)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1339, file: !1340, line: 497, baseType: !445, size: 16, offset: 288)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1339, file: !1340, line: 498, baseType: !445, size: 16, offset: 304)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1339, file: !1340, line: 502, baseType: !199, size: 64, offset: 320)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1339, file: !1340, line: 503, baseType: !199, size: 64, offset: 384)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1339, file: !1340, line: 514, baseType: !1368, size: 256, offset: 448)
!1368 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1369, size: 256, elements: !591)
!1369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1370, size: 64)
!1370 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1340, line: 483, flags: DIFlagFwdDecl)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1339, file: !1340, line: 516, baseType: !199, size: 64, offset: 704)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1339, file: !1340, line: 518, baseType: !199, size: 64, offset: 768)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1339, file: !1340, line: 520, baseType: !199, size: 64, offset: 832)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1339, file: !1340, line: 521, baseType: !199, size: 64, offset: 896)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1339, file: !1340, line: 522, baseType: !199, size: 64, offset: 960)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1339, file: !1340, line: 528, baseType: !1377, size: 64, offset: 1024)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1340, line: 10, flags: DIFlagFwdDecl)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1339, file: !1340, line: 535, baseType: !199, size: 64, offset: 1088)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1339, file: !1340, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1339, file: !1340, line: 540, baseType: !1382, size: 33280, offset: 1536)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1383, line: 317, size: 33280, elements: !1384)
!1383 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1386, !1387}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1382, file: !1383, line: 330, baseType: !7, size: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1382, file: !1383, line: 337, baseType: !199, size: 64, offset: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1382, file: !1383, line: 348, baseType: !1388, size: 32768, offset: 512)
!1388 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1383, line: 304, size: 32768, elements: !1389)
!1389 = !{!1390, !1405, !1444, !1494, !1511}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1388, file: !1383, line: 305, baseType: !1391, size: 896)
!1391 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1383, line: 12, size: 896, elements: !1392)
!1392 = !{!1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1404}
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1391, file: !1383, line: 13, baseType: !127, size: 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1391, file: !1383, line: 14, baseType: !127, size: 32, offset: 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1391, file: !1383, line: 15, baseType: !127, size: 32, offset: 64)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1391, file: !1383, line: 16, baseType: !127, size: 32, offset: 96)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1391, file: !1383, line: 17, baseType: !127, size: 32, offset: 128)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1391, file: !1383, line: 18, baseType: !127, size: 32, offset: 160)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1391, file: !1383, line: 19, baseType: !127, size: 32, offset: 192)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1391, file: !1383, line: 22, baseType: !1401, size: 640, offset: 224)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 20)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1391, file: !1383, line: 25, baseType: !127, size: 32, offset: 864)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1388, file: !1383, line: 306, baseType: !1406, size: 4096, align: 128)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1383, line: 34, size: 4096, align: 128, elements: !1407)
!1407 = !{!1408, !1409, !1410, !1411, !1412, !1427, !1428, !1429, !1433, !1435, !1439}
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1406, file: !1383, line: 35, baseType: !622, size: 16)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1406, file: !1383, line: 36, baseType: !622, size: 16, offset: 16)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1406, file: !1383, line: 37, baseType: !622, size: 16, offset: 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1406, file: !1383, line: 38, baseType: !622, size: 16, offset: 48)
!1412 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1383, line: 39, baseType: !1413, size: 128, offset: 64)
!1413 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1383, line: 39, size: 128, elements: !1414)
!1414 = !{!1415, !1420}
!1415 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1383, line: 40, baseType: !1416, size: 128)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !1383, line: 40, size: 128, elements: !1417)
!1417 = !{!1418, !1419}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1416, file: !1383, line: 41, baseType: !133, size: 64)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1416, file: !1383, line: 42, baseType: !133, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, scope: !1413, file: !1383, line: 44, baseType: !1421, size: 128)
!1421 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1413, file: !1383, line: 44, size: 128, elements: !1422)
!1422 = !{!1423, !1424, !1425, !1426}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1421, file: !1383, line: 45, baseType: !127, size: 32)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1421, file: !1383, line: 46, baseType: !127, size: 32, offset: 32)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1421, file: !1383, line: 47, baseType: !127, size: 32, offset: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1421, file: !1383, line: 48, baseType: !127, size: 32, offset: 96)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1406, file: !1383, line: 51, baseType: !127, size: 32, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1406, file: !1383, line: 52, baseType: !127, size: 32, offset: 224)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1406, file: !1383, line: 55, baseType: !1430, size: 1024, offset: 256)
!1430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !1431)
!1431 = !{!1432}
!1432 = !DISubrange(count: 32)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1406, file: !1383, line: 58, baseType: !1434, size: 2048, offset: 1280)
!1434 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 2048, elements: !410)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1406, file: !1383, line: 60, baseType: !1436, size: 384, offset: 3328)
!1436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 384, elements: !1437)
!1437 = !{!1438}
!1438 = !DISubrange(count: 12)
!1439 = !DIDerivedType(tag: DW_TAG_member, scope: !1406, file: !1383, line: 62, baseType: !1440, size: 384, offset: 3712)
!1440 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1406, file: !1383, line: 62, size: 384, elements: !1441)
!1441 = !{!1442, !1443}
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1440, file: !1383, line: 63, baseType: !1436, size: 384)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1440, file: !1383, line: 64, baseType: !1436, size: 384)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1388, file: !1383, line: 307, baseType: !1445, size: 1088)
!1445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1383, line: 79, size: 1088, elements: !1446)
!1446 = !{!1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460, !1461, !1493}
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1445, file: !1383, line: 80, baseType: !127, size: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1445, file: !1383, line: 81, baseType: !127, size: 32, offset: 32)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1445, file: !1383, line: 82, baseType: !127, size: 32, offset: 64)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1445, file: !1383, line: 83, baseType: !127, size: 32, offset: 96)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1445, file: !1383, line: 84, baseType: !127, size: 32, offset: 128)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1445, file: !1383, line: 85, baseType: !127, size: 32, offset: 160)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1445, file: !1383, line: 86, baseType: !127, size: 32, offset: 192)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1445, file: !1383, line: 88, baseType: !1401, size: 640, offset: 224)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1445, file: !1383, line: 89, baseType: !258, size: 8, offset: 864)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1445, file: !1383, line: 90, baseType: !258, size: 8, offset: 872)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1445, file: !1383, line: 91, baseType: !258, size: 8, offset: 880)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1445, file: !1383, line: 92, baseType: !258, size: 8, offset: 888)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1445, file: !1383, line: 93, baseType: !258, size: 8, offset: 896)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1445, file: !1383, line: 94, baseType: !258, size: 8, offset: 904)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1445, file: !1383, line: 95, baseType: !1462, size: 64, offset: 960)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1464, line: 11, size: 128, elements: !1465)
!1464 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1465 = !{!1466, !1467}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1463, file: !1464, line: 12, baseType: !110, size: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1463, file: !1464, line: 13, baseType: !1468, size: 64, offset: 64)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1469, size: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1470, line: 56, size: 1344, elements: !1471)
!1470 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1471 = !{!1472, !1473, !1474, !1475, !1476, !1477, !1478, !1479, !1480, !1481, !1482, !1483, !1484, !1485, !1486, !1487, !1488, !1489, !1490, !1491, !1492}
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1469, file: !1470, line: 61, baseType: !199, size: 64)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1469, file: !1470, line: 62, baseType: !199, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1469, file: !1470, line: 63, baseType: !199, size: 64, offset: 128)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1469, file: !1470, line: 64, baseType: !199, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1469, file: !1470, line: 65, baseType: !199, size: 64, offset: 256)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1469, file: !1470, line: 66, baseType: !199, size: 64, offset: 320)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1469, file: !1470, line: 68, baseType: !199, size: 64, offset: 384)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1469, file: !1470, line: 69, baseType: !199, size: 64, offset: 448)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1469, file: !1470, line: 70, baseType: !199, size: 64, offset: 512)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1469, file: !1470, line: 71, baseType: !199, size: 64, offset: 576)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1469, file: !1470, line: 72, baseType: !199, size: 64, offset: 640)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1469, file: !1470, line: 73, baseType: !199, size: 64, offset: 704)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1469, file: !1470, line: 74, baseType: !199, size: 64, offset: 768)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1469, file: !1470, line: 75, baseType: !199, size: 64, offset: 832)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1469, file: !1470, line: 76, baseType: !199, size: 64, offset: 896)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1469, file: !1470, line: 81, baseType: !199, size: 64, offset: 960)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1469, file: !1470, line: 83, baseType: !199, size: 64, offset: 1024)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1469, file: !1470, line: 84, baseType: !199, size: 64, offset: 1088)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1469, file: !1470, line: 85, baseType: !199, size: 64, offset: 1152)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1469, file: !1470, line: 86, baseType: !199, size: 64, offset: 1216)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1469, file: !1470, line: 87, baseType: !199, size: 64, offset: 1280)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1445, file: !1383, line: 96, baseType: !127, size: 32, offset: 1024)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1388, file: !1383, line: 308, baseType: !1495, size: 4608, align: 512)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1383, line: 289, size: 4608, align: 512, elements: !1496)
!1496 = !{!1497, !1498, !1507}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1495, file: !1383, line: 290, baseType: !1406, size: 4096, align: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1495, file: !1383, line: 291, baseType: !1499, size: 512, offset: 4096)
!1499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1383, line: 268, size: 512, elements: !1500)
!1500 = !{!1501, !1502, !1503}
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1499, file: !1383, line: 269, baseType: !133, size: 64)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1499, file: !1383, line: 270, baseType: !133, size: 64, offset: 64)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1499, file: !1383, line: 271, baseType: !1504, size: 384, offset: 128)
!1504 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 384, elements: !1505)
!1505 = !{!1506}
!1506 = !DISubrange(count: 6)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1495, file: !1383, line: 292, baseType: !1508, offset: 4608)
!1508 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, elements: !1509)
!1509 = !{!1510}
!1510 = !DISubrange(count: 0)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1388, file: !1383, line: 309, baseType: !1512, size: 32768)
!1512 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 32768, elements: !1513)
!1513 = !{!1514}
!1514 = !DISubrange(count: 4096)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !635, file: !487, line: 378, baseType: !1516, size: 64, offset: 64)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !631, file: !487, line: 384, baseType: !948, size: 192, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !507, file: !487, line: 500, baseType: !364, offset: 6656)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !507, file: !487, line: 501, baseType: !1520, size: 64, offset: 6656)
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !487, line: 387, flags: DIFlagFwdDecl)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !507, file: !487, line: 516, baseType: !1523, size: 64, offset: 6720)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !487, line: 516, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !507, file: !487, line: 519, baseType: !477, size: 64, offset: 6784)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !507, file: !487, line: 521, baseType: !1527, size: 64, offset: 6848)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !487, line: 521, flags: DIFlagFwdDecl)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !507, file: !487, line: 545, baseType: !532, size: 32, offset: 6912)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !507, file: !487, line: 548, baseType: !315, size: 8, offset: 6944)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !507, file: !487, line: 550, baseType: !1532, offset: 6952)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1533, line: 142, elements: !378)
!1533 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !507, file: !487, line: 554, baseType: !1535, size: 256, offset: 6976)
!1535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1536, line: 102, size: 256, elements: !1537)
!1536 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1537 = !{!1538, !1539, !1540}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1535, file: !1536, line: 103, baseType: !540, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1535, file: !1536, line: 104, baseType: !351, size: 128, offset: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1535, file: !1536, line: 105, baseType: !1541, size: 64, offset: 192)
!1541 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1536, line: 21, baseType: !1542)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = !DISubroutineType(types: !1544)
!1544 = !{null, !1545}
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !507, file: !487, line: 557, baseType: !127, size: 32, offset: 7232)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !504, file: !487, line: 565, baseType: !1548, offset: 7296)
!1548 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, elements: !1549)
!1549 = !{!1550}
!1550 = !DISubrange(count: -1)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !486, file: !487, line: 333, baseType: !1552, size: 64, offset: 576)
!1552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !479, line: 284, baseType: !1553)
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !479, line: 284, size: 64, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1553, file: !479, line: 284, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !530, line: 19, baseType: !199)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !486, file: !487, line: 334, baseType: !199, size: 64, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !486, file: !487, line: 343, baseType: !1559, size: 256, offset: 704)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !486, file: !487, line: 340, size: 256, elements: !1560)
!1560 = !{!1561, !1562}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1559, file: !487, line: 341, baseType: !494, size: 192, align: 64)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1559, file: !487, line: 342, baseType: !199, size: 64, offset: 192)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !486, file: !487, line: 351, baseType: !351, size: 128, offset: 960)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !486, file: !487, line: 353, baseType: !1565, size: 64, offset: 1088)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !487, line: 353, flags: DIFlagFwdDecl)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !486, file: !487, line: 356, baseType: !1568, size: 64, offset: 1152)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1570)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !487, line: 356, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !486, file: !487, line: 359, baseType: !199, size: 64, offset: 1216)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !486, file: !487, line: 361, baseType: !477, size: 64, offset: 1280)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !486, file: !487, line: 362, baseType: !104, size: 64, offset: 1344)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !486, file: !487, line: 365, baseType: !540, size: 64, offset: 1408)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !486, file: !487, line: 373, baseType: !1576, offset: 1472)
!1576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !487, line: 296, elements: !378)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !456, file: !430, line: 90, baseType: !451, size: 64, offset: 192)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !456, file: !430, line: 91, baseType: !1579, size: 64, offset: 256)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !420, file: !347, line: 143, baseType: !1581, size: 64, offset: 256)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!1584, !357}
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1586)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1587)
!1587 = !{!1588, !1589, !1593, !1597, !1605, !1609}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1586, file: !18, line: 40, baseType: !17, size: 32)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1586, file: !18, line: 41, baseType: !1590, size: 64, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DISubroutineType(types: !1592)
!1592 = !{!315}
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1586, file: !18, line: 42, baseType: !1594, size: 64, offset: 128)
!1594 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1595, size: 64)
!1595 = !DISubroutineType(types: !1596)
!1596 = !{!104}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1586, file: !18, line: 43, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DISubroutineType(types: !1600)
!1600 = !{!1601, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1604, size: 64)
!1604 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1586, file: !18, line: 44, baseType: !1606, size: 64, offset: 256)
!1606 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1607, size: 64)
!1607 = !DISubroutineType(types: !1608)
!1608 = !{!1601}
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1586, file: !18, line: 45, baseType: !1610, size: 64, offset: 320)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DISubroutineType(types: !1612)
!1612 = !{null, !104}
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !420, file: !347, line: 144, baseType: !1614, size: 64, offset: 320)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DISubroutineType(types: !1616)
!1616 = !{!1601, !357}
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !420, file: !347, line: 145, baseType: !1618, size: 64, offset: 384)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{null, !357, !1621, !1628}
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1623, line: 23, baseType: !1624)
!1623 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1624 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 21, size: 32, elements: !1625)
!1625 = !{!1626}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1624, file: !1623, line: 22, baseType: !1627, size: 32)
!1627 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !103, line: 32, baseType: !1108)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1623, line: 28, baseType: !1630)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1623, line: 26, size: 32, elements: !1631)
!1631 = !{!1632}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1630, file: !1623, line: 27, baseType: !1633, size: 32)
!1633 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !103, line: 33, baseType: !1634)
!1634 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !216, line: 50, baseType: !7)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !346, file: !347, line: 70, baseType: !1636, size: 64, offset: 384)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1638, line: 123, size: 1024, elements: !1639)
!1638 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1639 = !{!1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1781, !1782, !1783, !1784, !1785}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1637, file: !1638, line: 124, baseType: !532, size: 32)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1637, file: !1638, line: 125, baseType: !532, size: 32, offset: 32)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1637, file: !1638, line: 135, baseType: !1636, size: 64, offset: 64)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1637, file: !1638, line: 136, baseType: !147, size: 64, offset: 128)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1637, file: !1638, line: 138, baseType: !494, size: 192, align: 64, offset: 192)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1637, file: !1638, line: 140, baseType: !1601, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1637, file: !1638, line: 141, baseType: !7, size: 32, offset: 448)
!1647 = !DIDerivedType(tag: DW_TAG_member, scope: !1637, file: !1638, line: 142, baseType: !1648, size: 256, offset: 512)
!1648 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1637, file: !1638, line: 142, size: 256, elements: !1649)
!1649 = !{!1650, !1704, !1708}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1648, file: !1638, line: 143, baseType: !1651, size: 192)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1638, line: 91, size: 192, elements: !1652)
!1652 = !{!1653, !1654, !1655}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1651, file: !1638, line: 92, baseType: !199, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1651, file: !1638, line: 94, baseType: !511, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1651, file: !1638, line: 100, baseType: !1656, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1638, line: 180, size: 704, elements: !1658)
!1658 = !{!1659, !1660, !1661, !1674, !1675, !1676, !1702, !1703}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1657, file: !1638, line: 182, baseType: !1636, size: 64)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1657, file: !1638, line: 183, baseType: !7, size: 32, offset: 64)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1657, file: !1638, line: 186, baseType: !1662, size: 192, offset: 128)
!1662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1663, line: 19, size: 192, elements: !1664)
!1663 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1664 = !{!1665, !1672, !1673}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1662, file: !1663, line: 20, baseType: !1666, size: 128)
!1666 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1667, line: 292, size: 128, elements: !1668)
!1667 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1668 = !{!1669, !1670, !1671}
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1666, file: !1667, line: 293, baseType: !364)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1666, file: !1667, line: 295, baseType: !102, size: 32)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1666, file: !1667, line: 296, baseType: !104, size: 64, offset: 64)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1662, file: !1663, line: 21, baseType: !7, size: 32, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1662, file: !1663, line: 22, baseType: !7, size: 32, offset: 160)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1657, file: !1638, line: 187, baseType: !127, size: 32, offset: 320)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1657, file: !1638, line: 188, baseType: !127, size: 32, offset: 352)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1657, file: !1638, line: 189, baseType: !1677, size: 64, offset: 384)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1638, line: 168, size: 320, elements: !1679)
!1679 = !{!1680, !1686, !1690, !1694, !1698}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1678, file: !1638, line: 169, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DISubroutineType(types: !1683)
!1683 = !{!111, !1684, !1656}
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !479, line: 539, flags: DIFlagFwdDecl)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1678, file: !1638, line: 171, baseType: !1687, size: 64, offset: 64)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DISubroutineType(types: !1689)
!1689 = !{!111, !1636, !147, !444}
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1678, file: !1638, line: 173, baseType: !1691, size: 64, offset: 128)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!111, !1636}
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1678, file: !1638, line: 174, baseType: !1695, size: 64, offset: 192)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!111, !1636, !1636, !147}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1678, file: !1638, line: 176, baseType: !1699, size: 64, offset: 256)
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1700, size: 64)
!1700 = !DISubroutineType(types: !1701)
!1701 = !{!111, !1684, !1636, !1656}
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1657, file: !1638, line: 192, baseType: !351, size: 128, offset: 448)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1657, file: !1638, line: 194, baseType: !919, size: 128, offset: 576)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1648, file: !1638, line: 144, baseType: !1705, size: 64)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1638, line: 103, size: 64, elements: !1706)
!1706 = !{!1707}
!1707 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1705, file: !1638, line: 104, baseType: !1636, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1648, file: !1638, line: 145, baseType: !1709, size: 256)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1638, line: 107, size: 256, elements: !1710)
!1710 = !{!1711, !1776, !1779, !1780}
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1709, file: !1638, line: 108, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1713, size: 64)
!1713 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1714)
!1714 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1638, line: 217, size: 768, elements: !1715)
!1715 = !{!1716, !1736, !1740, !1744, !1749, !1753, !1757, !1761, !1762, !1763, !1764, !1772}
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1714, file: !1638, line: 222, baseType: !1717, size: 64)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!111, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1638, line: 197, size: 1088, elements: !1722)
!1722 = !{!1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1721, file: !1638, line: 199, baseType: !1636, size: 64)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1721, file: !1638, line: 200, baseType: !477, size: 64, offset: 64)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1721, file: !1638, line: 201, baseType: !1684, size: 64, offset: 128)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1721, file: !1638, line: 202, baseType: !104, size: 64, offset: 192)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1721, file: !1638, line: 205, baseType: !609, size: 192, offset: 256)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1721, file: !1638, line: 206, baseType: !609, size: 192, offset: 448)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1721, file: !1638, line: 207, baseType: !111, size: 32, offset: 640)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1721, file: !1638, line: 208, baseType: !351, size: 128, offset: 704)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1721, file: !1638, line: 209, baseType: !405, size: 64, offset: 832)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1721, file: !1638, line: 211, baseType: !218, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1721, file: !1638, line: 212, baseType: !315, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1721, file: !1638, line: 213, baseType: !315, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1721, file: !1638, line: 214, baseType: !1568, size: 64, offset: 1024)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1714, file: !1638, line: 223, baseType: !1737, size: 64, offset: 64)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DISubroutineType(types: !1739)
!1739 = !{null, !1720}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1714, file: !1638, line: 236, baseType: !1741, size: 64, offset: 128)
!1741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1742, size: 64)
!1742 = !DISubroutineType(types: !1743)
!1743 = !{!111, !1684, !104}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1714, file: !1638, line: 238, baseType: !1745, size: 64, offset: 192)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DISubroutineType(types: !1747)
!1747 = !{!104, !1684, !1748}
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1714, file: !1638, line: 239, baseType: !1750, size: 64, offset: 256)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!104, !1684, !104, !1748}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1714, file: !1638, line: 240, baseType: !1754, size: 64, offset: 320)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{null, !1684, !104}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1714, file: !1638, line: 242, baseType: !1758, size: 64, offset: 384)
!1758 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1759, size: 64)
!1759 = !DISubroutineType(types: !1760)
!1760 = !{!436, !1720, !405, !218, !214}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1714, file: !1638, line: 252, baseType: !218, size: 64, offset: 448)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1714, file: !1638, line: 259, baseType: !315, size: 8, offset: 512)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1714, file: !1638, line: 260, baseType: !1758, size: 64, offset: 576)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1714, file: !1638, line: 263, baseType: !1765, size: 64, offset: 640)
!1765 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1766, size: 64)
!1766 = !DISubroutineType(types: !1767)
!1767 = !{!1768, !1720, !1770}
!1768 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1769, line: 52, baseType: !7)
!1769 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1638, line: 27, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1714, file: !1638, line: 266, baseType: !1773, size: 64, offset: 704)
!1773 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1774, size: 64)
!1774 = !DISubroutineType(types: !1775)
!1775 = !{!111, !1720, !485}
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1709, file: !1638, line: 109, baseType: !1777, size: 64, offset: 64)
!1777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1778, size: 64)
!1778 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1638, line: 31, flags: DIFlagFwdDecl)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1709, file: !1638, line: 110, baseType: !214, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1709, file: !1638, line: 111, baseType: !1636, size: 64, offset: 192)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1637, file: !1638, line: 148, baseType: !104, size: 64, offset: 768)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1637, file: !1638, line: 154, baseType: !133, size: 64, offset: 832)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1637, file: !1638, line: 156, baseType: !445, size: 16, offset: 896)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1637, file: !1638, line: 157, baseType: !444, size: 16, offset: 912)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1637, file: !1638, line: 158, baseType: !1786, size: 64, offset: 960)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1638, line: 32, flags: DIFlagFwdDecl)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !346, file: !347, line: 71, baseType: !1789, size: 32, offset: 448)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1790, line: 19, size: 32, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1789, file: !1790, line: 20, baseType: !651, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !346, file: !347, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !346, file: !347, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !346, file: !347, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !346, file: !347, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !346, file: !347, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !343, file: !30, line: 463, baseType: !1799, size: 64, offset: 512)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !343, file: !30, line: 465, baseType: !1801, size: 64, offset: 576)
!1801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1802, size: 64)
!1802 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !343, file: !30, line: 467, baseType: !147, size: 64, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !343, file: !30, line: 468, baseType: !1805, size: 64, offset: 704)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1807)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1808)
!1808 = !{!1809, !1810, !1811, !1815, !1820, !1824}
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1807, file: !30, line: 88, baseType: !147, size: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1807, file: !30, line: 89, baseType: !453, size: 64, offset: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1807, file: !30, line: 90, baseType: !1812, size: 64, offset: 128)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1813, size: 64)
!1813 = !DISubroutineType(types: !1814)
!1814 = !{!111, !1799, !400}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1807, file: !30, line: 91, baseType: !1816, size: 64, offset: 192)
!1816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1817, size: 64)
!1817 = !DISubroutineType(types: !1818)
!1818 = !{!405, !1799, !1819, !1621, !1628}
!1819 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1807, file: !30, line: 93, baseType: !1821, size: 64, offset: 256)
!1821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1822, size: 64)
!1822 = !DISubroutineType(types: !1823)
!1823 = !{null, !1799}
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1807, file: !30, line: 95, baseType: !1825, size: 64, offset: 320)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1827)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1828)
!1828 = !{!1829, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1827, file: !37, line: 279, baseType: !1830, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1831, size: 64)
!1831 = !DISubroutineType(types: !1832)
!1832 = !{!111, !1799}
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1827, file: !37, line: 280, baseType: !1821, size: 64, offset: 64)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1827, file: !37, line: 281, baseType: !1830, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1827, file: !37, line: 282, baseType: !1830, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1827, file: !37, line: 283, baseType: !1830, size: 64, offset: 256)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1827, file: !37, line: 284, baseType: !1830, size: 64, offset: 320)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1827, file: !37, line: 285, baseType: !1830, size: 64, offset: 384)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1827, file: !37, line: 286, baseType: !1830, size: 64, offset: 448)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1827, file: !37, line: 287, baseType: !1830, size: 64, offset: 512)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1827, file: !37, line: 288, baseType: !1830, size: 64, offset: 576)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1827, file: !37, line: 289, baseType: !1830, size: 64, offset: 640)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1827, file: !37, line: 290, baseType: !1830, size: 64, offset: 704)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1827, file: !37, line: 291, baseType: !1830, size: 64, offset: 768)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1827, file: !37, line: 292, baseType: !1830, size: 64, offset: 832)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1827, file: !37, line: 293, baseType: !1830, size: 64, offset: 896)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1827, file: !37, line: 294, baseType: !1830, size: 64, offset: 960)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1827, file: !37, line: 295, baseType: !1830, size: 64, offset: 1024)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1827, file: !37, line: 296, baseType: !1830, size: 64, offset: 1088)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1827, file: !37, line: 297, baseType: !1830, size: 64, offset: 1152)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1827, file: !37, line: 298, baseType: !1830, size: 64, offset: 1216)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1827, file: !37, line: 299, baseType: !1830, size: 64, offset: 1280)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1827, file: !37, line: 300, baseType: !1830, size: 64, offset: 1344)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1827, file: !37, line: 301, baseType: !1830, size: 64, offset: 1408)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !343, file: !30, line: 470, baseType: !1856, size: 64, offset: 768)
!1856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1857, size: 64)
!1857 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1858, line: 82, size: 1408, elements: !1859)
!1858 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1859 = !{!1860, !1861, !1862, !1863, !1864, !1865, !1866, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937, !1938, !1942, !1945, !1948}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1857, file: !1858, line: 83, baseType: !147, size: 64)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1857, file: !1858, line: 84, baseType: !147, size: 64, offset: 64)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1857, file: !1858, line: 85, baseType: !1799, size: 64, offset: 128)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1857, file: !1858, line: 86, baseType: !453, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1857, file: !1858, line: 87, baseType: !453, size: 64, offset: 256)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1857, file: !1858, line: 88, baseType: !453, size: 64, offset: 320)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1857, file: !1858, line: 90, baseType: !1867, size: 64, offset: 384)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{!111, !1799, !1870}
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1872)
!1872 = !{!1873, !1874, !1875, !1876, !1877, !1878, !1879, !1893, !1906, !1907, !1908, !1909, !1910, !1918, !1919, !1920, !1921, !1922, !1923}
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1871, file: !24, line: 96, baseType: !147, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1871, file: !24, line: 97, baseType: !1856, size: 64, offset: 64)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1871, file: !24, line: 99, baseType: !339, size: 64, offset: 128)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1871, file: !24, line: 100, baseType: !147, size: 64, offset: 192)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1871, file: !24, line: 102, baseType: !315, size: 8, offset: 256)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1871, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1871, file: !24, line: 105, baseType: !1880, size: 64, offset: 320)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1883, line: 262, size: 1600, elements: !1884)
!1883 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1884 = !{!1885, !1887, !1888, !1892}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1882, file: !1883, line: 263, baseType: !1886, size: 256)
!1886 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 256, elements: !1431)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1882, file: !1883, line: 264, baseType: !1886, size: 256, offset: 256)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1882, file: !1883, line: 265, baseType: !1889, size: 1024, offset: 512)
!1889 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 1024, elements: !1890)
!1890 = !{!1891}
!1891 = !DISubrange(count: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1882, file: !1883, line: 266, baseType: !1601, size: 64, offset: 1536)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1871, file: !24, line: 106, baseType: !1894, size: 64, offset: 384)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1896)
!1896 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1883, line: 210, size: 256, elements: !1897)
!1897 = !{!1898, !1902, !1904, !1905}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1896, file: !1883, line: 211, baseType: !1899, size: 72)
!1899 = !DICompositeType(tag: DW_TAG_array_type, baseType: !259, size: 72, elements: !1900)
!1900 = !{!1901}
!1901 = !DISubrange(count: 9)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1896, file: !1883, line: 212, baseType: !1903, size: 64, offset: 128)
!1903 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1883, line: 14, baseType: !199)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1896, file: !1883, line: 213, baseType: !129, size: 32, offset: 192)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1896, file: !1883, line: 214, baseType: !129, size: 32, offset: 224)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1871, file: !24, line: 108, baseType: !1830, size: 64, offset: 448)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1871, file: !24, line: 109, baseType: !1821, size: 64, offset: 512)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1871, file: !24, line: 110, baseType: !1830, size: 64, offset: 576)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1871, file: !24, line: 111, baseType: !1821, size: 64, offset: 640)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1871, file: !24, line: 112, baseType: !1911, size: 64, offset: 704)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = !DISubroutineType(types: !1913)
!1913 = !{!111, !1799, !1914}
!1914 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1915)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1916)
!1916 = !{!1917}
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1915, file: !37, line: 51, baseType: !111, size: 32)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1871, file: !24, line: 113, baseType: !1830, size: 64, offset: 768)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1871, file: !24, line: 114, baseType: !453, size: 64, offset: 832)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1871, file: !24, line: 115, baseType: !453, size: 64, offset: 896)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1871, file: !24, line: 117, baseType: !1825, size: 64, offset: 960)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1871, file: !24, line: 118, baseType: !1821, size: 64, offset: 1024)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1871, file: !24, line: 120, baseType: !1924, size: 64, offset: 1088)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1857, file: !1858, line: 91, baseType: !1812, size: 64, offset: 448)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1857, file: !1858, line: 92, baseType: !1830, size: 64, offset: 512)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1857, file: !1858, line: 93, baseType: !1821, size: 64, offset: 576)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1857, file: !1858, line: 94, baseType: !1830, size: 64, offset: 640)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1857, file: !1858, line: 95, baseType: !1821, size: 64, offset: 704)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1857, file: !1858, line: 97, baseType: !1830, size: 64, offset: 768)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1857, file: !1858, line: 98, baseType: !1830, size: 64, offset: 832)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1857, file: !1858, line: 100, baseType: !1911, size: 64, offset: 896)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1857, file: !1858, line: 101, baseType: !1830, size: 64, offset: 960)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1857, file: !1858, line: 103, baseType: !1830, size: 64, offset: 1024)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1857, file: !1858, line: 105, baseType: !1830, size: 64, offset: 1088)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1857, file: !1858, line: 107, baseType: !1825, size: 64, offset: 1152)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1857, file: !1858, line: 109, baseType: !1939, size: 64, offset: 1216)
!1939 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1940, size: 64)
!1940 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1941)
!1941 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1858, line: 109, flags: DIFlagFwdDecl)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1857, file: !1858, line: 111, baseType: !1943, size: 64, offset: 1280)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1858, line: 111, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1857, file: !1858, line: 112, baseType: !1946, offset: 1344)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1947, line: 187, elements: !378)
!1947 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1857, file: !1858, line: 114, baseType: !315, size: 8, offset: 1344)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !343, file: !30, line: 471, baseType: !1870, size: 64, offset: 832)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !343, file: !30, line: 473, baseType: !104, size: 64, offset: 896)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !343, file: !30, line: 475, baseType: !104, size: 64, offset: 960)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !343, file: !30, line: 480, baseType: !609, size: 192, offset: 1024)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !343, file: !30, line: 484, baseType: !1954, size: 576, offset: 1216)
!1954 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1955)
!1955 = !{!1956, !1957, !1958, !1959, !1960, !1961}
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1954, file: !30, line: 362, baseType: !351, size: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1954, file: !30, line: 363, baseType: !351, size: 128, offset: 128)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1954, file: !30, line: 364, baseType: !351, size: 128, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1954, file: !30, line: 365, baseType: !351, size: 128, offset: 384)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1954, file: !30, line: 366, baseType: !315, size: 8, offset: 512)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1954, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !343, file: !30, line: 485, baseType: !1963, size: 2304, offset: 1792)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1964)
!1964 = !{!1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !2018, !2019, !2020, !2021, !2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2060, !2064}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1963, file: !37, line: 566, baseType: !1914, size: 32)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1963, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1963, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1963, file: !37, line: 569, baseType: !315, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1963, file: !37, line: 570, baseType: !315, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1963, file: !37, line: 571, baseType: !315, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1963, file: !37, line: 572, baseType: !315, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1963, file: !37, line: 573, baseType: !315, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1963, file: !37, line: 574, baseType: !315, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1963, file: !37, line: 575, baseType: !315, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1963, file: !37, line: 576, baseType: !315, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1963, file: !37, line: 577, baseType: !127, size: 32, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1963, file: !37, line: 578, baseType: !364, offset: 96)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1963, file: !37, line: 580, baseType: !351, size: 128, offset: 128)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1963, file: !37, line: 581, baseType: !948, size: 192, offset: 256)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1963, file: !37, line: 582, baseType: !1981, size: 64, offset: 448)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1983, line: 43, size: 1472, elements: !1984)
!1983 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1984 = !{!1985, !1986, !1987, !1988, !1989, !1992, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017}
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1982, file: !1983, line: 44, baseType: !147, size: 64)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1982, file: !1983, line: 45, baseType: !111, size: 32, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1982, file: !1983, line: 46, baseType: !351, size: 128, offset: 128)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1982, file: !1983, line: 47, baseType: !364, offset: 256)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1982, file: !1983, line: 48, baseType: !1990, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1982, file: !1983, line: 49, baseType: !1993, size: 320, offset: 320)
!1993 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1994, line: 11, size: 320, elements: !1995)
!1994 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1995 = !{!1996, !1997, !1998, !2003}
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1993, file: !1994, line: 16, baseType: !912, size: 128)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1993, file: !1994, line: 17, baseType: !199, size: 64, offset: 128)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1993, file: !1994, line: 18, baseType: !1999, size: 64, offset: 192)
!1999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2000, size: 64)
!2000 = !DISubroutineType(types: !2001)
!2001 = !{null, !2002}
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1993, size: 64)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1993, file: !1994, line: 19, baseType: !127, size: 32, offset: 256)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1982, file: !1983, line: 50, baseType: !199, size: 64, offset: 640)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1982, file: !1983, line: 51, baseType: !721, size: 64, offset: 704)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1982, file: !1983, line: 52, baseType: !721, size: 64, offset: 768)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1982, file: !1983, line: 53, baseType: !721, size: 64, offset: 832)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1982, file: !1983, line: 54, baseType: !721, size: 64, offset: 896)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1982, file: !1983, line: 55, baseType: !721, size: 64, offset: 960)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1982, file: !1983, line: 56, baseType: !199, size: 64, offset: 1024)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1982, file: !1983, line: 57, baseType: !199, size: 64, offset: 1088)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1982, file: !1983, line: 58, baseType: !199, size: 64, offset: 1152)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1982, file: !1983, line: 59, baseType: !199, size: 64, offset: 1216)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1982, file: !1983, line: 60, baseType: !199, size: 64, offset: 1280)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1982, file: !1983, line: 61, baseType: !1799, size: 64, offset: 1344)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1982, file: !1983, line: 62, baseType: !315, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1982, file: !1983, line: 63, baseType: !315, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1963, file: !37, line: 583, baseType: !315, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1963, file: !37, line: 584, baseType: !315, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1963, file: !37, line: 585, baseType: !315, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1963, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1963, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1963, file: !37, line: 592, baseType: !713, size: 512, offset: 576)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1963, file: !37, line: 593, baseType: !133, size: 64, offset: 1088)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1963, file: !37, line: 594, baseType: !1535, size: 256, offset: 1152)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1963, file: !37, line: 595, baseType: !919, size: 128, offset: 1408)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1963, file: !37, line: 596, baseType: !1990, size: 64, offset: 1536)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1963, file: !37, line: 597, baseType: !532, size: 32, offset: 1600)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1963, file: !37, line: 598, baseType: !532, size: 32, offset: 1632)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1963, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1963, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1963, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1963, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1963, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1963, file: !37, line: 604, baseType: !315, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1963, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1963, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1963, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1963, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1963, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1963, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1963, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1963, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1963, file: !37, line: 613, baseType: !111, size: 32, offset: 1792)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1963, file: !37, line: 614, baseType: !111, size: 32, offset: 1824)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1963, file: !37, line: 615, baseType: !133, size: 64, offset: 1856)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1963, file: !37, line: 616, baseType: !133, size: 64, offset: 1920)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1963, file: !37, line: 617, baseType: !133, size: 64, offset: 1984)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1963, file: !37, line: 618, baseType: !133, size: 64, offset: 2048)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1963, file: !37, line: 620, baseType: !2051, size: 64, offset: 2112)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2053)
!2053 = !{!2054, !2055, !2056, !2057}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2052, file: !37, line: 537, baseType: !364)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2052, file: !37, line: 538, baseType: !7, size: 32)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2052, file: !37, line: 540, baseType: !351, size: 128, offset: 64)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2052, file: !37, line: 543, baseType: !2058, size: 64, offset: 192)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1963, file: !37, line: 621, baseType: !2061, size: 64, offset: 2176)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{null, !1799, !872}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1963, file: !37, line: 622, baseType: !2065, size: 64, offset: 2240)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !343, file: !30, line: 486, baseType: !2068, size: 64, offset: 4096)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2070)
!2070 = !{!2071, !2072, !2073, !2077, !2078, !2079}
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2069, file: !37, line: 643, baseType: !1827, size: 1472)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2069, file: !37, line: 644, baseType: !1830, size: 64, offset: 1472)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2069, file: !37, line: 645, baseType: !2074, size: 64, offset: 1536)
!2074 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2075, size: 64)
!2075 = !DISubroutineType(types: !2076)
!2076 = !{null, !1799, !315}
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2069, file: !37, line: 646, baseType: !1830, size: 64, offset: 1600)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2069, file: !37, line: 647, baseType: !1821, size: 64, offset: 1664)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2069, file: !37, line: 648, baseType: !1821, size: 64, offset: 1728)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !343, file: !30, line: 493, baseType: !2081, size: 64, offset: 4160)
!2081 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2082, size: 64)
!2082 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !343, file: !30, line: 499, baseType: !351, size: 128, offset: 4224)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !343, file: !30, line: 502, baseType: !2085, size: 64, offset: 4352)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2087)
!2087 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !343, file: !30, line: 504, baseType: !2089, size: 64, offset: 4416)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !343, file: !30, line: 505, baseType: !133, size: 64, offset: 4480)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !343, file: !30, line: 510, baseType: !133, size: 64, offset: 4544)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !343, file: !30, line: 511, baseType: !2093, size: 64, offset: 4608)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2095)
!2095 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !343, file: !30, line: 513, baseType: !2097, size: 64, offset: 4672)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2099)
!2099 = !{!2100, !2101}
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2098, file: !30, line: 293, baseType: !7, size: 32)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2098, file: !30, line: 294, baseType: !199, size: 64, offset: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !343, file: !30, line: 515, baseType: !351, size: 128, offset: 4736)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !343, file: !30, line: 526, baseType: !2104, offset: 4864)
!2104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2105, line: 5, elements: !378)
!2105 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !343, file: !30, line: 528, baseType: !2107, size: 64, offset: 4864)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2109, line: 51, size: 1344, elements: !2110)
!2109 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2110 = !{!2111, !2112, !2114, !2115, !2205, !2214, !2215, !2216, !2217, !2218, !2219, !2220}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2108, file: !2109, line: 52, baseType: !147, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2108, file: !2109, line: 53, baseType: !2113, size: 32, offset: 64)
!2113 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2109, line: 28, baseType: !127)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2108, file: !2109, line: 54, baseType: !147, size: 64, offset: 128)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2108, file: !2109, line: 55, baseType: !2116, size: 192, offset: 192)
!2116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2117, line: 17, size: 192, elements: !2118)
!2117 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2118 = !{!2119, !2121, !2204}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2116, file: !2117, line: 18, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2116, file: !2117, line: 19, baseType: !2122, size: 64, offset: 64)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2124)
!2124 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2117, line: 110, size: 1152, elements: !2125)
!2125 = !{!2126, !2130, !2134, !2140, !2146, !2150, !2154, !2159, !2163, !2164, !2168, !2172, !2176, !2187, !2188, !2189, !2190, !2200}
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2124, file: !2117, line: 111, baseType: !2127, size: 64)
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2128, size: 64)
!2128 = !DISubroutineType(types: !2129)
!2129 = !{!2120, !2120}
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2124, file: !2117, line: 112, baseType: !2131, size: 64, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !2120}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2124, file: !2117, line: 113, baseType: !2135, size: 64, offset: 128)
!2135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2136, size: 64)
!2136 = !DISubroutineType(types: !2137)
!2137 = !{!315, !2138}
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2116)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2124, file: !2117, line: 114, baseType: !2141, size: 64, offset: 192)
!2141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2142, size: 64)
!2142 = !DISubroutineType(types: !2143)
!2143 = !{!1601, !2138, !2144}
!2144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !343)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2124, file: !2117, line: 116, baseType: !2147, size: 64, offset: 256)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DISubroutineType(types: !2149)
!2149 = !{!315, !2138, !147}
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2124, file: !2117, line: 118, baseType: !2151, size: 64, offset: 320)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!111, !2138, !147, !7, !104, !218}
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2124, file: !2117, line: 123, baseType: !2155, size: 64, offset: 384)
!2155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2156, size: 64)
!2156 = !DISubroutineType(types: !2157)
!2157 = !{!111, !2138, !147, !2158, !218}
!2158 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2124, file: !2117, line: 126, baseType: !2160, size: 64, offset: 448)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!147, !2138}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2124, file: !2117, line: 127, baseType: !2160, size: 64, offset: 512)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2124, file: !2117, line: 128, baseType: !2165, size: 64, offset: 576)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!2120, !2138}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2124, file: !2117, line: 130, baseType: !2169, size: 64, offset: 640)
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DISubroutineType(types: !2171)
!2171 = !{!2120, !2138, !2120}
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2124, file: !2117, line: 133, baseType: !2173, size: 64, offset: 704)
!2173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2174, size: 64)
!2174 = !DISubroutineType(types: !2175)
!2175 = !{!2120, !2138, !147}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2124, file: !2117, line: 135, baseType: !2177, size: 64, offset: 768)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2178, size: 64)
!2178 = !DISubroutineType(types: !2179)
!2179 = !{!111, !2138, !147, !147, !7, !7, !2180}
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2117, line: 43, size: 640, elements: !2182)
!2182 = !{!2183, !2184, !2185}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2181, file: !2117, line: 44, baseType: !2120, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2181, file: !2117, line: 45, baseType: !7, size: 32, offset: 64)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2181, file: !2117, line: 46, baseType: !2186, size: 512, offset: 128)
!2186 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 512, elements: !751)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2124, file: !2117, line: 140, baseType: !2169, size: 64, offset: 832)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2124, file: !2117, line: 143, baseType: !2165, size: 64, offset: 896)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2124, file: !2117, line: 145, baseType: !2127, size: 64, offset: 960)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2124, file: !2117, line: 146, baseType: !2191, size: 64, offset: 1024)
!2191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2192, size: 64)
!2192 = !DISubroutineType(types: !2193)
!2193 = !{!111, !2138, !2194}
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2117, line: 29, size: 128, elements: !2196)
!2196 = !{!2197, !2198, !2199}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2195, file: !2117, line: 30, baseType: !7, size: 32)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2195, file: !2117, line: 31, baseType: !7, size: 32, offset: 32)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2195, file: !2117, line: 32, baseType: !2138, size: 64, offset: 64)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2124, file: !2117, line: 148, baseType: !2201, size: 64, offset: 1088)
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DISubroutineType(types: !2203)
!2203 = !{!111, !2138, !1799}
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2116, file: !2117, line: 20, baseType: !1799, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2108, file: !2109, line: 57, baseType: !2206, size: 64, offset: 384)
!2206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2207, size: 64)
!2207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2109, line: 31, size: 704, elements: !2208)
!2208 = !{!2209, !2210, !2211, !2212, !2213}
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2207, file: !2109, line: 32, baseType: !405, size: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2207, file: !2109, line: 33, baseType: !111, size: 32, offset: 64)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2207, file: !2109, line: 34, baseType: !104, size: 64, offset: 128)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2207, file: !2109, line: 35, baseType: !2206, size: 64, offset: 192)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2207, file: !2109, line: 43, baseType: !468, size: 448, offset: 256)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2108, file: !2109, line: 58, baseType: !2206, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2108, file: !2109, line: 59, baseType: !2107, size: 64, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2108, file: !2109, line: 60, baseType: !2107, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2108, file: !2109, line: 61, baseType: !2107, size: 64, offset: 640)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2108, file: !2109, line: 63, baseType: !346, size: 512, offset: 704)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2108, file: !2109, line: 65, baseType: !199, size: 64, offset: 1216)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2108, file: !2109, line: 66, baseType: !104, size: 64, offset: 1280)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !343, file: !30, line: 529, baseType: !2120, size: 64, offset: 4928)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !343, file: !30, line: 534, baseType: !2223, size: 32, offset: 4992)
!2223 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !103, line: 16, baseType: !2224)
!2224 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !103, line: 13, baseType: !127)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !343, file: !30, line: 535, baseType: !127, size: 32, offset: 5024)
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !343, file: !30, line: 537, baseType: !364, offset: 5056)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !343, file: !30, line: 538, baseType: !351, size: 128, offset: 5056)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !343, file: !30, line: 540, baseType: !2229, size: 64, offset: 5184)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2231, line: 54, size: 960, elements: !2232)
!2231 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2232 = !{!2233, !2234, !2235, !2236, !2237, !2238, !2239, !2243, !2247, !2248, !2249, !2250, !2254, !2258, !2259}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2230, file: !2231, line: 55, baseType: !147, size: 64)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2230, file: !2231, line: 56, baseType: !339, size: 64, offset: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2230, file: !2231, line: 58, baseType: !453, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2230, file: !2231, line: 59, baseType: !453, size: 64, offset: 192)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2230, file: !2231, line: 60, baseType: !357, size: 64, offset: 256)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2230, file: !2231, line: 62, baseType: !1812, size: 64, offset: 320)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2230, file: !2231, line: 63, baseType: !2240, size: 64, offset: 384)
!2240 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2241, size: 64)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{!405, !1799, !1819}
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2230, file: !2231, line: 65, baseType: !2244, size: 64, offset: 448)
!2244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2245, size: 64)
!2245 = !DISubroutineType(types: !2246)
!2246 = !{null, !2229}
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2230, file: !2231, line: 66, baseType: !1821, size: 64, offset: 512)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2230, file: !2231, line: 68, baseType: !1830, size: 64, offset: 576)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2230, file: !2231, line: 70, baseType: !1584, size: 64, offset: 640)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2230, file: !2231, line: 71, baseType: !2251, size: 64, offset: 704)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DISubroutineType(types: !2253)
!2253 = !{!1601, !1799}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2230, file: !2231, line: 73, baseType: !2255, size: 64, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2256, size: 64)
!2256 = !DISubroutineType(types: !2257)
!2257 = !{null, !1799, !1621, !1628}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2230, file: !2231, line: 75, baseType: !1825, size: 64, offset: 832)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2230, file: !2231, line: 77, baseType: !1943, size: 64, offset: 896)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !343, file: !30, line: 541, baseType: !453, size: 64, offset: 5248)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !343, file: !30, line: 543, baseType: !1821, size: 64, offset: 5312)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !343, file: !30, line: 544, baseType: !2263, size: 64, offset: 5376)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !343, file: !30, line: 545, baseType: !2266, size: 64, offset: 5440)
!2266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2267, size: 64)
!2267 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !343, file: !30, line: 547, baseType: !315, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !343, file: !30, line: 548, baseType: !315, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !343, file: !30, line: 549, baseType: !315, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !343, file: !30, line: 550, baseType: !315, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !119, file: !120, line: 376, baseType: !111, size: 32, offset: 8832)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !119, file: !120, line: 377, baseType: !2274, size: 192, offset: 8896)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !120, line: 191, size: 192, elements: !2275)
!2275 = !{!2276, !2279, !2280}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2274, file: !120, line: 192, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1638, line: 21, flags: DIFlagFwdDecl)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2274, file: !120, line: 194, baseType: !147, size: 64, offset: 64)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2274, file: !120, line: 195, baseType: !147, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !119, file: !120, line: 378, baseType: !2282, size: 64, offset: 9088)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2284, line: 16, flags: DIFlagFwdDecl)
!2284 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !119, file: !120, line: 386, baseType: !159, size: 64, offset: 9152)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !119, file: !120, line: 389, baseType: !351, size: 128, offset: 9216)
!2287 = !DIDerivedType(tag: DW_TAG_member, scope: !119, file: !120, line: 391, baseType: !2288, size: 320, offset: 9344)
!2288 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !119, file: !120, line: 391, size: 320, elements: !2289)
!2289 = !{!2290, !2297}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2288, file: !120, line: 392, baseType: !2291, size: 320)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !120, line: 211, size: 320, elements: !2292)
!2292 = !{!2293, !2294, !2295, !2296}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2291, file: !120, line: 212, baseType: !351, size: 128)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2291, file: !120, line: 213, baseType: !133, size: 64, offset: 128)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2291, file: !120, line: 214, baseType: !133, size: 64, offset: 192)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2291, file: !120, line: 215, baseType: !127, size: 32, offset: 256)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2288, file: !120, line: 393, baseType: !2298, size: 256)
!2298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !120, line: 230, size: 256, elements: !2299)
!2299 = !{!2300, !2301}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2298, file: !120, line: 231, baseType: !609, size: 192)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2298, file: !120, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "memorg", scope: !116, file: !51, line: 321, baseType: !2303, size: 288, offset: 9664)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_memory_organization", file: !51, line: 29, size: 288, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311, !2312, !2313}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2303, file: !51, line: 30, baseType: !7, size: 32)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "pagesize", scope: !2303, file: !51, line: 31, baseType: !7, size: 32, offset: 32)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2303, file: !51, line: 32, baseType: !7, size: 32, offset: 64)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_eraseblock", scope: !2303, file: !51, line: 33, baseType: !7, size: 32, offset: 96)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblocks_per_lun", scope: !2303, file: !51, line: 34, baseType: !7, size: 32, offset: 128)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "max_bad_eraseblocks_per_lun", scope: !2303, file: !51, line: 35, baseType: !7, size: 32, offset: 160)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "planes_per_lun", scope: !2303, file: !51, line: 36, baseType: !7, size: 32, offset: 192)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "luns_per_target", scope: !2303, file: !51, line: 37, baseType: !7, size: 32, offset: 224)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "ntargets", scope: !2303, file: !51, line: 38, baseType: !7, size: 32, offset: 256)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !116, file: !51, line: 322, baseType: !2315, size: 1024, offset: 9984)
!2315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc", file: !51, line: 291, size: 1024, elements: !2316)
!2316 = !{!2317, !2326, !2327, !2328, !2334, !2383}
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "defaults", scope: !2315, file: !51, line: 292, baseType: !2318, size: 192)
!2318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_props", file: !51, line: 187, size: 192, elements: !2319)
!2319 = !{!2320, !2321, !2322, !2323, !2324, !2325}
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2318, file: !51, line: 188, baseType: !50, size: 32)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2318, file: !51, line: 189, baseType: !58, size: 32, offset: 32)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2318, file: !51, line: 190, baseType: !63, size: 32, offset: 64)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2318, file: !51, line: 191, baseType: !7, size: 32, offset: 96)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "step_size", scope: !2318, file: !51, line: 192, baseType: !7, size: 32, offset: 128)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2318, file: !51, line: 193, baseType: !7, size: 32, offset: 160)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "requirements", scope: !2315, file: !51, line: 293, baseType: !2318, size: 192, offset: 192)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "user_conf", scope: !2315, file: !51, line: 294, baseType: !2318, size: 192, offset: 384)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2315, file: !51, line: 295, baseType: !2329, size: 320, offset: 576)
!2329 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_context", file: !51, line: 238, size: 320, elements: !2330)
!2330 = !{!2331, !2332, !2333}
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "conf", scope: !2329, file: !51, line: 239, baseType: !2318, size: 192)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2329, file: !51, line: 240, baseType: !7, size: 32, offset: 192)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2329, file: !51, line: 241, baseType: !104, size: 64, offset: 256)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "ondie_engine", scope: !2315, file: !51, line: 296, baseType: !2335, size: 64, offset: 896)
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine", file: !51, line: 268, size: 64, elements: !2337)
!2337 = !{!2338}
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2336, file: !51, line: 269, baseType: !2339, size: 64)
!2339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_engine_ops", file: !51, line: 255, size: 256, elements: !2341)
!2341 = !{!2342, !2347, !2351, !2382}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "init_ctx", scope: !2340, file: !51, line: 256, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{!111, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup_ctx", scope: !2340, file: !51, line: 257, baseType: !2348, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2349, size: 64)
!2349 = !DISubroutineType(types: !2350)
!2350 = !{null, !2346}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_io_req", scope: !2340, file: !51, line: 258, baseType: !2352, size: 64, offset: 128)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!111, !2346, !2355}
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2356, size: 64)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_page_io_req", file: !51, line: 112, size: 512, elements: !2357)
!2357 = !{!2358, !2359, !2367, !2368, !2369, !2374, !2375, !2376, !2381}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2356, file: !51, line: 113, baseType: !69, size: 32)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "pos", scope: !2356, file: !51, line: 114, baseType: !2360, size: 160, offset: 32)
!2360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_pos", file: !51, line: 77, size: 160, elements: !2361)
!2361 = !{!2362, !2363, !2364, !2365, !2366}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "target", scope: !2360, file: !51, line: 78, baseType: !7, size: 32)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "lun", scope: !2360, file: !51, line: 79, baseType: !7, size: 32, offset: 32)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "plane", scope: !2360, file: !51, line: 80, baseType: !7, size: 32, offset: 64)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock", scope: !2360, file: !51, line: 81, baseType: !7, size: 32, offset: 96)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2360, file: !51, line: 82, baseType: !7, size: 32, offset: 128)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "dataoffs", scope: !2356, file: !51, line: 115, baseType: !7, size: 32, offset: 192)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "datalen", scope: !2356, file: !51, line: 116, baseType: !7, size: 32, offset: 224)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "databuf", scope: !2356, file: !51, line: 120, baseType: !2370, size: 64, offset: 256)
!2370 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !51, line: 117, size: 64, elements: !2371)
!2371 = !{!2372, !2373}
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2370, file: !51, line: 118, baseType: !1601, size: 64)
!2373 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2370, file: !51, line: 119, baseType: !104, size: 64)
!2374 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2356, file: !51, line: 121, baseType: !7, size: 32, offset: 320)
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2356, file: !51, line: 122, baseType: !7, size: 32, offset: 352)
!2376 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2356, file: !51, line: 126, baseType: !2377, size: 64, offset: 384)
!2377 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2356, file: !51, line: 123, size: 64, elements: !2378)
!2378 = !{!2379, !2380}
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2377, file: !51, line: 124, baseType: !1601, size: 64)
!2380 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2377, file: !51, line: 125, baseType: !104, size: 64)
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2356, file: !51, line: 127, baseType: !111, size: 32, offset: 448)
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "finish_io_req", scope: !2340, file: !51, line: 260, baseType: !2352, size: 64, offset: 192)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "engine", scope: !2315, file: !51, line: 297, baseType: !2335, size: 64, offset: 960)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "rowconv", scope: !116, file: !51, line: 323, baseType: !2385, size: 64, offset: 11008)
!2385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_row_converter", file: !51, line: 61, size: 64, elements: !2386)
!2386 = !{!2387, !2388}
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "lun_addr_shift", scope: !2385, file: !51, line: 62, baseType: !7, size: 32)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "eraseblock_addr_shift", scope: !2385, file: !51, line: 63, baseType: !7, size: 32, offset: 32)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !116, file: !51, line: 324, baseType: !2390, size: 64, offset: 11072)
!2390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt", file: !51, line: 205, size: 64, elements: !2391)
!2391 = !{!2392}
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "cache", scope: !2390, file: !51, line: 206, baseType: !198, size: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !116, file: !51, line: 325, baseType: !2394, size: 64, offset: 11136)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2396)
!2396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ops", file: !51, line: 225, size: 192, elements: !2397)
!2397 = !{!2398, !2404, !2405}
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "erase", scope: !2396, file: !51, line: 226, baseType: !2399, size: 64)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!111, !2346, !2402}
!2402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2403, size: 64)
!2403 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2360)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "markbad", scope: !2396, file: !51, line: 227, baseType: !2399, size: 64, offset: 64)
!2405 = !DIDerivedType(tag: DW_TAG_member, name: "isbad", scope: !2396, file: !51, line: 228, baseType: !2406, size: 64, offset: 128)
!2406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2407, size: 64)
!2407 = !DISubroutineType(types: !2408)
!2408 = !{!315, !2346, !2402}
!2409 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !113, file: !74, line: 1098, baseType: !2410, size: 96, offset: 11200)
!2410 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_id", file: !74, line: 249, size: 96, elements: !2411)
!2411 = !{!2412, !2414}
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2410, file: !74, line: 250, baseType: !2413, size: 64)
!2413 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 64, elements: !751)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2410, file: !74, line: 251, baseType: !111, size: 32, offset: 64)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "parameters", scope: !113, file: !74, line: 1099, baseType: !2416, size: 704, offset: 11328)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_parameters", file: !74, line: 230, size: 704, elements: !2417)
!2417 = !{!2418, !2419, !2420, !2422, !2423}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2416, file: !74, line: 232, baseType: !147, size: 64)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "supports_set_get_features", scope: !2416, file: !74, line: 233, baseType: !315, size: 8, offset: 64)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "set_feature_list", scope: !2416, file: !74, line: 234, baseType: !2421, size: 256, offset: 128)
!2421 = !DICompositeType(tag: DW_TAG_array_type, baseType: !199, size: 256, elements: !591)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "get_feature_list", scope: !2416, file: !74, line: 235, baseType: !2421, size: 256, offset: 384)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "onfi", scope: !2416, file: !74, line: 238, baseType: !2424, size: 64, offset: 640)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "onfi_params", file: !2426, line: 167, size: 832, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/mtd/onfi.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2429, !2430, !2431, !2432, !2433, !2434, !2435}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2425, file: !2426, line: 168, baseType: !111, size: 32)
!2429 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG", scope: !2425, file: !2426, line: 169, baseType: !622, size: 16, offset: 32)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS", scope: !2425, file: !2426, line: 170, baseType: !622, size: 16, offset: 48)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "tR", scope: !2425, file: !2426, line: 171, baseType: !622, size: 16, offset: 64)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS", scope: !2425, file: !2426, line: 172, baseType: !622, size: 16, offset: 80)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2425, file: !2426, line: 173, baseType: !622, size: 16, offset: 96)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2425, file: !2426, line: 174, baseType: !622, size: 16, offset: 112)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2425, file: !2426, line: 175, baseType: !2436, size: 704, offset: 128)
!2436 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 704, elements: !2437)
!2437 = !{!2438}
!2438 = !DISubrange(count: 88)
!2439 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !113, file: !74, line: 1100, baseType: !2440, size: 128, offset: 12032)
!2440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer", file: !74, line: 1036, size: 128, elements: !2441)
!2441 = !{!2442, !2535}
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2440, file: !74, line: 1037, baseType: !2443, size: 64)
!2443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2444, size: 64)
!2444 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2445)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_desc", file: !2446, line: 61, size: 192, elements: !2447)
!2446 = !DIFile(filename: "drivers/mtd/nand/raw/internals.h", directory: "/home/lizy2001/genbc/linux")
!2447 = !{!2448, !2449, !2450}
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2445, file: !2446, line: 62, baseType: !111, size: 32)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2445, file: !2446, line: 63, baseType: !405, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2445, file: !2446, line: 64, baseType: !2451, size: 64, offset: 128)
!2451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2452, size: 64)
!2452 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2453)
!2453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_manufacturer_ops", file: !2446, line: 47, size: 256, elements: !2454)
!2454 = !{!2455, !2459, !2463, !2464}
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "detect", scope: !2453, file: !2446, line: 48, baseType: !2456, size: 64)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DISubroutineType(types: !2458)
!2458 = !{null, !112}
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !2453, file: !2446, line: 49, baseType: !2460, size: 64, offset: 64)
!2460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2461, size: 64)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{!111, !112}
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2453, file: !2446, line: 50, baseType: !2456, size: 64, offset: 128)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "fixup_onfi_param_page", scope: !2453, file: !2446, line: 51, baseType: !2465, size: 64, offset: 192)
!2465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2466, size: 64)
!2466 = !DISubroutineType(types: !2467)
!2467 = !{null, !112, !2468}
!2468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2469, size: 64)
!2469 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_params", file: !2426, line: 54, size: 2048, elements: !2470)
!2470 = !{!2471, !2473, !2475, !2476, !2477, !2479, !2480, !2481, !2485, !2487, !2489, !2490, !2491, !2495, !2497, !2498, !2499, !2500, !2501, !2502, !2503, !2504, !2505, !2506, !2507, !2508, !2509, !2510, !2511, !2512, !2513, !2514, !2515, !2516, !2517, !2518, !2519, !2520, !2521, !2522, !2523, !2524, !2525, !2526, !2527, !2528, !2529, !2530, !2531, !2532, !2533, !2534}
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !2469, file: !2426, line: 57, baseType: !2472, size: 32)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 32, elements: !591)
!2473 = !DIDerivedType(tag: DW_TAG_member, name: "revision", scope: !2469, file: !2426, line: 58, baseType: !2474, size: 16, offset: 32)
!2474 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !1769, line: 29, baseType: !623)
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "features", scope: !2469, file: !2426, line: 59, baseType: !2474, size: 16, offset: 48)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "opt_cmd", scope: !2469, file: !2426, line: 60, baseType: !2474, size: 16, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "reserved0", scope: !2469, file: !2426, line: 61, baseType: !2478, size: 16, offset: 80)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 16, elements: !1184)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "ext_param_page_length", scope: !2469, file: !2426, line: 62, baseType: !2474, size: 16, offset: 96)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "num_of_param_pages", scope: !2469, file: !2426, line: 63, baseType: !258, size: 8, offset: 112)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "reserved1", scope: !2469, file: !2426, line: 64, baseType: !2482, size: 136, offset: 120)
!2482 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 136, elements: !2483)
!2483 = !{!2484}
!2484 = !DISubrange(count: 17)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "manufacturer", scope: !2469, file: !2426, line: 67, baseType: !2486, size: 96, offset: 256)
!2486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 96, elements: !1437)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "model", scope: !2469, file: !2426, line: 68, baseType: !2488, size: 160, offset: 352)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 160, elements: !1402)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "jedec_id", scope: !2469, file: !2426, line: 69, baseType: !258, size: 8, offset: 512)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "date_code", scope: !2469, file: !2426, line: 70, baseType: !2474, size: 16, offset: 520)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "reserved2", scope: !2469, file: !2426, line: 71, baseType: !2492, size: 104, offset: 536)
!2492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 104, elements: !2493)
!2493 = !{!2494}
!2494 = !DISubrange(count: 13)
!2495 = !DIDerivedType(tag: DW_TAG_member, name: "byte_per_page", scope: !2469, file: !2426, line: 74, baseType: !2496, size: 32, offset: 640)
!2496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !1769, line: 31, baseType: !129)
!2497 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_page", scope: !2469, file: !2426, line: 75, baseType: !2474, size: 16, offset: 672)
!2498 = !DIDerivedType(tag: DW_TAG_member, name: "data_bytes_per_ppage", scope: !2469, file: !2426, line: 76, baseType: !2496, size: 32, offset: 688)
!2499 = !DIDerivedType(tag: DW_TAG_member, name: "spare_bytes_per_ppage", scope: !2469, file: !2426, line: 77, baseType: !2474, size: 16, offset: 720)
!2500 = !DIDerivedType(tag: DW_TAG_member, name: "pages_per_block", scope: !2469, file: !2426, line: 78, baseType: !2496, size: 32, offset: 736)
!2501 = !DIDerivedType(tag: DW_TAG_member, name: "blocks_per_lun", scope: !2469, file: !2426, line: 79, baseType: !2496, size: 32, offset: 768)
!2502 = !DIDerivedType(tag: DW_TAG_member, name: "lun_count", scope: !2469, file: !2426, line: 80, baseType: !258, size: 8, offset: 800)
!2503 = !DIDerivedType(tag: DW_TAG_member, name: "addr_cycles", scope: !2469, file: !2426, line: 81, baseType: !258, size: 8, offset: 808)
!2504 = !DIDerivedType(tag: DW_TAG_member, name: "bits_per_cell", scope: !2469, file: !2426, line: 82, baseType: !258, size: 8, offset: 816)
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "bb_per_lun", scope: !2469, file: !2426, line: 83, baseType: !2474, size: 16, offset: 824)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "block_endurance", scope: !2469, file: !2426, line: 84, baseType: !2474, size: 16, offset: 840)
!2507 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_good_blocks", scope: !2469, file: !2426, line: 85, baseType: !258, size: 8, offset: 856)
!2508 = !DIDerivedType(tag: DW_TAG_member, name: "guaranteed_block_endurance", scope: !2469, file: !2426, line: 86, baseType: !2474, size: 16, offset: 864)
!2509 = !DIDerivedType(tag: DW_TAG_member, name: "programs_per_page", scope: !2469, file: !2426, line: 87, baseType: !258, size: 8, offset: 880)
!2510 = !DIDerivedType(tag: DW_TAG_member, name: "ppage_attr", scope: !2469, file: !2426, line: 88, baseType: !258, size: 8, offset: 888)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_bits", scope: !2469, file: !2426, line: 89, baseType: !258, size: 8, offset: 896)
!2512 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_bits", scope: !2469, file: !2426, line: 90, baseType: !258, size: 8, offset: 904)
!2513 = !DIDerivedType(tag: DW_TAG_member, name: "interleaved_ops", scope: !2469, file: !2426, line: 91, baseType: !258, size: 8, offset: 912)
!2514 = !DIDerivedType(tag: DW_TAG_member, name: "reserved3", scope: !2469, file: !2426, line: 92, baseType: !2492, size: 104, offset: 920)
!2515 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_max", scope: !2469, file: !2426, line: 95, baseType: !258, size: 8, offset: 1024)
!2516 = !DIDerivedType(tag: DW_TAG_member, name: "async_timing_mode", scope: !2469, file: !2426, line: 96, baseType: !2474, size: 16, offset: 1032)
!2517 = !DIDerivedType(tag: DW_TAG_member, name: "program_cache_timing_mode", scope: !2469, file: !2426, line: 97, baseType: !2474, size: 16, offset: 1048)
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "t_prog", scope: !2469, file: !2426, line: 98, baseType: !2474, size: 16, offset: 1064)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "t_bers", scope: !2469, file: !2426, line: 99, baseType: !2474, size: 16, offset: 1080)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "t_r", scope: !2469, file: !2426, line: 100, baseType: !2474, size: 16, offset: 1096)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "t_ccs", scope: !2469, file: !2426, line: 101, baseType: !2474, size: 16, offset: 1112)
!2522 = !DIDerivedType(tag: DW_TAG_member, name: "src_sync_timing_mode", scope: !2469, file: !2426, line: 102, baseType: !2474, size: 16, offset: 1128)
!2523 = !DIDerivedType(tag: DW_TAG_member, name: "src_ssync_features", scope: !2469, file: !2426, line: 103, baseType: !258, size: 8, offset: 1144)
!2524 = !DIDerivedType(tag: DW_TAG_member, name: "clk_pin_capacitance_typ", scope: !2469, file: !2426, line: 104, baseType: !2474, size: 16, offset: 1152)
!2525 = !DIDerivedType(tag: DW_TAG_member, name: "io_pin_capacitance_typ", scope: !2469, file: !2426, line: 105, baseType: !2474, size: 16, offset: 1168)
!2526 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_typ", scope: !2469, file: !2426, line: 106, baseType: !2474, size: 16, offset: 1184)
!2527 = !DIDerivedType(tag: DW_TAG_member, name: "input_pin_capacitance_max", scope: !2469, file: !2426, line: 107, baseType: !258, size: 8, offset: 1200)
!2528 = !DIDerivedType(tag: DW_TAG_member, name: "driver_strength_support", scope: !2469, file: !2426, line: 108, baseType: !258, size: 8, offset: 1208)
!2529 = !DIDerivedType(tag: DW_TAG_member, name: "t_int_r", scope: !2469, file: !2426, line: 109, baseType: !2474, size: 16, offset: 1216)
!2530 = !DIDerivedType(tag: DW_TAG_member, name: "t_adl", scope: !2469, file: !2426, line: 110, baseType: !2474, size: 16, offset: 1232)
!2531 = !DIDerivedType(tag: DW_TAG_member, name: "reserved4", scope: !2469, file: !2426, line: 111, baseType: !2413, size: 64, offset: 1248)
!2532 = !DIDerivedType(tag: DW_TAG_member, name: "vendor_revision", scope: !2469, file: !2426, line: 114, baseType: !2474, size: 16, offset: 1312)
!2533 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !2469, file: !2426, line: 115, baseType: !2436, size: 704, offset: 1328)
!2534 = !DIDerivedType(tag: DW_TAG_member, name: "crc", scope: !2469, file: !2426, line: 117, baseType: !2474, size: 16, offset: 2032)
!2535 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2440, file: !74, line: 1038, baseType: !104, size: 64, offset: 64)
!2536 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !113, file: !74, line: 1101, baseType: !2537, size: 384, offset: 12160)
!2537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_chip_ops", file: !74, line: 1021, size: 384, elements: !2538)
!2538 = !{!2539, !2540, !2541, !2545, !2546, !2550}
!2539 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2537, file: !74, line: 1022, baseType: !2460, size: 64)
!2540 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2537, file: !74, line: 1023, baseType: !2456, size: 64, offset: 64)
!2541 = !DIDerivedType(tag: DW_TAG_member, name: "lock_area", scope: !2537, file: !74, line: 1024, baseType: !2542, size: 64, offset: 128)
!2542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2543, size: 64)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!111, !112, !214, !132}
!2545 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_area", scope: !2537, file: !74, line: 1025, baseType: !2542, size: 64, offset: 192)
!2546 = !DIDerivedType(tag: DW_TAG_member, name: "setup_read_retry", scope: !2537, file: !74, line: 1026, baseType: !2547, size: 64, offset: 256)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = !DISubroutineType(types: !2549)
!2549 = !{!111, !112, !111}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "choose_interface_config", scope: !2537, file: !74, line: 1027, baseType: !2551, size: 64, offset: 320)
!2551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2552, size: 64)
!2552 = !DISubroutineType(types: !2553)
!2553 = !{!111, !112, !2554}
!2554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2555, size: 64)
!2555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_interface_config", file: !74, line: 492, size: 1536, elements: !2556)
!2556 = !{!2557, !2558}
!2557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2555, file: !74, line: 493, baseType: !73, size: 32)
!2558 = !DIDerivedType(tag: DW_TAG_member, name: "timings", scope: !2555, file: !74, line: 499, baseType: !2559, size: 1472, offset: 64)
!2559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_timings", file: !74, line: 494, size: 1472, elements: !2560)
!2560 = !{!2561, !2562}
!2561 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2559, file: !74, line: 495, baseType: !7, size: 32)
!2562 = !DIDerivedType(tag: DW_TAG_member, scope: !2559, file: !74, line: 496, baseType: !2563, size: 1408, offset: 64)
!2563 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2559, file: !74, line: 496, size: 1408, elements: !2564)
!2564 = !{!2565}
!2565 = !DIDerivedType(tag: DW_TAG_member, name: "sdr", scope: !2563, file: !74, line: 497, baseType: !2566, size: 1408)
!2566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_sdr_timings", file: !74, line: 436, size: 1408, elements: !2567)
!2567 = !{!2568, !2569, !2570, !2571, !2572, !2573, !2574, !2575, !2576, !2577, !2578, !2579, !2580, !2581, !2582, !2583, !2584, !2585, !2586, !2587, !2588, !2589, !2590, !2591, !2592, !2593, !2594, !2595, !2596, !2597, !2598, !2599, !2600, !2601, !2602, !2603, !2604, !2605}
!2568 = !DIDerivedType(tag: DW_TAG_member, name: "tBERS_max", scope: !2566, file: !74, line: 437, baseType: !133, size: 64)
!2569 = !DIDerivedType(tag: DW_TAG_member, name: "tCCS_min", scope: !2566, file: !74, line: 438, baseType: !127, size: 32, offset: 64)
!2570 = !DIDerivedType(tag: DW_TAG_member, name: "tPROG_max", scope: !2566, file: !74, line: 439, baseType: !133, size: 64, offset: 128)
!2571 = !DIDerivedType(tag: DW_TAG_member, name: "tR_max", scope: !2566, file: !74, line: 440, baseType: !133, size: 64, offset: 192)
!2572 = !DIDerivedType(tag: DW_TAG_member, name: "tALH_min", scope: !2566, file: !74, line: 441, baseType: !127, size: 32, offset: 256)
!2573 = !DIDerivedType(tag: DW_TAG_member, name: "tADL_min", scope: !2566, file: !74, line: 442, baseType: !127, size: 32, offset: 288)
!2574 = !DIDerivedType(tag: DW_TAG_member, name: "tALS_min", scope: !2566, file: !74, line: 443, baseType: !127, size: 32, offset: 320)
!2575 = !DIDerivedType(tag: DW_TAG_member, name: "tAR_min", scope: !2566, file: !74, line: 444, baseType: !127, size: 32, offset: 352)
!2576 = !DIDerivedType(tag: DW_TAG_member, name: "tCEA_max", scope: !2566, file: !74, line: 445, baseType: !127, size: 32, offset: 384)
!2577 = !DIDerivedType(tag: DW_TAG_member, name: "tCEH_min", scope: !2566, file: !74, line: 446, baseType: !127, size: 32, offset: 416)
!2578 = !DIDerivedType(tag: DW_TAG_member, name: "tCH_min", scope: !2566, file: !74, line: 447, baseType: !127, size: 32, offset: 448)
!2579 = !DIDerivedType(tag: DW_TAG_member, name: "tCHZ_max", scope: !2566, file: !74, line: 448, baseType: !127, size: 32, offset: 480)
!2580 = !DIDerivedType(tag: DW_TAG_member, name: "tCLH_min", scope: !2566, file: !74, line: 449, baseType: !127, size: 32, offset: 512)
!2581 = !DIDerivedType(tag: DW_TAG_member, name: "tCLR_min", scope: !2566, file: !74, line: 450, baseType: !127, size: 32, offset: 544)
!2582 = !DIDerivedType(tag: DW_TAG_member, name: "tCLS_min", scope: !2566, file: !74, line: 451, baseType: !127, size: 32, offset: 576)
!2583 = !DIDerivedType(tag: DW_TAG_member, name: "tCOH_min", scope: !2566, file: !74, line: 452, baseType: !127, size: 32, offset: 608)
!2584 = !DIDerivedType(tag: DW_TAG_member, name: "tCS_min", scope: !2566, file: !74, line: 453, baseType: !127, size: 32, offset: 640)
!2585 = !DIDerivedType(tag: DW_TAG_member, name: "tDH_min", scope: !2566, file: !74, line: 454, baseType: !127, size: 32, offset: 672)
!2586 = !DIDerivedType(tag: DW_TAG_member, name: "tDS_min", scope: !2566, file: !74, line: 455, baseType: !127, size: 32, offset: 704)
!2587 = !DIDerivedType(tag: DW_TAG_member, name: "tFEAT_max", scope: !2566, file: !74, line: 456, baseType: !127, size: 32, offset: 736)
!2588 = !DIDerivedType(tag: DW_TAG_member, name: "tIR_min", scope: !2566, file: !74, line: 457, baseType: !127, size: 32, offset: 768)
!2589 = !DIDerivedType(tag: DW_TAG_member, name: "tITC_max", scope: !2566, file: !74, line: 458, baseType: !127, size: 32, offset: 800)
!2590 = !DIDerivedType(tag: DW_TAG_member, name: "tRC_min", scope: !2566, file: !74, line: 459, baseType: !127, size: 32, offset: 832)
!2591 = !DIDerivedType(tag: DW_TAG_member, name: "tREA_max", scope: !2566, file: !74, line: 460, baseType: !127, size: 32, offset: 864)
!2592 = !DIDerivedType(tag: DW_TAG_member, name: "tREH_min", scope: !2566, file: !74, line: 461, baseType: !127, size: 32, offset: 896)
!2593 = !DIDerivedType(tag: DW_TAG_member, name: "tRHOH_min", scope: !2566, file: !74, line: 462, baseType: !127, size: 32, offset: 928)
!2594 = !DIDerivedType(tag: DW_TAG_member, name: "tRHW_min", scope: !2566, file: !74, line: 463, baseType: !127, size: 32, offset: 960)
!2595 = !DIDerivedType(tag: DW_TAG_member, name: "tRHZ_max", scope: !2566, file: !74, line: 464, baseType: !127, size: 32, offset: 992)
!2596 = !DIDerivedType(tag: DW_TAG_member, name: "tRLOH_min", scope: !2566, file: !74, line: 465, baseType: !127, size: 32, offset: 1024)
!2597 = !DIDerivedType(tag: DW_TAG_member, name: "tRP_min", scope: !2566, file: !74, line: 466, baseType: !127, size: 32, offset: 1056)
!2598 = !DIDerivedType(tag: DW_TAG_member, name: "tRR_min", scope: !2566, file: !74, line: 467, baseType: !127, size: 32, offset: 1088)
!2599 = !DIDerivedType(tag: DW_TAG_member, name: "tRST_max", scope: !2566, file: !74, line: 468, baseType: !133, size: 64, offset: 1152)
!2600 = !DIDerivedType(tag: DW_TAG_member, name: "tWB_max", scope: !2566, file: !74, line: 469, baseType: !127, size: 32, offset: 1216)
!2601 = !DIDerivedType(tag: DW_TAG_member, name: "tWC_min", scope: !2566, file: !74, line: 470, baseType: !127, size: 32, offset: 1248)
!2602 = !DIDerivedType(tag: DW_TAG_member, name: "tWH_min", scope: !2566, file: !74, line: 471, baseType: !127, size: 32, offset: 1280)
!2603 = !DIDerivedType(tag: DW_TAG_member, name: "tWHR_min", scope: !2566, file: !74, line: 472, baseType: !127, size: 32, offset: 1312)
!2604 = !DIDerivedType(tag: DW_TAG_member, name: "tWP_min", scope: !2566, file: !74, line: 473, baseType: !127, size: 32, offset: 1344)
!2605 = !DIDerivedType(tag: DW_TAG_member, name: "tWW_min", scope: !2566, file: !74, line: 474, baseType: !127, size: 32, offset: 1376)
!2606 = !DIDerivedType(tag: DW_TAG_member, name: "legacy", scope: !113, file: !74, line: 1102, baseType: !2607, size: 1280, offset: 12544)
!2607 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_legacy", file: !74, line: 989, size: 1280, elements: !2608)
!2608 = !{!2609, !2610, !2611, !2615, !2619, !2623, !2629, !2634, !2638, !2642, !2643, !2644, !2648, !2649, !2653, !2654, !2655}
!2609 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_R", scope: !2607, file: !74, line: 990, baseType: !104, size: 64)
!2610 = !DIDerivedType(tag: DW_TAG_member, name: "IO_ADDR_W", scope: !2607, file: !74, line: 991, baseType: !104, size: 64, offset: 64)
!2611 = !DIDerivedType(tag: DW_TAG_member, name: "select_chip", scope: !2607, file: !74, line: 992, baseType: !2612, size: 64, offset: 128)
!2612 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2613, size: 64)
!2613 = !DISubroutineType(types: !2614)
!2614 = !{null, !112, !111}
!2615 = !DIDerivedType(tag: DW_TAG_member, name: "read_byte", scope: !2607, file: !74, line: 993, baseType: !2616, size: 64, offset: 192)
!2616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2617, size: 64)
!2617 = !DISubroutineType(types: !2618)
!2618 = !{!258, !112}
!2619 = !DIDerivedType(tag: DW_TAG_member, name: "write_byte", scope: !2607, file: !74, line: 994, baseType: !2620, size: 64, offset: 256)
!2620 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2621, size: 64)
!2621 = !DISubroutineType(types: !2622)
!2622 = !{null, !112, !258}
!2623 = !DIDerivedType(tag: DW_TAG_member, name: "write_buf", scope: !2607, file: !74, line: 995, baseType: !2624, size: 64, offset: 320)
!2624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2625, size: 64)
!2625 = !DISubroutineType(types: !2626)
!2626 = !{null, !112, !2627, !111}
!2627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2628, size: 64)
!2628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !258)
!2629 = !DIDerivedType(tag: DW_TAG_member, name: "read_buf", scope: !2607, file: !74, line: 996, baseType: !2630, size: 64, offset: 384)
!2630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2631, size: 64)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{null, !112, !2633, !111}
!2633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!2634 = !DIDerivedType(tag: DW_TAG_member, name: "cmd_ctrl", scope: !2607, file: !74, line: 997, baseType: !2635, size: 64, offset: 448)
!2635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2636, size: 64)
!2636 = !DISubroutineType(types: !2637)
!2637 = !{null, !112, !111, !7}
!2638 = !DIDerivedType(tag: DW_TAG_member, name: "cmdfunc", scope: !2607, file: !74, line: 998, baseType: !2639, size: 64, offset: 512)
!2639 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2640, size: 64)
!2640 = !DISubroutineType(types: !2641)
!2641 = !{null, !112, !7, !111, !111}
!2642 = !DIDerivedType(tag: DW_TAG_member, name: "dev_ready", scope: !2607, file: !74, line: 1000, baseType: !2460, size: 64, offset: 576)
!2643 = !DIDerivedType(tag: DW_TAG_member, name: "waitfunc", scope: !2607, file: !74, line: 1001, baseType: !2460, size: 64, offset: 640)
!2644 = !DIDerivedType(tag: DW_TAG_member, name: "block_bad", scope: !2607, file: !74, line: 1002, baseType: !2645, size: 64, offset: 704)
!2645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2646, size: 64)
!2646 = !DISubroutineType(types: !2647)
!2647 = !{!111, !112, !214}
!2648 = !DIDerivedType(tag: DW_TAG_member, name: "block_markbad", scope: !2607, file: !74, line: 1003, baseType: !2645, size: 64, offset: 768)
!2649 = !DIDerivedType(tag: DW_TAG_member, name: "set_features", scope: !2607, file: !74, line: 1004, baseType: !2650, size: 64, offset: 832)
!2650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2651, size: 64)
!2651 = !DISubroutineType(types: !2652)
!2652 = !{!111, !112, !111, !2633}
!2653 = !DIDerivedType(tag: DW_TAG_member, name: "get_features", scope: !2607, file: !74, line: 1006, baseType: !2650, size: 64, offset: 896)
!2654 = !DIDerivedType(tag: DW_TAG_member, name: "chip_delay", scope: !2607, file: !74, line: 1008, baseType: !111, size: 32, offset: 960)
!2655 = !DIDerivedType(tag: DW_TAG_member, name: "dummy_controller", scope: !2607, file: !74, line: 1009, baseType: !2656, size: 256, offset: 1024)
!2656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller", file: !74, line: 951, size: 256, elements: !2657)
!2657 = !{!2658, !2659}
!2658 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2656, file: !74, line: 952, baseType: !609, size: 192)
!2659 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2656, file: !74, line: 953, baseType: !2660, size: 64, offset: 192)
!2660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2661, size: 64)
!2661 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2662)
!2662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_controller_ops", file: !74, line: 935, size: 256, elements: !2663)
!2663 = !{!2664, !2665, !2666, !2709}
!2664 = !DIDerivedType(tag: DW_TAG_member, name: "attach_chip", scope: !2662, file: !74, line: 936, baseType: !2460, size: 64)
!2665 = !DIDerivedType(tag: DW_TAG_member, name: "detach_chip", scope: !2662, file: !74, line: 937, baseType: !2456, size: 64, offset: 64)
!2666 = !DIDerivedType(tag: DW_TAG_member, name: "exec_op", scope: !2662, file: !74, line: 938, baseType: !2667, size: 64, offset: 128)
!2667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2668, size: 64)
!2668 = !DISubroutineType(types: !2669)
!2669 = !{!111, !112, !2670, !315}
!2670 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2671, size: 64)
!2671 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2672)
!2672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_operation", file: !74, line: 860, size: 192, elements: !2673)
!2673 = !{!2674, !2675, !2708}
!2674 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !2672, file: !74, line: 861, baseType: !7, size: 32)
!2675 = !DIDerivedType(tag: DW_TAG_member, name: "instrs", scope: !2672, file: !74, line: 862, baseType: !2676, size: 64, offset: 64)
!2676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2677, size: 64)
!2677 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2678)
!2678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_instr", file: !74, line: 593, size: 320, elements: !2679)
!2679 = !{!2680, !2681, !2707}
!2680 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2678, file: !74, line: 594, baseType: !77, size: 32)
!2681 = !DIDerivedType(tag: DW_TAG_member, name: "ctx", scope: !2678, file: !74, line: 600, baseType: !2682, size: 192, offset: 64)
!2682 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2678, file: !74, line: 595, size: 192, elements: !2683)
!2683 = !{!2684, !2688, !2693, !2703}
!2684 = !DIDerivedType(tag: DW_TAG_member, name: "cmd", scope: !2682, file: !74, line: 596, baseType: !2685, size: 8)
!2685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_cmd_instr", file: !74, line: 519, size: 8, elements: !2686)
!2686 = !{!2687}
!2687 = !DIDerivedType(tag: DW_TAG_member, name: "opcode", scope: !2685, file: !74, line: 520, baseType: !258, size: 8)
!2688 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2682, file: !74, line: 597, baseType: !2689, size: 128)
!2689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_addr_instr", file: !74, line: 528, size: 128, elements: !2690)
!2690 = !{!2691, !2692}
!2691 = !DIDerivedType(tag: DW_TAG_member, name: "naddrs", scope: !2689, file: !74, line: 529, baseType: !7, size: 32)
!2692 = !DIDerivedType(tag: DW_TAG_member, name: "addrs", scope: !2689, file: !74, line: 530, baseType: !2627, size: 64, offset: 64)
!2693 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2682, file: !74, line: 598, baseType: !2694, size: 192)
!2694 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_data_instr", file: !74, line: 545, size: 192, elements: !2695)
!2695 = !{!2696, !2697, !2702}
!2696 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2694, file: !74, line: 546, baseType: !7, size: 32)
!2697 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2694, file: !74, line: 550, baseType: !2698, size: 64, offset: 64)
!2698 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2694, file: !74, line: 547, size: 64, elements: !2699)
!2699 = !{!2700, !2701}
!2700 = !DIDerivedType(tag: DW_TAG_member, name: "in", scope: !2698, file: !74, line: 548, baseType: !104, size: 64)
!2701 = !DIDerivedType(tag: DW_TAG_member, name: "out", scope: !2698, file: !74, line: 549, baseType: !1601, size: 64)
!2702 = !DIDerivedType(tag: DW_TAG_member, name: "force_8bit", scope: !2694, file: !74, line: 551, baseType: !315, size: 8, offset: 128)
!2703 = !DIDerivedType(tag: DW_TAG_member, name: "waitrdy", scope: !2682, file: !74, line: 599, baseType: !2704, size: 32)
!2704 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_op_waitrdy_instr", file: !74, line: 558, size: 32, elements: !2705)
!2705 = !{!2706}
!2706 = !DIDerivedType(tag: DW_TAG_member, name: "timeout_ms", scope: !2704, file: !74, line: 559, baseType: !7, size: 32)
!2707 = !DIDerivedType(tag: DW_TAG_member, name: "delay_ns", scope: !2678, file: !74, line: 601, baseType: !7, size: 32, offset: 256)
!2708 = !DIDerivedType(tag: DW_TAG_member, name: "ninstrs", scope: !2672, file: !74, line: 863, baseType: !7, size: 32, offset: 128)
!2709 = !DIDerivedType(tag: DW_TAG_member, name: "setup_interface", scope: !2662, file: !74, line: 941, baseType: !2710, size: 64, offset: 192)
!2710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2711, size: 64)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!111, !112, !111, !2713}
!2713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2714, size: 64)
!2714 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2555)
!2715 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !113, file: !74, line: 1103, baseType: !7, size: 32, offset: 13824)
!2716 = !DIDerivedType(tag: DW_TAG_member, name: "current_interface_config", scope: !113, file: !74, line: 1106, baseType: !2713, size: 64, offset: 13888)
!2717 = !DIDerivedType(tag: DW_TAG_member, name: "best_interface_config", scope: !113, file: !74, line: 1107, baseType: !2554, size: 64, offset: 13952)
!2718 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_erase_shift", scope: !113, file: !74, line: 1110, baseType: !7, size: 32, offset: 14016)
!2719 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_options", scope: !113, file: !74, line: 1111, baseType: !7, size: 32, offset: 14048)
!2720 = !DIDerivedType(tag: DW_TAG_member, name: "badblockpos", scope: !113, file: !74, line: 1112, baseType: !7, size: 32, offset: 14080)
!2721 = !DIDerivedType(tag: DW_TAG_member, name: "badblockbits", scope: !113, file: !74, line: 1113, baseType: !7, size: 32, offset: 14112)
!2722 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_td", scope: !113, file: !74, line: 1114, baseType: !2723, size: 64, offset: 14144)
!2723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2724, size: 64)
!2724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_bbt_descr", file: !2725, line: 41, size: 576, elements: !2726)
!2725 = !DIFile(filename: "./include/linux/mtd/bbm.h", directory: "/home/lizy2001/genbc/linux")
!2726 = !{!2727, !2728, !2730, !2731, !2732, !2734, !2735, !2736, !2737}
!2727 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2724, file: !2725, line: 42, baseType: !111, size: 32)
!2728 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !2724, file: !2725, line: 43, baseType: !2729, size: 256, offset: 32)
!2729 = !DICompositeType(tag: DW_TAG_array_type, baseType: !111, size: 256, elements: !751)
!2730 = !DIDerivedType(tag: DW_TAG_member, name: "offs", scope: !2724, file: !2725, line: 44, baseType: !111, size: 32, offset: 288)
!2731 = !DIDerivedType(tag: DW_TAG_member, name: "veroffs", scope: !2724, file: !2725, line: 45, baseType: !111, size: 32, offset: 320)
!2732 = !DIDerivedType(tag: DW_TAG_member, name: "version", scope: !2724, file: !2725, line: 46, baseType: !2733, size: 64, offset: 352)
!2733 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 64, elements: !751)
!2734 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2724, file: !2725, line: 47, baseType: !111, size: 32, offset: 416)
!2735 = !DIDerivedType(tag: DW_TAG_member, name: "maxblocks", scope: !2724, file: !2725, line: 48, baseType: !111, size: 32, offset: 448)
!2736 = !DIDerivedType(tag: DW_TAG_member, name: "reserved_block_code", scope: !2724, file: !2725, line: 49, baseType: !111, size: 32, offset: 480)
!2737 = !DIDerivedType(tag: DW_TAG_member, name: "pattern", scope: !2724, file: !2725, line: 50, baseType: !256, size: 64, offset: 512)
!2738 = !DIDerivedType(tag: DW_TAG_member, name: "bbt_md", scope: !113, file: !74, line: 1115, baseType: !2723, size: 64, offset: 14208)
!2739 = !DIDerivedType(tag: DW_TAG_member, name: "badblock_pattern", scope: !113, file: !74, line: 1116, baseType: !2723, size: 64, offset: 14272)
!2740 = !DIDerivedType(tag: DW_TAG_member, name: "bbt", scope: !113, file: !74, line: 1117, baseType: !2633, size: 64, offset: 14336)
!2741 = !DIDerivedType(tag: DW_TAG_member, name: "page_shift", scope: !113, file: !74, line: 1120, baseType: !7, size: 32, offset: 14400)
!2742 = !DIDerivedType(tag: DW_TAG_member, name: "phys_erase_shift", scope: !113, file: !74, line: 1121, baseType: !7, size: 32, offset: 14432)
!2743 = !DIDerivedType(tag: DW_TAG_member, name: "chip_shift", scope: !113, file: !74, line: 1122, baseType: !7, size: 32, offset: 14464)
!2744 = !DIDerivedType(tag: DW_TAG_member, name: "pagemask", scope: !113, file: !74, line: 1123, baseType: !7, size: 32, offset: 14496)
!2745 = !DIDerivedType(tag: DW_TAG_member, name: "subpagesize", scope: !113, file: !74, line: 1124, baseType: !7, size: 32, offset: 14528)
!2746 = !DIDerivedType(tag: DW_TAG_member, name: "data_buf", scope: !113, file: !74, line: 1127, baseType: !2633, size: 64, offset: 14592)
!2747 = !DIDerivedType(tag: DW_TAG_member, name: "oob_poi", scope: !113, file: !74, line: 1128, baseType: !2633, size: 64, offset: 14656)
!2748 = !DIDerivedType(tag: DW_TAG_member, name: "pagecache", scope: !113, file: !74, line: 1132, baseType: !2749, size: 64, offset: 14720)
!2749 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !113, file: !74, line: 1129, size: 64, elements: !2750)
!2750 = !{!2751, !2752}
!2751 = !DIDerivedType(tag: DW_TAG_member, name: "bitflips", scope: !2749, file: !74, line: 1130, baseType: !7, size: 32)
!2752 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !2749, file: !74, line: 1131, baseType: !111, size: 32, offset: 32)
!2753 = !DIDerivedType(tag: DW_TAG_member, name: "buf_align", scope: !113, file: !74, line: 1133, baseType: !199, size: 64, offset: 14784)
!2754 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !113, file: !74, line: 1136, baseType: !609, size: 192, offset: 14848)
!2755 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !113, file: !74, line: 1137, baseType: !7, size: 1, offset: 15040, flags: DIFlagBitField, extraData: i64 15040)
!2756 = !DIDerivedType(tag: DW_TAG_member, name: "cur_cs", scope: !113, file: !74, line: 1138, baseType: !111, size: 32, offset: 15072)
!2757 = !DIDerivedType(tag: DW_TAG_member, name: "read_retries", scope: !113, file: !74, line: 1139, baseType: !111, size: 32, offset: 15104)
!2758 = !DIDerivedType(tag: DW_TAG_member, name: "controller", scope: !113, file: !74, line: 1142, baseType: !2759, size: 64, offset: 15168)
!2759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2656, size: 64)
!2760 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !113, file: !74, line: 1143, baseType: !2761, size: 1408, offset: 15232)
!2761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_ecc_ctrl", file: !74, line: 346, size: 1408, elements: !2762)
!2762 = !{!2763, !2764, !2765, !2766, !2767, !2768, !2769, !2770, !2771, !2772, !2773, !2774, !2775, !2776, !2777, !2778, !2784, !2788, !2792, !2796, !2797, !2801, !2805, !2806, !2807, !2808, !2809}
!2763 = !DIDerivedType(tag: DW_TAG_member, name: "engine_type", scope: !2761, file: !74, line: 347, baseType: !50, size: 32)
!2764 = !DIDerivedType(tag: DW_TAG_member, name: "placement", scope: !2761, file: !74, line: 348, baseType: !58, size: 32, offset: 32)
!2765 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2761, file: !74, line: 349, baseType: !63, size: 32, offset: 64)
!2766 = !DIDerivedType(tag: DW_TAG_member, name: "steps", scope: !2761, file: !74, line: 350, baseType: !111, size: 32, offset: 96)
!2767 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2761, file: !74, line: 351, baseType: !111, size: 32, offset: 128)
!2768 = !DIDerivedType(tag: DW_TAG_member, name: "bytes", scope: !2761, file: !74, line: 352, baseType: !111, size: 32, offset: 160)
!2769 = !DIDerivedType(tag: DW_TAG_member, name: "total", scope: !2761, file: !74, line: 353, baseType: !111, size: 32, offset: 192)
!2770 = !DIDerivedType(tag: DW_TAG_member, name: "strength", scope: !2761, file: !74, line: 354, baseType: !111, size: 32, offset: 224)
!2771 = !DIDerivedType(tag: DW_TAG_member, name: "prepad", scope: !2761, file: !74, line: 355, baseType: !111, size: 32, offset: 256)
!2772 = !DIDerivedType(tag: DW_TAG_member, name: "postpad", scope: !2761, file: !74, line: 356, baseType: !111, size: 32, offset: 288)
!2773 = !DIDerivedType(tag: DW_TAG_member, name: "options", scope: !2761, file: !74, line: 357, baseType: !7, size: 32, offset: 320)
!2774 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2761, file: !74, line: 358, baseType: !104, size: 64, offset: 384)
!2775 = !DIDerivedType(tag: DW_TAG_member, name: "calc_buf", scope: !2761, file: !74, line: 359, baseType: !2633, size: 64, offset: 448)
!2776 = !DIDerivedType(tag: DW_TAG_member, name: "code_buf", scope: !2761, file: !74, line: 360, baseType: !2633, size: 64, offset: 512)
!2777 = !DIDerivedType(tag: DW_TAG_member, name: "hwctl", scope: !2761, file: !74, line: 361, baseType: !2612, size: 64, offset: 576)
!2778 = !DIDerivedType(tag: DW_TAG_member, name: "calculate", scope: !2761, file: !74, line: 362, baseType: !2779, size: 64, offset: 640)
!2779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2780, size: 64)
!2780 = !DISubroutineType(types: !2781)
!2781 = !{!111, !112, !2782, !256}
!2782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2783, size: 64)
!2783 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !257)
!2784 = !DIDerivedType(tag: DW_TAG_member, name: "correct", scope: !2761, file: !74, line: 364, baseType: !2785, size: 64, offset: 704)
!2785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2786, size: 64)
!2786 = !DISubroutineType(types: !2787)
!2787 = !{!111, !112, !256, !256, !256}
!2788 = !DIDerivedType(tag: DW_TAG_member, name: "read_page_raw", scope: !2761, file: !74, line: 366, baseType: !2789, size: 64, offset: 768)
!2789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2790, size: 64)
!2790 = !DISubroutineType(types: !2791)
!2791 = !{!111, !112, !256, !111, !111}
!2792 = !DIDerivedType(tag: DW_TAG_member, name: "write_page_raw", scope: !2761, file: !74, line: 368, baseType: !2793, size: 64, offset: 832)
!2793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2794, size: 64)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!111, !112, !2782, !111, !111}
!2796 = !DIDerivedType(tag: DW_TAG_member, name: "read_page", scope: !2761, file: !74, line: 370, baseType: !2789, size: 64, offset: 896)
!2797 = !DIDerivedType(tag: DW_TAG_member, name: "read_subpage", scope: !2761, file: !74, line: 372, baseType: !2798, size: 64, offset: 960)
!2798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2799, size: 64)
!2799 = !DISubroutineType(types: !2800)
!2800 = !{!111, !112, !126, !126, !256, !111}
!2801 = !DIDerivedType(tag: DW_TAG_member, name: "write_subpage", scope: !2761, file: !74, line: 374, baseType: !2802, size: 64, offset: 1024)
!2802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2803, size: 64)
!2803 = !DISubroutineType(types: !2804)
!2804 = !{!111, !112, !126, !126, !2782, !111, !111}
!2805 = !DIDerivedType(tag: DW_TAG_member, name: "write_page", scope: !2761, file: !74, line: 377, baseType: !2793, size: 64, offset: 1088)
!2806 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob_raw", scope: !2761, file: !74, line: 379, baseType: !2547, size: 64, offset: 1152)
!2807 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob_raw", scope: !2761, file: !74, line: 380, baseType: !2547, size: 64, offset: 1216)
!2808 = !DIDerivedType(tag: DW_TAG_member, name: "read_oob", scope: !2761, file: !74, line: 381, baseType: !2547, size: 64, offset: 1280)
!2809 = !DIDerivedType(tag: DW_TAG_member, name: "write_oob", scope: !2761, file: !74, line: 382, baseType: !2547, size: 64, offset: 1344)
!2810 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !113, file: !74, line: 1144, baseType: !104, size: 64, offset: 16640)
!2811 = !{!0, !2812, !2814}
!2812 = !DIGlobalVariableExpression(var: !2813, expr: !DIExpression())
!2813 = distinct !DIGlobalVariable(name: "micron_nand_on_die_4_ooblayout_ops", scope: !2, file: !3, line: 126, type: !152, isLocal: true, isDefinition: true)
!2814 = !DIGlobalVariableExpression(var: !2815, expr: !DIExpression())
!2815 = distinct !DIGlobalVariable(name: "micron_nand_on_die_8_ooblayout_ops", scope: !2, file: !3, line: 161, type: !152, isLocal: true, isDefinition: true)
!2816 = !{i32 7, !"Dwarf Version", i32 4}
!2817 = !{i32 2, !"Debug Info Version", i32 3}
!2818 = !{i32 1, !"wchar_size", i32 2}
!2819 = !{i32 1, !"Code Model", i32 2}
!2820 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2821 = distinct !DISubprogram(name: "micron_nand_init", scope: !3, file: !3, line: 477, type: !2461, scopeLine: 478, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2822 = !DILocalVariable(name: "s", arg: 1, scope: !2823, file: !95, line: 445, type: !1260)
!2823 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !95, file: !95, line: 445, type: !2824, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!104, !1260, !102, !218}
!2826 = !DILocation(line: 445, column: 72, scope: !2823, inlinedAt: !2827)
!2827 = distinct !DILocation(line: 552, column: 10, scope: !2828, inlinedAt: !2833)
!2828 = distinct !DILexicalBlock(scope: !2829, file: !95, line: 540, column: 34)
!2829 = distinct !DILexicalBlock(scope: !2830, file: !95, line: 540, column: 6)
!2830 = distinct !DISubprogram(name: "kmalloc", scope: !95, file: !95, line: 538, type: !2831, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{!104, !218, !102}
!2833 = distinct !DILocation(line: 532, column: 25, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2835, file: !3, line: 531, column: 36)
!2835 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 531, column: 7)
!2836 = distinct !DILexicalBlock(scope: !2837, file: !3, line: 511, column: 60)
!2837 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 511, column: 6)
!2838 = !DILocalVariable(name: "flags", arg: 2, scope: !2823, file: !95, line: 446, type: !102)
!2839 = !DILocation(line: 446, column: 9, scope: !2823, inlinedAt: !2827)
!2840 = !DILocalVariable(name: "size", arg: 3, scope: !2823, file: !95, line: 446, type: !218)
!2841 = !DILocation(line: 446, column: 23, scope: !2823, inlinedAt: !2827)
!2842 = !DILocalVariable(name: "ret", scope: !2823, file: !95, line: 448, type: !104)
!2843 = !DILocation(line: 448, column: 8, scope: !2823, inlinedAt: !2827)
!2844 = !DILocalVariable(name: "flags", arg: 1, scope: !2845, file: !95, line: 318, type: !102)
!2845 = distinct !DISubprogram(name: "kmalloc_type", scope: !95, file: !95, line: 318, type: !2846, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2846 = !DISubroutineType(types: !2847)
!2847 = !{!94, !102}
!2848 = !DILocation(line: 318, column: 67, scope: !2845, inlinedAt: !2849)
!2849 = distinct !DILocation(line: 553, column: 20, scope: !2828, inlinedAt: !2833)
!2850 = !DILocalVariable(name: "size", arg: 1, scope: !2851, file: !95, line: 346, type: !218)
!2851 = distinct !DISubprogram(name: "kmalloc_index", scope: !95, file: !95, line: 346, type: !2852, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2852 = !DISubroutineType(types: !2853)
!2853 = !{!7, !218}
!2854 = !DILocation(line: 346, column: 58, scope: !2851, inlinedAt: !2855)
!2855 = distinct !DILocation(line: 547, column: 11, scope: !2828, inlinedAt: !2833)
!2856 = !DILocalVariable(name: "size", arg: 1, scope: !2857, file: !95, line: 472, type: !218)
!2857 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !95, file: !95, line: 472, type: !2858, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2858 = !DISubroutineType(types: !2859)
!2859 = !{!104, !218, !102, !7}
!2860 = !DILocation(line: 472, column: 28, scope: !2857, inlinedAt: !2861)
!2861 = distinct !DILocation(line: 481, column: 9, scope: !2862, inlinedAt: !2863)
!2862 = distinct !DISubprogram(name: "kmalloc_large", scope: !95, file: !95, line: 478, type: !2831, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!2863 = distinct !DILocation(line: 545, column: 11, scope: !2864, inlinedAt: !2833)
!2864 = distinct !DILexicalBlock(scope: !2828, file: !95, line: 544, column: 7)
!2865 = !DILocalVariable(name: "flags", arg: 2, scope: !2857, file: !95, line: 472, type: !102)
!2866 = !DILocation(line: 472, column: 40, scope: !2857, inlinedAt: !2861)
!2867 = !DILocalVariable(name: "order", arg: 3, scope: !2857, file: !95, line: 472, type: !7)
!2868 = !DILocation(line: 472, column: 60, scope: !2857, inlinedAt: !2861)
!2869 = !DILocalVariable(name: "size", arg: 1, scope: !2862, file: !95, line: 478, type: !218)
!2870 = !DILocation(line: 478, column: 51, scope: !2862, inlinedAt: !2863)
!2871 = !DILocalVariable(name: "flags", arg: 2, scope: !2862, file: !95, line: 478, type: !102)
!2872 = !DILocation(line: 478, column: 63, scope: !2862, inlinedAt: !2863)
!2873 = !DILocalVariable(name: "order", scope: !2862, file: !95, line: 480, type: !7)
!2874 = !DILocation(line: 480, column: 15, scope: !2862, inlinedAt: !2863)
!2875 = !DILocalVariable(name: "size", arg: 1, scope: !2830, file: !95, line: 538, type: !218)
!2876 = !DILocation(line: 538, column: 45, scope: !2830, inlinedAt: !2833)
!2877 = !DILocalVariable(name: "flags", arg: 2, scope: !2830, file: !95, line: 538, type: !102)
!2878 = !DILocation(line: 538, column: 57, scope: !2830, inlinedAt: !2833)
!2879 = !DILocalVariable(name: "index", scope: !2828, file: !95, line: 542, type: !7)
!2880 = !DILocation(line: 542, column: 16, scope: !2828, inlinedAt: !2833)
!2881 = !DILocalVariable(name: "chip", arg: 1, scope: !2821, file: !3, line: 477, type: !112)
!2882 = !DILocation(line: 477, column: 47, scope: !2821)
!2883 = !DILocalVariable(name: "base", scope: !2821, file: !3, line: 479, type: !2346)
!2884 = !DILocation(line: 479, column: 22, scope: !2821)
!2885 = !DILocation(line: 479, column: 30, scope: !2821)
!2886 = !DILocation(line: 479, column: 36, scope: !2821)
!2887 = !DILocalVariable(name: "requirements", scope: !2821, file: !3, line: 480, type: !2888)
!2888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2889 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2318)
!2890 = !DILocation(line: 480, column: 31, scope: !2821)
!2891 = !DILocation(line: 481, column: 32, scope: !2821)
!2892 = !DILocation(line: 481, column: 3, scope: !2821)
!2893 = !DILocalVariable(name: "mtd", scope: !2821, file: !3, line: 482, type: !159)
!2894 = !DILocation(line: 482, column: 19, scope: !2821)
!2895 = !DILocation(line: 482, column: 37, scope: !2821)
!2896 = !DILocation(line: 482, column: 25, scope: !2821)
!2897 = !DILocalVariable(name: "micron", scope: !2821, file: !3, line: 483, type: !2898)
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "micron_nand", file: !3, line: 65, size: 128, elements: !2900)
!2900 = !{!2901}
!2901 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !2899, file: !3, line: 66, baseType: !2902, size: 128)
!2902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "micron_on_die_ecc", file: !3, line: 59, size: 128, elements: !2903)
!2903 = !{!2904, !2905, !2906}
!2904 = !DIDerivedType(tag: DW_TAG_member, name: "forced", scope: !2902, file: !3, line: 60, baseType: !315, size: 8)
!2905 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2902, file: !3, line: 61, baseType: !315, size: 8, offset: 8)
!2906 = !DIDerivedType(tag: DW_TAG_member, name: "rawbuf", scope: !2902, file: !3, line: 62, baseType: !104, size: 64, offset: 64)
!2907 = !DILocation(line: 483, column: 22, scope: !2821)
!2908 = !DILocalVariable(name: "ondie", scope: !2821, file: !3, line: 484, type: !111)
!2909 = !DILocation(line: 484, column: 6, scope: !2821)
!2910 = !DILocalVariable(name: "ret", scope: !2821, file: !3, line: 485, type: !111)
!2911 = !DILocation(line: 485, column: 6, scope: !2821)
!2912 = !DILocation(line: 487, column: 11, scope: !2821)
!2913 = !DILocation(line: 487, column: 9, scope: !2821)
!2914 = !DILocation(line: 488, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 488, column: 6)
!2916 = !DILocation(line: 488, column: 6, scope: !2821)
!2917 = !DILocation(line: 489, column: 3, scope: !2915)
!2918 = !DILocation(line: 491, column: 29, scope: !2821)
!2919 = !DILocation(line: 491, column: 35, scope: !2821)
!2920 = !DILocation(line: 491, column: 2, scope: !2821)
!2921 = !DILocation(line: 493, column: 30, scope: !2821)
!2922 = !DILocation(line: 493, column: 8, scope: !2821)
!2923 = !DILocation(line: 493, column: 6, scope: !2821)
!2924 = !DILocation(line: 494, column: 6, scope: !2925)
!2925 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 494, column: 6)
!2926 = !DILocation(line: 494, column: 6, scope: !2821)
!2927 = !DILocation(line: 495, column: 3, scope: !2925)
!2928 = !DILocation(line: 497, column: 2, scope: !2821)
!2929 = !DILocation(line: 497, column: 8, scope: !2821)
!2930 = !DILocation(line: 497, column: 16, scope: !2821)
!2931 = !DILocation(line: 499, column: 6, scope: !2932)
!2932 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 499, column: 6)
!2933 = !DILocation(line: 499, column: 11, scope: !2932)
!2934 = !DILocation(line: 499, column: 21, scope: !2932)
!2935 = !DILocation(line: 499, column: 6, scope: !2821)
!2936 = !DILocation(line: 500, column: 3, scope: !2932)
!2937 = !DILocation(line: 500, column: 9, scope: !2932)
!2938 = !DILocation(line: 500, column: 17, scope: !2932)
!2939 = !DILocation(line: 502, column: 37, scope: !2821)
!2940 = !DILocation(line: 502, column: 10, scope: !2821)
!2941 = !DILocation(line: 502, column: 8, scope: !2821)
!2942 = !DILocation(line: 504, column: 6, scope: !2943)
!2943 = distinct !DILexicalBlock(scope: !2821, file: !3, line: 504, column: 6)
!2944 = !DILocation(line: 504, column: 12, scope: !2943)
!2945 = !DILocation(line: 504, column: 39, scope: !2943)
!2946 = !DILocation(line: 505, column: 6, scope: !2943)
!2947 = !DILocation(line: 505, column: 12, scope: !2943)
!2948 = !DILocation(line: 505, column: 16, scope: !2943)
!2949 = !DILocation(line: 505, column: 28, scope: !2943)
!2950 = !DILocation(line: 504, column: 6, scope: !2821)
!2951 = !DILocation(line: 506, column: 3, scope: !2952)
!2952 = distinct !DILexicalBlock(scope: !2943, file: !3, line: 505, column: 60)
!2953 = !DILocation(line: 507, column: 7, scope: !2952)
!2954 = !DILocation(line: 508, column: 3, scope: !2952)
!2955 = !DILocation(line: 511, column: 6, scope: !2837)
!2956 = !DILocation(line: 511, column: 12, scope: !2837)
!2957 = !DILocation(line: 511, column: 16, scope: !2837)
!2958 = !DILocation(line: 511, column: 28, scope: !2837)
!2959 = !DILocation(line: 511, column: 6, scope: !2821)
!2960 = !DILocation(line: 512, column: 7, scope: !2961)
!2961 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 512, column: 7)
!2962 = !DILocation(line: 512, column: 13, scope: !2961)
!2963 = !DILocation(line: 512, column: 7, scope: !2836)
!2964 = !DILocation(line: 513, column: 4, scope: !2965)
!2965 = distinct !DILexicalBlock(scope: !2961, file: !3, line: 512, column: 43)
!2966 = !DILocation(line: 514, column: 8, scope: !2965)
!2967 = !DILocation(line: 515, column: 4, scope: !2965)
!2968 = !DILocation(line: 518, column: 7, scope: !2969)
!2969 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 518, column: 7)
!2970 = !DILocation(line: 518, column: 13, scope: !2969)
!2971 = !DILocation(line: 518, column: 7, scope: !2836)
!2972 = !DILocation(line: 519, column: 4, scope: !2973)
!2973 = distinct !DILexicalBlock(scope: !2969, file: !3, line: 518, column: 41)
!2974 = !DILocation(line: 519, column: 12, scope: !2973)
!2975 = !DILocation(line: 519, column: 16, scope: !2973)
!2976 = !DILocation(line: 519, column: 23, scope: !2973)
!2977 = !DILocation(line: 520, column: 4, scope: !2973)
!2978 = !DILocation(line: 520, column: 12, scope: !2973)
!2979 = !DILocation(line: 520, column: 16, scope: !2973)
!2980 = !DILocation(line: 520, column: 24, scope: !2973)
!2981 = !DILocation(line: 521, column: 3, scope: !2973)
!2982 = !DILocation(line: 531, column: 7, scope: !2835)
!2983 = !DILocation(line: 531, column: 21, scope: !2835)
!2984 = !DILocation(line: 531, column: 30, scope: !2835)
!2985 = !DILocation(line: 531, column: 7, scope: !2836)
!2986 = !DILocation(line: 532, column: 33, scope: !2834)
!2987 = !DILocation(line: 532, column: 38, scope: !2834)
!2988 = !DILocation(line: 533, column: 12, scope: !2834)
!2989 = !DILocation(line: 533, column: 17, scope: !2834)
!2990 = !DILocation(line: 532, column: 48, scope: !2834)
!2991 = !DILocation(line: 540, column: 27, scope: !2829, inlinedAt: !2833)
!2992 = !DILocation(line: 540, column: 6, scope: !2829, inlinedAt: !2833)
!2993 = !DILocation(line: 540, column: 6, scope: !2830, inlinedAt: !2833)
!2994 = !DILocation(line: 544, column: 7, scope: !2864, inlinedAt: !2833)
!2995 = !DILocation(line: 544, column: 12, scope: !2864, inlinedAt: !2833)
!2996 = !DILocation(line: 544, column: 7, scope: !2828, inlinedAt: !2833)
!2997 = !DILocation(line: 545, column: 25, scope: !2864, inlinedAt: !2833)
!2998 = !DILocation(line: 545, column: 31, scope: !2864, inlinedAt: !2833)
!2999 = !DILocation(line: 480, column: 33, scope: !2862, inlinedAt: !2863)
!3000 = !DILocation(line: 480, column: 23, scope: !2862, inlinedAt: !2863)
!3001 = !DILocation(line: 481, column: 29, scope: !2862, inlinedAt: !2863)
!3002 = !DILocation(line: 481, column: 35, scope: !2862, inlinedAt: !2863)
!3003 = !DILocation(line: 481, column: 42, scope: !2862, inlinedAt: !2863)
!3004 = !DILocation(line: 474, column: 23, scope: !2857, inlinedAt: !2861)
!3005 = !DILocation(line: 474, column: 29, scope: !2857, inlinedAt: !2861)
!3006 = !DILocation(line: 474, column: 36, scope: !2857, inlinedAt: !2861)
!3007 = !DILocation(line: 474, column: 9, scope: !2857, inlinedAt: !2861)
!3008 = !DILocation(line: 545, column: 4, scope: !2864, inlinedAt: !2833)
!3009 = !DILocation(line: 547, column: 25, scope: !2828, inlinedAt: !2833)
!3010 = !DILocation(line: 348, column: 7, scope: !3011, inlinedAt: !2855)
!3011 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 348, column: 6)
!3012 = !DILocation(line: 348, column: 6, scope: !2851, inlinedAt: !2855)
!3013 = !DILocation(line: 349, column: 3, scope: !3011, inlinedAt: !2855)
!3014 = !DILocation(line: 351, column: 6, scope: !3015, inlinedAt: !2855)
!3015 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 351, column: 6)
!3016 = !DILocation(line: 351, column: 11, scope: !3015, inlinedAt: !2855)
!3017 = !DILocation(line: 351, column: 6, scope: !2851, inlinedAt: !2855)
!3018 = !DILocation(line: 352, column: 3, scope: !3015, inlinedAt: !2855)
!3019 = !DILocation(line: 354, column: 32, scope: !3020, inlinedAt: !2855)
!3020 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 354, column: 6)
!3021 = !DILocation(line: 354, column: 37, scope: !3020, inlinedAt: !2855)
!3022 = !DILocation(line: 354, column: 42, scope: !3020, inlinedAt: !2855)
!3023 = !DILocation(line: 354, column: 45, scope: !3020, inlinedAt: !2855)
!3024 = !DILocation(line: 354, column: 50, scope: !3020, inlinedAt: !2855)
!3025 = !DILocation(line: 354, column: 6, scope: !2851, inlinedAt: !2855)
!3026 = !DILocation(line: 355, column: 3, scope: !3020, inlinedAt: !2855)
!3027 = !DILocation(line: 356, column: 32, scope: !3028, inlinedAt: !2855)
!3028 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 356, column: 6)
!3029 = !DILocation(line: 356, column: 37, scope: !3028, inlinedAt: !2855)
!3030 = !DILocation(line: 356, column: 43, scope: !3028, inlinedAt: !2855)
!3031 = !DILocation(line: 356, column: 46, scope: !3028, inlinedAt: !2855)
!3032 = !DILocation(line: 356, column: 51, scope: !3028, inlinedAt: !2855)
!3033 = !DILocation(line: 356, column: 6, scope: !2851, inlinedAt: !2855)
!3034 = !DILocation(line: 357, column: 3, scope: !3028, inlinedAt: !2855)
!3035 = !DILocation(line: 358, column: 6, scope: !3036, inlinedAt: !2855)
!3036 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 358, column: 6)
!3037 = !DILocation(line: 358, column: 11, scope: !3036, inlinedAt: !2855)
!3038 = !DILocation(line: 358, column: 6, scope: !2851, inlinedAt: !2855)
!3039 = !DILocation(line: 358, column: 26, scope: !3036, inlinedAt: !2855)
!3040 = !DILocation(line: 359, column: 6, scope: !3041, inlinedAt: !2855)
!3041 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 359, column: 6)
!3042 = !DILocation(line: 359, column: 11, scope: !3041, inlinedAt: !2855)
!3043 = !DILocation(line: 359, column: 6, scope: !2851, inlinedAt: !2855)
!3044 = !DILocation(line: 359, column: 26, scope: !3041, inlinedAt: !2855)
!3045 = !DILocation(line: 360, column: 6, scope: !3046, inlinedAt: !2855)
!3046 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 360, column: 6)
!3047 = !DILocation(line: 360, column: 11, scope: !3046, inlinedAt: !2855)
!3048 = !DILocation(line: 360, column: 6, scope: !2851, inlinedAt: !2855)
!3049 = !DILocation(line: 360, column: 26, scope: !3046, inlinedAt: !2855)
!3050 = !DILocation(line: 361, column: 6, scope: !3051, inlinedAt: !2855)
!3051 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 361, column: 6)
!3052 = !DILocation(line: 361, column: 11, scope: !3051, inlinedAt: !2855)
!3053 = !DILocation(line: 361, column: 6, scope: !2851, inlinedAt: !2855)
!3054 = !DILocation(line: 361, column: 26, scope: !3051, inlinedAt: !2855)
!3055 = !DILocation(line: 362, column: 6, scope: !3056, inlinedAt: !2855)
!3056 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 362, column: 6)
!3057 = !DILocation(line: 362, column: 11, scope: !3056, inlinedAt: !2855)
!3058 = !DILocation(line: 362, column: 6, scope: !2851, inlinedAt: !2855)
!3059 = !DILocation(line: 362, column: 26, scope: !3056, inlinedAt: !2855)
!3060 = !DILocation(line: 363, column: 6, scope: !3061, inlinedAt: !2855)
!3061 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 363, column: 6)
!3062 = !DILocation(line: 363, column: 11, scope: !3061, inlinedAt: !2855)
!3063 = !DILocation(line: 363, column: 6, scope: !2851, inlinedAt: !2855)
!3064 = !DILocation(line: 363, column: 26, scope: !3061, inlinedAt: !2855)
!3065 = !DILocation(line: 364, column: 6, scope: !3066, inlinedAt: !2855)
!3066 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 364, column: 6)
!3067 = !DILocation(line: 364, column: 11, scope: !3066, inlinedAt: !2855)
!3068 = !DILocation(line: 364, column: 6, scope: !2851, inlinedAt: !2855)
!3069 = !DILocation(line: 364, column: 26, scope: !3066, inlinedAt: !2855)
!3070 = !DILocation(line: 365, column: 6, scope: !3071, inlinedAt: !2855)
!3071 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 365, column: 6)
!3072 = !DILocation(line: 365, column: 11, scope: !3071, inlinedAt: !2855)
!3073 = !DILocation(line: 365, column: 6, scope: !2851, inlinedAt: !2855)
!3074 = !DILocation(line: 365, column: 26, scope: !3071, inlinedAt: !2855)
!3075 = !DILocation(line: 366, column: 6, scope: !3076, inlinedAt: !2855)
!3076 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 366, column: 6)
!3077 = !DILocation(line: 366, column: 11, scope: !3076, inlinedAt: !2855)
!3078 = !DILocation(line: 366, column: 6, scope: !2851, inlinedAt: !2855)
!3079 = !DILocation(line: 366, column: 26, scope: !3076, inlinedAt: !2855)
!3080 = !DILocation(line: 367, column: 6, scope: !3081, inlinedAt: !2855)
!3081 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 367, column: 6)
!3082 = !DILocation(line: 367, column: 11, scope: !3081, inlinedAt: !2855)
!3083 = !DILocation(line: 367, column: 6, scope: !2851, inlinedAt: !2855)
!3084 = !DILocation(line: 367, column: 26, scope: !3081, inlinedAt: !2855)
!3085 = !DILocation(line: 368, column: 6, scope: !3086, inlinedAt: !2855)
!3086 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 368, column: 6)
!3087 = !DILocation(line: 368, column: 11, scope: !3086, inlinedAt: !2855)
!3088 = !DILocation(line: 368, column: 6, scope: !2851, inlinedAt: !2855)
!3089 = !DILocation(line: 368, column: 26, scope: !3086, inlinedAt: !2855)
!3090 = !DILocation(line: 369, column: 6, scope: !3091, inlinedAt: !2855)
!3091 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 369, column: 6)
!3092 = !DILocation(line: 369, column: 11, scope: !3091, inlinedAt: !2855)
!3093 = !DILocation(line: 369, column: 6, scope: !2851, inlinedAt: !2855)
!3094 = !DILocation(line: 369, column: 26, scope: !3091, inlinedAt: !2855)
!3095 = !DILocation(line: 370, column: 6, scope: !3096, inlinedAt: !2855)
!3096 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 370, column: 6)
!3097 = !DILocation(line: 370, column: 11, scope: !3096, inlinedAt: !2855)
!3098 = !DILocation(line: 370, column: 6, scope: !2851, inlinedAt: !2855)
!3099 = !DILocation(line: 370, column: 26, scope: !3096, inlinedAt: !2855)
!3100 = !DILocation(line: 371, column: 6, scope: !3101, inlinedAt: !2855)
!3101 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 371, column: 6)
!3102 = !DILocation(line: 371, column: 11, scope: !3101, inlinedAt: !2855)
!3103 = !DILocation(line: 371, column: 6, scope: !2851, inlinedAt: !2855)
!3104 = !DILocation(line: 371, column: 26, scope: !3101, inlinedAt: !2855)
!3105 = !DILocation(line: 372, column: 6, scope: !3106, inlinedAt: !2855)
!3106 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 372, column: 6)
!3107 = !DILocation(line: 372, column: 11, scope: !3106, inlinedAt: !2855)
!3108 = !DILocation(line: 372, column: 6, scope: !2851, inlinedAt: !2855)
!3109 = !DILocation(line: 372, column: 26, scope: !3106, inlinedAt: !2855)
!3110 = !DILocation(line: 373, column: 6, scope: !3111, inlinedAt: !2855)
!3111 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 373, column: 6)
!3112 = !DILocation(line: 373, column: 11, scope: !3111, inlinedAt: !2855)
!3113 = !DILocation(line: 373, column: 6, scope: !2851, inlinedAt: !2855)
!3114 = !DILocation(line: 373, column: 26, scope: !3111, inlinedAt: !2855)
!3115 = !DILocation(line: 374, column: 6, scope: !3116, inlinedAt: !2855)
!3116 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 374, column: 6)
!3117 = !DILocation(line: 374, column: 11, scope: !3116, inlinedAt: !2855)
!3118 = !DILocation(line: 374, column: 6, scope: !2851, inlinedAt: !2855)
!3119 = !DILocation(line: 374, column: 26, scope: !3116, inlinedAt: !2855)
!3120 = !DILocation(line: 375, column: 6, scope: !3121, inlinedAt: !2855)
!3121 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 375, column: 6)
!3122 = !DILocation(line: 375, column: 11, scope: !3121, inlinedAt: !2855)
!3123 = !DILocation(line: 375, column: 6, scope: !2851, inlinedAt: !2855)
!3124 = !DILocation(line: 375, column: 27, scope: !3121, inlinedAt: !2855)
!3125 = !DILocation(line: 376, column: 6, scope: !3126, inlinedAt: !2855)
!3126 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 376, column: 6)
!3127 = !DILocation(line: 376, column: 11, scope: !3126, inlinedAt: !2855)
!3128 = !DILocation(line: 376, column: 6, scope: !2851, inlinedAt: !2855)
!3129 = !DILocation(line: 376, column: 32, scope: !3126, inlinedAt: !2855)
!3130 = !DILocation(line: 377, column: 6, scope: !3131, inlinedAt: !2855)
!3131 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 377, column: 6)
!3132 = !DILocation(line: 377, column: 11, scope: !3131, inlinedAt: !2855)
!3133 = !DILocation(line: 377, column: 6, scope: !2851, inlinedAt: !2855)
!3134 = !DILocation(line: 377, column: 32, scope: !3131, inlinedAt: !2855)
!3135 = !DILocation(line: 378, column: 6, scope: !3136, inlinedAt: !2855)
!3136 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 378, column: 6)
!3137 = !DILocation(line: 378, column: 11, scope: !3136, inlinedAt: !2855)
!3138 = !DILocation(line: 378, column: 6, scope: !2851, inlinedAt: !2855)
!3139 = !DILocation(line: 378, column: 32, scope: !3136, inlinedAt: !2855)
!3140 = !DILocation(line: 379, column: 6, scope: !3141, inlinedAt: !2855)
!3141 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 379, column: 6)
!3142 = !DILocation(line: 379, column: 11, scope: !3141, inlinedAt: !2855)
!3143 = !DILocation(line: 379, column: 6, scope: !2851, inlinedAt: !2855)
!3144 = !DILocation(line: 379, column: 33, scope: !3141, inlinedAt: !2855)
!3145 = !DILocation(line: 380, column: 6, scope: !3146, inlinedAt: !2855)
!3146 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 380, column: 6)
!3147 = !DILocation(line: 380, column: 11, scope: !3146, inlinedAt: !2855)
!3148 = !DILocation(line: 380, column: 6, scope: !2851, inlinedAt: !2855)
!3149 = !DILocation(line: 380, column: 33, scope: !3146, inlinedAt: !2855)
!3150 = !DILocation(line: 381, column: 6, scope: !3151, inlinedAt: !2855)
!3151 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 381, column: 6)
!3152 = !DILocation(line: 381, column: 11, scope: !3151, inlinedAt: !2855)
!3153 = !DILocation(line: 381, column: 6, scope: !2851, inlinedAt: !2855)
!3154 = !DILocation(line: 381, column: 33, scope: !3151, inlinedAt: !2855)
!3155 = !DILocation(line: 382, column: 2, scope: !3156, inlinedAt: !2855)
!3156 = distinct !DILexicalBlock(scope: !3157, file: !95, line: 382, column: 2)
!3157 = distinct !DILexicalBlock(scope: !2851, file: !95, line: 382, column: 2)
!3158 = !{i32 -2144639443, i32 -2144639414, i32 -2144639368, i32 -2144639310, i32 -2144639256, i32 -2144639202, i32 -2144639147, i32 -2144639116}
!3159 = !DILocation(line: 382, column: 2, scope: !3160, inlinedAt: !2855)
!3160 = distinct !DILexicalBlock(scope: !3161, file: !95, line: 382, column: 2)
!3161 = distinct !DILexicalBlock(scope: !3157, file: !95, line: 382, column: 2)
!3162 = !{i32 -2144638673, i32 -2144638666, i32 -2144638612, i32 -2144638581, i32 -2144638551}
!3163 = !DILocation(line: 382, column: 2, scope: !3161, inlinedAt: !2855)
!3164 = !DILocation(line: 386, column: 1, scope: !2851, inlinedAt: !2855)
!3165 = !DILocation(line: 547, column: 9, scope: !2828, inlinedAt: !2833)
!3166 = !DILocation(line: 549, column: 8, scope: !3167, inlinedAt: !2833)
!3167 = distinct !DILexicalBlock(scope: !2828, file: !95, line: 549, column: 7)
!3168 = !DILocation(line: 549, column: 7, scope: !2828, inlinedAt: !2833)
!3169 = !DILocation(line: 550, column: 4, scope: !3167, inlinedAt: !2833)
!3170 = !DILocation(line: 553, column: 33, scope: !2828, inlinedAt: !2833)
!3171 = !DILocation(line: 325, column: 6, scope: !3172, inlinedAt: !2849)
!3172 = distinct !DILexicalBlock(scope: !2845, file: !95, line: 325, column: 6)
!3173 = !DILocation(line: 325, column: 6, scope: !2845, inlinedAt: !2849)
!3174 = !DILocation(line: 326, column: 3, scope: !3172, inlinedAt: !2849)
!3175 = !DILocation(line: 332, column: 9, scope: !2845, inlinedAt: !2849)
!3176 = !DILocation(line: 332, column: 15, scope: !2845, inlinedAt: !2849)
!3177 = !DILocation(line: 332, column: 2, scope: !2845, inlinedAt: !2849)
!3178 = !DILocation(line: 336, column: 1, scope: !2845, inlinedAt: !2849)
!3179 = !DILocation(line: 553, column: 5, scope: !2828, inlinedAt: !2833)
!3180 = !DILocation(line: 553, column: 41, scope: !2828, inlinedAt: !2833)
!3181 = !DILocation(line: 554, column: 5, scope: !2828, inlinedAt: !2833)
!3182 = !DILocation(line: 554, column: 12, scope: !2828, inlinedAt: !2833)
!3183 = !DILocation(line: 448, column: 31, scope: !2823, inlinedAt: !2827)
!3184 = !DILocation(line: 448, column: 34, scope: !2823, inlinedAt: !2827)
!3185 = !DILocation(line: 448, column: 14, scope: !2823, inlinedAt: !2827)
!3186 = !DILocation(line: 450, column: 22, scope: !2823, inlinedAt: !2827)
!3187 = !DILocation(line: 450, column: 25, scope: !2823, inlinedAt: !2827)
!3188 = !DILocation(line: 450, column: 30, scope: !2823, inlinedAt: !2827)
!3189 = !DILocation(line: 450, column: 36, scope: !2823, inlinedAt: !2827)
!3190 = !DILocation(line: 450, column: 8, scope: !2823, inlinedAt: !2827)
!3191 = !DILocation(line: 450, column: 6, scope: !2823, inlinedAt: !2827)
!3192 = !DILocation(line: 451, column: 9, scope: !2823, inlinedAt: !2827)
!3193 = !DILocation(line: 552, column: 3, scope: !2828, inlinedAt: !2833)
!3194 = !DILocation(line: 557, column: 19, scope: !2830, inlinedAt: !2833)
!3195 = !DILocation(line: 557, column: 25, scope: !2830, inlinedAt: !2833)
!3196 = !DILocation(line: 557, column: 9, scope: !2830, inlinedAt: !2833)
!3197 = !DILocation(line: 557, column: 2, scope: !2830, inlinedAt: !2833)
!3198 = !DILocation(line: 558, column: 1, scope: !2830, inlinedAt: !2833)
!3199 = !DILocation(line: 532, column: 4, scope: !2834)
!3200 = !DILocation(line: 532, column: 12, scope: !2834)
!3201 = !DILocation(line: 532, column: 16, scope: !2834)
!3202 = !DILocation(line: 532, column: 23, scope: !2834)
!3203 = !DILocation(line: 535, column: 9, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 535, column: 8)
!3205 = !DILocation(line: 535, column: 17, scope: !3204)
!3206 = !DILocation(line: 535, column: 21, scope: !3204)
!3207 = !DILocation(line: 535, column: 8, scope: !2834)
!3208 = !DILocation(line: 536, column: 9, scope: !3209)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !3, line: 535, column: 29)
!3210 = !DILocation(line: 537, column: 5, scope: !3209)
!3211 = !DILocation(line: 539, column: 3, scope: !2834)
!3212 = !DILocation(line: 541, column: 7, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 541, column: 7)
!3214 = !DILocation(line: 541, column: 21, scope: !3213)
!3215 = !DILocation(line: 541, column: 30, scope: !3213)
!3216 = !DILocation(line: 541, column: 7, scope: !2836)
!3217 = !DILocation(line: 542, column: 22, scope: !3213)
!3218 = !DILocation(line: 542, column: 4, scope: !3213)
!3219 = !DILocation(line: 545, column: 22, scope: !3213)
!3220 = !DILocation(line: 545, column: 4, scope: !3213)
!3221 = !DILocation(line: 548, column: 21, scope: !2836)
!3222 = !DILocation(line: 548, column: 35, scope: !2836)
!3223 = !DILocation(line: 548, column: 44, scope: !2836)
!3224 = !DILocation(line: 548, column: 3, scope: !2836)
!3225 = !DILocation(line: 548, column: 9, scope: !2836)
!3226 = !DILocation(line: 548, column: 13, scope: !2836)
!3227 = !DILocation(line: 548, column: 19, scope: !2836)
!3228 = !DILocation(line: 549, column: 3, scope: !2836)
!3229 = !DILocation(line: 549, column: 9, scope: !2836)
!3230 = !DILocation(line: 549, column: 13, scope: !2836)
!3231 = !DILocation(line: 549, column: 18, scope: !2836)
!3232 = !DILocation(line: 550, column: 24, scope: !2836)
!3233 = !DILocation(line: 550, column: 38, scope: !2836)
!3234 = !DILocation(line: 550, column: 3, scope: !2836)
!3235 = !DILocation(line: 550, column: 9, scope: !2836)
!3236 = !DILocation(line: 550, column: 13, scope: !2836)
!3237 = !DILocation(line: 550, column: 22, scope: !2836)
!3238 = !DILocation(line: 551, column: 3, scope: !2836)
!3239 = !DILocation(line: 551, column: 9, scope: !2836)
!3240 = !DILocation(line: 551, column: 13, scope: !2836)
!3241 = !DILocation(line: 551, column: 18, scope: !2836)
!3242 = !DILocation(line: 552, column: 3, scope: !2836)
!3243 = !DILocation(line: 552, column: 9, scope: !2836)
!3244 = !DILocation(line: 552, column: 13, scope: !2836)
!3245 = !DILocation(line: 552, column: 23, scope: !2836)
!3246 = !DILocation(line: 553, column: 3, scope: !2836)
!3247 = !DILocation(line: 553, column: 9, scope: !2836)
!3248 = !DILocation(line: 553, column: 13, scope: !2836)
!3249 = !DILocation(line: 553, column: 24, scope: !2836)
!3250 = !DILocation(line: 555, column: 7, scope: !3251)
!3251 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 555, column: 7)
!3252 = !DILocation(line: 555, column: 13, scope: !3251)
!3253 = !DILocation(line: 555, column: 7, scope: !2836)
!3254 = !DILocation(line: 556, column: 4, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 555, column: 41)
!3256 = !DILocation(line: 556, column: 10, scope: !3255)
!3257 = !DILocation(line: 556, column: 14, scope: !3255)
!3258 = !DILocation(line: 556, column: 28, scope: !3255)
!3259 = !DILocation(line: 557, column: 4, scope: !3255)
!3260 = !DILocation(line: 557, column: 10, scope: !3255)
!3261 = !DILocation(line: 557, column: 14, scope: !3255)
!3262 = !DILocation(line: 557, column: 29, scope: !3255)
!3263 = !DILocation(line: 558, column: 3, scope: !3255)
!3264 = !DILocation(line: 559, column: 9, scope: !3265)
!3265 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 559, column: 8)
!3266 = distinct !DILexicalBlock(scope: !3251, file: !3, line: 558, column: 10)
!3267 = !DILocation(line: 559, column: 15, scope: !3265)
!3268 = !DILocation(line: 559, column: 19, scope: !3265)
!3269 = !DILocation(line: 559, column: 8, scope: !3266)
!3270 = !DILocation(line: 560, column: 5, scope: !3265)
!3271 = !DILocation(line: 560, column: 11, scope: !3265)
!3272 = !DILocation(line: 560, column: 15, scope: !3265)
!3273 = !DILocation(line: 560, column: 29, scope: !3265)
!3274 = !DILocation(line: 561, column: 9, scope: !3275)
!3275 = distinct !DILexicalBlock(scope: !3266, file: !3, line: 561, column: 8)
!3276 = !DILocation(line: 561, column: 15, scope: !3275)
!3277 = !DILocation(line: 561, column: 19, scope: !3275)
!3278 = !DILocation(line: 561, column: 8, scope: !3266)
!3279 = !DILocation(line: 562, column: 5, scope: !3275)
!3280 = !DILocation(line: 562, column: 11, scope: !3275)
!3281 = !DILocation(line: 562, column: 15, scope: !3275)
!3282 = !DILocation(line: 562, column: 30, scope: !3275)
!3283 = !DILocation(line: 564, column: 2, scope: !2836)
!3284 = !DILocation(line: 566, column: 2, scope: !2821)
!3285 = !DILabel(scope: !2821, name: "err_free_manuf_data", file: !3, line: 568)
!3286 = !DILocation(line: 568, column: 1, scope: !2821)
!3287 = !DILocation(line: 569, column: 8, scope: !2821)
!3288 = !DILocation(line: 569, column: 16, scope: !2821)
!3289 = !DILocation(line: 569, column: 20, scope: !2821)
!3290 = !DILocation(line: 569, column: 2, scope: !2821)
!3291 = !DILocation(line: 570, column: 8, scope: !2821)
!3292 = !DILocation(line: 570, column: 2, scope: !2821)
!3293 = !DILocation(line: 572, column: 9, scope: !2821)
!3294 = !DILocation(line: 572, column: 2, scope: !2821)
!3295 = !DILocation(line: 573, column: 1, scope: !2821)
!3296 = distinct !DISubprogram(name: "micron_nand_cleanup", scope: !3, file: !3, line: 575, type: !2457, scopeLine: 576, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3297 = !DILocalVariable(name: "chip", arg: 1, scope: !3296, file: !3, line: 575, type: !112)
!3298 = !DILocation(line: 575, column: 51, scope: !3296)
!3299 = !DILocalVariable(name: "micron", scope: !3296, file: !3, line: 577, type: !2898)
!3300 = !DILocation(line: 577, column: 22, scope: !3296)
!3301 = !DILocation(line: 577, column: 58, scope: !3296)
!3302 = !DILocation(line: 577, column: 31, scope: !3296)
!3303 = !DILocation(line: 579, column: 8, scope: !3296)
!3304 = !DILocation(line: 579, column: 16, scope: !3296)
!3305 = !DILocation(line: 579, column: 20, scope: !3296)
!3306 = !DILocation(line: 579, column: 2, scope: !3296)
!3307 = !DILocation(line: 580, column: 8, scope: !3296)
!3308 = !DILocation(line: 580, column: 2, scope: !3296)
!3309 = !DILocation(line: 581, column: 1, scope: !3296)
!3310 = distinct !DISubprogram(name: "micron_fixup_onfi_param_page", scope: !3, file: !3, line: 583, type: !2466, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3311 = !DILocalVariable(name: "chip", arg: 1, scope: !3310, file: !3, line: 583, type: !112)
!3312 = !DILocation(line: 583, column: 60, scope: !3310)
!3313 = !DILocalVariable(name: "p", arg: 2, scope: !3310, file: !3, line: 584, type: !2468)
!3314 = !DILocation(line: 584, column: 32, scope: !3310)
!3315 = !DILocation(line: 591, column: 6, scope: !3316)
!3316 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 591, column: 6)
!3317 = !DILocation(line: 591, column: 31, scope: !3316)
!3318 = !DILocation(line: 591, column: 6, scope: !3310)
!3319 = !DILocation(line: 592, column: 3, scope: !3316)
!3320 = !DILocation(line: 592, column: 6, scope: !3316)
!3321 = !DILocation(line: 592, column: 15, scope: !3316)
!3322 = !DILocation(line: 593, column: 1, scope: !3310)
!3323 = distinct !DISubprogram(name: "nanddev_get_ecc_requirements", scope: !51, file: !51, line: 542, type: !3324, scopeLine: 543, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!2888, !2346}
!3326 = !DILocalVariable(name: "nand", arg: 1, scope: !3323, file: !51, line: 542, type: !2346)
!3327 = !DILocation(line: 542, column: 50, scope: !3323)
!3328 = !DILocation(line: 544, column: 10, scope: !3323)
!3329 = !DILocation(line: 544, column: 16, scope: !3323)
!3330 = !DILocation(line: 544, column: 20, scope: !3323)
!3331 = !DILocation(line: 544, column: 2, scope: !3323)
!3332 = distinct !DISubprogram(name: "nand_to_mtd", scope: !74, file: !74, line: 1152, type: !3333, scopeLine: 1153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3333 = !DISubroutineType(types: !3334)
!3334 = !{!159, !112}
!3335 = !DILocalVariable(name: "chip", arg: 1, scope: !3332, file: !74, line: 1152, type: !112)
!3336 = !DILocation(line: 1152, column: 62, scope: !3332)
!3337 = !DILocation(line: 1154, column: 10, scope: !3332)
!3338 = !DILocation(line: 1154, column: 16, scope: !3332)
!3339 = !DILocation(line: 1154, column: 21, scope: !3332)
!3340 = !DILocation(line: 1154, column: 2, scope: !3332)
!3341 = distinct !DISubprogram(name: "kzalloc", scope: !95, file: !95, line: 662, type: !2831, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3342 = !DILocation(line: 445, column: 72, scope: !2823, inlinedAt: !3343)
!3343 = distinct !DILocation(line: 552, column: 10, scope: !2828, inlinedAt: !3344)
!3344 = distinct !DILocation(line: 664, column: 9, scope: !3341)
!3345 = !DILocation(line: 446, column: 9, scope: !2823, inlinedAt: !3343)
!3346 = !DILocation(line: 446, column: 23, scope: !2823, inlinedAt: !3343)
!3347 = !DILocation(line: 448, column: 8, scope: !2823, inlinedAt: !3343)
!3348 = !DILocation(line: 318, column: 67, scope: !2845, inlinedAt: !3349)
!3349 = distinct !DILocation(line: 553, column: 20, scope: !2828, inlinedAt: !3344)
!3350 = !DILocation(line: 346, column: 58, scope: !2851, inlinedAt: !3351)
!3351 = distinct !DILocation(line: 547, column: 11, scope: !2828, inlinedAt: !3344)
!3352 = !DILocation(line: 472, column: 28, scope: !2857, inlinedAt: !3353)
!3353 = distinct !DILocation(line: 481, column: 9, scope: !2862, inlinedAt: !3354)
!3354 = distinct !DILocation(line: 545, column: 11, scope: !2864, inlinedAt: !3344)
!3355 = !DILocation(line: 472, column: 40, scope: !2857, inlinedAt: !3353)
!3356 = !DILocation(line: 472, column: 60, scope: !2857, inlinedAt: !3353)
!3357 = !DILocation(line: 478, column: 51, scope: !2862, inlinedAt: !3354)
!3358 = !DILocation(line: 478, column: 63, scope: !2862, inlinedAt: !3354)
!3359 = !DILocation(line: 480, column: 15, scope: !2862, inlinedAt: !3354)
!3360 = !DILocation(line: 538, column: 45, scope: !2830, inlinedAt: !3344)
!3361 = !DILocation(line: 538, column: 57, scope: !2830, inlinedAt: !3344)
!3362 = !DILocation(line: 542, column: 16, scope: !2828, inlinedAt: !3344)
!3363 = !DILocalVariable(name: "size", arg: 1, scope: !3341, file: !95, line: 662, type: !218)
!3364 = !DILocation(line: 662, column: 36, scope: !3341)
!3365 = !DILocalVariable(name: "flags", arg: 2, scope: !3341, file: !95, line: 662, type: !102)
!3366 = !DILocation(line: 662, column: 48, scope: !3341)
!3367 = !DILocation(line: 664, column: 17, scope: !3341)
!3368 = !DILocation(line: 664, column: 23, scope: !3341)
!3369 = !DILocation(line: 664, column: 29, scope: !3341)
!3370 = !DILocation(line: 540, column: 27, scope: !2829, inlinedAt: !3344)
!3371 = !DILocation(line: 540, column: 6, scope: !2829, inlinedAt: !3344)
!3372 = !DILocation(line: 540, column: 6, scope: !2830, inlinedAt: !3344)
!3373 = !DILocation(line: 544, column: 7, scope: !2864, inlinedAt: !3344)
!3374 = !DILocation(line: 544, column: 12, scope: !2864, inlinedAt: !3344)
!3375 = !DILocation(line: 544, column: 7, scope: !2828, inlinedAt: !3344)
!3376 = !DILocation(line: 545, column: 25, scope: !2864, inlinedAt: !3344)
!3377 = !DILocation(line: 545, column: 31, scope: !2864, inlinedAt: !3344)
!3378 = !DILocation(line: 480, column: 33, scope: !2862, inlinedAt: !3354)
!3379 = !DILocation(line: 480, column: 23, scope: !2862, inlinedAt: !3354)
!3380 = !DILocation(line: 481, column: 29, scope: !2862, inlinedAt: !3354)
!3381 = !DILocation(line: 481, column: 35, scope: !2862, inlinedAt: !3354)
!3382 = !DILocation(line: 481, column: 42, scope: !2862, inlinedAt: !3354)
!3383 = !DILocation(line: 474, column: 23, scope: !2857, inlinedAt: !3353)
!3384 = !DILocation(line: 474, column: 29, scope: !2857, inlinedAt: !3353)
!3385 = !DILocation(line: 474, column: 36, scope: !2857, inlinedAt: !3353)
!3386 = !DILocation(line: 474, column: 9, scope: !2857, inlinedAt: !3353)
!3387 = !DILocation(line: 545, column: 4, scope: !2864, inlinedAt: !3344)
!3388 = !DILocation(line: 547, column: 25, scope: !2828, inlinedAt: !3344)
!3389 = !DILocation(line: 348, column: 7, scope: !3011, inlinedAt: !3351)
!3390 = !DILocation(line: 348, column: 6, scope: !2851, inlinedAt: !3351)
!3391 = !DILocation(line: 349, column: 3, scope: !3011, inlinedAt: !3351)
!3392 = !DILocation(line: 351, column: 6, scope: !3015, inlinedAt: !3351)
!3393 = !DILocation(line: 351, column: 11, scope: !3015, inlinedAt: !3351)
!3394 = !DILocation(line: 351, column: 6, scope: !2851, inlinedAt: !3351)
!3395 = !DILocation(line: 352, column: 3, scope: !3015, inlinedAt: !3351)
!3396 = !DILocation(line: 354, column: 32, scope: !3020, inlinedAt: !3351)
!3397 = !DILocation(line: 354, column: 37, scope: !3020, inlinedAt: !3351)
!3398 = !DILocation(line: 354, column: 42, scope: !3020, inlinedAt: !3351)
!3399 = !DILocation(line: 354, column: 45, scope: !3020, inlinedAt: !3351)
!3400 = !DILocation(line: 354, column: 50, scope: !3020, inlinedAt: !3351)
!3401 = !DILocation(line: 354, column: 6, scope: !2851, inlinedAt: !3351)
!3402 = !DILocation(line: 355, column: 3, scope: !3020, inlinedAt: !3351)
!3403 = !DILocation(line: 356, column: 32, scope: !3028, inlinedAt: !3351)
!3404 = !DILocation(line: 356, column: 37, scope: !3028, inlinedAt: !3351)
!3405 = !DILocation(line: 356, column: 43, scope: !3028, inlinedAt: !3351)
!3406 = !DILocation(line: 356, column: 46, scope: !3028, inlinedAt: !3351)
!3407 = !DILocation(line: 356, column: 51, scope: !3028, inlinedAt: !3351)
!3408 = !DILocation(line: 356, column: 6, scope: !2851, inlinedAt: !3351)
!3409 = !DILocation(line: 357, column: 3, scope: !3028, inlinedAt: !3351)
!3410 = !DILocation(line: 358, column: 6, scope: !3036, inlinedAt: !3351)
!3411 = !DILocation(line: 358, column: 11, scope: !3036, inlinedAt: !3351)
!3412 = !DILocation(line: 358, column: 6, scope: !2851, inlinedAt: !3351)
!3413 = !DILocation(line: 358, column: 26, scope: !3036, inlinedAt: !3351)
!3414 = !DILocation(line: 359, column: 6, scope: !3041, inlinedAt: !3351)
!3415 = !DILocation(line: 359, column: 11, scope: !3041, inlinedAt: !3351)
!3416 = !DILocation(line: 359, column: 6, scope: !2851, inlinedAt: !3351)
!3417 = !DILocation(line: 359, column: 26, scope: !3041, inlinedAt: !3351)
!3418 = !DILocation(line: 360, column: 6, scope: !3046, inlinedAt: !3351)
!3419 = !DILocation(line: 360, column: 11, scope: !3046, inlinedAt: !3351)
!3420 = !DILocation(line: 360, column: 6, scope: !2851, inlinedAt: !3351)
!3421 = !DILocation(line: 360, column: 26, scope: !3046, inlinedAt: !3351)
!3422 = !DILocation(line: 361, column: 6, scope: !3051, inlinedAt: !3351)
!3423 = !DILocation(line: 361, column: 11, scope: !3051, inlinedAt: !3351)
!3424 = !DILocation(line: 361, column: 6, scope: !2851, inlinedAt: !3351)
!3425 = !DILocation(line: 361, column: 26, scope: !3051, inlinedAt: !3351)
!3426 = !DILocation(line: 362, column: 6, scope: !3056, inlinedAt: !3351)
!3427 = !DILocation(line: 362, column: 11, scope: !3056, inlinedAt: !3351)
!3428 = !DILocation(line: 362, column: 6, scope: !2851, inlinedAt: !3351)
!3429 = !DILocation(line: 362, column: 26, scope: !3056, inlinedAt: !3351)
!3430 = !DILocation(line: 363, column: 6, scope: !3061, inlinedAt: !3351)
!3431 = !DILocation(line: 363, column: 11, scope: !3061, inlinedAt: !3351)
!3432 = !DILocation(line: 363, column: 6, scope: !2851, inlinedAt: !3351)
!3433 = !DILocation(line: 363, column: 26, scope: !3061, inlinedAt: !3351)
!3434 = !DILocation(line: 364, column: 6, scope: !3066, inlinedAt: !3351)
!3435 = !DILocation(line: 364, column: 11, scope: !3066, inlinedAt: !3351)
!3436 = !DILocation(line: 364, column: 6, scope: !2851, inlinedAt: !3351)
!3437 = !DILocation(line: 364, column: 26, scope: !3066, inlinedAt: !3351)
!3438 = !DILocation(line: 365, column: 6, scope: !3071, inlinedAt: !3351)
!3439 = !DILocation(line: 365, column: 11, scope: !3071, inlinedAt: !3351)
!3440 = !DILocation(line: 365, column: 6, scope: !2851, inlinedAt: !3351)
!3441 = !DILocation(line: 365, column: 26, scope: !3071, inlinedAt: !3351)
!3442 = !DILocation(line: 366, column: 6, scope: !3076, inlinedAt: !3351)
!3443 = !DILocation(line: 366, column: 11, scope: !3076, inlinedAt: !3351)
!3444 = !DILocation(line: 366, column: 6, scope: !2851, inlinedAt: !3351)
!3445 = !DILocation(line: 366, column: 26, scope: !3076, inlinedAt: !3351)
!3446 = !DILocation(line: 367, column: 6, scope: !3081, inlinedAt: !3351)
!3447 = !DILocation(line: 367, column: 11, scope: !3081, inlinedAt: !3351)
!3448 = !DILocation(line: 367, column: 6, scope: !2851, inlinedAt: !3351)
!3449 = !DILocation(line: 367, column: 26, scope: !3081, inlinedAt: !3351)
!3450 = !DILocation(line: 368, column: 6, scope: !3086, inlinedAt: !3351)
!3451 = !DILocation(line: 368, column: 11, scope: !3086, inlinedAt: !3351)
!3452 = !DILocation(line: 368, column: 6, scope: !2851, inlinedAt: !3351)
!3453 = !DILocation(line: 368, column: 26, scope: !3086, inlinedAt: !3351)
!3454 = !DILocation(line: 369, column: 6, scope: !3091, inlinedAt: !3351)
!3455 = !DILocation(line: 369, column: 11, scope: !3091, inlinedAt: !3351)
!3456 = !DILocation(line: 369, column: 6, scope: !2851, inlinedAt: !3351)
!3457 = !DILocation(line: 369, column: 26, scope: !3091, inlinedAt: !3351)
!3458 = !DILocation(line: 370, column: 6, scope: !3096, inlinedAt: !3351)
!3459 = !DILocation(line: 370, column: 11, scope: !3096, inlinedAt: !3351)
!3460 = !DILocation(line: 370, column: 6, scope: !2851, inlinedAt: !3351)
!3461 = !DILocation(line: 370, column: 26, scope: !3096, inlinedAt: !3351)
!3462 = !DILocation(line: 371, column: 6, scope: !3101, inlinedAt: !3351)
!3463 = !DILocation(line: 371, column: 11, scope: !3101, inlinedAt: !3351)
!3464 = !DILocation(line: 371, column: 6, scope: !2851, inlinedAt: !3351)
!3465 = !DILocation(line: 371, column: 26, scope: !3101, inlinedAt: !3351)
!3466 = !DILocation(line: 372, column: 6, scope: !3106, inlinedAt: !3351)
!3467 = !DILocation(line: 372, column: 11, scope: !3106, inlinedAt: !3351)
!3468 = !DILocation(line: 372, column: 6, scope: !2851, inlinedAt: !3351)
!3469 = !DILocation(line: 372, column: 26, scope: !3106, inlinedAt: !3351)
!3470 = !DILocation(line: 373, column: 6, scope: !3111, inlinedAt: !3351)
!3471 = !DILocation(line: 373, column: 11, scope: !3111, inlinedAt: !3351)
!3472 = !DILocation(line: 373, column: 6, scope: !2851, inlinedAt: !3351)
!3473 = !DILocation(line: 373, column: 26, scope: !3111, inlinedAt: !3351)
!3474 = !DILocation(line: 374, column: 6, scope: !3116, inlinedAt: !3351)
!3475 = !DILocation(line: 374, column: 11, scope: !3116, inlinedAt: !3351)
!3476 = !DILocation(line: 374, column: 6, scope: !2851, inlinedAt: !3351)
!3477 = !DILocation(line: 374, column: 26, scope: !3116, inlinedAt: !3351)
!3478 = !DILocation(line: 375, column: 6, scope: !3121, inlinedAt: !3351)
!3479 = !DILocation(line: 375, column: 11, scope: !3121, inlinedAt: !3351)
!3480 = !DILocation(line: 375, column: 6, scope: !2851, inlinedAt: !3351)
!3481 = !DILocation(line: 375, column: 27, scope: !3121, inlinedAt: !3351)
!3482 = !DILocation(line: 376, column: 6, scope: !3126, inlinedAt: !3351)
!3483 = !DILocation(line: 376, column: 11, scope: !3126, inlinedAt: !3351)
!3484 = !DILocation(line: 376, column: 6, scope: !2851, inlinedAt: !3351)
!3485 = !DILocation(line: 376, column: 32, scope: !3126, inlinedAt: !3351)
!3486 = !DILocation(line: 377, column: 6, scope: !3131, inlinedAt: !3351)
!3487 = !DILocation(line: 377, column: 11, scope: !3131, inlinedAt: !3351)
!3488 = !DILocation(line: 377, column: 6, scope: !2851, inlinedAt: !3351)
!3489 = !DILocation(line: 377, column: 32, scope: !3131, inlinedAt: !3351)
!3490 = !DILocation(line: 378, column: 6, scope: !3136, inlinedAt: !3351)
!3491 = !DILocation(line: 378, column: 11, scope: !3136, inlinedAt: !3351)
!3492 = !DILocation(line: 378, column: 6, scope: !2851, inlinedAt: !3351)
!3493 = !DILocation(line: 378, column: 32, scope: !3136, inlinedAt: !3351)
!3494 = !DILocation(line: 379, column: 6, scope: !3141, inlinedAt: !3351)
!3495 = !DILocation(line: 379, column: 11, scope: !3141, inlinedAt: !3351)
!3496 = !DILocation(line: 379, column: 6, scope: !2851, inlinedAt: !3351)
!3497 = !DILocation(line: 379, column: 33, scope: !3141, inlinedAt: !3351)
!3498 = !DILocation(line: 380, column: 6, scope: !3146, inlinedAt: !3351)
!3499 = !DILocation(line: 380, column: 11, scope: !3146, inlinedAt: !3351)
!3500 = !DILocation(line: 380, column: 6, scope: !2851, inlinedAt: !3351)
!3501 = !DILocation(line: 380, column: 33, scope: !3146, inlinedAt: !3351)
!3502 = !DILocation(line: 381, column: 6, scope: !3151, inlinedAt: !3351)
!3503 = !DILocation(line: 381, column: 11, scope: !3151, inlinedAt: !3351)
!3504 = !DILocation(line: 381, column: 6, scope: !2851, inlinedAt: !3351)
!3505 = !DILocation(line: 381, column: 33, scope: !3151, inlinedAt: !3351)
!3506 = !DILocation(line: 382, column: 2, scope: !3156, inlinedAt: !3351)
!3507 = !DILocation(line: 382, column: 2, scope: !3160, inlinedAt: !3351)
!3508 = !DILocation(line: 382, column: 2, scope: !3161, inlinedAt: !3351)
!3509 = !DILocation(line: 386, column: 1, scope: !2851, inlinedAt: !3351)
!3510 = !DILocation(line: 547, column: 9, scope: !2828, inlinedAt: !3344)
!3511 = !DILocation(line: 549, column: 8, scope: !3167, inlinedAt: !3344)
!3512 = !DILocation(line: 549, column: 7, scope: !2828, inlinedAt: !3344)
!3513 = !DILocation(line: 550, column: 4, scope: !3167, inlinedAt: !3344)
!3514 = !DILocation(line: 553, column: 33, scope: !2828, inlinedAt: !3344)
!3515 = !DILocation(line: 325, column: 6, scope: !3172, inlinedAt: !3349)
!3516 = !DILocation(line: 325, column: 6, scope: !2845, inlinedAt: !3349)
!3517 = !DILocation(line: 326, column: 3, scope: !3172, inlinedAt: !3349)
!3518 = !DILocation(line: 332, column: 9, scope: !2845, inlinedAt: !3349)
!3519 = !DILocation(line: 332, column: 15, scope: !2845, inlinedAt: !3349)
!3520 = !DILocation(line: 332, column: 2, scope: !2845, inlinedAt: !3349)
!3521 = !DILocation(line: 336, column: 1, scope: !2845, inlinedAt: !3349)
!3522 = !DILocation(line: 553, column: 5, scope: !2828, inlinedAt: !3344)
!3523 = !DILocation(line: 553, column: 41, scope: !2828, inlinedAt: !3344)
!3524 = !DILocation(line: 554, column: 5, scope: !2828, inlinedAt: !3344)
!3525 = !DILocation(line: 554, column: 12, scope: !2828, inlinedAt: !3344)
!3526 = !DILocation(line: 448, column: 31, scope: !2823, inlinedAt: !3343)
!3527 = !DILocation(line: 448, column: 34, scope: !2823, inlinedAt: !3343)
!3528 = !DILocation(line: 448, column: 14, scope: !2823, inlinedAt: !3343)
!3529 = !DILocation(line: 450, column: 22, scope: !2823, inlinedAt: !3343)
!3530 = !DILocation(line: 450, column: 25, scope: !2823, inlinedAt: !3343)
!3531 = !DILocation(line: 450, column: 30, scope: !2823, inlinedAt: !3343)
!3532 = !DILocation(line: 450, column: 36, scope: !2823, inlinedAt: !3343)
!3533 = !DILocation(line: 450, column: 8, scope: !2823, inlinedAt: !3343)
!3534 = !DILocation(line: 450, column: 6, scope: !2823, inlinedAt: !3343)
!3535 = !DILocation(line: 451, column: 9, scope: !2823, inlinedAt: !3343)
!3536 = !DILocation(line: 552, column: 3, scope: !2828, inlinedAt: !3344)
!3537 = !DILocation(line: 557, column: 19, scope: !2830, inlinedAt: !3344)
!3538 = !DILocation(line: 557, column: 25, scope: !2830, inlinedAt: !3344)
!3539 = !DILocation(line: 557, column: 9, scope: !2830, inlinedAt: !3344)
!3540 = !DILocation(line: 557, column: 2, scope: !2830, inlinedAt: !3344)
!3541 = !DILocation(line: 558, column: 1, scope: !2830, inlinedAt: !3344)
!3542 = !DILocation(line: 664, column: 2, scope: !3341)
!3543 = distinct !DISubprogram(name: "nand_set_manufacturer_data", scope: !74, file: !74, line: 1167, type: !3544, scopeLine: 1169, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3544 = !DISubroutineType(types: !3545)
!3545 = !{null, !112, !104}
!3546 = !DILocalVariable(name: "chip", arg: 1, scope: !3543, file: !74, line: 1167, type: !112)
!3547 = !DILocation(line: 1167, column: 65, scope: !3543)
!3548 = !DILocalVariable(name: "priv", arg: 2, scope: !3543, file: !74, line: 1168, type: !104)
!3549 = !DILocation(line: 1168, column: 18, scope: !3543)
!3550 = !DILocation(line: 1170, column: 28, scope: !3543)
!3551 = !DILocation(line: 1170, column: 2, scope: !3543)
!3552 = !DILocation(line: 1170, column: 8, scope: !3543)
!3553 = !DILocation(line: 1170, column: 21, scope: !3543)
!3554 = !DILocation(line: 1170, column: 26, scope: !3543)
!3555 = !DILocation(line: 1171, column: 1, scope: !3543)
!3556 = distinct !DISubprogram(name: "micron_nand_onfi_init", scope: !3, file: !3, line: 79, type: !2461, scopeLine: 80, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3557 = !DILocalVariable(name: "chip", arg: 1, scope: !3556, file: !3, line: 79, type: !112)
!3558 = !DILocation(line: 79, column: 52, scope: !3556)
!3559 = !DILocalVariable(name: "p", scope: !3556, file: !3, line: 81, type: !3560)
!3560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2416, size: 64)
!3561 = !DILocation(line: 81, column: 26, scope: !3556)
!3562 = !DILocation(line: 81, column: 31, scope: !3556)
!3563 = !DILocation(line: 81, column: 37, scope: !3556)
!3564 = !DILocation(line: 83, column: 6, scope: !3565)
!3565 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 83, column: 6)
!3566 = !DILocation(line: 83, column: 9, scope: !3565)
!3567 = !DILocation(line: 83, column: 6, scope: !3556)
!3568 = !DILocalVariable(name: "micron", scope: !3569, file: !3, line: 84, type: !3570)
!3569 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 83, column: 15)
!3570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3571, size: 64)
!3571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "nand_onfi_vendor_micron", file: !3, line: 39, size: 704, elements: !3572)
!3572 = !{!3573, !3574, !3575, !3576, !3577, !3578, !3579, !3580, !3581, !3582, !3583, !3584, !3585, !3586, !3587, !3588, !3592}
!3573 = !DIDerivedType(tag: DW_TAG_member, name: "two_plane_read", scope: !3571, file: !3, line: 40, baseType: !258, size: 8)
!3574 = !DIDerivedType(tag: DW_TAG_member, name: "read_cache", scope: !3571, file: !3, line: 41, baseType: !258, size: 8, offset: 8)
!3575 = !DIDerivedType(tag: DW_TAG_member, name: "read_unique_id", scope: !3571, file: !3, line: 42, baseType: !258, size: 8, offset: 16)
!3576 = !DIDerivedType(tag: DW_TAG_member, name: "dq_imped", scope: !3571, file: !3, line: 43, baseType: !258, size: 8, offset: 24)
!3577 = !DIDerivedType(tag: DW_TAG_member, name: "dq_imped_num_settings", scope: !3571, file: !3, line: 44, baseType: !258, size: 8, offset: 32)
!3578 = !DIDerivedType(tag: DW_TAG_member, name: "dq_imped_feat_addr", scope: !3571, file: !3, line: 45, baseType: !258, size: 8, offset: 40)
!3579 = !DIDerivedType(tag: DW_TAG_member, name: "rb_pulldown_strength", scope: !3571, file: !3, line: 46, baseType: !258, size: 8, offset: 48)
!3580 = !DIDerivedType(tag: DW_TAG_member, name: "rb_pulldown_strength_feat_addr", scope: !3571, file: !3, line: 47, baseType: !258, size: 8, offset: 56)
!3581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_pulldown_strength_num_settings", scope: !3571, file: !3, line: 48, baseType: !258, size: 8, offset: 64)
!3582 = !DIDerivedType(tag: DW_TAG_member, name: "otp_mode", scope: !3571, file: !3, line: 49, baseType: !258, size: 8, offset: 72)
!3583 = !DIDerivedType(tag: DW_TAG_member, name: "otp_page_start", scope: !3571, file: !3, line: 50, baseType: !258, size: 8, offset: 80)
!3584 = !DIDerivedType(tag: DW_TAG_member, name: "otp_data_prot_addr", scope: !3571, file: !3, line: 51, baseType: !258, size: 8, offset: 88)
!3585 = !DIDerivedType(tag: DW_TAG_member, name: "otp_num_pages", scope: !3571, file: !3, line: 52, baseType: !258, size: 8, offset: 96)
!3586 = !DIDerivedType(tag: DW_TAG_member, name: "otp_feat_addr", scope: !3571, file: !3, line: 53, baseType: !258, size: 8, offset: 104)
!3587 = !DIDerivedType(tag: DW_TAG_member, name: "read_retry_options", scope: !3571, file: !3, line: 54, baseType: !258, size: 8, offset: 112)
!3588 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !3571, file: !3, line: 55, baseType: !3589, size: 576, offset: 120)
!3589 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 576, elements: !3590)
!3590 = !{!3591}
!3591 = !DISubrange(count: 72)
!3592 = !DIDerivedType(tag: DW_TAG_member, name: "param_revision", scope: !3571, file: !3, line: 56, baseType: !258, size: 8, offset: 696)
!3593 = !DILocation(line: 84, column: 35, scope: !3569)
!3594 = !DILocation(line: 84, column: 52, scope: !3569)
!3595 = !DILocation(line: 84, column: 55, scope: !3569)
!3596 = !DILocation(line: 84, column: 61, scope: !3569)
!3597 = !DILocation(line: 84, column: 44, scope: !3569)
!3598 = !DILocation(line: 86, column: 24, scope: !3569)
!3599 = !DILocation(line: 86, column: 32, scope: !3569)
!3600 = !DILocation(line: 86, column: 3, scope: !3569)
!3601 = !DILocation(line: 86, column: 9, scope: !3569)
!3602 = !DILocation(line: 86, column: 22, scope: !3569)
!3603 = !DILocation(line: 87, column: 3, scope: !3569)
!3604 = !DILocation(line: 87, column: 9, scope: !3569)
!3605 = !DILocation(line: 87, column: 13, scope: !3569)
!3606 = !DILocation(line: 87, column: 30, scope: !3569)
!3607 = !DILocation(line: 88, column: 2, scope: !3569)
!3608 = !DILocation(line: 90, column: 6, scope: !3609)
!3609 = distinct !DILexicalBlock(scope: !3556, file: !3, line: 90, column: 6)
!3610 = !DILocation(line: 90, column: 9, scope: !3609)
!3611 = !DILocation(line: 90, column: 6, scope: !3556)
!3612 = !DILocation(line: 91, column: 41, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3609, file: !3, line: 90, column: 36)
!3614 = !DILocation(line: 91, column: 44, scope: !3613)
!3615 = !DILocation(line: 91, column: 3, scope: !3613)
!3616 = !DILocation(line: 92, column: 36, scope: !3613)
!3617 = !DILocation(line: 92, column: 39, scope: !3613)
!3618 = !DILocation(line: 92, column: 3, scope: !3613)
!3619 = !DILocation(line: 93, column: 41, scope: !3613)
!3620 = !DILocation(line: 93, column: 44, scope: !3613)
!3621 = !DILocation(line: 93, column: 3, scope: !3613)
!3622 = !DILocation(line: 94, column: 36, scope: !3613)
!3623 = !DILocation(line: 94, column: 39, scope: !3613)
!3624 = !DILocation(line: 94, column: 3, scope: !3613)
!3625 = !DILocation(line: 95, column: 2, scope: !3613)
!3626 = !DILocation(line: 97, column: 2, scope: !3556)
!3627 = distinct !DISubprogram(name: "micron_supports_on_die_ecc", scope: !3, file: !3, line: 414, type: !2461, scopeLine: 415, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3628 = !DILocalVariable(name: "chip", arg: 1, scope: !3627, file: !3, line: 414, type: !112)
!3629 = !DILocation(line: 414, column: 57, scope: !3627)
!3630 = !DILocalVariable(name: "requirements", scope: !3627, file: !3, line: 416, type: !2888)
!3631 = !DILocation(line: 416, column: 31, scope: !3627)
!3632 = !DILocation(line: 417, column: 33, scope: !3627)
!3633 = !DILocation(line: 417, column: 39, scope: !3627)
!3634 = !DILocation(line: 417, column: 3, scope: !3627)
!3635 = !DILocalVariable(name: "id", scope: !3627, file: !3, line: 418, type: !3636)
!3636 = !DICompositeType(tag: DW_TAG_array_type, baseType: !258, size: 40, elements: !3637)
!3637 = !{!3638}
!3638 = !DISubrange(count: 5)
!3639 = !DILocation(line: 418, column: 5, scope: !3627)
!3640 = !DILocalVariable(name: "ret", scope: !3627, file: !3, line: 419, type: !111)
!3641 = !DILocation(line: 419, column: 6, scope: !3627)
!3642 = !DILocation(line: 421, column: 7, scope: !3643)
!3643 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 421, column: 6)
!3644 = !DILocation(line: 421, column: 13, scope: !3643)
!3645 = !DILocation(line: 421, column: 24, scope: !3643)
!3646 = !DILocation(line: 421, column: 6, scope: !3627)
!3647 = !DILocation(line: 422, column: 3, scope: !3643)
!3648 = !DILocation(line: 424, column: 29, scope: !3649)
!3649 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 424, column: 6)
!3650 = !DILocation(line: 424, column: 35, scope: !3649)
!3651 = !DILocation(line: 424, column: 6, scope: !3649)
!3652 = !DILocation(line: 424, column: 41, scope: !3649)
!3653 = !DILocation(line: 424, column: 6, scope: !3627)
!3654 = !DILocation(line: 425, column: 3, scope: !3649)
!3655 = !DILocation(line: 430, column: 7, scope: !3656)
!3656 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 430, column: 7)
!3657 = !DILocation(line: 430, column: 21, scope: !3656)
!3658 = !DILocation(line: 430, column: 30, scope: !3656)
!3659 = !DILocation(line: 430, column: 35, scope: !3656)
!3660 = !DILocation(line: 430, column: 38, scope: !3656)
!3661 = !DILocation(line: 430, column: 52, scope: !3656)
!3662 = !DILocation(line: 430, column: 61, scope: !3656)
!3663 = !DILocation(line: 430, column: 7, scope: !3627)
!3664 = !DILocation(line: 431, column: 3, scope: !3656)
!3665 = !DILocation(line: 434, column: 6, scope: !3666)
!3666 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 434, column: 6)
!3667 = !DILocation(line: 434, column: 12, scope: !3666)
!3668 = !DILocation(line: 434, column: 15, scope: !3666)
!3669 = !DILocation(line: 434, column: 19, scope: !3666)
!3670 = !DILocation(line: 434, column: 24, scope: !3666)
!3671 = !DILocation(line: 435, column: 7, scope: !3666)
!3672 = !DILocation(line: 435, column: 13, scope: !3666)
!3673 = !DILocation(line: 435, column: 16, scope: !3666)
!3674 = !DILocation(line: 435, column: 24, scope: !3666)
!3675 = !DILocation(line: 435, column: 55, scope: !3666)
!3676 = !DILocation(line: 434, column: 6, scope: !3627)
!3677 = !DILocation(line: 436, column: 3, scope: !3666)
!3678 = !DILocation(line: 446, column: 37, scope: !3627)
!3679 = !DILocation(line: 446, column: 8, scope: !3627)
!3680 = !DILocation(line: 446, column: 6, scope: !3627)
!3681 = !DILocation(line: 447, column: 6, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 447, column: 6)
!3683 = !DILocation(line: 447, column: 6, scope: !3627)
!3684 = !DILocation(line: 448, column: 3, scope: !3682)
!3685 = !DILocation(line: 450, column: 23, scope: !3627)
!3686 = !DILocation(line: 450, column: 32, scope: !3627)
!3687 = !DILocation(line: 450, column: 8, scope: !3627)
!3688 = !DILocation(line: 450, column: 6, scope: !3627)
!3689 = !DILocation(line: 451, column: 6, scope: !3690)
!3690 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 451, column: 6)
!3691 = !DILocation(line: 451, column: 6, scope: !3627)
!3692 = !DILocation(line: 452, column: 3, scope: !3690)
!3693 = !DILocation(line: 454, column: 37, scope: !3627)
!3694 = !DILocation(line: 454, column: 8, scope: !3627)
!3695 = !DILocation(line: 454, column: 6, scope: !3627)
!3696 = !DILocation(line: 455, column: 6, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 455, column: 6)
!3698 = !DILocation(line: 455, column: 6, scope: !3627)
!3699 = !DILocation(line: 456, column: 3, scope: !3697)
!3700 = !DILocation(line: 458, column: 8, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 458, column: 6)
!3702 = !DILocation(line: 458, column: 14, scope: !3701)
!3703 = !DILocation(line: 458, column: 6, scope: !3627)
!3704 = !DILocation(line: 459, column: 3, scope: !3701)
!3705 = !DILocation(line: 461, column: 23, scope: !3627)
!3706 = !DILocation(line: 461, column: 32, scope: !3627)
!3707 = !DILocation(line: 461, column: 8, scope: !3627)
!3708 = !DILocation(line: 461, column: 6, scope: !3627)
!3709 = !DILocation(line: 462, column: 6, scope: !3710)
!3710 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 462, column: 6)
!3711 = !DILocation(line: 462, column: 6, scope: !3627)
!3712 = !DILocation(line: 463, column: 3, scope: !3710)
!3713 = !DILocation(line: 465, column: 6, scope: !3714)
!3714 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 465, column: 6)
!3715 = !DILocation(line: 465, column: 12, scope: !3714)
!3716 = !DILocation(line: 465, column: 6, scope: !3627)
!3717 = !DILocation(line: 466, column: 3, scope: !3714)
!3718 = !DILocation(line: 471, column: 7, scope: !3719)
!3719 = distinct !DILexicalBlock(scope: !3627, file: !3, line: 471, column: 7)
!3720 = !DILocation(line: 471, column: 21, scope: !3719)
!3721 = !DILocation(line: 471, column: 30, scope: !3719)
!3722 = !DILocation(line: 471, column: 35, scope: !3719)
!3723 = !DILocation(line: 471, column: 38, scope: !3719)
!3724 = !DILocation(line: 471, column: 52, scope: !3719)
!3725 = !DILocation(line: 471, column: 61, scope: !3719)
!3726 = !DILocation(line: 471, column: 7, scope: !3627)
!3727 = !DILocation(line: 472, column: 3, scope: !3719)
!3728 = !DILocation(line: 474, column: 2, scope: !3627)
!3729 = !DILocation(line: 475, column: 1, scope: !3627)
!3730 = distinct !DISubprogram(name: "mtd_set_ooblayout", scope: !120, file: !120, line: 443, type: !3731, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3731 = !DISubroutineType(types: !3732)
!3732 = !{null, !159, !151}
!3733 = !DILocalVariable(name: "mtd", arg: 1, scope: !3730, file: !120, line: 443, type: !159)
!3734 = !DILocation(line: 443, column: 55, scope: !3730)
!3735 = !DILocalVariable(name: "ooblayout", arg: 2, scope: !3730, file: !120, line: 444, type: !151)
!3736 = !DILocation(line: 444, column: 42, scope: !3730)
!3737 = !DILocation(line: 446, column: 19, scope: !3730)
!3738 = !DILocation(line: 446, column: 2, scope: !3730)
!3739 = !DILocation(line: 446, column: 7, scope: !3730)
!3740 = !DILocation(line: 446, column: 17, scope: !3730)
!3741 = !DILocation(line: 447, column: 1, scope: !3730)
!3742 = distinct !DISubprogram(name: "micron_nand_read_page_on_die_ecc", scope: !3, file: !3, line: 304, type: !2790, scopeLine: 306, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3743 = !DILocalVariable(name: "chip", arg: 1, scope: !3742, file: !3, line: 304, type: !112)
!3744 = !DILocation(line: 304, column: 52, scope: !3742)
!3745 = !DILocalVariable(name: "buf", arg: 2, scope: !3742, file: !3, line: 304, type: !256)
!3746 = !DILocation(line: 304, column: 67, scope: !3742)
!3747 = !DILocalVariable(name: "oob_required", arg: 3, scope: !3742, file: !3, line: 305, type: !111)
!3748 = !DILocation(line: 305, column: 10, scope: !3742)
!3749 = !DILocalVariable(name: "page", arg: 4, scope: !3742, file: !3, line: 305, type: !111)
!3750 = !DILocation(line: 305, column: 28, scope: !3742)
!3751 = !DILocalVariable(name: "mtd", scope: !3742, file: !3, line: 307, type: !159)
!3752 = !DILocation(line: 307, column: 19, scope: !3742)
!3753 = !DILocation(line: 307, column: 37, scope: !3742)
!3754 = !DILocation(line: 307, column: 25, scope: !3742)
!3755 = !DILocalVariable(name: "use_datain", scope: !3742, file: !3, line: 308, type: !315)
!3756 = !DILocation(line: 308, column: 7, scope: !3742)
!3757 = !DILocalVariable(name: "status", scope: !3742, file: !3, line: 309, type: !258)
!3758 = !DILocation(line: 309, column: 5, scope: !3742)
!3759 = !DILocalVariable(name: "ret", scope: !3742, file: !3, line: 310, type: !111)
!3760 = !DILocation(line: 310, column: 6, scope: !3742)
!3761 = !DILocalVariable(name: "max_bitflips", scope: !3742, file: !3, line: 310, type: !111)
!3762 = !DILocation(line: 310, column: 11, scope: !3742)
!3763 = !DILocation(line: 312, column: 37, scope: !3742)
!3764 = !DILocation(line: 312, column: 8, scope: !3742)
!3765 = !DILocation(line: 312, column: 6, scope: !3742)
!3766 = !DILocation(line: 313, column: 6, scope: !3767)
!3767 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 313, column: 6)
!3768 = !DILocation(line: 313, column: 6, scope: !3742)
!3769 = !DILocation(line: 314, column: 10, scope: !3767)
!3770 = !DILocation(line: 314, column: 3, scope: !3767)
!3771 = !DILocation(line: 316, column: 26, scope: !3742)
!3772 = !DILocation(line: 316, column: 32, scope: !3742)
!3773 = !DILocation(line: 316, column: 8, scope: !3742)
!3774 = !DILocation(line: 316, column: 6, scope: !3742)
!3775 = !DILocation(line: 317, column: 6, scope: !3776)
!3776 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 317, column: 6)
!3777 = !DILocation(line: 317, column: 6, scope: !3742)
!3778 = !DILocation(line: 318, column: 3, scope: !3776)
!3779 = !DILocation(line: 320, column: 23, scope: !3742)
!3780 = !DILocation(line: 320, column: 8, scope: !3742)
!3781 = !DILocation(line: 320, column: 6, scope: !3742)
!3782 = !DILocation(line: 321, column: 6, scope: !3783)
!3783 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 321, column: 6)
!3784 = !DILocation(line: 321, column: 6, scope: !3742)
!3785 = !DILocation(line: 322, column: 3, scope: !3783)
!3786 = !DILocation(line: 332, column: 24, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 332, column: 6)
!3788 = !DILocation(line: 332, column: 7, scope: !3787)
!3789 = !DILocation(line: 332, column: 30, scope: !3787)
!3790 = !DILocation(line: 333, column: 25, scope: !3787)
!3791 = !DILocation(line: 333, column: 31, scope: !3787)
!3792 = !DILocation(line: 333, column: 36, scope: !3787)
!3793 = !DILocation(line: 333, column: 41, scope: !3787)
!3794 = !DILocation(line: 333, column: 7, scope: !3787)
!3795 = !DILocation(line: 332, column: 6, scope: !3742)
!3796 = !DILocation(line: 334, column: 14, scope: !3787)
!3797 = !DILocation(line: 334, column: 3, scope: !3787)
!3798 = !DILocation(line: 336, column: 6, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 336, column: 6)
!3800 = !DILocation(line: 336, column: 6, scope: !3742)
!3801 = !DILocation(line: 337, column: 29, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 336, column: 18)
!3803 = !DILocation(line: 337, column: 9, scope: !3802)
!3804 = !DILocation(line: 337, column: 7, scope: !3802)
!3805 = !DILocation(line: 338, column: 7, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 338, column: 7)
!3807 = !DILocation(line: 338, column: 7, scope: !3802)
!3808 = !DILocation(line: 339, column: 4, scope: !3806)
!3809 = !DILocation(line: 341, column: 27, scope: !3802)
!3810 = !DILocation(line: 341, column: 33, scope: !3802)
!3811 = !DILocation(line: 341, column: 38, scope: !3802)
!3812 = !DILocation(line: 341, column: 43, scope: !3802)
!3813 = !DILocation(line: 341, column: 9, scope: !3802)
!3814 = !DILocation(line: 341, column: 7, scope: !3802)
!3815 = !DILocation(line: 343, column: 8, scope: !3816)
!3816 = distinct !DILexicalBlock(scope: !3802, file: !3, line: 343, column: 7)
!3817 = !DILocation(line: 343, column: 12, scope: !3816)
!3818 = !DILocation(line: 343, column: 15, scope: !3816)
!3819 = !DILocation(line: 343, column: 7, scope: !3802)
!3820 = !DILocation(line: 344, column: 28, scope: !3816)
!3821 = !DILocation(line: 344, column: 34, scope: !3816)
!3822 = !DILocation(line: 344, column: 40, scope: !3816)
!3823 = !DILocation(line: 345, column: 7, scope: !3816)
!3824 = !DILocation(line: 345, column: 12, scope: !3816)
!3825 = !DILocation(line: 344, column: 10, scope: !3816)
!3826 = !DILocation(line: 344, column: 8, scope: !3816)
!3827 = !DILocation(line: 344, column: 4, scope: !3816)
!3828 = !DILocation(line: 346, column: 2, scope: !3802)
!3829 = !DILocation(line: 347, column: 36, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3799, file: !3, line: 346, column: 9)
!3831 = !DILocation(line: 347, column: 45, scope: !3830)
!3832 = !DILocation(line: 347, column: 50, scope: !3830)
!3833 = !DILocation(line: 347, column: 55, scope: !3830)
!3834 = !DILocation(line: 347, column: 9, scope: !3830)
!3835 = !DILocation(line: 347, column: 7, scope: !3830)
!3836 = !DILocation(line: 349, column: 8, scope: !3837)
!3837 = distinct !DILexicalBlock(scope: !3830, file: !3, line: 349, column: 7)
!3838 = !DILocation(line: 349, column: 12, scope: !3837)
!3839 = !DILocation(line: 349, column: 15, scope: !3837)
!3840 = !DILocation(line: 349, column: 7, scope: !3830)
!3841 = !DILocation(line: 350, column: 37, scope: !3837)
!3842 = !DILocation(line: 350, column: 43, scope: !3837)
!3843 = !DILocation(line: 350, column: 48, scope: !3837)
!3844 = !DILocation(line: 351, column: 9, scope: !3837)
!3845 = !DILocation(line: 351, column: 15, scope: !3837)
!3846 = !DILocation(line: 352, column: 9, scope: !3837)
!3847 = !DILocation(line: 352, column: 14, scope: !3837)
!3848 = !DILocation(line: 350, column: 10, scope: !3837)
!3849 = !DILocation(line: 350, column: 8, scope: !3837)
!3850 = !DILocation(line: 350, column: 4, scope: !3837)
!3851 = !DILocation(line: 355, column: 6, scope: !3852)
!3852 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 355, column: 6)
!3853 = !DILocation(line: 355, column: 12, scope: !3852)
!3854 = !DILocation(line: 355, column: 16, scope: !3852)
!3855 = !DILocation(line: 355, column: 25, scope: !3852)
!3856 = !DILocation(line: 355, column: 6, scope: !3742)
!3857 = !DILocation(line: 356, column: 50, scope: !3852)
!3858 = !DILocation(line: 356, column: 56, scope: !3852)
!3859 = !DILocation(line: 357, column: 15, scope: !3852)
!3860 = !DILocation(line: 357, column: 20, scope: !3852)
!3861 = !DILocation(line: 358, column: 15, scope: !3852)
!3862 = !DILocation(line: 356, column: 18, scope: !3852)
!3863 = !DILocation(line: 356, column: 16, scope: !3852)
!3864 = !DILocation(line: 356, column: 3, scope: !3852)
!3865 = !DILocation(line: 360, column: 50, scope: !3852)
!3866 = !DILocation(line: 360, column: 56, scope: !3852)
!3867 = !DILocation(line: 360, column: 18, scope: !3852)
!3868 = !DILocation(line: 360, column: 16, scope: !3852)
!3869 = !DILocation(line: 355, column: 28, scope: !3852)
!3870 = !DILabel(scope: !3742, name: "out", file: !3, line: 362)
!3871 = !DILocation(line: 362, column: 1, scope: !3742)
!3872 = !DILocation(line: 363, column: 31, scope: !3742)
!3873 = !DILocation(line: 363, column: 2, scope: !3742)
!3874 = !DILocation(line: 365, column: 9, scope: !3742)
!3875 = !DILocation(line: 365, column: 15, scope: !3742)
!3876 = !DILocation(line: 365, column: 21, scope: !3742)
!3877 = !DILocation(line: 365, column: 2, scope: !3742)
!3878 = !DILocation(line: 366, column: 1, scope: !3742)
!3879 = distinct !DISubprogram(name: "micron_nand_write_page_on_die_ecc", scope: !3, file: !3, line: 369, type: !2794, scopeLine: 371, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3880 = !DILocalVariable(name: "chip", arg: 1, scope: !3879, file: !3, line: 369, type: !112)
!3881 = !DILocation(line: 369, column: 53, scope: !3879)
!3882 = !DILocalVariable(name: "buf", arg: 2, scope: !3879, file: !3, line: 369, type: !2782)
!3883 = !DILocation(line: 369, column: 74, scope: !3879)
!3884 = !DILocalVariable(name: "oob_required", arg: 3, scope: !3879, file: !3, line: 370, type: !111)
!3885 = !DILocation(line: 370, column: 11, scope: !3879)
!3886 = !DILocalVariable(name: "page", arg: 4, scope: !3879, file: !3, line: 370, type: !111)
!3887 = !DILocation(line: 370, column: 29, scope: !3879)
!3888 = !DILocalVariable(name: "ret", scope: !3879, file: !3, line: 372, type: !111)
!3889 = !DILocation(line: 372, column: 6, scope: !3879)
!3890 = !DILocation(line: 374, column: 37, scope: !3879)
!3891 = !DILocation(line: 374, column: 8, scope: !3879)
!3892 = !DILocation(line: 374, column: 6, scope: !3879)
!3893 = !DILocation(line: 375, column: 6, scope: !3894)
!3894 = distinct !DILexicalBlock(scope: !3879, file: !3, line: 375, column: 6)
!3895 = !DILocation(line: 375, column: 6, scope: !3879)
!3896 = !DILocation(line: 376, column: 10, scope: !3894)
!3897 = !DILocation(line: 376, column: 3, scope: !3894)
!3898 = !DILocation(line: 378, column: 28, scope: !3879)
!3899 = !DILocation(line: 378, column: 34, scope: !3879)
!3900 = !DILocation(line: 378, column: 39, scope: !3879)
!3901 = !DILocation(line: 378, column: 53, scope: !3879)
!3902 = !DILocation(line: 378, column: 8, scope: !3879)
!3903 = !DILocation(line: 378, column: 6, scope: !3879)
!3904 = !DILocation(line: 379, column: 31, scope: !3879)
!3905 = !DILocation(line: 379, column: 2, scope: !3879)
!3906 = !DILocation(line: 381, column: 9, scope: !3879)
!3907 = !DILocation(line: 381, column: 2, scope: !3879)
!3908 = !DILocation(line: 382, column: 1, scope: !3879)
!3909 = distinct !DISubprogram(name: "micron_nand_setup_read_retry", scope: !3, file: !3, line: 69, type: !2548, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3910 = !DILocalVariable(name: "chip", arg: 1, scope: !3909, file: !3, line: 69, type: !112)
!3911 = !DILocation(line: 69, column: 59, scope: !3909)
!3912 = !DILocalVariable(name: "retry_mode", arg: 2, scope: !3909, file: !3, line: 69, type: !111)
!3913 = !DILocation(line: 69, column: 69, scope: !3909)
!3914 = !DILocalVariable(name: "feature", scope: !3909, file: !3, line: 71, type: !2472)
!3915 = !DILocation(line: 71, column: 5, scope: !3909)
!3916 = !DILocation(line: 71, column: 42, scope: !3909)
!3917 = !DILocation(line: 71, column: 43, scope: !3909)
!3918 = !DILocation(line: 73, column: 27, scope: !3909)
!3919 = !DILocation(line: 73, column: 63, scope: !3909)
!3920 = !DILocation(line: 73, column: 9, scope: !3909)
!3921 = !DILocation(line: 73, column: 2, scope: !3909)
!3922 = distinct !DISubprogram(name: "set_bit", scope: !3923, file: !3923, line: 26, type: !3924, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3923 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3924 = !DISubroutineType(types: !3925)
!3925 = !{null, !110, !3926}
!3926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3927, size: 64)
!3927 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !199)
!3928 = !DILocalVariable(name: "nr", arg: 1, scope: !3929, file: !3930, line: 52, type: !110)
!3929 = distinct !DISubprogram(name: "arch_set_bit", scope: !3930, file: !3930, line: 52, type: !3924, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3930 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3931 = !DILocation(line: 52, column: 19, scope: !3929, inlinedAt: !3932)
!3932 = distinct !DILocation(line: 29, column: 2, scope: !3922)
!3933 = !DILocalVariable(name: "addr", arg: 2, scope: !3929, file: !3930, line: 52, type: !3926)
!3934 = !DILocation(line: 52, column: 47, scope: !3929, inlinedAt: !3932)
!3935 = !DILocalVariable(name: "v", arg: 1, scope: !3936, file: !3937, line: 84, type: !3940)
!3936 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3937, file: !3937, line: 84, type: !3938, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3937 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3938 = !DISubroutineType(types: !3939)
!3939 = !{null, !3940, !218}
!3940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3941, size: 64)
!3941 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3942)
!3942 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3943 = !DILocation(line: 84, column: 74, scope: !3936, inlinedAt: !3944)
!3944 = distinct !DILocation(line: 28, column: 2, scope: !3922)
!3945 = !DILocalVariable(name: "size", arg: 2, scope: !3936, file: !3937, line: 84, type: !218)
!3946 = !DILocation(line: 84, column: 84, scope: !3936, inlinedAt: !3944)
!3947 = !DILocalVariable(name: "nr", arg: 1, scope: !3922, file: !3923, line: 26, type: !110)
!3948 = !DILocation(line: 26, column: 33, scope: !3922)
!3949 = !DILocalVariable(name: "addr", arg: 2, scope: !3922, file: !3923, line: 26, type: !3926)
!3950 = !DILocation(line: 26, column: 61, scope: !3922)
!3951 = !DILocation(line: 28, column: 26, scope: !3922)
!3952 = !DILocation(line: 28, column: 33, scope: !3922)
!3953 = !DILocation(line: 28, column: 31, scope: !3922)
!3954 = !DILocation(line: 86, column: 20, scope: !3936, inlinedAt: !3944)
!3955 = !DILocation(line: 86, column: 23, scope: !3936, inlinedAt: !3944)
!3956 = !DILocation(line: 86, column: 2, scope: !3936, inlinedAt: !3944)
!3957 = !DILocation(line: 87, column: 2, scope: !3936, inlinedAt: !3944)
!3958 = !DILocation(line: 29, column: 15, scope: !3922)
!3959 = !DILocation(line: 29, column: 19, scope: !3922)
!3960 = !DILocation(line: 54, column: 27, scope: !3961, inlinedAt: !3932)
!3961 = distinct !DILexicalBlock(scope: !3929, file: !3930, line: 54, column: 6)
!3962 = !DILocation(line: 54, column: 6, scope: !3961, inlinedAt: !3932)
!3963 = !DILocation(line: 54, column: 6, scope: !3929, inlinedAt: !3932)
!3964 = !DILocation(line: 56, column: 6, scope: !3965, inlinedAt: !3932)
!3965 = distinct !DILexicalBlock(scope: !3961, file: !3930, line: 54, column: 32)
!3966 = !DILocation(line: 57, column: 12, scope: !3965, inlinedAt: !3932)
!3967 = !DILocation(line: 55, column: 3, scope: !3965, inlinedAt: !3932)
!3968 = !{i32 -2147136352}
!3969 = !DILocation(line: 59, column: 2, scope: !3965, inlinedAt: !3932)
!3970 = !DILocation(line: 61, column: 8, scope: !3971, inlinedAt: !3932)
!3971 = distinct !DILexicalBlock(scope: !3961, file: !3930, line: 59, column: 9)
!3972 = !DILocation(line: 61, column: 32, scope: !3971, inlinedAt: !3932)
!3973 = !DILocation(line: 60, column: 3, scope: !3971, inlinedAt: !3932)
!3974 = !{i32 -2147136220}
!3975 = !DILocation(line: 30, column: 1, scope: !3922)
!3976 = distinct !DISubprogram(name: "kasan_check_write", scope: !3977, file: !3977, line: 38, type: !3978, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3977 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3978 = !DISubroutineType(types: !3979)
!3979 = !{!315, !3940, !7}
!3980 = !DILocalVariable(name: "p", arg: 1, scope: !3976, file: !3977, line: 38, type: !3940)
!3981 = !DILocation(line: 38, column: 59, scope: !3976)
!3982 = !DILocalVariable(name: "size", arg: 2, scope: !3976, file: !3977, line: 38, type: !7)
!3983 = !DILocation(line: 38, column: 75, scope: !3976)
!3984 = !DILocation(line: 40, column: 2, scope: !3976)
!3985 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3986, file: !3986, line: 178, type: !3987, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3986 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3987 = !DISubroutineType(types: !3988)
!3988 = !{null, !3940, !218, !111}
!3989 = !DILocalVariable(name: "ptr", arg: 1, scope: !3985, file: !3986, line: 178, type: !3940)
!3990 = !DILocation(line: 178, column: 60, scope: !3985)
!3991 = !DILocalVariable(name: "size", arg: 2, scope: !3985, file: !3986, line: 178, type: !218)
!3992 = !DILocation(line: 178, column: 72, scope: !3985)
!3993 = !DILocalVariable(name: "type", arg: 3, scope: !3985, file: !3986, line: 179, type: !111)
!3994 = !DILocation(line: 179, column: 15, scope: !3985)
!3995 = !DILocation(line: 179, column: 23, scope: !3985)
!3996 = distinct !DISubprogram(name: "nanddev_bits_per_cell", scope: !51, file: !51, line: 374, type: !3997, scopeLine: 375, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!3997 = !DISubroutineType(types: !3998)
!3998 = !{!7, !3999}
!3999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4000, size: 64)
!4000 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !116)
!4001 = !DILocalVariable(name: "nand", arg: 1, scope: !3996, file: !51, line: 374, type: !3999)
!4002 = !DILocation(line: 374, column: 76, scope: !3996)
!4003 = !DILocation(line: 376, column: 9, scope: !3996)
!4004 = !DILocation(line: 376, column: 15, scope: !3996)
!4005 = !DILocation(line: 376, column: 22, scope: !3996)
!4006 = !DILocation(line: 376, column: 2, scope: !3996)
!4007 = distinct !DISubprogram(name: "micron_nand_on_die_ecc_setup", scope: !3, file: !3, line: 166, type: !4008, scopeLine: 167, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4008 = !DISubroutineType(types: !4009)
!4009 = !{!111, !112, !315}
!4010 = !DILocalVariable(name: "chip", arg: 1, scope: !4007, file: !3, line: 166, type: !112)
!4011 = !DILocation(line: 166, column: 59, scope: !4007)
!4012 = !DILocalVariable(name: "enable", arg: 2, scope: !4007, file: !3, line: 166, type: !315)
!4013 = !DILocation(line: 166, column: 70, scope: !4007)
!4014 = !DILocalVariable(name: "micron", scope: !4007, file: !3, line: 168, type: !2898)
!4015 = !DILocation(line: 168, column: 22, scope: !4007)
!4016 = !DILocation(line: 168, column: 58, scope: !4007)
!4017 = !DILocation(line: 168, column: 31, scope: !4007)
!4018 = !DILocalVariable(name: "feature", scope: !4007, file: !3, line: 169, type: !2472)
!4019 = !DILocation(line: 169, column: 5, scope: !4007)
!4020 = !DILocalVariable(name: "ret", scope: !4007, file: !3, line: 170, type: !111)
!4021 = !DILocation(line: 170, column: 6, scope: !4007)
!4022 = !DILocation(line: 172, column: 6, scope: !4023)
!4023 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 172, column: 6)
!4024 = !DILocation(line: 172, column: 14, scope: !4023)
!4025 = !DILocation(line: 172, column: 18, scope: !4023)
!4026 = !DILocation(line: 172, column: 6, scope: !4007)
!4027 = !DILocation(line: 173, column: 3, scope: !4023)
!4028 = !DILocation(line: 175, column: 6, scope: !4029)
!4029 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 175, column: 6)
!4030 = !DILocation(line: 175, column: 14, scope: !4029)
!4031 = !DILocation(line: 175, column: 18, scope: !4029)
!4032 = !DILocation(line: 175, column: 29, scope: !4029)
!4033 = !DILocation(line: 175, column: 26, scope: !4029)
!4034 = !DILocation(line: 175, column: 6, scope: !4007)
!4035 = !DILocation(line: 176, column: 3, scope: !4029)
!4036 = !DILocation(line: 178, column: 6, scope: !4037)
!4037 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 178, column: 6)
!4038 = !DILocation(line: 178, column: 6, scope: !4007)
!4039 = !DILocation(line: 179, column: 3, scope: !4037)
!4040 = !DILocation(line: 179, column: 14, scope: !4037)
!4041 = !DILocation(line: 181, column: 26, scope: !4007)
!4042 = !DILocation(line: 181, column: 57, scope: !4007)
!4043 = !DILocation(line: 181, column: 8, scope: !4007)
!4044 = !DILocation(line: 181, column: 6, scope: !4007)
!4045 = !DILocation(line: 182, column: 7, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4007, file: !3, line: 182, column: 6)
!4047 = !DILocation(line: 182, column: 6, scope: !4007)
!4048 = !DILocation(line: 183, column: 25, scope: !4046)
!4049 = !DILocation(line: 183, column: 3, scope: !4046)
!4050 = !DILocation(line: 183, column: 11, scope: !4046)
!4051 = !DILocation(line: 183, column: 15, scope: !4046)
!4052 = !DILocation(line: 183, column: 23, scope: !4046)
!4053 = !DILocation(line: 185, column: 9, scope: !4007)
!4054 = !DILocation(line: 185, column: 2, scope: !4007)
!4055 = !DILocation(line: 186, column: 1, scope: !4007)
!4056 = distinct !DISubprogram(name: "nand_get_manufacturer_data", scope: !74, file: !74, line: 1173, type: !4057, scopeLine: 1174, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4057 = !DISubroutineType(types: !4058)
!4058 = !{!104, !112}
!4059 = !DILocalVariable(name: "chip", arg: 1, scope: !4056, file: !74, line: 1173, type: !112)
!4060 = !DILocation(line: 1173, column: 66, scope: !4056)
!4061 = !DILocation(line: 1175, column: 9, scope: !4056)
!4062 = !DILocation(line: 1175, column: 15, scope: !4056)
!4063 = !DILocation(line: 1175, column: 28, scope: !4056)
!4064 = !DILocation(line: 1175, column: 2, scope: !4056)
!4065 = distinct !DISubprogram(name: "get_order", scope: !4066, file: !4066, line: 29, type: !4067, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4066 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4067 = !DISubroutineType(types: !4068)
!4068 = !{!111, !199}
!4069 = !DILocalVariable(name: "x", arg: 1, scope: !4070, file: !3930, line: 366, type: !134)
!4070 = distinct !DISubprogram(name: "fls64", scope: !3930, file: !3930, line: 366, type: !4071, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4071 = !DISubroutineType(types: !4072)
!4072 = !{!111, !134}
!4073 = !DILocation(line: 366, column: 40, scope: !4070, inlinedAt: !4074)
!4074 = distinct !DILocation(line: 46, column: 9, scope: !4065)
!4075 = !DILocalVariable(name: "bitpos", scope: !4070, file: !3930, line: 368, type: !111)
!4076 = !DILocation(line: 368, column: 6, scope: !4070, inlinedAt: !4074)
!4077 = !DILocalVariable(name: "size", arg: 1, scope: !4065, file: !4066, line: 29, type: !199)
!4078 = !DILocation(line: 29, column: 63, scope: !4065)
!4079 = !DILocation(line: 31, column: 27, scope: !4080)
!4080 = distinct !DILexicalBlock(scope: !4065, file: !4066, line: 31, column: 6)
!4081 = !DILocation(line: 31, column: 6, scope: !4080)
!4082 = !DILocation(line: 31, column: 6, scope: !4065)
!4083 = !DILocation(line: 32, column: 8, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4085, file: !4066, line: 32, column: 7)
!4085 = distinct !DILexicalBlock(scope: !4080, file: !4066, line: 31, column: 34)
!4086 = !DILocation(line: 32, column: 7, scope: !4085)
!4087 = !DILocation(line: 33, column: 4, scope: !4084)
!4088 = !DILocation(line: 35, column: 7, scope: !4089)
!4089 = distinct !DILexicalBlock(scope: !4085, file: !4066, line: 35, column: 7)
!4090 = !DILocation(line: 35, column: 12, scope: !4089)
!4091 = !DILocation(line: 35, column: 7, scope: !4085)
!4092 = !DILocation(line: 36, column: 4, scope: !4089)
!4093 = !DILocation(line: 38, column: 10, scope: !4085)
!4094 = !DILocation(line: 38, column: 28, scope: !4085)
!4095 = !DILocation(line: 38, column: 41, scope: !4085)
!4096 = !DILocation(line: 38, column: 3, scope: !4085)
!4097 = !DILocation(line: 41, column: 6, scope: !4065)
!4098 = !DILocation(line: 42, column: 7, scope: !4065)
!4099 = !DILocation(line: 46, column: 15, scope: !4065)
!4100 = !DILocation(line: 374, column: 2, scope: !4070, inlinedAt: !4074)
!4101 = !DILocation(line: 376, column: 14, scope: !4070, inlinedAt: !4074)
!4102 = !{i32 315869}
!4103 = !DILocation(line: 377, column: 9, scope: !4070, inlinedAt: !4074)
!4104 = !DILocation(line: 377, column: 16, scope: !4070, inlinedAt: !4074)
!4105 = !DILocation(line: 46, column: 2, scope: !4065)
!4106 = !DILocation(line: 48, column: 1, scope: !4065)
!4107 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4108, file: !4108, line: 30, type: !4109, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4108 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4109 = !DISubroutineType(types: !4110)
!4110 = !{!111, !133}
!4111 = !DILocation(line: 366, column: 40, scope: !4070, inlinedAt: !4112)
!4112 = distinct !DILocation(line: 32, column: 9, scope: !4107)
!4113 = !DILocation(line: 368, column: 6, scope: !4070, inlinedAt: !4112)
!4114 = !DILocalVariable(name: "n", arg: 1, scope: !4107, file: !4108, line: 30, type: !133)
!4115 = !DILocation(line: 30, column: 21, scope: !4107)
!4116 = !DILocation(line: 32, column: 15, scope: !4107)
!4117 = !DILocation(line: 374, column: 2, scope: !4070, inlinedAt: !4112)
!4118 = !DILocation(line: 376, column: 14, scope: !4070, inlinedAt: !4112)
!4119 = !DILocation(line: 377, column: 9, scope: !4070, inlinedAt: !4112)
!4120 = !DILocation(line: 377, column: 16, scope: !4070, inlinedAt: !4112)
!4121 = !DILocation(line: 32, column: 18, scope: !4107)
!4122 = !DILocation(line: 32, column: 2, scope: !4107)
!4123 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1329, file: !1329, line: 137, type: !4124, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4124 = !DISubroutineType(types: !4125)
!4125 = !{!104, !1260, !1601, !218, !102}
!4126 = !DILocalVariable(name: "s", arg: 1, scope: !4123, file: !1329, line: 137, type: !1260)
!4127 = !DILocation(line: 137, column: 54, scope: !4123)
!4128 = !DILocalVariable(name: "object", arg: 2, scope: !4123, file: !1329, line: 137, type: !1601)
!4129 = !DILocation(line: 137, column: 69, scope: !4123)
!4130 = !DILocalVariable(name: "size", arg: 3, scope: !4123, file: !1329, line: 138, type: !218)
!4131 = !DILocation(line: 138, column: 12, scope: !4123)
!4132 = !DILocalVariable(name: "flags", arg: 4, scope: !4123, file: !1329, line: 138, type: !102)
!4133 = !DILocation(line: 138, column: 24, scope: !4123)
!4134 = !DILocation(line: 140, column: 17, scope: !4123)
!4135 = !DILocation(line: 140, column: 2, scope: !4123)
!4136 = distinct !DISubprogram(name: "micron_nand_on_die_4_ooblayout_ecc", scope: !3, file: !3, line: 100, type: !157, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4137 = !DILocalVariable(name: "mtd", arg: 1, scope: !4136, file: !3, line: 100, type: !159)
!4138 = !DILocation(line: 100, column: 64, scope: !4136)
!4139 = !DILocalVariable(name: "section", arg: 2, scope: !4136, file: !3, line: 101, type: !111)
!4140 = !DILocation(line: 101, column: 16, scope: !4136)
!4141 = !DILocalVariable(name: "oobregion", arg: 3, scope: !4136, file: !3, line: 102, type: !160)
!4142 = !DILocation(line: 102, column: 35, scope: !4136)
!4143 = !DILocation(line: 104, column: 6, scope: !4144)
!4144 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 104, column: 6)
!4145 = !DILocation(line: 104, column: 14, scope: !4144)
!4146 = !DILocation(line: 104, column: 6, scope: !4136)
!4147 = !DILocation(line: 105, column: 3, scope: !4144)
!4148 = !DILocation(line: 107, column: 23, scope: !4136)
!4149 = !DILocation(line: 107, column: 31, scope: !4136)
!4150 = !DILocation(line: 107, column: 37, scope: !4136)
!4151 = !DILocation(line: 107, column: 2, scope: !4136)
!4152 = !DILocation(line: 107, column: 13, scope: !4136)
!4153 = !DILocation(line: 107, column: 20, scope: !4136)
!4154 = !DILocation(line: 108, column: 2, scope: !4136)
!4155 = !DILocation(line: 108, column: 13, scope: !4136)
!4156 = !DILocation(line: 108, column: 20, scope: !4136)
!4157 = !DILocation(line: 110, column: 2, scope: !4136)
!4158 = !DILocation(line: 111, column: 1, scope: !4136)
!4159 = distinct !DISubprogram(name: "micron_nand_on_die_4_ooblayout_free", scope: !3, file: !3, line: 113, type: !157, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4160 = !DILocalVariable(name: "mtd", arg: 1, scope: !4159, file: !3, line: 113, type: !159)
!4161 = !DILocation(line: 113, column: 65, scope: !4159)
!4162 = !DILocalVariable(name: "section", arg: 2, scope: !4159, file: !3, line: 114, type: !111)
!4163 = !DILocation(line: 114, column: 17, scope: !4159)
!4164 = !DILocalVariable(name: "oobregion", arg: 3, scope: !4159, file: !3, line: 115, type: !160)
!4165 = !DILocation(line: 115, column: 36, scope: !4159)
!4166 = !DILocation(line: 117, column: 6, scope: !4167)
!4167 = distinct !DILexicalBlock(scope: !4159, file: !3, line: 117, column: 6)
!4168 = !DILocation(line: 117, column: 14, scope: !4167)
!4169 = !DILocation(line: 117, column: 6, scope: !4159)
!4170 = !DILocation(line: 118, column: 3, scope: !4167)
!4171 = !DILocation(line: 120, column: 23, scope: !4159)
!4172 = !DILocation(line: 120, column: 31, scope: !4159)
!4173 = !DILocation(line: 120, column: 37, scope: !4159)
!4174 = !DILocation(line: 120, column: 2, scope: !4159)
!4175 = !DILocation(line: 120, column: 13, scope: !4159)
!4176 = !DILocation(line: 120, column: 20, scope: !4159)
!4177 = !DILocation(line: 121, column: 2, scope: !4159)
!4178 = !DILocation(line: 121, column: 13, scope: !4159)
!4179 = !DILocation(line: 121, column: 20, scope: !4159)
!4180 = !DILocation(line: 123, column: 2, scope: !4159)
!4181 = !DILocation(line: 124, column: 1, scope: !4159)
!4182 = distinct !DISubprogram(name: "micron_nand_on_die_8_ooblayout_ecc", scope: !3, file: !3, line: 131, type: !157, scopeLine: 134, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4183 = !DILocalVariable(name: "mtd", arg: 1, scope: !4182, file: !3, line: 131, type: !159)
!4184 = !DILocation(line: 131, column: 64, scope: !4182)
!4185 = !DILocalVariable(name: "section", arg: 2, scope: !4182, file: !3, line: 132, type: !111)
!4186 = !DILocation(line: 132, column: 16, scope: !4182)
!4187 = !DILocalVariable(name: "oobregion", arg: 3, scope: !4182, file: !3, line: 133, type: !160)
!4188 = !DILocation(line: 133, column: 35, scope: !4182)
!4189 = !DILocalVariable(name: "chip", scope: !4182, file: !3, line: 135, type: !112)
!4190 = !DILocation(line: 135, column: 20, scope: !4182)
!4191 = !DILocation(line: 135, column: 39, scope: !4182)
!4192 = !DILocation(line: 135, column: 27, scope: !4182)
!4193 = !DILocation(line: 137, column: 6, scope: !4194)
!4194 = distinct !DILexicalBlock(scope: !4182, file: !3, line: 137, column: 6)
!4195 = !DILocation(line: 137, column: 6, scope: !4182)
!4196 = !DILocation(line: 138, column: 3, scope: !4194)
!4197 = !DILocation(line: 140, column: 22, scope: !4182)
!4198 = !DILocation(line: 140, column: 27, scope: !4182)
!4199 = !DILocation(line: 140, column: 37, scope: !4182)
!4200 = !DILocation(line: 140, column: 43, scope: !4182)
!4201 = !DILocation(line: 140, column: 47, scope: !4182)
!4202 = !DILocation(line: 140, column: 35, scope: !4182)
!4203 = !DILocation(line: 140, column: 2, scope: !4182)
!4204 = !DILocation(line: 140, column: 13, scope: !4182)
!4205 = !DILocation(line: 140, column: 20, scope: !4182)
!4206 = !DILocation(line: 141, column: 22, scope: !4182)
!4207 = !DILocation(line: 141, column: 28, scope: !4182)
!4208 = !DILocation(line: 141, column: 32, scope: !4182)
!4209 = !DILocation(line: 141, column: 2, scope: !4182)
!4210 = !DILocation(line: 141, column: 13, scope: !4182)
!4211 = !DILocation(line: 141, column: 20, scope: !4182)
!4212 = !DILocation(line: 143, column: 2, scope: !4182)
!4213 = !DILocation(line: 144, column: 1, scope: !4182)
!4214 = distinct !DISubprogram(name: "micron_nand_on_die_8_ooblayout_free", scope: !3, file: !3, line: 146, type: !157, scopeLine: 149, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4215 = !DILocalVariable(name: "mtd", arg: 1, scope: !4214, file: !3, line: 146, type: !159)
!4216 = !DILocation(line: 146, column: 65, scope: !4214)
!4217 = !DILocalVariable(name: "section", arg: 2, scope: !4214, file: !3, line: 147, type: !111)
!4218 = !DILocation(line: 147, column: 17, scope: !4214)
!4219 = !DILocalVariable(name: "oobregion", arg: 3, scope: !4214, file: !3, line: 148, type: !160)
!4220 = !DILocation(line: 148, column: 36, scope: !4214)
!4221 = !DILocalVariable(name: "chip", scope: !4214, file: !3, line: 150, type: !112)
!4222 = !DILocation(line: 150, column: 20, scope: !4214)
!4223 = !DILocation(line: 150, column: 39, scope: !4214)
!4224 = !DILocation(line: 150, column: 27, scope: !4214)
!4225 = !DILocation(line: 152, column: 6, scope: !4226)
!4226 = distinct !DILexicalBlock(scope: !4214, file: !3, line: 152, column: 6)
!4227 = !DILocation(line: 152, column: 6, scope: !4214)
!4228 = !DILocation(line: 153, column: 3, scope: !4226)
!4229 = !DILocation(line: 155, column: 2, scope: !4214)
!4230 = !DILocation(line: 155, column: 13, scope: !4214)
!4231 = !DILocation(line: 155, column: 20, scope: !4214)
!4232 = !DILocation(line: 156, column: 22, scope: !4214)
!4233 = !DILocation(line: 156, column: 27, scope: !4214)
!4234 = !DILocation(line: 156, column: 37, scope: !4214)
!4235 = !DILocation(line: 156, column: 43, scope: !4214)
!4236 = !DILocation(line: 156, column: 47, scope: !4214)
!4237 = !DILocation(line: 156, column: 35, scope: !4214)
!4238 = !DILocation(line: 156, column: 53, scope: !4214)
!4239 = !DILocation(line: 156, column: 2, scope: !4214)
!4240 = !DILocation(line: 156, column: 13, scope: !4214)
!4241 = !DILocation(line: 156, column: 20, scope: !4214)
!4242 = !DILocation(line: 158, column: 2, scope: !4214)
!4243 = !DILocation(line: 159, column: 1, scope: !4214)
!4244 = distinct !DISubprogram(name: "mtd_to_nand", scope: !74, file: !74, line: 1147, type: !4245, scopeLine: 1148, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4245 = !DISubroutineType(types: !4246)
!4246 = !{!112, !159}
!4247 = !DILocalVariable(name: "mtd", arg: 1, scope: !4244, file: !74, line: 1147, type: !159)
!4248 = !DILocation(line: 1147, column: 62, scope: !4244)
!4249 = !DILocalVariable(name: "__mptr", scope: !4250, file: !74, line: 1149, type: !104)
!4250 = distinct !DILexicalBlock(scope: !4244, file: !74, line: 1149, column: 9)
!4251 = !DILocation(line: 1149, column: 9, scope: !4250)
!4252 = !DILocation(line: 1149, column: 9, scope: !4253)
!4253 = distinct !DILexicalBlock(scope: !4250, file: !74, line: 1149, column: 9)
!4254 = !DILocation(line: 1149, column: 2, scope: !4244)
!4255 = distinct !DISubprogram(name: "nand_has_exec_op", scope: !2446, file: !2446, line: 110, type: !4256, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4256 = !DISubroutineType(types: !4257)
!4257 = !{!315, !112}
!4258 = !DILocalVariable(name: "chip", arg: 1, scope: !4255, file: !2446, line: 110, type: !112)
!4259 = !DILocation(line: 110, column: 55, scope: !4255)
!4260 = !DILocation(line: 112, column: 7, scope: !4261)
!4261 = distinct !DILexicalBlock(scope: !4255, file: !2446, line: 112, column: 6)
!4262 = !DILocation(line: 112, column: 13, scope: !4261)
!4263 = !DILocation(line: 112, column: 24, scope: !4261)
!4264 = !DILocation(line: 112, column: 28, scope: !4261)
!4265 = !DILocation(line: 112, column: 34, scope: !4261)
!4266 = !DILocation(line: 112, column: 46, scope: !4261)
!4267 = !DILocation(line: 112, column: 50, scope: !4261)
!4268 = !DILocation(line: 113, column: 7, scope: !4261)
!4269 = !DILocation(line: 113, column: 13, scope: !4261)
!4270 = !DILocation(line: 113, column: 25, scope: !4261)
!4271 = !DILocation(line: 113, column: 30, scope: !4261)
!4272 = !DILocation(line: 112, column: 6, scope: !4255)
!4273 = !DILocation(line: 114, column: 3, scope: !4261)
!4274 = !DILocation(line: 116, column: 2, scope: !4255)
!4275 = !DILocation(line: 117, column: 1, scope: !4255)
!4276 = distinct !DISubprogram(name: "micron_nand_on_die_ecc_status_4", scope: !3, file: !3, line: 188, type: !4277, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4277 = !DISubroutineType(types: !4278)
!4278 = !{!111, !112, !258, !104, !111, !111}
!4279 = !DILocalVariable(name: "chip", arg: 1, scope: !4276, file: !3, line: 188, type: !112)
!4280 = !DILocation(line: 188, column: 62, scope: !4276)
!4281 = !DILocalVariable(name: "status", arg: 2, scope: !4276, file: !3, line: 188, type: !258)
!4282 = !DILocation(line: 188, column: 71, scope: !4276)
!4283 = !DILocalVariable(name: "buf", arg: 3, scope: !4276, file: !3, line: 189, type: !104)
!4284 = !DILocation(line: 189, column: 15, scope: !4276)
!4285 = !DILocalVariable(name: "page", arg: 4, scope: !4276, file: !3, line: 189, type: !111)
!4286 = !DILocation(line: 189, column: 24, scope: !4276)
!4287 = !DILocalVariable(name: "oob_required", arg: 5, scope: !4276, file: !3, line: 190, type: !111)
!4288 = !DILocation(line: 190, column: 13, scope: !4276)
!4289 = !DILocalVariable(name: "micron", scope: !4276, file: !3, line: 192, type: !2898)
!4290 = !DILocation(line: 192, column: 22, scope: !4276)
!4291 = !DILocation(line: 192, column: 58, scope: !4276)
!4292 = !DILocation(line: 192, column: 31, scope: !4276)
!4293 = !DILocalVariable(name: "mtd", scope: !4276, file: !3, line: 193, type: !159)
!4294 = !DILocation(line: 193, column: 19, scope: !4276)
!4295 = !DILocation(line: 193, column: 37, scope: !4276)
!4296 = !DILocation(line: 193, column: 25, scope: !4276)
!4297 = !DILocalVariable(name: "step", scope: !4276, file: !3, line: 194, type: !7)
!4298 = !DILocation(line: 194, column: 15, scope: !4276)
!4299 = !DILocalVariable(name: "max_bitflips", scope: !4276, file: !3, line: 194, type: !7)
!4300 = !DILocation(line: 194, column: 21, scope: !4276)
!4301 = !DILocalVariable(name: "use_datain", scope: !4276, file: !3, line: 195, type: !315)
!4302 = !DILocation(line: 195, column: 7, scope: !4276)
!4303 = !DILocalVariable(name: "ret", scope: !4276, file: !3, line: 196, type: !111)
!4304 = !DILocation(line: 196, column: 6, scope: !4276)
!4305 = !DILocation(line: 198, column: 8, scope: !4306)
!4306 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 198, column: 6)
!4307 = !DILocation(line: 198, column: 15, scope: !4306)
!4308 = !DILocation(line: 198, column: 6, scope: !4276)
!4309 = !DILocation(line: 199, column: 7, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4311, file: !3, line: 199, column: 7)
!4311 = distinct !DILexicalBlock(scope: !4306, file: !3, line: 198, column: 53)
!4312 = !DILocation(line: 199, column: 14, scope: !4310)
!4313 = !DILocation(line: 199, column: 7, scope: !4311)
!4314 = !DILocation(line: 200, column: 4, scope: !4310)
!4315 = !DILocation(line: 200, column: 9, scope: !4310)
!4316 = !DILocation(line: 200, column: 19, scope: !4310)
!4317 = !DILocation(line: 200, column: 25, scope: !4310)
!4318 = !DILocation(line: 202, column: 3, scope: !4311)
!4319 = !DILocation(line: 214, column: 7, scope: !4320)
!4320 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 214, column: 6)
!4321 = !DILocation(line: 214, column: 6, scope: !4276)
!4322 = !DILocation(line: 224, column: 25, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 224, column: 7)
!4324 = distinct !DILexicalBlock(scope: !4320, file: !3, line: 214, column: 21)
!4325 = !DILocation(line: 224, column: 8, scope: !4323)
!4326 = !DILocation(line: 224, column: 31, scope: !4323)
!4327 = !DILocation(line: 225, column: 26, scope: !4323)
!4328 = !DILocation(line: 225, column: 32, scope: !4323)
!4329 = !DILocation(line: 225, column: 38, scope: !4323)
!4330 = !DILocation(line: 225, column: 47, scope: !4323)
!4331 = !DILocation(line: 225, column: 52, scope: !4323)
!4332 = !DILocation(line: 225, column: 8, scope: !4323)
!4333 = !DILocation(line: 224, column: 7, scope: !4324)
!4334 = !DILocation(line: 227, column: 15, scope: !4323)
!4335 = !DILocation(line: 227, column: 4, scope: !4323)
!4336 = !DILocation(line: 229, column: 7, scope: !4337)
!4337 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 229, column: 7)
!4338 = !DILocation(line: 229, column: 7, scope: !4324)
!4339 = !DILocation(line: 230, column: 28, scope: !4337)
!4340 = !DILocation(line: 230, column: 34, scope: !4337)
!4341 = !DILocation(line: 230, column: 40, scope: !4337)
!4342 = !DILocation(line: 231, column: 7, scope: !4337)
!4343 = !DILocation(line: 231, column: 12, scope: !4337)
!4344 = !DILocation(line: 230, column: 10, scope: !4337)
!4345 = !DILocation(line: 230, column: 8, scope: !4337)
!4346 = !DILocation(line: 230, column: 4, scope: !4337)
!4347 = !DILocation(line: 233, column: 37, scope: !4337)
!4348 = !DILocation(line: 233, column: 43, scope: !4337)
!4349 = !DILocation(line: 233, column: 48, scope: !4337)
!4350 = !DILocation(line: 234, column: 9, scope: !4337)
!4351 = !DILocation(line: 234, column: 15, scope: !4337)
!4352 = !DILocation(line: 235, column: 9, scope: !4337)
!4353 = !DILocation(line: 235, column: 14, scope: !4337)
!4354 = !DILocation(line: 233, column: 10, scope: !4337)
!4355 = !DILocation(line: 233, column: 8, scope: !4337)
!4356 = !DILocation(line: 236, column: 7, scope: !4357)
!4357 = distinct !DILexicalBlock(scope: !4324, file: !3, line: 236, column: 7)
!4358 = !DILocation(line: 236, column: 7, scope: !4324)
!4359 = !DILocation(line: 237, column: 11, scope: !4357)
!4360 = !DILocation(line: 237, column: 4, scope: !4357)
!4361 = !DILocation(line: 238, column: 2, scope: !4324)
!4362 = !DILocation(line: 240, column: 31, scope: !4276)
!4363 = !DILocation(line: 240, column: 2, scope: !4276)
!4364 = !DILocation(line: 242, column: 26, scope: !4276)
!4365 = !DILocation(line: 242, column: 32, scope: !4276)
!4366 = !DILocation(line: 242, column: 41, scope: !4276)
!4367 = !DILocation(line: 242, column: 49, scope: !4276)
!4368 = !DILocation(line: 242, column: 53, scope: !4276)
!4369 = !DILocation(line: 243, column: 5, scope: !4276)
!4370 = !DILocation(line: 243, column: 10, scope: !4276)
!4371 = !DILocation(line: 243, column: 22, scope: !4276)
!4372 = !DILocation(line: 243, column: 27, scope: !4276)
!4373 = !DILocation(line: 243, column: 20, scope: !4276)
!4374 = !DILocation(line: 242, column: 8, scope: !4276)
!4375 = !DILocation(line: 242, column: 6, scope: !4276)
!4376 = !DILocation(line: 244, column: 6, scope: !4377)
!4377 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 244, column: 6)
!4378 = !DILocation(line: 244, column: 6, scope: !4276)
!4379 = !DILocation(line: 245, column: 10, scope: !4377)
!4380 = !DILocation(line: 245, column: 3, scope: !4377)
!4381 = !DILocation(line: 247, column: 12, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 247, column: 2)
!4383 = !DILocation(line: 247, column: 7, scope: !4382)
!4384 = !DILocation(line: 247, column: 17, scope: !4385)
!4385 = distinct !DILexicalBlock(scope: !4382, file: !3, line: 247, column: 2)
!4386 = !DILocation(line: 247, column: 24, scope: !4385)
!4387 = !DILocation(line: 247, column: 30, scope: !4385)
!4388 = !DILocation(line: 247, column: 34, scope: !4385)
!4389 = !DILocation(line: 247, column: 22, scope: !4385)
!4390 = !DILocation(line: 247, column: 2, scope: !4382)
!4391 = !DILocalVariable(name: "offs", scope: !4392, file: !3, line: 248, type: !7)
!4392 = distinct !DILexicalBlock(scope: !4385, file: !3, line: 247, column: 49)
!4393 = !DILocation(line: 248, column: 16, scope: !4392)
!4394 = !DILocalVariable(name: "i", scope: !4392, file: !3, line: 248, type: !7)
!4395 = !DILocation(line: 248, column: 22, scope: !4392)
!4396 = !DILocalVariable(name: "nbitflips", scope: !4392, file: !3, line: 248, type: !7)
!4397 = !DILocation(line: 248, column: 25, scope: !4392)
!4398 = !DILocalVariable(name: "rawbuf", scope: !4392, file: !3, line: 249, type: !2633)
!4399 = !DILocation(line: 249, column: 7, scope: !4392)
!4400 = !DILocalVariable(name: "corrbuf", scope: !4392, file: !3, line: 249, type: !2633)
!4401 = !DILocation(line: 249, column: 16, scope: !4392)
!4402 = !DILocation(line: 251, column: 10, scope: !4392)
!4403 = !DILocation(line: 251, column: 17, scope: !4392)
!4404 = !DILocation(line: 251, column: 23, scope: !4392)
!4405 = !DILocation(line: 251, column: 27, scope: !4392)
!4406 = !DILocation(line: 251, column: 15, scope: !4392)
!4407 = !DILocation(line: 251, column: 8, scope: !4392)
!4408 = !DILocation(line: 252, column: 12, scope: !4392)
!4409 = !DILocation(line: 252, column: 20, scope: !4392)
!4410 = !DILocation(line: 252, column: 24, scope: !4392)
!4411 = !DILocation(line: 252, column: 33, scope: !4392)
!4412 = !DILocation(line: 252, column: 31, scope: !4392)
!4413 = !DILocation(line: 252, column: 10, scope: !4392)
!4414 = !DILocation(line: 253, column: 13, scope: !4392)
!4415 = !DILocation(line: 253, column: 19, scope: !4392)
!4416 = !DILocation(line: 253, column: 17, scope: !4392)
!4417 = !DILocation(line: 253, column: 11, scope: !4392)
!4418 = !DILocation(line: 255, column: 10, scope: !4419)
!4419 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 255, column: 3)
!4420 = !DILocation(line: 255, column: 8, scope: !4419)
!4421 = !DILocation(line: 255, column: 15, scope: !4422)
!4422 = distinct !DILexicalBlock(scope: !4419, file: !3, line: 255, column: 3)
!4423 = !DILocation(line: 255, column: 19, scope: !4422)
!4424 = !DILocation(line: 255, column: 25, scope: !4422)
!4425 = !DILocation(line: 255, column: 29, scope: !4422)
!4426 = !DILocation(line: 255, column: 17, scope: !4422)
!4427 = !DILocation(line: 255, column: 3, scope: !4419)
!4428 = !DILocation(line: 256, column: 17, scope: !4422)
!4429 = !DILocation(line: 256, column: 14, scope: !4422)
!4430 = !DILocation(line: 256, column: 4, scope: !4422)
!4431 = !DILocation(line: 255, column: 36, scope: !4422)
!4432 = !DILocation(line: 255, column: 3, scope: !4422)
!4433 = distinct !{!4433, !4427, !4434}
!4434 = !DILocation(line: 256, column: 17, scope: !4419)
!4435 = !DILocation(line: 258, column: 11, scope: !4392)
!4436 = !DILocation(line: 258, column: 16, scope: !4392)
!4437 = !DILocation(line: 258, column: 22, scope: !4392)
!4438 = !DILocation(line: 258, column: 8, scope: !4392)
!4439 = !DILocation(line: 259, column: 12, scope: !4392)
!4440 = !DILocation(line: 259, column: 20, scope: !4392)
!4441 = !DILocation(line: 259, column: 24, scope: !4392)
!4442 = !DILocation(line: 259, column: 33, scope: !4392)
!4443 = !DILocation(line: 259, column: 38, scope: !4392)
!4444 = !DILocation(line: 259, column: 31, scope: !4392)
!4445 = !DILocation(line: 259, column: 50, scope: !4392)
!4446 = !DILocation(line: 259, column: 48, scope: !4392)
!4447 = !DILocation(line: 259, column: 10, scope: !4392)
!4448 = !DILocation(line: 260, column: 13, scope: !4392)
!4449 = !DILocation(line: 260, column: 19, scope: !4392)
!4450 = !DILocation(line: 260, column: 29, scope: !4392)
!4451 = !DILocation(line: 260, column: 27, scope: !4392)
!4452 = !DILocation(line: 260, column: 11, scope: !4392)
!4453 = !DILocation(line: 262, column: 10, scope: !4454)
!4454 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 262, column: 3)
!4455 = !DILocation(line: 262, column: 8, scope: !4454)
!4456 = !DILocation(line: 262, column: 15, scope: !4457)
!4457 = distinct !DILexicalBlock(scope: !4454, file: !3, line: 262, column: 3)
!4458 = !DILocation(line: 262, column: 19, scope: !4457)
!4459 = !DILocation(line: 262, column: 25, scope: !4457)
!4460 = !DILocation(line: 262, column: 29, scope: !4457)
!4461 = !DILocation(line: 262, column: 35, scope: !4457)
!4462 = !DILocation(line: 262, column: 17, scope: !4457)
!4463 = !DILocation(line: 262, column: 3, scope: !4454)
!4464 = !DILocation(line: 263, column: 17, scope: !4457)
!4465 = !DILocation(line: 263, column: 14, scope: !4457)
!4466 = !DILocation(line: 263, column: 4, scope: !4457)
!4467 = !DILocation(line: 262, column: 41, scope: !4457)
!4468 = !DILocation(line: 262, column: 3, scope: !4457)
!4469 = distinct !{!4469, !4463, !4470}
!4470 = !DILocation(line: 263, column: 17, scope: !4454)
!4471 = !DILocalVariable(name: "__ret_warn_on", scope: !4472, file: !3, line: 265, type: !111)
!4472 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 265, column: 7)
!4473 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 265, column: 7)
!4474 = !DILocation(line: 265, column: 7, scope: !4472)
!4475 = !DILocation(line: 265, column: 7, scope: !4476)
!4476 = distinct !DILexicalBlock(scope: !4472, file: !3, line: 265, column: 7)
!4477 = !DILocation(line: 265, column: 7, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4476, file: !3, line: 265, column: 7)
!4479 = !DILocation(line: 265, column: 7, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 265, column: 7)
!4481 = !DILocation(line: 265, column: 7, scope: !4482)
!4482 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 265, column: 7)
!4483 = !{i32 -2143398798, i32 -2143398769, i32 -2143398723, i32 -2143398665, i32 -2143398611, i32 -2143398557, i32 -2143398502, i32 -2143398471}
!4484 = !DILocation(line: 265, column: 7, scope: !4485)
!4485 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 265, column: 7)
!4486 = !{i32 -2143398055, i32 -2143398048, i32 -2143397996, i32 -2143397965, i32 -2143397935}
!4487 = !DILocation(line: 265, column: 7, scope: !4488)
!4488 = distinct !DILexicalBlock(scope: !4478, file: !3, line: 265, column: 7)
!4489 = !DILocation(line: 265, column: 7, scope: !4473)
!4490 = !DILocation(line: 265, column: 7, scope: !4392)
!4491 = !DILocation(line: 266, column: 4, scope: !4473)
!4492 = !DILocalVariable(name: "__UNIQUE_ID___x173", scope: !4493, file: !3, line: 268, type: !7)
!4493 = distinct !DILexicalBlock(scope: !4392, file: !3, line: 268, column: 18)
!4494 = !DILocation(line: 268, column: 18, scope: !4493)
!4495 = !DILocalVariable(name: "__UNIQUE_ID___y174", scope: !4493, file: !3, line: 268, type: !7)
!4496 = !DILocation(line: 268, column: 16, scope: !4392)
!4497 = !DILocation(line: 269, column: 31, scope: !4392)
!4498 = !DILocation(line: 269, column: 3, scope: !4392)
!4499 = !DILocation(line: 269, column: 8, scope: !4392)
!4500 = !DILocation(line: 269, column: 18, scope: !4392)
!4501 = !DILocation(line: 269, column: 28, scope: !4392)
!4502 = !DILocation(line: 270, column: 2, scope: !4392)
!4503 = !DILocation(line: 247, column: 45, scope: !4385)
!4504 = !DILocation(line: 247, column: 2, scope: !4385)
!4505 = distinct !{!4505, !4390, !4506}
!4506 = !DILocation(line: 270, column: 2, scope: !4382)
!4507 = !DILocation(line: 272, column: 9, scope: !4276)
!4508 = !DILocation(line: 272, column: 2, scope: !4276)
!4509 = !DILocation(line: 273, column: 1, scope: !4276)
!4510 = distinct !DISubprogram(name: "micron_nand_on_die_ecc_status_8", scope: !3, file: !3, line: 275, type: !4511, scopeLine: 276, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4511 = !DISubroutineType(types: !4512)
!4512 = !{!111, !112, !258}
!4513 = !DILocalVariable(name: "chip", arg: 1, scope: !4510, file: !3, line: 275, type: !112)
!4514 = !DILocation(line: 275, column: 62, scope: !4510)
!4515 = !DILocalVariable(name: "status", arg: 2, scope: !4510, file: !3, line: 275, type: !258)
!4516 = !DILocation(line: 275, column: 71, scope: !4510)
!4517 = !DILocalVariable(name: "mtd", scope: !4510, file: !3, line: 277, type: !159)
!4518 = !DILocation(line: 277, column: 19, scope: !4510)
!4519 = !DILocation(line: 277, column: 37, scope: !4510)
!4520 = !DILocation(line: 277, column: 25, scope: !4510)
!4521 = !DILocation(line: 283, column: 10, scope: !4510)
!4522 = !DILocation(line: 283, column: 17, scope: !4510)
!4523 = !DILocation(line: 283, column: 2, scope: !4510)
!4524 = !DILocation(line: 285, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4510, file: !3, line: 283, column: 41)
!4526 = !DILocation(line: 285, column: 8, scope: !4525)
!4527 = !DILocation(line: 285, column: 18, scope: !4525)
!4528 = !DILocation(line: 285, column: 24, scope: !4525)
!4529 = !DILocation(line: 286, column: 3, scope: !4525)
!4530 = !DILocation(line: 288, column: 3, scope: !4525)
!4531 = !DILocation(line: 288, column: 8, scope: !4525)
!4532 = !DILocation(line: 288, column: 18, scope: !4525)
!4533 = !DILocation(line: 288, column: 28, scope: !4525)
!4534 = !DILocation(line: 289, column: 3, scope: !4525)
!4535 = !DILocation(line: 291, column: 3, scope: !4525)
!4536 = !DILocation(line: 291, column: 8, scope: !4525)
!4537 = !DILocation(line: 291, column: 18, scope: !4525)
!4538 = !DILocation(line: 291, column: 28, scope: !4525)
!4539 = !DILocation(line: 293, column: 3, scope: !4525)
!4540 = !DILocation(line: 295, column: 3, scope: !4525)
!4541 = !DILocation(line: 295, column: 8, scope: !4525)
!4542 = !DILocation(line: 295, column: 18, scope: !4525)
!4543 = !DILocation(line: 295, column: 28, scope: !4525)
!4544 = !DILocation(line: 297, column: 3, scope: !4525)
!4545 = !DILocation(line: 299, column: 3, scope: !4525)
!4546 = !DILocation(line: 301, column: 1, scope: !4510)
!4547 = distinct !DISubprogram(name: "__arch_hweight8", scope: !4548, file: !4548, line: 31, type: !4549, scopeLine: 32, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4548 = !DIFile(filename: "./arch/x86/include/asm/arch_hweight.h", directory: "/home/lizy2001/genbc/linux")
!4549 = !DISubroutineType(types: !4550)
!4550 = !{!7, !7}
!4551 = !DILocalVariable(name: "w", arg: 1, scope: !4552, file: !4548, line: 15, type: !7)
!4552 = distinct !DISubprogram(name: "__arch_hweight32", scope: !4548, file: !4548, line: 15, type: !4549, scopeLine: 16, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !378)
!4553 = !DILocation(line: 15, column: 67, scope: !4552, inlinedAt: !4554)
!4554 = distinct !DILocation(line: 33, column: 9, scope: !4547)
!4555 = !DILocalVariable(name: "res", scope: !4552, file: !4548, line: 17, type: !7)
!4556 = !DILocation(line: 17, column: 15, scope: !4552, inlinedAt: !4554)
!4557 = !DILocalVariable(name: "w", arg: 1, scope: !4547, file: !4548, line: 31, type: !7)
!4558 = !DILocation(line: 31, column: 57, scope: !4547)
!4559 = !DILocation(line: 33, column: 26, scope: !4547)
!4560 = !DILocation(line: 33, column: 28, scope: !4547)
!4561 = !DILocation(line: 21, column: 15, scope: !4552, inlinedAt: !4554)
!4562 = !DILocation(line: 19, column: 2, scope: !4552, inlinedAt: !4554)
!4563 = !{i32 -2147087598, i32 -2147087570, i32 -2147087564, i32 -2147087548, i32 -2147087532, i32 -2147087505, i32 -2147087172, i32 -2147087890, i32 -2147087166, i32 -2147087118, i32 -2147087054, i32 -2147086992, i32 -2147086935, i32 -2147086879, i32 -2147087810, i32 -2147087785, i32 -2147086645, i32 -2147086515, i32 -2147086584, i32 -2147086501, i32 -2147087685}
!4564 = !DILocation(line: 23, column: 9, scope: !4552, inlinedAt: !4554)
!4565 = !DILocation(line: 33, column: 2, scope: !4547)
