; ModuleID = '../bcout/drivers/mtd/parsers/ofpart.llvm.bc'
source_filename = "drivers/mtd/parsers/ofpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_ofpart_parser_init6:\09\09\09"
module asm ".long\09ofpart_parser_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.mtd_part_parser = type { %struct.list_head, %struct.module*, i8*, %struct.of_device_id*, i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)*, void (%struct.mtd_partition*, i32)* }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.module = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
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
%union.anon.38 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_partition = type { i8*, i8**, i64, i64, i32, i32, %struct.device_node* }
%struct.mtd_part_parser_data = type { i64 }
%struct.kmem_cache = type opaque
%struct.anon.39 = type { i32, i32 }

@ofpart_parser = internal global %struct.mtd_part_parser { %struct.list_head zeroinitializer, %struct.module* null, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i32 0, i32 0), %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @parse_ofpart_match_table, i32 0, i32 0), i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @parse_fixed_partitions, void (%struct.mtd_partition*, i32)* null }, align 8, !dbg !0
@ofoldpart_parser = internal global %struct.mtd_part_parser { %struct.list_head zeroinitializer, %struct.module* null, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.11, i32 0, i32 0), %struct.of_device_id* null, i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)* @parse_ofoldpart_partitions, void (%struct.mtd_partition*, i32)* null }, align 8, !dbg !136
@__UNIQUE_ID___addressable_ofpart_parser_init164 = internal global i8* bitcast (i32 ()* @ofpart_parser_init to i8*), section ".discard.addressable", align 8, !dbg !74
@__exitcall_ofpart_parser_exit = internal global void ()* @ofpart_parser_exit, section ".exitcall.exit", align 8, !dbg !76
@__UNIQUE_ID_file165 = internal constant [39 x i8] c"ofpart.file=drivers/mtd/parsers/ofpart\00", section ".modinfo", align 1, !dbg !83
@__UNIQUE_ID_license166 = internal constant [19 x i8] c"ofpart.license=GPL\00", section ".modinfo", align 1, !dbg !90
@__UNIQUE_ID_description167 = internal constant [74 x i8] c"ofpart.description=Parser for MTD partitioning information in device tree\00", section ".modinfo", align 1, !dbg !95
@__UNIQUE_ID_author168 = internal constant [40 x i8] c"ofpart.author=Vitaly Wool, David Gibson\00", section ".modinfo", align 1, !dbg !100
@__UNIQUE_ID_alias169 = internal constant [30 x i8] c"ofpart.alias=fixed-partitions\00", section ".modinfo", align 1, !dbg !105
@__UNIQUE_ID_alias170 = internal constant [23 x i8] c"ofpart.alias=ofoldpart\00", section ".modinfo", align 1, !dbg !110
@.str = private unnamed_addr constant [17 x i8] c"fixed-partitions\00", align 1
@parse_ofpart_match_table = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-partitions\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !115
@.str.1 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"label\00", align 1
@.str.4 = private unnamed_addr constant [5 x i8] c"name\00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"read-only\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@.str.7 = private unnamed_addr constant [9 x i8] c"slc-mode\00", align 1
@.str.8 = private unnamed_addr constant [50 x i8] c"\013%s: error parsing ofpart partition %pOF (%pOF)\0A\00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.10 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.11 = private unnamed_addr constant [10 x i8] c"ofoldpart\00", align 1
@.str.12 = private unnamed_addr constant [57 x i8] c"\014Device tree uses obsolete partition map binding: %pOF\0A\00", align 1
@.str.13 = private unnamed_addr constant [16 x i8] c"partition-names\00", align 1
@.str.14 = private unnamed_addr constant [8 x i8] c"unnamed\00", align 1
@llvm.used = appending global [9 x i8*] [i8* bitcast (void ()* @ofpart_parser_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_ofpart_parser_init164 to i8*), i8* bitcast (void ()** @__exitcall_ofpart_parser_exit to i8*), i8* getelementptr inbounds ([39 x i8], [39 x i8]* @__UNIQUE_ID_file165, i32 0, i32 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__UNIQUE_ID_license166, i32 0, i32 0), i8* getelementptr inbounds ([74 x i8], [74 x i8]* @__UNIQUE_ID_description167, i32 0, i32 0), i8* getelementptr inbounds ([40 x i8], [40 x i8]* @__UNIQUE_ID_author168, i32 0, i32 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_alias169, i32 0, i32 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__UNIQUE_ID_alias170, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ofpart_parser_exit() #0 section ".exit.text" !dbg !2354 {
entry:
  call void @deregister_mtd_parser(%struct.mtd_part_parser* @ofpart_parser) #8, !dbg !2355
  call void @deregister_mtd_parser(%struct.mtd_part_parser* @ofoldpart_parser) #8, !dbg !2356
  ret void, !dbg !2357
}

; Function Attrs: noredzone
declare dso_local void @deregister_mtd_parser(%struct.mtd_part_parser*) #1

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ofpart_parser_init() #0 section ".init.text" !dbg !2358 {
entry:
  %call = call i32 @__register_mtd_parser(%struct.mtd_part_parser* @ofpart_parser, %struct.module* null) #8, !dbg !2361
  %call1 = call i32 @__register_mtd_parser(%struct.mtd_part_parser* @ofoldpart_parser, %struct.module* null) #8, !dbg !2362
  ret i32 0, !dbg !2363
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @parse_fixed_partitions(%struct.mtd_info* %master, %struct.mtd_partition** %pparts, %struct.mtd_part_parser_data* %data) #2 !dbg !2364 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.mtd_info*, align 8
  %pparts.addr = alloca %struct.mtd_partition**, align 8
  %data.addr = alloca %struct.mtd_part_parser_data*, align 8
  %parts = alloca %struct.mtd_partition*, align 8
  %mtd_node = alloca %struct.device_node*, align 8
  %ofpart_node = alloca %struct.device_node*, align 8
  %partname = alloca i8*, align 8
  %pp = alloca %struct.device_node*, align 8
  %nr_parts = alloca i32, align 4
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %dedicated = alloca i8, align 1
  %tmp = alloca i32, align 4
  %reg = alloca i32*, align 8
  %len = alloca i32, align 4
  %a_cells = alloca i32, align 4
  %s_cells = alloca i32, align 4
  %tmp38 = alloca i32, align 4
  %tmp46 = alloca i32, align 4
  store %struct.mtd_info* %master, %struct.mtd_info** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master.addr, metadata !2365, metadata !DIExpression()), !dbg !2366
  store %struct.mtd_partition** %pparts, %struct.mtd_partition*** %pparts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partition*** %pparts.addr, metadata !2367, metadata !DIExpression()), !dbg !2368
  store %struct.mtd_part_parser_data* %data, %struct.mtd_part_parser_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser_data** %data.addr, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %parts, metadata !2371, metadata !DIExpression()), !dbg !2373
  call void @llvm.dbg.declare(metadata %struct.device_node** %mtd_node, metadata !2374, metadata !DIExpression()), !dbg !2375
  call void @llvm.dbg.declare(metadata %struct.device_node** %ofpart_node, metadata !2376, metadata !DIExpression()), !dbg !2377
  call void @llvm.dbg.declare(metadata i8** %partname, metadata !2378, metadata !DIExpression()), !dbg !2379
  call void @llvm.dbg.declare(metadata %struct.device_node** %pp, metadata !2380, metadata !DIExpression()), !dbg !2381
  call void @llvm.dbg.declare(metadata i32* %nr_parts, metadata !2382, metadata !DIExpression()), !dbg !2383
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2384, metadata !DIExpression()), !dbg !2385
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2386, metadata !DIExpression()), !dbg !2387
  store i32 0, i32* %ret, align 4, !dbg !2387
  call void @llvm.dbg.declare(metadata i8* %dedicated, metadata !2388, metadata !DIExpression()), !dbg !2389
  store i8 1, i8* %dedicated, align 1, !dbg !2389
  %0 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !2390
  %call = call %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %0) #8, !dbg !2391
  store %struct.device_node* %call, %struct.device_node** %mtd_node, align 8, !dbg !2392
  %1 = load %struct.device_node*, %struct.device_node** %mtd_node, align 8, !dbg !2393
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2393
  br i1 %tobool, label %if.end, label %if.then, !dbg !2395

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2396
  br label %return, !dbg !2396

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %mtd_node, align 8, !dbg !2397
  %call1 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0)) #8, !dbg !2398
  store %struct.device_node* %call1, %struct.device_node** %ofpart_node, align 8, !dbg !2399
  %3 = load %struct.device_node*, %struct.device_node** %ofpart_node, align 8, !dbg !2400
  %tobool2 = icmp ne %struct.device_node* %3, null, !dbg !2400
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2402

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %tmp, align 4, !dbg !2403
  %4 = load i32, i32* %tmp, align 4, !dbg !2407
  %5 = load %struct.device_node*, %struct.device_node** %mtd_node, align 8, !dbg !2408
  store %struct.device_node* %5, %struct.device_node** %ofpart_node, align 8, !dbg !2409
  store i8 0, i8* %dedicated, align 1, !dbg !2410
  br label %if.end8, !dbg !2411

if.else:                                          ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %ofpart_node, align 8, !dbg !2412
  %call4 = call i32 @of_device_is_compatible(%struct.device_node* %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0)) #8, !dbg !2414
  %tobool5 = icmp ne i32 %call4, 0, !dbg !2414
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2415

if.then6:                                         ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !2416
  br label %return, !dbg !2416

if.end7:                                          ; preds = %if.else
  br label %if.end8

if.end8:                                          ; preds = %if.end7, %if.then3
  store i32 0, i32* %nr_parts, align 4, !dbg !2418
  %7 = load %struct.device_node*, %struct.device_node** %ofpart_node, align 8, !dbg !2419
  %call9 = call %struct.device_node* @of_get_next_child(%struct.device_node* %7, %struct.device_node* null) #8, !dbg !2419
  store %struct.device_node* %call9, %struct.device_node** %pp, align 8, !dbg !2419
  br label %for.cond, !dbg !2419

for.cond:                                         ; preds = %for.inc, %if.end8
  %8 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2421
  %cmp = icmp ne %struct.device_node* %8, null, !dbg !2421
  br i1 %cmp, label %for.body, label %for.end, !dbg !2419

for.body:                                         ; preds = %for.cond
  %9 = load i8, i8* %dedicated, align 1, !dbg !2423
  %tobool10 = trunc i8 %9 to i1, !dbg !2423
  br i1 %tobool10, label %if.end13, label %land.lhs.true, !dbg !2426

land.lhs.true:                                    ; preds = %for.body
  %10 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2427
  %call11 = call zeroext i1 @node_has_compatible(%struct.device_node* %10) #8, !dbg !2428
  br i1 %call11, label %if.then12, label %if.end13, !dbg !2429

if.then12:                                        ; preds = %land.lhs.true
  br label %for.inc, !dbg !2430

if.end13:                                         ; preds = %land.lhs.true, %for.body
  %11 = load i32, i32* %nr_parts, align 4, !dbg !2431
  %inc = add i32 %11, 1, !dbg !2431
  store i32 %inc, i32* %nr_parts, align 4, !dbg !2431
  br label %for.inc, !dbg !2432

for.inc:                                          ; preds = %if.end13, %if.then12
  %12 = load %struct.device_node*, %struct.device_node** %ofpart_node, align 8, !dbg !2421
  %13 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2421
  %call14 = call %struct.device_node* @of_get_next_child(%struct.device_node* %12, %struct.device_node* %13) #8, !dbg !2421
  store %struct.device_node* %call14, %struct.device_node** %pp, align 8, !dbg !2421
  br label %for.cond, !dbg !2421, !llvm.loop !2433

for.end:                                          ; preds = %for.cond
  %14 = load i32, i32* %nr_parts, align 4, !dbg !2435
  %cmp15 = icmp eq i32 %14, 0, !dbg !2437
  br i1 %cmp15, label %if.then16, label %if.end17, !dbg !2438

if.then16:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !2439
  br label %return, !dbg !2439

if.end17:                                         ; preds = %for.end
  %15 = load i32, i32* %nr_parts, align 4, !dbg !2440
  %conv = sext i32 %15 to i64, !dbg !2440
  %call18 = call i8* @kcalloc(i64 %conv, i64 48, i32 3264) #8, !dbg !2441
  %16 = bitcast i8* %call18 to %struct.mtd_partition*, !dbg !2441
  store %struct.mtd_partition* %16, %struct.mtd_partition** %parts, align 8, !dbg !2442
  %17 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2443
  %tobool19 = icmp ne %struct.mtd_partition* %17, null, !dbg !2443
  br i1 %tobool19, label %if.end21, label %if.then20, !dbg !2445

if.then20:                                        ; preds = %if.end17
  store i32 -12, i32* %retval, align 4, !dbg !2446
  br label %return, !dbg !2446

if.end21:                                         ; preds = %if.end17
  store i32 0, i32* %i, align 4, !dbg !2447
  %18 = load %struct.device_node*, %struct.device_node** %ofpart_node, align 8, !dbg !2448
  %call22 = call %struct.device_node* @of_get_next_child(%struct.device_node* %18, %struct.device_node* null) #8, !dbg !2448
  store %struct.device_node* %call22, %struct.device_node** %pp, align 8, !dbg !2448
  br label %for.cond23, !dbg !2448

for.cond23:                                       ; preds = %for.inc82, %if.end21
  %19 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2450
  %cmp24 = icmp ne %struct.device_node* %19, null, !dbg !2450
  br i1 %cmp24, label %for.body26, label %for.end84, !dbg !2448

for.body26:                                       ; preds = %for.cond23
  call void @llvm.dbg.declare(metadata i32** %reg, metadata !2452, metadata !DIExpression()), !dbg !2456
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2457, metadata !DIExpression()), !dbg !2458
  call void @llvm.dbg.declare(metadata i32* %a_cells, metadata !2459, metadata !DIExpression()), !dbg !2460
  call void @llvm.dbg.declare(metadata i32* %s_cells, metadata !2461, metadata !DIExpression()), !dbg !2462
  %20 = load i8, i8* %dedicated, align 1, !dbg !2463
  %tobool27 = trunc i8 %20 to i1, !dbg !2463
  br i1 %tobool27, label %if.end32, label %land.lhs.true28, !dbg !2465

land.lhs.true28:                                  ; preds = %for.body26
  %21 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2466
  %call29 = call zeroext i1 @node_has_compatible(%struct.device_node* %21) #8, !dbg !2467
  br i1 %call29, label %if.then31, label %if.end32, !dbg !2468

if.then31:                                        ; preds = %land.lhs.true28
  br label %for.inc82, !dbg !2469

if.end32:                                         ; preds = %land.lhs.true28, %for.body26
  %22 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2470
  %call33 = call i8* @of_get_property(%struct.device_node* %22, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0), i32* %len) #8, !dbg !2471
  %23 = bitcast i8* %call33 to i32*, !dbg !2471
  store i32* %23, i32** %reg, align 8, !dbg !2472
  %24 = load i32*, i32** %reg, align 8, !dbg !2473
  %tobool34 = icmp ne i32* %24, null, !dbg !2473
  br i1 %tobool34, label %if.end40, label %if.then35, !dbg !2475

if.then35:                                        ; preds = %if.end32
  %25 = load i8, i8* %dedicated, align 1, !dbg !2476
  %tobool36 = trunc i8 %25 to i1, !dbg !2476
  br i1 %tobool36, label %if.then37, label %if.else39, !dbg !2479

if.then37:                                        ; preds = %if.then35
  store i32 0, i32* %tmp38, align 4, !dbg !2480
  %26 = load i32, i32* %tmp38, align 4, !dbg !2484
  br label %ofpart_fail, !dbg !2485

if.else39:                                        ; preds = %if.then35
  %27 = load i32, i32* %nr_parts, align 4, !dbg !2486
  %dec = add i32 %27, -1, !dbg !2486
  store i32 %dec, i32* %nr_parts, align 4, !dbg !2486
  br label %for.inc82, !dbg !2488

if.end40:                                         ; preds = %if.end32
  %28 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2489
  %call41 = call i32 @of_n_addr_cells(%struct.device_node* %28) #8, !dbg !2490
  store i32 %call41, i32* %a_cells, align 4, !dbg !2491
  %29 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2492
  %call42 = call i32 @of_n_size_cells(%struct.device_node* %29) #8, !dbg !2493
  store i32 %call42, i32* %s_cells, align 4, !dbg !2494
  %30 = load i32, i32* %len, align 4, !dbg !2495
  %div = sdiv i32 %30, 4, !dbg !2497
  %31 = load i32, i32* %a_cells, align 4, !dbg !2498
  %32 = load i32, i32* %s_cells, align 4, !dbg !2499
  %add = add i32 %31, %32, !dbg !2500
  %cmp43 = icmp ne i32 %div, %add, !dbg !2501
  br i1 %cmp43, label %if.then45, label %if.end47, !dbg !2502

if.then45:                                        ; preds = %if.end40
  store i32 0, i32* %tmp46, align 4, !dbg !2503
  %33 = load i32, i32* %tmp46, align 4, !dbg !2507
  br label %ofpart_fail, !dbg !2508

if.end47:                                         ; preds = %if.end40
  %34 = load i32*, i32** %reg, align 8, !dbg !2509
  %35 = load i32, i32* %a_cells, align 4, !dbg !2510
  %call48 = call i64 @of_read_number(i32* %34, i32 %35) #8, !dbg !2511
  %36 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2512
  %37 = load i32, i32* %i, align 4, !dbg !2513
  %idxprom = sext i32 %37 to i64, !dbg !2512
  %arrayidx = getelementptr %struct.mtd_partition, %struct.mtd_partition* %36, i64 %idxprom, !dbg !2512
  %offset = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx, i32 0, i32 3, !dbg !2514
  store i64 %call48, i64* %offset, align 8, !dbg !2515
  %38 = load i32*, i32** %reg, align 8, !dbg !2516
  %39 = load i32, i32* %a_cells, align 4, !dbg !2517
  %idx.ext = sext i32 %39 to i64, !dbg !2518
  %add.ptr = getelementptr i32, i32* %38, i64 %idx.ext, !dbg !2518
  %40 = load i32, i32* %s_cells, align 4, !dbg !2519
  %call49 = call i64 @of_read_number(i32* %add.ptr, i32 %40) #8, !dbg !2520
  %41 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2521
  %42 = load i32, i32* %i, align 4, !dbg !2522
  %idxprom50 = sext i32 %42 to i64, !dbg !2521
  %arrayidx51 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %41, i64 %idxprom50, !dbg !2521
  %size = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx51, i32 0, i32 2, !dbg !2523
  store i64 %call49, i64* %size, align 8, !dbg !2524
  %43 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2525
  %44 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2526
  %45 = load i32, i32* %i, align 4, !dbg !2527
  %idxprom52 = sext i32 %45 to i64, !dbg !2526
  %arrayidx53 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %44, i64 %idxprom52, !dbg !2526
  %of_node = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx53, i32 0, i32 6, !dbg !2528
  store %struct.device_node* %43, %struct.device_node** %of_node, align 8, !dbg !2529
  %46 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2530
  %call54 = call i8* @of_get_property(%struct.device_node* %46, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.3, i64 0, i64 0), i32* %len) #8, !dbg !2531
  store i8* %call54, i8** %partname, align 8, !dbg !2532
  %47 = load i8*, i8** %partname, align 8, !dbg !2533
  %tobool55 = icmp ne i8* %47, null, !dbg !2533
  br i1 %tobool55, label %if.end58, label %if.then56, !dbg !2535

if.then56:                                        ; preds = %if.end47
  %48 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2536
  %call57 = call i8* @of_get_property(%struct.device_node* %48, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i32* %len) #8, !dbg !2537
  store i8* %call57, i8** %partname, align 8, !dbg !2538
  br label %if.end58, !dbg !2539

if.end58:                                         ; preds = %if.then56, %if.end47
  %49 = load i8*, i8** %partname, align 8, !dbg !2540
  %50 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2541
  %51 = load i32, i32* %i, align 4, !dbg !2542
  %idxprom59 = sext i32 %51 to i64, !dbg !2541
  %arrayidx60 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %50, i64 %idxprom59, !dbg !2541
  %name = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx60, i32 0, i32 0, !dbg !2543
  store i8* %49, i8** %name, align 8, !dbg !2544
  %52 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2545
  %call61 = call i8* @of_get_property(%struct.device_node* %52, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32* %len) #8, !dbg !2547
  %tobool62 = icmp ne i8* %call61, null, !dbg !2547
  br i1 %tobool62, label %if.then63, label %if.end66, !dbg !2548

if.then63:                                        ; preds = %if.end58
  %53 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2549
  %54 = load i32, i32* %i, align 4, !dbg !2550
  %idxprom64 = sext i32 %54 to i64, !dbg !2549
  %arrayidx65 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %53, i64 %idxprom64, !dbg !2549
  %mask_flags = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx65, i32 0, i32 4, !dbg !2551
  %55 = load i32, i32* %mask_flags, align 8, !dbg !2552
  %or = or i32 %55, 1024, !dbg !2552
  store i32 %or, i32* %mask_flags, align 8, !dbg !2552
  br label %if.end66, !dbg !2549

if.end66:                                         ; preds = %if.then63, %if.end58
  %56 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2553
  %call67 = call i8* @of_get_property(%struct.device_node* %56, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32* %len) #8, !dbg !2555
  %tobool68 = icmp ne i8* %call67, null, !dbg !2555
  br i1 %tobool68, label %if.then69, label %if.end74, !dbg !2556

if.then69:                                        ; preds = %if.end66
  %57 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2557
  %58 = load i32, i32* %i, align 4, !dbg !2558
  %idxprom70 = sext i32 %58 to i64, !dbg !2557
  %arrayidx71 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %57, i64 %idxprom70, !dbg !2557
  %mask_flags72 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx71, i32 0, i32 4, !dbg !2559
  %59 = load i32, i32* %mask_flags72, align 8, !dbg !2560
  %or73 = or i32 %59, 8192, !dbg !2560
  store i32 %or73, i32* %mask_flags72, align 8, !dbg !2560
  br label %if.end74, !dbg !2557

if.end74:                                         ; preds = %if.then69, %if.end66
  %60 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2561
  %call75 = call zeroext i1 @of_property_read_bool(%struct.device_node* %60, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.7, i64 0, i64 0)) #8, !dbg !2563
  br i1 %call75, label %if.then76, label %if.end80, !dbg !2564

if.then76:                                        ; preds = %if.end74
  %61 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2565
  %62 = load i32, i32* %i, align 4, !dbg !2566
  %idxprom77 = sext i32 %62 to i64, !dbg !2565
  %arrayidx78 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %61, i64 %idxprom77, !dbg !2565
  %add_flags = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx78, i32 0, i32 5, !dbg !2567
  %63 = load i32, i32* %add_flags, align 4, !dbg !2568
  %or79 = or i32 %63, 16384, !dbg !2568
  store i32 %or79, i32* %add_flags, align 4, !dbg !2568
  br label %if.end80, !dbg !2565

if.end80:                                         ; preds = %if.then76, %if.end74
  %64 = load i32, i32* %i, align 4, !dbg !2569
  %inc81 = add i32 %64, 1, !dbg !2569
  store i32 %inc81, i32* %i, align 4, !dbg !2569
  br label %for.inc82, !dbg !2570

for.inc82:                                        ; preds = %if.end80, %if.else39, %if.then31
  %65 = load %struct.device_node*, %struct.device_node** %ofpart_node, align 8, !dbg !2450
  %66 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2450
  %call83 = call %struct.device_node* @of_get_next_child(%struct.device_node* %65, %struct.device_node* %66) #8, !dbg !2450
  store %struct.device_node* %call83, %struct.device_node** %pp, align 8, !dbg !2450
  br label %for.cond23, !dbg !2450, !llvm.loop !2571

for.end84:                                        ; preds = %for.cond23
  %67 = load i32, i32* %nr_parts, align 4, !dbg !2573
  %tobool85 = icmp ne i32 %67, 0, !dbg !2573
  br i1 %tobool85, label %if.end87, label %if.then86, !dbg !2575

if.then86:                                        ; preds = %for.end84
  br label %ofpart_none, !dbg !2576

if.end87:                                         ; preds = %for.end84
  %68 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2577
  %69 = load %struct.mtd_partition**, %struct.mtd_partition*** %pparts.addr, align 8, !dbg !2578
  store %struct.mtd_partition* %68, %struct.mtd_partition** %69, align 8, !dbg !2579
  %70 = load i32, i32* %nr_parts, align 4, !dbg !2580
  store i32 %70, i32* %retval, align 4, !dbg !2581
  br label %return, !dbg !2581

ofpart_fail:                                      ; preds = %if.then45, %if.then37
  call void @llvm.dbg.label(metadata !2582), !dbg !2583
  %71 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !2584
  %name88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %71, i32 0, i32 13, !dbg !2584
  %72 = load i8*, i8** %name88, align 8, !dbg !2584
  %73 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2584
  %74 = load %struct.device_node*, %struct.device_node** %mtd_node, align 8, !dbg !2584
  %call89 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str.8, i64 0, i64 0), i8* %72, %struct.device_node* %73, %struct.device_node* %74) #9, !dbg !2584
  store i32 -22, i32* %ret, align 4, !dbg !2585
  br label %ofpart_none, !dbg !2586

ofpart_none:                                      ; preds = %ofpart_fail, %if.then86
  call void @llvm.dbg.label(metadata !2587), !dbg !2588
  %75 = load %struct.device_node*, %struct.device_node** %pp, align 8, !dbg !2589
  call void @of_node_put(%struct.device_node* %75) #8, !dbg !2590
  %76 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !2591
  %77 = bitcast %struct.mtd_partition* %76 to i8*, !dbg !2591
  call void @kfree(i8* %77) #8, !dbg !2592
  %78 = load i32, i32* %ret, align 4, !dbg !2593
  store i32 %78, i32* %retval, align 4, !dbg !2594
  br label %return, !dbg !2594

return:                                           ; preds = %ofpart_none, %if.end87, %if.then20, %if.then16, %if.then6, %if.then
  %79 = load i32, i32* %retval, align 4, !dbg !2595
  ret i32 %79, !dbg !2595
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %mtd) #2 !dbg !2596 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2599, metadata !DIExpression()), !dbg !2600
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2601
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 55, !dbg !2602
  %call = call %struct.device_node* @dev_of_node(%struct.device* %dev) #8, !dbg !2603
  ret %struct.device_node* %call, !dbg !2604
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_child(%struct.device_node*, %struct.device_node*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @node_has_compatible(%struct.device_node* %pp) #2 !dbg !2605 {
entry:
  %pp.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %pp, %struct.device_node** %pp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %pp.addr, metadata !2608, metadata !DIExpression()), !dbg !2609
  %0 = load %struct.device_node*, %struct.device_node** %pp.addr, align 8, !dbg !2610
  %call = call i8* @of_get_property(%struct.device_node* %0, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.9, i64 0, i64 0), i32* null) #8, !dbg !2611
  %tobool = icmp ne i8* %call, null, !dbg !2611
  ret i1 %tobool, !dbg !2612
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #2 !dbg !2613 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2616, metadata !DIExpression()), !dbg !2617
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2618, metadata !DIExpression()), !dbg !2619
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2620, metadata !DIExpression()), !dbg !2621
  %0 = load i64, i64* %n.addr, align 8, !dbg !2622
  %1 = load i64, i64* %size.addr, align 8, !dbg !2623
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2624
  %or = or i32 %2, 256, !dbg !2625
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #8, !dbg !2626
  ret i8* %call, !dbg !2627
}

; Function Attrs: noredzone
declare dso_local i8* @of_get_property(%struct.device_node*, i8*, i32*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_n_addr_cells(%struct.device_node*) #1

; Function Attrs: noredzone
declare dso_local i32 @of_n_size_cells(%struct.device_node*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @of_read_number(i32* %cell, i32 %size) #2 !dbg !2628 {
entry:
  %cell.addr = alloca i32*, align 8
  %size.addr = alloca i32, align 4
  %r = alloca i64, align 8
  store i32* %cell, i32** %cell.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %cell.addr, metadata !2631, metadata !DIExpression()), !dbg !2632
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !2633, metadata !DIExpression()), !dbg !2634
  call void @llvm.dbg.declare(metadata i64* %r, metadata !2635, metadata !DIExpression()), !dbg !2636
  store i64 0, i64* %r, align 8, !dbg !2636
  br label %for.cond, !dbg !2637

for.cond:                                         ; preds = %for.inc, %entry
  %0 = load i32, i32* %size.addr, align 4, !dbg !2638
  %dec = add i32 %0, -1, !dbg !2638
  store i32 %dec, i32* %size.addr, align 4, !dbg !2638
  %tobool = icmp ne i32 %0, 0, !dbg !2641
  br i1 %tobool, label %for.body, label %for.end, !dbg !2641

for.body:                                         ; preds = %for.cond
  %1 = load i64, i64* %r, align 8, !dbg !2642
  %shl = shl i64 %1, 32, !dbg !2643
  %2 = load i32*, i32** %cell.addr, align 8, !dbg !2644
  %3 = load i32, i32* %2, align 4, !dbg !2644
  %4 = call i1 @llvm.is.constant.i32(i32 %3), !dbg !2644
  br i1 %4, label %cond.true, label %cond.false, !dbg !2644

cond.true:                                        ; preds = %for.body
  %5 = load i32*, i32** %cell.addr, align 8, !dbg !2644
  %6 = load i32, i32* %5, align 4, !dbg !2644
  %and = and i32 %6, 255, !dbg !2644
  %shl1 = shl i32 %and, 24, !dbg !2644
  %7 = load i32*, i32** %cell.addr, align 8, !dbg !2644
  %8 = load i32, i32* %7, align 4, !dbg !2644
  %and2 = and i32 %8, 65280, !dbg !2644
  %shl3 = shl i32 %and2, 8, !dbg !2644
  %or = or i32 %shl1, %shl3, !dbg !2644
  %9 = load i32*, i32** %cell.addr, align 8, !dbg !2644
  %10 = load i32, i32* %9, align 4, !dbg !2644
  %and4 = and i32 %10, 16711680, !dbg !2644
  %shr = lshr i32 %and4, 8, !dbg !2644
  %or5 = or i32 %or, %shr, !dbg !2644
  %11 = load i32*, i32** %cell.addr, align 8, !dbg !2644
  %12 = load i32, i32* %11, align 4, !dbg !2644
  %and6 = and i32 %12, -16777216, !dbg !2644
  %shr7 = lshr i32 %and6, 24, !dbg !2644
  %or8 = or i32 %or5, %shr7, !dbg !2644
  br label %cond.end, !dbg !2644

cond.false:                                       ; preds = %for.body
  %13 = load i32*, i32** %cell.addr, align 8, !dbg !2644
  %14 = load i32, i32* %13, align 4, !dbg !2644
  %call = call i32 @__fswab32(i32 %14) #10, !dbg !2644
  br label %cond.end, !dbg !2644

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or8, %cond.true ], [ %call, %cond.false ], !dbg !2644
  %conv = zext i32 %cond to i64, !dbg !2644
  %or9 = or i64 %shl, %conv, !dbg !2645
  store i64 %or9, i64* %r, align 8, !dbg !2646
  br label %for.inc, !dbg !2647

for.inc:                                          ; preds = %cond.end
  %15 = load i32*, i32** %cell.addr, align 8, !dbg !2648
  %incdec.ptr = getelementptr i32, i32* %15, i32 1, !dbg !2648
  store i32* %incdec.ptr, i32** %cell.addr, align 8, !dbg !2648
  br label %for.cond, !dbg !2649, !llvm.loop !2650

for.end:                                          ; preds = %for.cond
  %16 = load i64, i64* %r, align 8, !dbg !2652
  ret i64 %16, !dbg !2653
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #2 !dbg !2654 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2659, metadata !DIExpression()), !dbg !2660
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2661, metadata !DIExpression()), !dbg !2662
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2663, metadata !DIExpression()), !dbg !2664
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2665
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2666
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #8, !dbg !2667
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2664
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2668
  %tobool = icmp ne %struct.property* %2, null, !dbg !2668
  %3 = zext i1 %tobool to i64, !dbg !2668
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2668
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2668
  ret i1 %tobool1, !dbg !2669
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #2 !dbg !2670 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  ret void, !dbg !2675
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @dev_of_node(%struct.device* %dev) #2 !dbg !2676 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2679, metadata !DIExpression()), !dbg !2680
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2681
  %tobool = icmp ne %struct.device* %0, null, !dbg !2681
  br i1 %tobool, label %if.end, label %if.then, !dbg !2683

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !2684
  br label %return, !dbg !2684

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2685
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2686
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2686
  store %struct.device_node* %2, %struct.device_node** %retval, align 8, !dbg !2687
  br label %return, !dbg !2687

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !2688
  ret %struct.device_node* %3, !dbg !2688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #2 !dbg !2689 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2690, metadata !DIExpression()), !dbg !2694
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2703, metadata !DIExpression()), !dbg !2704
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2705, metadata !DIExpression()), !dbg !2706
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2707, metadata !DIExpression()), !dbg !2708
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2709, metadata !DIExpression()), !dbg !2713
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2715, metadata !DIExpression()), !dbg !2719
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2721, metadata !DIExpression()), !dbg !2725
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2730, metadata !DIExpression()), !dbg !2731
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2732, metadata !DIExpression()), !dbg !2733
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2734, metadata !DIExpression()), !dbg !2735
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2736, metadata !DIExpression()), !dbg !2737
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2738, metadata !DIExpression()), !dbg !2739
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2740, metadata !DIExpression()), !dbg !2741
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2742, metadata !DIExpression()), !dbg !2743
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2744, metadata !DIExpression()), !dbg !2745
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2746, metadata !DIExpression()), !dbg !2747
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2748, metadata !DIExpression()), !dbg !2749
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2750, metadata !DIExpression()), !dbg !2751
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !2752, metadata !DIExpression()), !dbg !2753
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !2754, metadata !DIExpression()), !dbg !2757
  %0 = load i64, i64* %n.addr, align 8, !dbg !2757
  store i64 %0, i64* %__a, align 8, !dbg !2757
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !2758, metadata !DIExpression()), !dbg !2757
  %1 = load i64, i64* %size.addr, align 8, !dbg !2757
  store i64 %1, i64* %__b, align 8, !dbg !2757
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !2759, metadata !DIExpression()), !dbg !2757
  store i64* %bytes, i64** %__d, align 8, !dbg !2757
  %cmp = icmp eq i64* %__a, %__b, !dbg !2757
  %conv = zext i1 %cmp to i32, !dbg !2757
  %2 = load i64*, i64** %__d, align 8, !dbg !2757
  %cmp1 = icmp eq i64* %__a, %2, !dbg !2757
  %conv2 = zext i1 %cmp1 to i32, !dbg !2757
  %3 = load i64, i64* %__a, align 8, !dbg !2757
  %4 = load i64, i64* %__b, align 8, !dbg !2757
  %5 = load i64*, i64** %__d, align 8, !dbg !2757
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !2757
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !2757
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !2757
  store i64 %8, i64* %5, align 8, !dbg !2757
  %frombool = zext i1 %7 to i8, !dbg !2757
  store i8 %frombool, i8* %tmp, align 1, !dbg !2757
  %9 = load i8, i8* %tmp, align 1, !dbg !2757
  %tobool = trunc i8 %9 to i1, !dbg !2757
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #8, !dbg !2760
  %lnot = xor i1 %call, true, !dbg !2760
  %lnot3 = xor i1 %lnot, true, !dbg !2760
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !2760
  %conv4 = sext i32 %lnot.ext to i64, !dbg !2760
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !2760
  br i1 %tobool5, label %if.then, label %if.end, !dbg !2761

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !2762
  br label %return, !dbg !2762

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !2763
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !2764
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !2765

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !2766
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !2767
  br i1 %13, label %if.then6, label %if.end8, !dbg !2768

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !2769
  %15 = load i32, i32* %flags.addr, align 4, !dbg !2770
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !2771
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #11, !dbg !2772
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !2773

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !2774
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !2775
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2776

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !2777
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !2778
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !2779
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !2780
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2739
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !2781
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2782
  %24 = load i32, i32* %order.i.i, align 4, !dbg !2783
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2784
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2785
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2786
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #12, !dbg !2787
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2787
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2787
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2787
  call void @llvm.assume(i1 %maskcond.i.i.i) #11, !dbg !2787
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2788
  br label %kmalloc.exit, !dbg !2788

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !2789
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2790
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !2790
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2792

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2793
  br label %kmalloc_index.exit.i, !dbg !2793

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2794
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !2796
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2797

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2798
  br label %kmalloc_index.exit.i, !dbg !2798

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2799
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !2801
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2802

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2803
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !2804
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2805

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2806
  br label %kmalloc_index.exit.i, !dbg !2806

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2807
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !2809
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2810

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2811
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !2812
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2813

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2814
  br label %kmalloc_index.exit.i, !dbg !2814

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2815
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !2817
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2818

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2819
  br label %kmalloc_index.exit.i, !dbg !2819

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2820
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !2822
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2823

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2824
  br label %kmalloc_index.exit.i, !dbg !2824

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2825
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !2827
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2828

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2829
  br label %kmalloc_index.exit.i, !dbg !2829

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2830
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !2832
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2833

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2834
  br label %kmalloc_index.exit.i, !dbg !2834

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2835
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !2837
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2838

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2839
  br label %kmalloc_index.exit.i, !dbg !2839

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2840
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !2842
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2843

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2844
  br label %kmalloc_index.exit.i, !dbg !2844

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2845
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !2847
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2848

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2849
  br label %kmalloc_index.exit.i, !dbg !2849

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2850
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !2852
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2853

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2854
  br label %kmalloc_index.exit.i, !dbg !2854

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2855
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !2857
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2858

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2859
  br label %kmalloc_index.exit.i, !dbg !2859

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2860
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !2862
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2863

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2864
  br label %kmalloc_index.exit.i, !dbg !2864

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2865
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !2867
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2868

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2869
  br label %kmalloc_index.exit.i, !dbg !2869

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2870
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !2872
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2873

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2874
  br label %kmalloc_index.exit.i, !dbg !2874

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2875
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !2877
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2878

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2879
  br label %kmalloc_index.exit.i, !dbg !2879

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2880
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !2882
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2883

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2884
  br label %kmalloc_index.exit.i, !dbg !2884

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2885
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !2887
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2888

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2889
  br label %kmalloc_index.exit.i, !dbg !2889

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2890
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !2892
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2893

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2894
  br label %kmalloc_index.exit.i, !dbg !2894

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2895
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !2897
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2898

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2899
  br label %kmalloc_index.exit.i, !dbg !2899

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2900
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !2902
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2903

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2904
  br label %kmalloc_index.exit.i, !dbg !2904

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2905
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !2907
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2908

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2909
  br label %kmalloc_index.exit.i, !dbg !2909

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2910
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !2912
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2913

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2914
  br label %kmalloc_index.exit.i, !dbg !2914

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2915
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !2917
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2918

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2919
  br label %kmalloc_index.exit.i, !dbg !2919

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2920
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !2922
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2923

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2924
  br label %kmalloc_index.exit.i, !dbg !2924

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2925
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !2927
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2928

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2929
  br label %kmalloc_index.exit.i, !dbg !2929

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2930
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !2932
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2933

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2934
  br label %kmalloc_index.exit.i, !dbg !2934

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.10, i64 0, i64 0), i32 382, i32 0, i64 12) #11, !dbg !2935, !srcloc !2938
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #11, !dbg !2939, !srcloc !2942
  unreachable, !dbg !2943

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !2944
  store i32 %59, i32* %index.i, align 4, !dbg !2945
  %60 = load i32, i32* %index.i, align 4, !dbg !2946
  %tobool.i = icmp ne i32 %60, 0, !dbg !2946
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2948

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2949
  br label %kmalloc.exit, !dbg !2949

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !2950
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2951
  %and.i.i = and i32 %62, 17, !dbg !2951
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2951
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2951
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2951
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2951
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2953

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2954
  br label %kmalloc_type.exit.i, !dbg !2954

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2955
  %and2.i.i = and i32 %63, 1, !dbg !2956
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2955
  %64 = zext i1 %tobool3.i.i to i64, !dbg !2955
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2955
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2957
  br label %kmalloc_type.exit.i, !dbg !2957

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !2958
  %idxprom.i = zext i32 %65 to i64, !dbg !2959
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2959
  %66 = load i32, i32* %index.i, align 4, !dbg !2960
  %idxprom6.i = zext i32 %66 to i64, !dbg !2959
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2959
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2959
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !2961
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !2962
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2963
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2964
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #12, !dbg !2965
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2965
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2965
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2965
  call void @llvm.assume(i1 %maskcond.i.i) #11, !dbg !2965
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2708
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2966
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !2967
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2968
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2969
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #12, !dbg !2970
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2971
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !2972
  store i8* %76, i8** %retval.i, align 8, !dbg !2973
  br label %kmalloc.exit, !dbg !2973

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !2974
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !2975
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #12, !dbg !2976
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2976
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2976
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2976
  call void @llvm.assume(i1 %maskcond.i) #11, !dbg !2976
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2977
  br label %kmalloc.exit, !dbg !2977

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !2978
  store i8* %79, i8** %retval, align 8, !dbg !2979
  br label %return, !dbg !2979

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !2980
  %81 = load i32, i32* %flags.addr, align 4, !dbg !2981
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #8, !dbg !2982
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !2982
  %maskedptr = and i64 %ptrint, 7, !dbg !2982
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !2982
  call void @llvm.assume(i1 %maskcond), !dbg !2982
  store i8* %call9, i8** %retval, align 8, !dbg !2983
  br label %return, !dbg !2983

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !2984
  ret i8* %82, !dbg !2984
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #2 !dbg !2985 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !2989, metadata !DIExpression()), !dbg !2990
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !2991
  %tobool = trunc i8 %0 to i1, !dbg !2991
  %lnot = xor i1 %tobool, true, !dbg !2991
  %lnot1 = xor i1 %lnot, true, !dbg !2991
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2991
  %conv = sext i32 %lnot.ext to i64, !dbg !2991
  %tobool2 = icmp ne i64 %conv, 0, !dbg !2991
  ret i1 %tobool2, !dbg !2992
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #1

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !2993 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2997, metadata !DIExpression()), !dbg !3002
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3004, metadata !DIExpression()), !dbg !3005
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  %0 = load i64, i64* %size.addr, align 8, !dbg !3008
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3010
  br i1 %1, label %if.then, label %if.end447, !dbg !3011

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3012
  %tobool = icmp ne i64 %2, 0, !dbg !3012
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3015

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3016
  br label %return, !dbg !3016

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3017
  %cmp = icmp ult i64 %3, 4096, !dbg !3019
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3020

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3021
  br label %return, !dbg !3021

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub = sub i64 %4, 1, !dbg !3022
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3022
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3022

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub4 = sub i64 %6, 1, !dbg !3022
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3022
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3022

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub6 = sub i64 %8, 1, !dbg !3022
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3022
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3022

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3022

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub9 = sub i64 %9, 1, !dbg !3022
  %and = and i64 %sub9, -9223372036854775808, !dbg !3022
  %tobool10 = icmp ne i64 %and, 0, !dbg !3022
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3022

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3022

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub13 = sub i64 %10, 1, !dbg !3022
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3022
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3022
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3022

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3022

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub18 = sub i64 %11, 1, !dbg !3022
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3022
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3022
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3022

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3022

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub23 = sub i64 %12, 1, !dbg !3022
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3022
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3022
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3022

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3022

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub28 = sub i64 %13, 1, !dbg !3022
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3022
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3022
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3022

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3022

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub33 = sub i64 %14, 1, !dbg !3022
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3022
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3022
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3022

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3022

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub38 = sub i64 %15, 1, !dbg !3022
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3022
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3022
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3022

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3022

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub43 = sub i64 %16, 1, !dbg !3022
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3022
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3022
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3022

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3022

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub48 = sub i64 %17, 1, !dbg !3022
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3022
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3022
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3022

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3022

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub53 = sub i64 %18, 1, !dbg !3022
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3022
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3022
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3022

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3022

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub58 = sub i64 %19, 1, !dbg !3022
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3022
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3022
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3022

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3022

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub63 = sub i64 %20, 1, !dbg !3022
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3022
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3022
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3022

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3022

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub68 = sub i64 %21, 1, !dbg !3022
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3022
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3022
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3022

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3022

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub73 = sub i64 %22, 1, !dbg !3022
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3022
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3022
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3022

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3022

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub78 = sub i64 %23, 1, !dbg !3022
  %and79 = and i64 %sub78, 562949953421312, !dbg !3022
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3022
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3022

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3022

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub83 = sub i64 %24, 1, !dbg !3022
  %and84 = and i64 %sub83, 281474976710656, !dbg !3022
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3022
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3022

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3022

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub88 = sub i64 %25, 1, !dbg !3022
  %and89 = and i64 %sub88, 140737488355328, !dbg !3022
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3022
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3022

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3022

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub93 = sub i64 %26, 1, !dbg !3022
  %and94 = and i64 %sub93, 70368744177664, !dbg !3022
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3022
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3022

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3022

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub98 = sub i64 %27, 1, !dbg !3022
  %and99 = and i64 %sub98, 35184372088832, !dbg !3022
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3022
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3022

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3022

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub103 = sub i64 %28, 1, !dbg !3022
  %and104 = and i64 %sub103, 17592186044416, !dbg !3022
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3022
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3022

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3022

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub108 = sub i64 %29, 1, !dbg !3022
  %and109 = and i64 %sub108, 8796093022208, !dbg !3022
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3022
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3022

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3022

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub113 = sub i64 %30, 1, !dbg !3022
  %and114 = and i64 %sub113, 4398046511104, !dbg !3022
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3022
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3022

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3022

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub118 = sub i64 %31, 1, !dbg !3022
  %and119 = and i64 %sub118, 2199023255552, !dbg !3022
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3022
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3022

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3022

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub123 = sub i64 %32, 1, !dbg !3022
  %and124 = and i64 %sub123, 1099511627776, !dbg !3022
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3022
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3022

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3022

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub128 = sub i64 %33, 1, !dbg !3022
  %and129 = and i64 %sub128, 549755813888, !dbg !3022
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3022
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3022

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3022

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub133 = sub i64 %34, 1, !dbg !3022
  %and134 = and i64 %sub133, 274877906944, !dbg !3022
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3022
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3022

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3022

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub138 = sub i64 %35, 1, !dbg !3022
  %and139 = and i64 %sub138, 137438953472, !dbg !3022
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3022
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3022

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3022

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub143 = sub i64 %36, 1, !dbg !3022
  %and144 = and i64 %sub143, 68719476736, !dbg !3022
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3022
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3022

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3022

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub148 = sub i64 %37, 1, !dbg !3022
  %and149 = and i64 %sub148, 34359738368, !dbg !3022
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3022
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3022

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3022

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub153 = sub i64 %38, 1, !dbg !3022
  %and154 = and i64 %sub153, 17179869184, !dbg !3022
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3022
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3022

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3022

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub158 = sub i64 %39, 1, !dbg !3022
  %and159 = and i64 %sub158, 8589934592, !dbg !3022
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3022
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3022

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3022

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub163 = sub i64 %40, 1, !dbg !3022
  %and164 = and i64 %sub163, 4294967296, !dbg !3022
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3022
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3022

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3022

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub168 = sub i64 %41, 1, !dbg !3022
  %and169 = and i64 %sub168, 2147483648, !dbg !3022
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3022
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3022

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3022

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub173 = sub i64 %42, 1, !dbg !3022
  %and174 = and i64 %sub173, 1073741824, !dbg !3022
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3022
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3022

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3022

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub178 = sub i64 %43, 1, !dbg !3022
  %and179 = and i64 %sub178, 536870912, !dbg !3022
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3022
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3022

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3022

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub183 = sub i64 %44, 1, !dbg !3022
  %and184 = and i64 %sub183, 268435456, !dbg !3022
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3022
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3022

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3022

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub188 = sub i64 %45, 1, !dbg !3022
  %and189 = and i64 %sub188, 134217728, !dbg !3022
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3022
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3022

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3022

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub193 = sub i64 %46, 1, !dbg !3022
  %and194 = and i64 %sub193, 67108864, !dbg !3022
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3022
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3022

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3022

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub198 = sub i64 %47, 1, !dbg !3022
  %and199 = and i64 %sub198, 33554432, !dbg !3022
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3022
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3022

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3022

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub203 = sub i64 %48, 1, !dbg !3022
  %and204 = and i64 %sub203, 16777216, !dbg !3022
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3022
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3022

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3022

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub208 = sub i64 %49, 1, !dbg !3022
  %and209 = and i64 %sub208, 8388608, !dbg !3022
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3022
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3022

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3022

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub213 = sub i64 %50, 1, !dbg !3022
  %and214 = and i64 %sub213, 4194304, !dbg !3022
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3022
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3022

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3022

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub218 = sub i64 %51, 1, !dbg !3022
  %and219 = and i64 %sub218, 2097152, !dbg !3022
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3022
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3022

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3022

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub223 = sub i64 %52, 1, !dbg !3022
  %and224 = and i64 %sub223, 1048576, !dbg !3022
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3022
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3022

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3022

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub228 = sub i64 %53, 1, !dbg !3022
  %and229 = and i64 %sub228, 524288, !dbg !3022
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3022
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3022

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3022

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub233 = sub i64 %54, 1, !dbg !3022
  %and234 = and i64 %sub233, 262144, !dbg !3022
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3022
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3022

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3022

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub238 = sub i64 %55, 1, !dbg !3022
  %and239 = and i64 %sub238, 131072, !dbg !3022
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3022
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3022

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3022

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub243 = sub i64 %56, 1, !dbg !3022
  %and244 = and i64 %sub243, 65536, !dbg !3022
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3022
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3022

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3022

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub248 = sub i64 %57, 1, !dbg !3022
  %and249 = and i64 %sub248, 32768, !dbg !3022
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3022
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3022

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3022

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub253 = sub i64 %58, 1, !dbg !3022
  %and254 = and i64 %sub253, 16384, !dbg !3022
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3022
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3022

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3022

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub258 = sub i64 %59, 1, !dbg !3022
  %and259 = and i64 %sub258, 8192, !dbg !3022
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3022
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3022

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3022

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub263 = sub i64 %60, 1, !dbg !3022
  %and264 = and i64 %sub263, 4096, !dbg !3022
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3022
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3022

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3022

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub268 = sub i64 %61, 1, !dbg !3022
  %and269 = and i64 %sub268, 2048, !dbg !3022
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3022
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3022

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3022

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub273 = sub i64 %62, 1, !dbg !3022
  %and274 = and i64 %sub273, 1024, !dbg !3022
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3022
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3022

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3022

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub278 = sub i64 %63, 1, !dbg !3022
  %and279 = and i64 %sub278, 512, !dbg !3022
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3022
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3022

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3022

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub283 = sub i64 %64, 1, !dbg !3022
  %and284 = and i64 %sub283, 256, !dbg !3022
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3022
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3022

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3022

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub288 = sub i64 %65, 1, !dbg !3022
  %and289 = and i64 %sub288, 128, !dbg !3022
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3022
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3022

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3022

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub293 = sub i64 %66, 1, !dbg !3022
  %and294 = and i64 %sub293, 64, !dbg !3022
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3022
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3022

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3022

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub298 = sub i64 %67, 1, !dbg !3022
  %and299 = and i64 %sub298, 32, !dbg !3022
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3022
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3022

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3022

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub303 = sub i64 %68, 1, !dbg !3022
  %and304 = and i64 %sub303, 16, !dbg !3022
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3022
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3022

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3022

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub308 = sub i64 %69, 1, !dbg !3022
  %and309 = and i64 %sub308, 8, !dbg !3022
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3022
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3022

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3022

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub313 = sub i64 %70, 1, !dbg !3022
  %and314 = and i64 %sub313, 4, !dbg !3022
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3022
  %71 = zext i1 %tobool315 to i64, !dbg !3022
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3022
  br label %cond.end, !dbg !3022

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3022
  br label %cond.end317, !dbg !3022

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3022
  br label %cond.end319, !dbg !3022

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3022
  br label %cond.end321, !dbg !3022

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3022
  br label %cond.end323, !dbg !3022

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3022
  br label %cond.end325, !dbg !3022

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3022
  br label %cond.end327, !dbg !3022

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3022
  br label %cond.end329, !dbg !3022

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3022
  br label %cond.end331, !dbg !3022

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3022
  br label %cond.end333, !dbg !3022

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3022
  br label %cond.end335, !dbg !3022

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3022
  br label %cond.end337, !dbg !3022

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3022
  br label %cond.end339, !dbg !3022

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3022
  br label %cond.end341, !dbg !3022

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3022
  br label %cond.end343, !dbg !3022

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3022
  br label %cond.end345, !dbg !3022

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3022
  br label %cond.end347, !dbg !3022

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3022
  br label %cond.end349, !dbg !3022

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3022
  br label %cond.end351, !dbg !3022

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3022
  br label %cond.end353, !dbg !3022

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3022
  br label %cond.end355, !dbg !3022

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3022
  br label %cond.end357, !dbg !3022

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3022
  br label %cond.end359, !dbg !3022

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3022
  br label %cond.end361, !dbg !3022

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3022
  br label %cond.end363, !dbg !3022

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3022
  br label %cond.end365, !dbg !3022

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3022
  br label %cond.end367, !dbg !3022

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3022
  br label %cond.end369, !dbg !3022

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3022
  br label %cond.end371, !dbg !3022

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3022
  br label %cond.end373, !dbg !3022

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3022
  br label %cond.end375, !dbg !3022

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3022
  br label %cond.end377, !dbg !3022

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3022
  br label %cond.end379, !dbg !3022

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3022
  br label %cond.end381, !dbg !3022

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3022
  br label %cond.end383, !dbg !3022

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3022
  br label %cond.end385, !dbg !3022

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3022
  br label %cond.end387, !dbg !3022

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3022
  br label %cond.end389, !dbg !3022

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3022
  br label %cond.end391, !dbg !3022

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3022
  br label %cond.end393, !dbg !3022

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3022
  br label %cond.end395, !dbg !3022

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3022
  br label %cond.end397, !dbg !3022

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3022
  br label %cond.end399, !dbg !3022

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3022
  br label %cond.end401, !dbg !3022

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3022
  br label %cond.end403, !dbg !3022

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3022
  br label %cond.end405, !dbg !3022

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3022
  br label %cond.end407, !dbg !3022

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3022
  br label %cond.end409, !dbg !3022

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3022
  br label %cond.end411, !dbg !3022

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3022
  br label %cond.end413, !dbg !3022

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3022
  br label %cond.end415, !dbg !3022

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3022
  br label %cond.end417, !dbg !3022

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3022
  br label %cond.end419, !dbg !3022

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3022
  br label %cond.end421, !dbg !3022

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3022
  br label %cond.end423, !dbg !3022

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3022
  br label %cond.end425, !dbg !3022

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3022
  br label %cond.end427, !dbg !3022

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3022
  br label %cond.end429, !dbg !3022

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3022
  br label %cond.end431, !dbg !3022

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3022
  br label %cond.end433, !dbg !3022

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3022
  br label %cond.end435, !dbg !3022

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3022
  br label %cond.end437, !dbg !3022

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3022
  br label %cond.end440, !dbg !3022

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3022

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3022
  br label %cond.end444, !dbg !3022

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3022
  %sub443 = sub i64 %72, 1, !dbg !3022
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3022
  br label %cond.end444, !dbg !3022

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3022
  %sub446 = sub i32 %cond445, 12, !dbg !3023
  %add = add i32 %sub446, 1, !dbg !3024
  store i32 %add, i32* %retval, align 4, !dbg !3025
  br label %return, !dbg !3025

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3026
  %dec = add i64 %73, -1, !dbg !3026
  store i64 %dec, i64* %size.addr, align 8, !dbg !3026
  %74 = load i64, i64* %size.addr, align 8, !dbg !3027
  %shr = lshr i64 %74, 12, !dbg !3027
  store i64 %shr, i64* %size.addr, align 8, !dbg !3027
  %75 = load i64, i64* %size.addr, align 8, !dbg !3028
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3005
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3029
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3030
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !3029, !srcloc !3031
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3029
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3032
  %add.i = add i32 %79, 1, !dbg !3033
  store i32 %add.i, i32* %retval, align 4, !dbg !3034
  br label %return, !dbg !3034

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3035
  ret i32 %80, !dbg !3035
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !3036 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2997, metadata !DIExpression()), !dbg !3040
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3004, metadata !DIExpression()), !dbg !3042
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  %0 = load i64, i64* %n.addr, align 8, !dbg !3045
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3042
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3046
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3047
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !3046, !srcloc !3031
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3046
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3048
  %add.i = add i32 %4, 1, !dbg !3049
  %sub = sub i32 %add.i, 1, !dbg !3050
  ret i32 %sub, !dbg !3051
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #1

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #2 !dbg !3052 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3056, metadata !DIExpression()), !dbg !3057
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3058, metadata !DIExpression()), !dbg !3059
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3060, metadata !DIExpression()), !dbg !3061
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3062, metadata !DIExpression()), !dbg !3063
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3064
  ret i8* %0, !dbg !3065
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #7 !dbg !3066 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3070, metadata !DIExpression()), !dbg !3071
  %0 = load i32, i32* %val.addr, align 4, !dbg !3072
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !3073
  ret i32 %call, !dbg !3074
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #7 !dbg !3075 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  %0 = load i32, i32* %val.addr, align 4, !dbg !3079
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #14, !dbg !3080, !srcloc !3081
  store i32 %1, i32* %val.addr, align 4, !dbg !3080
  %2 = load i32, i32* %val.addr, align 4, !dbg !3082
  ret i32 %2, !dbg !3083
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @parse_ofoldpart_partitions(%struct.mtd_info* %master, %struct.mtd_partition** %pparts, %struct.mtd_part_parser_data* %data) #2 !dbg !3084 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.mtd_info*, align 8
  %pparts.addr = alloca %struct.mtd_partition**, align 8
  %data.addr = alloca %struct.mtd_part_parser_data*, align 8
  %parts = alloca %struct.mtd_partition*, align 8
  %dp = alloca %struct.device_node*, align 8
  %i = alloca i32, align 4
  %plen = alloca i32, align 4
  %nr_parts = alloca i32, align 4
  %part = alloca %struct.anon.39*, align 8
  %names = alloca i8*, align 8
  %len86 = alloca i32, align 4
  store %struct.mtd_info* %master, %struct.mtd_info** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  store %struct.mtd_partition** %pparts, %struct.mtd_partition*** %pparts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partition*** %pparts.addr, metadata !3087, metadata !DIExpression()), !dbg !3088
  store %struct.mtd_part_parser_data* %data, %struct.mtd_part_parser_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser_data** %data.addr, metadata !3089, metadata !DIExpression()), !dbg !3090
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %parts, metadata !3091, metadata !DIExpression()), !dbg !3092
  call void @llvm.dbg.declare(metadata %struct.device_node** %dp, metadata !3093, metadata !DIExpression()), !dbg !3094
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3095, metadata !DIExpression()), !dbg !3096
  call void @llvm.dbg.declare(metadata i32* %plen, metadata !3097, metadata !DIExpression()), !dbg !3098
  call void @llvm.dbg.declare(metadata i32* %nr_parts, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.declare(metadata %struct.anon.39** %part, metadata !3101, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.declare(metadata i8** %names, metadata !3109, metadata !DIExpression()), !dbg !3110
  %0 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3111
  %call = call %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %0) #8, !dbg !3112
  store %struct.device_node* %call, %struct.device_node** %dp, align 8, !dbg !3113
  %1 = load %struct.device_node*, %struct.device_node** %dp, align 8, !dbg !3114
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3114
  br i1 %tobool, label %if.end, label %if.then, !dbg !3116

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3117
  br label %return, !dbg !3117

if.end:                                           ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %dp, align 8, !dbg !3118
  %call1 = call i8* @of_get_property(%struct.device_node* %2, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.1, i64 0, i64 0), i32* %plen) #8, !dbg !3119
  %3 = bitcast i8* %call1 to %struct.anon.39*, !dbg !3119
  store %struct.anon.39* %3, %struct.anon.39** %part, align 8, !dbg !3120
  %4 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3121
  %tobool2 = icmp ne %struct.anon.39* %4, null, !dbg !3121
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !3123

if.then3:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3124
  br label %return, !dbg !3124

if.end4:                                          ; preds = %if.end
  %5 = load %struct.device_node*, %struct.device_node** %dp, align 8, !dbg !3125
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str.12, i64 0, i64 0), %struct.device_node* %5) #9, !dbg !3125
  %6 = load i32, i32* %plen, align 4, !dbg !3126
  %conv = sext i32 %6 to i64, !dbg !3126
  %div = udiv i64 %conv, 8, !dbg !3127
  %conv6 = trunc i64 %div to i32, !dbg !3126
  store i32 %conv6, i32* %nr_parts, align 4, !dbg !3128
  %7 = load i32, i32* %nr_parts, align 4, !dbg !3129
  %conv7 = sext i32 %7 to i64, !dbg !3129
  %call8 = call i8* @kcalloc(i64 %conv7, i64 48, i32 3264) #8, !dbg !3130
  %8 = bitcast i8* %call8 to %struct.mtd_partition*, !dbg !3130
  store %struct.mtd_partition* %8, %struct.mtd_partition** %parts, align 8, !dbg !3131
  %9 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3132
  %tobool9 = icmp ne %struct.mtd_partition* %9, null, !dbg !3132
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3134

if.then10:                                        ; preds = %if.end4
  store i32 -12, i32* %retval, align 4, !dbg !3135
  br label %return, !dbg !3135

if.end11:                                         ; preds = %if.end4
  %10 = load %struct.device_node*, %struct.device_node** %dp, align 8, !dbg !3136
  %call12 = call i8* @of_get_property(%struct.device_node* %10, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.13, i64 0, i64 0), i32* %plen) #8, !dbg !3137
  store i8* %call12, i8** %names, align 8, !dbg !3138
  store i32 0, i32* %i, align 4, !dbg !3139
  br label %for.cond, !dbg !3141

for.cond:                                         ; preds = %for.inc, %if.end11
  %11 = load i32, i32* %i, align 4, !dbg !3142
  %12 = load i32, i32* %nr_parts, align 4, !dbg !3144
  %cmp = icmp slt i32 %11, %12, !dbg !3145
  br i1 %cmp, label %for.body, label %for.end, !dbg !3146

for.body:                                         ; preds = %for.cond
  %13 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3147
  %offset = getelementptr inbounds %struct.anon.39, %struct.anon.39* %13, i32 0, i32 0, !dbg !3147
  %14 = load i32, i32* %offset, align 4, !dbg !3147
  %15 = call i1 @llvm.is.constant.i32(i32 %14), !dbg !3147
  br i1 %15, label %cond.true, label %cond.false, !dbg !3147

cond.true:                                        ; preds = %for.body
  %16 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3147
  %offset14 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %16, i32 0, i32 0, !dbg !3147
  %17 = load i32, i32* %offset14, align 4, !dbg !3147
  %and = and i32 %17, 255, !dbg !3147
  %shl = shl i32 %and, 24, !dbg !3147
  %18 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3147
  %offset15 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %18, i32 0, i32 0, !dbg !3147
  %19 = load i32, i32* %offset15, align 4, !dbg !3147
  %and16 = and i32 %19, 65280, !dbg !3147
  %shl17 = shl i32 %and16, 8, !dbg !3147
  %or = or i32 %shl, %shl17, !dbg !3147
  %20 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3147
  %offset18 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %20, i32 0, i32 0, !dbg !3147
  %21 = load i32, i32* %offset18, align 4, !dbg !3147
  %and19 = and i32 %21, 16711680, !dbg !3147
  %shr = lshr i32 %and19, 8, !dbg !3147
  %or20 = or i32 %or, %shr, !dbg !3147
  %22 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3147
  %offset21 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %22, i32 0, i32 0, !dbg !3147
  %23 = load i32, i32* %offset21, align 4, !dbg !3147
  %and22 = and i32 %23, -16777216, !dbg !3147
  %shr23 = lshr i32 %and22, 24, !dbg !3147
  %or24 = or i32 %or20, %shr23, !dbg !3147
  br label %cond.end, !dbg !3147

cond.false:                                       ; preds = %for.body
  %24 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3147
  %offset25 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %24, i32 0, i32 0, !dbg !3147
  %25 = load i32, i32* %offset25, align 4, !dbg !3147
  %call26 = call i32 @__fswab32(i32 %25) #10, !dbg !3147
  br label %cond.end, !dbg !3147

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %or24, %cond.true ], [ %call26, %cond.false ], !dbg !3147
  %conv27 = zext i32 %cond to i64, !dbg !3147
  %26 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3149
  %27 = load i32, i32* %i, align 4, !dbg !3150
  %idxprom = sext i32 %27 to i64, !dbg !3149
  %arrayidx = getelementptr %struct.mtd_partition, %struct.mtd_partition* %26, i64 %idxprom, !dbg !3149
  %offset28 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx, i32 0, i32 3, !dbg !3151
  store i64 %conv27, i64* %offset28, align 8, !dbg !3152
  %28 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3153
  %len = getelementptr inbounds %struct.anon.39, %struct.anon.39* %28, i32 0, i32 1, !dbg !3153
  %29 = load i32, i32* %len, align 4, !dbg !3153
  %30 = call i1 @llvm.is.constant.i32(i32 %29), !dbg !3153
  br i1 %30, label %cond.true29, label %cond.false45, !dbg !3153

cond.true29:                                      ; preds = %cond.end
  %31 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3153
  %len30 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %31, i32 0, i32 1, !dbg !3153
  %32 = load i32, i32* %len30, align 4, !dbg !3153
  %and31 = and i32 %32, 255, !dbg !3153
  %shl32 = shl i32 %and31, 24, !dbg !3153
  %33 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3153
  %len33 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %33, i32 0, i32 1, !dbg !3153
  %34 = load i32, i32* %len33, align 4, !dbg !3153
  %and34 = and i32 %34, 65280, !dbg !3153
  %shl35 = shl i32 %and34, 8, !dbg !3153
  %or36 = or i32 %shl32, %shl35, !dbg !3153
  %35 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3153
  %len37 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %35, i32 0, i32 1, !dbg !3153
  %36 = load i32, i32* %len37, align 4, !dbg !3153
  %and38 = and i32 %36, 16711680, !dbg !3153
  %shr39 = lshr i32 %and38, 8, !dbg !3153
  %or40 = or i32 %or36, %shr39, !dbg !3153
  %37 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3153
  %len41 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %37, i32 0, i32 1, !dbg !3153
  %38 = load i32, i32* %len41, align 4, !dbg !3153
  %and42 = and i32 %38, -16777216, !dbg !3153
  %shr43 = lshr i32 %and42, 24, !dbg !3153
  %or44 = or i32 %or40, %shr43, !dbg !3153
  br label %cond.end48, !dbg !3153

cond.false45:                                     ; preds = %cond.end
  %39 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3153
  %len46 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %39, i32 0, i32 1, !dbg !3153
  %40 = load i32, i32* %len46, align 4, !dbg !3153
  %call47 = call i32 @__fswab32(i32 %40) #10, !dbg !3153
  br label %cond.end48, !dbg !3153

cond.end48:                                       ; preds = %cond.false45, %cond.true29
  %cond49 = phi i32 [ %or44, %cond.true29 ], [ %call47, %cond.false45 ], !dbg !3153
  %and50 = and i32 %cond49, -2, !dbg !3154
  %conv51 = zext i32 %and50 to i64, !dbg !3153
  %41 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3155
  %42 = load i32, i32* %i, align 4, !dbg !3156
  %idxprom52 = sext i32 %42 to i64, !dbg !3155
  %arrayidx53 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %41, i64 %idxprom52, !dbg !3155
  %size = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx53, i32 0, i32 2, !dbg !3157
  store i64 %conv51, i64* %size, align 8, !dbg !3158
  %43 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3159
  %len54 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %43, i32 0, i32 1, !dbg !3159
  %44 = load i32, i32* %len54, align 4, !dbg !3159
  %45 = call i1 @llvm.is.constant.i32(i32 %44), !dbg !3159
  br i1 %45, label %cond.true55, label %cond.false71, !dbg !3159

cond.true55:                                      ; preds = %cond.end48
  %46 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3159
  %len56 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %46, i32 0, i32 1, !dbg !3159
  %47 = load i32, i32* %len56, align 4, !dbg !3159
  %and57 = and i32 %47, 255, !dbg !3159
  %shl58 = shl i32 %and57, 24, !dbg !3159
  %48 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3159
  %len59 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %48, i32 0, i32 1, !dbg !3159
  %49 = load i32, i32* %len59, align 4, !dbg !3159
  %and60 = and i32 %49, 65280, !dbg !3159
  %shl61 = shl i32 %and60, 8, !dbg !3159
  %or62 = or i32 %shl58, %shl61, !dbg !3159
  %50 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3159
  %len63 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %50, i32 0, i32 1, !dbg !3159
  %51 = load i32, i32* %len63, align 4, !dbg !3159
  %and64 = and i32 %51, 16711680, !dbg !3159
  %shr65 = lshr i32 %and64, 8, !dbg !3159
  %or66 = or i32 %or62, %shr65, !dbg !3159
  %52 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3159
  %len67 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %52, i32 0, i32 1, !dbg !3159
  %53 = load i32, i32* %len67, align 4, !dbg !3159
  %and68 = and i32 %53, -16777216, !dbg !3159
  %shr69 = lshr i32 %and68, 24, !dbg !3159
  %or70 = or i32 %or66, %shr69, !dbg !3159
  br label %cond.end74, !dbg !3159

cond.false71:                                     ; preds = %cond.end48
  %54 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3159
  %len72 = getelementptr inbounds %struct.anon.39, %struct.anon.39* %54, i32 0, i32 1, !dbg !3159
  %55 = load i32, i32* %len72, align 4, !dbg !3159
  %call73 = call i32 @__fswab32(i32 %55) #10, !dbg !3159
  br label %cond.end74, !dbg !3159

cond.end74:                                       ; preds = %cond.false71, %cond.true55
  %cond75 = phi i32 [ %or70, %cond.true55 ], [ %call73, %cond.false71 ], !dbg !3159
  %and76 = and i32 %cond75, 1, !dbg !3161
  %tobool77 = icmp ne i32 %and76, 0, !dbg !3161
  br i1 %tobool77, label %if.then78, label %if.end81, !dbg !3162

if.then78:                                        ; preds = %cond.end74
  %56 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3163
  %57 = load i32, i32* %i, align 4, !dbg !3164
  %idxprom79 = sext i32 %57 to i64, !dbg !3163
  %arrayidx80 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %56, i64 %idxprom79, !dbg !3163
  %mask_flags = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx80, i32 0, i32 4, !dbg !3165
  store i32 1024, i32* %mask_flags, align 8, !dbg !3166
  br label %if.end81, !dbg !3163

if.end81:                                         ; preds = %if.then78, %cond.end74
  %58 = load i8*, i8** %names, align 8, !dbg !3167
  %tobool82 = icmp ne i8* %58, null, !dbg !3167
  br i1 %tobool82, label %land.lhs.true, label %if.else, !dbg !3169

land.lhs.true:                                    ; preds = %if.end81
  %59 = load i32, i32* %plen, align 4, !dbg !3170
  %cmp83 = icmp sgt i32 %59, 0, !dbg !3171
  br i1 %cmp83, label %if.then85, label %if.else, !dbg !3172

if.then85:                                        ; preds = %land.lhs.true
  call void @llvm.dbg.declare(metadata i32* %len86, metadata !3173, metadata !DIExpression()), !dbg !3175
  %60 = load i8*, i8** %names, align 8, !dbg !3176
  %call87 = call i64 @strlen(i8* %60) #8, !dbg !3177
  %add = add i64 %call87, 1, !dbg !3178
  %conv88 = trunc i64 %add to i32, !dbg !3177
  store i32 %conv88, i32* %len86, align 4, !dbg !3175
  %61 = load i8*, i8** %names, align 8, !dbg !3179
  %62 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3180
  %63 = load i32, i32* %i, align 4, !dbg !3181
  %idxprom89 = sext i32 %63 to i64, !dbg !3180
  %arrayidx90 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %62, i64 %idxprom89, !dbg !3180
  %name = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx90, i32 0, i32 0, !dbg !3182
  store i8* %61, i8** %name, align 8, !dbg !3183
  %64 = load i32, i32* %len86, align 4, !dbg !3184
  %65 = load i32, i32* %plen, align 4, !dbg !3185
  %sub = sub i32 %65, %64, !dbg !3185
  store i32 %sub, i32* %plen, align 4, !dbg !3185
  %66 = load i32, i32* %len86, align 4, !dbg !3186
  %67 = load i8*, i8** %names, align 8, !dbg !3187
  %idx.ext = sext i32 %66 to i64, !dbg !3187
  %add.ptr = getelementptr i8, i8* %67, i64 %idx.ext, !dbg !3187
  store i8* %add.ptr, i8** %names, align 8, !dbg !3187
  br label %if.end94, !dbg !3188

if.else:                                          ; preds = %land.lhs.true, %if.end81
  %68 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3189
  %69 = load i32, i32* %i, align 4, !dbg !3191
  %idxprom91 = sext i32 %69 to i64, !dbg !3189
  %arrayidx92 = getelementptr %struct.mtd_partition, %struct.mtd_partition* %68, i64 %idxprom91, !dbg !3189
  %name93 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx92, i32 0, i32 0, !dbg !3192
  store i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.14, i64 0, i64 0), i8** %name93, align 8, !dbg !3193
  br label %if.end94

if.end94:                                         ; preds = %if.else, %if.then85
  %70 = load %struct.anon.39*, %struct.anon.39** %part, align 8, !dbg !3194
  %incdec.ptr = getelementptr %struct.anon.39, %struct.anon.39* %70, i32 1, !dbg !3194
  store %struct.anon.39* %incdec.ptr, %struct.anon.39** %part, align 8, !dbg !3194
  br label %for.inc, !dbg !3195

for.inc:                                          ; preds = %if.end94
  %71 = load i32, i32* %i, align 4, !dbg !3196
  %inc = add i32 %71, 1, !dbg !3196
  store i32 %inc, i32* %i, align 4, !dbg !3196
  br label %for.cond, !dbg !3197, !llvm.loop !3198

for.end:                                          ; preds = %for.cond
  %72 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3200
  %73 = load %struct.mtd_partition**, %struct.mtd_partition*** %pparts.addr, align 8, !dbg !3201
  store %struct.mtd_partition* %72, %struct.mtd_partition** %73, align 8, !dbg !3202
  %74 = load i32, i32* %nr_parts, align 4, !dbg !3203
  store i32 %74, i32* %retval, align 4, !dbg !3204
  br label %return, !dbg !3204

return:                                           ; preds = %for.end, %if.then10, %if.then3, %if.then
  %75 = load i32, i32* %retval, align 4, !dbg !3205
  ret i32 %75, !dbg !3205
}

; Function Attrs: noredzone
declare dso_local i64 @strlen(i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @__register_mtd_parser(%struct.mtd_part_parser*, %struct.module*) #1

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { nounwind }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }
attributes #14 = { nounwind readnone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2349, !2350, !2351, !2352}
!llvm.ident = !{!2353}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ofpart_parser", scope: !2, file: !3, line: 148, type: !138, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !73, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/parsers/ofpart.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !55}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 10, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54}
!53 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!55 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !56, line: 305, baseType: !7, size: 32, elements: !57)
!56 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!57 = !{!58, !59, !60, !61}
!58 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!59 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!60 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!61 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!62 = !{!63, !64, !66, !68, !70}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !65, line: 148, baseType: !7)
!65 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!66 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !67, line: 27, baseType: !7)
!67 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!68 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !69, line: 32, baseType: !66)
!69 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!70 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!71 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !72, line: 76, flags: DIFlagFwdDecl)
!72 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!73 = !{!74, !76, !83, !90, !95, !100, !105, !110, !0, !115, !136}
!74 = !DIGlobalVariableExpression(var: !75, expr: !DIExpression())
!75 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ofpart_parser_init164", scope: !2, file: !3, line: 227, type: !63, isLocal: true, isDefinition: true)
!76 = !DIGlobalVariableExpression(var: !77, expr: !DIExpression())
!77 = distinct !DIGlobalVariable(name: "__exitcall_ofpart_parser_exit", scope: !2, file: !3, line: 228, type: !78, isLocal: true, isDefinition: true)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !79, line: 117, baseType: !80)
!79 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DISubroutineType(types: !82)
!82 = !{null}
!83 = !DIGlobalVariableExpression(var: !84, expr: !DIExpression())
!84 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file165", scope: !2, file: !3, line: 230, type: !85, isLocal: true, isDefinition: true, align: 8)
!85 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 312, elements: !88)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!88 = !{!89}
!89 = !DISubrange(count: 39)
!90 = !DIGlobalVariableExpression(var: !91, expr: !DIExpression())
!91 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license166", scope: !2, file: !3, line: 230, type: !92, isLocal: true, isDefinition: true, align: 8)
!92 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 152, elements: !93)
!93 = !{!94}
!94 = !DISubrange(count: 19)
!95 = !DIGlobalVariableExpression(var: !96, expr: !DIExpression())
!96 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description167", scope: !2, file: !3, line: 231, type: !97, isLocal: true, isDefinition: true, align: 8)
!97 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 592, elements: !98)
!98 = !{!99}
!99 = !DISubrange(count: 74)
!100 = !DIGlobalVariableExpression(var: !101, expr: !DIExpression())
!101 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author168", scope: !2, file: !3, line: 232, type: !102, isLocal: true, isDefinition: true, align: 8)
!102 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 320, elements: !103)
!103 = !{!104}
!104 = !DISubrange(count: 40)
!105 = !DIGlobalVariableExpression(var: !106, expr: !DIExpression())
!106 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias169", scope: !2, file: !3, line: 238, type: !107, isLocal: true, isDefinition: true, align: 8)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 240, elements: !108)
!108 = !{!109}
!109 = !DISubrange(count: 30)
!110 = !DIGlobalVariableExpression(var: !111, expr: !DIExpression())
!111 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_alias170", scope: !2, file: !3, line: 239, type: !112, isLocal: true, isDefinition: true, align: 8)
!112 = !DICompositeType(tag: DW_TAG_array_type, baseType: !86, size: 184, elements: !113)
!113 = !{!114}
!114 = !DISubrange(count: 23)
!115 = !DIGlobalVariableExpression(var: !116, expr: !DIExpression())
!116 = distinct !DIGlobalVariable(name: "parse_ofpart_match_table", scope: !2, file: !3, line: 142, type: !117, isLocal: true, isDefinition: true)
!117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !118, size: 3200, elements: !134)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !119)
!119 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !120, line: 262, size: 1600, elements: !121)
!120 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!121 = !{!122, !126, !127, !131}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !119, file: !120, line: 263, baseType: !123, size: 256)
!123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 256, elements: !124)
!124 = !{!125}
!125 = !DISubrange(count: 32)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !119, file: !120, line: 264, baseType: !123, size: 256, offset: 256)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !119, file: !120, line: 265, baseType: !128, size: 1024, offset: 512)
!128 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 1024, elements: !129)
!129 = !{!130}
!130 = !DISubrange(count: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !119, file: !120, line: 266, baseType: !132, size: 64, offset: 1536)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!134 = !{!135}
!135 = !DISubrange(count: 2)
!136 = !DIGlobalVariableExpression(var: !137, expr: !DIExpression())
!137 = distinct !DIGlobalVariable(name: "ofoldpart_parser", scope: !2, file: !3, line: 209, type: !138, isLocal: true, isDefinition: true)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part_parser", file: !139, line: 78, size: 448, elements: !140)
!139 = !DIFile(filename: "./include/linux/mtd/partitions.h", directory: "/home/lizy2001/genbc/linux")
!140 = !{!141, !147, !148, !150, !152, !2345}
!141 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !138, file: !139, line: 79, baseType: !142, size: 128)
!142 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !65, line: 178, size: 128, elements: !143)
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !142, file: !65, line: 179, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !142, file: !65, line: 179, baseType: !145, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !138, file: !139, line: 80, baseType: !70, size: 64, offset: 128)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !138, file: !139, line: 81, baseType: !149, size: 64, offset: 192)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !138, file: !139, line: 82, baseType: !151, size: 64, offset: 256)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "parse_fn", scope: !138, file: !139, line: 83, baseType: !153, size: 64, offset: 320)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!156, !157, !2327, !2341}
!156 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !159, line: 235, size: 9664, elements: !160)
!159 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!160 = !{!161, !164, !168, !173, !174, !175, !176, !177, !178, !179, !180, !181, !182, !183, !184, !185, !200, !221, !222, !223, !224, !234, !244, !260, !264, !269, !275, !276, !295, !296, !307, !308, !309, !310, !311, !312, !323, !327, !331, !332, !333, !337, !338, !339, !340, !344, !345, !346, !347, !348, !351, !363, !370, !371, !372, !373, !2297, !2298, !2306, !2310, !2311, !2312}
!161 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !158, file: !159, line: 236, baseType: !162, size: 8)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !65, line: 79, baseType: !163)
!163 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !158, file: !159, line: 237, baseType: !165, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !65, line: 104, baseType: !166)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !167, line: 21, baseType: !66)
!167 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!168 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !158, file: !159, line: 238, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !65, line: 107, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !167, line: 23, baseType: !171)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !67, line: 31, baseType: !172)
!172 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !158, file: !159, line: 244, baseType: !165, size: 32, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !158, file: !159, line: 252, baseType: !165, size: 32, offset: 160)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !158, file: !159, line: 263, baseType: !165, size: 32, offset: 192)
!176 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !158, file: !159, line: 265, baseType: !165, size: 32, offset: 224)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !158, file: !159, line: 266, baseType: !165, size: 32, offset: 256)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !158, file: !159, line: 272, baseType: !7, size: 32, offset: 288)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !158, file: !159, line: 273, baseType: !7, size: 32, offset: 320)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !158, file: !159, line: 275, baseType: !7, size: 32, offset: 352)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !158, file: !159, line: 276, baseType: !7, size: 32, offset: 384)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !158, file: !159, line: 285, baseType: !7, size: 32, offset: 416)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !158, file: !159, line: 288, baseType: !149, size: 64, offset: 448)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !158, file: !159, line: 289, baseType: !156, size: 32, offset: 512)
!185 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !158, file: !159, line: 292, baseType: !186, size: 64, offset: 576)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !159, line: 101, size: 128, elements: !189)
!189 = !{!190, !199}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !188, file: !159, line: 102, baseType: !191, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!156, !157, !156, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !159, line: 87, size: 64, elements: !196)
!196 = !{!197, !198}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !195, file: !159, line: 88, baseType: !166, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !195, file: !159, line: 89, baseType: !166, size: 32, offset: 32)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !188, file: !159, line: 104, baseType: !191, size: 64, offset: 64)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !158, file: !159, line: 295, baseType: !201, size: 64, offset: 640)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !159, line: 176, size: 192, elements: !204)
!204 = !{!205, !206, !215}
!205 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !203, file: !159, line: 177, baseType: !156, size: 32)
!206 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !203, file: !159, line: 178, baseType: !207, size: 64, offset: 64)
!207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!208 = !DISubroutineType(types: !209)
!209 = !{!156, !157, !156, !210}
!210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !211, size: 64)
!211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !159, line: 138, size: 64, elements: !212)
!212 = !{!213, !214}
!213 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !211, file: !159, line: 139, baseType: !156, size: 32)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !211, file: !159, line: 140, baseType: !156, size: 32, offset: 32)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !203, file: !159, line: 180, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DISubroutineType(types: !218)
!218 = !{!156, !157, !219}
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !211)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !158, file: !159, line: 298, baseType: !7, size: 32, offset: 704)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !158, file: !159, line: 301, baseType: !7, size: 32, offset: 736)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !158, file: !159, line: 306, baseType: !156, size: 32, offset: 768)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !158, file: !159, line: 307, baseType: !225, size: 64, offset: 832)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !159, line: 36, size: 192, elements: !227)
!227 = !{!228, !229, !230, !231}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !226, file: !159, line: 37, baseType: !169, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !226, file: !159, line: 38, baseType: !165, size: 32, offset: 64)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !226, file: !159, line: 39, baseType: !165, size: 32, offset: 96)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !226, file: !159, line: 40, baseType: !232, size: 64, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !158, file: !159, line: 313, baseType: !235, size: 64, offset: 896)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DISubroutineType(types: !237)
!237 = !{!156, !157, !238}
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !159, line: 30, size: 192, elements: !240)
!240 = !{!241, !242, !243}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !239, file: !159, line: 31, baseType: !169, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !239, file: !159, line: 32, baseType: !169, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !239, file: !159, line: 33, baseType: !169, size: 64, offset: 128)
!244 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !158, file: !159, line: 314, baseType: !245, size: 64, offset: 960)
!245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!246 = !DISubroutineType(types: !247)
!247 = !{!156, !157, !248, !252, !255, !256, !257}
!248 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !65, line: 46, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !250, line: 88, baseType: !251)
!250 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!251 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !65, line: 55, baseType: !253)
!253 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !250, line: 72, baseType: !254)
!254 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !250, line: 16, baseType: !233)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !252, size: 64)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !65, line: 158, baseType: !259)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !65, line: 153, baseType: !170)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !158, file: !159, line: 316, baseType: !261, size: 64, offset: 1024)
!261 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!262 = !DISubroutineType(types: !263)
!263 = !{!156, !157, !248, !252}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !158, file: !159, line: 317, baseType: !265, size: 64, offset: 1088)
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DISubroutineType(types: !267)
!267 = !{!156, !157, !248, !252, !255, !268}
!268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !158, file: !159, line: 319, baseType: !270, size: 64, offset: 1152)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{!156, !157, !248, !252, !255, !273}
!273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !274, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !162)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !158, file: !159, line: 321, baseType: !270, size: 64, offset: 1216)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !158, file: !159, line: 323, baseType: !277, size: 64, offset: 1280)
!277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !278, size: 64)
!278 = !DISubroutineType(types: !279)
!279 = !{!156, !157, !248, !280}
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !159, line: 64, size: 512, elements: !282)
!282 = !{!283, !284, !285, !286, !287, !288, !289, !294}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !281, file: !159, line: 65, baseType: !7, size: 32)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !281, file: !159, line: 66, baseType: !252, size: 64, offset: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !281, file: !159, line: 67, baseType: !252, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !281, file: !159, line: 68, baseType: !252, size: 64, offset: 192)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !281, file: !159, line: 69, baseType: !252, size: 64, offset: 256)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !281, file: !159, line: 70, baseType: !165, size: 32, offset: 320)
!289 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !281, file: !159, line: 71, baseType: !290, size: 64, offset: 384)
!290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !65, line: 102, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !167, line: 17, baseType: !293)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !67, line: 21, baseType: !163)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !281, file: !159, line: 72, baseType: !290, size: 64, offset: 448)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !158, file: !159, line: 325, baseType: !277, size: 64, offset: 1344)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !158, file: !159, line: 327, baseType: !297, size: 64, offset: 1408)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DISubroutineType(types: !299)
!299 = !{!156, !157, !252, !255, !300}
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !302, line: 146, size: 96, elements: !303)
!302 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!303 = !{!304, !305, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !301, file: !302, line: 147, baseType: !66, size: 32)
!305 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !301, file: !302, line: 148, baseType: !66, size: 32, offset: 32)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !301, file: !302, line: 149, baseType: !66, size: 32, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !158, file: !159, line: 329, baseType: !265, size: 64, offset: 1472)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !158, file: !159, line: 331, baseType: !297, size: 64, offset: 1536)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !158, file: !159, line: 333, baseType: !265, size: 64, offset: 1600)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !158, file: !159, line: 335, baseType: !265, size: 64, offset: 1664)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !158, file: !159, line: 337, baseType: !261, size: 64, offset: 1728)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !158, file: !159, line: 339, baseType: !313, size: 64, offset: 1792)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DISubroutineType(types: !315)
!315 = !{!156, !157, !316, !233, !248, !255}
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !318)
!318 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !319, line: 15, size: 128, elements: !320)
!319 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!320 = !{!321, !322}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !318, file: !319, line: 16, baseType: !63, size: 64)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !318, file: !319, line: 17, baseType: !252, size: 64, offset: 64)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !158, file: !159, line: 341, baseType: !324, size: 64, offset: 1856)
!324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !325, size: 64)
!325 = !DISubroutineType(types: !326)
!326 = !{null, !157}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !158, file: !159, line: 342, baseType: !328, size: 64, offset: 1920)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!156, !157, !248, !169}
!331 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !158, file: !159, line: 343, baseType: !328, size: 64, offset: 1984)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !158, file: !159, line: 344, baseType: !328, size: 64, offset: 2048)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !158, file: !159, line: 345, baseType: !334, size: 64, offset: 2112)
!334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!335 = !DISubroutineType(types: !336)
!336 = !{!156, !157, !248}
!337 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !158, file: !159, line: 346, baseType: !334, size: 64, offset: 2176)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !158, file: !159, line: 347, baseType: !334, size: 64, offset: 2240)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !158, file: !159, line: 348, baseType: !261, size: 64, offset: 2304)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !158, file: !159, line: 349, baseType: !341, size: 64, offset: 2368)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!156, !157}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !158, file: !159, line: 350, baseType: !324, size: 64, offset: 2432)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !158, file: !159, line: 351, baseType: !324, size: 64, offset: 2496)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !158, file: !159, line: 356, baseType: !341, size: 64, offset: 2560)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !158, file: !159, line: 357, baseType: !324, size: 64, offset: 2624)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !158, file: !159, line: 363, baseType: !349, size: 8, offset: 2688)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !65, line: 30, baseType: !350)
!350 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !158, file: !159, line: 365, baseType: !352, size: 192, offset: 2752)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !353, line: 54, size: 192, elements: !354)
!353 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !361, !362}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !352, file: !353, line: 55, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !353, line: 51, baseType: !357)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = !DISubroutineType(types: !359)
!359 = !{!156, !360, !233, !63}
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !352, file: !353, line: 56, baseType: !360, size: 64, offset: 64)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !352, file: !353, line: 57, baseType: !156, size: 32, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !158, file: !159, line: 368, baseType: !364, size: 128, offset: 2944)
!364 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !302, line: 250, size: 128, elements: !365)
!365 = !{!366, !367, !368, !369}
!366 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !364, file: !302, line: 251, baseType: !66, size: 32)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !364, file: !302, line: 252, baseType: !66, size: 32, offset: 32)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !364, file: !302, line: 253, baseType: !66, size: 32, offset: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !364, file: !302, line: 254, baseType: !66, size: 32, offset: 96)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !158, file: !159, line: 370, baseType: !156, size: 32, offset: 3072)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !158, file: !159, line: 372, baseType: !63, size: 64, offset: 3136)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !158, file: !159, line: 374, baseType: !70, size: 64, offset: 3200)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !158, file: !159, line: 375, baseType: !374, size: 5568, offset: 3264)
!374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !375)
!375 = !{!376, !1836, !1838, !1841, !1842, !1893, !1974, !1975, !1976, !1977, !1978, !1987, !2092, !2105, !2108, !2109, !2113, !2115, !2116, !2117, !2121, !2127, !2128, !2131, !2246, !2247, !2250, !2251, !2252, !2253, !2285, !2286, !2287, !2290, !2293, !2294, !2295, !2296}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !374, file: !30, line: 462, baseType: !377, size: 512)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !378, line: 64, size: 512, elements: !379)
!378 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !381, !382, !384, !444, !1674, !1826, !1831, !1832, !1833, !1834, !1835}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !377, file: !378, line: 65, baseType: !149, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !377, file: !378, line: 66, baseType: !142, size: 128, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !377, file: !378, line: 67, baseType: !383, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !377, file: !378, line: 68, baseType: !385, size: 64, offset: 256)
!385 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !386, size: 64)
!386 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !378, line: 192, size: 704, elements: !387)
!387 = !{!388, !389, !405, !406}
!388 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !386, file: !378, line: 193, baseType: !142, size: 128)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !386, file: !378, line: 194, baseType: !390, offset: 128)
!390 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !391, line: 83, baseType: !392)
!391 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !391, line: 71, elements: !393)
!393 = !{!394}
!394 = !DIDerivedType(tag: DW_TAG_member, scope: !392, file: !391, line: 72, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !392, file: !391, line: 72, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !395, file: !391, line: 73, baseType: !398)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !391, line: 20, elements: !399)
!399 = !{!400}
!400 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !398, file: !391, line: 21, baseType: !401)
!401 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !402, line: 25, baseType: !403)
!402 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!403 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !402, line: 25, elements: !404)
!404 = !{}
!405 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !386, file: !378, line: 195, baseType: !377, size: 512, offset: 128)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !386, file: !378, line: 196, baseType: !407, size: 64, offset: 640)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !409)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !378, line: 156, size: 192, elements: !410)
!410 = !{!411, !416, !421}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !409, file: !378, line: 157, baseType: !412, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !413)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!156, !385, !383}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !409, file: !378, line: 158, baseType: !417, size: 64, offset: 64)
!417 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!419 = !DISubroutineType(types: !420)
!420 = !{!149, !385, !383}
!421 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !409, file: !378, line: 159, baseType: !422, size: 64, offset: 128)
!422 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !423)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!156, !385, !383, !426}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !378, line: 148, size: 20736, elements: !428)
!428 = !{!429, !434, !438, !439, !443}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !427, file: !378, line: 149, baseType: !430, size: 192)
!430 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 192, elements: !432)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!432 = !{!433}
!433 = !DISubrange(count: 3)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !427, file: !378, line: 150, baseType: !435, size: 4096, offset: 192)
!435 = !DICompositeType(tag: DW_TAG_array_type, baseType: !431, size: 4096, elements: !436)
!436 = !{!437}
!437 = !DISubrange(count: 64)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !427, file: !378, line: 151, baseType: !156, size: 32, offset: 4288)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !427, file: !378, line: 152, baseType: !440, size: 16384, offset: 4320)
!440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 16384, elements: !441)
!441 = !{!442}
!442 = !DISubrange(count: 2048)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !427, file: !378, line: 153, baseType: !156, size: 32, offset: 20704)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !377, file: !378, line: 69, baseType: !445, size: 64, offset: 320)
!445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !446, size: 64)
!446 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !378, line: 138, size: 448, elements: !447)
!447 = !{!448, !452, !477, !479, !1622, !1653, !1657}
!448 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !446, file: !378, line: 139, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DISubroutineType(types: !451)
!451 = !{null, !383}
!452 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !446, file: !378, line: 140, baseType: !453, size: 64, offset: 64)
!453 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !455)
!455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !456, line: 230, size: 128, elements: !457)
!456 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!457 = !{!458, !473}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !455, file: !456, line: 231, baseType: !459, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !460, size: 64)
!460 = !DISubroutineType(types: !461)
!461 = !{!462, !383, !466, !431}
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !65, line: 60, baseType: !463)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !250, line: 73, baseType: !464)
!464 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !250, line: 15, baseType: !465)
!465 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !456, line: 30, size: 128, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !467, file: !456, line: 31, baseType: !149, size: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !467, file: !456, line: 32, baseType: !471, size: 16, offset: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !65, line: 19, baseType: !472)
!472 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !455, file: !456, line: 232, baseType: !474, size: 64, offset: 64)
!474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !475, size: 64)
!475 = !DISubroutineType(types: !476)
!476 = !{!462, !383, !466, !149, !252}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !446, file: !378, line: 141, baseType: !478, size: 64, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !446, file: !378, line: 142, baseType: !480, size: 64, offset: 192)
!480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !481, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !483)
!483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !456, line: 84, size: 320, elements: !484)
!484 = !{!485, !486, !490, !1619, !1620}
!485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !483, file: !456, line: 85, baseType: !149, size: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !483, file: !456, line: 86, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!471, !383, !466, !156}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !483, file: !456, line: 88, baseType: !491, size: 64, offset: 128)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DISubroutineType(types: !493)
!493 = !{!471, !383, !494, !156}
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !495, size: 64)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !456, line: 168, size: 448, elements: !496)
!496 = !{!497, !498, !499, !500, !507, !508}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !495, file: !456, line: 169, baseType: !467, size: 128)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !495, file: !456, line: 170, baseType: !252, size: 64, offset: 128)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !495, file: !456, line: 171, baseType: !63, size: 64, offset: 192)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !495, file: !456, line: 172, baseType: !501, size: 64, offset: 256)
!501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !502, size: 64)
!502 = !DISubroutineType(types: !503)
!503 = !{!462, !504, !383, !494, !431, !248, !252}
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !506, line: 526, flags: DIFlagFwdDecl)
!506 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!507 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !495, file: !456, line: 174, baseType: !501, size: 64, offset: 320)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !495, file: !456, line: 176, baseType: !509, size: 64, offset: 384)
!509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!510 = !DISubroutineType(types: !511)
!511 = !{!156, !504, !383, !494, !512}
!512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !514, line: 305, size: 1472, elements: !515)
!514 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!515 = !{!516, !517, !518, !519, !520, !528, !529, !1593, !1599, !1600, !1605, !1606, !1609, !1613, !1614, !1615, !1616, !1617}
!516 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !513, file: !514, line: 308, baseType: !233, size: 64)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !513, file: !514, line: 309, baseType: !233, size: 64, offset: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !513, file: !514, line: 313, baseType: !512, size: 64, offset: 128)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !513, file: !514, line: 313, baseType: !512, size: 64, offset: 192)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !513, file: !514, line: 315, baseType: !521, size: 192, align: 64, offset: 256)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !522, line: 24, size: 192, align: 64, elements: !523)
!522 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !525, !527}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !521, file: !522, line: 25, baseType: !233, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !521, file: !522, line: 26, baseType: !526, size: 64, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !521, file: !522, line: 27, baseType: !526, size: 64, offset: 128)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !513, file: !514, line: 323, baseType: !233, size: 64, offset: 448)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !513, file: !514, line: 327, baseType: !530, size: 64, offset: 512)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !514, line: 388, size: 7296, elements: !532)
!532 = !{!533, !1589}
!533 = !DIDerivedType(tag: DW_TAG_member, scope: !531, file: !514, line: 389, baseType: !534, size: 7296)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !514, line: 389, size: 7296, elements: !535)
!535 = !{!536, !537, !541, !542, !546, !547, !548, !549, !550, !558, !563, !564, !565, !566, !575, !576, !577, !586, !587, !588, !589, !590, !591, !592, !593, !594, !595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !612, !620, !623, !671, !672, !1559, !1560, !1563, !1567, !1568, !1571, !1572, !1573, !1576, !1588}
!536 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !534, file: !514, line: 390, baseType: !512, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !534, file: !514, line: 391, baseType: !538, size: 64, offset: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !522, line: 31, size: 64, elements: !539)
!539 = !{!540}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !538, file: !522, line: 32, baseType: !526, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !534, file: !514, line: 392, baseType: !170, size: 64, offset: 128)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !534, file: !514, line: 394, baseType: !543, size: 64, offset: 192)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DISubroutineType(types: !545)
!545 = !{!233, !504, !233, !233, !233, !233}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !534, file: !514, line: 398, baseType: !233, size: 64, offset: 256)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !534, file: !514, line: 399, baseType: !233, size: 64, offset: 320)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !534, file: !514, line: 405, baseType: !233, size: 64, offset: 384)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !534, file: !514, line: 406, baseType: !233, size: 64, offset: 448)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !534, file: !514, line: 407, baseType: !551, size: 64, offset: 512)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !506, line: 286, baseType: !553)
!553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !506, line: 286, size: 64, elements: !554)
!554 = !{!555}
!555 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !553, file: !506, line: 286, baseType: !556, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !557, line: 18, baseType: !233)
!557 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!558 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !534, file: !514, line: 416, baseType: !559, size: 32, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !65, line: 168, baseType: !560)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 166, size: 32, elements: !561)
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !560, file: !65, line: 167, baseType: !156, size: 32)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !534, file: !514, line: 428, baseType: !559, size: 32, offset: 608)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !534, file: !514, line: 437, baseType: !559, size: 32, offset: 640)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !534, file: !514, line: 447, baseType: !559, size: 32, offset: 672)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !534, file: !514, line: 450, baseType: !567, size: 64, offset: 704)
!567 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !568, line: 13, baseType: !569)
!568 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !65, line: 175, baseType: !570)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !65, line: 173, size: 64, elements: !571)
!571 = !{!572}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !570, file: !65, line: 174, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !167, line: 22, baseType: !574)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !67, line: 30, baseType: !251)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !534, file: !514, line: 452, baseType: !156, size: 32, offset: 768)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !534, file: !514, line: 454, baseType: !390, offset: 800)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !534, file: !514, line: 457, baseType: !578, size: 256, offset: 832)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !579, line: 35, size: 256, elements: !580)
!579 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581, !582, !583, !585}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !578, file: !579, line: 36, baseType: !567, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !578, file: !579, line: 42, baseType: !567, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !578, file: !579, line: 46, baseType: !584, offset: 128)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !391, line: 29, baseType: !398)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !578, file: !579, line: 47, baseType: !142, size: 128, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !534, file: !514, line: 459, baseType: !142, size: 128, offset: 1088)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !534, file: !514, line: 466, baseType: !233, size: 64, offset: 1216)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !534, file: !514, line: 467, baseType: !233, size: 64, offset: 1280)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !534, file: !514, line: 469, baseType: !233, size: 64, offset: 1344)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !534, file: !514, line: 470, baseType: !233, size: 64, offset: 1408)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !534, file: !514, line: 471, baseType: !569, size: 64, offset: 1472)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !534, file: !514, line: 472, baseType: !233, size: 64, offset: 1536)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !534, file: !514, line: 473, baseType: !233, size: 64, offset: 1600)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !534, file: !514, line: 474, baseType: !233, size: 64, offset: 1664)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !534, file: !514, line: 475, baseType: !233, size: 64, offset: 1728)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !534, file: !514, line: 477, baseType: !390, offset: 1792)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !534, file: !514, line: 478, baseType: !233, size: 64, offset: 1792)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !534, file: !514, line: 478, baseType: !233, size: 64, offset: 1856)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !534, file: !514, line: 478, baseType: !233, size: 64, offset: 1920)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !534, file: !514, line: 478, baseType: !233, size: 64, offset: 1984)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !534, file: !514, line: 479, baseType: !233, size: 64, offset: 2048)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !534, file: !514, line: 479, baseType: !233, size: 64, offset: 2112)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !534, file: !514, line: 479, baseType: !233, size: 64, offset: 2176)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !534, file: !514, line: 480, baseType: !233, size: 64, offset: 2240)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !534, file: !514, line: 480, baseType: !233, size: 64, offset: 2304)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !534, file: !514, line: 480, baseType: !233, size: 64, offset: 2368)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !534, file: !514, line: 480, baseType: !233, size: 64, offset: 2432)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !534, file: !514, line: 482, baseType: !609, size: 2816, offset: 2496)
!609 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 2816, elements: !610)
!610 = !{!611}
!611 = !DISubrange(count: 44)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !534, file: !514, line: 488, baseType: !613, size: 256, offset: 5312)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !614, line: 60, size: 256, elements: !615)
!614 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!615 = !{!616}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !613, file: !614, line: 61, baseType: !617, size: 256)
!617 = !DICompositeType(tag: DW_TAG_array_type, baseType: !567, size: 256, elements: !618)
!618 = !{!619}
!619 = !DISubrange(count: 4)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !534, file: !514, line: 490, baseType: !621, size: 64, offset: 5568)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !514, line: 490, flags: DIFlagFwdDecl)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !534, file: !514, line: 493, baseType: !624, size: 896, offset: 5632)
!624 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !625, line: 53, baseType: !626)
!625 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !625, line: 13, size: 896, elements: !627)
!627 = !{!628, !629, !630, !631, !634, !635, !642, !643, !663, !664, !667}
!628 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !626, file: !625, line: 18, baseType: !170, size: 64)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !626, file: !625, line: 28, baseType: !569, size: 64, offset: 64)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !626, file: !625, line: 31, baseType: !578, size: 256, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !626, file: !625, line: 32, baseType: !632, size: 64, offset: 384)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !633, size: 64)
!633 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !625, line: 32, flags: DIFlagFwdDecl)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !626, file: !625, line: 37, baseType: !472, size: 16, offset: 448)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !626, file: !625, line: 40, baseType: !636, size: 192, offset: 512)
!636 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !637, line: 53, size: 192, elements: !638)
!637 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!638 = !{!639, !640, !641}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !636, file: !637, line: 54, baseType: !567, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !636, file: !637, line: 55, baseType: !390, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !636, file: !637, line: 59, baseType: !142, size: 128, offset: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !626, file: !625, line: 41, baseType: !63, size: 64, offset: 704)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !626, file: !625, line: 42, baseType: !644, size: 64, offset: 768)
!644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !645, size: 64)
!645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !646)
!646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !647, line: 13, size: 896, elements: !648)
!647 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!648 = !{!649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !659, !660, !661, !662}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !646, file: !647, line: 14, baseType: !63, size: 64)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !646, file: !647, line: 15, baseType: !233, size: 64, offset: 64)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !646, file: !647, line: 17, baseType: !233, size: 64, offset: 128)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !646, file: !647, line: 17, baseType: !233, size: 64, offset: 192)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !646, file: !647, line: 19, baseType: !465, size: 64, offset: 256)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !646, file: !647, line: 21, baseType: !465, size: 64, offset: 320)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !646, file: !647, line: 22, baseType: !465, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !646, file: !647, line: 23, baseType: !465, size: 64, offset: 448)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !646, file: !647, line: 24, baseType: !465, size: 64, offset: 512)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !646, file: !647, line: 25, baseType: !465, size: 64, offset: 576)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !646, file: !647, line: 26, baseType: !465, size: 64, offset: 640)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !646, file: !647, line: 27, baseType: !465, size: 64, offset: 704)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !646, file: !647, line: 28, baseType: !465, size: 64, offset: 768)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !646, file: !647, line: 29, baseType: !465, size: 64, offset: 832)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !626, file: !625, line: 44, baseType: !559, size: 32, offset: 832)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !626, file: !625, line: 50, baseType: !665, size: 16, offset: 864)
!665 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !167, line: 19, baseType: !666)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !67, line: 24, baseType: !472)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !626, file: !625, line: 51, baseType: !668, size: 16, offset: 880)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !167, line: 18, baseType: !669)
!669 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !67, line: 23, baseType: !670)
!670 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !534, file: !514, line: 495, baseType: !233, size: 64, offset: 6528)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !534, file: !514, line: 497, baseType: !673, size: 64, offset: 6592)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !674, size: 64)
!674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !514, line: 381, size: 384, elements: !675)
!675 = !{!676, !677, !1558}
!676 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !674, file: !514, line: 382, baseType: !559, size: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !674, file: !514, line: 383, baseType: !678, size: 128, offset: 64)
!678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !514, line: 376, size: 128, elements: !679)
!679 = !{!680, !1556}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !678, file: !514, line: 377, baseType: !681, size: 64)
!681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !682, size: 64)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !683, line: 640, size: 48640, elements: !684)
!683 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !691, !693, !694, !700, !701, !702, !703, !704, !705, !706, !707, !711, !729, !740, !832, !833, !834, !845, !846, !848, !849, !850, !851, !857, !858, !859, !860, !861, !862, !863, !864, !865, !866, !867, !868, !869, !870, !871, !872, !930, !933, !934, !935, !936, !937, !938, !939, !940, !941, !942, !986, !988, !989, !990, !1002, !1004, !1005, !1006, !1007, !1008, !1014, !1015, !1016, !1017, !1018, !1019, !1020, !1032, !1037, !1042, !1043, !1044, !1047, !1051, !1054, !1057, !1060, !1063, !1067, !1070, !1073, !1079, !1080, !1081, !1087, !1088, !1089, !1090, !1091, !1100, !1101, !1102, !1103, !1104, !1109, !1110, !1111, !1114, !1115, !1118, !1121, !1124, !1127, !1130, !1133, !1134, !1214, !1217, !1220, !1221, !1224, !1225, !1226, !1230, !1231, !1232, !1245, !1246, !1247, !1257, !1262, !1265, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !682, file: !683, line: 646, baseType: !686, size: 128)
!686 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !687, line: 56, size: 128, elements: !688)
!687 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!688 = !{!689, !690}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !686, file: !687, line: 57, baseType: !233, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !686, file: !687, line: 58, baseType: !166, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !682, file: !683, line: 649, baseType: !692, size: 64, offset: 128)
!692 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !465)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !682, file: !683, line: 657, baseType: !63, size: 64, offset: 192)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !682, file: !683, line: 658, baseType: !695, size: 32, offset: 256)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !696, line: 113, baseType: !697)
!696 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !696, line: 111, size: 32, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !697, file: !696, line: 112, baseType: !559, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !682, file: !683, line: 660, baseType: !7, size: 32, offset: 288)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !682, file: !683, line: 661, baseType: !7, size: 32, offset: 320)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !682, file: !683, line: 684, baseType: !156, size: 32, offset: 352)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !682, file: !683, line: 686, baseType: !156, size: 32, offset: 384)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !682, file: !683, line: 687, baseType: !156, size: 32, offset: 416)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !682, file: !683, line: 688, baseType: !156, size: 32, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !682, file: !683, line: 689, baseType: !7, size: 32, offset: 480)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !682, file: !683, line: 691, baseType: !708, size: 64, offset: 512)
!708 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !709, size: 64)
!709 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !710)
!710 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !683, line: 691, flags: DIFlagFwdDecl)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !682, file: !683, line: 692, baseType: !712, size: 832, offset: 576)
!712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !683, line: 451, size: 832, elements: !713)
!713 = !{!714, !719, !720, !721, !722, !723, !724, !725, !726, !727}
!714 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !712, file: !683, line: 453, baseType: !715, size: 128)
!715 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !683, line: 325, size: 128, elements: !716)
!716 = !{!717, !718}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !715, file: !683, line: 326, baseType: !233, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !715, file: !683, line: 327, baseType: !166, size: 32, offset: 64)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !712, file: !683, line: 454, baseType: !521, size: 192, align: 64, offset: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !712, file: !683, line: 455, baseType: !142, size: 128, offset: 320)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !712, file: !683, line: 456, baseType: !7, size: 32, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !712, file: !683, line: 458, baseType: !170, size: 64, offset: 512)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !712, file: !683, line: 459, baseType: !170, size: 64, offset: 576)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !712, file: !683, line: 460, baseType: !170, size: 64, offset: 640)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !712, file: !683, line: 461, baseType: !170, size: 64, offset: 704)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !712, file: !683, line: 463, baseType: !170, size: 64, offset: 768)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !712, file: !683, line: 465, baseType: !728, offset: 832)
!728 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !683, line: 415, elements: !404)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !682, file: !683, line: 693, baseType: !730, size: 384, offset: 1408)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !683, line: 489, size: 384, elements: !731)
!731 = !{!732, !733, !734, !735, !736, !737, !738}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !730, file: !683, line: 490, baseType: !142, size: 128)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !730, file: !683, line: 491, baseType: !233, size: 64, offset: 128)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !730, file: !683, line: 492, baseType: !233, size: 64, offset: 192)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !730, file: !683, line: 493, baseType: !7, size: 32, offset: 256)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !730, file: !683, line: 494, baseType: !472, size: 16, offset: 288)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !730, file: !683, line: 495, baseType: !472, size: 16, offset: 304)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !730, file: !683, line: 497, baseType: !739, size: 64, offset: 320)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !682, file: !683, line: 697, baseType: !741, size: 1792, offset: 1792)
!741 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !683, line: 507, size: 1792, elements: !742)
!742 = !{!743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !753, !754, !755, !756, !829, !830}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !741, file: !683, line: 508, baseType: !521, size: 192, align: 64)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !741, file: !683, line: 515, baseType: !170, size: 64, offset: 192)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !741, file: !683, line: 516, baseType: !170, size: 64, offset: 256)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !741, file: !683, line: 517, baseType: !170, size: 64, offset: 320)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !741, file: !683, line: 518, baseType: !170, size: 64, offset: 384)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !741, file: !683, line: 519, baseType: !170, size: 64, offset: 448)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !741, file: !683, line: 526, baseType: !573, size: 64, offset: 512)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !741, file: !683, line: 527, baseType: !170, size: 64, offset: 576)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !741, file: !683, line: 528, baseType: !7, size: 32, offset: 640)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !741, file: !683, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !741, file: !683, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !741, file: !683, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !741, file: !683, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !741, file: !683, line: 563, baseType: !757, size: 512, offset: 704)
!757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !758)
!758 = !{!759, !767, !768, !773, !825, !826, !827, !828}
!759 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !757, file: !6, line: 119, baseType: !760, size: 256)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !761, line: 9, size: 256, elements: !762)
!761 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!762 = !{!763, !764}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !760, file: !761, line: 10, baseType: !521, size: 192, align: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !760, file: !761, line: 11, baseType: !765, size: 64, offset: 192)
!765 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !766, line: 29, baseType: !573)
!766 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!767 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !757, file: !6, line: 120, baseType: !765, size: 64, offset: 256)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !757, file: !6, line: 121, baseType: !769, size: 64, offset: 320)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!5, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !757, file: !6, line: 122, baseType: !774, size: 64, offset: 384)
!774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !775, size: 64)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !776)
!776 = !{!777, !797, !798, !801, !811, !812, !820, !824}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !775, file: !6, line: 160, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !780)
!780 = !{!781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !779, file: !6, line: 215, baseType: !584)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !779, file: !6, line: 216, baseType: !7, size: 32)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !779, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !779, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !779, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !779, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !779, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !779, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !779, file: !6, line: 233, baseType: !765, size: 64, offset: 128)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !779, file: !6, line: 234, baseType: !772, size: 64, offset: 192)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !779, file: !6, line: 235, baseType: !765, size: 64, offset: 256)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !779, file: !6, line: 236, baseType: !772, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !779, file: !6, line: 237, baseType: !794, size: 4096, offset: 512)
!794 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 4096, elements: !795)
!795 = !{!796}
!796 = !DISubrange(count: 8)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !775, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !775, file: !6, line: 162, baseType: !799, size: 32, offset: 96)
!799 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !65, line: 27, baseType: !800)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !250, line: 96, baseType: !156)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !775, file: !6, line: 163, baseType: !802, size: 32, offset: 128)
!802 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !803, line: 276, baseType: !804)
!803 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !803, line: 276, size: 32, elements: !805)
!805 = !{!806}
!806 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !804, file: !803, line: 276, baseType: !807, size: 32)
!807 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !803, line: 70, baseType: !808)
!808 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !803, line: 65, size: 32, elements: !809)
!809 = !{!810}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !808, file: !803, line: 66, baseType: !7, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !775, file: !6, line: 164, baseType: !772, size: 64, offset: 192)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !775, file: !6, line: 165, baseType: !813, size: 128, offset: 256)
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !761, line: 14, size: 128, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !813, file: !761, line: 15, baseType: !816, size: 128)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !522, line: 125, size: 128, elements: !817)
!817 = !{!818, !819}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !816, file: !522, line: 126, baseType: !538, size: 64)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !816, file: !522, line: 127, baseType: !526, size: 64, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !775, file: !6, line: 166, baseType: !821, size: 64, offset: 384)
!821 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !822, size: 64)
!822 = !DISubroutineType(types: !823)
!823 = !{!765}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !775, file: !6, line: 167, baseType: !765, size: 64, offset: 448)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !757, file: !6, line: 123, baseType: !292, size: 8, offset: 448)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !757, file: !6, line: 124, baseType: !292, size: 8, offset: 456)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !757, file: !6, line: 125, baseType: !292, size: 8, offset: 464)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !757, file: !6, line: 126, baseType: !292, size: 8, offset: 472)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !741, file: !683, line: 572, baseType: !757, size: 512, offset: 1216)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !741, file: !683, line: 580, baseType: !831, size: 64, offset: 1728)
!831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !682, file: !683, line: 721, baseType: !7, size: 32, offset: 3584)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !682, file: !683, line: 722, baseType: !156, size: 32, offset: 3616)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !682, file: !683, line: 723, baseType: !835, size: 64, offset: 3648)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !837)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !838, line: 17, baseType: !839)
!838 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !838, line: 17, size: 64, elements: !840)
!840 = !{!841}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !839, file: !838, line: 17, baseType: !842, size: 64)
!842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, size: 64, elements: !843)
!843 = !{!844}
!844 = !DISubrange(count: 1)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !682, file: !683, line: 724, baseType: !837, size: 64, offset: 3712)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !682, file: !683, line: 749, baseType: !847, offset: 3776)
!847 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !683, line: 290, elements: !404)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !682, file: !683, line: 751, baseType: !142, size: 128, offset: 3776)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !682, file: !683, line: 757, baseType: !530, size: 64, offset: 3904)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !682, file: !683, line: 758, baseType: !530, size: 64, offset: 3968)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !682, file: !683, line: 761, baseType: !852, size: 320, offset: 4032)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !614, line: 34, size: 320, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !852, file: !614, line: 35, baseType: !170, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !852, file: !614, line: 36, baseType: !856, size: 256, offset: 64)
!856 = !DICompositeType(tag: DW_TAG_array_type, baseType: !512, size: 256, elements: !618)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !682, file: !683, line: 766, baseType: !156, size: 32, offset: 4352)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !682, file: !683, line: 767, baseType: !156, size: 32, offset: 4384)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !682, file: !683, line: 768, baseType: !156, size: 32, offset: 4416)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !682, file: !683, line: 770, baseType: !156, size: 32, offset: 4448)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !682, file: !683, line: 772, baseType: !233, size: 64, offset: 4480)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !682, file: !683, line: 775, baseType: !7, size: 32, offset: 4544)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !682, file: !683, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !682, file: !683, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !682, file: !683, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !682, file: !683, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !682, file: !683, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !682, file: !683, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !682, file: !683, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !682, file: !683, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !682, file: !683, line: 831, baseType: !233, size: 64, offset: 4672)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !682, file: !683, line: 833, baseType: !873, size: 384, offset: 4736)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !874)
!874 = !{!875, !880}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !873, file: !12, line: 26, baseType: !876, size: 64)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DISubroutineType(types: !878)
!878 = !{!465, !879}
!879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!880 = !DIDerivedType(tag: DW_TAG_member, scope: !873, file: !12, line: 27, baseType: !881, size: 320, offset: 64)
!881 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !873, file: !12, line: 27, size: 320, elements: !882)
!882 = !{!883, !893, !920}
!883 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !881, file: !12, line: 36, baseType: !884, size: 320)
!884 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !12, line: 29, size: 320, elements: !885)
!885 = !{!886, !888, !889, !890, !891, !892}
!886 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !884, file: !12, line: 30, baseType: !887, size: 64)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !884, file: !12, line: 31, baseType: !166, size: 32, offset: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !884, file: !12, line: 32, baseType: !166, size: 32, offset: 96)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !884, file: !12, line: 33, baseType: !166, size: 32, offset: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !884, file: !12, line: 34, baseType: !170, size: 64, offset: 192)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !884, file: !12, line: 35, baseType: !887, size: 64, offset: 256)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !881, file: !12, line: 46, baseType: !894, size: 192)
!894 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !12, line: 38, size: 192, elements: !895)
!895 = !{!896, !897, !898, !919}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !894, file: !12, line: 39, baseType: !799, size: 32)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !894, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!898 = !DIDerivedType(tag: DW_TAG_member, scope: !894, file: !12, line: 41, baseType: !899, size: 64, offset: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !894, file: !12, line: 41, size: 64, elements: !900)
!900 = !{!901, !909}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !899, file: !12, line: 42, baseType: !902, size: 64)
!902 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !903, size: 64)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !904, line: 7, size: 128, elements: !905)
!904 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!905 = !{!906, !908}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !903, file: !904, line: 8, baseType: !907, size: 64)
!907 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !250, line: 93, baseType: !251)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !903, file: !904, line: 9, baseType: !251, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !899, file: !12, line: 43, baseType: !910, size: 64)
!910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !911, size: 64)
!911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !912, line: 7, size: 64, elements: !913)
!912 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!913 = !{!914, !918}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !911, file: !912, line: 8, baseType: !915, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !912, line: 5, baseType: !916)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !167, line: 20, baseType: !917)
!917 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !67, line: 26, baseType: !156)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !911, file: !912, line: 9, baseType: !916, size: 32, offset: 32)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !894, file: !12, line: 45, baseType: !170, size: 64, offset: 128)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !881, file: !12, line: 54, baseType: !921, size: 256)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !881, file: !12, line: 48, size: 256, elements: !922)
!922 = !{!923, !926, !927, !928, !929}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !921, file: !12, line: 49, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !925, size: 64)
!925 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !921, file: !12, line: 50, baseType: !156, size: 32, offset: 64)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !921, file: !12, line: 51, baseType: !156, size: 32, offset: 96)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !921, file: !12, line: 52, baseType: !233, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !921, file: !12, line: 53, baseType: !233, size: 64, offset: 192)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !682, file: !683, line: 835, baseType: !931, size: 32, offset: 5120)
!931 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !65, line: 22, baseType: !932)
!932 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !250, line: 28, baseType: !156)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !682, file: !683, line: 836, baseType: !931, size: 32, offset: 5152)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !682, file: !683, line: 840, baseType: !233, size: 64, offset: 5184)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !682, file: !683, line: 849, baseType: !681, size: 64, offset: 5248)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !682, file: !683, line: 852, baseType: !681, size: 64, offset: 5312)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !682, file: !683, line: 857, baseType: !142, size: 128, offset: 5376)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !682, file: !683, line: 858, baseType: !142, size: 128, offset: 5504)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !682, file: !683, line: 859, baseType: !681, size: 64, offset: 5632)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !682, file: !683, line: 867, baseType: !142, size: 128, offset: 5696)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !682, file: !683, line: 868, baseType: !142, size: 128, offset: 5824)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !682, file: !683, line: 871, baseType: !943, size: 64, offset: 5952)
!943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !944, size: 64)
!944 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !945, line: 59, size: 768, elements: !946)
!945 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!946 = !{!947, !948, !949, !950, !961, !962, !969, !978}
!947 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !944, file: !945, line: 61, baseType: !695, size: 32)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !944, file: !945, line: 62, baseType: !7, size: 32, offset: 32)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !944, file: !945, line: 63, baseType: !390, offset: 64)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !944, file: !945, line: 65, baseType: !951, size: 256, offset: 64)
!951 = !DICompositeType(tag: DW_TAG_array_type, baseType: !952, size: 256, elements: !618)
!952 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !65, line: 182, size: 64, elements: !953)
!953 = !{!954}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !952, file: !65, line: 183, baseType: !955, size: 64)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !65, line: 186, size: 128, elements: !957)
!957 = !{!958, !959}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !956, file: !65, line: 187, baseType: !955, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !956, file: !65, line: 187, baseType: !960, size: 64, offset: 64)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !944, file: !945, line: 66, baseType: !952, size: 64, offset: 320)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !944, file: !945, line: 68, baseType: !963, size: 128, offset: 384)
!963 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !964, line: 40, baseType: !965)
!964 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !964, line: 36, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !965, file: !964, line: 37, baseType: !390)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !965, file: !964, line: 38, baseType: !142, size: 128)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !944, file: !945, line: 69, baseType: !970, size: 128, align: 64, offset: 512)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !65, line: 216, size: 128, align: 64, elements: !971)
!971 = !{!972, !974}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !970, file: !65, line: 217, baseType: !973, size: 64)
!973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !970, size: 64)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !970, file: !65, line: 218, baseType: !975, size: 64, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !976, size: 64)
!976 = !DISubroutineType(types: !977)
!977 = !{null, !973}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !944, file: !945, line: 70, baseType: !979, size: 128, offset: 640)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !980, size: 128, elements: !843)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !945, line: 54, size: 128, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !980, file: !945, line: 55, baseType: !156, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !980, file: !945, line: 56, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !945, line: 56, flags: DIFlagFwdDecl)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !682, file: !683, line: 872, baseType: !987, size: 512, offset: 6016)
!987 = !DICompositeType(tag: DW_TAG_array_type, baseType: !956, size: 512, elements: !618)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !682, file: !683, line: 873, baseType: !142, size: 128, offset: 6528)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !682, file: !683, line: 874, baseType: !142, size: 128, offset: 6656)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !682, file: !683, line: 876, baseType: !991, size: 64, offset: 6784)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !993, line: 26, size: 192, elements: !994)
!993 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !992, file: !993, line: 27, baseType: !7, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !992, file: !993, line: 28, baseType: !997, size: 128, offset: 64)
!997 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !998, line: 43, size: 128, elements: !999)
!998 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!999 = !{!1000, !1001}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !997, file: !998, line: 44, baseType: !584)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !997, file: !998, line: 45, baseType: !142, size: 128)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !682, file: !683, line: 879, baseType: !1003, size: 64, offset: 6848)
!1003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !682, file: !683, line: 882, baseType: !1003, size: 64, offset: 6912)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !682, file: !683, line: 884, baseType: !170, size: 64, offset: 6976)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !682, file: !683, line: 885, baseType: !170, size: 64, offset: 7040)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !682, file: !683, line: 890, baseType: !170, size: 64, offset: 7104)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !682, file: !683, line: 891, baseType: !1009, size: 128, offset: 7168)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !683, line: 242, size: 128, elements: !1010)
!1010 = !{!1011, !1012, !1013}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1009, file: !683, line: 244, baseType: !170, size: 64)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1009, file: !683, line: 245, baseType: !170, size: 64, offset: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1009, file: !683, line: 246, baseType: !584, offset: 128)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !682, file: !683, line: 900, baseType: !233, size: 64, offset: 7296)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !682, file: !683, line: 901, baseType: !233, size: 64, offset: 7360)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !682, file: !683, line: 904, baseType: !170, size: 64, offset: 7424)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !682, file: !683, line: 907, baseType: !170, size: 64, offset: 7488)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !682, file: !683, line: 910, baseType: !233, size: 64, offset: 7552)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !682, file: !683, line: 911, baseType: !233, size: 64, offset: 7616)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !682, file: !683, line: 914, baseType: !1021, size: 640, offset: 7680)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1022, line: 123, size: 640, elements: !1023)
!1022 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1023 = !{!1024, !1030, !1031}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1021, file: !1022, line: 124, baseType: !1025, size: 576)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1026, size: 576, elements: !432)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1022, line: 108, size: 192, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1026, file: !1022, line: 109, baseType: !170, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1026, file: !1022, line: 110, baseType: !813, size: 128, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1021, file: !1022, line: 125, baseType: !7, size: 32, offset: 576)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1021, file: !1022, line: 126, baseType: !7, size: 32, offset: 608)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !682, file: !683, line: 917, baseType: !1033, size: 192, offset: 8320)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1022, line: 134, size: 192, elements: !1034)
!1034 = !{!1035, !1036}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1033, file: !1022, line: 135, baseType: !970, size: 128, align: 64)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1033, file: !1022, line: 136, baseType: !7, size: 32, offset: 128)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !682, file: !683, line: 923, baseType: !1038, size: 64, offset: 8512)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1040)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1041, line: 11, flags: DIFlagFwdDecl)
!1041 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !682, file: !683, line: 926, baseType: !1038, size: 64, offset: 8576)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !682, file: !683, line: 929, baseType: !1038, size: 64, offset: 8640)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !682, file: !683, line: 933, baseType: !1045, size: 64, offset: 8704)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !683, line: 933, flags: DIFlagFwdDecl)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !682, file: !683, line: 943, baseType: !1048, size: 128, offset: 8768)
!1048 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 128, elements: !1049)
!1049 = !{!1050}
!1050 = !DISubrange(count: 16)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !682, file: !683, line: 945, baseType: !1052, size: 64, offset: 8896)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !683, line: 49, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !682, file: !683, line: 956, baseType: !1055, size: 64, offset: 8960)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !683, line: 45, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !682, file: !683, line: 959, baseType: !1058, size: 64, offset: 9024)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !683, line: 959, flags: DIFlagFwdDecl)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !682, file: !683, line: 962, baseType: !1061, size: 64, offset: 9088)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !683, line: 66, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !682, file: !683, line: 966, baseType: !1064, size: 64, offset: 9152)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1066, line: 35, flags: DIFlagFwdDecl)
!1066 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !682, file: !683, line: 969, baseType: !1068, size: 64, offset: 9216)
!1068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1069, size: 64)
!1069 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1022, line: 223, flags: DIFlagFwdDecl)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !682, file: !683, line: 970, baseType: !1071, size: 64, offset: 9280)
!1071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1072, size: 64)
!1072 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !683, line: 62, flags: DIFlagFwdDecl)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !682, file: !683, line: 971, baseType: !1074, size: 64, offset: 9344)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1075, line: 25, baseType: !1076)
!1075 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1076 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1075, line: 23, size: 64, elements: !1077)
!1077 = !{!1078}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1076, file: !1075, line: 24, baseType: !842, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !682, file: !683, line: 972, baseType: !1074, size: 64, offset: 9408)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !682, file: !683, line: 974, baseType: !1074, size: 64, offset: 9472)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !682, file: !683, line: 975, baseType: !1082, size: 192, offset: 9536)
!1082 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1083, line: 30, size: 192, elements: !1084)
!1083 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1084 = !{!1085, !1086}
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1082, file: !1083, line: 31, baseType: !142, size: 128)
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1082, file: !1083, line: 32, baseType: !1074, size: 64, offset: 128)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !682, file: !683, line: 976, baseType: !233, size: 64, offset: 9728)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !682, file: !683, line: 977, baseType: !252, size: 64, offset: 9792)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !682, file: !683, line: 978, baseType: !7, size: 32, offset: 9856)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !682, file: !683, line: 980, baseType: !973, size: 64, offset: 9920)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !682, file: !683, line: 989, baseType: !1092, size: 128, offset: 9984)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1093, line: 35, size: 128, elements: !1094)
!1093 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1094 = !{!1095, !1096, !1097}
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1092, file: !1093, line: 36, baseType: !156, size: 32)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1092, file: !1093, line: 37, baseType: !559, size: 32, offset: 32)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1092, file: !1093, line: 38, baseType: !1098, size: 64, offset: 64)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1093, line: 23, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !682, file: !683, line: 992, baseType: !170, size: 64, offset: 10112)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !682, file: !683, line: 993, baseType: !170, size: 64, offset: 10176)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !682, file: !683, line: 996, baseType: !390, offset: 10240)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !682, file: !683, line: 999, baseType: !584, offset: 10240)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !682, file: !683, line: 1001, baseType: !1105, size: 64, offset: 10240)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !683, line: 636, size: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1105, file: !683, line: 637, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1105, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !682, file: !683, line: 1005, baseType: !816, size: 128, offset: 10304)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !682, file: !683, line: 1007, baseType: !681, size: 64, offset: 10432)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !682, file: !683, line: 1009, baseType: !1112, size: 64, offset: 10496)
!1112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1113, size: 64)
!1113 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !683, line: 1009, flags: DIFlagFwdDecl)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !682, file: !683, line: 1043, baseType: !63, size: 64, offset: 10560)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !682, file: !683, line: 1046, baseType: !1116, size: 64, offset: 10624)
!1116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !683, line: 41, flags: DIFlagFwdDecl)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !682, file: !683, line: 1050, baseType: !1119, size: 64, offset: 10688)
!1119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1120, size: 64)
!1120 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !683, line: 42, flags: DIFlagFwdDecl)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !682, file: !683, line: 1054, baseType: !1122, size: 64, offset: 10752)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !683, line: 55, flags: DIFlagFwdDecl)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !682, file: !683, line: 1056, baseType: !1125, size: 64, offset: 10816)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !683, line: 40, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !682, file: !683, line: 1058, baseType: !1128, size: 64, offset: 10880)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !683, line: 47, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !682, file: !683, line: 1061, baseType: !1131, size: 64, offset: 10944)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !683, line: 43, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !682, file: !683, line: 1064, baseType: !233, size: 64, offset: 11008)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !682, file: !683, line: 1065, baseType: !1135, size: 64, offset: 11072)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1083, line: 14, baseType: !1137)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1083, line: 12, size: 384, elements: !1138)
!1138 = !{!1139}
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1137, file: !1083, line: 13, baseType: !1140, size: 384)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1137, file: !1083, line: 13, size: 384, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1140, file: !1083, line: 13, baseType: !156, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1140, file: !1083, line: 13, baseType: !156, size: 32, offset: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1140, file: !1083, line: 13, baseType: !156, size: 32, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1140, file: !1083, line: 13, baseType: !1146, size: 256, offset: 128)
!1146 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1147, line: 32, size: 256, elements: !1148)
!1147 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1148 = !{!1149, !1155, !1168, !1174, !1183, !1203, !1208}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1146, file: !1147, line: 37, baseType: !1150, size: 64)
!1150 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 34, size: 64, elements: !1151)
!1151 = !{!1152, !1153}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1150, file: !1147, line: 35, baseType: !932, size: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1150, file: !1147, line: 36, baseType: !1154, size: 32, offset: 32)
!1154 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !250, line: 49, baseType: !7)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1146, file: !1147, line: 45, baseType: !1156, size: 192)
!1156 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 40, size: 192, elements: !1157)
!1157 = !{!1158, !1160, !1161, !1167}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1156, file: !1147, line: 41, baseType: !1159, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !250, line: 95, baseType: !156)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1156, file: !1147, line: 42, baseType: !156, size: 32, offset: 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1156, file: !1147, line: 43, baseType: !1162, size: 64, offset: 64)
!1162 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1147, line: 11, baseType: !1163)
!1163 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1147, line: 8, size: 64, elements: !1164)
!1164 = !{!1165, !1166}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1163, file: !1147, line: 9, baseType: !156, size: 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1163, file: !1147, line: 10, baseType: !63, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1156, file: !1147, line: 44, baseType: !156, size: 32, offset: 128)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1146, file: !1147, line: 52, baseType: !1169, size: 128)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 48, size: 128, elements: !1170)
!1170 = !{!1171, !1172, !1173}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1169, file: !1147, line: 49, baseType: !932, size: 32)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1169, file: !1147, line: 50, baseType: !1154, size: 32, offset: 32)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1169, file: !1147, line: 51, baseType: !1162, size: 64, offset: 64)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1146, file: !1147, line: 61, baseType: !1175, size: 256)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 55, size: 256, elements: !1176)
!1176 = !{!1177, !1178, !1179, !1180, !1182}
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1175, file: !1147, line: 56, baseType: !932, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1175, file: !1147, line: 57, baseType: !1154, size: 32, offset: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1175, file: !1147, line: 58, baseType: !156, size: 32, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1175, file: !1147, line: 59, baseType: !1181, size: 64, offset: 128)
!1181 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !250, line: 94, baseType: !464)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1175, file: !1147, line: 60, baseType: !1181, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1146, file: !1147, line: 95, baseType: !1184, size: 256)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 64, size: 256, elements: !1185)
!1185 = !{!1186, !1187}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1184, file: !1147, line: 65, baseType: !63, size: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !1147, line: 77, baseType: !1188, size: 192, offset: 64)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !1147, line: 77, size: 192, elements: !1189)
!1189 = !{!1190, !1191, !1198}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1188, file: !1147, line: 82, baseType: !670, size: 16)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1188, file: !1147, line: 88, baseType: !1192, size: 192)
!1192 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !1147, line: 84, size: 192, elements: !1193)
!1193 = !{!1194, !1196, !1197}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1192, file: !1147, line: 85, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !795)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1192, file: !1147, line: 86, baseType: !63, size: 64, offset: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1192, file: !1147, line: 87, baseType: !63, size: 64, offset: 128)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1188, file: !1147, line: 93, baseType: !1199, size: 96)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1188, file: !1147, line: 90, size: 96, elements: !1200)
!1200 = !{!1201, !1202}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1199, file: !1147, line: 91, baseType: !1195, size: 64)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1199, file: !1147, line: 92, baseType: !66, size: 32, offset: 64)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1146, file: !1147, line: 101, baseType: !1204, size: 128)
!1204 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 98, size: 128, elements: !1205)
!1205 = !{!1206, !1207}
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1204, file: !1147, line: 99, baseType: !465, size: 64)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1204, file: !1147, line: 100, baseType: !156, size: 32, offset: 64)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1146, file: !1147, line: 108, baseType: !1209, size: 128)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1147, line: 104, size: 128, elements: !1210)
!1210 = !{!1211, !1212, !1213}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1209, file: !1147, line: 105, baseType: !63, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1209, file: !1147, line: 106, baseType: !156, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1209, file: !1147, line: 107, baseType: !7, size: 32, offset: 96)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !682, file: !683, line: 1067, baseType: !1215, offset: 11136)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1216, line: 12, elements: !404)
!1216 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !682, file: !683, line: 1099, baseType: !1218, size: 64, offset: 11136)
!1218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1219, size: 64)
!1219 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !683, line: 56, flags: DIFlagFwdDecl)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !682, file: !683, line: 1103, baseType: !142, size: 128, offset: 11200)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !682, file: !683, line: 1104, baseType: !1222, size: 64, offset: 11328)
!1222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1223, size: 64)
!1223 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !683, line: 46, flags: DIFlagFwdDecl)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !682, file: !683, line: 1105, baseType: !636, size: 192, offset: 11392)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !682, file: !683, line: 1106, baseType: !7, size: 32, offset: 11584)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !682, file: !683, line: 1109, baseType: !1227, size: 128, offset: 11648)
!1227 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1228, size: 128, elements: !134)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !683, line: 51, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !682, file: !683, line: 1110, baseType: !636, size: 192, offset: 11776)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !682, file: !683, line: 1111, baseType: !142, size: 128, offset: 11968)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !682, file: !683, line: 1173, baseType: !1233, size: 64, offset: 12096)
!1233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1234, size: 64)
!1234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1235, line: 62, size: 256, align: 256, elements: !1236)
!1235 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1236 = !{!1237, !1238, !1239, !1244}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1234, file: !1235, line: 75, baseType: !66, size: 32)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1234, file: !1235, line: 90, baseType: !66, size: 32, offset: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1234, file: !1235, line: 124, baseType: !1240, size: 64, offset: 64)
!1240 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1234, file: !1235, line: 109, size: 64, elements: !1241)
!1241 = !{!1242, !1243}
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1240, file: !1235, line: 110, baseType: !171, size: 64)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1240, file: !1235, line: 112, baseType: !171, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1234, file: !1235, line: 144, baseType: !66, size: 32, offset: 128)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !682, file: !683, line: 1174, baseType: !166, size: 32, offset: 12160)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !682, file: !683, line: 1179, baseType: !233, size: 64, offset: 12224)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !682, file: !683, line: 1182, baseType: !1248, size: 128, offset: 12288)
!1248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !614, line: 76, size: 128, elements: !1249)
!1249 = !{!1250, !1255, !1256}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1248, file: !614, line: 85, baseType: !1251, size: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1252, line: 7, size: 64, elements: !1253)
!1252 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1253 = !{!1254}
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1251, file: !1252, line: 12, baseType: !839, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1248, file: !614, line: 88, baseType: !349, size: 8, offset: 64)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1248, file: !614, line: 95, baseType: !349, size: 8, offset: 72)
!1257 = !DIDerivedType(tag: DW_TAG_member, scope: !682, file: !683, line: 1184, baseType: !1258, size: 128, offset: 12416)
!1258 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !682, file: !683, line: 1184, size: 128, elements: !1259)
!1259 = !{!1260, !1261}
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1258, file: !683, line: 1185, baseType: !695, size: 32)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1258, file: !683, line: 1186, baseType: !970, size: 128, align: 64)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !682, file: !683, line: 1190, baseType: !1263, size: 64, offset: 12544)
!1263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1264, size: 64)
!1264 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !319, line: 13, flags: DIFlagFwdDecl)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !682, file: !683, line: 1192, baseType: !1266, size: 128, offset: 12608)
!1266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !614, line: 64, size: 128, elements: !1267)
!1267 = !{!1268, !1361, !1362}
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1266, file: !614, line: 65, baseType: !1269, size: 64)
!1269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1270, size: 64)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !514, line: 68, size: 512, align: 128, elements: !1271)
!1271 = !{!1272, !1273, !1353, !1360}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1270, file: !514, line: 69, baseType: !233, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !514, line: 77, baseType: !1274, size: 320, offset: 64)
!1274 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !514, line: 77, size: 320, elements: !1275)
!1275 = !{!1276, !1285, !1290, !1318, !1326, !1332, !1345, !1352}
!1276 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 78, baseType: !1277, size: 320)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 78, size: 320, elements: !1278)
!1278 = !{!1279, !1280, !1283, !1284}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1277, file: !514, line: 84, baseType: !142, size: 128)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1277, file: !514, line: 86, baseType: !1281, size: 64, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1282, size: 64)
!1282 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !514, line: 26, flags: DIFlagFwdDecl)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1277, file: !514, line: 87, baseType: !233, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1277, file: !514, line: 94, baseType: !233, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 96, baseType: !1286, size: 64)
!1286 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 96, size: 64, elements: !1287)
!1287 = !{!1288}
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1286, file: !514, line: 101, baseType: !1289, size: 64)
!1289 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !65, line: 143, baseType: !170)
!1290 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 103, baseType: !1291, size: 320)
!1291 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 103, size: 320, elements: !1292)
!1292 = !{!1293, !1303, !1306, !1307}
!1293 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !514, line: 104, baseType: !1294, size: 128)
!1294 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !514, line: 104, size: 128, elements: !1295)
!1295 = !{!1296, !1297}
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1294, file: !514, line: 105, baseType: !142, size: 128)
!1297 = !DIDerivedType(tag: DW_TAG_member, scope: !1294, file: !514, line: 106, baseType: !1298, size: 128)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1294, file: !514, line: 106, size: 128, elements: !1299)
!1299 = !{!1300, !1301, !1302}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1298, file: !514, line: 107, baseType: !1269, size: 64)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1298, file: !514, line: 109, baseType: !156, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1298, file: !514, line: 110, baseType: !156, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1291, file: !514, line: 117, baseType: !1304, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1305, size: 64)
!1305 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !514, line: 117, flags: DIFlagFwdDecl)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1291, file: !514, line: 119, baseType: !63, size: 64, offset: 192)
!1307 = !DIDerivedType(tag: DW_TAG_member, scope: !1291, file: !514, line: 120, baseType: !1308, size: 64, offset: 256)
!1308 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1291, file: !514, line: 120, size: 64, elements: !1309)
!1309 = !{!1310, !1311, !1312}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1308, file: !514, line: 121, baseType: !63, size: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1308, file: !514, line: 122, baseType: !233, size: 64)
!1312 = !DIDerivedType(tag: DW_TAG_member, scope: !1308, file: !514, line: 123, baseType: !1313, size: 32)
!1313 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1308, file: !514, line: 123, size: 32, elements: !1314)
!1314 = !{!1315, !1316, !1317}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1313, file: !514, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1313, file: !514, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1313, file: !514, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1318 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 130, baseType: !1319, size: 192)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 130, size: 192, elements: !1320)
!1320 = !{!1321, !1322, !1323, !1324, !1325}
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1319, file: !514, line: 131, baseType: !233, size: 64)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1319, file: !514, line: 134, baseType: !163, size: 8, offset: 64)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1319, file: !514, line: 135, baseType: !163, size: 8, offset: 72)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1319, file: !514, line: 136, baseType: !559, size: 32, offset: 96)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1319, file: !514, line: 137, baseType: !7, size: 32, offset: 128)
!1326 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 139, baseType: !1327, size: 256)
!1327 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 139, size: 256, elements: !1328)
!1328 = !{!1329, !1330, !1331}
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1327, file: !514, line: 140, baseType: !233, size: 64)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1327, file: !514, line: 141, baseType: !559, size: 32, offset: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1327, file: !514, line: 143, baseType: !142, size: 128, offset: 128)
!1332 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 145, baseType: !1333, size: 256)
!1333 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 145, size: 256, elements: !1334)
!1334 = !{!1335, !1336, !1338, !1339, !1344}
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1333, file: !514, line: 146, baseType: !233, size: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1333, file: !514, line: 147, baseType: !1337, size: 64, offset: 64)
!1337 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !506, line: 509, baseType: !1269)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1333, file: !514, line: 148, baseType: !233, size: 64, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1333, file: !514, line: 149, baseType: !1340, size: 64, offset: 192)
!1340 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1333, file: !514, line: 149, size: 64, elements: !1341)
!1341 = !{!1342, !1343}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1340, file: !514, line: 150, baseType: !530, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1340, file: !514, line: 151, baseType: !559, size: 32)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1333, file: !514, line: 156, baseType: !390, offset: 256)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1274, file: !514, line: 159, baseType: !1346, size: 128)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1274, file: !514, line: 159, size: 128, elements: !1347)
!1347 = !{!1348, !1351}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1346, file: !514, line: 161, baseType: !1349, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !514, line: 161, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1346, file: !514, line: 162, baseType: !63, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1274, file: !514, line: 176, baseType: !970, size: 128, align: 64)
!1353 = !DIDerivedType(tag: DW_TAG_member, scope: !1270, file: !514, line: 179, baseType: !1354, size: 32, offset: 384)
!1354 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1270, file: !514, line: 179, size: 32, elements: !1355)
!1355 = !{!1356, !1357, !1358, !1359}
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1354, file: !514, line: 184, baseType: !559, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1354, file: !514, line: 192, baseType: !7, size: 32)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1354, file: !514, line: 194, baseType: !7, size: 32)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1354, file: !514, line: 195, baseType: !156, size: 32)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1270, file: !514, line: 199, baseType: !559, size: 32, offset: 416)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1266, file: !614, line: 67, baseType: !66, size: 32, offset: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1266, file: !614, line: 68, baseType: !66, size: 32, offset: 96)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !682, file: !683, line: 1206, baseType: !156, size: 32, offset: 12736)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !682, file: !683, line: 1207, baseType: !156, size: 32, offset: 12768)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !682, file: !683, line: 1209, baseType: !233, size: 64, offset: 12800)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !682, file: !683, line: 1219, baseType: !170, size: 64, offset: 12864)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !682, file: !683, line: 1220, baseType: !170, size: 64, offset: 12928)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !682, file: !683, line: 1317, baseType: !156, size: 32, offset: 12992)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !682, file: !683, line: 1319, baseType: !681, size: 64, offset: 13056)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !682, file: !683, line: 1322, baseType: !1371, size: 64, offset: 13120)
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1372, size: 64)
!1372 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !683, line: 1322, flags: DIFlagFwdDecl)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !682, file: !683, line: 1326, baseType: !695, size: 32, offset: 13184)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !682, file: !683, line: 1342, baseType: !63, size: 64, offset: 13248)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !682, file: !683, line: 1343, baseType: !171, size: 64, offset: 13312)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !682, file: !683, line: 1344, baseType: !170, size: 64, offset: 13376)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !682, file: !683, line: 1345, baseType: !171, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !682, file: !683, line: 1346, baseType: !171, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !682, file: !683, line: 1347, baseType: !171, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !682, file: !683, line: 1348, baseType: !970, size: 128, align: 64, offset: 13504)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !682, file: !683, line: 1358, baseType: !1382, size: 34816, offset: 13824)
!1382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1383, line: 485, size: 34816, elements: !1384)
!1383 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1384 = !{!1385, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1414, !1415, !1416, !1417, !1418, !1419, !1422, !1423, !1424}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1382, file: !1383, line: 487, baseType: !1386, size: 192)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1387, size: 192, elements: !432)
!1387 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1388, line: 16, size: 64, elements: !1389)
!1388 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1389 = !{!1390, !1391, !1392, !1393, !1394, !1395, !1396, !1397, !1398, !1399, !1400, !1401, !1402}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1387, file: !1388, line: 17, baseType: !665, size: 16)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1387, file: !1388, line: 18, baseType: !665, size: 16, offset: 16)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1387, file: !1388, line: 19, baseType: !665, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1387, file: !1388, line: 19, baseType: !665, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1387, file: !1388, line: 19, baseType: !665, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1387, file: !1388, line: 19, baseType: !665, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1387, file: !1388, line: 19, baseType: !665, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1387, file: !1388, line: 20, baseType: !665, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1387, file: !1388, line: 20, baseType: !665, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1387, file: !1388, line: 20, baseType: !665, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1387, file: !1388, line: 20, baseType: !665, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1387, file: !1388, line: 20, baseType: !665, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1387, file: !1388, line: 20, baseType: !665, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1382, file: !1383, line: 491, baseType: !233, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1382, file: !1383, line: 495, baseType: !472, size: 16, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1382, file: !1383, line: 496, baseType: !472, size: 16, offset: 272)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1382, file: !1383, line: 497, baseType: !472, size: 16, offset: 288)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1382, file: !1383, line: 498, baseType: !472, size: 16, offset: 304)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1382, file: !1383, line: 502, baseType: !233, size: 64, offset: 320)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1382, file: !1383, line: 503, baseType: !233, size: 64, offset: 384)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1382, file: !1383, line: 514, baseType: !1411, size: 256, offset: 448)
!1411 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1412, size: 256, elements: !618)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1383, line: 483, flags: DIFlagFwdDecl)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1382, file: !1383, line: 516, baseType: !233, size: 64, offset: 704)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1382, file: !1383, line: 518, baseType: !233, size: 64, offset: 768)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1382, file: !1383, line: 520, baseType: !233, size: 64, offset: 832)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1382, file: !1383, line: 521, baseType: !233, size: 64, offset: 896)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1382, file: !1383, line: 522, baseType: !233, size: 64, offset: 960)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1382, file: !1383, line: 528, baseType: !1420, size: 64, offset: 1024)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1383, line: 10, flags: DIFlagFwdDecl)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1382, file: !1383, line: 535, baseType: !233, size: 64, offset: 1088)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1382, file: !1383, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1382, file: !1383, line: 540, baseType: !1425, size: 33280, offset: 1536)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1426, line: 317, size: 33280, elements: !1427)
!1426 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1427 = !{!1428, !1429, !1430}
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1425, file: !1426, line: 330, baseType: !7, size: 32)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1425, file: !1426, line: 337, baseType: !233, size: 64, offset: 64)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1425, file: !1426, line: 348, baseType: !1431, size: 32768, offset: 512)
!1431 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1426, line: 304, size: 32768, elements: !1432)
!1432 = !{!1433, !1448, !1485, !1535, !1552}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1431, file: !1426, line: 305, baseType: !1434, size: 896)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1426, line: 12, size: 896, elements: !1435)
!1435 = !{!1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1447}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1434, file: !1426, line: 13, baseType: !166, size: 32)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1434, file: !1426, line: 14, baseType: !166, size: 32, offset: 32)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1434, file: !1426, line: 15, baseType: !166, size: 32, offset: 64)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1434, file: !1426, line: 16, baseType: !166, size: 32, offset: 96)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1434, file: !1426, line: 17, baseType: !166, size: 32, offset: 128)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1434, file: !1426, line: 18, baseType: !166, size: 32, offset: 160)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1434, file: !1426, line: 19, baseType: !166, size: 32, offset: 192)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1434, file: !1426, line: 22, baseType: !1444, size: 640, offset: 224)
!1444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 640, elements: !1445)
!1445 = !{!1446}
!1446 = !DISubrange(count: 20)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1434, file: !1426, line: 25, baseType: !166, size: 32, offset: 864)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1431, file: !1426, line: 306, baseType: !1449, size: 4096, align: 128)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1426, line: 34, size: 4096, align: 128, elements: !1450)
!1450 = !{!1451, !1452, !1453, !1454, !1455, !1470, !1471, !1472, !1474, !1476, !1480}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1449, file: !1426, line: 35, baseType: !665, size: 16)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1449, file: !1426, line: 36, baseType: !665, size: 16, offset: 16)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1449, file: !1426, line: 37, baseType: !665, size: 16, offset: 32)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1449, file: !1426, line: 38, baseType: !665, size: 16, offset: 48)
!1455 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1426, line: 39, baseType: !1456, size: 128, offset: 64)
!1456 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1426, line: 39, size: 128, elements: !1457)
!1457 = !{!1458, !1463}
!1458 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1426, line: 40, baseType: !1459, size: 128)
!1459 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1426, line: 40, size: 128, elements: !1460)
!1460 = !{!1461, !1462}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1459, file: !1426, line: 41, baseType: !170, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1459, file: !1426, line: 42, baseType: !170, size: 64, offset: 64)
!1463 = !DIDerivedType(tag: DW_TAG_member, scope: !1456, file: !1426, line: 44, baseType: !1464, size: 128)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1456, file: !1426, line: 44, size: 128, elements: !1465)
!1465 = !{!1466, !1467, !1468, !1469}
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1464, file: !1426, line: 45, baseType: !166, size: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1464, file: !1426, line: 46, baseType: !166, size: 32, offset: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1464, file: !1426, line: 47, baseType: !166, size: 32, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1464, file: !1426, line: 48, baseType: !166, size: 32, offset: 96)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1449, file: !1426, line: 51, baseType: !166, size: 32, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1449, file: !1426, line: 52, baseType: !166, size: 32, offset: 224)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1449, file: !1426, line: 55, baseType: !1473, size: 1024, offset: 256)
!1473 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 1024, elements: !124)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1449, file: !1426, line: 58, baseType: !1475, size: 2048, offset: 1280)
!1475 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 2048, elements: !436)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1449, file: !1426, line: 60, baseType: !1477, size: 384, offset: 3328)
!1477 = !DICompositeType(tag: DW_TAG_array_type, baseType: !166, size: 384, elements: !1478)
!1478 = !{!1479}
!1479 = !DISubrange(count: 12)
!1480 = !DIDerivedType(tag: DW_TAG_member, scope: !1449, file: !1426, line: 62, baseType: !1481, size: 384, offset: 3712)
!1481 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1449, file: !1426, line: 62, size: 384, elements: !1482)
!1482 = !{!1483, !1484}
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1481, file: !1426, line: 63, baseType: !1477, size: 384)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1481, file: !1426, line: 64, baseType: !1477, size: 384)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1431, file: !1426, line: 307, baseType: !1486, size: 1088)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1426, line: 79, size: 1088, elements: !1487)
!1487 = !{!1488, !1489, !1490, !1491, !1492, !1493, !1494, !1495, !1496, !1497, !1498, !1499, !1500, !1501, !1502, !1534}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1486, file: !1426, line: 80, baseType: !166, size: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1486, file: !1426, line: 81, baseType: !166, size: 32, offset: 32)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1486, file: !1426, line: 82, baseType: !166, size: 32, offset: 64)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1486, file: !1426, line: 83, baseType: !166, size: 32, offset: 96)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1486, file: !1426, line: 84, baseType: !166, size: 32, offset: 128)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1486, file: !1426, line: 85, baseType: !166, size: 32, offset: 160)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1486, file: !1426, line: 86, baseType: !166, size: 32, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1486, file: !1426, line: 88, baseType: !1444, size: 640, offset: 224)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1486, file: !1426, line: 89, baseType: !292, size: 8, offset: 864)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1486, file: !1426, line: 90, baseType: !292, size: 8, offset: 872)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1486, file: !1426, line: 91, baseType: !292, size: 8, offset: 880)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1486, file: !1426, line: 92, baseType: !292, size: 8, offset: 888)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1486, file: !1426, line: 93, baseType: !292, size: 8, offset: 896)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1486, file: !1426, line: 94, baseType: !292, size: 8, offset: 904)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1486, file: !1426, line: 95, baseType: !1503, size: 64, offset: 960)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1505, line: 11, size: 128, elements: !1506)
!1505 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1504, file: !1505, line: 12, baseType: !465, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1504, file: !1505, line: 13, baseType: !1509, size: 64, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1511, line: 56, size: 1344, elements: !1512)
!1511 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1512 = !{!1513, !1514, !1515, !1516, !1517, !1518, !1519, !1520, !1521, !1522, !1523, !1524, !1525, !1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1510, file: !1511, line: 61, baseType: !233, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1510, file: !1511, line: 62, baseType: !233, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1510, file: !1511, line: 63, baseType: !233, size: 64, offset: 128)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1510, file: !1511, line: 64, baseType: !233, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1510, file: !1511, line: 65, baseType: !233, size: 64, offset: 256)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1510, file: !1511, line: 66, baseType: !233, size: 64, offset: 320)
!1519 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1510, file: !1511, line: 68, baseType: !233, size: 64, offset: 384)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1510, file: !1511, line: 69, baseType: !233, size: 64, offset: 448)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1510, file: !1511, line: 70, baseType: !233, size: 64, offset: 512)
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1510, file: !1511, line: 71, baseType: !233, size: 64, offset: 576)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1510, file: !1511, line: 72, baseType: !233, size: 64, offset: 640)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1510, file: !1511, line: 73, baseType: !233, size: 64, offset: 704)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1510, file: !1511, line: 74, baseType: !233, size: 64, offset: 768)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1510, file: !1511, line: 75, baseType: !233, size: 64, offset: 832)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1510, file: !1511, line: 76, baseType: !233, size: 64, offset: 896)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1510, file: !1511, line: 81, baseType: !233, size: 64, offset: 960)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1510, file: !1511, line: 83, baseType: !233, size: 64, offset: 1024)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1510, file: !1511, line: 84, baseType: !233, size: 64, offset: 1088)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1510, file: !1511, line: 85, baseType: !233, size: 64, offset: 1152)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1510, file: !1511, line: 86, baseType: !233, size: 64, offset: 1216)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1510, file: !1511, line: 87, baseType: !233, size: 64, offset: 1280)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1486, file: !1426, line: 96, baseType: !166, size: 32, offset: 1024)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1431, file: !1426, line: 308, baseType: !1536, size: 4608, align: 512)
!1536 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1426, line: 289, size: 4608, align: 512, elements: !1537)
!1537 = !{!1538, !1539, !1548}
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1536, file: !1426, line: 290, baseType: !1449, size: 4096, align: 128)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1536, file: !1426, line: 291, baseType: !1540, size: 512, offset: 4096)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1426, line: 268, size: 512, elements: !1541)
!1541 = !{!1542, !1543, !1544}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1540, file: !1426, line: 269, baseType: !170, size: 64)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1540, file: !1426, line: 270, baseType: !170, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1540, file: !1426, line: 271, baseType: !1545, size: 384, offset: 128)
!1545 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 384, elements: !1546)
!1546 = !{!1547}
!1547 = !DISubrange(count: 6)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1536, file: !1426, line: 292, baseType: !1549, offset: 4608)
!1549 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, elements: !1550)
!1550 = !{!1551}
!1551 = !DISubrange(count: 0)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1431, file: !1426, line: 309, baseType: !1553, size: 32768)
!1553 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 32768, elements: !1554)
!1554 = !{!1555}
!1555 = !DISubrange(count: 4096)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !678, file: !514, line: 378, baseType: !1557, size: 64, offset: 64)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !678, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !674, file: !514, line: 384, baseType: !992, size: 192, offset: 192)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !534, file: !514, line: 500, baseType: !390, offset: 6656)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !534, file: !514, line: 501, baseType: !1561, size: 64, offset: 6656)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !514, line: 387, flags: DIFlagFwdDecl)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !534, file: !514, line: 516, baseType: !1564, size: 64, offset: 6720)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1566, line: 18, flags: DIFlagFwdDecl)
!1566 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !534, file: !514, line: 519, baseType: !504, size: 64, offset: 6784)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !534, file: !514, line: 521, baseType: !1569, size: 64, offset: 6848)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !514, line: 521, flags: DIFlagFwdDecl)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !534, file: !514, line: 545, baseType: !559, size: 32, offset: 6912)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !534, file: !514, line: 548, baseType: !349, size: 8, offset: 6944)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !534, file: !514, line: 550, baseType: !1574, offset: 6952)
!1574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1575, line: 142, elements: !404)
!1575 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !534, file: !514, line: 554, baseType: !1577, size: 256, offset: 6976)
!1577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1578, line: 102, size: 256, elements: !1579)
!1578 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1579 = !{!1580, !1581, !1582}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1577, file: !1578, line: 103, baseType: !567, size: 64)
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1577, file: !1578, line: 104, baseType: !142, size: 128, offset: 64)
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1577, file: !1578, line: 105, baseType: !1583, size: 64, offset: 192)
!1583 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1578, line: 21, baseType: !1584)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DISubroutineType(types: !1586)
!1586 = !{null, !1587}
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !534, file: !514, line: 557, baseType: !166, size: 32, offset: 7232)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !531, file: !514, line: 565, baseType: !1590, offset: 7296)
!1590 = !DICompositeType(tag: DW_TAG_array_type, baseType: !233, elements: !1591)
!1591 = !{!1592}
!1592 = !DISubrange(count: -1)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !513, file: !514, line: 333, baseType: !1594, size: 64, offset: 576)
!1594 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !506, line: 284, baseType: !1595)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !506, line: 284, size: 64, elements: !1596)
!1596 = !{!1597}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1595, file: !506, line: 284, baseType: !1598, size: 64)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !557, line: 19, baseType: !233)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !513, file: !514, line: 334, baseType: !233, size: 64, offset: 640)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !513, file: !514, line: 343, baseType: !1601, size: 256, offset: 704)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !513, file: !514, line: 340, size: 256, elements: !1602)
!1602 = !{!1603, !1604}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1601, file: !514, line: 341, baseType: !521, size: 192, align: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1601, file: !514, line: 342, baseType: !233, size: 64, offset: 192)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !513, file: !514, line: 351, baseType: !142, size: 128, offset: 960)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !513, file: !514, line: 353, baseType: !1607, size: 64, offset: 1088)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !514, line: 353, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !513, file: !514, line: 356, baseType: !1610, size: 64, offset: 1152)
!1610 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1612)
!1612 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !514, line: 356, flags: DIFlagFwdDecl)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !513, file: !514, line: 359, baseType: !233, size: 64, offset: 1216)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !513, file: !514, line: 361, baseType: !504, size: 64, offset: 1280)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !513, file: !514, line: 362, baseType: !63, size: 64, offset: 1344)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !513, file: !514, line: 365, baseType: !567, size: 64, offset: 1408)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !513, file: !514, line: 373, baseType: !1618, offset: 1472)
!1618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !514, line: 296, elements: !404)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !483, file: !456, line: 90, baseType: !478, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !483, file: !456, line: 91, baseType: !1621, size: 64, offset: 256)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !494, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !446, file: !378, line: 143, baseType: !1623, size: 64, offset: 256)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!1626, !383}
!1626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1627, size: 64)
!1627 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1628)
!1628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1629)
!1629 = !{!1630, !1631, !1635, !1639, !1645, !1649}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1628, file: !18, line: 40, baseType: !17, size: 32)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1628, file: !18, line: 41, baseType: !1632, size: 64, offset: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!349}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1628, file: !18, line: 42, baseType: !1636, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!63}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1628, file: !18, line: 43, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!132, !1643}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1628, file: !18, line: 44, baseType: !1646, size: 64, offset: 256)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!132}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1628, file: !18, line: 45, baseType: !1650, size: 64, offset: 320)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{null, !63}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !446, file: !378, line: 144, baseType: !1654, size: 64, offset: 320)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!132, !383}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !446, file: !378, line: 145, baseType: !1658, size: 64, offset: 384)
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DISubroutineType(types: !1660)
!1660 = !{null, !383, !1661, !1667}
!1661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1662, size: 64)
!1662 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1566, line: 23, baseType: !1663)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1566, line: 21, size: 32, elements: !1664)
!1664 = !{!1665}
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1663, file: !1566, line: 22, baseType: !1666, size: 32)
!1666 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !65, line: 32, baseType: !1154)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1566, line: 28, baseType: !1669)
!1669 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1566, line: 26, size: 32, elements: !1670)
!1670 = !{!1671}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1669, file: !1566, line: 27, baseType: !1672, size: 32)
!1672 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !65, line: 33, baseType: !1673)
!1673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !250, line: 50, baseType: !7)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !377, file: !378, line: 70, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1677, line: 123, size: 1024, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686, !1819, !1820, !1821, !1822, !1823}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1676, file: !1677, line: 124, baseType: !559, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1676, file: !1677, line: 125, baseType: !559, size: 32, offset: 32)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1676, file: !1677, line: 135, baseType: !1675, size: 64, offset: 64)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1676, file: !1677, line: 136, baseType: !149, size: 64, offset: 128)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1676, file: !1677, line: 138, baseType: !521, size: 192, align: 64, offset: 192)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1676, file: !1677, line: 140, baseType: !132, size: 64, offset: 384)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1676, file: !1677, line: 141, baseType: !7, size: 32, offset: 448)
!1686 = !DIDerivedType(tag: DW_TAG_member, scope: !1676, file: !1677, line: 142, baseType: !1687, size: 256, offset: 512)
!1687 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1676, file: !1677, line: 142, size: 256, elements: !1688)
!1688 = !{!1689, !1743, !1747}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1687, file: !1677, line: 143, baseType: !1690, size: 192)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1677, line: 91, size: 192, elements: !1691)
!1691 = !{!1692, !1693, !1694}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1690, file: !1677, line: 92, baseType: !233, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1690, file: !1677, line: 94, baseType: !538, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1690, file: !1677, line: 100, baseType: !1695, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1677, line: 180, size: 704, elements: !1697)
!1697 = !{!1698, !1699, !1700, !1713, !1714, !1715, !1741, !1742}
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1696, file: !1677, line: 182, baseType: !1675, size: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1696, file: !1677, line: 183, baseType: !7, size: 32, offset: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1696, file: !1677, line: 186, baseType: !1701, size: 192, offset: 128)
!1701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1702, line: 19, size: 192, elements: !1703)
!1702 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !{!1704, !1711, !1712}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1701, file: !1702, line: 20, baseType: !1705, size: 128)
!1705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1706, line: 292, size: 128, elements: !1707)
!1706 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1705, file: !1706, line: 293, baseType: !390)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1705, file: !1706, line: 295, baseType: !64, size: 32)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1705, file: !1706, line: 296, baseType: !63, size: 64, offset: 64)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1701, file: !1702, line: 21, baseType: !7, size: 32, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1701, file: !1702, line: 22, baseType: !7, size: 32, offset: 160)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1696, file: !1677, line: 187, baseType: !166, size: 32, offset: 320)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1696, file: !1677, line: 188, baseType: !166, size: 32, offset: 352)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1696, file: !1677, line: 189, baseType: !1716, size: 64, offset: 384)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1677, line: 168, size: 320, elements: !1718)
!1718 = !{!1719, !1725, !1729, !1733, !1737}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1717, file: !1677, line: 169, baseType: !1720, size: 64)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DISubroutineType(types: !1722)
!1722 = !{!156, !1723, !1695}
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !506, line: 539, flags: DIFlagFwdDecl)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1717, file: !1677, line: 171, baseType: !1726, size: 64, offset: 64)
!1726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1727, size: 64)
!1727 = !DISubroutineType(types: !1728)
!1728 = !{!156, !1675, !149, !471}
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1717, file: !1677, line: 173, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DISubroutineType(types: !1732)
!1732 = !{!156, !1675}
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1717, file: !1677, line: 174, baseType: !1734, size: 64, offset: 192)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!156, !1675, !1675, !149}
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1717, file: !1677, line: 176, baseType: !1738, size: 64, offset: 256)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!156, !1723, !1675, !1695}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1696, file: !1677, line: 192, baseType: !142, size: 128, offset: 448)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1696, file: !1677, line: 194, baseType: !963, size: 128, offset: 576)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1687, file: !1677, line: 144, baseType: !1744, size: 64)
!1744 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1677, line: 103, size: 64, elements: !1745)
!1745 = !{!1746}
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1744, file: !1677, line: 104, baseType: !1675, size: 64)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1687, file: !1677, line: 145, baseType: !1748, size: 256)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1677, line: 107, size: 256, elements: !1749)
!1749 = !{!1750, !1814, !1817, !1818}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1748, file: !1677, line: 108, baseType: !1751, size: 64)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1753)
!1753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1677, line: 217, size: 768, elements: !1754)
!1754 = !{!1755, !1775, !1779, !1783, !1788, !1792, !1796, !1800, !1801, !1802, !1803, !1810}
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1753, file: !1677, line: 222, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1757, size: 64)
!1757 = !DISubroutineType(types: !1758)
!1758 = !{!156, !1759}
!1759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1677, line: 197, size: 1088, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1760, file: !1677, line: 199, baseType: !1675, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1760, file: !1677, line: 200, baseType: !504, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1760, file: !1677, line: 201, baseType: !1723, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1760, file: !1677, line: 202, baseType: !63, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1760, file: !1677, line: 205, baseType: !636, size: 192, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1760, file: !1677, line: 206, baseType: !636, size: 192, offset: 448)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1760, file: !1677, line: 207, baseType: !156, size: 32, offset: 640)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1760, file: !1677, line: 208, baseType: !142, size: 128, offset: 704)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1760, file: !1677, line: 209, baseType: !431, size: 64, offset: 832)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1760, file: !1677, line: 211, baseType: !252, size: 64, offset: 896)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1760, file: !1677, line: 212, baseType: !349, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1760, file: !1677, line: 213, baseType: !349, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1760, file: !1677, line: 214, baseType: !1610, size: 64, offset: 1024)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1753, file: !1677, line: 223, baseType: !1776, size: 64, offset: 64)
!1776 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1777, size: 64)
!1777 = !DISubroutineType(types: !1778)
!1778 = !{null, !1759}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1753, file: !1677, line: 236, baseType: !1780, size: 64, offset: 128)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!156, !1723, !63}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1753, file: !1677, line: 238, baseType: !1784, size: 64, offset: 192)
!1784 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1785, size: 64)
!1785 = !DISubroutineType(types: !1786)
!1786 = !{!63, !1723, !1787}
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1753, file: !1677, line: 239, baseType: !1789, size: 64, offset: 256)
!1789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1790, size: 64)
!1790 = !DISubroutineType(types: !1791)
!1791 = !{!63, !1723, !63, !1787}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1753, file: !1677, line: 240, baseType: !1793, size: 64, offset: 320)
!1793 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1794, size: 64)
!1794 = !DISubroutineType(types: !1795)
!1795 = !{null, !1723, !63}
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1753, file: !1677, line: 242, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!462, !1759, !431, !252, !248}
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1753, file: !1677, line: 252, baseType: !252, size: 64, offset: 448)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1753, file: !1677, line: 259, baseType: !349, size: 8, offset: 512)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1753, file: !1677, line: 260, baseType: !1797, size: 64, offset: 576)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1753, file: !1677, line: 263, baseType: !1804, size: 64, offset: 640)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = !DISubroutineType(types: !1806)
!1806 = !{!1807, !1759, !1808}
!1807 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !69, line: 52, baseType: !7)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1677, line: 27, flags: DIFlagFwdDecl)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1753, file: !1677, line: 266, baseType: !1811, size: 64, offset: 704)
!1811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1812, size: 64)
!1812 = !DISubroutineType(types: !1813)
!1813 = !{!156, !1759, !512}
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1748, file: !1677, line: 109, baseType: !1815, size: 64, offset: 64)
!1815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1816 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1677, line: 31, flags: DIFlagFwdDecl)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1748, file: !1677, line: 110, baseType: !248, size: 64, offset: 128)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1748, file: !1677, line: 111, baseType: !1675, size: 64, offset: 192)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1676, file: !1677, line: 148, baseType: !63, size: 64, offset: 768)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1676, file: !1677, line: 154, baseType: !170, size: 64, offset: 832)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1676, file: !1677, line: 156, baseType: !472, size: 16, offset: 896)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1676, file: !1677, line: 157, baseType: !471, size: 16, offset: 912)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1676, file: !1677, line: 158, baseType: !1824, size: 64, offset: 960)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1677, line: 32, flags: DIFlagFwdDecl)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !377, file: !378, line: 71, baseType: !1827, size: 32, offset: 448)
!1827 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1828, line: 19, size: 32, elements: !1829)
!1828 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !{!1830}
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1827, file: !1828, line: 20, baseType: !695, size: 32)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !377, file: !378, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !377, file: !378, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !377, file: !378, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !377, file: !378, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !377, file: !378, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !374, file: !30, line: 463, baseType: !1837, size: 64, offset: 512)
!1837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !374, file: !30, line: 465, baseType: !1839, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !374, file: !30, line: 467, baseType: !149, size: 64, offset: 640)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !374, file: !30, line: 468, baseType: !1843, size: 64, offset: 704)
!1843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1844, size: 64)
!1844 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1846)
!1846 = !{!1847, !1848, !1849, !1853, !1858, !1862}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1845, file: !30, line: 88, baseType: !149, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1845, file: !30, line: 89, baseType: !480, size: 64, offset: 64)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1845, file: !30, line: 90, baseType: !1850, size: 64, offset: 128)
!1850 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1851, size: 64)
!1851 = !DISubroutineType(types: !1852)
!1852 = !{!156, !1837, !426}
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1845, file: !30, line: 91, baseType: !1854, size: 64, offset: 192)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DISubroutineType(types: !1856)
!1856 = !{!431, !1837, !1857, !1661, !1667}
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !471, size: 64)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1845, file: !30, line: 93, baseType: !1859, size: 64, offset: 256)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DISubroutineType(types: !1861)
!1861 = !{null, !1837}
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1845, file: !30, line: 95, baseType: !1863, size: 64, offset: 320)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1866)
!1866 = !{!1867, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1878, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1865, file: !37, line: 279, baseType: !1868, size: 64)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DISubroutineType(types: !1870)
!1870 = !{!156, !1837}
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1865, file: !37, line: 280, baseType: !1859, size: 64, offset: 64)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1865, file: !37, line: 281, baseType: !1868, size: 64, offset: 128)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1865, file: !37, line: 282, baseType: !1868, size: 64, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1865, file: !37, line: 283, baseType: !1868, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1865, file: !37, line: 284, baseType: !1868, size: 64, offset: 320)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1865, file: !37, line: 285, baseType: !1868, size: 64, offset: 384)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1865, file: !37, line: 286, baseType: !1868, size: 64, offset: 448)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1865, file: !37, line: 287, baseType: !1868, size: 64, offset: 512)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1865, file: !37, line: 288, baseType: !1868, size: 64, offset: 576)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1865, file: !37, line: 289, baseType: !1868, size: 64, offset: 640)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1865, file: !37, line: 290, baseType: !1868, size: 64, offset: 704)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1865, file: !37, line: 291, baseType: !1868, size: 64, offset: 768)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1865, file: !37, line: 292, baseType: !1868, size: 64, offset: 832)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1865, file: !37, line: 293, baseType: !1868, size: 64, offset: 896)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1865, file: !37, line: 294, baseType: !1868, size: 64, offset: 960)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1865, file: !37, line: 295, baseType: !1868, size: 64, offset: 1024)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1865, file: !37, line: 296, baseType: !1868, size: 64, offset: 1088)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1865, file: !37, line: 297, baseType: !1868, size: 64, offset: 1152)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1865, file: !37, line: 298, baseType: !1868, size: 64, offset: 1216)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1865, file: !37, line: 299, baseType: !1868, size: 64, offset: 1280)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1865, file: !37, line: 300, baseType: !1868, size: 64, offset: 1344)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1865, file: !37, line: 301, baseType: !1868, size: 64, offset: 1408)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !374, file: !30, line: 470, baseType: !1894, size: 64, offset: 768)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1896, line: 82, size: 1408, elements: !1897)
!1896 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !{!1898, !1899, !1900, !1901, !1902, !1903, !1904, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1967, !1970, !1973}
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1895, file: !1896, line: 83, baseType: !149, size: 64)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1895, file: !1896, line: 84, baseType: !149, size: 64, offset: 64)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1895, file: !1896, line: 85, baseType: !1837, size: 64, offset: 128)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1895, file: !1896, line: 86, baseType: !480, size: 64, offset: 192)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1895, file: !1896, line: 87, baseType: !480, size: 64, offset: 256)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1895, file: !1896, line: 88, baseType: !480, size: 64, offset: 320)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1895, file: !1896, line: 90, baseType: !1905, size: 64, offset: 384)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{!156, !1837, !1908}
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1910)
!1910 = !{!1911, !1912, !1913, !1914, !1915, !1916, !1917, !1918, !1931, !1932, !1933, !1934, !1935, !1943, !1944, !1945, !1946, !1947, !1948}
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1909, file: !24, line: 96, baseType: !149, size: 64)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1909, file: !24, line: 97, baseType: !1894, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1909, file: !24, line: 99, baseType: !70, size: 64, offset: 128)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1909, file: !24, line: 100, baseType: !149, size: 64, offset: 192)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1909, file: !24, line: 102, baseType: !349, size: 8, offset: 256)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1909, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1909, file: !24, line: 105, baseType: !151, size: 64, offset: 320)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1909, file: !24, line: 106, baseType: !1919, size: 64, offset: 384)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1921)
!1921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !120, line: 210, size: 256, elements: !1922)
!1922 = !{!1923, !1927, !1929, !1930}
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1921, file: !120, line: 211, baseType: !1924, size: 72)
!1924 = !DICompositeType(tag: DW_TAG_array_type, baseType: !293, size: 72, elements: !1925)
!1925 = !{!1926}
!1926 = !DISubrange(count: 9)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1921, file: !120, line: 212, baseType: !1928, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !120, line: 14, baseType: !233)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1921, file: !120, line: 213, baseType: !66, size: 32, offset: 192)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1921, file: !120, line: 214, baseType: !66, size: 32, offset: 224)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1909, file: !24, line: 108, baseType: !1868, size: 64, offset: 448)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1909, file: !24, line: 109, baseType: !1859, size: 64, offset: 512)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1909, file: !24, line: 110, baseType: !1868, size: 64, offset: 576)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1909, file: !24, line: 111, baseType: !1859, size: 64, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1909, file: !24, line: 112, baseType: !1936, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1937, size: 64)
!1937 = !DISubroutineType(types: !1938)
!1938 = !{!156, !1837, !1939}
!1939 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1940)
!1940 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1941)
!1941 = !{!1942}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1940, file: !37, line: 51, baseType: !156, size: 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1909, file: !24, line: 113, baseType: !1868, size: 64, offset: 768)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1909, file: !24, line: 114, baseType: !480, size: 64, offset: 832)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1909, file: !24, line: 115, baseType: !480, size: 64, offset: 896)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1909, file: !24, line: 117, baseType: !1863, size: 64, offset: 960)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1909, file: !24, line: 118, baseType: !1859, size: 64, offset: 1024)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1909, file: !24, line: 120, baseType: !1949, size: 64, offset: 1088)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1895, file: !1896, line: 91, baseType: !1850, size: 64, offset: 448)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1895, file: !1896, line: 92, baseType: !1868, size: 64, offset: 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1895, file: !1896, line: 93, baseType: !1859, size: 64, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1895, file: !1896, line: 94, baseType: !1868, size: 64, offset: 640)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1895, file: !1896, line: 95, baseType: !1859, size: 64, offset: 704)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1895, file: !1896, line: 97, baseType: !1868, size: 64, offset: 768)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1895, file: !1896, line: 98, baseType: !1868, size: 64, offset: 832)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1895, file: !1896, line: 100, baseType: !1936, size: 64, offset: 896)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1895, file: !1896, line: 101, baseType: !1868, size: 64, offset: 960)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1895, file: !1896, line: 103, baseType: !1868, size: 64, offset: 1024)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1895, file: !1896, line: 105, baseType: !1868, size: 64, offset: 1088)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1895, file: !1896, line: 107, baseType: !1863, size: 64, offset: 1152)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1895, file: !1896, line: 109, baseType: !1964, size: 64, offset: 1216)
!1964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1965, size: 64)
!1965 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1966)
!1966 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1896, line: 109, flags: DIFlagFwdDecl)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1895, file: !1896, line: 111, baseType: !1968, size: 64, offset: 1280)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1896, line: 111, flags: DIFlagFwdDecl)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1895, file: !1896, line: 112, baseType: !1971, offset: 1344)
!1971 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1972, line: 187, elements: !404)
!1972 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1895, file: !1896, line: 114, baseType: !349, size: 8, offset: 1344)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !374, file: !30, line: 471, baseType: !1908, size: 64, offset: 832)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !374, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !374, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !374, file: !30, line: 480, baseType: !636, size: 192, offset: 1024)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !374, file: !30, line: 484, baseType: !1979, size: 576, offset: 1216)
!1979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1980)
!1980 = !{!1981, !1982, !1983, !1984, !1985, !1986}
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1979, file: !30, line: 362, baseType: !142, size: 128)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1979, file: !30, line: 363, baseType: !142, size: 128, offset: 128)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1979, file: !30, line: 364, baseType: !142, size: 128, offset: 256)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1979, file: !30, line: 365, baseType: !142, size: 128, offset: 384)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1979, file: !30, line: 366, baseType: !349, size: 8, offset: 512)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1979, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !374, file: !30, line: 485, baseType: !1988, size: 2304, offset: 1792)
!1988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1989)
!1989 = !{!1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2043, !2044, !2045, !2046, !2047, !2048, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2057, !2058, !2059, !2060, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074, !2075, !2085, !2089}
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1988, file: !37, line: 566, baseType: !1939, size: 32)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1988, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1988, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1988, file: !37, line: 569, baseType: !349, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1988, file: !37, line: 570, baseType: !349, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1988, file: !37, line: 571, baseType: !349, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1988, file: !37, line: 572, baseType: !349, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1988, file: !37, line: 573, baseType: !349, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1988, file: !37, line: 574, baseType: !349, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1988, file: !37, line: 575, baseType: !349, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1988, file: !37, line: 576, baseType: !349, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1988, file: !37, line: 577, baseType: !166, size: 32, offset: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1988, file: !37, line: 578, baseType: !390, offset: 96)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1988, file: !37, line: 580, baseType: !142, size: 128, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1988, file: !37, line: 581, baseType: !992, size: 192, offset: 256)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1988, file: !37, line: 582, baseType: !2006, size: 64, offset: 448)
!2006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2007, size: 64)
!2007 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2008, line: 43, size: 1472, elements: !2009)
!2008 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2009 = !{!2010, !2011, !2012, !2013, !2014, !2017, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2038, !2039, !2040, !2041, !2042}
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2007, file: !2008, line: 44, baseType: !149, size: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2007, file: !2008, line: 45, baseType: !156, size: 32, offset: 64)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2007, file: !2008, line: 46, baseType: !142, size: 128, offset: 128)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2007, file: !2008, line: 47, baseType: !390, offset: 256)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2007, file: !2008, line: 48, baseType: !2015, size: 64, offset: 256)
!2015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2016, size: 64)
!2016 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2007, file: !2008, line: 49, baseType: !2018, size: 320, offset: 320)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2019, line: 11, size: 320, elements: !2020)
!2019 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2020 = !{!2021, !2022, !2023, !2028}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2018, file: !2019, line: 16, baseType: !956, size: 128)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2018, file: !2019, line: 17, baseType: !233, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2018, file: !2019, line: 18, baseType: !2024, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2025, size: 64)
!2025 = !DISubroutineType(types: !2026)
!2026 = !{null, !2027}
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2018, file: !2019, line: 19, baseType: !166, size: 32, offset: 256)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2007, file: !2008, line: 50, baseType: !233, size: 64, offset: 640)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2007, file: !2008, line: 51, baseType: !765, size: 64, offset: 704)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2007, file: !2008, line: 52, baseType: !765, size: 64, offset: 768)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2007, file: !2008, line: 53, baseType: !765, size: 64, offset: 832)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2007, file: !2008, line: 54, baseType: !765, size: 64, offset: 896)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2007, file: !2008, line: 55, baseType: !765, size: 64, offset: 960)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2007, file: !2008, line: 56, baseType: !233, size: 64, offset: 1024)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2007, file: !2008, line: 57, baseType: !233, size: 64, offset: 1088)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2007, file: !2008, line: 58, baseType: !233, size: 64, offset: 1152)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2007, file: !2008, line: 59, baseType: !233, size: 64, offset: 1216)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2007, file: !2008, line: 60, baseType: !233, size: 64, offset: 1280)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2007, file: !2008, line: 61, baseType: !1837, size: 64, offset: 1344)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2007, file: !2008, line: 62, baseType: !349, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2007, file: !2008, line: 63, baseType: !349, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1988, file: !37, line: 583, baseType: !349, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1988, file: !37, line: 584, baseType: !349, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1988, file: !37, line: 585, baseType: !349, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1988, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1988, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1988, file: !37, line: 592, baseType: !757, size: 512, offset: 576)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1988, file: !37, line: 593, baseType: !170, size: 64, offset: 1088)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1988, file: !37, line: 594, baseType: !1577, size: 256, offset: 1152)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1988, file: !37, line: 595, baseType: !963, size: 128, offset: 1408)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1988, file: !37, line: 596, baseType: !2015, size: 64, offset: 1536)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1988, file: !37, line: 597, baseType: !559, size: 32, offset: 1600)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1988, file: !37, line: 598, baseType: !559, size: 32, offset: 1632)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1988, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1988, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1988, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1988, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1988, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1988, file: !37, line: 604, baseType: !349, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1988, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1988, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1988, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1988, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1988, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1988, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1988, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1988, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1988, file: !37, line: 613, baseType: !156, size: 32, offset: 1792)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1988, file: !37, line: 614, baseType: !156, size: 32, offset: 1824)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1988, file: !37, line: 615, baseType: !170, size: 64, offset: 1856)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1988, file: !37, line: 616, baseType: !170, size: 64, offset: 1920)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1988, file: !37, line: 617, baseType: !170, size: 64, offset: 1984)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1988, file: !37, line: 618, baseType: !170, size: 64, offset: 2048)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1988, file: !37, line: 620, baseType: !2076, size: 64, offset: 2112)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2078)
!2078 = !{!2079, !2080, !2081, !2082}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2077, file: !37, line: 537, baseType: !390)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2077, file: !37, line: 538, baseType: !7, size: 32)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2077, file: !37, line: 540, baseType: !142, size: 128, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2077, file: !37, line: 543, baseType: !2083, size: 64, offset: 192)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1988, file: !37, line: 621, baseType: !2086, size: 64, offset: 2176)
!2086 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2087, size: 64)
!2087 = !DISubroutineType(types: !2088)
!2088 = !{null, !1837, !916}
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1988, file: !37, line: 622, baseType: !2090, size: 64, offset: 2240)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !374, file: !30, line: 486, baseType: !2093, size: 64, offset: 4096)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2095)
!2095 = !{!2096, !2097, !2098, !2102, !2103, !2104}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2094, file: !37, line: 643, baseType: !1865, size: 1472)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2094, file: !37, line: 644, baseType: !1868, size: 64, offset: 1472)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2094, file: !37, line: 645, baseType: !2099, size: 64, offset: 1536)
!2099 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2100, size: 64)
!2100 = !DISubroutineType(types: !2101)
!2101 = !{null, !1837, !349}
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2094, file: !37, line: 646, baseType: !1868, size: 64, offset: 1600)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2094, file: !37, line: 647, baseType: !1859, size: 64, offset: 1664)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2094, file: !37, line: 648, baseType: !1859, size: 64, offset: 1728)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !374, file: !30, line: 493, baseType: !2106, size: 64, offset: 4160)
!2106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2107, size: 64)
!2107 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !374, file: !30, line: 499, baseType: !142, size: 128, offset: 4224)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !374, file: !30, line: 502, baseType: !2110, size: 64, offset: 4352)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2112)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !374, file: !30, line: 504, baseType: !2114, size: 64, offset: 4416)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !374, file: !30, line: 505, baseType: !170, size: 64, offset: 4480)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !374, file: !30, line: 510, baseType: !170, size: 64, offset: 4544)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !374, file: !30, line: 511, baseType: !2118, size: 64, offset: 4608)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2120)
!2120 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !374, file: !30, line: 513, baseType: !2122, size: 64, offset: 4672)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2124)
!2124 = !{!2125, !2126}
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2123, file: !30, line: 293, baseType: !7, size: 32)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2123, file: !30, line: 294, baseType: !233, size: 64, offset: 64)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !374, file: !30, line: 515, baseType: !142, size: 128, offset: 4736)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !374, file: !30, line: 526, baseType: !2129, offset: 4864)
!2129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2130, line: 5, elements: !404)
!2130 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !374, file: !30, line: 528, baseType: !2132, size: 64, offset: 4864)
!2132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2133, size: 64)
!2133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2134, line: 51, size: 1344, elements: !2135)
!2134 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2135 = !{!2136, !2137, !2139, !2140, !2230, !2239, !2240, !2241, !2242, !2243, !2244, !2245}
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2133, file: !2134, line: 52, baseType: !149, size: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2133, file: !2134, line: 53, baseType: !2138, size: 32, offset: 64)
!2138 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2134, line: 28, baseType: !166)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2133, file: !2134, line: 54, baseType: !149, size: 64, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2133, file: !2134, line: 55, baseType: !2141, size: 192, offset: 192)
!2141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2142, line: 17, size: 192, elements: !2143)
!2142 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2143 = !{!2144, !2146, !2229}
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2141, file: !2142, line: 18, baseType: !2145, size: 64)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2141, file: !2142, line: 19, baseType: !2147, size: 64, offset: 64)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2148, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2149)
!2149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2142, line: 110, size: 1152, elements: !2150)
!2150 = !{!2151, !2155, !2159, !2165, !2171, !2175, !2179, !2184, !2188, !2189, !2193, !2197, !2201, !2212, !2213, !2214, !2215, !2225}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2149, file: !2142, line: 111, baseType: !2152, size: 64)
!2152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2153, size: 64)
!2153 = !DISubroutineType(types: !2154)
!2154 = !{!2145, !2145}
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2149, file: !2142, line: 112, baseType: !2156, size: 64, offset: 64)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2145}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2149, file: !2142, line: 113, baseType: !2160, size: 64, offset: 128)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!349, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2141)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2149, file: !2142, line: 114, baseType: !2166, size: 64, offset: 192)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!132, !2163, !2169}
!2169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2170, size: 64)
!2170 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !374)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2149, file: !2142, line: 116, baseType: !2172, size: 64, offset: 256)
!2172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2173 = !DISubroutineType(types: !2174)
!2174 = !{!349, !2163, !149}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2149, file: !2142, line: 118, baseType: !2176, size: 64, offset: 320)
!2176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2177, size: 64)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!156, !2163, !149, !7, !63, !252}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2149, file: !2142, line: 123, baseType: !2180, size: 64, offset: 384)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{!156, !2163, !149, !2183, !252}
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2149, file: !2142, line: 126, baseType: !2185, size: 64, offset: 448)
!2185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2186, size: 64)
!2186 = !DISubroutineType(types: !2187)
!2187 = !{!149, !2163}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2149, file: !2142, line: 127, baseType: !2185, size: 64, offset: 512)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2149, file: !2142, line: 128, baseType: !2190, size: 64, offset: 576)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DISubroutineType(types: !2192)
!2192 = !{!2145, !2163}
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2149, file: !2142, line: 130, baseType: !2194, size: 64, offset: 640)
!2194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2195, size: 64)
!2195 = !DISubroutineType(types: !2196)
!2196 = !{!2145, !2163, !2145}
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2149, file: !2142, line: 133, baseType: !2198, size: 64, offset: 704)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!2145, !2163, !149}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2149, file: !2142, line: 135, baseType: !2202, size: 64, offset: 768)
!2202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2203, size: 64)
!2203 = !DISubroutineType(types: !2204)
!2204 = !{!156, !2163, !149, !149, !7, !7, !2205}
!2205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2206, size: 64)
!2206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2142, line: 43, size: 640, elements: !2207)
!2207 = !{!2208, !2209, !2210}
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2206, file: !2142, line: 44, baseType: !2145, size: 64)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2206, file: !2142, line: 45, baseType: !7, size: 32, offset: 64)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2206, file: !2142, line: 46, baseType: !2211, size: 512, offset: 128)
!2211 = !DICompositeType(tag: DW_TAG_array_type, baseType: !170, size: 512, elements: !795)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2149, file: !2142, line: 140, baseType: !2194, size: 64, offset: 832)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2149, file: !2142, line: 143, baseType: !2190, size: 64, offset: 896)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2149, file: !2142, line: 145, baseType: !2152, size: 64, offset: 960)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2149, file: !2142, line: 146, baseType: !2216, size: 64, offset: 1024)
!2216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2217, size: 64)
!2217 = !DISubroutineType(types: !2218)
!2218 = !{!156, !2163, !2219}
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2142, line: 29, size: 128, elements: !2221)
!2221 = !{!2222, !2223, !2224}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2220, file: !2142, line: 30, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2220, file: !2142, line: 31, baseType: !7, size: 32, offset: 32)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2220, file: !2142, line: 32, baseType: !2163, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2149, file: !2142, line: 148, baseType: !2226, size: 64, offset: 1088)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!156, !2163, !1837}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2141, file: !2142, line: 20, baseType: !1837, size: 64, offset: 128)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2133, file: !2134, line: 57, baseType: !2231, size: 64, offset: 384)
!2231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2134, line: 31, size: 704, elements: !2233)
!2233 = !{!2234, !2235, !2236, !2237, !2238}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2232, file: !2134, line: 32, baseType: !431, size: 64)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2232, file: !2134, line: 33, baseType: !156, size: 32, offset: 64)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2232, file: !2134, line: 34, baseType: !63, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2232, file: !2134, line: 35, baseType: !2231, size: 64, offset: 192)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2232, file: !2134, line: 43, baseType: !495, size: 448, offset: 256)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2133, file: !2134, line: 58, baseType: !2231, size: 64, offset: 448)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2133, file: !2134, line: 59, baseType: !2132, size: 64, offset: 512)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2133, file: !2134, line: 60, baseType: !2132, size: 64, offset: 576)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2133, file: !2134, line: 61, baseType: !2132, size: 64, offset: 640)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2133, file: !2134, line: 63, baseType: !377, size: 512, offset: 704)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2133, file: !2134, line: 65, baseType: !233, size: 64, offset: 1216)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2133, file: !2134, line: 66, baseType: !63, size: 64, offset: 1280)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !374, file: !30, line: 529, baseType: !2145, size: 64, offset: 4928)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !374, file: !30, line: 534, baseType: !2248, size: 32, offset: 4992)
!2248 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !65, line: 16, baseType: !2249)
!2249 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !65, line: 13, baseType: !166)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !374, file: !30, line: 535, baseType: !166, size: 32, offset: 5024)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !374, file: !30, line: 537, baseType: !390, offset: 5056)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !374, file: !30, line: 538, baseType: !142, size: 128, offset: 5056)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !374, file: !30, line: 540, baseType: !2254, size: 64, offset: 5184)
!2254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2256, line: 54, size: 960, elements: !2257)
!2256 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2257 = !{!2258, !2259, !2260, !2261, !2262, !2263, !2264, !2268, !2272, !2273, !2274, !2275, !2279, !2283, !2284}
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2255, file: !2256, line: 55, baseType: !149, size: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2255, file: !2256, line: 56, baseType: !70, size: 64, offset: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2255, file: !2256, line: 58, baseType: !480, size: 64, offset: 128)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2255, file: !2256, line: 59, baseType: !480, size: 64, offset: 192)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2255, file: !2256, line: 60, baseType: !383, size: 64, offset: 256)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2255, file: !2256, line: 62, baseType: !1850, size: 64, offset: 320)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2255, file: !2256, line: 63, baseType: !2265, size: 64, offset: 384)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!431, !1837, !1857}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2255, file: !2256, line: 65, baseType: !2269, size: 64, offset: 448)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2270, size: 64)
!2270 = !DISubroutineType(types: !2271)
!2271 = !{null, !2254}
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2255, file: !2256, line: 66, baseType: !1859, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2255, file: !2256, line: 68, baseType: !1868, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2255, file: !2256, line: 70, baseType: !1626, size: 64, offset: 640)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2255, file: !2256, line: 71, baseType: !2276, size: 64, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2277, size: 64)
!2277 = !DISubroutineType(types: !2278)
!2278 = !{!132, !1837}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2255, file: !2256, line: 73, baseType: !2280, size: 64, offset: 768)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2281, size: 64)
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !1837, !1661, !1667}
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2255, file: !2256, line: 75, baseType: !1863, size: 64, offset: 832)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2255, file: !2256, line: 77, baseType: !1968, size: 64, offset: 896)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !374, file: !30, line: 541, baseType: !480, size: 64, offset: 5248)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !374, file: !30, line: 543, baseType: !1859, size: 64, offset: 5312)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !374, file: !30, line: 544, baseType: !2288, size: 64, offset: 5376)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !374, file: !30, line: 545, baseType: !2291, size: 64, offset: 5440)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !374, file: !30, line: 547, baseType: !349, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !374, file: !30, line: 548, baseType: !349, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !374, file: !30, line: 549, baseType: !349, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !374, file: !30, line: 550, baseType: !349, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !158, file: !159, line: 376, baseType: !156, size: 32, offset: 8832)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !158, file: !159, line: 377, baseType: !2299, size: 192, offset: 8896)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !159, line: 191, size: 192, elements: !2300)
!2300 = !{!2301, !2304, !2305}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2299, file: !159, line: 192, baseType: !2302, size: 64)
!2302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2303, size: 64)
!2303 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1677, line: 21, flags: DIFlagFwdDecl)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2299, file: !159, line: 194, baseType: !149, size: 64, offset: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2299, file: !159, line: 195, baseType: !149, size: 64, offset: 128)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !158, file: !159, line: 378, baseType: !2307, size: 64, offset: 9088)
!2307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2308, size: 64)
!2308 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2309, line: 16, flags: DIFlagFwdDecl)
!2309 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !158, file: !159, line: 386, baseType: !157, size: 64, offset: 9152)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !158, file: !159, line: 389, baseType: !142, size: 128, offset: 9216)
!2312 = !DIDerivedType(tag: DW_TAG_member, scope: !158, file: !159, line: 391, baseType: !2313, size: 320, offset: 9344)
!2313 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !158, file: !159, line: 391, size: 320, elements: !2314)
!2314 = !{!2315, !2322}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2313, file: !159, line: 392, baseType: !2316, size: 320)
!2316 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !159, line: 211, size: 320, elements: !2317)
!2317 = !{!2318, !2319, !2320, !2321}
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2316, file: !159, line: 212, baseType: !142, size: 128)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2316, file: !159, line: 213, baseType: !170, size: 64, offset: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2316, file: !159, line: 214, baseType: !170, size: 64, offset: 192)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2316, file: !159, line: 215, baseType: !166, size: 32, offset: 256)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2313, file: !159, line: 393, baseType: !2323, size: 256)
!2323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !159, line: 230, size: 256, elements: !2324)
!2324 = !{!2325, !2326}
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2323, file: !159, line: 231, baseType: !636, size: 192)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2323, file: !159, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2327 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2328, size: 64)
!2328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2329, size: 64)
!2329 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2330)
!2330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_partition", file: !139, line: 46, size: 384, elements: !2331)
!2331 = !{!2332, !2333, !2336, !2337, !2338, !2339, !2340}
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2330, file: !139, line: 47, baseType: !149, size: 64)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2330, file: !139, line: 48, baseType: !2334, size: 64, offset: 64)
!2334 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2335, size: 64)
!2335 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !149)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2330, file: !139, line: 49, baseType: !169, size: 64, offset: 128)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2330, file: !139, line: 50, baseType: !169, size: 64, offset: 192)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "mask_flags", scope: !2330, file: !139, line: 51, baseType: !165, size: 32, offset: 256)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "add_flags", scope: !2330, file: !139, line: 52, baseType: !165, size: 32, offset: 288)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2330, file: !139, line: 53, baseType: !2132, size: 64, offset: 320)
!2341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2342, size: 64)
!2342 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part_parser_data", file: !139, line: 69, size: 64, elements: !2343)
!2343 = !{!2344}
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2342, file: !139, line: 70, baseType: !233, size: 64)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !138, file: !139, line: 85, baseType: !2346, size: 64, offset: 384)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{null, !2328, !156}
!2349 = !{i32 7, !"Dwarf Version", i32 4}
!2350 = !{i32 2, !"Debug Info Version", i32 3}
!2351 = !{i32 1, !"wchar_size", i32 2}
!2352 = !{i32 1, !"Code Model", i32 2}
!2353 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2354 = distinct !DISubprogram(name: "ofpart_parser_exit", scope: !3, file: !3, line: 221, type: !81, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2355 = !DILocation(line: 223, column: 2, scope: !2354)
!2356 = !DILocation(line: 224, column: 2, scope: !2354)
!2357 = !DILocation(line: 225, column: 1, scope: !2354)
!2358 = distinct !DISubprogram(name: "ofpart_parser_init", scope: !3, file: !3, line: 214, type: !2359, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!156}
!2361 = !DILocation(line: 216, column: 2, scope: !2358)
!2362 = !DILocation(line: 217, column: 2, scope: !2358)
!2363 = !DILocation(line: 218, column: 2, scope: !2358)
!2364 = distinct !DISubprogram(name: "parse_fixed_partitions", scope: !3, file: !3, line: 24, type: !154, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2365 = !DILocalVariable(name: "master", arg: 1, scope: !2364, file: !3, line: 24, type: !157)
!2366 = !DILocation(line: 24, column: 52, scope: !2364)
!2367 = !DILocalVariable(name: "pparts", arg: 2, scope: !2364, file: !3, line: 25, type: !2327)
!2368 = !DILocation(line: 25, column: 36, scope: !2364)
!2369 = !DILocalVariable(name: "data", arg: 3, scope: !2364, file: !3, line: 26, type: !2341)
!2370 = !DILocation(line: 26, column: 36, scope: !2364)
!2371 = !DILocalVariable(name: "parts", scope: !2364, file: !3, line: 28, type: !2372)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2373 = !DILocation(line: 28, column: 24, scope: !2364)
!2374 = !DILocalVariable(name: "mtd_node", scope: !2364, file: !3, line: 29, type: !2132)
!2375 = !DILocation(line: 29, column: 22, scope: !2364)
!2376 = !DILocalVariable(name: "ofpart_node", scope: !2364, file: !3, line: 30, type: !2132)
!2377 = !DILocation(line: 30, column: 22, scope: !2364)
!2378 = !DILocalVariable(name: "partname", scope: !2364, file: !3, line: 31, type: !149)
!2379 = !DILocation(line: 31, column: 14, scope: !2364)
!2380 = !DILocalVariable(name: "pp", scope: !2364, file: !3, line: 32, type: !2132)
!2381 = !DILocation(line: 32, column: 22, scope: !2364)
!2382 = !DILocalVariable(name: "nr_parts", scope: !2364, file: !3, line: 33, type: !156)
!2383 = !DILocation(line: 33, column: 6, scope: !2364)
!2384 = !DILocalVariable(name: "i", scope: !2364, file: !3, line: 33, type: !156)
!2385 = !DILocation(line: 33, column: 16, scope: !2364)
!2386 = !DILocalVariable(name: "ret", scope: !2364, file: !3, line: 33, type: !156)
!2387 = !DILocation(line: 33, column: 19, scope: !2364)
!2388 = !DILocalVariable(name: "dedicated", scope: !2364, file: !3, line: 34, type: !349)
!2389 = !DILocation(line: 34, column: 7, scope: !2364)
!2390 = !DILocation(line: 38, column: 29, scope: !2364)
!2391 = !DILocation(line: 38, column: 13, scope: !2364)
!2392 = !DILocation(line: 38, column: 11, scope: !2364)
!2393 = !DILocation(line: 39, column: 7, scope: !2394)
!2394 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 39, column: 6)
!2395 = !DILocation(line: 39, column: 6, scope: !2364)
!2396 = !DILocation(line: 40, column: 3, scope: !2394)
!2397 = !DILocation(line: 42, column: 37, scope: !2364)
!2398 = !DILocation(line: 42, column: 16, scope: !2364)
!2399 = !DILocation(line: 42, column: 14, scope: !2364)
!2400 = !DILocation(line: 43, column: 7, scope: !2401)
!2401 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 43, column: 6)
!2402 = !DILocation(line: 43, column: 6, scope: !2364)
!2403 = !DILocation(line: 49, column: 3, scope: !2404)
!2404 = distinct !DILexicalBlock(scope: !2405, file: !3, line: 49, column: 3)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !3, line: 49, column: 3)
!2406 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 43, column: 20)
!2407 = !DILocation(line: 49, column: 3, scope: !2405)
!2408 = !DILocation(line: 51, column: 17, scope: !2406)
!2409 = !DILocation(line: 51, column: 15, scope: !2406)
!2410 = !DILocation(line: 52, column: 13, scope: !2406)
!2411 = !DILocation(line: 53, column: 2, scope: !2406)
!2412 = !DILocation(line: 53, column: 38, scope: !2413)
!2413 = distinct !DILexicalBlock(scope: !2401, file: !3, line: 53, column: 13)
!2414 = !DILocation(line: 53, column: 14, scope: !2413)
!2415 = !DILocation(line: 53, column: 13, scope: !2401)
!2416 = !DILocation(line: 55, column: 3, scope: !2417)
!2417 = distinct !DILexicalBlock(scope: !2413, file: !3, line: 53, column: 72)
!2418 = !DILocation(line: 59, column: 11, scope: !2364)
!2419 = !DILocation(line: 60, column: 2, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 60, column: 2)
!2421 = !DILocation(line: 60, column: 2, scope: !2422)
!2422 = distinct !DILexicalBlock(scope: !2420, file: !3, line: 60, column: 2)
!2423 = !DILocation(line: 61, column: 8, scope: !2424)
!2424 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 61, column: 7)
!2425 = distinct !DILexicalBlock(scope: !2422, file: !3, line: 60, column: 43)
!2426 = !DILocation(line: 61, column: 18, scope: !2424)
!2427 = !DILocation(line: 61, column: 41, scope: !2424)
!2428 = !DILocation(line: 61, column: 21, scope: !2424)
!2429 = !DILocation(line: 61, column: 7, scope: !2425)
!2430 = !DILocation(line: 62, column: 4, scope: !2424)
!2431 = !DILocation(line: 64, column: 11, scope: !2425)
!2432 = !DILocation(line: 65, column: 2, scope: !2425)
!2433 = distinct !{!2433, !2419, !2434}
!2434 = !DILocation(line: 65, column: 2, scope: !2420)
!2435 = !DILocation(line: 67, column: 6, scope: !2436)
!2436 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 67, column: 6)
!2437 = !DILocation(line: 67, column: 15, scope: !2436)
!2438 = !DILocation(line: 67, column: 6, scope: !2364)
!2439 = !DILocation(line: 68, column: 3, scope: !2436)
!2440 = !DILocation(line: 70, column: 18, scope: !2364)
!2441 = !DILocation(line: 70, column: 10, scope: !2364)
!2442 = !DILocation(line: 70, column: 8, scope: !2364)
!2443 = !DILocation(line: 71, column: 7, scope: !2444)
!2444 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 71, column: 6)
!2445 = !DILocation(line: 71, column: 6, scope: !2364)
!2446 = !DILocation(line: 72, column: 3, scope: !2444)
!2447 = !DILocation(line: 74, column: 4, scope: !2364)
!2448 = !DILocation(line: 75, column: 2, scope: !2449)
!2449 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 75, column: 2)
!2450 = !DILocation(line: 75, column: 2, scope: !2451)
!2451 = distinct !DILexicalBlock(scope: !2449, file: !3, line: 75, column: 2)
!2452 = !DILocalVariable(name: "reg", scope: !2453, file: !3, line: 76, type: !2454)
!2453 = distinct !DILexicalBlock(scope: !2451, file: !3, line: 75, column: 43)
!2454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2455, size: 64)
!2455 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !68)
!2456 = !DILocation(line: 76, column: 17, scope: !2453)
!2457 = !DILocalVariable(name: "len", scope: !2453, file: !3, line: 77, type: !156)
!2458 = !DILocation(line: 77, column: 7, scope: !2453)
!2459 = !DILocalVariable(name: "a_cells", scope: !2453, file: !3, line: 78, type: !156)
!2460 = !DILocation(line: 78, column: 7, scope: !2453)
!2461 = !DILocalVariable(name: "s_cells", scope: !2453, file: !3, line: 78, type: !156)
!2462 = !DILocation(line: 78, column: 16, scope: !2453)
!2463 = !DILocation(line: 80, column: 8, scope: !2464)
!2464 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 80, column: 7)
!2465 = !DILocation(line: 80, column: 18, scope: !2464)
!2466 = !DILocation(line: 80, column: 41, scope: !2464)
!2467 = !DILocation(line: 80, column: 21, scope: !2464)
!2468 = !DILocation(line: 80, column: 7, scope: !2453)
!2469 = !DILocation(line: 81, column: 4, scope: !2464)
!2470 = !DILocation(line: 83, column: 25, scope: !2453)
!2471 = !DILocation(line: 83, column: 9, scope: !2453)
!2472 = !DILocation(line: 83, column: 7, scope: !2453)
!2473 = !DILocation(line: 84, column: 8, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 84, column: 7)
!2475 = !DILocation(line: 84, column: 7, scope: !2453)
!2476 = !DILocation(line: 85, column: 8, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2478, file: !3, line: 85, column: 8)
!2478 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 84, column: 13)
!2479 = !DILocation(line: 85, column: 8, scope: !2478)
!2480 = !DILocation(line: 86, column: 5, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 86, column: 5)
!2482 = distinct !DILexicalBlock(scope: !2483, file: !3, line: 86, column: 5)
!2483 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 85, column: 19)
!2484 = !DILocation(line: 86, column: 5, scope: !2482)
!2485 = !DILocation(line: 89, column: 5, scope: !2483)
!2486 = !DILocation(line: 91, column: 13, scope: !2487)
!2487 = distinct !DILexicalBlock(scope: !2477, file: !3, line: 90, column: 11)
!2488 = !DILocation(line: 92, column: 5, scope: !2487)
!2489 = !DILocation(line: 96, column: 29, scope: !2453)
!2490 = !DILocation(line: 96, column: 13, scope: !2453)
!2491 = !DILocation(line: 96, column: 11, scope: !2453)
!2492 = !DILocation(line: 97, column: 29, scope: !2453)
!2493 = !DILocation(line: 97, column: 13, scope: !2453)
!2494 = !DILocation(line: 97, column: 11, scope: !2453)
!2495 = !DILocation(line: 98, column: 7, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 98, column: 7)
!2497 = !DILocation(line: 98, column: 11, scope: !2496)
!2498 = !DILocation(line: 98, column: 18, scope: !2496)
!2499 = !DILocation(line: 98, column: 28, scope: !2496)
!2500 = !DILocation(line: 98, column: 26, scope: !2496)
!2501 = !DILocation(line: 98, column: 15, scope: !2496)
!2502 = !DILocation(line: 98, column: 7, scope: !2453)
!2503 = !DILocation(line: 99, column: 4, scope: !2504)
!2504 = distinct !DILexicalBlock(scope: !2505, file: !3, line: 99, column: 4)
!2505 = distinct !DILexicalBlock(scope: !2506, file: !3, line: 99, column: 4)
!2506 = distinct !DILexicalBlock(scope: !2496, file: !3, line: 98, column: 37)
!2507 = !DILocation(line: 99, column: 4, scope: !2505)
!2508 = !DILocation(line: 102, column: 4, scope: !2506)
!2509 = !DILocation(line: 105, column: 36, scope: !2453)
!2510 = !DILocation(line: 105, column: 41, scope: !2453)
!2511 = !DILocation(line: 105, column: 21, scope: !2453)
!2512 = !DILocation(line: 105, column: 3, scope: !2453)
!2513 = !DILocation(line: 105, column: 9, scope: !2453)
!2514 = !DILocation(line: 105, column: 12, scope: !2453)
!2515 = !DILocation(line: 105, column: 19, scope: !2453)
!2516 = !DILocation(line: 106, column: 34, scope: !2453)
!2517 = !DILocation(line: 106, column: 40, scope: !2453)
!2518 = !DILocation(line: 106, column: 38, scope: !2453)
!2519 = !DILocation(line: 106, column: 49, scope: !2453)
!2520 = !DILocation(line: 106, column: 19, scope: !2453)
!2521 = !DILocation(line: 106, column: 3, scope: !2453)
!2522 = !DILocation(line: 106, column: 9, scope: !2453)
!2523 = !DILocation(line: 106, column: 12, scope: !2453)
!2524 = !DILocation(line: 106, column: 17, scope: !2453)
!2525 = !DILocation(line: 107, column: 22, scope: !2453)
!2526 = !DILocation(line: 107, column: 3, scope: !2453)
!2527 = !DILocation(line: 107, column: 9, scope: !2453)
!2528 = !DILocation(line: 107, column: 12, scope: !2453)
!2529 = !DILocation(line: 107, column: 20, scope: !2453)
!2530 = !DILocation(line: 109, column: 30, scope: !2453)
!2531 = !DILocation(line: 109, column: 14, scope: !2453)
!2532 = !DILocation(line: 109, column: 12, scope: !2453)
!2533 = !DILocation(line: 110, column: 8, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 110, column: 7)
!2535 = !DILocation(line: 110, column: 7, scope: !2453)
!2536 = !DILocation(line: 111, column: 31, scope: !2534)
!2537 = !DILocation(line: 111, column: 15, scope: !2534)
!2538 = !DILocation(line: 111, column: 13, scope: !2534)
!2539 = !DILocation(line: 111, column: 4, scope: !2534)
!2540 = !DILocation(line: 112, column: 19, scope: !2453)
!2541 = !DILocation(line: 112, column: 3, scope: !2453)
!2542 = !DILocation(line: 112, column: 9, scope: !2453)
!2543 = !DILocation(line: 112, column: 12, scope: !2453)
!2544 = !DILocation(line: 112, column: 17, scope: !2453)
!2545 = !DILocation(line: 114, column: 23, scope: !2546)
!2546 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 114, column: 7)
!2547 = !DILocation(line: 114, column: 7, scope: !2546)
!2548 = !DILocation(line: 114, column: 7, scope: !2453)
!2549 = !DILocation(line: 115, column: 4, scope: !2546)
!2550 = !DILocation(line: 115, column: 10, scope: !2546)
!2551 = !DILocation(line: 115, column: 13, scope: !2546)
!2552 = !DILocation(line: 115, column: 24, scope: !2546)
!2553 = !DILocation(line: 117, column: 23, scope: !2554)
!2554 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 117, column: 7)
!2555 = !DILocation(line: 117, column: 7, scope: !2554)
!2556 = !DILocation(line: 117, column: 7, scope: !2453)
!2557 = !DILocation(line: 118, column: 4, scope: !2554)
!2558 = !DILocation(line: 118, column: 10, scope: !2554)
!2559 = !DILocation(line: 118, column: 13, scope: !2554)
!2560 = !DILocation(line: 118, column: 24, scope: !2554)
!2561 = !DILocation(line: 120, column: 29, scope: !2562)
!2562 = distinct !DILexicalBlock(scope: !2453, file: !3, line: 120, column: 7)
!2563 = !DILocation(line: 120, column: 7, scope: !2562)
!2564 = !DILocation(line: 120, column: 7, scope: !2453)
!2565 = !DILocation(line: 121, column: 4, scope: !2562)
!2566 = !DILocation(line: 121, column: 10, scope: !2562)
!2567 = !DILocation(line: 121, column: 13, scope: !2562)
!2568 = !DILocation(line: 121, column: 23, scope: !2562)
!2569 = !DILocation(line: 123, column: 4, scope: !2453)
!2570 = !DILocation(line: 124, column: 2, scope: !2453)
!2571 = distinct !{!2571, !2448, !2572}
!2572 = !DILocation(line: 124, column: 2, scope: !2449)
!2573 = !DILocation(line: 126, column: 7, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2364, file: !3, line: 126, column: 6)
!2575 = !DILocation(line: 126, column: 6, scope: !2364)
!2576 = !DILocation(line: 127, column: 3, scope: !2574)
!2577 = !DILocation(line: 129, column: 12, scope: !2364)
!2578 = !DILocation(line: 129, column: 3, scope: !2364)
!2579 = !DILocation(line: 129, column: 10, scope: !2364)
!2580 = !DILocation(line: 130, column: 9, scope: !2364)
!2581 = !DILocation(line: 130, column: 2, scope: !2364)
!2582 = !DILabel(scope: !2364, name: "ofpart_fail", file: !3, line: 132)
!2583 = !DILocation(line: 132, column: 1, scope: !2364)
!2584 = !DILocation(line: 133, column: 2, scope: !2364)
!2585 = !DILocation(line: 135, column: 6, scope: !2364)
!2586 = !DILocation(line: 135, column: 2, scope: !2364)
!2587 = !DILabel(scope: !2364, name: "ofpart_none", file: !3, line: 136)
!2588 = !DILocation(line: 136, column: 1, scope: !2364)
!2589 = !DILocation(line: 137, column: 14, scope: !2364)
!2590 = !DILocation(line: 137, column: 2, scope: !2364)
!2591 = !DILocation(line: 138, column: 8, scope: !2364)
!2592 = !DILocation(line: 138, column: 2, scope: !2364)
!2593 = !DILocation(line: 139, column: 9, scope: !2364)
!2594 = !DILocation(line: 139, column: 2, scope: !2364)
!2595 = !DILocation(line: 140, column: 1, scope: !2364)
!2596 = distinct !DISubprogram(name: "mtd_get_of_node", scope: !159, file: !159, line: 463, type: !2597, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2597 = !DISubroutineType(types: !2598)
!2598 = !{!2132, !157}
!2599 = !DILocalVariable(name: "mtd", arg: 1, scope: !2596, file: !159, line: 463, type: !157)
!2600 = !DILocation(line: 463, column: 68, scope: !2596)
!2601 = !DILocation(line: 465, column: 22, scope: !2596)
!2602 = !DILocation(line: 465, column: 27, scope: !2596)
!2603 = !DILocation(line: 465, column: 9, scope: !2596)
!2604 = !DILocation(line: 465, column: 2, scope: !2596)
!2605 = distinct !DISubprogram(name: "node_has_compatible", scope: !3, file: !3, line: 19, type: !2606, scopeLine: 20, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2606 = !DISubroutineType(types: !2607)
!2607 = !{!349, !2132}
!2608 = !DILocalVariable(name: "pp", arg: 1, scope: !2605, file: !3, line: 19, type: !2132)
!2609 = !DILocation(line: 19, column: 53, scope: !2605)
!2610 = !DILocation(line: 21, column: 25, scope: !2605)
!2611 = !DILocation(line: 21, column: 9, scope: !2605)
!2612 = !DILocation(line: 21, column: 2, scope: !2605)
!2613 = distinct !DISubprogram(name: "kcalloc", scope: !56, file: !56, line: 601, type: !2614, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2614 = !DISubroutineType(types: !2615)
!2615 = !{!63, !252, !252, !64}
!2616 = !DILocalVariable(name: "n", arg: 1, scope: !2613, file: !56, line: 601, type: !252)
!2617 = !DILocation(line: 601, column: 36, scope: !2613)
!2618 = !DILocalVariable(name: "size", arg: 2, scope: !2613, file: !56, line: 601, type: !252)
!2619 = !DILocation(line: 601, column: 46, scope: !2613)
!2620 = !DILocalVariable(name: "flags", arg: 3, scope: !2613, file: !56, line: 601, type: !64)
!2621 = !DILocation(line: 601, column: 58, scope: !2613)
!2622 = !DILocation(line: 603, column: 23, scope: !2613)
!2623 = !DILocation(line: 603, column: 26, scope: !2613)
!2624 = !DILocation(line: 603, column: 32, scope: !2613)
!2625 = !DILocation(line: 603, column: 38, scope: !2613)
!2626 = !DILocation(line: 603, column: 9, scope: !2613)
!2627 = !DILocation(line: 603, column: 2, scope: !2613)
!2628 = distinct !DISubprogram(name: "of_read_number", scope: !2134, file: !2134, line: 234, type: !2629, scopeLine: 235, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2629 = !DISubroutineType(types: !2630)
!2630 = !{!170, !2454, !156}
!2631 = !DILocalVariable(name: "cell", arg: 1, scope: !2628, file: !2134, line: 234, type: !2454)
!2632 = !DILocation(line: 234, column: 48, scope: !2628)
!2633 = !DILocalVariable(name: "size", arg: 2, scope: !2628, file: !2134, line: 234, type: !156)
!2634 = !DILocation(line: 234, column: 58, scope: !2628)
!2635 = !DILocalVariable(name: "r", scope: !2628, file: !2134, line: 236, type: !170)
!2636 = !DILocation(line: 236, column: 6, scope: !2628)
!2637 = !DILocation(line: 237, column: 2, scope: !2628)
!2638 = !DILocation(line: 237, column: 13, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2640, file: !2134, line: 237, column: 2)
!2640 = distinct !DILexicalBlock(scope: !2628, file: !2134, line: 237, column: 2)
!2641 = !DILocation(line: 237, column: 2, scope: !2640)
!2642 = !DILocation(line: 238, column: 8, scope: !2639)
!2643 = !DILocation(line: 238, column: 10, scope: !2639)
!2644 = !DILocation(line: 238, column: 19, scope: !2639)
!2645 = !DILocation(line: 238, column: 17, scope: !2639)
!2646 = !DILocation(line: 238, column: 5, scope: !2639)
!2647 = !DILocation(line: 238, column: 3, scope: !2639)
!2648 = !DILocation(line: 237, column: 21, scope: !2639)
!2649 = !DILocation(line: 237, column: 2, scope: !2639)
!2650 = distinct !{!2650, !2641, !2651}
!2651 = !DILocation(line: 238, column: 19, scope: !2640)
!2652 = !DILocation(line: 239, column: 9, scope: !2628)
!2653 = !DILocation(line: 239, column: 2, scope: !2628)
!2654 = distinct !DISubprogram(name: "of_property_read_bool", scope: !2134, file: !2134, line: 1192, type: !2655, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2655 = !DISubroutineType(types: !2656)
!2656 = !{!349, !2657, !149}
!2657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2658, size: 64)
!2658 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2133)
!2659 = !DILocalVariable(name: "np", arg: 1, scope: !2654, file: !2134, line: 1192, type: !2657)
!2660 = !DILocation(line: 1192, column: 68, scope: !2654)
!2661 = !DILocalVariable(name: "propname", arg: 2, scope: !2654, file: !2134, line: 1193, type: !149)
!2662 = !DILocation(line: 1193, column: 19, scope: !2654)
!2663 = !DILocalVariable(name: "prop", scope: !2654, file: !2134, line: 1195, type: !2231)
!2664 = !DILocation(line: 1195, column: 19, scope: !2654)
!2665 = !DILocation(line: 1195, column: 43, scope: !2654)
!2666 = !DILocation(line: 1195, column: 47, scope: !2654)
!2667 = !DILocation(line: 1195, column: 26, scope: !2654)
!2668 = !DILocation(line: 1197, column: 9, scope: !2654)
!2669 = !DILocation(line: 1197, column: 2, scope: !2654)
!2670 = distinct !DISubprogram(name: "of_node_put", scope: !2134, file: !2134, line: 129, type: !2671, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2671 = !DISubroutineType(types: !2672)
!2672 = !{null, !2132}
!2673 = !DILocalVariable(name: "node", arg: 1, scope: !2670, file: !2134, line: 129, type: !2132)
!2674 = !DILocation(line: 129, column: 52, scope: !2670)
!2675 = !DILocation(line: 129, column: 60, scope: !2670)
!2676 = distinct !DISubprogram(name: "dev_of_node", scope: !30, file: !30, line: 754, type: !2677, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2677 = !DISubroutineType(types: !2678)
!2678 = !{!2132, !1837}
!2679 = !DILocalVariable(name: "dev", arg: 1, scope: !2676, file: !30, line: 754, type: !1837)
!2680 = !DILocation(line: 754, column: 62, scope: !2676)
!2681 = !DILocation(line: 756, column: 33, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2676, file: !30, line: 756, column: 6)
!2683 = !DILocation(line: 756, column: 6, scope: !2676)
!2684 = !DILocation(line: 757, column: 3, scope: !2682)
!2685 = !DILocation(line: 758, column: 9, scope: !2676)
!2686 = !DILocation(line: 758, column: 14, scope: !2676)
!2687 = !DILocation(line: 758, column: 2, scope: !2676)
!2688 = !DILocation(line: 759, column: 1, scope: !2676)
!2689 = distinct !DISubprogram(name: "kmalloc_array", scope: !56, file: !56, line: 584, type: !2614, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2690 = !DILocalVariable(name: "s", arg: 1, scope: !2691, file: !56, line: 445, type: !1304)
!2691 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !2692, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!63, !1304, !64, !252}
!2694 = !DILocation(line: 445, column: 72, scope: !2691, inlinedAt: !2695)
!2695 = distinct !DILocation(line: 552, column: 10, scope: !2696, inlinedAt: !2701)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !56, line: 540, column: 34)
!2697 = distinct !DILexicalBlock(scope: !2698, file: !56, line: 540, column: 6)
!2698 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !2699, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2699 = !DISubroutineType(types: !2700)
!2700 = !{!63, !252, !64}
!2701 = distinct !DILocation(line: 591, column: 10, scope: !2702)
!2702 = distinct !DILexicalBlock(scope: !2689, file: !56, line: 590, column: 6)
!2703 = !DILocalVariable(name: "flags", arg: 2, scope: !2691, file: !56, line: 446, type: !64)
!2704 = !DILocation(line: 446, column: 9, scope: !2691, inlinedAt: !2695)
!2705 = !DILocalVariable(name: "size", arg: 3, scope: !2691, file: !56, line: 446, type: !252)
!2706 = !DILocation(line: 446, column: 23, scope: !2691, inlinedAt: !2695)
!2707 = !DILocalVariable(name: "ret", scope: !2691, file: !56, line: 448, type: !63)
!2708 = !DILocation(line: 448, column: 8, scope: !2691, inlinedAt: !2695)
!2709 = !DILocalVariable(name: "flags", arg: 1, scope: !2710, file: !56, line: 318, type: !64)
!2710 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !2711, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{!55, !64}
!2713 = !DILocation(line: 318, column: 67, scope: !2710, inlinedAt: !2714)
!2714 = distinct !DILocation(line: 553, column: 20, scope: !2696, inlinedAt: !2701)
!2715 = !DILocalVariable(name: "size", arg: 1, scope: !2716, file: !56, line: 346, type: !252)
!2716 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !2717, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2717 = !DISubroutineType(types: !2718)
!2718 = !{!7, !252}
!2719 = !DILocation(line: 346, column: 58, scope: !2716, inlinedAt: !2720)
!2720 = distinct !DILocation(line: 547, column: 11, scope: !2696, inlinedAt: !2701)
!2721 = !DILocalVariable(name: "size", arg: 1, scope: !2722, file: !56, line: 472, type: !252)
!2722 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !2723, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2723 = !DISubroutineType(types: !2724)
!2724 = !{!63, !252, !64, !7}
!2725 = !DILocation(line: 472, column: 28, scope: !2722, inlinedAt: !2726)
!2726 = distinct !DILocation(line: 481, column: 9, scope: !2727, inlinedAt: !2728)
!2727 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !2699, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2728 = distinct !DILocation(line: 545, column: 11, scope: !2729, inlinedAt: !2701)
!2729 = distinct !DILexicalBlock(scope: !2696, file: !56, line: 544, column: 7)
!2730 = !DILocalVariable(name: "flags", arg: 2, scope: !2722, file: !56, line: 472, type: !64)
!2731 = !DILocation(line: 472, column: 40, scope: !2722, inlinedAt: !2726)
!2732 = !DILocalVariable(name: "order", arg: 3, scope: !2722, file: !56, line: 472, type: !7)
!2733 = !DILocation(line: 472, column: 60, scope: !2722, inlinedAt: !2726)
!2734 = !DILocalVariable(name: "size", arg: 1, scope: !2727, file: !56, line: 478, type: !252)
!2735 = !DILocation(line: 478, column: 51, scope: !2727, inlinedAt: !2728)
!2736 = !DILocalVariable(name: "flags", arg: 2, scope: !2727, file: !56, line: 478, type: !64)
!2737 = !DILocation(line: 478, column: 63, scope: !2727, inlinedAt: !2728)
!2738 = !DILocalVariable(name: "order", scope: !2727, file: !56, line: 480, type: !7)
!2739 = !DILocation(line: 480, column: 15, scope: !2727, inlinedAt: !2728)
!2740 = !DILocalVariable(name: "size", arg: 1, scope: !2698, file: !56, line: 538, type: !252)
!2741 = !DILocation(line: 538, column: 45, scope: !2698, inlinedAt: !2701)
!2742 = !DILocalVariable(name: "flags", arg: 2, scope: !2698, file: !56, line: 538, type: !64)
!2743 = !DILocation(line: 538, column: 57, scope: !2698, inlinedAt: !2701)
!2744 = !DILocalVariable(name: "index", scope: !2696, file: !56, line: 542, type: !7)
!2745 = !DILocation(line: 542, column: 16, scope: !2696, inlinedAt: !2701)
!2746 = !DILocalVariable(name: "n", arg: 1, scope: !2689, file: !56, line: 584, type: !252)
!2747 = !DILocation(line: 584, column: 42, scope: !2689)
!2748 = !DILocalVariable(name: "size", arg: 2, scope: !2689, file: !56, line: 584, type: !252)
!2749 = !DILocation(line: 584, column: 52, scope: !2689)
!2750 = !DILocalVariable(name: "flags", arg: 3, scope: !2689, file: !56, line: 584, type: !64)
!2751 = !DILocation(line: 584, column: 64, scope: !2689)
!2752 = !DILocalVariable(name: "bytes", scope: !2689, file: !56, line: 586, type: !252)
!2753 = !DILocation(line: 586, column: 9, scope: !2689)
!2754 = !DILocalVariable(name: "__a", scope: !2755, file: !56, line: 588, type: !252)
!2755 = distinct !DILexicalBlock(scope: !2756, file: !56, line: 588, column: 6)
!2756 = distinct !DILexicalBlock(scope: !2689, file: !56, line: 588, column: 6)
!2757 = !DILocation(line: 588, column: 6, scope: !2755)
!2758 = !DILocalVariable(name: "__b", scope: !2755, file: !56, line: 588, type: !252)
!2759 = !DILocalVariable(name: "__d", scope: !2755, file: !56, line: 588, type: !255)
!2760 = !DILocation(line: 588, column: 6, scope: !2756)
!2761 = !DILocation(line: 588, column: 6, scope: !2689)
!2762 = !DILocation(line: 589, column: 3, scope: !2756)
!2763 = !DILocation(line: 590, column: 27, scope: !2702)
!2764 = !DILocation(line: 590, column: 6, scope: !2702)
!2765 = !DILocation(line: 590, column: 30, scope: !2702)
!2766 = !DILocation(line: 590, column: 54, scope: !2702)
!2767 = !DILocation(line: 590, column: 33, scope: !2702)
!2768 = !DILocation(line: 590, column: 6, scope: !2689)
!2769 = !DILocation(line: 591, column: 18, scope: !2702)
!2770 = !DILocation(line: 591, column: 25, scope: !2702)
!2771 = !DILocation(line: 540, column: 27, scope: !2697, inlinedAt: !2701)
!2772 = !DILocation(line: 540, column: 6, scope: !2697, inlinedAt: !2701)
!2773 = !DILocation(line: 540, column: 6, scope: !2698, inlinedAt: !2701)
!2774 = !DILocation(line: 544, column: 7, scope: !2729, inlinedAt: !2701)
!2775 = !DILocation(line: 544, column: 12, scope: !2729, inlinedAt: !2701)
!2776 = !DILocation(line: 544, column: 7, scope: !2696, inlinedAt: !2701)
!2777 = !DILocation(line: 545, column: 25, scope: !2729, inlinedAt: !2701)
!2778 = !DILocation(line: 545, column: 31, scope: !2729, inlinedAt: !2701)
!2779 = !DILocation(line: 480, column: 33, scope: !2727, inlinedAt: !2728)
!2780 = !DILocation(line: 480, column: 23, scope: !2727, inlinedAt: !2728)
!2781 = !DILocation(line: 481, column: 29, scope: !2727, inlinedAt: !2728)
!2782 = !DILocation(line: 481, column: 35, scope: !2727, inlinedAt: !2728)
!2783 = !DILocation(line: 481, column: 42, scope: !2727, inlinedAt: !2728)
!2784 = !DILocation(line: 474, column: 23, scope: !2722, inlinedAt: !2726)
!2785 = !DILocation(line: 474, column: 29, scope: !2722, inlinedAt: !2726)
!2786 = !DILocation(line: 474, column: 36, scope: !2722, inlinedAt: !2726)
!2787 = !DILocation(line: 474, column: 9, scope: !2722, inlinedAt: !2726)
!2788 = !DILocation(line: 545, column: 4, scope: !2729, inlinedAt: !2701)
!2789 = !DILocation(line: 547, column: 25, scope: !2696, inlinedAt: !2701)
!2790 = !DILocation(line: 348, column: 7, scope: !2791, inlinedAt: !2720)
!2791 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 348, column: 6)
!2792 = !DILocation(line: 348, column: 6, scope: !2716, inlinedAt: !2720)
!2793 = !DILocation(line: 349, column: 3, scope: !2791, inlinedAt: !2720)
!2794 = !DILocation(line: 351, column: 6, scope: !2795, inlinedAt: !2720)
!2795 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 351, column: 6)
!2796 = !DILocation(line: 351, column: 11, scope: !2795, inlinedAt: !2720)
!2797 = !DILocation(line: 351, column: 6, scope: !2716, inlinedAt: !2720)
!2798 = !DILocation(line: 352, column: 3, scope: !2795, inlinedAt: !2720)
!2799 = !DILocation(line: 354, column: 32, scope: !2800, inlinedAt: !2720)
!2800 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 354, column: 6)
!2801 = !DILocation(line: 354, column: 37, scope: !2800, inlinedAt: !2720)
!2802 = !DILocation(line: 354, column: 42, scope: !2800, inlinedAt: !2720)
!2803 = !DILocation(line: 354, column: 45, scope: !2800, inlinedAt: !2720)
!2804 = !DILocation(line: 354, column: 50, scope: !2800, inlinedAt: !2720)
!2805 = !DILocation(line: 354, column: 6, scope: !2716, inlinedAt: !2720)
!2806 = !DILocation(line: 355, column: 3, scope: !2800, inlinedAt: !2720)
!2807 = !DILocation(line: 356, column: 32, scope: !2808, inlinedAt: !2720)
!2808 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 356, column: 6)
!2809 = !DILocation(line: 356, column: 37, scope: !2808, inlinedAt: !2720)
!2810 = !DILocation(line: 356, column: 43, scope: !2808, inlinedAt: !2720)
!2811 = !DILocation(line: 356, column: 46, scope: !2808, inlinedAt: !2720)
!2812 = !DILocation(line: 356, column: 51, scope: !2808, inlinedAt: !2720)
!2813 = !DILocation(line: 356, column: 6, scope: !2716, inlinedAt: !2720)
!2814 = !DILocation(line: 357, column: 3, scope: !2808, inlinedAt: !2720)
!2815 = !DILocation(line: 358, column: 6, scope: !2816, inlinedAt: !2720)
!2816 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 358, column: 6)
!2817 = !DILocation(line: 358, column: 11, scope: !2816, inlinedAt: !2720)
!2818 = !DILocation(line: 358, column: 6, scope: !2716, inlinedAt: !2720)
!2819 = !DILocation(line: 358, column: 26, scope: !2816, inlinedAt: !2720)
!2820 = !DILocation(line: 359, column: 6, scope: !2821, inlinedAt: !2720)
!2821 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 359, column: 6)
!2822 = !DILocation(line: 359, column: 11, scope: !2821, inlinedAt: !2720)
!2823 = !DILocation(line: 359, column: 6, scope: !2716, inlinedAt: !2720)
!2824 = !DILocation(line: 359, column: 26, scope: !2821, inlinedAt: !2720)
!2825 = !DILocation(line: 360, column: 6, scope: !2826, inlinedAt: !2720)
!2826 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 360, column: 6)
!2827 = !DILocation(line: 360, column: 11, scope: !2826, inlinedAt: !2720)
!2828 = !DILocation(line: 360, column: 6, scope: !2716, inlinedAt: !2720)
!2829 = !DILocation(line: 360, column: 26, scope: !2826, inlinedAt: !2720)
!2830 = !DILocation(line: 361, column: 6, scope: !2831, inlinedAt: !2720)
!2831 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 361, column: 6)
!2832 = !DILocation(line: 361, column: 11, scope: !2831, inlinedAt: !2720)
!2833 = !DILocation(line: 361, column: 6, scope: !2716, inlinedAt: !2720)
!2834 = !DILocation(line: 361, column: 26, scope: !2831, inlinedAt: !2720)
!2835 = !DILocation(line: 362, column: 6, scope: !2836, inlinedAt: !2720)
!2836 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 362, column: 6)
!2837 = !DILocation(line: 362, column: 11, scope: !2836, inlinedAt: !2720)
!2838 = !DILocation(line: 362, column: 6, scope: !2716, inlinedAt: !2720)
!2839 = !DILocation(line: 362, column: 26, scope: !2836, inlinedAt: !2720)
!2840 = !DILocation(line: 363, column: 6, scope: !2841, inlinedAt: !2720)
!2841 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 363, column: 6)
!2842 = !DILocation(line: 363, column: 11, scope: !2841, inlinedAt: !2720)
!2843 = !DILocation(line: 363, column: 6, scope: !2716, inlinedAt: !2720)
!2844 = !DILocation(line: 363, column: 26, scope: !2841, inlinedAt: !2720)
!2845 = !DILocation(line: 364, column: 6, scope: !2846, inlinedAt: !2720)
!2846 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 364, column: 6)
!2847 = !DILocation(line: 364, column: 11, scope: !2846, inlinedAt: !2720)
!2848 = !DILocation(line: 364, column: 6, scope: !2716, inlinedAt: !2720)
!2849 = !DILocation(line: 364, column: 26, scope: !2846, inlinedAt: !2720)
!2850 = !DILocation(line: 365, column: 6, scope: !2851, inlinedAt: !2720)
!2851 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 365, column: 6)
!2852 = !DILocation(line: 365, column: 11, scope: !2851, inlinedAt: !2720)
!2853 = !DILocation(line: 365, column: 6, scope: !2716, inlinedAt: !2720)
!2854 = !DILocation(line: 365, column: 26, scope: !2851, inlinedAt: !2720)
!2855 = !DILocation(line: 366, column: 6, scope: !2856, inlinedAt: !2720)
!2856 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 366, column: 6)
!2857 = !DILocation(line: 366, column: 11, scope: !2856, inlinedAt: !2720)
!2858 = !DILocation(line: 366, column: 6, scope: !2716, inlinedAt: !2720)
!2859 = !DILocation(line: 366, column: 26, scope: !2856, inlinedAt: !2720)
!2860 = !DILocation(line: 367, column: 6, scope: !2861, inlinedAt: !2720)
!2861 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 367, column: 6)
!2862 = !DILocation(line: 367, column: 11, scope: !2861, inlinedAt: !2720)
!2863 = !DILocation(line: 367, column: 6, scope: !2716, inlinedAt: !2720)
!2864 = !DILocation(line: 367, column: 26, scope: !2861, inlinedAt: !2720)
!2865 = !DILocation(line: 368, column: 6, scope: !2866, inlinedAt: !2720)
!2866 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 368, column: 6)
!2867 = !DILocation(line: 368, column: 11, scope: !2866, inlinedAt: !2720)
!2868 = !DILocation(line: 368, column: 6, scope: !2716, inlinedAt: !2720)
!2869 = !DILocation(line: 368, column: 26, scope: !2866, inlinedAt: !2720)
!2870 = !DILocation(line: 369, column: 6, scope: !2871, inlinedAt: !2720)
!2871 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 369, column: 6)
!2872 = !DILocation(line: 369, column: 11, scope: !2871, inlinedAt: !2720)
!2873 = !DILocation(line: 369, column: 6, scope: !2716, inlinedAt: !2720)
!2874 = !DILocation(line: 369, column: 26, scope: !2871, inlinedAt: !2720)
!2875 = !DILocation(line: 370, column: 6, scope: !2876, inlinedAt: !2720)
!2876 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 370, column: 6)
!2877 = !DILocation(line: 370, column: 11, scope: !2876, inlinedAt: !2720)
!2878 = !DILocation(line: 370, column: 6, scope: !2716, inlinedAt: !2720)
!2879 = !DILocation(line: 370, column: 26, scope: !2876, inlinedAt: !2720)
!2880 = !DILocation(line: 371, column: 6, scope: !2881, inlinedAt: !2720)
!2881 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 371, column: 6)
!2882 = !DILocation(line: 371, column: 11, scope: !2881, inlinedAt: !2720)
!2883 = !DILocation(line: 371, column: 6, scope: !2716, inlinedAt: !2720)
!2884 = !DILocation(line: 371, column: 26, scope: !2881, inlinedAt: !2720)
!2885 = !DILocation(line: 372, column: 6, scope: !2886, inlinedAt: !2720)
!2886 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 372, column: 6)
!2887 = !DILocation(line: 372, column: 11, scope: !2886, inlinedAt: !2720)
!2888 = !DILocation(line: 372, column: 6, scope: !2716, inlinedAt: !2720)
!2889 = !DILocation(line: 372, column: 26, scope: !2886, inlinedAt: !2720)
!2890 = !DILocation(line: 373, column: 6, scope: !2891, inlinedAt: !2720)
!2891 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 373, column: 6)
!2892 = !DILocation(line: 373, column: 11, scope: !2891, inlinedAt: !2720)
!2893 = !DILocation(line: 373, column: 6, scope: !2716, inlinedAt: !2720)
!2894 = !DILocation(line: 373, column: 26, scope: !2891, inlinedAt: !2720)
!2895 = !DILocation(line: 374, column: 6, scope: !2896, inlinedAt: !2720)
!2896 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 374, column: 6)
!2897 = !DILocation(line: 374, column: 11, scope: !2896, inlinedAt: !2720)
!2898 = !DILocation(line: 374, column: 6, scope: !2716, inlinedAt: !2720)
!2899 = !DILocation(line: 374, column: 26, scope: !2896, inlinedAt: !2720)
!2900 = !DILocation(line: 375, column: 6, scope: !2901, inlinedAt: !2720)
!2901 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 375, column: 6)
!2902 = !DILocation(line: 375, column: 11, scope: !2901, inlinedAt: !2720)
!2903 = !DILocation(line: 375, column: 6, scope: !2716, inlinedAt: !2720)
!2904 = !DILocation(line: 375, column: 27, scope: !2901, inlinedAt: !2720)
!2905 = !DILocation(line: 376, column: 6, scope: !2906, inlinedAt: !2720)
!2906 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 376, column: 6)
!2907 = !DILocation(line: 376, column: 11, scope: !2906, inlinedAt: !2720)
!2908 = !DILocation(line: 376, column: 6, scope: !2716, inlinedAt: !2720)
!2909 = !DILocation(line: 376, column: 32, scope: !2906, inlinedAt: !2720)
!2910 = !DILocation(line: 377, column: 6, scope: !2911, inlinedAt: !2720)
!2911 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 377, column: 6)
!2912 = !DILocation(line: 377, column: 11, scope: !2911, inlinedAt: !2720)
!2913 = !DILocation(line: 377, column: 6, scope: !2716, inlinedAt: !2720)
!2914 = !DILocation(line: 377, column: 32, scope: !2911, inlinedAt: !2720)
!2915 = !DILocation(line: 378, column: 6, scope: !2916, inlinedAt: !2720)
!2916 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 378, column: 6)
!2917 = !DILocation(line: 378, column: 11, scope: !2916, inlinedAt: !2720)
!2918 = !DILocation(line: 378, column: 6, scope: !2716, inlinedAt: !2720)
!2919 = !DILocation(line: 378, column: 32, scope: !2916, inlinedAt: !2720)
!2920 = !DILocation(line: 379, column: 6, scope: !2921, inlinedAt: !2720)
!2921 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 379, column: 6)
!2922 = !DILocation(line: 379, column: 11, scope: !2921, inlinedAt: !2720)
!2923 = !DILocation(line: 379, column: 6, scope: !2716, inlinedAt: !2720)
!2924 = !DILocation(line: 379, column: 33, scope: !2921, inlinedAt: !2720)
!2925 = !DILocation(line: 380, column: 6, scope: !2926, inlinedAt: !2720)
!2926 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 380, column: 6)
!2927 = !DILocation(line: 380, column: 11, scope: !2926, inlinedAt: !2720)
!2928 = !DILocation(line: 380, column: 6, scope: !2716, inlinedAt: !2720)
!2929 = !DILocation(line: 380, column: 33, scope: !2926, inlinedAt: !2720)
!2930 = !DILocation(line: 381, column: 6, scope: !2931, inlinedAt: !2720)
!2931 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 381, column: 6)
!2932 = !DILocation(line: 381, column: 11, scope: !2931, inlinedAt: !2720)
!2933 = !DILocation(line: 381, column: 6, scope: !2716, inlinedAt: !2720)
!2934 = !DILocation(line: 381, column: 33, scope: !2931, inlinedAt: !2720)
!2935 = !DILocation(line: 382, column: 2, scope: !2936, inlinedAt: !2720)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !56, line: 382, column: 2)
!2937 = distinct !DILexicalBlock(scope: !2716, file: !56, line: 382, column: 2)
!2938 = !{i32 -2143370196, i32 -2143370167, i32 -2143370121, i32 -2143370063, i32 -2143370009, i32 -2143369955, i32 -2143369900, i32 -2143369869}
!2939 = !DILocation(line: 382, column: 2, scope: !2940, inlinedAt: !2720)
!2940 = distinct !DILexicalBlock(scope: !2941, file: !56, line: 382, column: 2)
!2941 = distinct !DILexicalBlock(scope: !2937, file: !56, line: 382, column: 2)
!2942 = !{i32 -2143369426, i32 -2143369419, i32 -2143369365, i32 -2143369334, i32 -2143369304}
!2943 = !DILocation(line: 382, column: 2, scope: !2941, inlinedAt: !2720)
!2944 = !DILocation(line: 386, column: 1, scope: !2716, inlinedAt: !2720)
!2945 = !DILocation(line: 547, column: 9, scope: !2696, inlinedAt: !2701)
!2946 = !DILocation(line: 549, column: 8, scope: !2947, inlinedAt: !2701)
!2947 = distinct !DILexicalBlock(scope: !2696, file: !56, line: 549, column: 7)
!2948 = !DILocation(line: 549, column: 7, scope: !2696, inlinedAt: !2701)
!2949 = !DILocation(line: 550, column: 4, scope: !2947, inlinedAt: !2701)
!2950 = !DILocation(line: 553, column: 33, scope: !2696, inlinedAt: !2701)
!2951 = !DILocation(line: 325, column: 6, scope: !2952, inlinedAt: !2714)
!2952 = distinct !DILexicalBlock(scope: !2710, file: !56, line: 325, column: 6)
!2953 = !DILocation(line: 325, column: 6, scope: !2710, inlinedAt: !2714)
!2954 = !DILocation(line: 326, column: 3, scope: !2952, inlinedAt: !2714)
!2955 = !DILocation(line: 332, column: 9, scope: !2710, inlinedAt: !2714)
!2956 = !DILocation(line: 332, column: 15, scope: !2710, inlinedAt: !2714)
!2957 = !DILocation(line: 332, column: 2, scope: !2710, inlinedAt: !2714)
!2958 = !DILocation(line: 336, column: 1, scope: !2710, inlinedAt: !2714)
!2959 = !DILocation(line: 553, column: 5, scope: !2696, inlinedAt: !2701)
!2960 = !DILocation(line: 553, column: 41, scope: !2696, inlinedAt: !2701)
!2961 = !DILocation(line: 554, column: 5, scope: !2696, inlinedAt: !2701)
!2962 = !DILocation(line: 554, column: 12, scope: !2696, inlinedAt: !2701)
!2963 = !DILocation(line: 448, column: 31, scope: !2691, inlinedAt: !2695)
!2964 = !DILocation(line: 448, column: 34, scope: !2691, inlinedAt: !2695)
!2965 = !DILocation(line: 448, column: 14, scope: !2691, inlinedAt: !2695)
!2966 = !DILocation(line: 450, column: 22, scope: !2691, inlinedAt: !2695)
!2967 = !DILocation(line: 450, column: 25, scope: !2691, inlinedAt: !2695)
!2968 = !DILocation(line: 450, column: 30, scope: !2691, inlinedAt: !2695)
!2969 = !DILocation(line: 450, column: 36, scope: !2691, inlinedAt: !2695)
!2970 = !DILocation(line: 450, column: 8, scope: !2691, inlinedAt: !2695)
!2971 = !DILocation(line: 450, column: 6, scope: !2691, inlinedAt: !2695)
!2972 = !DILocation(line: 451, column: 9, scope: !2691, inlinedAt: !2695)
!2973 = !DILocation(line: 552, column: 3, scope: !2696, inlinedAt: !2701)
!2974 = !DILocation(line: 557, column: 19, scope: !2698, inlinedAt: !2701)
!2975 = !DILocation(line: 557, column: 25, scope: !2698, inlinedAt: !2701)
!2976 = !DILocation(line: 557, column: 9, scope: !2698, inlinedAt: !2701)
!2977 = !DILocation(line: 557, column: 2, scope: !2698, inlinedAt: !2701)
!2978 = !DILocation(line: 558, column: 1, scope: !2698, inlinedAt: !2701)
!2979 = !DILocation(line: 591, column: 3, scope: !2702)
!2980 = !DILocation(line: 592, column: 19, scope: !2689)
!2981 = !DILocation(line: 592, column: 26, scope: !2689)
!2982 = !DILocation(line: 592, column: 9, scope: !2689)
!2983 = !DILocation(line: 592, column: 2, scope: !2689)
!2984 = !DILocation(line: 593, column: 1, scope: !2689)
!2985 = distinct !DISubprogram(name: "__must_check_overflow", scope: !2986, file: !2986, line: 52, type: !2987, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2986 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!2987 = !DISubroutineType(types: !2988)
!2988 = !{!349, !349}
!2989 = !DILocalVariable(name: "overflow", arg: 1, scope: !2985, file: !2986, line: 52, type: !349)
!2990 = !DILocation(line: 52, column: 60, scope: !2985)
!2991 = !DILocation(line: 54, column: 9, scope: !2985)
!2992 = !DILocation(line: 54, column: 2, scope: !2985)
!2993 = distinct !DISubprogram(name: "get_order", scope: !2994, file: !2994, line: 29, type: !2995, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2994 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2995 = !DISubroutineType(types: !2996)
!2996 = !{!156, !233}
!2997 = !DILocalVariable(name: "x", arg: 1, scope: !2998, file: !2999, line: 366, type: !171)
!2998 = distinct !DISubprogram(name: "fls64", scope: !2999, file: !2999, line: 366, type: !3000, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!2999 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3000 = !DISubroutineType(types: !3001)
!3001 = !{!156, !171}
!3002 = !DILocation(line: 366, column: 40, scope: !2998, inlinedAt: !3003)
!3003 = distinct !DILocation(line: 46, column: 9, scope: !2993)
!3004 = !DILocalVariable(name: "bitpos", scope: !2998, file: !2999, line: 368, type: !156)
!3005 = !DILocation(line: 368, column: 6, scope: !2998, inlinedAt: !3003)
!3006 = !DILocalVariable(name: "size", arg: 1, scope: !2993, file: !2994, line: 29, type: !233)
!3007 = !DILocation(line: 29, column: 63, scope: !2993)
!3008 = !DILocation(line: 31, column: 27, scope: !3009)
!3009 = distinct !DILexicalBlock(scope: !2993, file: !2994, line: 31, column: 6)
!3010 = !DILocation(line: 31, column: 6, scope: !3009)
!3011 = !DILocation(line: 31, column: 6, scope: !2993)
!3012 = !DILocation(line: 32, column: 8, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3014, file: !2994, line: 32, column: 7)
!3014 = distinct !DILexicalBlock(scope: !3009, file: !2994, line: 31, column: 34)
!3015 = !DILocation(line: 32, column: 7, scope: !3014)
!3016 = !DILocation(line: 33, column: 4, scope: !3013)
!3017 = !DILocation(line: 35, column: 7, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3014, file: !2994, line: 35, column: 7)
!3019 = !DILocation(line: 35, column: 12, scope: !3018)
!3020 = !DILocation(line: 35, column: 7, scope: !3014)
!3021 = !DILocation(line: 36, column: 4, scope: !3018)
!3022 = !DILocation(line: 38, column: 10, scope: !3014)
!3023 = !DILocation(line: 38, column: 28, scope: !3014)
!3024 = !DILocation(line: 38, column: 41, scope: !3014)
!3025 = !DILocation(line: 38, column: 3, scope: !3014)
!3026 = !DILocation(line: 41, column: 6, scope: !2993)
!3027 = !DILocation(line: 42, column: 7, scope: !2993)
!3028 = !DILocation(line: 46, column: 15, scope: !2993)
!3029 = !DILocation(line: 374, column: 2, scope: !2998, inlinedAt: !3003)
!3030 = !DILocation(line: 376, column: 14, scope: !2998, inlinedAt: !3003)
!3031 = !{i32 302389}
!3032 = !DILocation(line: 377, column: 9, scope: !2998, inlinedAt: !3003)
!3033 = !DILocation(line: 377, column: 16, scope: !2998, inlinedAt: !3003)
!3034 = !DILocation(line: 46, column: 2, scope: !2993)
!3035 = !DILocation(line: 48, column: 1, scope: !2993)
!3036 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3037, file: !3037, line: 30, type: !3038, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!3037 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3038 = !DISubroutineType(types: !3039)
!3039 = !{!156, !170}
!3040 = !DILocation(line: 366, column: 40, scope: !2998, inlinedAt: !3041)
!3041 = distinct !DILocation(line: 32, column: 9, scope: !3036)
!3042 = !DILocation(line: 368, column: 6, scope: !2998, inlinedAt: !3041)
!3043 = !DILocalVariable(name: "n", arg: 1, scope: !3036, file: !3037, line: 30, type: !170)
!3044 = !DILocation(line: 30, column: 21, scope: !3036)
!3045 = !DILocation(line: 32, column: 15, scope: !3036)
!3046 = !DILocation(line: 374, column: 2, scope: !2998, inlinedAt: !3041)
!3047 = !DILocation(line: 376, column: 14, scope: !2998, inlinedAt: !3041)
!3048 = !DILocation(line: 377, column: 9, scope: !2998, inlinedAt: !3041)
!3049 = !DILocation(line: 377, column: 16, scope: !2998, inlinedAt: !3041)
!3050 = !DILocation(line: 32, column: 18, scope: !3036)
!3051 = !DILocation(line: 32, column: 2, scope: !3036)
!3052 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3053, file: !3053, line: 137, type: !3054, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!3053 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!63, !1304, !132, !252, !64}
!3056 = !DILocalVariable(name: "s", arg: 1, scope: !3052, file: !3053, line: 137, type: !1304)
!3057 = !DILocation(line: 137, column: 54, scope: !3052)
!3058 = !DILocalVariable(name: "object", arg: 2, scope: !3052, file: !3053, line: 137, type: !132)
!3059 = !DILocation(line: 137, column: 69, scope: !3052)
!3060 = !DILocalVariable(name: "size", arg: 3, scope: !3052, file: !3053, line: 138, type: !252)
!3061 = !DILocation(line: 138, column: 12, scope: !3052)
!3062 = !DILocalVariable(name: "flags", arg: 4, scope: !3052, file: !3053, line: 138, type: !64)
!3063 = !DILocation(line: 138, column: 24, scope: !3052)
!3064 = !DILocation(line: 140, column: 17, scope: !3052)
!3065 = !DILocation(line: 140, column: 2, scope: !3052)
!3066 = distinct !DISubprogram(name: "__fswab32", scope: !3067, file: !3067, line: 57, type: !3068, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!3067 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!3068 = !DISubroutineType(types: !3069)
!3069 = !{!66, !66}
!3070 = !DILocalVariable(name: "val", arg: 1, scope: !3066, file: !3067, line: 57, type: !66)
!3071 = !DILocation(line: 57, column: 57, scope: !3066)
!3072 = !DILocation(line: 60, column: 23, scope: !3066)
!3073 = !DILocation(line: 60, column: 9, scope: !3066)
!3074 = !DILocation(line: 60, column: 2, scope: !3066)
!3075 = distinct !DISubprogram(name: "__arch_swab32", scope: !3076, file: !3076, line: 8, type: !3068, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!3076 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!3077 = !DILocalVariable(name: "val", arg: 1, scope: !3075, file: !3076, line: 8, type: !66)
!3078 = !DILocation(line: 8, column: 61, scope: !3075)
!3079 = !DILocation(line: 10, column: 38, scope: !3075)
!3080 = !DILocation(line: 10, column: 2, scope: !3075)
!3081 = !{i32 422613}
!3082 = !DILocation(line: 11, column: 9, scope: !3075)
!3083 = !DILocation(line: 11, column: 2, scope: !3075)
!3084 = distinct !DISubprogram(name: "parse_ofoldpart_partitions", scope: !3, file: !3, line: 154, type: !154, scopeLine: 157, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !404)
!3085 = !DILocalVariable(name: "master", arg: 1, scope: !3084, file: !3, line: 154, type: !157)
!3086 = !DILocation(line: 154, column: 56, scope: !3084)
!3087 = !DILocalVariable(name: "pparts", arg: 2, scope: !3084, file: !3, line: 155, type: !2327)
!3088 = !DILocation(line: 155, column: 40, scope: !3084)
!3089 = !DILocalVariable(name: "data", arg: 3, scope: !3084, file: !3, line: 156, type: !2341)
!3090 = !DILocation(line: 156, column: 40, scope: !3084)
!3091 = !DILocalVariable(name: "parts", scope: !3084, file: !3, line: 158, type: !2372)
!3092 = !DILocation(line: 158, column: 24, scope: !3084)
!3093 = !DILocalVariable(name: "dp", scope: !3084, file: !3, line: 159, type: !2132)
!3094 = !DILocation(line: 159, column: 22, scope: !3084)
!3095 = !DILocalVariable(name: "i", scope: !3084, file: !3, line: 160, type: !156)
!3096 = !DILocation(line: 160, column: 6, scope: !3084)
!3097 = !DILocalVariable(name: "plen", scope: !3084, file: !3, line: 160, type: !156)
!3098 = !DILocation(line: 160, column: 9, scope: !3084)
!3099 = !DILocalVariable(name: "nr_parts", scope: !3084, file: !3, line: 160, type: !156)
!3100 = !DILocation(line: 160, column: 15, scope: !3084)
!3101 = !DILocalVariable(name: "part", scope: !3084, file: !3, line: 163, type: !3102)
!3102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3103, size: 64)
!3103 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3104)
!3104 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !3084, file: !3, line: 161, size: 64, elements: !3105)
!3105 = !{!3106, !3107}
!3106 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !3104, file: !3, line: 162, baseType: !68, size: 32)
!3107 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !3104, file: !3, line: 162, baseType: !68, size: 32, offset: 32)
!3108 = !DILocation(line: 163, column: 5, scope: !3084)
!3109 = !DILocalVariable(name: "names", scope: !3084, file: !3, line: 164, type: !149)
!3110 = !DILocation(line: 164, column: 14, scope: !3084)
!3111 = !DILocation(line: 167, column: 23, scope: !3084)
!3112 = !DILocation(line: 167, column: 7, scope: !3084)
!3113 = !DILocation(line: 167, column: 5, scope: !3084)
!3114 = !DILocation(line: 168, column: 7, scope: !3115)
!3115 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 168, column: 6)
!3116 = !DILocation(line: 168, column: 6, scope: !3084)
!3117 = !DILocation(line: 169, column: 3, scope: !3115)
!3118 = !DILocation(line: 171, column: 25, scope: !3084)
!3119 = !DILocation(line: 171, column: 9, scope: !3084)
!3120 = !DILocation(line: 171, column: 7, scope: !3084)
!3121 = !DILocation(line: 172, column: 7, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 172, column: 6)
!3123 = !DILocation(line: 172, column: 6, scope: !3084)
!3124 = !DILocation(line: 173, column: 3, scope: !3122)
!3125 = !DILocation(line: 175, column: 2, scope: !3084)
!3126 = !DILocation(line: 177, column: 13, scope: !3084)
!3127 = !DILocation(line: 177, column: 18, scope: !3084)
!3128 = !DILocation(line: 177, column: 11, scope: !3084)
!3129 = !DILocation(line: 179, column: 18, scope: !3084)
!3130 = !DILocation(line: 179, column: 10, scope: !3084)
!3131 = !DILocation(line: 179, column: 8, scope: !3084)
!3132 = !DILocation(line: 180, column: 7, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 180, column: 6)
!3134 = !DILocation(line: 180, column: 6, scope: !3084)
!3135 = !DILocation(line: 181, column: 3, scope: !3133)
!3136 = !DILocation(line: 183, column: 26, scope: !3084)
!3137 = !DILocation(line: 183, column: 10, scope: !3084)
!3138 = !DILocation(line: 183, column: 8, scope: !3084)
!3139 = !DILocation(line: 185, column: 9, scope: !3140)
!3140 = distinct !DILexicalBlock(scope: !3084, file: !3, line: 185, column: 2)
!3141 = !DILocation(line: 185, column: 7, scope: !3140)
!3142 = !DILocation(line: 185, column: 14, scope: !3143)
!3143 = distinct !DILexicalBlock(scope: !3140, file: !3, line: 185, column: 2)
!3144 = !DILocation(line: 185, column: 18, scope: !3143)
!3145 = !DILocation(line: 185, column: 16, scope: !3143)
!3146 = !DILocation(line: 185, column: 2, scope: !3140)
!3147 = !DILocation(line: 186, column: 21, scope: !3148)
!3148 = distinct !DILexicalBlock(scope: !3143, file: !3, line: 185, column: 33)
!3149 = !DILocation(line: 186, column: 3, scope: !3148)
!3150 = !DILocation(line: 186, column: 9, scope: !3148)
!3151 = !DILocation(line: 186, column: 12, scope: !3148)
!3152 = !DILocation(line: 186, column: 19, scope: !3148)
!3153 = !DILocation(line: 187, column: 21, scope: !3148)
!3154 = !DILocation(line: 187, column: 44, scope: !3148)
!3155 = !DILocation(line: 187, column: 3, scope: !3148)
!3156 = !DILocation(line: 187, column: 9, scope: !3148)
!3157 = !DILocation(line: 187, column: 12, scope: !3148)
!3158 = !DILocation(line: 187, column: 19, scope: !3148)
!3159 = !DILocation(line: 189, column: 7, scope: !3160)
!3160 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 189, column: 7)
!3161 = !DILocation(line: 189, column: 30, scope: !3160)
!3162 = !DILocation(line: 189, column: 7, scope: !3148)
!3163 = !DILocation(line: 190, column: 4, scope: !3160)
!3164 = !DILocation(line: 190, column: 10, scope: !3160)
!3165 = !DILocation(line: 190, column: 13, scope: !3160)
!3166 = !DILocation(line: 190, column: 24, scope: !3160)
!3167 = !DILocation(line: 192, column: 7, scope: !3168)
!3168 = distinct !DILexicalBlock(scope: !3148, file: !3, line: 192, column: 7)
!3169 = !DILocation(line: 192, column: 13, scope: !3168)
!3170 = !DILocation(line: 192, column: 17, scope: !3168)
!3171 = !DILocation(line: 192, column: 22, scope: !3168)
!3172 = !DILocation(line: 192, column: 7, scope: !3148)
!3173 = !DILocalVariable(name: "len", scope: !3174, file: !3, line: 193, type: !156)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 192, column: 28)
!3175 = !DILocation(line: 193, column: 8, scope: !3174)
!3176 = !DILocation(line: 193, column: 21, scope: !3174)
!3177 = !DILocation(line: 193, column: 14, scope: !3174)
!3178 = !DILocation(line: 193, column: 28, scope: !3174)
!3179 = !DILocation(line: 195, column: 20, scope: !3174)
!3180 = !DILocation(line: 195, column: 4, scope: !3174)
!3181 = !DILocation(line: 195, column: 10, scope: !3174)
!3182 = !DILocation(line: 195, column: 13, scope: !3174)
!3183 = !DILocation(line: 195, column: 18, scope: !3174)
!3184 = !DILocation(line: 196, column: 12, scope: !3174)
!3185 = !DILocation(line: 196, column: 9, scope: !3174)
!3186 = !DILocation(line: 197, column: 13, scope: !3174)
!3187 = !DILocation(line: 197, column: 10, scope: !3174)
!3188 = !DILocation(line: 198, column: 3, scope: !3174)
!3189 = !DILocation(line: 199, column: 4, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 198, column: 10)
!3191 = !DILocation(line: 199, column: 10, scope: !3190)
!3192 = !DILocation(line: 199, column: 13, scope: !3190)
!3193 = !DILocation(line: 199, column: 18, scope: !3190)
!3194 = !DILocation(line: 202, column: 7, scope: !3148)
!3195 = !DILocation(line: 203, column: 2, scope: !3148)
!3196 = !DILocation(line: 185, column: 29, scope: !3143)
!3197 = !DILocation(line: 185, column: 2, scope: !3143)
!3198 = distinct !{!3198, !3146, !3199}
!3199 = !DILocation(line: 203, column: 2, scope: !3140)
!3200 = !DILocation(line: 205, column: 12, scope: !3084)
!3201 = !DILocation(line: 205, column: 3, scope: !3084)
!3202 = !DILocation(line: 205, column: 10, scope: !3084)
!3203 = !DILocation(line: 206, column: 9, scope: !3084)
!3204 = !DILocation(line: 206, column: 2, scope: !3084)
!3205 = !DILocation(line: 207, column: 1, scope: !3084)
