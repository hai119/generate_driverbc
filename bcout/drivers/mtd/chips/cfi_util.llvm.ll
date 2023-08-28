; ModuleID = '../bcout/drivers/mtd/chips/cfi_util.llvm.bc'
source_filename = "drivers/mtd/chips/cfi_util.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kmem_cache = type opaque
%struct.map_info = type { i8*, i64, i64, i8*, i8*, i32, i32, i64 (%struct.map_info*, i64)*, void (%struct.map_info*, i8*, i64, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i64, i8*, i64)*, void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i32)*, i64, i64, i64, %struct.device_node*, i8*, %struct.mtd_chip_driver* }
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%struct.atomic64_t = type { i64 }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.hlist_node = type { %struct.hlist_node*, %struct.hlist_node** }
%struct.hrtimer = type { %struct.timerqueue_node, i64, i32 (%struct.hrtimer*)*, %struct.hrtimer_clock_base*, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.hrtimer_clock_base = type { %struct.hrtimer_cpu_base*, i32, i32, %struct.seqcount_raw_spinlock, %struct.hrtimer*, %struct.timerqueue_head, i64 ()*, i64 }
%struct.hrtimer_cpu_base = type { %struct.raw_spinlock, i32, i32, i32, i8, i64, %struct.hrtimer*, i64, %struct.hrtimer*, [16 x i8], [8 x %struct.hrtimer_clock_base] }
%struct.seqcount_raw_spinlock = type { %struct.seqcount }
%struct.seqcount = type { i32 }
%struct.timerqueue_head = type { %struct.rb_root_cached }
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.wake_irq = type opaque
%struct.atomic_t = type { i32 }
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type opaque
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.attribute = type { i8*, i16 }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
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
%struct.cpumask = type { [1 x i64] }
%struct.sched_info = type {}
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.0 }
%union.anon.0 = type { %struct.anon.1 }
%struct.anon.1 = type { i32*, i32, i32, i32, i64, i32* }
%struct.pid = type { %struct.refcount_struct, i32, %struct.spinlock, [4 x %struct.hlist_head], %struct.hlist_head, %struct.wait_queue_head, %struct.callback_head, [1 x %struct.upid] }
%struct.hlist_head = type { %struct.hlist_node* }
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
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.37, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%union.anon.37 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.mtd_chip_driver = type { %struct.mtd_info* (%struct.map_info*)*, void (%struct.mtd_info*)*, %struct.module*, i8*, %struct.list_head }
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
%struct.cfi_private = type { i16, i8*, i32, i32, i32, i32, i32, %struct.mtd_info* (%struct.map_info*)*, %struct.cfi_ident*, i32, i32, i32, %union.map_word, i64, i8*, [0 x %struct.flchip] }
%struct.cfi_ident = type <{ [3 x i8], i16, i16, i16, i16, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i8, i16, i16, i8, [0 x i32] }>
%union.map_word = type { [1 x i64] }
%struct.flchip = type { i64, i32, i32, i32, i8, i64, i64, %struct.mutex, %struct.wait_queue_head, i32, i32, i32, i32, i32, i32, i8* }
%struct.cfi_extquery = type { [3 x i8], i8, i8 }
%struct.cfi_fixup = type { i16, i16, void (%struct.mtd_info*)* }

@.str = private unnamed_addr constant [29 x i8] c"drivers/mtd/chips/cfi_util.c\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"\016%s Extended Query Table at 0x%4.4X\0A\00", align 1
@__UNIQUE_ID_file171 = internal constant [41 x i8] c"cfi_util.file=drivers/mtd/chips/cfi_util\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_license172 = internal constant [21 x i8] c"cfi_util.license=GPL\00", section ".modinfo", align 1, !dbg !104
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds ([41 x i8], [41 x i8]* @__UNIQUE_ID_file171, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license172, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cfi_udelay(i32 %us) #0 !dbg !119 {
entry:
  %us.addr = alloca i32, align 4
  %tmp = alloca i32, align 4
  store i32 %us, i32* %us.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %us.addr, metadata !124, metadata !DIExpression()), !dbg !125
  %0 = load i32, i32* %us.addr, align 4, !dbg !126
  %cmp = icmp sge i32 %0, 1000, !dbg !128
  br i1 %cmp, label %if.then, label %if.else, !dbg !129

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %us.addr, align 4, !dbg !130
  %add = add i32 %1, 1000, !dbg !130
  %sub = sub i32 %add, 1, !dbg !130
  %div = sdiv i32 %sub, 1000, !dbg !130
  call void @msleep(i32 %div) #8, !dbg !132
  br label %if.end9, !dbg !133

if.else:                                          ; preds = %entry
  %2 = load i32, i32* %us.addr, align 4, !dbg !134
  %3 = call i1 @llvm.is.constant.i32(i32 %2), !dbg !134
  br i1 %3, label %if.then1, label %if.else6, !dbg !138

if.then1:                                         ; preds = %if.else
  %4 = load i32, i32* %us.addr, align 4, !dbg !139
  %div2 = sdiv i32 %4, 20000, !dbg !139
  %cmp3 = icmp sge i32 %div2, 1, !dbg !139
  br i1 %cmp3, label %if.then4, label %if.else5, !dbg !142

if.then4:                                         ; preds = %if.then1
  call void @__bad_udelay() #8, !dbg !139
  br label %if.end, !dbg !139

if.else5:                                         ; preds = %if.then1
  %5 = load i32, i32* %us.addr, align 4, !dbg !139
  %conv = sext i32 %5 to i64, !dbg !139
  %mul = mul i64 %conv, 4295, !dbg !139
  call void @__const_udelay(i64 %mul) #8, !dbg !139
  br label %if.end

if.end:                                           ; preds = %if.else5, %if.then4
  br label %if.end8, !dbg !142

if.else6:                                         ; preds = %if.else
  %6 = load i32, i32* %us.addr, align 4, !dbg !143
  %conv7 = sext i32 %6 to i64, !dbg !143
  call void @__udelay(i64 %conv7) #8, !dbg !143
  br label %if.end8

if.end8:                                          ; preds = %if.else6, %if.end
  call void @___might_sleep(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 32, i32 0) #8, !dbg !145
  %call = call i32 @_cond_resched() #8, !dbg !145
  store i32 %call, i32* %tmp, align 4, !dbg !145
  %7 = load i32, i32* %tmp, align 4, !dbg !145
  br label %if.end9

if.end9:                                          ; preds = %if.end8, %if.then
  ret void, !dbg !147
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local void @msleep(i32) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #3

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @___might_sleep(i8* %file, i32 %line, i32 %preempt_offset) #0 !dbg !148 {
entry:
  %file.addr = alloca i8*, align 8
  %line.addr = alloca i32, align 4
  %preempt_offset.addr = alloca i32, align 4
  store i8* %file, i8** %file.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %file.addr, metadata !153, metadata !DIExpression()), !dbg !154
  store i32 %line, i32* %line.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %line.addr, metadata !155, metadata !DIExpression()), !dbg !156
  store i32 %preempt_offset, i32* %preempt_offset.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %preempt_offset.addr, metadata !157, metadata !DIExpression()), !dbg !158
  ret void, !dbg !159
}

; Function Attrs: noredzone
declare dso_local i32 @_cond_resched() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cfi_build_cmd_addr(i32 %cmd_ofs, %struct.map_info* %map, %struct.cfi_private* %cfi) #0 !dbg !160 {
entry:
  %cmd_ofs.addr = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %bankwidth = alloca i32, align 4
  %interleave = alloca i32, align 4
  %type = alloca i32, align 4
  %addr = alloca i32, align 4
  store i32 %cmd_ofs, i32* %cmd_ofs.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd_ofs.addr, metadata !2493, metadata !DIExpression()), !dbg !2494
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2495, metadata !DIExpression()), !dbg !2496
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2497, metadata !DIExpression()), !dbg !2498
  call void @llvm.dbg.declare(metadata i32* %bankwidth, metadata !2499, metadata !DIExpression()), !dbg !2500
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2501
  %bankwidth1 = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 6, !dbg !2501
  %1 = load i32, i32* %bankwidth1, align 4, !dbg !2501
  store i32 %1, i32* %bankwidth, align 4, !dbg !2500
  call void @llvm.dbg.declare(metadata i32* %interleave, metadata !2502, metadata !DIExpression()), !dbg !2503
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2504
  %interleave2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %2, i32 0, i32 2, !dbg !2504
  %3 = load i32, i32* %interleave2, align 8, !dbg !2504
  store i32 %3, i32* %interleave, align 4, !dbg !2503
  call void @llvm.dbg.declare(metadata i32* %type, metadata !2505, metadata !DIExpression()), !dbg !2506
  %4 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2507
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %4, i32 0, i32 3, !dbg !2508
  %5 = load i32, i32* %device_type, align 4, !dbg !2508
  store i32 %5, i32* %type, align 4, !dbg !2506
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !2509, metadata !DIExpression()), !dbg !2510
  %6 = load i32, i32* %cmd_ofs.addr, align 4, !dbg !2511
  %7 = load i32, i32* %type, align 4, !dbg !2512
  %mul = mul i32 %6, %7, !dbg !2513
  %8 = load i32, i32* %interleave, align 4, !dbg !2514
  %mul3 = mul i32 %mul, %8, !dbg !2515
  store i32 %mul3, i32* %addr, align 4, !dbg !2516
  %9 = load i32, i32* %type, align 4, !dbg !2517
  %10 = load i32, i32* %interleave, align 4, !dbg !2519
  %mul4 = mul i32 %9, %10, !dbg !2520
  %11 = load i32, i32* %bankwidth, align 4, !dbg !2521
  %cmp = icmp ugt i32 %mul4, %11, !dbg !2522
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2523

land.lhs.true:                                    ; preds = %entry
  %12 = load i32, i32* %cmd_ofs.addr, align 4, !dbg !2524
  %and = and i32 %12, 255, !dbg !2525
  %cmp5 = icmp eq i32 %and, 170, !dbg !2526
  br i1 %cmp5, label %if.then, label %if.end, !dbg !2527

if.then:                                          ; preds = %land.lhs.true
  %13 = load i32, i32* %type, align 4, !dbg !2528
  %shr = lshr i32 %13, 1, !dbg !2529
  %14 = load i32, i32* %interleave, align 4, !dbg !2530
  %mul6 = mul i32 %shr, %14, !dbg !2531
  %15 = load i32, i32* %addr, align 4, !dbg !2532
  %or = or i32 %15, %mul6, !dbg !2532
  store i32 %or, i32* %addr, align 4, !dbg !2532
  br label %if.end, !dbg !2533

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %16 = load i32, i32* %addr, align 4, !dbg !2534
  ret i32 %16, !dbg !2535
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @cfi_build_cmd(i64 %cmd, %struct.map_info* %map, %struct.cfi_private* %cfi) #0 !dbg !2536 {
entry:
  %retval = alloca %union.map_word, align 8
  %cmd.addr = alloca i64, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %wordwidth = alloca i32, align 4
  %words_per_bus = alloca i32, align 4
  %chip_mode = alloca i32, align 4
  %chips_per_word = alloca i32, align 4
  %onecmd = alloca i64, align 8
  %i = alloca i32, align 4
  store i64 %cmd, i64* %cmd.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %cmd.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.declare(metadata %union.map_word* %retval, metadata !2546, metadata !DIExpression()), !dbg !2547
  %0 = bitcast %union.map_word* %retval to i8*, !dbg !2547
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 8, i1 false), !dbg !2547
  call void @llvm.dbg.declare(metadata i32* %wordwidth, metadata !2548, metadata !DIExpression()), !dbg !2549
  call void @llvm.dbg.declare(metadata i32* %words_per_bus, metadata !2550, metadata !DIExpression()), !dbg !2551
  call void @llvm.dbg.declare(metadata i32* %chip_mode, metadata !2552, metadata !DIExpression()), !dbg !2553
  call void @llvm.dbg.declare(metadata i32* %chips_per_word, metadata !2554, metadata !DIExpression()), !dbg !2555
  call void @llvm.dbg.declare(metadata i64* %onecmd, metadata !2556, metadata !DIExpression()), !dbg !2557
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2558, metadata !DIExpression()), !dbg !2559
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2560
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %1, i32 0, i32 6, !dbg !2560
  %2 = load i32, i32* %bankwidth, align 4, !dbg !2560
  store i32 %2, i32* %wordwidth, align 4, !dbg !2563
  store i32 1, i32* %words_per_bus, align 4, !dbg !2564
  %3 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2565
  %bankwidth1 = getelementptr inbounds %struct.map_info, %struct.map_info* %3, i32 0, i32 6, !dbg !2565
  %4 = load i32, i32* %bankwidth1, align 4, !dbg !2565
  %5 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2566
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %5, i32 0, i32 2, !dbg !2566
  %6 = load i32, i32* %interleave, align 8, !dbg !2566
  %div = sdiv i32 %4, %6, !dbg !2567
  store i32 %div, i32* %chip_mode, align 4, !dbg !2568
  %7 = load i32, i32* %wordwidth, align 4, !dbg !2569
  %8 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2570
  %interleave2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %8, i32 0, i32 2, !dbg !2570
  %9 = load i32, i32* %interleave2, align 8, !dbg !2570
  %mul = mul i32 %7, %9, !dbg !2571
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2572
  %bankwidth3 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 6, !dbg !2572
  %11 = load i32, i32* %bankwidth3, align 4, !dbg !2572
  %div4 = sdiv i32 %mul, %11, !dbg !2573
  store i32 %div4, i32* %chips_per_word, align 4, !dbg !2574
  %12 = load i32, i32* %chip_mode, align 4, !dbg !2575
  switch i32 %12, label %sw.default [
    i32 1, label %sw.bb
    i32 2, label %sw.bb11
    i32 4, label %sw.bb45
  ], !dbg !2576

sw.default:                                       ; preds = %entry
  br label %do.body, !dbg !2577

do.body:                                          ; preds = %sw.default
  br label %do.body5, !dbg !2579

do.body5:                                         ; preds = %do.body
  br label %do.end, !dbg !2581

do.end:                                           ; preds = %do.body5
  br label %do.body6, !dbg !2579

do.body6:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 92, i32 0, i64 12) #9, !dbg !2583, !srcloc !2585
  br label %do.end7, !dbg !2583

do.end7:                                          ; preds = %do.body6
  br label %do.body8, !dbg !2579

do.body8:                                         ; preds = %do.end7
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 167) #9, !dbg !2586, !srcloc !2589
  unreachable, !dbg !2590

do.end9:                                          ; No predecessors!
  br label %do.end10, !dbg !2579

do.end10:                                         ; preds = %do.end9
  br label %sw.bb, !dbg !2579

sw.bb:                                            ; preds = %entry, %do.end10
  %13 = load i64, i64* %cmd.addr, align 8, !dbg !2591
  store i64 %13, i64* %onecmd, align 8, !dbg !2592
  br label %sw.epilog, !dbg !2593

sw.bb11:                                          ; preds = %entry
  %14 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2594
  %swap = getelementptr inbounds %struct.map_info, %struct.map_info* %14, i32 0, i32 5, !dbg !2594
  %15 = load i32, i32* %swap, align 8, !dbg !2594
  %tobool = icmp ne i32 %15, 0, !dbg !2594
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2594

cond.true:                                        ; preds = %sw.bb11
  br label %cond.end, !dbg !2594

cond.false:                                       ; preds = %sw.bb11
  br label %cond.end, !dbg !2594

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %15, %cond.true ], [ 1, %cond.false ], !dbg !2594
  %cmp = icmp eq i32 %cond, 1, !dbg !2594
  br i1 %cmp, label %cond.true12, label %cond.false13, !dbg !2594

cond.true12:                                      ; preds = %cond.end
  %16 = load i64, i64* %cmd.addr, align 8, !dbg !2594
  br label %cond.end43, !dbg !2594

cond.false13:                                     ; preds = %cond.end
  %17 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2594
  %swap14 = getelementptr inbounds %struct.map_info, %struct.map_info* %17, i32 0, i32 5, !dbg !2594
  %18 = load i32, i32* %swap14, align 8, !dbg !2594
  %tobool15 = icmp ne i32 %18, 0, !dbg !2594
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2594

cond.true16:                                      ; preds = %cond.false13
  br label %cond.end18, !dbg !2594

cond.false17:                                     ; preds = %cond.false13
  br label %cond.end18, !dbg !2594

cond.end18:                                       ; preds = %cond.false17, %cond.true16
  %cond19 = phi i32 [ %18, %cond.true16 ], [ 1, %cond.false17 ], !dbg !2594
  %cmp20 = icmp eq i32 %cond19, 3, !dbg !2594
  br i1 %cmp20, label %cond.true21, label %cond.false37, !dbg !2594

cond.true21:                                      ; preds = %cond.end18
  %19 = load i64, i64* %cmd.addr, align 8, !dbg !2594
  %conv = trunc i64 %19 to i16, !dbg !2594
  %20 = call i1 @llvm.is.constant.i16(i16 %conv), !dbg !2594
  br i1 %20, label %cond.true22, label %cond.false30, !dbg !2594

cond.true22:                                      ; preds = %cond.true21
  %21 = load i64, i64* %cmd.addr, align 8, !dbg !2594
  %conv23 = trunc i64 %21 to i16, !dbg !2594
  %conv24 = zext i16 %conv23 to i32, !dbg !2594
  %and = and i32 %conv24, 255, !dbg !2594
  %shl = shl i32 %and, 8, !dbg !2594
  %22 = load i64, i64* %cmd.addr, align 8, !dbg !2594
  %conv25 = trunc i64 %22 to i16, !dbg !2594
  %conv26 = zext i16 %conv25 to i32, !dbg !2594
  %and27 = and i32 %conv26, 65280, !dbg !2594
  %shr = ashr i32 %and27, 8, !dbg !2594
  %or = or i32 %shl, %shr, !dbg !2594
  %conv28 = trunc i32 %or to i16, !dbg !2594
  %conv29 = zext i16 %conv28 to i32, !dbg !2594
  br label %cond.end33, !dbg !2594

cond.false30:                                     ; preds = %cond.true21
  %23 = load i64, i64* %cmd.addr, align 8, !dbg !2594
  %conv31 = trunc i64 %23 to i16, !dbg !2594
  %call = call zeroext i16 @__fswab16(i16 zeroext %conv31) #10, !dbg !2594
  %conv32 = zext i16 %call to i32, !dbg !2594
  br label %cond.end33, !dbg !2594

cond.end33:                                       ; preds = %cond.false30, %cond.true22
  %cond34 = phi i32 [ %conv29, %cond.true22 ], [ %conv32, %cond.false30 ], !dbg !2594
  %conv35 = trunc i32 %cond34 to i16, !dbg !2594
  %conv36 = zext i16 %conv35 to i32, !dbg !2594
  br label %cond.end40, !dbg !2594

cond.false37:                                     ; preds = %cond.end18
  %24 = load i64, i64* %cmd.addr, align 8, !dbg !2594
  %conv38 = trunc i64 %24 to i16, !dbg !2594
  %conv39 = zext i16 %conv38 to i32, !dbg !2594
  br label %cond.end40, !dbg !2594

cond.end40:                                       ; preds = %cond.false37, %cond.end33
  %cond41 = phi i32 [ %conv36, %cond.end33 ], [ %conv39, %cond.false37 ], !dbg !2594
  %conv42 = sext i32 %cond41 to i64, !dbg !2594
  br label %cond.end43, !dbg !2594

cond.end43:                                       ; preds = %cond.end40, %cond.true12
  %cond44 = phi i64 [ %16, %cond.true12 ], [ %conv42, %cond.end40 ], !dbg !2594
  store i64 %cond44, i64* %onecmd, align 8, !dbg !2595
  br label %sw.epilog, !dbg !2596

sw.bb45:                                          ; preds = %entry
  %25 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2597
  %swap46 = getelementptr inbounds %struct.map_info, %struct.map_info* %25, i32 0, i32 5, !dbg !2597
  %26 = load i32, i32* %swap46, align 8, !dbg !2597
  %tobool47 = icmp ne i32 %26, 0, !dbg !2597
  br i1 %tobool47, label %cond.true48, label %cond.false49, !dbg !2597

cond.true48:                                      ; preds = %sw.bb45
  br label %cond.end50, !dbg !2597

cond.false49:                                     ; preds = %sw.bb45
  br label %cond.end50, !dbg !2597

cond.end50:                                       ; preds = %cond.false49, %cond.true48
  %cond51 = phi i32 [ %26, %cond.true48 ], [ 1, %cond.false49 ], !dbg !2597
  %cmp52 = icmp eq i32 %cond51, 1, !dbg !2597
  br i1 %cmp52, label %cond.true54, label %cond.false55, !dbg !2597

cond.true54:                                      ; preds = %cond.end50
  %27 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  br label %cond.end92, !dbg !2597

cond.false55:                                     ; preds = %cond.end50
  %28 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2597
  %swap56 = getelementptr inbounds %struct.map_info, %struct.map_info* %28, i32 0, i32 5, !dbg !2597
  %29 = load i32, i32* %swap56, align 8, !dbg !2597
  %tobool57 = icmp ne i32 %29, 0, !dbg !2597
  br i1 %tobool57, label %cond.true58, label %cond.false59, !dbg !2597

cond.true58:                                      ; preds = %cond.false55
  br label %cond.end60, !dbg !2597

cond.false59:                                     ; preds = %cond.false55
  br label %cond.end60, !dbg !2597

cond.end60:                                       ; preds = %cond.false59, %cond.true58
  %cond61 = phi i32 [ %29, %cond.true58 ], [ 1, %cond.false59 ], !dbg !2597
  %cmp62 = icmp eq i32 %cond61, 3, !dbg !2597
  br i1 %cmp62, label %cond.true64, label %cond.false87, !dbg !2597

cond.true64:                                      ; preds = %cond.end60
  %30 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv65 = trunc i64 %30 to i32, !dbg !2597
  %31 = call i1 @llvm.is.constant.i32(i32 %conv65), !dbg !2597
  br i1 %31, label %cond.true66, label %cond.false82, !dbg !2597

cond.true66:                                      ; preds = %cond.true64
  %32 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv67 = trunc i64 %32 to i32, !dbg !2597
  %and68 = and i32 %conv67, 255, !dbg !2597
  %shl69 = shl i32 %and68, 24, !dbg !2597
  %33 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv70 = trunc i64 %33 to i32, !dbg !2597
  %and71 = and i32 %conv70, 65280, !dbg !2597
  %shl72 = shl i32 %and71, 8, !dbg !2597
  %or73 = or i32 %shl69, %shl72, !dbg !2597
  %34 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv74 = trunc i64 %34 to i32, !dbg !2597
  %and75 = and i32 %conv74, 16711680, !dbg !2597
  %shr76 = lshr i32 %and75, 8, !dbg !2597
  %or77 = or i32 %or73, %shr76, !dbg !2597
  %35 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv78 = trunc i64 %35 to i32, !dbg !2597
  %and79 = and i32 %conv78, -16777216, !dbg !2597
  %shr80 = lshr i32 %and79, 24, !dbg !2597
  %or81 = or i32 %or77, %shr80, !dbg !2597
  br label %cond.end85, !dbg !2597

cond.false82:                                     ; preds = %cond.true64
  %36 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv83 = trunc i64 %36 to i32, !dbg !2597
  %call84 = call i32 @__fswab32(i32 %conv83) #10, !dbg !2597
  br label %cond.end85, !dbg !2597

cond.end85:                                       ; preds = %cond.false82, %cond.true66
  %cond86 = phi i32 [ %or81, %cond.true66 ], [ %call84, %cond.false82 ], !dbg !2597
  br label %cond.end89, !dbg !2597

cond.false87:                                     ; preds = %cond.end60
  %37 = load i64, i64* %cmd.addr, align 8, !dbg !2597
  %conv88 = trunc i64 %37 to i32, !dbg !2597
  br label %cond.end89, !dbg !2597

cond.end89:                                       ; preds = %cond.false87, %cond.end85
  %cond90 = phi i32 [ %cond86, %cond.end85 ], [ %conv88, %cond.false87 ], !dbg !2597
  %conv91 = zext i32 %cond90 to i64, !dbg !2597
  br label %cond.end92, !dbg !2597

cond.end92:                                       ; preds = %cond.end89, %cond.true54
  %cond93 = phi i64 [ %27, %cond.true54 ], [ %conv91, %cond.end89 ], !dbg !2597
  store i64 %cond93, i64* %onecmd, align 8, !dbg !2598
  br label %sw.epilog, !dbg !2599

sw.epilog:                                        ; preds = %cond.end92, %cond.end43, %sw.bb
  %38 = load i32, i32* %chips_per_word, align 4, !dbg !2600
  switch i32 %38, label %sw.default94 [
    i32 8, label %sw.bb103
    i32 4, label %sw.bb107
    i32 2, label %sw.bb112
    i32 1, label %sw.bb117
  ], !dbg !2601

sw.default94:                                     ; preds = %sw.epilog
  br label %do.body95, !dbg !2602

do.body95:                                        ; preds = %sw.default94
  br label %do.body96, !dbg !2604

do.body96:                                        ; preds = %do.body95
  br label %do.end97, !dbg !2606

do.end97:                                         ; preds = %do.body96
  br label %do.body98, !dbg !2604

do.body98:                                        ; preds = %do.end97
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 107, i32 0, i64 12) #9, !dbg !2608, !srcloc !2610
  br label %do.end99, !dbg !2608

do.end99:                                         ; preds = %do.body98
  br label %do.body100, !dbg !2604

do.body100:                                       ; preds = %do.end99
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #9, !dbg !2611, !srcloc !2614
  unreachable, !dbg !2615

do.end101:                                        ; No predecessors!
  br label %do.end102, !dbg !2604

do.end102:                                        ; preds = %do.end101
  br label %sw.bb103, !dbg !2604

sw.bb103:                                         ; preds = %sw.epilog, %do.end102
  %39 = load i64, i64* %onecmd, align 8, !dbg !2616
  %40 = load i32, i32* %chip_mode, align 4, !dbg !2617
  %mul104 = mul i32 %40, 32, !dbg !2618
  %sh_prom = zext i32 %mul104 to i64, !dbg !2619
  %shl105 = shl i64 %39, %sh_prom, !dbg !2619
  %41 = load i64, i64* %onecmd, align 8, !dbg !2620
  %or106 = or i64 %41, %shl105, !dbg !2620
  store i64 %or106, i64* %onecmd, align 8, !dbg !2620
  br label %sw.bb107, !dbg !2621

sw.bb107:                                         ; preds = %sw.epilog, %sw.bb103
  %42 = load i64, i64* %onecmd, align 8, !dbg !2622
  %43 = load i32, i32* %chip_mode, align 4, !dbg !2623
  %mul108 = mul i32 %43, 16, !dbg !2624
  %sh_prom109 = zext i32 %mul108 to i64, !dbg !2625
  %shl110 = shl i64 %42, %sh_prom109, !dbg !2625
  %44 = load i64, i64* %onecmd, align 8, !dbg !2626
  %or111 = or i64 %44, %shl110, !dbg !2626
  store i64 %or111, i64* %onecmd, align 8, !dbg !2626
  br label %sw.bb112, !dbg !2627

sw.bb112:                                         ; preds = %sw.epilog, %sw.bb107
  %45 = load i64, i64* %onecmd, align 8, !dbg !2628
  %46 = load i32, i32* %chip_mode, align 4, !dbg !2629
  %mul113 = mul i32 %46, 8, !dbg !2630
  %sh_prom114 = zext i32 %mul113 to i64, !dbg !2631
  %shl115 = shl i64 %45, %sh_prom114, !dbg !2631
  %47 = load i64, i64* %onecmd, align 8, !dbg !2632
  %or116 = or i64 %47, %shl115, !dbg !2632
  store i64 %or116, i64* %onecmd, align 8, !dbg !2632
  br label %sw.bb117, !dbg !2633

sw.bb117:                                         ; preds = %sw.epilog, %sw.bb112
  br label %sw.epilog118, !dbg !2634

sw.epilog118:                                     ; preds = %sw.bb117
  store i32 0, i32* %i, align 4, !dbg !2635
  br label %for.cond, !dbg !2637

for.cond:                                         ; preds = %for.inc, %sw.epilog118
  %48 = load i32, i32* %i, align 4, !dbg !2638
  %49 = load i32, i32* %words_per_bus, align 4, !dbg !2640
  %cmp119 = icmp slt i32 %48, %49, !dbg !2641
  br i1 %cmp119, label %for.body, label %for.end, !dbg !2642

for.body:                                         ; preds = %for.cond
  %50 = load i64, i64* %onecmd, align 8, !dbg !2643
  %x = bitcast %union.map_word* %retval to [1 x i64]*, !dbg !2645
  %51 = load i32, i32* %i, align 4, !dbg !2646
  %idxprom = sext i32 %51 to i64, !dbg !2647
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 %idxprom, !dbg !2647
  store i64 %50, i64* %arrayidx, align 8, !dbg !2648
  br label %for.inc, !dbg !2649

for.inc:                                          ; preds = %for.body
  %52 = load i32, i32* %i, align 4, !dbg !2650
  %inc = add i32 %52, 1, !dbg !2650
  store i32 %inc, i32* %i, align 4, !dbg !2650
  br label %for.cond, !dbg !2651, !llvm.loop !2652

for.end:                                          ; preds = %for.cond
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %retval, i32 0, i32 0, !dbg !2654
  %53 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !2654
  %54 = load i64, i64* %53, align 8, !dbg !2654
  ret i64 %54, !dbg !2654
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i16(i16) #3

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal zeroext i16 @__fswab16(i16 zeroext %val) #5 !dbg !2655 {
entry:
  %val.addr = alloca i16, align 2
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !2659, metadata !DIExpression()), !dbg !2660
  %0 = load i16, i16* %val.addr, align 2, !dbg !2661
  %conv = zext i16 %0 to i32, !dbg !2661
  %and = and i32 %conv, 255, !dbg !2661
  %shl = shl i32 %and, 8, !dbg !2661
  %1 = load i16, i16* %val.addr, align 2, !dbg !2661
  %conv1 = zext i16 %1 to i32, !dbg !2661
  %and2 = and i32 %conv1, 65280, !dbg !2661
  %shr = ashr i32 %and2, 8, !dbg !2661
  %or = or i32 %shl, %shr, !dbg !2661
  %conv3 = trunc i32 %or to i16, !dbg !2661
  ret i16 %conv3, !dbg !2662
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #5 !dbg !2663 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2666, metadata !DIExpression()), !dbg !2667
  %0 = load i32, i32* %val.addr, align 4, !dbg !2668
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !2669
  ret i32 %call, !dbg !2670
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i64 @cfi_merge_status(i64 %val.coerce, %struct.map_info* %map, %struct.cfi_private* %cfi) #0 !dbg !2671 {
entry:
  %val = alloca %union.map_word, align 8
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %wordwidth = alloca i32, align 4
  %words_per_bus = alloca i32, align 4
  %chip_mode = alloca i32, align 4
  %chips_per_word = alloca i32, align 4
  %onestat = alloca i64, align 8
  %res = alloca i64, align 8
  %i = alloca i32, align 4
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %val, i32 0, i32 0
  %0 = bitcast [1 x i64]* %coerce.dive to i64*
  store i64 %val.coerce, i64* %0, align 8
  call void @llvm.dbg.declare(metadata %union.map_word* %val, metadata !2674, metadata !DIExpression()), !dbg !2675
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  call void @llvm.dbg.declare(metadata i32* %wordwidth, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata i32* %words_per_bus, metadata !2682, metadata !DIExpression()), !dbg !2683
  call void @llvm.dbg.declare(metadata i32* %chip_mode, metadata !2684, metadata !DIExpression()), !dbg !2685
  call void @llvm.dbg.declare(metadata i32* %chips_per_word, metadata !2686, metadata !DIExpression()), !dbg !2687
  call void @llvm.dbg.declare(metadata i64* %onestat, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.declare(metadata i64* %res, metadata !2690, metadata !DIExpression()), !dbg !2691
  store i64 0, i64* %res, align 8, !dbg !2691
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2692, metadata !DIExpression()), !dbg !2693
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2694
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %1, i32 0, i32 6, !dbg !2694
  %2 = load i32, i32* %bankwidth, align 4, !dbg !2694
  store i32 %2, i32* %wordwidth, align 4, !dbg !2697
  store i32 1, i32* %words_per_bus, align 4, !dbg !2698
  %3 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2699
  %bankwidth1 = getelementptr inbounds %struct.map_info, %struct.map_info* %3, i32 0, i32 6, !dbg !2699
  %4 = load i32, i32* %bankwidth1, align 4, !dbg !2699
  %5 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2700
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %5, i32 0, i32 2, !dbg !2700
  %6 = load i32, i32* %interleave, align 8, !dbg !2700
  %div = sdiv i32 %4, %6, !dbg !2701
  store i32 %div, i32* %chip_mode, align 4, !dbg !2702
  %7 = load i32, i32* %wordwidth, align 4, !dbg !2703
  %8 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2704
  %interleave2 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %8, i32 0, i32 2, !dbg !2704
  %9 = load i32, i32* %interleave2, align 8, !dbg !2704
  %mul = mul i32 %7, %9, !dbg !2705
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2706
  %bankwidth3 = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 6, !dbg !2706
  %11 = load i32, i32* %bankwidth3, align 4, !dbg !2706
  %div4 = sdiv i32 %mul, %11, !dbg !2707
  store i32 %div4, i32* %chips_per_word, align 4, !dbg !2708
  %x = bitcast %union.map_word* %val to [1 x i64]*, !dbg !2709
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 0, !dbg !2710
  %12 = load i64, i64* %arrayidx, align 8, !dbg !2710
  store i64 %12, i64* %onestat, align 8, !dbg !2711
  store i32 1, i32* %i, align 4, !dbg !2712
  br label %for.cond, !dbg !2714

for.cond:                                         ; preds = %for.inc, %entry
  %13 = load i32, i32* %i, align 4, !dbg !2715
  %14 = load i32, i32* %words_per_bus, align 4, !dbg !2717
  %cmp = icmp slt i32 %13, %14, !dbg !2718
  br i1 %cmp, label %for.body, label %for.end, !dbg !2719

for.body:                                         ; preds = %for.cond
  %x5 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !2720
  %15 = load i32, i32* %i, align 4, !dbg !2722
  %idxprom = sext i32 %15 to i64, !dbg !2723
  %arrayidx6 = getelementptr [1 x i64], [1 x i64]* %x5, i64 0, i64 %idxprom, !dbg !2723
  %16 = load i64, i64* %arrayidx6, align 8, !dbg !2723
  %17 = load i64, i64* %onestat, align 8, !dbg !2724
  %or = or i64 %17, %16, !dbg !2724
  store i64 %or, i64* %onestat, align 8, !dbg !2724
  br label %for.inc, !dbg !2725

for.inc:                                          ; preds = %for.body
  %18 = load i32, i32* %i, align 4, !dbg !2726
  %inc = add i32 %18, 1, !dbg !2726
  store i32 %inc, i32* %i, align 4, !dbg !2726
  br label %for.cond, !dbg !2727, !llvm.loop !2728

for.end:                                          ; preds = %for.cond
  %19 = load i64, i64* %onestat, align 8, !dbg !2730
  store i64 %19, i64* %res, align 8, !dbg !2731
  %20 = load i32, i32* %chips_per_word, align 4, !dbg !2732
  switch i32 %20, label %sw.default [
    i32 8, label %sw.bb
    i32 4, label %sw.bb15
    i32 2, label %sw.bb20
    i32 1, label %sw.bb25
  ], !dbg !2733

sw.default:                                       ; preds = %for.end
  br label %do.body, !dbg !2734

do.body:                                          ; preds = %sw.default
  br label %do.body7, !dbg !2736

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !2738

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !2736

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 163, i32 0, i64 12) #9, !dbg !2740, !srcloc !2742
  br label %do.end9, !dbg !2740

do.end9:                                          ; preds = %do.body8
  br label %do.body10, !dbg !2736

do.body10:                                        ; preds = %do.end9
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 169) #9, !dbg !2743, !srcloc !2746
  unreachable, !dbg !2747

do.end11:                                         ; No predecessors!
  br label %do.end12, !dbg !2736

do.end12:                                         ; preds = %do.end11
  br label %sw.bb, !dbg !2736

sw.bb:                                            ; preds = %for.end, %do.end12
  %21 = load i64, i64* %onestat, align 8, !dbg !2748
  %22 = load i32, i32* %chip_mode, align 4, !dbg !2749
  %mul13 = mul i32 %22, 32, !dbg !2750
  %sh_prom = zext i32 %mul13 to i64, !dbg !2751
  %shr = lshr i64 %21, %sh_prom, !dbg !2751
  %23 = load i64, i64* %res, align 8, !dbg !2752
  %or14 = or i64 %23, %shr, !dbg !2752
  store i64 %or14, i64* %res, align 8, !dbg !2752
  br label %sw.bb15, !dbg !2753

sw.bb15:                                          ; preds = %for.end, %sw.bb
  %24 = load i64, i64* %onestat, align 8, !dbg !2754
  %25 = load i32, i32* %chip_mode, align 4, !dbg !2755
  %mul16 = mul i32 %25, 16, !dbg !2756
  %sh_prom17 = zext i32 %mul16 to i64, !dbg !2757
  %shr18 = lshr i64 %24, %sh_prom17, !dbg !2757
  %26 = load i64, i64* %res, align 8, !dbg !2758
  %or19 = or i64 %26, %shr18, !dbg !2758
  store i64 %or19, i64* %res, align 8, !dbg !2758
  br label %sw.bb20, !dbg !2759

sw.bb20:                                          ; preds = %for.end, %sw.bb15
  %27 = load i64, i64* %onestat, align 8, !dbg !2760
  %28 = load i32, i32* %chip_mode, align 4, !dbg !2761
  %mul21 = mul i32 %28, 8, !dbg !2762
  %sh_prom22 = zext i32 %mul21 to i64, !dbg !2763
  %shr23 = lshr i64 %27, %sh_prom22, !dbg !2763
  %29 = load i64, i64* %res, align 8, !dbg !2764
  %or24 = or i64 %29, %shr23, !dbg !2764
  store i64 %or24, i64* %res, align 8, !dbg !2764
  br label %sw.bb25, !dbg !2765

sw.bb25:                                          ; preds = %for.end, %sw.bb20
  br label %sw.epilog, !dbg !2766

sw.epilog:                                        ; preds = %sw.bb25
  %30 = load i32, i32* %chip_mode, align 4, !dbg !2767
  switch i32 %30, label %sw.default111 [
    i32 1, label %sw.bb26
    i32 2, label %sw.bb27
    i32 4, label %sw.bb62
  ], !dbg !2768

sw.bb26:                                          ; preds = %sw.epilog
  br label %sw.epilog120, !dbg !2769

sw.bb27:                                          ; preds = %sw.epilog
  %31 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2771
  %swap = getelementptr inbounds %struct.map_info, %struct.map_info* %31, i32 0, i32 5, !dbg !2771
  %32 = load i32, i32* %swap, align 8, !dbg !2771
  %tobool = icmp ne i32 %32, 0, !dbg !2771
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2771

cond.true:                                        ; preds = %sw.bb27
  br label %cond.end, !dbg !2771

cond.false:                                       ; preds = %sw.bb27
  br label %cond.end, !dbg !2771

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %32, %cond.true ], [ 1, %cond.false ], !dbg !2771
  %cmp28 = icmp eq i32 %cond, 1, !dbg !2771
  br i1 %cmp28, label %cond.true29, label %cond.false30, !dbg !2771

cond.true29:                                      ; preds = %cond.end
  %33 = load i64, i64* %res, align 8, !dbg !2771
  br label %cond.end60, !dbg !2771

cond.false30:                                     ; preds = %cond.end
  %34 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2771
  %swap31 = getelementptr inbounds %struct.map_info, %struct.map_info* %34, i32 0, i32 5, !dbg !2771
  %35 = load i32, i32* %swap31, align 8, !dbg !2771
  %tobool32 = icmp ne i32 %35, 0, !dbg !2771
  br i1 %tobool32, label %cond.true33, label %cond.false34, !dbg !2771

cond.true33:                                      ; preds = %cond.false30
  br label %cond.end35, !dbg !2771

cond.false34:                                     ; preds = %cond.false30
  br label %cond.end35, !dbg !2771

cond.end35:                                       ; preds = %cond.false34, %cond.true33
  %cond36 = phi i32 [ %35, %cond.true33 ], [ 1, %cond.false34 ], !dbg !2771
  %cmp37 = icmp eq i32 %cond36, 3, !dbg !2771
  br i1 %cmp37, label %cond.true38, label %cond.false54, !dbg !2771

cond.true38:                                      ; preds = %cond.end35
  %36 = load i64, i64* %res, align 8, !dbg !2771
  %conv = trunc i64 %36 to i16, !dbg !2771
  %37 = call i1 @llvm.is.constant.i16(i16 %conv), !dbg !2771
  br i1 %37, label %cond.true39, label %cond.false49, !dbg !2771

cond.true39:                                      ; preds = %cond.true38
  %38 = load i64, i64* %res, align 8, !dbg !2771
  %conv40 = trunc i64 %38 to i16, !dbg !2771
  %conv41 = zext i16 %conv40 to i32, !dbg !2771
  %and = and i32 %conv41, 255, !dbg !2771
  %shl = shl i32 %and, 8, !dbg !2771
  %39 = load i64, i64* %res, align 8, !dbg !2771
  %conv42 = trunc i64 %39 to i16, !dbg !2771
  %conv43 = zext i16 %conv42 to i32, !dbg !2771
  %and44 = and i32 %conv43, 65280, !dbg !2771
  %shr45 = ashr i32 %and44, 8, !dbg !2771
  %or46 = or i32 %shl, %shr45, !dbg !2771
  %conv47 = trunc i32 %or46 to i16, !dbg !2771
  %conv48 = zext i16 %conv47 to i32, !dbg !2771
  br label %cond.end52, !dbg !2771

cond.false49:                                     ; preds = %cond.true38
  %40 = load i64, i64* %res, align 8, !dbg !2771
  %conv50 = trunc i64 %40 to i16, !dbg !2771
  %call = call zeroext i16 @__fswab16(i16 zeroext %conv50) #10, !dbg !2771
  %conv51 = zext i16 %call to i32, !dbg !2771
  br label %cond.end52, !dbg !2771

cond.end52:                                       ; preds = %cond.false49, %cond.true39
  %cond53 = phi i32 [ %conv48, %cond.true39 ], [ %conv51, %cond.false49 ], !dbg !2771
  br label %cond.end57, !dbg !2771

cond.false54:                                     ; preds = %cond.end35
  %41 = load i64, i64* %res, align 8, !dbg !2771
  %conv55 = trunc i64 %41 to i16, !dbg !2771
  %conv56 = zext i16 %conv55 to i32, !dbg !2771
  br label %cond.end57, !dbg !2771

cond.end57:                                       ; preds = %cond.false54, %cond.end52
  %cond58 = phi i32 [ %cond53, %cond.end52 ], [ %conv56, %cond.false54 ], !dbg !2771
  %conv59 = sext i32 %cond58 to i64, !dbg !2771
  br label %cond.end60, !dbg !2771

cond.end60:                                       ; preds = %cond.end57, %cond.true29
  %cond61 = phi i64 [ %33, %cond.true29 ], [ %conv59, %cond.end57 ], !dbg !2771
  store i64 %cond61, i64* %res, align 8, !dbg !2772
  br label %sw.epilog120, !dbg !2773

sw.bb62:                                          ; preds = %sw.epilog
  %42 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2774
  %swap63 = getelementptr inbounds %struct.map_info, %struct.map_info* %42, i32 0, i32 5, !dbg !2774
  %43 = load i32, i32* %swap63, align 8, !dbg !2774
  %tobool64 = icmp ne i32 %43, 0, !dbg !2774
  br i1 %tobool64, label %cond.true65, label %cond.false66, !dbg !2774

cond.true65:                                      ; preds = %sw.bb62
  br label %cond.end67, !dbg !2774

cond.false66:                                     ; preds = %sw.bb62
  br label %cond.end67, !dbg !2774

cond.end67:                                       ; preds = %cond.false66, %cond.true65
  %cond68 = phi i32 [ %43, %cond.true65 ], [ 1, %cond.false66 ], !dbg !2774
  %cmp69 = icmp eq i32 %cond68, 1, !dbg !2774
  br i1 %cmp69, label %cond.true71, label %cond.false72, !dbg !2774

cond.true71:                                      ; preds = %cond.end67
  %44 = load i64, i64* %res, align 8, !dbg !2774
  br label %cond.end109, !dbg !2774

cond.false72:                                     ; preds = %cond.end67
  %45 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2774
  %swap73 = getelementptr inbounds %struct.map_info, %struct.map_info* %45, i32 0, i32 5, !dbg !2774
  %46 = load i32, i32* %swap73, align 8, !dbg !2774
  %tobool74 = icmp ne i32 %46, 0, !dbg !2774
  br i1 %tobool74, label %cond.true75, label %cond.false76, !dbg !2774

cond.true75:                                      ; preds = %cond.false72
  br label %cond.end77, !dbg !2774

cond.false76:                                     ; preds = %cond.false72
  br label %cond.end77, !dbg !2774

cond.end77:                                       ; preds = %cond.false76, %cond.true75
  %cond78 = phi i32 [ %46, %cond.true75 ], [ 1, %cond.false76 ], !dbg !2774
  %cmp79 = icmp eq i32 %cond78, 3, !dbg !2774
  br i1 %cmp79, label %cond.true81, label %cond.false104, !dbg !2774

cond.true81:                                      ; preds = %cond.end77
  %47 = load i64, i64* %res, align 8, !dbg !2774
  %conv82 = trunc i64 %47 to i32, !dbg !2774
  %48 = call i1 @llvm.is.constant.i32(i32 %conv82), !dbg !2774
  br i1 %48, label %cond.true83, label %cond.false99, !dbg !2774

cond.true83:                                      ; preds = %cond.true81
  %49 = load i64, i64* %res, align 8, !dbg !2774
  %conv84 = trunc i64 %49 to i32, !dbg !2774
  %and85 = and i32 %conv84, 255, !dbg !2774
  %shl86 = shl i32 %and85, 24, !dbg !2774
  %50 = load i64, i64* %res, align 8, !dbg !2774
  %conv87 = trunc i64 %50 to i32, !dbg !2774
  %and88 = and i32 %conv87, 65280, !dbg !2774
  %shl89 = shl i32 %and88, 8, !dbg !2774
  %or90 = or i32 %shl86, %shl89, !dbg !2774
  %51 = load i64, i64* %res, align 8, !dbg !2774
  %conv91 = trunc i64 %51 to i32, !dbg !2774
  %and92 = and i32 %conv91, 16711680, !dbg !2774
  %shr93 = lshr i32 %and92, 8, !dbg !2774
  %or94 = or i32 %or90, %shr93, !dbg !2774
  %52 = load i64, i64* %res, align 8, !dbg !2774
  %conv95 = trunc i64 %52 to i32, !dbg !2774
  %and96 = and i32 %conv95, -16777216, !dbg !2774
  %shr97 = lshr i32 %and96, 24, !dbg !2774
  %or98 = or i32 %or94, %shr97, !dbg !2774
  br label %cond.end102, !dbg !2774

cond.false99:                                     ; preds = %cond.true81
  %53 = load i64, i64* %res, align 8, !dbg !2774
  %conv100 = trunc i64 %53 to i32, !dbg !2774
  %call101 = call i32 @__fswab32(i32 %conv100) #10, !dbg !2774
  br label %cond.end102, !dbg !2774

cond.end102:                                      ; preds = %cond.false99, %cond.true83
  %cond103 = phi i32 [ %or98, %cond.true83 ], [ %call101, %cond.false99 ], !dbg !2774
  br label %cond.end106, !dbg !2774

cond.false104:                                    ; preds = %cond.end77
  %54 = load i64, i64* %res, align 8, !dbg !2774
  %conv105 = trunc i64 %54 to i32, !dbg !2774
  br label %cond.end106, !dbg !2774

cond.end106:                                      ; preds = %cond.false104, %cond.end102
  %cond107 = phi i32 [ %cond103, %cond.end102 ], [ %conv105, %cond.false104 ], !dbg !2774
  %conv108 = zext i32 %cond107 to i64, !dbg !2774
  br label %cond.end109, !dbg !2774

cond.end109:                                      ; preds = %cond.end106, %cond.true71
  %cond110 = phi i64 [ %44, %cond.true71 ], [ %conv108, %cond.end106 ], !dbg !2774
  store i64 %cond110, i64* %res, align 8, !dbg !2775
  br label %sw.epilog120, !dbg !2776

sw.default111:                                    ; preds = %sw.epilog
  br label %do.body112, !dbg !2777

do.body112:                                       ; preds = %sw.default111
  br label %do.body113, !dbg !2778

do.body113:                                       ; preds = %do.body112
  br label %do.end114, !dbg !2780

do.end114:                                        ; preds = %do.body113
  br label %do.body115, !dbg !2778

do.body115:                                       ; preds = %do.end114
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 190, i32 0, i64 12) #9, !dbg !2782, !srcloc !2784
  br label %do.end116, !dbg !2782

do.end116:                                        ; preds = %do.body115
  br label %do.body117, !dbg !2778

do.body117:                                       ; preds = %do.end116
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 170) #9, !dbg !2785, !srcloc !2788
  unreachable, !dbg !2789

do.end118:                                        ; No predecessors!
  br label %do.end119, !dbg !2778

do.end119:                                        ; preds = %do.end118
  br label %sw.epilog120, !dbg !2790

sw.epilog120:                                     ; preds = %do.end119, %cond.end109, %cond.end60, %sw.bb26
  %55 = load i64, i64* %res, align 8, !dbg !2791
  ret i64 %55, !dbg !2792
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cfi_send_gen_cmd(i8 zeroext %cmd, i32 %cmd_addr, i32 %base, %struct.map_info* %map, %struct.cfi_private* %cfi, i32 %type, %union.map_word* %prev_val) #0 !dbg !2793 {
entry:
  %cmd.addr = alloca i8, align 1
  %cmd_addr.addr = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %type.addr = alloca i32, align 4
  %prev_val.addr = alloca %union.map_word*, align 8
  %val = alloca %union.map_word, align 8
  %addr = alloca i32, align 4
  %tmp = alloca %union.map_word, align 8
  %tmp2 = alloca %union.map_word, align 8
  store i8 %cmd, i8* %cmd.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %cmd.addr, metadata !2797, metadata !DIExpression()), !dbg !2798
  store i32 %cmd_addr, i32* %cmd_addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd_addr.addr, metadata !2799, metadata !DIExpression()), !dbg !2800
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2801, metadata !DIExpression()), !dbg !2802
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2803, metadata !DIExpression()), !dbg !2804
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2805, metadata !DIExpression()), !dbg !2806
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !2807, metadata !DIExpression()), !dbg !2808
  store %union.map_word* %prev_val, %union.map_word** %prev_val.addr, align 8
  call void @llvm.dbg.declare(metadata %union.map_word** %prev_val.addr, metadata !2809, metadata !DIExpression()), !dbg !2810
  call void @llvm.dbg.declare(metadata %union.map_word* %val, metadata !2811, metadata !DIExpression()), !dbg !2812
  call void @llvm.dbg.declare(metadata i32* %addr, metadata !2813, metadata !DIExpression()), !dbg !2814
  %0 = load i32, i32* %base.addr, align 4, !dbg !2815
  %1 = load i32, i32* %cmd_addr.addr, align 4, !dbg !2816
  %2 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2817
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2818
  %call = call i32 @cfi_build_cmd_addr(i32 %1, %struct.map_info* %2, %struct.cfi_private* %3) #8, !dbg !2819
  %add = add i32 %0, %call, !dbg !2820
  store i32 %add, i32* %addr, align 4, !dbg !2814
  %4 = load i8, i8* %cmd.addr, align 1, !dbg !2821
  %conv = zext i8 %4 to i64, !dbg !2821
  %5 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2822
  %6 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2823
  %call1 = call i64 @cfi_build_cmd(i64 %conv, %struct.map_info* %5, %struct.cfi_private* %6) #8, !dbg !2824
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %tmp, i32 0, i32 0, !dbg !2824
  %7 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !2824
  store i64 %call1, i64* %7, align 8, !dbg !2824
  %8 = bitcast %union.map_word* %val to i8*, !dbg !2824
  %9 = bitcast %union.map_word* %tmp to i8*, !dbg !2824
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %8, i8* align 8 %9, i64 8, i1 false), !dbg !2824
  %10 = load %union.map_word*, %union.map_word** %prev_val.addr, align 8, !dbg !2825
  %tobool = icmp ne %union.map_word* %10, null, !dbg !2825
  br i1 %tobool, label %if.then, label %if.end, !dbg !2827

if.then:                                          ; preds = %entry
  %11 = load %union.map_word*, %union.map_word** %prev_val.addr, align 8, !dbg !2828
  %12 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2829
  %read = getelementptr inbounds %struct.map_info, %struct.map_info* %12, i32 0, i32 7, !dbg !2829
  %13 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read, align 8, !dbg !2829
  %14 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2829
  %15 = load i32, i32* %addr, align 4, !dbg !2829
  %conv3 = zext i32 %15 to i64, !dbg !2829
  %call4 = call i64 %13(%struct.map_info* %14, i64 %conv3) #8, !dbg !2829
  %coerce.dive5 = getelementptr inbounds %union.map_word, %union.map_word* %tmp2, i32 0, i32 0, !dbg !2829
  %16 = bitcast [1 x i64]* %coerce.dive5 to i64*, !dbg !2829
  store i64 %call4, i64* %16, align 8, !dbg !2829
  %17 = bitcast %union.map_word* %11 to i8*, !dbg !2829
  %18 = bitcast %union.map_word* %tmp2 to i8*, !dbg !2829
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 %18, i64 8, i1 false), !dbg !2829
  br label %if.end, !dbg !2830

if.end:                                           ; preds = %if.then, %entry
  %19 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2831
  %write = getelementptr inbounds %struct.map_info, %struct.map_info* %19, i32 0, i32 9, !dbg !2831
  %20 = load void (%struct.map_info*, i64, i64)*, void (%struct.map_info*, i64, i64)** %write, align 8, !dbg !2831
  %21 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2831
  %22 = load i32, i32* %addr, align 4, !dbg !2831
  %conv6 = zext i32 %22 to i64, !dbg !2831
  %coerce.dive7 = getelementptr inbounds %union.map_word, %union.map_word* %val, i32 0, i32 0, !dbg !2831
  %23 = bitcast [1 x i64]* %coerce.dive7 to i64*, !dbg !2831
  %24 = load i64, i64* %23, align 8, !dbg !2831
  call void %20(%struct.map_info* %21, i64 %24, i64 %conv6) #8, !dbg !2831
  %25 = load i32, i32* %addr, align 4, !dbg !2832
  %26 = load i32, i32* %base.addr, align 4, !dbg !2833
  %sub = sub i32 %25, %26, !dbg !2834
  ret i32 %sub, !dbg !2835
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cfi_qry_present(%struct.map_info* %map, i32 %base, %struct.cfi_private* %cfi) #0 !dbg !2836 {
entry:
  %retval = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %base.addr = alloca i32, align 4
  %cfi.addr = alloca %struct.cfi_private*, align 8
  %osf = alloca i32, align 4
  %val = alloca [3 x %union.map_word], align 16
  %qry = alloca [3 x %union.map_word], align 16
  %tmp = alloca %union.map_word, align 8
  %tmp2 = alloca %union.map_word, align 8
  %tmp6 = alloca %union.map_word, align 8
  %tmp10 = alloca %union.map_word, align 8
  %tmp15 = alloca %union.map_word, align 8
  %tmp23 = alloca %union.map_word, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %tmp39 = alloca i32, align 4
  %i42 = alloca i32, align 4
  %ret43 = alloca i32, align 4
  %tmp63 = alloca i32, align 4
  %i67 = alloca i32, align 4
  %ret68 = alloca i32, align 4
  %tmp88 = alloca i32, align 4
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  call void @llvm.dbg.declare(metadata i32* %osf, metadata !2845, metadata !DIExpression()), !dbg !2846
  %0 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2847
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %0, i32 0, i32 2, !dbg !2848
  %1 = load i32, i32* %interleave, align 8, !dbg !2848
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2849
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %2, i32 0, i32 3, !dbg !2850
  %3 = load i32, i32* %device_type, align 4, !dbg !2850
  %mul = mul i32 %1, %3, !dbg !2851
  store i32 %mul, i32* %osf, align 4, !dbg !2846
  call void @llvm.dbg.declare(metadata [3 x %union.map_word]* %val, metadata !2852, metadata !DIExpression()), !dbg !2854
  call void @llvm.dbg.declare(metadata [3 x %union.map_word]* %qry, metadata !2855, metadata !DIExpression()), !dbg !2856
  %arrayidx = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %qry, i64 0, i64 0, !dbg !2857
  %4 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2858
  %5 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2859
  %call = call i64 @cfi_build_cmd(i64 81, %struct.map_info* %4, %struct.cfi_private* %5) #8, !dbg !2860
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %tmp, i32 0, i32 0, !dbg !2860
  %6 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !2860
  store i64 %call, i64* %6, align 8, !dbg !2860
  %7 = bitcast %union.map_word* %arrayidx to i8*, !dbg !2860
  %8 = bitcast %union.map_word* %tmp to i8*, !dbg !2860
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %7, i8* align 8 %8, i64 8, i1 false), !dbg !2860
  %arrayidx1 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %qry, i64 0, i64 1, !dbg !2861
  %9 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2862
  %10 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2863
  %call3 = call i64 @cfi_build_cmd(i64 82, %struct.map_info* %9, %struct.cfi_private* %10) #8, !dbg !2864
  %coerce.dive4 = getelementptr inbounds %union.map_word, %union.map_word* %tmp2, i32 0, i32 0, !dbg !2864
  %11 = bitcast [1 x i64]* %coerce.dive4 to i64*, !dbg !2864
  store i64 %call3, i64* %11, align 8, !dbg !2864
  %12 = bitcast %union.map_word* %arrayidx1 to i8*, !dbg !2864
  %13 = bitcast %union.map_word* %tmp2 to i8*, !dbg !2864
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 8, i1 false), !dbg !2864
  %arrayidx5 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %qry, i64 0, i64 2, !dbg !2865
  %14 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2866
  %15 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2867
  %call7 = call i64 @cfi_build_cmd(i64 89, %struct.map_info* %14, %struct.cfi_private* %15) #8, !dbg !2868
  %coerce.dive8 = getelementptr inbounds %union.map_word, %union.map_word* %tmp6, i32 0, i32 0, !dbg !2868
  %16 = bitcast [1 x i64]* %coerce.dive8 to i64*, !dbg !2868
  store i64 %call7, i64* %16, align 8, !dbg !2868
  %17 = bitcast %union.map_word* %arrayidx5 to i8*, !dbg !2868
  %18 = bitcast %union.map_word* %tmp6 to i8*, !dbg !2868
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %17, i8* align 8 %18, i64 8, i1 false), !dbg !2868
  %arrayidx9 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %val, i64 0, i64 0, !dbg !2869
  %19 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2870
  %read = getelementptr inbounds %struct.map_info, %struct.map_info* %19, i32 0, i32 7, !dbg !2870
  %20 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read, align 8, !dbg !2870
  %21 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2870
  %22 = load i32, i32* %base.addr, align 4, !dbg !2870
  %23 = load i32, i32* %osf, align 4, !dbg !2870
  %mul11 = mul i32 %23, 16, !dbg !2870
  %add = add i32 %22, %mul11, !dbg !2870
  %conv = zext i32 %add to i64, !dbg !2870
  %call12 = call i64 %20(%struct.map_info* %21, i64 %conv) #8, !dbg !2870
  %coerce.dive13 = getelementptr inbounds %union.map_word, %union.map_word* %tmp10, i32 0, i32 0, !dbg !2870
  %24 = bitcast [1 x i64]* %coerce.dive13 to i64*, !dbg !2870
  store i64 %call12, i64* %24, align 8, !dbg !2870
  %25 = bitcast %union.map_word* %arrayidx9 to i8*, !dbg !2870
  %26 = bitcast %union.map_word* %tmp10 to i8*, !dbg !2870
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %25, i8* align 8 %26, i64 8, i1 false), !dbg !2870
  %arrayidx14 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %val, i64 0, i64 1, !dbg !2871
  %27 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2872
  %read16 = getelementptr inbounds %struct.map_info, %struct.map_info* %27, i32 0, i32 7, !dbg !2872
  %28 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read16, align 8, !dbg !2872
  %29 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2872
  %30 = load i32, i32* %base.addr, align 4, !dbg !2872
  %31 = load i32, i32* %osf, align 4, !dbg !2872
  %mul17 = mul i32 %31, 17, !dbg !2872
  %add18 = add i32 %30, %mul17, !dbg !2872
  %conv19 = zext i32 %add18 to i64, !dbg !2872
  %call20 = call i64 %28(%struct.map_info* %29, i64 %conv19) #8, !dbg !2872
  %coerce.dive21 = getelementptr inbounds %union.map_word, %union.map_word* %tmp15, i32 0, i32 0, !dbg !2872
  %32 = bitcast [1 x i64]* %coerce.dive21 to i64*, !dbg !2872
  store i64 %call20, i64* %32, align 8, !dbg !2872
  %33 = bitcast %union.map_word* %arrayidx14 to i8*, !dbg !2872
  %34 = bitcast %union.map_word* %tmp15 to i8*, !dbg !2872
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %33, i8* align 8 %34, i64 8, i1 false), !dbg !2872
  %arrayidx22 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %val, i64 0, i64 2, !dbg !2873
  %35 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2874
  %read24 = getelementptr inbounds %struct.map_info, %struct.map_info* %35, i32 0, i32 7, !dbg !2874
  %36 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read24, align 8, !dbg !2874
  %37 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2874
  %38 = load i32, i32* %base.addr, align 4, !dbg !2874
  %39 = load i32, i32* %osf, align 4, !dbg !2874
  %mul25 = mul i32 %39, 18, !dbg !2874
  %add26 = add i32 %38, %mul25, !dbg !2874
  %conv27 = zext i32 %add26 to i64, !dbg !2874
  %call28 = call i64 %36(%struct.map_info* %37, i64 %conv27) #8, !dbg !2874
  %coerce.dive29 = getelementptr inbounds %union.map_word, %union.map_word* %tmp23, i32 0, i32 0, !dbg !2874
  %40 = bitcast [1 x i64]* %coerce.dive29 to i64*, !dbg !2874
  store i64 %call28, i64* %40, align 8, !dbg !2874
  %41 = bitcast %union.map_word* %arrayidx22 to i8*, !dbg !2874
  %42 = bitcast %union.map_word* %tmp23 to i8*, !dbg !2874
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %41, i8* align 8 %42, i64 8, i1 false), !dbg !2874
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2875, metadata !DIExpression()), !dbg !2878
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2879, metadata !DIExpression()), !dbg !2878
  store i32 1, i32* %ret, align 4, !dbg !2878
  store i32 0, i32* %i, align 4, !dbg !2880
  br label %for.cond, !dbg !2880

for.cond:                                         ; preds = %for.inc, %entry
  %43 = load i32, i32* %i, align 4, !dbg !2882
  %cmp = icmp slt i32 %43, 1, !dbg !2882
  br i1 %cmp, label %for.body, label %for.end, !dbg !2880

for.body:                                         ; preds = %for.cond
  %arrayidx31 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %qry, i64 0, i64 0, !dbg !2884
  %x = bitcast %union.map_word* %arrayidx31 to [1 x i64]*, !dbg !2884
  %44 = load i32, i32* %i, align 4, !dbg !2884
  %idxprom = sext i32 %44 to i64, !dbg !2884
  %arrayidx32 = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 %idxprom, !dbg !2884
  %45 = load i64, i64* %arrayidx32, align 8, !dbg !2884
  %arrayidx33 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %val, i64 0, i64 0, !dbg !2884
  %x34 = bitcast %union.map_word* %arrayidx33 to [1 x i64]*, !dbg !2884
  %46 = load i32, i32* %i, align 4, !dbg !2884
  %idxprom35 = sext i32 %46 to i64, !dbg !2884
  %arrayidx36 = getelementptr [1 x i64], [1 x i64]* %x34, i64 0, i64 %idxprom35, !dbg !2884
  %47 = load i64, i64* %arrayidx36, align 8, !dbg !2884
  %cmp37 = icmp ne i64 %45, %47, !dbg !2884
  br i1 %cmp37, label %if.then, label %if.end, !dbg !2882

if.then:                                          ; preds = %for.body
  store i32 0, i32* %ret, align 4, !dbg !2886
  br label %for.end, !dbg !2886

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2884

for.inc:                                          ; preds = %if.end
  %48 = load i32, i32* %i, align 4, !dbg !2882
  %inc = add i32 %48, 1, !dbg !2882
  store i32 %inc, i32* %i, align 4, !dbg !2882
  br label %for.cond, !dbg !2882, !llvm.loop !2888

for.end:                                          ; preds = %if.then, %for.cond
  %49 = load i32, i32* %ret, align 4, !dbg !2878
  store i32 %49, i32* %tmp39, align 4, !dbg !2880
  %50 = load i32, i32* %tmp39, align 4, !dbg !2878
  %tobool = icmp ne i32 %50, 0, !dbg !2889
  br i1 %tobool, label %if.end41, label %if.then40, !dbg !2890

if.then40:                                        ; preds = %for.end
  store i32 0, i32* %retval, align 4, !dbg !2891
  br label %return, !dbg !2891

if.end41:                                         ; preds = %for.end
  call void @llvm.dbg.declare(metadata i32* %i42, metadata !2892, metadata !DIExpression()), !dbg !2895
  call void @llvm.dbg.declare(metadata i32* %ret43, metadata !2896, metadata !DIExpression()), !dbg !2895
  store i32 1, i32* %ret43, align 4, !dbg !2895
  store i32 0, i32* %i42, align 4, !dbg !2897
  br label %for.cond44, !dbg !2897

for.cond44:                                       ; preds = %for.inc60, %if.end41
  %51 = load i32, i32* %i42, align 4, !dbg !2899
  %cmp45 = icmp slt i32 %51, 1, !dbg !2899
  br i1 %cmp45, label %for.body47, label %for.end62, !dbg !2897

for.body47:                                       ; preds = %for.cond44
  %arrayidx48 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %qry, i64 0, i64 1, !dbg !2901
  %x49 = bitcast %union.map_word* %arrayidx48 to [1 x i64]*, !dbg !2901
  %52 = load i32, i32* %i42, align 4, !dbg !2901
  %idxprom50 = sext i32 %52 to i64, !dbg !2901
  %arrayidx51 = getelementptr [1 x i64], [1 x i64]* %x49, i64 0, i64 %idxprom50, !dbg !2901
  %53 = load i64, i64* %arrayidx51, align 8, !dbg !2901
  %arrayidx52 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %val, i64 0, i64 1, !dbg !2901
  %x53 = bitcast %union.map_word* %arrayidx52 to [1 x i64]*, !dbg !2901
  %54 = load i32, i32* %i42, align 4, !dbg !2901
  %idxprom54 = sext i32 %54 to i64, !dbg !2901
  %arrayidx55 = getelementptr [1 x i64], [1 x i64]* %x53, i64 0, i64 %idxprom54, !dbg !2901
  %55 = load i64, i64* %arrayidx55, align 8, !dbg !2901
  %cmp56 = icmp ne i64 %53, %55, !dbg !2901
  br i1 %cmp56, label %if.then58, label %if.end59, !dbg !2899

if.then58:                                        ; preds = %for.body47
  store i32 0, i32* %ret43, align 4, !dbg !2903
  br label %for.end62, !dbg !2903

if.end59:                                         ; preds = %for.body47
  br label %for.inc60, !dbg !2901

for.inc60:                                        ; preds = %if.end59
  %56 = load i32, i32* %i42, align 4, !dbg !2899
  %inc61 = add i32 %56, 1, !dbg !2899
  store i32 %inc61, i32* %i42, align 4, !dbg !2899
  br label %for.cond44, !dbg !2899, !llvm.loop !2905

for.end62:                                        ; preds = %if.then58, %for.cond44
  %57 = load i32, i32* %ret43, align 4, !dbg !2895
  store i32 %57, i32* %tmp63, align 4, !dbg !2897
  %58 = load i32, i32* %tmp63, align 4, !dbg !2895
  %tobool64 = icmp ne i32 %58, 0, !dbg !2906
  br i1 %tobool64, label %if.end66, label %if.then65, !dbg !2907

if.then65:                                        ; preds = %for.end62
  store i32 0, i32* %retval, align 4, !dbg !2908
  br label %return, !dbg !2908

if.end66:                                         ; preds = %for.end62
  call void @llvm.dbg.declare(metadata i32* %i67, metadata !2909, metadata !DIExpression()), !dbg !2912
  call void @llvm.dbg.declare(metadata i32* %ret68, metadata !2913, metadata !DIExpression()), !dbg !2912
  store i32 1, i32* %ret68, align 4, !dbg !2912
  store i32 0, i32* %i67, align 4, !dbg !2914
  br label %for.cond69, !dbg !2914

for.cond69:                                       ; preds = %for.inc85, %if.end66
  %59 = load i32, i32* %i67, align 4, !dbg !2916
  %cmp70 = icmp slt i32 %59, 1, !dbg !2916
  br i1 %cmp70, label %for.body72, label %for.end87, !dbg !2914

for.body72:                                       ; preds = %for.cond69
  %arrayidx73 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %qry, i64 0, i64 2, !dbg !2918
  %x74 = bitcast %union.map_word* %arrayidx73 to [1 x i64]*, !dbg !2918
  %60 = load i32, i32* %i67, align 4, !dbg !2918
  %idxprom75 = sext i32 %60 to i64, !dbg !2918
  %arrayidx76 = getelementptr [1 x i64], [1 x i64]* %x74, i64 0, i64 %idxprom75, !dbg !2918
  %61 = load i64, i64* %arrayidx76, align 8, !dbg !2918
  %arrayidx77 = getelementptr [3 x %union.map_word], [3 x %union.map_word]* %val, i64 0, i64 2, !dbg !2918
  %x78 = bitcast %union.map_word* %arrayidx77 to [1 x i64]*, !dbg !2918
  %62 = load i32, i32* %i67, align 4, !dbg !2918
  %idxprom79 = sext i32 %62 to i64, !dbg !2918
  %arrayidx80 = getelementptr [1 x i64], [1 x i64]* %x78, i64 0, i64 %idxprom79, !dbg !2918
  %63 = load i64, i64* %arrayidx80, align 8, !dbg !2918
  %cmp81 = icmp ne i64 %61, %63, !dbg !2918
  br i1 %cmp81, label %if.then83, label %if.end84, !dbg !2916

if.then83:                                        ; preds = %for.body72
  store i32 0, i32* %ret68, align 4, !dbg !2920
  br label %for.end87, !dbg !2920

if.end84:                                         ; preds = %for.body72
  br label %for.inc85, !dbg !2918

for.inc85:                                        ; preds = %if.end84
  %64 = load i32, i32* %i67, align 4, !dbg !2916
  %inc86 = add i32 %64, 1, !dbg !2916
  store i32 %inc86, i32* %i67, align 4, !dbg !2916
  br label %for.cond69, !dbg !2916, !llvm.loop !2922

for.end87:                                        ; preds = %if.then83, %for.cond69
  %65 = load i32, i32* %ret68, align 4, !dbg !2912
  store i32 %65, i32* %tmp88, align 4, !dbg !2914
  %66 = load i32, i32* %tmp88, align 4, !dbg !2912
  %tobool89 = icmp ne i32 %66, 0, !dbg !2923
  br i1 %tobool89, label %if.end91, label %if.then90, !dbg !2924

if.then90:                                        ; preds = %for.end87
  store i32 0, i32* %retval, align 4, !dbg !2925
  br label %return, !dbg !2925

if.end91:                                         ; preds = %for.end87
  store i32 1, i32* %retval, align 4, !dbg !2926
  br label %return, !dbg !2926

return:                                           ; preds = %if.end91, %if.then90, %if.then65, %if.then40
  %67 = load i32, i32* %retval, align 4, !dbg !2927
  ret i32 %67, !dbg !2927
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cfi_qry_mode_on(i32 %base, %struct.map_info* %map, %struct.cfi_private* %cfi) #0 !dbg !2928 {
entry:
  %retval = alloca i32, align 4
  %base.addr = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !2931, metadata !DIExpression()), !dbg !2932
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !2933, metadata !DIExpression()), !dbg !2934
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !2935, metadata !DIExpression()), !dbg !2936
  %0 = load i32, i32* %base.addr, align 4, !dbg !2937
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2938
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2939
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2940
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %3, i32 0, i32 3, !dbg !2941
  %4 = load i32, i32* %device_type, align 4, !dbg !2941
  %call = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %0, %struct.map_info* %1, %struct.cfi_private* %2, i32 %4, %union.map_word* null) #8, !dbg !2942
  %5 = load i32, i32* %base.addr, align 4, !dbg !2943
  %6 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2944
  %7 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2945
  %8 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2946
  %device_type1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %8, i32 0, i32 3, !dbg !2947
  %9 = load i32, i32* %device_type1, align 4, !dbg !2947
  %call2 = call i32 @cfi_send_gen_cmd(i8 zeroext -104, i32 85, i32 %5, %struct.map_info* %6, %struct.cfi_private* %7, i32 %9, %union.map_word* null) #8, !dbg !2948
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2949
  %11 = load i32, i32* %base.addr, align 4, !dbg !2951
  %12 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2952
  %call3 = call i32 @cfi_qry_present(%struct.map_info* %10, i32 %11, %struct.cfi_private* %12) #8, !dbg !2953
  %tobool = icmp ne i32 %call3, 0, !dbg !2953
  br i1 %tobool, label %if.then, label %if.end, !dbg !2954

if.then:                                          ; preds = %entry
  store i32 1, i32* %retval, align 4, !dbg !2955
  br label %return, !dbg !2955

if.end:                                           ; preds = %entry
  %13 = load i32, i32* %base.addr, align 4, !dbg !2956
  %14 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2957
  %15 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2958
  %16 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2959
  %device_type4 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %16, i32 0, i32 3, !dbg !2960
  %17 = load i32, i32* %device_type4, align 4, !dbg !2960
  %call5 = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %13, %struct.map_info* %14, %struct.cfi_private* %15, i32 %17, %union.map_word* null) #8, !dbg !2961
  %18 = load i32, i32* %base.addr, align 4, !dbg !2962
  %19 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2963
  %20 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2964
  %21 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2965
  %device_type6 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %21, i32 0, i32 3, !dbg !2966
  %22 = load i32, i32* %device_type6, align 4, !dbg !2966
  %call7 = call i32 @cfi_send_gen_cmd(i8 zeroext -1, i32 0, i32 %18, %struct.map_info* %19, %struct.cfi_private* %20, i32 %22, %union.map_word* null) #8, !dbg !2967
  %23 = load i32, i32* %base.addr, align 4, !dbg !2968
  %24 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2969
  %25 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2970
  %26 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2971
  %device_type8 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %26, i32 0, i32 3, !dbg !2972
  %27 = load i32, i32* %device_type8, align 4, !dbg !2972
  %call9 = call i32 @cfi_send_gen_cmd(i8 zeroext -104, i32 85, i32 %23, %struct.map_info* %24, %struct.cfi_private* %25, i32 %27, %union.map_word* null) #8, !dbg !2973
  %28 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2974
  %29 = load i32, i32* %base.addr, align 4, !dbg !2976
  %30 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2977
  %call10 = call i32 @cfi_qry_present(%struct.map_info* %28, i32 %29, %struct.cfi_private* %30) #8, !dbg !2978
  %tobool11 = icmp ne i32 %call10, 0, !dbg !2978
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2979

if.then12:                                        ; preds = %if.end
  store i32 1, i32* %retval, align 4, !dbg !2980
  br label %return, !dbg !2980

if.end13:                                         ; preds = %if.end
  %31 = load i32, i32* %base.addr, align 4, !dbg !2981
  %32 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2982
  %33 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2983
  %34 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2984
  %device_type14 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %34, i32 0, i32 3, !dbg !2985
  %35 = load i32, i32* %device_type14, align 4, !dbg !2985
  %call15 = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %31, %struct.map_info* %32, %struct.cfi_private* %33, i32 %35, %union.map_word* null) #8, !dbg !2986
  %36 = load i32, i32* %base.addr, align 4, !dbg !2987
  %37 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2988
  %38 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2989
  %39 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2990
  %device_type16 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %39, i32 0, i32 3, !dbg !2991
  %40 = load i32, i32* %device_type16, align 4, !dbg !2991
  %call17 = call i32 @cfi_send_gen_cmd(i8 zeroext -104, i32 1365, i32 %36, %struct.map_info* %37, %struct.cfi_private* %38, i32 %40, %union.map_word* null) #8, !dbg !2992
  %41 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !2993
  %42 = load i32, i32* %base.addr, align 4, !dbg !2995
  %43 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !2996
  %call18 = call i32 @cfi_qry_present(%struct.map_info* %41, i32 %42, %struct.cfi_private* %43) #8, !dbg !2997
  %tobool19 = icmp ne i32 %call18, 0, !dbg !2997
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !2998

if.then20:                                        ; preds = %if.end13
  store i32 1, i32* %retval, align 4, !dbg !2999
  br label %return, !dbg !2999

if.end21:                                         ; preds = %if.end13
  %44 = load i32, i32* %base.addr, align 4, !dbg !3000
  %45 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3001
  %46 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3002
  %47 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3003
  %device_type22 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %47, i32 0, i32 3, !dbg !3004
  %48 = load i32, i32* %device_type22, align 4, !dbg !3004
  %call23 = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %44, %struct.map_info* %45, %struct.cfi_private* %46, i32 %48, %union.map_word* null) #8, !dbg !3005
  %49 = load i32, i32* %base.addr, align 4, !dbg !3006
  %50 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3007
  %51 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3008
  %52 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3009
  %device_type24 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %52, i32 0, i32 3, !dbg !3010
  %53 = load i32, i32* %device_type24, align 4, !dbg !3010
  %call25 = call i32 @cfi_send_gen_cmd(i8 zeroext -86, i32 21845, i32 %49, %struct.map_info* %50, %struct.cfi_private* %51, i32 %53, %union.map_word* null) #8, !dbg !3011
  %54 = load i32, i32* %base.addr, align 4, !dbg !3012
  %55 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3013
  %56 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3014
  %57 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3015
  %device_type26 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %57, i32 0, i32 3, !dbg !3016
  %58 = load i32, i32* %device_type26, align 4, !dbg !3016
  %call27 = call i32 @cfi_send_gen_cmd(i8 zeroext 85, i32 10922, i32 %54, %struct.map_info* %55, %struct.cfi_private* %56, i32 %58, %union.map_word* null) #8, !dbg !3017
  %59 = load i32, i32* %base.addr, align 4, !dbg !3018
  %60 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3019
  %61 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3020
  %62 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3021
  %device_type28 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %62, i32 0, i32 3, !dbg !3022
  %63 = load i32, i32* %device_type28, align 4, !dbg !3022
  %call29 = call i32 @cfi_send_gen_cmd(i8 zeroext -104, i32 21845, i32 %59, %struct.map_info* %60, %struct.cfi_private* %61, i32 %63, %union.map_word* null) #8, !dbg !3023
  %64 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3024
  %65 = load i32, i32* %base.addr, align 4, !dbg !3026
  %66 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3027
  %call30 = call i32 @cfi_qry_present(%struct.map_info* %64, i32 %65, %struct.cfi_private* %66) #8, !dbg !3028
  %tobool31 = icmp ne i32 %call30, 0, !dbg !3028
  br i1 %tobool31, label %if.then32, label %if.end33, !dbg !3029

if.then32:                                        ; preds = %if.end21
  store i32 1, i32* %retval, align 4, !dbg !3030
  br label %return, !dbg !3030

if.end33:                                         ; preds = %if.end21
  %67 = load i32, i32* %base.addr, align 4, !dbg !3031
  %68 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3032
  %69 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3033
  %70 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3034
  %device_type34 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %70, i32 0, i32 3, !dbg !3035
  %71 = load i32, i32* %device_type34, align 4, !dbg !3035
  %call35 = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %67, %struct.map_info* %68, %struct.cfi_private* %69, i32 %71, %union.map_word* null) #8, !dbg !3036
  %72 = load i32, i32* %base.addr, align 4, !dbg !3037
  %73 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3038
  %74 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3039
  %75 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3040
  %device_type36 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %75, i32 0, i32 3, !dbg !3041
  %76 = load i32, i32* %device_type36, align 4, !dbg !3041
  %call37 = call i32 @cfi_send_gen_cmd(i8 zeroext -86, i32 1365, i32 %72, %struct.map_info* %73, %struct.cfi_private* %74, i32 %76, %union.map_word* null) #8, !dbg !3042
  %77 = load i32, i32* %base.addr, align 4, !dbg !3043
  %78 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3044
  %79 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3045
  %80 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3046
  %device_type38 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %80, i32 0, i32 3, !dbg !3047
  %81 = load i32, i32* %device_type38, align 4, !dbg !3047
  %call39 = call i32 @cfi_send_gen_cmd(i8 zeroext 85, i32 682, i32 %77, %struct.map_info* %78, %struct.cfi_private* %79, i32 %81, %union.map_word* null) #8, !dbg !3048
  %82 = load i32, i32* %base.addr, align 4, !dbg !3049
  %83 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3050
  %84 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3051
  %85 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3052
  %device_type40 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %85, i32 0, i32 3, !dbg !3053
  %86 = load i32, i32* %device_type40, align 4, !dbg !3053
  %call41 = call i32 @cfi_send_gen_cmd(i8 zeroext -104, i32 1365, i32 %82, %struct.map_info* %83, %struct.cfi_private* %84, i32 %86, %union.map_word* null) #8, !dbg !3054
  %87 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3055
  %88 = load i32, i32* %base.addr, align 4, !dbg !3057
  %89 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3058
  %call42 = call i32 @cfi_qry_present(%struct.map_info* %87, i32 %88, %struct.cfi_private* %89) #8, !dbg !3059
  %tobool43 = icmp ne i32 %call42, 0, !dbg !3059
  br i1 %tobool43, label %if.then44, label %if.end45, !dbg !3060

if.then44:                                        ; preds = %if.end33
  store i32 1, i32* %retval, align 4, !dbg !3061
  br label %return, !dbg !3061

if.end45:                                         ; preds = %if.end33
  store i32 0, i32* %retval, align 4, !dbg !3062
  br label %return, !dbg !3062

return:                                           ; preds = %if.end45, %if.then44, %if.then32, %if.then20, %if.then12, %if.then
  %90 = load i32, i32* %retval, align 4, !dbg !3063
  ret i32 %90, !dbg !3063
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cfi_qry_mode_off(i32 %base, %struct.map_info* %map, %struct.cfi_private* %cfi) #0 !dbg !3064 {
entry:
  %base.addr = alloca i32, align 4
  %map.addr = alloca %struct.map_info*, align 8
  %cfi.addr = alloca %struct.cfi_private*, align 8
  store i32 %base, i32* %base.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %base.addr, metadata !3067, metadata !DIExpression()), !dbg !3068
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3069, metadata !DIExpression()), !dbg !3070
  store %struct.cfi_private* %cfi, %struct.cfi_private** %cfi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi.addr, metadata !3071, metadata !DIExpression()), !dbg !3072
  %0 = load i32, i32* %base.addr, align 4, !dbg !3073
  %1 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3074
  %2 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3075
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3076
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %3, i32 0, i32 3, !dbg !3077
  %4 = load i32, i32* %device_type, align 4, !dbg !3077
  %call = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %0, %struct.map_info* %1, %struct.cfi_private* %2, i32 %4, %union.map_word* null) #8, !dbg !3078
  %5 = load i32, i32* %base.addr, align 4, !dbg !3079
  %6 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3080
  %7 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3081
  %8 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3082
  %device_type1 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %8, i32 0, i32 3, !dbg !3083
  %9 = load i32, i32* %device_type1, align 4, !dbg !3083
  %call2 = call i32 @cfi_send_gen_cmd(i8 zeroext -1, i32 0, i32 %5, %struct.map_info* %6, %struct.cfi_private* %7, i32 %9, %union.map_word* null) #8, !dbg !3084
  %10 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3085
  %mfr = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %10, i32 0, i32 9, !dbg !3087
  %11 = load i32, i32* %mfr, align 8, !dbg !3087
  %cmp = icmp eq i32 %11, 32, !dbg !3088
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !3089

land.lhs.true:                                    ; preds = %entry
  %12 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3090
  %id = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %12, i32 0, i32 10, !dbg !3091
  %13 = load i32, i32* %id, align 4, !dbg !3091
  %cmp3 = icmp eq i32 %13, 8830, !dbg !3092
  br i1 %cmp3, label %if.then, label %lor.lhs.false, !dbg !3093

lor.lhs.false:                                    ; preds = %land.lhs.true
  %14 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3094
  %id4 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %14, i32 0, i32 10, !dbg !3095
  %15 = load i32, i32* %id4, align 4, !dbg !3095
  %cmp5 = icmp eq i32 %15, 126, !dbg !3096
  br i1 %cmp5, label %if.then, label %if.end, !dbg !3097

if.then:                                          ; preds = %lor.lhs.false, %land.lhs.true
  %16 = load i32, i32* %base.addr, align 4, !dbg !3098
  %17 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3099
  %18 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3100
  %19 = load %struct.cfi_private*, %struct.cfi_private** %cfi.addr, align 8, !dbg !3101
  %device_type6 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %19, i32 0, i32 3, !dbg !3102
  %20 = load i32, i32* %device_type6, align 4, !dbg !3102
  %call7 = call i32 @cfi_send_gen_cmd(i8 zeroext -16, i32 0, i32 %16, %struct.map_info* %17, %struct.cfi_private* %18, i32 %20, %union.map_word* null) #8, !dbg !3103
  br label %if.end, !dbg !3103

if.end:                                           ; preds = %if.then, %lor.lhs.false, %entry
  ret void, !dbg !3104
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.cfi_extquery* @cfi_read_pri(%struct.map_info* %map, i16 zeroext %adr, i16 zeroext %size, i8* %name) #0 !dbg !3105 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3114, metadata !DIExpression()), !dbg !3118
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3126, metadata !DIExpression()), !dbg !3127
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3128, metadata !DIExpression()), !dbg !3129
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3130, metadata !DIExpression()), !dbg !3131
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3132, metadata !DIExpression()), !dbg !3136
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3138, metadata !DIExpression()), !dbg !3142
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3144, metadata !DIExpression()), !dbg !3148
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3153, metadata !DIExpression()), !dbg !3154
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3155, metadata !DIExpression()), !dbg !3156
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3157, metadata !DIExpression()), !dbg !3158
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3159, metadata !DIExpression()), !dbg !3160
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3161, metadata !DIExpression()), !dbg !3162
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3163, metadata !DIExpression()), !dbg !3164
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3165, metadata !DIExpression()), !dbg !3166
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3167, metadata !DIExpression()), !dbg !3168
  %map.addr = alloca %struct.map_info*, align 8
  %adr.addr = alloca i16, align 2
  %size.addr = alloca i16, align 2
  %name.addr = alloca i8*, align 8
  %cfi = alloca %struct.cfi_private*, align 8
  %base = alloca i32, align 4
  %ofs_factor = alloca i32, align 4
  %i = alloca i32, align 4
  %extp = alloca %struct.cfi_extquery*, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3169, metadata !DIExpression()), !dbg !3170
  store i16 %adr, i16* %adr.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %adr.addr, metadata !3171, metadata !DIExpression()), !dbg !3172
  store i16 %size, i16* %size.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %size.addr, metadata !3173, metadata !DIExpression()), !dbg !3174
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi, metadata !3177, metadata !DIExpression()), !dbg !3178
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3179
  %fldrv_priv = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 17, !dbg !3180
  %1 = load i8*, i8** %fldrv_priv, align 8, !dbg !3180
  %2 = bitcast i8* %1 to %struct.cfi_private*, !dbg !3179
  store %struct.cfi_private* %2, %struct.cfi_private** %cfi, align 8, !dbg !3178
  call void @llvm.dbg.declare(metadata i32* %base, metadata !3181, metadata !DIExpression()), !dbg !3182
  store i32 0, i32* %base, align 4, !dbg !3182
  call void @llvm.dbg.declare(metadata i32* %ofs_factor, metadata !3183, metadata !DIExpression()), !dbg !3184
  %3 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3185
  %interleave = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %3, i32 0, i32 2, !dbg !3186
  %4 = load i32, i32* %interleave, align 8, !dbg !3186
  %5 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3187
  %device_type = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %5, i32 0, i32 3, !dbg !3188
  %6 = load i32, i32* %device_type, align 4, !dbg !3188
  %mul = mul i32 %4, %6, !dbg !3189
  store i32 %mul, i32* %ofs_factor, align 4, !dbg !3184
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3190, metadata !DIExpression()), !dbg !3191
  call void @llvm.dbg.declare(metadata %struct.cfi_extquery** %extp, metadata !3192, metadata !DIExpression()), !dbg !3193
  store %struct.cfi_extquery* null, %struct.cfi_extquery** %extp, align 8, !dbg !3193
  %7 = load i16, i16* %adr.addr, align 2, !dbg !3194
  %tobool = icmp ne i16 %7, 0, !dbg !3194
  br i1 %tobool, label %if.end, label %if.then, !dbg !3196

if.then:                                          ; preds = %entry
  br label %out, !dbg !3197

if.end:                                           ; preds = %entry
  %8 = load i8*, i8** %name.addr, align 8, !dbg !3198
  %9 = load i16, i16* %adr.addr, align 2, !dbg !3199
  %conv = zext i16 %9 to i32, !dbg !3199
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.1, i64 0, i64 0), i8* %8, i32 %conv) #11, !dbg !3200
  %10 = load i16, i16* %size.addr, align 2, !dbg !3201
  %conv1 = zext i16 %10 to i64, !dbg !3201
  store i64 %conv1, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %11 = load i64, i64* %size.addr.i, align 8, !dbg !3202
  %12 = call i1 @llvm.is.constant.i64(i64 %11) #9, !dbg !3203
  br i1 %12, label %if.then.i, label %if.end9.i, !dbg !3204

if.then.i:                                        ; preds = %if.end
  %13 = load i64, i64* %size.addr.i, align 8, !dbg !3205
  %cmp.i = icmp ugt i64 %13, 8192, !dbg !3206
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3207

if.then1.i:                                       ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3208
  %15 = load i32, i32* %flags.addr.i, align 4, !dbg !3209
  store i64 %14, i64* %size.addr.i.i, align 8
  store i32 %15, i32* %flags.addr.i.i, align 4
  %16 = load i64, i64* %size.addr.i.i, align 8, !dbg !3210
  %call.i.i = call i32 @get_order(i64 %16) #10, !dbg !3211
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3162
  %17 = load i64, i64* %size.addr.i.i, align 8, !dbg !3212
  %18 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3213
  %19 = load i32, i32* %order.i.i, align 4, !dbg !3214
  store i64 %17, i64* %size.addr.i.i.i, align 8
  store i32 %18, i32* %flags.addr.i.i.i, align 4
  store i32 %19, i32* %order.addr.i.i.i, align 4
  %20 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3215
  %21 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3216
  %22 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3217
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %20, i32 %21, i32 %22) #12, !dbg !3218
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3218
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3218
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3218
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3218
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3219
  br label %kmalloc.exit, !dbg !3219

if.end.i:                                         ; preds = %if.then.i
  %23 = load i64, i64* %size.addr.i, align 8, !dbg !3220
  store i64 %23, i64* %size.addr.i11.i, align 8
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3221
  %tobool.i.i = icmp ne i64 %24, 0, !dbg !3221
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3223

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3224
  br label %kmalloc_index.exit.i, !dbg !3224

if.end.i.i:                                       ; preds = %if.end.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3225
  %cmp.i.i = icmp ule i64 %25, 8, !dbg !3227
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3228

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3229
  br label %kmalloc_index.exit.i, !dbg !3229

if.end2.i.i:                                      ; preds = %if.end.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3230
  %cmp3.i.i = icmp ugt i64 %26, 64, !dbg !3232
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3233

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3234
  %cmp4.i.i = icmp ule i64 %27, 96, !dbg !3235
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3236

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3237
  br label %kmalloc_index.exit.i, !dbg !3237

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3238
  %cmp7.i.i = icmp ugt i64 %28, 128, !dbg !3240
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3241

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3242
  %cmp9.i.i = icmp ule i64 %29, 192, !dbg !3243
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3244

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3245
  br label %kmalloc_index.exit.i, !dbg !3245

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3246
  %cmp12.i.i = icmp ule i64 %30, 8, !dbg !3248
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3249

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3250
  br label %kmalloc_index.exit.i, !dbg !3250

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3251
  %cmp15.i.i = icmp ule i64 %31, 16, !dbg !3253
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3254

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3255
  br label %kmalloc_index.exit.i, !dbg !3255

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3256
  %cmp18.i.i = icmp ule i64 %32, 32, !dbg !3258
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3259

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3260
  br label %kmalloc_index.exit.i, !dbg !3260

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3261
  %cmp21.i.i = icmp ule i64 %33, 64, !dbg !3263
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3264

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3265
  br label %kmalloc_index.exit.i, !dbg !3265

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3266
  %cmp24.i.i = icmp ule i64 %34, 128, !dbg !3268
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3269

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3270
  br label %kmalloc_index.exit.i, !dbg !3270

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3271
  %cmp27.i.i = icmp ule i64 %35, 256, !dbg !3273
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3274

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3275
  br label %kmalloc_index.exit.i, !dbg !3275

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3276
  %cmp30.i.i = icmp ule i64 %36, 512, !dbg !3278
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3279

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3280
  br label %kmalloc_index.exit.i, !dbg !3280

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3281
  %cmp33.i.i = icmp ule i64 %37, 1024, !dbg !3283
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3284

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3285
  br label %kmalloc_index.exit.i, !dbg !3285

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3286
  %cmp36.i.i = icmp ule i64 %38, 2048, !dbg !3288
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3289

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3290
  br label %kmalloc_index.exit.i, !dbg !3290

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3291
  %cmp39.i.i = icmp ule i64 %39, 4096, !dbg !3293
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3294

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3295
  br label %kmalloc_index.exit.i, !dbg !3295

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3296
  %cmp42.i.i = icmp ule i64 %40, 8192, !dbg !3298
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3299

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3300
  br label %kmalloc_index.exit.i, !dbg !3300

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3301
  %cmp45.i.i = icmp ule i64 %41, 16384, !dbg !3303
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3304

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3305
  br label %kmalloc_index.exit.i, !dbg !3305

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3306
  %cmp48.i.i = icmp ule i64 %42, 32768, !dbg !3308
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3309

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3310
  br label %kmalloc_index.exit.i, !dbg !3310

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3311
  %cmp51.i.i = icmp ule i64 %43, 65536, !dbg !3313
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3314

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3315
  br label %kmalloc_index.exit.i, !dbg !3315

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3316
  %cmp54.i.i = icmp ule i64 %44, 131072, !dbg !3318
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3319

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3320
  br label %kmalloc_index.exit.i, !dbg !3320

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3321
  %cmp57.i.i = icmp ule i64 %45, 262144, !dbg !3323
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3324

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3325
  br label %kmalloc_index.exit.i, !dbg !3325

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3326
  %cmp60.i.i = icmp ule i64 %46, 524288, !dbg !3328
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3329

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3330
  br label %kmalloc_index.exit.i, !dbg !3330

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3331
  %cmp63.i.i = icmp ule i64 %47, 1048576, !dbg !3333
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3334

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3335
  br label %kmalloc_index.exit.i, !dbg !3335

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3336
  %cmp66.i.i = icmp ule i64 %48, 2097152, !dbg !3338
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3339

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3340
  br label %kmalloc_index.exit.i, !dbg !3340

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3341
  %cmp69.i.i = icmp ule i64 %49, 4194304, !dbg !3343
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3344

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3345
  br label %kmalloc_index.exit.i, !dbg !3345

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3346
  %cmp72.i.i = icmp ule i64 %50, 8388608, !dbg !3348
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3349

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3350
  br label %kmalloc_index.exit.i, !dbg !3350

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3351
  %cmp75.i.i = icmp ule i64 %51, 16777216, !dbg !3353
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3354

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3355
  br label %kmalloc_index.exit.i, !dbg !3355

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3356
  %cmp78.i.i = icmp ule i64 %52, 33554432, !dbg !3358
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3359

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3360
  br label %kmalloc_index.exit.i, !dbg !3360

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3361
  %cmp81.i.i = icmp ule i64 %53, 67108864, !dbg !3363
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3364

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3365
  br label %kmalloc_index.exit.i, !dbg !3365

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3366, !srcloc !3369
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !3370, !srcloc !3373
  unreachable, !dbg !3374

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %54 = load i32, i32* %retval.i.i, align 4, !dbg !3375
  store i32 %54, i32* %index.i, align 4, !dbg !3376
  %55 = load i32, i32* %index.i, align 4, !dbg !3377
  %tobool.i = icmp ne i32 %55, 0, !dbg !3377
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3379

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3380
  br label %kmalloc.exit, !dbg !3380

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %56 = load i32, i32* %flags.addr.i, align 4, !dbg !3381
  store i32 %56, i32* %flags.addr.i13.i, align 4
  %57 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3382
  %and.i.i = and i32 %57, 17, !dbg !3382
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3382
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3382
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3382
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3382
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3384

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3385
  br label %kmalloc_type.exit.i, !dbg !3385

if.end.i16.i:                                     ; preds = %if.end4.i
  %58 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3386
  %and2.i.i = and i32 %58, 1, !dbg !3387
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3386
  %59 = zext i1 %tobool3.i.i to i64, !dbg !3386
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3386
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3388
  br label %kmalloc_type.exit.i, !dbg !3388

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %60 = load i32, i32* %retval.i12.i, align 4, !dbg !3389
  %idxprom.i = zext i32 %60 to i64, !dbg !3390
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3390
  %61 = load i32, i32* %index.i, align 4, !dbg !3391
  %idxprom6.i = zext i32 %61 to i64, !dbg !3390
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3390
  %62 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3390
  %63 = load i32, i32* %flags.addr.i, align 4, !dbg !3392
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !3393
  store %struct.kmem_cache* %62, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %63, i32* %flags.addr.i17.i, align 4
  store i64 %64, i64* %size.addr.i18.i, align 8
  %65 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3394
  %66 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3395
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %65, i32 %66) #12, !dbg !3396
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3396
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3396
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3396
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3396
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3131
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3397
  %68 = load i8*, i8** %ret.i.i, align 8, !dbg !3398
  %69 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3399
  %70 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3400
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %67, i8* %68, i64 %69, i32 %70) #12, !dbg !3401
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3402
  %71 = load i8*, i8** %ret.i.i, align 8, !dbg !3403
  store i8* %71, i8** %retval.i, align 8, !dbg !3404
  br label %kmalloc.exit, !dbg !3404

if.end9.i:                                        ; preds = %if.end
  %72 = load i64, i64* %size.addr.i, align 8, !dbg !3405
  %73 = load i32, i32* %flags.addr.i, align 4, !dbg !3406
  %call10.i = call noalias i8* @__kmalloc(i64 %72, i32 %73) #12, !dbg !3407
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3407
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3407
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3407
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3407
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3408
  br label %kmalloc.exit, !dbg !3408

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %74 = load i8*, i8** %retval.i, align 8, !dbg !3409
  %75 = bitcast i8* %74 to %struct.cfi_extquery*, !dbg !3410
  store %struct.cfi_extquery* %75, %struct.cfi_extquery** %extp, align 8, !dbg !3411
  %76 = load %struct.cfi_extquery*, %struct.cfi_extquery** %extp, align 8, !dbg !3412
  %tobool3 = icmp ne %struct.cfi_extquery* %76, null, !dbg !3412
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !3414

if.then4:                                         ; preds = %kmalloc.exit
  br label %out, !dbg !3415

if.end5:                                          ; preds = %kmalloc.exit
  %77 = load i32, i32* %base, align 4, !dbg !3416
  %78 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3417
  %79 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3418
  %call6 = call i32 @cfi_qry_mode_on(i32 %77, %struct.map_info* %78, %struct.cfi_private* %79) #8, !dbg !3419
  store i32 0, i32* %i, align 4, !dbg !3420
  br label %for.cond, !dbg !3422

for.cond:                                         ; preds = %for.inc, %if.end5
  %80 = load i32, i32* %i, align 4, !dbg !3423
  %81 = load i16, i16* %size.addr, align 2, !dbg !3425
  %conv7 = zext i16 %81 to i32, !dbg !3425
  %cmp = icmp slt i32 %80, %conv7, !dbg !3426
  br i1 %cmp, label %for.body, label %for.end, !dbg !3427

for.body:                                         ; preds = %for.cond
  %82 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3428
  %83 = load i32, i32* %base, align 4, !dbg !3430
  %84 = load i16, i16* %adr.addr, align 2, !dbg !3431
  %conv9 = zext i16 %84 to i32, !dbg !3431
  %85 = load i32, i32* %i, align 4, !dbg !3432
  %add = add i32 %conv9, %85, !dbg !3433
  %86 = load i32, i32* %ofs_factor, align 4, !dbg !3434
  %mul10 = mul i32 %add, %86, !dbg !3435
  %add11 = add i32 %83, %mul10, !dbg !3436
  %call12 = call zeroext i8 @cfi_read_query(%struct.map_info* %82, i32 %add11) #8, !dbg !3437
  %87 = load %struct.cfi_extquery*, %struct.cfi_extquery** %extp, align 8, !dbg !3438
  %88 = bitcast %struct.cfi_extquery* %87 to i8*, !dbg !3439
  %89 = load i32, i32* %i, align 4, !dbg !3440
  %idxprom = sext i32 %89 to i64, !dbg !3439
  %arrayidx = getelementptr i8, i8* %88, i64 %idxprom, !dbg !3439
  store i8 %call12, i8* %arrayidx, align 1, !dbg !3441
  br label %for.inc, !dbg !3442

for.inc:                                          ; preds = %for.body
  %90 = load i32, i32* %i, align 4, !dbg !3443
  %inc = add i32 %90, 1, !dbg !3443
  store i32 %inc, i32* %i, align 4, !dbg !3443
  br label %for.cond, !dbg !3444, !llvm.loop !3445

for.end:                                          ; preds = %for.cond
  %91 = load i32, i32* %base, align 4, !dbg !3447
  %92 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3448
  %93 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3449
  call void @cfi_qry_mode_off(i32 %91, %struct.map_info* %92, %struct.cfi_private* %93) #8, !dbg !3450
  br label %out, !dbg !3450

out:                                              ; preds = %for.end, %if.then4, %if.then
  call void @llvm.dbg.label(metadata !3451), !dbg !3452
  %94 = load %struct.cfi_extquery*, %struct.cfi_extquery** %extp, align 8, !dbg !3453
  ret %struct.cfi_extquery* %94, !dbg !3454
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @cfi_read_query(%struct.map_info* %map, i32 %addr) #0 !dbg !3455 {
entry:
  %retval = alloca i8, align 1
  %map.addr = alloca %struct.map_info*, align 8
  %addr.addr = alloca i32, align 4
  %val = alloca %union.map_word, align 8
  store %struct.map_info* %map, %struct.map_info** %map.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.map_info** %map.addr, metadata !3458, metadata !DIExpression()), !dbg !3459
  store i32 %addr, i32* %addr.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %addr.addr, metadata !3460, metadata !DIExpression()), !dbg !3461
  call void @llvm.dbg.declare(metadata %union.map_word* %val, metadata !3462, metadata !DIExpression()), !dbg !3463
  %0 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3464
  %read = getelementptr inbounds %struct.map_info, %struct.map_info* %0, i32 0, i32 7, !dbg !3464
  %1 = load i64 (%struct.map_info*, i64)*, i64 (%struct.map_info*, i64)** %read, align 8, !dbg !3464
  %2 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3464
  %3 = load i32, i32* %addr.addr, align 4, !dbg !3464
  %conv = zext i32 %3 to i64, !dbg !3464
  %call = call i64 %1(%struct.map_info* %2, i64 %conv) #8, !dbg !3464
  %coerce.dive = getelementptr inbounds %union.map_word, %union.map_word* %val, i32 0, i32 0, !dbg !3464
  %4 = bitcast [1 x i64]* %coerce.dive to i64*, !dbg !3464
  store i64 %call, i64* %4, align 8, !dbg !3464
  %5 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3465
  %bankwidth = getelementptr inbounds %struct.map_info, %struct.map_info* %5, i32 0, i32 6, !dbg !3465
  %6 = load i32, i32* %bankwidth, align 4, !dbg !3465
  %cmp = icmp eq i32 %6, 1, !dbg !3465
  br i1 %cmp, label %if.then, label %if.else, !dbg !3467

if.then:                                          ; preds = %entry
  %x = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3468
  %arrayidx = getelementptr [1 x i64], [1 x i64]* %x, i64 0, i64 0, !dbg !3470
  %7 = load i64, i64* %arrayidx, align 8, !dbg !3470
  %conv2 = trunc i64 %7 to i8, !dbg !3470
  store i8 %conv2, i8* %retval, align 1, !dbg !3471
  br label %return, !dbg !3471

if.else:                                          ; preds = %entry
  %8 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3472
  %bankwidth3 = getelementptr inbounds %struct.map_info, %struct.map_info* %8, i32 0, i32 6, !dbg !3472
  %9 = load i32, i32* %bankwidth3, align 4, !dbg !3472
  %cmp4 = icmp eq i32 %9, 2, !dbg !3472
  br i1 %cmp4, label %if.then6, label %if.else56, !dbg !3474

if.then6:                                         ; preds = %if.else
  %10 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3475
  %swap = getelementptr inbounds %struct.map_info, %struct.map_info* %10, i32 0, i32 5, !dbg !3475
  %11 = load i32, i32* %swap, align 8, !dbg !3475
  %tobool = icmp ne i32 %11, 0, !dbg !3475
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !3475

cond.true:                                        ; preds = %if.then6
  br label %cond.end, !dbg !3475

cond.false:                                       ; preds = %if.then6
  br label %cond.end, !dbg !3475

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %11, %cond.true ], [ 1, %cond.false ], !dbg !3475
  %cmp7 = icmp eq i32 %cond, 1, !dbg !3475
  br i1 %cmp7, label %cond.true9, label %cond.false12, !dbg !3475

cond.true9:                                       ; preds = %cond.end
  %x10 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3475
  %arrayidx11 = getelementptr [1 x i64], [1 x i64]* %x10, i64 0, i64 0, !dbg !3475
  %12 = load i64, i64* %arrayidx11, align 8, !dbg !3475
  br label %cond.end53, !dbg !3475

cond.false12:                                     ; preds = %cond.end
  %13 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3475
  %swap13 = getelementptr inbounds %struct.map_info, %struct.map_info* %13, i32 0, i32 5, !dbg !3475
  %14 = load i32, i32* %swap13, align 8, !dbg !3475
  %tobool14 = icmp ne i32 %14, 0, !dbg !3475
  br i1 %tobool14, label %cond.true15, label %cond.false16, !dbg !3475

cond.true15:                                      ; preds = %cond.false12
  br label %cond.end17, !dbg !3475

cond.false16:                                     ; preds = %cond.false12
  br label %cond.end17, !dbg !3475

cond.end17:                                       ; preds = %cond.false16, %cond.true15
  %cond18 = phi i32 [ %14, %cond.true15 ], [ 1, %cond.false16 ], !dbg !3475
  %cmp19 = icmp eq i32 %cond18, 3, !dbg !3475
  br i1 %cmp19, label %cond.true21, label %cond.false45, !dbg !3475

cond.true21:                                      ; preds = %cond.end17
  %x22 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3475
  %arrayidx23 = getelementptr [1 x i64], [1 x i64]* %x22, i64 0, i64 0, !dbg !3475
  %15 = load i64, i64* %arrayidx23, align 8, !dbg !3475
  %conv24 = trunc i64 %15 to i16, !dbg !3475
  %16 = call i1 @llvm.is.constant.i16(i16 %conv24), !dbg !3475
  br i1 %16, label %cond.true25, label %cond.false37, !dbg !3475

cond.true25:                                      ; preds = %cond.true21
  %x26 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3475
  %arrayidx27 = getelementptr [1 x i64], [1 x i64]* %x26, i64 0, i64 0, !dbg !3475
  %17 = load i64, i64* %arrayidx27, align 8, !dbg !3475
  %conv28 = trunc i64 %17 to i16, !dbg !3475
  %conv29 = zext i16 %conv28 to i32, !dbg !3475
  %and = and i32 %conv29, 255, !dbg !3475
  %shl = shl i32 %and, 8, !dbg !3475
  %x30 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3475
  %arrayidx31 = getelementptr [1 x i64], [1 x i64]* %x30, i64 0, i64 0, !dbg !3475
  %18 = load i64, i64* %arrayidx31, align 8, !dbg !3475
  %conv32 = trunc i64 %18 to i16, !dbg !3475
  %conv33 = zext i16 %conv32 to i32, !dbg !3475
  %and34 = and i32 %conv33, 65280, !dbg !3475
  %shr = ashr i32 %and34, 8, !dbg !3475
  %or = or i32 %shl, %shr, !dbg !3475
  %conv35 = trunc i32 %or to i16, !dbg !3475
  %conv36 = zext i16 %conv35 to i32, !dbg !3475
  br label %cond.end43, !dbg !3475

cond.false37:                                     ; preds = %cond.true21
  %x38 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3475
  %arrayidx39 = getelementptr [1 x i64], [1 x i64]* %x38, i64 0, i64 0, !dbg !3475
  %19 = load i64, i64* %arrayidx39, align 8, !dbg !3475
  %conv40 = trunc i64 %19 to i16, !dbg !3475
  %call41 = call zeroext i16 @__fswab16(i16 zeroext %conv40) #10, !dbg !3475
  %conv42 = zext i16 %call41 to i32, !dbg !3475
  br label %cond.end43, !dbg !3475

cond.end43:                                       ; preds = %cond.false37, %cond.true25
  %cond44 = phi i32 [ %conv36, %cond.true25 ], [ %conv42, %cond.false37 ], !dbg !3475
  br label %cond.end50, !dbg !3475

cond.false45:                                     ; preds = %cond.end17
  %x46 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3475
  %arrayidx47 = getelementptr [1 x i64], [1 x i64]* %x46, i64 0, i64 0, !dbg !3475
  %20 = load i64, i64* %arrayidx47, align 8, !dbg !3475
  %conv48 = trunc i64 %20 to i16, !dbg !3475
  %conv49 = zext i16 %conv48 to i32, !dbg !3475
  br label %cond.end50, !dbg !3475

cond.end50:                                       ; preds = %cond.false45, %cond.end43
  %cond51 = phi i32 [ %cond44, %cond.end43 ], [ %conv49, %cond.false45 ], !dbg !3475
  %conv52 = sext i32 %cond51 to i64, !dbg !3475
  br label %cond.end53, !dbg !3475

cond.end53:                                       ; preds = %cond.end50, %cond.true9
  %cond54 = phi i64 [ %12, %cond.true9 ], [ %conv52, %cond.end50 ], !dbg !3475
  %conv55 = trunc i64 %cond54 to i8, !dbg !3475
  store i8 %conv55, i8* %retval, align 1, !dbg !3477
  br label %return, !dbg !3477

if.else56:                                        ; preds = %if.else
  %21 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3478
  %swap57 = getelementptr inbounds %struct.map_info, %struct.map_info* %21, i32 0, i32 5, !dbg !3478
  %22 = load i32, i32* %swap57, align 8, !dbg !3478
  %tobool58 = icmp ne i32 %22, 0, !dbg !3478
  br i1 %tobool58, label %cond.true59, label %cond.false60, !dbg !3478

cond.true59:                                      ; preds = %if.else56
  br label %cond.end61, !dbg !3478

cond.false60:                                     ; preds = %if.else56
  br label %cond.end61, !dbg !3478

cond.end61:                                       ; preds = %cond.false60, %cond.true59
  %cond62 = phi i32 [ %22, %cond.true59 ], [ 1, %cond.false60 ], !dbg !3478
  %cmp63 = icmp eq i32 %cond62, 1, !dbg !3478
  br i1 %cmp63, label %cond.true65, label %cond.false68, !dbg !3478

cond.true65:                                      ; preds = %cond.end61
  %x66 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx67 = getelementptr [1 x i64], [1 x i64]* %x66, i64 0, i64 0, !dbg !3478
  %23 = load i64, i64* %arrayidx67, align 8, !dbg !3478
  br label %cond.end119, !dbg !3478

cond.false68:                                     ; preds = %cond.end61
  %24 = load %struct.map_info*, %struct.map_info** %map.addr, align 8, !dbg !3478
  %swap69 = getelementptr inbounds %struct.map_info, %struct.map_info* %24, i32 0, i32 5, !dbg !3478
  %25 = load i32, i32* %swap69, align 8, !dbg !3478
  %tobool70 = icmp ne i32 %25, 0, !dbg !3478
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3478

cond.true71:                                      ; preds = %cond.false68
  br label %cond.end73, !dbg !3478

cond.false72:                                     ; preds = %cond.false68
  br label %cond.end73, !dbg !3478

cond.end73:                                       ; preds = %cond.false72, %cond.true71
  %cond74 = phi i32 [ %25, %cond.true71 ], [ 1, %cond.false72 ], !dbg !3478
  %cmp75 = icmp eq i32 %cond74, 3, !dbg !3478
  br i1 %cmp75, label %cond.true77, label %cond.false112, !dbg !3478

cond.true77:                                      ; preds = %cond.end73
  %x78 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx79 = getelementptr [1 x i64], [1 x i64]* %x78, i64 0, i64 0, !dbg !3478
  %26 = load i64, i64* %arrayidx79, align 8, !dbg !3478
  %conv80 = trunc i64 %26 to i32, !dbg !3478
  %27 = call i1 @llvm.is.constant.i32(i32 %conv80), !dbg !3478
  br i1 %27, label %cond.true81, label %cond.false105, !dbg !3478

cond.true81:                                      ; preds = %cond.true77
  %x82 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx83 = getelementptr [1 x i64], [1 x i64]* %x82, i64 0, i64 0, !dbg !3478
  %28 = load i64, i64* %arrayidx83, align 8, !dbg !3478
  %conv84 = trunc i64 %28 to i32, !dbg !3478
  %and85 = and i32 %conv84, 255, !dbg !3478
  %shl86 = shl i32 %and85, 24, !dbg !3478
  %x87 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx88 = getelementptr [1 x i64], [1 x i64]* %x87, i64 0, i64 0, !dbg !3478
  %29 = load i64, i64* %arrayidx88, align 8, !dbg !3478
  %conv89 = trunc i64 %29 to i32, !dbg !3478
  %and90 = and i32 %conv89, 65280, !dbg !3478
  %shl91 = shl i32 %and90, 8, !dbg !3478
  %or92 = or i32 %shl86, %shl91, !dbg !3478
  %x93 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx94 = getelementptr [1 x i64], [1 x i64]* %x93, i64 0, i64 0, !dbg !3478
  %30 = load i64, i64* %arrayidx94, align 8, !dbg !3478
  %conv95 = trunc i64 %30 to i32, !dbg !3478
  %and96 = and i32 %conv95, 16711680, !dbg !3478
  %shr97 = lshr i32 %and96, 8, !dbg !3478
  %or98 = or i32 %or92, %shr97, !dbg !3478
  %x99 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx100 = getelementptr [1 x i64], [1 x i64]* %x99, i64 0, i64 0, !dbg !3478
  %31 = load i64, i64* %arrayidx100, align 8, !dbg !3478
  %conv101 = trunc i64 %31 to i32, !dbg !3478
  %and102 = and i32 %conv101, -16777216, !dbg !3478
  %shr103 = lshr i32 %and102, 24, !dbg !3478
  %or104 = or i32 %or98, %shr103, !dbg !3478
  br label %cond.end110, !dbg !3478

cond.false105:                                    ; preds = %cond.true77
  %x106 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx107 = getelementptr [1 x i64], [1 x i64]* %x106, i64 0, i64 0, !dbg !3478
  %32 = load i64, i64* %arrayidx107, align 8, !dbg !3478
  %conv108 = trunc i64 %32 to i32, !dbg !3478
  %call109 = call i32 @__fswab32(i32 %conv108) #10, !dbg !3478
  br label %cond.end110, !dbg !3478

cond.end110:                                      ; preds = %cond.false105, %cond.true81
  %cond111 = phi i32 [ %or104, %cond.true81 ], [ %call109, %cond.false105 ], !dbg !3478
  br label %cond.end116, !dbg !3478

cond.false112:                                    ; preds = %cond.end73
  %x113 = bitcast %union.map_word* %val to [1 x i64]*, !dbg !3478
  %arrayidx114 = getelementptr [1 x i64], [1 x i64]* %x113, i64 0, i64 0, !dbg !3478
  %33 = load i64, i64* %arrayidx114, align 8, !dbg !3478
  %conv115 = trunc i64 %33 to i32, !dbg !3478
  br label %cond.end116, !dbg !3478

cond.end116:                                      ; preds = %cond.false112, %cond.end110
  %cond117 = phi i32 [ %cond111, %cond.end110 ], [ %conv115, %cond.false112 ], !dbg !3478
  %conv118 = zext i32 %cond117 to i64, !dbg !3478
  br label %cond.end119, !dbg !3478

cond.end119:                                      ; preds = %cond.end116, %cond.true65
  %cond120 = phi i64 [ %23, %cond.true65 ], [ %conv118, %cond.end116 ], !dbg !3478
  %conv121 = trunc i64 %cond120 to i8, !dbg !3478
  store i8 %conv121, i8* %retval, align 1, !dbg !3480
  br label %return, !dbg !3480

return:                                           ; preds = %cond.end119, %cond.end53, %if.then
  %34 = load i8, i8* %retval, align 1, !dbg !3481
  ret i8 %34, !dbg !3481
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @cfi_fixup(%struct.mtd_info* %mtd, %struct.cfi_fixup* %fixups) #0 !dbg !3482 {
entry:
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %fixups.addr = alloca %struct.cfi_fixup*, align 8
  %map = alloca %struct.map_info*, align 8
  %cfi = alloca %struct.cfi_private*, align 8
  %f = alloca %struct.cfi_fixup*, align 8
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3491, metadata !DIExpression()), !dbg !3492
  store %struct.cfi_fixup* %fixups, %struct.cfi_fixup** %fixups.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cfi_fixup** %fixups.addr, metadata !3493, metadata !DIExpression()), !dbg !3494
  call void @llvm.dbg.declare(metadata %struct.map_info** %map, metadata !3495, metadata !DIExpression()), !dbg !3496
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3497
  %priv = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 53, !dbg !3498
  %1 = load i8*, i8** %priv, align 8, !dbg !3498
  %2 = bitcast i8* %1 to %struct.map_info*, !dbg !3497
  store %struct.map_info* %2, %struct.map_info** %map, align 8, !dbg !3496
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi, metadata !3499, metadata !DIExpression()), !dbg !3500
  %3 = load %struct.map_info*, %struct.map_info** %map, align 8, !dbg !3501
  %fldrv_priv = getelementptr inbounds %struct.map_info, %struct.map_info* %3, i32 0, i32 17, !dbg !3502
  %4 = load i8*, i8** %fldrv_priv, align 8, !dbg !3502
  %5 = bitcast i8* %4 to %struct.cfi_private*, !dbg !3501
  store %struct.cfi_private* %5, %struct.cfi_private** %cfi, align 8, !dbg !3500
  call void @llvm.dbg.declare(metadata %struct.cfi_fixup** %f, metadata !3503, metadata !DIExpression()), !dbg !3504
  %6 = load %struct.cfi_fixup*, %struct.cfi_fixup** %fixups.addr, align 8, !dbg !3505
  store %struct.cfi_fixup* %6, %struct.cfi_fixup** %f, align 8, !dbg !3507
  br label %for.cond, !dbg !3508

for.cond:                                         ; preds = %for.inc, %entry
  %7 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3509
  %fixup = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %7, i32 0, i32 2, !dbg !3511
  %8 = load void (%struct.mtd_info*)*, void (%struct.mtd_info*)** %fixup, align 8, !dbg !3511
  %tobool = icmp ne void (%struct.mtd_info*)* %8, null, !dbg !3512
  br i1 %tobool, label %for.body, label %for.end, !dbg !3512

for.body:                                         ; preds = %for.cond
  %9 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3513
  %mfr = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %9, i32 0, i32 0, !dbg !3516
  %10 = load i16, i16* %mfr, align 8, !dbg !3516
  %conv = zext i16 %10 to i32, !dbg !3513
  %cmp = icmp eq i32 %conv, 65535, !dbg !3517
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false, !dbg !3518

lor.lhs.false:                                    ; preds = %for.body
  %11 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3519
  %mfr2 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %11, i32 0, i32 0, !dbg !3520
  %12 = load i16, i16* %mfr2, align 8, !dbg !3520
  %conv3 = zext i16 %12 to i32, !dbg !3519
  %13 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3521
  %mfr4 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %13, i32 0, i32 9, !dbg !3522
  %14 = load i32, i32* %mfr4, align 8, !dbg !3522
  %cmp5 = icmp eq i32 %conv3, %14, !dbg !3523
  br i1 %cmp5, label %land.lhs.true, label %if.end, !dbg !3524

land.lhs.true:                                    ; preds = %lor.lhs.false, %for.body
  %15 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3525
  %id = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %15, i32 0, i32 1, !dbg !3526
  %16 = load i16, i16* %id, align 2, !dbg !3526
  %conv7 = zext i16 %16 to i32, !dbg !3525
  %cmp8 = icmp eq i32 %conv7, 65535, !dbg !3527
  br i1 %cmp8, label %if.then, label %lor.lhs.false10, !dbg !3528

lor.lhs.false10:                                  ; preds = %land.lhs.true
  %17 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3529
  %id11 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %17, i32 0, i32 1, !dbg !3530
  %18 = load i16, i16* %id11, align 2, !dbg !3530
  %conv12 = zext i16 %18 to i32, !dbg !3529
  %19 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3531
  %id13 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %19, i32 0, i32 10, !dbg !3532
  %20 = load i32, i32* %id13, align 4, !dbg !3532
  %cmp14 = icmp eq i32 %conv12, %20, !dbg !3533
  br i1 %cmp14, label %if.then, label %if.end, !dbg !3534

if.then:                                          ; preds = %lor.lhs.false10, %land.lhs.true
  %21 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3535
  %fixup16 = getelementptr inbounds %struct.cfi_fixup, %struct.cfi_fixup* %21, i32 0, i32 2, !dbg !3537
  %22 = load void (%struct.mtd_info*)*, void (%struct.mtd_info*)** %fixup16, align 8, !dbg !3537
  %23 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3538
  call void %22(%struct.mtd_info* %23) #8, !dbg !3535
  br label %if.end, !dbg !3539

if.end:                                           ; preds = %if.then, %lor.lhs.false10, %lor.lhs.false
  br label %for.inc, !dbg !3540

for.inc:                                          ; preds = %if.end
  %24 = load %struct.cfi_fixup*, %struct.cfi_fixup** %f, align 8, !dbg !3541
  %incdec.ptr = getelementptr %struct.cfi_fixup, %struct.cfi_fixup* %24, i32 1, !dbg !3541
  store %struct.cfi_fixup* %incdec.ptr, %struct.cfi_fixup** %f, align 8, !dbg !3541
  br label %for.cond, !dbg !3542, !llvm.loop !3543

for.end:                                          ; preds = %for.cond
  ret void, !dbg !3545
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @cfi_varsize_frob(%struct.mtd_info* %mtd, i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)* %frob, i64 %ofs, i64 %len, i8* %thunk) #0 !dbg !3546 {
entry:
  %retval = alloca i32, align 4
  %mtd.addr = alloca %struct.mtd_info*, align 8
  %frob.addr = alloca i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)*, align 8
  %ofs.addr = alloca i64, align 8
  %len.addr = alloca i64, align 8
  %thunk.addr = alloca i8*, align 8
  %map = alloca %struct.map_info*, align 8
  %cfi = alloca %struct.cfi_private*, align 8
  %adr = alloca i64, align 8
  %chipnum = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %first = alloca i32, align 4
  %regions = alloca %struct.mtd_erase_region_info*, align 8
  %size = alloca i32, align 4
  store %struct.mtd_info* %mtd, %struct.mtd_info** %mtd.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.mtd_info** %mtd.addr, metadata !3554, metadata !DIExpression()), !dbg !3555
  store i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)* %frob, i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)** %frob.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)** %frob.addr, metadata !3556, metadata !DIExpression()), !dbg !3557
  store i64 %ofs, i64* %ofs.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %ofs.addr, metadata !3558, metadata !DIExpression()), !dbg !3559
  store i64 %len, i64* %len.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %len.addr, metadata !3560, metadata !DIExpression()), !dbg !3561
  store i8* %thunk, i8** %thunk.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %thunk.addr, metadata !3562, metadata !DIExpression()), !dbg !3563
  call void @llvm.dbg.declare(metadata %struct.map_info** %map, metadata !3564, metadata !DIExpression()), !dbg !3565
  %0 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3566
  %priv = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %0, i32 0, i32 53, !dbg !3567
  %1 = load i8*, i8** %priv, align 8, !dbg !3567
  %2 = bitcast i8* %1 to %struct.map_info*, !dbg !3566
  store %struct.map_info* %2, %struct.map_info** %map, align 8, !dbg !3565
  call void @llvm.dbg.declare(metadata %struct.cfi_private** %cfi, metadata !3568, metadata !DIExpression()), !dbg !3569
  %3 = load %struct.map_info*, %struct.map_info** %map, align 8, !dbg !3570
  %fldrv_priv = getelementptr inbounds %struct.map_info, %struct.map_info* %3, i32 0, i32 17, !dbg !3571
  %4 = load i8*, i8** %fldrv_priv, align 8, !dbg !3571
  %5 = bitcast i8* %4 to %struct.cfi_private*, !dbg !3570
  store %struct.cfi_private* %5, %struct.cfi_private** %cfi, align 8, !dbg !3569
  call void @llvm.dbg.declare(metadata i64* %adr, metadata !3572, metadata !DIExpression()), !dbg !3573
  call void @llvm.dbg.declare(metadata i32* %chipnum, metadata !3574, metadata !DIExpression()), !dbg !3575
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3576, metadata !DIExpression()), !dbg !3577
  store i32 0, i32* %ret, align 4, !dbg !3577
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3578, metadata !DIExpression()), !dbg !3579
  call void @llvm.dbg.declare(metadata i32* %first, metadata !3580, metadata !DIExpression()), !dbg !3581
  call void @llvm.dbg.declare(metadata %struct.mtd_erase_region_info** %regions, metadata !3582, metadata !DIExpression()), !dbg !3583
  %6 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3584
  %eraseregions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %6, i32 0, i32 20, !dbg !3585
  %7 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %eraseregions, align 8, !dbg !3585
  store %struct.mtd_erase_region_info* %7, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3583
  store i32 0, i32* %i, align 4, !dbg !3586
  br label %while.cond, !dbg !3587

while.cond:                                       ; preds = %while.body, %entry
  %8 = load i32, i32* %i, align 4, !dbg !3588
  %9 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3589
  %numeraseregions = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %9, i32 0, i32 19, !dbg !3590
  %10 = load i32, i32* %numeraseregions, align 8, !dbg !3590
  %cmp = icmp slt i32 %8, %10, !dbg !3591
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3592

land.rhs:                                         ; preds = %while.cond
  %11 = load i64, i64* %ofs.addr, align 8, !dbg !3593
  %12 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3594
  %13 = load i32, i32* %i, align 4, !dbg !3595
  %idxprom = sext i32 %13 to i64, !dbg !3594
  %arrayidx = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %12, i64 %idxprom, !dbg !3594
  %offset = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx, i32 0, i32 0, !dbg !3596
  %14 = load i64, i64* %offset, align 8, !dbg !3596
  %cmp1 = icmp uge i64 %11, %14, !dbg !3597
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %15 = phi i1 [ false, %while.cond ], [ %cmp1, %land.rhs ], !dbg !3598
  br i1 %15, label %while.body, label %while.end, !dbg !3587

while.body:                                       ; preds = %land.end
  %16 = load i32, i32* %i, align 4, !dbg !3599
  %inc = add i32 %16, 1, !dbg !3599
  store i32 %inc, i32* %i, align 4, !dbg !3599
  br label %while.cond, !dbg !3587, !llvm.loop !3600

while.end:                                        ; preds = %land.end
  %17 = load i32, i32* %i, align 4, !dbg !3601
  %dec = add i32 %17, -1, !dbg !3601
  store i32 %dec, i32* %i, align 4, !dbg !3601
  %18 = load i64, i64* %ofs.addr, align 8, !dbg !3602
  %19 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3604
  %20 = load i32, i32* %i, align 4, !dbg !3605
  %idxprom2 = sext i32 %20 to i64, !dbg !3604
  %arrayidx3 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %19, i64 %idxprom2, !dbg !3604
  %erasesize = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx3, i32 0, i32 1, !dbg !3606
  %21 = load i32, i32* %erasesize, align 8, !dbg !3606
  %sub = sub i32 %21, 1, !dbg !3607
  %conv = zext i32 %sub to i64, !dbg !3608
  %and = and i64 %18, %conv, !dbg !3609
  %tobool = icmp ne i64 %and, 0, !dbg !3609
  br i1 %tobool, label %if.then, label %if.end, !dbg !3610

if.then:                                          ; preds = %while.end
  store i32 -22, i32* %retval, align 4, !dbg !3611
  br label %return, !dbg !3611

if.end:                                           ; preds = %while.end
  %22 = load i32, i32* %i, align 4, !dbg !3612
  store i32 %22, i32* %first, align 4, !dbg !3613
  br label %while.cond4, !dbg !3614

while.cond4:                                      ; preds = %while.body15, %if.end
  %23 = load i32, i32* %i, align 4, !dbg !3615
  %24 = load %struct.mtd_info*, %struct.mtd_info** %mtd.addr, align 8, !dbg !3616
  %numeraseregions5 = getelementptr inbounds %struct.mtd_info, %struct.mtd_info* %24, i32 0, i32 19, !dbg !3617
  %25 = load i32, i32* %numeraseregions5, align 8, !dbg !3617
  %cmp6 = icmp slt i32 %23, %25, !dbg !3618
  br i1 %cmp6, label %land.rhs8, label %land.end14, !dbg !3619

land.rhs8:                                        ; preds = %while.cond4
  %26 = load i64, i64* %ofs.addr, align 8, !dbg !3620
  %27 = load i64, i64* %len.addr, align 8, !dbg !3621
  %add = add i64 %26, %27, !dbg !3622
  %28 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3623
  %29 = load i32, i32* %i, align 4, !dbg !3624
  %idxprom9 = sext i32 %29 to i64, !dbg !3623
  %arrayidx10 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %28, i64 %idxprom9, !dbg !3623
  %offset11 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx10, i32 0, i32 0, !dbg !3625
  %30 = load i64, i64* %offset11, align 8, !dbg !3625
  %cmp12 = icmp uge i64 %add, %30, !dbg !3626
  br label %land.end14

land.end14:                                       ; preds = %land.rhs8, %while.cond4
  %31 = phi i1 [ false, %while.cond4 ], [ %cmp12, %land.rhs8 ], !dbg !3598
  br i1 %31, label %while.body15, label %while.end17, !dbg !3614

while.body15:                                     ; preds = %land.end14
  %32 = load i32, i32* %i, align 4, !dbg !3627
  %inc16 = add i32 %32, 1, !dbg !3627
  store i32 %inc16, i32* %i, align 4, !dbg !3627
  br label %while.cond4, !dbg !3614, !llvm.loop !3628

while.end17:                                      ; preds = %land.end14
  %33 = load i32, i32* %i, align 4, !dbg !3629
  %dec18 = add i32 %33, -1, !dbg !3629
  store i32 %dec18, i32* %i, align 4, !dbg !3629
  %34 = load i64, i64* %ofs.addr, align 8, !dbg !3630
  %35 = load i64, i64* %len.addr, align 8, !dbg !3632
  %add19 = add i64 %34, %35, !dbg !3633
  %36 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3634
  %37 = load i32, i32* %i, align 4, !dbg !3635
  %idxprom20 = sext i32 %37 to i64, !dbg !3634
  %arrayidx21 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %36, i64 %idxprom20, !dbg !3634
  %erasesize22 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx21, i32 0, i32 1, !dbg !3636
  %38 = load i32, i32* %erasesize22, align 8, !dbg !3636
  %sub23 = sub i32 %38, 1, !dbg !3637
  %conv24 = zext i32 %sub23 to i64, !dbg !3638
  %and25 = and i64 %add19, %conv24, !dbg !3639
  %tobool26 = icmp ne i64 %and25, 0, !dbg !3639
  br i1 %tobool26, label %if.then27, label %if.end28, !dbg !3640

if.then27:                                        ; preds = %while.end17
  store i32 -22, i32* %retval, align 4, !dbg !3641
  br label %return, !dbg !3641

if.end28:                                         ; preds = %while.end17
  %39 = load i64, i64* %ofs.addr, align 8, !dbg !3642
  %40 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3643
  %chipshift = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %40, i32 0, i32 13, !dbg !3644
  %41 = load i64, i64* %chipshift, align 8, !dbg !3644
  %shr = ashr i64 %39, %41, !dbg !3645
  %conv29 = trunc i64 %shr to i32, !dbg !3642
  store i32 %conv29, i32* %chipnum, align 4, !dbg !3646
  %42 = load i64, i64* %ofs.addr, align 8, !dbg !3647
  %43 = load i32, i32* %chipnum, align 4, !dbg !3648
  %44 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3649
  %chipshift30 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %44, i32 0, i32 13, !dbg !3650
  %45 = load i64, i64* %chipshift30, align 8, !dbg !3650
  %sh_prom = trunc i64 %45 to i32, !dbg !3651
  %shl = shl i32 %43, %sh_prom, !dbg !3651
  %conv31 = sext i32 %shl to i64, !dbg !3652
  %sub32 = sub i64 %42, %conv31, !dbg !3653
  store i64 %sub32, i64* %adr, align 8, !dbg !3654
  %46 = load i32, i32* %first, align 4, !dbg !3655
  store i32 %46, i32* %i, align 4, !dbg !3656
  br label %while.cond33, !dbg !3657

while.cond33:                                     ; preds = %if.end71, %if.end28
  %47 = load i64, i64* %len.addr, align 8, !dbg !3658
  %tobool34 = icmp ne i64 %47, 0, !dbg !3657
  br i1 %tobool34, label %while.body35, label %while.end72, !dbg !3657

while.body35:                                     ; preds = %while.cond33
  call void @llvm.dbg.declare(metadata i32* %size, metadata !3659, metadata !DIExpression()), !dbg !3661
  %48 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3662
  %49 = load i32, i32* %i, align 4, !dbg !3663
  %idxprom36 = sext i32 %49 to i64, !dbg !3662
  %arrayidx37 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %48, i64 %idxprom36, !dbg !3662
  %erasesize38 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx37, i32 0, i32 1, !dbg !3664
  %50 = load i32, i32* %erasesize38, align 8, !dbg !3664
  store i32 %50, i32* %size, align 4, !dbg !3661
  %51 = load i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)*, i32 (%struct.map_info*, %struct.flchip*, i64, i32, i8*)** %frob.addr, align 8, !dbg !3665
  %52 = load %struct.map_info*, %struct.map_info** %map, align 8, !dbg !3666
  %53 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3667
  %chips = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %53, i32 0, i32 15, !dbg !3668
  %54 = load i32, i32* %chipnum, align 4, !dbg !3669
  %idxprom39 = sext i32 %54 to i64, !dbg !3667
  %arrayidx40 = getelementptr [0 x %struct.flchip], [0 x %struct.flchip]* %chips, i64 0, i64 %idxprom39, !dbg !3667
  %55 = load i64, i64* %adr, align 8, !dbg !3670
  %56 = load i32, i32* %size, align 4, !dbg !3671
  %57 = load i8*, i8** %thunk.addr, align 8, !dbg !3672
  %call = call i32 %51(%struct.map_info* %52, %struct.flchip* %arrayidx40, i64 %55, i32 %56, i8* %57) #8, !dbg !3673
  store i32 %call, i32* %ret, align 4, !dbg !3674
  %58 = load i32, i32* %ret, align 4, !dbg !3675
  %tobool41 = icmp ne i32 %58, 0, !dbg !3675
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !3677

if.then42:                                        ; preds = %while.body35
  %59 = load i32, i32* %ret, align 4, !dbg !3678
  store i32 %59, i32* %retval, align 4, !dbg !3679
  br label %return, !dbg !3679

if.end43:                                         ; preds = %while.body35
  %60 = load i32, i32* %size, align 4, !dbg !3680
  %conv44 = sext i32 %60 to i64, !dbg !3680
  %61 = load i64, i64* %adr, align 8, !dbg !3681
  %add45 = add i64 %61, %conv44, !dbg !3681
  store i64 %add45, i64* %adr, align 8, !dbg !3681
  %62 = load i32, i32* %size, align 4, !dbg !3682
  %conv46 = sext i32 %62 to i64, !dbg !3682
  %63 = load i64, i64* %ofs.addr, align 8, !dbg !3683
  %add47 = add i64 %63, %conv46, !dbg !3683
  store i64 %add47, i64* %ofs.addr, align 8, !dbg !3683
  %64 = load i32, i32* %size, align 4, !dbg !3684
  %conv48 = sext i32 %64 to i64, !dbg !3684
  %65 = load i64, i64* %len.addr, align 8, !dbg !3685
  %sub49 = sub i64 %65, %conv48, !dbg !3685
  store i64 %sub49, i64* %len.addr, align 8, !dbg !3685
  %66 = load i64, i64* %ofs.addr, align 8, !dbg !3686
  %67 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3688
  %68 = load i32, i32* %i, align 4, !dbg !3689
  %idxprom50 = sext i32 %68 to i64, !dbg !3688
  %arrayidx51 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %67, i64 %idxprom50, !dbg !3688
  %offset52 = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx51, i32 0, i32 0, !dbg !3690
  %69 = load i64, i64* %offset52, align 8, !dbg !3690
  %70 = load i32, i32* %size, align 4, !dbg !3691
  %71 = load %struct.mtd_erase_region_info*, %struct.mtd_erase_region_info** %regions, align 8, !dbg !3692
  %72 = load i32, i32* %i, align 4, !dbg !3693
  %idxprom53 = sext i32 %72 to i64, !dbg !3692
  %arrayidx54 = getelementptr %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %71, i64 %idxprom53, !dbg !3692
  %numblocks = getelementptr inbounds %struct.mtd_erase_region_info, %struct.mtd_erase_region_info* %arrayidx54, i32 0, i32 2, !dbg !3694
  %73 = load i32, i32* %numblocks, align 4, !dbg !3694
  %mul = mul i32 %70, %73, !dbg !3695
  %conv55 = zext i32 %mul to i64, !dbg !3691
  %add56 = add i64 %69, %conv55, !dbg !3696
  %cmp57 = icmp eq i64 %66, %add56, !dbg !3697
  br i1 %cmp57, label %if.then59, label %if.end61, !dbg !3698

if.then59:                                        ; preds = %if.end43
  %74 = load i32, i32* %i, align 4, !dbg !3699
  %inc60 = add i32 %74, 1, !dbg !3699
  store i32 %inc60, i32* %i, align 4, !dbg !3699
  br label %if.end61, !dbg !3700

if.end61:                                         ; preds = %if.then59, %if.end43
  %75 = load i64, i64* %adr, align 8, !dbg !3701
  %76 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3703
  %chipshift62 = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %76, i32 0, i32 13, !dbg !3704
  %77 = load i64, i64* %chipshift62, align 8, !dbg !3704
  %shr63 = lshr i64 %75, %77, !dbg !3705
  %tobool64 = icmp ne i64 %shr63, 0, !dbg !3705
  br i1 %tobool64, label %if.then65, label %if.end71, !dbg !3706

if.then65:                                        ; preds = %if.end61
  store i64 0, i64* %adr, align 8, !dbg !3707
  %78 = load i32, i32* %chipnum, align 4, !dbg !3709
  %inc66 = add i32 %78, 1, !dbg !3709
  store i32 %inc66, i32* %chipnum, align 4, !dbg !3709
  %79 = load i32, i32* %chipnum, align 4, !dbg !3710
  %80 = load %struct.cfi_private*, %struct.cfi_private** %cfi, align 8, !dbg !3712
  %numchips = getelementptr inbounds %struct.cfi_private, %struct.cfi_private* %80, i32 0, i32 11, !dbg !3713
  %81 = load i32, i32* %numchips, align 8, !dbg !3713
  %cmp67 = icmp sge i32 %79, %81, !dbg !3714
  br i1 %cmp67, label %if.then69, label %if.end70, !dbg !3715

if.then69:                                        ; preds = %if.then65
  br label %while.end72, !dbg !3716

if.end70:                                         ; preds = %if.then65
  br label %if.end71, !dbg !3717

if.end71:                                         ; preds = %if.end70, %if.end61
  br label %while.cond33, !dbg !3657, !llvm.loop !3718

while.end72:                                      ; preds = %if.then69, %while.cond33
  store i32 0, i32* %retval, align 4, !dbg !3720
  br label %return, !dbg !3720

return:                                           ; preds = %while.end72, %if.then42, %if.then27, %if.then
  %82 = load i32, i32* %retval, align 4, !dbg !3721
  ret i32 %82, !dbg !3721
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #5 !dbg !3722 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !3724, metadata !DIExpression()), !dbg !3725
  %0 = load i32, i32* %val.addr, align 4, !dbg !3726
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !3727, !srcloc !3728
  store i32 %1, i32* %val.addr, align 4, !dbg !3727
  %2 = load i32, i32* %val.addr, align 4, !dbg !3729
  ret i32 %2, !dbg !3730
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #7

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #5 !dbg !3731 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3735, metadata !DIExpression()), !dbg !3740
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3742, metadata !DIExpression()), !dbg !3743
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3744, metadata !DIExpression()), !dbg !3745
  %0 = load i64, i64* %size.addr, align 8, !dbg !3746
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3748
  br i1 %1, label %if.then, label %if.end447, !dbg !3749

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3750
  %tobool = icmp ne i64 %2, 0, !dbg !3750
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3753

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3754
  br label %return, !dbg !3754

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3755
  %cmp = icmp ult i64 %3, 4096, !dbg !3757
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3758

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3759
  br label %return, !dbg !3759

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub = sub i64 %4, 1, !dbg !3760
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3760
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3760

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub4 = sub i64 %6, 1, !dbg !3760
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3760
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3760

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub6 = sub i64 %8, 1, !dbg !3760
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3760
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3760

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3760

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub9 = sub i64 %9, 1, !dbg !3760
  %and = and i64 %sub9, -9223372036854775808, !dbg !3760
  %tobool10 = icmp ne i64 %and, 0, !dbg !3760
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3760

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3760

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub13 = sub i64 %10, 1, !dbg !3760
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3760
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3760
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3760

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3760

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub18 = sub i64 %11, 1, !dbg !3760
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3760
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3760
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3760

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3760

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub23 = sub i64 %12, 1, !dbg !3760
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3760
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3760
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3760

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3760

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub28 = sub i64 %13, 1, !dbg !3760
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3760
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3760
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3760

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3760

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub33 = sub i64 %14, 1, !dbg !3760
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3760
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3760
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3760

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3760

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub38 = sub i64 %15, 1, !dbg !3760
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3760
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3760
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3760

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3760

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub43 = sub i64 %16, 1, !dbg !3760
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3760
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3760
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3760

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3760

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub48 = sub i64 %17, 1, !dbg !3760
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3760
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3760
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3760

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3760

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub53 = sub i64 %18, 1, !dbg !3760
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3760
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3760
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3760

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3760

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub58 = sub i64 %19, 1, !dbg !3760
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3760
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3760
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3760

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3760

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub63 = sub i64 %20, 1, !dbg !3760
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3760
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3760
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3760

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3760

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub68 = sub i64 %21, 1, !dbg !3760
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3760
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3760
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3760

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3760

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub73 = sub i64 %22, 1, !dbg !3760
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3760
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3760
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3760

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3760

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub78 = sub i64 %23, 1, !dbg !3760
  %and79 = and i64 %sub78, 562949953421312, !dbg !3760
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3760
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3760

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3760

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub83 = sub i64 %24, 1, !dbg !3760
  %and84 = and i64 %sub83, 281474976710656, !dbg !3760
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3760
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3760

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3760

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub88 = sub i64 %25, 1, !dbg !3760
  %and89 = and i64 %sub88, 140737488355328, !dbg !3760
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3760
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3760

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3760

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub93 = sub i64 %26, 1, !dbg !3760
  %and94 = and i64 %sub93, 70368744177664, !dbg !3760
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3760
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3760

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3760

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub98 = sub i64 %27, 1, !dbg !3760
  %and99 = and i64 %sub98, 35184372088832, !dbg !3760
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3760
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3760

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3760

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub103 = sub i64 %28, 1, !dbg !3760
  %and104 = and i64 %sub103, 17592186044416, !dbg !3760
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3760
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3760

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3760

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub108 = sub i64 %29, 1, !dbg !3760
  %and109 = and i64 %sub108, 8796093022208, !dbg !3760
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3760
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3760

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3760

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub113 = sub i64 %30, 1, !dbg !3760
  %and114 = and i64 %sub113, 4398046511104, !dbg !3760
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3760
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3760

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3760

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub118 = sub i64 %31, 1, !dbg !3760
  %and119 = and i64 %sub118, 2199023255552, !dbg !3760
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3760
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3760

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3760

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub123 = sub i64 %32, 1, !dbg !3760
  %and124 = and i64 %sub123, 1099511627776, !dbg !3760
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3760
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3760

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3760

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub128 = sub i64 %33, 1, !dbg !3760
  %and129 = and i64 %sub128, 549755813888, !dbg !3760
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3760
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3760

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3760

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub133 = sub i64 %34, 1, !dbg !3760
  %and134 = and i64 %sub133, 274877906944, !dbg !3760
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3760
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3760

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3760

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub138 = sub i64 %35, 1, !dbg !3760
  %and139 = and i64 %sub138, 137438953472, !dbg !3760
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3760
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3760

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3760

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub143 = sub i64 %36, 1, !dbg !3760
  %and144 = and i64 %sub143, 68719476736, !dbg !3760
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3760
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3760

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3760

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub148 = sub i64 %37, 1, !dbg !3760
  %and149 = and i64 %sub148, 34359738368, !dbg !3760
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3760
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3760

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3760

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub153 = sub i64 %38, 1, !dbg !3760
  %and154 = and i64 %sub153, 17179869184, !dbg !3760
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3760
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3760

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3760

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub158 = sub i64 %39, 1, !dbg !3760
  %and159 = and i64 %sub158, 8589934592, !dbg !3760
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3760
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3760

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3760

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub163 = sub i64 %40, 1, !dbg !3760
  %and164 = and i64 %sub163, 4294967296, !dbg !3760
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3760
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3760

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3760

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub168 = sub i64 %41, 1, !dbg !3760
  %and169 = and i64 %sub168, 2147483648, !dbg !3760
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3760
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3760

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3760

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub173 = sub i64 %42, 1, !dbg !3760
  %and174 = and i64 %sub173, 1073741824, !dbg !3760
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3760
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3760

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3760

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub178 = sub i64 %43, 1, !dbg !3760
  %and179 = and i64 %sub178, 536870912, !dbg !3760
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3760
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3760

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3760

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub183 = sub i64 %44, 1, !dbg !3760
  %and184 = and i64 %sub183, 268435456, !dbg !3760
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3760
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3760

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3760

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub188 = sub i64 %45, 1, !dbg !3760
  %and189 = and i64 %sub188, 134217728, !dbg !3760
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3760
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3760

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3760

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub193 = sub i64 %46, 1, !dbg !3760
  %and194 = and i64 %sub193, 67108864, !dbg !3760
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3760
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3760

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3760

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub198 = sub i64 %47, 1, !dbg !3760
  %and199 = and i64 %sub198, 33554432, !dbg !3760
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3760
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3760

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3760

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub203 = sub i64 %48, 1, !dbg !3760
  %and204 = and i64 %sub203, 16777216, !dbg !3760
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3760
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3760

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3760

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub208 = sub i64 %49, 1, !dbg !3760
  %and209 = and i64 %sub208, 8388608, !dbg !3760
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3760
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3760

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3760

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub213 = sub i64 %50, 1, !dbg !3760
  %and214 = and i64 %sub213, 4194304, !dbg !3760
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3760
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3760

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3760

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub218 = sub i64 %51, 1, !dbg !3760
  %and219 = and i64 %sub218, 2097152, !dbg !3760
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3760
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3760

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3760

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub223 = sub i64 %52, 1, !dbg !3760
  %and224 = and i64 %sub223, 1048576, !dbg !3760
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3760
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3760

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3760

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub228 = sub i64 %53, 1, !dbg !3760
  %and229 = and i64 %sub228, 524288, !dbg !3760
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3760
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3760

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3760

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub233 = sub i64 %54, 1, !dbg !3760
  %and234 = and i64 %sub233, 262144, !dbg !3760
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3760
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3760

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3760

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub238 = sub i64 %55, 1, !dbg !3760
  %and239 = and i64 %sub238, 131072, !dbg !3760
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3760
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3760

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3760

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub243 = sub i64 %56, 1, !dbg !3760
  %and244 = and i64 %sub243, 65536, !dbg !3760
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3760
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3760

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3760

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub248 = sub i64 %57, 1, !dbg !3760
  %and249 = and i64 %sub248, 32768, !dbg !3760
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3760
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3760

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3760

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub253 = sub i64 %58, 1, !dbg !3760
  %and254 = and i64 %sub253, 16384, !dbg !3760
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3760
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3760

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3760

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub258 = sub i64 %59, 1, !dbg !3760
  %and259 = and i64 %sub258, 8192, !dbg !3760
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3760
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3760

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3760

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub263 = sub i64 %60, 1, !dbg !3760
  %and264 = and i64 %sub263, 4096, !dbg !3760
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3760
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3760

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3760

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub268 = sub i64 %61, 1, !dbg !3760
  %and269 = and i64 %sub268, 2048, !dbg !3760
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3760
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3760

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3760

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub273 = sub i64 %62, 1, !dbg !3760
  %and274 = and i64 %sub273, 1024, !dbg !3760
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3760
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3760

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3760

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub278 = sub i64 %63, 1, !dbg !3760
  %and279 = and i64 %sub278, 512, !dbg !3760
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3760
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3760

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3760

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub283 = sub i64 %64, 1, !dbg !3760
  %and284 = and i64 %sub283, 256, !dbg !3760
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3760
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3760

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3760

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub288 = sub i64 %65, 1, !dbg !3760
  %and289 = and i64 %sub288, 128, !dbg !3760
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3760
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3760

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3760

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub293 = sub i64 %66, 1, !dbg !3760
  %and294 = and i64 %sub293, 64, !dbg !3760
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3760
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3760

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3760

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub298 = sub i64 %67, 1, !dbg !3760
  %and299 = and i64 %sub298, 32, !dbg !3760
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3760
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3760

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3760

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub303 = sub i64 %68, 1, !dbg !3760
  %and304 = and i64 %sub303, 16, !dbg !3760
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3760
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3760

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3760

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub308 = sub i64 %69, 1, !dbg !3760
  %and309 = and i64 %sub308, 8, !dbg !3760
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3760
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3760

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3760

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub313 = sub i64 %70, 1, !dbg !3760
  %and314 = and i64 %sub313, 4, !dbg !3760
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3760
  %71 = zext i1 %tobool315 to i64, !dbg !3760
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3760
  br label %cond.end, !dbg !3760

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3760
  br label %cond.end317, !dbg !3760

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3760
  br label %cond.end319, !dbg !3760

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3760
  br label %cond.end321, !dbg !3760

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3760
  br label %cond.end323, !dbg !3760

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3760
  br label %cond.end325, !dbg !3760

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3760
  br label %cond.end327, !dbg !3760

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3760
  br label %cond.end329, !dbg !3760

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3760
  br label %cond.end331, !dbg !3760

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3760
  br label %cond.end333, !dbg !3760

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3760
  br label %cond.end335, !dbg !3760

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3760
  br label %cond.end337, !dbg !3760

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3760
  br label %cond.end339, !dbg !3760

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3760
  br label %cond.end341, !dbg !3760

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3760
  br label %cond.end343, !dbg !3760

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3760
  br label %cond.end345, !dbg !3760

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3760
  br label %cond.end347, !dbg !3760

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3760
  br label %cond.end349, !dbg !3760

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3760
  br label %cond.end351, !dbg !3760

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3760
  br label %cond.end353, !dbg !3760

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3760
  br label %cond.end355, !dbg !3760

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3760
  br label %cond.end357, !dbg !3760

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3760
  br label %cond.end359, !dbg !3760

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3760
  br label %cond.end361, !dbg !3760

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3760
  br label %cond.end363, !dbg !3760

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3760
  br label %cond.end365, !dbg !3760

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3760
  br label %cond.end367, !dbg !3760

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3760
  br label %cond.end369, !dbg !3760

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3760
  br label %cond.end371, !dbg !3760

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3760
  br label %cond.end373, !dbg !3760

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3760
  br label %cond.end375, !dbg !3760

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3760
  br label %cond.end377, !dbg !3760

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3760
  br label %cond.end379, !dbg !3760

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3760
  br label %cond.end381, !dbg !3760

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3760
  br label %cond.end383, !dbg !3760

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3760
  br label %cond.end385, !dbg !3760

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3760
  br label %cond.end387, !dbg !3760

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3760
  br label %cond.end389, !dbg !3760

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3760
  br label %cond.end391, !dbg !3760

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3760
  br label %cond.end393, !dbg !3760

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3760
  br label %cond.end395, !dbg !3760

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3760
  br label %cond.end397, !dbg !3760

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3760
  br label %cond.end399, !dbg !3760

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3760
  br label %cond.end401, !dbg !3760

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3760
  br label %cond.end403, !dbg !3760

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3760
  br label %cond.end405, !dbg !3760

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3760
  br label %cond.end407, !dbg !3760

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3760
  br label %cond.end409, !dbg !3760

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3760
  br label %cond.end411, !dbg !3760

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3760
  br label %cond.end413, !dbg !3760

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3760
  br label %cond.end415, !dbg !3760

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3760
  br label %cond.end417, !dbg !3760

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3760
  br label %cond.end419, !dbg !3760

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3760
  br label %cond.end421, !dbg !3760

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3760
  br label %cond.end423, !dbg !3760

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3760
  br label %cond.end425, !dbg !3760

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3760
  br label %cond.end427, !dbg !3760

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3760
  br label %cond.end429, !dbg !3760

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3760
  br label %cond.end431, !dbg !3760

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3760
  br label %cond.end433, !dbg !3760

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3760
  br label %cond.end435, !dbg !3760

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3760
  br label %cond.end437, !dbg !3760

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3760
  br label %cond.end440, !dbg !3760

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3760

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3760
  br label %cond.end444, !dbg !3760

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3760
  %sub443 = sub i64 %72, 1, !dbg !3760
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !3760
  br label %cond.end444, !dbg !3760

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3760
  %sub446 = sub i32 %cond445, 12, !dbg !3761
  %add = add i32 %sub446, 1, !dbg !3762
  store i32 %add, i32* %retval, align 4, !dbg !3763
  br label %return, !dbg !3763

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3764
  %dec = add i64 %73, -1, !dbg !3764
  store i64 %dec, i64* %size.addr, align 8, !dbg !3764
  %74 = load i64, i64* %size.addr, align 8, !dbg !3765
  %shr = lshr i64 %74, 12, !dbg !3765
  store i64 %shr, i64* %size.addr, align 8, !dbg !3765
  %75 = load i64, i64* %size.addr, align 8, !dbg !3766
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3743
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3767
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3768
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !3767, !srcloc !3769
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3767
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3770
  %add.i = add i32 %79, 1, !dbg !3771
  store i32 %add.i, i32* %retval, align 4, !dbg !3772
  br label %return, !dbg !3772

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3773
  ret i32 %80, !dbg !3773
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #5 !dbg !3774 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3735, metadata !DIExpression()), !dbg !3778
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3742, metadata !DIExpression()), !dbg !3780
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3781, metadata !DIExpression()), !dbg !3782
  %0 = load i64, i64* %n.addr, align 8, !dbg !3783
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3780
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3784
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3785
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !3784, !srcloc !3769
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3784
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3786
  %add.i = add i32 %4, 1, !dbg !3787
  %sub = sub i32 %add.i, 1, !dbg !3788
  ret i32 %sub, !dbg !3789
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3790 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3796, metadata !DIExpression()), !dbg !3797
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3798, metadata !DIExpression()), !dbg !3799
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3800, metadata !DIExpression()), !dbg !3801
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3802
  ret i8* %0, !dbg !3803
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone willreturn }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { nounwind willreturn }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { cold noredzone }
attributes #12 = { noredzone nounwind }
attributes #13 = { nounwind readnone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!114, !115, !116, !117}
!llvm.ident = !{!118}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file171", scope: !2, file: !3, line: 445, type: !111, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !88, globals: !103, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/mtd/chips/cfi_util.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !81}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !51, line: 17, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/mtd/flashchip.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63, !64, !65, !66, !67, !68, !69, !70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80}
!53 = !DIEnumerator(name: "FL_READY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "FL_STATUS", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "FL_CFI_QUERY", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "FL_JEDEC_QUERY", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "FL_ERASING", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "FL_ERASE_SUSPENDING", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "FL_ERASE_SUSPENDED", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "FL_WRITING", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "FL_WRITING_TO_BUFFER", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "FL_OTP_WRITE", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "FL_WRITE_SUSPENDING", value: 10, isUnsigned: true)
!64 = !DIEnumerator(name: "FL_WRITE_SUSPENDED", value: 11, isUnsigned: true)
!65 = !DIEnumerator(name: "FL_PM_SUSPENDED", value: 12, isUnsigned: true)
!66 = !DIEnumerator(name: "FL_SYNCING", value: 13, isUnsigned: true)
!67 = !DIEnumerator(name: "FL_UNLOADING", value: 14, isUnsigned: true)
!68 = !DIEnumerator(name: "FL_LOCKING", value: 15, isUnsigned: true)
!69 = !DIEnumerator(name: "FL_UNLOCKING", value: 16, isUnsigned: true)
!70 = !DIEnumerator(name: "FL_POINT", value: 17, isUnsigned: true)
!71 = !DIEnumerator(name: "FL_XIP_WHILE_ERASING", value: 18, isUnsigned: true)
!72 = !DIEnumerator(name: "FL_XIP_WHILE_WRITING", value: 19, isUnsigned: true)
!73 = !DIEnumerator(name: "FL_SHUTDOWN", value: 20, isUnsigned: true)
!74 = !DIEnumerator(name: "FL_READING", value: 21, isUnsigned: true)
!75 = !DIEnumerator(name: "FL_CACHEDPRG", value: 22, isUnsigned: true)
!76 = !DIEnumerator(name: "FL_RESETTING", value: 23, isUnsigned: true)
!77 = !DIEnumerator(name: "FL_OTPING", value: 24, isUnsigned: true)
!78 = !DIEnumerator(name: "FL_PREPARING_ERASE", value: 25, isUnsigned: true)
!79 = !DIEnumerator(name: "FL_VERIFYING_ERASE", value: 26, isUnsigned: true)
!80 = !DIEnumerator(name: "FL_UNKNOWN", value: 27, isUnsigned: true)
!81 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !82, line: 305, baseType: !7, size: 32, elements: !83)
!82 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !85, !86, !87}
!84 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!85 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!86 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!87 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!88 = !{!89, !91, !94, !95, !96, !97, !98, !100, !102}
!89 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be16", file: !90, line: 30, baseType: !91)
!90 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le16", file: !90, line: 29, baseType: !91)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !90, line: 32, baseType: !96)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !92, line: 27, baseType: !7)
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "__le32", file: !90, line: 31, baseType: !96)
!98 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !99, line: 148, baseType: !7)
!99 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !101, size: 64)
!101 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!103 = !{!0, !104}
!104 = !DIGlobalVariableExpression(var: !105, expr: !DIExpression())
!105 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license172", scope: !2, file: !3, line: 445, type: !106, isLocal: true, isDefinition: true, align: 8)
!106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 168, elements: !109)
!107 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !{!110}
!110 = !DISubrange(count: 21)
!111 = !DICompositeType(tag: DW_TAG_array_type, baseType: !107, size: 328, elements: !112)
!112 = !{!113}
!113 = !DISubrange(count: 41)
!114 = !{i32 7, !"Dwarf Version", i32 4}
!115 = !{i32 2, !"Debug Info Version", i32 3}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"Code Model", i32 2}
!118 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!119 = distinct !DISubprogram(name: "cfi_udelay", scope: !3, file: !3, line: 26, type: !120, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!120 = !DISubroutineType(types: !121)
!121 = !{null, !122}
!122 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!123 = !{}
!124 = !DILocalVariable(name: "us", arg: 1, scope: !119, file: !3, line: 26, type: !122)
!125 = !DILocation(line: 26, column: 21, scope: !119)
!126 = !DILocation(line: 28, column: 6, scope: !127)
!127 = distinct !DILexicalBlock(scope: !119, file: !3, line: 28, column: 6)
!128 = !DILocation(line: 28, column: 9, scope: !127)
!129 = !DILocation(line: 28, column: 6, scope: !119)
!130 = !DILocation(line: 29, column: 10, scope: !131)
!131 = distinct !DILexicalBlock(scope: !127, file: !3, line: 28, column: 18)
!132 = !DILocation(line: 29, column: 3, scope: !131)
!133 = !DILocation(line: 30, column: 2, scope: !131)
!134 = !DILocation(line: 31, column: 3, scope: !135)
!135 = distinct !DILexicalBlock(scope: !136, file: !3, line: 31, column: 3)
!136 = distinct !DILexicalBlock(scope: !137, file: !3, line: 31, column: 3)
!137 = distinct !DILexicalBlock(scope: !127, file: !3, line: 30, column: 9)
!138 = !DILocation(line: 31, column: 3, scope: !136)
!139 = !DILocation(line: 31, column: 3, scope: !140)
!140 = distinct !DILexicalBlock(scope: !141, file: !3, line: 31, column: 3)
!141 = distinct !DILexicalBlock(scope: !135, file: !3, line: 31, column: 3)
!142 = !DILocation(line: 31, column: 3, scope: !141)
!143 = !DILocation(line: 31, column: 3, scope: !144)
!144 = distinct !DILexicalBlock(scope: !135, file: !3, line: 31, column: 3)
!145 = !DILocation(line: 32, column: 3, scope: !146)
!146 = distinct !DILexicalBlock(scope: !137, file: !3, line: 32, column: 3)
!147 = !DILocation(line: 34, column: 1, scope: !119)
!148 = distinct !DISubprogram(name: "___might_sleep", scope: !149, file: !149, line: 248, type: !150, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!149 = !DIFile(filename: "./include/linux/kernel.h", directory: "/home/lizy2001/genbc/linux")
!150 = !DISubroutineType(types: !151)
!151 = !{null, !152, !122, !122}
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!153 = !DILocalVariable(name: "file", arg: 1, scope: !148, file: !149, line: 248, type: !152)
!154 = !DILocation(line: 248, column: 49, scope: !148)
!155 = !DILocalVariable(name: "line", arg: 2, scope: !148, file: !149, line: 248, type: !122)
!156 = !DILocation(line: 248, column: 59, scope: !148)
!157 = !DILocalVariable(name: "preempt_offset", arg: 3, scope: !148, file: !149, line: 249, type: !122)
!158 = !DILocation(line: 249, column: 12, scope: !148)
!159 = !DILocation(line: 249, column: 30, scope: !148)
!160 = distinct !DISubprogram(name: "cfi_build_cmd_addr", scope: !3, file: !3, line: 40, type: !161, scopeLine: 42, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!161 = !DISubroutineType(types: !162)
!162 = !{!163, !163, !166, !2424}
!163 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !99, line: 104, baseType: !164)
!164 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !165, line: 21, baseType: !96)
!165 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "map_info", file: !168, line: 191, size: 1152, elements: !169)
!168 = !DIFile(filename: "./include/linux/mtd/map.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !171, !173, !179, !180, !181, !182, !183, !194, !203, !208, !214, !218, !222, !223, !224, !225, !2186, !2187}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 192, baseType: !152, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !167, file: !168, line: 193, baseType: !172, size: 64, offset: 64)
!172 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !167, file: !168, line: 194, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !99, line: 158, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !99, line: 153, baseType: !176)
!176 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !165, line: 23, baseType: !177)
!177 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !178)
!178 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "virt", scope: !167, file: !168, line: 197, baseType: !102, size: 64, offset: 192)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "cached", scope: !167, file: !168, line: 198, baseType: !102, size: 64, offset: 256)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "swap", scope: !167, file: !168, line: 200, baseType: !122, size: 32, offset: 320)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "bankwidth", scope: !167, file: !168, line: 201, baseType: !122, size: 32, offset: 352)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !167, file: !168, line: 207, baseType: !184, size: 64, offset: 384)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DISubroutineType(types: !186)
!186 = !{!187, !166, !172}
!187 = !DIDerivedType(tag: DW_TAG_typedef, name: "map_word", file: !168, line: 171, baseType: !188)
!188 = distinct !DICompositeType(tag: DW_TAG_union_type, file: !168, line: 169, size: 64, elements: !189)
!189 = !{!190}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "x", scope: !188, file: !168, line: 170, baseType: !191, size: 64)
!191 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 64, elements: !192)
!192 = !{!193}
!193 = !DISubrange(count: 1)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "copy_from", scope: !167, file: !168, line: 208, baseType: !195, size: 64, offset: 448)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{null, !166, !102, !172, !198}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !99, line: 60, baseType: !199)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !200, line: 73, baseType: !201)
!200 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !200, line: 15, baseType: !202)
!202 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !167, file: !168, line: 210, baseType: !204, size: 64, offset: 512)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DISubroutineType(types: !206)
!206 = !{null, !166, !207, !172}
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !187)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "copy_to", scope: !167, file: !168, line: 211, baseType: !209, size: 64, offset: 576)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{null, !166, !172, !212, !198}
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!214 = !DIDerivedType(tag: DW_TAG_member, name: "inval_cache", scope: !167, file: !168, line: 222, baseType: !215, size: 64, offset: 640)
!215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !216, size: 64)
!216 = !DISubroutineType(types: !217)
!217 = !{null, !166, !172, !198}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "set_vpp", scope: !167, file: !168, line: 229, baseType: !219, size: 64, offset: 704)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DISubroutineType(types: !221)
!221 = !{null, !166, !122}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "pfow_base", scope: !167, file: !168, line: 231, baseType: !172, size: 64, offset: 768)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_1", scope: !167, file: !168, line: 232, baseType: !172, size: 64, offset: 832)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "map_priv_2", scope: !167, file: !168, line: 233, baseType: !172, size: 64, offset: 896)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "device_node", scope: !167, file: !168, line: 234, baseType: !226, size: 64, offset: 960)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !228, line: 51, size: 1344, elements: !229)
!228 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!229 = !{!230, !231, !233, !234, !2170, !2179, !2180, !2181, !2182, !2183, !2184, !2185}
!230 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !227, file: !228, line: 52, baseType: !152, size: 64)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !227, file: !228, line: 53, baseType: !232, size: 32, offset: 64)
!232 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !228, line: 28, baseType: !164)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !227, file: !228, line: 54, baseType: !152, size: 64, offset: 128)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !227, file: !228, line: 55, baseType: !235, size: 192, offset: 192)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !236, line: 17, size: 192, elements: !237)
!236 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!237 = !{!238, !240, !2169}
!238 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !235, file: !236, line: 18, baseType: !239, size: 64)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!240 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !235, file: !236, line: 19, baseType: !241, size: 64, offset: 64)
!241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !242, size: 64)
!242 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !243)
!243 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !236, line: 110, size: 1152, elements: !244)
!244 = !{!245, !249, !253, !261, !2111, !2115, !2119, !2124, !2128, !2129, !2133, !2137, !2141, !2152, !2153, !2154, !2155, !2165}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !243, file: !236, line: 111, baseType: !246, size: 64)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!239, !239}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !243, file: !236, line: 112, baseType: !250, size: 64, offset: 64)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{null, !239}
!253 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !243, file: !236, line: 113, baseType: !254, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = !DISubroutineType(types: !256)
!256 = !{!257, !259}
!257 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !99, line: 30, baseType: !258)
!258 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !243, file: !236, line: 114, baseType: !262, size: 64, offset: 192)
!262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!263 = !DISubroutineType(types: !264)
!264 = !{!212, !259, !265}
!265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !268)
!268 = !{!269, !1748, !1750, !1753, !1754, !1805, !1902, !1903, !1904, !1905, !1906, !1915, !2020, !2033, !2036, !2037, !2041, !2043, !2044, !2045, !2049, !2055, !2056, !2059, !2060, !2061, !2064, !2065, !2066, !2067, !2099, !2100, !2101, !2104, !2107, !2108, !2109, !2110}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !267, file: !30, line: 462, baseType: !270, size: 512)
!270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !271, line: 64, size: 512, elements: !272)
!271 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!272 = !{!273, !274, !280, !282, !341, !1586, !1738, !1743, !1744, !1745, !1746, !1747}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !270, file: !271, line: 65, baseType: !152, size: 64)
!274 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !270, file: !271, line: 66, baseType: !275, size: 128, offset: 64)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !99, line: 178, size: 128, elements: !276)
!276 = !{!277, !279}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !275, file: !99, line: 179, baseType: !278, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!279 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !275, file: !99, line: 179, baseType: !278, size: 64, offset: 64)
!280 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !270, file: !271, line: 67, baseType: !281, size: 64, offset: 192)
!281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !270, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !270, file: !271, line: 68, baseType: !283, size: 64, offset: 256)
!283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !284, size: 64)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !271, line: 192, size: 704, elements: !285)
!285 = !{!286, !287, !302, !303}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !284, file: !271, line: 193, baseType: !275, size: 128)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !284, file: !271, line: 194, baseType: !288, offset: 128)
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !289, line: 83, baseType: !290)
!289 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!290 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !289, line: 71, elements: !291)
!291 = !{!292}
!292 = !DIDerivedType(tag: DW_TAG_member, scope: !290, file: !289, line: 72, baseType: !293)
!293 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !290, file: !289, line: 72, elements: !294)
!294 = !{!295}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !293, file: !289, line: 73, baseType: !296)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !289, line: 20, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !296, file: !289, line: 21, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !300, line: 25, baseType: !301)
!300 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!301 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !300, line: 25, elements: !123)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !284, file: !271, line: 195, baseType: !270, size: 512, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !284, file: !271, line: 196, baseType: !304, size: 64, offset: 640)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !271, line: 156, size: 192, elements: !307)
!307 = !{!308, !313, !318}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !306, file: !271, line: 157, baseType: !309, size: 64)
!309 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DISubroutineType(types: !312)
!312 = !{!122, !283, !281}
!313 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !306, file: !271, line: 158, baseType: !314, size: 64, offset: 64)
!314 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !315)
!315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !316, size: 64)
!316 = !DISubroutineType(types: !317)
!317 = !{!152, !283, !281}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !306, file: !271, line: 159, baseType: !319, size: 64, offset: 128)
!319 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!122, !283, !281, !323}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !271, line: 148, size: 20736, elements: !325)
!325 = !{!326, !331, !335, !336, !340}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !324, file: !271, line: 149, baseType: !327, size: 192)
!327 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 192, elements: !329)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!329 = !{!330}
!330 = !DISubrange(count: 3)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !324, file: !271, line: 150, baseType: !332, size: 4096, offset: 192)
!332 = !DICompositeType(tag: DW_TAG_array_type, baseType: !328, size: 4096, elements: !333)
!333 = !{!334}
!334 = !DISubrange(count: 64)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !324, file: !271, line: 151, baseType: !122, size: 32, offset: 4288)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !324, file: !271, line: 152, baseType: !337, size: 16384, offset: 4320)
!337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16384, elements: !338)
!338 = !{!339}
!339 = !DISubrange(count: 2048)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !324, file: !271, line: 153, baseType: !122, size: 32, offset: 20704)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !270, file: !271, line: 69, baseType: !342, size: 64, offset: 320)
!342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !343, size: 64)
!343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !271, line: 138, size: 448, elements: !344)
!344 = !{!345, !349, !372, !374, !1534, !1565, !1569}
!345 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !343, file: !271, line: 139, baseType: !346, size: 64)
!346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !347, size: 64)
!347 = !DISubroutineType(types: !348)
!348 = !{null, !281}
!349 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !343, file: !271, line: 140, baseType: !350, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !351, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !352)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !353, line: 230, size: 128, elements: !354)
!353 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !365}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !352, file: !353, line: 231, baseType: !356, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!357 = !DISubroutineType(types: !358)
!358 = !{!198, !281, !359, !328}
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !353, line: 30, size: 128, elements: !361)
!361 = !{!362, !363}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !360, file: !353, line: 31, baseType: !152, size: 64)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !360, file: !353, line: 32, baseType: !364, size: 16, offset: 64)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !99, line: 19, baseType: !93)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !352, file: !353, line: 232, baseType: !366, size: 64, offset: 64)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = !DISubroutineType(types: !368)
!368 = !{!198, !281, !359, !152, !369}
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !99, line: 55, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !200, line: 72, baseType: !371)
!371 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !200, line: 16, baseType: !172)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !343, file: !271, line: 141, baseType: !373, size: 64, offset: 128)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !359, size: 64)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !343, file: !271, line: 142, baseType: !375, size: 64, offset: 192)
!375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !376, size: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !378)
!378 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !353, line: 84, size: 320, elements: !379)
!379 = !{!380, !381, !385, !1531, !1532}
!380 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !378, file: !353, line: 85, baseType: !152, size: 64)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !378, file: !353, line: 86, baseType: !382, size: 64, offset: 64)
!382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!383 = !DISubroutineType(types: !384)
!384 = !{!364, !281, !359, !122}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !378, file: !353, line: 88, baseType: !386, size: 64, offset: 128)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DISubroutineType(types: !388)
!388 = !{!364, !281, !389, !122}
!389 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !390, size: 64)
!390 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !353, line: 168, size: 448, elements: !391)
!391 = !{!392, !393, !394, !395, !405, !406}
!392 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !390, file: !353, line: 169, baseType: !360, size: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !390, file: !353, line: 170, baseType: !369, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !390, file: !353, line: 171, baseType: !102, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !390, file: !353, line: 172, baseType: !396, size: 64, offset: 256)
!396 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !397, size: 64)
!397 = !DISubroutineType(types: !398)
!398 = !{!198, !399, !281, !389, !328, !402, !369}
!399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !400, size: 64)
!400 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !401, line: 526, flags: DIFlagFwdDecl)
!401 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !99, line: 46, baseType: !403)
!403 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !200, line: 88, baseType: !404)
!404 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !390, file: !353, line: 174, baseType: !396, size: 64, offset: 320)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !390, file: !353, line: 176, baseType: !407, size: 64, offset: 384)
!407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !408, size: 64)
!408 = !DISubroutineType(types: !409)
!409 = !{!122, !399, !281, !389, !410}
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !412, line: 305, size: 1472, elements: !413)
!412 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!413 = !{!414, !415, !416, !417, !418, !426, !427, !1505, !1511, !1512, !1517, !1518, !1521, !1525, !1526, !1527, !1528, !1529}
!414 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !411, file: !412, line: 308, baseType: !172, size: 64)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !411, file: !412, line: 309, baseType: !172, size: 64, offset: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !411, file: !412, line: 313, baseType: !410, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !411, file: !412, line: 313, baseType: !410, size: 64, offset: 192)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !411, file: !412, line: 315, baseType: !419, size: 192, align: 64, offset: 256)
!419 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !420, line: 24, size: 192, align: 64, elements: !421)
!420 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!421 = !{!422, !423, !425}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !419, file: !420, line: 25, baseType: !172, size: 64)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !419, file: !420, line: 26, baseType: !424, size: 64, offset: 64)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !419, file: !420, line: 27, baseType: !424, size: 64, offset: 128)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !411, file: !412, line: 323, baseType: !172, size: 64, offset: 448)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !411, file: !412, line: 327, baseType: !428, size: 64, offset: 512)
!428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !429, size: 64)
!429 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !412, line: 388, size: 7296, elements: !430)
!430 = !{!431, !1501}
!431 = !DIDerivedType(tag: DW_TAG_member, scope: !429, file: !412, line: 389, baseType: !432, size: 7296)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !429, file: !412, line: 389, size: 7296, elements: !433)
!433 = !{!434, !435, !439, !440, !444, !445, !446, !447, !448, !456, !461, !462, !463, !464, !473, !474, !475, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !505, !506, !510, !518, !521, !568, !569, !1471, !1472, !1475, !1479, !1480, !1483, !1484, !1485, !1488, !1500}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !432, file: !412, line: 390, baseType: !410, size: 64)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !432, file: !412, line: 391, baseType: !436, size: 64, offset: 64)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !420, line: 31, size: 64, elements: !437)
!437 = !{!438}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !436, file: !420, line: 32, baseType: !424, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !432, file: !412, line: 392, baseType: !176, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !432, file: !412, line: 394, baseType: !441, size: 64, offset: 192)
!441 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !442, size: 64)
!442 = !DISubroutineType(types: !443)
!443 = !{!172, !399, !172, !172, !172, !172}
!444 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !432, file: !412, line: 398, baseType: !172, size: 64, offset: 256)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !432, file: !412, line: 399, baseType: !172, size: 64, offset: 320)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !432, file: !412, line: 405, baseType: !172, size: 64, offset: 384)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !432, file: !412, line: 406, baseType: !172, size: 64, offset: 448)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !432, file: !412, line: 407, baseType: !449, size: 64, offset: 512)
!449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !450, size: 64)
!450 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !401, line: 286, baseType: !451)
!451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !401, line: 286, size: 64, elements: !452)
!452 = !{!453}
!453 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !451, file: !401, line: 286, baseType: !454, size: 64)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !455, line: 18, baseType: !172)
!455 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!456 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !432, file: !412, line: 416, baseType: !457, size: 32, offset: 576)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !99, line: 168, baseType: !458)
!458 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 166, size: 32, elements: !459)
!459 = !{!460}
!460 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !458, file: !99, line: 167, baseType: !122, size: 32)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !432, file: !412, line: 428, baseType: !457, size: 32, offset: 608)
!462 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !432, file: !412, line: 437, baseType: !457, size: 32, offset: 640)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !432, file: !412, line: 447, baseType: !457, size: 32, offset: 672)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !432, file: !412, line: 450, baseType: !465, size: 64, offset: 704)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !466, line: 13, baseType: !467)
!466 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!467 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !99, line: 175, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !99, line: 173, size: 64, elements: !469)
!469 = !{!470}
!470 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !468, file: !99, line: 174, baseType: !471, size: 64)
!471 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !165, line: 22, baseType: !472)
!472 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !92, line: 30, baseType: !404)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !432, file: !412, line: 452, baseType: !122, size: 32, offset: 768)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !432, file: !412, line: 454, baseType: !288, offset: 800)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !432, file: !412, line: 457, baseType: !476, size: 256, offset: 832)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !477, line: 35, size: 256, elements: !478)
!477 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!478 = !{!479, !480, !481, !483}
!479 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !476, file: !477, line: 36, baseType: !465, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !476, file: !477, line: 42, baseType: !465, size: 64, offset: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !476, file: !477, line: 46, baseType: !482, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !289, line: 29, baseType: !296)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !476, file: !477, line: 47, baseType: !275, size: 128, offset: 128)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !432, file: !412, line: 459, baseType: !275, size: 128, offset: 1088)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !432, file: !412, line: 466, baseType: !172, size: 64, offset: 1216)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !432, file: !412, line: 467, baseType: !172, size: 64, offset: 1280)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !432, file: !412, line: 469, baseType: !172, size: 64, offset: 1344)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !432, file: !412, line: 470, baseType: !172, size: 64, offset: 1408)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !432, file: !412, line: 471, baseType: !467, size: 64, offset: 1472)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !432, file: !412, line: 472, baseType: !172, size: 64, offset: 1536)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !432, file: !412, line: 473, baseType: !172, size: 64, offset: 1600)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !432, file: !412, line: 474, baseType: !172, size: 64, offset: 1664)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !432, file: !412, line: 475, baseType: !172, size: 64, offset: 1728)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !432, file: !412, line: 477, baseType: !288, offset: 1792)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !432, file: !412, line: 478, baseType: !172, size: 64, offset: 1792)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !432, file: !412, line: 478, baseType: !172, size: 64, offset: 1856)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !432, file: !412, line: 478, baseType: !172, size: 64, offset: 1920)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !432, file: !412, line: 478, baseType: !172, size: 64, offset: 1984)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !432, file: !412, line: 479, baseType: !172, size: 64, offset: 2048)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !432, file: !412, line: 479, baseType: !172, size: 64, offset: 2112)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !432, file: !412, line: 479, baseType: !172, size: 64, offset: 2176)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !432, file: !412, line: 480, baseType: !172, size: 64, offset: 2240)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !432, file: !412, line: 480, baseType: !172, size: 64, offset: 2304)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !432, file: !412, line: 480, baseType: !172, size: 64, offset: 2368)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !432, file: !412, line: 480, baseType: !172, size: 64, offset: 2432)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !432, file: !412, line: 482, baseType: !507, size: 2816, offset: 2496)
!507 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 2816, elements: !508)
!508 = !{!509}
!509 = !DISubrange(count: 44)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !432, file: !412, line: 488, baseType: !511, size: 256, offset: 5312)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !512, line: 60, size: 256, elements: !513)
!512 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!513 = !{!514}
!514 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !511, file: !512, line: 61, baseType: !515, size: 256)
!515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !465, size: 256, elements: !516)
!516 = !{!517}
!517 = !DISubrange(count: 4)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !432, file: !412, line: 490, baseType: !519, size: 64, offset: 5568)
!519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!520 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !412, line: 490, flags: DIFlagFwdDecl)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !432, file: !412, line: 493, baseType: !522, size: 896, offset: 5632)
!522 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !523, line: 53, baseType: !524)
!523 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !523, line: 13, size: 896, elements: !525)
!525 = !{!526, !527, !528, !529, !532, !533, !540, !541, !561, !562, !564}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !524, file: !523, line: 18, baseType: !176, size: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !524, file: !523, line: 28, baseType: !467, size: 64, offset: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !524, file: !523, line: 31, baseType: !476, size: 256, offset: 128)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !524, file: !523, line: 32, baseType: !530, size: 64, offset: 384)
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !523, line: 32, flags: DIFlagFwdDecl)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !524, file: !523, line: 37, baseType: !93, size: 16, offset: 448)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !524, file: !523, line: 40, baseType: !534, size: 192, offset: 512)
!534 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !535, line: 53, size: 192, elements: !536)
!535 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!536 = !{!537, !538, !539}
!537 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !534, file: !535, line: 54, baseType: !465, size: 64)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !534, file: !535, line: 55, baseType: !288, offset: 64)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !534, file: !535, line: 59, baseType: !275, size: 128, offset: 64)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !524, file: !523, line: 41, baseType: !102, size: 64, offset: 704)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !524, file: !523, line: 42, baseType: !542, size: 64, offset: 768)
!542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !543, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !544)
!544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !545, line: 13, size: 896, elements: !546)
!545 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!546 = !{!547, !548, !549, !550, !551, !552, !553, !554, !555, !556, !557, !558, !559, !560}
!547 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !544, file: !545, line: 14, baseType: !102, size: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !544, file: !545, line: 15, baseType: !172, size: 64, offset: 64)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !544, file: !545, line: 17, baseType: !172, size: 64, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !544, file: !545, line: 17, baseType: !172, size: 64, offset: 192)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !544, file: !545, line: 19, baseType: !202, size: 64, offset: 256)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !544, file: !545, line: 21, baseType: !202, size: 64, offset: 320)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !544, file: !545, line: 22, baseType: !202, size: 64, offset: 384)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !544, file: !545, line: 23, baseType: !202, size: 64, offset: 448)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !544, file: !545, line: 24, baseType: !202, size: 64, offset: 512)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !544, file: !545, line: 25, baseType: !202, size: 64, offset: 576)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !544, file: !545, line: 26, baseType: !202, size: 64, offset: 640)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !544, file: !545, line: 27, baseType: !202, size: 64, offset: 704)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !544, file: !545, line: 28, baseType: !202, size: 64, offset: 768)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !544, file: !545, line: 29, baseType: !202, size: 64, offset: 832)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !524, file: !523, line: 44, baseType: !457, size: 32, offset: 832)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !524, file: !523, line: 50, baseType: !563, size: 16, offset: 864)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !165, line: 19, baseType: !91)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !524, file: !523, line: 51, baseType: !565, size: 16, offset: 880)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !165, line: 18, baseType: !566)
!566 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !92, line: 23, baseType: !567)
!567 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !412, line: 495, baseType: !172, size: 64, offset: 6528)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !432, file: !412, line: 497, baseType: !570, size: 64, offset: 6592)
!570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !571, size: 64)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !412, line: 381, size: 384, elements: !572)
!572 = !{!573, !574, !1470}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !571, file: !412, line: 382, baseType: !457, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !571, file: !412, line: 383, baseType: !575, size: 128, offset: 64)
!575 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !412, line: 376, size: 128, elements: !576)
!576 = !{!577, !1468}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !575, file: !412, line: 377, baseType: !578, size: 64)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !580, line: 640, size: 48640, elements: !581)
!580 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!581 = !{!582, !588, !590, !591, !597, !598, !599, !600, !601, !602, !603, !604, !608, !626, !637, !731, !732, !733, !741, !742, !744, !745, !746, !747, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !766, !767, !768, !826, !829, !830, !831, !832, !833, !834, !835, !836, !837, !838, !882, !884, !885, !886, !898, !900, !901, !902, !903, !904, !910, !911, !912, !913, !914, !915, !916, !928, !933, !938, !939, !940, !943, !947, !950, !953, !956, !959, !963, !966, !969, !975, !976, !977, !983, !984, !985, !986, !987, !996, !997, !998, !999, !1000, !1005, !1006, !1007, !1010, !1011, !1014, !1017, !1020, !1023, !1026, !1029, !1030, !1110, !1113, !1116, !1117, !1120, !1121, !1122, !1128, !1129, !1130, !1143, !1144, !1145, !1155, !1160, !1164, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291}
!582 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !579, file: !580, line: 646, baseType: !583, size: 128)
!583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !584, line: 56, size: 128, elements: !585)
!584 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!585 = !{!586, !587}
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !583, file: !584, line: 57, baseType: !172, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !583, file: !584, line: 58, baseType: !164, size: 32, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !579, file: !580, line: 649, baseType: !589, size: 64, offset: 128)
!589 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !202)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !579, file: !580, line: 657, baseType: !102, size: 64, offset: 192)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !579, file: !580, line: 658, baseType: !592, size: 32, offset: 256)
!592 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !593, line: 113, baseType: !594)
!593 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !593, line: 111, size: 32, elements: !595)
!595 = !{!596}
!596 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !594, file: !593, line: 112, baseType: !457, size: 32)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !579, file: !580, line: 660, baseType: !7, size: 32, offset: 288)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !579, file: !580, line: 661, baseType: !7, size: 32, offset: 320)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !579, file: !580, line: 684, baseType: !122, size: 32, offset: 352)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !579, file: !580, line: 686, baseType: !122, size: 32, offset: 384)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !579, file: !580, line: 687, baseType: !122, size: 32, offset: 416)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !579, file: !580, line: 688, baseType: !122, size: 32, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !579, file: !580, line: 689, baseType: !7, size: 32, offset: 480)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !579, file: !580, line: 691, baseType: !605, size: 64, offset: 512)
!605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !606, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !607)
!607 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !580, line: 691, flags: DIFlagFwdDecl)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !579, file: !580, line: 692, baseType: !609, size: 832, offset: 576)
!609 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !580, line: 451, size: 832, elements: !610)
!610 = !{!611, !616, !617, !618, !619, !620, !621, !622, !623, !624}
!611 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !609, file: !580, line: 453, baseType: !612, size: 128)
!612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !580, line: 325, size: 128, elements: !613)
!613 = !{!614, !615}
!614 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !612, file: !580, line: 326, baseType: !172, size: 64)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !612, file: !580, line: 327, baseType: !164, size: 32, offset: 64)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !609, file: !580, line: 454, baseType: !419, size: 192, align: 64, offset: 128)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !609, file: !580, line: 455, baseType: !275, size: 128, offset: 320)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !609, file: !580, line: 456, baseType: !7, size: 32, offset: 448)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !609, file: !580, line: 458, baseType: !176, size: 64, offset: 512)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !609, file: !580, line: 459, baseType: !176, size: 64, offset: 576)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !609, file: !580, line: 460, baseType: !176, size: 64, offset: 640)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !609, file: !580, line: 461, baseType: !176, size: 64, offset: 704)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !609, file: !580, line: 463, baseType: !176, size: 64, offset: 768)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !609, file: !580, line: 465, baseType: !625, offset: 832)
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !580, line: 415, elements: !123)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !579, file: !580, line: 693, baseType: !627, size: 384, offset: 1408)
!627 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !580, line: 489, size: 384, elements: !628)
!628 = !{!629, !630, !631, !632, !633, !634, !635}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !627, file: !580, line: 490, baseType: !275, size: 128)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !627, file: !580, line: 491, baseType: !172, size: 64, offset: 128)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !627, file: !580, line: 492, baseType: !172, size: 64, offset: 192)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !627, file: !580, line: 493, baseType: !7, size: 32, offset: 256)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !627, file: !580, line: 494, baseType: !93, size: 16, offset: 288)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !627, file: !580, line: 495, baseType: !93, size: 16, offset: 304)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !627, file: !580, line: 497, baseType: !636, size: 64, offset: 320)
!636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !627, size: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !579, file: !580, line: 697, baseType: !638, size: 1792, offset: 1792)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !580, line: 507, size: 1792, elements: !639)
!639 = !{!640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !728, !729}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !638, file: !580, line: 508, baseType: !419, size: 192, align: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !638, file: !580, line: 515, baseType: !176, size: 64, offset: 192)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !638, file: !580, line: 516, baseType: !176, size: 64, offset: 256)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !638, file: !580, line: 517, baseType: !176, size: 64, offset: 320)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !638, file: !580, line: 518, baseType: !176, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !638, file: !580, line: 519, baseType: !176, size: 64, offset: 448)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !638, file: !580, line: 526, baseType: !471, size: 64, offset: 512)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !638, file: !580, line: 527, baseType: !176, size: 64, offset: 576)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !638, file: !580, line: 528, baseType: !7, size: 32, offset: 640)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !638, file: !580, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !638, file: !580, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !638, file: !580, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !638, file: !580, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !638, file: !580, line: 563, baseType: !654, size: 512, offset: 704)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !655)
!655 = !{!656, !664, !665, !670, !722, !725, !726, !727}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !654, file: !6, line: 119, baseType: !657, size: 256)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !658, line: 9, size: 256, elements: !659)
!658 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !661}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !657, file: !658, line: 10, baseType: !419, size: 192, align: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !657, file: !658, line: 11, baseType: !662, size: 64, offset: 192)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !663, line: 29, baseType: !471)
!663 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!664 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !654, file: !6, line: 120, baseType: !662, size: 64, offset: 256)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !654, file: !6, line: 121, baseType: !666, size: 64, offset: 320)
!666 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !667, size: 64)
!667 = !DISubroutineType(types: !668)
!668 = !{!5, !669}
!669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !654, file: !6, line: 122, baseType: !671, size: 64, offset: 384)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !673)
!673 = !{!674, !694, !695, !698, !708, !709, !717, !721}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !672, file: !6, line: 160, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !677)
!677 = !{!678, !679, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !676, file: !6, line: 215, baseType: !482)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !676, file: !6, line: 216, baseType: !7, size: 32)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !676, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !676, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !676, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !676, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !676, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !676, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !676, file: !6, line: 233, baseType: !662, size: 64, offset: 128)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !676, file: !6, line: 234, baseType: !669, size: 64, offset: 192)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !676, file: !6, line: 235, baseType: !662, size: 64, offset: 256)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !676, file: !6, line: 236, baseType: !669, size: 64, offset: 320)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !676, file: !6, line: 237, baseType: !691, size: 4096, offset: 512)
!691 = !DICompositeType(tag: DW_TAG_array_type, baseType: !672, size: 4096, elements: !692)
!692 = !{!693}
!693 = !DISubrange(count: 8)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !672, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !672, file: !6, line: 162, baseType: !696, size: 32, offset: 96)
!696 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !99, line: 27, baseType: !697)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !200, line: 96, baseType: !122)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !672, file: !6, line: 163, baseType: !699, size: 32, offset: 128)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !700, line: 276, baseType: !701)
!700 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !700, line: 276, size: 32, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !701, file: !700, line: 276, baseType: !704, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !700, line: 70, baseType: !705)
!705 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !700, line: 65, size: 32, elements: !706)
!706 = !{!707}
!707 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !705, file: !700, line: 66, baseType: !7, size: 32)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !672, file: !6, line: 164, baseType: !669, size: 64, offset: 192)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !672, file: !6, line: 165, baseType: !710, size: 128, offset: 256)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !658, line: 14, size: 128, elements: !711)
!711 = !{!712}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !710, file: !658, line: 15, baseType: !713, size: 128)
!713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !420, line: 125, size: 128, elements: !714)
!714 = !{!715, !716}
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !713, file: !420, line: 126, baseType: !436, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !713, file: !420, line: 127, baseType: !424, size: 64, offset: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !672, file: !6, line: 166, baseType: !718, size: 64, offset: 384)
!718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !719, size: 64)
!719 = !DISubroutineType(types: !720)
!720 = !{!662}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !672, file: !6, line: 167, baseType: !662, size: 64, offset: 448)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !654, file: !6, line: 123, baseType: !723, size: 8, offset: 448)
!723 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !165, line: 17, baseType: !724)
!724 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !92, line: 21, baseType: !101)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !654, file: !6, line: 124, baseType: !723, size: 8, offset: 456)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !654, file: !6, line: 125, baseType: !723, size: 8, offset: 464)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !654, file: !6, line: 126, baseType: !723, size: 8, offset: 472)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !638, file: !580, line: 572, baseType: !654, size: 512, offset: 1216)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !638, file: !580, line: 580, baseType: !730, size: 64, offset: 1728)
!730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !638, size: 64)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !579, file: !580, line: 721, baseType: !7, size: 32, offset: 3584)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !579, file: !580, line: 722, baseType: !122, size: 32, offset: 3616)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !579, file: !580, line: 723, baseType: !734, size: 64, offset: 3648)
!734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !735, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !736)
!736 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !737, line: 17, baseType: !738)
!737 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !737, line: 17, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !738, file: !737, line: 17, baseType: !191, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !579, file: !580, line: 724, baseType: !736, size: 64, offset: 3712)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !579, file: !580, line: 749, baseType: !743, offset: 3776)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !580, line: 290, elements: !123)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !579, file: !580, line: 751, baseType: !275, size: 128, offset: 3776)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !579, file: !580, line: 757, baseType: !428, size: 64, offset: 3904)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !579, file: !580, line: 758, baseType: !428, size: 64, offset: 3968)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !579, file: !580, line: 761, baseType: !748, size: 320, offset: 4032)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !512, line: 34, size: 320, elements: !749)
!749 = !{!750, !751}
!750 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !748, file: !512, line: 35, baseType: !176, size: 64)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !748, file: !512, line: 36, baseType: !752, size: 256, offset: 64)
!752 = !DICompositeType(tag: DW_TAG_array_type, baseType: !410, size: 256, elements: !516)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !579, file: !580, line: 766, baseType: !122, size: 32, offset: 4352)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !579, file: !580, line: 767, baseType: !122, size: 32, offset: 4384)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !579, file: !580, line: 768, baseType: !122, size: 32, offset: 4416)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !579, file: !580, line: 770, baseType: !122, size: 32, offset: 4448)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !579, file: !580, line: 772, baseType: !172, size: 64, offset: 4480)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !579, file: !580, line: 775, baseType: !7, size: 32, offset: 4544)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !579, file: !580, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !579, file: !580, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !579, file: !580, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !579, file: !580, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !579, file: !580, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !579, file: !580, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !579, file: !580, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !579, file: !580, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !579, file: !580, line: 831, baseType: !172, size: 64, offset: 4672)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !579, file: !580, line: 833, baseType: !769, size: 384, offset: 4736)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !770)
!770 = !{!771, !776}
!771 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !769, file: !12, line: 26, baseType: !772, size: 64)
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !773, size: 64)
!773 = !DISubroutineType(types: !774)
!774 = !{!202, !775}
!775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !769, size: 64)
!776 = !DIDerivedType(tag: DW_TAG_member, scope: !769, file: !12, line: 27, baseType: !777, size: 320, offset: 64)
!777 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !769, file: !12, line: 27, size: 320, elements: !778)
!778 = !{!779, !789, !816}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !777, file: !12, line: 36, baseType: !780, size: 320)
!780 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !12, line: 29, size: 320, elements: !781)
!781 = !{!782, !784, !785, !786, !787, !788}
!782 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !780, file: !12, line: 30, baseType: !783, size: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !780, file: !12, line: 31, baseType: !164, size: 32, offset: 64)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !780, file: !12, line: 32, baseType: !164, size: 32, offset: 96)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !780, file: !12, line: 33, baseType: !164, size: 32, offset: 128)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !780, file: !12, line: 34, baseType: !176, size: 64, offset: 192)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !780, file: !12, line: 35, baseType: !783, size: 64, offset: 256)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !777, file: !12, line: 46, baseType: !790, size: 192)
!790 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !12, line: 38, size: 192, elements: !791)
!791 = !{!792, !793, !794, !815}
!792 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !790, file: !12, line: 39, baseType: !696, size: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !790, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!794 = !DIDerivedType(tag: DW_TAG_member, scope: !790, file: !12, line: 41, baseType: !795, size: 64, offset: 64)
!795 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !790, file: !12, line: 41, size: 64, elements: !796)
!796 = !{!797, !805}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !795, file: !12, line: 42, baseType: !798, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !800, line: 7, size: 128, elements: !801)
!800 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!801 = !{!802, !804}
!802 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !799, file: !800, line: 8, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !200, line: 93, baseType: !404)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !799, file: !800, line: 9, baseType: !404, size: 64, offset: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !795, file: !12, line: 43, baseType: !806, size: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !808, line: 7, size: 64, elements: !809)
!808 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !814}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !807, file: !808, line: 8, baseType: !811, size: 32)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !808, line: 5, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !165, line: 20, baseType: !813)
!813 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !92, line: 26, baseType: !122)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !807, file: !808, line: 9, baseType: !812, size: 32, offset: 32)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !790, file: !12, line: 45, baseType: !176, size: 64, offset: 128)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !777, file: !12, line: 54, baseType: !817, size: 256)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !777, file: !12, line: 48, size: 256, elements: !818)
!818 = !{!819, !822, !823, !824, !825}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !817, file: !12, line: 49, baseType: !820, size: 64)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !817, file: !12, line: 50, baseType: !122, size: 32, offset: 64)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !817, file: !12, line: 51, baseType: !122, size: 32, offset: 96)
!824 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !817, file: !12, line: 52, baseType: !172, size: 64, offset: 128)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !817, file: !12, line: 53, baseType: !172, size: 64, offset: 192)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !579, file: !580, line: 835, baseType: !827, size: 32, offset: 5120)
!827 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !99, line: 22, baseType: !828)
!828 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !200, line: 28, baseType: !122)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !579, file: !580, line: 836, baseType: !827, size: 32, offset: 5152)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !579, file: !580, line: 840, baseType: !172, size: 64, offset: 5184)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !579, file: !580, line: 849, baseType: !578, size: 64, offset: 5248)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !579, file: !580, line: 852, baseType: !578, size: 64, offset: 5312)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !579, file: !580, line: 857, baseType: !275, size: 128, offset: 5376)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !579, file: !580, line: 858, baseType: !275, size: 128, offset: 5504)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !579, file: !580, line: 859, baseType: !578, size: 64, offset: 5632)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !579, file: !580, line: 867, baseType: !275, size: 128, offset: 5696)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !579, file: !580, line: 868, baseType: !275, size: 128, offset: 5824)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !579, file: !580, line: 871, baseType: !839, size: 64, offset: 5952)
!839 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !840, size: 64)
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !841, line: 59, size: 768, elements: !842)
!841 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!842 = !{!843, !844, !845, !846, !857, !858, !865, !874}
!843 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !840, file: !841, line: 61, baseType: !592, size: 32)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !840, file: !841, line: 62, baseType: !7, size: 32, offset: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !840, file: !841, line: 63, baseType: !288, offset: 64)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !840, file: !841, line: 65, baseType: !847, size: 256, offset: 64)
!847 = !DICompositeType(tag: DW_TAG_array_type, baseType: !848, size: 256, elements: !516)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !99, line: 182, size: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !848, file: !99, line: 183, baseType: !851, size: 64)
!851 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !852, size: 64)
!852 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !99, line: 186, size: 128, elements: !853)
!853 = !{!854, !855}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !852, file: !99, line: 187, baseType: !851, size: 64)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !852, file: !99, line: 187, baseType: !856, size: 64, offset: 64)
!856 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !851, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !840, file: !841, line: 66, baseType: !848, size: 64, offset: 320)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !840, file: !841, line: 68, baseType: !859, size: 128, offset: 384)
!859 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !860, line: 40, baseType: !861)
!860 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !860, line: 36, size: 128, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !861, file: !860, line: 37, baseType: !288)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !861, file: !860, line: 38, baseType: !275, size: 128)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !840, file: !841, line: 69, baseType: !866, size: 128, align: 64, offset: 512)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !99, line: 216, size: 128, align: 64, elements: !867)
!867 = !{!868, !870}
!868 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !866, file: !99, line: 217, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !866, file: !99, line: 218, baseType: !871, size: 64, offset: 64)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DISubroutineType(types: !873)
!873 = !{null, !869}
!874 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !840, file: !841, line: 70, baseType: !875, size: 128, offset: 640)
!875 = !DICompositeType(tag: DW_TAG_array_type, baseType: !876, size: 128, elements: !192)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !841, line: 54, size: 128, elements: !877)
!877 = !{!878, !879}
!878 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !876, file: !841, line: 55, baseType: !122, size: 32)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !876, file: !841, line: 56, baseType: !880, size: 64, offset: 64)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !841, line: 56, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !579, file: !580, line: 872, baseType: !883, size: 512, offset: 6016)
!883 = !DICompositeType(tag: DW_TAG_array_type, baseType: !852, size: 512, elements: !516)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !579, file: !580, line: 873, baseType: !275, size: 128, offset: 6528)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !579, file: !580, line: 874, baseType: !275, size: 128, offset: 6656)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !579, file: !580, line: 876, baseType: !887, size: 64, offset: 6784)
!887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !888, size: 64)
!888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !889, line: 26, size: 192, elements: !890)
!889 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!890 = !{!891, !892}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !888, file: !889, line: 27, baseType: !7, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !888, file: !889, line: 28, baseType: !893, size: 128, offset: 64)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !894, line: 43, size: 128, elements: !895)
!894 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!895 = !{!896, !897}
!896 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !893, file: !894, line: 44, baseType: !482)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !893, file: !894, line: 45, baseType: !275, size: 128)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !579, file: !580, line: 879, baseType: !899, size: 64, offset: 6848)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !579, file: !580, line: 882, baseType: !899, size: 64, offset: 6912)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !579, file: !580, line: 884, baseType: !176, size: 64, offset: 6976)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !579, file: !580, line: 885, baseType: !176, size: 64, offset: 7040)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !579, file: !580, line: 890, baseType: !176, size: 64, offset: 7104)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !579, file: !580, line: 891, baseType: !905, size: 128, offset: 7168)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !580, line: 242, size: 128, elements: !906)
!906 = !{!907, !908, !909}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !905, file: !580, line: 244, baseType: !176, size: 64)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !905, file: !580, line: 245, baseType: !176, size: 64, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !905, file: !580, line: 246, baseType: !482, offset: 128)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !579, file: !580, line: 900, baseType: !172, size: 64, offset: 7296)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !579, file: !580, line: 901, baseType: !172, size: 64, offset: 7360)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !579, file: !580, line: 904, baseType: !176, size: 64, offset: 7424)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !579, file: !580, line: 907, baseType: !176, size: 64, offset: 7488)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !579, file: !580, line: 910, baseType: !172, size: 64, offset: 7552)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !579, file: !580, line: 911, baseType: !172, size: 64, offset: 7616)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !579, file: !580, line: 914, baseType: !917, size: 640, offset: 7680)
!917 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !918, line: 123, size: 640, elements: !919)
!918 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!919 = !{!920, !926, !927}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !917, file: !918, line: 124, baseType: !921, size: 576)
!921 = !DICompositeType(tag: DW_TAG_array_type, baseType: !922, size: 576, elements: !329)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !918, line: 108, size: 192, elements: !923)
!923 = !{!924, !925}
!924 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !922, file: !918, line: 109, baseType: !176, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !922, file: !918, line: 110, baseType: !710, size: 128, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !917, file: !918, line: 125, baseType: !7, size: 32, offset: 576)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !917, file: !918, line: 126, baseType: !7, size: 32, offset: 608)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !579, file: !580, line: 917, baseType: !929, size: 192, offset: 8320)
!929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !918, line: 134, size: 192, elements: !930)
!930 = !{!931, !932}
!931 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !929, file: !918, line: 135, baseType: !866, size: 128, align: 64)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !929, file: !918, line: 136, baseType: !7, size: 32, offset: 128)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !579, file: !580, line: 923, baseType: !934, size: 64, offset: 8512)
!934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!935 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !936)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !937, line: 11, flags: DIFlagFwdDecl)
!937 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!938 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !579, file: !580, line: 926, baseType: !934, size: 64, offset: 8576)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !579, file: !580, line: 929, baseType: !934, size: 64, offset: 8640)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !579, file: !580, line: 933, baseType: !941, size: 64, offset: 8704)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !580, line: 933, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !579, file: !580, line: 943, baseType: !944, size: 128, offset: 8768)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !945)
!945 = !{!946}
!946 = !DISubrange(count: 16)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !579, file: !580, line: 945, baseType: !948, size: 64, offset: 8896)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !580, line: 49, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !579, file: !580, line: 956, baseType: !951, size: 64, offset: 8960)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !580, line: 45, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !579, file: !580, line: 959, baseType: !954, size: 64, offset: 9024)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !580, line: 959, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !579, file: !580, line: 962, baseType: !957, size: 64, offset: 9088)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !580, line: 66, flags: DIFlagFwdDecl)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !579, file: !580, line: 966, baseType: !960, size: 64, offset: 9152)
!960 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !961, size: 64)
!961 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !962, line: 35, flags: DIFlagFwdDecl)
!962 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!963 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !579, file: !580, line: 969, baseType: !964, size: 64, offset: 9216)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !918, line: 223, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !579, file: !580, line: 970, baseType: !967, size: 64, offset: 9280)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !580, line: 62, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !579, file: !580, line: 971, baseType: !970, size: 64, offset: 9344)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !971, line: 25, baseType: !972)
!971 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !971, line: 23, size: 64, elements: !973)
!973 = !{!974}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !972, file: !971, line: 24, baseType: !191, size: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !579, file: !580, line: 972, baseType: !970, size: 64, offset: 9408)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !579, file: !580, line: 974, baseType: !970, size: 64, offset: 9472)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !579, file: !580, line: 975, baseType: !978, size: 192, offset: 9536)
!978 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !979, line: 30, size: 192, elements: !980)
!979 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !978, file: !979, line: 31, baseType: !275, size: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !978, file: !979, line: 32, baseType: !970, size: 64, offset: 128)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !579, file: !580, line: 976, baseType: !172, size: 64, offset: 9728)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !579, file: !580, line: 977, baseType: !369, size: 64, offset: 9792)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !579, file: !580, line: 978, baseType: !7, size: 32, offset: 9856)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !579, file: !580, line: 980, baseType: !869, size: 64, offset: 9920)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !579, file: !580, line: 989, baseType: !988, size: 128, offset: 9984)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !989, line: 35, size: 128, elements: !990)
!989 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!990 = !{!991, !992, !993}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !988, file: !989, line: 36, baseType: !122, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !988, file: !989, line: 37, baseType: !457, size: 32, offset: 32)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !988, file: !989, line: 38, baseType: !994, size: 64, offset: 64)
!994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !995, size: 64)
!995 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !989, line: 23, flags: DIFlagFwdDecl)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !579, file: !580, line: 992, baseType: !176, size: 64, offset: 10112)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !579, file: !580, line: 993, baseType: !176, size: 64, offset: 10176)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !579, file: !580, line: 996, baseType: !288, offset: 10240)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !579, file: !580, line: 999, baseType: !482, offset: 10240)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !579, file: !580, line: 1001, baseType: !1001, size: 64, offset: 10240)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !580, line: 636, size: 64, elements: !1002)
!1002 = !{!1003}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1001, file: !580, line: 637, baseType: !1004, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !579, file: !580, line: 1005, baseType: !713, size: 128, offset: 10304)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !579, file: !580, line: 1007, baseType: !578, size: 64, offset: 10432)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !579, file: !580, line: 1009, baseType: !1008, size: 64, offset: 10496)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !580, line: 1009, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !579, file: !580, line: 1043, baseType: !102, size: 64, offset: 10560)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !579, file: !580, line: 1046, baseType: !1012, size: 64, offset: 10624)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !580, line: 41, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !579, file: !580, line: 1050, baseType: !1015, size: 64, offset: 10688)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !580, line: 42, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !579, file: !580, line: 1054, baseType: !1018, size: 64, offset: 10752)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !580, line: 55, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !579, file: !580, line: 1056, baseType: !1021, size: 64, offset: 10816)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !580, line: 40, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !579, file: !580, line: 1058, baseType: !1024, size: 64, offset: 10880)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !580, line: 47, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !579, file: !580, line: 1061, baseType: !1027, size: 64, offset: 10944)
!1027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1028, size: 64)
!1028 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !580, line: 43, flags: DIFlagFwdDecl)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !579, file: !580, line: 1064, baseType: !172, size: 64, offset: 11008)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !579, file: !580, line: 1065, baseType: !1031, size: 64, offset: 11072)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !979, line: 14, baseType: !1033)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !979, line: 12, size: 384, elements: !1034)
!1034 = !{!1035}
!1035 = !DIDerivedType(tag: DW_TAG_member, scope: !1033, file: !979, line: 13, baseType: !1036, size: 384)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1033, file: !979, line: 13, size: 384, elements: !1037)
!1037 = !{!1038, !1039, !1040, !1041}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1036, file: !979, line: 13, baseType: !122, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1036, file: !979, line: 13, baseType: !122, size: 32, offset: 32)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1036, file: !979, line: 13, baseType: !122, size: 32, offset: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1036, file: !979, line: 13, baseType: !1042, size: 256, offset: 128)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1043, line: 32, size: 256, elements: !1044)
!1043 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1044 = !{!1045, !1051, !1064, !1070, !1079, !1099, !1104}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1042, file: !1043, line: 37, baseType: !1046, size: 64)
!1046 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 34, size: 64, elements: !1047)
!1047 = !{!1048, !1049}
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1046, file: !1043, line: 35, baseType: !828, size: 32)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1046, file: !1043, line: 36, baseType: !1050, size: 32, offset: 32)
!1050 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !200, line: 49, baseType: !7)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1042, file: !1043, line: 45, baseType: !1052, size: 192)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 40, size: 192, elements: !1053)
!1053 = !{!1054, !1056, !1057, !1063}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1052, file: !1043, line: 41, baseType: !1055, size: 32)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !200, line: 95, baseType: !122)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1052, file: !1043, line: 42, baseType: !122, size: 32, offset: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1052, file: !1043, line: 43, baseType: !1058, size: 64, offset: 64)
!1058 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1043, line: 11, baseType: !1059)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1043, line: 8, size: 64, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1059, file: !1043, line: 9, baseType: !122, size: 32)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1059, file: !1043, line: 10, baseType: !102, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1052, file: !1043, line: 44, baseType: !122, size: 32, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1042, file: !1043, line: 52, baseType: !1065, size: 128)
!1065 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 48, size: 128, elements: !1066)
!1066 = !{!1067, !1068, !1069}
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1065, file: !1043, line: 49, baseType: !828, size: 32)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1065, file: !1043, line: 50, baseType: !1050, size: 32, offset: 32)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1065, file: !1043, line: 51, baseType: !1058, size: 64, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1042, file: !1043, line: 61, baseType: !1071, size: 256)
!1071 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 55, size: 256, elements: !1072)
!1072 = !{!1073, !1074, !1075, !1076, !1078}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1071, file: !1043, line: 56, baseType: !828, size: 32)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1071, file: !1043, line: 57, baseType: !1050, size: 32, offset: 32)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1071, file: !1043, line: 58, baseType: !122, size: 32, offset: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1071, file: !1043, line: 59, baseType: !1077, size: 64, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !200, line: 94, baseType: !201)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1071, file: !1043, line: 60, baseType: !1077, size: 64, offset: 192)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1042, file: !1043, line: 95, baseType: !1080, size: 256)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 64, size: 256, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1080, file: !1043, line: 65, baseType: !102, size: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !1043, line: 77, baseType: !1084, size: 192, offset: 64)
!1084 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1080, file: !1043, line: 77, size: 192, elements: !1085)
!1085 = !{!1086, !1087, !1094}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1084, file: !1043, line: 82, baseType: !567, size: 16)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1084, file: !1043, line: 88, baseType: !1088, size: 192)
!1088 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !1043, line: 84, size: 192, elements: !1089)
!1089 = !{!1090, !1092, !1093}
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1088, file: !1043, line: 85, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !692)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1088, file: !1043, line: 86, baseType: !102, size: 64, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1088, file: !1043, line: 87, baseType: !102, size: 64, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1084, file: !1043, line: 93, baseType: !1095, size: 96)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1084, file: !1043, line: 90, size: 96, elements: !1096)
!1096 = !{!1097, !1098}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1095, file: !1043, line: 91, baseType: !1091, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1095, file: !1043, line: 92, baseType: !96, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1042, file: !1043, line: 101, baseType: !1100, size: 128)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 98, size: 128, elements: !1101)
!1101 = !{!1102, !1103}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1100, file: !1043, line: 99, baseType: !202, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1100, file: !1043, line: 100, baseType: !122, size: 32, offset: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1042, file: !1043, line: 108, baseType: !1105, size: 128)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !1043, line: 104, size: 128, elements: !1106)
!1106 = !{!1107, !1108, !1109}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1105, file: !1043, line: 105, baseType: !102, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1105, file: !1043, line: 106, baseType: !122, size: 32, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1105, file: !1043, line: 107, baseType: !7, size: 32, offset: 96)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !579, file: !580, line: 1067, baseType: !1111, offset: 11136)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1112, line: 12, elements: !123)
!1112 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !579, file: !580, line: 1099, baseType: !1114, size: 64, offset: 11136)
!1114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1115, size: 64)
!1115 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !580, line: 56, flags: DIFlagFwdDecl)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !579, file: !580, line: 1103, baseType: !275, size: 128, offset: 11200)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !579, file: !580, line: 1104, baseType: !1118, size: 64, offset: 11328)
!1118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1119, size: 64)
!1119 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !580, line: 46, flags: DIFlagFwdDecl)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !579, file: !580, line: 1105, baseType: !534, size: 192, offset: 11392)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !579, file: !580, line: 1106, baseType: !7, size: 32, offset: 11584)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !579, file: !580, line: 1109, baseType: !1123, size: 128, offset: 11648)
!1123 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1124, size: 128, elements: !1126)
!1124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1125, size: 64)
!1125 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !580, line: 51, flags: DIFlagFwdDecl)
!1126 = !{!1127}
!1127 = !DISubrange(count: 2)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !579, file: !580, line: 1110, baseType: !534, size: 192, offset: 11776)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !579, file: !580, line: 1111, baseType: !275, size: 128, offset: 11968)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !579, file: !580, line: 1173, baseType: !1131, size: 64, offset: 12096)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1133, line: 62, size: 256, align: 256, elements: !1134)
!1133 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1134 = !{!1135, !1136, !1137, !1142}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1132, file: !1133, line: 75, baseType: !96, size: 32)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1132, file: !1133, line: 90, baseType: !96, size: 32, offset: 32)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1132, file: !1133, line: 124, baseType: !1138, size: 64, offset: 64)
!1138 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1132, file: !1133, line: 109, size: 64, elements: !1139)
!1139 = !{!1140, !1141}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1138, file: !1133, line: 110, baseType: !177, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1138, file: !1133, line: 112, baseType: !177, size: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1132, file: !1133, line: 144, baseType: !96, size: 32, offset: 128)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !579, file: !580, line: 1174, baseType: !164, size: 32, offset: 12160)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !579, file: !580, line: 1179, baseType: !172, size: 64, offset: 12224)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !579, file: !580, line: 1182, baseType: !1146, size: 128, offset: 12288)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !512, line: 76, size: 128, elements: !1147)
!1147 = !{!1148, !1153, !1154}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1146, file: !512, line: 85, baseType: !1149, size: 64)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1150, line: 7, size: 64, elements: !1151)
!1150 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1151 = !{!1152}
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1149, file: !1150, line: 12, baseType: !738, size: 64)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1146, file: !512, line: 88, baseType: !257, size: 8, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1146, file: !512, line: 95, baseType: !257, size: 8, offset: 72)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !579, file: !580, line: 1184, baseType: !1156, size: 128, offset: 12416)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !579, file: !580, line: 1184, size: 128, elements: !1157)
!1157 = !{!1158, !1159}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1156, file: !580, line: 1185, baseType: !592, size: 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1156, file: !580, line: 1186, baseType: !866, size: 128, align: 64)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !579, file: !580, line: 1190, baseType: !1161, size: 64, offset: 12544)
!1161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1162, size: 64)
!1162 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !1163, line: 13, flags: DIFlagFwdDecl)
!1163 = !DIFile(filename: "./include/linux/uio.h", directory: "/home/lizy2001/genbc/linux")
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !579, file: !580, line: 1192, baseType: !1165, size: 128, offset: 12608)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !512, line: 64, size: 128, elements: !1166)
!1166 = !{!1167, !1260, !1261}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1165, file: !512, line: 65, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !412, line: 68, size: 512, align: 128, elements: !1170)
!1170 = !{!1171, !1172, !1252, !1259}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1169, file: !412, line: 69, baseType: !172, size: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !412, line: 77, baseType: !1173, size: 320, offset: 64)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !412, line: 77, size: 320, elements: !1174)
!1174 = !{!1175, !1184, !1189, !1217, !1225, !1231, !1244, !1251}
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 78, baseType: !1176, size: 320)
!1176 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 78, size: 320, elements: !1177)
!1177 = !{!1178, !1179, !1182, !1183}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1176, file: !412, line: 84, baseType: !275, size: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1176, file: !412, line: 86, baseType: !1180, size: 64, offset: 128)
!1180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1181, size: 64)
!1181 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !412, line: 26, flags: DIFlagFwdDecl)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1176, file: !412, line: 87, baseType: !172, size: 64, offset: 192)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1176, file: !412, line: 94, baseType: !172, size: 64, offset: 256)
!1184 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 96, baseType: !1185, size: 64)
!1185 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 96, size: 64, elements: !1186)
!1186 = !{!1187}
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1185, file: !412, line: 101, baseType: !1188, size: 64)
!1188 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !99, line: 143, baseType: !176)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 103, baseType: !1190, size: 320)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 103, size: 320, elements: !1191)
!1191 = !{!1192, !1202, !1205, !1206}
!1192 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !412, line: 104, baseType: !1193, size: 128)
!1193 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !412, line: 104, size: 128, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1193, file: !412, line: 105, baseType: !275, size: 128)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !412, line: 106, baseType: !1197, size: 128)
!1197 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1193, file: !412, line: 106, size: 128, elements: !1198)
!1198 = !{!1199, !1200, !1201}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1197, file: !412, line: 107, baseType: !1168, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1197, file: !412, line: 109, baseType: !122, size: 32, offset: 64)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1197, file: !412, line: 110, baseType: !122, size: 32, offset: 96)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1190, file: !412, line: 117, baseType: !1203, size: 64, offset: 128)
!1203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !412, line: 117, flags: DIFlagFwdDecl)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1190, file: !412, line: 119, baseType: !102, size: 64, offset: 192)
!1206 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !412, line: 120, baseType: !1207, size: 64, offset: 256)
!1207 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1190, file: !412, line: 120, size: 64, elements: !1208)
!1208 = !{!1209, !1210, !1211}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1207, file: !412, line: 121, baseType: !102, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1207, file: !412, line: 122, baseType: !172, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1207, file: !412, line: 123, baseType: !1212, size: 32)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1207, file: !412, line: 123, size: 32, elements: !1213)
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1212, file: !412, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1212, file: !412, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1212, file: !412, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1217 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 130, baseType: !1218, size: 192)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 130, size: 192, elements: !1219)
!1219 = !{!1220, !1221, !1222, !1223, !1224}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1218, file: !412, line: 131, baseType: !172, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1218, file: !412, line: 134, baseType: !101, size: 8, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1218, file: !412, line: 135, baseType: !101, size: 8, offset: 72)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1218, file: !412, line: 136, baseType: !457, size: 32, offset: 96)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1218, file: !412, line: 137, baseType: !7, size: 32, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 139, baseType: !1226, size: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 139, size: 256, elements: !1227)
!1227 = !{!1228, !1229, !1230}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1226, file: !412, line: 140, baseType: !172, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1226, file: !412, line: 141, baseType: !457, size: 32, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1226, file: !412, line: 143, baseType: !275, size: 128, offset: 128)
!1231 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 145, baseType: !1232, size: 256)
!1232 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 145, size: 256, elements: !1233)
!1233 = !{!1234, !1235, !1237, !1238, !1243}
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1232, file: !412, line: 146, baseType: !172, size: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1232, file: !412, line: 147, baseType: !1236, size: 64, offset: 64)
!1236 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !401, line: 509, baseType: !1168)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1232, file: !412, line: 148, baseType: !172, size: 64, offset: 128)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1232, file: !412, line: 149, baseType: !1239, size: 64, offset: 192)
!1239 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1232, file: !412, line: 149, size: 64, elements: !1240)
!1240 = !{!1241, !1242}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1239, file: !412, line: 150, baseType: !428, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1239, file: !412, line: 151, baseType: !457, size: 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1232, file: !412, line: 156, baseType: !288, offset: 256)
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !412, line: 159, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1173, file: !412, line: 159, size: 128, elements: !1246)
!1246 = !{!1247, !1250}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1245, file: !412, line: 161, baseType: !1248, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1249, size: 64)
!1249 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !412, line: 161, flags: DIFlagFwdDecl)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1245, file: !412, line: 162, baseType: !102, size: 64, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1173, file: !412, line: 176, baseType: !866, size: 128, align: 64)
!1252 = !DIDerivedType(tag: DW_TAG_member, scope: !1169, file: !412, line: 179, baseType: !1253, size: 32, offset: 384)
!1253 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1169, file: !412, line: 179, size: 32, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1253, file: !412, line: 184, baseType: !457, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1253, file: !412, line: 192, baseType: !7, size: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1253, file: !412, line: 194, baseType: !7, size: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1253, file: !412, line: 195, baseType: !122, size: 32)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1169, file: !412, line: 199, baseType: !457, size: 32, offset: 416)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1165, file: !512, line: 67, baseType: !96, size: 32, offset: 64)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1165, file: !512, line: 68, baseType: !96, size: 32, offset: 96)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !579, file: !580, line: 1206, baseType: !122, size: 32, offset: 12736)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !579, file: !580, line: 1207, baseType: !122, size: 32, offset: 12768)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !579, file: !580, line: 1209, baseType: !172, size: 64, offset: 12800)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !579, file: !580, line: 1219, baseType: !176, size: 64, offset: 12864)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !579, file: !580, line: 1220, baseType: !176, size: 64, offset: 12928)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !579, file: !580, line: 1317, baseType: !122, size: 32, offset: 12992)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !579, file: !580, line: 1319, baseType: !578, size: 64, offset: 13056)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !579, file: !580, line: 1322, baseType: !1270, size: 64, offset: 13120)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1272, line: 56, size: 512, elements: !1273)
!1272 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1275, !1276, !1277, !1278, !1280, !1281, !1282}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1271, file: !1272, line: 57, baseType: !1270, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1271, file: !1272, line: 58, baseType: !102, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1271, file: !1272, line: 59, baseType: !172, size: 64, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1271, file: !1272, line: 60, baseType: !172, size: 64, offset: 192)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1271, file: !1272, line: 61, baseType: !1279, size: 64, offset: 256)
!1279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1168, size: 64)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1271, file: !1272, line: 62, baseType: !7, size: 32, offset: 320)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1271, file: !1272, line: 63, baseType: !175, size: 64, offset: 384)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1271, file: !1272, line: 64, baseType: !212, size: 64, offset: 448)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !579, file: !580, line: 1326, baseType: !592, size: 32, offset: 13184)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !579, file: !580, line: 1342, baseType: !102, size: 64, offset: 13248)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !579, file: !580, line: 1343, baseType: !177, size: 64, offset: 13312)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !579, file: !580, line: 1344, baseType: !176, size: 64, offset: 13376)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !579, file: !580, line: 1345, baseType: !177, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !579, file: !580, line: 1346, baseType: !177, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !579, file: !580, line: 1347, baseType: !177, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !579, file: !580, line: 1348, baseType: !866, size: 128, align: 64, offset: 13504)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !579, file: !580, line: 1358, baseType: !1292, size: 34816, offset: 13824)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1293, line: 485, size: 34816, elements: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1324, !1325, !1326, !1327, !1328, !1329, !1332, !1333, !1334}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1292, file: !1293, line: 487, baseType: !1296, size: 192)
!1296 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1297, size: 192, elements: !329)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1298, line: 16, size: 64, elements: !1299)
!1298 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1299 = !{!1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312}
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1297, file: !1298, line: 17, baseType: !563, size: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1297, file: !1298, line: 18, baseType: !563, size: 16, offset: 16)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1297, file: !1298, line: 19, baseType: !563, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1297, file: !1298, line: 19, baseType: !563, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1297, file: !1298, line: 19, baseType: !563, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1297, file: !1298, line: 19, baseType: !563, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1297, file: !1298, line: 19, baseType: !563, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1297, file: !1298, line: 20, baseType: !563, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1297, file: !1298, line: 20, baseType: !563, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1297, file: !1298, line: 20, baseType: !563, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1297, file: !1298, line: 20, baseType: !563, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1297, file: !1298, line: 20, baseType: !563, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1297, file: !1298, line: 20, baseType: !563, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1292, file: !1293, line: 491, baseType: !172, size: 64, offset: 192)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1292, file: !1293, line: 495, baseType: !93, size: 16, offset: 256)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1292, file: !1293, line: 496, baseType: !93, size: 16, offset: 272)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1292, file: !1293, line: 497, baseType: !93, size: 16, offset: 288)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1292, file: !1293, line: 498, baseType: !93, size: 16, offset: 304)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1292, file: !1293, line: 502, baseType: !172, size: 64, offset: 320)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1292, file: !1293, line: 503, baseType: !172, size: 64, offset: 384)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1292, file: !1293, line: 514, baseType: !1321, size: 256, offset: 448)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1322, size: 256, elements: !516)
!1322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1323, size: 64)
!1323 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1293, line: 483, flags: DIFlagFwdDecl)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1292, file: !1293, line: 516, baseType: !172, size: 64, offset: 704)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1292, file: !1293, line: 518, baseType: !172, size: 64, offset: 768)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1292, file: !1293, line: 520, baseType: !172, size: 64, offset: 832)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1292, file: !1293, line: 521, baseType: !172, size: 64, offset: 896)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1292, file: !1293, line: 522, baseType: !172, size: 64, offset: 960)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1292, file: !1293, line: 528, baseType: !1330, size: 64, offset: 1024)
!1330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1331, size: 64)
!1331 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1293, line: 10, flags: DIFlagFwdDecl)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1292, file: !1293, line: 535, baseType: !172, size: 64, offset: 1088)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1292, file: !1293, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1292, file: !1293, line: 540, baseType: !1335, size: 33280, offset: 1536)
!1335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1336, line: 317, size: 33280, elements: !1337)
!1336 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1337 = !{!1338, !1339, !1340}
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1335, file: !1336, line: 330, baseType: !7, size: 32)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1335, file: !1336, line: 337, baseType: !172, size: 64, offset: 64)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1335, file: !1336, line: 348, baseType: !1341, size: 32768, offset: 512)
!1341 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1336, line: 304, size: 32768, elements: !1342)
!1342 = !{!1343, !1358, !1397, !1447, !1464}
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1341, file: !1336, line: 305, baseType: !1344, size: 896)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1336, line: 12, size: 896, elements: !1345)
!1345 = !{!1346, !1347, !1348, !1349, !1350, !1351, !1352, !1353, !1357}
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1344, file: !1336, line: 13, baseType: !164, size: 32)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1344, file: !1336, line: 14, baseType: !164, size: 32, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1344, file: !1336, line: 15, baseType: !164, size: 32, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1344, file: !1336, line: 16, baseType: !164, size: 32, offset: 96)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1344, file: !1336, line: 17, baseType: !164, size: 32, offset: 128)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1344, file: !1336, line: 18, baseType: !164, size: 32, offset: 160)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1344, file: !1336, line: 19, baseType: !164, size: 32, offset: 192)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1344, file: !1336, line: 22, baseType: !1354, size: 640, offset: 224)
!1354 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 640, elements: !1355)
!1355 = !{!1356}
!1356 = !DISubrange(count: 20)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1344, file: !1336, line: 25, baseType: !164, size: 32, offset: 864)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1341, file: !1336, line: 306, baseType: !1359, size: 4096, align: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1336, line: 34, size: 4096, align: 128, elements: !1360)
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1380, !1381, !1382, !1386, !1388, !1392}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1359, file: !1336, line: 35, baseType: !563, size: 16)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1359, file: !1336, line: 36, baseType: !563, size: 16, offset: 16)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1359, file: !1336, line: 37, baseType: !563, size: 16, offset: 32)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1359, file: !1336, line: 38, baseType: !563, size: 16, offset: 48)
!1365 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1336, line: 39, baseType: !1366, size: 128, offset: 64)
!1366 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1336, line: 39, size: 128, elements: !1367)
!1367 = !{!1368, !1373}
!1368 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1336, line: 40, baseType: !1369, size: 128)
!1369 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1366, file: !1336, line: 40, size: 128, elements: !1370)
!1370 = !{!1371, !1372}
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1369, file: !1336, line: 41, baseType: !176, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1369, file: !1336, line: 42, baseType: !176, size: 64, offset: 64)
!1373 = !DIDerivedType(tag: DW_TAG_member, scope: !1366, file: !1336, line: 44, baseType: !1374, size: 128)
!1374 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1366, file: !1336, line: 44, size: 128, elements: !1375)
!1375 = !{!1376, !1377, !1378, !1379}
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1374, file: !1336, line: 45, baseType: !164, size: 32)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1374, file: !1336, line: 46, baseType: !164, size: 32, offset: 32)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1374, file: !1336, line: 47, baseType: !164, size: 32, offset: 64)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1374, file: !1336, line: 48, baseType: !164, size: 32, offset: 96)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1359, file: !1336, line: 51, baseType: !164, size: 32, offset: 192)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1359, file: !1336, line: 52, baseType: !164, size: 32, offset: 224)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1359, file: !1336, line: 55, baseType: !1383, size: 1024, offset: 256)
!1383 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 1024, elements: !1384)
!1384 = !{!1385}
!1385 = !DISubrange(count: 32)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1359, file: !1336, line: 58, baseType: !1387, size: 2048, offset: 1280)
!1387 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 2048, elements: !333)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1359, file: !1336, line: 60, baseType: !1389, size: 384, offset: 3328)
!1389 = !DICompositeType(tag: DW_TAG_array_type, baseType: !164, size: 384, elements: !1390)
!1390 = !{!1391}
!1391 = !DISubrange(count: 12)
!1392 = !DIDerivedType(tag: DW_TAG_member, scope: !1359, file: !1336, line: 62, baseType: !1393, size: 384, offset: 3712)
!1393 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1359, file: !1336, line: 62, size: 384, elements: !1394)
!1394 = !{!1395, !1396}
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1393, file: !1336, line: 63, baseType: !1389, size: 384)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1393, file: !1336, line: 64, baseType: !1389, size: 384)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1341, file: !1336, line: 307, baseType: !1398, size: 1088)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1336, line: 79, size: 1088, elements: !1399)
!1399 = !{!1400, !1401, !1402, !1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1446}
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1398, file: !1336, line: 80, baseType: !164, size: 32)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1398, file: !1336, line: 81, baseType: !164, size: 32, offset: 32)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1398, file: !1336, line: 82, baseType: !164, size: 32, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1398, file: !1336, line: 83, baseType: !164, size: 32, offset: 96)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1398, file: !1336, line: 84, baseType: !164, size: 32, offset: 128)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1398, file: !1336, line: 85, baseType: !164, size: 32, offset: 160)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1398, file: !1336, line: 86, baseType: !164, size: 32, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1398, file: !1336, line: 88, baseType: !1354, size: 640, offset: 224)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1398, file: !1336, line: 89, baseType: !723, size: 8, offset: 864)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1398, file: !1336, line: 90, baseType: !723, size: 8, offset: 872)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1398, file: !1336, line: 91, baseType: !723, size: 8, offset: 880)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1398, file: !1336, line: 92, baseType: !723, size: 8, offset: 888)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1398, file: !1336, line: 93, baseType: !723, size: 8, offset: 896)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1398, file: !1336, line: 94, baseType: !723, size: 8, offset: 904)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1398, file: !1336, line: 95, baseType: !1415, size: 64, offset: 960)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1417, line: 11, size: 128, elements: !1418)
!1417 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1418 = !{!1419, !1420}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1416, file: !1417, line: 12, baseType: !202, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1416, file: !1417, line: 13, baseType: !1421, size: 64, offset: 64)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1423, line: 56, size: 1344, elements: !1424)
!1423 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !{!1425, !1426, !1427, !1428, !1429, !1430, !1431, !1432, !1433, !1434, !1435, !1436, !1437, !1438, !1439, !1440, !1441, !1442, !1443, !1444, !1445}
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1422, file: !1423, line: 61, baseType: !172, size: 64)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1422, file: !1423, line: 62, baseType: !172, size: 64, offset: 64)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1422, file: !1423, line: 63, baseType: !172, size: 64, offset: 128)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1422, file: !1423, line: 64, baseType: !172, size: 64, offset: 192)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1422, file: !1423, line: 65, baseType: !172, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1422, file: !1423, line: 66, baseType: !172, size: 64, offset: 320)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1422, file: !1423, line: 68, baseType: !172, size: 64, offset: 384)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1422, file: !1423, line: 69, baseType: !172, size: 64, offset: 448)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1422, file: !1423, line: 70, baseType: !172, size: 64, offset: 512)
!1434 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1422, file: !1423, line: 71, baseType: !172, size: 64, offset: 576)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1422, file: !1423, line: 72, baseType: !172, size: 64, offset: 640)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1422, file: !1423, line: 73, baseType: !172, size: 64, offset: 704)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1422, file: !1423, line: 74, baseType: !172, size: 64, offset: 768)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1422, file: !1423, line: 75, baseType: !172, size: 64, offset: 832)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1422, file: !1423, line: 76, baseType: !172, size: 64, offset: 896)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1422, file: !1423, line: 81, baseType: !172, size: 64, offset: 960)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1422, file: !1423, line: 83, baseType: !172, size: 64, offset: 1024)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1422, file: !1423, line: 84, baseType: !172, size: 64, offset: 1088)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1422, file: !1423, line: 85, baseType: !172, size: 64, offset: 1152)
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1422, file: !1423, line: 86, baseType: !172, size: 64, offset: 1216)
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1422, file: !1423, line: 87, baseType: !172, size: 64, offset: 1280)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1398, file: !1336, line: 96, baseType: !164, size: 32, offset: 1024)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1341, file: !1336, line: 308, baseType: !1448, size: 4608, align: 512)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1336, line: 289, size: 4608, align: 512, elements: !1449)
!1449 = !{!1450, !1451, !1460}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1448, file: !1336, line: 290, baseType: !1359, size: 4096, align: 128)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1448, file: !1336, line: 291, baseType: !1452, size: 512, offset: 4096)
!1452 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1336, line: 268, size: 512, elements: !1453)
!1453 = !{!1454, !1455, !1456}
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1452, file: !1336, line: 269, baseType: !176, size: 64)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1452, file: !1336, line: 270, baseType: !176, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1452, file: !1336, line: 271, baseType: !1457, size: 384, offset: 128)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 384, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 6)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1448, file: !1336, line: 292, baseType: !1461, offset: 4608)
!1461 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, elements: !1462)
!1462 = !{!1463}
!1463 = !DISubrange(count: 0)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1341, file: !1336, line: 309, baseType: !1465, size: 32768)
!1465 = !DICompositeType(tag: DW_TAG_array_type, baseType: !723, size: 32768, elements: !1466)
!1466 = !{!1467}
!1467 = !DISubrange(count: 4096)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !575, file: !412, line: 378, baseType: !1469, size: 64, offset: 64)
!1469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !571, file: !412, line: 384, baseType: !888, size: 192, offset: 192)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !432, file: !412, line: 500, baseType: !288, offset: 6656)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !432, file: !412, line: 501, baseType: !1473, size: 64, offset: 6656)
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !412, line: 387, flags: DIFlagFwdDecl)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !432, file: !412, line: 516, baseType: !1476, size: 64, offset: 6720)
!1476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1477, size: 64)
!1477 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1478, line: 18, flags: DIFlagFwdDecl)
!1478 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !432, file: !412, line: 519, baseType: !399, size: 64, offset: 6784)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !432, file: !412, line: 521, baseType: !1481, size: 64, offset: 6848)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !412, line: 521, flags: DIFlagFwdDecl)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !432, file: !412, line: 545, baseType: !457, size: 32, offset: 6912)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !432, file: !412, line: 548, baseType: !257, size: 8, offset: 6944)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !432, file: !412, line: 550, baseType: !1486, offset: 6952)
!1486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1487, line: 142, elements: !123)
!1487 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !432, file: !412, line: 554, baseType: !1489, size: 256, offset: 6976)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1490, line: 102, size: 256, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1489, file: !1490, line: 103, baseType: !465, size: 64)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1489, file: !1490, line: 104, baseType: !275, size: 128, offset: 64)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1489, file: !1490, line: 105, baseType: !1495, size: 64, offset: 192)
!1495 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1490, line: 21, baseType: !1496)
!1496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1497, size: 64)
!1497 = !DISubroutineType(types: !1498)
!1498 = !{null, !1499}
!1499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1489, size: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !432, file: !412, line: 557, baseType: !164, size: 32, offset: 7232)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !429, file: !412, line: 565, baseType: !1502, offset: 7296)
!1502 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, elements: !1503)
!1503 = !{!1504}
!1504 = !DISubrange(count: -1)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !411, file: !412, line: 333, baseType: !1506, size: 64, offset: 576)
!1506 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !401, line: 284, baseType: !1507)
!1507 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !401, line: 284, size: 64, elements: !1508)
!1508 = !{!1509}
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1507, file: !401, line: 284, baseType: !1510, size: 64)
!1510 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !455, line: 19, baseType: !172)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !411, file: !412, line: 334, baseType: !172, size: 64, offset: 640)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !411, file: !412, line: 343, baseType: !1513, size: 256, offset: 704)
!1513 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !411, file: !412, line: 340, size: 256, elements: !1514)
!1514 = !{!1515, !1516}
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1513, file: !412, line: 341, baseType: !419, size: 192, align: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1513, file: !412, line: 342, baseType: !172, size: 64, offset: 192)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !411, file: !412, line: 351, baseType: !275, size: 128, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !411, file: !412, line: 353, baseType: !1519, size: 64, offset: 1088)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !412, line: 353, flags: DIFlagFwdDecl)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !411, file: !412, line: 356, baseType: !1522, size: 64, offset: 1152)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1524)
!1524 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !412, line: 356, flags: DIFlagFwdDecl)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !411, file: !412, line: 359, baseType: !172, size: 64, offset: 1216)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !411, file: !412, line: 361, baseType: !399, size: 64, offset: 1280)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !411, file: !412, line: 362, baseType: !102, size: 64, offset: 1344)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !411, file: !412, line: 365, baseType: !465, size: 64, offset: 1408)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !411, file: !412, line: 373, baseType: !1530, offset: 1472)
!1530 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !412, line: 296, elements: !123)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !378, file: !353, line: 90, baseType: !373, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !378, file: !353, line: 91, baseType: !1533, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !389, size: 64)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !343, file: !271, line: 143, baseType: !1535, size: 64, offset: 256)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DISubroutineType(types: !1537)
!1537 = !{!1538, !281}
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1540)
!1540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1541)
!1541 = !{!1542, !1543, !1547, !1551, !1557, !1561}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1540, file: !18, line: 40, baseType: !17, size: 32)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1540, file: !18, line: 41, baseType: !1544, size: 64, offset: 64)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{!257}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1540, file: !18, line: 42, baseType: !1548, size: 64, offset: 128)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!102}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1540, file: !18, line: 43, baseType: !1552, size: 64, offset: 192)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{!212, !1555}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1540, file: !18, line: 44, baseType: !1558, size: 64, offset: 256)
!1558 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1559, size: 64)
!1559 = !DISubroutineType(types: !1560)
!1560 = !{!212}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1540, file: !18, line: 45, baseType: !1562, size: 64, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1563, size: 64)
!1563 = !DISubroutineType(types: !1564)
!1564 = !{null, !102}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !343, file: !271, line: 144, baseType: !1566, size: 64, offset: 320)
!1566 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1567, size: 64)
!1567 = !DISubroutineType(types: !1568)
!1568 = !{!212, !281}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !343, file: !271, line: 145, baseType: !1570, size: 64, offset: 384)
!1570 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1571, size: 64)
!1571 = !DISubroutineType(types: !1572)
!1572 = !{null, !281, !1573, !1579}
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1478, line: 23, baseType: !1575)
!1575 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 21, size: 32, elements: !1576)
!1576 = !{!1577}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1575, file: !1478, line: 22, baseType: !1578, size: 32)
!1578 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !99, line: 32, baseType: !1050)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1478, line: 28, baseType: !1581)
!1581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1478, line: 26, size: 32, elements: !1582)
!1582 = !{!1583}
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1581, file: !1478, line: 27, baseType: !1584, size: 32)
!1584 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !99, line: 33, baseType: !1585)
!1585 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !200, line: 50, baseType: !7)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !270, file: !271, line: 70, baseType: !1587, size: 64, offset: 384)
!1587 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1588, size: 64)
!1588 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1589, line: 123, size: 1024, elements: !1590)
!1589 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1590 = !{!1591, !1592, !1593, !1594, !1595, !1596, !1597, !1598, !1731, !1732, !1733, !1734, !1735}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1588, file: !1589, line: 124, baseType: !457, size: 32)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1588, file: !1589, line: 125, baseType: !457, size: 32, offset: 32)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1588, file: !1589, line: 135, baseType: !1587, size: 64, offset: 64)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1588, file: !1589, line: 136, baseType: !152, size: 64, offset: 128)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1588, file: !1589, line: 138, baseType: !419, size: 192, align: 64, offset: 192)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1588, file: !1589, line: 140, baseType: !212, size: 64, offset: 384)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1588, file: !1589, line: 141, baseType: !7, size: 32, offset: 448)
!1598 = !DIDerivedType(tag: DW_TAG_member, scope: !1588, file: !1589, line: 142, baseType: !1599, size: 256, offset: 512)
!1599 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1588, file: !1589, line: 142, size: 256, elements: !1600)
!1600 = !{!1601, !1655, !1659}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1599, file: !1589, line: 143, baseType: !1602, size: 192)
!1602 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1589, line: 91, size: 192, elements: !1603)
!1603 = !{!1604, !1605, !1606}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1602, file: !1589, line: 92, baseType: !172, size: 64)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1602, file: !1589, line: 94, baseType: !436, size: 64, offset: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1602, file: !1589, line: 100, baseType: !1607, size: 64, offset: 128)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1589, line: 180, size: 704, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1625, !1626, !1627, !1653, !1654}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1608, file: !1589, line: 182, baseType: !1587, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1608, file: !1589, line: 183, baseType: !7, size: 32, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1608, file: !1589, line: 186, baseType: !1613, size: 192, offset: 128)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1614, line: 19, size: 192, elements: !1615)
!1614 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1615 = !{!1616, !1623, !1624}
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1613, file: !1614, line: 20, baseType: !1617, size: 128)
!1617 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1618, line: 292, size: 128, elements: !1619)
!1618 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1619 = !{!1620, !1621, !1622}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1617, file: !1618, line: 293, baseType: !288)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1617, file: !1618, line: 295, baseType: !98, size: 32)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1617, file: !1618, line: 296, baseType: !102, size: 64, offset: 64)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1613, file: !1614, line: 21, baseType: !7, size: 32, offset: 128)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1613, file: !1614, line: 22, baseType: !7, size: 32, offset: 160)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1608, file: !1589, line: 187, baseType: !164, size: 32, offset: 320)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1608, file: !1589, line: 188, baseType: !164, size: 32, offset: 352)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1608, file: !1589, line: 189, baseType: !1628, size: 64, offset: 384)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1589, line: 168, size: 320, elements: !1630)
!1630 = !{!1631, !1637, !1641, !1645, !1649}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1629, file: !1589, line: 169, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!122, !1635, !1607}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1636, size: 64)
!1636 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !401, line: 539, flags: DIFlagFwdDecl)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1629, file: !1589, line: 171, baseType: !1638, size: 64, offset: 64)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!122, !1587, !152, !364}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1629, file: !1589, line: 173, baseType: !1642, size: 64, offset: 128)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DISubroutineType(types: !1644)
!1644 = !{!122, !1587}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1629, file: !1589, line: 174, baseType: !1646, size: 64, offset: 192)
!1646 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1647, size: 64)
!1647 = !DISubroutineType(types: !1648)
!1648 = !{!122, !1587, !1587, !152}
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1629, file: !1589, line: 176, baseType: !1650, size: 64, offset: 256)
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = !DISubroutineType(types: !1652)
!1652 = !{!122, !1635, !1587, !1607}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1608, file: !1589, line: 192, baseType: !275, size: 128, offset: 448)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1608, file: !1589, line: 194, baseType: !859, size: 128, offset: 576)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1599, file: !1589, line: 144, baseType: !1656, size: 64)
!1656 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1589, line: 103, size: 64, elements: !1657)
!1657 = !{!1658}
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1656, file: !1589, line: 104, baseType: !1587, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1599, file: !1589, line: 145, baseType: !1660, size: 256)
!1660 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1589, line: 107, size: 256, elements: !1661)
!1661 = !{!1662, !1726, !1729, !1730}
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1660, file: !1589, line: 108, baseType: !1663, size: 64)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1665)
!1665 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1589, line: 217, size: 768, elements: !1666)
!1666 = !{!1667, !1687, !1691, !1695, !1700, !1704, !1708, !1712, !1713, !1714, !1715, !1722}
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1665, file: !1589, line: 222, baseType: !1668, size: 64)
!1668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1669, size: 64)
!1669 = !DISubroutineType(types: !1670)
!1670 = !{!122, !1671}
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1589, line: 197, size: 1088, elements: !1673)
!1673 = !{!1674, !1675, !1676, !1677, !1678, !1679, !1680, !1681, !1682, !1683, !1684, !1685, !1686}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1672, file: !1589, line: 199, baseType: !1587, size: 64)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1672, file: !1589, line: 200, baseType: !399, size: 64, offset: 64)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1672, file: !1589, line: 201, baseType: !1635, size: 64, offset: 128)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1672, file: !1589, line: 202, baseType: !102, size: 64, offset: 192)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1672, file: !1589, line: 205, baseType: !534, size: 192, offset: 256)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1672, file: !1589, line: 206, baseType: !534, size: 192, offset: 448)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1672, file: !1589, line: 207, baseType: !122, size: 32, offset: 640)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1672, file: !1589, line: 208, baseType: !275, size: 128, offset: 704)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1672, file: !1589, line: 209, baseType: !328, size: 64, offset: 832)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1672, file: !1589, line: 211, baseType: !369, size: 64, offset: 896)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1672, file: !1589, line: 212, baseType: !257, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1672, file: !1589, line: 213, baseType: !257, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1672, file: !1589, line: 214, baseType: !1522, size: 64, offset: 1024)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1665, file: !1589, line: 223, baseType: !1688, size: 64, offset: 64)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{null, !1671}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1665, file: !1589, line: 236, baseType: !1692, size: 64, offset: 128)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = !DISubroutineType(types: !1694)
!1694 = !{!122, !1635, !102}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1665, file: !1589, line: 238, baseType: !1696, size: 64, offset: 192)
!1696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1697, size: 64)
!1697 = !DISubroutineType(types: !1698)
!1698 = !{!102, !1635, !1699}
!1699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1665, file: !1589, line: 239, baseType: !1701, size: 64, offset: 256)
!1701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1702, size: 64)
!1702 = !DISubroutineType(types: !1703)
!1703 = !{!102, !1635, !102, !1699}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1665, file: !1589, line: 240, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{null, !1635, !102}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1665, file: !1589, line: 242, baseType: !1709, size: 64, offset: 384)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DISubroutineType(types: !1711)
!1711 = !{!198, !1671, !328, !369, !402}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1665, file: !1589, line: 252, baseType: !369, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1665, file: !1589, line: 259, baseType: !257, size: 8, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1665, file: !1589, line: 260, baseType: !1709, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1665, file: !1589, line: 263, baseType: !1716, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!1719, !1671, !1720}
!1719 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !90, line: 52, baseType: !7)
!1720 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1721, size: 64)
!1721 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1589, line: 27, flags: DIFlagFwdDecl)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1665, file: !1589, line: 266, baseType: !1723, size: 64, offset: 704)
!1723 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1724, size: 64)
!1724 = !DISubroutineType(types: !1725)
!1725 = !{!122, !1671, !410}
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1660, file: !1589, line: 109, baseType: !1727, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1728, size: 64)
!1728 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1589, line: 31, flags: DIFlagFwdDecl)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1660, file: !1589, line: 110, baseType: !402, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1660, file: !1589, line: 111, baseType: !1587, size: 64, offset: 192)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1588, file: !1589, line: 148, baseType: !102, size: 64, offset: 768)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1588, file: !1589, line: 154, baseType: !176, size: 64, offset: 832)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1588, file: !1589, line: 156, baseType: !93, size: 16, offset: 896)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1588, file: !1589, line: 157, baseType: !364, size: 16, offset: 912)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1588, file: !1589, line: 158, baseType: !1736, size: 64, offset: 960)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1589, line: 32, flags: DIFlagFwdDecl)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !270, file: !271, line: 71, baseType: !1739, size: 32, offset: 448)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1740, line: 19, size: 32, elements: !1741)
!1740 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1741 = !{!1742}
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1739, file: !1740, line: 20, baseType: !592, size: 32)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !270, file: !271, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !270, file: !271, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !270, file: !271, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !270, file: !271, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !270, file: !271, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !267, file: !30, line: 463, baseType: !1749, size: 64, offset: 512)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !267, file: !30, line: 465, baseType: !1751, size: 64, offset: 576)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !267, file: !30, line: 467, baseType: !152, size: 64, offset: 640)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !267, file: !30, line: 468, baseType: !1755, size: 64, offset: 704)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1758)
!1758 = !{!1759, !1760, !1761, !1765, !1770, !1774}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1757, file: !30, line: 88, baseType: !152, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1757, file: !30, line: 89, baseType: !375, size: 64, offset: 64)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1757, file: !30, line: 90, baseType: !1762, size: 64, offset: 128)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!122, !1749, !323}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1757, file: !30, line: 91, baseType: !1766, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DISubroutineType(types: !1768)
!1768 = !{!328, !1749, !1769, !1573, !1579}
!1769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1757, file: !30, line: 93, baseType: !1771, size: 64, offset: 256)
!1771 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1772, size: 64)
!1772 = !DISubroutineType(types: !1773)
!1773 = !{null, !1749}
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1757, file: !30, line: 95, baseType: !1775, size: 64, offset: 320)
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1777)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1778)
!1778 = !{!1779, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1777, file: !37, line: 279, baseType: !1780, size: 64)
!1780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1781, size: 64)
!1781 = !DISubroutineType(types: !1782)
!1782 = !{!122, !1749}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1777, file: !37, line: 280, baseType: !1771, size: 64, offset: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1777, file: !37, line: 281, baseType: !1780, size: 64, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1777, file: !37, line: 282, baseType: !1780, size: 64, offset: 192)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1777, file: !37, line: 283, baseType: !1780, size: 64, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1777, file: !37, line: 284, baseType: !1780, size: 64, offset: 320)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1777, file: !37, line: 285, baseType: !1780, size: 64, offset: 384)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1777, file: !37, line: 286, baseType: !1780, size: 64, offset: 448)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1777, file: !37, line: 287, baseType: !1780, size: 64, offset: 512)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1777, file: !37, line: 288, baseType: !1780, size: 64, offset: 576)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1777, file: !37, line: 289, baseType: !1780, size: 64, offset: 640)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1777, file: !37, line: 290, baseType: !1780, size: 64, offset: 704)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1777, file: !37, line: 291, baseType: !1780, size: 64, offset: 768)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1777, file: !37, line: 292, baseType: !1780, size: 64, offset: 832)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1777, file: !37, line: 293, baseType: !1780, size: 64, offset: 896)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1777, file: !37, line: 294, baseType: !1780, size: 64, offset: 960)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1777, file: !37, line: 295, baseType: !1780, size: 64, offset: 1024)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1777, file: !37, line: 296, baseType: !1780, size: 64, offset: 1088)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1777, file: !37, line: 297, baseType: !1780, size: 64, offset: 1152)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1777, file: !37, line: 298, baseType: !1780, size: 64, offset: 1216)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1777, file: !37, line: 299, baseType: !1780, size: 64, offset: 1280)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1777, file: !37, line: 300, baseType: !1780, size: 64, offset: 1344)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1777, file: !37, line: 301, baseType: !1780, size: 64, offset: 1408)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !267, file: !30, line: 470, baseType: !1806, size: 64, offset: 768)
!1806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1807, size: 64)
!1807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1808, line: 82, size: 1408, elements: !1809)
!1808 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1809 = !{!1810, !1811, !1812, !1813, !1814, !1815, !1816, !1879, !1880, !1881, !1882, !1883, !1884, !1885, !1886, !1887, !1888, !1889, !1890, !1891, !1895, !1898, !1901}
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1807, file: !1808, line: 83, baseType: !152, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1807, file: !1808, line: 84, baseType: !152, size: 64, offset: 64)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1807, file: !1808, line: 85, baseType: !1749, size: 64, offset: 128)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1807, file: !1808, line: 86, baseType: !375, size: 64, offset: 192)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1807, file: !1808, line: 87, baseType: !375, size: 64, offset: 256)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1807, file: !1808, line: 88, baseType: !375, size: 64, offset: 320)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1807, file: !1808, line: 90, baseType: !1817, size: 64, offset: 384)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DISubroutineType(types: !1819)
!1819 = !{!122, !1749, !1820}
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1822)
!1822 = !{!1823, !1824, !1825, !1829, !1830, !1831, !1832, !1846, !1859, !1860, !1861, !1862, !1863, !1871, !1872, !1873, !1874, !1875, !1876}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1821, file: !24, line: 96, baseType: !152, size: 64)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1821, file: !24, line: 97, baseType: !1806, size: 64, offset: 64)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1821, file: !24, line: 99, baseType: !1826, size: 64, offset: 128)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1828, line: 76, flags: DIFlagFwdDecl)
!1828 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1821, file: !24, line: 100, baseType: !152, size: 64, offset: 192)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1821, file: !24, line: 102, baseType: !257, size: 8, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1821, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1821, file: !24, line: 105, baseType: !1833, size: 64, offset: 320)
!1833 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1834, size: 64)
!1834 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1836, line: 262, size: 1600, elements: !1837)
!1836 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1837 = !{!1838, !1840, !1841, !1845}
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1835, file: !1836, line: 263, baseType: !1839, size: 256)
!1839 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !1384)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1835, file: !1836, line: 264, baseType: !1839, size: 256, offset: 256)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1835, file: !1836, line: 265, baseType: !1842, size: 1024, offset: 512)
!1842 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 1024, elements: !1843)
!1843 = !{!1844}
!1844 = !DISubrange(count: 128)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1835, file: !1836, line: 266, baseType: !212, size: 64, offset: 1536)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1821, file: !24, line: 106, baseType: !1847, size: 64, offset: 384)
!1847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1848, size: 64)
!1848 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1849)
!1849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1836, line: 210, size: 256, elements: !1850)
!1850 = !{!1851, !1855, !1857, !1858}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1849, file: !1836, line: 211, baseType: !1852, size: 72)
!1852 = !DICompositeType(tag: DW_TAG_array_type, baseType: !724, size: 72, elements: !1853)
!1853 = !{!1854}
!1854 = !DISubrange(count: 9)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1849, file: !1836, line: 212, baseType: !1856, size: 64, offset: 128)
!1856 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1836, line: 14, baseType: !172)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1849, file: !1836, line: 213, baseType: !96, size: 32, offset: 192)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1849, file: !1836, line: 214, baseType: !96, size: 32, offset: 224)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1821, file: !24, line: 108, baseType: !1780, size: 64, offset: 448)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1821, file: !24, line: 109, baseType: !1771, size: 64, offset: 512)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1821, file: !24, line: 110, baseType: !1780, size: 64, offset: 576)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1821, file: !24, line: 111, baseType: !1771, size: 64, offset: 640)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1821, file: !24, line: 112, baseType: !1864, size: 64, offset: 704)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DISubroutineType(types: !1866)
!1866 = !{!122, !1749, !1867}
!1867 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1868)
!1868 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1869)
!1869 = !{!1870}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1868, file: !37, line: 51, baseType: !122, size: 32)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1821, file: !24, line: 113, baseType: !1780, size: 64, offset: 768)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1821, file: !24, line: 114, baseType: !375, size: 64, offset: 832)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1821, file: !24, line: 115, baseType: !375, size: 64, offset: 896)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1821, file: !24, line: 117, baseType: !1775, size: 64, offset: 960)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1821, file: !24, line: 118, baseType: !1771, size: 64, offset: 1024)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1821, file: !24, line: 120, baseType: !1877, size: 64, offset: 1088)
!1877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1878, size: 64)
!1878 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1807, file: !1808, line: 91, baseType: !1762, size: 64, offset: 448)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1807, file: !1808, line: 92, baseType: !1780, size: 64, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1807, file: !1808, line: 93, baseType: !1771, size: 64, offset: 576)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1807, file: !1808, line: 94, baseType: !1780, size: 64, offset: 640)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1807, file: !1808, line: 95, baseType: !1771, size: 64, offset: 704)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1807, file: !1808, line: 97, baseType: !1780, size: 64, offset: 768)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1807, file: !1808, line: 98, baseType: !1780, size: 64, offset: 832)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1807, file: !1808, line: 100, baseType: !1864, size: 64, offset: 896)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1807, file: !1808, line: 101, baseType: !1780, size: 64, offset: 960)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1807, file: !1808, line: 103, baseType: !1780, size: 64, offset: 1024)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1807, file: !1808, line: 105, baseType: !1780, size: 64, offset: 1088)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1807, file: !1808, line: 107, baseType: !1775, size: 64, offset: 1152)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1807, file: !1808, line: 109, baseType: !1892, size: 64, offset: 1216)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1894)
!1894 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1808, line: 109, flags: DIFlagFwdDecl)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1807, file: !1808, line: 111, baseType: !1896, size: 64, offset: 1280)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1808, line: 111, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1807, file: !1808, line: 112, baseType: !1899, offset: 1344)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1900, line: 187, elements: !123)
!1900 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1807, file: !1808, line: 114, baseType: !257, size: 8, offset: 1344)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !267, file: !30, line: 471, baseType: !1820, size: 64, offset: 832)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !267, file: !30, line: 473, baseType: !102, size: 64, offset: 896)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !267, file: !30, line: 475, baseType: !102, size: 64, offset: 960)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !267, file: !30, line: 480, baseType: !534, size: 192, offset: 1024)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !267, file: !30, line: 484, baseType: !1907, size: 576, offset: 1216)
!1907 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1908)
!1908 = !{!1909, !1910, !1911, !1912, !1913, !1914}
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1907, file: !30, line: 362, baseType: !275, size: 128)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1907, file: !30, line: 363, baseType: !275, size: 128, offset: 128)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1907, file: !30, line: 364, baseType: !275, size: 128, offset: 256)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1907, file: !30, line: 365, baseType: !275, size: 128, offset: 384)
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1907, file: !30, line: 366, baseType: !257, size: 8, offset: 512)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1907, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !267, file: !30, line: 485, baseType: !1916, size: 2304, offset: 1792)
!1916 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1917)
!1917 = !{!1918, !1919, !1920, !1921, !1922, !1923, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1981, !1982, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1996, !1997, !1998, !1999, !2000, !2001, !2002, !2003, !2013, !2017}
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1916, file: !37, line: 566, baseType: !1867, size: 32)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1916, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1916, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1916, file: !37, line: 569, baseType: !257, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1916, file: !37, line: 570, baseType: !257, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1916, file: !37, line: 571, baseType: !257, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1916, file: !37, line: 572, baseType: !257, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1916, file: !37, line: 573, baseType: !257, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1916, file: !37, line: 574, baseType: !257, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1916, file: !37, line: 575, baseType: !257, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1916, file: !37, line: 576, baseType: !257, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1916, file: !37, line: 577, baseType: !164, size: 32, offset: 64)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1916, file: !37, line: 578, baseType: !288, offset: 96)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1916, file: !37, line: 580, baseType: !275, size: 128, offset: 128)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1916, file: !37, line: 581, baseType: !888, size: 192, offset: 256)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1916, file: !37, line: 582, baseType: !1934, size: 64, offset: 448)
!1934 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1935, size: 64)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1936, line: 43, size: 1472, elements: !1937)
!1936 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !{!1938, !1939, !1940, !1941, !1942, !1945, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970}
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1935, file: !1936, line: 44, baseType: !152, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1935, file: !1936, line: 45, baseType: !122, size: 32, offset: 64)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1935, file: !1936, line: 46, baseType: !275, size: 128, offset: 128)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1935, file: !1936, line: 47, baseType: !288, offset: 256)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1935, file: !1936, line: 48, baseType: !1943, size: 64, offset: 256)
!1943 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1944, size: 64)
!1944 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1935, file: !1936, line: 49, baseType: !1946, size: 320, offset: 320)
!1946 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1947, line: 11, size: 320, elements: !1948)
!1947 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1948 = !{!1949, !1950, !1951, !1956}
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1946, file: !1947, line: 16, baseType: !852, size: 128)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1946, file: !1947, line: 17, baseType: !172, size: 64, offset: 128)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1946, file: !1947, line: 18, baseType: !1952, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{null, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1946, file: !1947, line: 19, baseType: !164, size: 32, offset: 256)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1935, file: !1936, line: 50, baseType: !172, size: 64, offset: 640)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1935, file: !1936, line: 51, baseType: !662, size: 64, offset: 704)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1935, file: !1936, line: 52, baseType: !662, size: 64, offset: 768)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1935, file: !1936, line: 53, baseType: !662, size: 64, offset: 832)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1935, file: !1936, line: 54, baseType: !662, size: 64, offset: 896)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1935, file: !1936, line: 55, baseType: !662, size: 64, offset: 960)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1935, file: !1936, line: 56, baseType: !172, size: 64, offset: 1024)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1935, file: !1936, line: 57, baseType: !172, size: 64, offset: 1088)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1935, file: !1936, line: 58, baseType: !172, size: 64, offset: 1152)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1935, file: !1936, line: 59, baseType: !172, size: 64, offset: 1216)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1935, file: !1936, line: 60, baseType: !172, size: 64, offset: 1280)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1935, file: !1936, line: 61, baseType: !1749, size: 64, offset: 1344)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1935, file: !1936, line: 62, baseType: !257, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1935, file: !1936, line: 63, baseType: !257, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1916, file: !37, line: 583, baseType: !257, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1916, file: !37, line: 584, baseType: !257, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1916, file: !37, line: 585, baseType: !257, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1916, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1916, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1916, file: !37, line: 592, baseType: !654, size: 512, offset: 576)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1916, file: !37, line: 593, baseType: !176, size: 64, offset: 1088)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1916, file: !37, line: 594, baseType: !1489, size: 256, offset: 1152)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1916, file: !37, line: 595, baseType: !859, size: 128, offset: 1408)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1916, file: !37, line: 596, baseType: !1943, size: 64, offset: 1536)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1916, file: !37, line: 597, baseType: !457, size: 32, offset: 1600)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1916, file: !37, line: 598, baseType: !457, size: 32, offset: 1632)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1916, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1916, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1916, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1916, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1916, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1916, file: !37, line: 604, baseType: !257, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1916, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1916, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1916, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1916, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1916, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1916, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1916, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1916, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1916, file: !37, line: 613, baseType: !122, size: 32, offset: 1792)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1916, file: !37, line: 614, baseType: !122, size: 32, offset: 1824)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1916, file: !37, line: 615, baseType: !176, size: 64, offset: 1856)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1916, file: !37, line: 616, baseType: !176, size: 64, offset: 1920)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1916, file: !37, line: 617, baseType: !176, size: 64, offset: 1984)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1916, file: !37, line: 618, baseType: !176, size: 64, offset: 2048)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1916, file: !37, line: 620, baseType: !2004, size: 64, offset: 2112)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2006)
!2006 = !{!2007, !2008, !2009, !2010}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2005, file: !37, line: 537, baseType: !288)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2005, file: !37, line: 538, baseType: !7, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2005, file: !37, line: 540, baseType: !275, size: 128, offset: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2005, file: !37, line: 543, baseType: !2011, size: 64, offset: 192)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1916, file: !37, line: 621, baseType: !2014, size: 64, offset: 2176)
!2014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2015, size: 64)
!2015 = !DISubroutineType(types: !2016)
!2016 = !{null, !1749, !812}
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1916, file: !37, line: 622, baseType: !2018, size: 64, offset: 2240)
!2018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2019, size: 64)
!2019 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !267, file: !30, line: 486, baseType: !2021, size: 64, offset: 4096)
!2021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2022, size: 64)
!2022 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2023)
!2023 = !{!2024, !2025, !2026, !2030, !2031, !2032}
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2022, file: !37, line: 643, baseType: !1777, size: 1472)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2022, file: !37, line: 644, baseType: !1780, size: 64, offset: 1472)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2022, file: !37, line: 645, baseType: !2027, size: 64, offset: 1536)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{null, !1749, !257}
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2022, file: !37, line: 646, baseType: !1780, size: 64, offset: 1600)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2022, file: !37, line: 647, baseType: !1771, size: 64, offset: 1664)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2022, file: !37, line: 648, baseType: !1771, size: 64, offset: 1728)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !267, file: !30, line: 493, baseType: !2034, size: 64, offset: 4160)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !267, file: !30, line: 499, baseType: !275, size: 128, offset: 4224)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !267, file: !30, line: 502, baseType: !2038, size: 64, offset: 4352)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2040)
!2040 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !267, file: !30, line: 504, baseType: !2042, size: 64, offset: 4416)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !267, file: !30, line: 505, baseType: !176, size: 64, offset: 4480)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !267, file: !30, line: 510, baseType: !176, size: 64, offset: 4544)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !267, file: !30, line: 511, baseType: !2046, size: 64, offset: 4608)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2048)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !267, file: !30, line: 513, baseType: !2050, size: 64, offset: 4672)
!2050 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2051, size: 64)
!2051 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2052)
!2052 = !{!2053, !2054}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2051, file: !30, line: 293, baseType: !7, size: 32)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2051, file: !30, line: 294, baseType: !172, size: 64, offset: 64)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !267, file: !30, line: 515, baseType: !275, size: 128, offset: 4736)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !267, file: !30, line: 526, baseType: !2057, offset: 4864)
!2057 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2058, line: 5, elements: !123)
!2058 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !267, file: !30, line: 528, baseType: !226, size: 64, offset: 4864)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !267, file: !30, line: 529, baseType: !239, size: 64, offset: 4928)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !267, file: !30, line: 534, baseType: !2062, size: 32, offset: 4992)
!2062 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !99, line: 16, baseType: !2063)
!2063 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !99, line: 13, baseType: !164)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !267, file: !30, line: 535, baseType: !164, size: 32, offset: 5024)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !267, file: !30, line: 537, baseType: !288, offset: 5056)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !267, file: !30, line: 538, baseType: !275, size: 128, offset: 5056)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !267, file: !30, line: 540, baseType: !2068, size: 64, offset: 5184)
!2068 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2069 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2070, line: 54, size: 960, elements: !2071)
!2070 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077, !2078, !2082, !2086, !2087, !2088, !2089, !2093, !2097, !2098}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2069, file: !2070, line: 55, baseType: !152, size: 64)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2069, file: !2070, line: 56, baseType: !1826, size: 64, offset: 64)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2069, file: !2070, line: 58, baseType: !375, size: 64, offset: 128)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2069, file: !2070, line: 59, baseType: !375, size: 64, offset: 192)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2069, file: !2070, line: 60, baseType: !281, size: 64, offset: 256)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2069, file: !2070, line: 62, baseType: !1762, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2069, file: !2070, line: 63, baseType: !2079, size: 64, offset: 384)
!2079 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2080, size: 64)
!2080 = !DISubroutineType(types: !2081)
!2081 = !{!328, !1749, !1769}
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2069, file: !2070, line: 65, baseType: !2083, size: 64, offset: 448)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{null, !2068}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2069, file: !2070, line: 66, baseType: !1771, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2069, file: !2070, line: 68, baseType: !1780, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2069, file: !2070, line: 70, baseType: !1538, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2069, file: !2070, line: 71, baseType: !2090, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = !DISubroutineType(types: !2092)
!2092 = !{!212, !1749}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2069, file: !2070, line: 73, baseType: !2094, size: 64, offset: 768)
!2094 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2095, size: 64)
!2095 = !DISubroutineType(types: !2096)
!2096 = !{null, !1749, !1573, !1579}
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2069, file: !2070, line: 75, baseType: !1775, size: 64, offset: 832)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2069, file: !2070, line: 77, baseType: !1896, size: 64, offset: 896)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !267, file: !30, line: 541, baseType: !375, size: 64, offset: 5248)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !267, file: !30, line: 543, baseType: !1771, size: 64, offset: 5312)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !267, file: !30, line: 544, baseType: !2102, size: 64, offset: 5376)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !267, file: !30, line: 545, baseType: !2105, size: 64, offset: 5440)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2106, size: 64)
!2106 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !267, file: !30, line: 547, baseType: !257, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !267, file: !30, line: 548, baseType: !257, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !267, file: !30, line: 549, baseType: !257, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !267, file: !30, line: 550, baseType: !257, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !243, file: !236, line: 116, baseType: !2112, size: 64, offset: 256)
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = !DISubroutineType(types: !2114)
!2114 = !{!257, !259, !152}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !243, file: !236, line: 118, baseType: !2116, size: 64, offset: 320)
!2116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2117, size: 64)
!2117 = !DISubroutineType(types: !2118)
!2118 = !{!122, !259, !152, !7, !102, !369}
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !243, file: !236, line: 123, baseType: !2120, size: 64, offset: 384)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DISubroutineType(types: !2122)
!2122 = !{!122, !259, !152, !2123, !369}
!2123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !243, file: !236, line: 126, baseType: !2125, size: 64, offset: 448)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!152, !259}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !243, file: !236, line: 127, baseType: !2125, size: 64, offset: 512)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !243, file: !236, line: 128, baseType: !2130, size: 64, offset: 576)
!2130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2131, size: 64)
!2131 = !DISubroutineType(types: !2132)
!2132 = !{!239, !259}
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !243, file: !236, line: 130, baseType: !2134, size: 64, offset: 640)
!2134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2135, size: 64)
!2135 = !DISubroutineType(types: !2136)
!2136 = !{!239, !259, !239}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !243, file: !236, line: 133, baseType: !2138, size: 64, offset: 704)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DISubroutineType(types: !2140)
!2140 = !{!239, !259, !152}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !243, file: !236, line: 135, baseType: !2142, size: 64, offset: 768)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!122, !259, !152, !152, !7, !7, !2145}
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !236, line: 43, size: 640, elements: !2147)
!2147 = !{!2148, !2149, !2150}
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2146, file: !236, line: 44, baseType: !239, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2146, file: !236, line: 45, baseType: !7, size: 32, offset: 64)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2146, file: !236, line: 46, baseType: !2151, size: 512, offset: 128)
!2151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !176, size: 512, elements: !692)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !243, file: !236, line: 140, baseType: !2134, size: 64, offset: 832)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !243, file: !236, line: 143, baseType: !2130, size: 64, offset: 896)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !243, file: !236, line: 145, baseType: !246, size: 64, offset: 960)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !243, file: !236, line: 146, baseType: !2156, size: 64, offset: 1024)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!122, !259, !2159}
!2159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2160, size: 64)
!2160 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !236, line: 29, size: 128, elements: !2161)
!2161 = !{!2162, !2163, !2164}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2160, file: !236, line: 30, baseType: !7, size: 32)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2160, file: !236, line: 31, baseType: !7, size: 32, offset: 32)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2160, file: !236, line: 32, baseType: !259, size: 64, offset: 64)
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !243, file: !236, line: 148, baseType: !2166, size: 64, offset: 1088)
!2166 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2167, size: 64)
!2167 = !DISubroutineType(types: !2168)
!2168 = !{!122, !259, !1749}
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !235, file: !236, line: 20, baseType: !1749, size: 64, offset: 128)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !227, file: !228, line: 57, baseType: !2171, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !228, line: 31, size: 704, elements: !2173)
!2173 = !{!2174, !2175, !2176, !2177, !2178}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2172, file: !228, line: 32, baseType: !328, size: 64)
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2172, file: !228, line: 33, baseType: !122, size: 32, offset: 64)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2172, file: !228, line: 34, baseType: !102, size: 64, offset: 128)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2172, file: !228, line: 35, baseType: !2171, size: 64, offset: 192)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2172, file: !228, line: 43, baseType: !390, size: 448, offset: 256)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !227, file: !228, line: 58, baseType: !2171, size: 64, offset: 448)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !227, file: !228, line: 59, baseType: !226, size: 64, offset: 512)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !227, file: !228, line: 60, baseType: !226, size: 64, offset: 576)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !227, file: !228, line: 61, baseType: !226, size: 64, offset: 640)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !227, file: !228, line: 63, baseType: !270, size: 512, offset: 704)
!2184 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !227, file: !228, line: 65, baseType: !172, size: 64, offset: 1216)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !227, file: !228, line: 66, baseType: !102, size: 64, offset: 1280)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv_priv", scope: !167, file: !168, line: 235, baseType: !102, size: 64, offset: 1024)
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "fldrv", scope: !167, file: !168, line: 236, baseType: !2188, size: 64, offset: 1088)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_chip_driver", file: !168, line: 239, size: 384, elements: !2190)
!2190 = !{!2191, !2420, !2421, !2422, !2423}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2189, file: !168, line: 240, baseType: !2192, size: 64)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!2195, !166}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_info", file: !2197, line: 235, size: 9664, elements: !2198)
!2197 = !DIFile(filename: "./include/linux/mtd/mtd.h", directory: "/home/lizy2001/genbc/linux")
!2198 = !{!2199, !2201, !2202, !2204, !2205, !2206, !2207, !2208, !2209, !2210, !2211, !2212, !2213, !2214, !2215, !2216, !2231, !2252, !2253, !2254, !2255, !2264, !2274, !2281, !2285, !2290, !2296, !2297, !2314, !2315, !2326, !2327, !2328, !2329, !2330, !2331, !2341, !2345, !2349, !2350, !2351, !2355, !2356, !2357, !2358, !2362, !2363, !2364, !2365, !2366, !2367, !2379, !2386, !2387, !2388, !2389, !2390, !2391, !2399, !2403, !2404, !2405}
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2196, file: !2197, line: 236, baseType: !2200, size: 8)
!2200 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_char", file: !99, line: 79, baseType: !101)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2196, file: !2197, line: 237, baseType: !163, size: 32, offset: 32)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2196, file: !2197, line: 238, baseType: !2203, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !99, line: 107, baseType: !176)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !2196, file: !2197, line: 244, baseType: !163, size: 32, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "writesize", scope: !2196, file: !2197, line: 252, baseType: !163, size: 32, offset: 160)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "writebufsize", scope: !2196, file: !2197, line: 263, baseType: !163, size: 32, offset: 192)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "oobsize", scope: !2196, file: !2197, line: 265, baseType: !163, size: 32, offset: 224)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "oobavail", scope: !2196, file: !2197, line: 266, baseType: !163, size: 32, offset: 256)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_shift", scope: !2196, file: !2197, line: 272, baseType: !7, size: 32, offset: 288)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_shift", scope: !2196, file: !2197, line: 273, baseType: !7, size: 32, offset: 320)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize_mask", scope: !2196, file: !2197, line: 275, baseType: !7, size: 32, offset: 352)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "writesize_mask", scope: !2196, file: !2197, line: 276, baseType: !7, size: 32, offset: 384)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bitflip_threshold", scope: !2196, file: !2197, line: 285, baseType: !7, size: 32, offset: 416)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2196, file: !2197, line: 288, baseType: !152, size: 64, offset: 448)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !2196, file: !2197, line: 289, baseType: !122, size: 32, offset: 512)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "ooblayout", scope: !2196, file: !2197, line: 292, baseType: !2217, size: 64, offset: 576)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2219)
!2219 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ooblayout_ops", file: !2197, line: 101, size: 128, elements: !2220)
!2220 = !{!2221, !2230}
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "ecc", scope: !2219, file: !2197, line: 102, baseType: !2222, size: 64)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!122, !2195, !122, !2225}
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_region", file: !2197, line: 87, size: 64, elements: !2227)
!2227 = !{!2228, !2229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2226, file: !2197, line: 88, baseType: !164, size: 32)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2226, file: !2197, line: 89, baseType: !164, size: 32, offset: 32)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2219, file: !2197, line: 104, baseType: !2222, size: 64, offset: 64)
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "pairing", scope: !2196, file: !2197, line: 295, baseType: !2232, size: 64, offset: 640)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2234)
!2234 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_scheme", file: !2197, line: 176, size: 192, elements: !2235)
!2235 = !{!2236, !2237, !2246}
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "ngroups", scope: !2234, file: !2197, line: 177, baseType: !122, size: 32)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "get_info", scope: !2234, file: !2197, line: 178, baseType: !2238, size: 64, offset: 64)
!2238 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2239, size: 64)
!2239 = !DISubroutineType(types: !2240)
!2240 = !{!122, !2195, !122, !2241}
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_pairing_info", file: !2197, line: 138, size: 64, elements: !2243)
!2243 = !{!2244, !2245}
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "pair", scope: !2242, file: !2197, line: 139, baseType: !122, size: 32)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "group", scope: !2242, file: !2197, line: 140, baseType: !122, size: 32, offset: 32)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "get_wunit", scope: !2234, file: !2197, line: 180, baseType: !2247, size: 64, offset: 128)
!2247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2248, size: 64)
!2248 = !DISubroutineType(types: !2249)
!2249 = !{!122, !2195, !2250}
!2250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2251, size: 64)
!2251 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2242)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_step_size", scope: !2196, file: !2197, line: 298, baseType: !7, size: 32, offset: 704)
!2253 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_strength", scope: !2196, file: !2197, line: 301, baseType: !7, size: 32, offset: 736)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "numeraseregions", scope: !2196, file: !2197, line: 306, baseType: !122, size: 32, offset: 768)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "eraseregions", scope: !2196, file: !2197, line: 307, baseType: !2256, size: 64, offset: 832)
!2256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2257, size: 64)
!2257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_erase_region_info", file: !2197, line: 36, size: 192, elements: !2258)
!2258 = !{!2259, !2260, !2261, !2262}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2257, file: !2197, line: 37, baseType: !2203, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_member, name: "erasesize", scope: !2257, file: !2197, line: 38, baseType: !163, size: 32, offset: 64)
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "numblocks", scope: !2257, file: !2197, line: 39, baseType: !163, size: 32, offset: 96)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "lockmap", scope: !2257, file: !2197, line: 40, baseType: !2263, size: 64, offset: 128)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "_erase", scope: !2196, file: !2197, line: 313, baseType: !2265, size: 64, offset: 896)
!2265 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2266, size: 64)
!2266 = !DISubroutineType(types: !2267)
!2267 = !{!122, !2195, !2268}
!2268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2269, size: 64)
!2269 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "erase_info", file: !2197, line: 30, size: 192, elements: !2270)
!2270 = !{!2271, !2272, !2273}
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2269, file: !2197, line: 31, baseType: !2203, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2269, file: !2197, line: 32, baseType: !2203, size: 64, offset: 64)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "fail_addr", scope: !2269, file: !2197, line: 33, baseType: !2203, size: 64, offset: 128)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "_point", scope: !2196, file: !2197, line: 314, baseType: !2275, size: 64, offset: 960)
!2275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2276, size: 64)
!2276 = !DISubroutineType(types: !2277)
!2277 = !{!122, !2195, !402, !369, !2278, !2279, !2280}
!2278 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!2279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!2280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "_unpoint", scope: !2196, file: !2197, line: 316, baseType: !2282, size: 64, offset: 1024)
!2282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2283, size: 64)
!2283 = !DISubroutineType(types: !2284)
!2284 = !{!122, !2195, !402, !369}
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "_read", scope: !2196, file: !2197, line: 317, baseType: !2286, size: 64, offset: 1088)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = !DISubroutineType(types: !2288)
!2288 = !{!122, !2195, !402, !369, !2278, !2289}
!2289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2200, size: 64)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "_write", scope: !2196, file: !2197, line: 319, baseType: !2291, size: 64, offset: 1152)
!2291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2292, size: 64)
!2292 = !DISubroutineType(types: !2293)
!2293 = !{!122, !2195, !402, !369, !2278, !2294}
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2200)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "_panic_write", scope: !2196, file: !2197, line: 321, baseType: !2291, size: 64, offset: 1216)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "_read_oob", scope: !2196, file: !2197, line: 323, baseType: !2298, size: 64, offset: 1280)
!2298 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2299, size: 64)
!2299 = !DISubroutineType(types: !2300)
!2300 = !{!122, !2195, !402, !2301}
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_oob_ops", file: !2197, line: 64, size: 512, elements: !2303)
!2303 = !{!2304, !2305, !2306, !2307, !2308, !2309, !2310, !2313}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !2302, file: !2197, line: 65, baseType: !7, size: 32)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2302, file: !2197, line: 66, baseType: !369, size: 64, offset: 64)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "retlen", scope: !2302, file: !2197, line: 67, baseType: !369, size: 64, offset: 128)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "ooblen", scope: !2302, file: !2197, line: 68, baseType: !369, size: 64, offset: 192)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "oobretlen", scope: !2302, file: !2197, line: 69, baseType: !369, size: 64, offset: 256)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ooboffs", scope: !2302, file: !2197, line: 70, baseType: !163, size: 32, offset: 320)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "datbuf", scope: !2302, file: !2197, line: 71, baseType: !2311, size: 64, offset: 384)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint8_t", file: !99, line: 102, baseType: !723)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "oobbuf", scope: !2302, file: !2197, line: 72, baseType: !2311, size: 64, offset: 448)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "_write_oob", scope: !2196, file: !2197, line: 325, baseType: !2298, size: 64, offset: 1344)
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "_get_fact_prot_info", scope: !2196, file: !2197, line: 327, baseType: !2316, size: 64, offset: 1408)
!2316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2317, size: 64)
!2317 = !DISubroutineType(types: !2318)
!2318 = !{!122, !2195, !369, !2278, !2319}
!2319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2320, size: 64)
!2320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "otp_info", file: !2321, line: 146, size: 96, elements: !2322)
!2321 = !DIFile(filename: "./include/uapi/mtd/mtd-abi.h", directory: "/home/lizy2001/genbc/linux")
!2322 = !{!2323, !2324, !2325}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2320, file: !2321, line: 147, baseType: !96, size: 32)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2320, file: !2321, line: 148, baseType: !96, size: 32, offset: 32)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "locked", scope: !2320, file: !2321, line: 149, baseType: !96, size: 32, offset: 64)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "_read_fact_prot_reg", scope: !2196, file: !2197, line: 329, baseType: !2286, size: 64, offset: 1472)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "_get_user_prot_info", scope: !2196, file: !2197, line: 331, baseType: !2316, size: 64, offset: 1536)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "_read_user_prot_reg", scope: !2196, file: !2197, line: 333, baseType: !2286, size: 64, offset: 1600)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "_write_user_prot_reg", scope: !2196, file: !2197, line: 335, baseType: !2286, size: 64, offset: 1664)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "_lock_user_prot_reg", scope: !2196, file: !2197, line: 337, baseType: !2282, size: 64, offset: 1728)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "_writev", scope: !2196, file: !2197, line: 339, baseType: !2332, size: 64, offset: 1792)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DISubroutineType(types: !2334)
!2334 = !{!122, !2195, !2335, !172, !402, !2278}
!2335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2336, size: 64)
!2336 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2337)
!2337 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kvec", file: !1163, line: 15, size: 128, elements: !2338)
!2338 = !{!2339, !2340}
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "iov_base", scope: !2337, file: !1163, line: 16, baseType: !102, size: 64)
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "iov_len", scope: !2337, file: !1163, line: 17, baseType: !369, size: 64, offset: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "_sync", scope: !2196, file: !2197, line: 341, baseType: !2342, size: 64, offset: 1856)
!2342 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2343, size: 64)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{null, !2195}
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "_lock", scope: !2196, file: !2197, line: 342, baseType: !2346, size: 64, offset: 1920)
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2347, size: 64)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!122, !2195, !402, !2203}
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "_unlock", scope: !2196, file: !2197, line: 343, baseType: !2346, size: 64, offset: 1984)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "_is_locked", scope: !2196, file: !2197, line: 344, baseType: !2346, size: 64, offset: 2048)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isreserved", scope: !2196, file: !2197, line: 345, baseType: !2352, size: 64, offset: 2112)
!2352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2353, size: 64)
!2353 = !DISubroutineType(types: !2354)
!2354 = !{!122, !2195, !402}
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "_block_isbad", scope: !2196, file: !2197, line: 346, baseType: !2352, size: 64, offset: 2176)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "_block_markbad", scope: !2196, file: !2197, line: 347, baseType: !2352, size: 64, offset: 2240)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "_max_bad_blocks", scope: !2196, file: !2197, line: 348, baseType: !2282, size: 64, offset: 2304)
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "_suspend", scope: !2196, file: !2197, line: 349, baseType: !2359, size: 64, offset: 2368)
!2359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2360, size: 64)
!2360 = !DISubroutineType(types: !2361)
!2361 = !{!122, !2195}
!2362 = !DIDerivedType(tag: DW_TAG_member, name: "_resume", scope: !2196, file: !2197, line: 350, baseType: !2342, size: 64, offset: 2432)
!2363 = !DIDerivedType(tag: DW_TAG_member, name: "_reboot", scope: !2196, file: !2197, line: 351, baseType: !2342, size: 64, offset: 2496)
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "_get_device", scope: !2196, file: !2197, line: 356, baseType: !2359, size: 64, offset: 2560)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "_put_device", scope: !2196, file: !2197, line: 357, baseType: !2342, size: 64, offset: 2624)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "oops_panic_write", scope: !2196, file: !2197, line: 363, baseType: !257, size: 8, offset: 2688)
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "reboot_notifier", scope: !2196, file: !2197, line: 365, baseType: !2368, size: 192, offset: 2752)
!2368 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !2369, line: 54, size: 192, elements: !2370)
!2369 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!2370 = !{!2371, !2377, !2378}
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !2368, file: !2369, line: 55, baseType: !2372, size: 64)
!2372 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !2369, line: 51, baseType: !2373)
!2373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2374, size: 64)
!2374 = !DISubroutineType(types: !2375)
!2375 = !{!122, !2376, !172, !102}
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2368, size: 64)
!2377 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2368, file: !2369, line: 56, baseType: !2376, size: 64, offset: 64)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !2368, file: !2369, line: 57, baseType: !122, size: 32, offset: 128)
!2379 = !DIDerivedType(tag: DW_TAG_member, name: "ecc_stats", scope: !2196, file: !2197, line: 368, baseType: !2380, size: 128, offset: 2944)
!2380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_ecc_stats", file: !2321, line: 250, size: 128, elements: !2381)
!2381 = !{!2382, !2383, !2384, !2385}
!2382 = !DIDerivedType(tag: DW_TAG_member, name: "corrected", scope: !2380, file: !2321, line: 251, baseType: !96, size: 32)
!2383 = !DIDerivedType(tag: DW_TAG_member, name: "failed", scope: !2380, file: !2321, line: 252, baseType: !96, size: 32, offset: 32)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "badblocks", scope: !2380, file: !2321, line: 253, baseType: !96, size: 32, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "bbtblocks", scope: !2380, file: !2321, line: 254, baseType: !96, size: 32, offset: 96)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "subpage_sft", scope: !2196, file: !2197, line: 370, baseType: !122, size: 32, offset: 3072)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2196, file: !2197, line: 372, baseType: !102, size: 64, offset: 3136)
!2388 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2196, file: !2197, line: 374, baseType: !1826, size: 64, offset: 3200)
!2389 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2196, file: !2197, line: 375, baseType: !267, size: 5568, offset: 3264)
!2390 = !DIDerivedType(tag: DW_TAG_member, name: "usecount", scope: !2196, file: !2197, line: 376, baseType: !122, size: 32, offset: 8832)
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "dbg", scope: !2196, file: !2197, line: 377, baseType: !2392, size: 192, offset: 8896)
!2392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_debug_info", file: !2197, line: 191, size: 192, elements: !2393)
!2393 = !{!2394, !2397, !2398}
!2394 = !DIDerivedType(tag: DW_TAG_member, name: "dfs_dir", scope: !2392, file: !2197, line: 192, baseType: !2395, size: 64)
!2395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2396, size: 64)
!2396 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !1589, line: 21, flags: DIFlagFwdDecl)
!2397 = !DIDerivedType(tag: DW_TAG_member, name: "partname", scope: !2392, file: !2197, line: 194, baseType: !152, size: 64, offset: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "partid", scope: !2392, file: !2197, line: 195, baseType: !152, size: 64, offset: 128)
!2399 = !DIDerivedType(tag: DW_TAG_member, name: "nvmem", scope: !2196, file: !2197, line: 378, baseType: !2400, size: 64, offset: 9088)
!2400 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2401, size: 64)
!2401 = !DICompositeType(tag: DW_TAG_structure_type, name: "nvmem_device", file: !2402, line: 16, flags: DIFlagFwdDecl)
!2402 = !DIFile(filename: "./include/linux/nvmem-provider.h", directory: "/home/lizy2001/genbc/linux")
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2196, file: !2197, line: 386, baseType: !2195, size: 64, offset: 9152)
!2404 = !DIDerivedType(tag: DW_TAG_member, name: "partitions", scope: !2196, file: !2197, line: 389, baseType: !275, size: 128, offset: 9216)
!2405 = !DIDerivedType(tag: DW_TAG_member, scope: !2196, file: !2197, line: 391, baseType: !2406, size: 320, offset: 9344)
!2406 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2196, file: !2197, line: 391, size: 320, elements: !2407)
!2407 = !{!2408, !2415}
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "part", scope: !2406, file: !2197, line: 392, baseType: !2409, size: 320)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_part", file: !2197, line: 211, size: 320, elements: !2410)
!2410 = !{!2411, !2412, !2413, !2414}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2409, file: !2197, line: 212, baseType: !275, size: 128)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !2409, file: !2197, line: 213, baseType: !176, size: 64, offset: 128)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !2409, file: !2197, line: 214, baseType: !176, size: 64, offset: 192)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2409, file: !2197, line: 215, baseType: !164, size: 32, offset: 256)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "master", scope: !2406, file: !2197, line: 393, baseType: !2416, size: 256)
!2416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mtd_master", file: !2197, line: 230, size: 256, elements: !2417)
!2417 = !{!2418, !2419}
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "partitions_lock", scope: !2416, file: !2197, line: 231, baseType: !534, size: 192)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "suspended", scope: !2416, file: !2197, line: 232, baseType: !7, size: 1, offset: 192, flags: DIFlagBitField, extraData: i64 192)
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "destroy", scope: !2189, file: !168, line: 241, baseType: !2342, size: 64, offset: 64)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "module", scope: !2189, file: !168, line: 242, baseType: !1826, size: 64, offset: 128)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2189, file: !168, line: 243, baseType: !328, size: 64, offset: 192)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !2189, file: !168, line: 244, baseType: !275, size: 128, offset: 256)
!2424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2425, size: 64)
!2425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_private", file: !2426, line: 273, size: 768, elements: !2427)
!2426 = !DIFile(filename: "./include/linux/mtd/cfi.h", directory: "/home/lizy2001/genbc/linux")
!2427 = !{!2428, !2430, !2431, !2432, !2433, !2434, !2435, !2436, !2437, !2465, !2466, !2467, !2468, !2469, !2470, !2471}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset", scope: !2425, file: !2426, line: 274, baseType: !2429, size: 16)
!2429 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint16_t", file: !99, line: 103, baseType: !563)
!2430 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset_priv", scope: !2425, file: !2426, line: 275, baseType: !102, size: 64, offset: 64)
!2431 = !DIDerivedType(tag: DW_TAG_member, name: "interleave", scope: !2425, file: !2426, line: 276, baseType: !122, size: 32, offset: 128)
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2425, file: !2426, line: 277, baseType: !122, size: 32, offset: 160)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "cfi_mode", scope: !2425, file: !2426, line: 278, baseType: !122, size: 32, offset: 192)
!2434 = !DIDerivedType(tag: DW_TAG_member, name: "addr_unlock1", scope: !2425, file: !2426, line: 279, baseType: !122, size: 32, offset: 224)
!2435 = !DIDerivedType(tag: DW_TAG_member, name: "addr_unlock2", scope: !2425, file: !2426, line: 280, baseType: !122, size: 32, offset: 256)
!2436 = !DIDerivedType(tag: DW_TAG_member, name: "cmdset_setup", scope: !2425, file: !2426, line: 281, baseType: !2192, size: 64, offset: 320)
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "cfiq", scope: !2425, file: !2426, line: 282, baseType: !2438, size: 64, offset: 384)
!2438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2439, size: 64)
!2439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_ident", file: !2426, line: 119, size: 232, elements: !2440)
!2440 = !{!2441, !2443, !2444, !2445, !2446, !2447, !2448, !2449, !2450, !2451, !2452, !2453, !2454, !2455, !2456, !2457, !2458, !2459, !2460, !2461, !2462, !2463}
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "qry", scope: !2439, file: !2426, line: 120, baseType: !2442, size: 24)
!2442 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2312, size: 24, elements: !329)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "P_ID", scope: !2439, file: !2426, line: 121, baseType: !2429, size: 16, offset: 24)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "P_ADR", scope: !2439, file: !2426, line: 122, baseType: !2429, size: 16, offset: 40)
!2445 = !DIDerivedType(tag: DW_TAG_member, name: "A_ID", scope: !2439, file: !2426, line: 123, baseType: !2429, size: 16, offset: 56)
!2446 = !DIDerivedType(tag: DW_TAG_member, name: "A_ADR", scope: !2439, file: !2426, line: 124, baseType: !2429, size: 16, offset: 72)
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "VccMin", scope: !2439, file: !2426, line: 125, baseType: !2312, size: 8, offset: 88)
!2448 = !DIDerivedType(tag: DW_TAG_member, name: "VccMax", scope: !2439, file: !2426, line: 126, baseType: !2312, size: 8, offset: 96)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "VppMin", scope: !2439, file: !2426, line: 127, baseType: !2312, size: 8, offset: 104)
!2450 = !DIDerivedType(tag: DW_TAG_member, name: "VppMax", scope: !2439, file: !2426, line: 128, baseType: !2312, size: 8, offset: 112)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "WordWriteTimeoutTyp", scope: !2439, file: !2426, line: 129, baseType: !2312, size: 8, offset: 120)
!2452 = !DIDerivedType(tag: DW_TAG_member, name: "BufWriteTimeoutTyp", scope: !2439, file: !2426, line: 130, baseType: !2312, size: 8, offset: 128)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "BlockEraseTimeoutTyp", scope: !2439, file: !2426, line: 131, baseType: !2312, size: 8, offset: 136)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "ChipEraseTimeoutTyp", scope: !2439, file: !2426, line: 132, baseType: !2312, size: 8, offset: 144)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "WordWriteTimeoutMax", scope: !2439, file: !2426, line: 133, baseType: !2312, size: 8, offset: 152)
!2456 = !DIDerivedType(tag: DW_TAG_member, name: "BufWriteTimeoutMax", scope: !2439, file: !2426, line: 134, baseType: !2312, size: 8, offset: 160)
!2457 = !DIDerivedType(tag: DW_TAG_member, name: "BlockEraseTimeoutMax", scope: !2439, file: !2426, line: 135, baseType: !2312, size: 8, offset: 168)
!2458 = !DIDerivedType(tag: DW_TAG_member, name: "ChipEraseTimeoutMax", scope: !2439, file: !2426, line: 136, baseType: !2312, size: 8, offset: 176)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "DevSize", scope: !2439, file: !2426, line: 137, baseType: !2312, size: 8, offset: 184)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "InterfaceDesc", scope: !2439, file: !2426, line: 138, baseType: !2429, size: 16, offset: 192)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "MaxBufWriteSize", scope: !2439, file: !2426, line: 139, baseType: !2429, size: 16, offset: 208)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "NumEraseRegions", scope: !2439, file: !2426, line: 140, baseType: !2312, size: 8, offset: 224)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "EraseRegionInfo", scope: !2439, file: !2426, line: 141, baseType: !2464, offset: 232)
!2464 = !DICompositeType(tag: DW_TAG_array_type, baseType: !163, elements: !1503)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "mfr", scope: !2425, file: !2426, line: 284, baseType: !122, size: 32, offset: 448)
!2466 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2425, file: !2426, line: 284, baseType: !122, size: 32, offset: 480)
!2467 = !DIDerivedType(tag: DW_TAG_member, name: "numchips", scope: !2425, file: !2426, line: 285, baseType: !122, size: 32, offset: 512)
!2468 = !DIDerivedType(tag: DW_TAG_member, name: "sector_erase_cmd", scope: !2425, file: !2426, line: 286, baseType: !187, size: 64, offset: 576)
!2469 = !DIDerivedType(tag: DW_TAG_member, name: "chipshift", scope: !2425, file: !2426, line: 287, baseType: !172, size: 64, offset: 640)
!2470 = !DIDerivedType(tag: DW_TAG_member, name: "im_name", scope: !2425, file: !2426, line: 288, baseType: !152, size: 64, offset: 704)
!2471 = !DIDerivedType(tag: DW_TAG_member, name: "chips", scope: !2425, file: !2426, line: 289, baseType: !2472, offset: 768)
!2472 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2473, elements: !1503)
!2473 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "flchip", file: !51, line: 57, size: 896, elements: !2474)
!2474 = !{!2475, !2476, !2477, !2479, !2480, !2481, !2482, !2483, !2484, !2485, !2486, !2487, !2488, !2489, !2490, !2491, !2492}
!2475 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2473, file: !51, line: 58, baseType: !172, size: 64)
!2476 = !DIDerivedType(tag: DW_TAG_member, name: "ref_point_counter", scope: !2473, file: !51, line: 67, baseType: !122, size: 32, offset: 64)
!2477 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2473, file: !51, line: 68, baseType: !2478, size: 32, offset: 96)
!2478 = !DIDerivedType(tag: DW_TAG_typedef, name: "flstate_t", file: !51, line: 49, baseType: !50)
!2479 = !DIDerivedType(tag: DW_TAG_member, name: "oldstate", scope: !2473, file: !51, line: 69, baseType: !2478, size: 32, offset: 128)
!2480 = !DIDerivedType(tag: DW_TAG_member, name: "write_suspended", scope: !2473, file: !51, line: 71, baseType: !7, size: 1, offset: 160, flags: DIFlagBitField, extraData: i64 160)
!2481 = !DIDerivedType(tag: DW_TAG_member, name: "erase_suspended", scope: !2473, file: !51, line: 72, baseType: !7, size: 1, offset: 161, flags: DIFlagBitField, extraData: i64 160)
!2482 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress_block_addr", scope: !2473, file: !51, line: 73, baseType: !172, size: 64, offset: 192)
!2483 = !DIDerivedType(tag: DW_TAG_member, name: "in_progress_block_mask", scope: !2473, file: !51, line: 74, baseType: !172, size: 64, offset: 256)
!2484 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !2473, file: !51, line: 76, baseType: !534, size: 192, offset: 320)
!2485 = !DIDerivedType(tag: DW_TAG_member, name: "wq", scope: !2473, file: !51, line: 77, baseType: !859, size: 128, offset: 512)
!2486 = !DIDerivedType(tag: DW_TAG_member, name: "word_write_time", scope: !2473, file: !51, line: 79, baseType: !122, size: 32, offset: 640)
!2487 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_write_time", scope: !2473, file: !51, line: 80, baseType: !122, size: 32, offset: 672)
!2488 = !DIDerivedType(tag: DW_TAG_member, name: "erase_time", scope: !2473, file: !51, line: 81, baseType: !122, size: 32, offset: 704)
!2489 = !DIDerivedType(tag: DW_TAG_member, name: "word_write_time_max", scope: !2473, file: !51, line: 83, baseType: !122, size: 32, offset: 736)
!2490 = !DIDerivedType(tag: DW_TAG_member, name: "buffer_write_time_max", scope: !2473, file: !51, line: 84, baseType: !122, size: 32, offset: 768)
!2491 = !DIDerivedType(tag: DW_TAG_member, name: "erase_time_max", scope: !2473, file: !51, line: 85, baseType: !122, size: 32, offset: 800)
!2492 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !2473, file: !51, line: 87, baseType: !102, size: 64, offset: 832)
!2493 = !DILocalVariable(name: "cmd_ofs", arg: 1, scope: !160, file: !3, line: 40, type: !163)
!2494 = !DILocation(line: 40, column: 38, scope: !160)
!2495 = !DILocalVariable(name: "map", arg: 2, scope: !160, file: !3, line: 41, type: !166)
!2496 = !DILocation(line: 41, column: 22, scope: !160)
!2497 = !DILocalVariable(name: "cfi", arg: 3, scope: !160, file: !3, line: 41, type: !2424)
!2498 = !DILocation(line: 41, column: 47, scope: !160)
!2499 = !DILocalVariable(name: "bankwidth", scope: !160, file: !3, line: 43, type: !7)
!2500 = !DILocation(line: 43, column: 11, scope: !160)
!2501 = !DILocation(line: 43, column: 23, scope: !160)
!2502 = !DILocalVariable(name: "interleave", scope: !160, file: !3, line: 44, type: !7)
!2503 = !DILocation(line: 44, column: 11, scope: !160)
!2504 = !DILocation(line: 44, column: 24, scope: !160)
!2505 = !DILocalVariable(name: "type", scope: !160, file: !3, line: 45, type: !7)
!2506 = !DILocation(line: 45, column: 11, scope: !160)
!2507 = !DILocation(line: 45, column: 18, scope: !160)
!2508 = !DILocation(line: 45, column: 23, scope: !160)
!2509 = !DILocalVariable(name: "addr", scope: !160, file: !3, line: 46, type: !163)
!2510 = !DILocation(line: 46, column: 11, scope: !160)
!2511 = !DILocation(line: 48, column: 10, scope: !160)
!2512 = !DILocation(line: 48, column: 20, scope: !160)
!2513 = !DILocation(line: 48, column: 18, scope: !160)
!2514 = !DILocation(line: 48, column: 28, scope: !160)
!2515 = !DILocation(line: 48, column: 26, scope: !160)
!2516 = !DILocation(line: 48, column: 7, scope: !160)
!2517 = !DILocation(line: 55, column: 8, scope: !2518)
!2518 = distinct !DILexicalBlock(scope: !160, file: !3, line: 55, column: 6)
!2519 = !DILocation(line: 55, column: 15, scope: !2518)
!2520 = !DILocation(line: 55, column: 13, scope: !2518)
!2521 = !DILocation(line: 55, column: 29, scope: !2518)
!2522 = !DILocation(line: 55, column: 27, scope: !2518)
!2523 = !DILocation(line: 55, column: 40, scope: !2518)
!2524 = !DILocation(line: 55, column: 45, scope: !2518)
!2525 = !DILocation(line: 55, column: 53, scope: !2518)
!2526 = !DILocation(line: 55, column: 61, scope: !2518)
!2527 = !DILocation(line: 55, column: 6, scope: !160)
!2528 = !DILocation(line: 56, column: 12, scope: !2518)
!2529 = !DILocation(line: 56, column: 17, scope: !2518)
!2530 = !DILocation(line: 56, column: 23, scope: !2518)
!2531 = !DILocation(line: 56, column: 22, scope: !2518)
!2532 = !DILocation(line: 56, column: 8, scope: !2518)
!2533 = !DILocation(line: 56, column: 3, scope: !2518)
!2534 = !DILocation(line: 58, column: 10, scope: !160)
!2535 = !DILocation(line: 58, column: 2, scope: !160)
!2536 = distinct !DISubprogram(name: "cfi_build_cmd", scope: !3, file: !3, line: 67, type: !2537, scopeLine: 68, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2537 = !DISubroutineType(types: !2538)
!2538 = !{!187, !2539, !166, !2424}
!2539 = !DIDerivedType(tag: DW_TAG_typedef, name: "u_long", file: !99, line: 82, baseType: !172)
!2540 = !DILocalVariable(name: "cmd", arg: 1, scope: !2536, file: !3, line: 67, type: !2539)
!2541 = !DILocation(line: 67, column: 31, scope: !2536)
!2542 = !DILocalVariable(name: "map", arg: 2, scope: !2536, file: !3, line: 67, type: !166)
!2543 = !DILocation(line: 67, column: 53, scope: !2536)
!2544 = !DILocalVariable(name: "cfi", arg: 3, scope: !2536, file: !3, line: 67, type: !2424)
!2545 = !DILocation(line: 67, column: 78, scope: !2536)
!2546 = !DILocalVariable(name: "val", scope: !2536, file: !3, line: 69, type: !187)
!2547 = !DILocation(line: 69, column: 11, scope: !2536)
!2548 = !DILocalVariable(name: "wordwidth", scope: !2536, file: !3, line: 70, type: !122)
!2549 = !DILocation(line: 70, column: 6, scope: !2536)
!2550 = !DILocalVariable(name: "words_per_bus", scope: !2536, file: !3, line: 70, type: !122)
!2551 = !DILocation(line: 70, column: 17, scope: !2536)
!2552 = !DILocalVariable(name: "chip_mode", scope: !2536, file: !3, line: 70, type: !122)
!2553 = !DILocation(line: 70, column: 32, scope: !2536)
!2554 = !DILocalVariable(name: "chips_per_word", scope: !2536, file: !3, line: 70, type: !122)
!2555 = !DILocation(line: 70, column: 43, scope: !2536)
!2556 = !DILocalVariable(name: "onecmd", scope: !2536, file: !3, line: 71, type: !172)
!2557 = !DILocation(line: 71, column: 16, scope: !2536)
!2558 = !DILocalVariable(name: "i", scope: !2536, file: !3, line: 72, type: !122)
!2559 = !DILocation(line: 72, column: 6, scope: !2536)
!2560 = !DILocation(line: 82, column: 15, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2562, file: !3, line: 81, column: 9)
!2562 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 78, column: 6)
!2563 = !DILocation(line: 82, column: 13, scope: !2561)
!2564 = !DILocation(line: 83, column: 17, scope: !2561)
!2565 = !DILocation(line: 86, column: 14, scope: !2536)
!2566 = !DILocation(line: 86, column: 35, scope: !2536)
!2567 = !DILocation(line: 86, column: 33, scope: !2536)
!2568 = !DILocation(line: 86, column: 12, scope: !2536)
!2569 = !DILocation(line: 87, column: 19, scope: !2536)
!2570 = !DILocation(line: 87, column: 31, scope: !2536)
!2571 = !DILocation(line: 87, column: 29, scope: !2536)
!2572 = !DILocation(line: 87, column: 53, scope: !2536)
!2573 = !DILocation(line: 87, column: 51, scope: !2536)
!2574 = !DILocation(line: 87, column: 17, scope: !2536)
!2575 = !DILocation(line: 91, column: 10, scope: !2536)
!2576 = !DILocation(line: 91, column: 2, scope: !2536)
!2577 = !DILocation(line: 92, column: 11, scope: !2578)
!2578 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 91, column: 21)
!2579 = !DILocation(line: 92, column: 11, scope: !2580)
!2580 = distinct !DILexicalBlock(scope: !2578, file: !3, line: 92, column: 11)
!2581 = !DILocation(line: 92, column: 11, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 92, column: 11)
!2583 = !DILocation(line: 92, column: 11, scope: !2584)
!2584 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 92, column: 11)
!2585 = !{i32 -2143135820, i32 -2143135791, i32 -2143135745, i32 -2143135687, i32 -2143135633, i32 -2143135579, i32 -2143135524, i32 -2143135493}
!2586 = !DILocation(line: 92, column: 11, scope: !2587)
!2587 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 92, column: 11)
!2588 = distinct !DILexicalBlock(scope: !2580, file: !3, line: 92, column: 11)
!2589 = !{i32 -2143135043, i32 -2143135036, i32 -2143134982, i32 -2143134951, i32 -2143134921}
!2590 = !DILocation(line: 92, column: 11, scope: !2588)
!2591 = !DILocation(line: 94, column: 12, scope: !2578)
!2592 = !DILocation(line: 94, column: 10, scope: !2578)
!2593 = !DILocation(line: 95, column: 3, scope: !2578)
!2594 = !DILocation(line: 97, column: 12, scope: !2578)
!2595 = !DILocation(line: 97, column: 10, scope: !2578)
!2596 = !DILocation(line: 98, column: 3, scope: !2578)
!2597 = !DILocation(line: 100, column: 12, scope: !2578)
!2598 = !DILocation(line: 100, column: 10, scope: !2578)
!2599 = !DILocation(line: 101, column: 3, scope: !2578)
!2600 = !DILocation(line: 106, column: 10, scope: !2536)
!2601 = !DILocation(line: 106, column: 2, scope: !2536)
!2602 = !DILocation(line: 107, column: 11, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 106, column: 26)
!2604 = !DILocation(line: 107, column: 11, scope: !2605)
!2605 = distinct !DILexicalBlock(scope: !2603, file: !3, line: 107, column: 11)
!2606 = !DILocation(line: 107, column: 11, scope: !2607)
!2607 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 107, column: 11)
!2608 = !DILocation(line: 107, column: 11, scope: !2609)
!2609 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 107, column: 11)
!2610 = !{i32 -2143132987, i32 -2143132958, i32 -2143132912, i32 -2143132854, i32 -2143132800, i32 -2143132746, i32 -2143132691, i32 -2143132660}
!2611 = !DILocation(line: 107, column: 11, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 107, column: 11)
!2613 = distinct !DILexicalBlock(scope: !2605, file: !3, line: 107, column: 11)
!2614 = !{i32 -2143132209, i32 -2143132202, i32 -2143132148, i32 -2143132117, i32 -2143132087}
!2615 = !DILocation(line: 107, column: 11, scope: !2613)
!2616 = !DILocation(line: 110, column: 14, scope: !2603)
!2617 = !DILocation(line: 110, column: 25, scope: !2603)
!2618 = !DILocation(line: 110, column: 35, scope: !2603)
!2619 = !DILocation(line: 110, column: 21, scope: !2603)
!2620 = !DILocation(line: 110, column: 10, scope: !2603)
!2621 = !DILocation(line: 110, column: 3, scope: !2603)
!2622 = !DILocation(line: 114, column: 14, scope: !2603)
!2623 = !DILocation(line: 114, column: 25, scope: !2603)
!2624 = !DILocation(line: 114, column: 35, scope: !2603)
!2625 = !DILocation(line: 114, column: 21, scope: !2603)
!2626 = !DILocation(line: 114, column: 10, scope: !2603)
!2627 = !DILocation(line: 114, column: 3, scope: !2603)
!2628 = !DILocation(line: 117, column: 14, scope: !2603)
!2629 = !DILocation(line: 117, column: 25, scope: !2603)
!2630 = !DILocation(line: 117, column: 35, scope: !2603)
!2631 = !DILocation(line: 117, column: 21, scope: !2603)
!2632 = !DILocation(line: 117, column: 10, scope: !2603)
!2633 = !DILocation(line: 117, column: 3, scope: !2603)
!2634 = !DILocation(line: 121, column: 2, scope: !2603)
!2635 = !DILocation(line: 125, column: 8, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2536, file: !3, line: 125, column: 2)
!2637 = !DILocation(line: 125, column: 7, scope: !2636)
!2638 = !DILocation(line: 125, column: 12, scope: !2639)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 125, column: 2)
!2640 = !DILocation(line: 125, column: 16, scope: !2639)
!2641 = !DILocation(line: 125, column: 14, scope: !2639)
!2642 = !DILocation(line: 125, column: 2, scope: !2636)
!2643 = !DILocation(line: 126, column: 14, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 125, column: 36)
!2645 = !DILocation(line: 126, column: 7, scope: !2644)
!2646 = !DILocation(line: 126, column: 9, scope: !2644)
!2647 = !DILocation(line: 126, column: 3, scope: !2644)
!2648 = !DILocation(line: 126, column: 12, scope: !2644)
!2649 = !DILocation(line: 127, column: 2, scope: !2644)
!2650 = !DILocation(line: 125, column: 32, scope: !2639)
!2651 = !DILocation(line: 125, column: 2, scope: !2639)
!2652 = distinct !{!2652, !2642, !2653}
!2653 = !DILocation(line: 127, column: 2, scope: !2636)
!2654 = !DILocation(line: 129, column: 2, scope: !2536)
!2655 = distinct !DISubprogram(name: "__fswab16", scope: !2656, file: !2656, line: 48, type: !2657, scopeLine: 49, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2656 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2657 = !DISubroutineType(types: !2658)
!2658 = !{!91, !91}
!2659 = !DILocalVariable(name: "val", arg: 1, scope: !2655, file: !2656, line: 48, type: !91)
!2660 = !DILocation(line: 48, column: 57, scope: !2655)
!2661 = !DILocation(line: 53, column: 9, scope: !2655)
!2662 = !DILocation(line: 53, column: 2, scope: !2655)
!2663 = distinct !DISubprogram(name: "__fswab32", scope: !2656, file: !2656, line: 57, type: !2664, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2664 = !DISubroutineType(types: !2665)
!2665 = !{!96, !96}
!2666 = !DILocalVariable(name: "val", arg: 1, scope: !2663, file: !2656, line: 57, type: !96)
!2667 = !DILocation(line: 57, column: 57, scope: !2663)
!2668 = !DILocation(line: 60, column: 23, scope: !2663)
!2669 = !DILocation(line: 60, column: 9, scope: !2663)
!2670 = !DILocation(line: 60, column: 2, scope: !2663)
!2671 = distinct !DISubprogram(name: "cfi_merge_status", scope: !3, file: !3, line: 133, type: !2672, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2672 = !DISubroutineType(types: !2673)
!2673 = !{!172, !187, !166, !2424}
!2674 = !DILocalVariable(name: "val", arg: 1, scope: !2671, file: !3, line: 133, type: !187)
!2675 = !DILocation(line: 133, column: 41, scope: !2671)
!2676 = !DILocalVariable(name: "map", arg: 2, scope: !2671, file: !3, line: 133, type: !166)
!2677 = !DILocation(line: 133, column: 63, scope: !2671)
!2678 = !DILocalVariable(name: "cfi", arg: 3, scope: !2671, file: !3, line: 134, type: !2424)
!2679 = !DILocation(line: 134, column: 29, scope: !2671)
!2680 = !DILocalVariable(name: "wordwidth", scope: !2671, file: !3, line: 136, type: !122)
!2681 = !DILocation(line: 136, column: 6, scope: !2671)
!2682 = !DILocalVariable(name: "words_per_bus", scope: !2671, file: !3, line: 136, type: !122)
!2683 = !DILocation(line: 136, column: 17, scope: !2671)
!2684 = !DILocalVariable(name: "chip_mode", scope: !2671, file: !3, line: 136, type: !122)
!2685 = !DILocation(line: 136, column: 32, scope: !2671)
!2686 = !DILocalVariable(name: "chips_per_word", scope: !2671, file: !3, line: 136, type: !122)
!2687 = !DILocation(line: 136, column: 43, scope: !2671)
!2688 = !DILocalVariable(name: "onestat", scope: !2671, file: !3, line: 137, type: !172)
!2689 = !DILocation(line: 137, column: 16, scope: !2671)
!2690 = !DILocalVariable(name: "res", scope: !2671, file: !3, line: 137, type: !172)
!2691 = !DILocation(line: 137, column: 25, scope: !2671)
!2692 = !DILocalVariable(name: "i", scope: !2671, file: !3, line: 138, type: !122)
!2693 = !DILocation(line: 138, column: 6, scope: !2671)
!2694 = !DILocation(line: 148, column: 15, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2696, file: !3, line: 147, column: 9)
!2696 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 144, column: 6)
!2697 = !DILocation(line: 148, column: 13, scope: !2695)
!2698 = !DILocation(line: 149, column: 17, scope: !2695)
!2699 = !DILocation(line: 152, column: 14, scope: !2671)
!2700 = !DILocation(line: 152, column: 35, scope: !2671)
!2701 = !DILocation(line: 152, column: 33, scope: !2671)
!2702 = !DILocation(line: 152, column: 12, scope: !2671)
!2703 = !DILocation(line: 153, column: 19, scope: !2671)
!2704 = !DILocation(line: 153, column: 31, scope: !2671)
!2705 = !DILocation(line: 153, column: 29, scope: !2671)
!2706 = !DILocation(line: 153, column: 53, scope: !2671)
!2707 = !DILocation(line: 153, column: 51, scope: !2671)
!2708 = !DILocation(line: 153, column: 17, scope: !2671)
!2709 = !DILocation(line: 155, column: 16, scope: !2671)
!2710 = !DILocation(line: 155, column: 12, scope: !2671)
!2711 = !DILocation(line: 155, column: 10, scope: !2671)
!2712 = !DILocation(line: 157, column: 8, scope: !2713)
!2713 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 157, column: 2)
!2714 = !DILocation(line: 157, column: 7, scope: !2713)
!2715 = !DILocation(line: 157, column: 12, scope: !2716)
!2716 = distinct !DILexicalBlock(scope: !2713, file: !3, line: 157, column: 2)
!2717 = !DILocation(line: 157, column: 16, scope: !2716)
!2718 = !DILocation(line: 157, column: 14, scope: !2716)
!2719 = !DILocation(line: 157, column: 2, scope: !2713)
!2720 = !DILocation(line: 158, column: 18, scope: !2721)
!2721 = distinct !DILexicalBlock(scope: !2716, file: !3, line: 157, column: 36)
!2722 = !DILocation(line: 158, column: 20, scope: !2721)
!2723 = !DILocation(line: 158, column: 14, scope: !2721)
!2724 = !DILocation(line: 158, column: 11, scope: !2721)
!2725 = !DILocation(line: 159, column: 2, scope: !2721)
!2726 = !DILocation(line: 157, column: 32, scope: !2716)
!2727 = !DILocation(line: 157, column: 2, scope: !2716)
!2728 = distinct !{!2728, !2719, !2729}
!2729 = !DILocation(line: 159, column: 2, scope: !2713)
!2730 = !DILocation(line: 161, column: 8, scope: !2671)
!2731 = !DILocation(line: 161, column: 6, scope: !2671)
!2732 = !DILocation(line: 162, column: 9, scope: !2671)
!2733 = !DILocation(line: 162, column: 2, scope: !2671)
!2734 = !DILocation(line: 163, column: 11, scope: !2735)
!2735 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 162, column: 25)
!2736 = !DILocation(line: 163, column: 11, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !2735, file: !3, line: 163, column: 11)
!2738 = !DILocation(line: 163, column: 11, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 163, column: 11)
!2740 = !DILocation(line: 163, column: 11, scope: !2741)
!2741 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 163, column: 11)
!2742 = !{i32 -2143131551, i32 -2143131522, i32 -2143131476, i32 -2143131418, i32 -2143131364, i32 -2143131310, i32 -2143131255, i32 -2143131224}
!2743 = !DILocation(line: 163, column: 11, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2745, file: !3, line: 163, column: 11)
!2745 = distinct !DILexicalBlock(scope: !2737, file: !3, line: 163, column: 11)
!2746 = !{i32 -2143130773, i32 -2143130766, i32 -2143130712, i32 -2143130681, i32 -2143130651}
!2747 = !DILocation(line: 163, column: 11, scope: !2745)
!2748 = !DILocation(line: 166, column: 11, scope: !2735)
!2749 = !DILocation(line: 166, column: 23, scope: !2735)
!2750 = !DILocation(line: 166, column: 33, scope: !2735)
!2751 = !DILocation(line: 166, column: 19, scope: !2735)
!2752 = !DILocation(line: 166, column: 7, scope: !2735)
!2753 = !DILocation(line: 166, column: 3, scope: !2735)
!2754 = !DILocation(line: 170, column: 11, scope: !2735)
!2755 = !DILocation(line: 170, column: 23, scope: !2735)
!2756 = !DILocation(line: 170, column: 33, scope: !2735)
!2757 = !DILocation(line: 170, column: 19, scope: !2735)
!2758 = !DILocation(line: 170, column: 7, scope: !2735)
!2759 = !DILocation(line: 170, column: 3, scope: !2735)
!2760 = !DILocation(line: 173, column: 11, scope: !2735)
!2761 = !DILocation(line: 173, column: 23, scope: !2735)
!2762 = !DILocation(line: 173, column: 33, scope: !2735)
!2763 = !DILocation(line: 173, column: 19, scope: !2735)
!2764 = !DILocation(line: 173, column: 7, scope: !2735)
!2765 = !DILocation(line: 173, column: 3, scope: !2735)
!2766 = !DILocation(line: 177, column: 2, scope: !2735)
!2767 = !DILocation(line: 181, column: 10, scope: !2671)
!2768 = !DILocation(line: 181, column: 2, scope: !2671)
!2769 = !DILocation(line: 183, column: 3, scope: !2770)
!2770 = distinct !DILexicalBlock(scope: !2671, file: !3, line: 181, column: 21)
!2771 = !DILocation(line: 185, column: 9, scope: !2770)
!2772 = !DILocation(line: 185, column: 7, scope: !2770)
!2773 = !DILocation(line: 186, column: 3, scope: !2770)
!2774 = !DILocation(line: 188, column: 9, scope: !2770)
!2775 = !DILocation(line: 188, column: 7, scope: !2770)
!2776 = !DILocation(line: 189, column: 3, scope: !2770)
!2777 = !DILocation(line: 190, column: 11, scope: !2770)
!2778 = !DILocation(line: 190, column: 11, scope: !2779)
!2779 = distinct !DILexicalBlock(scope: !2770, file: !3, line: 190, column: 11)
!2780 = !DILocation(line: 190, column: 11, scope: !2781)
!2781 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 190, column: 11)
!2782 = !DILocation(line: 190, column: 11, scope: !2783)
!2783 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 190, column: 11)
!2784 = !{i32 -2143128321, i32 -2143128292, i32 -2143128246, i32 -2143128188, i32 -2143128134, i32 -2143128080, i32 -2143128025, i32 -2143127994}
!2785 = !DILocation(line: 190, column: 11, scope: !2786)
!2786 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 190, column: 11)
!2787 = distinct !DILexicalBlock(scope: !2779, file: !3, line: 190, column: 11)
!2788 = !{i32 -2143127543, i32 -2143127536, i32 -2143127482, i32 -2143127451, i32 -2143127421}
!2789 = !DILocation(line: 190, column: 11, scope: !2787)
!2790 = !DILocation(line: 191, column: 2, scope: !2770)
!2791 = !DILocation(line: 192, column: 9, scope: !2671)
!2792 = !DILocation(line: 192, column: 2, scope: !2671)
!2793 = distinct !DISubprogram(name: "cfi_send_gen_cmd", scope: !3, file: !3, line: 203, type: !2794, scopeLine: 206, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2794 = !DISubroutineType(types: !2795)
!2795 = !{!163, !2200, !163, !163, !166, !2424, !122, !2796}
!2796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!2797 = !DILocalVariable(name: "cmd", arg: 1, scope: !2793, file: !3, line: 203, type: !2200)
!2798 = !DILocation(line: 203, column: 34, scope: !2793)
!2799 = !DILocalVariable(name: "cmd_addr", arg: 2, scope: !2793, file: !3, line: 203, type: !163)
!2800 = !DILocation(line: 203, column: 48, scope: !2793)
!2801 = !DILocalVariable(name: "base", arg: 3, scope: !2793, file: !3, line: 203, type: !163)
!2802 = !DILocation(line: 203, column: 67, scope: !2793)
!2803 = !DILocalVariable(name: "map", arg: 4, scope: !2793, file: !3, line: 204, type: !166)
!2804 = !DILocation(line: 204, column: 22, scope: !2793)
!2805 = !DILocalVariable(name: "cfi", arg: 5, scope: !2793, file: !3, line: 204, type: !2424)
!2806 = !DILocation(line: 204, column: 47, scope: !2793)
!2807 = !DILocalVariable(name: "type", arg: 6, scope: !2793, file: !3, line: 205, type: !122)
!2808 = !DILocation(line: 205, column: 9, scope: !2793)
!2809 = !DILocalVariable(name: "prev_val", arg: 7, scope: !2793, file: !3, line: 205, type: !2796)
!2810 = !DILocation(line: 205, column: 25, scope: !2793)
!2811 = !DILocalVariable(name: "val", scope: !2793, file: !3, line: 207, type: !187)
!2812 = !DILocation(line: 207, column: 11, scope: !2793)
!2813 = !DILocalVariable(name: "addr", scope: !2793, file: !3, line: 208, type: !163)
!2814 = !DILocation(line: 208, column: 11, scope: !2793)
!2815 = !DILocation(line: 208, column: 18, scope: !2793)
!2816 = !DILocation(line: 208, column: 44, scope: !2793)
!2817 = !DILocation(line: 208, column: 54, scope: !2793)
!2818 = !DILocation(line: 208, column: 59, scope: !2793)
!2819 = !DILocation(line: 208, column: 25, scope: !2793)
!2820 = !DILocation(line: 208, column: 23, scope: !2793)
!2821 = !DILocation(line: 209, column: 22, scope: !2793)
!2822 = !DILocation(line: 209, column: 27, scope: !2793)
!2823 = !DILocation(line: 209, column: 32, scope: !2793)
!2824 = !DILocation(line: 209, column: 8, scope: !2793)
!2825 = !DILocation(line: 211, column: 6, scope: !2826)
!2826 = distinct !DILexicalBlock(scope: !2793, file: !3, line: 211, column: 6)
!2827 = !DILocation(line: 211, column: 6, scope: !2793)
!2828 = !DILocation(line: 212, column: 4, scope: !2826)
!2829 = !DILocation(line: 212, column: 15, scope: !2826)
!2830 = !DILocation(line: 212, column: 3, scope: !2826)
!2831 = !DILocation(line: 214, column: 2, scope: !2793)
!2832 = !DILocation(line: 216, column: 9, scope: !2793)
!2833 = !DILocation(line: 216, column: 16, scope: !2793)
!2834 = !DILocation(line: 216, column: 14, scope: !2793)
!2835 = !DILocation(line: 216, column: 2, scope: !2793)
!2836 = distinct !DISubprogram(name: "cfi_qry_present", scope: !3, file: !3, line: 220, type: !2837, scopeLine: 222, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2837 = !DISubroutineType(types: !2838)
!2838 = !{!122, !166, !96, !2424}
!2839 = !DILocalVariable(name: "map", arg: 1, scope: !2836, file: !3, line: 220, type: !166)
!2840 = !DILocation(line: 220, column: 47, scope: !2836)
!2841 = !DILocalVariable(name: "base", arg: 2, scope: !2836, file: !3, line: 220, type: !96)
!2842 = !DILocation(line: 220, column: 58, scope: !2836)
!2843 = !DILocalVariable(name: "cfi", arg: 3, scope: !2836, file: !3, line: 221, type: !2424)
!2844 = !DILocation(line: 221, column: 29, scope: !2836)
!2845 = !DILocalVariable(name: "osf", scope: !2836, file: !3, line: 223, type: !122)
!2846 = !DILocation(line: 223, column: 6, scope: !2836)
!2847 = !DILocation(line: 223, column: 12, scope: !2836)
!2848 = !DILocation(line: 223, column: 17, scope: !2836)
!2849 = !DILocation(line: 223, column: 30, scope: !2836)
!2850 = !DILocation(line: 223, column: 35, scope: !2836)
!2851 = !DILocation(line: 223, column: 28, scope: !2836)
!2852 = !DILocalVariable(name: "val", scope: !2836, file: !3, line: 224, type: !2853)
!2853 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 192, elements: !329)
!2854 = !DILocation(line: 224, column: 11, scope: !2836)
!2855 = !DILocalVariable(name: "qry", scope: !2836, file: !3, line: 225, type: !2853)
!2856 = !DILocation(line: 225, column: 11, scope: !2836)
!2857 = !DILocation(line: 227, column: 2, scope: !2836)
!2858 = !DILocation(line: 227, column: 30, scope: !2836)
!2859 = !DILocation(line: 227, column: 35, scope: !2836)
!2860 = !DILocation(line: 227, column: 11, scope: !2836)
!2861 = !DILocation(line: 228, column: 2, scope: !2836)
!2862 = !DILocation(line: 228, column: 30, scope: !2836)
!2863 = !DILocation(line: 228, column: 35, scope: !2836)
!2864 = !DILocation(line: 228, column: 11, scope: !2836)
!2865 = !DILocation(line: 229, column: 2, scope: !2836)
!2866 = !DILocation(line: 229, column: 30, scope: !2836)
!2867 = !DILocation(line: 229, column: 35, scope: !2836)
!2868 = !DILocation(line: 229, column: 11, scope: !2836)
!2869 = !DILocation(line: 231, column: 2, scope: !2836)
!2870 = !DILocation(line: 231, column: 11, scope: !2836)
!2871 = !DILocation(line: 232, column: 2, scope: !2836)
!2872 = !DILocation(line: 232, column: 11, scope: !2836)
!2873 = !DILocation(line: 233, column: 2, scope: !2836)
!2874 = !DILocation(line: 233, column: 11, scope: !2836)
!2875 = !DILocalVariable(name: "i", scope: !2876, file: !3, line: 235, type: !122)
!2876 = distinct !DILexicalBlock(scope: !2877, file: !3, line: 235, column: 7)
!2877 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 235, column: 6)
!2878 = !DILocation(line: 235, column: 7, scope: !2876)
!2879 = !DILocalVariable(name: "ret", scope: !2876, file: !3, line: 235, type: !122)
!2880 = !DILocation(line: 235, column: 7, scope: !2881)
!2881 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 235, column: 7)
!2882 = !DILocation(line: 235, column: 7, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2881, file: !3, line: 235, column: 7)
!2884 = !DILocation(line: 235, column: 7, scope: !2885)
!2885 = distinct !DILexicalBlock(scope: !2883, file: !3, line: 235, column: 7)
!2886 = !DILocation(line: 235, column: 7, scope: !2887)
!2887 = distinct !DILexicalBlock(scope: !2885, file: !3, line: 235, column: 7)
!2888 = distinct !{!2888, !2880, !2880}
!2889 = !DILocation(line: 235, column: 7, scope: !2877)
!2890 = !DILocation(line: 235, column: 6, scope: !2836)
!2891 = !DILocation(line: 236, column: 3, scope: !2877)
!2892 = !DILocalVariable(name: "i", scope: !2893, file: !3, line: 238, type: !122)
!2893 = distinct !DILexicalBlock(scope: !2894, file: !3, line: 238, column: 7)
!2894 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 238, column: 6)
!2895 = !DILocation(line: 238, column: 7, scope: !2893)
!2896 = !DILocalVariable(name: "ret", scope: !2893, file: !3, line: 238, type: !122)
!2897 = !DILocation(line: 238, column: 7, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2893, file: !3, line: 238, column: 7)
!2899 = !DILocation(line: 238, column: 7, scope: !2900)
!2900 = distinct !DILexicalBlock(scope: !2898, file: !3, line: 238, column: 7)
!2901 = !DILocation(line: 238, column: 7, scope: !2902)
!2902 = distinct !DILexicalBlock(scope: !2900, file: !3, line: 238, column: 7)
!2903 = !DILocation(line: 238, column: 7, scope: !2904)
!2904 = distinct !DILexicalBlock(scope: !2902, file: !3, line: 238, column: 7)
!2905 = distinct !{!2905, !2897, !2897}
!2906 = !DILocation(line: 238, column: 7, scope: !2894)
!2907 = !DILocation(line: 238, column: 6, scope: !2836)
!2908 = !DILocation(line: 239, column: 3, scope: !2894)
!2909 = !DILocalVariable(name: "i", scope: !2910, file: !3, line: 241, type: !122)
!2910 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 241, column: 7)
!2911 = distinct !DILexicalBlock(scope: !2836, file: !3, line: 241, column: 6)
!2912 = !DILocation(line: 241, column: 7, scope: !2910)
!2913 = !DILocalVariable(name: "ret", scope: !2910, file: !3, line: 241, type: !122)
!2914 = !DILocation(line: 241, column: 7, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2910, file: !3, line: 241, column: 7)
!2916 = !DILocation(line: 241, column: 7, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 241, column: 7)
!2918 = !DILocation(line: 241, column: 7, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 241, column: 7)
!2920 = !DILocation(line: 241, column: 7, scope: !2921)
!2921 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 241, column: 7)
!2922 = distinct !{!2922, !2914, !2914}
!2923 = !DILocation(line: 241, column: 7, scope: !2911)
!2924 = !DILocation(line: 241, column: 6, scope: !2836)
!2925 = !DILocation(line: 242, column: 3, scope: !2911)
!2926 = !DILocation(line: 244, column: 2, scope: !2836)
!2927 = !DILocation(line: 245, column: 1, scope: !2836)
!2928 = distinct !DISubprogram(name: "cfi_qry_mode_on", scope: !3, file: !3, line: 248, type: !2929, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!2929 = !DISubroutineType(types: !2930)
!2930 = !{!122, !163, !166, !2424}
!2931 = !DILocalVariable(name: "base", arg: 1, scope: !2928, file: !3, line: 248, type: !163)
!2932 = !DILocation(line: 248, column: 39, scope: !2928)
!2933 = !DILocalVariable(name: "map", arg: 2, scope: !2928, file: !3, line: 248, type: !166)
!2934 = !DILocation(line: 248, column: 62, scope: !2928)
!2935 = !DILocalVariable(name: "cfi", arg: 3, scope: !2928, file: !3, line: 249, type: !2424)
!2936 = !DILocation(line: 249, column: 29, scope: !2928)
!2937 = !DILocation(line: 251, column: 28, scope: !2928)
!2938 = !DILocation(line: 251, column: 34, scope: !2928)
!2939 = !DILocation(line: 251, column: 39, scope: !2928)
!2940 = !DILocation(line: 251, column: 44, scope: !2928)
!2941 = !DILocation(line: 251, column: 49, scope: !2928)
!2942 = !DILocation(line: 251, column: 2, scope: !2928)
!2943 = !DILocation(line: 252, column: 31, scope: !2928)
!2944 = !DILocation(line: 252, column: 37, scope: !2928)
!2945 = !DILocation(line: 252, column: 42, scope: !2928)
!2946 = !DILocation(line: 252, column: 47, scope: !2928)
!2947 = !DILocation(line: 252, column: 52, scope: !2928)
!2948 = !DILocation(line: 252, column: 2, scope: !2928)
!2949 = !DILocation(line: 253, column: 22, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 253, column: 6)
!2951 = !DILocation(line: 253, column: 27, scope: !2950)
!2952 = !DILocation(line: 253, column: 33, scope: !2950)
!2953 = !DILocation(line: 253, column: 6, scope: !2950)
!2954 = !DILocation(line: 253, column: 6, scope: !2928)
!2955 = !DILocation(line: 254, column: 3, scope: !2950)
!2956 = !DILocation(line: 257, column: 28, scope: !2928)
!2957 = !DILocation(line: 257, column: 34, scope: !2928)
!2958 = !DILocation(line: 257, column: 39, scope: !2928)
!2959 = !DILocation(line: 257, column: 44, scope: !2928)
!2960 = !DILocation(line: 257, column: 49, scope: !2928)
!2961 = !DILocation(line: 257, column: 2, scope: !2928)
!2962 = !DILocation(line: 258, column: 28, scope: !2928)
!2963 = !DILocation(line: 258, column: 34, scope: !2928)
!2964 = !DILocation(line: 258, column: 39, scope: !2928)
!2965 = !DILocation(line: 258, column: 44, scope: !2928)
!2966 = !DILocation(line: 258, column: 49, scope: !2928)
!2967 = !DILocation(line: 258, column: 2, scope: !2928)
!2968 = !DILocation(line: 259, column: 31, scope: !2928)
!2969 = !DILocation(line: 259, column: 37, scope: !2928)
!2970 = !DILocation(line: 259, column: 42, scope: !2928)
!2971 = !DILocation(line: 259, column: 47, scope: !2928)
!2972 = !DILocation(line: 259, column: 52, scope: !2928)
!2973 = !DILocation(line: 259, column: 2, scope: !2928)
!2974 = !DILocation(line: 260, column: 22, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 260, column: 6)
!2976 = !DILocation(line: 260, column: 27, scope: !2975)
!2977 = !DILocation(line: 260, column: 33, scope: !2975)
!2978 = !DILocation(line: 260, column: 6, scope: !2975)
!2979 = !DILocation(line: 260, column: 6, scope: !2928)
!2980 = !DILocation(line: 261, column: 3, scope: !2975)
!2981 = !DILocation(line: 263, column: 28, scope: !2928)
!2982 = !DILocation(line: 263, column: 34, scope: !2928)
!2983 = !DILocation(line: 263, column: 39, scope: !2928)
!2984 = !DILocation(line: 263, column: 44, scope: !2928)
!2985 = !DILocation(line: 263, column: 49, scope: !2928)
!2986 = !DILocation(line: 263, column: 2, scope: !2928)
!2987 = !DILocation(line: 264, column: 32, scope: !2928)
!2988 = !DILocation(line: 264, column: 38, scope: !2928)
!2989 = !DILocation(line: 264, column: 43, scope: !2928)
!2990 = !DILocation(line: 264, column: 48, scope: !2928)
!2991 = !DILocation(line: 264, column: 53, scope: !2928)
!2992 = !DILocation(line: 264, column: 2, scope: !2928)
!2993 = !DILocation(line: 265, column: 22, scope: !2994)
!2994 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 265, column: 6)
!2995 = !DILocation(line: 265, column: 27, scope: !2994)
!2996 = !DILocation(line: 265, column: 33, scope: !2994)
!2997 = !DILocation(line: 265, column: 6, scope: !2994)
!2998 = !DILocation(line: 265, column: 6, scope: !2928)
!2999 = !DILocation(line: 266, column: 3, scope: !2994)
!3000 = !DILocation(line: 268, column: 28, scope: !2928)
!3001 = !DILocation(line: 268, column: 34, scope: !2928)
!3002 = !DILocation(line: 268, column: 39, scope: !2928)
!3003 = !DILocation(line: 268, column: 44, scope: !2928)
!3004 = !DILocation(line: 268, column: 49, scope: !2928)
!3005 = !DILocation(line: 268, column: 2, scope: !2928)
!3006 = !DILocation(line: 269, column: 33, scope: !2928)
!3007 = !DILocation(line: 269, column: 39, scope: !2928)
!3008 = !DILocation(line: 269, column: 44, scope: !2928)
!3009 = !DILocation(line: 269, column: 49, scope: !2928)
!3010 = !DILocation(line: 269, column: 54, scope: !2928)
!3011 = !DILocation(line: 269, column: 2, scope: !2928)
!3012 = !DILocation(line: 270, column: 33, scope: !2928)
!3013 = !DILocation(line: 270, column: 39, scope: !2928)
!3014 = !DILocation(line: 270, column: 44, scope: !2928)
!3015 = !DILocation(line: 270, column: 49, scope: !2928)
!3016 = !DILocation(line: 270, column: 54, scope: !2928)
!3017 = !DILocation(line: 270, column: 2, scope: !2928)
!3018 = !DILocation(line: 271, column: 33, scope: !2928)
!3019 = !DILocation(line: 271, column: 39, scope: !2928)
!3020 = !DILocation(line: 271, column: 44, scope: !2928)
!3021 = !DILocation(line: 271, column: 49, scope: !2928)
!3022 = !DILocation(line: 271, column: 54, scope: !2928)
!3023 = !DILocation(line: 271, column: 2, scope: !2928)
!3024 = !DILocation(line: 272, column: 22, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 272, column: 6)
!3026 = !DILocation(line: 272, column: 27, scope: !3025)
!3027 = !DILocation(line: 272, column: 33, scope: !3025)
!3028 = !DILocation(line: 272, column: 6, scope: !3025)
!3029 = !DILocation(line: 272, column: 6, scope: !2928)
!3030 = !DILocation(line: 273, column: 3, scope: !3025)
!3031 = !DILocation(line: 275, column: 28, scope: !2928)
!3032 = !DILocation(line: 275, column: 34, scope: !2928)
!3033 = !DILocation(line: 275, column: 39, scope: !2928)
!3034 = !DILocation(line: 275, column: 44, scope: !2928)
!3035 = !DILocation(line: 275, column: 49, scope: !2928)
!3036 = !DILocation(line: 275, column: 2, scope: !2928)
!3037 = !DILocation(line: 276, column: 32, scope: !2928)
!3038 = !DILocation(line: 276, column: 38, scope: !2928)
!3039 = !DILocation(line: 276, column: 43, scope: !2928)
!3040 = !DILocation(line: 276, column: 48, scope: !2928)
!3041 = !DILocation(line: 276, column: 53, scope: !2928)
!3042 = !DILocation(line: 276, column: 2, scope: !2928)
!3043 = !DILocation(line: 277, column: 32, scope: !2928)
!3044 = !DILocation(line: 277, column: 38, scope: !2928)
!3045 = !DILocation(line: 277, column: 43, scope: !2928)
!3046 = !DILocation(line: 277, column: 48, scope: !2928)
!3047 = !DILocation(line: 277, column: 53, scope: !2928)
!3048 = !DILocation(line: 277, column: 2, scope: !2928)
!3049 = !DILocation(line: 278, column: 32, scope: !2928)
!3050 = !DILocation(line: 278, column: 38, scope: !2928)
!3051 = !DILocation(line: 278, column: 43, scope: !2928)
!3052 = !DILocation(line: 278, column: 48, scope: !2928)
!3053 = !DILocation(line: 278, column: 53, scope: !2928)
!3054 = !DILocation(line: 278, column: 2, scope: !2928)
!3055 = !DILocation(line: 279, column: 22, scope: !3056)
!3056 = distinct !DILexicalBlock(scope: !2928, file: !3, line: 279, column: 6)
!3057 = !DILocation(line: 279, column: 27, scope: !3056)
!3058 = !DILocation(line: 279, column: 33, scope: !3056)
!3059 = !DILocation(line: 279, column: 6, scope: !3056)
!3060 = !DILocation(line: 279, column: 6, scope: !2928)
!3061 = !DILocation(line: 280, column: 3, scope: !3056)
!3062 = !DILocation(line: 282, column: 2, scope: !2928)
!3063 = !DILocation(line: 283, column: 1, scope: !2928)
!3064 = distinct !DISubprogram(name: "cfi_qry_mode_off", scope: !3, file: !3, line: 286, type: !3065, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3065 = !DISubroutineType(types: !3066)
!3066 = !{null, !163, !166, !2424}
!3067 = !DILocalVariable(name: "base", arg: 1, scope: !3064, file: !3, line: 286, type: !163)
!3068 = !DILocation(line: 286, column: 41, scope: !3064)
!3069 = !DILocalVariable(name: "map", arg: 2, scope: !3064, file: !3, line: 286, type: !166)
!3070 = !DILocation(line: 286, column: 64, scope: !3064)
!3071 = !DILocalVariable(name: "cfi", arg: 3, scope: !3064, file: !3, line: 287, type: !2424)
!3072 = !DILocation(line: 287, column: 31, scope: !3064)
!3073 = !DILocation(line: 289, column: 28, scope: !3064)
!3074 = !DILocation(line: 289, column: 34, scope: !3064)
!3075 = !DILocation(line: 289, column: 39, scope: !3064)
!3076 = !DILocation(line: 289, column: 44, scope: !3064)
!3077 = !DILocation(line: 289, column: 49, scope: !3064)
!3078 = !DILocation(line: 289, column: 2, scope: !3064)
!3079 = !DILocation(line: 290, column: 28, scope: !3064)
!3080 = !DILocation(line: 290, column: 34, scope: !3064)
!3081 = !DILocation(line: 290, column: 39, scope: !3064)
!3082 = !DILocation(line: 290, column: 44, scope: !3064)
!3083 = !DILocation(line: 290, column: 49, scope: !3064)
!3084 = !DILocation(line: 290, column: 2, scope: !3064)
!3085 = !DILocation(line: 293, column: 7, scope: !3086)
!3086 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 293, column: 6)
!3087 = !DILocation(line: 293, column: 12, scope: !3086)
!3088 = !DILocation(line: 293, column: 16, scope: !3086)
!3089 = !DILocation(line: 293, column: 31, scope: !3086)
!3090 = !DILocation(line: 293, column: 35, scope: !3086)
!3091 = !DILocation(line: 293, column: 40, scope: !3086)
!3092 = !DILocation(line: 293, column: 43, scope: !3086)
!3093 = !DILocation(line: 293, column: 53, scope: !3086)
!3094 = !DILocation(line: 293, column: 56, scope: !3086)
!3095 = !DILocation(line: 293, column: 61, scope: !3086)
!3096 = !DILocation(line: 293, column: 64, scope: !3086)
!3097 = !DILocation(line: 293, column: 6, scope: !3064)
!3098 = !DILocation(line: 294, column: 29, scope: !3086)
!3099 = !DILocation(line: 294, column: 35, scope: !3086)
!3100 = !DILocation(line: 294, column: 40, scope: !3086)
!3101 = !DILocation(line: 294, column: 45, scope: !3086)
!3102 = !DILocation(line: 294, column: 50, scope: !3086)
!3103 = !DILocation(line: 294, column: 3, scope: !3086)
!3104 = !DILocation(line: 295, column: 1, scope: !3064)
!3105 = distinct !DISubprogram(name: "cfi_read_pri", scope: !3, file: !3, line: 299, type: !3106, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3106 = !DISubroutineType(types: !3107)
!3107 = !{!3108, !166, !91, !91, !152}
!3108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3109, size: 64)
!3109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_extquery", file: !2426, line: 146, size: 40, elements: !3110)
!3110 = !{!3111, !3112, !3113}
!3111 = !DIDerivedType(tag: DW_TAG_member, name: "pri", scope: !3109, file: !2426, line: 147, baseType: !2442, size: 24)
!3112 = !DIDerivedType(tag: DW_TAG_member, name: "MajorVersion", scope: !3109, file: !2426, line: 148, baseType: !2312, size: 8, offset: 24)
!3113 = !DIDerivedType(tag: DW_TAG_member, name: "MinorVersion", scope: !3109, file: !2426, line: 149, baseType: !2312, size: 8, offset: 32)
!3114 = !DILocalVariable(name: "s", arg: 1, scope: !3115, file: !82, line: 445, type: !1203)
!3115 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !82, file: !82, line: 445, type: !3116, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3116 = !DISubroutineType(types: !3117)
!3117 = !{!102, !1203, !98, !369}
!3118 = !DILocation(line: 445, column: 72, scope: !3115, inlinedAt: !3119)
!3119 = distinct !DILocation(line: 552, column: 10, scope: !3120, inlinedAt: !3125)
!3120 = distinct !DILexicalBlock(scope: !3121, file: !82, line: 540, column: 34)
!3121 = distinct !DILexicalBlock(scope: !3122, file: !82, line: 540, column: 6)
!3122 = distinct !DISubprogram(name: "kmalloc", scope: !82, file: !82, line: 538, type: !3123, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3123 = !DISubroutineType(types: !3124)
!3124 = !{!102, !369, !98}
!3125 = distinct !DILocation(line: 312, column: 9, scope: !3105)
!3126 = !DILocalVariable(name: "flags", arg: 2, scope: !3115, file: !82, line: 446, type: !98)
!3127 = !DILocation(line: 446, column: 9, scope: !3115, inlinedAt: !3119)
!3128 = !DILocalVariable(name: "size", arg: 3, scope: !3115, file: !82, line: 446, type: !369)
!3129 = !DILocation(line: 446, column: 23, scope: !3115, inlinedAt: !3119)
!3130 = !DILocalVariable(name: "ret", scope: !3115, file: !82, line: 448, type: !102)
!3131 = !DILocation(line: 448, column: 8, scope: !3115, inlinedAt: !3119)
!3132 = !DILocalVariable(name: "flags", arg: 1, scope: !3133, file: !82, line: 318, type: !98)
!3133 = distinct !DISubprogram(name: "kmalloc_type", scope: !82, file: !82, line: 318, type: !3134, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3134 = !DISubroutineType(types: !3135)
!3135 = !{!81, !98}
!3136 = !DILocation(line: 318, column: 67, scope: !3133, inlinedAt: !3137)
!3137 = distinct !DILocation(line: 553, column: 20, scope: !3120, inlinedAt: !3125)
!3138 = !DILocalVariable(name: "size", arg: 1, scope: !3139, file: !82, line: 346, type: !369)
!3139 = distinct !DISubprogram(name: "kmalloc_index", scope: !82, file: !82, line: 346, type: !3140, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3140 = !DISubroutineType(types: !3141)
!3141 = !{!7, !369}
!3142 = !DILocation(line: 346, column: 58, scope: !3139, inlinedAt: !3143)
!3143 = distinct !DILocation(line: 547, column: 11, scope: !3120, inlinedAt: !3125)
!3144 = !DILocalVariable(name: "size", arg: 1, scope: !3145, file: !82, line: 472, type: !369)
!3145 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !82, file: !82, line: 472, type: !3146, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{!102, !369, !98, !7}
!3148 = !DILocation(line: 472, column: 28, scope: !3145, inlinedAt: !3149)
!3149 = distinct !DILocation(line: 481, column: 9, scope: !3150, inlinedAt: !3151)
!3150 = distinct !DISubprogram(name: "kmalloc_large", scope: !82, file: !82, line: 478, type: !3123, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3151 = distinct !DILocation(line: 545, column: 11, scope: !3152, inlinedAt: !3125)
!3152 = distinct !DILexicalBlock(scope: !3120, file: !82, line: 544, column: 7)
!3153 = !DILocalVariable(name: "flags", arg: 2, scope: !3145, file: !82, line: 472, type: !98)
!3154 = !DILocation(line: 472, column: 40, scope: !3145, inlinedAt: !3149)
!3155 = !DILocalVariable(name: "order", arg: 3, scope: !3145, file: !82, line: 472, type: !7)
!3156 = !DILocation(line: 472, column: 60, scope: !3145, inlinedAt: !3149)
!3157 = !DILocalVariable(name: "size", arg: 1, scope: !3150, file: !82, line: 478, type: !369)
!3158 = !DILocation(line: 478, column: 51, scope: !3150, inlinedAt: !3151)
!3159 = !DILocalVariable(name: "flags", arg: 2, scope: !3150, file: !82, line: 478, type: !98)
!3160 = !DILocation(line: 478, column: 63, scope: !3150, inlinedAt: !3151)
!3161 = !DILocalVariable(name: "order", scope: !3150, file: !82, line: 480, type: !7)
!3162 = !DILocation(line: 480, column: 15, scope: !3150, inlinedAt: !3151)
!3163 = !DILocalVariable(name: "size", arg: 1, scope: !3122, file: !82, line: 538, type: !369)
!3164 = !DILocation(line: 538, column: 45, scope: !3122, inlinedAt: !3125)
!3165 = !DILocalVariable(name: "flags", arg: 2, scope: !3122, file: !82, line: 538, type: !98)
!3166 = !DILocation(line: 538, column: 57, scope: !3122, inlinedAt: !3125)
!3167 = !DILocalVariable(name: "index", scope: !3120, file: !82, line: 542, type: !7)
!3168 = !DILocation(line: 542, column: 16, scope: !3120, inlinedAt: !3125)
!3169 = !DILocalVariable(name: "map", arg: 1, scope: !3105, file: !3, line: 299, type: !166)
!3170 = !DILocation(line: 299, column: 40, scope: !3105)
!3171 = !DILocalVariable(name: "adr", arg: 2, scope: !3105, file: !3, line: 299, type: !91)
!3172 = !DILocation(line: 299, column: 51, scope: !3105)
!3173 = !DILocalVariable(name: "size", arg: 3, scope: !3105, file: !3, line: 299, type: !91)
!3174 = !DILocation(line: 299, column: 62, scope: !3105)
!3175 = !DILocalVariable(name: "name", arg: 4, scope: !3105, file: !3, line: 299, type: !152)
!3176 = !DILocation(line: 299, column: 80, scope: !3105)
!3177 = !DILocalVariable(name: "cfi", scope: !3105, file: !3, line: 301, type: !2424)
!3178 = !DILocation(line: 301, column: 22, scope: !3105)
!3179 = !DILocation(line: 301, column: 28, scope: !3105)
!3180 = !DILocation(line: 301, column: 33, scope: !3105)
!3181 = !DILocalVariable(name: "base", scope: !3105, file: !3, line: 302, type: !96)
!3182 = !DILocation(line: 302, column: 8, scope: !3105)
!3183 = !DILocalVariable(name: "ofs_factor", scope: !3105, file: !3, line: 303, type: !122)
!3184 = !DILocation(line: 303, column: 6, scope: !3105)
!3185 = !DILocation(line: 303, column: 19, scope: !3105)
!3186 = !DILocation(line: 303, column: 24, scope: !3105)
!3187 = !DILocation(line: 303, column: 37, scope: !3105)
!3188 = !DILocation(line: 303, column: 42, scope: !3105)
!3189 = !DILocation(line: 303, column: 35, scope: !3105)
!3190 = !DILocalVariable(name: "i", scope: !3105, file: !3, line: 304, type: !122)
!3191 = !DILocation(line: 304, column: 6, scope: !3105)
!3192 = !DILocalVariable(name: "extp", scope: !3105, file: !3, line: 305, type: !3108)
!3193 = !DILocation(line: 305, column: 23, scope: !3105)
!3194 = !DILocation(line: 307, column: 7, scope: !3195)
!3195 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 307, column: 6)
!3196 = !DILocation(line: 307, column: 6, scope: !3105)
!3197 = !DILocation(line: 308, column: 3, scope: !3195)
!3198 = !DILocation(line: 310, column: 59, scope: !3105)
!3199 = !DILocation(line: 310, column: 65, scope: !3105)
!3200 = !DILocation(line: 310, column: 2, scope: !3105)
!3201 = !DILocation(line: 312, column: 17, scope: !3105)
!3202 = !DILocation(line: 540, column: 27, scope: !3121, inlinedAt: !3125)
!3203 = !DILocation(line: 540, column: 6, scope: !3121, inlinedAt: !3125)
!3204 = !DILocation(line: 540, column: 6, scope: !3122, inlinedAt: !3125)
!3205 = !DILocation(line: 544, column: 7, scope: !3152, inlinedAt: !3125)
!3206 = !DILocation(line: 544, column: 12, scope: !3152, inlinedAt: !3125)
!3207 = !DILocation(line: 544, column: 7, scope: !3120, inlinedAt: !3125)
!3208 = !DILocation(line: 545, column: 25, scope: !3152, inlinedAt: !3125)
!3209 = !DILocation(line: 545, column: 31, scope: !3152, inlinedAt: !3125)
!3210 = !DILocation(line: 480, column: 33, scope: !3150, inlinedAt: !3151)
!3211 = !DILocation(line: 480, column: 23, scope: !3150, inlinedAt: !3151)
!3212 = !DILocation(line: 481, column: 29, scope: !3150, inlinedAt: !3151)
!3213 = !DILocation(line: 481, column: 35, scope: !3150, inlinedAt: !3151)
!3214 = !DILocation(line: 481, column: 42, scope: !3150, inlinedAt: !3151)
!3215 = !DILocation(line: 474, column: 23, scope: !3145, inlinedAt: !3149)
!3216 = !DILocation(line: 474, column: 29, scope: !3145, inlinedAt: !3149)
!3217 = !DILocation(line: 474, column: 36, scope: !3145, inlinedAt: !3149)
!3218 = !DILocation(line: 474, column: 9, scope: !3145, inlinedAt: !3149)
!3219 = !DILocation(line: 545, column: 4, scope: !3152, inlinedAt: !3125)
!3220 = !DILocation(line: 547, column: 25, scope: !3120, inlinedAt: !3125)
!3221 = !DILocation(line: 348, column: 7, scope: !3222, inlinedAt: !3143)
!3222 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 348, column: 6)
!3223 = !DILocation(line: 348, column: 6, scope: !3139, inlinedAt: !3143)
!3224 = !DILocation(line: 349, column: 3, scope: !3222, inlinedAt: !3143)
!3225 = !DILocation(line: 351, column: 6, scope: !3226, inlinedAt: !3143)
!3226 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 351, column: 6)
!3227 = !DILocation(line: 351, column: 11, scope: !3226, inlinedAt: !3143)
!3228 = !DILocation(line: 351, column: 6, scope: !3139, inlinedAt: !3143)
!3229 = !DILocation(line: 352, column: 3, scope: !3226, inlinedAt: !3143)
!3230 = !DILocation(line: 354, column: 32, scope: !3231, inlinedAt: !3143)
!3231 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 354, column: 6)
!3232 = !DILocation(line: 354, column: 37, scope: !3231, inlinedAt: !3143)
!3233 = !DILocation(line: 354, column: 42, scope: !3231, inlinedAt: !3143)
!3234 = !DILocation(line: 354, column: 45, scope: !3231, inlinedAt: !3143)
!3235 = !DILocation(line: 354, column: 50, scope: !3231, inlinedAt: !3143)
!3236 = !DILocation(line: 354, column: 6, scope: !3139, inlinedAt: !3143)
!3237 = !DILocation(line: 355, column: 3, scope: !3231, inlinedAt: !3143)
!3238 = !DILocation(line: 356, column: 32, scope: !3239, inlinedAt: !3143)
!3239 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 356, column: 6)
!3240 = !DILocation(line: 356, column: 37, scope: !3239, inlinedAt: !3143)
!3241 = !DILocation(line: 356, column: 43, scope: !3239, inlinedAt: !3143)
!3242 = !DILocation(line: 356, column: 46, scope: !3239, inlinedAt: !3143)
!3243 = !DILocation(line: 356, column: 51, scope: !3239, inlinedAt: !3143)
!3244 = !DILocation(line: 356, column: 6, scope: !3139, inlinedAt: !3143)
!3245 = !DILocation(line: 357, column: 3, scope: !3239, inlinedAt: !3143)
!3246 = !DILocation(line: 358, column: 6, scope: !3247, inlinedAt: !3143)
!3247 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 358, column: 6)
!3248 = !DILocation(line: 358, column: 11, scope: !3247, inlinedAt: !3143)
!3249 = !DILocation(line: 358, column: 6, scope: !3139, inlinedAt: !3143)
!3250 = !DILocation(line: 358, column: 26, scope: !3247, inlinedAt: !3143)
!3251 = !DILocation(line: 359, column: 6, scope: !3252, inlinedAt: !3143)
!3252 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 359, column: 6)
!3253 = !DILocation(line: 359, column: 11, scope: !3252, inlinedAt: !3143)
!3254 = !DILocation(line: 359, column: 6, scope: !3139, inlinedAt: !3143)
!3255 = !DILocation(line: 359, column: 26, scope: !3252, inlinedAt: !3143)
!3256 = !DILocation(line: 360, column: 6, scope: !3257, inlinedAt: !3143)
!3257 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 360, column: 6)
!3258 = !DILocation(line: 360, column: 11, scope: !3257, inlinedAt: !3143)
!3259 = !DILocation(line: 360, column: 6, scope: !3139, inlinedAt: !3143)
!3260 = !DILocation(line: 360, column: 26, scope: !3257, inlinedAt: !3143)
!3261 = !DILocation(line: 361, column: 6, scope: !3262, inlinedAt: !3143)
!3262 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 361, column: 6)
!3263 = !DILocation(line: 361, column: 11, scope: !3262, inlinedAt: !3143)
!3264 = !DILocation(line: 361, column: 6, scope: !3139, inlinedAt: !3143)
!3265 = !DILocation(line: 361, column: 26, scope: !3262, inlinedAt: !3143)
!3266 = !DILocation(line: 362, column: 6, scope: !3267, inlinedAt: !3143)
!3267 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 362, column: 6)
!3268 = !DILocation(line: 362, column: 11, scope: !3267, inlinedAt: !3143)
!3269 = !DILocation(line: 362, column: 6, scope: !3139, inlinedAt: !3143)
!3270 = !DILocation(line: 362, column: 26, scope: !3267, inlinedAt: !3143)
!3271 = !DILocation(line: 363, column: 6, scope: !3272, inlinedAt: !3143)
!3272 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 363, column: 6)
!3273 = !DILocation(line: 363, column: 11, scope: !3272, inlinedAt: !3143)
!3274 = !DILocation(line: 363, column: 6, scope: !3139, inlinedAt: !3143)
!3275 = !DILocation(line: 363, column: 26, scope: !3272, inlinedAt: !3143)
!3276 = !DILocation(line: 364, column: 6, scope: !3277, inlinedAt: !3143)
!3277 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 364, column: 6)
!3278 = !DILocation(line: 364, column: 11, scope: !3277, inlinedAt: !3143)
!3279 = !DILocation(line: 364, column: 6, scope: !3139, inlinedAt: !3143)
!3280 = !DILocation(line: 364, column: 26, scope: !3277, inlinedAt: !3143)
!3281 = !DILocation(line: 365, column: 6, scope: !3282, inlinedAt: !3143)
!3282 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 365, column: 6)
!3283 = !DILocation(line: 365, column: 11, scope: !3282, inlinedAt: !3143)
!3284 = !DILocation(line: 365, column: 6, scope: !3139, inlinedAt: !3143)
!3285 = !DILocation(line: 365, column: 26, scope: !3282, inlinedAt: !3143)
!3286 = !DILocation(line: 366, column: 6, scope: !3287, inlinedAt: !3143)
!3287 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 366, column: 6)
!3288 = !DILocation(line: 366, column: 11, scope: !3287, inlinedAt: !3143)
!3289 = !DILocation(line: 366, column: 6, scope: !3139, inlinedAt: !3143)
!3290 = !DILocation(line: 366, column: 26, scope: !3287, inlinedAt: !3143)
!3291 = !DILocation(line: 367, column: 6, scope: !3292, inlinedAt: !3143)
!3292 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 367, column: 6)
!3293 = !DILocation(line: 367, column: 11, scope: !3292, inlinedAt: !3143)
!3294 = !DILocation(line: 367, column: 6, scope: !3139, inlinedAt: !3143)
!3295 = !DILocation(line: 367, column: 26, scope: !3292, inlinedAt: !3143)
!3296 = !DILocation(line: 368, column: 6, scope: !3297, inlinedAt: !3143)
!3297 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 368, column: 6)
!3298 = !DILocation(line: 368, column: 11, scope: !3297, inlinedAt: !3143)
!3299 = !DILocation(line: 368, column: 6, scope: !3139, inlinedAt: !3143)
!3300 = !DILocation(line: 368, column: 26, scope: !3297, inlinedAt: !3143)
!3301 = !DILocation(line: 369, column: 6, scope: !3302, inlinedAt: !3143)
!3302 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 369, column: 6)
!3303 = !DILocation(line: 369, column: 11, scope: !3302, inlinedAt: !3143)
!3304 = !DILocation(line: 369, column: 6, scope: !3139, inlinedAt: !3143)
!3305 = !DILocation(line: 369, column: 26, scope: !3302, inlinedAt: !3143)
!3306 = !DILocation(line: 370, column: 6, scope: !3307, inlinedAt: !3143)
!3307 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 370, column: 6)
!3308 = !DILocation(line: 370, column: 11, scope: !3307, inlinedAt: !3143)
!3309 = !DILocation(line: 370, column: 6, scope: !3139, inlinedAt: !3143)
!3310 = !DILocation(line: 370, column: 26, scope: !3307, inlinedAt: !3143)
!3311 = !DILocation(line: 371, column: 6, scope: !3312, inlinedAt: !3143)
!3312 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 371, column: 6)
!3313 = !DILocation(line: 371, column: 11, scope: !3312, inlinedAt: !3143)
!3314 = !DILocation(line: 371, column: 6, scope: !3139, inlinedAt: !3143)
!3315 = !DILocation(line: 371, column: 26, scope: !3312, inlinedAt: !3143)
!3316 = !DILocation(line: 372, column: 6, scope: !3317, inlinedAt: !3143)
!3317 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 372, column: 6)
!3318 = !DILocation(line: 372, column: 11, scope: !3317, inlinedAt: !3143)
!3319 = !DILocation(line: 372, column: 6, scope: !3139, inlinedAt: !3143)
!3320 = !DILocation(line: 372, column: 26, scope: !3317, inlinedAt: !3143)
!3321 = !DILocation(line: 373, column: 6, scope: !3322, inlinedAt: !3143)
!3322 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 373, column: 6)
!3323 = !DILocation(line: 373, column: 11, scope: !3322, inlinedAt: !3143)
!3324 = !DILocation(line: 373, column: 6, scope: !3139, inlinedAt: !3143)
!3325 = !DILocation(line: 373, column: 26, scope: !3322, inlinedAt: !3143)
!3326 = !DILocation(line: 374, column: 6, scope: !3327, inlinedAt: !3143)
!3327 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 374, column: 6)
!3328 = !DILocation(line: 374, column: 11, scope: !3327, inlinedAt: !3143)
!3329 = !DILocation(line: 374, column: 6, scope: !3139, inlinedAt: !3143)
!3330 = !DILocation(line: 374, column: 26, scope: !3327, inlinedAt: !3143)
!3331 = !DILocation(line: 375, column: 6, scope: !3332, inlinedAt: !3143)
!3332 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 375, column: 6)
!3333 = !DILocation(line: 375, column: 11, scope: !3332, inlinedAt: !3143)
!3334 = !DILocation(line: 375, column: 6, scope: !3139, inlinedAt: !3143)
!3335 = !DILocation(line: 375, column: 27, scope: !3332, inlinedAt: !3143)
!3336 = !DILocation(line: 376, column: 6, scope: !3337, inlinedAt: !3143)
!3337 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 376, column: 6)
!3338 = !DILocation(line: 376, column: 11, scope: !3337, inlinedAt: !3143)
!3339 = !DILocation(line: 376, column: 6, scope: !3139, inlinedAt: !3143)
!3340 = !DILocation(line: 376, column: 32, scope: !3337, inlinedAt: !3143)
!3341 = !DILocation(line: 377, column: 6, scope: !3342, inlinedAt: !3143)
!3342 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 377, column: 6)
!3343 = !DILocation(line: 377, column: 11, scope: !3342, inlinedAt: !3143)
!3344 = !DILocation(line: 377, column: 6, scope: !3139, inlinedAt: !3143)
!3345 = !DILocation(line: 377, column: 32, scope: !3342, inlinedAt: !3143)
!3346 = !DILocation(line: 378, column: 6, scope: !3347, inlinedAt: !3143)
!3347 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 378, column: 6)
!3348 = !DILocation(line: 378, column: 11, scope: !3347, inlinedAt: !3143)
!3349 = !DILocation(line: 378, column: 6, scope: !3139, inlinedAt: !3143)
!3350 = !DILocation(line: 378, column: 32, scope: !3347, inlinedAt: !3143)
!3351 = !DILocation(line: 379, column: 6, scope: !3352, inlinedAt: !3143)
!3352 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 379, column: 6)
!3353 = !DILocation(line: 379, column: 11, scope: !3352, inlinedAt: !3143)
!3354 = !DILocation(line: 379, column: 6, scope: !3139, inlinedAt: !3143)
!3355 = !DILocation(line: 379, column: 33, scope: !3352, inlinedAt: !3143)
!3356 = !DILocation(line: 380, column: 6, scope: !3357, inlinedAt: !3143)
!3357 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 380, column: 6)
!3358 = !DILocation(line: 380, column: 11, scope: !3357, inlinedAt: !3143)
!3359 = !DILocation(line: 380, column: 6, scope: !3139, inlinedAt: !3143)
!3360 = !DILocation(line: 380, column: 33, scope: !3357, inlinedAt: !3143)
!3361 = !DILocation(line: 381, column: 6, scope: !3362, inlinedAt: !3143)
!3362 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 381, column: 6)
!3363 = !DILocation(line: 381, column: 11, scope: !3362, inlinedAt: !3143)
!3364 = !DILocation(line: 381, column: 6, scope: !3139, inlinedAt: !3143)
!3365 = !DILocation(line: 381, column: 33, scope: !3362, inlinedAt: !3143)
!3366 = !DILocation(line: 382, column: 2, scope: !3367, inlinedAt: !3143)
!3367 = distinct !DILexicalBlock(scope: !3368, file: !82, line: 382, column: 2)
!3368 = distinct !DILexicalBlock(scope: !3139, file: !82, line: 382, column: 2)
!3369 = !{i32 -2144154288, i32 -2144154259, i32 -2144154213, i32 -2144154155, i32 -2144154101, i32 -2144154047, i32 -2144153992, i32 -2144153961}
!3370 = !DILocation(line: 382, column: 2, scope: !3371, inlinedAt: !3143)
!3371 = distinct !DILexicalBlock(scope: !3372, file: !82, line: 382, column: 2)
!3372 = distinct !DILexicalBlock(scope: !3368, file: !82, line: 382, column: 2)
!3373 = !{i32 -2144153518, i32 -2144153511, i32 -2144153457, i32 -2144153426, i32 -2144153396}
!3374 = !DILocation(line: 382, column: 2, scope: !3372, inlinedAt: !3143)
!3375 = !DILocation(line: 386, column: 1, scope: !3139, inlinedAt: !3143)
!3376 = !DILocation(line: 547, column: 9, scope: !3120, inlinedAt: !3125)
!3377 = !DILocation(line: 549, column: 8, scope: !3378, inlinedAt: !3125)
!3378 = distinct !DILexicalBlock(scope: !3120, file: !82, line: 549, column: 7)
!3379 = !DILocation(line: 549, column: 7, scope: !3120, inlinedAt: !3125)
!3380 = !DILocation(line: 550, column: 4, scope: !3378, inlinedAt: !3125)
!3381 = !DILocation(line: 553, column: 33, scope: !3120, inlinedAt: !3125)
!3382 = !DILocation(line: 325, column: 6, scope: !3383, inlinedAt: !3137)
!3383 = distinct !DILexicalBlock(scope: !3133, file: !82, line: 325, column: 6)
!3384 = !DILocation(line: 325, column: 6, scope: !3133, inlinedAt: !3137)
!3385 = !DILocation(line: 326, column: 3, scope: !3383, inlinedAt: !3137)
!3386 = !DILocation(line: 332, column: 9, scope: !3133, inlinedAt: !3137)
!3387 = !DILocation(line: 332, column: 15, scope: !3133, inlinedAt: !3137)
!3388 = !DILocation(line: 332, column: 2, scope: !3133, inlinedAt: !3137)
!3389 = !DILocation(line: 336, column: 1, scope: !3133, inlinedAt: !3137)
!3390 = !DILocation(line: 553, column: 5, scope: !3120, inlinedAt: !3125)
!3391 = !DILocation(line: 553, column: 41, scope: !3120, inlinedAt: !3125)
!3392 = !DILocation(line: 554, column: 5, scope: !3120, inlinedAt: !3125)
!3393 = !DILocation(line: 554, column: 12, scope: !3120, inlinedAt: !3125)
!3394 = !DILocation(line: 448, column: 31, scope: !3115, inlinedAt: !3119)
!3395 = !DILocation(line: 448, column: 34, scope: !3115, inlinedAt: !3119)
!3396 = !DILocation(line: 448, column: 14, scope: !3115, inlinedAt: !3119)
!3397 = !DILocation(line: 450, column: 22, scope: !3115, inlinedAt: !3119)
!3398 = !DILocation(line: 450, column: 25, scope: !3115, inlinedAt: !3119)
!3399 = !DILocation(line: 450, column: 30, scope: !3115, inlinedAt: !3119)
!3400 = !DILocation(line: 450, column: 36, scope: !3115, inlinedAt: !3119)
!3401 = !DILocation(line: 450, column: 8, scope: !3115, inlinedAt: !3119)
!3402 = !DILocation(line: 450, column: 6, scope: !3115, inlinedAt: !3119)
!3403 = !DILocation(line: 451, column: 9, scope: !3115, inlinedAt: !3119)
!3404 = !DILocation(line: 552, column: 3, scope: !3120, inlinedAt: !3125)
!3405 = !DILocation(line: 557, column: 19, scope: !3122, inlinedAt: !3125)
!3406 = !DILocation(line: 557, column: 25, scope: !3122, inlinedAt: !3125)
!3407 = !DILocation(line: 557, column: 9, scope: !3122, inlinedAt: !3125)
!3408 = !DILocation(line: 557, column: 2, scope: !3122, inlinedAt: !3125)
!3409 = !DILocation(line: 558, column: 1, scope: !3122, inlinedAt: !3125)
!3410 = !DILocation(line: 312, column: 9, scope: !3105)
!3411 = !DILocation(line: 312, column: 7, scope: !3105)
!3412 = !DILocation(line: 313, column: 7, scope: !3413)
!3413 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 313, column: 6)
!3414 = !DILocation(line: 313, column: 6, scope: !3105)
!3415 = !DILocation(line: 314, column: 3, scope: !3413)
!3416 = !DILocation(line: 321, column: 18, scope: !3105)
!3417 = !DILocation(line: 321, column: 24, scope: !3105)
!3418 = !DILocation(line: 321, column: 29, scope: !3105)
!3419 = !DILocation(line: 321, column: 2, scope: !3105)
!3420 = !DILocation(line: 323, column: 8, scope: !3421)
!3421 = distinct !DILexicalBlock(scope: !3105, file: !3, line: 323, column: 2)
!3422 = !DILocation(line: 323, column: 7, scope: !3421)
!3423 = !DILocation(line: 323, column: 12, scope: !3424)
!3424 = distinct !DILexicalBlock(scope: !3421, file: !3, line: 323, column: 2)
!3425 = !DILocation(line: 323, column: 14, scope: !3424)
!3426 = !DILocation(line: 323, column: 13, scope: !3424)
!3427 = !DILocation(line: 323, column: 2, scope: !3421)
!3428 = !DILocation(line: 325, column: 19, scope: !3429)
!3429 = distinct !DILexicalBlock(scope: !3424, file: !3, line: 323, column: 25)
!3430 = !DILocation(line: 325, column: 24, scope: !3429)
!3431 = !DILocation(line: 325, column: 31, scope: !3429)
!3432 = !DILocation(line: 325, column: 35, scope: !3429)
!3433 = !DILocation(line: 325, column: 34, scope: !3429)
!3434 = !DILocation(line: 325, column: 38, scope: !3429)
!3435 = !DILocation(line: 325, column: 37, scope: !3429)
!3436 = !DILocation(line: 325, column: 28, scope: !3429)
!3437 = !DILocation(line: 325, column: 4, scope: !3429)
!3438 = !DILocation(line: 324, column: 21, scope: !3429)
!3439 = !DILocation(line: 324, column: 3, scope: !3429)
!3440 = !DILocation(line: 324, column: 27, scope: !3429)
!3441 = !DILocation(line: 324, column: 30, scope: !3429)
!3442 = !DILocation(line: 326, column: 2, scope: !3429)
!3443 = !DILocation(line: 323, column: 21, scope: !3424)
!3444 = !DILocation(line: 323, column: 2, scope: !3424)
!3445 = distinct !{!3445, !3427, !3446}
!3446 = !DILocation(line: 326, column: 2, scope: !3421)
!3447 = !DILocation(line: 329, column: 19, scope: !3105)
!3448 = !DILocation(line: 329, column: 25, scope: !3105)
!3449 = !DILocation(line: 329, column: 30, scope: !3105)
!3450 = !DILocation(line: 329, column: 2, scope: !3105)
!3451 = !DILabel(scope: !3105, name: "out", file: !3, line: 337)
!3452 = !DILocation(line: 337, column: 2, scope: !3105)
!3453 = !DILocation(line: 337, column: 14, scope: !3105)
!3454 = !DILocation(line: 337, column: 7, scope: !3105)
!3455 = distinct !DISubprogram(name: "cfi_read_query", scope: !2426, file: !2426, line: 306, type: !3456, scopeLine: 307, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3456 = !DISubroutineType(types: !3457)
!3457 = !{!2312, !166, !163}
!3458 = !DILocalVariable(name: "map", arg: 1, scope: !3455, file: !2426, line: 306, type: !166)
!3459 = !DILocation(line: 306, column: 55, scope: !3455)
!3460 = !DILocalVariable(name: "addr", arg: 2, scope: !3455, file: !2426, line: 306, type: !163)
!3461 = !DILocation(line: 306, column: 69, scope: !3455)
!3462 = !DILocalVariable(name: "val", scope: !3455, file: !2426, line: 308, type: !187)
!3463 = !DILocation(line: 308, column: 11, scope: !3455)
!3464 = !DILocation(line: 308, column: 17, scope: !3455)
!3465 = !DILocation(line: 310, column: 6, scope: !3466)
!3466 = distinct !DILexicalBlock(scope: !3455, file: !2426, line: 310, column: 6)
!3467 = !DILocation(line: 310, column: 6, scope: !3455)
!3468 = !DILocation(line: 311, column: 14, scope: !3469)
!3469 = distinct !DILexicalBlock(scope: !3466, file: !2426, line: 310, column: 31)
!3470 = !DILocation(line: 311, column: 10, scope: !3469)
!3471 = !DILocation(line: 311, column: 3, scope: !3469)
!3472 = !DILocation(line: 312, column: 13, scope: !3473)
!3473 = distinct !DILexicalBlock(scope: !3466, file: !2426, line: 312, column: 13)
!3474 = !DILocation(line: 312, column: 13, scope: !3466)
!3475 = !DILocation(line: 313, column: 10, scope: !3476)
!3476 = distinct !DILexicalBlock(scope: !3473, file: !2426, line: 312, column: 38)
!3477 = !DILocation(line: 313, column: 3, scope: !3476)
!3478 = !DILocation(line: 318, column: 10, scope: !3479)
!3479 = distinct !DILexicalBlock(scope: !3473, file: !2426, line: 314, column: 9)
!3480 = !DILocation(line: 318, column: 3, scope: !3479)
!3481 = !DILocation(line: 320, column: 1, scope: !3455)
!3482 = distinct !DISubprogram(name: "cfi_fixup", scope: !3, file: !3, line: 342, type: !3483, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3483 = !DISubroutineType(types: !3484)
!3484 = !{null, !2195, !3485}
!3485 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3486, size: 64)
!3486 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cfi_fixup", file: !2426, line: 349, size: 128, elements: !3487)
!3487 = !{!3488, !3489, !3490}
!3488 = !DIDerivedType(tag: DW_TAG_member, name: "mfr", scope: !3486, file: !2426, line: 350, baseType: !2429, size: 16)
!3489 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !3486, file: !2426, line: 351, baseType: !2429, size: 16, offset: 16)
!3490 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !3486, file: !2426, line: 352, baseType: !2342, size: 64, offset: 64)
!3491 = !DILocalVariable(name: "mtd", arg: 1, scope: !3482, file: !3, line: 342, type: !2195)
!3492 = !DILocation(line: 342, column: 33, scope: !3482)
!3493 = !DILocalVariable(name: "fixups", arg: 2, scope: !3482, file: !3, line: 342, type: !3485)
!3494 = !DILocation(line: 342, column: 56, scope: !3482)
!3495 = !DILocalVariable(name: "map", scope: !3482, file: !3, line: 344, type: !166)
!3496 = !DILocation(line: 344, column: 19, scope: !3482)
!3497 = !DILocation(line: 344, column: 25, scope: !3482)
!3498 = !DILocation(line: 344, column: 30, scope: !3482)
!3499 = !DILocalVariable(name: "cfi", scope: !3482, file: !3, line: 345, type: !2424)
!3500 = !DILocation(line: 345, column: 22, scope: !3482)
!3501 = !DILocation(line: 345, column: 28, scope: !3482)
!3502 = !DILocation(line: 345, column: 33, scope: !3482)
!3503 = !DILocalVariable(name: "f", scope: !3482, file: !3, line: 346, type: !3485)
!3504 = !DILocation(line: 346, column: 20, scope: !3482)
!3505 = !DILocation(line: 348, column: 9, scope: !3506)
!3506 = distinct !DILexicalBlock(scope: !3482, file: !3, line: 348, column: 2)
!3507 = !DILocation(line: 348, column: 8, scope: !3506)
!3508 = !DILocation(line: 348, column: 7, scope: !3506)
!3509 = !DILocation(line: 348, column: 17, scope: !3510)
!3510 = distinct !DILexicalBlock(scope: !3506, file: !3, line: 348, column: 2)
!3511 = !DILocation(line: 348, column: 20, scope: !3510)
!3512 = !DILocation(line: 348, column: 2, scope: !3506)
!3513 = !DILocation(line: 349, column: 9, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 349, column: 7)
!3515 = distinct !DILexicalBlock(scope: !3510, file: !3, line: 348, column: 32)
!3516 = !DILocation(line: 349, column: 12, scope: !3514)
!3517 = !DILocation(line: 349, column: 16, scope: !3514)
!3518 = !DILocation(line: 349, column: 32, scope: !3514)
!3519 = !DILocation(line: 349, column: 36, scope: !3514)
!3520 = !DILocation(line: 349, column: 39, scope: !3514)
!3521 = !DILocation(line: 349, column: 46, scope: !3514)
!3522 = !DILocation(line: 349, column: 51, scope: !3514)
!3523 = !DILocation(line: 349, column: 43, scope: !3514)
!3524 = !DILocation(line: 349, column: 57, scope: !3514)
!3525 = !DILocation(line: 350, column: 9, scope: !3514)
!3526 = !DILocation(line: 350, column: 12, scope: !3514)
!3527 = !DILocation(line: 350, column: 16, scope: !3514)
!3528 = !DILocation(line: 350, column: 32, scope: !3514)
!3529 = !DILocation(line: 350, column: 36, scope: !3514)
!3530 = !DILocation(line: 350, column: 39, scope: !3514)
!3531 = !DILocation(line: 350, column: 46, scope: !3514)
!3532 = !DILocation(line: 350, column: 51, scope: !3514)
!3533 = !DILocation(line: 350, column: 43, scope: !3514)
!3534 = !DILocation(line: 349, column: 7, scope: !3515)
!3535 = !DILocation(line: 351, column: 4, scope: !3536)
!3536 = distinct !DILexicalBlock(scope: !3514, file: !3, line: 350, column: 57)
!3537 = !DILocation(line: 351, column: 7, scope: !3536)
!3538 = !DILocation(line: 351, column: 13, scope: !3536)
!3539 = !DILocation(line: 352, column: 3, scope: !3536)
!3540 = !DILocation(line: 353, column: 2, scope: !3515)
!3541 = !DILocation(line: 348, column: 28, scope: !3510)
!3542 = !DILocation(line: 348, column: 2, scope: !3510)
!3543 = distinct !{!3543, !3512, !3544}
!3544 = !DILocation(line: 353, column: 2, scope: !3506)
!3545 = !DILocation(line: 354, column: 1, scope: !3482)
!3546 = distinct !DISubprogram(name: "cfi_varsize_frob", scope: !3, file: !3, line: 358, type: !3547, scopeLine: 360, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3547 = !DISubroutineType(types: !3548)
!3548 = !{!122, !2195, !3549, !402, !369, !102}
!3549 = !DIDerivedType(tag: DW_TAG_typedef, name: "varsize_frob_t", file: !2426, line: 379, baseType: !3550)
!3550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3551, size: 64)
!3551 = !DISubroutineType(types: !3552)
!3552 = !{!122, !166, !3553, !172, !122, !102}
!3553 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2473, size: 64)
!3554 = !DILocalVariable(name: "mtd", arg: 1, scope: !3546, file: !3, line: 358, type: !2195)
!3555 = !DILocation(line: 358, column: 39, scope: !3546)
!3556 = !DILocalVariable(name: "frob", arg: 2, scope: !3546, file: !3, line: 358, type: !3549)
!3557 = !DILocation(line: 358, column: 59, scope: !3546)
!3558 = !DILocalVariable(name: "ofs", arg: 3, scope: !3546, file: !3, line: 359, type: !402)
!3559 = !DILocation(line: 359, column: 17, scope: !3546)
!3560 = !DILocalVariable(name: "len", arg: 4, scope: !3546, file: !3, line: 359, type: !369)
!3561 = !DILocation(line: 359, column: 29, scope: !3546)
!3562 = !DILocalVariable(name: "thunk", arg: 5, scope: !3546, file: !3, line: 359, type: !102)
!3563 = !DILocation(line: 359, column: 40, scope: !3546)
!3564 = !DILocalVariable(name: "map", scope: !3546, file: !3, line: 361, type: !166)
!3565 = !DILocation(line: 361, column: 19, scope: !3546)
!3566 = !DILocation(line: 361, column: 25, scope: !3546)
!3567 = !DILocation(line: 361, column: 30, scope: !3546)
!3568 = !DILocalVariable(name: "cfi", scope: !3546, file: !3, line: 362, type: !2424)
!3569 = !DILocation(line: 362, column: 22, scope: !3546)
!3570 = !DILocation(line: 362, column: 28, scope: !3546)
!3571 = !DILocation(line: 362, column: 33, scope: !3546)
!3572 = !DILocalVariable(name: "adr", scope: !3546, file: !3, line: 363, type: !172)
!3573 = !DILocation(line: 363, column: 16, scope: !3546)
!3574 = !DILocalVariable(name: "chipnum", scope: !3546, file: !3, line: 364, type: !122)
!3575 = !DILocation(line: 364, column: 6, scope: !3546)
!3576 = !DILocalVariable(name: "ret", scope: !3546, file: !3, line: 364, type: !122)
!3577 = !DILocation(line: 364, column: 15, scope: !3546)
!3578 = !DILocalVariable(name: "i", scope: !3546, file: !3, line: 365, type: !122)
!3579 = !DILocation(line: 365, column: 6, scope: !3546)
!3580 = !DILocalVariable(name: "first", scope: !3546, file: !3, line: 365, type: !122)
!3581 = !DILocation(line: 365, column: 9, scope: !3546)
!3582 = !DILocalVariable(name: "regions", scope: !3546, file: !3, line: 366, type: !2256)
!3583 = !DILocation(line: 366, column: 32, scope: !3546)
!3584 = !DILocation(line: 366, column: 42, scope: !3546)
!3585 = !DILocation(line: 366, column: 47, scope: !3546)
!3586 = !DILocation(line: 372, column: 4, scope: !3546)
!3587 = !DILocation(line: 380, column: 2, scope: !3546)
!3588 = !DILocation(line: 380, column: 9, scope: !3546)
!3589 = !DILocation(line: 380, column: 13, scope: !3546)
!3590 = !DILocation(line: 380, column: 18, scope: !3546)
!3591 = !DILocation(line: 380, column: 11, scope: !3546)
!3592 = !DILocation(line: 380, column: 34, scope: !3546)
!3593 = !DILocation(line: 380, column: 37, scope: !3546)
!3594 = !DILocation(line: 380, column: 44, scope: !3546)
!3595 = !DILocation(line: 380, column: 52, scope: !3546)
!3596 = !DILocation(line: 380, column: 55, scope: !3546)
!3597 = !DILocation(line: 380, column: 41, scope: !3546)
!3598 = !DILocation(line: 0, scope: !3546)
!3599 = !DILocation(line: 381, column: 10, scope: !3546)
!3600 = distinct !{!3600, !3587, !3599}
!3601 = !DILocation(line: 382, column: 3, scope: !3546)
!3602 = !DILocation(line: 390, column: 6, scope: !3603)
!3603 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 390, column: 6)
!3604 = !DILocation(line: 390, column: 13, scope: !3603)
!3605 = !DILocation(line: 390, column: 21, scope: !3603)
!3606 = !DILocation(line: 390, column: 24, scope: !3603)
!3607 = !DILocation(line: 390, column: 33, scope: !3603)
!3608 = !DILocation(line: 390, column: 12, scope: !3603)
!3609 = !DILocation(line: 390, column: 10, scope: !3603)
!3610 = !DILocation(line: 390, column: 6, scope: !3546)
!3611 = !DILocation(line: 391, column: 3, scope: !3603)
!3612 = !DILocation(line: 394, column: 10, scope: !3546)
!3613 = !DILocation(line: 394, column: 8, scope: !3546)
!3614 = !DILocation(line: 400, column: 2, scope: !3546)
!3615 = !DILocation(line: 400, column: 9, scope: !3546)
!3616 = !DILocation(line: 400, column: 11, scope: !3546)
!3617 = !DILocation(line: 400, column: 16, scope: !3546)
!3618 = !DILocation(line: 400, column: 10, scope: !3546)
!3619 = !DILocation(line: 400, column: 32, scope: !3546)
!3620 = !DILocation(line: 400, column: 36, scope: !3546)
!3621 = !DILocation(line: 400, column: 42, scope: !3546)
!3622 = !DILocation(line: 400, column: 40, scope: !3546)
!3623 = !DILocation(line: 400, column: 50, scope: !3546)
!3624 = !DILocation(line: 400, column: 58, scope: !3546)
!3625 = !DILocation(line: 400, column: 61, scope: !3546)
!3626 = !DILocation(line: 400, column: 47, scope: !3546)
!3627 = !DILocation(line: 401, column: 4, scope: !3546)
!3628 = distinct !{!3628, !3614, !3627}
!3629 = !DILocation(line: 406, column: 3, scope: !3546)
!3630 = !DILocation(line: 408, column: 7, scope: !3631)
!3631 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 408, column: 6)
!3632 = !DILocation(line: 408, column: 13, scope: !3631)
!3633 = !DILocation(line: 408, column: 11, scope: !3631)
!3634 = !DILocation(line: 408, column: 21, scope: !3631)
!3635 = !DILocation(line: 408, column: 29, scope: !3631)
!3636 = !DILocation(line: 408, column: 32, scope: !3631)
!3637 = !DILocation(line: 408, column: 41, scope: !3631)
!3638 = !DILocation(line: 408, column: 20, scope: !3631)
!3639 = !DILocation(line: 408, column: 18, scope: !3631)
!3640 = !DILocation(line: 408, column: 6, scope: !3546)
!3641 = !DILocation(line: 409, column: 3, scope: !3631)
!3642 = !DILocation(line: 411, column: 12, scope: !3546)
!3643 = !DILocation(line: 411, column: 19, scope: !3546)
!3644 = !DILocation(line: 411, column: 24, scope: !3546)
!3645 = !DILocation(line: 411, column: 16, scope: !3546)
!3646 = !DILocation(line: 411, column: 10, scope: !3546)
!3647 = !DILocation(line: 412, column: 8, scope: !3546)
!3648 = !DILocation(line: 412, column: 15, scope: !3546)
!3649 = !DILocation(line: 412, column: 26, scope: !3546)
!3650 = !DILocation(line: 412, column: 31, scope: !3546)
!3651 = !DILocation(line: 412, column: 23, scope: !3546)
!3652 = !DILocation(line: 412, column: 14, scope: !3546)
!3653 = !DILocation(line: 412, column: 12, scope: !3546)
!3654 = !DILocation(line: 412, column: 6, scope: !3546)
!3655 = !DILocation(line: 414, column: 4, scope: !3546)
!3656 = !DILocation(line: 414, column: 3, scope: !3546)
!3657 = !DILocation(line: 416, column: 2, scope: !3546)
!3658 = !DILocation(line: 416, column: 8, scope: !3546)
!3659 = !DILocalVariable(name: "size", scope: !3660, file: !3, line: 417, type: !122)
!3660 = distinct !DILexicalBlock(scope: !3546, file: !3, line: 416, column: 13)
!3661 = !DILocation(line: 417, column: 7, scope: !3660)
!3662 = !DILocation(line: 417, column: 14, scope: !3660)
!3663 = !DILocation(line: 417, column: 22, scope: !3660)
!3664 = !DILocation(line: 417, column: 25, scope: !3660)
!3665 = !DILocation(line: 419, column: 11, scope: !3660)
!3666 = !DILocation(line: 419, column: 17, scope: !3660)
!3667 = !DILocation(line: 419, column: 23, scope: !3660)
!3668 = !DILocation(line: 419, column: 28, scope: !3660)
!3669 = !DILocation(line: 419, column: 34, scope: !3660)
!3670 = !DILocation(line: 419, column: 44, scope: !3660)
!3671 = !DILocation(line: 419, column: 49, scope: !3660)
!3672 = !DILocation(line: 419, column: 55, scope: !3660)
!3673 = !DILocation(line: 419, column: 9, scope: !3660)
!3674 = !DILocation(line: 419, column: 7, scope: !3660)
!3675 = !DILocation(line: 421, column: 7, scope: !3676)
!3676 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 421, column: 7)
!3677 = !DILocation(line: 421, column: 7, scope: !3660)
!3678 = !DILocation(line: 422, column: 11, scope: !3676)
!3679 = !DILocation(line: 422, column: 4, scope: !3676)
!3680 = !DILocation(line: 424, column: 10, scope: !3660)
!3681 = !DILocation(line: 424, column: 7, scope: !3660)
!3682 = !DILocation(line: 425, column: 10, scope: !3660)
!3683 = !DILocation(line: 425, column: 7, scope: !3660)
!3684 = !DILocation(line: 426, column: 10, scope: !3660)
!3685 = !DILocation(line: 426, column: 7, scope: !3660)
!3686 = !DILocation(line: 428, column: 7, scope: !3687)
!3687 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 428, column: 7)
!3688 = !DILocation(line: 428, column: 14, scope: !3687)
!3689 = !DILocation(line: 428, column: 22, scope: !3687)
!3690 = !DILocation(line: 428, column: 25, scope: !3687)
!3691 = !DILocation(line: 428, column: 34, scope: !3687)
!3692 = !DILocation(line: 428, column: 41, scope: !3687)
!3693 = !DILocation(line: 428, column: 49, scope: !3687)
!3694 = !DILocation(line: 428, column: 52, scope: !3687)
!3695 = !DILocation(line: 428, column: 39, scope: !3687)
!3696 = !DILocation(line: 428, column: 32, scope: !3687)
!3697 = !DILocation(line: 428, column: 11, scope: !3687)
!3698 = !DILocation(line: 428, column: 7, scope: !3660)
!3699 = !DILocation(line: 429, column: 5, scope: !3687)
!3700 = !DILocation(line: 429, column: 4, scope: !3687)
!3701 = !DILocation(line: 431, column: 7, scope: !3702)
!3702 = distinct !DILexicalBlock(scope: !3660, file: !3, line: 431, column: 7)
!3703 = !DILocation(line: 431, column: 14, scope: !3702)
!3704 = !DILocation(line: 431, column: 19, scope: !3702)
!3705 = !DILocation(line: 431, column: 11, scope: !3702)
!3706 = !DILocation(line: 431, column: 7, scope: !3660)
!3707 = !DILocation(line: 432, column: 8, scope: !3708)
!3708 = distinct !DILexicalBlock(scope: !3702, file: !3, line: 431, column: 30)
!3709 = !DILocation(line: 433, column: 11, scope: !3708)
!3710 = !DILocation(line: 435, column: 8, scope: !3711)
!3711 = distinct !DILexicalBlock(scope: !3708, file: !3, line: 435, column: 8)
!3712 = !DILocation(line: 435, column: 19, scope: !3711)
!3713 = !DILocation(line: 435, column: 24, scope: !3711)
!3714 = !DILocation(line: 435, column: 16, scope: !3711)
!3715 = !DILocation(line: 435, column: 8, scope: !3708)
!3716 = !DILocation(line: 436, column: 5, scope: !3711)
!3717 = !DILocation(line: 437, column: 3, scope: !3708)
!3718 = distinct !{!3718, !3657, !3719}
!3719 = !DILocation(line: 438, column: 2, scope: !3546)
!3720 = !DILocation(line: 440, column: 2, scope: !3546)
!3721 = !DILocation(line: 441, column: 1, scope: !3546)
!3722 = distinct !DISubprogram(name: "__arch_swab32", scope: !3723, file: !3723, line: 8, type: !2664, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3723 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!3724 = !DILocalVariable(name: "val", arg: 1, scope: !3722, file: !3723, line: 8, type: !96)
!3725 = !DILocation(line: 8, column: 61, scope: !3722)
!3726 = !DILocation(line: 10, column: 38, scope: !3722)
!3727 = !DILocation(line: 10, column: 2, scope: !3722)
!3728 = !{i32 428387}
!3729 = !DILocation(line: 11, column: 9, scope: !3722)
!3730 = !DILocation(line: 11, column: 2, scope: !3722)
!3731 = distinct !DISubprogram(name: "get_order", scope: !3732, file: !3732, line: 29, type: !3733, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3732 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3733 = !DISubroutineType(types: !3734)
!3734 = !{!122, !172}
!3735 = !DILocalVariable(name: "x", arg: 1, scope: !3736, file: !3737, line: 366, type: !177)
!3736 = distinct !DISubprogram(name: "fls64", scope: !3737, file: !3737, line: 366, type: !3738, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3737 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3738 = !DISubroutineType(types: !3739)
!3739 = !{!122, !177}
!3740 = !DILocation(line: 366, column: 40, scope: !3736, inlinedAt: !3741)
!3741 = distinct !DILocation(line: 46, column: 9, scope: !3731)
!3742 = !DILocalVariable(name: "bitpos", scope: !3736, file: !3737, line: 368, type: !122)
!3743 = !DILocation(line: 368, column: 6, scope: !3736, inlinedAt: !3741)
!3744 = !DILocalVariable(name: "size", arg: 1, scope: !3731, file: !3732, line: 29, type: !172)
!3745 = !DILocation(line: 29, column: 63, scope: !3731)
!3746 = !DILocation(line: 31, column: 27, scope: !3747)
!3747 = distinct !DILexicalBlock(scope: !3731, file: !3732, line: 31, column: 6)
!3748 = !DILocation(line: 31, column: 6, scope: !3747)
!3749 = !DILocation(line: 31, column: 6, scope: !3731)
!3750 = !DILocation(line: 32, column: 8, scope: !3751)
!3751 = distinct !DILexicalBlock(scope: !3752, file: !3732, line: 32, column: 7)
!3752 = distinct !DILexicalBlock(scope: !3747, file: !3732, line: 31, column: 34)
!3753 = !DILocation(line: 32, column: 7, scope: !3752)
!3754 = !DILocation(line: 33, column: 4, scope: !3751)
!3755 = !DILocation(line: 35, column: 7, scope: !3756)
!3756 = distinct !DILexicalBlock(scope: !3752, file: !3732, line: 35, column: 7)
!3757 = !DILocation(line: 35, column: 12, scope: !3756)
!3758 = !DILocation(line: 35, column: 7, scope: !3752)
!3759 = !DILocation(line: 36, column: 4, scope: !3756)
!3760 = !DILocation(line: 38, column: 10, scope: !3752)
!3761 = !DILocation(line: 38, column: 28, scope: !3752)
!3762 = !DILocation(line: 38, column: 41, scope: !3752)
!3763 = !DILocation(line: 38, column: 3, scope: !3752)
!3764 = !DILocation(line: 41, column: 6, scope: !3731)
!3765 = !DILocation(line: 42, column: 7, scope: !3731)
!3766 = !DILocation(line: 46, column: 15, scope: !3731)
!3767 = !DILocation(line: 374, column: 2, scope: !3736, inlinedAt: !3741)
!3768 = !DILocation(line: 376, column: 14, scope: !3736, inlinedAt: !3741)
!3769 = !{i32 308163}
!3770 = !DILocation(line: 377, column: 9, scope: !3736, inlinedAt: !3741)
!3771 = !DILocation(line: 377, column: 16, scope: !3736, inlinedAt: !3741)
!3772 = !DILocation(line: 46, column: 2, scope: !3731)
!3773 = !DILocation(line: 48, column: 1, scope: !3731)
!3774 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3775, file: !3775, line: 30, type: !3776, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3775 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3776 = !DISubroutineType(types: !3777)
!3777 = !{!122, !176}
!3778 = !DILocation(line: 366, column: 40, scope: !3736, inlinedAt: !3779)
!3779 = distinct !DILocation(line: 32, column: 9, scope: !3774)
!3780 = !DILocation(line: 368, column: 6, scope: !3736, inlinedAt: !3779)
!3781 = !DILocalVariable(name: "n", arg: 1, scope: !3774, file: !3775, line: 30, type: !176)
!3782 = !DILocation(line: 30, column: 21, scope: !3774)
!3783 = !DILocation(line: 32, column: 15, scope: !3774)
!3784 = !DILocation(line: 374, column: 2, scope: !3736, inlinedAt: !3779)
!3785 = !DILocation(line: 376, column: 14, scope: !3736, inlinedAt: !3779)
!3786 = !DILocation(line: 377, column: 9, scope: !3736, inlinedAt: !3779)
!3787 = !DILocation(line: 377, column: 16, scope: !3736, inlinedAt: !3779)
!3788 = !DILocation(line: 32, column: 18, scope: !3774)
!3789 = !DILocation(line: 32, column: 2, scope: !3774)
!3790 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3791, file: !3791, line: 137, type: !3792, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !123)
!3791 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3792 = !DISubroutineType(types: !3793)
!3793 = !{!102, !1203, !212, !369, !98}
!3794 = !DILocalVariable(name: "s", arg: 1, scope: !3790, file: !3791, line: 137, type: !1203)
!3795 = !DILocation(line: 137, column: 54, scope: !3790)
!3796 = !DILocalVariable(name: "object", arg: 2, scope: !3790, file: !3791, line: 137, type: !212)
!3797 = !DILocation(line: 137, column: 69, scope: !3790)
!3798 = !DILocalVariable(name: "size", arg: 3, scope: !3790, file: !3791, line: 138, type: !369)
!3799 = !DILocation(line: 138, column: 12, scope: !3790)
!3800 = !DILocalVariable(name: "flags", arg: 4, scope: !3790, file: !3791, line: 138, type: !98)
!3801 = !DILocation(line: 138, column: 24, scope: !3790)
!3802 = !DILocation(line: 140, column: 17, scope: !3790)
!3803 = !DILocation(line: 140, column: 2, scope: !3790)
