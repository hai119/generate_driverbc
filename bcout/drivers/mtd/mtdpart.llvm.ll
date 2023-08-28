; ModuleID = '../bcout/drivers/mtd/mtdpart.llvm.bc'
source_filename = "drivers/mtd/mtdpart.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.attribute = type { i8*, i16 }
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
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
%struct.module = type opaque
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
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
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
%struct.mtd_debug_info = type { %struct.dentry*, i8*, i8* }
%struct.dentry = type opaque
%struct.nvmem_device = type opaque
%union.anon.38 = type { %struct.mtd_part }
%struct.mtd_part = type { %struct.list_head, i64, i64, i32 }
%struct.mtd_partition = type { i8*, i8**, i64, i64, i32, i32, %struct.device_node* }
%struct.mtd_master = type { %struct.mutex, i8 }
%struct.mtd_part_parser_data = type { i64 }
%struct.mtd_partitions = type { %struct.mtd_partition*, i32, %struct.mtd_part_parser* }
%struct.mtd_part_parser = type { %struct.list_head, %struct.module*, i8*, %struct.of_device_id*, i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)*, void (%struct.mtd_partition*, i32)* }

@.str = private unnamed_addr constant [36 x i8] c"\016Deleting MTD partitions on \22%s\22:\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"\015Creating %d MTD partitions on \22%s\22:\0A\00", align 1
@part_parser_lock = internal global %struct.spinlock undef, align 1, !dbg !0
@part_parsers = internal global %struct.list_head { %struct.list_head* @part_parsers, %struct.list_head* @part_parsers }, align 8, !dbg !2329
@default_subpartition_types = internal constant [2 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !2331
@default_mtd_part_types = internal constant [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i32 0, i32 0), i8* null], align 16, !dbg !2334
@.str.2 = private unnamed_addr constant [7 x i8] c"ofpart\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\013memory allocation error while creating partitions for \22%s\22\0A\00", align 1
@.str.5 = private unnamed_addr constant [47 x i8] c"\015Moving partition %d: 0x%012llx -> 0x%012llx\0A\00", align 1
@.str.6 = private unnamed_addr constant [73 x i8] c"\013mtd partition \22%s\22 doesn't have enough space: %#llx < %#llx, disabled\0A\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"\0150x%012llx-0x%012llx : \22%s\22\0A\00", align 1
@.str.8 = private unnamed_addr constant [51 x i8] c"\013mtd: partition \22%s\22 is out of reach -- disabled\0A\00", align 1
@.str.9 = private unnamed_addr constant [88 x i8] c"\014mtd: partition \22%s\22 extends beyond the end of device \22%s\22 -- size truncated to %#llx\0A\00", align 1
@.str.10 = private unnamed_addr constant [22 x i8] c"drivers/mtd/mtdpart.c\00", align 1
@.str.11 = private unnamed_addr constant [89 x i8] c"\014mtd: partition \22%s\22 doesn't start on an erase/write block boundary -- force read-only\0A\00", align 1
@.str.12 = private unnamed_addr constant [78 x i8] c"\014mtd: partition \22%s\22 doesn't end on an erase/write block -- force read-only\0A\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.13 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@mtd_partition_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_offset, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2310
@.str.14 = private unnamed_addr constant [49 x i8] c"\014mtd: failed to create partition attrs, err=%d\0A\00", align 1
@dev_attr_offset = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @mtd_partition_offset_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2315
@.str.15 = private unnamed_addr constant [7 x i8] c"offset\00", align 1
@.str.16 = private unnamed_addr constant [6 x i8] c"%lld\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"\016Deleting %s MTD partition\0A\00", align 1
@.str.18 = private unnamed_addr constant [43 x i8] c"\013Error when deleting partition \22%s\22 (%d)\0A\00", align 1
@.str.19 = private unnamed_addr constant [12 x i8] c"cmdlinepart\00", align 1
@.str.20 = private unnamed_addr constant [17 x i8] c"fixed-partitions\00", align 1
@.str.21 = private unnamed_addr constant [11 x i8] c"partitions\00", align 1
@.str.22 = private unnamed_addr constant [11 x i8] c"compatible\00", align 1
@.str.23 = private unnamed_addr constant [43 x i8] c"\015%d %s partitions found on MTD device %s\0A\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mtd_add_partition(%struct.mtd_info* %parent, i8* %name, i64 %offset, i64 %length) #0 !dbg !2342 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.mtd_info*, align 8
  %name.addr = alloca i8*, align 8
  %offset.addr = alloca i64, align 8
  %length.addr = alloca i64, align 8
  %master = alloca %struct.mtd_info*, align 8
  %parent_size = alloca i64, align 8
  %part3 = alloca %struct.mtd_partition, align 8
  %child = alloca %struct.mtd_info*, align 8
  %ret = alloca i32, align 4
  store %struct.mtd_info* %parent, %struct.mtd_info** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %parent.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2347, metadata !DIExpression()), !dbg !2348
  store i64 %offset, i64* %offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %offset.addr, metadata !2349, metadata !DIExpression()), !dbg !2350
  store i64 %length, i64* %length.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %length.addr, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master, metadata !2353, metadata !DIExpression()), !dbg !2354
  %0 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2355
  %call = call %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %0) #8, !dbg !2356
  store %struct.mtd_info* %call, %struct.mtd_info** %master, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata i64* %parent_size, metadata !2357, metadata !DIExpression()), !dbg !2358
  %1 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2359
  %call1 = call zeroext i1 @mtd_is_partition(%struct.mtd_info* %1) #8, !dbg !2360
  br i1 %call1, label %cond.true, label %cond.false, !dbg !2360

cond.true:                                        ; preds = %entry
  %2 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2361
  %3 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 61, !dbg !2362
  %part = bitcast %union.anon.38* %3 to %struct.mtd_part*, !dbg !2362
  %size = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 2, !dbg !2363
  %4 = load i64, i64* %size, align 8, !dbg !2363
  br label %cond.end, !dbg !2360

cond.false:                                       ; preds = %entry
  %5 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2364
  %size2 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 2, !dbg !2365
  %6 = load i64, i64* %size2, align 8, !dbg !2365
  br label %cond.end, !dbg !2360

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %4, %cond.true ], [ %6, %cond.false ], !dbg !2360
  store i64 %cond, i64* %parent_size, align 8, !dbg !2358
  call void @llvm.dbg.declare(metadata %struct.mtd_partition* %part3, metadata !2366, metadata !DIExpression()), !dbg !2367
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %child, metadata !2368, metadata !DIExpression()), !dbg !2369
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2370, metadata !DIExpression()), !dbg !2371
  store i32 0, i32* %ret, align 4, !dbg !2371
  %7 = load i64, i64* %offset.addr, align 8, !dbg !2372
  %cmp = icmp eq i64 %7, -1, !dbg !2374
  br i1 %cmp, label %if.then, label %lor.lhs.false, !dbg !2375

lor.lhs.false:                                    ; preds = %cond.end
  %8 = load i64, i64* %offset.addr, align 8, !dbg !2376
  %cmp4 = icmp eq i64 %8, -2, !dbg !2377
  br i1 %cmp4, label %if.then, label %if.end, !dbg !2378

if.then:                                          ; preds = %lor.lhs.false, %cond.end
  store i32 -22, i32* %retval, align 4, !dbg !2379
  br label %return, !dbg !2379

if.end:                                           ; preds = %lor.lhs.false
  %9 = load i64, i64* %length.addr, align 8, !dbg !2380
  %cmp5 = icmp eq i64 %9, 0, !dbg !2382
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2383

if.then6:                                         ; preds = %if.end
  %10 = load i64, i64* %parent_size, align 8, !dbg !2384
  %11 = load i64, i64* %offset.addr, align 8, !dbg !2385
  %sub = sub i64 %10, %11, !dbg !2386
  store i64 %sub, i64* %length.addr, align 8, !dbg !2387
  br label %if.end7, !dbg !2388

if.end7:                                          ; preds = %if.then6, %if.end
  %12 = load i64, i64* %length.addr, align 8, !dbg !2389
  %cmp8 = icmp sle i64 %12, 0, !dbg !2391
  br i1 %cmp8, label %if.then9, label %if.end10, !dbg !2392

if.then9:                                         ; preds = %if.end7
  store i32 -22, i32* %retval, align 4, !dbg !2393
  br label %return, !dbg !2393

if.end10:                                         ; preds = %if.end7
  %13 = bitcast %struct.mtd_partition* %part3 to i8*, !dbg !2394
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 48, i1 false), !dbg !2394
  %14 = load i8*, i8** %name.addr, align 8, !dbg !2395
  %name11 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %part3, i32 0, i32 0, !dbg !2396
  store i8* %14, i8** %name11, align 8, !dbg !2397
  %15 = load i64, i64* %length.addr, align 8, !dbg !2398
  %size12 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %part3, i32 0, i32 2, !dbg !2399
  store i64 %15, i64* %size12, align 8, !dbg !2400
  %16 = load i64, i64* %offset.addr, align 8, !dbg !2401
  %offset13 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %part3, i32 0, i32 3, !dbg !2402
  store i64 %16, i64* %offset13, align 8, !dbg !2403
  %17 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2404
  %18 = load i64, i64* %offset.addr, align 8, !dbg !2405
  %call14 = call %struct.mtd_info* @allocate_partition(%struct.mtd_info* %17, %struct.mtd_partition* %part3, i32 -1, i64 %18) #8, !dbg !2406
  store %struct.mtd_info* %call14, %struct.mtd_info** %child, align 8, !dbg !2407
  %19 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2408
  %20 = bitcast %struct.mtd_info* %19 to i8*, !dbg !2408
  %call15 = call zeroext i1 @IS_ERR(i8* %20) #8, !dbg !2410
  br i1 %call15, label %if.then16, label %if.end18, !dbg !2411

if.then16:                                        ; preds = %if.end10
  %21 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2412
  %22 = bitcast %struct.mtd_info* %21 to i8*, !dbg !2412
  %call17 = call i64 @PTR_ERR(i8* %22) #8, !dbg !2413
  %conv = trunc i64 %call17 to i32, !dbg !2413
  store i32 %conv, i32* %retval, align 4, !dbg !2414
  br label %return, !dbg !2414

if.end18:                                         ; preds = %if.end10
  %23 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2415
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 61, !dbg !2416
  %master19 = bitcast %union.anon.38* %24 to %struct.mtd_master*, !dbg !2416
  %partitions_lock = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master19, i32 0, i32 0, !dbg !2417
  call void @mutex_lock(%struct.mutex* %partitions_lock) #8, !dbg !2418
  %25 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2419
  %26 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %25, i32 0, i32 61, !dbg !2420
  %part20 = bitcast %union.anon.38* %26 to %struct.mtd_part*, !dbg !2420
  %node = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part20, i32 0, i32 0, !dbg !2421
  %27 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2422
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 60, !dbg !2423
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %partitions) #8, !dbg !2424
  %28 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2425
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 61, !dbg !2426
  %master21 = bitcast %union.anon.38* %29 to %struct.mtd_master*, !dbg !2426
  %partitions_lock22 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master21, i32 0, i32 0, !dbg !2427
  call void @mutex_unlock(%struct.mutex* %partitions_lock22) #8, !dbg !2428
  %30 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2429
  %call23 = call i32 @add_mtd_device(%struct.mtd_info* %30) #8, !dbg !2430
  store i32 %call23, i32* %ret, align 4, !dbg !2431
  %31 = load i32, i32* %ret, align 4, !dbg !2432
  %tobool = icmp ne i32 %31, 0, !dbg !2432
  br i1 %tobool, label %if.then24, label %if.end25, !dbg !2434

if.then24:                                        ; preds = %if.end18
  br label %err_remove_part, !dbg !2435

if.end25:                                         ; preds = %if.end18
  %32 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2436
  %call26 = call i32 @mtd_add_partition_attrs(%struct.mtd_info* %32) #8, !dbg !2437
  store i32 0, i32* %retval, align 4, !dbg !2438
  br label %return, !dbg !2438

err_remove_part:                                  ; preds = %if.then24
  call void @llvm.dbg.label(metadata !2439), !dbg !2440
  %33 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2441
  %34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %33, i32 0, i32 61, !dbg !2442
  %master27 = bitcast %union.anon.38* %34 to %struct.mtd_master*, !dbg !2442
  %partitions_lock28 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master27, i32 0, i32 0, !dbg !2443
  call void @mutex_lock(%struct.mutex* %partitions_lock28) #8, !dbg !2444
  %35 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2445
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 61, !dbg !2446
  %part29 = bitcast %union.anon.38* %36 to %struct.mtd_part*, !dbg !2446
  %node30 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part29, i32 0, i32 0, !dbg !2447
  call void @list_del(%struct.list_head* %node30) #8, !dbg !2448
  %37 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2449
  %38 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %37, i32 0, i32 61, !dbg !2450
  %master31 = bitcast %union.anon.38* %38 to %struct.mtd_master*, !dbg !2450
  %partitions_lock32 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master31, i32 0, i32 0, !dbg !2451
  call void @mutex_unlock(%struct.mutex* %partitions_lock32) #8, !dbg !2452
  %39 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2453
  call void @free_partition(%struct.mtd_info* %39) #8, !dbg !2454
  %40 = load i32, i32* %ret, align 4, !dbg !2455
  store i32 %40, i32* %retval, align 4, !dbg !2456
  br label %return, !dbg !2456

return:                                           ; preds = %err_remove_part, %if.end25, %if.then16, %if.then9, %if.then
  %41 = load i32, i32* %retval, align 4, !dbg !2457
  ret i32 %41, !dbg !2457
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %mtd) #0 !dbg !2458 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2461, metadata !DIExpression()), !dbg !2462
  br label %while.cond, !dbg !2463

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2464
  %parent = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 59, !dbg !2465
  %1 = load %struct.mtd_info*, %struct.mtd_info** %parent, align 8, !dbg !2465
  %tobool = icmp ne %struct.mtd_info* %1, null, !dbg !2463
  br i1 %tobool, label %while.body, label %while.end, !dbg !2463

while.body:                                       ; preds = %while.cond
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2466
  %parent1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 59, !dbg !2467
  %3 = load %struct.mtd_info*, %struct.mtd_info** %parent1, align 8, !dbg !2467
  store %struct.mtd_info* %3, %struct.mtd_info** %mtd.addr, align 8, !dbg !2468
  br label %while.cond, !dbg !2463, !llvm.loop !2469

while.end:                                        ; preds = %while.cond
  %4 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2470
  ret %struct.mtd_info* %4, !dbg !2471
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mtd_is_partition(%struct.mtd_info* %mtd) #0 !dbg !2472 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !2477, metadata !DIExpression()), !dbg !2478
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !2479
  %parent = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 59, !dbg !2480
  %1 = load %struct.mtd_info*, %struct.mtd_info** %parent, align 8, !dbg !2480
  %tobool = icmp ne %struct.mtd_info* %1, null, !dbg !2479
  ret i1 %tobool, !dbg !2481
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_info* @allocate_partition(%struct.mtd_info* %parent, %struct.mtd_partition* %part, i32 %partno, i64 %cur_offset) #0 !dbg !2482 {
entry:
  %retval = alloca %struct.mtd_info*, align 8
  %parent.addr = alloca %struct.mtd_info*, align 8
  %part.addr = alloca %struct.mtd_partition*, align 8
  %partno.addr = alloca i32, align 4
  %cur_offset.addr = alloca i64, align 8
  %master = alloca %struct.mtd_info*, align 8
  %wr_alignment = alloca i32, align 4
  %parent_size = alloca i64, align 8
  %child = alloca %struct.mtd_info*, align 8
  %remainder = alloca i32, align 4
  %name = alloca i8*, align 8
  %tmp = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp65 = alloca i32, align 4
  %i = alloca i32, align 4
  %max = alloca i32, align 4
  %end = alloca i64, align 8
  %regions = alloca %struct.mtd_erase_region_info*, align 8
  %__base235 = alloca i32, align 4
  %__rem236 = alloca i32, align 4
  %tmp242 = alloca i32, align 4
  %__base257 = alloca i32, align 4
  %__rem258 = alloca i32, align 4
  %tmp264 = alloca i32, align 4
  %offs = alloca i64, align 8
  store %struct.mtd_info* %parent, %struct.mtd_info** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %parent.addr, metadata !2485, metadata !DIExpression()), !dbg !2486
  store %struct.mtd_partition* %part, %struct.mtd_partition** %part.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %part.addr, metadata !2487, metadata !DIExpression()), !dbg !2488
  store i32 %partno, i32* %partno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %partno.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  store i64 %cur_offset, i64* %cur_offset.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cur_offset.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master, metadata !2493, metadata !DIExpression()), !dbg !2494
  %0 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2495
  %call = call %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %0) #8, !dbg !2496
  store %struct.mtd_info* %call, %struct.mtd_info** %master, align 8, !dbg !2494
  call void @llvm.dbg.declare(metadata i32* %wr_alignment, metadata !2497, metadata !DIExpression()), !dbg !2498
  %1 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2499
  %flags = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 1, !dbg !2500
  %2 = load i32, i32* %flags, align 4, !dbg !2500
  %and = and i32 %2, 4096, !dbg !2501
  %tobool = icmp ne i32 %and, 0, !dbg !2501
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2502

cond.true:                                        ; preds = %entry
  %3 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2503
  %writesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 4, !dbg !2504
  %4 = load i32, i32* %writesize, align 4, !dbg !2504
  br label %cond.end, !dbg !2502

cond.false:                                       ; preds = %entry
  %5 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2505
  %erasesize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %5, i32 0, i32 3, !dbg !2506
  %6 = load i32, i32* %erasesize, align 8, !dbg !2506
  br label %cond.end, !dbg !2502

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %4, %cond.true ], [ %6, %cond.false ], !dbg !2502
  store i32 %cond, i32* %wr_alignment, align 4, !dbg !2498
  call void @llvm.dbg.declare(metadata i64* %parent_size, metadata !2507, metadata !DIExpression()), !dbg !2508
  %7 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2509
  %call1 = call zeroext i1 @mtd_is_partition(%struct.mtd_info* %7) #8, !dbg !2510
  br i1 %call1, label %cond.true2, label %cond.false4, !dbg !2510

cond.true2:                                       ; preds = %cond.end
  %8 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2511
  %9 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %8, i32 0, i32 61, !dbg !2512
  %part3 = bitcast %union.anon.38* %9 to %struct.mtd_part*, !dbg !2512
  %size = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part3, i32 0, i32 2, !dbg !2513
  %10 = load i64, i64* %size, align 8, !dbg !2513
  br label %cond.end6, !dbg !2510

cond.false4:                                      ; preds = %cond.end
  %11 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2514
  %size5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 2, !dbg !2515
  %12 = load i64, i64* %size5, align 8, !dbg !2515
  br label %cond.end6, !dbg !2510

cond.end6:                                        ; preds = %cond.false4, %cond.true2
  %cond7 = phi i64 [ %10, %cond.true2 ], [ %12, %cond.false4 ], !dbg !2510
  store i64 %cond7, i64* %parent_size, align 8, !dbg !2508
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %child, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata i32* %remainder, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.declare(metadata i8** %name, metadata !2520, metadata !DIExpression()), !dbg !2521
  call void @llvm.dbg.declare(metadata i64* %tmp, metadata !2522, metadata !DIExpression()), !dbg !2523
  %call8 = call i8* @kzalloc(i64 1208, i32 3264) #8, !dbg !2524
  %13 = bitcast i8* %call8 to %struct.mtd_info*, !dbg !2524
  store %struct.mtd_info* %13, %struct.mtd_info** %child, align 8, !dbg !2525
  %14 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2526
  %name9 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %14, i32 0, i32 0, !dbg !2527
  %15 = load i8*, i8** %name9, align 8, !dbg !2527
  %call10 = call noalias i8* @kstrdup(i8* %15, i32 3264) #8, !dbg !2528
  store i8* %call10, i8** %name, align 8, !dbg !2529
  %16 = load i8*, i8** %name, align 8, !dbg !2530
  %tobool11 = icmp ne i8* %16, null, !dbg !2530
  br i1 %tobool11, label %lor.lhs.false, label %if.then, !dbg !2532

lor.lhs.false:                                    ; preds = %cond.end6
  %17 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2533
  %tobool12 = icmp ne %struct.mtd_info* %17, null, !dbg !2533
  br i1 %tobool12, label %if.end, label %if.then, !dbg !2534

if.then:                                          ; preds = %lor.lhs.false, %cond.end6
  %18 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2535
  %name13 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 13, !dbg !2537
  %19 = load i8*, i8** %name13, align 8, !dbg !2537
  %call14 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0), i8* %19) #9, !dbg !2538
  %20 = load i8*, i8** %name, align 8, !dbg !2539
  call void @kfree(i8* %20) #8, !dbg !2540
  %21 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2541
  %22 = bitcast %struct.mtd_info* %21 to i8*, !dbg !2541
  call void @kfree(i8* %22) #8, !dbg !2542
  %call15 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2543
  %23 = bitcast i8* %call15 to %struct.mtd_info*, !dbg !2543
  store %struct.mtd_info* %23, %struct.mtd_info** %retval, align 8, !dbg !2544
  br label %return, !dbg !2544

if.end:                                           ; preds = %lor.lhs.false
  %24 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2545
  %type = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 0, !dbg !2546
  %25 = load i8, i8* %type, align 8, !dbg !2546
  %26 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2547
  %type16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 0, !dbg !2548
  store i8 %25, i8* %type16, align 8, !dbg !2549
  %27 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2550
  %flags17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 1, !dbg !2551
  %28 = load i32, i32* %flags17, align 4, !dbg !2551
  %29 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2552
  %mask_flags = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %29, i32 0, i32 4, !dbg !2553
  %30 = load i32, i32* %mask_flags, align 8, !dbg !2553
  %neg = xor i32 %30, -1, !dbg !2554
  %and18 = and i32 %28, %neg, !dbg !2555
  %31 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2556
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 61, !dbg !2557
  %part19 = bitcast %union.anon.38* %32 to %struct.mtd_part*, !dbg !2557
  %flags20 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part19, i32 0, i32 3, !dbg !2558
  store i32 %and18, i32* %flags20, align 8, !dbg !2559
  %33 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2560
  %add_flags = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %33, i32 0, i32 5, !dbg !2561
  %34 = load i32, i32* %add_flags, align 4, !dbg !2561
  %35 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2562
  %36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %35, i32 0, i32 61, !dbg !2563
  %part21 = bitcast %union.anon.38* %36 to %struct.mtd_part*, !dbg !2563
  %flags22 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part21, i32 0, i32 3, !dbg !2564
  %37 = load i32, i32* %flags22, align 8, !dbg !2565
  %or = or i32 %37, %34, !dbg !2565
  store i32 %or, i32* %flags22, align 8, !dbg !2565
  %38 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2566
  %39 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %38, i32 0, i32 61, !dbg !2567
  %part23 = bitcast %union.anon.38* %39 to %struct.mtd_part*, !dbg !2567
  %flags24 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part23, i32 0, i32 3, !dbg !2568
  %40 = load i32, i32* %flags24, align 8, !dbg !2568
  %41 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2569
  %flags25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %41, i32 0, i32 1, !dbg !2570
  store i32 %40, i32* %flags25, align 4, !dbg !2571
  %42 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2572
  %size26 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %42, i32 0, i32 2, !dbg !2573
  %43 = load i64, i64* %size26, align 8, !dbg !2573
  %44 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2574
  %45 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %44, i32 0, i32 61, !dbg !2575
  %part27 = bitcast %union.anon.38* %45 to %struct.mtd_part*, !dbg !2575
  %size28 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part27, i32 0, i32 2, !dbg !2576
  store i64 %43, i64* %size28, align 8, !dbg !2577
  %46 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2578
  %writesize29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %46, i32 0, i32 4, !dbg !2579
  %47 = load i32, i32* %writesize29, align 4, !dbg !2579
  %48 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2580
  %writesize30 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %48, i32 0, i32 4, !dbg !2581
  store i32 %47, i32* %writesize30, align 4, !dbg !2582
  %49 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2583
  %writebufsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %49, i32 0, i32 5, !dbg !2584
  %50 = load i32, i32* %writebufsize, align 8, !dbg !2584
  %51 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2585
  %writebufsize31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %51, i32 0, i32 5, !dbg !2586
  store i32 %50, i32* %writebufsize31, align 8, !dbg !2587
  %52 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2588
  %oobsize = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %52, i32 0, i32 6, !dbg !2589
  %53 = load i32, i32* %oobsize, align 4, !dbg !2589
  %54 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2590
  %oobsize32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %54, i32 0, i32 6, !dbg !2591
  store i32 %53, i32* %oobsize32, align 4, !dbg !2592
  %55 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2593
  %oobavail = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %55, i32 0, i32 7, !dbg !2594
  %56 = load i32, i32* %oobavail, align 8, !dbg !2594
  %57 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2595
  %oobavail33 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %57, i32 0, i32 7, !dbg !2596
  store i32 %56, i32* %oobavail33, align 8, !dbg !2597
  %58 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2598
  %subpage_sft = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %58, i32 0, i32 52, !dbg !2599
  %59 = load i32, i32* %subpage_sft, align 8, !dbg !2599
  %60 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2600
  %subpage_sft34 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %60, i32 0, i32 52, !dbg !2601
  store i32 %59, i32* %subpage_sft34, align 8, !dbg !2602
  %61 = load i8*, i8** %name, align 8, !dbg !2603
  %62 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2604
  %name35 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %62, i32 0, i32 13, !dbg !2605
  store i8* %61, i8** %name35, align 8, !dbg !2606
  %63 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2607
  %owner = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %63, i32 0, i32 54, !dbg !2608
  %64 = load %struct.module*, %struct.module** %owner, align 8, !dbg !2608
  %65 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2609
  %owner36 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %65, i32 0, i32 54, !dbg !2610
  store %struct.module* %64, %struct.module** %owner36, align 8, !dbg !2611
  %66 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2612
  %call37 = call zeroext i1 @mtd_is_partition(%struct.mtd_info* %66) #8, !dbg !2613
  br i1 %call37, label %cond.true38, label %cond.false39, !dbg !2614

cond.true38:                                      ; preds = %if.end
  %67 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2615
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %67, i32 0, i32 55, !dbg !2616
  br label %cond.end42, !dbg !2614

cond.false39:                                     ; preds = %if.end
  %68 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2617
  %dev40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %68, i32 0, i32 55, !dbg !2618
  %parent41 = getelementptr inbounds %struct.device, %struct.device* %dev40, i32 0, i32 1, !dbg !2619
  %69 = load %struct.device*, %struct.device** %parent41, align 8, !dbg !2619
  br label %cond.end42, !dbg !2614

cond.end42:                                       ; preds = %cond.false39, %cond.true38
  %cond43 = phi %struct.device* [ %dev, %cond.true38 ], [ %69, %cond.false39 ], !dbg !2614
  %70 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2620
  %dev44 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %70, i32 0, i32 55, !dbg !2621
  %parent45 = getelementptr inbounds %struct.device, %struct.device* %dev44, i32 0, i32 1, !dbg !2622
  store %struct.device* %cond43, %struct.device** %parent45, align 8, !dbg !2623
  %71 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2624
  %of_node = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %71, i32 0, i32 6, !dbg !2625
  %72 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2625
  %73 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2626
  %dev46 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %73, i32 0, i32 55, !dbg !2627
  %of_node47 = getelementptr inbounds %struct.device, %struct.device* %dev46, i32 0, i32 23, !dbg !2628
  store %struct.device_node* %72, %struct.device_node** %of_node47, align 8, !dbg !2629
  %74 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2630
  %75 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2631
  %parent48 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %75, i32 0, i32 59, !dbg !2632
  store %struct.mtd_info* %74, %struct.mtd_info** %parent48, align 8, !dbg !2633
  %76 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2634
  %offset = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %76, i32 0, i32 3, !dbg !2635
  %77 = load i64, i64* %offset, align 8, !dbg !2635
  %78 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2636
  %79 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %78, i32 0, i32 61, !dbg !2637
  %part49 = bitcast %union.anon.38* %79 to %struct.mtd_part*, !dbg !2637
  %offset50 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part49, i32 0, i32 1, !dbg !2638
  store i64 %77, i64* %offset50, align 8, !dbg !2639
  %80 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2640
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %80, i32 0, i32 60, !dbg !2641
  call void @INIT_LIST_HEAD(%struct.list_head* %partitions) #8, !dbg !2642
  %81 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2643
  %82 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %81, i32 0, i32 61, !dbg !2645
  %part51 = bitcast %union.anon.38* %82 to %struct.mtd_part*, !dbg !2645
  %offset52 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part51, i32 0, i32 1, !dbg !2646
  %83 = load i64, i64* %offset52, align 8, !dbg !2646
  %cmp = icmp eq i64 %83, -1, !dbg !2647
  br i1 %cmp, label %if.then53, label %if.end56, !dbg !2648

if.then53:                                        ; preds = %cond.end42
  %84 = load i64, i64* %cur_offset.addr, align 8, !dbg !2649
  %85 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2650
  %86 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %85, i32 0, i32 61, !dbg !2651
  %part54 = bitcast %union.anon.38* %86 to %struct.mtd_part*, !dbg !2651
  %offset55 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part54, i32 0, i32 1, !dbg !2652
  store i64 %84, i64* %offset55, align 8, !dbg !2653
  br label %if.end56, !dbg !2650

if.end56:                                         ; preds = %if.then53, %cond.end42
  %87 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2654
  %88 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %87, i32 0, i32 61, !dbg !2656
  %part57 = bitcast %union.anon.38* %88 to %struct.mtd_part*, !dbg !2656
  %offset58 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part57, i32 0, i32 1, !dbg !2657
  %89 = load i64, i64* %offset58, align 8, !dbg !2657
  %cmp59 = icmp eq i64 %89, -2, !dbg !2658
  br i1 %cmp59, label %if.then60, label %if.end75, !dbg !2659

if.then60:                                        ; preds = %if.end56
  %90 = load i64, i64* %cur_offset.addr, align 8, !dbg !2660
  store i64 %90, i64* %tmp, align 8, !dbg !2662
  %91 = load i64, i64* %cur_offset.addr, align 8, !dbg !2663
  %92 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2664
  %93 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %92, i32 0, i32 61, !dbg !2665
  %part61 = bitcast %union.anon.38* %93 to %struct.mtd_part*, !dbg !2665
  %offset62 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part61, i32 0, i32 1, !dbg !2666
  store i64 %91, i64* %offset62, align 8, !dbg !2667
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2668, metadata !DIExpression()), !dbg !2670
  %94 = load i32, i32* %wr_alignment, align 4, !dbg !2670
  store i32 %94, i32* %__base, align 4, !dbg !2670
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2671, metadata !DIExpression()), !dbg !2670
  %95 = load i64, i64* %tmp, align 8, !dbg !2670
  %96 = load i32, i32* %__base, align 4, !dbg !2670
  %conv = zext i32 %96 to i64, !dbg !2670
  %rem = urem i64 %95, %conv, !dbg !2670
  %conv63 = trunc i64 %rem to i32, !dbg !2670
  store i32 %conv63, i32* %__rem, align 4, !dbg !2670
  %97 = load i64, i64* %tmp, align 8, !dbg !2670
  %98 = load i32, i32* %__base, align 4, !dbg !2670
  %conv64 = zext i32 %98 to i64, !dbg !2670
  %div = udiv i64 %97, %conv64, !dbg !2670
  store i64 %div, i64* %tmp, align 8, !dbg !2670
  %99 = load i32, i32* %__rem, align 4, !dbg !2670
  store i32 %99, i32* %tmp65, align 4, !dbg !2670
  %100 = load i32, i32* %tmp65, align 4, !dbg !2670
  store i32 %100, i32* %remainder, align 4, !dbg !2672
  %101 = load i32, i32* %remainder, align 4, !dbg !2673
  %tobool66 = icmp ne i32 %101, 0, !dbg !2673
  br i1 %tobool66, label %if.then67, label %if.end74, !dbg !2675

if.then67:                                        ; preds = %if.then60
  %102 = load i32, i32* %wr_alignment, align 4, !dbg !2676
  %103 = load i32, i32* %remainder, align 4, !dbg !2678
  %sub = sub i32 %102, %103, !dbg !2679
  %conv68 = zext i32 %sub to i64, !dbg !2676
  %104 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2680
  %105 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %104, i32 0, i32 61, !dbg !2681
  %part69 = bitcast %union.anon.38* %105 to %struct.mtd_part*, !dbg !2681
  %offset70 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part69, i32 0, i32 1, !dbg !2682
  %106 = load i64, i64* %offset70, align 8, !dbg !2683
  %add = add i64 %106, %conv68, !dbg !2683
  store i64 %add, i64* %offset70, align 8, !dbg !2683
  %107 = load i32, i32* %partno.addr, align 4, !dbg !2684
  %108 = load i64, i64* %cur_offset.addr, align 8, !dbg !2685
  %109 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2686
  %110 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %109, i32 0, i32 61, !dbg !2687
  %part71 = bitcast %union.anon.38* %110 to %struct.mtd_part*, !dbg !2687
  %offset72 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part71, i32 0, i32 1, !dbg !2688
  %111 = load i64, i64* %offset72, align 8, !dbg !2688
  %call73 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.5, i64 0, i64 0), i32 %107, i64 %108, i64 %111) #9, !dbg !2689
  br label %if.end74, !dbg !2690

if.end74:                                         ; preds = %if.then67, %if.then60
  br label %if.end75, !dbg !2691

if.end75:                                         ; preds = %if.end74, %if.end56
  %112 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2692
  %113 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %112, i32 0, i32 61, !dbg !2694
  %part76 = bitcast %union.anon.38* %113 to %struct.mtd_part*, !dbg !2694
  %offset77 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part76, i32 0, i32 1, !dbg !2695
  %114 = load i64, i64* %offset77, align 8, !dbg !2695
  %cmp78 = icmp eq i64 %114, -3, !dbg !2696
  br i1 %cmp78, label %if.then80, label %if.end107, !dbg !2697

if.then80:                                        ; preds = %if.end75
  %115 = load i64, i64* %cur_offset.addr, align 8, !dbg !2698
  %116 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2700
  %117 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %116, i32 0, i32 61, !dbg !2701
  %part81 = bitcast %union.anon.38* %117 to %struct.mtd_part*, !dbg !2701
  %offset82 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part81, i32 0, i32 1, !dbg !2702
  store i64 %115, i64* %offset82, align 8, !dbg !2703
  %118 = load i64, i64* %parent_size, align 8, !dbg !2704
  %119 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2706
  %120 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %119, i32 0, i32 61, !dbg !2707
  %part83 = bitcast %union.anon.38* %120 to %struct.mtd_part*, !dbg !2707
  %offset84 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part83, i32 0, i32 1, !dbg !2708
  %121 = load i64, i64* %offset84, align 8, !dbg !2708
  %sub85 = sub i64 %118, %121, !dbg !2709
  %122 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2710
  %123 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %122, i32 0, i32 61, !dbg !2711
  %part86 = bitcast %union.anon.38* %123 to %struct.mtd_part*, !dbg !2711
  %size87 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part86, i32 0, i32 2, !dbg !2712
  %124 = load i64, i64* %size87, align 8, !dbg !2712
  %cmp88 = icmp uge i64 %sub85, %124, !dbg !2713
  br i1 %cmp88, label %if.then90, label %if.else, !dbg !2714

if.then90:                                        ; preds = %if.then80
  %125 = load i64, i64* %parent_size, align 8, !dbg !2715
  %126 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2717
  %127 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %126, i32 0, i32 61, !dbg !2718
  %part91 = bitcast %union.anon.38* %127 to %struct.mtd_part*, !dbg !2718
  %offset92 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part91, i32 0, i32 1, !dbg !2719
  %128 = load i64, i64* %offset92, align 8, !dbg !2719
  %sub93 = sub i64 %125, %128, !dbg !2720
  %129 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2721
  %130 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %129, i32 0, i32 61, !dbg !2722
  %part94 = bitcast %union.anon.38* %130 to %struct.mtd_part*, !dbg !2722
  %size95 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part94, i32 0, i32 2, !dbg !2723
  %131 = load i64, i64* %size95, align 8, !dbg !2723
  %sub96 = sub i64 %sub93, %131, !dbg !2724
  %132 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2725
  %133 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %132, i32 0, i32 61, !dbg !2726
  %part97 = bitcast %union.anon.38* %133 to %struct.mtd_part*, !dbg !2726
  %size98 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part97, i32 0, i32 2, !dbg !2727
  store i64 %sub96, i64* %size98, align 8, !dbg !2728
  br label %if.end106, !dbg !2729

if.else:                                          ; preds = %if.then80
  %134 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2730
  %name99 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %134, i32 0, i32 0, !dbg !2732
  %135 = load i8*, i8** %name99, align 8, !dbg !2732
  %136 = load i64, i64* %parent_size, align 8, !dbg !2733
  %137 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2734
  %138 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %137, i32 0, i32 61, !dbg !2735
  %part100 = bitcast %union.anon.38* %138 to %struct.mtd_part*, !dbg !2735
  %offset101 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part100, i32 0, i32 1, !dbg !2736
  %139 = load i64, i64* %offset101, align 8, !dbg !2736
  %sub102 = sub i64 %136, %139, !dbg !2737
  %140 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2738
  %141 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %140, i32 0, i32 61, !dbg !2739
  %part103 = bitcast %union.anon.38* %141 to %struct.mtd_part*, !dbg !2739
  %size104 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part103, i32 0, i32 2, !dbg !2740
  %142 = load i64, i64* %size104, align 8, !dbg !2740
  %call105 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.6, i64 0, i64 0), i8* %135, i64 %sub102, i64 %142) #9, !dbg !2741
  br label %out_register, !dbg !2742

if.end106:                                        ; preds = %if.then90
  br label %if.end107, !dbg !2743

if.end107:                                        ; preds = %if.end106, %if.end75
  %143 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2744
  %144 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %143, i32 0, i32 61, !dbg !2746
  %part108 = bitcast %union.anon.38* %144 to %struct.mtd_part*, !dbg !2746
  %size109 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part108, i32 0, i32 2, !dbg !2747
  %145 = load i64, i64* %size109, align 8, !dbg !2747
  %cmp110 = icmp eq i64 %145, 0, !dbg !2748
  br i1 %cmp110, label %if.then112, label %if.end118, !dbg !2749

if.then112:                                       ; preds = %if.end107
  %146 = load i64, i64* %parent_size, align 8, !dbg !2750
  %147 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2751
  %148 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %147, i32 0, i32 61, !dbg !2752
  %part113 = bitcast %union.anon.38* %148 to %struct.mtd_part*, !dbg !2752
  %offset114 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part113, i32 0, i32 1, !dbg !2753
  %149 = load i64, i64* %offset114, align 8, !dbg !2753
  %sub115 = sub i64 %146, %149, !dbg !2754
  %150 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2755
  %151 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %150, i32 0, i32 61, !dbg !2756
  %part116 = bitcast %union.anon.38* %151 to %struct.mtd_part*, !dbg !2756
  %size117 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part116, i32 0, i32 2, !dbg !2757
  store i64 %sub115, i64* %size117, align 8, !dbg !2758
  br label %if.end118, !dbg !2755

if.end118:                                        ; preds = %if.then112, %if.end107
  %152 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2759
  %153 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %152, i32 0, i32 61, !dbg !2760
  %part119 = bitcast %union.anon.38* %153 to %struct.mtd_part*, !dbg !2760
  %offset120 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part119, i32 0, i32 1, !dbg !2761
  %154 = load i64, i64* %offset120, align 8, !dbg !2761
  %155 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2762
  %156 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %155, i32 0, i32 61, !dbg !2763
  %part121 = bitcast %union.anon.38* %156 to %struct.mtd_part*, !dbg !2763
  %offset122 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part121, i32 0, i32 1, !dbg !2764
  %157 = load i64, i64* %offset122, align 8, !dbg !2764
  %158 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2765
  %159 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %158, i32 0, i32 61, !dbg !2766
  %part123 = bitcast %union.anon.38* %159 to %struct.mtd_part*, !dbg !2766
  %size124 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part123, i32 0, i32 2, !dbg !2767
  %160 = load i64, i64* %size124, align 8, !dbg !2767
  %add125 = add i64 %157, %160, !dbg !2768
  %161 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2769
  %name126 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %161, i32 0, i32 13, !dbg !2770
  %162 = load i8*, i8** %name126, align 8, !dbg !2770
  %call127 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i64 %154, i64 %add125, i8* %162) #9, !dbg !2771
  %163 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2772
  %164 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %163, i32 0, i32 61, !dbg !2774
  %part128 = bitcast %union.anon.38* %164 to %struct.mtd_part*, !dbg !2774
  %offset129 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part128, i32 0, i32 1, !dbg !2775
  %165 = load i64, i64* %offset129, align 8, !dbg !2775
  %166 = load i64, i64* %parent_size, align 8, !dbg !2776
  %cmp130 = icmp uge i64 %165, %166, !dbg !2777
  br i1 %cmp130, label %if.then132, label %if.end141, !dbg !2778

if.then132:                                       ; preds = %if.end118
  %167 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2779
  %168 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %167, i32 0, i32 61, !dbg !2781
  %part133 = bitcast %union.anon.38* %168 to %struct.mtd_part*, !dbg !2781
  %offset134 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part133, i32 0, i32 1, !dbg !2782
  store i64 0, i64* %offset134, align 8, !dbg !2783
  %169 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2784
  %170 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %169, i32 0, i32 61, !dbg !2785
  %part135 = bitcast %union.anon.38* %170 to %struct.mtd_part*, !dbg !2785
  %size136 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part135, i32 0, i32 2, !dbg !2786
  store i64 0, i64* %size136, align 8, !dbg !2787
  %171 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2788
  %erasesize137 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %171, i32 0, i32 3, !dbg !2789
  %172 = load i32, i32* %erasesize137, align 8, !dbg !2789
  %173 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2790
  %erasesize138 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %173, i32 0, i32 3, !dbg !2791
  store i32 %172, i32* %erasesize138, align 8, !dbg !2792
  %174 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2793
  %name139 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %174, i32 0, i32 0, !dbg !2794
  %175 = load i8*, i8** %name139, align 8, !dbg !2794
  %call140 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.8, i64 0, i64 0), i8* %175) #9, !dbg !2795
  br label %out_register, !dbg !2796

if.end141:                                        ; preds = %if.end118
  %176 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2797
  %177 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %176, i32 0, i32 61, !dbg !2799
  %part142 = bitcast %union.anon.38* %177 to %struct.mtd_part*, !dbg !2799
  %offset143 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part142, i32 0, i32 1, !dbg !2800
  %178 = load i64, i64* %offset143, align 8, !dbg !2800
  %179 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2801
  %180 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %179, i32 0, i32 61, !dbg !2802
  %part144 = bitcast %union.anon.38* %180 to %struct.mtd_part*, !dbg !2802
  %size145 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part144, i32 0, i32 2, !dbg !2803
  %181 = load i64, i64* %size145, align 8, !dbg !2803
  %add146 = add i64 %178, %181, !dbg !2804
  %182 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2805
  %size147 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %182, i32 0, i32 2, !dbg !2806
  %183 = load i64, i64* %size147, align 8, !dbg !2806
  %cmp148 = icmp ugt i64 %add146, %183, !dbg !2807
  br i1 %cmp148, label %if.then150, label %if.end161, !dbg !2808

if.then150:                                       ; preds = %if.end141
  %184 = load i64, i64* %parent_size, align 8, !dbg !2809
  %185 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2811
  %186 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %185, i32 0, i32 61, !dbg !2812
  %part151 = bitcast %union.anon.38* %186 to %struct.mtd_part*, !dbg !2812
  %offset152 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part151, i32 0, i32 1, !dbg !2813
  %187 = load i64, i64* %offset152, align 8, !dbg !2813
  %sub153 = sub i64 %184, %187, !dbg !2814
  %188 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2815
  %189 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %188, i32 0, i32 61, !dbg !2816
  %part154 = bitcast %union.anon.38* %189 to %struct.mtd_part*, !dbg !2816
  %size155 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part154, i32 0, i32 2, !dbg !2817
  store i64 %sub153, i64* %size155, align 8, !dbg !2818
  %190 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2819
  %name156 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %190, i32 0, i32 0, !dbg !2820
  %191 = load i8*, i8** %name156, align 8, !dbg !2820
  %192 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2821
  %name157 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %192, i32 0, i32 13, !dbg !2822
  %193 = load i8*, i8** %name157, align 8, !dbg !2822
  %194 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2823
  %195 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %194, i32 0, i32 61, !dbg !2824
  %part158 = bitcast %union.anon.38* %195 to %struct.mtd_part*, !dbg !2824
  %size159 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part158, i32 0, i32 2, !dbg !2825
  %196 = load i64, i64* %size159, align 8, !dbg !2825
  %call160 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.9, i64 0, i64 0), i8* %191, i8* %193, i64 %196) #9, !dbg !2826
  br label %if.end161, !dbg !2827

if.end161:                                        ; preds = %if.then150, %if.end141
  %197 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2828
  %numeraseregions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %197, i32 0, i32 19, !dbg !2830
  %198 = load i32, i32* %numeraseregions, align 8, !dbg !2830
  %cmp162 = icmp sgt i32 %198, 1, !dbg !2831
  br i1 %cmp162, label %if.then164, label %if.else224, !dbg !2832

if.then164:                                       ; preds = %if.end161
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2833, metadata !DIExpression()), !dbg !2835
  call void @llvm.dbg.declare(metadata i32* %max, metadata !2836, metadata !DIExpression()), !dbg !2837
  %199 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2838
  %numeraseregions165 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %199, i32 0, i32 19, !dbg !2839
  %200 = load i32, i32* %numeraseregions165, align 8, !dbg !2839
  store i32 %200, i32* %max, align 4, !dbg !2837
  call void @llvm.dbg.declare(metadata i64* %end, metadata !2840, metadata !DIExpression()), !dbg !2841
  %201 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2842
  %202 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %201, i32 0, i32 61, !dbg !2843
  %part166 = bitcast %union.anon.38* %202 to %struct.mtd_part*, !dbg !2843
  %offset167 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part166, i32 0, i32 1, !dbg !2844
  %203 = load i64, i64* %offset167, align 8, !dbg !2844
  %204 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2845
  %205 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %204, i32 0, i32 61, !dbg !2846
  %part168 = bitcast %union.anon.38* %205 to %struct.mtd_part*, !dbg !2846
  %size169 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part168, i32 0, i32 2, !dbg !2847
  %206 = load i64, i64* %size169, align 8, !dbg !2847
  %add170 = add i64 %203, %206, !dbg !2848
  store i64 %add170, i64* %end, align 8, !dbg !2841
  call void @llvm.dbg.declare(metadata %struct.mtd_erase_region_info** %regions, metadata !2849, metadata !DIExpression()), !dbg !2850
  %207 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !2851
  %eraseregions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %207, i32 0, i32 20, !dbg !2852
  %208 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %eraseregions, align 8, !dbg !2852
  store %struct.mtd_erase_region_info* %208, %struct.mtd_erase_region_info** %regions, align 8, !dbg !2850
  store i32 0, i32* %i, align 4, !dbg !2853
  br label %for.cond, !dbg !2855

for.cond:                                         ; preds = %for.inc, %if.then164
  %209 = load i32, i32* %i, align 4, !dbg !2856
  %210 = load i32, i32* %max, align 4, !dbg !2858
  %cmp171 = icmp slt i32 %209, %210, !dbg !2859
  br i1 %cmp171, label %land.rhs, label %land.end, !dbg !2860

land.rhs:                                         ; preds = %for.cond
  %211 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !2861
  %212 = load i32, i32* %i, align 4, !dbg !2862
  %idxprom = sext i32 %212 to i64, !dbg !2861
  %arrayidx = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %211, i64 %idxprom, !dbg !2861
  %offset173 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx, i32 0, i32 0, !dbg !2863
  %213 = load i64, i64* %offset173, align 8, !dbg !2863
  %214 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2864
  %215 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %214, i32 0, i32 61, !dbg !2865
  %part174 = bitcast %union.anon.38* %215 to %struct.mtd_part*, !dbg !2865
  %offset175 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part174, i32 0, i32 1, !dbg !2866
  %216 = load i64, i64* %offset175, align 8, !dbg !2866
  %cmp176 = icmp ule i64 %213, %216, !dbg !2867
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond
  %217 = phi i1 [ false, %for.cond ], [ %cmp176, %land.rhs ], !dbg !2868
  br i1 %217, label %for.body, label %for.end, !dbg !2869

for.body:                                         ; preds = %land.end
  br label %for.inc, !dbg !2869

for.inc:                                          ; preds = %for.body
  %218 = load i32, i32* %i, align 4, !dbg !2870
  %inc = add i32 %218, 1, !dbg !2870
  store i32 %inc, i32* %i, align 4, !dbg !2870
  br label %for.cond, !dbg !2871, !llvm.loop !2872

for.end:                                          ; preds = %land.end
  %219 = load i32, i32* %i, align 4, !dbg !2874
  %cmp178 = icmp sgt i32 %219, 0, !dbg !2876
  br i1 %cmp178, label %if.then180, label %if.end181, !dbg !2877

if.then180:                                       ; preds = %for.end
  %220 = load i32, i32* %i, align 4, !dbg !2878
  %dec = add i32 %220, -1, !dbg !2878
  store i32 %dec, i32* %i, align 4, !dbg !2878
  br label %if.end181, !dbg !2879

if.end181:                                        ; preds = %if.then180, %for.end
  br label %for.cond182, !dbg !2880

for.cond182:                                      ; preds = %for.inc205, %if.end181
  %221 = load i32, i32* %i, align 4, !dbg !2881
  %222 = load i32, i32* %max, align 4, !dbg !2884
  %cmp183 = icmp slt i32 %221, %222, !dbg !2885
  br i1 %cmp183, label %land.rhs185, label %land.end191, !dbg !2886

land.rhs185:                                      ; preds = %for.cond182
  %223 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !2887
  %224 = load i32, i32* %i, align 4, !dbg !2888
  %idxprom186 = sext i32 %224 to i64, !dbg !2887
  %arrayidx187 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %223, i64 %idxprom186, !dbg !2887
  %offset188 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx187, i32 0, i32 0, !dbg !2889
  %225 = load i64, i64* %offset188, align 8, !dbg !2889
  %226 = load i64, i64* %end, align 8, !dbg !2890
  %cmp189 = icmp ult i64 %225, %226, !dbg !2891
  br label %land.end191

land.end191:                                      ; preds = %land.rhs185, %for.cond182
  %227 = phi i1 [ false, %for.cond182 ], [ %cmp189, %land.rhs185 ], !dbg !2892
  br i1 %227, label %for.body192, label %for.end207, !dbg !2893

for.body192:                                      ; preds = %land.end191
  %228 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2894
  %erasesize193 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %228, i32 0, i32 3, !dbg !2897
  %229 = load i32, i32* %erasesize193, align 8, !dbg !2897
  %230 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !2898
  %231 = load i32, i32* %i, align 4, !dbg !2899
  %idxprom194 = sext i32 %231 to i64, !dbg !2898
  %arrayidx195 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %230, i64 %idxprom194, !dbg !2898
  %erasesize196 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx195, i32 0, i32 1, !dbg !2900
  %232 = load i32, i32* %erasesize196, align 8, !dbg !2900
  %cmp197 = icmp ult i32 %229, %232, !dbg !2901
  br i1 %cmp197, label %if.then199, label %if.end204, !dbg !2902

if.then199:                                       ; preds = %for.body192
  %233 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !2903
  %234 = load i32, i32* %i, align 4, !dbg !2904
  %idxprom200 = sext i32 %234 to i64, !dbg !2903
  %arrayidx201 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %233, i64 %idxprom200, !dbg !2903
  %erasesize202 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx201, i32 0, i32 1, !dbg !2905
  %235 = load i32, i32* %erasesize202, align 8, !dbg !2905
  %236 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2906
  %erasesize203 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %236, i32 0, i32 3, !dbg !2907
  store i32 %235, i32* %erasesize203, align 8, !dbg !2908
  br label %if.end204, !dbg !2906

if.end204:                                        ; preds = %if.then199, %for.body192
  br label %for.inc205, !dbg !2909

for.inc205:                                       ; preds = %if.end204
  %237 = load i32, i32* %i, align 4, !dbg !2910
  %inc206 = add i32 %237, 1, !dbg !2910
  store i32 %inc206, i32* %i, align 4, !dbg !2910
  br label %for.cond182, !dbg !2911, !llvm.loop !2912

for.end207:                                       ; preds = %land.end191
  br label %do.body, !dbg !2914

do.body:                                          ; preds = %for.end207
  %238 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2915
  %erasesize208 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %238, i32 0, i32 3, !dbg !2915
  %239 = load i32, i32* %erasesize208, align 8, !dbg !2915
  %cmp209 = icmp eq i32 %239, 0, !dbg !2915
  %lnot = xor i1 %cmp209, true, !dbg !2915
  %lnot211 = xor i1 %lnot, true, !dbg !2915
  %lnot.ext = zext i1 %lnot211 to i32, !dbg !2915
  %conv212 = sext i32 %lnot.ext to i64, !dbg !2915
  %tobool213 = icmp ne i64 %conv212, 0, !dbg !2915
  br i1 %tobool213, label %if.then214, label %if.end222, !dbg !2918

if.then214:                                       ; preds = %do.body
  br label %do.body215, !dbg !2915

do.body215:                                       ; preds = %if.then214
  br label %do.body216, !dbg !2919

do.body216:                                       ; preds = %do.body215
  br label %do.end, !dbg !2921

do.end:                                           ; preds = %do.body216
  br label %do.body217, !dbg !2919

do.body217:                                       ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.10, i64 0, i64 0), i32 161, i32 0, i64 12) #10, !dbg !2923, !srcloc !2925
  br label %do.end218, !dbg !2923

do.end218:                                        ; preds = %do.body217
  br label %do.body219, !dbg !2919

do.body219:                                       ; preds = %do.end218
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #10, !dbg !2926, !srcloc !2929
  unreachable, !dbg !2930

do.end220:                                        ; No predecessors!
  br label %do.end221, !dbg !2919

do.end221:                                        ; preds = %do.end220
  br label %if.end222, !dbg !2919

if.end222:                                        ; preds = %do.end221, %do.body
  br label %do.end223, !dbg !2918

do.end223:                                        ; preds = %if.end222
  br label %if.end227, !dbg !2931

if.else224:                                       ; preds = %if.end161
  %240 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !2932
  %erasesize225 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %240, i32 0, i32 3, !dbg !2934
  %241 = load i32, i32* %erasesize225, align 8, !dbg !2934
  %242 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2935
  %erasesize226 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %242, i32 0, i32 3, !dbg !2936
  store i32 %241, i32* %erasesize226, align 8, !dbg !2937
  br label %if.end227

if.end227:                                        ; preds = %if.else224, %do.end223
  %243 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2938
  %flags228 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %243, i32 0, i32 1, !dbg !2940
  %244 = load i32, i32* %flags228, align 4, !dbg !2940
  %and229 = and i32 %244, 4096, !dbg !2941
  %tobool230 = icmp ne i32 %and229, 0, !dbg !2941
  br i1 %tobool230, label %if.end233, label %if.then231, !dbg !2942

if.then231:                                       ; preds = %if.end227
  %245 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2943
  %erasesize232 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %245, i32 0, i32 3, !dbg !2944
  %246 = load i32, i32* %erasesize232, align 8, !dbg !2944
  store i32 %246, i32* %wr_alignment, align 4, !dbg !2945
  br label %if.end233, !dbg !2946

if.end233:                                        ; preds = %if.then231, %if.end227
  %247 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2947
  %call234 = call i64 @mtd_get_master_ofs(%struct.mtd_info* %247, i64 0) #8, !dbg !2948
  store i64 %call234, i64* %tmp, align 8, !dbg !2949
  call void @llvm.dbg.declare(metadata i32* %__base235, metadata !2950, metadata !DIExpression()), !dbg !2952
  %248 = load i32, i32* %wr_alignment, align 4, !dbg !2952
  store i32 %248, i32* %__base235, align 4, !dbg !2952
  call void @llvm.dbg.declare(metadata i32* %__rem236, metadata !2953, metadata !DIExpression()), !dbg !2952
  %249 = load i64, i64* %tmp, align 8, !dbg !2952
  %250 = load i32, i32* %__base235, align 4, !dbg !2952
  %conv237 = zext i32 %250 to i64, !dbg !2952
  %rem238 = urem i64 %249, %conv237, !dbg !2952
  %conv239 = trunc i64 %rem238 to i32, !dbg !2952
  store i32 %conv239, i32* %__rem236, align 4, !dbg !2952
  %251 = load i64, i64* %tmp, align 8, !dbg !2952
  %252 = load i32, i32* %__base235, align 4, !dbg !2952
  %conv240 = zext i32 %252 to i64, !dbg !2952
  %div241 = udiv i64 %251, %conv240, !dbg !2952
  store i64 %div241, i64* %tmp, align 8, !dbg !2952
  %253 = load i32, i32* %__rem236, align 4, !dbg !2952
  store i32 %253, i32* %tmp242, align 4, !dbg !2952
  %254 = load i32, i32* %tmp242, align 4, !dbg !2952
  store i32 %254, i32* %remainder, align 4, !dbg !2954
  %255 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2955
  %flags243 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %255, i32 0, i32 1, !dbg !2957
  %256 = load i32, i32* %flags243, align 4, !dbg !2957
  %and244 = and i32 %256, 1024, !dbg !2958
  %tobool245 = icmp ne i32 %and244, 0, !dbg !2958
  br i1 %tobool245, label %land.lhs.true, label %if.end252, !dbg !2959

land.lhs.true:                                    ; preds = %if.end233
  %257 = load i32, i32* %remainder, align 4, !dbg !2960
  %tobool246 = icmp ne i32 %257, 0, !dbg !2960
  br i1 %tobool246, label %if.then247, label %if.end252, !dbg !2961

if.then247:                                       ; preds = %land.lhs.true
  %258 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2962
  %flags248 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %258, i32 0, i32 1, !dbg !2964
  %259 = load i32, i32* %flags248, align 4, !dbg !2965
  %and249 = and i32 %259, -1025, !dbg !2965
  store i32 %and249, i32* %flags248, align 4, !dbg !2965
  %260 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2966
  %name250 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %260, i32 0, i32 0, !dbg !2967
  %261 = load i8*, i8** %name250, align 8, !dbg !2967
  %call251 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([89 x i8], [89 x i8]* @.str.11, i64 0, i64 0), i8* %261) #9, !dbg !2968
  br label %if.end252, !dbg !2969

if.end252:                                        ; preds = %if.then247, %land.lhs.true, %if.end233
  %262 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2970
  %call253 = call i64 @mtd_get_master_ofs(%struct.mtd_info* %262, i64 0) #8, !dbg !2971
  %263 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2972
  %264 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %263, i32 0, i32 61, !dbg !2973
  %part254 = bitcast %union.anon.38* %264 to %struct.mtd_part*, !dbg !2973
  %size255 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part254, i32 0, i32 2, !dbg !2974
  %265 = load i64, i64* %size255, align 8, !dbg !2974
  %add256 = add i64 %call253, %265, !dbg !2975
  store i64 %add256, i64* %tmp, align 8, !dbg !2976
  call void @llvm.dbg.declare(metadata i32* %__base257, metadata !2977, metadata !DIExpression()), !dbg !2979
  %266 = load i32, i32* %wr_alignment, align 4, !dbg !2979
  store i32 %266, i32* %__base257, align 4, !dbg !2979
  call void @llvm.dbg.declare(metadata i32* %__rem258, metadata !2980, metadata !DIExpression()), !dbg !2979
  %267 = load i64, i64* %tmp, align 8, !dbg !2979
  %268 = load i32, i32* %__base257, align 4, !dbg !2979
  %conv259 = zext i32 %268 to i64, !dbg !2979
  %rem260 = urem i64 %267, %conv259, !dbg !2979
  %conv261 = trunc i64 %rem260 to i32, !dbg !2979
  store i32 %conv261, i32* %__rem258, align 4, !dbg !2979
  %269 = load i64, i64* %tmp, align 8, !dbg !2979
  %270 = load i32, i32* %__base257, align 4, !dbg !2979
  %conv262 = zext i32 %270 to i64, !dbg !2979
  %div263 = udiv i64 %269, %conv262, !dbg !2979
  store i64 %div263, i64* %tmp, align 8, !dbg !2979
  %271 = load i32, i32* %__rem258, align 4, !dbg !2979
  store i32 %271, i32* %tmp264, align 4, !dbg !2979
  %272 = load i32, i32* %tmp264, align 4, !dbg !2979
  store i32 %272, i32* %remainder, align 4, !dbg !2981
  %273 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2982
  %flags265 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %273, i32 0, i32 1, !dbg !2984
  %274 = load i32, i32* %flags265, align 4, !dbg !2984
  %and266 = and i32 %274, 1024, !dbg !2985
  %tobool267 = icmp ne i32 %and266, 0, !dbg !2985
  br i1 %tobool267, label %land.lhs.true268, label %if.end275, !dbg !2986

land.lhs.true268:                                 ; preds = %if.end252
  %275 = load i32, i32* %remainder, align 4, !dbg !2987
  %tobool269 = icmp ne i32 %275, 0, !dbg !2987
  br i1 %tobool269, label %if.then270, label %if.end275, !dbg !2988

if.then270:                                       ; preds = %land.lhs.true268
  %276 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2989
  %flags271 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %276, i32 0, i32 1, !dbg !2991
  %277 = load i32, i32* %flags271, align 4, !dbg !2992
  %and272 = and i32 %277, -1025, !dbg !2992
  store i32 %and272, i32* %flags271, align 4, !dbg !2992
  %278 = load %struct.mtd_partition*, %struct.mtd_partition** %part.addr, align 8, !dbg !2993
  %name273 = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %278, i32 0, i32 0, !dbg !2994
  %279 = load i8*, i8** %name273, align 8, !dbg !2994
  %call274 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([78 x i8], [78 x i8]* @.str.12, i64 0, i64 0), i8* %279) #9, !dbg !2995
  br label %if.end275, !dbg !2996

if.end275:                                        ; preds = %if.then270, %land.lhs.true268, %if.end252
  %280 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !2997
  %281 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %280, i32 0, i32 61, !dbg !2998
  %part276 = bitcast %union.anon.38* %281 to %struct.mtd_part*, !dbg !2998
  %size277 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part276, i32 0, i32 2, !dbg !2999
  %282 = load i64, i64* %size277, align 8, !dbg !2999
  %283 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3000
  %size278 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %283, i32 0, i32 2, !dbg !3001
  store i64 %282, i64* %size278, align 8, !dbg !3002
  %284 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3003
  %ecc_step_size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %284, i32 0, i32 17, !dbg !3004
  %285 = load i32, i32* %ecc_step_size, align 8, !dbg !3004
  %286 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3005
  %ecc_step_size279 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %286, i32 0, i32 17, !dbg !3006
  store i32 %285, i32* %ecc_step_size279, align 8, !dbg !3007
  %287 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3008
  %ecc_strength = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %287, i32 0, i32 18, !dbg !3009
  %288 = load i32, i32* %ecc_strength, align 4, !dbg !3009
  %289 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3010
  %ecc_strength280 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %289, i32 0, i32 18, !dbg !3011
  store i32 %288, i32* %ecc_strength280, align 4, !dbg !3012
  %290 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3013
  %bitflip_threshold = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %290, i32 0, i32 12, !dbg !3014
  %291 = load i32, i32* %bitflip_threshold, align 4, !dbg !3014
  %292 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3015
  %bitflip_threshold281 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %292, i32 0, i32 12, !dbg !3016
  store i32 %291, i32* %bitflip_threshold281, align 4, !dbg !3017
  %293 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3018
  %_block_isbad = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %293, i32 0, i32 41, !dbg !3020
  %294 = load i32 (%struct.mtd_info*, i64)*, i32 (%struct.mtd_info*, i64)** %_block_isbad, align 8, !dbg !3020
  %tobool282 = icmp ne i32 (%struct.mtd_info*, i64)* %294, null, !dbg !3018
  br i1 %tobool282, label %if.then283, label %if.end303, !dbg !3021

if.then283:                                       ; preds = %if.end275
  call void @llvm.dbg.declare(metadata i64* %offs, metadata !3022, metadata !DIExpression()), !dbg !3024
  store i64 0, i64* %offs, align 8, !dbg !3024
  br label %while.cond, !dbg !3025

while.cond:                                       ; preds = %if.end299, %if.then283
  %295 = load i64, i64* %offs, align 8, !dbg !3026
  %296 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3027
  %297 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %296, i32 0, i32 61, !dbg !3028
  %part284 = bitcast %union.anon.38* %297 to %struct.mtd_part*, !dbg !3028
  %size285 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part284, i32 0, i32 2, !dbg !3029
  %298 = load i64, i64* %size285, align 8, !dbg !3029
  %cmp286 = icmp ult i64 %295, %298, !dbg !3030
  br i1 %cmp286, label %while.body, label %while.end, !dbg !3025

while.body:                                       ; preds = %while.cond
  %299 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3031
  %300 = load i64, i64* %offs, align 8, !dbg !3034
  %call288 = call i32 @mtd_block_isreserved(%struct.mtd_info* %299, i64 %300) #8, !dbg !3035
  %tobool289 = icmp ne i32 %call288, 0, !dbg !3035
  br i1 %tobool289, label %if.then290, label %if.else292, !dbg !3036

if.then290:                                       ; preds = %while.body
  %301 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3037
  %ecc_stats = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %301, i32 0, i32 51, !dbg !3038
  %bbtblocks = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats, i32 0, i32 3, !dbg !3039
  %302 = load i32, i32* %bbtblocks, align 4, !dbg !3040
  %inc291 = add i32 %302, 1, !dbg !3040
  store i32 %inc291, i32* %bbtblocks, align 4, !dbg !3040
  br label %if.end299, !dbg !3037

if.else292:                                       ; preds = %while.body
  %303 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3041
  %304 = load i64, i64* %offs, align 8, !dbg !3043
  %call293 = call i32 @mtd_block_isbad(%struct.mtd_info* %303, i64 %304) #8, !dbg !3044
  %tobool294 = icmp ne i32 %call293, 0, !dbg !3044
  br i1 %tobool294, label %if.then295, label %if.end298, !dbg !3045

if.then295:                                       ; preds = %if.else292
  %305 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3046
  %ecc_stats296 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %305, i32 0, i32 51, !dbg !3047
  %badblocks = getelementptr inbounds %struct.mtd_ecc_stats, %struct.mtd_ecc_stats* %ecc_stats296, i32 0, i32 2, !dbg !3048
  %306 = load i32, i32* %badblocks, align 8, !dbg !3049
  %inc297 = add i32 %306, 1, !dbg !3049
  store i32 %inc297, i32* %badblocks, align 8, !dbg !3049
  br label %if.end298, !dbg !3046

if.end298:                                        ; preds = %if.then295, %if.else292
  br label %if.end299

if.end299:                                        ; preds = %if.end298, %if.then290
  %307 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3050
  %erasesize300 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %307, i32 0, i32 3, !dbg !3051
  %308 = load i32, i32* %erasesize300, align 8, !dbg !3051
  %conv301 = zext i32 %308 to i64, !dbg !3050
  %309 = load i64, i64* %offs, align 8, !dbg !3052
  %add302 = add i64 %309, %conv301, !dbg !3052
  store i64 %add302, i64* %offs, align 8, !dbg !3052
  br label %while.cond, !dbg !3025, !llvm.loop !3053

while.end:                                        ; preds = %while.cond
  br label %if.end303, !dbg !3055

if.end303:                                        ; preds = %while.end, %if.end275
  br label %out_register, !dbg !3020

out_register:                                     ; preds = %if.end303, %if.then132, %if.else
  call void @llvm.dbg.label(metadata !3056), !dbg !3057
  %310 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3058
  store %struct.mtd_info* %310, %struct.mtd_info** %retval, align 8, !dbg !3059
  br label %return, !dbg !3059

return:                                           ; preds = %out_register, %if.then
  %311 = load %struct.mtd_info*, %struct.mtd_info** %retval, align 8, !dbg !3060
  ret %struct.mtd_info* %311, !dbg !3060
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !3061 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3065, metadata !DIExpression()), !dbg !3066
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3067
  %1 = ptrtoint i8* %0 to i64, !dbg !3067
  %2 = inttoptr i64 %1 to i8*, !dbg !3067
  %3 = ptrtoint i8* %2 to i64, !dbg !3067
  %cmp = icmp uge i64 %3, -4095, !dbg !3067
  %lnot = xor i1 %cmp, true, !dbg !3067
  %lnot1 = xor i1 %lnot, true, !dbg !3067
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3067
  %conv = sext i32 %lnot.ext to i64, !dbg !3067
  %tobool = icmp ne i64 %conv, 0, !dbg !3067
  ret i1 %tobool, !dbg !3068
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3069 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3072, metadata !DIExpression()), !dbg !3073
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3074
  %1 = ptrtoint i8* %0 to i64, !dbg !3075
  ret i64 %1, !dbg !3076
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3077 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3081, metadata !DIExpression()), !dbg !3082
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3085
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3086
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3087
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3087
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3088
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #8, !dbg !3089
  ret void, !dbg !3090
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noredzone
declare dso_local i32 @add_mtd_device(%struct.mtd_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtd_add_partition_attrs(%struct.mtd_info* %new) #0 !dbg !3091 {
entry:
  %new.addr = alloca %struct.mtd_info*, align 8
  %ret = alloca i32, align 4
  store %struct.mtd_info* %new, %struct.mtd_info** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %new.addr, metadata !3092, metadata !DIExpression()), !dbg !3093
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3094, metadata !DIExpression()), !dbg !3095
  %0 = load %struct.mtd_info*, %struct.mtd_info** %new.addr, align 8, !dbg !3096
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 55, !dbg !3097
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3098
  %call = call i32 @sysfs_create_files(%struct.kobject* %kobj, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @mtd_partition_attrs, i64 0, i64 0)) #8, !dbg !3099
  store i32 %call, i32* %ret, align 4, !dbg !3095
  %1 = load i32, i32* %ret, align 4, !dbg !3100
  %tobool = icmp ne i32 %1, 0, !dbg !3100
  br i1 %tobool, label %if.then, label %if.end, !dbg !3102

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %ret, align 4, !dbg !3103
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.14, i64 0, i64 0), i32 %2) #9, !dbg !3104
  br label %if.end, !dbg !3104

if.end:                                           ; preds = %if.then, %entry
  %3 = load i32, i32* %ret, align 4, !dbg !3105
  ret i32 %3, !dbg !3106
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !3107 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3110, metadata !DIExpression()), !dbg !3111
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3112
  call void @__list_del_entry(%struct.list_head* %0) #8, !dbg !3113
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3114
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3115
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !3116
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3117
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !3118
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !3119
  ret void, !dbg !3120
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @free_partition(%struct.mtd_info* %mtd) #0 !dbg !3121 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3122, metadata !DIExpression()), !dbg !3123
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3124
  %name = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 13, !dbg !3125
  %1 = load i8*, i8** %name, align 8, !dbg !3125
  call void @kfree(i8* %1) #8, !dbg !3126
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3127
  %3 = bitcast %struct.mtd_info* %2 to i8*, !dbg !3127
  call void @kfree(i8* %3) #8, !dbg !3128
  ret void, !dbg !3129
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @del_mtd_partitions(%struct.mtd_info* %mtd) #0 !dbg !3130 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %master = alloca %struct.mtd_info*, align 8
  %ret = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3131, metadata !DIExpression()), !dbg !3132
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master, metadata !3133, metadata !DIExpression()), !dbg !3134
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3135
  %call = call %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %0) #8, !dbg !3136
  store %struct.mtd_info* %call, %struct.mtd_info** %master, align 8, !dbg !3134
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3137, metadata !DIExpression()), !dbg !3138
  %1 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3139
  %name = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 13, !dbg !3139
  %2 = load i8*, i8** %name, align 8, !dbg !3139
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %2) #9, !dbg !3139
  %3 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3140
  %4 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 61, !dbg !3141
  %master2 = bitcast %union.anon.38* %4 to %struct.mtd_master*, !dbg !3141
  %partitions_lock = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master2, i32 0, i32 0, !dbg !3142
  call void @mutex_lock(%struct.mutex* %partitions_lock) #8, !dbg !3143
  %5 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3144
  %call3 = call i32 @__del_mtd_partitions(%struct.mtd_info* %5) #8, !dbg !3145
  store i32 %call3, i32* %ret, align 4, !dbg !3146
  %6 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3147
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 61, !dbg !3148
  %master4 = bitcast %union.anon.38* %7 to %struct.mtd_master*, !dbg !3148
  %partitions_lock5 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master4, i32 0, i32 0, !dbg !3149
  call void @mutex_unlock(%struct.mutex* %partitions_lock5) #8, !dbg !3150
  %8 = load i32, i32* %ret, align 4, !dbg !3151
  ret i32 %8, !dbg !3152
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__del_mtd_partitions(%struct.mtd_info* %mtd) #0 !dbg !3153 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %child = alloca %struct.mtd_info*, align 8
  %next = alloca %struct.mtd_info*, align 8
  %tmp_list = alloca %struct.list_head, align 8
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtd_info*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.mtd_info*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp28 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %child, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %next, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.declare(metadata %struct.list_head* %tmp_list, metadata !3160, metadata !DIExpression()), !dbg !3161
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp_list, i32 0, i32 0, !dbg !3161
  store %struct.list_head* %tmp_list, %struct.list_head** %next1, align 8, !dbg !3161
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %tmp_list, i32 0, i32 1, !dbg !3161
  store %struct.list_head* %tmp_list, %struct.list_head** %prev, align 8, !dbg !3161
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3164, metadata !DIExpression()), !dbg !3165
  store i32 0, i32* %err, align 4, !dbg !3165
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3166, metadata !DIExpression()), !dbg !3169
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3169
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 60, !dbg !3169
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %partitions, i32 0, i32 0, !dbg !3169
  %1 = load %struct.list_head*, %struct.list_head** %next2, align 8, !dbg !3169
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3169
  store i8* %2, i8** %__mptr, align 8, !dbg !3169
  br label %do.body, !dbg !3169

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3170

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3169
  %add.ptr = getelementptr i8, i8* %3, i64 -1168, !dbg !3169
  %4 = bitcast i8* %add.ptr to %struct.mtd_info*, !dbg !3169
  store %struct.mtd_info* %4, %struct.mtd_info** %tmp, align 8, !dbg !3170
  %5 = load %struct.mtd_info*, %struct.mtd_info** %tmp, align 8, !dbg !3169
  store %struct.mtd_info* %5, %struct.mtd_info** %child, align 8, !dbg !3172
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !3173, metadata !DIExpression()), !dbg !3175
  %6 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3175
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 61, !dbg !3175
  %part = bitcast %union.anon.38* %7 to %struct.mtd_part*, !dbg !3175
  %node = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 0, !dbg !3175
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !3175
  %8 = load %struct.list_head*, %struct.list_head** %next4, align 8, !dbg !3175
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !3175
  store i8* %9, i8** %__mptr3, align 8, !dbg !3175
  br label %do.body5, !dbg !3175

do.body5:                                         ; preds = %do.end
  br label %do.end6, !dbg !3176

do.end6:                                          ; preds = %do.body5
  %10 = load i8*, i8** %__mptr3, align 8, !dbg !3175
  %add.ptr8 = getelementptr i8, i8* %10, i64 -1168, !dbg !3175
  %11 = bitcast i8* %add.ptr8 to %struct.mtd_info*, !dbg !3175
  store %struct.mtd_info* %11, %struct.mtd_info** %tmp7, align 8, !dbg !3176
  %12 = load %struct.mtd_info*, %struct.mtd_info** %tmp7, align 8, !dbg !3175
  store %struct.mtd_info* %12, %struct.mtd_info** %next, align 8, !dbg !3172
  br label %for.cond, !dbg !3172

for.cond:                                         ; preds = %do.end27, %do.end6
  %13 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3178
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 61, !dbg !3178
  %part9 = bitcast %union.anon.38* %14 to %struct.mtd_part*, !dbg !3178
  %node10 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part9, i32 0, i32 0, !dbg !3178
  %15 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3178
  %partitions11 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 60, !dbg !3178
  %cmp = icmp eq %struct.list_head* %node10, %partitions11, !dbg !3178
  %lnot = xor i1 %cmp, true, !dbg !3178
  br i1 %lnot, label %for.body, label %for.end, !dbg !3172

for.body:                                         ; preds = %for.cond
  %16 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3180
  %call = call zeroext i1 @mtd_has_partitions(%struct.mtd_info* %16) #8, !dbg !3183
  br i1 %call, label %if.then, label %if.end, !dbg !3184

if.then:                                          ; preds = %for.body
  %17 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3185
  %call12 = call i32 @del_mtd_partitions(%struct.mtd_info* %17) #8, !dbg !3186
  br label %if.end, !dbg !3186

if.end:                                           ; preds = %if.then, %for.body
  %18 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3187
  %name = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %18, i32 0, i32 13, !dbg !3187
  %19 = load i8*, i8** %name, align 8, !dbg !3187
  %call13 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.17, i64 0, i64 0), i8* %19) #9, !dbg !3187
  %20 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3188
  %call14 = call i32 @del_mtd_device(%struct.mtd_info* %20) #8, !dbg !3189
  store i32 %call14, i32* %ret, align 4, !dbg !3190
  %21 = load i32, i32* %ret, align 4, !dbg !3191
  %cmp15 = icmp slt i32 %21, 0, !dbg !3193
  br i1 %cmp15, label %if.then16, label %if.end19, !dbg !3194

if.then16:                                        ; preds = %if.end
  %22 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3195
  %name17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %22, i32 0, i32 13, !dbg !3195
  %23 = load i8*, i8** %name17, align 8, !dbg !3195
  %24 = load i32, i32* %ret, align 4, !dbg !3195
  %call18 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.18, i64 0, i64 0), i8* %23, i32 %24) #9, !dbg !3195
  %25 = load i32, i32* %ret, align 4, !dbg !3197
  store i32 %25, i32* %err, align 4, !dbg !3198
  br label %for.inc, !dbg !3199

if.end19:                                         ; preds = %if.end
  %26 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3200
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 61, !dbg !3201
  %part20 = bitcast %union.anon.38* %27 to %struct.mtd_part*, !dbg !3201
  %node21 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part20, i32 0, i32 0, !dbg !3202
  call void @list_del(%struct.list_head* %node21) #8, !dbg !3203
  %28 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3204
  call void @free_partition(%struct.mtd_info* %28) #8, !dbg !3205
  br label %for.inc, !dbg !3206

for.inc:                                          ; preds = %if.end19, %if.then16
  %29 = load %struct.mtd_info*, %struct.mtd_info** %next, align 8, !dbg !3178
  store %struct.mtd_info* %29, %struct.mtd_info** %child, align 8, !dbg !3178
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !3207, metadata !DIExpression()), !dbg !3209
  %30 = load %struct.mtd_info*, %struct.mtd_info** %next, align 8, !dbg !3209
  %31 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %30, i32 0, i32 61, !dbg !3209
  %part23 = bitcast %union.anon.38* %31 to %struct.mtd_part*, !dbg !3209
  %node24 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part23, i32 0, i32 0, !dbg !3209
  %next25 = getelementptr inbounds %struct.list_head, %struct.list_head* %node24, i32 0, i32 0, !dbg !3209
  %32 = load %struct.list_head*, %struct.list_head** %next25, align 8, !dbg !3209
  %33 = bitcast %struct.list_head* %32 to i8*, !dbg !3209
  store i8* %33, i8** %__mptr22, align 8, !dbg !3209
  br label %do.body26, !dbg !3209

do.body26:                                        ; preds = %for.inc
  br label %do.end27, !dbg !3210

do.end27:                                         ; preds = %do.body26
  %34 = load i8*, i8** %__mptr22, align 8, !dbg !3209
  %add.ptr29 = getelementptr i8, i8* %34, i64 -1168, !dbg !3209
  %35 = bitcast i8* %add.ptr29 to %struct.mtd_info*, !dbg !3209
  store %struct.mtd_info* %35, %struct.mtd_info** %tmp28, align 8, !dbg !3210
  %36 = load %struct.mtd_info*, %struct.mtd_info** %tmp28, align 8, !dbg !3209
  store %struct.mtd_info* %36, %struct.mtd_info** %next, align 8, !dbg !3178
  br label %for.cond, !dbg !3178, !llvm.loop !3212

for.end:                                          ; preds = %for.cond
  %37 = load i32, i32* %err, align 4, !dbg !3214
  ret i32 %37, !dbg !3215
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @mtd_del_partition(%struct.mtd_info* %mtd, i32 %partno) #0 !dbg !3216 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %partno.addr = alloca i32, align 4
  %child = alloca %struct.mtd_info*, align 8
  %master = alloca %struct.mtd_info*, align 8
  %ret = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtd_info*, align 8
  %__mptr5 = alloca i8*, align 8
  %tmp11 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3219, metadata !DIExpression()), !dbg !3220
  store i32 %partno, i32* %partno.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %partno.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %child, metadata !3223, metadata !DIExpression()), !dbg !3224
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master, metadata !3225, metadata !DIExpression()), !dbg !3226
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3227
  %call = call %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %0) #8, !dbg !3228
  store %struct.mtd_info* %call, %struct.mtd_info** %master, align 8, !dbg !3226
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3229, metadata !DIExpression()), !dbg !3230
  store i32 -22, i32* %ret, align 4, !dbg !3230
  %1 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3231
  %2 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 61, !dbg !3232
  %master1 = bitcast %union.anon.38* %2 to %struct.mtd_master*, !dbg !3232
  %partitions_lock = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master1, i32 0, i32 0, !dbg !3233
  call void @mutex_lock(%struct.mutex* %partitions_lock) #8, !dbg !3234
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3235, metadata !DIExpression()), !dbg !3238
  %3 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3238
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 60, !dbg !3238
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %partitions, i32 0, i32 0, !dbg !3238
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3238
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !3238
  store i8* %5, i8** %__mptr, align 8, !dbg !3238
  br label %do.body, !dbg !3238

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3239

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3238
  %add.ptr = getelementptr i8, i8* %6, i64 -1168, !dbg !3238
  %7 = bitcast i8* %add.ptr to %struct.mtd_info*, !dbg !3238
  store %struct.mtd_info* %7, %struct.mtd_info** %tmp, align 8, !dbg !3239
  %8 = load %struct.mtd_info*, %struct.mtd_info** %tmp, align 8, !dbg !3238
  store %struct.mtd_info* %8, %struct.mtd_info** %child, align 8, !dbg !3241
  br label %for.cond, !dbg !3241

for.cond:                                         ; preds = %do.end10, %do.end
  %9 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3242
  %10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 61, !dbg !3242
  %part = bitcast %union.anon.38* %10 to %struct.mtd_part*, !dbg !3242
  %node = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 0, !dbg !3242
  %11 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3242
  %partitions2 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 60, !dbg !3242
  %cmp = icmp eq %struct.list_head* %node, %partitions2, !dbg !3242
  %lnot = xor i1 %cmp, true, !dbg !3242
  br i1 %lnot, label %for.body, label %for.end, !dbg !3241

for.body:                                         ; preds = %for.cond
  %12 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3244
  %index = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %12, i32 0, i32 14, !dbg !3247
  %13 = load i32, i32* %index, align 8, !dbg !3247
  %14 = load i32, i32* %partno.addr, align 4, !dbg !3248
  %cmp3 = icmp eq i32 %13, %14, !dbg !3249
  br i1 %cmp3, label %if.then, label %if.end, !dbg !3250

if.then:                                          ; preds = %for.body
  %15 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3251
  %call4 = call i32 @__mtd_del_partition(%struct.mtd_info* %15) #8, !dbg !3253
  store i32 %call4, i32* %ret, align 4, !dbg !3254
  br label %for.end, !dbg !3255

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3256

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr5, metadata !3257, metadata !DIExpression()), !dbg !3259
  %16 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3259
  %17 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %16, i32 0, i32 61, !dbg !3259
  %part6 = bitcast %union.anon.38* %17 to %struct.mtd_part*, !dbg !3259
  %node7 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part6, i32 0, i32 0, !dbg !3259
  %next8 = getelementptr inbounds %struct.list_head, %struct.list_head* %node7, i32 0, i32 0, !dbg !3259
  %18 = load %struct.list_head*, %struct.list_head** %next8, align 8, !dbg !3259
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !3259
  store i8* %19, i8** %__mptr5, align 8, !dbg !3259
  br label %do.body9, !dbg !3259

do.body9:                                         ; preds = %for.inc
  br label %do.end10, !dbg !3260

do.end10:                                         ; preds = %do.body9
  %20 = load i8*, i8** %__mptr5, align 8, !dbg !3259
  %add.ptr12 = getelementptr i8, i8* %20, i64 -1168, !dbg !3259
  %21 = bitcast i8* %add.ptr12 to %struct.mtd_info*, !dbg !3259
  store %struct.mtd_info* %21, %struct.mtd_info** %tmp11, align 8, !dbg !3260
  %22 = load %struct.mtd_info*, %struct.mtd_info** %tmp11, align 8, !dbg !3259
  store %struct.mtd_info* %22, %struct.mtd_info** %child, align 8, !dbg !3242
  br label %for.cond, !dbg !3242, !llvm.loop !3262

for.end:                                          ; preds = %if.then, %for.cond
  %23 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3264
  %24 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %23, i32 0, i32 61, !dbg !3265
  %master13 = bitcast %union.anon.38* %24 to %struct.mtd_master*, !dbg !3265
  %partitions_lock14 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master13, i32 0, i32 0, !dbg !3266
  call void @mutex_unlock(%struct.mutex* %partitions_lock14) #8, !dbg !3267
  %25 = load i32, i32* %ret, align 4, !dbg !3268
  ret i32 %25, !dbg !3269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @__mtd_del_partition(%struct.mtd_info* %mtd) #0 !dbg !3270 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %child = alloca %struct.mtd_info*, align 8
  %next = alloca %struct.mtd_info*, align 8
  %err = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtd_info*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp6 = alloca %struct.mtd_info*, align 8
  %__mptr11 = alloca i8*, align 8
  %tmp17 = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3271, metadata !DIExpression()), !dbg !3272
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %child, metadata !3273, metadata !DIExpression()), !dbg !3274
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %next, metadata !3275, metadata !DIExpression()), !dbg !3276
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3277, metadata !DIExpression()), !dbg !3278
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3279, metadata !DIExpression()), !dbg !3282
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3282
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 60, !dbg !3282
  %next1 = getelementptr inbounds %struct.list_head, %struct.list_head* %partitions, i32 0, i32 0, !dbg !3282
  %1 = load %struct.list_head*, %struct.list_head** %next1, align 8, !dbg !3282
  %2 = bitcast %struct.list_head* %1 to i8*, !dbg !3282
  store i8* %2, i8** %__mptr, align 8, !dbg !3282
  br label %do.body, !dbg !3282

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3283

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3282
  %add.ptr = getelementptr i8, i8* %3, i64 -1168, !dbg !3282
  %4 = bitcast i8* %add.ptr to %struct.mtd_info*, !dbg !3282
  store %struct.mtd_info* %4, %struct.mtd_info** %tmp, align 8, !dbg !3283
  %5 = load %struct.mtd_info*, %struct.mtd_info** %tmp, align 8, !dbg !3282
  store %struct.mtd_info* %5, %struct.mtd_info** %child, align 8, !dbg !3285
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3286, metadata !DIExpression()), !dbg !3288
  %6 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3288
  %7 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 61, !dbg !3288
  %part = bitcast %union.anon.38* %7 to %struct.mtd_part*, !dbg !3288
  %node = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 0, !dbg !3288
  %next3 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !3288
  %8 = load %struct.list_head*, %struct.list_head** %next3, align 8, !dbg !3288
  %9 = bitcast %struct.list_head* %8 to i8*, !dbg !3288
  store i8* %9, i8** %__mptr2, align 8, !dbg !3288
  br label %do.body4, !dbg !3288

do.body4:                                         ; preds = %do.end
  br label %do.end5, !dbg !3289

do.end5:                                          ; preds = %do.body4
  %10 = load i8*, i8** %__mptr2, align 8, !dbg !3288
  %add.ptr7 = getelementptr i8, i8* %10, i64 -1168, !dbg !3288
  %11 = bitcast i8* %add.ptr7 to %struct.mtd_info*, !dbg !3288
  store %struct.mtd_info* %11, %struct.mtd_info** %tmp6, align 8, !dbg !3289
  %12 = load %struct.mtd_info*, %struct.mtd_info** %tmp6, align 8, !dbg !3288
  store %struct.mtd_info* %12, %struct.mtd_info** %next, align 8, !dbg !3285
  br label %for.cond, !dbg !3285

for.cond:                                         ; preds = %do.end16, %do.end5
  %13 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3291
  %14 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %13, i32 0, i32 61, !dbg !3291
  %part8 = bitcast %union.anon.38* %14 to %struct.mtd_part*, !dbg !3291
  %node9 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part8, i32 0, i32 0, !dbg !3291
  %15 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3291
  %partitions10 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 60, !dbg !3291
  %cmp = icmp eq %struct.list_head* %node9, %partitions10, !dbg !3291
  %lnot = xor i1 %cmp, true, !dbg !3291
  br i1 %lnot, label %for.body, label %for.end, !dbg !3285

for.body:                                         ; preds = %for.cond
  %16 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3293
  %call = call i32 @__mtd_del_partition(%struct.mtd_info* %16) #8, !dbg !3295
  store i32 %call, i32* %err, align 4, !dbg !3296
  %17 = load i32, i32* %err, align 4, !dbg !3297
  %tobool = icmp ne i32 %17, 0, !dbg !3297
  br i1 %tobool, label %if.then, label %if.end, !dbg !3299

if.then:                                          ; preds = %for.body
  %18 = load i32, i32* %err, align 4, !dbg !3300
  store i32 %18, i32* %retval, align 4, !dbg !3301
  br label %return, !dbg !3301

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3302

for.inc:                                          ; preds = %if.end
  %19 = load %struct.mtd_info*, %struct.mtd_info** %next, align 8, !dbg !3291
  store %struct.mtd_info* %19, %struct.mtd_info** %child, align 8, !dbg !3291
  call void @llvm.dbg.declare(metadata i8** %__mptr11, metadata !3303, metadata !DIExpression()), !dbg !3305
  %20 = load %struct.mtd_info*, %struct.mtd_info** %next, align 8, !dbg !3305
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 61, !dbg !3305
  %part12 = bitcast %union.anon.38* %21 to %struct.mtd_part*, !dbg !3305
  %node13 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part12, i32 0, i32 0, !dbg !3305
  %next14 = getelementptr inbounds %struct.list_head, %struct.list_head* %node13, i32 0, i32 0, !dbg !3305
  %22 = load %struct.list_head*, %struct.list_head** %next14, align 8, !dbg !3305
  %23 = bitcast %struct.list_head* %22 to i8*, !dbg !3305
  store i8* %23, i8** %__mptr11, align 8, !dbg !3305
  br label %do.body15, !dbg !3305

do.body15:                                        ; preds = %for.inc
  br label %do.end16, !dbg !3306

do.end16:                                         ; preds = %do.body15
  %24 = load i8*, i8** %__mptr11, align 8, !dbg !3305
  %add.ptr18 = getelementptr i8, i8* %24, i64 -1168, !dbg !3305
  %25 = bitcast i8* %add.ptr18 to %struct.mtd_info*, !dbg !3305
  store %struct.mtd_info* %25, %struct.mtd_info** %tmp17, align 8, !dbg !3306
  %26 = load %struct.mtd_info*, %struct.mtd_info** %tmp17, align 8, !dbg !3305
  store %struct.mtd_info* %26, %struct.mtd_info** %next, align 8, !dbg !3291
  br label %for.cond, !dbg !3291, !llvm.loop !3308

for.end:                                          ; preds = %for.cond
  %27 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3310
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %27, i32 0, i32 55, !dbg !3311
  %kobj = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 0, !dbg !3312
  call void @sysfs_remove_files(%struct.kobject* %kobj, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @mtd_partition_attrs, i64 0, i64 0)) #8, !dbg !3313
  %28 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3314
  %call19 = call i32 @del_mtd_device(%struct.mtd_info* %28) #8, !dbg !3315
  store i32 %call19, i32* %err, align 4, !dbg !3316
  %29 = load i32, i32* %err, align 4, !dbg !3317
  %tobool20 = icmp ne i32 %29, 0, !dbg !3317
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !3319

if.then21:                                        ; preds = %for.end
  %30 = load i32, i32* %err, align 4, !dbg !3320
  store i32 %30, i32* %retval, align 4, !dbg !3321
  br label %return, !dbg !3321

if.end22:                                         ; preds = %for.end
  %31 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3322
  %32 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %31, i32 0, i32 61, !dbg !3323
  %part23 = bitcast %union.anon.38* %32 to %struct.mtd_part*, !dbg !3323
  %node24 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part23, i32 0, i32 0, !dbg !3324
  call void @list_del(%struct.list_head* %node24) #8, !dbg !3325
  %33 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3326
  call void @free_partition(%struct.mtd_info* %33) #8, !dbg !3327
  store i32 0, i32* %retval, align 4, !dbg !3328
  br label %return, !dbg !3328

return:                                           ; preds = %if.end22, %if.then21, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !3329
  ret i32 %34, !dbg !3329
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @add_mtd_partitions(%struct.mtd_info* %parent, %struct.mtd_partition* %parts, i32 %nbparts) #0 !dbg !3330 {
entry:
  %retval = alloca i32, align 4
  %parent.addr = alloca %struct.mtd_info*, align 8
  %parts.addr = alloca %struct.mtd_partition*, align 8
  %nbparts.addr = alloca i32, align 4
  %child = alloca %struct.mtd_info*, align 8
  %master = alloca %struct.mtd_info*, align 8
  %cur_offset = alloca i64, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.mtd_info* %parent, %struct.mtd_info** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %parent.addr, metadata !3333, metadata !DIExpression()), !dbg !3334
  store %struct.mtd_partition* %parts, %struct.mtd_partition** %parts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %parts.addr, metadata !3335, metadata !DIExpression()), !dbg !3336
  store i32 %nbparts, i32* %nbparts.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbparts.addr, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %child, metadata !3339, metadata !DIExpression()), !dbg !3340
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master, metadata !3341, metadata !DIExpression()), !dbg !3342
  %0 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3343
  %call = call %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %0) #8, !dbg !3344
  store %struct.mtd_info* %call, %struct.mtd_info** %master, align 8, !dbg !3342
  call void @llvm.dbg.declare(metadata i64* %cur_offset, metadata !3345, metadata !DIExpression()), !dbg !3346
  store i64 0, i64* %cur_offset, align 8, !dbg !3346
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3347, metadata !DIExpression()), !dbg !3348
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3349, metadata !DIExpression()), !dbg !3350
  %1 = load i32, i32* %nbparts.addr, align 4, !dbg !3351
  %2 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3352
  %name = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 13, !dbg !3353
  %3 = load i8*, i8** %name, align 8, !dbg !3353
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %1, i8* %3) #9, !dbg !3354
  store i32 0, i32* %i, align 4, !dbg !3355
  br label %for.cond, !dbg !3357

for.cond:                                         ; preds = %for.inc, %entry
  %4 = load i32, i32* %i, align 4, !dbg !3358
  %5 = load i32, i32* %nbparts.addr, align 4, !dbg !3360
  %cmp = icmp slt i32 %4, %5, !dbg !3361
  br i1 %cmp, label %for.body, label %for.end, !dbg !3362

for.body:                                         ; preds = %for.cond
  %6 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3363
  %7 = load %struct.mtd_partition*, %struct.mtd_partition** %parts.addr, align 8, !dbg !3365
  %8 = load i32, i32* %i, align 4, !dbg !3366
  %idx.ext = sext i32 %8 to i64, !dbg !3367
  %add.ptr = getelementptr %struct.mtd_partition, %struct.mtd_partition* %7, i64 %idx.ext, !dbg !3367
  %9 = load i32, i32* %i, align 4, !dbg !3368
  %10 = load i64, i64* %cur_offset, align 8, !dbg !3369
  %call2 = call %struct.mtd_info* @allocate_partition(%struct.mtd_info* %6, %struct.mtd_partition* %add.ptr, i32 %9, i64 %10) #8, !dbg !3370
  store %struct.mtd_info* %call2, %struct.mtd_info** %child, align 8, !dbg !3371
  %11 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3372
  %12 = bitcast %struct.mtd_info* %11 to i8*, !dbg !3372
  %call3 = call zeroext i1 @IS_ERR(i8* %12) #8, !dbg !3374
  br i1 %call3, label %if.then, label %if.end, !dbg !3375

if.then:                                          ; preds = %for.body
  %13 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3376
  %14 = bitcast %struct.mtd_info* %13 to i8*, !dbg !3376
  %call4 = call i64 @PTR_ERR(i8* %14) #8, !dbg !3378
  %conv = trunc i64 %call4 to i32, !dbg !3378
  store i32 %conv, i32* %ret, align 4, !dbg !3379
  br label %err_del_partitions, !dbg !3380

if.end:                                           ; preds = %for.body
  %15 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3381
  %16 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %15, i32 0, i32 61, !dbg !3382
  %master5 = bitcast %union.anon.38* %16 to %struct.mtd_master*, !dbg !3382
  %partitions_lock = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master5, i32 0, i32 0, !dbg !3383
  call void @mutex_lock(%struct.mutex* %partitions_lock) #8, !dbg !3384
  %17 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3385
  %18 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %17, i32 0, i32 61, !dbg !3386
  %part = bitcast %union.anon.38* %18 to %struct.mtd_part*, !dbg !3386
  %node = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 0, !dbg !3387
  %19 = load %struct.mtd_info*, %struct.mtd_info** %parent.addr, align 8, !dbg !3388
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %19, i32 0, i32 60, !dbg !3389
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* %partitions) #8, !dbg !3390
  %20 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3391
  %21 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %20, i32 0, i32 61, !dbg !3392
  %master6 = bitcast %union.anon.38* %21 to %struct.mtd_master*, !dbg !3392
  %partitions_lock7 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master6, i32 0, i32 0, !dbg !3393
  call void @mutex_unlock(%struct.mutex* %partitions_lock7) #8, !dbg !3394
  %22 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3395
  %call8 = call i32 @add_mtd_device(%struct.mtd_info* %22) #8, !dbg !3396
  store i32 %call8, i32* %ret, align 4, !dbg !3397
  %23 = load i32, i32* %ret, align 4, !dbg !3398
  %tobool = icmp ne i32 %23, 0, !dbg !3398
  br i1 %tobool, label %if.then9, label %if.end16, !dbg !3400

if.then9:                                         ; preds = %if.end
  %24 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3401
  %25 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 61, !dbg !3403
  %master10 = bitcast %union.anon.38* %25 to %struct.mtd_master*, !dbg !3403
  %partitions_lock11 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master10, i32 0, i32 0, !dbg !3404
  call void @mutex_lock(%struct.mutex* %partitions_lock11) #8, !dbg !3405
  %26 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3406
  %27 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %26, i32 0, i32 61, !dbg !3407
  %part12 = bitcast %union.anon.38* %27 to %struct.mtd_part*, !dbg !3407
  %node13 = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part12, i32 0, i32 0, !dbg !3408
  call void @list_del(%struct.list_head* %node13) #8, !dbg !3409
  %28 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3410
  %29 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %28, i32 0, i32 61, !dbg !3411
  %master14 = bitcast %union.anon.38* %29 to %struct.mtd_master*, !dbg !3411
  %partitions_lock15 = getelementptr inbounds %struct.mtd_master, %struct.mtd_master* %master14, i32 0, i32 0, !dbg !3412
  call void @mutex_unlock(%struct.mutex* %partitions_lock15) #8, !dbg !3413
  %30 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3414
  call void @free_partition(%struct.mtd_info* %30) #8, !dbg !3415
  br label %err_del_partitions, !dbg !3416

if.end16:                                         ; preds = %if.end
  %31 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3417
  %call17 = call i32 @mtd_add_partition_attrs(%struct.mtd_info* %31) #8, !dbg !3418
  %32 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3419
  %33 = load %struct.mtd_partition*, %struct.mtd_partition** %parts.addr, align 8, !dbg !3420
  %34 = load i32, i32* %i, align 4, !dbg !3421
  %idxprom = sext i32 %34 to i64, !dbg !3420
  %arrayidx = getelementptr %struct.mtd_partition, %struct.mtd_partition* %33, i64 %idxprom, !dbg !3420
  %types = getelementptr inbounds %struct.mtd_partition, %struct.mtd_partition* %arrayidx, i32 0, i32 1, !dbg !3422
  %35 = load i8**, i8*** %types, align 8, !dbg !3422
  %call18 = call i32 @parse_mtd_partitions(%struct.mtd_info* %32, i8** %35, %struct.mtd_part_parser_data* null) #8, !dbg !3423
  %36 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3424
  %37 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %36, i32 0, i32 61, !dbg !3425
  %part19 = bitcast %union.anon.38* %37 to %struct.mtd_part*, !dbg !3425
  %offset = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part19, i32 0, i32 1, !dbg !3426
  %38 = load i64, i64* %offset, align 8, !dbg !3426
  %39 = load %struct.mtd_info*, %struct.mtd_info** %child, align 8, !dbg !3427
  %40 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %39, i32 0, i32 61, !dbg !3428
  %part20 = bitcast %union.anon.38* %40 to %struct.mtd_part*, !dbg !3428
  %size = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part20, i32 0, i32 2, !dbg !3429
  %41 = load i64, i64* %size, align 8, !dbg !3429
  %add = add i64 %38, %41, !dbg !3430
  store i64 %add, i64* %cur_offset, align 8, !dbg !3431
  br label %for.inc, !dbg !3432

for.inc:                                          ; preds = %if.end16
  %42 = load i32, i32* %i, align 4, !dbg !3433
  %inc = add i32 %42, 1, !dbg !3433
  store i32 %inc, i32* %i, align 4, !dbg !3433
  br label %for.cond, !dbg !3434, !llvm.loop !3435

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3437
  br label %return, !dbg !3437

err_del_partitions:                               ; preds = %if.then9, %if.then
  call void @llvm.dbg.label(metadata !3438), !dbg !3439
  %43 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3440
  %call21 = call i32 @del_mtd_partitions(%struct.mtd_info* %43) #8, !dbg !3441
  %44 = load i32, i32* %ret, align 4, !dbg !3442
  store i32 %44, i32* %retval, align 4, !dbg !3443
  br label %return, !dbg !3443

return:                                           ; preds = %err_del_partitions, %for.end
  %45 = load i32, i32* %retval, align 4, !dbg !3444
  ret i32 %45, !dbg !3444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @parse_mtd_partitions(%struct.mtd_info* %master, i8** %types, %struct.mtd_part_parser_data* %data) #0 !dbg !3445 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.mtd_info*, align 8
  %types.addr = alloca i8**, align 8
  %data.addr = alloca %struct.mtd_part_parser_data*, align 8
  %pparts = alloca %struct.mtd_partitions, align 8
  %parser = alloca %struct.mtd_part_parser*, align 8
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  %tmp = alloca i32, align 4
  %tmp13 = alloca i32, align 4
  store %struct.mtd_info* %master, %struct.mtd_info** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master.addr, metadata !3448, metadata !DIExpression()), !dbg !3449
  store i8** %types, i8*** %types.addr, align 8
  call void @llvm.dbg.declare(metadata i8*** %types.addr, metadata !3450, metadata !DIExpression()), !dbg !3451
  store %struct.mtd_part_parser_data* %data, %struct.mtd_part_parser_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser_data** %data.addr, metadata !3452, metadata !DIExpression()), !dbg !3453
  call void @llvm.dbg.declare(metadata %struct.mtd_partitions* %pparts, metadata !3454, metadata !DIExpression()), !dbg !3462
  %0 = bitcast %struct.mtd_partitions* %pparts to i8*, !dbg !3462
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 24, i1 false), !dbg !3462
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %parser, metadata !3463, metadata !DIExpression()), !dbg !3464
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3465, metadata !DIExpression()), !dbg !3466
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3467, metadata !DIExpression()), !dbg !3468
  store i32 0, i32* %err, align 4, !dbg !3468
  %1 = load i8**, i8*** %types.addr, align 8, !dbg !3469
  %tobool = icmp ne i8** %1, null, !dbg !3469
  br i1 %tobool, label %if.end, label %if.then, !dbg !3471

if.then:                                          ; preds = %entry
  %2 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3472
  %call = call zeroext i1 @mtd_is_partition(%struct.mtd_info* %2) #8, !dbg !3473
  %3 = zext i1 %call to i64, !dbg !3473
  %cond = select i1 %call, i8** getelementptr inbounds ([2 x i8*], [2 x i8*]* @default_subpartition_types, i64 0, i64 0), i8** getelementptr inbounds ([3 x i8*], [3 x i8*]* @default_mtd_part_types, i64 0, i64 0), !dbg !3473
  store i8** %cond, i8*** %types.addr, align 8, !dbg !3474
  br label %if.end, !dbg !3475

if.end:                                           ; preds = %if.then, %entry
  br label %for.cond, !dbg !3476

for.cond:                                         ; preds = %for.inc, %if.end
  %4 = load i8**, i8*** %types.addr, align 8, !dbg !3477
  %5 = load i8*, i8** %4, align 8, !dbg !3480
  %tobool1 = icmp ne i8* %5, null, !dbg !3481
  br i1 %tobool1, label %for.body, label %for.end, !dbg !3481

for.body:                                         ; preds = %for.cond
  %6 = load i8**, i8*** %types.addr, align 8, !dbg !3482
  %7 = load i8*, i8** %6, align 8, !dbg !3485
  %call2 = call i32 @strcmp(i8* %7, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0)) #8, !dbg !3486
  %tobool3 = icmp ne i32 %call2, 0, !dbg !3486
  br i1 %tobool3, label %if.else, label %if.then4, !dbg !3487

if.then4:                                         ; preds = %for.body
  %8 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3488
  %call5 = call i32 @mtd_part_of_parse(%struct.mtd_info* %8, %struct.mtd_partitions* %pparts) #8, !dbg !3490
  store i32 %call5, i32* %ret, align 4, !dbg !3491
  br label %if.end20, !dbg !3492

if.else:                                          ; preds = %for.body
  store i32 0, i32* %tmp, align 4, !dbg !3493
  %9 = load i32, i32* %tmp, align 4, !dbg !3497
  %10 = load i8**, i8*** %types.addr, align 8, !dbg !3498
  %11 = load i8*, i8** %10, align 8, !dbg !3499
  %call6 = call %struct.mtd_part_parser* @mtd_part_parser_get(i8* %11) #8, !dbg !3500
  store %struct.mtd_part_parser* %call6, %struct.mtd_part_parser** %parser, align 8, !dbg !3501
  %12 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3502
  %tobool7 = icmp ne %struct.mtd_part_parser* %12, null, !dbg !3502
  br i1 %tobool7, label %if.end12, label %land.lhs.true, !dbg !3504

land.lhs.true:                                    ; preds = %if.else
  %13 = load i8**, i8*** %types.addr, align 8, !dbg !3505
  %14 = load i8*, i8** %13, align 8, !dbg !3506
  %call8 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %14) #8, !dbg !3507
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3507
  br i1 %tobool9, label %if.end12, label %if.then10, !dbg !3508

if.then10:                                        ; preds = %land.lhs.true
  %15 = load i8**, i8*** %types.addr, align 8, !dbg !3509
  %16 = load i8*, i8** %15, align 8, !dbg !3510
  %call11 = call %struct.mtd_part_parser* @mtd_part_parser_get(i8* %16) #8, !dbg !3511
  store %struct.mtd_part_parser* %call11, %struct.mtd_part_parser** %parser, align 8, !dbg !3512
  br label %if.end12, !dbg !3513

if.end12:                                         ; preds = %if.then10, %land.lhs.true, %if.else
  store i32 0, i32* %tmp13, align 4, !dbg !3514
  %17 = load i32, i32* %tmp13, align 4, !dbg !3517
  %18 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3518
  %tobool14 = icmp ne %struct.mtd_part_parser* %18, null, !dbg !3518
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3520

if.then15:                                        ; preds = %if.end12
  br label %for.inc, !dbg !3521

if.end16:                                         ; preds = %if.end12
  %19 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3522
  %20 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3523
  %21 = load %struct.mtd_part_parser_data*, %struct.mtd_part_parser_data** %data.addr, align 8, !dbg !3524
  %call17 = call i32 @mtd_part_do_parse(%struct.mtd_part_parser* %19, %struct.mtd_info* %20, %struct.mtd_partitions* %pparts, %struct.mtd_part_parser_data* %21) #8, !dbg !3525
  store i32 %call17, i32* %ret, align 4, !dbg !3526
  %22 = load i32, i32* %ret, align 4, !dbg !3527
  %cmp = icmp sle i32 %22, 0, !dbg !3529
  br i1 %cmp, label %if.then18, label %if.end19, !dbg !3530

if.then18:                                        ; preds = %if.end16
  %23 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3531
  call void @mtd_part_parser_put(%struct.mtd_part_parser* %23) #8, !dbg !3532
  br label %if.end19, !dbg !3532

if.end19:                                         ; preds = %if.then18, %if.end16
  br label %if.end20

if.end20:                                         ; preds = %if.end19, %if.then4
  %24 = load i32, i32* %ret, align 4, !dbg !3533
  %cmp21 = icmp sgt i32 %24, 0, !dbg !3535
  br i1 %cmp21, label %if.then22, label %if.end27, !dbg !3536

if.then22:                                        ; preds = %if.end20
  %25 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3537
  %parts = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %pparts, i32 0, i32 0, !dbg !3539
  %26 = load %struct.mtd_partition*, %struct.mtd_partition** %parts, align 8, !dbg !3539
  %nr_parts = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %pparts, i32 0, i32 1, !dbg !3540
  %27 = load i32, i32* %nr_parts, align 8, !dbg !3540
  %call23 = call i32 @add_mtd_partitions(%struct.mtd_info* %25, %struct.mtd_partition* %26, i32 %27) #8, !dbg !3541
  store i32 %call23, i32* %err, align 4, !dbg !3542
  call void @mtd_part_parser_cleanup(%struct.mtd_partitions* %pparts) #8, !dbg !3543
  %28 = load i32, i32* %err, align 4, !dbg !3544
  %tobool24 = icmp ne i32 %28, 0, !dbg !3544
  br i1 %tobool24, label %cond.true, label %cond.false, !dbg !3544

cond.true:                                        ; preds = %if.then22
  %29 = load i32, i32* %err, align 4, !dbg !3545
  br label %cond.end, !dbg !3544

cond.false:                                       ; preds = %if.then22
  %nr_parts25 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %pparts, i32 0, i32 1, !dbg !3546
  %30 = load i32, i32* %nr_parts25, align 8, !dbg !3546
  br label %cond.end, !dbg !3544

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond26 = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !3544
  store i32 %cond26, i32* %retval, align 4, !dbg !3547
  br label %return, !dbg !3547

if.end27:                                         ; preds = %if.end20
  %31 = load i32, i32* %ret, align 4, !dbg !3548
  %cmp28 = icmp slt i32 %31, 0, !dbg !3550
  br i1 %cmp28, label %land.lhs.true29, label %if.end32, !dbg !3551

land.lhs.true29:                                  ; preds = %if.end27
  %32 = load i32, i32* %err, align 4, !dbg !3552
  %tobool30 = icmp ne i32 %32, 0, !dbg !3552
  br i1 %tobool30, label %if.end32, label %if.then31, !dbg !3553

if.then31:                                        ; preds = %land.lhs.true29
  %33 = load i32, i32* %ret, align 4, !dbg !3554
  store i32 %33, i32* %err, align 4, !dbg !3555
  br label %if.end32, !dbg !3556

if.end32:                                         ; preds = %if.then31, %land.lhs.true29, %if.end27
  br label %for.inc, !dbg !3557

for.inc:                                          ; preds = %if.end32, %if.then15
  %34 = load i8**, i8*** %types.addr, align 8, !dbg !3558
  %incdec.ptr = getelementptr i8*, i8** %34, i32 1, !dbg !3558
  store i8** %incdec.ptr, i8*** %types.addr, align 8, !dbg !3558
  br label %for.cond, !dbg !3559, !llvm.loop !3560

for.end:                                          ; preds = %for.cond
  %35 = load i32, i32* %err, align 4, !dbg !3562
  store i32 %35, i32* %retval, align 4, !dbg !3563
  br label %return, !dbg !3563

return:                                           ; preds = %for.end, %cond.end
  %36 = load i32, i32* %retval, align 4, !dbg !3564
  ret i32 %36, !dbg !3564
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__register_mtd_parser(%struct.mtd_part_parser* %p, %struct.module* %owner) #0 !dbg !3565 {
entry:
  %lock.addr.i3 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i3, metadata !3568, metadata !DIExpression()), !dbg !3574
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3576, metadata !DIExpression()), !dbg !3578
  %p.addr = alloca %struct.mtd_part_parser*, align 8
  %owner.addr = alloca %struct.module*, align 8
  store %struct.mtd_part_parser* %p, %struct.mtd_part_parser** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %p.addr, metadata !3580, metadata !DIExpression()), !dbg !3581
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !3582, metadata !DIExpression()), !dbg !3583
  %0 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !3584
  %1 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p.addr, align 8, !dbg !3585
  %owner1 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %1, i32 0, i32 1, !dbg !3586
  store %struct.module* %0, %struct.module** %owner1, align 8, !dbg !3587
  %2 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p.addr, align 8, !dbg !3588
  %cleanup = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %2, i32 0, i32 5, !dbg !3590
  %3 = load void (%struct.mtd_partition*, i32)*, void (%struct.mtd_partition*, i32)** %cleanup, align 8, !dbg !3590
  %tobool = icmp ne void (%struct.mtd_partition*, i32)* %3, null, !dbg !3588
  br i1 %tobool, label %if.end, label %if.then, !dbg !3591

if.then:                                          ; preds = %entry
  %4 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p.addr, align 8, !dbg !3592
  %cleanup2 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %4, i32 0, i32 5, !dbg !3593
  store void (%struct.mtd_partition*, i32)* @mtd_part_parser_cleanup_default, void (%struct.mtd_partition*, i32)** %cleanup2, align 8, !dbg !3594
  br label %if.end, !dbg !3592

if.end:                                           ; preds = %if.then, %entry
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3595, !srcloc !3597
  %5 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3598
  %6 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %5, i32 0, i32 0, !dbg !3598
  %rlock.i = bitcast %union.anon* %6 to %struct.raw_spinlock*, !dbg !3598
  %7 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p.addr, align 8, !dbg !3600
  %list = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %7, i32 0, i32 0, !dbg !3601
  call void @list_add(%struct.list_head* %list, %struct.list_head* @part_parsers) #8, !dbg !3602
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i3, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3603, !srcloc !3605
  %8 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i3, align 8, !dbg !3606
  %9 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %8, i32 0, i32 0, !dbg !3606
  %rlock.i4 = bitcast %union.anon* %9 to %struct.raw_spinlock*, !dbg !3606
  ret i32 0, !dbg !3608
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_part_parser_cleanup_default(%struct.mtd_partition* %pparts, i32 %nr_parts) #0 !dbg !3609 {
entry:
  %pparts.addr = alloca %struct.mtd_partition*, align 8
  %nr_parts.addr = alloca i32, align 4
  store %struct.mtd_partition* %pparts, %struct.mtd_partition** %pparts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partition** %pparts.addr, metadata !3610, metadata !DIExpression()), !dbg !3611
  store i32 %nr_parts, i32* %nr_parts.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_parts.addr, metadata !3612, metadata !DIExpression()), !dbg !3613
  %0 = load %struct.mtd_partition*, %struct.mtd_partition** %pparts.addr, align 8, !dbg !3614
  %1 = bitcast %struct.mtd_partition* %0 to i8*, !dbg !3614
  call void @kfree(i8* %1) #8, !dbg !3615
  ret void, !dbg !3616
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3617 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3618, metadata !DIExpression()), !dbg !3619
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3620, metadata !DIExpression()), !dbg !3621
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3622
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3623
  %2 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3624
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 0, !dbg !3625
  %3 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3625
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %3) #8, !dbg !3626
  ret void, !dbg !3627
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @deregister_mtd_parser(%struct.mtd_part_parser* %p) #0 !dbg !3628 {
entry:
  %lock.addr.i1 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i1, metadata !3568, metadata !DIExpression()), !dbg !3631
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3576, metadata !DIExpression()), !dbg !3633
  %p.addr = alloca %struct.mtd_part_parser*, align 8
  store %struct.mtd_part_parser* %p, %struct.mtd_part_parser** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %p.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3637, !srcloc !3597
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3638
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !3638
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !3638
  %2 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p.addr, align 8, !dbg !3639
  %list = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %2, i32 0, i32 0, !dbg !3640
  call void @list_del(%struct.list_head* %list) #8, !dbg !3641
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i1, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3642, !srcloc !3605
  %3 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i1, align 8, !dbg !3643
  %4 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %3, i32 0, i32 0, !dbg !3643
  %rlock.i2 = bitcast %union.anon* %4 to %struct.raw_spinlock*, !dbg !3643
  ret void, !dbg !3644
}

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtd_part_of_parse(%struct.mtd_info* %master, %struct.mtd_partitions* %pparts) #0 !dbg !3645 {
entry:
  %retval = alloca i32, align 4
  %master.addr = alloca %struct.mtd_info*, align 8
  %pparts.addr = alloca %struct.mtd_partitions*, align 8
  %parser = alloca %struct.mtd_part_parser*, align 8
  %np = alloca %struct.device_node*, align 8
  %prop = alloca %struct.property*, align 8
  %compat = alloca i8*, align 8
  %fixed = alloca i8*, align 8
  %ret = alloca i32, align 4
  %err = alloca i32, align 4
  store %struct.mtd_info* %master, %struct.mtd_info** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  store %struct.mtd_partitions* %pparts, %struct.mtd_partitions** %pparts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partitions** %pparts.addr, metadata !3651, metadata !DIExpression()), !dbg !3652
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %parser, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !3657, metadata !DIExpression()), !dbg !3658
  call void @llvm.dbg.declare(metadata i8** %compat, metadata !3659, metadata !DIExpression()), !dbg !3660
  call void @llvm.dbg.declare(metadata i8** %fixed, metadata !3661, metadata !DIExpression()), !dbg !3662
  store i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.20, i64 0, i64 0), i8** %fixed, align 8, !dbg !3662
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3663, metadata !DIExpression()), !dbg !3664
  call void @llvm.dbg.declare(metadata i32* %err, metadata !3665, metadata !DIExpression()), !dbg !3666
  store i32 0, i32* %err, align 4, !dbg !3666
  %0 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3667
  %call = call %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %0) #8, !dbg !3668
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3669
  %1 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3670
  %call1 = call zeroext i1 @mtd_is_partition(%struct.mtd_info* %1) #8, !dbg !3672
  br i1 %call1, label %if.then, label %if.else, !dbg !3673

if.then:                                          ; preds = %entry
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3674
  %call2 = call %struct.device_node* @of_node_get(%struct.device_node* %2) #8, !dbg !3675
  br label %if.end, !dbg !3675

if.else:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3676
  %call3 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %3, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.21, i64 0, i64 0)) #8, !dbg !3677
  store %struct.device_node* %call3, %struct.device_node** %np, align 8, !dbg !3678
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %4 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3679
  %call4 = call %struct.property* @of_find_property(%struct.device_node* %4, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.22, i64 0, i64 0), i32* null) #8, !dbg !3679
  store %struct.property* %call4, %struct.property** %prop, align 8, !dbg !3679
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3679
  %call5 = call i8* @of_prop_next_string(%struct.property* %5, i8* null) #8, !dbg !3679
  store i8* %call5, i8** %compat, align 8, !dbg !3679
  br label %for.cond, !dbg !3679

for.cond:                                         ; preds = %for.inc, %if.end
  %6 = load i8*, i8** %compat, align 8, !dbg !3681
  %tobool = icmp ne i8* %6, null, !dbg !3679
  br i1 %tobool, label %for.body, label %for.end, !dbg !3679

for.body:                                         ; preds = %for.cond
  %7 = load i8*, i8** %compat, align 8, !dbg !3683
  %call6 = call %struct.mtd_part_parser* @mtd_part_get_compatible_parser(i8* %7) #8, !dbg !3685
  store %struct.mtd_part_parser* %call6, %struct.mtd_part_parser** %parser, align 8, !dbg !3686
  %8 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3687
  %tobool7 = icmp ne %struct.mtd_part_parser* %8, null, !dbg !3687
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !3689

if.then8:                                         ; preds = %for.body
  br label %for.inc, !dbg !3690

if.end9:                                          ; preds = %for.body
  %9 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3691
  %10 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3692
  %11 = load %struct.mtd_partitions*, %struct.mtd_partitions** %pparts.addr, align 8, !dbg !3693
  %call10 = call i32 @mtd_part_do_parse(%struct.mtd_part_parser* %9, %struct.mtd_info* %10, %struct.mtd_partitions* %11, %struct.mtd_part_parser_data* null) #8, !dbg !3694
  store i32 %call10, i32* %ret, align 4, !dbg !3695
  %12 = load i32, i32* %ret, align 4, !dbg !3696
  %cmp = icmp sgt i32 %12, 0, !dbg !3698
  br i1 %cmp, label %if.then11, label %if.end12, !dbg !3699

if.then11:                                        ; preds = %if.end9
  %13 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3700
  call void @of_node_put(%struct.device_node* %13) #8, !dbg !3702
  %14 = load i32, i32* %ret, align 4, !dbg !3703
  store i32 %14, i32* %retval, align 4, !dbg !3704
  br label %return, !dbg !3704

if.end12:                                         ; preds = %if.end9
  %15 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3705
  call void @mtd_part_parser_put(%struct.mtd_part_parser* %15) #8, !dbg !3706
  %16 = load i32, i32* %ret, align 4, !dbg !3707
  %cmp13 = icmp slt i32 %16, 0, !dbg !3709
  br i1 %cmp13, label %land.lhs.true, label %if.end16, !dbg !3710

land.lhs.true:                                    ; preds = %if.end12
  %17 = load i32, i32* %err, align 4, !dbg !3711
  %tobool14 = icmp ne i32 %17, 0, !dbg !3711
  br i1 %tobool14, label %if.end16, label %if.then15, !dbg !3712

if.then15:                                        ; preds = %land.lhs.true
  %18 = load i32, i32* %ret, align 4, !dbg !3713
  store i32 %18, i32* %err, align 4, !dbg !3714
  br label %if.end16, !dbg !3715

if.end16:                                         ; preds = %if.then15, %land.lhs.true, %if.end12
  br label %for.inc, !dbg !3716

for.inc:                                          ; preds = %if.end16, %if.then8
  %19 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3681
  %20 = load i8*, i8** %compat, align 8, !dbg !3681
  %call17 = call i8* @of_prop_next_string(%struct.property* %19, i8* %20) #8, !dbg !3681
  store i8* %call17, i8** %compat, align 8, !dbg !3681
  br label %for.cond, !dbg !3681, !llvm.loop !3717

for.end:                                          ; preds = %for.cond
  %21 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3719
  call void @of_node_put(%struct.device_node* %21) #8, !dbg !3720
  %22 = load i8*, i8** %fixed, align 8, !dbg !3721
  %call18 = call %struct.mtd_part_parser* @mtd_part_parser_get(i8* %22) #8, !dbg !3722
  store %struct.mtd_part_parser* %call18, %struct.mtd_part_parser** %parser, align 8, !dbg !3723
  %23 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3724
  %tobool19 = icmp ne %struct.mtd_part_parser* %23, null, !dbg !3724
  br i1 %tobool19, label %if.end25, label %land.lhs.true20, !dbg !3726

land.lhs.true20:                                  ; preds = %for.end
  %24 = load i8*, i8** %fixed, align 8, !dbg !3727
  %call21 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* %24) #8, !dbg !3728
  %tobool22 = icmp ne i32 %call21, 0, !dbg !3728
  br i1 %tobool22, label %if.end25, label %if.then23, !dbg !3729

if.then23:                                        ; preds = %land.lhs.true20
  %25 = load i8*, i8** %fixed, align 8, !dbg !3730
  %call24 = call %struct.mtd_part_parser* @mtd_part_parser_get(i8* %25) #8, !dbg !3731
  store %struct.mtd_part_parser* %call24, %struct.mtd_part_parser** %parser, align 8, !dbg !3732
  br label %if.end25, !dbg !3733

if.end25:                                         ; preds = %if.then23, %land.lhs.true20, %for.end
  %26 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3734
  %tobool26 = icmp ne %struct.mtd_part_parser* %26, null, !dbg !3734
  br i1 %tobool26, label %if.then27, label %if.end37, !dbg !3736

if.then27:                                        ; preds = %if.end25
  %27 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3737
  %28 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3739
  %29 = load %struct.mtd_partitions*, %struct.mtd_partitions** %pparts.addr, align 8, !dbg !3740
  %call28 = call i32 @mtd_part_do_parse(%struct.mtd_part_parser* %27, %struct.mtd_info* %28, %struct.mtd_partitions* %29, %struct.mtd_part_parser_data* null) #8, !dbg !3741
  store i32 %call28, i32* %ret, align 4, !dbg !3742
  %30 = load i32, i32* %ret, align 4, !dbg !3743
  %cmp29 = icmp sgt i32 %30, 0, !dbg !3745
  br i1 %cmp29, label %if.then30, label %if.end31, !dbg !3746

if.then30:                                        ; preds = %if.then27
  %31 = load i32, i32* %ret, align 4, !dbg !3747
  store i32 %31, i32* %retval, align 4, !dbg !3748
  br label %return, !dbg !3748

if.end31:                                         ; preds = %if.then27
  %32 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3749
  call void @mtd_part_parser_put(%struct.mtd_part_parser* %32) #8, !dbg !3750
  %33 = load i32, i32* %ret, align 4, !dbg !3751
  %cmp32 = icmp slt i32 %33, 0, !dbg !3753
  br i1 %cmp32, label %land.lhs.true33, label %if.end36, !dbg !3754

land.lhs.true33:                                  ; preds = %if.end31
  %34 = load i32, i32* %err, align 4, !dbg !3755
  %tobool34 = icmp ne i32 %34, 0, !dbg !3755
  br i1 %tobool34, label %if.end36, label %if.then35, !dbg !3756

if.then35:                                        ; preds = %land.lhs.true33
  %35 = load i32, i32* %ret, align 4, !dbg !3757
  store i32 %35, i32* %err, align 4, !dbg !3758
  br label %if.end36, !dbg !3759

if.end36:                                         ; preds = %if.then35, %land.lhs.true33, %if.end31
  br label %if.end37, !dbg !3760

if.end37:                                         ; preds = %if.end36, %if.end25
  %36 = load i32, i32* %err, align 4, !dbg !3761
  store i32 %36, i32* %retval, align 4, !dbg !3762
  br label %return, !dbg !3762

return:                                           ; preds = %if.end37, %if.then30, %if.then11
  %37 = load i32, i32* %retval, align 4, !dbg !3763
  ret i32 %37, !dbg !3763
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_part_parser* @mtd_part_parser_get(i8* %name) #0 !dbg !3764 {
entry:
  %lock.addr.i9 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i9, metadata !3568, metadata !DIExpression()), !dbg !3767
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3576, metadata !DIExpression()), !dbg !3769
  %name.addr = alloca i8*, align 8
  %p = alloca %struct.mtd_part_parser*, align 8
  %ret = alloca %struct.mtd_part_parser*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtd_part_parser*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.mtd_part_parser*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3771, metadata !DIExpression()), !dbg !3772
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %p, metadata !3773, metadata !DIExpression()), !dbg !3774
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %ret, metadata !3775, metadata !DIExpression()), !dbg !3776
  store %struct.mtd_part_parser* null, %struct.mtd_part_parser** %ret, align 8, !dbg !3776
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3777, !srcloc !3597
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3778
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !3778
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !3778
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3779, metadata !DIExpression()), !dbg !3782
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @part_parsers, i32 0, i32 0), align 8, !dbg !3782
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !3782
  store i8* %3, i8** %__mptr, align 8, !dbg !3782
  br label %do.body, !dbg !3782

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3783

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3782
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !3782
  %5 = bitcast i8* %add.ptr to %struct.mtd_part_parser*, !dbg !3782
  store %struct.mtd_part_parser* %5, %struct.mtd_part_parser** %tmp, align 8, !dbg !3783
  %6 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %tmp, align 8, !dbg !3782
  store %struct.mtd_part_parser* %6, %struct.mtd_part_parser** %p, align 8, !dbg !3785
  br label %for.cond, !dbg !3785

for.cond:                                         ; preds = %do.end6, %do.end
  %7 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !3786
  %list = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %7, i32 0, i32 0, !dbg !3786
  %cmp = icmp eq %struct.list_head* %list, @part_parsers, !dbg !3786
  %lnot = xor i1 %cmp, true, !dbg !3786
  br i1 %lnot, label %for.body, label %for.end, !dbg !3785

for.body:                                         ; preds = %for.cond
  %8 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !3788
  %name1 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %8, i32 0, i32 2, !dbg !3790
  %9 = load i8*, i8** %name1, align 8, !dbg !3790
  %10 = load i8*, i8** %name.addr, align 8, !dbg !3791
  %call = call i32 @strcmp(i8* %9, i8* %10) #8, !dbg !3792
  %tobool = icmp ne i32 %call, 0, !dbg !3792
  br i1 %tobool, label %if.end, label %land.lhs.true, !dbg !3793

land.lhs.true:                                    ; preds = %for.body
  %11 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !3794
  %owner = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %11, i32 0, i32 1, !dbg !3795
  %12 = load %struct.module*, %struct.module** %owner, align 8, !dbg !3795
  %call2 = call zeroext i1 @try_module_get(%struct.module* %12) #8, !dbg !3796
  br i1 %call2, label %if.then, label %if.end, !dbg !3797

if.then:                                          ; preds = %land.lhs.true
  %13 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !3798
  store %struct.mtd_part_parser* %13, %struct.mtd_part_parser** %ret, align 8, !dbg !3800
  br label %for.end, !dbg !3801

if.end:                                           ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3802

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !3803, metadata !DIExpression()), !dbg !3805
  %14 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !3805
  %list4 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %14, i32 0, i32 0, !dbg !3805
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list4, i32 0, i32 0, !dbg !3805
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3805
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !3805
  store i8* %16, i8** %__mptr3, align 8, !dbg !3805
  br label %do.body5, !dbg !3805

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !3806

do.end6:                                          ; preds = %do.body5
  %17 = load i8*, i8** %__mptr3, align 8, !dbg !3805
  %add.ptr8 = getelementptr i8, i8* %17, i64 0, !dbg !3805
  %18 = bitcast i8* %add.ptr8 to %struct.mtd_part_parser*, !dbg !3805
  store %struct.mtd_part_parser* %18, %struct.mtd_part_parser** %tmp7, align 8, !dbg !3806
  %19 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %tmp7, align 8, !dbg !3805
  store %struct.mtd_part_parser* %19, %struct.mtd_part_parser** %p, align 8, !dbg !3786
  br label %for.cond, !dbg !3786, !llvm.loop !3808

for.end:                                          ; preds = %if.then, %for.cond
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i9, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !3810, !srcloc !3605
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i9, align 8, !dbg !3811
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !3811
  %rlock.i10 = bitcast %union.anon* %21 to %struct.raw_spinlock*, !dbg !3811
  %22 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %ret, align 8, !dbg !3812
  ret %struct.mtd_part_parser* %22, !dbg !3813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_module(i8* %name, ...) #0 !dbg !3814 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3818, metadata !DIExpression()), !dbg !3819
  ret i32 -38, !dbg !3820
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @mtd_part_do_parse(%struct.mtd_part_parser* %parser, %struct.mtd_info* %master, %struct.mtd_partitions* %pparts, %struct.mtd_part_parser_data* %data) #0 !dbg !3821 {
entry:
  %retval = alloca i32, align 4
  %parser.addr = alloca %struct.mtd_part_parser*, align 8
  %master.addr = alloca %struct.mtd_info*, align 8
  %pparts.addr = alloca %struct.mtd_partitions*, align 8
  %data.addr = alloca %struct.mtd_part_parser_data*, align 8
  %ret = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.mtd_part_parser* %parser, %struct.mtd_part_parser** %parser.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %parser.addr, metadata !3824, metadata !DIExpression()), !dbg !3825
  store %struct.mtd_info* %master, %struct.mtd_info** %master.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master.addr, metadata !3826, metadata !DIExpression()), !dbg !3827
  store %struct.mtd_partitions* %pparts, %struct.mtd_partitions** %pparts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partitions** %pparts.addr, metadata !3828, metadata !DIExpression()), !dbg !3829
  store %struct.mtd_part_parser_data* %data, %struct.mtd_part_parser_data** %data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser_data** %data.addr, metadata !3830, metadata !DIExpression()), !dbg !3831
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3832, metadata !DIExpression()), !dbg !3833
  %0 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser.addr, align 8, !dbg !3834
  %parse_fn = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %0, i32 0, i32 4, !dbg !3835
  %1 = load i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)*, i32 (%struct.mtd_info*, %struct.mtd_partition**, %struct.mtd_part_parser_data*)** %parse_fn, align 8, !dbg !3835
  %2 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3836
  %3 = load %struct.mtd_partitions*, %struct.mtd_partitions** %pparts.addr, align 8, !dbg !3837
  %parts = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %3, i32 0, i32 0, !dbg !3838
  %4 = load %struct.mtd_part_parser_data*, %struct.mtd_part_parser_data** %data.addr, align 8, !dbg !3839
  %call = call i32 %1(%struct.mtd_info* %2, %struct.mtd_partition** %parts, %struct.mtd_part_parser_data* %4) #8, !dbg !3840
  store i32 %call, i32* %ret, align 4, !dbg !3841
  store i32 0, i32* %tmp, align 4, !dbg !3842
  %5 = load i32, i32* %tmp, align 4, !dbg !3845
  %6 = load i32, i32* %ret, align 4, !dbg !3846
  %cmp = icmp sle i32 %6, 0, !dbg !3848
  br i1 %cmp, label %if.then, label %if.end, !dbg !3849

if.then:                                          ; preds = %entry
  %7 = load i32, i32* %ret, align 4, !dbg !3850
  store i32 %7, i32* %retval, align 4, !dbg !3851
  br label %return, !dbg !3851

if.end:                                           ; preds = %entry
  %8 = load i32, i32* %ret, align 4, !dbg !3852
  %9 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser.addr, align 8, !dbg !3852
  %name = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %9, i32 0, i32 2, !dbg !3852
  %10 = load i8*, i8** %name, align 8, !dbg !3852
  %11 = load %struct.mtd_info*, %struct.mtd_info** %master.addr, align 8, !dbg !3852
  %name1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %11, i32 0, i32 13, !dbg !3852
  %12 = load i8*, i8** %name1, align 8, !dbg !3852
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.23, i64 0, i64 0), i32 %8, i8* %10, i8* %12) #9, !dbg !3852
  %13 = load i32, i32* %ret, align 4, !dbg !3853
  %14 = load %struct.mtd_partitions*, %struct.mtd_partitions** %pparts.addr, align 8, !dbg !3854
  %nr_parts = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %14, i32 0, i32 1, !dbg !3855
  store i32 %13, i32* %nr_parts, align 8, !dbg !3856
  %15 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser.addr, align 8, !dbg !3857
  %16 = load %struct.mtd_partitions*, %struct.mtd_partitions** %pparts.addr, align 8, !dbg !3858
  %parser3 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %16, i32 0, i32 2, !dbg !3859
  store %struct.mtd_part_parser* %15, %struct.mtd_part_parser** %parser3, align 8, !dbg !3860
  %17 = load i32, i32* %ret, align 4, !dbg !3861
  store i32 %17, i32* %retval, align 4, !dbg !3862
  br label %return, !dbg !3862

return:                                           ; preds = %if.end, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3863
  ret i32 %18, !dbg !3863
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @mtd_part_parser_put(%struct.mtd_part_parser* %p) #0 !dbg !3864 {
entry:
  %p.addr = alloca %struct.mtd_part_parser*, align 8
  store %struct.mtd_part_parser* %p, %struct.mtd_part_parser** %p.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %p.addr, metadata !3867, metadata !DIExpression()), !dbg !3868
  %0 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p.addr, align 8, !dbg !3869
  %owner = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %0, i32 0, i32 1, !dbg !3870
  %1 = load %struct.module*, %struct.module** %owner, align 8, !dbg !3870
  call void @module_put(%struct.module* %1) #8, !dbg !3871
  ret void, !dbg !3872
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @mtd_part_parser_cleanup(%struct.mtd_partitions* %parts) #0 !dbg !3873 {
entry:
  %parts.addr = alloca %struct.mtd_partitions*, align 8
  %parser = alloca %struct.mtd_part_parser*, align 8
  store %struct.mtd_partitions* %parts, %struct.mtd_partitions** %parts.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_partitions** %parts.addr, metadata !3876, metadata !DIExpression()), !dbg !3877
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %parser, metadata !3878, metadata !DIExpression()), !dbg !3879
  %0 = load %struct.mtd_partitions*, %struct.mtd_partitions** %parts.addr, align 8, !dbg !3880
  %tobool = icmp ne %struct.mtd_partitions* %0, null, !dbg !3880
  br i1 %tobool, label %if.end, label %if.then, !dbg !3882

if.then:                                          ; preds = %entry
  br label %if.end9, !dbg !3883

if.end:                                           ; preds = %entry
  %1 = load %struct.mtd_partitions*, %struct.mtd_partitions** %parts.addr, align 8, !dbg !3884
  %parser1 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %1, i32 0, i32 2, !dbg !3885
  %2 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser1, align 8, !dbg !3885
  store %struct.mtd_part_parser* %2, %struct.mtd_part_parser** %parser, align 8, !dbg !3886
  %3 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3887
  %tobool2 = icmp ne %struct.mtd_part_parser* %3, null, !dbg !3887
  br i1 %tobool2, label %if.then3, label %if.end9, !dbg !3889

if.then3:                                         ; preds = %if.end
  %4 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3890
  %cleanup = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %4, i32 0, i32 5, !dbg !3893
  %5 = load void (%struct.mtd_partition*, i32)*, void (%struct.mtd_partition*, i32)** %cleanup, align 8, !dbg !3893
  %tobool4 = icmp ne void (%struct.mtd_partition*, i32)* %5, null, !dbg !3890
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !3894

if.then5:                                         ; preds = %if.then3
  %6 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3895
  %cleanup6 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %6, i32 0, i32 5, !dbg !3896
  %7 = load void (%struct.mtd_partition*, i32)*, void (%struct.mtd_partition*, i32)** %cleanup6, align 8, !dbg !3896
  %8 = load %struct.mtd_partitions*, %struct.mtd_partitions** %parts.addr, align 8, !dbg !3897
  %parts7 = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %8, i32 0, i32 0, !dbg !3898
  %9 = load %struct.mtd_partition*, %struct.mtd_partition** %parts7, align 8, !dbg !3898
  %10 = load %struct.mtd_partitions*, %struct.mtd_partitions** %parts.addr, align 8, !dbg !3899
  %nr_parts = getelementptr inbounds %struct.mtd_partitions, %struct.mtd_partitions* %10, i32 0, i32 1, !dbg !3900
  %11 = load i32, i32* %nr_parts, align 8, !dbg !3900
  call void %7(%struct.mtd_partition* %9, i32 %11) #8, !dbg !3895
  br label %if.end8, !dbg !3895

if.end8:                                          ; preds = %if.then5, %if.then3
  %12 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %parser, align 8, !dbg !3901
  call void @mtd_part_parser_put(%struct.mtd_part_parser* %12) #8, !dbg !3902
  br label %if.end9, !dbg !3903

if.end9:                                          ; preds = %if.then, %if.end8, %if.end
  ret void, !dbg !3904
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @mtd_get_device_size(%struct.mtd_info* %mtd) #0 !dbg !3905 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %master = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %master, metadata !3910, metadata !DIExpression()), !dbg !3911
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3912
  %call = call %struct.mtd_info* @mtd_get_master(%struct.mtd_info* %0) #8, !dbg !3913
  store %struct.mtd_info* %call, %struct.mtd_info** %master, align 8, !dbg !3911
  %1 = load %struct.mtd_info*, %struct.mtd_info** %master, align 8, !dbg !3914
  %size = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %1, i32 0, i32 2, !dbg !3915
  %2 = load i64, i64* %size, align 8, !dbg !3915
  ret i64 %2, !dbg !3916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3917 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3920, metadata !DIExpression()), !dbg !3924
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3930, metadata !DIExpression()), !dbg !3931
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3932, metadata !DIExpression()), !dbg !3933
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3934, metadata !DIExpression()), !dbg !3935
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3936, metadata !DIExpression()), !dbg !3940
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3942, metadata !DIExpression()), !dbg !3946
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3948, metadata !DIExpression()), !dbg !3952
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3957, metadata !DIExpression()), !dbg !3958
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3959, metadata !DIExpression()), !dbg !3960
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3961, metadata !DIExpression()), !dbg !3962
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3963, metadata !DIExpression()), !dbg !3964
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3965, metadata !DIExpression()), !dbg !3966
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3967, metadata !DIExpression()), !dbg !3968
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3969, metadata !DIExpression()), !dbg !3970
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3971, metadata !DIExpression()), !dbg !3972
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3973, metadata !DIExpression()), !dbg !3974
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3975, metadata !DIExpression()), !dbg !3976
  %0 = load i64, i64* %size.addr, align 8, !dbg !3977
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3978
  %or = or i32 %1, 256, !dbg !3979
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3980
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #10, !dbg !3981
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3982

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3983
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3984
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3985

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3986
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3987
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3988
  %call.i.i = call i32 @get_order(i64 %7) #11, !dbg !3989
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3966
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3990
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3991
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3992
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3993
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3994
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3995
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #12, !dbg !3996
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3996
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3996
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3996
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !3996
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3997
  br label %kmalloc.exit, !dbg !3997

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3998
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3999
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3999
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !4001

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !4002
  br label %kmalloc_index.exit.i, !dbg !4002

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4003
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !4005
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !4006

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4007
  br label %kmalloc_index.exit.i, !dbg !4007

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4008
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !4010
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !4011

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4012
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !4013
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !4014

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !4015
  br label %kmalloc_index.exit.i, !dbg !4015

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4016
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !4018
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !4019

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4020
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !4021
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !4022

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !4023
  br label %kmalloc_index.exit.i, !dbg !4023

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4024
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !4026
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !4027

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !4028
  br label %kmalloc_index.exit.i, !dbg !4028

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4029
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !4031
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !4032

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !4033
  br label %kmalloc_index.exit.i, !dbg !4033

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4034
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !4036
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !4037

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !4038
  br label %kmalloc_index.exit.i, !dbg !4038

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4039
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !4041
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !4042

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !4043
  br label %kmalloc_index.exit.i, !dbg !4043

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4044
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !4046
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !4047

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !4048
  br label %kmalloc_index.exit.i, !dbg !4048

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4049
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !4051
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !4052

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !4053
  br label %kmalloc_index.exit.i, !dbg !4053

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4054
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !4056
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !4057

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !4058
  br label %kmalloc_index.exit.i, !dbg !4058

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4059
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !4061
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !4062

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !4063
  br label %kmalloc_index.exit.i, !dbg !4063

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4064
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !4066
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !4067

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !4068
  br label %kmalloc_index.exit.i, !dbg !4068

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4069
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !4071
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !4072

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !4073
  br label %kmalloc_index.exit.i, !dbg !4073

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4074
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !4076
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !4077

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !4078
  br label %kmalloc_index.exit.i, !dbg !4078

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4079
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !4081
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !4082

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !4083
  br label %kmalloc_index.exit.i, !dbg !4083

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4084
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !4086
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !4087

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !4088
  br label %kmalloc_index.exit.i, !dbg !4088

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4089
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !4091
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !4092

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !4093
  br label %kmalloc_index.exit.i, !dbg !4093

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4094
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !4096
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !4097

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !4098
  br label %kmalloc_index.exit.i, !dbg !4098

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4099
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !4101
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !4102

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !4103
  br label %kmalloc_index.exit.i, !dbg !4103

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4104
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !4106
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !4107

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !4108
  br label %kmalloc_index.exit.i, !dbg !4108

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4109
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !4111
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !4112

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !4113
  br label %kmalloc_index.exit.i, !dbg !4113

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4114
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !4116
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !4117

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !4118
  br label %kmalloc_index.exit.i, !dbg !4118

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4119
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !4121
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !4122

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !4123
  br label %kmalloc_index.exit.i, !dbg !4123

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4124
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !4126
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !4127

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !4128
  br label %kmalloc_index.exit.i, !dbg !4128

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4129
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !4131
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !4132

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !4133
  br label %kmalloc_index.exit.i, !dbg !4133

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4134
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !4136
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !4137

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !4138
  br label %kmalloc_index.exit.i, !dbg !4138

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !4139
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !4141
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !4142

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !4143
  br label %kmalloc_index.exit.i, !dbg !4143

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.13, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !4144, !srcloc !4147
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !4148, !srcloc !4151
  unreachable, !dbg !4152

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !4153
  store i32 %45, i32* %index.i, align 4, !dbg !4154
  %46 = load i32, i32* %index.i, align 4, !dbg !4155
  %tobool.i = icmp ne i32 %46, 0, !dbg !4155
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !4157

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !4158
  br label %kmalloc.exit, !dbg !4158

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !4159
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4160
  %and.i.i = and i32 %48, 17, !dbg !4160
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !4160
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !4160
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !4160
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !4160
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !4162

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !4163
  br label %kmalloc_type.exit.i, !dbg !4163

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !4164
  %and2.i.i = and i32 %49, 1, !dbg !4165
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !4164
  %50 = zext i1 %tobool3.i.i to i64, !dbg !4164
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !4164
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !4166
  br label %kmalloc_type.exit.i, !dbg !4166

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !4167
  %idxprom.i = zext i32 %51 to i64, !dbg !4168
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !4168
  %52 = load i32, i32* %index.i, align 4, !dbg !4169
  %idxprom6.i = zext i32 %52 to i64, !dbg !4168
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !4168
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !4168
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !4170
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !4171
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4172
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4173
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #12, !dbg !4174
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !4174
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !4174
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !4174
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !4174
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3935
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !4175
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !4176
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !4177
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !4178
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #12, !dbg !4179
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !4180
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !4181
  store i8* %62, i8** %retval.i, align 8, !dbg !4182
  br label %kmalloc.exit, !dbg !4182

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !4183
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !4184
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #12, !dbg !4185
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !4185
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !4185
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !4185
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !4185
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !4186
  br label %kmalloc.exit, !dbg !4186

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !4187
  ret i8* %65, !dbg !4188
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kstrdup(i8*, i32) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4189 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4192, metadata !DIExpression()), !dbg !4193
  %0 = load i64, i64* %error.addr, align 8, !dbg !4194
  %1 = inttoptr i64 %0 to i8*, !dbg !4195
  ret i8* %1, !dbg !4196
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !4197 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !4198, metadata !DIExpression()), !dbg !4199
  br label %do.body, !dbg !4200

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4201

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !4203

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !4201

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4205
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4205
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !4205
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !4205
  br label %do.end3, !dbg !4205

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !4201

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4207
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !4208
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !4209
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !4210
  ret void, !dbg !4211
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mtd_get_master_ofs(%struct.mtd_info* %mtd, i64 %ofs) #0 !dbg !4212 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %ofs.addr = alloca i64, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4215, metadata !DIExpression()), !dbg !4216
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !4217, metadata !DIExpression()), !dbg !4218
  br label %while.cond, !dbg !4219

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4220
  %parent = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 59, !dbg !4221
  %1 = load %struct.mtd_info*, %struct.mtd_info** %parent, align 8, !dbg !4221
  %tobool = icmp ne %struct.mtd_info* %1, null, !dbg !4219
  br i1 %tobool, label %while.body, label %while.end, !dbg !4219

while.body:                                       ; preds = %while.cond
  %2 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4222
  %3 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %2, i32 0, i32 61, !dbg !4224
  %part = bitcast %union.anon.38* %3 to %struct.mtd_part*, !dbg !4224
  %offset = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 1, !dbg !4225
  %4 = load i64, i64* %offset, align 8, !dbg !4225
  %5 = load i64, i64* %ofs.addr, align 8, !dbg !4226
  %add = add i64 %5, %4, !dbg !4226
  store i64 %add, i64* %ofs.addr, align 8, !dbg !4226
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4227
  %parent1 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 59, !dbg !4228
  %7 = load %struct.mtd_info*, %struct.mtd_info** %parent1, align 8, !dbg !4228
  store %struct.mtd_info* %7, %struct.mtd_info** %mtd.addr, align 8, !dbg !4229
  br label %while.cond, !dbg !4219, !llvm.loop !4230

while.end:                                        ; preds = %while.cond
  %8 = load i64, i64* %ofs.addr, align 8, !dbg !4232
  ret i64 %8, !dbg !4233
}

; Function Attrs: noredzone
declare dso_local i32 @mtd_block_isreserved(%struct.mtd_info*, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @mtd_block_isbad(%struct.mtd_info*, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !4234 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4238, metadata !DIExpression()), !dbg !4243
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4245, metadata !DIExpression()), !dbg !4246
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4247, metadata !DIExpression()), !dbg !4248
  %0 = load i64, i64* %size.addr, align 8, !dbg !4249
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !4251
  br i1 %1, label %if.then, label %if.end447, !dbg !4252

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !4253
  %tobool = icmp ne i64 %2, 0, !dbg !4253
  br i1 %tobool, label %if.end, label %if.then1, !dbg !4256

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !4257
  br label %return, !dbg !4257

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !4258
  %cmp = icmp ult i64 %3, 4096, !dbg !4260
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4261

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4262
  br label %return, !dbg !4262

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub = sub i64 %4, 1, !dbg !4263
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4263
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4263

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub4 = sub i64 %6, 1, !dbg !4263
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4263
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4263

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub6 = sub i64 %8, 1, !dbg !4263
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4263
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4263

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4263

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub9 = sub i64 %9, 1, !dbg !4263
  %and = and i64 %sub9, -9223372036854775808, !dbg !4263
  %tobool10 = icmp ne i64 %and, 0, !dbg !4263
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4263

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4263

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub13 = sub i64 %10, 1, !dbg !4263
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4263
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4263
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4263

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4263

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub18 = sub i64 %11, 1, !dbg !4263
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4263
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4263
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4263

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4263

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub23 = sub i64 %12, 1, !dbg !4263
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4263
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4263
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4263

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4263

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub28 = sub i64 %13, 1, !dbg !4263
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4263
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4263
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4263

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4263

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub33 = sub i64 %14, 1, !dbg !4263
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4263
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4263
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4263

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4263

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub38 = sub i64 %15, 1, !dbg !4263
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4263
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4263
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4263

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4263

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub43 = sub i64 %16, 1, !dbg !4263
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4263
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4263
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4263

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4263

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub48 = sub i64 %17, 1, !dbg !4263
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4263
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4263
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4263

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4263

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub53 = sub i64 %18, 1, !dbg !4263
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4263
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4263
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4263

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4263

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub58 = sub i64 %19, 1, !dbg !4263
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4263
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4263
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4263

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4263

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub63 = sub i64 %20, 1, !dbg !4263
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4263
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4263
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4263

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4263

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub68 = sub i64 %21, 1, !dbg !4263
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4263
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4263
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4263

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4263

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub73 = sub i64 %22, 1, !dbg !4263
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4263
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4263
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4263

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4263

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub78 = sub i64 %23, 1, !dbg !4263
  %and79 = and i64 %sub78, 562949953421312, !dbg !4263
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4263
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4263

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4263

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub83 = sub i64 %24, 1, !dbg !4263
  %and84 = and i64 %sub83, 281474976710656, !dbg !4263
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4263
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4263

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4263

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub88 = sub i64 %25, 1, !dbg !4263
  %and89 = and i64 %sub88, 140737488355328, !dbg !4263
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4263
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4263

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4263

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub93 = sub i64 %26, 1, !dbg !4263
  %and94 = and i64 %sub93, 70368744177664, !dbg !4263
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4263
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4263

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4263

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub98 = sub i64 %27, 1, !dbg !4263
  %and99 = and i64 %sub98, 35184372088832, !dbg !4263
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4263
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4263

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4263

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub103 = sub i64 %28, 1, !dbg !4263
  %and104 = and i64 %sub103, 17592186044416, !dbg !4263
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4263
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4263

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4263

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub108 = sub i64 %29, 1, !dbg !4263
  %and109 = and i64 %sub108, 8796093022208, !dbg !4263
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4263
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4263

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4263

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub113 = sub i64 %30, 1, !dbg !4263
  %and114 = and i64 %sub113, 4398046511104, !dbg !4263
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4263
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4263

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4263

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub118 = sub i64 %31, 1, !dbg !4263
  %and119 = and i64 %sub118, 2199023255552, !dbg !4263
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4263
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4263

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4263

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub123 = sub i64 %32, 1, !dbg !4263
  %and124 = and i64 %sub123, 1099511627776, !dbg !4263
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4263
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4263

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4263

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub128 = sub i64 %33, 1, !dbg !4263
  %and129 = and i64 %sub128, 549755813888, !dbg !4263
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4263
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4263

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4263

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub133 = sub i64 %34, 1, !dbg !4263
  %and134 = and i64 %sub133, 274877906944, !dbg !4263
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4263
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4263

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4263

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub138 = sub i64 %35, 1, !dbg !4263
  %and139 = and i64 %sub138, 137438953472, !dbg !4263
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4263
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4263

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4263

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub143 = sub i64 %36, 1, !dbg !4263
  %and144 = and i64 %sub143, 68719476736, !dbg !4263
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4263
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4263

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4263

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub148 = sub i64 %37, 1, !dbg !4263
  %and149 = and i64 %sub148, 34359738368, !dbg !4263
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4263
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4263

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4263

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub153 = sub i64 %38, 1, !dbg !4263
  %and154 = and i64 %sub153, 17179869184, !dbg !4263
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4263
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4263

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4263

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub158 = sub i64 %39, 1, !dbg !4263
  %and159 = and i64 %sub158, 8589934592, !dbg !4263
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4263
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4263

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4263

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub163 = sub i64 %40, 1, !dbg !4263
  %and164 = and i64 %sub163, 4294967296, !dbg !4263
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4263
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4263

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4263

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub168 = sub i64 %41, 1, !dbg !4263
  %and169 = and i64 %sub168, 2147483648, !dbg !4263
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4263
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4263

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4263

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub173 = sub i64 %42, 1, !dbg !4263
  %and174 = and i64 %sub173, 1073741824, !dbg !4263
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4263
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4263

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4263

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub178 = sub i64 %43, 1, !dbg !4263
  %and179 = and i64 %sub178, 536870912, !dbg !4263
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4263
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4263

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4263

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub183 = sub i64 %44, 1, !dbg !4263
  %and184 = and i64 %sub183, 268435456, !dbg !4263
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4263
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4263

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4263

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub188 = sub i64 %45, 1, !dbg !4263
  %and189 = and i64 %sub188, 134217728, !dbg !4263
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4263
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4263

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4263

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub193 = sub i64 %46, 1, !dbg !4263
  %and194 = and i64 %sub193, 67108864, !dbg !4263
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4263
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4263

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4263

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub198 = sub i64 %47, 1, !dbg !4263
  %and199 = and i64 %sub198, 33554432, !dbg !4263
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4263
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4263

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4263

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub203 = sub i64 %48, 1, !dbg !4263
  %and204 = and i64 %sub203, 16777216, !dbg !4263
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4263
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4263

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4263

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub208 = sub i64 %49, 1, !dbg !4263
  %and209 = and i64 %sub208, 8388608, !dbg !4263
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4263
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4263

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4263

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub213 = sub i64 %50, 1, !dbg !4263
  %and214 = and i64 %sub213, 4194304, !dbg !4263
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4263
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4263

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4263

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub218 = sub i64 %51, 1, !dbg !4263
  %and219 = and i64 %sub218, 2097152, !dbg !4263
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4263
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4263

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4263

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub223 = sub i64 %52, 1, !dbg !4263
  %and224 = and i64 %sub223, 1048576, !dbg !4263
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4263
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4263

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4263

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub228 = sub i64 %53, 1, !dbg !4263
  %and229 = and i64 %sub228, 524288, !dbg !4263
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4263
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4263

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4263

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub233 = sub i64 %54, 1, !dbg !4263
  %and234 = and i64 %sub233, 262144, !dbg !4263
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4263
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4263

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4263

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub238 = sub i64 %55, 1, !dbg !4263
  %and239 = and i64 %sub238, 131072, !dbg !4263
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4263
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4263

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4263

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub243 = sub i64 %56, 1, !dbg !4263
  %and244 = and i64 %sub243, 65536, !dbg !4263
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4263
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4263

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4263

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub248 = sub i64 %57, 1, !dbg !4263
  %and249 = and i64 %sub248, 32768, !dbg !4263
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4263
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4263

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4263

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub253 = sub i64 %58, 1, !dbg !4263
  %and254 = and i64 %sub253, 16384, !dbg !4263
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4263
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4263

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4263

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub258 = sub i64 %59, 1, !dbg !4263
  %and259 = and i64 %sub258, 8192, !dbg !4263
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4263
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4263

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4263

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub263 = sub i64 %60, 1, !dbg !4263
  %and264 = and i64 %sub263, 4096, !dbg !4263
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4263
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4263

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4263

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub268 = sub i64 %61, 1, !dbg !4263
  %and269 = and i64 %sub268, 2048, !dbg !4263
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4263
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4263

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4263

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub273 = sub i64 %62, 1, !dbg !4263
  %and274 = and i64 %sub273, 1024, !dbg !4263
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4263
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4263

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4263

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub278 = sub i64 %63, 1, !dbg !4263
  %and279 = and i64 %sub278, 512, !dbg !4263
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4263
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4263

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4263

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub283 = sub i64 %64, 1, !dbg !4263
  %and284 = and i64 %sub283, 256, !dbg !4263
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4263
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4263

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4263

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub288 = sub i64 %65, 1, !dbg !4263
  %and289 = and i64 %sub288, 128, !dbg !4263
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4263
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4263

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4263

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub293 = sub i64 %66, 1, !dbg !4263
  %and294 = and i64 %sub293, 64, !dbg !4263
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4263
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4263

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4263

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub298 = sub i64 %67, 1, !dbg !4263
  %and299 = and i64 %sub298, 32, !dbg !4263
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4263
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4263

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4263

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub303 = sub i64 %68, 1, !dbg !4263
  %and304 = and i64 %sub303, 16, !dbg !4263
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4263
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4263

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4263

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub308 = sub i64 %69, 1, !dbg !4263
  %and309 = and i64 %sub308, 8, !dbg !4263
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4263
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4263

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4263

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub313 = sub i64 %70, 1, !dbg !4263
  %and314 = and i64 %sub313, 4, !dbg !4263
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4263
  %71 = zext i1 %tobool315 to i64, !dbg !4263
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4263
  br label %cond.end, !dbg !4263

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4263
  br label %cond.end317, !dbg !4263

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4263
  br label %cond.end319, !dbg !4263

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4263
  br label %cond.end321, !dbg !4263

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4263
  br label %cond.end323, !dbg !4263

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4263
  br label %cond.end325, !dbg !4263

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4263
  br label %cond.end327, !dbg !4263

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4263
  br label %cond.end329, !dbg !4263

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4263
  br label %cond.end331, !dbg !4263

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4263
  br label %cond.end333, !dbg !4263

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4263
  br label %cond.end335, !dbg !4263

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4263
  br label %cond.end337, !dbg !4263

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4263
  br label %cond.end339, !dbg !4263

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4263
  br label %cond.end341, !dbg !4263

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4263
  br label %cond.end343, !dbg !4263

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4263
  br label %cond.end345, !dbg !4263

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4263
  br label %cond.end347, !dbg !4263

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4263
  br label %cond.end349, !dbg !4263

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4263
  br label %cond.end351, !dbg !4263

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4263
  br label %cond.end353, !dbg !4263

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4263
  br label %cond.end355, !dbg !4263

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4263
  br label %cond.end357, !dbg !4263

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4263
  br label %cond.end359, !dbg !4263

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4263
  br label %cond.end361, !dbg !4263

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4263
  br label %cond.end363, !dbg !4263

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4263
  br label %cond.end365, !dbg !4263

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4263
  br label %cond.end367, !dbg !4263

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4263
  br label %cond.end369, !dbg !4263

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4263
  br label %cond.end371, !dbg !4263

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4263
  br label %cond.end373, !dbg !4263

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4263
  br label %cond.end375, !dbg !4263

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4263
  br label %cond.end377, !dbg !4263

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4263
  br label %cond.end379, !dbg !4263

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4263
  br label %cond.end381, !dbg !4263

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4263
  br label %cond.end383, !dbg !4263

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4263
  br label %cond.end385, !dbg !4263

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4263
  br label %cond.end387, !dbg !4263

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4263
  br label %cond.end389, !dbg !4263

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4263
  br label %cond.end391, !dbg !4263

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4263
  br label %cond.end393, !dbg !4263

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4263
  br label %cond.end395, !dbg !4263

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4263
  br label %cond.end397, !dbg !4263

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4263
  br label %cond.end399, !dbg !4263

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4263
  br label %cond.end401, !dbg !4263

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4263
  br label %cond.end403, !dbg !4263

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4263
  br label %cond.end405, !dbg !4263

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4263
  br label %cond.end407, !dbg !4263

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4263
  br label %cond.end409, !dbg !4263

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4263
  br label %cond.end411, !dbg !4263

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4263
  br label %cond.end413, !dbg !4263

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4263
  br label %cond.end415, !dbg !4263

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4263
  br label %cond.end417, !dbg !4263

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4263
  br label %cond.end419, !dbg !4263

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4263
  br label %cond.end421, !dbg !4263

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4263
  br label %cond.end423, !dbg !4263

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4263
  br label %cond.end425, !dbg !4263

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4263
  br label %cond.end427, !dbg !4263

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4263
  br label %cond.end429, !dbg !4263

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4263
  br label %cond.end431, !dbg !4263

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4263
  br label %cond.end433, !dbg !4263

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4263
  br label %cond.end435, !dbg !4263

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4263
  br label %cond.end437, !dbg !4263

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4263
  br label %cond.end440, !dbg !4263

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4263

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4263
  br label %cond.end444, !dbg !4263

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4263
  %sub443 = sub i64 %72, 1, !dbg !4263
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !4263
  br label %cond.end444, !dbg !4263

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4263
  %sub446 = sub i32 %cond445, 12, !dbg !4264
  %add = add i32 %sub446, 1, !dbg !4265
  store i32 %add, i32* %retval, align 4, !dbg !4266
  br label %return, !dbg !4266

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4267
  %dec = add i64 %73, -1, !dbg !4267
  store i64 %dec, i64* %size.addr, align 8, !dbg !4267
  %74 = load i64, i64* %size.addr, align 8, !dbg !4268
  %shr = lshr i64 %74, 12, !dbg !4268
  store i64 %shr, i64* %size.addr, align 8, !dbg !4268
  %75 = load i64, i64* %size.addr, align 8, !dbg !4269
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4246
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4270
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4271
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #13, !dbg !4270, !srcloc !4272
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4270
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4273
  %add.i = add i32 %79, 1, !dbg !4274
  store i32 %add.i, i32* %retval, align 4, !dbg !4275
  br label %return, !dbg !4275

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4276
  ret i32 %80, !dbg !4276
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !4277 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !4238, metadata !DIExpression()), !dbg !4281
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !4245, metadata !DIExpression()), !dbg !4283
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4284, metadata !DIExpression()), !dbg !4285
  %0 = load i64, i64* %n.addr, align 8, !dbg !4286
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4283
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4287
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4288
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #13, !dbg !4287, !srcloc !4272
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4287
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4289
  %add.i = add i32 %4, 1, !dbg !4290
  %sub = sub i32 %add.i, 1, !dbg !4291
  ret i32 %sub, !dbg !4292
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4293 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4296, metadata !DIExpression()), !dbg !4297
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4298, metadata !DIExpression()), !dbg !4299
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4300, metadata !DIExpression()), !dbg !4301
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4302, metadata !DIExpression()), !dbg !4303
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4304
  ret i8* %0, !dbg !4305
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4306 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4309, metadata !DIExpression()), !dbg !4310
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4311, metadata !DIExpression()), !dbg !4312
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4313, metadata !DIExpression()), !dbg !4314
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4315
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4317
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4318
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #8, !dbg !4319
  br i1 %call, label %if.end, label %if.then, !dbg !4320

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !4321

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4322
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4323
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !4324
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !4325
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4326
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4327
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !4328
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !4329
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4330
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4331
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !4332
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !4333
  br label %do.body, !dbg !4334

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !4335

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !4337

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !4335

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !4339
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4339
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !4339
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !4339
  br label %do.end7, !dbg !4339

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !4335

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !4341
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4342 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !4345, metadata !DIExpression()), !dbg !4346
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4347, metadata !DIExpression()), !dbg !4348
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4349, metadata !DIExpression()), !dbg !4350
  ret i1 true, !dbg !4351
}

; Function Attrs: noredzone
declare dso_local i32 @sysfs_create_files(%struct.kobject*, %struct.attribute**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @mtd_partition_offset_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !4352 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %mtd = alloca %struct.mtd_info*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4353, metadata !DIExpression()), !dbg !4354
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !4355, metadata !DIExpression()), !dbg !4356
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4357, metadata !DIExpression()), !dbg !4358
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd, metadata !4359, metadata !DIExpression()), !dbg !4360
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4361
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #8, !dbg !4362
  %1 = bitcast i8* %call to %struct.mtd_info*, !dbg !4362
  store %struct.mtd_info* %1, %struct.mtd_info** %mtd, align 8, !dbg !4360
  %2 = load i8*, i8** %buf.addr, align 8, !dbg !4363
  %3 = load %struct.mtd_info*, %struct.mtd_info** %mtd, align 8, !dbg !4364
  %4 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %3, i32 0, i32 61, !dbg !4365
  %part = bitcast %union.anon.38* %4 to %struct.mtd_part*, !dbg !4365
  %offset = getelementptr inbounds %struct.mtd_part, %struct.mtd_part* %part, i32 0, i32 1, !dbg !4366
  %5 = load i64, i64* %offset, align 8, !dbg !4366
  %call1 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %2, i64 4096, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.16, i64 0, i64 0), i64 %5) #8, !dbg !4367
  %conv = sext i32 %call1 to i64, !dbg !4367
  ret i64 %conv, !dbg !4368
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !4369 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4372, metadata !DIExpression()), !dbg !4373
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4374
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !4375
  %1 = load i8*, i8** %driver_data, align 8, !dbg !4375
  ret i8* %1, !dbg !4376
}

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !4377 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4378, metadata !DIExpression()), !dbg !4379
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4380
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #8, !dbg !4382
  br i1 %call, label %if.end, label %if.then, !dbg !4383

if.then:                                          ; preds = %entry
  br label %return, !dbg !4384

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4385
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4386
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !4386
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !4387
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4388
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4388
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #8, !dbg !4389
  br label %return, !dbg !4390

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !4390
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !4391 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !4394, metadata !DIExpression()), !dbg !4395
  ret i1 true, !dbg !4396
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !4397 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !4398, metadata !DIExpression()), !dbg !4399
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !4400, metadata !DIExpression()), !dbg !4401
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4402
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4403
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !4404
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !4405
  br label %do.body, !dbg !4406

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !4407

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !4409

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !4407

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !4411
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !4411
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !4411
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !4411
  br label %do.end5, !dbg !4411

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !4407

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !4413
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @mtd_has_partitions(%struct.mtd_info* %mtd) #0 !dbg !4414 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4415, metadata !DIExpression()), !dbg !4416
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4417
  %partitions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 60, !dbg !4418
  %call = call i32 @list_empty(%struct.list_head* %partitions) #8, !dbg !4419
  %tobool = icmp ne i32 %call, 0, !dbg !4420
  %lnot = xor i1 %tobool, true, !dbg !4420
  ret i1 %lnot, !dbg !4421
}

; Function Attrs: noredzone
declare dso_local i32 @del_mtd_device(%struct.mtd_info*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4422 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4427, metadata !DIExpression()), !dbg !4428
  br label %do.body, !dbg !4429

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4431

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4429
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4429
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4429
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4431
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4429
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4433
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4434
  %conv = zext i1 %cmp to i32, !dbg !4434
  ret i32 %conv, !dbg !4435
}

; Function Attrs: noredzone
declare dso_local void @sysfs_remove_files(%struct.kobject*, %struct.attribute**) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @mtd_get_of_node(%struct.mtd_info* %mtd) #0 !dbg !4436 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !4439, metadata !DIExpression()), !dbg !4440
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !4441
  %dev = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 55, !dbg !4442
  %call = call %struct.device_node* @dev_of_node(%struct.device* %dev) #8, !dbg !4443
  ret %struct.device_node* %call, !dbg !4444
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !4445 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4448, metadata !DIExpression()), !dbg !4449
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !4450
  ret %struct.device_node* %0, !dbg !4451
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #3

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #3

; Function Attrs: noredzone
declare dso_local i8* @of_prop_next_string(%struct.property*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.mtd_part_parser* @mtd_part_get_compatible_parser(i8* %compat) #0 !dbg !4452 {
entry:
  %lock.addr.i20 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i20, metadata !3568, metadata !DIExpression()), !dbg !4453
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !3576, metadata !DIExpression()), !dbg !4455
  %compat.addr = alloca i8*, align 8
  %p = alloca %struct.mtd_part_parser*, align 8
  %ret = alloca %struct.mtd_part_parser*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.mtd_part_parser*, align 8
  %matches = alloca %struct.of_device_id*, align 8
  %__mptr13 = alloca i8*, align 8
  %tmp17 = alloca %struct.mtd_part_parser*, align 8
  store i8* %compat, i8** %compat.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %compat.addr, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %p, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.declare(metadata %struct.mtd_part_parser** %ret, metadata !4461, metadata !DIExpression()), !dbg !4462
  store %struct.mtd_part_parser* null, %struct.mtd_part_parser** %ret, align 8, !dbg !4462
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4463, !srcloc !3597
  %0 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4464
  %1 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %0, i32 0, i32 0, !dbg !4464
  %rlock.i = bitcast %union.anon* %1 to %struct.raw_spinlock*, !dbg !4464
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4465, metadata !DIExpression()), !dbg !4468
  %2 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @part_parsers, i32 0, i32 0), align 8, !dbg !4468
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !4468
  store i8* %3, i8** %__mptr, align 8, !dbg !4468
  br label %do.body, !dbg !4468

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4469

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !4468
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !4468
  %5 = bitcast i8* %add.ptr to %struct.mtd_part_parser*, !dbg !4468
  store %struct.mtd_part_parser* %5, %struct.mtd_part_parser** %tmp, align 8, !dbg !4469
  %6 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %tmp, align 8, !dbg !4468
  store %struct.mtd_part_parser* %6, %struct.mtd_part_parser** %p, align 8, !dbg !4471
  br label %for.cond, !dbg !4471

for.cond:                                         ; preds = %do.end16, %do.end
  %7 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !4472
  %list = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %7, i32 0, i32 0, !dbg !4472
  %cmp = icmp eq %struct.list_head* %list, @part_parsers, !dbg !4472
  %lnot = xor i1 %cmp, true, !dbg !4472
  br i1 %lnot, label %for.body, label %for.end19, !dbg !4471

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata %struct.of_device_id** %matches, metadata !4474, metadata !DIExpression()), !dbg !4476
  %8 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !4477
  %of_match_table = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %8, i32 0, i32 3, !dbg !4478
  %9 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table, align 8, !dbg !4478
  store %struct.of_device_id* %9, %struct.of_device_id** %matches, align 8, !dbg !4479
  %10 = load %struct.of_device_id*, %struct.of_device_id** %matches, align 8, !dbg !4480
  %tobool = icmp ne %struct.of_device_id* %10, null, !dbg !4480
  br i1 %tobool, label %if.end, label %if.then, !dbg !4482

if.then:                                          ; preds = %for.body
  br label %for.inc12, !dbg !4483

if.end:                                           ; preds = %for.body
  br label %for.cond1, !dbg !4484

for.cond1:                                        ; preds = %for.inc, %if.end
  %11 = load %struct.of_device_id*, %struct.of_device_id** %matches, align 8, !dbg !4485
  %compatible = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %11, i32 0, i32 2, !dbg !4488
  %arrayidx = getelementptr [128 x i8], [128 x i8]* %compatible, i64 0, i64 0, !dbg !4485
  %12 = load i8, i8* %arrayidx, align 8, !dbg !4485
  %tobool2 = icmp ne i8 %12, 0, !dbg !4489
  br i1 %tobool2, label %for.body3, label %for.end, !dbg !4489

for.body3:                                        ; preds = %for.cond1
  %13 = load %struct.of_device_id*, %struct.of_device_id** %matches, align 8, !dbg !4490
  %compatible4 = getelementptr inbounds %struct.of_device_id, %struct.of_device_id* %13, i32 0, i32 2, !dbg !4493
  %arraydecay = getelementptr inbounds [128 x i8], [128 x i8]* %compatible4, i64 0, i64 0, !dbg !4490
  %14 = load i8*, i8** %compat.addr, align 8, !dbg !4494
  %call = call i32 @strcmp(i8* %arraydecay, i8* %14) #8, !dbg !4495
  %tobool5 = icmp ne i32 %call, 0, !dbg !4495
  br i1 %tobool5, label %if.end8, label %land.lhs.true, !dbg !4496

land.lhs.true:                                    ; preds = %for.body3
  %15 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !4497
  %owner = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %15, i32 0, i32 1, !dbg !4498
  %16 = load %struct.module*, %struct.module** %owner, align 8, !dbg !4498
  %call6 = call zeroext i1 @try_module_get(%struct.module* %16) #8, !dbg !4499
  br i1 %call6, label %if.then7, label %if.end8, !dbg !4500

if.then7:                                         ; preds = %land.lhs.true
  %17 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !4501
  store %struct.mtd_part_parser* %17, %struct.mtd_part_parser** %ret, align 8, !dbg !4503
  br label %for.end, !dbg !4504

if.end8:                                          ; preds = %land.lhs.true, %for.body3
  br label %for.inc, !dbg !4505

for.inc:                                          ; preds = %if.end8
  %18 = load %struct.of_device_id*, %struct.of_device_id** %matches, align 8, !dbg !4506
  %incdec.ptr = getelementptr %struct.of_device_id, %struct.of_device_id* %18, i32 1, !dbg !4506
  store %struct.of_device_id* %incdec.ptr, %struct.of_device_id** %matches, align 8, !dbg !4506
  br label %for.cond1, !dbg !4507, !llvm.loop !4508

for.end:                                          ; preds = %if.then7, %for.cond1
  %19 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %ret, align 8, !dbg !4510
  %tobool9 = icmp ne %struct.mtd_part_parser* %19, null, !dbg !4510
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !4512

if.then10:                                        ; preds = %for.end
  br label %for.end19, !dbg !4513

if.end11:                                         ; preds = %for.end
  br label %for.inc12, !dbg !4514

for.inc12:                                        ; preds = %if.end11, %if.then
  call void @llvm.dbg.declare(metadata i8** %__mptr13, metadata !4515, metadata !DIExpression()), !dbg !4517
  %20 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %p, align 8, !dbg !4517
  %list14 = getelementptr inbounds %struct.mtd_part_parser, %struct.mtd_part_parser* %20, i32 0, i32 0, !dbg !4517
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %list14, i32 0, i32 0, !dbg !4517
  %21 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4517
  %22 = bitcast %struct.list_head* %21 to i8*, !dbg !4517
  store i8* %22, i8** %__mptr13, align 8, !dbg !4517
  br label %do.body15, !dbg !4517

do.body15:                                        ; preds = %for.inc12
  br label %do.end16, !dbg !4518

do.end16:                                         ; preds = %do.body15
  %23 = load i8*, i8** %__mptr13, align 8, !dbg !4517
  %add.ptr18 = getelementptr i8, i8* %23, i64 0, !dbg !4517
  %24 = bitcast i8* %add.ptr18 to %struct.mtd_part_parser*, !dbg !4517
  store %struct.mtd_part_parser* %24, %struct.mtd_part_parser** %tmp17, align 8, !dbg !4518
  %25 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %tmp17, align 8, !dbg !4517
  store %struct.mtd_part_parser* %25, %struct.mtd_part_parser** %p, align 8, !dbg !4472
  br label %for.cond, !dbg !4472, !llvm.loop !4520

for.end19:                                        ; preds = %if.then10, %for.cond
  store %struct.spinlock* @part_parser_lock, %struct.spinlock** %lock.addr.i20, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #10, !dbg !4522, !srcloc !3605
  %26 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i20, align 8, !dbg !4523
  %27 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %26, i32 0, i32 0, !dbg !4523
  %rlock.i21 = bitcast %union.anon* %27 to %struct.raw_spinlock*, !dbg !4523
  %28 = load %struct.mtd_part_parser*, %struct.mtd_part_parser** %ret, align 8, !dbg !4524
  ret %struct.mtd_part_parser* %28, !dbg !4525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !4526 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !4529, metadata !DIExpression()), !dbg !4530
  ret void, !dbg !4531
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @dev_of_node(%struct.device* %dev) #0 !dbg !4532 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4537
  %tobool = icmp ne %struct.device* %0, null, !dbg !4537
  br i1 %tobool, label %if.end, label %if.then, !dbg !4539

if.then:                                          ; preds = %entry
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !4540
  br label %return, !dbg !4540

if.end:                                           ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4541
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !4542
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !4542
  store %struct.device_node* %2, %struct.device_node** %retval, align 8, !dbg !4543
  br label %return, !dbg !4543

return:                                           ; preds = %if.end, %if.then
  %3 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !4544
  ret %struct.device_node* %3, !dbg !4544
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !4545 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4549, metadata !DIExpression()), !dbg !4550
  ret i1 true, !dbg !4551
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !4552 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !4555, metadata !DIExpression()), !dbg !4556
  ret void, !dbg !4557
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { cold noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2337, !2338, !2339, !2340}
!llvm.ident = !{!2341}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "part_parser_lock", scope: !2, file: !3, line: 441, type: !312, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !2309, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/mtdpart.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !57}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !51, line: 305, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56}
!53 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!57 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !58, line: 10, baseType: !7, size: 32, elements: !59)
!58 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!59 = !{!60, !61}
!60 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!61 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!62 = !{!63, !64, !1639, !79, !82, !2271, !147, !387, !2273, !2275}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !66, line: 235, size: 9664, elements: !67)
!66 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !72, !78, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !97, !99, !114, !135, !136, !137, !138, !148, !158, !174, !178, !183, !189, !190, !209, !210, !221, !222, !223, !224, !225, !226, !237, !241, !245, !246, !247, !251, !252, !253, !254, !258, !259, !260, !261, !262, !265, !277, !284, !285, !286, !290, !2241, !2242, !2250, !2254, !2255, !2256}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !65, file: !66, line: 236, baseType: !69, size: 8)
!69 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !70, line: 79, baseType: !71)
!70 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!71 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!72 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !65, file: !66, line: 237, baseType: !73, size: 32, offset: 32)
!73 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !70, line: 104, baseType: !74)
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !75, line: 21, baseType: !76)
!75 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!76 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !77, line: 27, baseType: !7)
!77 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!78 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !65, file: !66, line: 238, baseType: !79, size: 64, offset: 64)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !70, line: 107, baseType: !80)
!80 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !75, line: 23, baseType: !81)
!81 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !77, line: 31, baseType: !82)
!82 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !65, file: !66, line: 244, baseType: !73, size: 32, offset: 128)
!84 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !65, file: !66, line: 252, baseType: !73, size: 32, offset: 160)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !65, file: !66, line: 263, baseType: !73, size: 32, offset: 192)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !65, file: !66, line: 265, baseType: !73, size: 32, offset: 224)
!87 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !65, file: !66, line: 266, baseType: !73, size: 32, offset: 256)
!88 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !65, file: !66, line: 272, baseType: !7, size: 32, offset: 288)
!89 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !65, file: !66, line: 273, baseType: !7, size: 32, offset: 320)
!90 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !65, file: !66, line: 275, baseType: !7, size: 32, offset: 352)
!91 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !65, file: !66, line: 276, baseType: !7, size: 32, offset: 384)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !65, file: !66, line: 285, baseType: !7, size: 32, offset: 416)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !65, file: !66, line: 288, baseType: !94, size: 64, offset: 448)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !65, file: !66, line: 289, baseType: !98, size: 32, offset: 512)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !65, file: !66, line: 292, baseType: !100, size: 64, offset: 576)
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !102)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !66, line: 101, size: 128, elements: !103)
!103 = !{!104, !113}
!104 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !102, file: !66, line: 102, baseType: !105, size: 64)
!105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!106 = !DISubroutineType(types: !107)
!107 = !{!98, !64, !98, !108}
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !66, line: 87, size: 64, elements: !110)
!110 = !{!111, !112}
!111 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !109, file: !66, line: 88, baseType: !74, size: 32)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !109, file: !66, line: 89, baseType: !74, size: 32, offset: 32)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !102, file: !66, line: 104, baseType: !105, size: 64, offset: 64)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !65, file: !66, line: 295, baseType: !115, size: 64, offset: 640)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !117)
!117 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !66, line: 176, size: 192, elements: !118)
!118 = !{!119, !120, !129}
!119 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !117, file: !66, line: 177, baseType: !98, size: 32)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !117, file: !66, line: 178, baseType: !121, size: 64, offset: 64)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!98, !64, !98, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !66, line: 138, size: 64, elements: !126)
!126 = !{!127, !128}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !125, file: !66, line: 139, baseType: !98, size: 32)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !125, file: !66, line: 140, baseType: !98, size: 32, offset: 32)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !117, file: !66, line: 180, baseType: !130, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!98, !64, !133}
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !125)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !65, file: !66, line: 298, baseType: !7, size: 32, offset: 704)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !65, file: !66, line: 301, baseType: !7, size: 32, offset: 736)
!137 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !65, file: !66, line: 306, baseType: !98, size: 32, offset: 768)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !65, file: !66, line: 307, baseType: !139, size: 64, offset: 832)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !66, line: 36, size: 192, elements: !141)
!141 = !{!142, !143, !144, !145}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !140, file: !66, line: 37, baseType: !79, size: 64)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !140, file: !66, line: 38, baseType: !73, size: 32, offset: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !140, file: !66, line: 39, baseType: !73, size: 32, offset: 96)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !140, file: !66, line: 40, baseType: !146, size: 64, offset: 128)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !65, file: !66, line: 313, baseType: !149, size: 64, offset: 896)
!149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !150, size: 64)
!150 = !DISubroutineType(types: !151)
!151 = !{!98, !64, !152}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !66, line: 30, size: 192, elements: !154)
!154 = !{!155, !156, !157}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !153, file: !66, line: 31, baseType: !79, size: 64)
!156 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !153, file: !66, line: 32, baseType: !79, size: 64, offset: 64)
!157 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !153, file: !66, line: 33, baseType: !79, size: 64, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !65, file: !66, line: 314, baseType: !159, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!98, !64, !162, !166, !169, !170, !171}
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !70, line: 46, baseType: !163)
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !164, line: 88, baseType: !165)
!164 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!165 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!166 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !70, line: 55, baseType: !167)
!167 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !164, line: 72, baseType: !168)
!168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !164, line: 16, baseType: !147)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !63, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !70, line: 158, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !70, line: 153, baseType: !80)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !65, file: !66, line: 316, baseType: !175, size: 64, offset: 1024)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!98, !64, !162, !166}
!178 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !65, file: !66, line: 317, baseType: !179, size: 64, offset: 1088)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DISubroutineType(types: !181)
!181 = !{!98, !64, !162, !166, !169, !182}
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !65, file: !66, line: 319, baseType: !184, size: 64, offset: 1152)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!98, !64, !162, !166, !169, !187}
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !65, file: !66, line: 321, baseType: !184, size: 64, offset: 1216)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !65, file: !66, line: 323, baseType: !191, size: 64, offset: 1280)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{!98, !64, !162, !194}
!194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !195, size: 64)
!195 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !66, line: 64, size: 512, elements: !196)
!196 = !{!197, !198, !199, !200, !201, !202, !203, !208}
!197 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !195, file: !66, line: 65, baseType: !7, size: 32)
!198 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !195, file: !66, line: 66, baseType: !166, size: 64, offset: 64)
!199 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !195, file: !66, line: 67, baseType: !166, size: 64, offset: 128)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !195, file: !66, line: 68, baseType: !166, size: 64, offset: 192)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !195, file: !66, line: 69, baseType: !166, size: 64, offset: 256)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !195, file: !66, line: 70, baseType: !73, size: 32, offset: 320)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !195, file: !66, line: 71, baseType: !204, size: 64, offset: 384)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !70, line: 102, baseType: !206)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !75, line: 17, baseType: !207)
!207 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !77, line: 21, baseType: !71)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !195, file: !66, line: 72, baseType: !204, size: 64, offset: 448)
!209 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !65, file: !66, line: 325, baseType: !191, size: 64, offset: 1344)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !65, file: !66, line: 327, baseType: !211, size: 64, offset: 1408)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!98, !64, !166, !169, !214}
!214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !215, size: 64)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !216, line: 146, size: 96, elements: !217)
!216 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !219, !220}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !215, file: !216, line: 147, baseType: !76, size: 32)
!219 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !215, file: !216, line: 148, baseType: !76, size: 32, offset: 32)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !215, file: !216, line: 149, baseType: !76, size: 32, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !65, file: !66, line: 329, baseType: !179, size: 64, offset: 1472)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !65, file: !66, line: 331, baseType: !211, size: 64, offset: 1536)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !65, file: !66, line: 333, baseType: !179, size: 64, offset: 1600)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !65, file: !66, line: 335, baseType: !179, size: 64, offset: 1664)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !65, file: !66, line: 337, baseType: !175, size: 64, offset: 1728)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !65, file: !66, line: 339, baseType: !227, size: 64, offset: 1792)
!227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !228, size: 64)
!228 = !DISubroutineType(types: !229)
!229 = !{!98, !64, !230, !147, !162, !169}
!230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !231, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !232)
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !233, line: 15, size: 128, elements: !234)
!233 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!234 = !{!235, !236}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !232, file: !233, line: 16, baseType: !63, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !232, file: !233, line: 17, baseType: !166, size: 64, offset: 64)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !65, file: !66, line: 341, baseType: !238, size: 64, offset: 1856)
!238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !239, size: 64)
!239 = !DISubroutineType(types: !240)
!240 = !{null, !64}
!241 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !65, file: !66, line: 342, baseType: !242, size: 64, offset: 1920)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!98, !64, !162, !79}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !65, file: !66, line: 343, baseType: !242, size: 64, offset: 1984)
!246 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !65, file: !66, line: 344, baseType: !242, size: 64, offset: 2048)
!247 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !65, file: !66, line: 345, baseType: !248, size: 64, offset: 2112)
!248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!249 = !DISubroutineType(types: !250)
!250 = !{!98, !64, !162}
!251 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !65, file: !66, line: 346, baseType: !248, size: 64, offset: 2176)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !65, file: !66, line: 347, baseType: !248, size: 64, offset: 2240)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !65, file: !66, line: 348, baseType: !175, size: 64, offset: 2304)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !65, file: !66, line: 349, baseType: !255, size: 64, offset: 2368)
!255 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !256, size: 64)
!256 = !DISubroutineType(types: !257)
!257 = !{!98, !64}
!258 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !65, file: !66, line: 350, baseType: !238, size: 64, offset: 2432)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !65, file: !66, line: 351, baseType: !238, size: 64, offset: 2496)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !65, file: !66, line: 356, baseType: !255, size: 64, offset: 2560)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !65, file: !66, line: 357, baseType: !238, size: 64, offset: 2624)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !65, file: !66, line: 363, baseType: !263, size: 8, offset: 2688)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !70, line: 30, baseType: !264)
!264 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !65, file: !66, line: 365, baseType: !266, size: 192, offset: 2752)
!266 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !267, line: 54, size: 192, elements: !268)
!267 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!268 = !{!269, !275, !276}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !266, file: !267, line: 55, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !267, line: 51, baseType: !271)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = !DISubroutineType(types: !273)
!273 = !{!98, !274, !147, !63}
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !266, file: !267, line: 56, baseType: !274, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !266, file: !267, line: 57, baseType: !98, size: 32, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !65, file: !66, line: 368, baseType: !278, size: 128, offset: 2944)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !216, line: 250, size: 128, elements: !279)
!279 = !{!280, !281, !282, !283}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !278, file: !216, line: 251, baseType: !76, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !278, file: !216, line: 252, baseType: !76, size: 32, offset: 32)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !278, file: !216, line: 253, baseType: !76, size: 32, offset: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !278, file: !216, line: 254, baseType: !76, size: 32, offset: 96)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !65, file: !66, line: 370, baseType: !98, size: 32, offset: 3072)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !65, file: !66, line: 372, baseType: !63, size: 64, offset: 3136)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !65, file: !66, line: 374, baseType: !287, size: 64, offset: 3200)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !289, line: 76, flags: DIFlagFwdDecl)
!289 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!290 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !65, file: !66, line: 375, baseType: !291, size: 5568, offset: 3264)
!291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !292)
!292 = !{!293, !1767, !1769, !1772, !1773, !1824, !1918, !1919, !1920, !1921, !1922, !1931, !2036, !2049, !2052, !2053, !2057, !2059, !2060, !2061, !2065, !2071, !2072, !2075, !2190, !2191, !2194, !2195, !2196, !2197, !2229, !2230, !2231, !2234, !2237, !2238, !2239, !2240}
!293 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !291, file: !30, line: 462, baseType: !294, size: 512)
!294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !295, line: 64, size: 512, elements: !296)
!295 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!296 = !{!297, !298, !304, !306, !366, !1603, !1757, !1762, !1763, !1764, !1765, !1766}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !294, file: !295, line: 65, baseType: !94, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !294, file: !295, line: 66, baseType: !299, size: 128, offset: 64)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !70, line: 178, size: 128, elements: !300)
!300 = !{!301, !303}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !299, file: !70, line: 179, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !299, file: !70, line: 179, baseType: !302, size: 64, offset: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !294, file: !295, line: 67, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !294, file: !295, line: 68, baseType: !307, size: 64, offset: 256)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !308, size: 64)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !295, line: 192, size: 704, elements: !309)
!309 = !{!310, !311, !327, !328}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !308, file: !295, line: 193, baseType: !299, size: 128)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !308, file: !295, line: 194, baseType: !312, offset: 128)
!312 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !313, line: 83, baseType: !314)
!313 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !313, line: 71, elements: !315)
!315 = !{!316}
!316 = !DIDerivedType(tag: DW_TAG_member, scope: !314, file: !313, line: 72, baseType: !317)
!317 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !314, file: !313, line: 72, elements: !318)
!318 = !{!319}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !317, file: !313, line: 73, baseType: !320)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !313, line: 20, elements: !321)
!321 = !{!322}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !320, file: !313, line: 21, baseType: !323)
!323 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !324, line: 25, baseType: !325)
!324 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!325 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !324, line: 25, elements: !326)
!326 = !{}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !308, file: !295, line: 195, baseType: !294, size: 512, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !308, file: !295, line: 196, baseType: !329, size: 64, offset: 640)
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !331)
!331 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !295, line: 156, size: 192, elements: !332)
!332 = !{!333, !338, !343}
!333 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !331, file: !295, line: 157, baseType: !334, size: 64)
!334 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !335)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{!98, !307, !305}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !331, file: !295, line: 158, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !341, size: 64)
!341 = !DISubroutineType(types: !342)
!342 = !{!94, !307, !305}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !331, file: !295, line: 159, baseType: !344, size: 64, offset: 128)
!344 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !345)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!98, !307, !305, !348}
!348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !295, line: 148, size: 20736, elements: !350)
!350 = !{!351, !356, !360, !361, !365}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !349, file: !295, line: 149, baseType: !352, size: 192)
!352 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 192, elements: !354)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!354 = !{!355}
!355 = !DISubrange(count: 3)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !349, file: !295, line: 150, baseType: !357, size: 4096, offset: 192)
!357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !353, size: 4096, elements: !358)
!358 = !{!359}
!359 = !DISubrange(count: 64)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !349, file: !295, line: 151, baseType: !98, size: 32, offset: 4288)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !349, file: !295, line: 152, baseType: !362, size: 16384, offset: 4320)
!362 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 16384, elements: !363)
!363 = !{!364}
!364 = !DISubrange(count: 2048)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !349, file: !295, line: 153, baseType: !98, size: 32, offset: 20704)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !294, file: !295, line: 69, baseType: !367, size: 64, offset: 320)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !295, line: 138, size: 448, elements: !369)
!369 = !{!370, !374, !399, !401, !1549, !1582, !1586}
!370 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !368, file: !295, line: 139, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !372, size: 64)
!372 = !DISubroutineType(types: !373)
!373 = !{null, !305}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !368, file: !295, line: 140, baseType: !375, size: 64, offset: 64)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !377)
!377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !378, line: 230, size: 128, elements: !379)
!378 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!379 = !{!380, !395}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !377, file: !378, line: 231, baseType: !381, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DISubroutineType(types: !383)
!383 = !{!384, !305, !388, !353}
!384 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !70, line: 60, baseType: !385)
!385 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !164, line: 73, baseType: !386)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !164, line: 15, baseType: !387)
!387 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !378, line: 30, size: 128, elements: !390)
!390 = !{!391, !392}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !389, file: !378, line: 31, baseType: !94, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !389, file: !378, line: 32, baseType: !393, size: 16, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !70, line: 19, baseType: !394)
!394 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !377, file: !378, line: 232, baseType: !396, size: 64, offset: 64)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!384, !305, !388, !94, !166}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !368, file: !295, line: 141, baseType: !400, size: 64, offset: 128)
!400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !368, file: !295, line: 142, baseType: !402, size: 64, offset: 192)
!402 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !403, size: 64)
!403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !404, size: 64)
!404 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !378, line: 84, size: 320, elements: !406)
!406 = !{!407, !408, !412, !1546, !1547}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !378, line: 85, baseType: !94, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !405, file: !378, line: 86, baseType: !409, size: 64, offset: 64)
!409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !410, size: 64)
!410 = !DISubroutineType(types: !411)
!411 = !{!393, !305, !388, !98}
!412 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !405, file: !378, line: 88, baseType: !413, size: 64, offset: 128)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = !DISubroutineType(types: !415)
!415 = !{!393, !305, !416, !98}
!416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !378, line: 168, size: 448, elements: !418)
!418 = !{!419, !420, !421, !422, !429, !430}
!419 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !417, file: !378, line: 169, baseType: !389, size: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !417, file: !378, line: 170, baseType: !166, size: 64, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !417, file: !378, line: 171, baseType: !63, size: 64, offset: 192)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !417, file: !378, line: 172, baseType: !423, size: 64, offset: 256)
!423 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!424 = !DISubroutineType(types: !425)
!425 = !{!384, !426, !305, !416, !353, !162, !166}
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !428, line: 526, flags: DIFlagFwdDecl)
!428 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!429 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !417, file: !378, line: 174, baseType: !423, size: 64, offset: 320)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !417, file: !378, line: 176, baseType: !431, size: 64, offset: 384)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!98, !426, !305, !416, !434}
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !436, line: 305, size: 1472, elements: !437)
!436 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!437 = !{!438, !439, !440, !441, !442, !450, !451, !1520, !1526, !1527, !1532, !1533, !1536, !1540, !1541, !1542, !1543, !1544}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !435, file: !436, line: 308, baseType: !147, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !435, file: !436, line: 309, baseType: !147, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !435, file: !436, line: 313, baseType: !434, size: 64, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !435, file: !436, line: 313, baseType: !434, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !435, file: !436, line: 315, baseType: !443, size: 192, align: 64, offset: 256)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !444, line: 24, size: 192, align: 64, elements: !445)
!444 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!445 = !{!446, !447, !449}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !443, file: !444, line: 25, baseType: !147, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !443, file: !444, line: 26, baseType: !448, size: 64, offset: 64)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !443, file: !444, line: 27, baseType: !448, size: 64, offset: 128)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !435, file: !436, line: 323, baseType: !147, size: 64, offset: 448)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !435, file: !436, line: 327, baseType: !452, size: 64, offset: 512)
!452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !453, size: 64)
!453 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !436, line: 388, size: 7296, elements: !454)
!454 = !{!455, !1516}
!455 = !DIDerivedType(tag: DW_TAG_member, scope: !453, file: !436, line: 389, baseType: !456, size: 7296)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !453, file: !436, line: 389, size: 7296, elements: !457)
!457 = !{!458, !459, !463, !464, !468, !469, !470, !471, !472, !480, !485, !486, !487, !488, !497, !498, !499, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !520, !521, !522, !523, !524, !525, !526, !527, !528, !529, !530, !534, !542, !545, !593, !594, !1486, !1487, !1490, !1494, !1495, !1498, !1499, !1500, !1503, !1515}
!458 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !456, file: !436, line: 390, baseType: !434, size: 64)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !456, file: !436, line: 391, baseType: !460, size: 64, offset: 64)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !444, line: 31, size: 64, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !460, file: !444, line: 32, baseType: !448, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !456, file: !436, line: 392, baseType: !80, size: 64, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !456, file: !436, line: 394, baseType: !465, size: 64, offset: 192)
!465 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!466 = !DISubroutineType(types: !467)
!467 = !{!147, !426, !147, !147, !147, !147}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !456, file: !436, line: 398, baseType: !147, size: 64, offset: 256)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !456, file: !436, line: 399, baseType: !147, size: 64, offset: 320)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !456, file: !436, line: 405, baseType: !147, size: 64, offset: 384)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !456, file: !436, line: 406, baseType: !147, size: 64, offset: 448)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !456, file: !436, line: 407, baseType: !473, size: 64, offset: 512)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !428, line: 286, baseType: !475)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !428, line: 286, size: 64, elements: !476)
!476 = !{!477}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !475, file: !428, line: 286, baseType: !478, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !479, line: 18, baseType: !147)
!479 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!480 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !456, file: !436, line: 416, baseType: !481, size: 32, offset: 576)
!481 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !70, line: 168, baseType: !482)
!482 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 166, size: 32, elements: !483)
!483 = !{!484}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !482, file: !70, line: 167, baseType: !98, size: 32)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !456, file: !436, line: 428, baseType: !481, size: 32, offset: 608)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !456, file: !436, line: 437, baseType: !481, size: 32, offset: 640)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !456, file: !436, line: 447, baseType: !481, size: 32, offset: 672)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !456, file: !436, line: 450, baseType: !489, size: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !490, line: 13, baseType: !491)
!490 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !70, line: 175, baseType: !492)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !70, line: 173, size: 64, elements: !493)
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !492, file: !70, line: 174, baseType: !495, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !75, line: 22, baseType: !496)
!496 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !77, line: 30, baseType: !165)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !456, file: !436, line: 452, baseType: !98, size: 32, offset: 768)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !456, file: !436, line: 454, baseType: !312, offset: 800)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !456, file: !436, line: 457, baseType: !500, size: 256, offset: 832)
!500 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !501, line: 35, size: 256, elements: !502)
!501 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!502 = !{!503, !504, !505, !507}
!503 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !500, file: !501, line: 36, baseType: !489, size: 64)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !500, file: !501, line: 42, baseType: !489, size: 64, offset: 64)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !500, file: !501, line: 46, baseType: !506, offset: 128)
!506 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !313, line: 29, baseType: !320)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !500, file: !501, line: 47, baseType: !299, size: 128, offset: 128)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !456, file: !436, line: 459, baseType: !299, size: 128, offset: 1088)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !456, file: !436, line: 466, baseType: !147, size: 64, offset: 1216)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !456, file: !436, line: 467, baseType: !147, size: 64, offset: 1280)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !456, file: !436, line: 469, baseType: !147, size: 64, offset: 1344)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !456, file: !436, line: 470, baseType: !147, size: 64, offset: 1408)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !456, file: !436, line: 471, baseType: !491, size: 64, offset: 1472)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !456, file: !436, line: 472, baseType: !147, size: 64, offset: 1536)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !456, file: !436, line: 473, baseType: !147, size: 64, offset: 1600)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !456, file: !436, line: 474, baseType: !147, size: 64, offset: 1664)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !456, file: !436, line: 475, baseType: !147, size: 64, offset: 1728)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !456, file: !436, line: 477, baseType: !312, offset: 1792)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !456, file: !436, line: 478, baseType: !147, size: 64, offset: 1792)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !456, file: !436, line: 478, baseType: !147, size: 64, offset: 1856)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !456, file: !436, line: 478, baseType: !147, size: 64, offset: 1920)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !456, file: !436, line: 478, baseType: !147, size: 64, offset: 1984)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !456, file: !436, line: 479, baseType: !147, size: 64, offset: 2048)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !456, file: !436, line: 479, baseType: !147, size: 64, offset: 2112)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !456, file: !436, line: 479, baseType: !147, size: 64, offset: 2176)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !456, file: !436, line: 480, baseType: !147, size: 64, offset: 2240)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !456, file: !436, line: 480, baseType: !147, size: 64, offset: 2304)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !456, file: !436, line: 480, baseType: !147, size: 64, offset: 2368)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !456, file: !436, line: 480, baseType: !147, size: 64, offset: 2432)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !456, file: !436, line: 482, baseType: !531, size: 2816, offset: 2496)
!531 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 2816, elements: !532)
!532 = !{!533}
!533 = !DISubrange(count: 44)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !456, file: !436, line: 488, baseType: !535, size: 256, offset: 5312)
!535 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !536, line: 60, size: 256, elements: !537)
!536 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!537 = !{!538}
!538 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !535, file: !536, line: 61, baseType: !539, size: 256)
!539 = !DICompositeType(tag: DW_TAG_array_type, baseType: !489, size: 256, elements: !540)
!540 = !{!541}
!541 = !DISubrange(count: 4)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !456, file: !436, line: 490, baseType: !543, size: 64, offset: 5568)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !436, line: 490, flags: DIFlagFwdDecl)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !456, file: !436, line: 493, baseType: !546, size: 896, offset: 5632)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !547, line: 53, baseType: !548)
!547 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!548 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !547, line: 13, size: 896, elements: !549)
!549 = !{!550, !551, !552, !553, !556, !557, !564, !565, !585, !586, !589}
!550 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !548, file: !547, line: 18, baseType: !80, size: 64)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !548, file: !547, line: 28, baseType: !491, size: 64, offset: 64)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !548, file: !547, line: 31, baseType: !500, size: 256, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !548, file: !547, line: 32, baseType: !554, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !555, size: 64)
!555 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !547, line: 32, flags: DIFlagFwdDecl)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !548, file: !547, line: 37, baseType: !394, size: 16, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !548, file: !547, line: 40, baseType: !558, size: 192, offset: 512)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !559, line: 53, size: 192, elements: !560)
!559 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!560 = !{!561, !562, !563}
!561 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !558, file: !559, line: 54, baseType: !489, size: 64)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !558, file: !559, line: 55, baseType: !312, offset: 64)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !558, file: !559, line: 59, baseType: !299, size: 128, offset: 64)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !548, file: !547, line: 41, baseType: !63, size: 64, offset: 704)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !548, file: !547, line: 42, baseType: !566, size: 64, offset: 768)
!566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !567, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !568)
!568 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !569, line: 13, size: 896, elements: !570)
!569 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!570 = !{!571, !572, !573, !574, !575, !576, !577, !578, !579, !580, !581, !582, !583, !584}
!571 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !568, file: !569, line: 14, baseType: !63, size: 64)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !568, file: !569, line: 15, baseType: !147, size: 64, offset: 64)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !568, file: !569, line: 17, baseType: !147, size: 64, offset: 128)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !568, file: !569, line: 17, baseType: !147, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !568, file: !569, line: 19, baseType: !387, size: 64, offset: 256)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !568, file: !569, line: 21, baseType: !387, size: 64, offset: 320)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !568, file: !569, line: 22, baseType: !387, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !568, file: !569, line: 23, baseType: !387, size: 64, offset: 448)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !568, file: !569, line: 24, baseType: !387, size: 64, offset: 512)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !568, file: !569, line: 25, baseType: !387, size: 64, offset: 576)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !568, file: !569, line: 26, baseType: !387, size: 64, offset: 640)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !568, file: !569, line: 27, baseType: !387, size: 64, offset: 704)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !568, file: !569, line: 28, baseType: !387, size: 64, offset: 768)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !568, file: !569, line: 29, baseType: !387, size: 64, offset: 832)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !548, file: !547, line: 44, baseType: !481, size: 32, offset: 832)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !548, file: !547, line: 50, baseType: !587, size: 16, offset: 864)
!587 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !75, line: 19, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !77, line: 24, baseType: !394)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !548, file: !547, line: 51, baseType: !590, size: 16, offset: 880)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !75, line: 18, baseType: !591)
!591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !77, line: 23, baseType: !592)
!592 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !456, file: !436, line: 495, baseType: !147, size: 64, offset: 6528)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !456, file: !436, line: 497, baseType: !595, size: 64, offset: 6592)
!595 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !596, size: 64)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !436, line: 381, size: 384, elements: !597)
!597 = !{!598, !599, !1485}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !596, file: !436, line: 382, baseType: !481, size: 32)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !596, file: !436, line: 383, baseType: !600, size: 128, offset: 64)
!600 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !436, line: 376, size: 128, elements: !601)
!601 = !{!602, !1483}
!602 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !600, file: !436, line: 377, baseType: !603, size: 64)
!603 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !604, size: 64)
!604 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !605, line: 640, size: 48640, elements: !606)
!605 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!606 = !{!607, !613, !615, !616, !622, !623, !624, !625, !626, !627, !628, !629, !633, !651, !662, !754, !755, !756, !767, !768, !770, !771, !772, !773, !779, !780, !781, !782, !783, !784, !785, !786, !787, !788, !789, !790, !791, !792, !793, !794, !852, !855, !856, !857, !858, !859, !860, !861, !862, !863, !864, !908, !910, !911, !912, !924, !926, !927, !928, !929, !930, !936, !937, !938, !939, !940, !941, !942, !954, !959, !964, !965, !966, !969, !973, !976, !979, !982, !985, !989, !992, !995, !1001, !1002, !1003, !1009, !1010, !1011, !1012, !1013, !1022, !1023, !1024, !1025, !1026, !1031, !1032, !1033, !1036, !1037, !1040, !1043, !1046, !1049, !1052, !1055, !1056, !1136, !1139, !1142, !1143, !1146, !1147, !1148, !1154, !1155, !1156, !1169, !1170, !1171, !1181, !1186, !1189, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !604, file: !605, line: 646, baseType: !608, size: 128)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !609, line: 56, size: 128, elements: !610)
!609 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!610 = !{!611, !612}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !608, file: !609, line: 57, baseType: !147, size: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !608, file: !609, line: 58, baseType: !74, size: 32, offset: 64)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !604, file: !605, line: 649, baseType: !614, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !387)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !604, file: !605, line: 657, baseType: !63, size: 64, offset: 192)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !604, file: !605, line: 658, baseType: !617, size: 32, offset: 256)
!617 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !618, line: 113, baseType: !619)
!618 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !618, line: 111, size: 32, elements: !620)
!620 = !{!621}
!621 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !619, file: !618, line: 112, baseType: !481, size: 32)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !604, file: !605, line: 660, baseType: !7, size: 32, offset: 288)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !604, file: !605, line: 661, baseType: !7, size: 32, offset: 320)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !604, file: !605, line: 684, baseType: !98, size: 32, offset: 352)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !604, file: !605, line: 686, baseType: !98, size: 32, offset: 384)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !604, file: !605, line: 687, baseType: !98, size: 32, offset: 416)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !604, file: !605, line: 688, baseType: !98, size: 32, offset: 448)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !604, file: !605, line: 689, baseType: !7, size: 32, offset: 480)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !604, file: !605, line: 691, baseType: !630, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !631, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !632)
!632 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !605, line: 691, flags: DIFlagFwdDecl)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !604, file: !605, line: 692, baseType: !634, size: 832, offset: 576)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !605, line: 451, size: 832, elements: !635)
!635 = !{!636, !641, !642, !643, !644, !645, !646, !647, !648, !649}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !634, file: !605, line: 453, baseType: !637, size: 128)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !605, line: 325, size: 128, elements: !638)
!638 = !{!639, !640}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !637, file: !605, line: 326, baseType: !147, size: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !637, file: !605, line: 327, baseType: !74, size: 32, offset: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !634, file: !605, line: 454, baseType: !443, size: 192, align: 64, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !634, file: !605, line: 455, baseType: !299, size: 128, offset: 320)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !634, file: !605, line: 456, baseType: !7, size: 32, offset: 448)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !634, file: !605, line: 458, baseType: !80, size: 64, offset: 512)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !634, file: !605, line: 459, baseType: !80, size: 64, offset: 576)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !634, file: !605, line: 460, baseType: !80, size: 64, offset: 640)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !634, file: !605, line: 461, baseType: !80, size: 64, offset: 704)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !634, file: !605, line: 463, baseType: !80, size: 64, offset: 768)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !634, file: !605, line: 465, baseType: !650, offset: 832)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !605, line: 415, elements: !326)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !604, file: !605, line: 693, baseType: !652, size: 384, offset: 1408)
!652 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !605, line: 489, size: 384, elements: !653)
!653 = !{!654, !655, !656, !657, !658, !659, !660}
!654 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !652, file: !605, line: 490, baseType: !299, size: 128)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !652, file: !605, line: 491, baseType: !147, size: 64, offset: 128)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !652, file: !605, line: 492, baseType: !147, size: 64, offset: 192)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !652, file: !605, line: 493, baseType: !7, size: 32, offset: 256)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !652, file: !605, line: 494, baseType: !394, size: 16, offset: 288)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !652, file: !605, line: 495, baseType: !394, size: 16, offset: 304)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !652, file: !605, line: 497, baseType: !661, size: 64, offset: 320)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !604, file: !605, line: 697, baseType: !663, size: 1792, offset: 1792)
!663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !605, line: 507, size: 1792, elements: !664)
!664 = !{!665, !666, !667, !668, !669, !670, !671, !672, !673, !674, !675, !676, !677, !678, !751, !752}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !663, file: !605, line: 508, baseType: !443, size: 192, align: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !663, file: !605, line: 515, baseType: !80, size: 64, offset: 192)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !663, file: !605, line: 516, baseType: !80, size: 64, offset: 256)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !663, file: !605, line: 517, baseType: !80, size: 64, offset: 320)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !663, file: !605, line: 518, baseType: !80, size: 64, offset: 384)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !663, file: !605, line: 519, baseType: !80, size: 64, offset: 448)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !663, file: !605, line: 526, baseType: !495, size: 64, offset: 512)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !663, file: !605, line: 527, baseType: !80, size: 64, offset: 576)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !663, file: !605, line: 528, baseType: !7, size: 32, offset: 640)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !663, file: !605, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !663, file: !605, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !663, file: !605, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !663, file: !605, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !663, file: !605, line: 563, baseType: !679, size: 512, offset: 704)
!679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !680)
!680 = !{!681, !689, !690, !695, !747, !748, !749, !750}
!681 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !679, file: !6, line: 119, baseType: !682, size: 256)
!682 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !683, line: 9, size: 256, elements: !684)
!683 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!684 = !{!685, !686}
!685 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !682, file: !683, line: 10, baseType: !443, size: 192, align: 64)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !682, file: !683, line: 11, baseType: !687, size: 64, offset: 192)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !688, line: 29, baseType: !495)
!688 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!689 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !679, file: !6, line: 120, baseType: !687, size: 64, offset: 256)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !679, file: !6, line: 121, baseType: !691, size: 64, offset: 320)
!691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !692, size: 64)
!692 = !DISubroutineType(types: !693)
!693 = !{!5, !694}
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !679, size: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !679, file: !6, line: 122, baseType: !696, size: 64, offset: 384)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !698)
!698 = !{!699, !719, !720, !723, !733, !734, !742, !746}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !697, file: !6, line: 160, baseType: !700, size: 64)
!700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !701, size: 64)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !702)
!702 = !{!703, !704, !705, !706, !707, !708, !709, !710, !711, !712, !713, !714, !715}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !701, file: !6, line: 215, baseType: !506)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !701, file: !6, line: 216, baseType: !7, size: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !701, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !701, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !701, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !701, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !701, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !701, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !701, file: !6, line: 233, baseType: !687, size: 64, offset: 128)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !701, file: !6, line: 234, baseType: !694, size: 64, offset: 192)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !701, file: !6, line: 235, baseType: !687, size: 64, offset: 256)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !701, file: !6, line: 236, baseType: !694, size: 64, offset: 320)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !701, file: !6, line: 237, baseType: !716, size: 4096, offset: 512)
!716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !697, size: 4096, elements: !717)
!717 = !{!718}
!718 = !DISubrange(count: 8)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !697, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !697, file: !6, line: 162, baseType: !721, size: 32, offset: 96)
!721 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !70, line: 27, baseType: !722)
!722 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !164, line: 96, baseType: !98)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !697, file: !6, line: 163, baseType: !724, size: 32, offset: 128)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !725, line: 276, baseType: !726)
!725 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !725, line: 276, size: 32, elements: !727)
!727 = !{!728}
!728 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !726, file: !725, line: 276, baseType: !729, size: 32)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !725, line: 70, baseType: !730)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !725, line: 65, size: 32, elements: !731)
!731 = !{!732}
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !730, file: !725, line: 66, baseType: !7, size: 32)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !697, file: !6, line: 164, baseType: !694, size: 64, offset: 192)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !697, file: !6, line: 165, baseType: !735, size: 128, offset: 256)
!735 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !683, line: 14, size: 128, elements: !736)
!736 = !{!737}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !735, file: !683, line: 15, baseType: !738, size: 128)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !444, line: 125, size: 128, elements: !739)
!739 = !{!740, !741}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !738, file: !444, line: 126, baseType: !460, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !738, file: !444, line: 127, baseType: !448, size: 64, offset: 64)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !697, file: !6, line: 166, baseType: !743, size: 64, offset: 384)
!743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !744, size: 64)
!744 = !DISubroutineType(types: !745)
!745 = !{!687}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !697, file: !6, line: 167, baseType: !687, size: 64, offset: 448)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !679, file: !6, line: 123, baseType: !206, size: 8, offset: 448)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !679, file: !6, line: 124, baseType: !206, size: 8, offset: 456)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !679, file: !6, line: 125, baseType: !206, size: 8, offset: 464)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !679, file: !6, line: 126, baseType: !206, size: 8, offset: 472)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !663, file: !605, line: 572, baseType: !679, size: 512, offset: 1216)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !663, file: !605, line: 580, baseType: !753, size: 64, offset: 1728)
!753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !604, file: !605, line: 721, baseType: !7, size: 32, offset: 3584)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !604, file: !605, line: 722, baseType: !98, size: 32, offset: 3616)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !604, file: !605, line: 723, baseType: !757, size: 64, offset: 3648)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !759)
!759 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !760, line: 17, baseType: !761)
!760 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !760, line: 17, size: 64, elements: !762)
!762 = !{!763}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !761, file: !760, line: 17, baseType: !764, size: 64)
!764 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, size: 64, elements: !765)
!765 = !{!766}
!766 = !DISubrange(count: 1)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !604, file: !605, line: 724, baseType: !759, size: 64, offset: 3712)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !604, file: !605, line: 749, baseType: !769, offset: 3776)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !605, line: 290, elements: !326)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !604, file: !605, line: 751, baseType: !299, size: 128, offset: 3776)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !604, file: !605, line: 757, baseType: !452, size: 64, offset: 3904)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !604, file: !605, line: 758, baseType: !452, size: 64, offset: 3968)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !604, file: !605, line: 761, baseType: !774, size: 320, offset: 4032)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !536, line: 34, size: 320, elements: !775)
!775 = !{!776, !777}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !774, file: !536, line: 35, baseType: !80, size: 64)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !774, file: !536, line: 36, baseType: !778, size: 256, offset: 64)
!778 = !DICompositeType(tag: DW_TAG_array_type, baseType: !434, size: 256, elements: !540)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !604, file: !605, line: 766, baseType: !98, size: 32, offset: 4352)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !604, file: !605, line: 767, baseType: !98, size: 32, offset: 4384)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !604, file: !605, line: 768, baseType: !98, size: 32, offset: 4416)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !604, file: !605, line: 770, baseType: !98, size: 32, offset: 4448)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !604, file: !605, line: 772, baseType: !147, size: 64, offset: 4480)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !604, file: !605, line: 775, baseType: !7, size: 32, offset: 4544)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !604, file: !605, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !604, file: !605, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !604, file: !605, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !604, file: !605, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !604, file: !605, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !604, file: !605, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !604, file: !605, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !604, file: !605, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !604, file: !605, line: 831, baseType: !147, size: 64, offset: 4672)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !604, file: !605, line: 833, baseType: !795, size: 384, offset: 4736)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !796)
!796 = !{!797, !802}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !795, file: !12, line: 26, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{!387, !801}
!801 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !795, size: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, scope: !795, file: !12, line: 27, baseType: !803, size: 320, offset: 64)
!803 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !795, file: !12, line: 27, size: 320, elements: !804)
!804 = !{!805, !815, !842}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !803, file: !12, line: 36, baseType: !806, size: 320)
!806 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !12, line: 29, size: 320, elements: !807)
!807 = !{!808, !810, !811, !812, !813, !814}
!808 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !806, file: !12, line: 30, baseType: !809, size: 64)
!809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !74, size: 64)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !806, file: !12, line: 31, baseType: !74, size: 32, offset: 64)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !806, file: !12, line: 32, baseType: !74, size: 32, offset: 96)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !806, file: !12, line: 33, baseType: !74, size: 32, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !806, file: !12, line: 34, baseType: !80, size: 64, offset: 192)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !806, file: !12, line: 35, baseType: !809, size: 64, offset: 256)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !803, file: !12, line: 46, baseType: !816, size: 192)
!816 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !12, line: 38, size: 192, elements: !817)
!817 = !{!818, !819, !820, !841}
!818 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !816, file: !12, line: 39, baseType: !721, size: 32)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !816, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, scope: !816, file: !12, line: 41, baseType: !821, size: 64, offset: 64)
!821 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !816, file: !12, line: 41, size: 64, elements: !822)
!822 = !{!823, !831}
!823 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !821, file: !12, line: 42, baseType: !824, size: 64)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !826, line: 7, size: 128, elements: !827)
!826 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!827 = !{!828, !830}
!828 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !825, file: !826, line: 8, baseType: !829, size: 64)
!829 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !164, line: 93, baseType: !165)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !825, file: !826, line: 9, baseType: !165, size: 64, offset: 64)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !821, file: !12, line: 43, baseType: !832, size: 64)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !834, line: 7, size: 64, elements: !835)
!834 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!835 = !{!836, !840}
!836 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !833, file: !834, line: 8, baseType: !837, size: 32)
!837 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !834, line: 5, baseType: !838)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !75, line: 20, baseType: !839)
!839 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !77, line: 26, baseType: !98)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !833, file: !834, line: 9, baseType: !838, size: 32, offset: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !816, file: !12, line: 45, baseType: !80, size: 64, offset: 128)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !803, file: !12, line: 54, baseType: !843, size: 256)
!843 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !803, file: !12, line: 48, size: 256, elements: !844)
!844 = !{!845, !848, !849, !850, !851}
!845 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !843, file: !12, line: 49, baseType: !846, size: 64)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !843, file: !12, line: 50, baseType: !98, size: 32, offset: 64)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !843, file: !12, line: 51, baseType: !98, size: 32, offset: 96)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !843, file: !12, line: 52, baseType: !147, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !843, file: !12, line: 53, baseType: !147, size: 64, offset: 192)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !604, file: !605, line: 835, baseType: !853, size: 32, offset: 5120)
!853 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !70, line: 22, baseType: !854)
!854 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !164, line: 28, baseType: !98)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !604, file: !605, line: 836, baseType: !853, size: 32, offset: 5152)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !604, file: !605, line: 840, baseType: !147, size: 64, offset: 5184)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !604, file: !605, line: 849, baseType: !603, size: 64, offset: 5248)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !604, file: !605, line: 852, baseType: !603, size: 64, offset: 5312)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !604, file: !605, line: 857, baseType: !299, size: 128, offset: 5376)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !604, file: !605, line: 858, baseType: !299, size: 128, offset: 5504)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !604, file: !605, line: 859, baseType: !603, size: 64, offset: 5632)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !604, file: !605, line: 867, baseType: !299, size: 128, offset: 5696)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !604, file: !605, line: 868, baseType: !299, size: 128, offset: 5824)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !604, file: !605, line: 871, baseType: !865, size: 64, offset: 5952)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !867, line: 59, size: 768, elements: !868)
!867 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869, !870, !871, !872, !883, !884, !891, !900}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !866, file: !867, line: 61, baseType: !617, size: 32)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !866, file: !867, line: 62, baseType: !7, size: 32, offset: 32)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !866, file: !867, line: 63, baseType: !312, offset: 64)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !866, file: !867, line: 65, baseType: !873, size: 256, offset: 64)
!873 = !DICompositeType(tag: DW_TAG_array_type, baseType: !874, size: 256, elements: !540)
!874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !70, line: 182, size: 64, elements: !875)
!875 = !{!876}
!876 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !874, file: !70, line: 183, baseType: !877, size: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !70, line: 186, size: 128, elements: !879)
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !878, file: !70, line: 187, baseType: !877, size: 64)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !878, file: !70, line: 187, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !866, file: !867, line: 66, baseType: !874, size: 64, offset: 320)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !866, file: !867, line: 68, baseType: !885, size: 128, offset: 384)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !886, line: 40, baseType: !887)
!886 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!887 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !886, line: 36, size: 128, elements: !888)
!888 = !{!889, !890}
!889 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !887, file: !886, line: 37, baseType: !312)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !887, file: !886, line: 38, baseType: !299, size: 128)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !866, file: !867, line: 69, baseType: !892, size: 128, align: 64, offset: 512)
!892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !70, line: 216, size: 128, align: 64, elements: !893)
!893 = !{!894, !896}
!894 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !892, file: !70, line: 217, baseType: !895, size: 64)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !892, file: !70, line: 218, baseType: !897, size: 64, offset: 64)
!897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !898, size: 64)
!898 = !DISubroutineType(types: !899)
!899 = !{null, !895}
!900 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !866, file: !867, line: 70, baseType: !901, size: 128, offset: 640)
!901 = !DICompositeType(tag: DW_TAG_array_type, baseType: !902, size: 128, elements: !765)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !867, line: 54, size: 128, elements: !903)
!903 = !{!904, !905}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !902, file: !867, line: 55, baseType: !98, size: 32)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !902, file: !867, line: 56, baseType: !906, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !867, line: 56, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !604, file: !605, line: 872, baseType: !909, size: 512, offset: 6016)
!909 = !DICompositeType(tag: DW_TAG_array_type, baseType: !878, size: 512, elements: !540)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !604, file: !605, line: 873, baseType: !299, size: 128, offset: 6528)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !604, file: !605, line: 874, baseType: !299, size: 128, offset: 6656)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !604, file: !605, line: 876, baseType: !913, size: 64, offset: 6784)
!913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !915, line: 26, size: 192, elements: !916)
!915 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!916 = !{!917, !918}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !914, file: !915, line: 27, baseType: !7, size: 32)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !914, file: !915, line: 28, baseType: !919, size: 128, offset: 64)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !920, line: 43, size: 128, elements: !921)
!920 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!921 = !{!922, !923}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !919, file: !920, line: 44, baseType: !506)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !919, file: !920, line: 45, baseType: !299, size: 128)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !604, file: !605, line: 879, baseType: !925, size: 64, offset: 6848)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !604, file: !605, line: 882, baseType: !925, size: 64, offset: 6912)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !604, file: !605, line: 884, baseType: !80, size: 64, offset: 6976)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !604, file: !605, line: 885, baseType: !80, size: 64, offset: 7040)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !604, file: !605, line: 890, baseType: !80, size: 64, offset: 7104)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !604, file: !605, line: 891, baseType: !931, size: 128, offset: 7168)
!931 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !605, line: 242, size: 128, elements: !932)
!932 = !{!933, !934, !935}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !931, file: !605, line: 244, baseType: !80, size: 64)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !931, file: !605, line: 245, baseType: !80, size: 64, offset: 64)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !931, file: !605, line: 246, baseType: !506, offset: 128)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !604, file: !605, line: 900, baseType: !147, size: 64, offset: 7296)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !604, file: !605, line: 901, baseType: !147, size: 64, offset: 7360)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !604, file: !605, line: 904, baseType: !80, size: 64, offset: 7424)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !604, file: !605, line: 907, baseType: !80, size: 64, offset: 7488)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !604, file: !605, line: 910, baseType: !147, size: 64, offset: 7552)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !604, file: !605, line: 911, baseType: !147, size: 64, offset: 7616)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !604, file: !605, line: 914, baseType: !943, size: 640, offset: 7680)
!943 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !944, line: 123, size: 640, elements: !945)
!944 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!945 = !{!946, !952, !953}
!946 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !943, file: !944, line: 124, baseType: !947, size: 576)
!947 = !DICompositeType(tag: DW_TAG_array_type, baseType: !948, size: 576, elements: !354)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !944, line: 108, size: 192, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !948, file: !944, line: 109, baseType: !80, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !948, file: !944, line: 110, baseType: !735, size: 128, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !943, file: !944, line: 125, baseType: !7, size: 32, offset: 576)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !943, file: !944, line: 126, baseType: !7, size: 32, offset: 608)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !604, file: !605, line: 917, baseType: !955, size: 192, offset: 8320)
!955 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !944, line: 134, size: 192, elements: !956)
!956 = !{!957, !958}
!957 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !955, file: !944, line: 135, baseType: !892, size: 128, align: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !955, file: !944, line: 136, baseType: !7, size: 32, offset: 128)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !604, file: !605, line: 923, baseType: !960, size: 64, offset: 8512)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !962)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !963, line: 11, flags: DIFlagFwdDecl)
!963 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!964 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !604, file: !605, line: 926, baseType: !960, size: 64, offset: 8576)
!965 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !604, file: !605, line: 929, baseType: !960, size: 64, offset: 8640)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !604, file: !605, line: 933, baseType: !967, size: 64, offset: 8704)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !605, line: 933, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !604, file: !605, line: 943, baseType: !970, size: 128, offset: 8768)
!970 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !971)
!971 = !{!972}
!972 = !DISubrange(count: 16)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !604, file: !605, line: 945, baseType: !974, size: 64, offset: 8896)
!974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !975, size: 64)
!975 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !605, line: 49, flags: DIFlagFwdDecl)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !604, file: !605, line: 956, baseType: !977, size: 64, offset: 8960)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !605, line: 45, flags: DIFlagFwdDecl)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !604, file: !605, line: 959, baseType: !980, size: 64, offset: 9024)
!980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !981, size: 64)
!981 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !605, line: 959, flags: DIFlagFwdDecl)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !604, file: !605, line: 962, baseType: !983, size: 64, offset: 9088)
!983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !984, size: 64)
!984 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !605, line: 66, flags: DIFlagFwdDecl)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !604, file: !605, line: 966, baseType: !986, size: 64, offset: 9152)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !988, line: 35, flags: DIFlagFwdDecl)
!988 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!989 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !604, file: !605, line: 969, baseType: !990, size: 64, offset: 9216)
!990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !991, size: 64)
!991 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !944, line: 223, flags: DIFlagFwdDecl)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !604, file: !605, line: 970, baseType: !993, size: 64, offset: 9280)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !605, line: 62, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !604, file: !605, line: 971, baseType: !996, size: 64, offset: 9344)
!996 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !997, line: 25, baseType: !998)
!997 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !997, line: 23, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !998, file: !997, line: 24, baseType: !764, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !604, file: !605, line: 972, baseType: !996, size: 64, offset: 9408)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !604, file: !605, line: 974, baseType: !996, size: 64, offset: 9472)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !604, file: !605, line: 975, baseType: !1004, size: 192, offset: 9536)
!1004 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1005, line: 30, size: 192, elements: !1006)
!1005 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1006 = !{!1007, !1008}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1004, file: !1005, line: 31, baseType: !299, size: 128)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1004, file: !1005, line: 32, baseType: !996, size: 64, offset: 128)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !604, file: !605, line: 976, baseType: !147, size: 64, offset: 9728)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !604, file: !605, line: 977, baseType: !166, size: 64, offset: 9792)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !604, file: !605, line: 978, baseType: !7, size: 32, offset: 9856)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !604, file: !605, line: 980, baseType: !895, size: 64, offset: 9920)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !604, file: !605, line: 989, baseType: !1014, size: 128, offset: 9984)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1015, line: 35, size: 128, elements: !1016)
!1015 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1016 = !{!1017, !1018, !1019}
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1014, file: !1015, line: 36, baseType: !98, size: 32)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1014, file: !1015, line: 37, baseType: !481, size: 32, offset: 32)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1014, file: !1015, line: 38, baseType: !1020, size: 64, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1015, line: 23, flags: DIFlagFwdDecl)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !604, file: !605, line: 992, baseType: !80, size: 64, offset: 10112)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !604, file: !605, line: 993, baseType: !80, size: 64, offset: 10176)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !604, file: !605, line: 996, baseType: !312, offset: 10240)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !604, file: !605, line: 999, baseType: !506, offset: 10240)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !604, file: !605, line: 1001, baseType: !1027, size: 64, offset: 10240)
!1027 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !605, line: 636, size: 64, elements: !1028)
!1028 = !{!1029}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1027, file: !605, line: 637, baseType: !1030, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1027, size: 64)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !604, file: !605, line: 1005, baseType: !738, size: 128, offset: 10304)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !604, file: !605, line: 1007, baseType: !603, size: 64, offset: 10432)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !604, file: !605, line: 1009, baseType: !1034, size: 64, offset: 10496)
!1034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1035, size: 64)
!1035 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !605, line: 1009, flags: DIFlagFwdDecl)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !604, file: !605, line: 1043, baseType: !63, size: 64, offset: 10560)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !604, file: !605, line: 1046, baseType: !1038, size: 64, offset: 10624)
!1038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1039, size: 64)
!1039 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !605, line: 41, flags: DIFlagFwdDecl)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !604, file: !605, line: 1050, baseType: !1041, size: 64, offset: 10688)
!1041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1042, size: 64)
!1042 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !605, line: 42, flags: DIFlagFwdDecl)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !604, file: !605, line: 1054, baseType: !1044, size: 64, offset: 10752)
!1044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1045, size: 64)
!1045 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !605, line: 55, flags: DIFlagFwdDecl)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !604, file: !605, line: 1056, baseType: !1047, size: 64, offset: 10816)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !605, line: 40, flags: DIFlagFwdDecl)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !604, file: !605, line: 1058, baseType: !1050, size: 64, offset: 10880)
!1050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1051, size: 64)
!1051 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !605, line: 47, flags: DIFlagFwdDecl)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !604, file: !605, line: 1061, baseType: !1053, size: 64, offset: 10944)
!1053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1054, size: 64)
!1054 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !605, line: 43, flags: DIFlagFwdDecl)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !604, file: !605, line: 1064, baseType: !147, size: 64, offset: 11008)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !604, file: !605, line: 1065, baseType: !1057, size: 64, offset: 11072)
!1057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1058, size: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1005, line: 14, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1005, line: 12, size: 384, elements: !1060)
!1060 = !{!1061}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !1005, line: 13, baseType: !1062, size: 384)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !1005, line: 13, size: 384, elements: !1063)
!1063 = !{!1064, !1065, !1066, !1067}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1062, file: !1005, line: 13, baseType: !98, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1062, file: !1005, line: 13, baseType: !98, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1062, file: !1005, line: 13, baseType: !98, size: 32, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1062, file: !1005, line: 13, baseType: !1068, size: 256, offset: 128)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1069, line: 32, size: 256, elements: !1070)
!1069 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1070 = !{!1071, !1077, !1090, !1096, !1105, !1125, !1130}
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1068, file: !1069, line: 37, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 34, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1072, file: !1069, line: 35, baseType: !854, size: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1072, file: !1069, line: 36, baseType: !1076, size: 32, offset: 32)
!1076 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !164, line: 49, baseType: !7)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1068, file: !1069, line: 45, baseType: !1078, size: 192)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 40, size: 192, elements: !1079)
!1079 = !{!1080, !1082, !1083, !1089}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1078, file: !1069, line: 41, baseType: !1081, size: 32)
!1081 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !164, line: 95, baseType: !98)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1078, file: !1069, line: 42, baseType: !98, size: 32, offset: 32)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1078, file: !1069, line: 43, baseType: !1084, size: 64, offset: 64)
!1084 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1069, line: 11, baseType: !1085)
!1085 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1069, line: 8, size: 64, elements: !1086)
!1086 = !{!1087, !1088}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1085, file: !1069, line: 9, baseType: !98, size: 32)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1085, file: !1069, line: 10, baseType: !63, size: 64)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1078, file: !1069, line: 44, baseType: !98, size: 32, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1068, file: !1069, line: 52, baseType: !1091, size: 128)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 48, size: 128, elements: !1092)
!1092 = !{!1093, !1094, !1095}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1091, file: !1069, line: 49, baseType: !854, size: 32)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1091, file: !1069, line: 50, baseType: !1076, size: 32, offset: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1091, file: !1069, line: 51, baseType: !1084, size: 64, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1068, file: !1069, line: 61, baseType: !1097, size: 256)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 55, size: 256, elements: !1098)
!1098 = !{!1099, !1100, !1101, !1102, !1104}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1097, file: !1069, line: 56, baseType: !854, size: 32)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1097, file: !1069, line: 57, baseType: !1076, size: 32, offset: 32)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1097, file: !1069, line: 58, baseType: !98, size: 32, offset: 64)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1097, file: !1069, line: 59, baseType: !1103, size: 64, offset: 128)
!1103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !164, line: 94, baseType: !386)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1097, file: !1069, line: 60, baseType: !1103, size: 64, offset: 192)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1068, file: !1069, line: 95, baseType: !1106, size: 256)
!1106 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 64, size: 256, elements: !1107)
!1107 = !{!1108, !1109}
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1106, file: !1069, line: 65, baseType: !63, size: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1106, file: !1069, line: 77, baseType: !1110, size: 192, offset: 64)
!1110 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1106, file: !1069, line: 77, size: 192, elements: !1111)
!1111 = !{!1112, !1113, !1120}
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1110, file: !1069, line: 82, baseType: !592, size: 16)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1110, file: !1069, line: 88, baseType: !1114, size: 192)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1069, line: 84, size: 192, elements: !1115)
!1115 = !{!1116, !1118, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1114, file: !1069, line: 85, baseType: !1117, size: 64)
!1117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !717)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1114, file: !1069, line: 86, baseType: !63, size: 64, offset: 64)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1114, file: !1069, line: 87, baseType: !63, size: 64, offset: 128)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1110, file: !1069, line: 93, baseType: !1121, size: 96)
!1121 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1110, file: !1069, line: 90, size: 96, elements: !1122)
!1122 = !{!1123, !1124}
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1121, file: !1069, line: 91, baseType: !1117, size: 64)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1121, file: !1069, line: 92, baseType: !76, size: 32, offset: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1068, file: !1069, line: 101, baseType: !1126, size: 128)
!1126 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 98, size: 128, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1126, file: !1069, line: 99, baseType: !387, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1126, file: !1069, line: 100, baseType: !98, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1068, file: !1069, line: 108, baseType: !1131, size: 128)
!1131 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1069, line: 104, size: 128, elements: !1132)
!1132 = !{!1133, !1134, !1135}
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1131, file: !1069, line: 105, baseType: !63, size: 64)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1131, file: !1069, line: 106, baseType: !98, size: 32, offset: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1131, file: !1069, line: 107, baseType: !7, size: 32, offset: 96)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !604, file: !605, line: 1067, baseType: !1137, offset: 11136)
!1137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1138, line: 12, elements: !326)
!1138 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !604, file: !605, line: 1099, baseType: !1140, size: 64, offset: 11136)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !605, line: 56, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !604, file: !605, line: 1103, baseType: !299, size: 128, offset: 11200)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !604, file: !605, line: 1104, baseType: !1144, size: 64, offset: 11328)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !605, line: 46, flags: DIFlagFwdDecl)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !604, file: !605, line: 1105, baseType: !558, size: 192, offset: 11392)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !604, file: !605, line: 1106, baseType: !7, size: 32, offset: 11584)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !604, file: !605, line: 1109, baseType: !1149, size: 128, offset: 11648)
!1149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1150, size: 128, elements: !1152)
!1150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1151 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !605, line: 51, flags: DIFlagFwdDecl)
!1152 = !{!1153}
!1153 = !DISubrange(count: 2)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !604, file: !605, line: 1110, baseType: !558, size: 192, offset: 11776)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !604, file: !605, line: 1111, baseType: !299, size: 128, offset: 11968)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !604, file: !605, line: 1173, baseType: !1157, size: 64, offset: 12096)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1159, line: 62, size: 256, align: 256, elements: !1160)
!1159 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1160 = !{!1161, !1162, !1163, !1168}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1158, file: !1159, line: 75, baseType: !76, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1158, file: !1159, line: 90, baseType: !76, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1158, file: !1159, line: 124, baseType: !1164, size: 64, offset: 64)
!1164 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1158, file: !1159, line: 109, size: 64, elements: !1165)
!1165 = !{!1166, !1167}
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1164, file: !1159, line: 110, baseType: !81, size: 64)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1164, file: !1159, line: 112, baseType: !81, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1158, file: !1159, line: 144, baseType: !76, size: 32, offset: 128)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !604, file: !605, line: 1174, baseType: !74, size: 32, offset: 12160)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !604, file: !605, line: 1179, baseType: !147, size: 64, offset: 12224)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !604, file: !605, line: 1182, baseType: !1172, size: 128, offset: 12288)
!1172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !536, line: 76, size: 128, elements: !1173)
!1173 = !{!1174, !1179, !1180}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1172, file: !536, line: 85, baseType: !1175, size: 64)
!1175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1176, line: 7, size: 64, elements: !1177)
!1176 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1177 = !{!1178}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1175, file: !1176, line: 12, baseType: !761, size: 64)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1172, file: !536, line: 88, baseType: !263, size: 8, offset: 64)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1172, file: !536, line: 95, baseType: !263, size: 8, offset: 72)
!1181 = !DIDerivedType(tag: DW_TAG_member, scope: !604, file: !605, line: 1184, baseType: !1182, size: 128, offset: 12416)
!1182 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !604, file: !605, line: 1184, size: 128, elements: !1183)
!1183 = !{!1184, !1185}
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1182, file: !605, line: 1185, baseType: !617, size: 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1182, file: !605, line: 1186, baseType: !892, size: 128, align: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !604, file: !605, line: 1190, baseType: !1187, size: 64, offset: 12544)
!1187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1188, size: 64)
!1188 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !233, line: 13, flags: DIFlagFwdDecl)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !604, file: !605, line: 1192, baseType: !1190, size: 128, offset: 12608)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !536, line: 64, size: 128, elements: !1191)
!1191 = !{!1192, !1285, !1286}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1190, file: !536, line: 65, baseType: !1193, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1194, size: 64)
!1194 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !436, line: 68, size: 512, align: 128, elements: !1195)
!1195 = !{!1196, !1197, !1277, !1284}
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1194, file: !436, line: 69, baseType: !147, size: 64)
!1197 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !436, line: 77, baseType: !1198, size: 320, offset: 64)
!1198 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !436, line: 77, size: 320, elements: !1199)
!1199 = !{!1200, !1209, !1214, !1242, !1250, !1256, !1269, !1276}
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 78, baseType: !1201, size: 320)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 78, size: 320, elements: !1202)
!1202 = !{!1203, !1204, !1207, !1208}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1201, file: !436, line: 84, baseType: !299, size: 128)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1201, file: !436, line: 86, baseType: !1205, size: 64, offset: 128)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !436, line: 26, flags: DIFlagFwdDecl)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1201, file: !436, line: 87, baseType: !147, size: 64, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1201, file: !436, line: 94, baseType: !147, size: 64, offset: 256)
!1209 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 96, baseType: !1210, size: 64)
!1210 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 96, size: 64, elements: !1211)
!1211 = !{!1212}
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1210, file: !436, line: 101, baseType: !1213, size: 64)
!1213 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !70, line: 143, baseType: !80)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 103, baseType: !1215, size: 320)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 103, size: 320, elements: !1216)
!1216 = !{!1217, !1227, !1230, !1231}
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !436, line: 104, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !436, line: 104, size: 128, elements: !1219)
!1219 = !{!1220, !1221}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1218, file: !436, line: 105, baseType: !299, size: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1218, file: !436, line: 106, baseType: !1222, size: 128)
!1222 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1218, file: !436, line: 106, size: 128, elements: !1223)
!1223 = !{!1224, !1225, !1226}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1222, file: !436, line: 107, baseType: !1193, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1222, file: !436, line: 109, baseType: !98, size: 32, offset: 64)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1222, file: !436, line: 110, baseType: !98, size: 32, offset: 96)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1215, file: !436, line: 117, baseType: !1228, size: 64, offset: 128)
!1228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1229, size: 64)
!1229 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !436, line: 117, flags: DIFlagFwdDecl)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1215, file: !436, line: 119, baseType: !63, size: 64, offset: 192)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !436, line: 120, baseType: !1232, size: 64, offset: 256)
!1232 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !436, line: 120, size: 64, elements: !1233)
!1233 = !{!1234, !1235, !1236}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1232, file: !436, line: 121, baseType: !63, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1232, file: !436, line: 122, baseType: !147, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !436, line: 123, baseType: !1237, size: 32)
!1237 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1232, file: !436, line: 123, size: 32, elements: !1238)
!1238 = !{!1239, !1240, !1241}
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1237, file: !436, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1237, file: !436, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1237, file: !436, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1242 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 130, baseType: !1243, size: 192)
!1243 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 130, size: 192, elements: !1244)
!1244 = !{!1245, !1246, !1247, !1248, !1249}
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1243, file: !436, line: 131, baseType: !147, size: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1243, file: !436, line: 134, baseType: !71, size: 8, offset: 64)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1243, file: !436, line: 135, baseType: !71, size: 8, offset: 72)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1243, file: !436, line: 136, baseType: !481, size: 32, offset: 96)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1243, file: !436, line: 137, baseType: !7, size: 32, offset: 128)
!1250 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 139, baseType: !1251, size: 256)
!1251 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 139, size: 256, elements: !1252)
!1252 = !{!1253, !1254, !1255}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1251, file: !436, line: 140, baseType: !147, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1251, file: !436, line: 141, baseType: !481, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1251, file: !436, line: 143, baseType: !299, size: 128, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 145, baseType: !1257, size: 256)
!1257 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 145, size: 256, elements: !1258)
!1258 = !{!1259, !1260, !1262, !1263, !1268}
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1257, file: !436, line: 146, baseType: !147, size: 64)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1257, file: !436, line: 147, baseType: !1261, size: 64, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !428, line: 509, baseType: !1193)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1257, file: !436, line: 148, baseType: !147, size: 64, offset: 128)
!1263 = !DIDerivedType(tag: DW_TAG_member, scope: !1257, file: !436, line: 149, baseType: !1264, size: 64, offset: 192)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1257, file: !436, line: 149, size: 64, elements: !1265)
!1265 = !{!1266, !1267}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1264, file: !436, line: 150, baseType: !452, size: 64)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1264, file: !436, line: 151, baseType: !481, size: 32)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1257, file: !436, line: 156, baseType: !312, offset: 256)
!1269 = !DIDerivedType(tag: DW_TAG_member, scope: !1198, file: !436, line: 159, baseType: !1270, size: 128)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1198, file: !436, line: 159, size: 128, elements: !1271)
!1271 = !{!1272, !1275}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1270, file: !436, line: 161, baseType: !1273, size: 64)
!1273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1274, size: 64)
!1274 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !436, line: 161, flags: DIFlagFwdDecl)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1270, file: !436, line: 162, baseType: !63, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1198, file: !436, line: 176, baseType: !892, size: 128, align: 64)
!1277 = !DIDerivedType(tag: DW_TAG_member, scope: !1194, file: !436, line: 179, baseType: !1278, size: 32, offset: 384)
!1278 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1194, file: !436, line: 179, size: 32, elements: !1279)
!1279 = !{!1280, !1281, !1282, !1283}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1278, file: !436, line: 184, baseType: !481, size: 32)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1278, file: !436, line: 192, baseType: !7, size: 32)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1278, file: !436, line: 194, baseType: !7, size: 32)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1278, file: !436, line: 195, baseType: !98, size: 32)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1194, file: !436, line: 199, baseType: !481, size: 32, offset: 416)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1190, file: !536, line: 67, baseType: !76, size: 32, offset: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1190, file: !536, line: 68, baseType: !76, size: 32, offset: 96)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !604, file: !605, line: 1206, baseType: !98, size: 32, offset: 12736)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !604, file: !605, line: 1207, baseType: !98, size: 32, offset: 12768)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !604, file: !605, line: 1209, baseType: !147, size: 64, offset: 12800)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !604, file: !605, line: 1219, baseType: !80, size: 64, offset: 12864)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !604, file: !605, line: 1220, baseType: !80, size: 64, offset: 12928)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !604, file: !605, line: 1317, baseType: !98, size: 32, offset: 12992)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !604, file: !605, line: 1319, baseType: !603, size: 64, offset: 13056)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !604, file: !605, line: 1322, baseType: !1295, size: 64, offset: 13120)
!1295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1296, size: 64)
!1296 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1297, line: 9, flags: DIFlagFwdDecl)
!1297 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !604, file: !605, line: 1326, baseType: !617, size: 32, offset: 13184)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !604, file: !605, line: 1342, baseType: !63, size: 64, offset: 13248)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !604, file: !605, line: 1343, baseType: !81, size: 64, offset: 13312)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !604, file: !605, line: 1344, baseType: !80, size: 64, offset: 13376)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !604, file: !605, line: 1345, baseType: !81, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !604, file: !605, line: 1346, baseType: !81, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !604, file: !605, line: 1347, baseType: !81, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !604, file: !605, line: 1348, baseType: !892, size: 128, align: 64, offset: 13504)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !604, file: !605, line: 1358, baseType: !1307, size: 34816, offset: 13824)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1308, line: 485, size: 34816, elements: !1309)
!1308 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1309 = !{!1310, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1339, !1340, !1341, !1342, !1343, !1344, !1347, !1348, !1349}
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1307, file: !1308, line: 487, baseType: !1311, size: 192)
!1311 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1312, size: 192, elements: !354)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1313, line: 16, size: 64, elements: !1314)
!1313 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1314 = !{!1315, !1316, !1317, !1318, !1319, !1320, !1321, !1322, !1323, !1324, !1325, !1326, !1327}
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1312, file: !1313, line: 17, baseType: !587, size: 16)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1312, file: !1313, line: 18, baseType: !587, size: 16, offset: 16)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1312, file: !1313, line: 19, baseType: !587, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1312, file: !1313, line: 19, baseType: !587, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1312, file: !1313, line: 19, baseType: !587, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1312, file: !1313, line: 19, baseType: !587, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1312, file: !1313, line: 19, baseType: !587, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1312, file: !1313, line: 20, baseType: !587, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1312, file: !1313, line: 20, baseType: !587, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1312, file: !1313, line: 20, baseType: !587, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1312, file: !1313, line: 20, baseType: !587, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1312, file: !1313, line: 20, baseType: !587, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1312, file: !1313, line: 20, baseType: !587, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1307, file: !1308, line: 491, baseType: !147, size: 64, offset: 192)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1307, file: !1308, line: 495, baseType: !394, size: 16, offset: 256)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1307, file: !1308, line: 496, baseType: !394, size: 16, offset: 272)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1307, file: !1308, line: 497, baseType: !394, size: 16, offset: 288)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1307, file: !1308, line: 498, baseType: !394, size: 16, offset: 304)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1307, file: !1308, line: 502, baseType: !147, size: 64, offset: 320)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1307, file: !1308, line: 503, baseType: !147, size: 64, offset: 384)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1307, file: !1308, line: 514, baseType: !1336, size: 256, offset: 448)
!1336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1337, size: 256, elements: !540)
!1337 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1338, size: 64)
!1338 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1308, line: 483, flags: DIFlagFwdDecl)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1307, file: !1308, line: 516, baseType: !147, size: 64, offset: 704)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1307, file: !1308, line: 518, baseType: !147, size: 64, offset: 768)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1307, file: !1308, line: 520, baseType: !147, size: 64, offset: 832)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1307, file: !1308, line: 521, baseType: !147, size: 64, offset: 896)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1307, file: !1308, line: 522, baseType: !147, size: 64, offset: 960)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1307, file: !1308, line: 528, baseType: !1345, size: 64, offset: 1024)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1308, line: 10, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1307, file: !1308, line: 535, baseType: !147, size: 64, offset: 1088)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1307, file: !1308, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1307, file: !1308, line: 540, baseType: !1350, size: 33280, offset: 1536)
!1350 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1351, line: 317, size: 33280, elements: !1352)
!1351 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1352 = !{!1353, !1354, !1355}
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1350, file: !1351, line: 330, baseType: !7, size: 32)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1350, file: !1351, line: 337, baseType: !147, size: 64, offset: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1350, file: !1351, line: 348, baseType: !1356, size: 32768, offset: 512)
!1356 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1351, line: 304, size: 32768, elements: !1357)
!1357 = !{!1358, !1373, !1412, !1462, !1479}
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1356, file: !1351, line: 305, baseType: !1359, size: 896)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1351, line: 12, size: 896, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1372}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1359, file: !1351, line: 13, baseType: !74, size: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1359, file: !1351, line: 14, baseType: !74, size: 32, offset: 32)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1359, file: !1351, line: 15, baseType: !74, size: 32, offset: 64)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1359, file: !1351, line: 16, baseType: !74, size: 32, offset: 96)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1359, file: !1351, line: 17, baseType: !74, size: 32, offset: 128)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1359, file: !1351, line: 18, baseType: !74, size: 32, offset: 160)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1359, file: !1351, line: 19, baseType: !74, size: 32, offset: 192)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1359, file: !1351, line: 22, baseType: !1369, size: 640, offset: 224)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 640, elements: !1370)
!1370 = !{!1371}
!1371 = !DISubrange(count: 20)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1359, file: !1351, line: 25, baseType: !74, size: 32, offset: 864)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1356, file: !1351, line: 306, baseType: !1374, size: 4096, align: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1351, line: 34, size: 4096, align: 128, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379, !1380, !1395, !1396, !1397, !1401, !1403, !1407}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1374, file: !1351, line: 35, baseType: !587, size: 16)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1374, file: !1351, line: 36, baseType: !587, size: 16, offset: 16)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1374, file: !1351, line: 37, baseType: !587, size: 16, offset: 32)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1374, file: !1351, line: 38, baseType: !587, size: 16, offset: 48)
!1380 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1351, line: 39, baseType: !1381, size: 128, offset: 64)
!1381 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1351, line: 39, size: 128, elements: !1382)
!1382 = !{!1383, !1388}
!1383 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1351, line: 40, baseType: !1384, size: 128)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !1351, line: 40, size: 128, elements: !1385)
!1385 = !{!1386, !1387}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1384, file: !1351, line: 41, baseType: !80, size: 64)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1384, file: !1351, line: 42, baseType: !80, size: 64, offset: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, scope: !1381, file: !1351, line: 44, baseType: !1389, size: 128)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1381, file: !1351, line: 44, size: 128, elements: !1390)
!1390 = !{!1391, !1392, !1393, !1394}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1389, file: !1351, line: 45, baseType: !74, size: 32)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1389, file: !1351, line: 46, baseType: !74, size: 32, offset: 32)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1389, file: !1351, line: 47, baseType: !74, size: 32, offset: 64)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1389, file: !1351, line: 48, baseType: !74, size: 32, offset: 96)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1374, file: !1351, line: 51, baseType: !74, size: 32, offset: 192)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1374, file: !1351, line: 52, baseType: !74, size: 32, offset: 224)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1374, file: !1351, line: 55, baseType: !1398, size: 1024, offset: 256)
!1398 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 1024, elements: !1399)
!1399 = !{!1400}
!1400 = !DISubrange(count: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1374, file: !1351, line: 58, baseType: !1402, size: 2048, offset: 1280)
!1402 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 2048, elements: !358)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1374, file: !1351, line: 60, baseType: !1404, size: 384, offset: 3328)
!1404 = !DICompositeType(tag: DW_TAG_array_type, baseType: !74, size: 384, elements: !1405)
!1405 = !{!1406}
!1406 = !DISubrange(count: 12)
!1407 = !DIDerivedType(tag: DW_TAG_member, scope: !1374, file: !1351, line: 62, baseType: !1408, size: 384, offset: 3712)
!1408 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1374, file: !1351, line: 62, size: 384, elements: !1409)
!1409 = !{!1410, !1411}
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1408, file: !1351, line: 63, baseType: !1404, size: 384)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1408, file: !1351, line: 64, baseType: !1404, size: 384)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1356, file: !1351, line: 307, baseType: !1413, size: 1088)
!1413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1351, line: 79, size: 1088, elements: !1414)
!1414 = !{!1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427, !1428, !1429, !1461}
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1413, file: !1351, line: 80, baseType: !74, size: 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1413, file: !1351, line: 81, baseType: !74, size: 32, offset: 32)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1413, file: !1351, line: 82, baseType: !74, size: 32, offset: 64)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1413, file: !1351, line: 83, baseType: !74, size: 32, offset: 96)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1413, file: !1351, line: 84, baseType: !74, size: 32, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1413, file: !1351, line: 85, baseType: !74, size: 32, offset: 160)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1413, file: !1351, line: 86, baseType: !74, size: 32, offset: 192)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1413, file: !1351, line: 88, baseType: !1369, size: 640, offset: 224)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1413, file: !1351, line: 89, baseType: !206, size: 8, offset: 864)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1413, file: !1351, line: 90, baseType: !206, size: 8, offset: 872)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1413, file: !1351, line: 91, baseType: !206, size: 8, offset: 880)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1413, file: !1351, line: 92, baseType: !206, size: 8, offset: 888)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1413, file: !1351, line: 93, baseType: !206, size: 8, offset: 896)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1413, file: !1351, line: 94, baseType: !206, size: 8, offset: 904)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1413, file: !1351, line: 95, baseType: !1430, size: 64, offset: 960)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1432, line: 11, size: 128, elements: !1433)
!1432 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1433 = !{!1434, !1435}
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1431, file: !1432, line: 12, baseType: !387, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1431, file: !1432, line: 13, baseType: !1436, size: 64, offset: 64)
!1436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1437, size: 64)
!1437 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1438, line: 56, size: 1344, elements: !1439)
!1438 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1439 = !{!1440, !1441, !1442, !1443, !1444, !1445, !1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1457, !1458, !1459, !1460}
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1437, file: !1438, line: 61, baseType: !147, size: 64)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1437, file: !1438, line: 62, baseType: !147, size: 64, offset: 64)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1437, file: !1438, line: 63, baseType: !147, size: 64, offset: 128)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1437, file: !1438, line: 64, baseType: !147, size: 64, offset: 192)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1437, file: !1438, line: 65, baseType: !147, size: 64, offset: 256)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1437, file: !1438, line: 66, baseType: !147, size: 64, offset: 320)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1437, file: !1438, line: 68, baseType: !147, size: 64, offset: 384)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1437, file: !1438, line: 69, baseType: !147, size: 64, offset: 448)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1437, file: !1438, line: 70, baseType: !147, size: 64, offset: 512)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1437, file: !1438, line: 71, baseType: !147, size: 64, offset: 576)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1437, file: !1438, line: 72, baseType: !147, size: 64, offset: 640)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1437, file: !1438, line: 73, baseType: !147, size: 64, offset: 704)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1437, file: !1438, line: 74, baseType: !147, size: 64, offset: 768)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1437, file: !1438, line: 75, baseType: !147, size: 64, offset: 832)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1437, file: !1438, line: 76, baseType: !147, size: 64, offset: 896)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1437, file: !1438, line: 81, baseType: !147, size: 64, offset: 960)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1437, file: !1438, line: 83, baseType: !147, size: 64, offset: 1024)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1437, file: !1438, line: 84, baseType: !147, size: 64, offset: 1088)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1437, file: !1438, line: 85, baseType: !147, size: 64, offset: 1152)
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1437, file: !1438, line: 86, baseType: !147, size: 64, offset: 1216)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1437, file: !1438, line: 87, baseType: !147, size: 64, offset: 1280)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1413, file: !1351, line: 96, baseType: !74, size: 32, offset: 1024)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1356, file: !1351, line: 308, baseType: !1463, size: 4608, align: 512)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1351, line: 289, size: 4608, align: 512, elements: !1464)
!1464 = !{!1465, !1466, !1475}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1463, file: !1351, line: 290, baseType: !1374, size: 4096, align: 128)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1463, file: !1351, line: 291, baseType: !1467, size: 512, offset: 4096)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1351, line: 268, size: 512, elements: !1468)
!1468 = !{!1469, !1470, !1471}
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1467, file: !1351, line: 269, baseType: !80, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1467, file: !1351, line: 270, baseType: !80, size: 64, offset: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1467, file: !1351, line: 271, baseType: !1472, size: 384, offset: 128)
!1472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 384, elements: !1473)
!1473 = !{!1474}
!1474 = !DISubrange(count: 6)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1463, file: !1351, line: 292, baseType: !1476, offset: 4608)
!1476 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, elements: !1477)
!1477 = !{!1478}
!1478 = !DISubrange(count: 0)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1356, file: !1351, line: 309, baseType: !1480, size: 32768)
!1480 = !DICompositeType(tag: DW_TAG_array_type, baseType: !206, size: 32768, elements: !1481)
!1481 = !{!1482}
!1482 = !DISubrange(count: 4096)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !600, file: !436, line: 378, baseType: !1484, size: 64, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !600, size: 64)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !596, file: !436, line: 384, baseType: !914, size: 192, offset: 192)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !456, file: !436, line: 500, baseType: !312, offset: 6656)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !456, file: !436, line: 501, baseType: !1488, size: 64, offset: 6656)
!1488 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1489 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !436, line: 387, flags: DIFlagFwdDecl)
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !456, file: !436, line: 516, baseType: !1491, size: 64, offset: 6720)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1493, line: 18, flags: DIFlagFwdDecl)
!1493 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !456, file: !436, line: 519, baseType: !426, size: 64, offset: 6784)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !456, file: !436, line: 521, baseType: !1496, size: 64, offset: 6848)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !436, line: 521, flags: DIFlagFwdDecl)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !456, file: !436, line: 545, baseType: !481, size: 32, offset: 6912)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !456, file: !436, line: 548, baseType: !263, size: 8, offset: 6944)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !456, file: !436, line: 550, baseType: !1501, offset: 6952)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1502, line: 142, elements: !326)
!1502 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !456, file: !436, line: 554, baseType: !1504, size: 256, offset: 6976)
!1504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1505, line: 102, size: 256, elements: !1506)
!1505 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1506 = !{!1507, !1508, !1509}
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1504, file: !1505, line: 103, baseType: !489, size: 64)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1504, file: !1505, line: 104, baseType: !299, size: 128, offset: 64)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1504, file: !1505, line: 105, baseType: !1510, size: 64, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1505, line: 21, baseType: !1511)
!1511 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1512, size: 64)
!1512 = !DISubroutineType(types: !1513)
!1513 = !{null, !1514}
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !456, file: !436, line: 557, baseType: !74, size: 32, offset: 7232)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !453, file: !436, line: 565, baseType: !1517, offset: 7296)
!1517 = !DICompositeType(tag: DW_TAG_array_type, baseType: !147, elements: !1518)
!1518 = !{!1519}
!1519 = !DISubrange(count: -1)
!1520 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !435, file: !436, line: 333, baseType: !1521, size: 64, offset: 576)
!1521 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !428, line: 284, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !428, line: 284, size: 64, elements: !1523)
!1523 = !{!1524}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1522, file: !428, line: 284, baseType: !1525, size: 64)
!1525 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !479, line: 19, baseType: !147)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !435, file: !436, line: 334, baseType: !147, size: 64, offset: 640)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !435, file: !436, line: 343, baseType: !1528, size: 256, offset: 704)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !435, file: !436, line: 340, size: 256, elements: !1529)
!1529 = !{!1530, !1531}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1528, file: !436, line: 341, baseType: !443, size: 192, align: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1528, file: !436, line: 342, baseType: !147, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !435, file: !436, line: 351, baseType: !299, size: 128, offset: 960)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !435, file: !436, line: 353, baseType: !1534, size: 64, offset: 1088)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !436, line: 353, flags: DIFlagFwdDecl)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !435, file: !436, line: 356, baseType: !1537, size: 64, offset: 1152)
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1539)
!1539 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !436, line: 356, flags: DIFlagFwdDecl)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !435, file: !436, line: 359, baseType: !147, size: 64, offset: 1216)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !435, file: !436, line: 361, baseType: !426, size: 64, offset: 1280)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !435, file: !436, line: 362, baseType: !63, size: 64, offset: 1344)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !435, file: !436, line: 365, baseType: !489, size: 64, offset: 1408)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !435, file: !436, line: 373, baseType: !1545, offset: 1472)
!1545 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !436, line: 296, elements: !326)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !405, file: !378, line: 90, baseType: !400, size: 64, offset: 192)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !405, file: !378, line: 91, baseType: !1548, size: 64, offset: 256)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !416, size: 64)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !368, file: !295, line: 143, baseType: !1550, size: 64, offset: 256)
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DISubroutineType(types: !1552)
!1552 = !{!1553, !305}
!1553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1554, size: 64)
!1554 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1555)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1556)
!1556 = !{!1557, !1558, !1562, !1566, !1574, !1578}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1555, file: !18, line: 40, baseType: !17, size: 32)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1555, file: !18, line: 41, baseType: !1559, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1560, size: 64)
!1560 = !DISubroutineType(types: !1561)
!1561 = !{!263}
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1555, file: !18, line: 42, baseType: !1563, size: 64, offset: 128)
!1563 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1564, size: 64)
!1564 = !DISubroutineType(types: !1565)
!1565 = !{!63}
!1566 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1555, file: !18, line: 43, baseType: !1567, size: 64, offset: 192)
!1567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1568, size: 64)
!1568 = !DISubroutineType(types: !1569)
!1569 = !{!1570, !1572}
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1573, size: 64)
!1573 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1555, file: !18, line: 44, baseType: !1575, size: 64, offset: 256)
!1575 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1576, size: 64)
!1576 = !DISubroutineType(types: !1577)
!1577 = !{!1570}
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1555, file: !18, line: 45, baseType: !1579, size: 64, offset: 320)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{null, !63}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !368, file: !295, line: 144, baseType: !1583, size: 64, offset: 320)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DISubroutineType(types: !1585)
!1585 = !{!1570, !305}
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !368, file: !295, line: 145, baseType: !1587, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = !DISubroutineType(types: !1589)
!1589 = !{null, !305, !1590, !1596}
!1590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1591, size: 64)
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1493, line: 23, baseType: !1592)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1493, line: 21, size: 32, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1592, file: !1493, line: 22, baseType: !1595, size: 32)
!1595 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !70, line: 32, baseType: !1076)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1493, line: 28, baseType: !1598)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1493, line: 26, size: 32, elements: !1599)
!1599 = !{!1600}
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1598, file: !1493, line: 27, baseType: !1601, size: 32)
!1601 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !70, line: 33, baseType: !1602)
!1602 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !164, line: 50, baseType: !7)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !294, file: !295, line: 70, baseType: !1604, size: 64, offset: 384)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1606, line: 123, size: 1024, elements: !1607)
!1606 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1607 = !{!1608, !1609, !1610, !1611, !1612, !1613, !1614, !1615, !1750, !1751, !1752, !1753, !1754}
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1605, file: !1606, line: 124, baseType: !481, size: 32)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1605, file: !1606, line: 125, baseType: !481, size: 32, offset: 32)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1605, file: !1606, line: 135, baseType: !1604, size: 64, offset: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1605, file: !1606, line: 136, baseType: !94, size: 64, offset: 128)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1605, file: !1606, line: 138, baseType: !443, size: 192, align: 64, offset: 192)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1605, file: !1606, line: 140, baseType: !1570, size: 64, offset: 384)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1605, file: !1606, line: 141, baseType: !7, size: 32, offset: 448)
!1615 = !DIDerivedType(tag: DW_TAG_member, scope: !1605, file: !1606, line: 142, baseType: !1616, size: 256, offset: 512)
!1616 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1605, file: !1606, line: 142, size: 256, elements: !1617)
!1617 = !{!1618, !1673, !1677}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1616, file: !1606, line: 143, baseType: !1619, size: 192)
!1619 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1606, line: 91, size: 192, elements: !1620)
!1620 = !{!1621, !1622, !1623}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1619, file: !1606, line: 92, baseType: !147, size: 64)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1619, file: !1606, line: 94, baseType: !460, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1619, file: !1606, line: 100, baseType: !1624, size: 64, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1606, line: 180, size: 704, elements: !1626)
!1626 = !{!1627, !1628, !1629, !1643, !1644, !1645, !1671, !1672}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1625, file: !1606, line: 182, baseType: !1604, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1625, file: !1606, line: 183, baseType: !7, size: 32, offset: 64)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1625, file: !1606, line: 186, baseType: !1630, size: 192, offset: 128)
!1630 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1631, line: 19, size: 192, elements: !1632)
!1631 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1632 = !{!1633, !1641, !1642}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1630, file: !1631, line: 20, baseType: !1634, size: 128)
!1634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1635, line: 292, size: 128, elements: !1636)
!1635 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1636 = !{!1637, !1638, !1640}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1634, file: !1635, line: 293, baseType: !312)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1634, file: !1635, line: 295, baseType: !1639, size: 32)
!1639 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !70, line: 148, baseType: !7)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1634, file: !1635, line: 296, baseType: !63, size: 64, offset: 64)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1630, file: !1631, line: 21, baseType: !7, size: 32, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1630, file: !1631, line: 22, baseType: !7, size: 32, offset: 160)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1625, file: !1606, line: 187, baseType: !74, size: 32, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1625, file: !1606, line: 188, baseType: !74, size: 32, offset: 352)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1625, file: !1606, line: 189, baseType: !1646, size: 64, offset: 384)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1606, line: 168, size: 320, elements: !1648)
!1648 = !{!1649, !1655, !1659, !1663, !1667}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1647, file: !1606, line: 169, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!98, !1653, !1624}
!1653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1654, size: 64)
!1654 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !428, line: 539, flags: DIFlagFwdDecl)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1647, file: !1606, line: 171, baseType: !1656, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1657, size: 64)
!1657 = !DISubroutineType(types: !1658)
!1658 = !{!98, !1604, !94, !393}
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1647, file: !1606, line: 173, baseType: !1660, size: 64, offset: 128)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!98, !1604}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1647, file: !1606, line: 174, baseType: !1664, size: 64, offset: 192)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DISubroutineType(types: !1666)
!1666 = !{!98, !1604, !1604, !94}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1647, file: !1606, line: 176, baseType: !1668, size: 64, offset: 256)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!98, !1653, !1604, !1624}
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1625, file: !1606, line: 192, baseType: !299, size: 128, offset: 448)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1625, file: !1606, line: 194, baseType: !885, size: 128, offset: 576)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1616, file: !1606, line: 144, baseType: !1674, size: 64)
!1674 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1606, line: 103, size: 64, elements: !1675)
!1675 = !{!1676}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1674, file: !1606, line: 104, baseType: !1604, size: 64)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1616, file: !1606, line: 145, baseType: !1678, size: 256)
!1678 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1606, line: 107, size: 256, elements: !1679)
!1679 = !{!1680, !1745, !1748, !1749}
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1678, file: !1606, line: 108, baseType: !1681, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1682, size: 64)
!1682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1683)
!1683 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1606, line: 217, size: 768, elements: !1684)
!1684 = !{!1685, !1705, !1709, !1713, !1718, !1722, !1726, !1730, !1731, !1732, !1733, !1741}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1683, file: !1606, line: 222, baseType: !1686, size: 64)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{!98, !1689}
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1606, line: 197, size: 1088, elements: !1691)
!1691 = !{!1692, !1693, !1694, !1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1703, !1704}
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1690, file: !1606, line: 199, baseType: !1604, size: 64)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1690, file: !1606, line: 200, baseType: !426, size: 64, offset: 64)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1690, file: !1606, line: 201, baseType: !1653, size: 64, offset: 128)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1690, file: !1606, line: 202, baseType: !63, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1690, file: !1606, line: 205, baseType: !558, size: 192, offset: 256)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1690, file: !1606, line: 206, baseType: !558, size: 192, offset: 448)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1690, file: !1606, line: 207, baseType: !98, size: 32, offset: 640)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1690, file: !1606, line: 208, baseType: !299, size: 128, offset: 704)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1690, file: !1606, line: 209, baseType: !353, size: 64, offset: 832)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1690, file: !1606, line: 211, baseType: !166, size: 64, offset: 896)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1690, file: !1606, line: 212, baseType: !263, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1690, file: !1606, line: 213, baseType: !263, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1690, file: !1606, line: 214, baseType: !1537, size: 64, offset: 1024)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1683, file: !1606, line: 223, baseType: !1706, size: 64, offset: 64)
!1706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1707, size: 64)
!1707 = !DISubroutineType(types: !1708)
!1708 = !{null, !1689}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1683, file: !1606, line: 236, baseType: !1710, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1711, size: 64)
!1711 = !DISubroutineType(types: !1712)
!1712 = !{!98, !1653, !63}
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1683, file: !1606, line: 238, baseType: !1714, size: 64, offset: 192)
!1714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1715, size: 64)
!1715 = !DISubroutineType(types: !1716)
!1716 = !{!63, !1653, !1717}
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1683, file: !1606, line: 239, baseType: !1719, size: 64, offset: 256)
!1719 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1720, size: 64)
!1720 = !DISubroutineType(types: !1721)
!1721 = !{!63, !1653, !63, !1717}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1683, file: !1606, line: 240, baseType: !1723, size: 64, offset: 320)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{null, !1653, !63}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1683, file: !1606, line: 242, baseType: !1727, size: 64, offset: 384)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DISubroutineType(types: !1729)
!1729 = !{!384, !1689, !353, !166, !162}
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1683, file: !1606, line: 252, baseType: !166, size: 64, offset: 448)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1683, file: !1606, line: 259, baseType: !263, size: 8, offset: 512)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1683, file: !1606, line: 260, baseType: !1727, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1683, file: !1606, line: 263, baseType: !1734, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!1737, !1689, !1739}
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1738, line: 52, baseType: !7)
!1738 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1606, line: 27, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1683, file: !1606, line: 266, baseType: !1742, size: 64, offset: 704)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!98, !1689, !434}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1678, file: !1606, line: 109, baseType: !1746, size: 64, offset: 64)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1606, line: 31, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1678, file: !1606, line: 110, baseType: !162, size: 64, offset: 128)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1678, file: !1606, line: 111, baseType: !1604, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1605, file: !1606, line: 148, baseType: !63, size: 64, offset: 768)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1605, file: !1606, line: 154, baseType: !80, size: 64, offset: 832)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1605, file: !1606, line: 156, baseType: !394, size: 16, offset: 896)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1605, file: !1606, line: 157, baseType: !393, size: 16, offset: 912)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1605, file: !1606, line: 158, baseType: !1755, size: 64, offset: 960)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1606, line: 32, flags: DIFlagFwdDecl)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !294, file: !295, line: 71, baseType: !1758, size: 32, offset: 448)
!1758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1759, line: 19, size: 32, elements: !1760)
!1759 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1760 = !{!1761}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1758, file: !1759, line: 20, baseType: !617, size: 32)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !294, file: !295, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !294, file: !295, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !294, file: !295, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !294, file: !295, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !294, file: !295, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !291, file: !30, line: 463, baseType: !1768, size: 64, offset: 512)
!1768 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !291, size: 64)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !291, file: !30, line: 465, baseType: !1770, size: 64, offset: 576)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !291, file: !30, line: 467, baseType: !94, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !291, file: !30, line: 468, baseType: !1774, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1775, size: 64)
!1775 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1776)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1784, !1789, !1793}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1776, file: !30, line: 88, baseType: !94, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1776, file: !30, line: 89, baseType: !402, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1776, file: !30, line: 90, baseType: !1781, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1782, size: 64)
!1782 = !DISubroutineType(types: !1783)
!1783 = !{!98, !1768, !348}
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1776, file: !30, line: 91, baseType: !1785, size: 64, offset: 192)
!1785 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1786, size: 64)
!1786 = !DISubroutineType(types: !1787)
!1787 = !{!353, !1768, !1788, !1590, !1596}
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !393, size: 64)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1776, file: !30, line: 93, baseType: !1790, size: 64, offset: 256)
!1790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1791, size: 64)
!1791 = !DISubroutineType(types: !1792)
!1792 = !{null, !1768}
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1776, file: !30, line: 95, baseType: !1794, size: 64, offset: 320)
!1794 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1795, size: 64)
!1795 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1796)
!1796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1797)
!1797 = !{!1798, !1802, !1803, !1804, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1796, file: !37, line: 279, baseType: !1799, size: 64)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!98, !1768}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1796, file: !37, line: 280, baseType: !1790, size: 64, offset: 64)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1796, file: !37, line: 281, baseType: !1799, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1796, file: !37, line: 282, baseType: !1799, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1796, file: !37, line: 283, baseType: !1799, size: 64, offset: 256)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1796, file: !37, line: 284, baseType: !1799, size: 64, offset: 320)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1796, file: !37, line: 285, baseType: !1799, size: 64, offset: 384)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1796, file: !37, line: 286, baseType: !1799, size: 64, offset: 448)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1796, file: !37, line: 287, baseType: !1799, size: 64, offset: 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1796, file: !37, line: 288, baseType: !1799, size: 64, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1796, file: !37, line: 289, baseType: !1799, size: 64, offset: 640)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1796, file: !37, line: 290, baseType: !1799, size: 64, offset: 704)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1796, file: !37, line: 291, baseType: !1799, size: 64, offset: 768)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1796, file: !37, line: 292, baseType: !1799, size: 64, offset: 832)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1796, file: !37, line: 293, baseType: !1799, size: 64, offset: 896)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1796, file: !37, line: 294, baseType: !1799, size: 64, offset: 960)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1796, file: !37, line: 295, baseType: !1799, size: 64, offset: 1024)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1796, file: !37, line: 296, baseType: !1799, size: 64, offset: 1088)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1796, file: !37, line: 297, baseType: !1799, size: 64, offset: 1152)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1796, file: !37, line: 298, baseType: !1799, size: 64, offset: 1216)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1796, file: !37, line: 299, baseType: !1799, size: 64, offset: 1280)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1796, file: !37, line: 300, baseType: !1799, size: 64, offset: 1344)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1796, file: !37, line: 301, baseType: !1799, size: 64, offset: 1408)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !291, file: !30, line: 470, baseType: !1825, size: 64, offset: 768)
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1827, line: 82, size: 1408, elements: !1828)
!1827 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1828 = !{!1829, !1830, !1831, !1832, !1833, !1834, !1835, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1911, !1914, !1917}
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1826, file: !1827, line: 83, baseType: !94, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1826, file: !1827, line: 84, baseType: !94, size: 64, offset: 64)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1826, file: !1827, line: 85, baseType: !1768, size: 64, offset: 128)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1826, file: !1827, line: 86, baseType: !402, size: 64, offset: 192)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1826, file: !1827, line: 87, baseType: !402, size: 64, offset: 256)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1826, file: !1827, line: 88, baseType: !402, size: 64, offset: 320)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1826, file: !1827, line: 90, baseType: !1836, size: 64, offset: 384)
!1836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1837, size: 64)
!1837 = !DISubroutineType(types: !1838)
!1838 = !{!98, !1768, !1839}
!1839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1840, size: 64)
!1840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1841)
!1841 = !{!1842, !1843, !1844, !1845, !1846, !1847, !1848, !1862, !1875, !1876, !1877, !1878, !1879, !1887, !1888, !1889, !1890, !1891, !1892}
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1840, file: !24, line: 96, baseType: !94, size: 64)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1840, file: !24, line: 97, baseType: !1825, size: 64, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1840, file: !24, line: 99, baseType: !287, size: 64, offset: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1840, file: !24, line: 100, baseType: !94, size: 64, offset: 192)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1840, file: !24, line: 102, baseType: !263, size: 8, offset: 256)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1840, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1840, file: !24, line: 105, baseType: !1849, size: 64, offset: 320)
!1849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1850, size: 64)
!1850 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1851)
!1851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1852, line: 262, size: 1600, elements: !1853)
!1852 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1853 = !{!1854, !1856, !1857, !1861}
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1851, file: !1852, line: 263, baseType: !1855, size: 256)
!1855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !1399)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1851, file: !1852, line: 264, baseType: !1855, size: 256, offset: 256)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1851, file: !1852, line: 265, baseType: !1858, size: 1024, offset: 512)
!1858 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !1859)
!1859 = !{!1860}
!1860 = !DISubrange(count: 128)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1851, file: !1852, line: 266, baseType: !1570, size: 64, offset: 1536)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1840, file: !24, line: 106, baseType: !1863, size: 64, offset: 384)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1865)
!1865 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1852, line: 210, size: 256, elements: !1866)
!1866 = !{!1867, !1871, !1873, !1874}
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1865, file: !1852, line: 211, baseType: !1868, size: 72)
!1868 = !DICompositeType(tag: DW_TAG_array_type, baseType: !207, size: 72, elements: !1869)
!1869 = !{!1870}
!1870 = !DISubrange(count: 9)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1865, file: !1852, line: 212, baseType: !1872, size: 64, offset: 128)
!1872 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1852, line: 14, baseType: !147)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1865, file: !1852, line: 213, baseType: !76, size: 32, offset: 192)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1865, file: !1852, line: 214, baseType: !76, size: 32, offset: 224)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1840, file: !24, line: 108, baseType: !1799, size: 64, offset: 448)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1840, file: !24, line: 109, baseType: !1790, size: 64, offset: 512)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1840, file: !24, line: 110, baseType: !1799, size: 64, offset: 576)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1840, file: !24, line: 111, baseType: !1790, size: 64, offset: 640)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1840, file: !24, line: 112, baseType: !1880, size: 64, offset: 704)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{!98, !1768, !1883}
!1883 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1884)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1885)
!1885 = !{!1886}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1884, file: !37, line: 51, baseType: !98, size: 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1840, file: !24, line: 113, baseType: !1799, size: 64, offset: 768)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1840, file: !24, line: 114, baseType: !402, size: 64, offset: 832)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1840, file: !24, line: 115, baseType: !402, size: 64, offset: 896)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1840, file: !24, line: 117, baseType: !1794, size: 64, offset: 960)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1840, file: !24, line: 118, baseType: !1790, size: 64, offset: 1024)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1840, file: !24, line: 120, baseType: !1893, size: 64, offset: 1088)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1826, file: !1827, line: 91, baseType: !1781, size: 64, offset: 448)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1826, file: !1827, line: 92, baseType: !1799, size: 64, offset: 512)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1826, file: !1827, line: 93, baseType: !1790, size: 64, offset: 576)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1826, file: !1827, line: 94, baseType: !1799, size: 64, offset: 640)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1826, file: !1827, line: 95, baseType: !1790, size: 64, offset: 704)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1826, file: !1827, line: 97, baseType: !1799, size: 64, offset: 768)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1826, file: !1827, line: 98, baseType: !1799, size: 64, offset: 832)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1826, file: !1827, line: 100, baseType: !1880, size: 64, offset: 896)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1826, file: !1827, line: 101, baseType: !1799, size: 64, offset: 960)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1826, file: !1827, line: 103, baseType: !1799, size: 64, offset: 1024)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1826, file: !1827, line: 105, baseType: !1799, size: 64, offset: 1088)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1826, file: !1827, line: 107, baseType: !1794, size: 64, offset: 1152)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1826, file: !1827, line: 109, baseType: !1908, size: 64, offset: 1216)
!1908 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1910 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1827, line: 109, flags: DIFlagFwdDecl)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1826, file: !1827, line: 111, baseType: !1912, size: 64, offset: 1280)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1827, line: 111, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1826, file: !1827, line: 112, baseType: !1915, offset: 1344)
!1915 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1916, line: 187, elements: !326)
!1916 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1826, file: !1827, line: 114, baseType: !263, size: 8, offset: 1344)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !291, file: !30, line: 471, baseType: !1839, size: 64, offset: 832)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !291, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !291, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !291, file: !30, line: 480, baseType: !558, size: 192, offset: 1024)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !291, file: !30, line: 484, baseType: !1923, size: 576, offset: 1216)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1924)
!1924 = !{!1925, !1926, !1927, !1928, !1929, !1930}
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1923, file: !30, line: 362, baseType: !299, size: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1923, file: !30, line: 363, baseType: !299, size: 128, offset: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1923, file: !30, line: 364, baseType: !299, size: 128, offset: 256)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1923, file: !30, line: 365, baseType: !299, size: 128, offset: 384)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1923, file: !30, line: 366, baseType: !263, size: 8, offset: 512)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1923, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !291, file: !30, line: 485, baseType: !1932, size: 2304, offset: 1792)
!1932 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1933)
!1933 = !{!1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2004, !2005, !2006, !2007, !2008, !2009, !2010, !2011, !2012, !2013, !2014, !2015, !2016, !2017, !2018, !2019, !2029, !2033}
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1932, file: !37, line: 566, baseType: !1883, size: 32)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1932, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1932, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1932, file: !37, line: 569, baseType: !263, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1932, file: !37, line: 570, baseType: !263, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1932, file: !37, line: 571, baseType: !263, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1932, file: !37, line: 572, baseType: !263, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1932, file: !37, line: 573, baseType: !263, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1932, file: !37, line: 574, baseType: !263, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1932, file: !37, line: 575, baseType: !263, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1932, file: !37, line: 576, baseType: !263, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1932, file: !37, line: 577, baseType: !74, size: 32, offset: 64)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1932, file: !37, line: 578, baseType: !312, offset: 96)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1932, file: !37, line: 580, baseType: !299, size: 128, offset: 128)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1932, file: !37, line: 581, baseType: !914, size: 192, offset: 256)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1932, file: !37, line: 582, baseType: !1950, size: 64, offset: 448)
!1950 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1951, size: 64)
!1951 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1952, line: 43, size: 1472, elements: !1953)
!1952 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1953 = !{!1954, !1955, !1956, !1957, !1958, !1961, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1951, file: !1952, line: 44, baseType: !94, size: 64)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1951, file: !1952, line: 45, baseType: !98, size: 32, offset: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1951, file: !1952, line: 46, baseType: !299, size: 128, offset: 128)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1951, file: !1952, line: 47, baseType: !312, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1951, file: !1952, line: 48, baseType: !1959, size: 64, offset: 256)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1951, file: !1952, line: 49, baseType: !1962, size: 320, offset: 320)
!1962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1963, line: 11, size: 320, elements: !1964)
!1963 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1964 = !{!1965, !1966, !1967, !1972}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1962, file: !1963, line: 16, baseType: !878, size: 128)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1962, file: !1963, line: 17, baseType: !147, size: 64, offset: 128)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1962, file: !1963, line: 18, baseType: !1968, size: 64, offset: 192)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{null, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1962, file: !1963, line: 19, baseType: !74, size: 32, offset: 256)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1951, file: !1952, line: 50, baseType: !147, size: 64, offset: 640)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1951, file: !1952, line: 51, baseType: !687, size: 64, offset: 704)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1951, file: !1952, line: 52, baseType: !687, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1951, file: !1952, line: 53, baseType: !687, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1951, file: !1952, line: 54, baseType: !687, size: 64, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1951, file: !1952, line: 55, baseType: !687, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1951, file: !1952, line: 56, baseType: !147, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1951, file: !1952, line: 57, baseType: !147, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1951, file: !1952, line: 58, baseType: !147, size: 64, offset: 1152)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1951, file: !1952, line: 59, baseType: !147, size: 64, offset: 1216)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1951, file: !1952, line: 60, baseType: !147, size: 64, offset: 1280)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1951, file: !1952, line: 61, baseType: !1768, size: 64, offset: 1344)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1951, file: !1952, line: 62, baseType: !263, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1951, file: !1952, line: 63, baseType: !263, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1932, file: !37, line: 583, baseType: !263, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1932, file: !37, line: 584, baseType: !263, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1932, file: !37, line: 585, baseType: !263, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1932, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1932, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1932, file: !37, line: 592, baseType: !679, size: 512, offset: 576)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1932, file: !37, line: 593, baseType: !80, size: 64, offset: 1088)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1932, file: !37, line: 594, baseType: !1504, size: 256, offset: 1152)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1932, file: !37, line: 595, baseType: !885, size: 128, offset: 1408)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1932, file: !37, line: 596, baseType: !1959, size: 64, offset: 1536)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1932, file: !37, line: 597, baseType: !481, size: 32, offset: 1600)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1932, file: !37, line: 598, baseType: !481, size: 32, offset: 1632)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1932, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1932, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1932, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1932, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1932, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1932, file: !37, line: 604, baseType: !263, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1932, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1932, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1932, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1932, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1932, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1932, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1932, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1932, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1932, file: !37, line: 613, baseType: !98, size: 32, offset: 1792)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1932, file: !37, line: 614, baseType: !98, size: 32, offset: 1824)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1932, file: !37, line: 615, baseType: !80, size: 64, offset: 1856)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1932, file: !37, line: 616, baseType: !80, size: 64, offset: 1920)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1932, file: !37, line: 617, baseType: !80, size: 64, offset: 1984)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1932, file: !37, line: 618, baseType: !80, size: 64, offset: 2048)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1932, file: !37, line: 620, baseType: !2020, size: 64, offset: 2112)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2022)
!2022 = !{!2023, !2024, !2025, !2026}
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2021, file: !37, line: 537, baseType: !312)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2021, file: !37, line: 538, baseType: !7, size: 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2021, file: !37, line: 540, baseType: !299, size: 128, offset: 64)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2021, file: !37, line: 543, baseType: !2027, size: 64, offset: 192)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1932, file: !37, line: 621, baseType: !2030, size: 64, offset: 2176)
!2030 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2031, size: 64)
!2031 = !DISubroutineType(types: !2032)
!2032 = !{null, !1768, !838}
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1932, file: !37, line: 622, baseType: !2034, size: 64, offset: 2240)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !291, file: !30, line: 486, baseType: !2037, size: 64, offset: 4096)
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2039)
!2039 = !{!2040, !2041, !2042, !2046, !2047, !2048}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2038, file: !37, line: 643, baseType: !1796, size: 1472)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2038, file: !37, line: 644, baseType: !1799, size: 64, offset: 1472)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2038, file: !37, line: 645, baseType: !2043, size: 64, offset: 1536)
!2043 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2044, size: 64)
!2044 = !DISubroutineType(types: !2045)
!2045 = !{null, !1768, !263}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2038, file: !37, line: 646, baseType: !1799, size: 64, offset: 1600)
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2038, file: !37, line: 647, baseType: !1790, size: 64, offset: 1664)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2038, file: !37, line: 648, baseType: !1790, size: 64, offset: 1728)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !291, file: !30, line: 493, baseType: !2050, size: 64, offset: 4160)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !291, file: !30, line: 499, baseType: !299, size: 128, offset: 4224)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !291, file: !30, line: 502, baseType: !2054, size: 64, offset: 4352)
!2054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2055, size: 64)
!2055 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2056)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !291, file: !30, line: 504, baseType: !2058, size: 64, offset: 4416)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !291, file: !30, line: 505, baseType: !80, size: 64, offset: 4480)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !291, file: !30, line: 510, baseType: !80, size: 64, offset: 4544)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !291, file: !30, line: 511, baseType: !2062, size: 64, offset: 4608)
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2064)
!2064 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !291, file: !30, line: 513, baseType: !2066, size: 64, offset: 4672)
!2066 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2067, size: 64)
!2067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2068)
!2068 = !{!2069, !2070}
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2067, file: !30, line: 293, baseType: !7, size: 32)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2067, file: !30, line: 294, baseType: !147, size: 64, offset: 64)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !291, file: !30, line: 515, baseType: !299, size: 128, offset: 4736)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !291, file: !30, line: 526, baseType: !2073, offset: 4864)
!2073 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2074, line: 5, elements: !326)
!2074 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !291, file: !30, line: 528, baseType: !2076, size: 64, offset: 4864)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2078, line: 51, size: 1344, elements: !2079)
!2078 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2079 = !{!2080, !2081, !2083, !2084, !2174, !2183, !2184, !2185, !2186, !2187, !2188, !2189}
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2077, file: !2078, line: 52, baseType: !94, size: 64)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2077, file: !2078, line: 53, baseType: !2082, size: 32, offset: 64)
!2082 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2078, line: 28, baseType: !74)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2077, file: !2078, line: 54, baseType: !94, size: 64, offset: 128)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2077, file: !2078, line: 55, baseType: !2085, size: 192, offset: 192)
!2085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2086, line: 17, size: 192, elements: !2087)
!2086 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2087 = !{!2088, !2090, !2173}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2085, file: !2086, line: 18, baseType: !2089, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2085, file: !2086, line: 19, baseType: !2091, size: 64, offset: 64)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2093)
!2093 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2086, line: 110, size: 1152, elements: !2094)
!2094 = !{!2095, !2099, !2103, !2109, !2115, !2119, !2123, !2128, !2132, !2133, !2137, !2141, !2145, !2156, !2157, !2158, !2159, !2169}
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2093, file: !2086, line: 111, baseType: !2096, size: 64)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DISubroutineType(types: !2098)
!2098 = !{!2089, !2089}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2093, file: !2086, line: 112, baseType: !2100, size: 64, offset: 64)
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = !DISubroutineType(types: !2102)
!2102 = !{null, !2089}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2093, file: !2086, line: 113, baseType: !2104, size: 64, offset: 128)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = !DISubroutineType(types: !2106)
!2106 = !{!263, !2107}
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2108, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2085)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2093, file: !2086, line: 114, baseType: !2110, size: 64, offset: 192)
!2110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2111, size: 64)
!2111 = !DISubroutineType(types: !2112)
!2112 = !{!1570, !2107, !2113}
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2093, file: !2086, line: 116, baseType: !2116, size: 64, offset: 256)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!263, !2107, !94}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2093, file: !2086, line: 118, baseType: !2120, size: 64, offset: 320)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!98, !2107, !94, !7, !63, !166}
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2093, file: !2086, line: 123, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = !DISubroutineType(types: !2126)
!2126 = !{!98, !2107, !94, !2127, !166}
!2127 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2093, file: !2086, line: 126, baseType: !2129, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{!94, !2107}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2093, file: !2086, line: 127, baseType: !2129, size: 64, offset: 512)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2093, file: !2086, line: 128, baseType: !2134, size: 64, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!2089, !2107}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2093, file: !2086, line: 130, baseType: !2138, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!2089, !2107, !2089}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2093, file: !2086, line: 133, baseType: !2142, size: 64, offset: 704)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!2089, !2107, !94}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2093, file: !2086, line: 135, baseType: !2146, size: 64, offset: 768)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{!98, !2107, !94, !94, !7, !7, !2149}
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2086, line: 43, size: 640, elements: !2151)
!2151 = !{!2152, !2153, !2154}
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2150, file: !2086, line: 44, baseType: !2089, size: 64)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2150, file: !2086, line: 45, baseType: !7, size: 32, offset: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2150, file: !2086, line: 46, baseType: !2155, size: 512, offset: 128)
!2155 = !DICompositeType(tag: DW_TAG_array_type, baseType: !80, size: 512, elements: !717)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2093, file: !2086, line: 140, baseType: !2138, size: 64, offset: 832)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2093, file: !2086, line: 143, baseType: !2134, size: 64, offset: 896)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2093, file: !2086, line: 145, baseType: !2096, size: 64, offset: 960)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2093, file: !2086, line: 146, baseType: !2160, size: 64, offset: 1024)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!98, !2107, !2163}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2086, line: 29, size: 128, elements: !2165)
!2165 = !{!2166, !2167, !2168}
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2164, file: !2086, line: 30, baseType: !7, size: 32)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2164, file: !2086, line: 31, baseType: !7, size: 32, offset: 32)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2164, file: !2086, line: 32, baseType: !2107, size: 64, offset: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2093, file: !2086, line: 148, baseType: !2170, size: 64, offset: 1088)
!2170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2171, size: 64)
!2171 = !DISubroutineType(types: !2172)
!2172 = !{!98, !2107, !1768}
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2085, file: !2086, line: 20, baseType: !1768, size: 64, offset: 128)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2077, file: !2078, line: 57, baseType: !2175, size: 64, offset: 384)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2078, line: 31, size: 704, elements: !2177)
!2177 = !{!2178, !2179, !2180, !2181, !2182}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2176, file: !2078, line: 32, baseType: !353, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2176, file: !2078, line: 33, baseType: !98, size: 32, offset: 64)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2176, file: !2078, line: 34, baseType: !63, size: 64, offset: 128)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2176, file: !2078, line: 35, baseType: !2175, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2176, file: !2078, line: 43, baseType: !417, size: 448, offset: 256)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2077, file: !2078, line: 58, baseType: !2175, size: 64, offset: 448)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2077, file: !2078, line: 59, baseType: !2076, size: 64, offset: 512)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2077, file: !2078, line: 60, baseType: !2076, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2077, file: !2078, line: 61, baseType: !2076, size: 64, offset: 640)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2077, file: !2078, line: 63, baseType: !294, size: 512, offset: 704)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2077, file: !2078, line: 65, baseType: !147, size: 64, offset: 1216)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2077, file: !2078, line: 66, baseType: !63, size: 64, offset: 1280)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !291, file: !30, line: 529, baseType: !2089, size: 64, offset: 4928)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !291, file: !30, line: 534, baseType: !2192, size: 32, offset: 4992)
!2192 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !70, line: 16, baseType: !2193)
!2193 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !70, line: 13, baseType: !74)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !291, file: !30, line: 535, baseType: !74, size: 32, offset: 5024)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !291, file: !30, line: 537, baseType: !312, offset: 5056)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !291, file: !30, line: 538, baseType: !299, size: 128, offset: 5056)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !291, file: !30, line: 540, baseType: !2198, size: 64, offset: 5184)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2200, line: 54, size: 960, elements: !2201)
!2200 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2201 = !{!2202, !2203, !2204, !2205, !2206, !2207, !2208, !2212, !2216, !2217, !2218, !2219, !2223, !2227, !2228}
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2199, file: !2200, line: 55, baseType: !94, size: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2199, file: !2200, line: 56, baseType: !287, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2199, file: !2200, line: 58, baseType: !402, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2199, file: !2200, line: 59, baseType: !402, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2199, file: !2200, line: 60, baseType: !305, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2199, file: !2200, line: 62, baseType: !1781, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2199, file: !2200, line: 63, baseType: !2209, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2210, size: 64)
!2210 = !DISubroutineType(types: !2211)
!2211 = !{!353, !1768, !1788}
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2199, file: !2200, line: 65, baseType: !2213, size: 64, offset: 448)
!2213 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2214, size: 64)
!2214 = !DISubroutineType(types: !2215)
!2215 = !{null, !2198}
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2199, file: !2200, line: 66, baseType: !1790, size: 64, offset: 512)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2199, file: !2200, line: 68, baseType: !1799, size: 64, offset: 576)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2199, file: !2200, line: 70, baseType: !1553, size: 64, offset: 640)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2199, file: !2200, line: 71, baseType: !2220, size: 64, offset: 704)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DISubroutineType(types: !2222)
!2222 = !{!1570, !1768}
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2199, file: !2200, line: 73, baseType: !2224, size: 64, offset: 768)
!2224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2225, size: 64)
!2225 = !DISubroutineType(types: !2226)
!2226 = !{null, !1768, !1590, !1596}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2199, file: !2200, line: 75, baseType: !1794, size: 64, offset: 832)
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2199, file: !2200, line: 77, baseType: !1912, size: 64, offset: 896)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !291, file: !30, line: 541, baseType: !402, size: 64, offset: 5248)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !291, file: !30, line: 543, baseType: !1790, size: 64, offset: 5312)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !291, file: !30, line: 544, baseType: !2232, size: 64, offset: 5376)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !291, file: !30, line: 545, baseType: !2235, size: 64, offset: 5440)
!2235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2236, size: 64)
!2236 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !291, file: !30, line: 547, baseType: !263, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !291, file: !30, line: 548, baseType: !263, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !291, file: !30, line: 549, baseType: !263, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !291, file: !30, line: 550, baseType: !263, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !65, file: !66, line: 376, baseType: !98, size: 32, offset: 8832)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !65, file: !66, line: 377, baseType: !2243, size: 192, offset: 8896)
!2243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !66, line: 191, size: 192, elements: !2244)
!2244 = !{!2245, !2248, !2249}
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2243, file: !66, line: 192, baseType: !2246, size: 64)
!2246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2247, size: 64)
!2247 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1606, line: 21, flags: DIFlagFwdDecl)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2243, file: !66, line: 194, baseType: !94, size: 64, offset: 64)
!2249 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2243, file: !66, line: 195, baseType: !94, size: 64, offset: 128)
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !65, file: !66, line: 378, baseType: !2251, size: 64, offset: 9088)
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2253, line: 16, flags: DIFlagFwdDecl)
!2253 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !65, file: !66, line: 386, baseType: !64, size: 64, offset: 9152)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !65, file: !66, line: 389, baseType: !299, size: 128, offset: 9216)
!2256 = !DIDerivedType(tag: DW_TAG_member, scope: !65, file: !66, line: 391, baseType: !2257, size: 320, offset: 9344)
!2257 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !65, file: !66, line: 391, size: 320, elements: !2258)
!2258 = !{!2259, !2266}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2257, file: !66, line: 392, baseType: !2260, size: 320)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !66, line: 211, size: 320, elements: !2261)
!2261 = !{!2262, !2263, !2264, !2265}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2260, file: !66, line: 212, baseType: !299, size: 128)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2260, file: !66, line: 213, baseType: !80, size: 64, offset: 128)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2260, file: !66, line: 214, baseType: !80, size: 64, offset: 192)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2260, file: !66, line: 215, baseType: !74, size: 32, offset: 256)
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2257, file: !66, line: 393, baseType: !2267, size: 256)
!2267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !66, line: 230, size: 256, elements: !2268)
!2268 = !{!2269, !2270}
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2267, file: !66, line: 231, baseType: !558, size: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2267, file: !66, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !302)
!2273 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2274, size: 64)
!2274 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2272)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part_parser", file: !2277, line: 78, size: 448, elements: !2278)
!2277 = !DIFile(filename: "./include/linux/mtd/partitions.h", directory: "/home/lizy2001/genbc/linux")
!2278 = !{!2279, !2280, !2281, !2282, !2283, !2305}
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2276, file: !2277, line: 79, baseType: !299, size: 128)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2276, file: !2277, line: 80, baseType: !287, size: 64, offset: 128)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2276, file: !2277, line: 81, baseType: !94, size: 64, offset: 192)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !2276, file: !2277, line: 82, baseType: !1849, size: 64, offset: 256)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "parse_fn", scope: !2276, file: !2277, line: 83, baseType: !2284, size: 64, offset: 320)
!2284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2285, size: 64)
!2285 = !DISubroutineType(types: !2286)
!2286 = !{!98, !64, !2287, !2301}
!2287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2288, size: 64)
!2288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2289, size: 64)
!2289 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2290)
!2290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_partition", file: !2277, line: 46, size: 384, elements: !2291)
!2291 = !{!2292, !2293, !2296, !2297, !2298, !2299, !2300}
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2290, file: !2277, line: 47, baseType: !94, size: 64)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "types", scope: !2290, file: !2277, line: 48, baseType: !2294, size: 64, offset: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !94)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2290, file: !2277, line: 49, baseType: !79, size: 64, offset: 128)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2290, file: !2277, line: 50, baseType: !79, size: 64, offset: 192)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "mask_flags", scope: !2290, file: !2277, line: 51, baseType: !73, size: 32, offset: 256)
!2299 = !DIDerivedType(tag: DW_TAG_member, name: "add_flags", scope: !2290, file: !2277, line: 52, baseType: !73, size: 32, offset: 288)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !2290, file: !2277, line: 53, baseType: !2076, size: 64, offset: 320)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part_parser_data", file: !2277, line: 69, size: 64, elements: !2303)
!2303 = !{!2304}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "origin", scope: !2302, file: !2277, line: 70, baseType: !147, size: 64)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "cleanup", scope: !2276, file: !2277, line: 85, baseType: !2306, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !2288, !98}
!2309 = !{!2310, !2315, !0, !2329, !2331, !2334}
!2310 = !DIGlobalVariableExpression(var: !2311, expr: !DIExpression())
!2311 = distinct !DIGlobalVariable(name: "mtd_partition_attrs", scope: !2, file: !3, line: 225, type: !2312, isLocal: true, isDefinition: true)
!2312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2313, size: 128, elements: !1152)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !389)
!2315 = !DIGlobalVariableExpression(var: !2316, expr: !DIExpression())
!2316 = distinct !DIGlobalVariable(name: "dev_attr_offset", scope: !2, file: !3, line: 223, type: !2317, isLocal: true, isDefinition: true)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2318)
!2318 = !{!2319, !2320, !2325}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2317, file: !30, line: 100, baseType: !389, size: 128)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2317, file: !30, line: 101, baseType: !2321, size: 64, offset: 128)
!2321 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2322, size: 64)
!2322 = !DISubroutineType(types: !2323)
!2323 = !{!384, !1768, !2324, !353}
!2324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2317, file: !30, line: 103, baseType: !2326, size: 64, offset: 192)
!2326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2327, size: 64)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!384, !1768, !2324, !94, !166}
!2329 = !DIGlobalVariableExpression(var: !2330, expr: !DIExpression())
!2330 = distinct !DIGlobalVariable(name: "part_parsers", scope: !2, file: !3, line: 442, type: !299, isLocal: true, isDefinition: true)
!2331 = !DIGlobalVariableExpression(var: !2332, expr: !DIExpression())
!2332 = distinct !DIGlobalVariable(name: "default_subpartition_types", scope: !2, file: !3, line: 510, type: !2333, isLocal: true, isDefinition: true)
!2333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 128, elements: !1152)
!2334 = !DIGlobalVariableExpression(var: !2335, expr: !DIExpression())
!2335 = distinct !DIGlobalVariable(name: "default_mtd_part_types", scope: !2, file: !3, line: 503, type: !2336, isLocal: true, isDefinition: true)
!2336 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2295, size: 192, elements: !354)
!2337 = !{i32 7, !"Dwarf Version", i32 4}
!2338 = !{i32 2, !"Debug Info Version", i32 3}
!2339 = !{i32 1, !"wchar_size", i32 2}
!2340 = !{i32 1, !"Code Model", i32 2}
!2341 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2342 = distinct !DISubprogram(name: "mtd_add_partition", scope: !3, file: !3, line: 239, type: !2343, scopeLine: 241, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!98, !64, !94, !165, !165}
!2345 = !DILocalVariable(name: "parent", arg: 1, scope: !2342, file: !3, line: 239, type: !64)
!2346 = !DILocation(line: 239, column: 40, scope: !2342)
!2347 = !DILocalVariable(name: "name", arg: 2, scope: !2342, file: !3, line: 239, type: !94)
!2348 = !DILocation(line: 239, column: 60, scope: !2342)
!2349 = !DILocalVariable(name: "offset", arg: 3, scope: !2342, file: !3, line: 240, type: !165)
!2350 = !DILocation(line: 240, column: 19, scope: !2342)
!2351 = !DILocalVariable(name: "length", arg: 4, scope: !2342, file: !3, line: 240, type: !165)
!2352 = !DILocation(line: 240, column: 37, scope: !2342)
!2353 = !DILocalVariable(name: "master", scope: !2342, file: !3, line: 242, type: !64)
!2354 = !DILocation(line: 242, column: 19, scope: !2342)
!2355 = !DILocation(line: 242, column: 43, scope: !2342)
!2356 = !DILocation(line: 242, column: 28, scope: !2342)
!2357 = !DILocalVariable(name: "parent_size", scope: !2342, file: !3, line: 243, type: !80)
!2358 = !DILocation(line: 243, column: 6, scope: !2342)
!2359 = !DILocation(line: 243, column: 37, scope: !2342)
!2360 = !DILocation(line: 243, column: 20, scope: !2342)
!2361 = !DILocation(line: 244, column: 6, scope: !2342)
!2362 = !DILocation(line: 244, column: 14, scope: !2342)
!2363 = !DILocation(line: 244, column: 19, scope: !2342)
!2364 = !DILocation(line: 244, column: 26, scope: !2342)
!2365 = !DILocation(line: 244, column: 34, scope: !2342)
!2366 = !DILocalVariable(name: "part", scope: !2342, file: !3, line: 245, type: !2290)
!2367 = !DILocation(line: 245, column: 23, scope: !2342)
!2368 = !DILocalVariable(name: "child", scope: !2342, file: !3, line: 246, type: !64)
!2369 = !DILocation(line: 246, column: 19, scope: !2342)
!2370 = !DILocalVariable(name: "ret", scope: !2342, file: !3, line: 247, type: !98)
!2371 = !DILocation(line: 247, column: 6, scope: !2342)
!2372 = !DILocation(line: 250, column: 6, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 250, column: 6)
!2374 = !DILocation(line: 250, column: 13, scope: !2373)
!2375 = !DILocation(line: 250, column: 35, scope: !2373)
!2376 = !DILocation(line: 251, column: 6, scope: !2373)
!2377 = !DILocation(line: 251, column: 13, scope: !2373)
!2378 = !DILocation(line: 250, column: 6, scope: !2342)
!2379 = !DILocation(line: 252, column: 3, scope: !2373)
!2380 = !DILocation(line: 254, column: 6, scope: !2381)
!2381 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 254, column: 6)
!2382 = !DILocation(line: 254, column: 13, scope: !2381)
!2383 = !DILocation(line: 254, column: 6, scope: !2342)
!2384 = !DILocation(line: 255, column: 12, scope: !2381)
!2385 = !DILocation(line: 255, column: 26, scope: !2381)
!2386 = !DILocation(line: 255, column: 24, scope: !2381)
!2387 = !DILocation(line: 255, column: 10, scope: !2381)
!2388 = !DILocation(line: 255, column: 3, scope: !2381)
!2389 = !DILocation(line: 257, column: 6, scope: !2390)
!2390 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 257, column: 6)
!2391 = !DILocation(line: 257, column: 13, scope: !2390)
!2392 = !DILocation(line: 257, column: 6, scope: !2342)
!2393 = !DILocation(line: 258, column: 3, scope: !2390)
!2394 = !DILocation(line: 260, column: 2, scope: !2342)
!2395 = !DILocation(line: 261, column: 14, scope: !2342)
!2396 = !DILocation(line: 261, column: 7, scope: !2342)
!2397 = !DILocation(line: 261, column: 12, scope: !2342)
!2398 = !DILocation(line: 262, column: 14, scope: !2342)
!2399 = !DILocation(line: 262, column: 7, scope: !2342)
!2400 = !DILocation(line: 262, column: 12, scope: !2342)
!2401 = !DILocation(line: 263, column: 16, scope: !2342)
!2402 = !DILocation(line: 263, column: 7, scope: !2342)
!2403 = !DILocation(line: 263, column: 14, scope: !2342)
!2404 = !DILocation(line: 265, column: 29, scope: !2342)
!2405 = !DILocation(line: 265, column: 48, scope: !2342)
!2406 = !DILocation(line: 265, column: 10, scope: !2342)
!2407 = !DILocation(line: 265, column: 8, scope: !2342)
!2408 = !DILocation(line: 266, column: 13, scope: !2409)
!2409 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 266, column: 6)
!2410 = !DILocation(line: 266, column: 6, scope: !2409)
!2411 = !DILocation(line: 266, column: 6, scope: !2342)
!2412 = !DILocation(line: 267, column: 18, scope: !2409)
!2413 = !DILocation(line: 267, column: 10, scope: !2409)
!2414 = !DILocation(line: 267, column: 3, scope: !2409)
!2415 = !DILocation(line: 269, column: 14, scope: !2342)
!2416 = !DILocation(line: 269, column: 22, scope: !2342)
!2417 = !DILocation(line: 269, column: 29, scope: !2342)
!2418 = !DILocation(line: 269, column: 2, scope: !2342)
!2419 = !DILocation(line: 270, column: 17, scope: !2342)
!2420 = !DILocation(line: 270, column: 24, scope: !2342)
!2421 = !DILocation(line: 270, column: 29, scope: !2342)
!2422 = !DILocation(line: 270, column: 36, scope: !2342)
!2423 = !DILocation(line: 270, column: 44, scope: !2342)
!2424 = !DILocation(line: 270, column: 2, scope: !2342)
!2425 = !DILocation(line: 271, column: 16, scope: !2342)
!2426 = !DILocation(line: 271, column: 24, scope: !2342)
!2427 = !DILocation(line: 271, column: 31, scope: !2342)
!2428 = !DILocation(line: 271, column: 2, scope: !2342)
!2429 = !DILocation(line: 273, column: 23, scope: !2342)
!2430 = !DILocation(line: 273, column: 8, scope: !2342)
!2431 = !DILocation(line: 273, column: 6, scope: !2342)
!2432 = !DILocation(line: 274, column: 6, scope: !2433)
!2433 = distinct !DILexicalBlock(scope: !2342, file: !3, line: 274, column: 6)
!2434 = !DILocation(line: 274, column: 6, scope: !2342)
!2435 = !DILocation(line: 275, column: 3, scope: !2433)
!2436 = !DILocation(line: 277, column: 26, scope: !2342)
!2437 = !DILocation(line: 277, column: 2, scope: !2342)
!2438 = !DILocation(line: 279, column: 2, scope: !2342)
!2439 = !DILabel(scope: !2342, name: "err_remove_part", file: !3, line: 281)
!2440 = !DILocation(line: 281, column: 1, scope: !2342)
!2441 = !DILocation(line: 282, column: 14, scope: !2342)
!2442 = !DILocation(line: 282, column: 22, scope: !2342)
!2443 = !DILocation(line: 282, column: 29, scope: !2342)
!2444 = !DILocation(line: 282, column: 2, scope: !2342)
!2445 = !DILocation(line: 283, column: 12, scope: !2342)
!2446 = !DILocation(line: 283, column: 19, scope: !2342)
!2447 = !DILocation(line: 283, column: 24, scope: !2342)
!2448 = !DILocation(line: 283, column: 2, scope: !2342)
!2449 = !DILocation(line: 284, column: 16, scope: !2342)
!2450 = !DILocation(line: 284, column: 24, scope: !2342)
!2451 = !DILocation(line: 284, column: 31, scope: !2342)
!2452 = !DILocation(line: 284, column: 2, scope: !2342)
!2453 = !DILocation(line: 286, column: 17, scope: !2342)
!2454 = !DILocation(line: 286, column: 2, scope: !2342)
!2455 = !DILocation(line: 288, column: 9, scope: !2342)
!2456 = !DILocation(line: 288, column: 2, scope: !2342)
!2457 = !DILocation(line: 289, column: 1, scope: !2342)
!2458 = distinct !DISubprogram(name: "mtd_get_master", scope: !66, file: !66, line: 397, type: !2459, scopeLine: 398, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!2459 = !DISubroutineType(types: !2460)
!2460 = !{!64, !64}
!2461 = !DILocalVariable(name: "mtd", arg: 1, scope: !2458, file: !66, line: 397, type: !64)
!2462 = !DILocation(line: 397, column: 64, scope: !2458)
!2463 = !DILocation(line: 399, column: 2, scope: !2458)
!2464 = !DILocation(line: 399, column: 9, scope: !2458)
!2465 = !DILocation(line: 399, column: 14, scope: !2458)
!2466 = !DILocation(line: 400, column: 9, scope: !2458)
!2467 = !DILocation(line: 400, column: 14, scope: !2458)
!2468 = !DILocation(line: 400, column: 7, scope: !2458)
!2469 = distinct !{!2469, !2463, !2467}
!2470 = !DILocation(line: 402, column: 9, scope: !2458)
!2471 = !DILocation(line: 402, column: 2, scope: !2458)
!2472 = distinct !DISubprogram(name: "mtd_is_partition", scope: !66, file: !66, line: 415, type: !2473, scopeLine: 416, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!2473 = !DISubroutineType(types: !2474)
!2474 = !{!263, !2475}
!2475 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2476, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !65)
!2477 = !DILocalVariable(name: "mtd", arg: 1, scope: !2472, file: !66, line: 415, type: !2475)
!2478 = !DILocation(line: 415, column: 60, scope: !2472)
!2479 = !DILocation(line: 417, column: 9, scope: !2472)
!2480 = !DILocation(line: 417, column: 14, scope: !2472)
!2481 = !DILocation(line: 417, column: 2, scope: !2472)
!2482 = distinct !DISubprogram(name: "allocate_partition", scope: !3, file: !3, line: 34, type: !2483, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!2483 = !DISubroutineType(types: !2484)
!2484 = !{!64, !64, !2288, !98, !79}
!2485 = !DILocalVariable(name: "parent", arg: 1, scope: !2482, file: !3, line: 34, type: !64)
!2486 = !DILocation(line: 34, column: 61, scope: !2482)
!2487 = !DILocalVariable(name: "part", arg: 2, scope: !2482, file: !3, line: 35, type: !2288)
!2488 = !DILocation(line: 35, column: 37, scope: !2482)
!2489 = !DILocalVariable(name: "partno", arg: 3, scope: !2482, file: !3, line: 36, type: !98)
!2490 = !DILocation(line: 36, column: 13, scope: !2482)
!2491 = !DILocalVariable(name: "cur_offset", arg: 4, scope: !2482, file: !3, line: 36, type: !79)
!2492 = !DILocation(line: 36, column: 30, scope: !2482)
!2493 = !DILocalVariable(name: "master", scope: !2482, file: !3, line: 38, type: !64)
!2494 = !DILocation(line: 38, column: 19, scope: !2482)
!2495 = !DILocation(line: 38, column: 43, scope: !2482)
!2496 = !DILocation(line: 38, column: 28, scope: !2482)
!2497 = !DILocalVariable(name: "wr_alignment", scope: !2482, file: !3, line: 39, type: !98)
!2498 = !DILocation(line: 39, column: 6, scope: !2482)
!2499 = !DILocation(line: 39, column: 22, scope: !2482)
!2500 = !DILocation(line: 39, column: 30, scope: !2482)
!2501 = !DILocation(line: 39, column: 36, scope: !2482)
!2502 = !DILocation(line: 39, column: 21, scope: !2482)
!2503 = !DILocation(line: 40, column: 7, scope: !2482)
!2504 = !DILocation(line: 40, column: 15, scope: !2482)
!2505 = !DILocation(line: 40, column: 27, scope: !2482)
!2506 = !DILocation(line: 40, column: 35, scope: !2482)
!2507 = !DILocalVariable(name: "parent_size", scope: !2482, file: !3, line: 41, type: !80)
!2508 = !DILocation(line: 41, column: 6, scope: !2482)
!2509 = !DILocation(line: 41, column: 37, scope: !2482)
!2510 = !DILocation(line: 41, column: 20, scope: !2482)
!2511 = !DILocation(line: 42, column: 6, scope: !2482)
!2512 = !DILocation(line: 42, column: 14, scope: !2482)
!2513 = !DILocation(line: 42, column: 19, scope: !2482)
!2514 = !DILocation(line: 42, column: 26, scope: !2482)
!2515 = !DILocation(line: 42, column: 34, scope: !2482)
!2516 = !DILocalVariable(name: "child", scope: !2482, file: !3, line: 43, type: !64)
!2517 = !DILocation(line: 43, column: 19, scope: !2482)
!2518 = !DILocalVariable(name: "remainder", scope: !2482, file: !3, line: 44, type: !74)
!2519 = !DILocation(line: 44, column: 6, scope: !2482)
!2520 = !DILocalVariable(name: "name", scope: !2482, file: !3, line: 45, type: !353)
!2521 = !DILocation(line: 45, column: 8, scope: !2482)
!2522 = !DILocalVariable(name: "tmp", scope: !2482, file: !3, line: 46, type: !80)
!2523 = !DILocation(line: 46, column: 6, scope: !2482)
!2524 = !DILocation(line: 49, column: 10, scope: !2482)
!2525 = !DILocation(line: 49, column: 8, scope: !2482)
!2526 = !DILocation(line: 50, column: 17, scope: !2482)
!2527 = !DILocation(line: 50, column: 23, scope: !2482)
!2528 = !DILocation(line: 50, column: 9, scope: !2482)
!2529 = !DILocation(line: 50, column: 7, scope: !2482)
!2530 = !DILocation(line: 51, column: 7, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 51, column: 6)
!2532 = !DILocation(line: 51, column: 12, scope: !2531)
!2533 = !DILocation(line: 51, column: 16, scope: !2531)
!2534 = !DILocation(line: 51, column: 6, scope: !2482)
!2535 = !DILocation(line: 53, column: 10, scope: !2536)
!2536 = distinct !DILexicalBlock(scope: !2531, file: !3, line: 51, column: 23)
!2537 = !DILocation(line: 53, column: 18, scope: !2536)
!2538 = !DILocation(line: 52, column: 3, scope: !2536)
!2539 = !DILocation(line: 54, column: 9, scope: !2536)
!2540 = !DILocation(line: 54, column: 3, scope: !2536)
!2541 = !DILocation(line: 55, column: 9, scope: !2536)
!2542 = !DILocation(line: 55, column: 3, scope: !2536)
!2543 = !DILocation(line: 56, column: 10, scope: !2536)
!2544 = !DILocation(line: 56, column: 3, scope: !2536)
!2545 = !DILocation(line: 60, column: 16, scope: !2482)
!2546 = !DILocation(line: 60, column: 24, scope: !2482)
!2547 = !DILocation(line: 60, column: 2, scope: !2482)
!2548 = !DILocation(line: 60, column: 9, scope: !2482)
!2549 = !DILocation(line: 60, column: 14, scope: !2482)
!2550 = !DILocation(line: 61, column: 22, scope: !2482)
!2551 = !DILocation(line: 61, column: 30, scope: !2482)
!2552 = !DILocation(line: 61, column: 39, scope: !2482)
!2553 = !DILocation(line: 61, column: 45, scope: !2482)
!2554 = !DILocation(line: 61, column: 38, scope: !2482)
!2555 = !DILocation(line: 61, column: 36, scope: !2482)
!2556 = !DILocation(line: 61, column: 2, scope: !2482)
!2557 = !DILocation(line: 61, column: 9, scope: !2482)
!2558 = !DILocation(line: 61, column: 14, scope: !2482)
!2559 = !DILocation(line: 61, column: 20, scope: !2482)
!2560 = !DILocation(line: 62, column: 23, scope: !2482)
!2561 = !DILocation(line: 62, column: 29, scope: !2482)
!2562 = !DILocation(line: 62, column: 2, scope: !2482)
!2563 = !DILocation(line: 62, column: 9, scope: !2482)
!2564 = !DILocation(line: 62, column: 14, scope: !2482)
!2565 = !DILocation(line: 62, column: 20, scope: !2482)
!2566 = !DILocation(line: 63, column: 17, scope: !2482)
!2567 = !DILocation(line: 63, column: 24, scope: !2482)
!2568 = !DILocation(line: 63, column: 29, scope: !2482)
!2569 = !DILocation(line: 63, column: 2, scope: !2482)
!2570 = !DILocation(line: 63, column: 9, scope: !2482)
!2571 = !DILocation(line: 63, column: 15, scope: !2482)
!2572 = !DILocation(line: 64, column: 21, scope: !2482)
!2573 = !DILocation(line: 64, column: 27, scope: !2482)
!2574 = !DILocation(line: 64, column: 2, scope: !2482)
!2575 = !DILocation(line: 64, column: 9, scope: !2482)
!2576 = !DILocation(line: 64, column: 14, scope: !2482)
!2577 = !DILocation(line: 64, column: 19, scope: !2482)
!2578 = !DILocation(line: 65, column: 21, scope: !2482)
!2579 = !DILocation(line: 65, column: 29, scope: !2482)
!2580 = !DILocation(line: 65, column: 2, scope: !2482)
!2581 = !DILocation(line: 65, column: 9, scope: !2482)
!2582 = !DILocation(line: 65, column: 19, scope: !2482)
!2583 = !DILocation(line: 66, column: 24, scope: !2482)
!2584 = !DILocation(line: 66, column: 32, scope: !2482)
!2585 = !DILocation(line: 66, column: 2, scope: !2482)
!2586 = !DILocation(line: 66, column: 9, scope: !2482)
!2587 = !DILocation(line: 66, column: 22, scope: !2482)
!2588 = !DILocation(line: 67, column: 19, scope: !2482)
!2589 = !DILocation(line: 67, column: 27, scope: !2482)
!2590 = !DILocation(line: 67, column: 2, scope: !2482)
!2591 = !DILocation(line: 67, column: 9, scope: !2482)
!2592 = !DILocation(line: 67, column: 17, scope: !2482)
!2593 = !DILocation(line: 68, column: 20, scope: !2482)
!2594 = !DILocation(line: 68, column: 28, scope: !2482)
!2595 = !DILocation(line: 68, column: 2, scope: !2482)
!2596 = !DILocation(line: 68, column: 9, scope: !2482)
!2597 = !DILocation(line: 68, column: 18, scope: !2482)
!2598 = !DILocation(line: 69, column: 23, scope: !2482)
!2599 = !DILocation(line: 69, column: 31, scope: !2482)
!2600 = !DILocation(line: 69, column: 2, scope: !2482)
!2601 = !DILocation(line: 69, column: 9, scope: !2482)
!2602 = !DILocation(line: 69, column: 21, scope: !2482)
!2603 = !DILocation(line: 71, column: 16, scope: !2482)
!2604 = !DILocation(line: 71, column: 2, scope: !2482)
!2605 = !DILocation(line: 71, column: 9, scope: !2482)
!2606 = !DILocation(line: 71, column: 14, scope: !2482)
!2607 = !DILocation(line: 72, column: 17, scope: !2482)
!2608 = !DILocation(line: 72, column: 25, scope: !2482)
!2609 = !DILocation(line: 72, column: 2, scope: !2482)
!2610 = !DILocation(line: 72, column: 9, scope: !2482)
!2611 = !DILocation(line: 72, column: 15, scope: !2482)
!2612 = !DILocation(line: 82, column: 84, scope: !2482)
!2613 = !DILocation(line: 82, column: 67, scope: !2482)
!2614 = !DILocation(line: 82, column: 22, scope: !2482)
!2615 = !DILocation(line: 83, column: 9, scope: !2482)
!2616 = !DILocation(line: 83, column: 17, scope: !2482)
!2617 = !DILocation(line: 83, column: 23, scope: !2482)
!2618 = !DILocation(line: 83, column: 31, scope: !2482)
!2619 = !DILocation(line: 83, column: 35, scope: !2482)
!2620 = !DILocation(line: 82, column: 2, scope: !2482)
!2621 = !DILocation(line: 82, column: 9, scope: !2482)
!2622 = !DILocation(line: 82, column: 13, scope: !2482)
!2623 = !DILocation(line: 82, column: 20, scope: !2482)
!2624 = !DILocation(line: 84, column: 23, scope: !2482)
!2625 = !DILocation(line: 84, column: 29, scope: !2482)
!2626 = !DILocation(line: 84, column: 2, scope: !2482)
!2627 = !DILocation(line: 84, column: 9, scope: !2482)
!2628 = !DILocation(line: 84, column: 13, scope: !2482)
!2629 = !DILocation(line: 84, column: 21, scope: !2482)
!2630 = !DILocation(line: 85, column: 18, scope: !2482)
!2631 = !DILocation(line: 85, column: 2, scope: !2482)
!2632 = !DILocation(line: 85, column: 9, scope: !2482)
!2633 = !DILocation(line: 85, column: 16, scope: !2482)
!2634 = !DILocation(line: 86, column: 23, scope: !2482)
!2635 = !DILocation(line: 86, column: 29, scope: !2482)
!2636 = !DILocation(line: 86, column: 2, scope: !2482)
!2637 = !DILocation(line: 86, column: 9, scope: !2482)
!2638 = !DILocation(line: 86, column: 14, scope: !2482)
!2639 = !DILocation(line: 86, column: 21, scope: !2482)
!2640 = !DILocation(line: 87, column: 18, scope: !2482)
!2641 = !DILocation(line: 87, column: 25, scope: !2482)
!2642 = !DILocation(line: 87, column: 2, scope: !2482)
!2643 = !DILocation(line: 89, column: 6, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 89, column: 6)
!2645 = !DILocation(line: 89, column: 13, scope: !2644)
!2646 = !DILocation(line: 89, column: 18, scope: !2644)
!2647 = !DILocation(line: 89, column: 25, scope: !2644)
!2648 = !DILocation(line: 89, column: 6, scope: !2482)
!2649 = !DILocation(line: 90, column: 24, scope: !2644)
!2650 = !DILocation(line: 90, column: 3, scope: !2644)
!2651 = !DILocation(line: 90, column: 10, scope: !2644)
!2652 = !DILocation(line: 90, column: 15, scope: !2644)
!2653 = !DILocation(line: 90, column: 22, scope: !2644)
!2654 = !DILocation(line: 91, column: 6, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 91, column: 6)
!2656 = !DILocation(line: 91, column: 13, scope: !2655)
!2657 = !DILocation(line: 91, column: 18, scope: !2655)
!2658 = !DILocation(line: 91, column: 25, scope: !2655)
!2659 = !DILocation(line: 91, column: 6, scope: !2482)
!2660 = !DILocation(line: 92, column: 9, scope: !2661)
!2661 = distinct !DILexicalBlock(scope: !2655, file: !3, line: 91, column: 48)
!2662 = !DILocation(line: 92, column: 7, scope: !2661)
!2663 = !DILocation(line: 93, column: 24, scope: !2661)
!2664 = !DILocation(line: 93, column: 3, scope: !2661)
!2665 = !DILocation(line: 93, column: 10, scope: !2661)
!2666 = !DILocation(line: 93, column: 15, scope: !2661)
!2667 = !DILocation(line: 93, column: 22, scope: !2661)
!2668 = !DILocalVariable(name: "__base", scope: !2669, file: !3, line: 94, type: !73)
!2669 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 94, column: 15)
!2670 = !DILocation(line: 94, column: 15, scope: !2669)
!2671 = !DILocalVariable(name: "__rem", scope: !2669, file: !3, line: 94, type: !73)
!2672 = !DILocation(line: 94, column: 13, scope: !2661)
!2673 = !DILocation(line: 95, column: 7, scope: !2674)
!2674 = distinct !DILexicalBlock(scope: !2661, file: !3, line: 95, column: 7)
!2675 = !DILocation(line: 95, column: 7, scope: !2661)
!2676 = !DILocation(line: 96, column: 26, scope: !2677)
!2677 = distinct !DILexicalBlock(scope: !2674, file: !3, line: 95, column: 18)
!2678 = !DILocation(line: 96, column: 41, scope: !2677)
!2679 = !DILocation(line: 96, column: 39, scope: !2677)
!2680 = !DILocation(line: 96, column: 4, scope: !2677)
!2681 = !DILocation(line: 96, column: 11, scope: !2677)
!2682 = !DILocation(line: 96, column: 16, scope: !2677)
!2683 = !DILocation(line: 96, column: 23, scope: !2677)
!2684 = !DILocation(line: 98, column: 39, scope: !2677)
!2685 = !DILocation(line: 99, column: 31, scope: !2677)
!2686 = !DILocation(line: 100, column: 11, scope: !2677)
!2687 = !DILocation(line: 100, column: 18, scope: !2677)
!2688 = !DILocation(line: 100, column: 23, scope: !2677)
!2689 = !DILocation(line: 97, column: 4, scope: !2677)
!2690 = !DILocation(line: 101, column: 3, scope: !2677)
!2691 = !DILocation(line: 102, column: 2, scope: !2661)
!2692 = !DILocation(line: 103, column: 6, scope: !2693)
!2693 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 103, column: 6)
!2694 = !DILocation(line: 103, column: 13, scope: !2693)
!2695 = !DILocation(line: 103, column: 18, scope: !2693)
!2696 = !DILocation(line: 103, column: 25, scope: !2693)
!2697 = !DILocation(line: 103, column: 6, scope: !2482)
!2698 = !DILocation(line: 104, column: 24, scope: !2699)
!2699 = distinct !DILexicalBlock(scope: !2693, file: !3, line: 103, column: 48)
!2700 = !DILocation(line: 104, column: 3, scope: !2699)
!2701 = !DILocation(line: 104, column: 10, scope: !2699)
!2702 = !DILocation(line: 104, column: 15, scope: !2699)
!2703 = !DILocation(line: 104, column: 22, scope: !2699)
!2704 = !DILocation(line: 105, column: 7, scope: !2705)
!2705 = distinct !DILexicalBlock(scope: !2699, file: !3, line: 105, column: 7)
!2706 = !DILocation(line: 105, column: 21, scope: !2705)
!2707 = !DILocation(line: 105, column: 28, scope: !2705)
!2708 = !DILocation(line: 105, column: 33, scope: !2705)
!2709 = !DILocation(line: 105, column: 19, scope: !2705)
!2710 = !DILocation(line: 105, column: 43, scope: !2705)
!2711 = !DILocation(line: 105, column: 50, scope: !2705)
!2712 = !DILocation(line: 105, column: 55, scope: !2705)
!2713 = !DILocation(line: 105, column: 40, scope: !2705)
!2714 = !DILocation(line: 105, column: 7, scope: !2699)
!2715 = !DILocation(line: 106, column: 23, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 105, column: 61)
!2717 = !DILocation(line: 106, column: 37, scope: !2716)
!2718 = !DILocation(line: 106, column: 44, scope: !2716)
!2719 = !DILocation(line: 106, column: 49, scope: !2716)
!2720 = !DILocation(line: 106, column: 35, scope: !2716)
!2721 = !DILocation(line: 107, column: 9, scope: !2716)
!2722 = !DILocation(line: 107, column: 16, scope: !2716)
!2723 = !DILocation(line: 107, column: 21, scope: !2716)
!2724 = !DILocation(line: 106, column: 56, scope: !2716)
!2725 = !DILocation(line: 106, column: 4, scope: !2716)
!2726 = !DILocation(line: 106, column: 11, scope: !2716)
!2727 = !DILocation(line: 106, column: 16, scope: !2716)
!2728 = !DILocation(line: 106, column: 21, scope: !2716)
!2729 = !DILocation(line: 108, column: 3, scope: !2716)
!2730 = !DILocation(line: 110, column: 5, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2705, file: !3, line: 108, column: 10)
!2732 = !DILocation(line: 110, column: 11, scope: !2731)
!2733 = !DILocation(line: 110, column: 17, scope: !2731)
!2734 = !DILocation(line: 110, column: 31, scope: !2731)
!2735 = !DILocation(line: 110, column: 38, scope: !2731)
!2736 = !DILocation(line: 110, column: 43, scope: !2731)
!2737 = !DILocation(line: 110, column: 29, scope: !2731)
!2738 = !DILocation(line: 111, column: 5, scope: !2731)
!2739 = !DILocation(line: 111, column: 12, scope: !2731)
!2740 = !DILocation(line: 111, column: 17, scope: !2731)
!2741 = !DILocation(line: 109, column: 4, scope: !2731)
!2742 = !DILocation(line: 113, column: 4, scope: !2731)
!2743 = !DILocation(line: 115, column: 2, scope: !2699)
!2744 = !DILocation(line: 116, column: 6, scope: !2745)
!2745 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 116, column: 6)
!2746 = !DILocation(line: 116, column: 13, scope: !2745)
!2747 = !DILocation(line: 116, column: 18, scope: !2745)
!2748 = !DILocation(line: 116, column: 23, scope: !2745)
!2749 = !DILocation(line: 116, column: 6, scope: !2482)
!2750 = !DILocation(line: 117, column: 22, scope: !2745)
!2751 = !DILocation(line: 117, column: 36, scope: !2745)
!2752 = !DILocation(line: 117, column: 43, scope: !2745)
!2753 = !DILocation(line: 117, column: 48, scope: !2745)
!2754 = !DILocation(line: 117, column: 34, scope: !2745)
!2755 = !DILocation(line: 117, column: 3, scope: !2745)
!2756 = !DILocation(line: 117, column: 10, scope: !2745)
!2757 = !DILocation(line: 117, column: 15, scope: !2745)
!2758 = !DILocation(line: 117, column: 20, scope: !2745)
!2759 = !DILocation(line: 120, column: 9, scope: !2482)
!2760 = !DILocation(line: 120, column: 16, scope: !2482)
!2761 = !DILocation(line: 120, column: 21, scope: !2482)
!2762 = !DILocation(line: 120, column: 29, scope: !2482)
!2763 = !DILocation(line: 120, column: 36, scope: !2482)
!2764 = !DILocation(line: 120, column: 41, scope: !2482)
!2765 = !DILocation(line: 120, column: 50, scope: !2482)
!2766 = !DILocation(line: 120, column: 57, scope: !2482)
!2767 = !DILocation(line: 120, column: 62, scope: !2482)
!2768 = !DILocation(line: 120, column: 48, scope: !2482)
!2769 = !DILocation(line: 121, column: 9, scope: !2482)
!2770 = !DILocation(line: 121, column: 16, scope: !2482)
!2771 = !DILocation(line: 119, column: 2, scope: !2482)
!2772 = !DILocation(line: 124, column: 6, scope: !2773)
!2773 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 124, column: 6)
!2774 = !DILocation(line: 124, column: 13, scope: !2773)
!2775 = !DILocation(line: 124, column: 18, scope: !2773)
!2776 = !DILocation(line: 124, column: 28, scope: !2773)
!2777 = !DILocation(line: 124, column: 25, scope: !2773)
!2778 = !DILocation(line: 124, column: 6, scope: !2482)
!2779 = !DILocation(line: 126, column: 3, scope: !2780)
!2780 = distinct !DILexicalBlock(scope: !2773, file: !3, line: 124, column: 41)
!2781 = !DILocation(line: 126, column: 10, scope: !2780)
!2782 = !DILocation(line: 126, column: 15, scope: !2780)
!2783 = !DILocation(line: 126, column: 22, scope: !2780)
!2784 = !DILocation(line: 127, column: 3, scope: !2780)
!2785 = !DILocation(line: 127, column: 10, scope: !2780)
!2786 = !DILocation(line: 127, column: 15, scope: !2780)
!2787 = !DILocation(line: 127, column: 20, scope: !2780)
!2788 = !DILocation(line: 130, column: 22, scope: !2780)
!2789 = !DILocation(line: 130, column: 30, scope: !2780)
!2790 = !DILocation(line: 130, column: 3, scope: !2780)
!2791 = !DILocation(line: 130, column: 10, scope: !2780)
!2792 = !DILocation(line: 130, column: 20, scope: !2780)
!2793 = !DILocation(line: 132, column: 4, scope: !2780)
!2794 = !DILocation(line: 132, column: 10, scope: !2780)
!2795 = !DILocation(line: 131, column: 3, scope: !2780)
!2796 = !DILocation(line: 133, column: 3, scope: !2780)
!2797 = !DILocation(line: 135, column: 6, scope: !2798)
!2798 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 135, column: 6)
!2799 = !DILocation(line: 135, column: 13, scope: !2798)
!2800 = !DILocation(line: 135, column: 18, scope: !2798)
!2801 = !DILocation(line: 135, column: 27, scope: !2798)
!2802 = !DILocation(line: 135, column: 34, scope: !2798)
!2803 = !DILocation(line: 135, column: 39, scope: !2798)
!2804 = !DILocation(line: 135, column: 25, scope: !2798)
!2805 = !DILocation(line: 135, column: 46, scope: !2798)
!2806 = !DILocation(line: 135, column: 54, scope: !2798)
!2807 = !DILocation(line: 135, column: 44, scope: !2798)
!2808 = !DILocation(line: 135, column: 6, scope: !2482)
!2809 = !DILocation(line: 136, column: 22, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2798, file: !3, line: 135, column: 60)
!2811 = !DILocation(line: 136, column: 36, scope: !2810)
!2812 = !DILocation(line: 136, column: 43, scope: !2810)
!2813 = !DILocation(line: 136, column: 48, scope: !2810)
!2814 = !DILocation(line: 136, column: 34, scope: !2810)
!2815 = !DILocation(line: 136, column: 3, scope: !2810)
!2816 = !DILocation(line: 136, column: 10, scope: !2810)
!2817 = !DILocation(line: 136, column: 15, scope: !2810)
!2818 = !DILocation(line: 136, column: 20, scope: !2810)
!2819 = !DILocation(line: 138, column: 4, scope: !2810)
!2820 = !DILocation(line: 138, column: 10, scope: !2810)
!2821 = !DILocation(line: 138, column: 16, scope: !2810)
!2822 = !DILocation(line: 138, column: 24, scope: !2810)
!2823 = !DILocation(line: 138, column: 30, scope: !2810)
!2824 = !DILocation(line: 138, column: 37, scope: !2810)
!2825 = !DILocation(line: 138, column: 42, scope: !2810)
!2826 = !DILocation(line: 137, column: 3, scope: !2810)
!2827 = !DILocation(line: 139, column: 2, scope: !2810)
!2828 = !DILocation(line: 141, column: 6, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 141, column: 6)
!2830 = !DILocation(line: 141, column: 14, scope: !2829)
!2831 = !DILocation(line: 141, column: 30, scope: !2829)
!2832 = !DILocation(line: 141, column: 6, scope: !2482)
!2833 = !DILocalVariable(name: "i", scope: !2834, file: !3, line: 143, type: !98)
!2834 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 141, column: 35)
!2835 = !DILocation(line: 143, column: 7, scope: !2834)
!2836 = !DILocalVariable(name: "max", scope: !2834, file: !3, line: 143, type: !98)
!2837 = !DILocation(line: 143, column: 10, scope: !2834)
!2838 = !DILocation(line: 143, column: 16, scope: !2834)
!2839 = !DILocation(line: 143, column: 24, scope: !2834)
!2840 = !DILocalVariable(name: "end", scope: !2834, file: !3, line: 144, type: !80)
!2841 = !DILocation(line: 144, column: 7, scope: !2834)
!2842 = !DILocation(line: 144, column: 13, scope: !2834)
!2843 = !DILocation(line: 144, column: 20, scope: !2834)
!2844 = !DILocation(line: 144, column: 25, scope: !2834)
!2845 = !DILocation(line: 144, column: 34, scope: !2834)
!2846 = !DILocation(line: 144, column: 41, scope: !2834)
!2847 = !DILocation(line: 144, column: 46, scope: !2834)
!2848 = !DILocation(line: 144, column: 32, scope: !2834)
!2849 = !DILocalVariable(name: "regions", scope: !2834, file: !3, line: 145, type: !139)
!2850 = !DILocation(line: 145, column: 33, scope: !2834)
!2851 = !DILocation(line: 145, column: 43, scope: !2834)
!2852 = !DILocation(line: 145, column: 51, scope: !2834)
!2853 = !DILocation(line: 149, column: 10, scope: !2854)
!2854 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 149, column: 3)
!2855 = !DILocation(line: 149, column: 8, scope: !2854)
!2856 = !DILocation(line: 149, column: 15, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2854, file: !3, line: 149, column: 3)
!2858 = !DILocation(line: 149, column: 19, scope: !2857)
!2859 = !DILocation(line: 149, column: 17, scope: !2857)
!2860 = !DILocation(line: 149, column: 23, scope: !2857)
!2861 = !DILocation(line: 149, column: 26, scope: !2857)
!2862 = !DILocation(line: 149, column: 34, scope: !2857)
!2863 = !DILocation(line: 149, column: 37, scope: !2857)
!2864 = !DILocation(line: 149, column: 47, scope: !2857)
!2865 = !DILocation(line: 149, column: 54, scope: !2857)
!2866 = !DILocation(line: 149, column: 59, scope: !2857)
!2867 = !DILocation(line: 149, column: 44, scope: !2857)
!2868 = !DILocation(line: 0, scope: !2857)
!2869 = !DILocation(line: 149, column: 3, scope: !2854)
!2870 = !DILocation(line: 150, column: 9, scope: !2857)
!2871 = !DILocation(line: 149, column: 3, scope: !2857)
!2872 = distinct !{!2872, !2869, !2873}
!2873 = !DILocation(line: 151, column: 4, scope: !2854)
!2874 = !DILocation(line: 153, column: 7, scope: !2875)
!2875 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 153, column: 7)
!2876 = !DILocation(line: 153, column: 9, scope: !2875)
!2877 = !DILocation(line: 153, column: 7, scope: !2834)
!2878 = !DILocation(line: 154, column: 5, scope: !2875)
!2879 = !DILocation(line: 154, column: 4, scope: !2875)
!2880 = !DILocation(line: 157, column: 3, scope: !2834)
!2881 = !DILocation(line: 157, column: 10, scope: !2882)
!2882 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 157, column: 3)
!2883 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 157, column: 3)
!2884 = !DILocation(line: 157, column: 14, scope: !2882)
!2885 = !DILocation(line: 157, column: 12, scope: !2882)
!2886 = !DILocation(line: 157, column: 18, scope: !2882)
!2887 = !DILocation(line: 157, column: 21, scope: !2882)
!2888 = !DILocation(line: 157, column: 29, scope: !2882)
!2889 = !DILocation(line: 157, column: 32, scope: !2882)
!2890 = !DILocation(line: 157, column: 41, scope: !2882)
!2891 = !DILocation(line: 157, column: 39, scope: !2882)
!2892 = !DILocation(line: 0, scope: !2882)
!2893 = !DILocation(line: 157, column: 3, scope: !2883)
!2894 = !DILocation(line: 158, column: 8, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2896, file: !3, line: 158, column: 8)
!2896 = distinct !DILexicalBlock(scope: !2882, file: !3, line: 157, column: 51)
!2897 = !DILocation(line: 158, column: 15, scope: !2895)
!2898 = !DILocation(line: 158, column: 27, scope: !2895)
!2899 = !DILocation(line: 158, column: 35, scope: !2895)
!2900 = !DILocation(line: 158, column: 38, scope: !2895)
!2901 = !DILocation(line: 158, column: 25, scope: !2895)
!2902 = !DILocation(line: 158, column: 8, scope: !2896)
!2903 = !DILocation(line: 159, column: 24, scope: !2895)
!2904 = !DILocation(line: 159, column: 32, scope: !2895)
!2905 = !DILocation(line: 159, column: 35, scope: !2895)
!2906 = !DILocation(line: 159, column: 5, scope: !2895)
!2907 = !DILocation(line: 159, column: 12, scope: !2895)
!2908 = !DILocation(line: 159, column: 22, scope: !2895)
!2909 = !DILocation(line: 160, column: 3, scope: !2896)
!2910 = !DILocation(line: 157, column: 47, scope: !2882)
!2911 = !DILocation(line: 157, column: 3, scope: !2882)
!2912 = distinct !{!2912, !2893, !2913}
!2913 = !DILocation(line: 160, column: 3, scope: !2883)
!2914 = !DILocation(line: 161, column: 3, scope: !2834)
!2915 = !DILocation(line: 161, column: 3, scope: !2916)
!2916 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 161, column: 3)
!2917 = distinct !DILexicalBlock(scope: !2834, file: !3, line: 161, column: 3)
!2918 = !DILocation(line: 161, column: 3, scope: !2917)
!2919 = !DILocation(line: 161, column: 3, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2916, file: !3, line: 161, column: 3)
!2921 = !DILocation(line: 161, column: 3, scope: !2922)
!2922 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 161, column: 3)
!2923 = !DILocation(line: 161, column: 3, scope: !2924)
!2924 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 161, column: 3)
!2925 = !{i32 -2143339515, i32 -2143339486, i32 -2143339440, i32 -2143339382, i32 -2143339328, i32 -2143339274, i32 -2143339219, i32 -2143339188}
!2926 = !DILocation(line: 161, column: 3, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 161, column: 3)
!2928 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 161, column: 3)
!2929 = !{i32 -2143338744, i32 -2143338737, i32 -2143338683, i32 -2143338652, i32 -2143338622}
!2930 = !DILocation(line: 161, column: 3, scope: !2928)
!2931 = !DILocation(line: 162, column: 2, scope: !2834)
!2932 = !DILocation(line: 164, column: 22, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2829, file: !3, line: 162, column: 9)
!2934 = !DILocation(line: 164, column: 30, scope: !2933)
!2935 = !DILocation(line: 164, column: 3, scope: !2933)
!2936 = !DILocation(line: 164, column: 10, scope: !2933)
!2937 = !DILocation(line: 164, column: 20, scope: !2933)
!2938 = !DILocation(line: 172, column: 8, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 172, column: 6)
!2940 = !DILocation(line: 172, column: 15, scope: !2939)
!2941 = !DILocation(line: 172, column: 21, scope: !2939)
!2942 = !DILocation(line: 172, column: 6, scope: !2482)
!2943 = !DILocation(line: 173, column: 18, scope: !2939)
!2944 = !DILocation(line: 173, column: 25, scope: !2939)
!2945 = !DILocation(line: 173, column: 16, scope: !2939)
!2946 = !DILocation(line: 173, column: 3, scope: !2939)
!2947 = !DILocation(line: 175, column: 27, scope: !2482)
!2948 = !DILocation(line: 175, column: 8, scope: !2482)
!2949 = !DILocation(line: 175, column: 6, scope: !2482)
!2950 = !DILocalVariable(name: "__base", scope: !2951, file: !3, line: 176, type: !73)
!2951 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 176, column: 14)
!2952 = !DILocation(line: 176, column: 14, scope: !2951)
!2953 = !DILocalVariable(name: "__rem", scope: !2951, file: !3, line: 176, type: !73)
!2954 = !DILocation(line: 176, column: 12, scope: !2482)
!2955 = !DILocation(line: 177, column: 7, scope: !2956)
!2956 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 177, column: 6)
!2957 = !DILocation(line: 177, column: 14, scope: !2956)
!2958 = !DILocation(line: 177, column: 20, scope: !2956)
!2959 = !DILocation(line: 177, column: 37, scope: !2956)
!2960 = !DILocation(line: 177, column: 40, scope: !2956)
!2961 = !DILocation(line: 177, column: 6, scope: !2482)
!2962 = !DILocation(line: 181, column: 3, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2956, file: !3, line: 177, column: 51)
!2964 = !DILocation(line: 181, column: 10, scope: !2963)
!2965 = !DILocation(line: 181, column: 16, scope: !2963)
!2966 = !DILocation(line: 183, column: 4, scope: !2963)
!2967 = !DILocation(line: 183, column: 10, scope: !2963)
!2968 = !DILocation(line: 182, column: 3, scope: !2963)
!2969 = !DILocation(line: 184, column: 2, scope: !2963)
!2970 = !DILocation(line: 186, column: 27, scope: !2482)
!2971 = !DILocation(line: 186, column: 8, scope: !2482)
!2972 = !DILocation(line: 186, column: 39, scope: !2482)
!2973 = !DILocation(line: 186, column: 46, scope: !2482)
!2974 = !DILocation(line: 186, column: 51, scope: !2482)
!2975 = !DILocation(line: 186, column: 37, scope: !2482)
!2976 = !DILocation(line: 186, column: 6, scope: !2482)
!2977 = !DILocalVariable(name: "__base", scope: !2978, file: !3, line: 187, type: !73)
!2978 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 187, column: 14)
!2979 = !DILocation(line: 187, column: 14, scope: !2978)
!2980 = !DILocalVariable(name: "__rem", scope: !2978, file: !3, line: 187, type: !73)
!2981 = !DILocation(line: 187, column: 12, scope: !2482)
!2982 = !DILocation(line: 188, column: 7, scope: !2983)
!2983 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 188, column: 6)
!2984 = !DILocation(line: 188, column: 14, scope: !2983)
!2985 = !DILocation(line: 188, column: 20, scope: !2983)
!2986 = !DILocation(line: 188, column: 37, scope: !2983)
!2987 = !DILocation(line: 188, column: 40, scope: !2983)
!2988 = !DILocation(line: 188, column: 6, scope: !2482)
!2989 = !DILocation(line: 189, column: 3, scope: !2990)
!2990 = distinct !DILexicalBlock(scope: !2983, file: !3, line: 188, column: 51)
!2991 = !DILocation(line: 189, column: 10, scope: !2990)
!2992 = !DILocation(line: 189, column: 16, scope: !2990)
!2993 = !DILocation(line: 191, column: 4, scope: !2990)
!2994 = !DILocation(line: 191, column: 10, scope: !2990)
!2995 = !DILocation(line: 190, column: 3, scope: !2990)
!2996 = !DILocation(line: 192, column: 2, scope: !2990)
!2997 = !DILocation(line: 194, column: 16, scope: !2482)
!2998 = !DILocation(line: 194, column: 23, scope: !2482)
!2999 = !DILocation(line: 194, column: 28, scope: !2482)
!3000 = !DILocation(line: 194, column: 2, scope: !2482)
!3001 = !DILocation(line: 194, column: 9, scope: !2482)
!3002 = !DILocation(line: 194, column: 14, scope: !2482)
!3003 = !DILocation(line: 195, column: 25, scope: !2482)
!3004 = !DILocation(line: 195, column: 33, scope: !2482)
!3005 = !DILocation(line: 195, column: 2, scope: !2482)
!3006 = !DILocation(line: 195, column: 9, scope: !2482)
!3007 = !DILocation(line: 195, column: 23, scope: !2482)
!3008 = !DILocation(line: 196, column: 24, scope: !2482)
!3009 = !DILocation(line: 196, column: 32, scope: !2482)
!3010 = !DILocation(line: 196, column: 2, scope: !2482)
!3011 = !DILocation(line: 196, column: 9, scope: !2482)
!3012 = !DILocation(line: 196, column: 22, scope: !2482)
!3013 = !DILocation(line: 197, column: 29, scope: !2482)
!3014 = !DILocation(line: 197, column: 37, scope: !2482)
!3015 = !DILocation(line: 197, column: 2, scope: !2482)
!3016 = !DILocation(line: 197, column: 9, scope: !2482)
!3017 = !DILocation(line: 197, column: 27, scope: !2482)
!3018 = !DILocation(line: 199, column: 6, scope: !3019)
!3019 = distinct !DILexicalBlock(scope: !2482, file: !3, line: 199, column: 6)
!3020 = !DILocation(line: 199, column: 14, scope: !3019)
!3021 = !DILocation(line: 199, column: 6, scope: !2482)
!3022 = !DILocalVariable(name: "offs", scope: !3023, file: !3, line: 200, type: !79)
!3023 = distinct !DILexicalBlock(scope: !3019, file: !3, line: 199, column: 28)
!3024 = !DILocation(line: 200, column: 12, scope: !3023)
!3025 = !DILocation(line: 202, column: 3, scope: !3023)
!3026 = !DILocation(line: 202, column: 10, scope: !3023)
!3027 = !DILocation(line: 202, column: 17, scope: !3023)
!3028 = !DILocation(line: 202, column: 24, scope: !3023)
!3029 = !DILocation(line: 202, column: 29, scope: !3023)
!3030 = !DILocation(line: 202, column: 15, scope: !3023)
!3031 = !DILocation(line: 203, column: 29, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3033, file: !3, line: 203, column: 8)
!3033 = distinct !DILexicalBlock(scope: !3023, file: !3, line: 202, column: 35)
!3034 = !DILocation(line: 203, column: 36, scope: !3032)
!3035 = !DILocation(line: 203, column: 8, scope: !3032)
!3036 = !DILocation(line: 203, column: 8, scope: !3033)
!3037 = !DILocation(line: 204, column: 5, scope: !3032)
!3038 = !DILocation(line: 204, column: 12, scope: !3032)
!3039 = !DILocation(line: 204, column: 22, scope: !3032)
!3040 = !DILocation(line: 204, column: 31, scope: !3032)
!3041 = !DILocation(line: 205, column: 29, scope: !3042)
!3042 = distinct !DILexicalBlock(scope: !3032, file: !3, line: 205, column: 13)
!3043 = !DILocation(line: 205, column: 36, scope: !3042)
!3044 = !DILocation(line: 205, column: 13, scope: !3042)
!3045 = !DILocation(line: 205, column: 13, scope: !3032)
!3046 = !DILocation(line: 206, column: 5, scope: !3042)
!3047 = !DILocation(line: 206, column: 12, scope: !3042)
!3048 = !DILocation(line: 206, column: 22, scope: !3042)
!3049 = !DILocation(line: 206, column: 31, scope: !3042)
!3050 = !DILocation(line: 207, column: 12, scope: !3033)
!3051 = !DILocation(line: 207, column: 19, scope: !3033)
!3052 = !DILocation(line: 207, column: 9, scope: !3033)
!3053 = distinct !{!3053, !3025, !3054}
!3054 = !DILocation(line: 208, column: 3, scope: !3023)
!3055 = !DILocation(line: 209, column: 2, scope: !3023)
!3056 = !DILabel(scope: !2482, name: "out_register", file: !3, line: 211)
!3057 = !DILocation(line: 211, column: 1, scope: !2482)
!3058 = !DILocation(line: 212, column: 9, scope: !2482)
!3059 = !DILocation(line: 212, column: 2, scope: !2482)
!3060 = !DILocation(line: 213, column: 1, scope: !2482)
!3061 = distinct !DISubprogram(name: "IS_ERR", scope: !3062, file: !3062, line: 34, type: !3063, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3062 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!3063 = !DISubroutineType(types: !3064)
!3064 = !{!263, !1570}
!3065 = !DILocalVariable(name: "ptr", arg: 1, scope: !3061, file: !3062, line: 34, type: !1570)
!3066 = !DILocation(line: 34, column: 60, scope: !3061)
!3067 = !DILocation(line: 36, column: 9, scope: !3061)
!3068 = !DILocation(line: 36, column: 2, scope: !3061)
!3069 = distinct !DISubprogram(name: "PTR_ERR", scope: !3062, file: !3062, line: 29, type: !3070, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3070 = !DISubroutineType(types: !3071)
!3071 = !{!387, !1570}
!3072 = !DILocalVariable(name: "ptr", arg: 1, scope: !3069, file: !3062, line: 29, type: !1570)
!3073 = !DILocation(line: 29, column: 61, scope: !3069)
!3074 = !DILocation(line: 31, column: 16, scope: !3069)
!3075 = !DILocation(line: 31, column: 9, scope: !3069)
!3076 = !DILocation(line: 31, column: 2, scope: !3069)
!3077 = distinct !DISubprogram(name: "list_add_tail", scope: !3078, file: !3078, line: 98, type: !3079, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3078 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3079 = !DISubroutineType(types: !3080)
!3080 = !{null, !302, !302}
!3081 = !DILocalVariable(name: "new", arg: 1, scope: !3077, file: !3078, line: 98, type: !302)
!3082 = !DILocation(line: 98, column: 52, scope: !3077)
!3083 = !DILocalVariable(name: "head", arg: 2, scope: !3077, file: !3078, line: 98, type: !302)
!3084 = !DILocation(line: 98, column: 75, scope: !3077)
!3085 = !DILocation(line: 100, column: 13, scope: !3077)
!3086 = !DILocation(line: 100, column: 18, scope: !3077)
!3087 = !DILocation(line: 100, column: 24, scope: !3077)
!3088 = !DILocation(line: 100, column: 30, scope: !3077)
!3089 = !DILocation(line: 100, column: 2, scope: !3077)
!3090 = !DILocation(line: 101, column: 1, scope: !3077)
!3091 = distinct !DISubprogram(name: "mtd_add_partition_attrs", scope: !3, file: !3, line: 230, type: !256, scopeLine: 231, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3092 = !DILocalVariable(name: "new", arg: 1, scope: !3091, file: !3, line: 230, type: !64)
!3093 = !DILocation(line: 230, column: 53, scope: !3091)
!3094 = !DILocalVariable(name: "ret", scope: !3091, file: !3, line: 232, type: !98)
!3095 = !DILocation(line: 232, column: 6, scope: !3091)
!3096 = !DILocation(line: 232, column: 32, scope: !3091)
!3097 = !DILocation(line: 232, column: 37, scope: !3091)
!3098 = !DILocation(line: 232, column: 41, scope: !3091)
!3099 = !DILocation(line: 232, column: 12, scope: !3091)
!3100 = !DILocation(line: 233, column: 6, scope: !3101)
!3101 = distinct !DILexicalBlock(scope: !3091, file: !3, line: 233, column: 6)
!3102 = !DILocation(line: 233, column: 6, scope: !3091)
!3103 = !DILocation(line: 235, column: 61, scope: !3101)
!3104 = !DILocation(line: 234, column: 3, scope: !3101)
!3105 = !DILocation(line: 236, column: 9, scope: !3091)
!3106 = !DILocation(line: 236, column: 2, scope: !3091)
!3107 = distinct !DISubprogram(name: "list_del", scope: !3078, file: !3078, line: 144, type: !3108, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3108 = !DISubroutineType(types: !3109)
!3109 = !{null, !302}
!3110 = !DILocalVariable(name: "entry", arg: 1, scope: !3107, file: !3078, line: 144, type: !302)
!3111 = !DILocation(line: 144, column: 47, scope: !3107)
!3112 = !DILocation(line: 146, column: 19, scope: !3107)
!3113 = !DILocation(line: 146, column: 2, scope: !3107)
!3114 = !DILocation(line: 147, column: 2, scope: !3107)
!3115 = !DILocation(line: 147, column: 9, scope: !3107)
!3116 = !DILocation(line: 147, column: 14, scope: !3107)
!3117 = !DILocation(line: 148, column: 2, scope: !3107)
!3118 = !DILocation(line: 148, column: 9, scope: !3107)
!3119 = !DILocation(line: 148, column: 14, scope: !3107)
!3120 = !DILocation(line: 149, column: 1, scope: !3107)
!3121 = distinct !DISubprogram(name: "free_partition", scope: !3, file: !3, line: 28, type: !239, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3122 = !DILocalVariable(name: "mtd", arg: 1, scope: !3121, file: !3, line: 28, type: !64)
!3123 = !DILocation(line: 28, column: 52, scope: !3121)
!3124 = !DILocation(line: 30, column: 8, scope: !3121)
!3125 = !DILocation(line: 30, column: 13, scope: !3121)
!3126 = !DILocation(line: 30, column: 2, scope: !3121)
!3127 = !DILocation(line: 31, column: 8, scope: !3121)
!3128 = !DILocation(line: 31, column: 2, scope: !3121)
!3129 = !DILocation(line: 32, column: 1, scope: !3121)
!3130 = distinct !DISubprogram(name: "del_mtd_partitions", scope: !3, file: !3, line: 352, type: !256, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3131 = !DILocalVariable(name: "mtd", arg: 1, scope: !3130, file: !3, line: 352, type: !64)
!3132 = !DILocation(line: 352, column: 41, scope: !3130)
!3133 = !DILocalVariable(name: "master", scope: !3130, file: !3, line: 354, type: !64)
!3134 = !DILocation(line: 354, column: 19, scope: !3130)
!3135 = !DILocation(line: 354, column: 43, scope: !3130)
!3136 = !DILocation(line: 354, column: 28, scope: !3130)
!3137 = !DILocalVariable(name: "ret", scope: !3130, file: !3, line: 355, type: !98)
!3138 = !DILocation(line: 355, column: 6, scope: !3130)
!3139 = !DILocation(line: 357, column: 2, scope: !3130)
!3140 = !DILocation(line: 359, column: 14, scope: !3130)
!3141 = !DILocation(line: 359, column: 22, scope: !3130)
!3142 = !DILocation(line: 359, column: 29, scope: !3130)
!3143 = !DILocation(line: 359, column: 2, scope: !3130)
!3144 = !DILocation(line: 360, column: 29, scope: !3130)
!3145 = !DILocation(line: 360, column: 8, scope: !3130)
!3146 = !DILocation(line: 360, column: 6, scope: !3130)
!3147 = !DILocation(line: 361, column: 16, scope: !3130)
!3148 = !DILocation(line: 361, column: 24, scope: !3130)
!3149 = !DILocation(line: 361, column: 31, scope: !3130)
!3150 = !DILocation(line: 361, column: 2, scope: !3130)
!3151 = !DILocation(line: 363, column: 9, scope: !3130)
!3152 = !DILocation(line: 363, column: 2, scope: !3130)
!3153 = distinct !DISubprogram(name: "__del_mtd_partitions", scope: !3, file: !3, line: 326, type: !256, scopeLine: 327, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3154 = !DILocalVariable(name: "mtd", arg: 1, scope: !3153, file: !3, line: 326, type: !64)
!3155 = !DILocation(line: 326, column: 50, scope: !3153)
!3156 = !DILocalVariable(name: "child", scope: !3153, file: !3, line: 328, type: !64)
!3157 = !DILocation(line: 328, column: 19, scope: !3153)
!3158 = !DILocalVariable(name: "next", scope: !3153, file: !3, line: 328, type: !64)
!3159 = !DILocation(line: 328, column: 27, scope: !3153)
!3160 = !DILocalVariable(name: "tmp_list", scope: !3153, file: !3, line: 329, type: !299)
!3161 = !DILocation(line: 329, column: 2, scope: !3153)
!3162 = !DILocalVariable(name: "ret", scope: !3153, file: !3, line: 330, type: !98)
!3163 = !DILocation(line: 330, column: 6, scope: !3153)
!3164 = !DILocalVariable(name: "err", scope: !3153, file: !3, line: 330, type: !98)
!3165 = !DILocation(line: 330, column: 11, scope: !3153)
!3166 = !DILocalVariable(name: "__mptr", scope: !3167, file: !3, line: 332, type: !63)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 332, column: 2)
!3168 = distinct !DILexicalBlock(scope: !3153, file: !3, line: 332, column: 2)
!3169 = !DILocation(line: 332, column: 2, scope: !3167)
!3170 = !DILocation(line: 332, column: 2, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 332, column: 2)
!3172 = !DILocation(line: 332, column: 2, scope: !3168)
!3173 = !DILocalVariable(name: "__mptr", scope: !3174, file: !3, line: 332, type: !63)
!3174 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 332, column: 2)
!3175 = !DILocation(line: 332, column: 2, scope: !3174)
!3176 = !DILocation(line: 332, column: 2, scope: !3177)
!3177 = distinct !DILexicalBlock(scope: !3174, file: !3, line: 332, column: 2)
!3178 = !DILocation(line: 332, column: 2, scope: !3179)
!3179 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 332, column: 2)
!3180 = !DILocation(line: 333, column: 26, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 333, column: 7)
!3182 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 332, column: 69)
!3183 = !DILocation(line: 333, column: 7, scope: !3181)
!3184 = !DILocation(line: 333, column: 7, scope: !3182)
!3185 = !DILocation(line: 334, column: 23, scope: !3181)
!3186 = !DILocation(line: 334, column: 4, scope: !3181)
!3187 = !DILocation(line: 336, column: 3, scope: !3182)
!3188 = !DILocation(line: 337, column: 24, scope: !3182)
!3189 = !DILocation(line: 337, column: 9, scope: !3182)
!3190 = !DILocation(line: 337, column: 7, scope: !3182)
!3191 = !DILocation(line: 338, column: 7, scope: !3192)
!3192 = distinct !DILexicalBlock(scope: !3182, file: !3, line: 338, column: 7)
!3193 = !DILocation(line: 338, column: 11, scope: !3192)
!3194 = !DILocation(line: 338, column: 7, scope: !3182)
!3195 = !DILocation(line: 339, column: 4, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !3, line: 338, column: 16)
!3197 = !DILocation(line: 341, column: 10, scope: !3196)
!3198 = !DILocation(line: 341, column: 8, scope: !3196)
!3199 = !DILocation(line: 342, column: 4, scope: !3196)
!3200 = !DILocation(line: 345, column: 13, scope: !3182)
!3201 = !DILocation(line: 345, column: 20, scope: !3182)
!3202 = !DILocation(line: 345, column: 25, scope: !3182)
!3203 = !DILocation(line: 345, column: 3, scope: !3182)
!3204 = !DILocation(line: 346, column: 18, scope: !3182)
!3205 = !DILocation(line: 346, column: 3, scope: !3182)
!3206 = !DILocation(line: 347, column: 2, scope: !3182)
!3207 = !DILocalVariable(name: "__mptr", scope: !3208, file: !3, line: 332, type: !63)
!3208 = distinct !DILexicalBlock(scope: !3179, file: !3, line: 332, column: 2)
!3209 = !DILocation(line: 332, column: 2, scope: !3208)
!3210 = !DILocation(line: 332, column: 2, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 332, column: 2)
!3212 = distinct !{!3212, !3172, !3213}
!3213 = !DILocation(line: 347, column: 2, scope: !3168)
!3214 = !DILocation(line: 349, column: 9, scope: !3153)
!3215 = !DILocation(line: 349, column: 2, scope: !3153)
!3216 = distinct !DISubprogram(name: "mtd_del_partition", scope: !3, file: !3, line: 366, type: !3217, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3217 = !DISubroutineType(types: !3218)
!3218 = !{!98, !64, !98}
!3219 = !DILocalVariable(name: "mtd", arg: 1, scope: !3216, file: !3, line: 366, type: !64)
!3220 = !DILocation(line: 366, column: 40, scope: !3216)
!3221 = !DILocalVariable(name: "partno", arg: 2, scope: !3216, file: !3, line: 366, type: !98)
!3222 = !DILocation(line: 366, column: 49, scope: !3216)
!3223 = !DILocalVariable(name: "child", scope: !3216, file: !3, line: 368, type: !64)
!3224 = !DILocation(line: 368, column: 19, scope: !3216)
!3225 = !DILocalVariable(name: "master", scope: !3216, file: !3, line: 368, type: !64)
!3226 = !DILocation(line: 368, column: 27, scope: !3216)
!3227 = !DILocation(line: 368, column: 51, scope: !3216)
!3228 = !DILocation(line: 368, column: 36, scope: !3216)
!3229 = !DILocalVariable(name: "ret", scope: !3216, file: !3, line: 369, type: !98)
!3230 = !DILocation(line: 369, column: 6, scope: !3216)
!3231 = !DILocation(line: 371, column: 14, scope: !3216)
!3232 = !DILocation(line: 371, column: 22, scope: !3216)
!3233 = !DILocation(line: 371, column: 29, scope: !3216)
!3234 = !DILocation(line: 371, column: 2, scope: !3216)
!3235 = !DILocalVariable(name: "__mptr", scope: !3236, file: !3, line: 372, type: !63)
!3236 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 372, column: 2)
!3237 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 372, column: 2)
!3238 = !DILocation(line: 372, column: 2, scope: !3236)
!3239 = !DILocation(line: 372, column: 2, scope: !3240)
!3240 = distinct !DILexicalBlock(scope: !3236, file: !3, line: 372, column: 2)
!3241 = !DILocation(line: 372, column: 2, scope: !3237)
!3242 = !DILocation(line: 372, column: 2, scope: !3243)
!3243 = distinct !DILexicalBlock(scope: !3237, file: !3, line: 372, column: 2)
!3244 = !DILocation(line: 373, column: 7, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3246, file: !3, line: 373, column: 7)
!3246 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 372, column: 58)
!3247 = !DILocation(line: 373, column: 14, scope: !3245)
!3248 = !DILocation(line: 373, column: 23, scope: !3245)
!3249 = !DILocation(line: 373, column: 20, scope: !3245)
!3250 = !DILocation(line: 373, column: 7, scope: !3246)
!3251 = !DILocation(line: 374, column: 30, scope: !3252)
!3252 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 373, column: 31)
!3253 = !DILocation(line: 374, column: 10, scope: !3252)
!3254 = !DILocation(line: 374, column: 8, scope: !3252)
!3255 = !DILocation(line: 375, column: 4, scope: !3252)
!3256 = !DILocation(line: 377, column: 2, scope: !3246)
!3257 = !DILocalVariable(name: "__mptr", scope: !3258, file: !3, line: 372, type: !63)
!3258 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 372, column: 2)
!3259 = !DILocation(line: 372, column: 2, scope: !3258)
!3260 = !DILocation(line: 372, column: 2, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 372, column: 2)
!3262 = distinct !{!3262, !3241, !3263}
!3263 = !DILocation(line: 377, column: 2, scope: !3237)
!3264 = !DILocation(line: 378, column: 16, scope: !3216)
!3265 = !DILocation(line: 378, column: 24, scope: !3216)
!3266 = !DILocation(line: 378, column: 31, scope: !3216)
!3267 = !DILocation(line: 378, column: 2, scope: !3216)
!3268 = !DILocation(line: 380, column: 9, scope: !3216)
!3269 = !DILocation(line: 380, column: 2, scope: !3216)
!3270 = distinct !DISubprogram(name: "__mtd_del_partition", scope: !3, file: !3, line: 299, type: !256, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3271 = !DILocalVariable(name: "mtd", arg: 1, scope: !3270, file: !3, line: 299, type: !64)
!3272 = !DILocation(line: 299, column: 49, scope: !3270)
!3273 = !DILocalVariable(name: "child", scope: !3270, file: !3, line: 301, type: !64)
!3274 = !DILocation(line: 301, column: 19, scope: !3270)
!3275 = !DILocalVariable(name: "next", scope: !3270, file: !3, line: 301, type: !64)
!3276 = !DILocation(line: 301, column: 27, scope: !3270)
!3277 = !DILocalVariable(name: "err", scope: !3270, file: !3, line: 302, type: !98)
!3278 = !DILocation(line: 302, column: 6, scope: !3270)
!3279 = !DILocalVariable(name: "__mptr", scope: !3280, file: !3, line: 304, type: !63)
!3280 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 304, column: 2)
!3281 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 304, column: 2)
!3282 = !DILocation(line: 304, column: 2, scope: !3280)
!3283 = !DILocation(line: 304, column: 2, scope: !3284)
!3284 = distinct !DILexicalBlock(scope: !3280, file: !3, line: 304, column: 2)
!3285 = !DILocation(line: 304, column: 2, scope: !3281)
!3286 = !DILocalVariable(name: "__mptr", scope: !3287, file: !3, line: 304, type: !63)
!3287 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 304, column: 2)
!3288 = !DILocation(line: 304, column: 2, scope: !3287)
!3289 = !DILocation(line: 304, column: 2, scope: !3290)
!3290 = distinct !DILexicalBlock(scope: !3287, file: !3, line: 304, column: 2)
!3291 = !DILocation(line: 304, column: 2, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3281, file: !3, line: 304, column: 2)
!3293 = !DILocation(line: 305, column: 29, scope: !3294)
!3294 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 304, column: 69)
!3295 = !DILocation(line: 305, column: 9, scope: !3294)
!3296 = !DILocation(line: 305, column: 7, scope: !3294)
!3297 = !DILocation(line: 306, column: 7, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3294, file: !3, line: 306, column: 7)
!3299 = !DILocation(line: 306, column: 7, scope: !3294)
!3300 = !DILocation(line: 307, column: 11, scope: !3298)
!3301 = !DILocation(line: 307, column: 4, scope: !3298)
!3302 = !DILocation(line: 308, column: 2, scope: !3294)
!3303 = !DILocalVariable(name: "__mptr", scope: !3304, file: !3, line: 304, type: !63)
!3304 = distinct !DILexicalBlock(scope: !3292, file: !3, line: 304, column: 2)
!3305 = !DILocation(line: 304, column: 2, scope: !3304)
!3306 = !DILocation(line: 304, column: 2, scope: !3307)
!3307 = distinct !DILexicalBlock(scope: !3304, file: !3, line: 304, column: 2)
!3308 = distinct !{!3308, !3285, !3309}
!3309 = !DILocation(line: 308, column: 2, scope: !3281)
!3310 = !DILocation(line: 310, column: 22, scope: !3270)
!3311 = !DILocation(line: 310, column: 27, scope: !3270)
!3312 = !DILocation(line: 310, column: 31, scope: !3270)
!3313 = !DILocation(line: 310, column: 2, scope: !3270)
!3314 = !DILocation(line: 312, column: 23, scope: !3270)
!3315 = !DILocation(line: 312, column: 8, scope: !3270)
!3316 = !DILocation(line: 312, column: 6, scope: !3270)
!3317 = !DILocation(line: 313, column: 6, scope: !3318)
!3318 = distinct !DILexicalBlock(scope: !3270, file: !3, line: 313, column: 6)
!3319 = !DILocation(line: 313, column: 6, scope: !3270)
!3320 = !DILocation(line: 314, column: 10, scope: !3318)
!3321 = !DILocation(line: 314, column: 3, scope: !3318)
!3322 = !DILocation(line: 316, column: 12, scope: !3270)
!3323 = !DILocation(line: 316, column: 19, scope: !3270)
!3324 = !DILocation(line: 316, column: 24, scope: !3270)
!3325 = !DILocation(line: 316, column: 2, scope: !3270)
!3326 = !DILocation(line: 317, column: 17, scope: !3270)
!3327 = !DILocation(line: 317, column: 2, scope: !3270)
!3328 = !DILocation(line: 319, column: 2, scope: !3270)
!3329 = !DILocation(line: 320, column: 1, scope: !3270)
!3330 = distinct !DISubprogram(name: "add_mtd_partitions", scope: !3, file: !3, line: 393, type: !3331, scopeLine: 396, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3331 = !DISubroutineType(types: !3332)
!3332 = !{!98, !64, !2288, !98}
!3333 = !DILocalVariable(name: "parent", arg: 1, scope: !3330, file: !3, line: 393, type: !64)
!3334 = !DILocation(line: 393, column: 41, scope: !3330)
!3335 = !DILocalVariable(name: "parts", arg: 2, scope: !3330, file: !3, line: 394, type: !2288)
!3336 = !DILocation(line: 394, column: 38, scope: !3330)
!3337 = !DILocalVariable(name: "nbparts", arg: 3, scope: !3330, file: !3, line: 395, type: !98)
!3338 = !DILocation(line: 395, column: 14, scope: !3330)
!3339 = !DILocalVariable(name: "child", scope: !3330, file: !3, line: 397, type: !64)
!3340 = !DILocation(line: 397, column: 19, scope: !3330)
!3341 = !DILocalVariable(name: "master", scope: !3330, file: !3, line: 397, type: !64)
!3342 = !DILocation(line: 397, column: 27, scope: !3330)
!3343 = !DILocation(line: 397, column: 51, scope: !3330)
!3344 = !DILocation(line: 397, column: 36, scope: !3330)
!3345 = !DILocalVariable(name: "cur_offset", scope: !3330, file: !3, line: 398, type: !79)
!3346 = !DILocation(line: 398, column: 11, scope: !3330)
!3347 = !DILocalVariable(name: "i", scope: !3330, file: !3, line: 399, type: !98)
!3348 = !DILocation(line: 399, column: 6, scope: !3330)
!3349 = !DILocalVariable(name: "ret", scope: !3330, file: !3, line: 399, type: !98)
!3350 = !DILocation(line: 399, column: 9, scope: !3330)
!3351 = !DILocation(line: 402, column: 9, scope: !3330)
!3352 = !DILocation(line: 402, column: 18, scope: !3330)
!3353 = !DILocation(line: 402, column: 26, scope: !3330)
!3354 = !DILocation(line: 401, column: 2, scope: !3330)
!3355 = !DILocation(line: 404, column: 9, scope: !3356)
!3356 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 404, column: 2)
!3357 = !DILocation(line: 404, column: 7, scope: !3356)
!3358 = !DILocation(line: 404, column: 14, scope: !3359)
!3359 = distinct !DILexicalBlock(scope: !3356, file: !3, line: 404, column: 2)
!3360 = !DILocation(line: 404, column: 18, scope: !3359)
!3361 = !DILocation(line: 404, column: 16, scope: !3359)
!3362 = !DILocation(line: 404, column: 2, scope: !3356)
!3363 = !DILocation(line: 405, column: 30, scope: !3364)
!3364 = distinct !DILexicalBlock(scope: !3359, file: !3, line: 404, column: 32)
!3365 = !DILocation(line: 405, column: 38, scope: !3364)
!3366 = !DILocation(line: 405, column: 46, scope: !3364)
!3367 = !DILocation(line: 405, column: 44, scope: !3364)
!3368 = !DILocation(line: 405, column: 49, scope: !3364)
!3369 = !DILocation(line: 405, column: 52, scope: !3364)
!3370 = !DILocation(line: 405, column: 11, scope: !3364)
!3371 = !DILocation(line: 405, column: 9, scope: !3364)
!3372 = !DILocation(line: 406, column: 14, scope: !3373)
!3373 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 406, column: 7)
!3374 = !DILocation(line: 406, column: 7, scope: !3373)
!3375 = !DILocation(line: 406, column: 7, scope: !3364)
!3376 = !DILocation(line: 407, column: 18, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3373, file: !3, line: 406, column: 22)
!3378 = !DILocation(line: 407, column: 10, scope: !3377)
!3379 = !DILocation(line: 407, column: 8, scope: !3377)
!3380 = !DILocation(line: 408, column: 4, scope: !3377)
!3381 = !DILocation(line: 411, column: 15, scope: !3364)
!3382 = !DILocation(line: 411, column: 23, scope: !3364)
!3383 = !DILocation(line: 411, column: 30, scope: !3364)
!3384 = !DILocation(line: 411, column: 3, scope: !3364)
!3385 = !DILocation(line: 412, column: 18, scope: !3364)
!3386 = !DILocation(line: 412, column: 25, scope: !3364)
!3387 = !DILocation(line: 412, column: 30, scope: !3364)
!3388 = !DILocation(line: 412, column: 37, scope: !3364)
!3389 = !DILocation(line: 412, column: 45, scope: !3364)
!3390 = !DILocation(line: 412, column: 3, scope: !3364)
!3391 = !DILocation(line: 413, column: 17, scope: !3364)
!3392 = !DILocation(line: 413, column: 25, scope: !3364)
!3393 = !DILocation(line: 413, column: 32, scope: !3364)
!3394 = !DILocation(line: 413, column: 3, scope: !3364)
!3395 = !DILocation(line: 415, column: 24, scope: !3364)
!3396 = !DILocation(line: 415, column: 9, scope: !3364)
!3397 = !DILocation(line: 415, column: 7, scope: !3364)
!3398 = !DILocation(line: 416, column: 7, scope: !3399)
!3399 = distinct !DILexicalBlock(scope: !3364, file: !3, line: 416, column: 7)
!3400 = !DILocation(line: 416, column: 7, scope: !3364)
!3401 = !DILocation(line: 417, column: 16, scope: !3402)
!3402 = distinct !DILexicalBlock(scope: !3399, file: !3, line: 416, column: 12)
!3403 = !DILocation(line: 417, column: 24, scope: !3402)
!3404 = !DILocation(line: 417, column: 31, scope: !3402)
!3405 = !DILocation(line: 417, column: 4, scope: !3402)
!3406 = !DILocation(line: 418, column: 14, scope: !3402)
!3407 = !DILocation(line: 418, column: 21, scope: !3402)
!3408 = !DILocation(line: 418, column: 26, scope: !3402)
!3409 = !DILocation(line: 418, column: 4, scope: !3402)
!3410 = !DILocation(line: 419, column: 18, scope: !3402)
!3411 = !DILocation(line: 419, column: 26, scope: !3402)
!3412 = !DILocation(line: 419, column: 33, scope: !3402)
!3413 = !DILocation(line: 419, column: 4, scope: !3402)
!3414 = !DILocation(line: 421, column: 19, scope: !3402)
!3415 = !DILocation(line: 421, column: 4, scope: !3402)
!3416 = !DILocation(line: 422, column: 4, scope: !3402)
!3417 = !DILocation(line: 425, column: 27, scope: !3364)
!3418 = !DILocation(line: 425, column: 3, scope: !3364)
!3419 = !DILocation(line: 428, column: 24, scope: !3364)
!3420 = !DILocation(line: 428, column: 31, scope: !3364)
!3421 = !DILocation(line: 428, column: 37, scope: !3364)
!3422 = !DILocation(line: 428, column: 40, scope: !3364)
!3423 = !DILocation(line: 428, column: 3, scope: !3364)
!3424 = !DILocation(line: 430, column: 16, scope: !3364)
!3425 = !DILocation(line: 430, column: 23, scope: !3364)
!3426 = !DILocation(line: 430, column: 28, scope: !3364)
!3427 = !DILocation(line: 430, column: 37, scope: !3364)
!3428 = !DILocation(line: 430, column: 44, scope: !3364)
!3429 = !DILocation(line: 430, column: 49, scope: !3364)
!3430 = !DILocation(line: 430, column: 35, scope: !3364)
!3431 = !DILocation(line: 430, column: 14, scope: !3364)
!3432 = !DILocation(line: 431, column: 2, scope: !3364)
!3433 = !DILocation(line: 404, column: 28, scope: !3359)
!3434 = !DILocation(line: 404, column: 2, scope: !3359)
!3435 = distinct !{!3435, !3362, !3436}
!3436 = !DILocation(line: 431, column: 2, scope: !3356)
!3437 = !DILocation(line: 433, column: 2, scope: !3330)
!3438 = !DILabel(scope: !3330, name: "err_del_partitions", file: !3, line: 435)
!3439 = !DILocation(line: 435, column: 1, scope: !3330)
!3440 = !DILocation(line: 436, column: 21, scope: !3330)
!3441 = !DILocation(line: 436, column: 2, scope: !3330)
!3442 = !DILocation(line: 438, column: 9, scope: !3330)
!3443 = !DILocation(line: 438, column: 2, scope: !3330)
!3444 = !DILocation(line: 439, column: 1, scope: !3330)
!3445 = distinct !DISubprogram(name: "parse_mtd_partitions", scope: !3, file: !3, line: 645, type: !3446, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3446 = !DISubroutineType(types: !3447)
!3447 = !{!98, !64, !2294, !2301}
!3448 = !DILocalVariable(name: "master", arg: 1, scope: !3445, file: !3, line: 645, type: !64)
!3449 = !DILocation(line: 645, column: 43, scope: !3445)
!3450 = !DILocalVariable(name: "types", arg: 2, scope: !3445, file: !3, line: 645, type: !2294)
!3451 = !DILocation(line: 645, column: 70, scope: !3445)
!3452 = !DILocalVariable(name: "data", arg: 3, scope: !3445, file: !3, line: 646, type: !2301)
!3453 = !DILocation(line: 646, column: 34, scope: !3445)
!3454 = !DILocalVariable(name: "pparts", scope: !3445, file: !3, line: 648, type: !3455)
!3455 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_partitions", file: !2277, line: 89, size: 192, elements: !3456)
!3456 = !{!3457, !3458, !3459}
!3457 = !DIDerivedType(tag: DW_TAG_member, name: "parts", scope: !3455, file: !2277, line: 90, baseType: !2288, size: 64)
!3458 = !DIDerivedType(tag: DW_TAG_member, name: "nr_parts", scope: !3455, file: !2277, line: 91, baseType: !98, size: 32, offset: 64)
!3459 = !DIDerivedType(tag: DW_TAG_member, name: "parser", scope: !3455, file: !2277, line: 92, baseType: !3460, size: 64, offset: 128)
!3460 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3461, size: 64)
!3461 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2276)
!3462 = !DILocation(line: 648, column: 24, scope: !3445)
!3463 = !DILocalVariable(name: "parser", scope: !3445, file: !3, line: 649, type: !2275)
!3464 = !DILocation(line: 649, column: 26, scope: !3445)
!3465 = !DILocalVariable(name: "ret", scope: !3445, file: !3, line: 650, type: !98)
!3466 = !DILocation(line: 650, column: 6, scope: !3445)
!3467 = !DILocalVariable(name: "err", scope: !3445, file: !3, line: 650, type: !98)
!3468 = !DILocation(line: 650, column: 11, scope: !3445)
!3469 = !DILocation(line: 652, column: 7, scope: !3470)
!3470 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 652, column: 6)
!3471 = !DILocation(line: 652, column: 6, scope: !3445)
!3472 = !DILocation(line: 653, column: 28, scope: !3470)
!3473 = !DILocation(line: 653, column: 11, scope: !3470)
!3474 = !DILocation(line: 653, column: 9, scope: !3470)
!3475 = !DILocation(line: 653, column: 3, scope: !3470)
!3476 = !DILocation(line: 656, column: 2, scope: !3445)
!3477 = !DILocation(line: 656, column: 11, scope: !3478)
!3478 = distinct !DILexicalBlock(scope: !3479, file: !3, line: 656, column: 2)
!3479 = distinct !DILexicalBlock(scope: !3445, file: !3, line: 656, column: 2)
!3480 = !DILocation(line: 656, column: 10, scope: !3478)
!3481 = !DILocation(line: 656, column: 2, scope: !3479)
!3482 = !DILocation(line: 662, column: 16, scope: !3483)
!3483 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 662, column: 7)
!3484 = distinct !DILexicalBlock(scope: !3478, file: !3, line: 656, column: 27)
!3485 = !DILocation(line: 662, column: 15, scope: !3483)
!3486 = !DILocation(line: 662, column: 8, scope: !3483)
!3487 = !DILocation(line: 662, column: 7, scope: !3484)
!3488 = !DILocation(line: 663, column: 28, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 662, column: 34)
!3490 = !DILocation(line: 663, column: 10, scope: !3489)
!3491 = !DILocation(line: 663, column: 8, scope: !3489)
!3492 = !DILocation(line: 664, column: 3, scope: !3489)
!3493 = !DILocation(line: 665, column: 4, scope: !3494)
!3494 = distinct !DILexicalBlock(scope: !3495, file: !3, line: 665, column: 4)
!3495 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 665, column: 4)
!3496 = distinct !DILexicalBlock(scope: !3483, file: !3, line: 664, column: 10)
!3497 = !DILocation(line: 665, column: 4, scope: !3495)
!3498 = !DILocation(line: 667, column: 34, scope: !3496)
!3499 = !DILocation(line: 667, column: 33, scope: !3496)
!3500 = !DILocation(line: 667, column: 13, scope: !3496)
!3501 = !DILocation(line: 667, column: 11, scope: !3496)
!3502 = !DILocation(line: 668, column: 9, scope: !3503)
!3503 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 668, column: 8)
!3504 = !DILocation(line: 668, column: 16, scope: !3503)
!3505 = !DILocation(line: 668, column: 42, scope: !3503)
!3506 = !DILocation(line: 668, column: 41, scope: !3503)
!3507 = !DILocation(line: 668, column: 20, scope: !3503)
!3508 = !DILocation(line: 668, column: 8, scope: !3496)
!3509 = !DILocation(line: 669, column: 35, scope: !3503)
!3510 = !DILocation(line: 669, column: 34, scope: !3503)
!3511 = !DILocation(line: 669, column: 14, scope: !3503)
!3512 = !DILocation(line: 669, column: 12, scope: !3503)
!3513 = !DILocation(line: 669, column: 5, scope: !3503)
!3514 = !DILocation(line: 670, column: 4, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !3, line: 670, column: 4)
!3516 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 670, column: 4)
!3517 = !DILocation(line: 670, column: 4, scope: !3516)
!3518 = !DILocation(line: 672, column: 9, scope: !3519)
!3519 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 672, column: 8)
!3520 = !DILocation(line: 672, column: 8, scope: !3496)
!3521 = !DILocation(line: 673, column: 5, scope: !3519)
!3522 = !DILocation(line: 674, column: 28, scope: !3496)
!3523 = !DILocation(line: 674, column: 36, scope: !3496)
!3524 = !DILocation(line: 674, column: 53, scope: !3496)
!3525 = !DILocation(line: 674, column: 10, scope: !3496)
!3526 = !DILocation(line: 674, column: 8, scope: !3496)
!3527 = !DILocation(line: 675, column: 8, scope: !3528)
!3528 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 675, column: 8)
!3529 = !DILocation(line: 675, column: 12, scope: !3528)
!3530 = !DILocation(line: 675, column: 8, scope: !3496)
!3531 = !DILocation(line: 676, column: 25, scope: !3528)
!3532 = !DILocation(line: 676, column: 5, scope: !3528)
!3533 = !DILocation(line: 679, column: 7, scope: !3534)
!3534 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 679, column: 7)
!3535 = !DILocation(line: 679, column: 11, scope: !3534)
!3536 = !DILocation(line: 679, column: 7, scope: !3484)
!3537 = !DILocation(line: 680, column: 29, scope: !3538)
!3538 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 679, column: 16)
!3539 = !DILocation(line: 680, column: 44, scope: !3538)
!3540 = !DILocation(line: 681, column: 15, scope: !3538)
!3541 = !DILocation(line: 680, column: 10, scope: !3538)
!3542 = !DILocation(line: 680, column: 8, scope: !3538)
!3543 = !DILocation(line: 682, column: 4, scope: !3538)
!3544 = !DILocation(line: 683, column: 11, scope: !3538)
!3545 = !DILocation(line: 683, column: 17, scope: !3538)
!3546 = !DILocation(line: 683, column: 30, scope: !3538)
!3547 = !DILocation(line: 683, column: 4, scope: !3538)
!3548 = !DILocation(line: 689, column: 7, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 689, column: 7)
!3550 = !DILocation(line: 689, column: 11, scope: !3549)
!3551 = !DILocation(line: 689, column: 15, scope: !3549)
!3552 = !DILocation(line: 689, column: 19, scope: !3549)
!3553 = !DILocation(line: 689, column: 7, scope: !3484)
!3554 = !DILocation(line: 690, column: 10, scope: !3549)
!3555 = !DILocation(line: 690, column: 8, scope: !3549)
!3556 = !DILocation(line: 690, column: 4, scope: !3549)
!3557 = !DILocation(line: 691, column: 2, scope: !3484)
!3558 = !DILocation(line: 656, column: 23, scope: !3478)
!3559 = !DILocation(line: 656, column: 2, scope: !3478)
!3560 = distinct !{!3560, !3481, !3561}
!3561 = !DILocation(line: 691, column: 2, scope: !3479)
!3562 = !DILocation(line: 692, column: 9, scope: !3445)
!3563 = !DILocation(line: 692, column: 2, scope: !3445)
!3564 = !DILocation(line: 693, column: 1, scope: !3445)
!3565 = distinct !DISubprogram(name: "__register_mtd_parser", scope: !3, file: !3, line: 476, type: !3566, scopeLine: 477, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3566 = !DISubroutineType(types: !3567)
!3567 = !{!98, !2275, !287}
!3568 = !DILocalVariable(name: "lock", arg: 1, scope: !3569, file: !3570, line: 392, type: !3573)
!3569 = distinct !DISubprogram(name: "spin_unlock", scope: !3570, file: !3570, line: 392, type: !3571, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3570 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!3571 = !DISubroutineType(types: !3572)
!3572 = !{null, !3573}
!3573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !312, size: 64)
!3574 = !DILocation(line: 392, column: 53, scope: !3569, inlinedAt: !3575)
!3575 = distinct !DILocation(line: 485, column: 2, scope: !3565)
!3576 = !DILocalVariable(name: "lock", arg: 1, scope: !3577, file: !3570, line: 352, type: !3573)
!3577 = distinct !DISubprogram(name: "spin_lock", scope: !3570, file: !3570, line: 352, type: !3571, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3578 = !DILocation(line: 352, column: 51, scope: !3577, inlinedAt: !3579)
!3579 = distinct !DILocation(line: 483, column: 2, scope: !3565)
!3580 = !DILocalVariable(name: "p", arg: 1, scope: !3565, file: !3, line: 476, type: !2275)
!3581 = !DILocation(line: 476, column: 51, scope: !3565)
!3582 = !DILocalVariable(name: "owner", arg: 2, scope: !3565, file: !3, line: 476, type: !287)
!3583 = !DILocation(line: 476, column: 69, scope: !3565)
!3584 = !DILocation(line: 478, column: 13, scope: !3565)
!3585 = !DILocation(line: 478, column: 2, scope: !3565)
!3586 = !DILocation(line: 478, column: 5, scope: !3565)
!3587 = !DILocation(line: 478, column: 11, scope: !3565)
!3588 = !DILocation(line: 480, column: 7, scope: !3589)
!3589 = distinct !DILexicalBlock(scope: !3565, file: !3, line: 480, column: 6)
!3590 = !DILocation(line: 480, column: 10, scope: !3589)
!3591 = !DILocation(line: 480, column: 6, scope: !3565)
!3592 = !DILocation(line: 481, column: 3, scope: !3589)
!3593 = !DILocation(line: 481, column: 6, scope: !3589)
!3594 = !DILocation(line: 481, column: 14, scope: !3589)
!3595 = !DILocation(line: 354, column: 2, scope: !3596, inlinedAt: !3579)
!3596 = distinct !DILexicalBlock(scope: !3577, file: !3570, line: 354, column: 2)
!3597 = !{i32 -2145463394}
!3598 = !DILocation(line: 354, column: 2, scope: !3599, inlinedAt: !3579)
!3599 = distinct !DILexicalBlock(scope: !3596, file: !3570, line: 354, column: 2)
!3600 = !DILocation(line: 484, column: 12, scope: !3565)
!3601 = !DILocation(line: 484, column: 15, scope: !3565)
!3602 = !DILocation(line: 484, column: 2, scope: !3565)
!3603 = !DILocation(line: 394, column: 2, scope: !3604, inlinedAt: !3575)
!3604 = distinct !DILexicalBlock(scope: !3569, file: !3570, line: 394, column: 2)
!3605 = !{i32 -2145461033}
!3606 = !DILocation(line: 394, column: 2, scope: !3607, inlinedAt: !3575)
!3607 = distinct !DILexicalBlock(scope: !3604, file: !3570, line: 394, column: 2)
!3608 = !DILocation(line: 487, column: 2, scope: !3565)
!3609 = distinct !DISubprogram(name: "mtd_part_parser_cleanup_default", scope: !3, file: !3, line: 470, type: !2307, scopeLine: 472, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3610 = !DILocalVariable(name: "pparts", arg: 1, scope: !3609, file: !3, line: 470, type: !2288)
!3611 = !DILocation(line: 470, column: 73, scope: !3609)
!3612 = !DILocalVariable(name: "nr_parts", arg: 2, scope: !3609, file: !3, line: 471, type: !98)
!3613 = !DILocation(line: 471, column: 14, scope: !3609)
!3614 = !DILocation(line: 473, column: 8, scope: !3609)
!3615 = !DILocation(line: 473, column: 2, scope: !3609)
!3616 = !DILocation(line: 474, column: 1, scope: !3609)
!3617 = distinct !DISubprogram(name: "list_add", scope: !3078, file: !3078, line: 84, type: !3079, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3618 = !DILocalVariable(name: "new", arg: 1, scope: !3617, file: !3078, line: 84, type: !302)
!3619 = !DILocation(line: 84, column: 47, scope: !3617)
!3620 = !DILocalVariable(name: "head", arg: 2, scope: !3617, file: !3078, line: 84, type: !302)
!3621 = !DILocation(line: 84, column: 70, scope: !3617)
!3622 = !DILocation(line: 86, column: 13, scope: !3617)
!3623 = !DILocation(line: 86, column: 18, scope: !3617)
!3624 = !DILocation(line: 86, column: 24, scope: !3617)
!3625 = !DILocation(line: 86, column: 30, scope: !3617)
!3626 = !DILocation(line: 86, column: 2, scope: !3617)
!3627 = !DILocation(line: 87, column: 1, scope: !3617)
!3628 = distinct !DISubprogram(name: "deregister_mtd_parser", scope: !3, file: !3, line: 491, type: !3629, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3629 = !DISubroutineType(types: !3630)
!3630 = !{null, !2275}
!3631 = !DILocation(line: 392, column: 53, scope: !3569, inlinedAt: !3632)
!3632 = distinct !DILocation(line: 495, column: 2, scope: !3628)
!3633 = !DILocation(line: 352, column: 51, scope: !3577, inlinedAt: !3634)
!3634 = distinct !DILocation(line: 493, column: 2, scope: !3628)
!3635 = !DILocalVariable(name: "p", arg: 1, scope: !3628, file: !3, line: 491, type: !2275)
!3636 = !DILocation(line: 491, column: 52, scope: !3628)
!3637 = !DILocation(line: 354, column: 2, scope: !3596, inlinedAt: !3634)
!3638 = !DILocation(line: 354, column: 2, scope: !3599, inlinedAt: !3634)
!3639 = !DILocation(line: 494, column: 12, scope: !3628)
!3640 = !DILocation(line: 494, column: 15, scope: !3628)
!3641 = !DILocation(line: 494, column: 2, scope: !3628)
!3642 = !DILocation(line: 394, column: 2, scope: !3604, inlinedAt: !3632)
!3643 = !DILocation(line: 394, column: 2, scope: !3607, inlinedAt: !3632)
!3644 = !DILocation(line: 496, column: 1, scope: !3628)
!3645 = distinct !DISubprogram(name: "mtd_part_of_parse", scope: !3, file: !3, line: 575, type: !3646, scopeLine: 577, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3646 = !DISubroutineType(types: !3647)
!3647 = !{!98, !64, !3648}
!3648 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3455, size: 64)
!3649 = !DILocalVariable(name: "master", arg: 1, scope: !3645, file: !3, line: 575, type: !64)
!3650 = !DILocation(line: 575, column: 47, scope: !3645)
!3651 = !DILocalVariable(name: "pparts", arg: 2, scope: !3645, file: !3, line: 576, type: !3648)
!3652 = !DILocation(line: 576, column: 32, scope: !3645)
!3653 = !DILocalVariable(name: "parser", scope: !3645, file: !3, line: 578, type: !2275)
!3654 = !DILocation(line: 578, column: 26, scope: !3645)
!3655 = !DILocalVariable(name: "np", scope: !3645, file: !3, line: 579, type: !2076)
!3656 = !DILocation(line: 579, column: 22, scope: !3645)
!3657 = !DILocalVariable(name: "prop", scope: !3645, file: !3, line: 580, type: !2175)
!3658 = !DILocation(line: 580, column: 19, scope: !3645)
!3659 = !DILocalVariable(name: "compat", scope: !3645, file: !3, line: 581, type: !94)
!3660 = !DILocation(line: 581, column: 14, scope: !3645)
!3661 = !DILocalVariable(name: "fixed", scope: !3645, file: !3, line: 582, type: !94)
!3662 = !DILocation(line: 582, column: 14, scope: !3645)
!3663 = !DILocalVariable(name: "ret", scope: !3645, file: !3, line: 583, type: !98)
!3664 = !DILocation(line: 583, column: 6, scope: !3645)
!3665 = !DILocalVariable(name: "err", scope: !3645, file: !3, line: 583, type: !98)
!3666 = !DILocation(line: 583, column: 11, scope: !3645)
!3667 = !DILocation(line: 585, column: 23, scope: !3645)
!3668 = !DILocation(line: 585, column: 7, scope: !3645)
!3669 = !DILocation(line: 585, column: 5, scope: !3645)
!3670 = !DILocation(line: 586, column: 23, scope: !3671)
!3671 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 586, column: 6)
!3672 = !DILocation(line: 586, column: 6, scope: !3671)
!3673 = !DILocation(line: 586, column: 6, scope: !3645)
!3674 = !DILocation(line: 587, column: 15, scope: !3671)
!3675 = !DILocation(line: 587, column: 3, scope: !3671)
!3676 = !DILocation(line: 589, column: 29, scope: !3671)
!3677 = !DILocation(line: 589, column: 8, scope: !3671)
!3678 = !DILocation(line: 589, column: 6, scope: !3671)
!3679 = !DILocation(line: 591, column: 2, scope: !3680)
!3680 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 591, column: 2)
!3681 = !DILocation(line: 591, column: 2, scope: !3682)
!3682 = distinct !DILexicalBlock(scope: !3680, file: !3, line: 591, column: 2)
!3683 = !DILocation(line: 592, column: 43, scope: !3684)
!3684 = distinct !DILexicalBlock(scope: !3682, file: !3, line: 591, column: 62)
!3685 = !DILocation(line: 592, column: 12, scope: !3684)
!3686 = !DILocation(line: 592, column: 10, scope: !3684)
!3687 = !DILocation(line: 593, column: 8, scope: !3688)
!3688 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 593, column: 7)
!3689 = !DILocation(line: 593, column: 7, scope: !3684)
!3690 = !DILocation(line: 594, column: 4, scope: !3688)
!3691 = !DILocation(line: 595, column: 27, scope: !3684)
!3692 = !DILocation(line: 595, column: 35, scope: !3684)
!3693 = !DILocation(line: 595, column: 43, scope: !3684)
!3694 = !DILocation(line: 595, column: 9, scope: !3684)
!3695 = !DILocation(line: 595, column: 7, scope: !3684)
!3696 = !DILocation(line: 596, column: 7, scope: !3697)
!3697 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 596, column: 7)
!3698 = !DILocation(line: 596, column: 11, scope: !3697)
!3699 = !DILocation(line: 596, column: 7, scope: !3684)
!3700 = !DILocation(line: 597, column: 16, scope: !3701)
!3701 = distinct !DILexicalBlock(scope: !3697, file: !3, line: 596, column: 16)
!3702 = !DILocation(line: 597, column: 4, scope: !3701)
!3703 = !DILocation(line: 598, column: 11, scope: !3701)
!3704 = !DILocation(line: 598, column: 4, scope: !3701)
!3705 = !DILocation(line: 600, column: 23, scope: !3684)
!3706 = !DILocation(line: 600, column: 3, scope: !3684)
!3707 = !DILocation(line: 601, column: 7, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3684, file: !3, line: 601, column: 7)
!3709 = !DILocation(line: 601, column: 11, scope: !3708)
!3710 = !DILocation(line: 601, column: 15, scope: !3708)
!3711 = !DILocation(line: 601, column: 19, scope: !3708)
!3712 = !DILocation(line: 601, column: 7, scope: !3684)
!3713 = !DILocation(line: 602, column: 10, scope: !3708)
!3714 = !DILocation(line: 602, column: 8, scope: !3708)
!3715 = !DILocation(line: 602, column: 4, scope: !3708)
!3716 = !DILocation(line: 603, column: 2, scope: !3684)
!3717 = distinct !{!3717, !3679, !3718}
!3718 = !DILocation(line: 603, column: 2, scope: !3680)
!3719 = !DILocation(line: 604, column: 14, scope: !3645)
!3720 = !DILocation(line: 604, column: 2, scope: !3645)
!3721 = !DILocation(line: 612, column: 31, scope: !3645)
!3722 = !DILocation(line: 612, column: 11, scope: !3645)
!3723 = !DILocation(line: 612, column: 9, scope: !3645)
!3724 = !DILocation(line: 613, column: 7, scope: !3725)
!3725 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 613, column: 6)
!3726 = !DILocation(line: 613, column: 14, scope: !3725)
!3727 = !DILocation(line: 613, column: 39, scope: !3725)
!3728 = !DILocation(line: 613, column: 18, scope: !3725)
!3729 = !DILocation(line: 613, column: 6, scope: !3645)
!3730 = !DILocation(line: 614, column: 32, scope: !3725)
!3731 = !DILocation(line: 614, column: 12, scope: !3725)
!3732 = !DILocation(line: 614, column: 10, scope: !3725)
!3733 = !DILocation(line: 614, column: 3, scope: !3725)
!3734 = !DILocation(line: 615, column: 6, scope: !3735)
!3735 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 615, column: 6)
!3736 = !DILocation(line: 615, column: 6, scope: !3645)
!3737 = !DILocation(line: 616, column: 27, scope: !3738)
!3738 = distinct !DILexicalBlock(scope: !3735, file: !3, line: 615, column: 14)
!3739 = !DILocation(line: 616, column: 35, scope: !3738)
!3740 = !DILocation(line: 616, column: 43, scope: !3738)
!3741 = !DILocation(line: 616, column: 9, scope: !3738)
!3742 = !DILocation(line: 616, column: 7, scope: !3738)
!3743 = !DILocation(line: 617, column: 7, scope: !3744)
!3744 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 617, column: 7)
!3745 = !DILocation(line: 617, column: 11, scope: !3744)
!3746 = !DILocation(line: 617, column: 7, scope: !3738)
!3747 = !DILocation(line: 618, column: 11, scope: !3744)
!3748 = !DILocation(line: 618, column: 4, scope: !3744)
!3749 = !DILocation(line: 619, column: 23, scope: !3738)
!3750 = !DILocation(line: 619, column: 3, scope: !3738)
!3751 = !DILocation(line: 620, column: 7, scope: !3752)
!3752 = distinct !DILexicalBlock(scope: !3738, file: !3, line: 620, column: 7)
!3753 = !DILocation(line: 620, column: 11, scope: !3752)
!3754 = !DILocation(line: 620, column: 15, scope: !3752)
!3755 = !DILocation(line: 620, column: 19, scope: !3752)
!3756 = !DILocation(line: 620, column: 7, scope: !3738)
!3757 = !DILocation(line: 621, column: 10, scope: !3752)
!3758 = !DILocation(line: 621, column: 8, scope: !3752)
!3759 = !DILocation(line: 621, column: 4, scope: !3752)
!3760 = !DILocation(line: 622, column: 2, scope: !3738)
!3761 = !DILocation(line: 624, column: 9, scope: !3645)
!3762 = !DILocation(line: 624, column: 2, scope: !3645)
!3763 = !DILocation(line: 625, column: 1, scope: !3645)
!3764 = distinct !DISubprogram(name: "mtd_part_parser_get", scope: !3, file: !3, line: 444, type: !3765, scopeLine: 445, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3765 = !DISubroutineType(types: !3766)
!3766 = !{!2275, !94}
!3767 = !DILocation(line: 392, column: 53, scope: !3569, inlinedAt: !3768)
!3768 = distinct !DILocation(line: 456, column: 2, scope: !3764)
!3769 = !DILocation(line: 352, column: 51, scope: !3577, inlinedAt: !3770)
!3770 = distinct !DILocation(line: 448, column: 2, scope: !3764)
!3771 = !DILocalVariable(name: "name", arg: 1, scope: !3764, file: !3, line: 444, type: !94)
!3772 = !DILocation(line: 444, column: 64, scope: !3764)
!3773 = !DILocalVariable(name: "p", scope: !3764, file: !3, line: 446, type: !2275)
!3774 = !DILocation(line: 446, column: 26, scope: !3764)
!3775 = !DILocalVariable(name: "ret", scope: !3764, file: !3, line: 446, type: !2275)
!3776 = !DILocation(line: 446, column: 30, scope: !3764)
!3777 = !DILocation(line: 354, column: 2, scope: !3596, inlinedAt: !3770)
!3778 = !DILocation(line: 354, column: 2, scope: !3599, inlinedAt: !3770)
!3779 = !DILocalVariable(name: "__mptr", scope: !3780, file: !3, line: 450, type: !63)
!3780 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 450, column: 2)
!3781 = distinct !DILexicalBlock(scope: !3764, file: !3, line: 450, column: 2)
!3782 = !DILocation(line: 450, column: 2, scope: !3780)
!3783 = !DILocation(line: 450, column: 2, scope: !3784)
!3784 = distinct !DILexicalBlock(scope: !3780, file: !3, line: 450, column: 2)
!3785 = !DILocation(line: 450, column: 2, scope: !3781)
!3786 = !DILocation(line: 450, column: 2, scope: !3787)
!3787 = distinct !DILexicalBlock(scope: !3781, file: !3, line: 450, column: 2)
!3788 = !DILocation(line: 451, column: 15, scope: !3789)
!3789 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 451, column: 7)
!3790 = !DILocation(line: 451, column: 18, scope: !3789)
!3791 = !DILocation(line: 451, column: 24, scope: !3789)
!3792 = !DILocation(line: 451, column: 8, scope: !3789)
!3793 = !DILocation(line: 451, column: 30, scope: !3789)
!3794 = !DILocation(line: 451, column: 48, scope: !3789)
!3795 = !DILocation(line: 451, column: 51, scope: !3789)
!3796 = !DILocation(line: 451, column: 33, scope: !3789)
!3797 = !DILocation(line: 451, column: 7, scope: !3787)
!3798 = !DILocation(line: 452, column: 10, scope: !3799)
!3799 = distinct !DILexicalBlock(scope: !3789, file: !3, line: 451, column: 59)
!3800 = !DILocation(line: 452, column: 8, scope: !3799)
!3801 = !DILocation(line: 453, column: 4, scope: !3799)
!3802 = !DILocation(line: 451, column: 56, scope: !3789)
!3803 = !DILocalVariable(name: "__mptr", scope: !3804, file: !3, line: 450, type: !63)
!3804 = distinct !DILexicalBlock(scope: !3787, file: !3, line: 450, column: 2)
!3805 = !DILocation(line: 450, column: 2, scope: !3804)
!3806 = !DILocation(line: 450, column: 2, scope: !3807)
!3807 = distinct !DILexicalBlock(scope: !3804, file: !3, line: 450, column: 2)
!3808 = distinct !{!3808, !3785, !3809}
!3809 = !DILocation(line: 454, column: 3, scope: !3781)
!3810 = !DILocation(line: 394, column: 2, scope: !3604, inlinedAt: !3768)
!3811 = !DILocation(line: 394, column: 2, scope: !3607, inlinedAt: !3768)
!3812 = !DILocation(line: 458, column: 9, scope: !3764)
!3813 = !DILocation(line: 458, column: 2, scope: !3764)
!3814 = distinct !DISubprogram(name: "request_module", scope: !3815, file: !3815, line: 30, type: !3816, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3815 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/lizy2001/genbc/linux")
!3816 = !DISubroutineType(types: !3817)
!3817 = !{!98, !94, null}
!3818 = !DILocalVariable(name: "name", arg: 1, scope: !3814, file: !3815, line: 30, type: !94)
!3819 = !DILocation(line: 30, column: 46, scope: !3814)
!3820 = !DILocation(line: 30, column: 59, scope: !3814)
!3821 = distinct !DISubprogram(name: "mtd_part_do_parse", scope: !3, file: !3, line: 515, type: !3822, scopeLine: 519, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3822 = !DISubroutineType(types: !3823)
!3823 = !{!98, !2275, !64, !3648, !2301}
!3824 = !DILocalVariable(name: "parser", arg: 1, scope: !3821, file: !3, line: 515, type: !2275)
!3825 = !DILocation(line: 515, column: 54, scope: !3821)
!3826 = !DILocalVariable(name: "master", arg: 2, scope: !3821, file: !3, line: 516, type: !64)
!3827 = !DILocation(line: 516, column: 26, scope: !3821)
!3828 = !DILocalVariable(name: "pparts", arg: 3, scope: !3821, file: !3, line: 517, type: !3648)
!3829 = !DILocation(line: 517, column: 32, scope: !3821)
!3830 = !DILocalVariable(name: "data", arg: 4, scope: !3821, file: !3, line: 518, type: !2301)
!3831 = !DILocation(line: 518, column: 38, scope: !3821)
!3832 = !DILocalVariable(name: "ret", scope: !3821, file: !3, line: 520, type: !98)
!3833 = !DILocation(line: 520, column: 6, scope: !3821)
!3834 = !DILocation(line: 522, column: 10, scope: !3821)
!3835 = !DILocation(line: 522, column: 18, scope: !3821)
!3836 = !DILocation(line: 522, column: 28, scope: !3821)
!3837 = !DILocation(line: 522, column: 37, scope: !3821)
!3838 = !DILocation(line: 522, column: 45, scope: !3821)
!3839 = !DILocation(line: 522, column: 52, scope: !3821)
!3840 = !DILocation(line: 522, column: 8, scope: !3821)
!3841 = !DILocation(line: 522, column: 6, scope: !3821)
!3842 = !DILocation(line: 523, column: 2, scope: !3843)
!3843 = distinct !DILexicalBlock(scope: !3844, file: !3, line: 523, column: 2)
!3844 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 523, column: 2)
!3845 = !DILocation(line: 523, column: 2, scope: !3844)
!3846 = !DILocation(line: 524, column: 6, scope: !3847)
!3847 = distinct !DILexicalBlock(scope: !3821, file: !3, line: 524, column: 6)
!3848 = !DILocation(line: 524, column: 10, scope: !3847)
!3849 = !DILocation(line: 524, column: 6, scope: !3821)
!3850 = !DILocation(line: 525, column: 10, scope: !3847)
!3851 = !DILocation(line: 525, column: 3, scope: !3847)
!3852 = !DILocation(line: 527, column: 2, scope: !3821)
!3853 = !DILocation(line: 530, column: 21, scope: !3821)
!3854 = !DILocation(line: 530, column: 2, scope: !3821)
!3855 = !DILocation(line: 530, column: 10, scope: !3821)
!3856 = !DILocation(line: 530, column: 19, scope: !3821)
!3857 = !DILocation(line: 531, column: 19, scope: !3821)
!3858 = !DILocation(line: 531, column: 2, scope: !3821)
!3859 = !DILocation(line: 531, column: 10, scope: !3821)
!3860 = !DILocation(line: 531, column: 17, scope: !3821)
!3861 = !DILocation(line: 533, column: 9, scope: !3821)
!3862 = !DILocation(line: 533, column: 2, scope: !3821)
!3863 = !DILocation(line: 534, column: 1, scope: !3821)
!3864 = distinct !DISubprogram(name: "mtd_part_parser_put", scope: !3, file: !3, line: 461, type: !3865, scopeLine: 462, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3865 = !DISubroutineType(types: !3866)
!3866 = !{null, !3460}
!3867 = !DILocalVariable(name: "p", arg: 1, scope: !3864, file: !3, line: 461, type: !3460)
!3868 = !DILocation(line: 461, column: 70, scope: !3864)
!3869 = !DILocation(line: 463, column: 13, scope: !3864)
!3870 = !DILocation(line: 463, column: 16, scope: !3864)
!3871 = !DILocation(line: 463, column: 2, scope: !3864)
!3872 = !DILocation(line: 464, column: 1, scope: !3864)
!3873 = distinct !DISubprogram(name: "mtd_part_parser_cleanup", scope: !3, file: !3, line: 695, type: !3874, scopeLine: 696, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3874 = !DISubroutineType(types: !3875)
!3875 = !{null, !3648}
!3876 = !DILocalVariable(name: "parts", arg: 1, scope: !3873, file: !3, line: 695, type: !3648)
!3877 = !DILocation(line: 695, column: 53, scope: !3873)
!3878 = !DILocalVariable(name: "parser", scope: !3873, file: !3, line: 697, type: !3460)
!3879 = !DILocation(line: 697, column: 32, scope: !3873)
!3880 = !DILocation(line: 699, column: 7, scope: !3881)
!3881 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 699, column: 6)
!3882 = !DILocation(line: 699, column: 6, scope: !3873)
!3883 = !DILocation(line: 700, column: 3, scope: !3881)
!3884 = !DILocation(line: 702, column: 11, scope: !3873)
!3885 = !DILocation(line: 702, column: 18, scope: !3873)
!3886 = !DILocation(line: 702, column: 9, scope: !3873)
!3887 = !DILocation(line: 703, column: 6, scope: !3888)
!3888 = distinct !DILexicalBlock(scope: !3873, file: !3, line: 703, column: 6)
!3889 = !DILocation(line: 703, column: 6, scope: !3873)
!3890 = !DILocation(line: 704, column: 7, scope: !3891)
!3891 = distinct !DILexicalBlock(scope: !3892, file: !3, line: 704, column: 7)
!3892 = distinct !DILexicalBlock(scope: !3888, file: !3, line: 703, column: 14)
!3893 = !DILocation(line: 704, column: 15, scope: !3891)
!3894 = !DILocation(line: 704, column: 7, scope: !3892)
!3895 = !DILocation(line: 705, column: 4, scope: !3891)
!3896 = !DILocation(line: 705, column: 12, scope: !3891)
!3897 = !DILocation(line: 705, column: 20, scope: !3891)
!3898 = !DILocation(line: 705, column: 27, scope: !3891)
!3899 = !DILocation(line: 705, column: 34, scope: !3891)
!3900 = !DILocation(line: 705, column: 41, scope: !3891)
!3901 = !DILocation(line: 707, column: 23, scope: !3892)
!3902 = !DILocation(line: 707, column: 3, scope: !3892)
!3903 = !DILocation(line: 708, column: 2, scope: !3892)
!3904 = !DILocation(line: 709, column: 1, scope: !3873)
!3905 = distinct !DISubprogram(name: "mtd_get_device_size", scope: !3, file: !3, line: 712, type: !3906, scopeLine: 713, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3906 = !DISubroutineType(types: !3907)
!3907 = !{!79, !2475}
!3908 = !DILocalVariable(name: "mtd", arg: 1, scope: !3905, file: !3, line: 712, type: !2475)
!3909 = !DILocation(line: 712, column: 53, scope: !3905)
!3910 = !DILocalVariable(name: "master", scope: !3905, file: !3, line: 714, type: !64)
!3911 = !DILocation(line: 714, column: 19, scope: !3905)
!3912 = !DILocation(line: 714, column: 62, scope: !3905)
!3913 = !DILocation(line: 714, column: 28, scope: !3905)
!3914 = !DILocation(line: 716, column: 9, scope: !3905)
!3915 = !DILocation(line: 716, column: 17, scope: !3905)
!3916 = !DILocation(line: 716, column: 2, scope: !3905)
!3917 = distinct !DISubprogram(name: "kzalloc", scope: !51, file: !51, line: 662, type: !3918, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3918 = !DISubroutineType(types: !3919)
!3919 = !{!63, !166, !1639}
!3920 = !DILocalVariable(name: "s", arg: 1, scope: !3921, file: !51, line: 445, type: !1228)
!3921 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !3922, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3922 = !DISubroutineType(types: !3923)
!3923 = !{!63, !1228, !1639, !166}
!3924 = !DILocation(line: 445, column: 72, scope: !3921, inlinedAt: !3925)
!3925 = distinct !DILocation(line: 552, column: 10, scope: !3926, inlinedAt: !3929)
!3926 = distinct !DILexicalBlock(scope: !3927, file: !51, line: 540, column: 34)
!3927 = distinct !DILexicalBlock(scope: !3928, file: !51, line: 540, column: 6)
!3928 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !3918, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3929 = distinct !DILocation(line: 664, column: 9, scope: !3917)
!3930 = !DILocalVariable(name: "flags", arg: 2, scope: !3921, file: !51, line: 446, type: !1639)
!3931 = !DILocation(line: 446, column: 9, scope: !3921, inlinedAt: !3925)
!3932 = !DILocalVariable(name: "size", arg: 3, scope: !3921, file: !51, line: 446, type: !166)
!3933 = !DILocation(line: 446, column: 23, scope: !3921, inlinedAt: !3925)
!3934 = !DILocalVariable(name: "ret", scope: !3921, file: !51, line: 448, type: !63)
!3935 = !DILocation(line: 448, column: 8, scope: !3921, inlinedAt: !3925)
!3936 = !DILocalVariable(name: "flags", arg: 1, scope: !3937, file: !51, line: 318, type: !1639)
!3937 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !3938, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3938 = !DISubroutineType(types: !3939)
!3939 = !{!50, !1639}
!3940 = !DILocation(line: 318, column: 67, scope: !3937, inlinedAt: !3941)
!3941 = distinct !DILocation(line: 553, column: 20, scope: !3926, inlinedAt: !3929)
!3942 = !DILocalVariable(name: "size", arg: 1, scope: !3943, file: !51, line: 346, type: !166)
!3943 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !3944, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3944 = !DISubroutineType(types: !3945)
!3945 = !{!7, !166}
!3946 = !DILocation(line: 346, column: 58, scope: !3943, inlinedAt: !3947)
!3947 = distinct !DILocation(line: 547, column: 11, scope: !3926, inlinedAt: !3929)
!3948 = !DILocalVariable(name: "size", arg: 1, scope: !3949, file: !51, line: 472, type: !166)
!3949 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !3950, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3950 = !DISubroutineType(types: !3951)
!3951 = !{!63, !166, !1639, !7}
!3952 = !DILocation(line: 472, column: 28, scope: !3949, inlinedAt: !3953)
!3953 = distinct !DILocation(line: 481, column: 9, scope: !3954, inlinedAt: !3955)
!3954 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !3918, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!3955 = distinct !DILocation(line: 545, column: 11, scope: !3956, inlinedAt: !3929)
!3956 = distinct !DILexicalBlock(scope: !3926, file: !51, line: 544, column: 7)
!3957 = !DILocalVariable(name: "flags", arg: 2, scope: !3949, file: !51, line: 472, type: !1639)
!3958 = !DILocation(line: 472, column: 40, scope: !3949, inlinedAt: !3953)
!3959 = !DILocalVariable(name: "order", arg: 3, scope: !3949, file: !51, line: 472, type: !7)
!3960 = !DILocation(line: 472, column: 60, scope: !3949, inlinedAt: !3953)
!3961 = !DILocalVariable(name: "size", arg: 1, scope: !3954, file: !51, line: 478, type: !166)
!3962 = !DILocation(line: 478, column: 51, scope: !3954, inlinedAt: !3955)
!3963 = !DILocalVariable(name: "flags", arg: 2, scope: !3954, file: !51, line: 478, type: !1639)
!3964 = !DILocation(line: 478, column: 63, scope: !3954, inlinedAt: !3955)
!3965 = !DILocalVariable(name: "order", scope: !3954, file: !51, line: 480, type: !7)
!3966 = !DILocation(line: 480, column: 15, scope: !3954, inlinedAt: !3955)
!3967 = !DILocalVariable(name: "size", arg: 1, scope: !3928, file: !51, line: 538, type: !166)
!3968 = !DILocation(line: 538, column: 45, scope: !3928, inlinedAt: !3929)
!3969 = !DILocalVariable(name: "flags", arg: 2, scope: !3928, file: !51, line: 538, type: !1639)
!3970 = !DILocation(line: 538, column: 57, scope: !3928, inlinedAt: !3929)
!3971 = !DILocalVariable(name: "index", scope: !3926, file: !51, line: 542, type: !7)
!3972 = !DILocation(line: 542, column: 16, scope: !3926, inlinedAt: !3929)
!3973 = !DILocalVariable(name: "size", arg: 1, scope: !3917, file: !51, line: 662, type: !166)
!3974 = !DILocation(line: 662, column: 36, scope: !3917)
!3975 = !DILocalVariable(name: "flags", arg: 2, scope: !3917, file: !51, line: 662, type: !1639)
!3976 = !DILocation(line: 662, column: 48, scope: !3917)
!3977 = !DILocation(line: 664, column: 17, scope: !3917)
!3978 = !DILocation(line: 664, column: 23, scope: !3917)
!3979 = !DILocation(line: 664, column: 29, scope: !3917)
!3980 = !DILocation(line: 540, column: 27, scope: !3927, inlinedAt: !3929)
!3981 = !DILocation(line: 540, column: 6, scope: !3927, inlinedAt: !3929)
!3982 = !DILocation(line: 540, column: 6, scope: !3928, inlinedAt: !3929)
!3983 = !DILocation(line: 544, column: 7, scope: !3956, inlinedAt: !3929)
!3984 = !DILocation(line: 544, column: 12, scope: !3956, inlinedAt: !3929)
!3985 = !DILocation(line: 544, column: 7, scope: !3926, inlinedAt: !3929)
!3986 = !DILocation(line: 545, column: 25, scope: !3956, inlinedAt: !3929)
!3987 = !DILocation(line: 545, column: 31, scope: !3956, inlinedAt: !3929)
!3988 = !DILocation(line: 480, column: 33, scope: !3954, inlinedAt: !3955)
!3989 = !DILocation(line: 480, column: 23, scope: !3954, inlinedAt: !3955)
!3990 = !DILocation(line: 481, column: 29, scope: !3954, inlinedAt: !3955)
!3991 = !DILocation(line: 481, column: 35, scope: !3954, inlinedAt: !3955)
!3992 = !DILocation(line: 481, column: 42, scope: !3954, inlinedAt: !3955)
!3993 = !DILocation(line: 474, column: 23, scope: !3949, inlinedAt: !3953)
!3994 = !DILocation(line: 474, column: 29, scope: !3949, inlinedAt: !3953)
!3995 = !DILocation(line: 474, column: 36, scope: !3949, inlinedAt: !3953)
!3996 = !DILocation(line: 474, column: 9, scope: !3949, inlinedAt: !3953)
!3997 = !DILocation(line: 545, column: 4, scope: !3956, inlinedAt: !3929)
!3998 = !DILocation(line: 547, column: 25, scope: !3926, inlinedAt: !3929)
!3999 = !DILocation(line: 348, column: 7, scope: !4000, inlinedAt: !3947)
!4000 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 348, column: 6)
!4001 = !DILocation(line: 348, column: 6, scope: !3943, inlinedAt: !3947)
!4002 = !DILocation(line: 349, column: 3, scope: !4000, inlinedAt: !3947)
!4003 = !DILocation(line: 351, column: 6, scope: !4004, inlinedAt: !3947)
!4004 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 351, column: 6)
!4005 = !DILocation(line: 351, column: 11, scope: !4004, inlinedAt: !3947)
!4006 = !DILocation(line: 351, column: 6, scope: !3943, inlinedAt: !3947)
!4007 = !DILocation(line: 352, column: 3, scope: !4004, inlinedAt: !3947)
!4008 = !DILocation(line: 354, column: 32, scope: !4009, inlinedAt: !3947)
!4009 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 354, column: 6)
!4010 = !DILocation(line: 354, column: 37, scope: !4009, inlinedAt: !3947)
!4011 = !DILocation(line: 354, column: 42, scope: !4009, inlinedAt: !3947)
!4012 = !DILocation(line: 354, column: 45, scope: !4009, inlinedAt: !3947)
!4013 = !DILocation(line: 354, column: 50, scope: !4009, inlinedAt: !3947)
!4014 = !DILocation(line: 354, column: 6, scope: !3943, inlinedAt: !3947)
!4015 = !DILocation(line: 355, column: 3, scope: !4009, inlinedAt: !3947)
!4016 = !DILocation(line: 356, column: 32, scope: !4017, inlinedAt: !3947)
!4017 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 356, column: 6)
!4018 = !DILocation(line: 356, column: 37, scope: !4017, inlinedAt: !3947)
!4019 = !DILocation(line: 356, column: 43, scope: !4017, inlinedAt: !3947)
!4020 = !DILocation(line: 356, column: 46, scope: !4017, inlinedAt: !3947)
!4021 = !DILocation(line: 356, column: 51, scope: !4017, inlinedAt: !3947)
!4022 = !DILocation(line: 356, column: 6, scope: !3943, inlinedAt: !3947)
!4023 = !DILocation(line: 357, column: 3, scope: !4017, inlinedAt: !3947)
!4024 = !DILocation(line: 358, column: 6, scope: !4025, inlinedAt: !3947)
!4025 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 358, column: 6)
!4026 = !DILocation(line: 358, column: 11, scope: !4025, inlinedAt: !3947)
!4027 = !DILocation(line: 358, column: 6, scope: !3943, inlinedAt: !3947)
!4028 = !DILocation(line: 358, column: 26, scope: !4025, inlinedAt: !3947)
!4029 = !DILocation(line: 359, column: 6, scope: !4030, inlinedAt: !3947)
!4030 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 359, column: 6)
!4031 = !DILocation(line: 359, column: 11, scope: !4030, inlinedAt: !3947)
!4032 = !DILocation(line: 359, column: 6, scope: !3943, inlinedAt: !3947)
!4033 = !DILocation(line: 359, column: 26, scope: !4030, inlinedAt: !3947)
!4034 = !DILocation(line: 360, column: 6, scope: !4035, inlinedAt: !3947)
!4035 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 360, column: 6)
!4036 = !DILocation(line: 360, column: 11, scope: !4035, inlinedAt: !3947)
!4037 = !DILocation(line: 360, column: 6, scope: !3943, inlinedAt: !3947)
!4038 = !DILocation(line: 360, column: 26, scope: !4035, inlinedAt: !3947)
!4039 = !DILocation(line: 361, column: 6, scope: !4040, inlinedAt: !3947)
!4040 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 361, column: 6)
!4041 = !DILocation(line: 361, column: 11, scope: !4040, inlinedAt: !3947)
!4042 = !DILocation(line: 361, column: 6, scope: !3943, inlinedAt: !3947)
!4043 = !DILocation(line: 361, column: 26, scope: !4040, inlinedAt: !3947)
!4044 = !DILocation(line: 362, column: 6, scope: !4045, inlinedAt: !3947)
!4045 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 362, column: 6)
!4046 = !DILocation(line: 362, column: 11, scope: !4045, inlinedAt: !3947)
!4047 = !DILocation(line: 362, column: 6, scope: !3943, inlinedAt: !3947)
!4048 = !DILocation(line: 362, column: 26, scope: !4045, inlinedAt: !3947)
!4049 = !DILocation(line: 363, column: 6, scope: !4050, inlinedAt: !3947)
!4050 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 363, column: 6)
!4051 = !DILocation(line: 363, column: 11, scope: !4050, inlinedAt: !3947)
!4052 = !DILocation(line: 363, column: 6, scope: !3943, inlinedAt: !3947)
!4053 = !DILocation(line: 363, column: 26, scope: !4050, inlinedAt: !3947)
!4054 = !DILocation(line: 364, column: 6, scope: !4055, inlinedAt: !3947)
!4055 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 364, column: 6)
!4056 = !DILocation(line: 364, column: 11, scope: !4055, inlinedAt: !3947)
!4057 = !DILocation(line: 364, column: 6, scope: !3943, inlinedAt: !3947)
!4058 = !DILocation(line: 364, column: 26, scope: !4055, inlinedAt: !3947)
!4059 = !DILocation(line: 365, column: 6, scope: !4060, inlinedAt: !3947)
!4060 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 365, column: 6)
!4061 = !DILocation(line: 365, column: 11, scope: !4060, inlinedAt: !3947)
!4062 = !DILocation(line: 365, column: 6, scope: !3943, inlinedAt: !3947)
!4063 = !DILocation(line: 365, column: 26, scope: !4060, inlinedAt: !3947)
!4064 = !DILocation(line: 366, column: 6, scope: !4065, inlinedAt: !3947)
!4065 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 366, column: 6)
!4066 = !DILocation(line: 366, column: 11, scope: !4065, inlinedAt: !3947)
!4067 = !DILocation(line: 366, column: 6, scope: !3943, inlinedAt: !3947)
!4068 = !DILocation(line: 366, column: 26, scope: !4065, inlinedAt: !3947)
!4069 = !DILocation(line: 367, column: 6, scope: !4070, inlinedAt: !3947)
!4070 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 367, column: 6)
!4071 = !DILocation(line: 367, column: 11, scope: !4070, inlinedAt: !3947)
!4072 = !DILocation(line: 367, column: 6, scope: !3943, inlinedAt: !3947)
!4073 = !DILocation(line: 367, column: 26, scope: !4070, inlinedAt: !3947)
!4074 = !DILocation(line: 368, column: 6, scope: !4075, inlinedAt: !3947)
!4075 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 368, column: 6)
!4076 = !DILocation(line: 368, column: 11, scope: !4075, inlinedAt: !3947)
!4077 = !DILocation(line: 368, column: 6, scope: !3943, inlinedAt: !3947)
!4078 = !DILocation(line: 368, column: 26, scope: !4075, inlinedAt: !3947)
!4079 = !DILocation(line: 369, column: 6, scope: !4080, inlinedAt: !3947)
!4080 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 369, column: 6)
!4081 = !DILocation(line: 369, column: 11, scope: !4080, inlinedAt: !3947)
!4082 = !DILocation(line: 369, column: 6, scope: !3943, inlinedAt: !3947)
!4083 = !DILocation(line: 369, column: 26, scope: !4080, inlinedAt: !3947)
!4084 = !DILocation(line: 370, column: 6, scope: !4085, inlinedAt: !3947)
!4085 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 370, column: 6)
!4086 = !DILocation(line: 370, column: 11, scope: !4085, inlinedAt: !3947)
!4087 = !DILocation(line: 370, column: 6, scope: !3943, inlinedAt: !3947)
!4088 = !DILocation(line: 370, column: 26, scope: !4085, inlinedAt: !3947)
!4089 = !DILocation(line: 371, column: 6, scope: !4090, inlinedAt: !3947)
!4090 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 371, column: 6)
!4091 = !DILocation(line: 371, column: 11, scope: !4090, inlinedAt: !3947)
!4092 = !DILocation(line: 371, column: 6, scope: !3943, inlinedAt: !3947)
!4093 = !DILocation(line: 371, column: 26, scope: !4090, inlinedAt: !3947)
!4094 = !DILocation(line: 372, column: 6, scope: !4095, inlinedAt: !3947)
!4095 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 372, column: 6)
!4096 = !DILocation(line: 372, column: 11, scope: !4095, inlinedAt: !3947)
!4097 = !DILocation(line: 372, column: 6, scope: !3943, inlinedAt: !3947)
!4098 = !DILocation(line: 372, column: 26, scope: !4095, inlinedAt: !3947)
!4099 = !DILocation(line: 373, column: 6, scope: !4100, inlinedAt: !3947)
!4100 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 373, column: 6)
!4101 = !DILocation(line: 373, column: 11, scope: !4100, inlinedAt: !3947)
!4102 = !DILocation(line: 373, column: 6, scope: !3943, inlinedAt: !3947)
!4103 = !DILocation(line: 373, column: 26, scope: !4100, inlinedAt: !3947)
!4104 = !DILocation(line: 374, column: 6, scope: !4105, inlinedAt: !3947)
!4105 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 374, column: 6)
!4106 = !DILocation(line: 374, column: 11, scope: !4105, inlinedAt: !3947)
!4107 = !DILocation(line: 374, column: 6, scope: !3943, inlinedAt: !3947)
!4108 = !DILocation(line: 374, column: 26, scope: !4105, inlinedAt: !3947)
!4109 = !DILocation(line: 375, column: 6, scope: !4110, inlinedAt: !3947)
!4110 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 375, column: 6)
!4111 = !DILocation(line: 375, column: 11, scope: !4110, inlinedAt: !3947)
!4112 = !DILocation(line: 375, column: 6, scope: !3943, inlinedAt: !3947)
!4113 = !DILocation(line: 375, column: 27, scope: !4110, inlinedAt: !3947)
!4114 = !DILocation(line: 376, column: 6, scope: !4115, inlinedAt: !3947)
!4115 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 376, column: 6)
!4116 = !DILocation(line: 376, column: 11, scope: !4115, inlinedAt: !3947)
!4117 = !DILocation(line: 376, column: 6, scope: !3943, inlinedAt: !3947)
!4118 = !DILocation(line: 376, column: 32, scope: !4115, inlinedAt: !3947)
!4119 = !DILocation(line: 377, column: 6, scope: !4120, inlinedAt: !3947)
!4120 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 377, column: 6)
!4121 = !DILocation(line: 377, column: 11, scope: !4120, inlinedAt: !3947)
!4122 = !DILocation(line: 377, column: 6, scope: !3943, inlinedAt: !3947)
!4123 = !DILocation(line: 377, column: 32, scope: !4120, inlinedAt: !3947)
!4124 = !DILocation(line: 378, column: 6, scope: !4125, inlinedAt: !3947)
!4125 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 378, column: 6)
!4126 = !DILocation(line: 378, column: 11, scope: !4125, inlinedAt: !3947)
!4127 = !DILocation(line: 378, column: 6, scope: !3943, inlinedAt: !3947)
!4128 = !DILocation(line: 378, column: 32, scope: !4125, inlinedAt: !3947)
!4129 = !DILocation(line: 379, column: 6, scope: !4130, inlinedAt: !3947)
!4130 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 379, column: 6)
!4131 = !DILocation(line: 379, column: 11, scope: !4130, inlinedAt: !3947)
!4132 = !DILocation(line: 379, column: 6, scope: !3943, inlinedAt: !3947)
!4133 = !DILocation(line: 379, column: 33, scope: !4130, inlinedAt: !3947)
!4134 = !DILocation(line: 380, column: 6, scope: !4135, inlinedAt: !3947)
!4135 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 380, column: 6)
!4136 = !DILocation(line: 380, column: 11, scope: !4135, inlinedAt: !3947)
!4137 = !DILocation(line: 380, column: 6, scope: !3943, inlinedAt: !3947)
!4138 = !DILocation(line: 380, column: 33, scope: !4135, inlinedAt: !3947)
!4139 = !DILocation(line: 381, column: 6, scope: !4140, inlinedAt: !3947)
!4140 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 381, column: 6)
!4141 = !DILocation(line: 381, column: 11, scope: !4140, inlinedAt: !3947)
!4142 = !DILocation(line: 381, column: 6, scope: !3943, inlinedAt: !3947)
!4143 = !DILocation(line: 381, column: 33, scope: !4140, inlinedAt: !3947)
!4144 = !DILocation(line: 382, column: 2, scope: !4145, inlinedAt: !3947)
!4145 = distinct !DILexicalBlock(scope: !4146, file: !51, line: 382, column: 2)
!4146 = distinct !DILexicalBlock(scope: !3943, file: !51, line: 382, column: 2)
!4147 = !{i32 -2144228642, i32 -2144228613, i32 -2144228567, i32 -2144228509, i32 -2144228455, i32 -2144228401, i32 -2144228346, i32 -2144228315}
!4148 = !DILocation(line: 382, column: 2, scope: !4149, inlinedAt: !3947)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !51, line: 382, column: 2)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !51, line: 382, column: 2)
!4151 = !{i32 -2144227872, i32 -2144227865, i32 -2144227811, i32 -2144227780, i32 -2144227750}
!4152 = !DILocation(line: 382, column: 2, scope: !4150, inlinedAt: !3947)
!4153 = !DILocation(line: 386, column: 1, scope: !3943, inlinedAt: !3947)
!4154 = !DILocation(line: 547, column: 9, scope: !3926, inlinedAt: !3929)
!4155 = !DILocation(line: 549, column: 8, scope: !4156, inlinedAt: !3929)
!4156 = distinct !DILexicalBlock(scope: !3926, file: !51, line: 549, column: 7)
!4157 = !DILocation(line: 549, column: 7, scope: !3926, inlinedAt: !3929)
!4158 = !DILocation(line: 550, column: 4, scope: !4156, inlinedAt: !3929)
!4159 = !DILocation(line: 553, column: 33, scope: !3926, inlinedAt: !3929)
!4160 = !DILocation(line: 325, column: 6, scope: !4161, inlinedAt: !3941)
!4161 = distinct !DILexicalBlock(scope: !3937, file: !51, line: 325, column: 6)
!4162 = !DILocation(line: 325, column: 6, scope: !3937, inlinedAt: !3941)
!4163 = !DILocation(line: 326, column: 3, scope: !4161, inlinedAt: !3941)
!4164 = !DILocation(line: 332, column: 9, scope: !3937, inlinedAt: !3941)
!4165 = !DILocation(line: 332, column: 15, scope: !3937, inlinedAt: !3941)
!4166 = !DILocation(line: 332, column: 2, scope: !3937, inlinedAt: !3941)
!4167 = !DILocation(line: 336, column: 1, scope: !3937, inlinedAt: !3941)
!4168 = !DILocation(line: 553, column: 5, scope: !3926, inlinedAt: !3929)
!4169 = !DILocation(line: 553, column: 41, scope: !3926, inlinedAt: !3929)
!4170 = !DILocation(line: 554, column: 5, scope: !3926, inlinedAt: !3929)
!4171 = !DILocation(line: 554, column: 12, scope: !3926, inlinedAt: !3929)
!4172 = !DILocation(line: 448, column: 31, scope: !3921, inlinedAt: !3925)
!4173 = !DILocation(line: 448, column: 34, scope: !3921, inlinedAt: !3925)
!4174 = !DILocation(line: 448, column: 14, scope: !3921, inlinedAt: !3925)
!4175 = !DILocation(line: 450, column: 22, scope: !3921, inlinedAt: !3925)
!4176 = !DILocation(line: 450, column: 25, scope: !3921, inlinedAt: !3925)
!4177 = !DILocation(line: 450, column: 30, scope: !3921, inlinedAt: !3925)
!4178 = !DILocation(line: 450, column: 36, scope: !3921, inlinedAt: !3925)
!4179 = !DILocation(line: 450, column: 8, scope: !3921, inlinedAt: !3925)
!4180 = !DILocation(line: 450, column: 6, scope: !3921, inlinedAt: !3925)
!4181 = !DILocation(line: 451, column: 9, scope: !3921, inlinedAt: !3925)
!4182 = !DILocation(line: 552, column: 3, scope: !3926, inlinedAt: !3929)
!4183 = !DILocation(line: 557, column: 19, scope: !3928, inlinedAt: !3929)
!4184 = !DILocation(line: 557, column: 25, scope: !3928, inlinedAt: !3929)
!4185 = !DILocation(line: 557, column: 9, scope: !3928, inlinedAt: !3929)
!4186 = !DILocation(line: 557, column: 2, scope: !3928, inlinedAt: !3929)
!4187 = !DILocation(line: 558, column: 1, scope: !3928, inlinedAt: !3929)
!4188 = !DILocation(line: 664, column: 2, scope: !3917)
!4189 = distinct !DISubprogram(name: "ERR_PTR", scope: !3062, file: !3062, line: 24, type: !4190, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4190 = !DISubroutineType(types: !4191)
!4191 = !{!63, !387}
!4192 = !DILocalVariable(name: "error", arg: 1, scope: !4189, file: !3062, line: 24, type: !387)
!4193 = !DILocation(line: 24, column: 48, scope: !4189)
!4194 = !DILocation(line: 26, column: 18, scope: !4189)
!4195 = !DILocation(line: 26, column: 9, scope: !4189)
!4196 = !DILocation(line: 26, column: 2, scope: !4189)
!4197 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3078, file: !3078, line: 33, type: !3108, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4198 = !DILocalVariable(name: "list", arg: 1, scope: !4197, file: !3078, line: 33, type: !302)
!4199 = !DILocation(line: 33, column: 53, scope: !4197)
!4200 = !DILocation(line: 35, column: 2, scope: !4197)
!4201 = !DILocation(line: 35, column: 2, scope: !4202)
!4202 = distinct !DILexicalBlock(scope: !4197, file: !3078, line: 35, column: 2)
!4203 = !DILocation(line: 35, column: 2, scope: !4204)
!4204 = distinct !DILexicalBlock(scope: !4202, file: !3078, line: 35, column: 2)
!4205 = !DILocation(line: 35, column: 2, scope: !4206)
!4206 = distinct !DILexicalBlock(scope: !4202, file: !3078, line: 35, column: 2)
!4207 = !DILocation(line: 36, column: 15, scope: !4197)
!4208 = !DILocation(line: 36, column: 2, scope: !4197)
!4209 = !DILocation(line: 36, column: 8, scope: !4197)
!4210 = !DILocation(line: 36, column: 13, scope: !4197)
!4211 = !DILocation(line: 37, column: 1, scope: !4197)
!4212 = distinct !DISubprogram(name: "mtd_get_master_ofs", scope: !66, file: !66, line: 405, type: !4213, scopeLine: 406, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4213 = !DISubroutineType(types: !4214)
!4214 = !{!80, !64, !80}
!4215 = !DILocalVariable(name: "mtd", arg: 1, scope: !4212, file: !66, line: 405, type: !64)
!4216 = !DILocation(line: 405, column: 55, scope: !4212)
!4217 = !DILocalVariable(name: "ofs", arg: 2, scope: !4212, file: !66, line: 405, type: !80)
!4218 = !DILocation(line: 405, column: 64, scope: !4212)
!4219 = !DILocation(line: 407, column: 2, scope: !4212)
!4220 = !DILocation(line: 407, column: 9, scope: !4212)
!4221 = !DILocation(line: 407, column: 14, scope: !4212)
!4222 = !DILocation(line: 408, column: 10, scope: !4223)
!4223 = distinct !DILexicalBlock(scope: !4212, file: !66, line: 407, column: 22)
!4224 = !DILocation(line: 408, column: 15, scope: !4223)
!4225 = !DILocation(line: 408, column: 20, scope: !4223)
!4226 = !DILocation(line: 408, column: 7, scope: !4223)
!4227 = !DILocation(line: 409, column: 9, scope: !4223)
!4228 = !DILocation(line: 409, column: 14, scope: !4223)
!4229 = !DILocation(line: 409, column: 7, scope: !4223)
!4230 = distinct !{!4230, !4219, !4231}
!4231 = !DILocation(line: 410, column: 2, scope: !4212)
!4232 = !DILocation(line: 412, column: 9, scope: !4212)
!4233 = !DILocation(line: 412, column: 2, scope: !4212)
!4234 = distinct !DISubprogram(name: "get_order", scope: !4235, file: !4235, line: 29, type: !4236, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4235 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!4236 = !DISubroutineType(types: !4237)
!4237 = !{!98, !147}
!4238 = !DILocalVariable(name: "x", arg: 1, scope: !4239, file: !4240, line: 366, type: !81)
!4239 = distinct !DISubprogram(name: "fls64", scope: !4240, file: !4240, line: 366, type: !4241, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4240 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!4241 = !DISubroutineType(types: !4242)
!4242 = !{!98, !81}
!4243 = !DILocation(line: 366, column: 40, scope: !4239, inlinedAt: !4244)
!4244 = distinct !DILocation(line: 46, column: 9, scope: !4234)
!4245 = !DILocalVariable(name: "bitpos", scope: !4239, file: !4240, line: 368, type: !98)
!4246 = !DILocation(line: 368, column: 6, scope: !4239, inlinedAt: !4244)
!4247 = !DILocalVariable(name: "size", arg: 1, scope: !4234, file: !4235, line: 29, type: !147)
!4248 = !DILocation(line: 29, column: 63, scope: !4234)
!4249 = !DILocation(line: 31, column: 27, scope: !4250)
!4250 = distinct !DILexicalBlock(scope: !4234, file: !4235, line: 31, column: 6)
!4251 = !DILocation(line: 31, column: 6, scope: !4250)
!4252 = !DILocation(line: 31, column: 6, scope: !4234)
!4253 = !DILocation(line: 32, column: 8, scope: !4254)
!4254 = distinct !DILexicalBlock(scope: !4255, file: !4235, line: 32, column: 7)
!4255 = distinct !DILexicalBlock(scope: !4250, file: !4235, line: 31, column: 34)
!4256 = !DILocation(line: 32, column: 7, scope: !4255)
!4257 = !DILocation(line: 33, column: 4, scope: !4254)
!4258 = !DILocation(line: 35, column: 7, scope: !4259)
!4259 = distinct !DILexicalBlock(scope: !4255, file: !4235, line: 35, column: 7)
!4260 = !DILocation(line: 35, column: 12, scope: !4259)
!4261 = !DILocation(line: 35, column: 7, scope: !4255)
!4262 = !DILocation(line: 36, column: 4, scope: !4259)
!4263 = !DILocation(line: 38, column: 10, scope: !4255)
!4264 = !DILocation(line: 38, column: 28, scope: !4255)
!4265 = !DILocation(line: 38, column: 41, scope: !4255)
!4266 = !DILocation(line: 38, column: 3, scope: !4255)
!4267 = !DILocation(line: 41, column: 6, scope: !4234)
!4268 = !DILocation(line: 42, column: 7, scope: !4234)
!4269 = !DILocation(line: 46, column: 15, scope: !4234)
!4270 = !DILocation(line: 374, column: 2, scope: !4239, inlinedAt: !4244)
!4271 = !DILocation(line: 376, column: 14, scope: !4239, inlinedAt: !4244)
!4272 = !{i32 315683}
!4273 = !DILocation(line: 377, column: 9, scope: !4239, inlinedAt: !4244)
!4274 = !DILocation(line: 377, column: 16, scope: !4239, inlinedAt: !4244)
!4275 = !DILocation(line: 46, column: 2, scope: !4234)
!4276 = !DILocation(line: 48, column: 1, scope: !4234)
!4277 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4278, file: !4278, line: 30, type: !4279, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4278 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4279 = !DISubroutineType(types: !4280)
!4280 = !{!98, !80}
!4281 = !DILocation(line: 366, column: 40, scope: !4239, inlinedAt: !4282)
!4282 = distinct !DILocation(line: 32, column: 9, scope: !4277)
!4283 = !DILocation(line: 368, column: 6, scope: !4239, inlinedAt: !4282)
!4284 = !DILocalVariable(name: "n", arg: 1, scope: !4277, file: !4278, line: 30, type: !80)
!4285 = !DILocation(line: 30, column: 21, scope: !4277)
!4286 = !DILocation(line: 32, column: 15, scope: !4277)
!4287 = !DILocation(line: 374, column: 2, scope: !4239, inlinedAt: !4282)
!4288 = !DILocation(line: 376, column: 14, scope: !4239, inlinedAt: !4282)
!4289 = !DILocation(line: 377, column: 9, scope: !4239, inlinedAt: !4282)
!4290 = !DILocation(line: 377, column: 16, scope: !4239, inlinedAt: !4282)
!4291 = !DILocation(line: 32, column: 18, scope: !4277)
!4292 = !DILocation(line: 32, column: 2, scope: !4277)
!4293 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1297, file: !1297, line: 137, type: !4294, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4294 = !DISubroutineType(types: !4295)
!4295 = !{!63, !1228, !1570, !166, !1639}
!4296 = !DILocalVariable(name: "s", arg: 1, scope: !4293, file: !1297, line: 137, type: !1228)
!4297 = !DILocation(line: 137, column: 54, scope: !4293)
!4298 = !DILocalVariable(name: "object", arg: 2, scope: !4293, file: !1297, line: 137, type: !1570)
!4299 = !DILocation(line: 137, column: 69, scope: !4293)
!4300 = !DILocalVariable(name: "size", arg: 3, scope: !4293, file: !1297, line: 138, type: !166)
!4301 = !DILocation(line: 138, column: 12, scope: !4293)
!4302 = !DILocalVariable(name: "flags", arg: 4, scope: !4293, file: !1297, line: 138, type: !1639)
!4303 = !DILocation(line: 138, column: 24, scope: !4293)
!4304 = !DILocation(line: 140, column: 17, scope: !4293)
!4305 = !DILocation(line: 140, column: 2, scope: !4293)
!4306 = distinct !DISubprogram(name: "__list_add", scope: !3078, file: !3078, line: 63, type: !4307, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4307 = !DISubroutineType(types: !4308)
!4308 = !{null, !302, !302, !302}
!4309 = !DILocalVariable(name: "new", arg: 1, scope: !4306, file: !3078, line: 63, type: !302)
!4310 = !DILocation(line: 63, column: 49, scope: !4306)
!4311 = !DILocalVariable(name: "prev", arg: 2, scope: !4306, file: !3078, line: 64, type: !302)
!4312 = !DILocation(line: 64, column: 28, scope: !4306)
!4313 = !DILocalVariable(name: "next", arg: 3, scope: !4306, file: !3078, line: 65, type: !302)
!4314 = !DILocation(line: 65, column: 28, scope: !4306)
!4315 = !DILocation(line: 67, column: 24, scope: !4316)
!4316 = distinct !DILexicalBlock(scope: !4306, file: !3078, line: 67, column: 6)
!4317 = !DILocation(line: 67, column: 29, scope: !4316)
!4318 = !DILocation(line: 67, column: 35, scope: !4316)
!4319 = !DILocation(line: 67, column: 7, scope: !4316)
!4320 = !DILocation(line: 67, column: 6, scope: !4306)
!4321 = !DILocation(line: 68, column: 3, scope: !4316)
!4322 = !DILocation(line: 70, column: 15, scope: !4306)
!4323 = !DILocation(line: 70, column: 2, scope: !4306)
!4324 = !DILocation(line: 70, column: 8, scope: !4306)
!4325 = !DILocation(line: 70, column: 13, scope: !4306)
!4326 = !DILocation(line: 71, column: 14, scope: !4306)
!4327 = !DILocation(line: 71, column: 2, scope: !4306)
!4328 = !DILocation(line: 71, column: 7, scope: !4306)
!4329 = !DILocation(line: 71, column: 12, scope: !4306)
!4330 = !DILocation(line: 72, column: 14, scope: !4306)
!4331 = !DILocation(line: 72, column: 2, scope: !4306)
!4332 = !DILocation(line: 72, column: 7, scope: !4306)
!4333 = !DILocation(line: 72, column: 12, scope: !4306)
!4334 = !DILocation(line: 73, column: 2, scope: !4306)
!4335 = !DILocation(line: 73, column: 2, scope: !4336)
!4336 = distinct !DILexicalBlock(scope: !4306, file: !3078, line: 73, column: 2)
!4337 = !DILocation(line: 73, column: 2, scope: !4338)
!4338 = distinct !DILexicalBlock(scope: !4336, file: !3078, line: 73, column: 2)
!4339 = !DILocation(line: 73, column: 2, scope: !4340)
!4340 = distinct !DILexicalBlock(scope: !4336, file: !3078, line: 73, column: 2)
!4341 = !DILocation(line: 74, column: 1, scope: !4306)
!4342 = distinct !DISubprogram(name: "__list_add_valid", scope: !3078, file: !3078, line: 45, type: !4343, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4343 = !DISubroutineType(types: !4344)
!4344 = !{!263, !302, !302, !302}
!4345 = !DILocalVariable(name: "new", arg: 1, scope: !4342, file: !3078, line: 45, type: !302)
!4346 = !DILocation(line: 45, column: 55, scope: !4342)
!4347 = !DILocalVariable(name: "prev", arg: 2, scope: !4342, file: !3078, line: 46, type: !302)
!4348 = !DILocation(line: 46, column: 23, scope: !4342)
!4349 = !DILocalVariable(name: "next", arg: 3, scope: !4342, file: !3078, line: 47, type: !302)
!4350 = !DILocation(line: 47, column: 23, scope: !4342)
!4351 = !DILocation(line: 49, column: 2, scope: !4342)
!4352 = distinct !DISubprogram(name: "mtd_partition_offset_show", scope: !3, file: !3, line: 215, type: !2322, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4353 = !DILocalVariable(name: "dev", arg: 1, scope: !4352, file: !3, line: 215, type: !1768)
!4354 = !DILocation(line: 215, column: 57, scope: !4352)
!4355 = !DILocalVariable(name: "attr", arg: 2, scope: !4352, file: !3, line: 216, type: !2324)
!4356 = !DILocation(line: 216, column: 28, scope: !4352)
!4357 = !DILocalVariable(name: "buf", arg: 3, scope: !4352, file: !3, line: 216, type: !353)
!4358 = !DILocation(line: 216, column: 40, scope: !4352)
!4359 = !DILocalVariable(name: "mtd", scope: !4352, file: !3, line: 218, type: !64)
!4360 = !DILocation(line: 218, column: 19, scope: !4352)
!4361 = !DILocation(line: 218, column: 41, scope: !4352)
!4362 = !DILocation(line: 218, column: 25, scope: !4352)
!4363 = !DILocation(line: 220, column: 18, scope: !4352)
!4364 = !DILocation(line: 220, column: 44, scope: !4352)
!4365 = !DILocation(line: 220, column: 49, scope: !4352)
!4366 = !DILocation(line: 220, column: 54, scope: !4352)
!4367 = !DILocation(line: 220, column: 9, scope: !4352)
!4368 = !DILocation(line: 220, column: 2, scope: !4352)
!4369 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !4370, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4370 = !DISubroutineType(types: !4371)
!4371 = !{!63, !2113}
!4372 = !DILocalVariable(name: "dev", arg: 1, scope: !4369, file: !30, line: 655, type: !2113)
!4373 = !DILocation(line: 655, column: 58, scope: !4369)
!4374 = !DILocation(line: 657, column: 9, scope: !4369)
!4375 = !DILocation(line: 657, column: 14, scope: !4369)
!4376 = !DILocation(line: 657, column: 2, scope: !4369)
!4377 = distinct !DISubprogram(name: "__list_del_entry", scope: !3078, file: !3078, line: 130, type: !3108, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4378 = !DILocalVariable(name: "entry", arg: 1, scope: !4377, file: !3078, line: 130, type: !302)
!4379 = !DILocation(line: 130, column: 55, scope: !4377)
!4380 = !DILocation(line: 132, column: 30, scope: !4381)
!4381 = distinct !DILexicalBlock(scope: !4377, file: !3078, line: 132, column: 6)
!4382 = !DILocation(line: 132, column: 7, scope: !4381)
!4383 = !DILocation(line: 132, column: 6, scope: !4377)
!4384 = !DILocation(line: 133, column: 3, scope: !4381)
!4385 = !DILocation(line: 135, column: 13, scope: !4377)
!4386 = !DILocation(line: 135, column: 20, scope: !4377)
!4387 = !DILocation(line: 135, column: 26, scope: !4377)
!4388 = !DILocation(line: 135, column: 33, scope: !4377)
!4389 = !DILocation(line: 135, column: 2, scope: !4377)
!4390 = !DILocation(line: 136, column: 1, scope: !4377)
!4391 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3078, file: !3078, line: 51, type: !4392, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4392 = !DISubroutineType(types: !4393)
!4393 = !{!263, !302}
!4394 = !DILocalVariable(name: "entry", arg: 1, scope: !4391, file: !3078, line: 51, type: !302)
!4395 = !DILocation(line: 51, column: 61, scope: !4391)
!4396 = !DILocation(line: 53, column: 2, scope: !4391)
!4397 = distinct !DISubprogram(name: "__list_del", scope: !3078, file: !3078, line: 110, type: !3079, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4398 = !DILocalVariable(name: "prev", arg: 1, scope: !4397, file: !3078, line: 110, type: !302)
!4399 = !DILocation(line: 110, column: 50, scope: !4397)
!4400 = !DILocalVariable(name: "next", arg: 2, scope: !4397, file: !3078, line: 110, type: !302)
!4401 = !DILocation(line: 110, column: 75, scope: !4397)
!4402 = !DILocation(line: 112, column: 15, scope: !4397)
!4403 = !DILocation(line: 112, column: 2, scope: !4397)
!4404 = !DILocation(line: 112, column: 8, scope: !4397)
!4405 = !DILocation(line: 112, column: 13, scope: !4397)
!4406 = !DILocation(line: 113, column: 2, scope: !4397)
!4407 = !DILocation(line: 113, column: 2, scope: !4408)
!4408 = distinct !DILexicalBlock(scope: !4397, file: !3078, line: 113, column: 2)
!4409 = !DILocation(line: 113, column: 2, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4408, file: !3078, line: 113, column: 2)
!4411 = !DILocation(line: 113, column: 2, scope: !4412)
!4412 = distinct !DILexicalBlock(scope: !4408, file: !3078, line: 113, column: 2)
!4413 = !DILocation(line: 114, column: 1, scope: !4397)
!4414 = distinct !DISubprogram(name: "mtd_has_partitions", scope: !66, file: !66, line: 420, type: !2473, scopeLine: 421, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4415 = !DILocalVariable(name: "mtd", arg: 1, scope: !4414, file: !66, line: 420, type: !2475)
!4416 = !DILocation(line: 420, column: 62, scope: !4414)
!4417 = !DILocation(line: 422, column: 22, scope: !4414)
!4418 = !DILocation(line: 422, column: 27, scope: !4414)
!4419 = !DILocation(line: 422, column: 10, scope: !4414)
!4420 = !DILocation(line: 422, column: 9, scope: !4414)
!4421 = !DILocation(line: 422, column: 2, scope: !4414)
!4422 = distinct !DISubprogram(name: "list_empty", scope: !3078, file: !3078, line: 280, type: !4423, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4423 = !DISubroutineType(types: !4424)
!4424 = !{!98, !4425}
!4425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4426, size: 64)
!4426 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!4427 = !DILocalVariable(name: "head", arg: 1, scope: !4422, file: !3078, line: 280, type: !4425)
!4428 = !DILocation(line: 280, column: 54, scope: !4422)
!4429 = !DILocation(line: 282, column: 9, scope: !4430)
!4430 = distinct !DILexicalBlock(scope: !4422, file: !3078, line: 282, column: 9)
!4431 = !DILocation(line: 282, column: 9, scope: !4432)
!4432 = distinct !DILexicalBlock(scope: !4430, file: !3078, line: 282, column: 9)
!4433 = !DILocation(line: 282, column: 34, scope: !4422)
!4434 = !DILocation(line: 282, column: 31, scope: !4422)
!4435 = !DILocation(line: 282, column: 2, scope: !4422)
!4436 = distinct !DISubprogram(name: "mtd_get_of_node", scope: !66, file: !66, line: 463, type: !4437, scopeLine: 464, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4437 = !DISubroutineType(types: !4438)
!4438 = !{!2076, !64}
!4439 = !DILocalVariable(name: "mtd", arg: 1, scope: !4436, file: !66, line: 463, type: !64)
!4440 = !DILocation(line: 463, column: 68, scope: !4436)
!4441 = !DILocation(line: 465, column: 22, scope: !4436)
!4442 = !DILocation(line: 465, column: 27, scope: !4436)
!4443 = !DILocation(line: 465, column: 9, scope: !4436)
!4444 = !DILocation(line: 465, column: 2, scope: !4436)
!4445 = distinct !DISubprogram(name: "of_node_get", scope: !2078, file: !2078, line: 125, type: !4446, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4446 = !DISubroutineType(types: !4447)
!4447 = !{!2076, !2076}
!4448 = !DILocalVariable(name: "node", arg: 1, scope: !4445, file: !2078, line: 125, type: !2076)
!4449 = !DILocation(line: 125, column: 67, scope: !4445)
!4450 = !DILocation(line: 127, column: 9, scope: !4445)
!4451 = !DILocation(line: 127, column: 2, scope: !4445)
!4452 = distinct !DISubprogram(name: "mtd_part_get_compatible_parser", scope: !3, file: !3, line: 545, type: !3765, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4453 = !DILocation(line: 392, column: 53, scope: !3569, inlinedAt: !4454)
!4454 = distinct !DILocation(line: 570, column: 2, scope: !4452)
!4455 = !DILocation(line: 352, column: 51, scope: !3577, inlinedAt: !4456)
!4456 = distinct !DILocation(line: 549, column: 2, scope: !4452)
!4457 = !DILocalVariable(name: "compat", arg: 1, scope: !4452, file: !3, line: 545, type: !94)
!4458 = !DILocation(line: 545, column: 75, scope: !4452)
!4459 = !DILocalVariable(name: "p", scope: !4452, file: !3, line: 547, type: !2275)
!4460 = !DILocation(line: 547, column: 26, scope: !4452)
!4461 = !DILocalVariable(name: "ret", scope: !4452, file: !3, line: 547, type: !2275)
!4462 = !DILocation(line: 547, column: 30, scope: !4452)
!4463 = !DILocation(line: 354, column: 2, scope: !3596, inlinedAt: !4456)
!4464 = !DILocation(line: 354, column: 2, scope: !3599, inlinedAt: !4456)
!4465 = !DILocalVariable(name: "__mptr", scope: !4466, file: !3, line: 551, type: !63)
!4466 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 551, column: 2)
!4467 = distinct !DILexicalBlock(scope: !4452, file: !3, line: 551, column: 2)
!4468 = !DILocation(line: 551, column: 2, scope: !4466)
!4469 = !DILocation(line: 551, column: 2, scope: !4470)
!4470 = distinct !DILexicalBlock(scope: !4466, file: !3, line: 551, column: 2)
!4471 = !DILocation(line: 551, column: 2, scope: !4467)
!4472 = !DILocation(line: 551, column: 2, scope: !4473)
!4473 = distinct !DILexicalBlock(scope: !4467, file: !3, line: 551, column: 2)
!4474 = !DILocalVariable(name: "matches", scope: !4475, file: !3, line: 552, type: !1849)
!4475 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 551, column: 46)
!4476 = !DILocation(line: 552, column: 30, scope: !4475)
!4477 = !DILocation(line: 554, column: 13, scope: !4475)
!4478 = !DILocation(line: 554, column: 16, scope: !4475)
!4479 = !DILocation(line: 554, column: 11, scope: !4475)
!4480 = !DILocation(line: 555, column: 8, scope: !4481)
!4481 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 555, column: 7)
!4482 = !DILocation(line: 555, column: 7, scope: !4475)
!4483 = !DILocation(line: 556, column: 4, scope: !4481)
!4484 = !DILocation(line: 558, column: 3, scope: !4475)
!4485 = !DILocation(line: 558, column: 10, scope: !4486)
!4486 = distinct !DILexicalBlock(scope: !4487, file: !3, line: 558, column: 3)
!4487 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 558, column: 3)
!4488 = !DILocation(line: 558, column: 19, scope: !4486)
!4489 = !DILocation(line: 558, column: 3, scope: !4487)
!4490 = !DILocation(line: 559, column: 16, scope: !4491)
!4491 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 559, column: 8)
!4492 = distinct !DILexicalBlock(scope: !4486, file: !3, line: 558, column: 45)
!4493 = !DILocation(line: 559, column: 25, scope: !4491)
!4494 = !DILocation(line: 559, column: 37, scope: !4491)
!4495 = !DILocation(line: 559, column: 9, scope: !4491)
!4496 = !DILocation(line: 559, column: 45, scope: !4491)
!4497 = !DILocation(line: 560, column: 23, scope: !4491)
!4498 = !DILocation(line: 560, column: 26, scope: !4491)
!4499 = !DILocation(line: 560, column: 8, scope: !4491)
!4500 = !DILocation(line: 559, column: 8, scope: !4492)
!4501 = !DILocation(line: 561, column: 11, scope: !4502)
!4502 = distinct !DILexicalBlock(scope: !4491, file: !3, line: 560, column: 34)
!4503 = !DILocation(line: 561, column: 9, scope: !4502)
!4504 = !DILocation(line: 562, column: 5, scope: !4502)
!4505 = !DILocation(line: 564, column: 3, scope: !4492)
!4506 = !DILocation(line: 558, column: 41, scope: !4486)
!4507 = !DILocation(line: 558, column: 3, scope: !4486)
!4508 = distinct !{!4508, !4489, !4509}
!4509 = !DILocation(line: 564, column: 3, scope: !4487)
!4510 = !DILocation(line: 566, column: 7, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4475, file: !3, line: 566, column: 7)
!4512 = !DILocation(line: 566, column: 7, scope: !4475)
!4513 = !DILocation(line: 567, column: 4, scope: !4511)
!4514 = !DILocation(line: 568, column: 2, scope: !4475)
!4515 = !DILocalVariable(name: "__mptr", scope: !4516, file: !3, line: 551, type: !63)
!4516 = distinct !DILexicalBlock(scope: !4473, file: !3, line: 551, column: 2)
!4517 = !DILocation(line: 551, column: 2, scope: !4516)
!4518 = !DILocation(line: 551, column: 2, scope: !4519)
!4519 = distinct !DILexicalBlock(scope: !4516, file: !3, line: 551, column: 2)
!4520 = distinct !{!4520, !4471, !4521}
!4521 = !DILocation(line: 568, column: 2, scope: !4467)
!4522 = !DILocation(line: 394, column: 2, scope: !3604, inlinedAt: !4454)
!4523 = !DILocation(line: 394, column: 2, scope: !3607, inlinedAt: !4454)
!4524 = !DILocation(line: 572, column: 9, scope: !4452)
!4525 = !DILocation(line: 572, column: 2, scope: !4452)
!4526 = distinct !DISubprogram(name: "of_node_put", scope: !2078, file: !2078, line: 129, type: !4527, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4527 = !DISubroutineType(types: !4528)
!4528 = !{null, !2076}
!4529 = !DILocalVariable(name: "node", arg: 1, scope: !4526, file: !2078, line: 129, type: !2076)
!4530 = !DILocation(line: 129, column: 52, scope: !4526)
!4531 = !DILocation(line: 129, column: 60, scope: !4526)
!4532 = distinct !DISubprogram(name: "dev_of_node", scope: !30, file: !30, line: 754, type: !4533, scopeLine: 755, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4533 = !DISubroutineType(types: !4534)
!4534 = !{!2076, !1768}
!4535 = !DILocalVariable(name: "dev", arg: 1, scope: !4532, file: !30, line: 754, type: !1768)
!4536 = !DILocation(line: 754, column: 62, scope: !4532)
!4537 = !DILocation(line: 756, column: 33, scope: !4538)
!4538 = distinct !DILexicalBlock(scope: !4532, file: !30, line: 756, column: 6)
!4539 = !DILocation(line: 756, column: 6, scope: !4532)
!4540 = !DILocation(line: 757, column: 3, scope: !4538)
!4541 = !DILocation(line: 758, column: 9, scope: !4532)
!4542 = !DILocation(line: 758, column: 14, scope: !4532)
!4543 = !DILocation(line: 758, column: 2, scope: !4532)
!4544 = !DILocation(line: 759, column: 1, scope: !4532)
!4545 = distinct !DISubprogram(name: "try_module_get", scope: !4546, file: !4546, line: 751, type: !4547, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4546 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!4547 = !DISubroutineType(types: !4548)
!4548 = !{!263, !287}
!4549 = !DILocalVariable(name: "module", arg: 1, scope: !4545, file: !4546, line: 751, type: !287)
!4550 = !DILocation(line: 751, column: 50, scope: !4545)
!4551 = !DILocation(line: 753, column: 2, scope: !4545)
!4552 = distinct !DISubprogram(name: "module_put", scope: !4546, file: !4546, line: 756, type: !4553, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !326)
!4553 = !DISubroutineType(types: !4554)
!4554 = !{null, !287}
!4555 = !DILocalVariable(name: "module", arg: 1, scope: !4552, file: !4546, line: 756, type: !287)
!4556 = !DILocation(line: 756, column: 46, scope: !4552)
!4557 = !DILocation(line: 758, column: 1, scope: !4552)
