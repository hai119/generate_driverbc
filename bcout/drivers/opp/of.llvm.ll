; ModuleID = '../bcout/drivers/opp/of.llvm.bc'
source_filename = "drivers/opp/of.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.cpumask = type { [1 x i64] }
%struct.kmem_cache = type opaque
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.device_node = type { i8*, i32, i8*, %struct.fwnode_handle, %struct.property*, %struct.property*, %struct.device_node*, %struct.device_node*, %struct.device_node*, %struct.kobject, i64, i8* }
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.property = type { i8*, i32, i8*, %struct.property*, %struct.bin_attribute }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.attribute = type { i8*, i16 }
%struct.file = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.36, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.rb_root = type { %struct.rb_node* }
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
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
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.36 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kobject = type { i8*, %struct.list_head, %struct.kobject*, %struct.kset*, %struct.kobj_type*, %struct.kernfs_node*, %struct.kref, i8 }
%struct.kset = type { %struct.list_head, %struct.spinlock, %struct.kobject, %struct.kset_uevent_ops* }
%struct.kset_uevent_ops = type { i32 (%struct.kset*, %struct.kobject*)*, i8* (%struct.kset*, %struct.kobject*)*, i32 (%struct.kset*, %struct.kobject*, %struct.kobj_uevent_env*)* }
%struct.kobj_uevent_env = type { [3 x i8*], [64 x i8*], i32, [2048 x i8], i32 }
%struct.kobj_type = type { void (%struct.kobject*)*, %struct.sysfs_ops*, %struct.attribute**, %struct.attribute_group**, %struct.kobj_ns_type_operations* (%struct.kobject*)*, i8* (%struct.kobject*)*, void (%struct.kobject*, %struct.kuid_t*, %struct.kgid_t*)* }
%struct.sysfs_ops = type { i64 (%struct.kobject*, %struct.attribute*, i8*)*, i64 (%struct.kobject*, %struct.attribute*, i8*, i64)* }
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.kobj_ns_type_operations = type { i32, i1 ()*, i8* ()*, i8* (%struct.sock*)*, i8* ()*, void (i8*)* }
%struct.sock = type opaque
%struct.kuid_t = type { i32 }
%struct.kgid_t = type { i32 }
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
%struct.device = type { %struct.kobject, %struct.device*, %struct.device_private*, i8*, %struct.device_type*, %struct.bus_type*, %struct.device_driver*, i8*, i8*, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, %struct.dev_pm_domain*, %struct.irq_domain*, %struct.list_head, %struct.dma_map_ops*, i64*, i64, i64, %struct.bus_dma_region*, %struct.device_dma_parameters*, %struct.list_head, %struct.dev_archdata, %struct.device_node*, %struct.fwnode_handle*, i32, i32, %struct.spinlock, %struct.list_head, %struct.class*, %struct.attribute_group**, void (%struct.device*)*, %struct.iommu_group*, %struct.dev_iommu*, i8 }
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
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, i8, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, %struct.wakeup_source*, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, %struct.wake_irq*, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i64, i64, i64, i64, %struct.pm_subsys_data*, void (%struct.device*, i32)*, %struct.dev_pm_qos* }
%struct.pm_message = type { i32 }
%struct.wakeup_source = type { i8*, i32, %struct.list_head, %struct.spinlock, %struct.wake_irq*, %struct.timer_list, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, %struct.device*, i8 }
%struct.timer_list = type { %struct.hlist_node, i64, void (%struct.timer_list*)*, i32 }
%struct.wake_irq = type opaque
%struct.pm_subsys_data = type { %struct.spinlock, i32, %struct.list_head, %struct.pm_domain_data* }
%struct.pm_domain_data = type { %struct.list_head, %struct.device* }
%struct.dev_pm_qos = type opaque
%struct.dev_pm_domain = type { %struct.dev_pm_ops, i32 (%struct.device*)*, void (%struct.device*, i1)*, i32 (%struct.device*)*, void (%struct.device*)*, void (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.opp_table = type { %struct.list_head, %struct.blocking_notifier_head, %struct.list_head, %struct.list_head, %struct.kref, %struct.mutex, %struct.device_node*, i64, i32, i32, i32, %struct.dev_pm_opp*, %struct.mutex, %struct.device**, %struct.opp_table**, i32, i32*, i32, i8*, %struct.clk*, %struct.regulator**, i32, %struct.icc_path**, i32, i8, i8, i8, i32 (%struct.dev_pm_set_opp_data*)*, %struct.dev_pm_set_opp_data* }
%struct.blocking_notifier_head = type { %struct.rw_semaphore, %struct.notifier_block* }
%struct.notifier_block = type { i32 (%struct.notifier_block*, i64, i8*)*, %struct.notifier_block*, i32 }
%struct.dev_pm_opp = type { %struct.list_head, %struct.kref, i8, i8, i8, i8, i32, i64, i32, %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_icc_bw*, i64, %struct.dev_pm_opp**, %struct.opp_table*, %struct.device_node* }
%struct.dev_pm_opp_supply = type { i64, i64, i64, i64 }
%struct.dev_pm_opp_icc_bw = type { i32, i32 }
%struct.clk = type opaque
%struct.regulator = type opaque
%struct.icc_path = type opaque
%struct.dev_pm_set_opp_data = type { %struct.dev_pm_opp_info, %struct.dev_pm_opp_info, %struct.regulator**, i32, %struct.clk*, %struct.device* }
%struct.dev_pm_opp_info = type { i64, %struct.dev_pm_opp_supply* }
%struct.em_data_callback = type {}

@opp_tables = external dso_local global %struct.list_head, align 8
@.str = private unnamed_addr constant [14 x i8] c"clock-latency\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"voltage-tolerance\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"#power-domain-cells\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"opp-shared\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"interconnects\00", align 1
@.str.5 = private unnamed_addr constant [20 x i8] c"#interconnect-cells\00", align 1
@.str.6 = private unnamed_addr constant [34 x i8] c"%s: Invalid interconnects values\0A\00", align 1
@__func__.dev_pm_opp_of_find_icc_paths = private unnamed_addr constant [29 x i8] c"dev_pm_opp_of_find_icc_paths\00", align 1
@.str.7 = private unnamed_addr constant [30 x i8] c"%s: Unable to get path%d: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [20 x i8] c"operating-points-v2\00", align 1
@.str.9 = private unnamed_addr constant [17 x i8] c"drivers/opp/of.c\00", align 1
@.str.10 = private unnamed_addr constant [38 x i8] c"\013of: %s: failed to get cpu%d device\0A\00", align 1
@__func__.dev_pm_opp_of_cpumask_add_table = private unnamed_addr constant [32 x i8] c"dev_pm_opp_of_cpumask_add_table\00", align 1
@.str.11 = private unnamed_addr constant [30 x i8] c"%s: failed to get cpu%d node\0A\00", align 1
@__func__.dev_pm_opp_of_get_sharing_cpus = private unnamed_addr constant [31 x i8] c"dev_pm_opp_of_get_sharing_cpus\00", align 1
@.str.12 = private unnamed_addr constant [36 x i8] c"\013of: %pOF: Couldn't find opp node\0A\00", align 1
@__cpu_possible_mask = external dso_local global %struct.cpumask, align 8
@.str.13 = private unnamed_addr constant [55 x i8] c"\013of: %s: Failed to find required OPP table %pOF: %ld\0A\00", align 1
@__func__.of_get_required_opp_performance_state = private unnamed_addr constant [38 x i8] c"of_get_required_opp_performance_state\00", align 1
@.str.14 = private unnamed_addr constant [30 x i8] c"\013of: %s: Invalid parameters\0A\00", align 1
@__func__.dev_pm_opp_get_of_node = private unnamed_addr constant [23 x i8] c"dev_pm_opp_get_of_node\00", align 1
@.str.15 = private unnamed_addr constant [26 x i8] c"dynamic-power-coefficient\00", align 1
@.str.16 = private unnamed_addr constant [17 x i8] c"Empty OPP table\0A\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"required-opps\00", align 1
@.str.18 = private unnamed_addr constant [44 x i8] c"required-opp doesn't belong to genpd: %pOF\0A\00", align 1
@.str.19 = private unnamed_addr constant [17 x i8] c"OPP table empty\0A\00", align 1
@.str.20 = private unnamed_addr constant [14 x i8] c"opp-peak-kBps\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.21 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"%s: Failed to add OPP, %d\0A\00", align 1
@__func__._of_add_opp_table_v2 = private unnamed_addr constant [21 x i8] c"_of_add_opp_table_v2\00", align 1
@.str.23 = private unnamed_addr constant [29 x i8] c"%s: opp key field not found\0A\00", align 1
@__func__._opp_add_static_v2 = private unnamed_addr constant [19 x i8] c"_opp_add_static_v2\00", align 1
@.str.24 = private unnamed_addr constant [11 x i8] c"turbo-mode\00", align 1
@.str.25 = private unnamed_addr constant [17 x i8] c"clock-latency-ns\00", align 1
@.str.26 = private unnamed_addr constant [12 x i8] c"opp-suspend\00", align 1
@.str.27 = private unnamed_addr constant [7 x i8] c"opp-hz\00", align 1
@.str.28 = private unnamed_addr constant [10 x i8] c"opp-level\00", align 1
@.str.29 = private unnamed_addr constant [13 x i8] c"opp-avg-kBps\00", align 1
@.str.30 = private unnamed_addr constant [49 x i8] c"\013of: %s: Mismatch between %s and paths (%d %d)\0A\00", align 1
@__func__._read_bw = private unnamed_addr constant [9 x i8] c"_read_bw\00", align 1
@.str.31 = private unnamed_addr constant [32 x i8] c"\013of: %s: Error parsing %s: %d\0A\00", align 1
@.str.32 = private unnamed_addr constant [17 x i8] c"opp-supported-hw\00", align 1
@.str.33 = private unnamed_addr constant [44 x i8] c"%s: Invalid opp-supported-hw property (%d)\0A\00", align 1
@__func__._opp_is_supported = private unnamed_addr constant [18 x i8] c"_opp_is_supported\00", align 1
@.str.34 = private unnamed_addr constant [62 x i8] c"%s: failed to read opp-supported-hw property at index %d: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [55 x i8] c"\013of: %s: Unable to find required OPP node: %pOF (%d)\0A\00", align 1
@__func__._of_opp_alloc_required_opps = private unnamed_addr constant [28 x i8] c"_of_opp_alloc_required_opps\00", align 1
@.str.36 = private unnamed_addr constant [17 x i8] c"opp-microvolt-%s\00", align 1
@.str.37 = private unnamed_addr constant [14 x i8] c"opp-microvolt\00", align 1
@.str.38 = private unnamed_addr constant [60 x i8] c"%s: opp-microvolt missing although OPP managing regulators\0A\00", align 1
@__func__.opp_parse_supplies = private unnamed_addr constant [19 x i8] c"opp_parse_supplies\00", align 1
@.str.39 = private unnamed_addr constant [35 x i8] c"%s: opp-microvolt wasn't expected\0A\00", align 1
@.str.40 = private unnamed_addr constant [30 x i8] c"%s: Invalid %s property (%d)\0A\00", align 1
@.str.41 = private unnamed_addr constant [71 x i8] c"%s: Invalid number of elements in %s property (%d) with supplies (%d)\0A\00", align 1
@.str.42 = private unnamed_addr constant [26 x i8] c"%s: error parsing %s: %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"opp-microamp-%s\00", align 1
@.str.44 = private unnamed_addr constant [13 x i8] c"opp-microamp\00", align 1
@.str.45 = private unnamed_addr constant [17 x i8] c"operating-points\00", align 1
@.str.46 = private unnamed_addr constant [23 x i8] c"%s: Invalid OPP table\0A\00", align 1
@__func__._of_add_opp_table_v1 = private unnamed_addr constant [21 x i8] c"_of_add_opp_table_v1\00", align 1
@.str.47 = private unnamed_addr constant [32 x i8] c"%s: Failed to add OPP %ld (%d)\0A\00", align 1
@.str.48 = private unnamed_addr constant [58 x i8] c"\013of: %s: Unable to parse required-opps: %pOF, index: %d\0A\00", align 1
@__func__.of_parse_required_opp = private unnamed_addr constant [22 x i8] c"of_parse_required_opp\00", align 1
@opp_table_lock = external dso_local global %struct.mutex, align 8

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @dev_pm_opp_of_get_opp_desc_node(%struct.device* %dev) #0 !dbg !2156 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2159, metadata !DIExpression()), !dbg !2160
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2161
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !2162
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2162
  %call = call %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %1, i32 0) #7, !dbg !2163
  ret %struct.device_node* %call, !dbg !2164
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %np, i32 %index) #0 !dbg !2165 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2168, metadata !DIExpression()), !dbg !2169
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2170, metadata !DIExpression()), !dbg !2171
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2172
  %1 = load i32, i32* %index.addr, align 4, !dbg !2173
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i32 %1) #7, !dbg !2174
  ret %struct.device_node* %call, !dbg !2175
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.opp_table* @_managed_opp(%struct.device* %dev, i32 %index) #0 !dbg !2176 {
entry:
  %retval = alloca %struct.opp_table*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %index.addr = alloca i32, align 4
  %opp_table = alloca %struct.opp_table*, align 8
  %managed_table = alloca %struct.opp_table*, align 8
  %np = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.opp_table*, align 8
  %__mptr8 = alloca i8*, align 8
  %tmp12 = alloca %struct.opp_table*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2179, metadata !DIExpression()), !dbg !2180
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2181, metadata !DIExpression()), !dbg !2182
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table, metadata !2183, metadata !DIExpression()), !dbg !2184
  call void @llvm.dbg.declare(metadata %struct.opp_table** %managed_table, metadata !2185, metadata !DIExpression()), !dbg !2186
  store %struct.opp_table* null, %struct.opp_table** %managed_table, align 8, !dbg !2186
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2187, metadata !DIExpression()), !dbg !2188
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2189
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !2190
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2190
  %2 = load i32, i32* %index.addr, align 4, !dbg !2191
  %call = call %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %1, i32 %2) #7, !dbg !2192
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2193
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2194
  %tobool = icmp ne %struct.device_node* %3, null, !dbg !2194
  br i1 %tobool, label %if.end, label %if.then, !dbg !2196

if.then:                                          ; preds = %entry
  store %struct.opp_table* null, %struct.opp_table** %retval, align 8, !dbg !2197
  br label %return, !dbg !2197

if.end:                                           ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2198, metadata !DIExpression()), !dbg !2201
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @opp_tables, i32 0, i32 0), align 8, !dbg !2201
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2201
  store i8* %5, i8** %__mptr, align 8, !dbg !2201
  br label %do.body, !dbg !2201

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2202

do.end:                                           ; preds = %do.body
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2201
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !2201
  %7 = bitcast i8* %add.ptr to %struct.opp_table*, !dbg !2201
  store %struct.opp_table* %7, %struct.opp_table** %tmp, align 8, !dbg !2202
  %8 = load %struct.opp_table*, %struct.opp_table** %tmp, align 8, !dbg !2201
  store %struct.opp_table* %8, %struct.opp_table** %opp_table, align 8, !dbg !2204
  br label %for.cond, !dbg !2204

for.cond:                                         ; preds = %do.end11, %do.end
  %9 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2205
  %node = getelementptr inbounds %struct.opp_table, %struct.opp_table* %9, i32 0, i32 0, !dbg !2205
  %cmp = icmp eq %struct.list_head* %node, @opp_tables, !dbg !2205
  %lnot = xor i1 %cmp, true, !dbg !2205
  br i1 %lnot, label %for.body, label %for.end, !dbg !2204

for.body:                                         ; preds = %for.cond
  %10 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2207
  %np1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %10, i32 0, i32 6, !dbg !2210
  %11 = load %struct.device_node*, %struct.device_node** %np1, align 8, !dbg !2210
  %12 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2211
  %cmp2 = icmp eq %struct.device_node* %11, %12, !dbg !2212
  br i1 %cmp2, label %if.then3, label %if.end7, !dbg !2213

if.then3:                                         ; preds = %for.body
  %13 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2214
  %shared_opp = getelementptr inbounds %struct.opp_table, %struct.opp_table* %13, i32 0, i32 10, !dbg !2217
  %14 = load i32, i32* %shared_opp, align 8, !dbg !2217
  %cmp4 = icmp eq i32 %14, 2, !dbg !2218
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !2219

if.then5:                                         ; preds = %if.then3
  %15 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2220
  call void @_get_opp_table_kref(%struct.opp_table* %15) #7, !dbg !2222
  %16 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2223
  store %struct.opp_table* %16, %struct.opp_table** %managed_table, align 8, !dbg !2224
  br label %if.end6, !dbg !2225

if.end6:                                          ; preds = %if.then5, %if.then3
  br label %for.end, !dbg !2226

if.end7:                                          ; preds = %for.body
  br label %for.inc, !dbg !2227

for.inc:                                          ; preds = %if.end7
  call void @llvm.dbg.declare(metadata i8** %__mptr8, metadata !2228, metadata !DIExpression()), !dbg !2230
  %17 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2230
  %node9 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %17, i32 0, i32 0, !dbg !2230
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node9, i32 0, i32 0, !dbg !2230
  %18 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2230
  %19 = bitcast %struct.list_head* %18 to i8*, !dbg !2230
  store i8* %19, i8** %__mptr8, align 8, !dbg !2230
  br label %do.body10, !dbg !2230

do.body10:                                        ; preds = %for.inc
  br label %do.end11, !dbg !2231

do.end11:                                         ; preds = %do.body10
  %20 = load i8*, i8** %__mptr8, align 8, !dbg !2230
  %add.ptr13 = getelementptr i8, i8* %20, i64 0, !dbg !2230
  %21 = bitcast i8* %add.ptr13 to %struct.opp_table*, !dbg !2230
  store %struct.opp_table* %21, %struct.opp_table** %tmp12, align 8, !dbg !2231
  %22 = load %struct.opp_table*, %struct.opp_table** %tmp12, align 8, !dbg !2230
  store %struct.opp_table* %22, %struct.opp_table** %opp_table, align 8, !dbg !2205
  br label %for.cond, !dbg !2205, !llvm.loop !2233

for.end:                                          ; preds = %if.end6, %for.cond
  %23 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2235
  call void @of_node_put(%struct.device_node* %23) #7, !dbg !2236
  %24 = load %struct.opp_table*, %struct.opp_table** %managed_table, align 8, !dbg !2237
  store %struct.opp_table* %24, %struct.opp_table** %retval, align 8, !dbg !2238
  br label %return, !dbg !2238

return:                                           ; preds = %for.end, %if.then
  %25 = load %struct.opp_table*, %struct.opp_table** %retval, align 8, !dbg !2239
  ret %struct.opp_table* %25, !dbg !2239
}

; Function Attrs: noredzone
declare dso_local void @_get_opp_table_kref(%struct.opp_table*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2240 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2243, metadata !DIExpression()), !dbg !2244
  ret void, !dbg !2245
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @_of_init_opp_table(%struct.opp_table* %opp_table, %struct.device* %dev, i32 %index) #0 !dbg !2246 {
entry:
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %index.addr = alloca i32, align 4
  %np = alloca %struct.device_node*, align 8
  %opp_np = alloca %struct.device_node*, align 8
  %val = alloca i32, align 4
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2249, metadata !DIExpression()), !dbg !2250
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2251, metadata !DIExpression()), !dbg !2252
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2253, metadata !DIExpression()), !dbg !2254
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2255, metadata !DIExpression()), !dbg !2256
  call void @llvm.dbg.declare(metadata %struct.device_node** %opp_np, metadata !2257, metadata !DIExpression()), !dbg !2258
  call void @llvm.dbg.declare(metadata i32* %val, metadata !2259, metadata !DIExpression()), !dbg !2260
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2261
  %of_node = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 23, !dbg !2262
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2262
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %1) #7, !dbg !2263
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2264
  %2 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2265
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !2265
  br i1 %tobool, label %if.end, label %if.then, !dbg !2267

if.then:                                          ; preds = %entry
  br label %return, !dbg !2268

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2269
  %call1 = call i32 @of_property_read_u32(%struct.device_node* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32* %val) #7, !dbg !2271
  %tobool2 = icmp ne i32 %call1, 0, !dbg !2271
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2272

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %val, align 4, !dbg !2273
  %conv = zext i32 %4 to i64, !dbg !2273
  %5 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2274
  %clock_latency_ns_max = getelementptr inbounds %struct.opp_table, %struct.opp_table* %5, i32 0, i32 7, !dbg !2275
  store i64 %conv, i64* %clock_latency_ns_max, align 8, !dbg !2276
  br label %if.end4, !dbg !2274

if.end4:                                          ; preds = %if.then3, %if.end
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2277
  %7 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2278
  %voltage_tolerance_v1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %7, i32 0, i32 8, !dbg !2279
  %call5 = call i32 @of_property_read_u32(%struct.device_node* %6, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32* %voltage_tolerance_v1) #7, !dbg !2280
  %8 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2281
  %call6 = call %struct.property* @of_find_property(%struct.device_node* %8, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0), i32* null) #7, !dbg !2283
  %tobool7 = icmp ne %struct.property* %call6, null, !dbg !2283
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2284

if.then8:                                         ; preds = %if.end4
  %9 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2285
  %is_genpd = getelementptr inbounds %struct.opp_table, %struct.opp_table* %9, i32 0, i32 26, !dbg !2286
  store i8 1, i8* %is_genpd, align 2, !dbg !2287
  br label %if.end9, !dbg !2285

if.end9:                                          ; preds = %if.then8, %if.end4
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2288
  %11 = load i32, i32* %index.addr, align 4, !dbg !2289
  %call10 = call %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %10, i32 %11) #7, !dbg !2290
  store %struct.device_node* %call10, %struct.device_node** %opp_np, align 8, !dbg !2291
  %12 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2292
  call void @of_node_put(%struct.device_node* %12) #7, !dbg !2293
  %13 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2294
  %tobool11 = icmp ne %struct.device_node* %13, null, !dbg !2294
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2296

if.then12:                                        ; preds = %if.end9
  br label %return, !dbg !2297

if.end13:                                         ; preds = %if.end9
  %14 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2298
  %call14 = call zeroext i1 @of_property_read_bool(%struct.device_node* %14, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !2300
  br i1 %call14, label %if.then15, label %if.else, !dbg !2301

if.then15:                                        ; preds = %if.end13
  %15 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2302
  %shared_opp = getelementptr inbounds %struct.opp_table, %struct.opp_table* %15, i32 0, i32 10, !dbg !2303
  store i32 2, i32* %shared_opp, align 8, !dbg !2304
  br label %if.end17, !dbg !2302

if.else:                                          ; preds = %if.end13
  %16 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2305
  %shared_opp16 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %16, i32 0, i32 10, !dbg !2306
  store i32 1, i32* %shared_opp16, align 8, !dbg !2307
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %17 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2308
  %18 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2309
  %np18 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %18, i32 0, i32 6, !dbg !2310
  store %struct.device_node* %17, %struct.device_node** %np18, align 8, !dbg !2311
  %19 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2312
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2313
  %21 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2314
  call void @_opp_table_alloc_required_tables(%struct.opp_table* %19, %struct.device* %20, %struct.device_node* %21) #7, !dbg !2315
  %22 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2316
  call void @of_node_put(%struct.device_node* %22) #7, !dbg !2317
  br label %return, !dbg !2318

return:                                           ; preds = %if.end17, %if.then12, %if.then
  ret void, !dbg !2318
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_node_get(%struct.device_node* %node) #0 !dbg !2319 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2322, metadata !DIExpression()), !dbg !2323
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2324
  ret %struct.device_node* %0, !dbg !2325
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2326 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2335, metadata !DIExpression()), !dbg !2336
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2337
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2338
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2339
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #7, !dbg !2340
  ret i32 %call, !dbg !2341
}

; Function Attrs: noredzone
declare dso_local %struct.property* @of_find_property(%struct.device_node*, i8*, i32*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @of_property_read_bool(%struct.device_node* %np, i8* %propname) #0 !dbg !2342 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2345, metadata !DIExpression()), !dbg !2346
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2347, metadata !DIExpression()), !dbg !2348
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2349, metadata !DIExpression()), !dbg !2350
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2351
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2352
  %call = call %struct.property* @of_find_property(%struct.device_node* %0, i8* %1, i32* null) #7, !dbg !2353
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !2350
  %2 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2354
  %tobool = icmp ne %struct.property* %2, null, !dbg !2354
  %3 = zext i1 %tobool to i64, !dbg !2354
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !2354
  %tobool1 = icmp ne i32 %cond, 0, !dbg !2354
  ret i1 %tobool1, !dbg !2355
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @_opp_table_alloc_required_tables(%struct.opp_table* %opp_table, %struct.device* %dev, %struct.device_node* %opp_np) #0 !dbg !2356 {
entry:
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %opp_np.addr = alloca %struct.device_node*, align 8
  %required_opp_tables = alloca %struct.opp_table**, align 8
  %required_np = alloca %struct.device_node*, align 8
  %np = alloca %struct.device_node*, align 8
  %count = alloca i32, align 4
  %i = alloca i32, align 4
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2359, metadata !DIExpression()), !dbg !2360
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2361, metadata !DIExpression()), !dbg !2362
  store %struct.device_node* %opp_np, %struct.device_node** %opp_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %opp_np.addr, metadata !2363, metadata !DIExpression()), !dbg !2364
  call void @llvm.dbg.declare(metadata %struct.opp_table*** %required_opp_tables, metadata !2365, metadata !DIExpression()), !dbg !2366
  call void @llvm.dbg.declare(metadata %struct.device_node** %required_np, metadata !2367, metadata !DIExpression()), !dbg !2368
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2369, metadata !DIExpression()), !dbg !2370
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2371, metadata !DIExpression()), !dbg !2372
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2373, metadata !DIExpression()), !dbg !2374
  %0 = load %struct.device_node*, %struct.device_node** %opp_np.addr, align 8, !dbg !2375
  %call = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %0, %struct.device_node* null) #7, !dbg !2376
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2377
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2378
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !2378
  br i1 %tobool, label %if.end, label %if.then, !dbg !2380

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2381
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %2, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.16, i64 0, i64 0)) #8, !dbg !2381
  br label %return, !dbg !2383

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2384
  %call1 = call i32 @of_count_phandle_with_args(%struct.device_node* %3, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i8* null) #7, !dbg !2385
  store i32 %call1, i32* %count, align 4, !dbg !2386
  %4 = load i32, i32* %count, align 4, !dbg !2387
  %tobool2 = icmp ne i32 %4, 0, !dbg !2387
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2389

if.then3:                                         ; preds = %if.end
  br label %put_np, !dbg !2390

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %count, align 4, !dbg !2391
  %conv = sext i32 %5 to i64, !dbg !2391
  %call5 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #7, !dbg !2392
  %6 = bitcast i8* %call5 to %struct.opp_table**, !dbg !2392
  store %struct.opp_table** %6, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2393
  %7 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2394
  %tobool6 = icmp ne %struct.opp_table** %7, null, !dbg !2394
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2396

if.then7:                                         ; preds = %if.end4
  br label %put_np, !dbg !2397

if.end8:                                          ; preds = %if.end4
  %8 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2398
  %9 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2399
  %required_opp_tables9 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %9, i32 0, i32 14, !dbg !2400
  store %struct.opp_table** %8, %struct.opp_table*** %required_opp_tables9, align 8, !dbg !2401
  %10 = load i32, i32* %count, align 4, !dbg !2402
  %11 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2403
  %required_opp_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %11, i32 0, i32 15, !dbg !2404
  store i32 %10, i32* %required_opp_count, align 8, !dbg !2405
  store i32 0, i32* %i, align 4, !dbg !2406
  br label %for.cond, !dbg !2408

for.cond:                                         ; preds = %for.inc, %if.end8
  %12 = load i32, i32* %i, align 4, !dbg !2409
  %13 = load i32, i32* %count, align 4, !dbg !2411
  %cmp = icmp slt i32 %12, %13, !dbg !2412
  br i1 %cmp, label %for.body, label %for.end, !dbg !2413

for.body:                                         ; preds = %for.cond
  %14 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2414
  %15 = load i32, i32* %i, align 4, !dbg !2416
  %call11 = call %struct.device_node* @of_parse_required_opp(%struct.device_node* %14, i32 %15) #7, !dbg !2417
  store %struct.device_node* %call11, %struct.device_node** %required_np, align 8, !dbg !2418
  %16 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !2419
  %tobool12 = icmp ne %struct.device_node* %16, null, !dbg !2419
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2421

if.then13:                                        ; preds = %for.body
  br label %free_required_tables, !dbg !2422

if.end14:                                         ; preds = %for.body
  %17 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !2423
  %call15 = call %struct.opp_table* @_find_table_of_opp_np(%struct.device_node* %17) #7, !dbg !2424
  %18 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2425
  %19 = load i32, i32* %i, align 4, !dbg !2426
  %idxprom = sext i32 %19 to i64, !dbg !2425
  %arrayidx = getelementptr %struct.opp_table*, %struct.opp_table** %18, i64 %idxprom, !dbg !2425
  store %struct.opp_table* %call15, %struct.opp_table** %arrayidx, align 8, !dbg !2427
  %20 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !2428
  call void @of_node_put(%struct.device_node* %20) #7, !dbg !2429
  %21 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2430
  %22 = load i32, i32* %i, align 4, !dbg !2432
  %idxprom16 = sext i32 %22 to i64, !dbg !2430
  %arrayidx17 = getelementptr %struct.opp_table*, %struct.opp_table** %21, i64 %idxprom16, !dbg !2430
  %23 = load %struct.opp_table*, %struct.opp_table** %arrayidx17, align 8, !dbg !2430
  %24 = bitcast %struct.opp_table* %23 to i8*, !dbg !2430
  %call18 = call zeroext i1 @IS_ERR(i8* %24) #7, !dbg !2433
  br i1 %call18, label %if.then19, label %if.end20, !dbg !2434

if.then19:                                        ; preds = %if.end14
  br label %free_required_tables, !dbg !2435

if.end20:                                         ; preds = %if.end14
  %25 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2436
  %26 = load i32, i32* %i, align 4, !dbg !2438
  %idxprom21 = sext i32 %26 to i64, !dbg !2436
  %arrayidx22 = getelementptr %struct.opp_table*, %struct.opp_table** %25, i64 %idxprom21, !dbg !2436
  %27 = load %struct.opp_table*, %struct.opp_table** %arrayidx22, align 8, !dbg !2436
  %is_genpd = getelementptr inbounds %struct.opp_table, %struct.opp_table* %27, i32 0, i32 26, !dbg !2439
  %28 = load i8, i8* %is_genpd, align 2, !dbg !2439
  %tobool23 = trunc i8 %28 to i1, !dbg !2439
  br i1 %tobool23, label %if.end25, label %if.then24, !dbg !2440

if.then24:                                        ; preds = %if.end20
  %29 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2441
  %30 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !2441
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %29, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.18, i64 0, i64 0), %struct.device_node* %30) #8, !dbg !2441
  br label %free_required_tables, !dbg !2443

if.end25:                                         ; preds = %if.end20
  br label %for.inc, !dbg !2444

for.inc:                                          ; preds = %if.end25
  %31 = load i32, i32* %i, align 4, !dbg !2445
  %inc = add i32 %31, 1, !dbg !2445
  store i32 %inc, i32* %i, align 4, !dbg !2445
  br label %for.cond, !dbg !2446, !llvm.loop !2447

for.end:                                          ; preds = %for.cond
  br label %put_np, !dbg !2449

free_required_tables:                             ; preds = %if.then24, %if.then19, %if.then13
  call void @llvm.dbg.label(metadata !2450), !dbg !2451
  %32 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2452
  call void @_opp_table_free_required_tables(%struct.opp_table* %32) #7, !dbg !2453
  br label %put_np, !dbg !2453

put_np:                                           ; preds = %free_required_tables, %for.end, %if.then7, %if.then3
  call void @llvm.dbg.label(metadata !2454), !dbg !2455
  %33 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2456
  call void @of_node_put(%struct.device_node* %33) #7, !dbg !2457
  br label %return, !dbg !2458

return:                                           ; preds = %put_np, %if.then
  ret void, !dbg !2458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @_of_clear_opp_table(%struct.opp_table* %opp_table) #0 !dbg !2459 {
entry:
  %opp_table.addr = alloca %struct.opp_table*, align 8
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2462, metadata !DIExpression()), !dbg !2463
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2464
  call void @_opp_table_free_required_tables(%struct.opp_table* %0) #7, !dbg !2465
  ret void, !dbg !2466
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @_opp_table_free_required_tables(%struct.opp_table* %opp_table) #0 !dbg !2467 {
entry:
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %required_opp_tables = alloca %struct.opp_table**, align 8
  %i = alloca i32, align 4
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2468, metadata !DIExpression()), !dbg !2469
  call void @llvm.dbg.declare(metadata %struct.opp_table*** %required_opp_tables, metadata !2470, metadata !DIExpression()), !dbg !2471
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2472
  %required_opp_tables1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 14, !dbg !2473
  %1 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables1, align 8, !dbg !2473
  store %struct.opp_table** %1, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2471
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2474, metadata !DIExpression()), !dbg !2475
  %2 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2476
  %tobool = icmp ne %struct.opp_table** %2, null, !dbg !2476
  br i1 %tobool, label %if.end, label %if.then, !dbg !2478

if.then:                                          ; preds = %entry
  br label %return, !dbg !2479

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2480
  br label %for.cond, !dbg !2482

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !2483
  %4 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2485
  %required_opp_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %4, i32 0, i32 15, !dbg !2486
  %5 = load i32, i32* %required_opp_count, align 8, !dbg !2486
  %cmp = icmp ult i32 %3, %5, !dbg !2487
  br i1 %cmp, label %for.body, label %for.end, !dbg !2488

for.body:                                         ; preds = %for.cond
  %6 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2489
  %7 = load i32, i32* %i, align 4, !dbg !2492
  %idxprom = sext i32 %7 to i64, !dbg !2489
  %arrayidx = getelementptr %struct.opp_table*, %struct.opp_table** %6, i64 %idxprom, !dbg !2489
  %8 = load %struct.opp_table*, %struct.opp_table** %arrayidx, align 8, !dbg !2489
  %9 = bitcast %struct.opp_table* %8 to i8*, !dbg !2489
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %9) #7, !dbg !2493
  br i1 %call, label %if.then2, label %if.end3, !dbg !2494

if.then2:                                         ; preds = %for.body
  br label %for.end, !dbg !2495

if.end3:                                          ; preds = %for.body
  %10 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2496
  %11 = load i32, i32* %i, align 4, !dbg !2497
  %idxprom4 = sext i32 %11 to i64, !dbg !2496
  %arrayidx5 = getelementptr %struct.opp_table*, %struct.opp_table** %10, i64 %idxprom4, !dbg !2496
  %12 = load %struct.opp_table*, %struct.opp_table** %arrayidx5, align 8, !dbg !2496
  call void @dev_pm_opp_put_opp_table(%struct.opp_table* %12) #7, !dbg !2498
  br label %for.inc, !dbg !2499

for.inc:                                          ; preds = %if.end3
  %13 = load i32, i32* %i, align 4, !dbg !2500
  %inc = add i32 %13, 1, !dbg !2500
  store i32 %inc, i32* %i, align 4, !dbg !2500
  br label %for.cond, !dbg !2501, !llvm.loop !2502

for.end:                                          ; preds = %if.then2, %for.cond
  %14 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !2504
  %15 = bitcast %struct.opp_table** %14 to i8*, !dbg !2504
  call void @kfree(i8* %15) #7, !dbg !2505
  %16 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2506
  %required_opp_count6 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %16, i32 0, i32 15, !dbg !2507
  store i32 0, i32* %required_opp_count6, align 8, !dbg !2508
  %17 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2509
  %required_opp_tables7 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %17, i32 0, i32 14, !dbg !2510
  store %struct.opp_table** null, %struct.opp_table*** %required_opp_tables7, align 8, !dbg !2511
  br label %return, !dbg !2512

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2512
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @_of_opp_free_required_opps(%struct.opp_table* %opp_table, %struct.dev_pm_opp* %opp) #0 !dbg !2513 {
entry:
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %opp.addr = alloca %struct.dev_pm_opp*, align 8
  %required_opps = alloca %struct.dev_pm_opp**, align 8
  %i = alloca i32, align 4
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  store %struct.dev_pm_opp* %opp, %struct.dev_pm_opp** %opp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp.addr, metadata !2518, metadata !DIExpression()), !dbg !2519
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp*** %required_opps, metadata !2520, metadata !DIExpression()), !dbg !2521
  %0 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !2522
  %required_opps1 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %0, i32 0, i32 12, !dbg !2523
  %1 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps1, align 8, !dbg !2523
  store %struct.dev_pm_opp** %1, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !2521
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2524, metadata !DIExpression()), !dbg !2525
  %2 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !2526
  %tobool = icmp ne %struct.dev_pm_opp** %2, null, !dbg !2526
  br i1 %tobool, label %if.end, label %if.then, !dbg !2528

if.then:                                          ; preds = %entry
  br label %return, !dbg !2529

if.end:                                           ; preds = %entry
  store i32 0, i32* %i, align 4, !dbg !2530
  br label %for.cond, !dbg !2532

for.cond:                                         ; preds = %for.inc, %if.end
  %3 = load i32, i32* %i, align 4, !dbg !2533
  %4 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2535
  %required_opp_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %4, i32 0, i32 15, !dbg !2536
  %5 = load i32, i32* %required_opp_count, align 8, !dbg !2536
  %cmp = icmp ult i32 %3, %5, !dbg !2537
  br i1 %cmp, label %for.body, label %for.end, !dbg !2538

for.body:                                         ; preds = %for.cond
  %6 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !2539
  %7 = load i32, i32* %i, align 4, !dbg !2542
  %idxprom = sext i32 %7 to i64, !dbg !2539
  %arrayidx = getelementptr %struct.dev_pm_opp*, %struct.dev_pm_opp** %6, i64 %idxprom, !dbg !2539
  %8 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %arrayidx, align 8, !dbg !2539
  %tobool2 = icmp ne %struct.dev_pm_opp* %8, null, !dbg !2539
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2543

if.then3:                                         ; preds = %for.body
  br label %for.end, !dbg !2544

if.end4:                                          ; preds = %for.body
  %9 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !2545
  %10 = load i32, i32* %i, align 4, !dbg !2546
  %idxprom5 = sext i32 %10 to i64, !dbg !2545
  %arrayidx6 = getelementptr %struct.dev_pm_opp*, %struct.dev_pm_opp** %9, i64 %idxprom5, !dbg !2545
  %11 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %arrayidx6, align 8, !dbg !2545
  call void @dev_pm_opp_put(%struct.dev_pm_opp* %11) #7, !dbg !2547
  br label %for.inc, !dbg !2548

for.inc:                                          ; preds = %if.end4
  %12 = load i32, i32* %i, align 4, !dbg !2549
  %inc = add i32 %12, 1, !dbg !2549
  store i32 %inc, i32* %i, align 4, !dbg !2549
  br label %for.cond, !dbg !2550, !llvm.loop !2551

for.end:                                          ; preds = %if.then3, %for.cond
  %13 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !2553
  %14 = bitcast %struct.dev_pm_opp** %13 to i8*, !dbg !2553
  call void @kfree(i8* %14) #7, !dbg !2554
  %15 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !2555
  %required_opps7 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %15, i32 0, i32 12, !dbg !2556
  store %struct.dev_pm_opp** null, %struct.dev_pm_opp*** %required_opps7, align 8, !dbg !2557
  br label %return, !dbg !2558

return:                                           ; preds = %for.end, %if.then
  ret void, !dbg !2558
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_opp_put(%struct.dev_pm_opp*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_opp_of_find_icc_paths(%struct.device* %dev, %struct.opp_table* %opp_table) #0 !dbg !2559 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %np = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %num_paths = alloca i32, align 4
  %paths = alloca %struct.icc_path**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2564, metadata !DIExpression()), !dbg !2565
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2566, metadata !DIExpression()), !dbg !2567
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2568, metadata !DIExpression()), !dbg !2569
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2570, metadata !DIExpression()), !dbg !2571
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2572, metadata !DIExpression()), !dbg !2573
  call void @llvm.dbg.declare(metadata i32* %num_paths, metadata !2574, metadata !DIExpression()), !dbg !2575
  call void @llvm.dbg.declare(metadata %struct.icc_path*** %paths, metadata !2576, metadata !DIExpression()), !dbg !2577
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2578
  %1 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2579
  %call = call i32 @_bandwidth_supported(%struct.device* %0, %struct.opp_table* %1) #7, !dbg !2580
  store i32 %call, i32* %ret, align 4, !dbg !2581
  %2 = load i32, i32* %ret, align 4, !dbg !2582
  %cmp = icmp sle i32 %2, 0, !dbg !2584
  br i1 %cmp, label %if.then, label %if.end, !dbg !2585

if.then:                                          ; preds = %entry
  %3 = load i32, i32* %ret, align 4, !dbg !2586
  store i32 %3, i32* %retval, align 4, !dbg !2587
  br label %return, !dbg !2587

if.end:                                           ; preds = %entry
  store i32 0, i32* %ret, align 4, !dbg !2588
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2589
  %of_node = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 23, !dbg !2590
  %5 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2590
  %call1 = call %struct.device_node* @of_node_get(%struct.device_node* %5) #7, !dbg !2591
  store %struct.device_node* %call1, %struct.device_node** %np, align 8, !dbg !2592
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2593
  %tobool = icmp ne %struct.device_node* %6, null, !dbg !2593
  br i1 %tobool, label %if.end3, label %if.then2, !dbg !2595

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2596
  br label %return, !dbg !2596

if.end3:                                          ; preds = %if.end
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2597
  %call4 = call i32 @of_count_phandle_with_args(%struct.device_node* %7, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #7, !dbg !2598
  store i32 %call4, i32* %count, align 4, !dbg !2599
  %8 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2600
  call void @of_node_put(%struct.device_node* %8) #7, !dbg !2601
  %9 = load i32, i32* %count, align 4, !dbg !2602
  %cmp5 = icmp slt i32 %9, 0, !dbg !2604
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !2605

if.then6:                                         ; preds = %if.end3
  store i32 0, i32* %retval, align 4, !dbg !2606
  br label %return, !dbg !2606

if.end7:                                          ; preds = %if.end3
  %10 = load i32, i32* %count, align 4, !dbg !2607
  %rem = srem i32 %10, 2, !dbg !2609
  %tobool8 = icmp ne i32 %rem, 0, !dbg !2609
  br i1 %tobool8, label %if.then9, label %if.end10, !dbg !2610

if.then9:                                         ; preds = %if.end7
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2611
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %11, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.6, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dev_pm_opp_of_find_icc_paths, i64 0, i64 0)) #8, !dbg !2611
  store i32 -22, i32* %retval, align 4, !dbg !2613
  br label %return, !dbg !2613

if.end10:                                         ; preds = %if.end7
  %12 = load i32, i32* %count, align 4, !dbg !2614
  %div = sdiv i32 %12, 2, !dbg !2615
  store i32 %div, i32* %num_paths, align 4, !dbg !2616
  %13 = load i32, i32* %num_paths, align 4, !dbg !2617
  %conv = sext i32 %13 to i64, !dbg !2617
  %call11 = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #7, !dbg !2618
  %14 = bitcast i8* %call11 to %struct.icc_path**, !dbg !2618
  store %struct.icc_path** %14, %struct.icc_path*** %paths, align 8, !dbg !2619
  %15 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2620
  %tobool12 = icmp ne %struct.icc_path** %15, null, !dbg !2620
  br i1 %tobool12, label %if.end14, label %if.then13, !dbg !2622

if.then13:                                        ; preds = %if.end10
  store i32 -12, i32* %retval, align 4, !dbg !2623
  br label %return, !dbg !2623

if.end14:                                         ; preds = %if.end10
  store i32 0, i32* %i, align 4, !dbg !2624
  br label %for.cond, !dbg !2626

for.cond:                                         ; preds = %for.inc, %if.end14
  %16 = load i32, i32* %i, align 4, !dbg !2627
  %17 = load i32, i32* %num_paths, align 4, !dbg !2629
  %cmp15 = icmp slt i32 %16, %17, !dbg !2630
  br i1 %cmp15, label %for.body, label %for.end, !dbg !2631

for.body:                                         ; preds = %for.cond
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2632
  %19 = load i32, i32* %i, align 4, !dbg !2634
  %call17 = call %struct.icc_path* @of_icc_get_by_index(%struct.device* %18, i32 %19) #7, !dbg !2635
  %20 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2636
  %21 = load i32, i32* %i, align 4, !dbg !2637
  %idxprom = sext i32 %21 to i64, !dbg !2636
  %arrayidx = getelementptr %struct.icc_path*, %struct.icc_path** %20, i64 %idxprom, !dbg !2636
  store %struct.icc_path* %call17, %struct.icc_path** %arrayidx, align 8, !dbg !2638
  %22 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2639
  %23 = load i32, i32* %i, align 4, !dbg !2641
  %idxprom18 = sext i32 %23 to i64, !dbg !2639
  %arrayidx19 = getelementptr %struct.icc_path*, %struct.icc_path** %22, i64 %idxprom18, !dbg !2639
  %24 = load %struct.icc_path*, %struct.icc_path** %arrayidx19, align 8, !dbg !2639
  %25 = bitcast %struct.icc_path* %24 to i8*, !dbg !2639
  %call20 = call zeroext i1 @IS_ERR(i8* %25) #7, !dbg !2642
  br i1 %call20, label %if.then21, label %if.end30, !dbg !2643

if.then21:                                        ; preds = %for.body
  %26 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2644
  %27 = load i32, i32* %i, align 4, !dbg !2646
  %idxprom22 = sext i32 %27 to i64, !dbg !2644
  %arrayidx23 = getelementptr %struct.icc_path*, %struct.icc_path** %26, i64 %idxprom22, !dbg !2644
  %28 = load %struct.icc_path*, %struct.icc_path** %arrayidx23, align 8, !dbg !2644
  %29 = bitcast %struct.icc_path* %28 to i8*, !dbg !2644
  %call24 = call i64 @PTR_ERR(i8* %29) #7, !dbg !2647
  %conv25 = trunc i64 %call24 to i32, !dbg !2647
  store i32 %conv25, i32* %ret, align 4, !dbg !2648
  %30 = load i32, i32* %ret, align 4, !dbg !2649
  %cmp26 = icmp ne i32 %30, -517, !dbg !2651
  br i1 %cmp26, label %if.then28, label %if.end29, !dbg !2652

if.then28:                                        ; preds = %if.then21
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2653
  %32 = load i32, i32* %i, align 4, !dbg !2653
  %33 = load i32, i32* %ret, align 4, !dbg !2653
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %31, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dev_pm_opp_of_find_icc_paths, i64 0, i64 0), i32 %32, i32 %33) #8, !dbg !2653
  br label %if.end29, !dbg !2655

if.end29:                                         ; preds = %if.then28, %if.then21
  br label %err, !dbg !2656

if.end30:                                         ; preds = %for.body
  br label %for.inc, !dbg !2657

for.inc:                                          ; preds = %if.end30
  %34 = load i32, i32* %i, align 4, !dbg !2658
  %inc = add i32 %34, 1, !dbg !2658
  store i32 %inc, i32* %i, align 4, !dbg !2658
  br label %for.cond, !dbg !2659, !llvm.loop !2660

for.end:                                          ; preds = %for.cond
  %35 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2662
  %tobool31 = icmp ne %struct.opp_table* %35, null, !dbg !2662
  br i1 %tobool31, label %if.then32, label %if.end34, !dbg !2664

if.then32:                                        ; preds = %for.end
  %36 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2665
  %37 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2667
  %paths33 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %37, i32 0, i32 22, !dbg !2668
  store %struct.icc_path** %36, %struct.icc_path*** %paths33, align 8, !dbg !2669
  %38 = load i32, i32* %num_paths, align 4, !dbg !2670
  %39 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2671
  %path_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %39, i32 0, i32 23, !dbg !2672
  store i32 %38, i32* %path_count, align 8, !dbg !2673
  store i32 0, i32* %retval, align 4, !dbg !2674
  br label %return, !dbg !2674

if.end34:                                         ; preds = %for.end
  br label %err, !dbg !2662

err:                                              ; preds = %if.end34, %if.end29
  call void @llvm.dbg.label(metadata !2675), !dbg !2676
  br label %while.cond, !dbg !2677

while.cond:                                       ; preds = %while.body, %err
  %40 = load i32, i32* %i, align 4, !dbg !2678
  %dec = add i32 %40, -1, !dbg !2678
  store i32 %dec, i32* %i, align 4, !dbg !2678
  %tobool35 = icmp ne i32 %40, 0, !dbg !2677
  br i1 %tobool35, label %while.body, label %while.end, !dbg !2677

while.body:                                       ; preds = %while.cond
  %41 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2679
  %42 = load i32, i32* %i, align 4, !dbg !2680
  %idxprom36 = sext i32 %42 to i64, !dbg !2679
  %arrayidx37 = getelementptr %struct.icc_path*, %struct.icc_path** %41, i64 %idxprom36, !dbg !2679
  %43 = load %struct.icc_path*, %struct.icc_path** %arrayidx37, align 8, !dbg !2679
  call void @icc_put(%struct.icc_path* %43) #7, !dbg !2681
  br label %while.cond, !dbg !2677, !llvm.loop !2682

while.end:                                        ; preds = %while.cond
  %44 = load %struct.icc_path**, %struct.icc_path*** %paths, align 8, !dbg !2684
  %45 = bitcast %struct.icc_path** %44 to i8*, !dbg !2684
  call void @kfree(i8* %45) #7, !dbg !2685
  %46 = load i32, i32* %ret, align 4, !dbg !2686
  store i32 %46, i32* %retval, align 4, !dbg !2687
  br label %return, !dbg !2687

return:                                           ; preds = %while.end, %if.then32, %if.then13, %if.then9, %if.then6, %if.then2, %if.then
  %47 = load i32, i32* %retval, align 4, !dbg !2688
  ret i32 %47, !dbg !2688
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_bandwidth_supported(%struct.device* %dev, %struct.opp_table* %opp_table) #0 !dbg !2689 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %np = alloca %struct.device_node*, align 8
  %opp_np = alloca %struct.device_node*, align 8
  %prop = alloca %struct.property*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2690, metadata !DIExpression()), !dbg !2691
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2692, metadata !DIExpression()), !dbg !2693
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2694, metadata !DIExpression()), !dbg !2695
  call void @llvm.dbg.declare(metadata %struct.device_node** %opp_np, metadata !2696, metadata !DIExpression()), !dbg !2697
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2698, metadata !DIExpression()), !dbg !2699
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2700
  %tobool = icmp ne %struct.opp_table* %0, null, !dbg !2700
  br i1 %tobool, label %if.else, label %if.then, !dbg !2702

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2703
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !2705
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2705
  %call = call %struct.device_node* @of_node_get(%struct.device_node* %2) #7, !dbg !2706
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2707
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2708
  %tobool1 = icmp ne %struct.device_node* %3, null, !dbg !2708
  br i1 %tobool1, label %if.end, label %if.then2, !dbg !2710

if.then2:                                         ; preds = %if.then
  store i32 -19, i32* %retval, align 4, !dbg !2711
  br label %return, !dbg !2711

if.end:                                           ; preds = %if.then
  %4 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2712
  %call3 = call %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %4, i32 0) #7, !dbg !2713
  store %struct.device_node* %call3, %struct.device_node** %opp_np, align 8, !dbg !2714
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2715
  call void @of_node_put(%struct.device_node* %5) #7, !dbg !2716
  br label %if.end6, !dbg !2717

if.else:                                          ; preds = %entry
  %6 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2718
  %np4 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %6, i32 0, i32 6, !dbg !2720
  %7 = load %struct.device_node*, %struct.device_node** %np4, align 8, !dbg !2720
  %call5 = call %struct.device_node* @of_node_get(%struct.device_node* %7) #7, !dbg !2721
  store %struct.device_node* %call5, %struct.device_node** %opp_np, align 8, !dbg !2722
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.end
  %8 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2723
  %tobool7 = icmp ne %struct.device_node* %8, null, !dbg !2723
  br i1 %tobool7, label %if.end9, label %if.then8, !dbg !2725

if.then8:                                         ; preds = %if.end6
  store i32 0, i32* %retval, align 4, !dbg !2726
  br label %return, !dbg !2726

if.end9:                                          ; preds = %if.end6
  %9 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2727
  %call10 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %9, %struct.device_node* null) #7, !dbg !2728
  store %struct.device_node* %call10, %struct.device_node** %np, align 8, !dbg !2729
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2730
  %tobool11 = icmp ne %struct.device_node* %10, null, !dbg !2730
  br i1 %tobool11, label %if.end13, label %if.then12, !dbg !2732

if.then12:                                        ; preds = %if.end9
  %11 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2733
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %11, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.19, i64 0, i64 0)) #8, !dbg !2733
  store i32 -22, i32* %retval, align 4, !dbg !2735
  br label %return, !dbg !2735

if.end13:                                         ; preds = %if.end9
  %12 = load %struct.device_node*, %struct.device_node** %opp_np, align 8, !dbg !2736
  call void @of_node_put(%struct.device_node* %12) #7, !dbg !2737
  %13 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2738
  %call14 = call %struct.property* @of_find_property(%struct.device_node* %13, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i32* null) #7, !dbg !2739
  store %struct.property* %call14, %struct.property** %prop, align 8, !dbg !2740
  %14 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2741
  call void @of_node_put(%struct.device_node* %14) #7, !dbg !2742
  %15 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2743
  %tobool15 = icmp ne %struct.property* %15, null, !dbg !2743
  br i1 %tobool15, label %lor.lhs.false, label %if.then17, !dbg !2745

lor.lhs.false:                                    ; preds = %if.end13
  %16 = load %struct.property*, %struct.property** %prop, align 8, !dbg !2746
  %length = getelementptr inbounds %struct.property, %struct.property* %16, i32 0, i32 1, !dbg !2747
  %17 = load i32, i32* %length, align 8, !dbg !2747
  %tobool16 = icmp ne i32 %17, 0, !dbg !2746
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !2748

if.then17:                                        ; preds = %lor.lhs.false, %if.end13
  store i32 0, i32* %retval, align 4, !dbg !2749
  br label %return, !dbg !2749

if.end18:                                         ; preds = %lor.lhs.false
  store i32 1, i32* %retval, align 4, !dbg !2750
  br label %return, !dbg !2750

return:                                           ; preds = %if.end18, %if.then17, %if.then12, %if.then8, %if.then2
  %18 = load i32, i32* %retval, align 4, !dbg !2751
  ret i32 %18, !dbg !2751
}

; Function Attrs: noredzone
declare dso_local i32 @of_count_phandle_with_args(%struct.device_node*, i8*, i8*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kcalloc(i64 %n, i64 %size, i32 %flags) #0 !dbg !2752 {
entry:
  %n.addr = alloca i64, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  %0 = load i64, i64* %n.addr, align 8, !dbg !2761
  %1 = load i64, i64* %size.addr, align 8, !dbg !2762
  %2 = load i32, i32* %flags.addr, align 4, !dbg !2763
  %or = or i32 %2, 256, !dbg !2764
  %call = call i8* @kmalloc_array(i64 %0, i64 %1, i32 %or) #7, !dbg !2765
  ret i8* %call, !dbg !2766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.icc_path* @of_icc_get_by_index(%struct.device* %dev, i32 %idx) #0 !dbg !2767 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %idx.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  store i32 %idx, i32* %idx.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %idx.addr, metadata !2772, metadata !DIExpression()), !dbg !2773
  ret %struct.icc_path* null, !dbg !2774
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2775 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2779, metadata !DIExpression()), !dbg !2780
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2781
  %1 = ptrtoint i8* %0 to i64, !dbg !2781
  %2 = inttoptr i64 %1 to i8*, !dbg !2781
  %3 = ptrtoint i8* %2 to i64, !dbg !2781
  %cmp = icmp uge i64 %3, -4095, !dbg !2781
  %lnot = xor i1 %cmp, true, !dbg !2781
  %lnot1 = xor i1 %lnot, true, !dbg !2781
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2781
  %conv = sext i32 %lnot.ext to i64, !dbg !2781
  %tobool = icmp ne i64 %conv, 0, !dbg !2781
  ret i1 %tobool, !dbg !2782
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2783 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2786, metadata !DIExpression()), !dbg !2787
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2788
  %1 = ptrtoint i8* %0 to i64, !dbg !2789
  ret i64 %1, !dbg !2790
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @icc_put(%struct.icc_path* %path) #0 !dbg !2791 {
entry:
  %path.addr = alloca %struct.icc_path*, align 8
  store %struct.icc_path* %path, %struct.icc_path** %path.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.icc_path** %path.addr, metadata !2794, metadata !DIExpression()), !dbg !2795
  ret void, !dbg !2796
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_opp_of_remove_table(%struct.device* %dev) #0 !dbg !2797 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2798, metadata !DIExpression()), !dbg !2799
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2800
  call void @dev_pm_opp_remove_table(%struct.device* %0) #7, !dbg !2801
  ret void, !dbg !2802
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_opp_remove_table(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_opp_of_add_table(%struct.device* %dev) #0 !dbg !2803 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %opp_table = alloca %struct.opp_table*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2804, metadata !DIExpression()), !dbg !2805
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table, metadata !2806, metadata !DIExpression()), !dbg !2807
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2808, metadata !DIExpression()), !dbg !2809
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2810
  %call = call %struct.opp_table* @dev_pm_opp_get_opp_table_indexed(%struct.device* %0, i32 0) #7, !dbg !2811
  store %struct.opp_table* %call, %struct.opp_table** %opp_table, align 8, !dbg !2812
  %1 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2813
  %2 = bitcast %struct.opp_table* %1 to i8*, !dbg !2813
  %call1 = call zeroext i1 @IS_ERR(i8* %2) #7, !dbg !2815
  br i1 %call1, label %if.then, label %if.end, !dbg !2816

if.then:                                          ; preds = %entry
  %3 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2817
  %4 = bitcast %struct.opp_table* %3 to i8*, !dbg !2817
  %call2 = call i64 @PTR_ERR(i8* %4) #7, !dbg !2818
  %conv = trunc i64 %call2 to i32, !dbg !2818
  store i32 %conv, i32* %retval, align 4, !dbg !2819
  br label %return, !dbg !2819

if.end:                                           ; preds = %entry
  %5 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2820
  %np = getelementptr inbounds %struct.opp_table, %struct.opp_table* %5, i32 0, i32 6, !dbg !2822
  %6 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2822
  %tobool = icmp ne %struct.device_node* %6, null, !dbg !2820
  br i1 %tobool, label %if.then3, label %if.else, !dbg !2823

if.then3:                                         ; preds = %if.end
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2824
  %8 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2825
  %call4 = call i32 @_of_add_opp_table_v2(%struct.device* %7, %struct.opp_table* %8) #7, !dbg !2826
  store i32 %call4, i32* %ret, align 4, !dbg !2827
  br label %if.end6, !dbg !2828

if.else:                                          ; preds = %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2829
  %10 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2830
  %call5 = call i32 @_of_add_opp_table_v1(%struct.device* %9, %struct.opp_table* %10) #7, !dbg !2831
  store i32 %call5, i32* %ret, align 4, !dbg !2832
  br label %if.end6

if.end6:                                          ; preds = %if.else, %if.then3
  %11 = load i32, i32* %ret, align 4, !dbg !2833
  %tobool7 = icmp ne i32 %11, 0, !dbg !2833
  br i1 %tobool7, label %if.then8, label %if.end9, !dbg !2835

if.then8:                                         ; preds = %if.end6
  %12 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !2836
  call void @dev_pm_opp_put_opp_table(%struct.opp_table* %12) #7, !dbg !2837
  br label %if.end9, !dbg !2837

if.end9:                                          ; preds = %if.then8, %if.end6
  %13 = load i32, i32* %ret, align 4, !dbg !2838
  store i32 %13, i32* %retval, align 4, !dbg !2839
  br label %return, !dbg !2839

return:                                           ; preds = %if.end9, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2840
  ret i32 %14, !dbg !2840
}

; Function Attrs: noredzone
declare dso_local %struct.opp_table* @dev_pm_opp_get_opp_table_indexed(%struct.device*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_of_add_opp_table_v2(%struct.device* %dev, %struct.opp_table* %opp_table) #0 !dbg !2841 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %np = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  %opp = alloca %struct.dev_pm_opp*, align 8
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp46 = alloca %struct.dev_pm_opp*, align 8
  %__mptr58 = alloca i8*, align 8
  %tmp63 = alloca %struct.dev_pm_opp*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2842, metadata !DIExpression()), !dbg !2843
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2844, metadata !DIExpression()), !dbg !2845
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !2846, metadata !DIExpression()), !dbg !2847
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2848, metadata !DIExpression()), !dbg !2849
  call void @llvm.dbg.declare(metadata i32* %count, metadata !2850, metadata !DIExpression()), !dbg !2851
  store i32 0, i32* %count, align 4, !dbg !2851
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp, metadata !2852, metadata !DIExpression()), !dbg !2853
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2854
  %lock = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 5, !dbg !2855
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !2856
  %1 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2857
  %parsed_static_opps = getelementptr inbounds %struct.opp_table, %struct.opp_table* %1, i32 0, i32 9, !dbg !2859
  %2 = load i32, i32* %parsed_static_opps, align 4, !dbg !2859
  %tobool = icmp ne i32 %2, 0, !dbg !2857
  br i1 %tobool, label %if.then, label %if.end, !dbg !2860

if.then:                                          ; preds = %entry
  %3 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2861
  %parsed_static_opps1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %3, i32 0, i32 9, !dbg !2863
  %4 = load i32, i32* %parsed_static_opps1, align 4, !dbg !2864
  %inc = add i32 %4, 1, !dbg !2864
  store i32 %inc, i32* %parsed_static_opps1, align 4, !dbg !2864
  %5 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2865
  %lock2 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %5, i32 0, i32 5, !dbg !2866
  call void @mutex_unlock(%struct.mutex* %lock2) #7, !dbg !2867
  store i32 0, i32* %retval, align 4, !dbg !2868
  br label %return, !dbg !2868

if.end:                                           ; preds = %entry
  %6 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2869
  %parsed_static_opps3 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %6, i32 0, i32 9, !dbg !2870
  store i32 1, i32* %parsed_static_opps3, align 4, !dbg !2871
  %7 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2872
  %lock4 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %7, i32 0, i32 5, !dbg !2873
  call void @mutex_unlock(%struct.mutex* %lock4) #7, !dbg !2874
  %8 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2875
  %np5 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %8, i32 0, i32 6, !dbg !2875
  %9 = load %struct.device_node*, %struct.device_node** %np5, align 8, !dbg !2875
  %call = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %9, %struct.device_node* null) #7, !dbg !2875
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !2875
  br label %for.cond, !dbg !2875

for.cond:                                         ; preds = %for.inc, %if.end
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2877
  %cmp = icmp ne %struct.device_node* %10, null, !dbg !2877
  br i1 %cmp, label %for.body, label %for.end, !dbg !2875

for.body:                                         ; preds = %for.cond
  %11 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2879
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2881
  %13 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2882
  %call6 = call %struct.dev_pm_opp* @_opp_add_static_v2(%struct.opp_table* %11, %struct.device* %12, %struct.device_node* %13) #7, !dbg !2883
  store %struct.dev_pm_opp* %call6, %struct.dev_pm_opp** %opp, align 8, !dbg !2884
  %14 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !2885
  %15 = bitcast %struct.dev_pm_opp* %14 to i8*, !dbg !2885
  %call7 = call zeroext i1 @IS_ERR(i8* %15) #7, !dbg !2887
  br i1 %call7, label %if.then8, label %if.else, !dbg !2888

if.then8:                                         ; preds = %for.body
  %16 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !2889
  %17 = bitcast %struct.dev_pm_opp* %16 to i8*, !dbg !2889
  %call9 = call i64 @PTR_ERR(i8* %17) #7, !dbg !2891
  %conv = trunc i64 %call9 to i32, !dbg !2891
  store i32 %conv, i32* %ret, align 4, !dbg !2892
  %18 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2893
  %19 = load i32, i32* %ret, align 4, !dbg !2893
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %18, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.22, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__._of_add_opp_table_v2, i64 0, i64 0), i32 %19) #8, !dbg !2893
  %20 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2894
  call void @of_node_put(%struct.device_node* %20) #7, !dbg !2895
  br label %remove_static_opp, !dbg !2896

if.else:                                          ; preds = %for.body
  %21 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !2897
  %tobool10 = icmp ne %struct.dev_pm_opp* %21, null, !dbg !2897
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !2899

if.then11:                                        ; preds = %if.else
  %22 = load i32, i32* %count, align 4, !dbg !2900
  %inc12 = add i32 %22, 1, !dbg !2900
  store i32 %inc12, i32* %count, align 4, !dbg !2900
  br label %if.end13, !dbg !2902

if.end13:                                         ; preds = %if.then11, %if.else
  br label %if.end14

if.end14:                                         ; preds = %if.end13
  br label %for.inc, !dbg !2903

for.inc:                                          ; preds = %if.end14
  %23 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2877
  %np15 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %23, i32 0, i32 6, !dbg !2877
  %24 = load %struct.device_node*, %struct.device_node** %np15, align 8, !dbg !2877
  %25 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !2877
  %call16 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %24, %struct.device_node* %25) #7, !dbg !2877
  store %struct.device_node* %call16, %struct.device_node** %np, align 8, !dbg !2877
  br label %for.cond, !dbg !2877, !llvm.loop !2904

for.end:                                          ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2906, metadata !DIExpression()), !dbg !2909
  %26 = load i32, i32* %count, align 4, !dbg !2909
  %tobool17 = icmp ne i32 %26, 0, !dbg !2909
  %lnot = xor i1 %tobool17, true, !dbg !2909
  %lnot18 = xor i1 %lnot, true, !dbg !2909
  %lnot19 = xor i1 %lnot18, true, !dbg !2909
  %lnot.ext = zext i1 %lnot19 to i32, !dbg !2909
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2909
  %27 = load i32, i32* %__ret_warn_on, align 4, !dbg !2910
  %tobool20 = icmp ne i32 %27, 0, !dbg !2910
  %lnot21 = xor i1 %tobool20, true, !dbg !2910
  %lnot23 = xor i1 %lnot21, true, !dbg !2910
  %lnot.ext24 = zext i1 %lnot23 to i32, !dbg !2910
  %conv25 = sext i32 %lnot.ext24 to i64, !dbg !2910
  %tobool26 = icmp ne i64 %conv25, 0, !dbg !2910
  br i1 %tobool26, label %if.then27, label %if.end34, !dbg !2909

if.then27:                                        ; preds = %for.end
  br label %do.body, !dbg !2910

do.body:                                          ; preds = %if.then27
  br label %do.body28, !dbg !2912

do.body28:                                        ; preds = %do.body
  br label %do.end, !dbg !2914

do.end:                                           ; preds = %do.body28
  br label %do.body29, !dbg !2912

do.body29:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 874, i32 2305, i64 12) #9, !dbg !2916, !srcloc !2918
  br label %do.end30, !dbg !2916

do.end30:                                         ; preds = %do.body29
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 165) #9, !dbg !2919, !srcloc !2921
  br label %do.body31, !dbg !2912

do.body31:                                        ; preds = %do.end30
  br label %do.end32, !dbg !2922

do.end32:                                         ; preds = %do.body31
  br label %do.end33, !dbg !2912

do.end33:                                         ; preds = %do.end32
  br label %if.end34, !dbg !2912

if.end34:                                         ; preds = %do.end33, %for.end
  %28 = load i32, i32* %__ret_warn_on, align 4, !dbg !2909
  %tobool35 = icmp ne i32 %28, 0, !dbg !2909
  %lnot36 = xor i1 %tobool35, true, !dbg !2909
  %lnot38 = xor i1 %lnot36, true, !dbg !2909
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !2909
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !2909
  store i64 %conv40, i64* %tmp, align 8, !dbg !2910
  %29 = load i64, i64* %tmp, align 8, !dbg !2909
  %tobool41 = icmp ne i64 %29, 0, !dbg !2924
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !2925

if.then42:                                        ; preds = %if.end34
  store i32 -2, i32* %ret, align 4, !dbg !2926
  br label %remove_static_opp, !dbg !2928

if.end43:                                         ; preds = %if.end34
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2929, metadata !DIExpression()), !dbg !2932
  %30 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2932
  %opp_list = getelementptr inbounds %struct.opp_table, %struct.opp_table* %30, i32 0, i32 3, !dbg !2932
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %opp_list, i32 0, i32 0, !dbg !2932
  %31 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !2932
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !2932
  store i8* %32, i8** %__mptr, align 8, !dbg !2932
  br label %do.body44, !dbg !2932

do.body44:                                        ; preds = %if.end43
  br label %do.end45, !dbg !2933

do.end45:                                         ; preds = %do.body44
  %33 = load i8*, i8** %__mptr, align 8, !dbg !2932
  %add.ptr = getelementptr i8, i8* %33, i64 0, !dbg !2932
  %34 = bitcast i8* %add.ptr to %struct.dev_pm_opp*, !dbg !2932
  store %struct.dev_pm_opp* %34, %struct.dev_pm_opp** %tmp46, align 8, !dbg !2933
  %35 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %tmp46, align 8, !dbg !2932
  store %struct.dev_pm_opp* %35, %struct.dev_pm_opp** %opp, align 8, !dbg !2935
  br label %for.cond47, !dbg !2935

for.cond47:                                       ; preds = %do.end62, %do.end45
  %36 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !2936
  %node = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %36, i32 0, i32 0, !dbg !2936
  %37 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2936
  %opp_list48 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %37, i32 0, i32 3, !dbg !2936
  %cmp49 = icmp eq %struct.list_head* %node, %opp_list48, !dbg !2936
  %lnot51 = xor i1 %cmp49, true, !dbg !2936
  br i1 %lnot51, label %for.body53, label %for.end65, !dbg !2935

for.body53:                                       ; preds = %for.cond47
  %38 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !2938
  %pstate = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %38, i32 0, i32 6, !dbg !2941
  %39 = load i32, i32* %pstate, align 8, !dbg !2941
  %tobool54 = icmp ne i32 %39, 0, !dbg !2938
  br i1 %tobool54, label %if.then55, label %if.end56, !dbg !2942

if.then55:                                        ; preds = %for.body53
  %40 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2943
  %genpd_performance_state = getelementptr inbounds %struct.opp_table, %struct.opp_table* %40, i32 0, i32 25, !dbg !2945
  store i8 1, i8* %genpd_performance_state, align 1, !dbg !2946
  br label %for.end65, !dbg !2947

if.end56:                                         ; preds = %for.body53
  br label %for.inc57, !dbg !2948

for.inc57:                                        ; preds = %if.end56
  call void @llvm.dbg.declare(metadata i8** %__mptr58, metadata !2949, metadata !DIExpression()), !dbg !2951
  %41 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !2951
  %node59 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %41, i32 0, i32 0, !dbg !2951
  %next60 = getelementptr inbounds %struct.list_head, %struct.list_head* %node59, i32 0, i32 0, !dbg !2951
  %42 = load %struct.list_head*, %struct.list_head** %next60, align 8, !dbg !2951
  %43 = bitcast %struct.list_head* %42 to i8*, !dbg !2951
  store i8* %43, i8** %__mptr58, align 8, !dbg !2951
  br label %do.body61, !dbg !2951

do.body61:                                        ; preds = %for.inc57
  br label %do.end62, !dbg !2952

do.end62:                                         ; preds = %do.body61
  %44 = load i8*, i8** %__mptr58, align 8, !dbg !2951
  %add.ptr64 = getelementptr i8, i8* %44, i64 0, !dbg !2951
  %45 = bitcast i8* %add.ptr64 to %struct.dev_pm_opp*, !dbg !2951
  store %struct.dev_pm_opp* %45, %struct.dev_pm_opp** %tmp63, align 8, !dbg !2952
  %46 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %tmp63, align 8, !dbg !2951
  store %struct.dev_pm_opp* %46, %struct.dev_pm_opp** %opp, align 8, !dbg !2936
  br label %for.cond47, !dbg !2936, !llvm.loop !2954

for.end65:                                        ; preds = %if.then55, %for.cond47
  store i32 0, i32* %retval, align 4, !dbg !2956
  br label %return, !dbg !2956

remove_static_opp:                                ; preds = %if.then42, %if.then8
  call void @llvm.dbg.label(metadata !2957), !dbg !2958
  %47 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !2959
  %call66 = call zeroext i1 @_opp_remove_all_static(%struct.opp_table* %47) #7, !dbg !2960
  %48 = load i32, i32* %ret, align 4, !dbg !2961
  store i32 %48, i32* %retval, align 4, !dbg !2962
  br label %return, !dbg !2962

return:                                           ; preds = %remove_static_opp, %for.end65, %if.then
  %49 = load i32, i32* %retval, align 4, !dbg !2963
  ret i32 %49, !dbg !2963
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_of_add_opp_table_v1(%struct.device* %dev, %struct.opp_table* %opp_table) #0 !dbg !2964 {
entry:
  %p.addr.i.i27 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i27, metadata !2965, metadata !DIExpression()), !dbg !2972
  %p.addr.i28 = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i28, metadata !2983, metadata !DIExpression()), !dbg !2984
  %p.addr.i.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i.i, metadata !2965, metadata !DIExpression()), !dbg !2985
  %p.addr.i = alloca i32*, align 8
  call void @llvm.dbg.declare(metadata i32** %p.addr.i, metadata !2983, metadata !DIExpression()), !dbg !2988
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %prop = alloca %struct.property*, align 8
  %val = alloca i32*, align 8
  %nr = alloca i32, align 4
  %ret = alloca i32, align 4
  %freq = alloca i64, align 8
  %volt = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2989, metadata !DIExpression()), !dbg !2990
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !2991, metadata !DIExpression()), !dbg !2992
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !2993, metadata !DIExpression()), !dbg !2996
  call void @llvm.dbg.declare(metadata i32** %val, metadata !2997, metadata !DIExpression()), !dbg !2998
  call void @llvm.dbg.declare(metadata i32* %nr, metadata !2999, metadata !DIExpression()), !dbg !3000
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3001, metadata !DIExpression()), !dbg !3002
  store i32 0, i32* %ret, align 4, !dbg !3002
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3003
  %lock = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 5, !dbg !3004
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3005
  %1 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3006
  %parsed_static_opps = getelementptr inbounds %struct.opp_table, %struct.opp_table* %1, i32 0, i32 9, !dbg !3008
  %2 = load i32, i32* %parsed_static_opps, align 4, !dbg !3008
  %tobool = icmp ne i32 %2, 0, !dbg !3006
  br i1 %tobool, label %if.then, label %if.end, !dbg !3009

if.then:                                          ; preds = %entry
  %3 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3010
  %parsed_static_opps1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %3, i32 0, i32 9, !dbg !3012
  %4 = load i32, i32* %parsed_static_opps1, align 4, !dbg !3013
  %inc = add i32 %4, 1, !dbg !3013
  store i32 %inc, i32* %parsed_static_opps1, align 4, !dbg !3013
  %5 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3014
  %lock2 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %5, i32 0, i32 5, !dbg !3015
  call void @mutex_unlock(%struct.mutex* %lock2) #7, !dbg !3016
  store i32 0, i32* %retval, align 4, !dbg !3017
  br label %return, !dbg !3017

if.end:                                           ; preds = %entry
  %6 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3018
  %parsed_static_opps3 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %6, i32 0, i32 9, !dbg !3019
  store i32 1, i32* %parsed_static_opps3, align 4, !dbg !3020
  %7 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3021
  %lock4 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %7, i32 0, i32 5, !dbg !3022
  call void @mutex_unlock(%struct.mutex* %lock4) #7, !dbg !3023
  %8 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3024
  %of_node = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 23, !dbg !3025
  %9 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3025
  %call = call %struct.property* @of_find_property(%struct.device_node* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.45, i64 0, i64 0), i32* null) #7, !dbg !3026
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !3027
  %10 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3028
  %tobool5 = icmp ne %struct.property* %10, null, !dbg !3028
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !3030

if.then6:                                         ; preds = %if.end
  store i32 -19, i32* %ret, align 4, !dbg !3031
  br label %remove_static_opp, !dbg !3033

if.end7:                                          ; preds = %if.end
  %11 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3034
  %value = getelementptr inbounds %struct.property, %struct.property* %11, i32 0, i32 2, !dbg !3036
  %12 = load i8*, i8** %value, align 8, !dbg !3036
  %tobool8 = icmp ne i8* %12, null, !dbg !3034
  br i1 %tobool8, label %if.end10, label %if.then9, !dbg !3037

if.then9:                                         ; preds = %if.end7
  store i32 -61, i32* %ret, align 4, !dbg !3038
  br label %remove_static_opp, !dbg !3040

if.end10:                                         ; preds = %if.end7
  %13 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3041
  %length = getelementptr inbounds %struct.property, %struct.property* %13, i32 0, i32 1, !dbg !3042
  %14 = load i32, i32* %length, align 8, !dbg !3042
  %conv = sext i32 %14 to i64, !dbg !3041
  %div = udiv i64 %conv, 4, !dbg !3043
  %conv11 = trunc i64 %div to i32, !dbg !3041
  store i32 %conv11, i32* %nr, align 4, !dbg !3044
  %15 = load i32, i32* %nr, align 4, !dbg !3045
  %rem = srem i32 %15, 2, !dbg !3047
  %tobool12 = icmp ne i32 %rem, 0, !dbg !3047
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !3048

if.then13:                                        ; preds = %if.end10
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3049
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %16, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.46, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__._of_add_opp_table_v1, i64 0, i64 0)) #8, !dbg !3049
  store i32 -22, i32* %ret, align 4, !dbg !3051
  br label %remove_static_opp, !dbg !3052

if.end14:                                         ; preds = %if.end10
  %17 = load %struct.property*, %struct.property** %prop, align 8, !dbg !3053
  %value15 = getelementptr inbounds %struct.property, %struct.property* %17, i32 0, i32 2, !dbg !3054
  %18 = load i8*, i8** %value15, align 8, !dbg !3054
  %19 = bitcast i8* %18 to i32*, !dbg !3053
  store i32* %19, i32** %val, align 8, !dbg !3055
  br label %while.cond, !dbg !3056

while.cond:                                       ; preds = %if.end25, %if.end14
  %20 = load i32, i32* %nr, align 4, !dbg !3057
  %tobool16 = icmp ne i32 %20, 0, !dbg !3056
  br i1 %tobool16, label %while.body, label %while.end, !dbg !3056

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i64* %freq, metadata !3058, metadata !DIExpression()), !dbg !3059
  %21 = load i32*, i32** %val, align 8, !dbg !3060
  %incdec.ptr = getelementptr i32, i32* %21, i32 1, !dbg !3060
  store i32* %incdec.ptr, i32** %val, align 8, !dbg !3060
  store i32* %21, i32** %p.addr.i, align 8
  %22 = load i32*, i32** %p.addr.i, align 8, !dbg !3061
  store i32* %22, i32** %p.addr.i.i, align 8
  %23 = load i32*, i32** %p.addr.i.i, align 8, !dbg !3062
  %24 = load i32, i32* %23, align 4, !dbg !3062
  %25 = call i1 @llvm.is.constant.i32(i32 %24) #9, !dbg !3062
  br i1 %25, label %cond.true.i.i, label %cond.false.i.i, !dbg !3062

cond.true.i.i:                                    ; preds = %while.body
  %26 = load i32*, i32** %p.addr.i.i, align 8, !dbg !3062
  %27 = load i32, i32* %26, align 4, !dbg !3062
  %and.i.i = and i32 %27, 255, !dbg !3062
  %shl.i.i = shl i32 %and.i.i, 24, !dbg !3062
  %28 = load i32*, i32** %p.addr.i.i, align 8, !dbg !3062
  %29 = load i32, i32* %28, align 4, !dbg !3062
  %and1.i.i = and i32 %29, 65280, !dbg !3062
  %shl2.i.i = shl i32 %and1.i.i, 8, !dbg !3062
  %or.i.i = or i32 %shl.i.i, %shl2.i.i, !dbg !3062
  %30 = load i32*, i32** %p.addr.i.i, align 8, !dbg !3062
  %31 = load i32, i32* %30, align 4, !dbg !3062
  %and3.i.i = and i32 %31, 16711680, !dbg !3062
  %shr.i.i = lshr i32 %and3.i.i, 8, !dbg !3062
  %or4.i.i = or i32 %or.i.i, %shr.i.i, !dbg !3062
  %32 = load i32*, i32** %p.addr.i.i, align 8, !dbg !3062
  %33 = load i32, i32* %32, align 4, !dbg !3062
  %and5.i.i = and i32 %33, -16777216, !dbg !3062
  %shr6.i.i = lshr i32 %and5.i.i, 24, !dbg !3062
  %or7.i.i = or i32 %or4.i.i, %shr6.i.i, !dbg !3062
  br label %__be32_to_cpup.exit, !dbg !3062

cond.false.i.i:                                   ; preds = %while.body
  %34 = load i32*, i32** %p.addr.i.i, align 8, !dbg !3062
  %35 = load i32, i32* %34, align 4, !dbg !3062
  %call.i.i = call i32 @__fswab32(i32 %35) #10, !dbg !3062
  br label %__be32_to_cpup.exit, !dbg !3062

__be32_to_cpup.exit:                              ; preds = %cond.true.i.i, %cond.false.i.i
  %cond.i.i = phi i32 [ %or7.i.i, %cond.true.i.i ], [ %call.i.i, %cond.false.i.i ], !dbg !3062
  %mul = mul i32 %cond.i.i, 1000, !dbg !3063
  %conv18 = zext i32 %mul to i64, !dbg !3064
  store i64 %conv18, i64* %freq, align 8, !dbg !3059
  call void @llvm.dbg.declare(metadata i64* %volt, metadata !3065, metadata !DIExpression()), !dbg !3066
  %36 = load i32*, i32** %val, align 8, !dbg !3067
  %incdec.ptr19 = getelementptr i32, i32* %36, i32 1, !dbg !3067
  store i32* %incdec.ptr19, i32** %val, align 8, !dbg !3067
  store i32* %36, i32** %p.addr.i28, align 8
  %37 = load i32*, i32** %p.addr.i28, align 8, !dbg !3068
  store i32* %37, i32** %p.addr.i.i27, align 8
  %38 = load i32*, i32** %p.addr.i.i27, align 8, !dbg !3069
  %39 = load i32, i32* %38, align 4, !dbg !3069
  %40 = call i1 @llvm.is.constant.i32(i32 %39) #9, !dbg !3069
  br i1 %40, label %cond.true.i.i40, label %cond.false.i.i42, !dbg !3069

cond.true.i.i40:                                  ; preds = %__be32_to_cpup.exit
  %41 = load i32*, i32** %p.addr.i.i27, align 8, !dbg !3069
  %42 = load i32, i32* %41, align 4, !dbg !3069
  %and.i.i29 = and i32 %42, 255, !dbg !3069
  %shl.i.i30 = shl i32 %and.i.i29, 24, !dbg !3069
  %43 = load i32*, i32** %p.addr.i.i27, align 8, !dbg !3069
  %44 = load i32, i32* %43, align 4, !dbg !3069
  %and1.i.i31 = and i32 %44, 65280, !dbg !3069
  %shl2.i.i32 = shl i32 %and1.i.i31, 8, !dbg !3069
  %or.i.i33 = or i32 %shl.i.i30, %shl2.i.i32, !dbg !3069
  %45 = load i32*, i32** %p.addr.i.i27, align 8, !dbg !3069
  %46 = load i32, i32* %45, align 4, !dbg !3069
  %and3.i.i34 = and i32 %46, 16711680, !dbg !3069
  %shr.i.i35 = lshr i32 %and3.i.i34, 8, !dbg !3069
  %or4.i.i36 = or i32 %or.i.i33, %shr.i.i35, !dbg !3069
  %47 = load i32*, i32** %p.addr.i.i27, align 8, !dbg !3069
  %48 = load i32, i32* %47, align 4, !dbg !3069
  %and5.i.i37 = and i32 %48, -16777216, !dbg !3069
  %shr6.i.i38 = lshr i32 %and5.i.i37, 24, !dbg !3069
  %or7.i.i39 = or i32 %or4.i.i36, %shr6.i.i38, !dbg !3069
  br label %__be32_to_cpup.exit44, !dbg !3069

cond.false.i.i42:                                 ; preds = %__be32_to_cpup.exit
  %49 = load i32*, i32** %p.addr.i.i27, align 8, !dbg !3069
  %50 = load i32, i32* %49, align 4, !dbg !3069
  %call.i.i41 = call i32 @__fswab32(i32 %50) #10, !dbg !3069
  br label %__be32_to_cpup.exit44, !dbg !3069

__be32_to_cpup.exit44:                            ; preds = %cond.true.i.i40, %cond.false.i.i42
  %cond.i.i43 = phi i32 [ %or7.i.i39, %cond.true.i.i40 ], [ %call.i.i41, %cond.false.i.i42 ], !dbg !3069
  %conv21 = zext i32 %cond.i.i43 to i64, !dbg !3070
  store i64 %conv21, i64* %volt, align 8, !dbg !3066
  %51 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3071
  %52 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3072
  %53 = load i64, i64* %freq, align 8, !dbg !3073
  %54 = load i64, i64* %volt, align 8, !dbg !3074
  %call22 = call i32 @_opp_add_v1(%struct.opp_table* %51, %struct.device* %52, i64 %53, i64 %54, i1 zeroext false) #7, !dbg !3075
  store i32 %call22, i32* %ret, align 4, !dbg !3076
  %55 = load i32, i32* %ret, align 4, !dbg !3077
  %tobool23 = icmp ne i32 %55, 0, !dbg !3077
  br i1 %tobool23, label %if.then24, label %if.end25, !dbg !3079

if.then24:                                        ; preds = %__be32_to_cpup.exit44
  %56 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3080
  %57 = load i64, i64* %freq, align 8, !dbg !3080
  %58 = load i32, i32* %ret, align 4, !dbg !3080
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %56, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.47, i64 0, i64 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__func__._of_add_opp_table_v1, i64 0, i64 0), i64 %57, i32 %58) #8, !dbg !3080
  br label %remove_static_opp, !dbg !3082

if.end25:                                         ; preds = %__be32_to_cpup.exit44
  %59 = load i32, i32* %nr, align 4, !dbg !3083
  %sub = sub i32 %59, 2, !dbg !3083
  store i32 %sub, i32* %nr, align 4, !dbg !3083
  br label %while.cond, !dbg !3056, !llvm.loop !3084

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !3086
  br label %return, !dbg !3086

remove_static_opp:                                ; preds = %if.then24, %if.then13, %if.then9, %if.then6
  call void @llvm.dbg.label(metadata !3087), !dbg !3088
  %60 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3089
  %call26 = call zeroext i1 @_opp_remove_all_static(%struct.opp_table* %60) #7, !dbg !3090
  %61 = load i32, i32* %ret, align 4, !dbg !3091
  store i32 %61, i32* %retval, align 4, !dbg !3092
  br label %return, !dbg !3092

return:                                           ; preds = %remove_static_opp, %while.end, %if.then
  %62 = load i32, i32* %retval, align 4, !dbg !3093
  ret i32 %62, !dbg !3093
}

; Function Attrs: noredzone
declare dso_local void @dev_pm_opp_put_opp_table(%struct.opp_table*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_opp_of_add_table_indexed(%struct.device* %dev, i32 %index) #0 !dbg !3094 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %index.addr = alloca i32, align 4
  %opp_table = alloca %struct.opp_table*, align 8
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3097, metadata !DIExpression()), !dbg !3098
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3099, metadata !DIExpression()), !dbg !3100
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table, metadata !3101, metadata !DIExpression()), !dbg !3102
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.declare(metadata i32* %count, metadata !3105, metadata !DIExpression()), !dbg !3106
  %0 = load i32, i32* %index.addr, align 4, !dbg !3107
  %tobool = icmp ne i32 %0, 0, !dbg !3107
  br i1 %tobool, label %if.then, label %if.end2, !dbg !3109

if.then:                                          ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3110
  %of_node = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 23, !dbg !3112
  %2 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3112
  %call = call i32 @of_count_phandle_with_args(%struct.device_node* %2, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.8, i64 0, i64 0), i8* null) #7, !dbg !3113
  store i32 %call, i32* %count, align 4, !dbg !3114
  %3 = load i32, i32* %count, align 4, !dbg !3115
  %cmp = icmp eq i32 %3, 1, !dbg !3117
  br i1 %cmp, label %if.then1, label %if.end, !dbg !3118

if.then1:                                         ; preds = %if.then
  store i32 0, i32* %index.addr, align 4, !dbg !3119
  br label %if.end, !dbg !3120

if.end:                                           ; preds = %if.then1, %if.then
  br label %if.end2, !dbg !3121

if.end2:                                          ; preds = %if.end, %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3122
  %5 = load i32, i32* %index.addr, align 4, !dbg !3123
  %call3 = call %struct.opp_table* @dev_pm_opp_get_opp_table_indexed(%struct.device* %4, i32 %5) #7, !dbg !3124
  store %struct.opp_table* %call3, %struct.opp_table** %opp_table, align 8, !dbg !3125
  %6 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3126
  %7 = bitcast %struct.opp_table* %6 to i8*, !dbg !3126
  %call4 = call zeroext i1 @IS_ERR(i8* %7) #7, !dbg !3128
  br i1 %call4, label %if.then5, label %if.end7, !dbg !3129

if.then5:                                         ; preds = %if.end2
  %8 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3130
  %9 = bitcast %struct.opp_table* %8 to i8*, !dbg !3130
  %call6 = call i64 @PTR_ERR(i8* %9) #7, !dbg !3131
  %conv = trunc i64 %call6 to i32, !dbg !3131
  store i32 %conv, i32* %retval, align 4, !dbg !3132
  br label %return, !dbg !3132

if.end7:                                          ; preds = %if.end2
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3133
  %11 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3134
  %call8 = call i32 @_of_add_opp_table_v2(%struct.device* %10, %struct.opp_table* %11) #7, !dbg !3135
  store i32 %call8, i32* %ret, align 4, !dbg !3136
  %12 = load i32, i32* %ret, align 4, !dbg !3137
  %tobool9 = icmp ne i32 %12, 0, !dbg !3137
  br i1 %tobool9, label %if.then10, label %if.end11, !dbg !3139

if.then10:                                        ; preds = %if.end7
  %13 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3140
  call void @dev_pm_opp_put_opp_table(%struct.opp_table* %13) #7, !dbg !3141
  br label %if.end11, !dbg !3141

if.end11:                                         ; preds = %if.then10, %if.end7
  %14 = load i32, i32* %ret, align 4, !dbg !3142
  store i32 %14, i32* %retval, align 4, !dbg !3143
  br label %return, !dbg !3143

return:                                           ; preds = %if.end11, %if.then5
  %15 = load i32, i32* %retval, align 4, !dbg !3144
  ret i32 %15, !dbg !3144
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dev_pm_opp_of_cpumask_remove_table(%struct.cpumask* %cpumask) #0 !dbg !3145 {
entry:
  %cpumask.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %cpumask, %struct.cpumask** %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpumask.addr, metadata !3148, metadata !DIExpression()), !dbg !3149
  %0 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !3150
  call void @_dev_pm_opp_cpumask_remove_table(%struct.cpumask* %0, i32 -1) #7, !dbg !3151
  ret void, !dbg !3152
}

; Function Attrs: noredzone
declare dso_local void @_dev_pm_opp_cpumask_remove_table(%struct.cpumask*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_opp_of_cpumask_add_table(%struct.cpumask* %cpumask) #0 !dbg !3153 {
entry:
  %retval = alloca i32, align 4
  %cpumask.addr = alloca %struct.cpumask*, align 8
  %cpu_dev = alloca %struct.device*, align 8
  %cpu = alloca i32, align 4
  %ret = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %tmp31 = alloca i32, align 4
  store %struct.cpumask* %cpumask, %struct.cpumask** %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpumask.addr, metadata !3156, metadata !DIExpression()), !dbg !3157
  call void @llvm.dbg.declare(metadata %struct.device** %cpu_dev, metadata !3158, metadata !DIExpression()), !dbg !3159
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !3160, metadata !DIExpression()), !dbg !3161
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !3164, metadata !DIExpression()), !dbg !3167
  %0 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !3167
  %call = call zeroext i1 @cpumask_empty(%struct.cpumask* %0) #7, !dbg !3167
  %lnot = xor i1 %call, true, !dbg !3167
  %lnot1 = xor i1 %lnot, true, !dbg !3167
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3167
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !3167
  %1 = load i32, i32* %__ret_warn_on, align 4, !dbg !3168
  %tobool = icmp ne i32 %1, 0, !dbg !3168
  %lnot2 = xor i1 %tobool, true, !dbg !3168
  %lnot4 = xor i1 %lnot2, true, !dbg !3168
  %lnot.ext5 = zext i1 %lnot4 to i32, !dbg !3168
  %conv = sext i32 %lnot.ext5 to i64, !dbg !3168
  %tobool6 = icmp ne i64 %conv, 0, !dbg !3168
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3167

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3168

do.body:                                          ; preds = %if.then
  br label %do.body7, !dbg !3170

do.body7:                                         ; preds = %do.body
  br label %do.end, !dbg !3172

do.end:                                           ; preds = %do.body7
  br label %do.body8, !dbg !3170

do.body8:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.9, i64 0, i64 0), i32 1070, i32 2305, i64 12) #9, !dbg !3174, !srcloc !3176
  br label %do.end9, !dbg !3174

do.end9:                                          ; preds = %do.body8
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #9, !dbg !3177, !srcloc !3179
  br label %do.body10, !dbg !3170

do.body10:                                        ; preds = %do.end9
  br label %do.end11, !dbg !3180

do.end11:                                         ; preds = %do.body10
  br label %do.end12, !dbg !3170

do.end12:                                         ; preds = %do.end11
  br label %if.end, !dbg !3170

if.end:                                           ; preds = %do.end12, %entry
  %2 = load i32, i32* %__ret_warn_on, align 4, !dbg !3167
  %tobool13 = icmp ne i32 %2, 0, !dbg !3167
  %lnot14 = xor i1 %tobool13, true, !dbg !3167
  %lnot16 = xor i1 %lnot14, true, !dbg !3167
  %lnot.ext17 = zext i1 %lnot16 to i32, !dbg !3167
  %conv18 = sext i32 %lnot.ext17 to i64, !dbg !3167
  store i64 %conv18, i64* %tmp, align 8, !dbg !3168
  %3 = load i64, i64* %tmp, align 8, !dbg !3167
  %tobool19 = icmp ne i64 %3, 0, !dbg !3182
  br i1 %tobool19, label %if.then20, label %if.end21, !dbg !3183

if.then20:                                        ; preds = %if.end
  store i32 -19, i32* %retval, align 4, !dbg !3184
  br label %return, !dbg !3184

if.end21:                                         ; preds = %if.end
  store i32 0, i32* %cpu, align 4, !dbg !3185
  br label %for.cond, !dbg !3185

for.cond:                                         ; preds = %for.inc, %if.end21
  %4 = load i32, i32* %cpu, align 4, !dbg !3187
  %cmp = icmp slt i32 %4, 1, !dbg !3187
  br i1 %cmp, label %for.body, label %for.end, !dbg !3185

for.body:                                         ; preds = %for.cond
  %5 = load i32, i32* %cpu, align 4, !dbg !3189
  %call23 = call %struct.device* @get_cpu_device(i32 %5) #7, !dbg !3191
  store %struct.device* %call23, %struct.device** %cpu_dev, align 8, !dbg !3192
  %6 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !3193
  %tobool24 = icmp ne %struct.device* %6, null, !dbg !3193
  br i1 %tobool24, label %if.end27, label %if.then25, !dbg !3195

if.then25:                                        ; preds = %for.body
  %7 = load i32, i32* %cpu, align 4, !dbg !3196
  %call26 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([32 x i8], [32 x i8]* @__func__.dev_pm_opp_of_cpumask_add_table, i64 0, i64 0), i32 %7) #8, !dbg !3196
  store i32 -19, i32* %ret, align 4, !dbg !3198
  br label %remove_table, !dbg !3199

if.end27:                                         ; preds = %for.body
  %8 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !3200
  %call28 = call i32 @dev_pm_opp_of_add_table(%struct.device* %8) #7, !dbg !3201
  store i32 %call28, i32* %ret, align 4, !dbg !3202
  %9 = load i32, i32* %ret, align 4, !dbg !3203
  %tobool29 = icmp ne i32 %9, 0, !dbg !3203
  br i1 %tobool29, label %if.then30, label %if.end32, !dbg !3205

if.then30:                                        ; preds = %if.end27
  store i32 0, i32* %tmp31, align 4, !dbg !3206
  %10 = load i32, i32* %tmp31, align 4, !dbg !3210
  br label %remove_table, !dbg !3211

if.end32:                                         ; preds = %if.end27
  br label %for.inc, !dbg !3212

for.inc:                                          ; preds = %if.end32
  %11 = load i32, i32* %cpu, align 4, !dbg !3187
  %inc = add i32 %11, 1, !dbg !3187
  store i32 %inc, i32* %cpu, align 4, !dbg !3187
  %12 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !3187
  br label %for.cond, !dbg !3187, !llvm.loop !3213

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3215
  br label %return, !dbg !3215

remove_table:                                     ; preds = %if.then30, %if.then25
  call void @llvm.dbg.label(metadata !3216), !dbg !3217
  %13 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !3218
  %14 = load i32, i32* %cpu, align 4, !dbg !3219
  call void @_dev_pm_opp_cpumask_remove_table(%struct.cpumask* %13, i32 %14) #7, !dbg !3220
  %15 = load i32, i32* %ret, align 4, !dbg !3221
  store i32 %15, i32* %retval, align 4, !dbg !3222
  br label %return, !dbg !3222

return:                                           ; preds = %remove_table, %for.end, %if.then20
  %16 = load i32, i32* %retval, align 4, !dbg !3223
  ret i32 %16, !dbg !3223
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @cpumask_empty(%struct.cpumask* %srcp) #0 !dbg !3224 {
entry:
  %srcp.addr = alloca %struct.cpumask*, align 8
  store %struct.cpumask* %srcp, %struct.cpumask** %srcp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %srcp.addr, metadata !3227, metadata !DIExpression()), !dbg !3228
  %0 = load %struct.cpumask*, %struct.cpumask** %srcp.addr, align 8, !dbg !3229
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %0, i32 0, i32 0, !dbg !3229
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3229
  %call = call i32 @bitmap_empty(i64* %arraydecay, i32 1) #7, !dbg !3230
  %tobool = icmp ne i32 %call, 0, !dbg !3230
  ret i1 %tobool, !dbg !3231
}

; Function Attrs: noredzone
declare dso_local %struct.device* @get_cpu_device(i32) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_opp_of_get_sharing_cpus(%struct.device* %cpu_dev, %struct.cpumask* %cpumask) #0 !dbg !3232 {
entry:
  %retval = alloca i32, align 4
  %cpu_dev.addr = alloca %struct.device*, align 8
  %cpumask.addr = alloca %struct.cpumask*, align 8
  %np = alloca %struct.device_node*, align 8
  %tmp_np = alloca %struct.device_node*, align 8
  %cpu_np = alloca %struct.device_node*, align 8
  %cpu = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device* %cpu_dev, %struct.device** %cpu_dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %cpu_dev.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  store %struct.cpumask* %cpumask, %struct.cpumask** %cpumask.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpumask.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.declare(metadata %struct.device_node** %tmp_np, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct.device_node** %cpu_np, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %cpu, metadata !3246, metadata !DIExpression()), !dbg !3247
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3248, metadata !DIExpression()), !dbg !3249
  store i32 0, i32* %ret, align 4, !dbg !3249
  %0 = load %struct.device*, %struct.device** %cpu_dev.addr, align 8, !dbg !3250
  %call = call %struct.device_node* @dev_pm_opp_of_get_opp_desc_node(%struct.device* %0) #7, !dbg !3251
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3252
  %1 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3253
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3253
  br i1 %tobool, label %if.end, label %if.then, !dbg !3255

if.then:                                          ; preds = %entry
  store i32 -2, i32* %retval, align 4, !dbg !3256
  br label %return, !dbg !3256

if.end:                                           ; preds = %entry
  %2 = load %struct.device*, %struct.device** %cpu_dev.addr, align 8, !dbg !3258
  %id = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 26, !dbg !3259
  %3 = load i32, i32* %id, align 4, !dbg !3259
  %4 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !3260
  call void @cpumask_set_cpu(i32 %3, %struct.cpumask* %4) #7, !dbg !3261
  %5 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3262
  %call1 = call zeroext i1 @of_property_read_bool(%struct.device_node* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0)) #7, !dbg !3264
  br i1 %call1, label %if.end3, label %if.then2, !dbg !3265

if.then2:                                         ; preds = %if.end
  br label %put_cpu_node, !dbg !3266

if.end3:                                          ; preds = %if.end
  store i32 0, i32* %cpu, align 4, !dbg !3267
  br label %for.cond, !dbg !3267

for.cond:                                         ; preds = %for.inc, %if.end3
  %6 = load i32, i32* %cpu, align 4, !dbg !3269
  %cmp = icmp slt i32 %6, 1, !dbg !3269
  br i1 %cmp, label %for.body, label %for.end, !dbg !3267

for.body:                                         ; preds = %for.cond
  %7 = load i32, i32* %cpu, align 4, !dbg !3271
  %8 = load %struct.device*, %struct.device** %cpu_dev.addr, align 8, !dbg !3274
  %id4 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 26, !dbg !3275
  %9 = load i32, i32* %id4, align 4, !dbg !3275
  %cmp5 = icmp eq i32 %7, %9, !dbg !3276
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3277

if.then6:                                         ; preds = %for.body
  br label %for.inc, !dbg !3278

if.end7:                                          ; preds = %for.body
  %10 = load i32, i32* %cpu, align 4, !dbg !3279
  %call8 = call %struct.device_node* @of_cpu_device_node_get(i32 %10) #7, !dbg !3280
  store %struct.device_node* %call8, %struct.device_node** %cpu_np, align 8, !dbg !3281
  %11 = load %struct.device_node*, %struct.device_node** %cpu_np, align 8, !dbg !3282
  %tobool9 = icmp ne %struct.device_node* %11, null, !dbg !3282
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3284

if.then10:                                        ; preds = %if.end7
  %12 = load %struct.device*, %struct.device** %cpu_dev.addr, align 8, !dbg !3285
  %13 = load i32, i32* %cpu, align 4, !dbg !3285
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %12, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @__func__.dev_pm_opp_of_get_sharing_cpus, i64 0, i64 0), i32 %13) #8, !dbg !3285
  store i32 -2, i32* %ret, align 4, !dbg !3287
  br label %put_cpu_node, !dbg !3288

if.end11:                                         ; preds = %if.end7
  %14 = load %struct.device_node*, %struct.device_node** %cpu_np, align 8, !dbg !3289
  %call12 = call %struct.device_node* @_opp_of_get_opp_desc_node(%struct.device_node* %14, i32 0) #7, !dbg !3290
  store %struct.device_node* %call12, %struct.device_node** %tmp_np, align 8, !dbg !3291
  %15 = load %struct.device_node*, %struct.device_node** %cpu_np, align 8, !dbg !3292
  call void @of_node_put(%struct.device_node* %15) #7, !dbg !3293
  %16 = load %struct.device_node*, %struct.device_node** %tmp_np, align 8, !dbg !3294
  %tobool13 = icmp ne %struct.device_node* %16, null, !dbg !3294
  br i1 %tobool13, label %if.end16, label %if.then14, !dbg !3296

if.then14:                                        ; preds = %if.end11
  %17 = load %struct.device_node*, %struct.device_node** %cpu_np, align 8, !dbg !3297
  %call15 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.12, i64 0, i64 0), %struct.device_node* %17) #8, !dbg !3297
  store i32 -2, i32* %ret, align 4, !dbg !3299
  br label %put_cpu_node, !dbg !3300

if.end16:                                         ; preds = %if.end11
  %18 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3301
  %19 = load %struct.device_node*, %struct.device_node** %tmp_np, align 8, !dbg !3303
  %cmp17 = icmp eq %struct.device_node* %18, %19, !dbg !3304
  br i1 %cmp17, label %if.then18, label %if.end19, !dbg !3305

if.then18:                                        ; preds = %if.end16
  %20 = load i32, i32* %cpu, align 4, !dbg !3306
  %21 = load %struct.cpumask*, %struct.cpumask** %cpumask.addr, align 8, !dbg !3307
  call void @cpumask_set_cpu(i32 %20, %struct.cpumask* %21) #7, !dbg !3308
  br label %if.end19, !dbg !3308

if.end19:                                         ; preds = %if.then18, %if.end16
  %22 = load %struct.device_node*, %struct.device_node** %tmp_np, align 8, !dbg !3309
  call void @of_node_put(%struct.device_node* %22) #7, !dbg !3310
  br label %for.inc, !dbg !3311

for.inc:                                          ; preds = %if.end19, %if.then6
  %23 = load i32, i32* %cpu, align 4, !dbg !3269
  %inc = add i32 %23, 1, !dbg !3269
  store i32 %inc, i32* %cpu, align 4, !dbg !3269
  br label %for.cond, !dbg !3269, !llvm.loop !3312

for.end:                                          ; preds = %for.cond
  br label %put_cpu_node, !dbg !3313

put_cpu_node:                                     ; preds = %for.end, %if.then14, %if.then10, %if.then2
  call void @llvm.dbg.label(metadata !3314), !dbg !3315
  %24 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3316
  call void @of_node_put(%struct.device_node* %24) #7, !dbg !3317
  %25 = load i32, i32* %ret, align 4, !dbg !3318
  store i32 %25, i32* %retval, align 4, !dbg !3319
  br label %return, !dbg !3319

return:                                           ; preds = %put_cpu_node, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !3320
  ret i32 %26, !dbg !3320
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpumask_set_cpu(i32 %cpu, %struct.cpumask* %dstp) #0 !dbg !3321 {
entry:
  %cpu.addr = alloca i32, align 4
  %dstp.addr = alloca %struct.cpumask*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3324, metadata !DIExpression()), !dbg !3325
  store %struct.cpumask* %dstp, %struct.cpumask** %dstp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %dstp.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3328
  %call = call i32 @cpumask_check(i32 %0) #7, !dbg !3329
  %conv = zext i32 %call to i64, !dbg !3329
  %1 = load %struct.cpumask*, %struct.cpumask** %dstp.addr, align 8, !dbg !3330
  %bits = getelementptr inbounds %struct.cpumask, %struct.cpumask* %1, i32 0, i32 0, !dbg !3330
  %arraydecay = getelementptr inbounds [1 x i64], [1 x i64]* %bits, i64 0, i64 0, !dbg !3330
  call void @set_bit(i64 %conv, i64* %arraydecay) #7, !dbg !3331
  ret void, !dbg !3332
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_cpu_device_node_get(i32 %cpu) #0 !dbg !3333 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %cpu.addr = alloca i32, align 4
  %cpu_dev = alloca %struct.device*, align 8
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !3337, metadata !DIExpression()), !dbg !3338
  call void @llvm.dbg.declare(metadata %struct.device** %cpu_dev, metadata !3339, metadata !DIExpression()), !dbg !3340
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !3341
  %call = call %struct.device* @get_cpu_device(i32 %0) #7, !dbg !3342
  store %struct.device* %call, %struct.device** %cpu_dev, align 8, !dbg !3343
  %1 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !3344
  %tobool = icmp ne %struct.device* %1, null, !dbg !3344
  br i1 %tobool, label %if.end, label %if.then, !dbg !3346

if.then:                                          ; preds = %entry
  %2 = load i32, i32* %cpu.addr, align 4, !dbg !3347
  %call1 = call %struct.device_node* @of_get_cpu_node(i32 %2, i32* null) #7, !dbg !3348
  store %struct.device_node* %call1, %struct.device_node** %retval, align 8, !dbg !3349
  br label %return, !dbg !3349

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %cpu_dev, align 8, !dbg !3350
  %of_node = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !3351
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3351
  %call2 = call %struct.device_node* @of_node_get(%struct.device_node* %4) #7, !dbg !3352
  store %struct.device_node* %call2, %struct.device_node** %retval, align 8, !dbg !3353
  br label %return, !dbg !3353

return:                                           ; preds = %if.end, %if.then
  %5 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3354
  ret %struct.device_node* %5, !dbg !3354
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @of_get_required_opp_performance_state(%struct.device_node* %np, i32 %index) #0 !dbg !3355 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %opp = alloca %struct.dev_pm_opp*, align 8
  %required_np = alloca %struct.device_node*, align 8
  %opp_table = alloca %struct.opp_table*, align 8
  %pstate = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3358, metadata !DIExpression()), !dbg !3359
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3360, metadata !DIExpression()), !dbg !3361
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp, metadata !3362, metadata !DIExpression()), !dbg !3363
  call void @llvm.dbg.declare(metadata %struct.device_node** %required_np, metadata !3364, metadata !DIExpression()), !dbg !3365
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.declare(metadata i32* %pstate, metadata !3368, metadata !DIExpression()), !dbg !3369
  store i32 -22, i32* %pstate, align 4, !dbg !3369
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3370
  %1 = load i32, i32* %index.addr, align 4, !dbg !3371
  %call = call %struct.device_node* @of_parse_required_opp(%struct.device_node* %0, i32 %1) #7, !dbg !3372
  store %struct.device_node* %call, %struct.device_node** %required_np, align 8, !dbg !3373
  %2 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !3374
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !3374
  br i1 %tobool, label %if.end, label %if.then, !dbg !3376

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !3377
  br label %return, !dbg !3377

if.end:                                           ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !3378
  %call1 = call %struct.opp_table* @_find_table_of_opp_np(%struct.device_node* %3) #7, !dbg !3379
  store %struct.opp_table* %call1, %struct.opp_table** %opp_table, align 8, !dbg !3380
  %4 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3381
  %5 = bitcast %struct.opp_table* %4 to i8*, !dbg !3381
  %call2 = call zeroext i1 @IS_ERR(i8* %5) #7, !dbg !3383
  br i1 %call2, label %if.then3, label %if.end6, !dbg !3384

if.then3:                                         ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3385
  %7 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3385
  %8 = bitcast %struct.opp_table* %7 to i8*, !dbg !3385
  %call4 = call i64 @PTR_ERR(i8* %8) #7, !dbg !3385
  %call5 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.13, i64 0, i64 0), i8* getelementptr inbounds ([38 x i8], [38 x i8]* @__func__.of_get_required_opp_performance_state, i64 0, i64 0), %struct.device_node* %6, i64 %call4) #8, !dbg !3385
  br label %put_required_np, !dbg !3387

if.end6:                                          ; preds = %if.end
  %9 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3388
  %10 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !3389
  %call7 = call %struct.dev_pm_opp* @_find_opp_of_np(%struct.opp_table* %9, %struct.device_node* %10) #7, !dbg !3390
  store %struct.dev_pm_opp* %call7, %struct.dev_pm_opp** %opp, align 8, !dbg !3391
  %11 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3392
  %tobool8 = icmp ne %struct.dev_pm_opp* %11, null, !dbg !3392
  br i1 %tobool8, label %if.then9, label %if.end11, !dbg !3394

if.then9:                                         ; preds = %if.end6
  %12 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3395
  %pstate10 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %12, i32 0, i32 6, !dbg !3397
  %13 = load i32, i32* %pstate10, align 8, !dbg !3397
  store i32 %13, i32* %pstate, align 4, !dbg !3398
  %14 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3399
  call void @dev_pm_opp_put(%struct.dev_pm_opp* %14) #7, !dbg !3400
  br label %if.end11, !dbg !3401

if.end11:                                         ; preds = %if.then9, %if.end6
  %15 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3402
  call void @dev_pm_opp_put_opp_table(%struct.opp_table* %15) #7, !dbg !3403
  br label %put_required_np, !dbg !3403

put_required_np:                                  ; preds = %if.end11, %if.then3
  call void @llvm.dbg.label(metadata !3404), !dbg !3405
  %16 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !3406
  call void @of_node_put(%struct.device_node* %16) #7, !dbg !3407
  %17 = load i32, i32* %pstate, align 4, !dbg !3408
  store i32 %17, i32* %retval, align 4, !dbg !3409
  br label %return, !dbg !3409

return:                                           ; preds = %put_required_np, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3410
  ret i32 %18, !dbg !3410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.device_node* @of_parse_required_opp(%struct.device_node* %np, i32 %index) #0 !dbg !3411 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %index.addr = alloca i32, align 4
  %required_np = alloca %struct.device_node*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata %struct.device_node** %required_np, metadata !3416, metadata !DIExpression()), !dbg !3417
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3418
  %1 = load i32, i32* %index.addr, align 4, !dbg !3419
  %call = call %struct.device_node* @of_parse_phandle(%struct.device_node* %0, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0), i32 %1) #7, !dbg !3420
  store %struct.device_node* %call, %struct.device_node** %required_np, align 8, !dbg !3421
  %2 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !3422
  %tobool = icmp ne %struct.device_node* %2, null, !dbg !3422
  %lnot = xor i1 %tobool, true, !dbg !3422
  %lnot1 = xor i1 %lnot, true, !dbg !3422
  %lnot2 = xor i1 %lnot1, true, !dbg !3422
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3422
  %conv = sext i32 %lnot.ext to i64, !dbg !3422
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3422
  br i1 %tobool3, label %if.then, label %if.end, !dbg !3424

if.then:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3425
  %4 = load i32, i32* %index.addr, align 4, !dbg !3425
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.48, i64 0, i64 0), i8* getelementptr inbounds ([22 x i8], [22 x i8]* @__func__.of_parse_required_opp, i64 0, i64 0), %struct.device_node* %3, i32 %4) #8, !dbg !3425
  br label %if.end, !dbg !3427

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.device_node*, %struct.device_node** %required_np, align 8, !dbg !3428
  ret %struct.device_node* %5, !dbg !3429
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.opp_table* @_find_table_of_opp_np(%struct.device_node* %opp_np) #0 !dbg !3430 {
entry:
  %retval = alloca %struct.opp_table*, align 8
  %opp_np.addr = alloca %struct.device_node*, align 8
  %opp_table = alloca %struct.opp_table*, align 8
  %opp_table_np = alloca %struct.device_node*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.opp_table*, align 8
  %__mptr6 = alloca i8*, align 8
  %tmp10 = alloca %struct.opp_table*, align 8
  store %struct.device_node* %opp_np, %struct.device_node** %opp_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %opp_np.addr, metadata !3433, metadata !DIExpression()), !dbg !3434
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table, metadata !3435, metadata !DIExpression()), !dbg !3436
  call void @llvm.dbg.declare(metadata %struct.device_node** %opp_table_np, metadata !3437, metadata !DIExpression()), !dbg !3438
  br label %do.body, !dbg !3439

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3440

do.end:                                           ; preds = %do.body
  %0 = load %struct.device_node*, %struct.device_node** %opp_np.addr, align 8, !dbg !3442
  %call = call %struct.device_node* @of_get_parent(%struct.device_node* %0) #7, !dbg !3443
  store %struct.device_node* %call, %struct.device_node** %opp_table_np, align 8, !dbg !3444
  %1 = load %struct.device_node*, %struct.device_node** %opp_table_np, align 8, !dbg !3445
  %tobool = icmp ne %struct.device_node* %1, null, !dbg !3445
  br i1 %tobool, label %if.end, label %if.then, !dbg !3447

if.then:                                          ; preds = %do.end
  br label %err, !dbg !3448

if.end:                                           ; preds = %do.end
  %2 = load %struct.device_node*, %struct.device_node** %opp_table_np, align 8, !dbg !3449
  call void @of_node_put(%struct.device_node* %2) #7, !dbg !3450
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3451, metadata !DIExpression()), !dbg !3454
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @opp_tables, i32 0, i32 0), align 8, !dbg !3454
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !3454
  store i8* %4, i8** %__mptr, align 8, !dbg !3454
  br label %do.body1, !dbg !3454

do.body1:                                         ; preds = %if.end
  br label %do.end2, !dbg !3455

do.end2:                                          ; preds = %do.body1
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3454
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !3454
  %6 = bitcast i8* %add.ptr to %struct.opp_table*, !dbg !3454
  store %struct.opp_table* %6, %struct.opp_table** %tmp, align 8, !dbg !3455
  %7 = load %struct.opp_table*, %struct.opp_table** %tmp, align 8, !dbg !3454
  store %struct.opp_table* %7, %struct.opp_table** %opp_table, align 8, !dbg !3457
  br label %for.cond, !dbg !3457

for.cond:                                         ; preds = %do.end9, %do.end2
  %8 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3458
  %node = getelementptr inbounds %struct.opp_table, %struct.opp_table* %8, i32 0, i32 0, !dbg !3458
  %cmp = icmp eq %struct.list_head* %node, @opp_tables, !dbg !3458
  %lnot = xor i1 %cmp, true, !dbg !3458
  br i1 %lnot, label %for.body, label %for.end, !dbg !3457

for.body:                                         ; preds = %for.cond
  %9 = load %struct.device_node*, %struct.device_node** %opp_table_np, align 8, !dbg !3460
  %10 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3463
  %np = getelementptr inbounds %struct.opp_table, %struct.opp_table* %10, i32 0, i32 6, !dbg !3464
  %11 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3464
  %cmp3 = icmp eq %struct.device_node* %9, %11, !dbg !3465
  br i1 %cmp3, label %if.then4, label %if.end5, !dbg !3466

if.then4:                                         ; preds = %for.body
  %12 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3467
  call void @_get_opp_table_kref(%struct.opp_table* %12) #7, !dbg !3469
  %13 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3470
  store %struct.opp_table* %13, %struct.opp_table** %retval, align 8, !dbg !3471
  br label %return, !dbg !3471

if.end5:                                          ; preds = %for.body
  br label %for.inc, !dbg !3472

for.inc:                                          ; preds = %if.end5
  call void @llvm.dbg.declare(metadata i8** %__mptr6, metadata !3473, metadata !DIExpression()), !dbg !3475
  %14 = load %struct.opp_table*, %struct.opp_table** %opp_table, align 8, !dbg !3475
  %node7 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %14, i32 0, i32 0, !dbg !3475
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node7, i32 0, i32 0, !dbg !3475
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3475
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !3475
  store i8* %16, i8** %__mptr6, align 8, !dbg !3475
  br label %do.body8, !dbg !3475

do.body8:                                         ; preds = %for.inc
  br label %do.end9, !dbg !3476

do.end9:                                          ; preds = %do.body8
  %17 = load i8*, i8** %__mptr6, align 8, !dbg !3475
  %add.ptr11 = getelementptr i8, i8* %17, i64 0, !dbg !3475
  %18 = bitcast i8* %add.ptr11 to %struct.opp_table*, !dbg !3475
  store %struct.opp_table* %18, %struct.opp_table** %tmp10, align 8, !dbg !3476
  %19 = load %struct.opp_table*, %struct.opp_table** %tmp10, align 8, !dbg !3475
  store %struct.opp_table* %19, %struct.opp_table** %opp_table, align 8, !dbg !3458
  br label %for.cond, !dbg !3458, !llvm.loop !3478

for.end:                                          ; preds = %for.cond
  br label %err, !dbg !3479

err:                                              ; preds = %for.end, %if.then
  call void @llvm.dbg.label(metadata !3480), !dbg !3481
  %call12 = call i8* @ERR_PTR(i64 -19) #7, !dbg !3482
  %20 = bitcast i8* %call12 to %struct.opp_table*, !dbg !3482
  store %struct.opp_table* %20, %struct.opp_table** %retval, align 8, !dbg !3483
  br label %return, !dbg !3483

return:                                           ; preds = %err, %if.then4
  %21 = load %struct.opp_table*, %struct.opp_table** %retval, align 8, !dbg !3484
  ret %struct.opp_table* %21, !dbg !3484
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dev_pm_opp* @_find_opp_of_np(%struct.opp_table* %opp_table, %struct.device_node* %opp_np) #0 !dbg !3485 {
entry:
  %retval = alloca %struct.dev_pm_opp*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %opp_np.addr = alloca %struct.device_node*, align 8
  %opp = alloca %struct.dev_pm_opp*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.dev_pm_opp*, align 8
  %__mptr4 = alloca i8*, align 8
  %tmp9 = alloca %struct.dev_pm_opp*, align 8
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !3488, metadata !DIExpression()), !dbg !3489
  store %struct.device_node* %opp_np, %struct.device_node** %opp_np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %opp_np.addr, metadata !3490, metadata !DIExpression()), !dbg !3491
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp, metadata !3492, metadata !DIExpression()), !dbg !3493
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3494
  %lock = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 5, !dbg !3495
  call void @mutex_lock(%struct.mutex* %lock) #7, !dbg !3496
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3497, metadata !DIExpression()), !dbg !3500
  %1 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3500
  %opp_list = getelementptr inbounds %struct.opp_table, %struct.opp_table* %1, i32 0, i32 3, !dbg !3500
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %opp_list, i32 0, i32 0, !dbg !3500
  %2 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3500
  %3 = bitcast %struct.list_head* %2 to i8*, !dbg !3500
  store i8* %3, i8** %__mptr, align 8, !dbg !3500
  br label %do.body, !dbg !3500

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3501

do.end:                                           ; preds = %do.body
  %4 = load i8*, i8** %__mptr, align 8, !dbg !3500
  %add.ptr = getelementptr i8, i8* %4, i64 0, !dbg !3500
  %5 = bitcast i8* %add.ptr to %struct.dev_pm_opp*, !dbg !3500
  store %struct.dev_pm_opp* %5, %struct.dev_pm_opp** %tmp, align 8, !dbg !3501
  %6 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %tmp, align 8, !dbg !3500
  store %struct.dev_pm_opp* %6, %struct.dev_pm_opp** %opp, align 8, !dbg !3503
  br label %for.cond, !dbg !3503

for.cond:                                         ; preds = %do.end8, %do.end
  %7 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3504
  %node = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %7, i32 0, i32 0, !dbg !3504
  %8 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3504
  %opp_list1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %8, i32 0, i32 3, !dbg !3504
  %cmp = icmp eq %struct.list_head* %node, %opp_list1, !dbg !3504
  %lnot = xor i1 %cmp, true, !dbg !3504
  br i1 %lnot, label %for.body, label %for.end, !dbg !3503

for.body:                                         ; preds = %for.cond
  %9 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3506
  %np = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %9, i32 0, i32 14, !dbg !3509
  %10 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3509
  %11 = load %struct.device_node*, %struct.device_node** %opp_np.addr, align 8, !dbg !3510
  %cmp2 = icmp eq %struct.device_node* %10, %11, !dbg !3511
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3512

if.then:                                          ; preds = %for.body
  %12 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3513
  call void @dev_pm_opp_get(%struct.dev_pm_opp* %12) #7, !dbg !3515
  %13 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3516
  %lock3 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %13, i32 0, i32 5, !dbg !3517
  call void @mutex_unlock(%struct.mutex* %lock3) #7, !dbg !3518
  %14 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3519
  store %struct.dev_pm_opp* %14, %struct.dev_pm_opp** %retval, align 8, !dbg !3520
  br label %return, !dbg !3520

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3521

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr4, metadata !3522, metadata !DIExpression()), !dbg !3524
  %15 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp, align 8, !dbg !3524
  %node5 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %15, i32 0, i32 0, !dbg !3524
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %node5, i32 0, i32 0, !dbg !3524
  %16 = load %struct.list_head*, %struct.list_head** %next6, align 8, !dbg !3524
  %17 = bitcast %struct.list_head* %16 to i8*, !dbg !3524
  store i8* %17, i8** %__mptr4, align 8, !dbg !3524
  br label %do.body7, !dbg !3524

do.body7:                                         ; preds = %for.inc
  br label %do.end8, !dbg !3525

do.end8:                                          ; preds = %do.body7
  %18 = load i8*, i8** %__mptr4, align 8, !dbg !3524
  %add.ptr10 = getelementptr i8, i8* %18, i64 0, !dbg !3524
  %19 = bitcast i8* %add.ptr10 to %struct.dev_pm_opp*, !dbg !3524
  store %struct.dev_pm_opp* %19, %struct.dev_pm_opp** %tmp9, align 8, !dbg !3525
  %20 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %tmp9, align 8, !dbg !3524
  store %struct.dev_pm_opp* %20, %struct.dev_pm_opp** %opp, align 8, !dbg !3504
  br label %for.cond, !dbg !3504, !llvm.loop !3527

for.end:                                          ; preds = %for.cond
  %21 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !3529
  %lock11 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %21, i32 0, i32 5, !dbg !3530
  call void @mutex_unlock(%struct.mutex* %lock11) #7, !dbg !3531
  store %struct.dev_pm_opp* null, %struct.dev_pm_opp** %retval, align 8, !dbg !3532
  br label %return, !dbg !3532

return:                                           ; preds = %for.end, %if.then
  %22 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %retval, align 8, !dbg !3533
  ret %struct.dev_pm_opp* %22, !dbg !3533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.device_node* @dev_pm_opp_get_of_node(%struct.dev_pm_opp* %opp) #0 !dbg !3534 {
entry:
  %retval = alloca %struct.device_node*, align 8
  %opp.addr = alloca %struct.dev_pm_opp*, align 8
  store %struct.dev_pm_opp* %opp, %struct.dev_pm_opp** %opp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp.addr, metadata !3537, metadata !DIExpression()), !dbg !3538
  %0 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !3539
  %1 = bitcast %struct.dev_pm_opp* %0 to i8*, !dbg !3539
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %1) #7, !dbg !3541
  br i1 %call, label %if.then, label %if.end, !dbg !3542

if.then:                                          ; preds = %entry
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.14, i64 0, i64 0), i8* getelementptr inbounds ([23 x i8], [23 x i8]* @__func__.dev_pm_opp_get_of_node, i64 0, i64 0)) #8, !dbg !3543
  store %struct.device_node* null, %struct.device_node** %retval, align 8, !dbg !3545
  br label %return, !dbg !3545

if.end:                                           ; preds = %entry
  %2 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !3546
  %np = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %2, i32 0, i32 14, !dbg !3547
  %3 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3547
  %call2 = call %struct.device_node* @of_node_get(%struct.device_node* %3) #7, !dbg !3548
  store %struct.device_node* %call2, %struct.device_node** %retval, align 8, !dbg !3549
  br label %return, !dbg !3549

return:                                           ; preds = %if.end, %if.then
  %4 = load %struct.device_node*, %struct.device_node** %retval, align 8, !dbg !3550
  ret %struct.device_node* %4, !dbg !3550
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR_OR_NULL(i8* %ptr) #0 !dbg !3551 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3552, metadata !DIExpression()), !dbg !3553
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3554
  %tobool = icmp ne i8* %0, null, !dbg !3554
  %lnot = xor i1 %tobool, true, !dbg !3554
  %lnot1 = xor i1 %lnot, true, !dbg !3554
  %lnot2 = xor i1 %lnot1, true, !dbg !3554
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !3554
  %conv = sext i32 %lnot.ext to i64, !dbg !3554
  %tobool3 = icmp ne i64 %conv, 0, !dbg !3554
  br i1 %tobool3, label %lor.end, label %lor.rhs, !dbg !3555

lor.rhs:                                          ; preds = %entry
  %1 = load i8*, i8** %ptr.addr, align 8, !dbg !3556
  %2 = ptrtoint i8* %1 to i64, !dbg !3556
  %3 = inttoptr i64 %2 to i8*, !dbg !3556
  %4 = ptrtoint i8* %3 to i64, !dbg !3556
  %cmp = icmp uge i64 %4, -4095, !dbg !3556
  %lnot5 = xor i1 %cmp, true, !dbg !3556
  %lnot7 = xor i1 %lnot5, true, !dbg !3556
  %lnot.ext8 = zext i1 %lnot7 to i32, !dbg !3556
  %conv9 = sext i32 %lnot.ext8 to i64, !dbg !3556
  %tobool10 = icmp ne i64 %conv9, 0, !dbg !3555
  br label %lor.end, !dbg !3555

lor.end:                                          ; preds = %lor.rhs, %entry
  %5 = phi i1 [ true, %entry ], [ %tobool10, %lor.rhs ]
  ret i1 %5, !dbg !3557
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dev_pm_opp_of_register_em(%struct.device* %dev, %struct.cpumask* %cpus) #0 !dbg !3558 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %cpus.addr = alloca %struct.cpumask*, align 8
  %em_cb = alloca %struct.em_data_callback, align 1
  %np = alloca %struct.device_node*, align 8
  %ret = alloca i32, align 4
  %nr_opp = alloca i32, align 4
  %cap = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3559, metadata !DIExpression()), !dbg !3560
  store %struct.cpumask* %cpus, %struct.cpumask** %cpus.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %cpus.addr, metadata !3561, metadata !DIExpression()), !dbg !3562
  call void @llvm.dbg.declare(metadata %struct.em_data_callback* %em_cb, metadata !3563, metadata !DIExpression()), !dbg !3566
  %0 = bitcast %struct.em_data_callback* %em_cb to i8*, !dbg !3566
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3567, metadata !DIExpression()), !dbg !3568
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3569, metadata !DIExpression()), !dbg !3570
  call void @llvm.dbg.declare(metadata i32* %nr_opp, metadata !3571, metadata !DIExpression()), !dbg !3572
  call void @llvm.dbg.declare(metadata i32* %cap, metadata !3573, metadata !DIExpression()), !dbg !3574
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3575
  %2 = bitcast %struct.device* %1 to i8*, !dbg !3575
  %call = call zeroext i1 @IS_ERR_OR_NULL(i8* %2) #7, !dbg !3577
  br i1 %call, label %if.then, label %if.end, !dbg !3578

if.then:                                          ; preds = %entry
  store i32 -22, i32* %ret, align 4, !dbg !3579
  br label %failed, !dbg !3581

if.end:                                           ; preds = %entry
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3582
  %call1 = call i32 @dev_pm_opp_get_opp_count(%struct.device* %3) #7, !dbg !3583
  store i32 %call1, i32* %nr_opp, align 4, !dbg !3584
  %4 = load i32, i32* %nr_opp, align 4, !dbg !3585
  %cmp = icmp sle i32 %4, 0, !dbg !3587
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3588

if.then2:                                         ; preds = %if.end
  store i32 -22, i32* %ret, align 4, !dbg !3589
  br label %failed, !dbg !3591

if.end3:                                          ; preds = %if.end
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3592
  %of_node = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 23, !dbg !3593
  %6 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3593
  %call4 = call %struct.device_node* @of_node_get(%struct.device_node* %6) #7, !dbg !3594
  store %struct.device_node* %call4, %struct.device_node** %np, align 8, !dbg !3595
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3596
  %tobool = icmp ne %struct.device_node* %7, null, !dbg !3596
  br i1 %tobool, label %if.end6, label %if.then5, !dbg !3598

if.then5:                                         ; preds = %if.end3
  store i32 -22, i32* %ret, align 4, !dbg !3599
  br label %failed, !dbg !3601

if.end6:                                          ; preds = %if.end3
  %8 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3602
  %call7 = call i32 @of_property_read_u32(%struct.device_node* %8, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.15, i64 0, i64 0), i32* %cap) #7, !dbg !3603
  store i32 %call7, i32* %ret, align 4, !dbg !3604
  %9 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3605
  call void @of_node_put(%struct.device_node* %9) #7, !dbg !3606
  %10 = load i32, i32* %ret, align 4, !dbg !3607
  %tobool8 = icmp ne i32 %10, 0, !dbg !3607
  br i1 %tobool8, label %if.then10, label %lor.lhs.false, !dbg !3609

lor.lhs.false:                                    ; preds = %if.end6
  %11 = load i32, i32* %cap, align 4, !dbg !3610
  %tobool9 = icmp ne i32 %11, 0, !dbg !3610
  br i1 %tobool9, label %if.end11, label %if.then10, !dbg !3611

if.then10:                                        ; preds = %lor.lhs.false, %if.end6
  store i32 -22, i32* %ret, align 4, !dbg !3612
  br label %failed, !dbg !3614

if.end11:                                         ; preds = %lor.lhs.false
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3615
  %13 = load i32, i32* %nr_opp, align 4, !dbg !3616
  %14 = load %struct.cpumask*, %struct.cpumask** %cpus.addr, align 8, !dbg !3617
  %call12 = call i32 @em_dev_register_perf_domain(%struct.device* %12, i32 %13, %struct.em_data_callback* %em_cb, %struct.cpumask* %14) #7, !dbg !3618
  store i32 %call12, i32* %ret, align 4, !dbg !3619
  %15 = load i32, i32* %ret, align 4, !dbg !3620
  %tobool13 = icmp ne i32 %15, 0, !dbg !3620
  br i1 %tobool13, label %if.then14, label %if.end15, !dbg !3622

if.then14:                                        ; preds = %if.end11
  br label %failed, !dbg !3623

if.end15:                                         ; preds = %if.end11
  store i32 0, i32* %retval, align 4, !dbg !3624
  br label %return, !dbg !3624

failed:                                           ; preds = %if.then14, %if.then10, %if.then5, %if.then2, %if.then
  call void @llvm.dbg.label(metadata !3625), !dbg !3626
  %16 = load i32, i32* %ret, align 4, !dbg !3627
  store i32 %16, i32* %retval, align 4, !dbg !3628
  br label %return, !dbg !3628

return:                                           ; preds = %failed, %if.end15
  %17 = load i32, i32* %retval, align 4, !dbg !3629
  ret i32 %17, !dbg !3629
}

; Function Attrs: noredzone
declare dso_local i32 @dev_pm_opp_get_opp_count(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @em_dev_register_perf_domain(%struct.device* %dev, i32 %nr_states, %struct.em_data_callback* %cb, %struct.cpumask* %span) #0 !dbg !3630 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %nr_states.addr = alloca i32, align 4
  %cb.addr = alloca %struct.em_data_callback*, align 8
  %span.addr = alloca %struct.cpumask*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3635, metadata !DIExpression()), !dbg !3636
  store i32 %nr_states, i32* %nr_states.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nr_states.addr, metadata !3637, metadata !DIExpression()), !dbg !3638
  store %struct.em_data_callback* %cb, %struct.em_data_callback** %cb.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.em_data_callback** %cb.addr, metadata !3639, metadata !DIExpression()), !dbg !3640
  store %struct.cpumask* %span, %struct.cpumask** %span.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.cpumask** %span.addr, metadata !3641, metadata !DIExpression()), !dbg !3642
  ret i32 -22, !dbg !3643
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_parse_phandle(%struct.device_node*, i8*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !3644 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3651, metadata !DIExpression()), !dbg !3652
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3653, metadata !DIExpression()), !dbg !3654
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3655, metadata !DIExpression()), !dbg !3656
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3657
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3658
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3659
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3660
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #7, !dbg !3661
  store i32 %call, i32* %ret, align 4, !dbg !3656
  %4 = load i32, i32* %ret, align 4, !dbg !3662
  %cmp = icmp sge i32 %4, 0, !dbg !3664
  br i1 %cmp, label %if.then, label %if.else, !dbg !3665

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3666
  br label %return, !dbg !3666

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3667
  store i32 %5, i32* %retval, align 4, !dbg !3668
  br label %return, !dbg !3668

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3669
  ret i32 %6, !dbg !3669
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kmalloc_array(i64 %n, i64 %size, i32 %flags) #0 !dbg !3670 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3671, metadata !DIExpression()), !dbg !3675
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3684, metadata !DIExpression()), !dbg !3685
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3686, metadata !DIExpression()), !dbg !3687
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3688, metadata !DIExpression()), !dbg !3689
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3690, metadata !DIExpression()), !dbg !3694
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3696, metadata !DIExpression()), !dbg !3700
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3702, metadata !DIExpression()), !dbg !3706
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3711, metadata !DIExpression()), !dbg !3712
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3713, metadata !DIExpression()), !dbg !3714
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3715, metadata !DIExpression()), !dbg !3716
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3717, metadata !DIExpression()), !dbg !3718
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3719, metadata !DIExpression()), !dbg !3720
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3721, metadata !DIExpression()), !dbg !3722
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3723, metadata !DIExpression()), !dbg !3724
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3725, metadata !DIExpression()), !dbg !3726
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
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3729, metadata !DIExpression()), !dbg !3730
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3731, metadata !DIExpression()), !dbg !3732
  call void @llvm.dbg.declare(metadata i64* %bytes, metadata !3733, metadata !DIExpression()), !dbg !3734
  call void @llvm.dbg.declare(metadata i64* %__a, metadata !3735, metadata !DIExpression()), !dbg !3738
  %0 = load i64, i64* %n.addr, align 8, !dbg !3738
  store i64 %0, i64* %__a, align 8, !dbg !3738
  call void @llvm.dbg.declare(metadata i64* %__b, metadata !3739, metadata !DIExpression()), !dbg !3738
  %1 = load i64, i64* %size.addr, align 8, !dbg !3738
  store i64 %1, i64* %__b, align 8, !dbg !3738
  call void @llvm.dbg.declare(metadata i64** %__d, metadata !3740, metadata !DIExpression()), !dbg !3738
  store i64* %bytes, i64** %__d, align 8, !dbg !3738
  %cmp = icmp eq i64* %__a, %__b, !dbg !3738
  %conv = zext i1 %cmp to i32, !dbg !3738
  %2 = load i64*, i64** %__d, align 8, !dbg !3738
  %cmp1 = icmp eq i64* %__a, %2, !dbg !3738
  %conv2 = zext i1 %cmp1 to i32, !dbg !3738
  %3 = load i64, i64* %__a, align 8, !dbg !3738
  %4 = load i64, i64* %__b, align 8, !dbg !3738
  %5 = load i64*, i64** %__d, align 8, !dbg !3738
  %6 = call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %3, i64 %4), !dbg !3738
  %7 = extractvalue { i64, i1 } %6, 1, !dbg !3738
  %8 = extractvalue { i64, i1 } %6, 0, !dbg !3738
  store i64 %8, i64* %5, align 8, !dbg !3738
  %frombool = zext i1 %7 to i8, !dbg !3738
  store i8 %frombool, i8* %tmp, align 1, !dbg !3738
  %9 = load i8, i8* %tmp, align 1, !dbg !3738
  %tobool = trunc i8 %9 to i1, !dbg !3738
  %call = call zeroext i1 @__must_check_overflow(i1 zeroext %tobool) #7, !dbg !3742
  %lnot = xor i1 %call, true, !dbg !3742
  %lnot3 = xor i1 %lnot, true, !dbg !3742
  %lnot.ext = zext i1 %lnot3 to i32, !dbg !3742
  %conv4 = sext i32 %lnot.ext to i64, !dbg !3742
  %tobool5 = icmp ne i64 %conv4, 0, !dbg !3742
  br i1 %tobool5, label %if.then, label %if.end, !dbg !3743

if.then:                                          ; preds = %entry
  store i8* null, i8** %retval, align 8, !dbg !3744
  br label %return, !dbg !3744

if.end:                                           ; preds = %entry
  %10 = load i64, i64* %n.addr, align 8, !dbg !3745
  %11 = call i1 @llvm.is.constant.i64(i64 %10), !dbg !3746
  br i1 %11, label %land.lhs.true, label %if.end8, !dbg !3747

land.lhs.true:                                    ; preds = %if.end
  %12 = load i64, i64* %size.addr, align 8, !dbg !3748
  %13 = call i1 @llvm.is.constant.i64(i64 %12), !dbg !3749
  br i1 %13, label %if.then6, label %if.end8, !dbg !3750

if.then6:                                         ; preds = %land.lhs.true
  %14 = load i64, i64* %bytes, align 8, !dbg !3751
  %15 = load i32, i32* %flags.addr, align 4, !dbg !3752
  store i64 %14, i64* %size.addr.i, align 8
  store i32 %15, i32* %flags.addr.i, align 4
  %16 = load i64, i64* %size.addr.i, align 8, !dbg !3753
  %17 = call i1 @llvm.is.constant.i64(i64 %16) #9, !dbg !3754
  br i1 %17, label %if.then.i, label %if.end9.i, !dbg !3755

if.then.i:                                        ; preds = %if.then6
  %18 = load i64, i64* %size.addr.i, align 8, !dbg !3756
  %cmp.i = icmp ugt i64 %18, 8192, !dbg !3757
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3758

if.then1.i:                                       ; preds = %if.then.i
  %19 = load i64, i64* %size.addr.i, align 8, !dbg !3759
  %20 = load i32, i32* %flags.addr.i, align 4, !dbg !3760
  store i64 %19, i64* %size.addr.i.i, align 8
  store i32 %20, i32* %flags.addr.i.i, align 4
  %21 = load i64, i64* %size.addr.i.i, align 8, !dbg !3761
  %call.i.i = call i32 @get_order(i64 %21) #10, !dbg !3762
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3720
  %22 = load i64, i64* %size.addr.i.i, align 8, !dbg !3763
  %23 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3764
  %24 = load i32, i32* %order.i.i, align 4, !dbg !3765
  store i64 %22, i64* %size.addr.i.i.i, align 8
  store i32 %23, i32* %flags.addr.i.i.i, align 4
  store i32 %24, i32* %order.addr.i.i.i, align 4
  %25 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3766
  %26 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3767
  %27 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3768
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %25, i32 %26, i32 %27) #11, !dbg !3769
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3769
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3769
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3769
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !3769
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3770
  br label %kmalloc.exit, !dbg !3770

if.end.i:                                         ; preds = %if.then.i
  %28 = load i64, i64* %size.addr.i, align 8, !dbg !3771
  store i64 %28, i64* %size.addr.i11.i, align 8
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3772
  %tobool.i.i = icmp ne i64 %29, 0, !dbg !3772
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3774

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3775
  br label %kmalloc_index.exit.i, !dbg !3775

if.end.i.i:                                       ; preds = %if.end.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3776
  %cmp.i.i = icmp ule i64 %30, 8, !dbg !3778
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3779

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3780
  br label %kmalloc_index.exit.i, !dbg !3780

if.end2.i.i:                                      ; preds = %if.end.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3781
  %cmp3.i.i = icmp ugt i64 %31, 64, !dbg !3783
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3784

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3785
  %cmp4.i.i = icmp ule i64 %32, 96, !dbg !3786
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3787

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3788
  br label %kmalloc_index.exit.i, !dbg !3788

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3789
  %cmp7.i.i = icmp ugt i64 %33, 128, !dbg !3791
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3792

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3793
  %cmp9.i.i = icmp ule i64 %34, 192, !dbg !3794
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3795

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3796
  br label %kmalloc_index.exit.i, !dbg !3796

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3797
  %cmp12.i.i = icmp ule i64 %35, 8, !dbg !3799
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3800

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3801
  br label %kmalloc_index.exit.i, !dbg !3801

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3802
  %cmp15.i.i = icmp ule i64 %36, 16, !dbg !3804
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3805

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3806
  br label %kmalloc_index.exit.i, !dbg !3806

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3807
  %cmp18.i.i = icmp ule i64 %37, 32, !dbg !3809
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3810

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3811
  br label %kmalloc_index.exit.i, !dbg !3811

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3812
  %cmp21.i.i = icmp ule i64 %38, 64, !dbg !3814
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3815

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3816
  br label %kmalloc_index.exit.i, !dbg !3816

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3817
  %cmp24.i.i = icmp ule i64 %39, 128, !dbg !3819
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3820

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3821
  br label %kmalloc_index.exit.i, !dbg !3821

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3822
  %cmp27.i.i = icmp ule i64 %40, 256, !dbg !3824
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3825

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3826
  br label %kmalloc_index.exit.i, !dbg !3826

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3827
  %cmp30.i.i = icmp ule i64 %41, 512, !dbg !3829
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3830

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3831
  br label %kmalloc_index.exit.i, !dbg !3831

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3832
  %cmp33.i.i = icmp ule i64 %42, 1024, !dbg !3834
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3835

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3836
  br label %kmalloc_index.exit.i, !dbg !3836

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3837
  %cmp36.i.i = icmp ule i64 %43, 2048, !dbg !3839
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3840

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3841
  br label %kmalloc_index.exit.i, !dbg !3841

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3842
  %cmp39.i.i = icmp ule i64 %44, 4096, !dbg !3844
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3845

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3846
  br label %kmalloc_index.exit.i, !dbg !3846

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3847
  %cmp42.i.i = icmp ule i64 %45, 8192, !dbg !3849
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3850

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3851
  br label %kmalloc_index.exit.i, !dbg !3851

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3852
  %cmp45.i.i = icmp ule i64 %46, 16384, !dbg !3854
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3855

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3856
  br label %kmalloc_index.exit.i, !dbg !3856

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3857
  %cmp48.i.i = icmp ule i64 %47, 32768, !dbg !3859
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3860

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3861
  br label %kmalloc_index.exit.i, !dbg !3861

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3862
  %cmp51.i.i = icmp ule i64 %48, 65536, !dbg !3864
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3865

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3866
  br label %kmalloc_index.exit.i, !dbg !3866

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3867
  %cmp54.i.i = icmp ule i64 %49, 131072, !dbg !3869
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3870

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3871
  br label %kmalloc_index.exit.i, !dbg !3871

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3872
  %cmp57.i.i = icmp ule i64 %50, 262144, !dbg !3874
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3875

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3876
  br label %kmalloc_index.exit.i, !dbg !3876

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3877
  %cmp60.i.i = icmp ule i64 %51, 524288, !dbg !3879
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3880

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3881
  br label %kmalloc_index.exit.i, !dbg !3881

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3882
  %cmp63.i.i = icmp ule i64 %52, 1048576, !dbg !3884
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3885

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3886
  br label %kmalloc_index.exit.i, !dbg !3886

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3887
  %cmp66.i.i = icmp ule i64 %53, 2097152, !dbg !3889
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3890

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3891
  br label %kmalloc_index.exit.i, !dbg !3891

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3892
  %cmp69.i.i = icmp ule i64 %54, 4194304, !dbg !3894
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3895

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3896
  br label %kmalloc_index.exit.i, !dbg !3896

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3897
  %cmp72.i.i = icmp ule i64 %55, 8388608, !dbg !3899
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3900

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3901
  br label %kmalloc_index.exit.i, !dbg !3901

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3902
  %cmp75.i.i = icmp ule i64 %56, 16777216, !dbg !3904
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3905

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3906
  br label %kmalloc_index.exit.i, !dbg !3906

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3907
  %cmp78.i.i = icmp ule i64 %57, 33554432, !dbg !3909
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3910

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3911
  br label %kmalloc_index.exit.i, !dbg !3911

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3912
  %cmp81.i.i = icmp ule i64 %58, 67108864, !dbg !3914
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3915

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3916
  br label %kmalloc_index.exit.i, !dbg !3916

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.21, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !3917, !srcloc !3920
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 158) #9, !dbg !3921, !srcloc !3924
  unreachable, !dbg !3925

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %59 = load i32, i32* %retval.i.i, align 4, !dbg !3926
  store i32 %59, i32* %index.i, align 4, !dbg !3927
  %60 = load i32, i32* %index.i, align 4, !dbg !3928
  %tobool.i = icmp ne i32 %60, 0, !dbg !3928
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3930

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3931
  br label %kmalloc.exit, !dbg !3931

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %61 = load i32, i32* %flags.addr.i, align 4, !dbg !3932
  store i32 %61, i32* %flags.addr.i13.i, align 4
  %62 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3933
  %and.i.i = and i32 %62, 17, !dbg !3933
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3933
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3933
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3933
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3933
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3935

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3936
  br label %kmalloc_type.exit.i, !dbg !3936

if.end.i16.i:                                     ; preds = %if.end4.i
  %63 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3937
  %and2.i.i = and i32 %63, 1, !dbg !3938
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3937
  %64 = zext i1 %tobool3.i.i to i64, !dbg !3937
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3937
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3939
  br label %kmalloc_type.exit.i, !dbg !3939

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %65 = load i32, i32* %retval.i12.i, align 4, !dbg !3940
  %idxprom.i = zext i32 %65 to i64, !dbg !3941
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3941
  %66 = load i32, i32* %index.i, align 4, !dbg !3942
  %idxprom6.i = zext i32 %66 to i64, !dbg !3941
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3941
  %67 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3941
  %68 = load i32, i32* %flags.addr.i, align 4, !dbg !3943
  %69 = load i64, i64* %size.addr.i, align 8, !dbg !3944
  store %struct.kmem_cache* %67, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %68, i32* %flags.addr.i17.i, align 4
  store i64 %69, i64* %size.addr.i18.i, align 8
  %70 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3945
  %71 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3946
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %70, i32 %71) #11, !dbg !3947
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3947
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3947
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3947
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !3947
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3689
  %72 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3948
  %73 = load i8*, i8** %ret.i.i, align 8, !dbg !3949
  %74 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3950
  %75 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3951
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %72, i8* %73, i64 %74, i32 %75) #11, !dbg !3952
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3953
  %76 = load i8*, i8** %ret.i.i, align 8, !dbg !3954
  store i8* %76, i8** %retval.i, align 8, !dbg !3955
  br label %kmalloc.exit, !dbg !3955

if.end9.i:                                        ; preds = %if.then6
  %77 = load i64, i64* %size.addr.i, align 8, !dbg !3956
  %78 = load i32, i32* %flags.addr.i, align 4, !dbg !3957
  %call10.i = call noalias i8* @__kmalloc(i64 %77, i32 %78) #11, !dbg !3958
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3958
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3958
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3958
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !3958
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3959
  br label %kmalloc.exit, !dbg !3959

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %79 = load i8*, i8** %retval.i, align 8, !dbg !3960
  store i8* %79, i8** %retval, align 8, !dbg !3961
  br label %return, !dbg !3961

if.end8:                                          ; preds = %land.lhs.true, %if.end
  %80 = load i64, i64* %bytes, align 8, !dbg !3962
  %81 = load i32, i32* %flags.addr, align 4, !dbg !3963
  %call9 = call noalias i8* @__kmalloc(i64 %80, i32 %81) #7, !dbg !3964
  %ptrint = ptrtoint i8* %call9 to i64, !dbg !3964
  %maskedptr = and i64 %ptrint, 7, !dbg !3964
  %maskcond = icmp eq i64 %maskedptr, 0, !dbg !3964
  call void @llvm.assume(i1 %maskcond), !dbg !3964
  store i8* %call9, i8** %retval, align 8, !dbg !3965
  br label %return, !dbg !3965

return:                                           ; preds = %if.end8, %kmalloc.exit, %if.then
  %82 = load i8*, i8** %retval, align 8, !dbg !3966
  ret i8* %82, !dbg !3966
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__must_check_overflow(i1 zeroext %overflow) #0 !dbg !3967 {
entry:
  %overflow.addr = alloca i8, align 1
  %frombool = zext i1 %overflow to i8
  store i8 %frombool, i8* %overflow.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %overflow.addr, metadata !3971, metadata !DIExpression()), !dbg !3972
  %0 = load i8, i8* %overflow.addr, align 1, !dbg !3973
  %tobool = trunc i8 %0 to i1, !dbg !3973
  %lnot = xor i1 %tobool, true, !dbg !3973
  %lnot1 = xor i1 %lnot, true, !dbg !3973
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !3973
  %conv = sext i32 %lnot.ext to i64, !dbg !3973
  %tobool2 = icmp ne i64 %conv, 0, !dbg !3973
  ret i1 %tobool2, !dbg !3974
}

; Function Attrs: nounwind readnone speculatable willreturn
declare { i64, i1 } @llvm.umul.with.overflow.i64(i64, i64) #1

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3975 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3979, metadata !DIExpression()), !dbg !3984
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3986, metadata !DIExpression()), !dbg !3987
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3988, metadata !DIExpression()), !dbg !3989
  %0 = load i64, i64* %size.addr, align 8, !dbg !3990
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3992
  br i1 %1, label %if.then, label %if.end447, !dbg !3993

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3994
  %tobool = icmp ne i64 %2, 0, !dbg !3994
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3997

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3998
  br label %return, !dbg !3998

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3999
  %cmp = icmp ult i64 %3, 4096, !dbg !4001
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !4002

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4003
  br label %return, !dbg !4003

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub = sub i64 %4, 1, !dbg !4004
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !4004
  br i1 %5, label %cond.true, label %cond.false442, !dbg !4004

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub4 = sub i64 %6, 1, !dbg !4004
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !4004
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !4004

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub6 = sub i64 %8, 1, !dbg !4004
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !4004
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !4004

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !4004

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub9 = sub i64 %9, 1, !dbg !4004
  %and = and i64 %sub9, -9223372036854775808, !dbg !4004
  %tobool10 = icmp ne i64 %and, 0, !dbg !4004
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !4004

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !4004

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub13 = sub i64 %10, 1, !dbg !4004
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !4004
  %tobool15 = icmp ne i64 %and14, 0, !dbg !4004
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !4004

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !4004

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub18 = sub i64 %11, 1, !dbg !4004
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !4004
  %tobool20 = icmp ne i64 %and19, 0, !dbg !4004
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !4004

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !4004

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub23 = sub i64 %12, 1, !dbg !4004
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !4004
  %tobool25 = icmp ne i64 %and24, 0, !dbg !4004
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !4004

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !4004

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub28 = sub i64 %13, 1, !dbg !4004
  %and29 = and i64 %sub28, 576460752303423488, !dbg !4004
  %tobool30 = icmp ne i64 %and29, 0, !dbg !4004
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !4004

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !4004

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub33 = sub i64 %14, 1, !dbg !4004
  %and34 = and i64 %sub33, 288230376151711744, !dbg !4004
  %tobool35 = icmp ne i64 %and34, 0, !dbg !4004
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !4004

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !4004

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub38 = sub i64 %15, 1, !dbg !4004
  %and39 = and i64 %sub38, 144115188075855872, !dbg !4004
  %tobool40 = icmp ne i64 %and39, 0, !dbg !4004
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !4004

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !4004

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub43 = sub i64 %16, 1, !dbg !4004
  %and44 = and i64 %sub43, 72057594037927936, !dbg !4004
  %tobool45 = icmp ne i64 %and44, 0, !dbg !4004
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !4004

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !4004

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub48 = sub i64 %17, 1, !dbg !4004
  %and49 = and i64 %sub48, 36028797018963968, !dbg !4004
  %tobool50 = icmp ne i64 %and49, 0, !dbg !4004
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !4004

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !4004

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub53 = sub i64 %18, 1, !dbg !4004
  %and54 = and i64 %sub53, 18014398509481984, !dbg !4004
  %tobool55 = icmp ne i64 %and54, 0, !dbg !4004
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !4004

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !4004

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub58 = sub i64 %19, 1, !dbg !4004
  %and59 = and i64 %sub58, 9007199254740992, !dbg !4004
  %tobool60 = icmp ne i64 %and59, 0, !dbg !4004
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !4004

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !4004

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub63 = sub i64 %20, 1, !dbg !4004
  %and64 = and i64 %sub63, 4503599627370496, !dbg !4004
  %tobool65 = icmp ne i64 %and64, 0, !dbg !4004
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !4004

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !4004

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub68 = sub i64 %21, 1, !dbg !4004
  %and69 = and i64 %sub68, 2251799813685248, !dbg !4004
  %tobool70 = icmp ne i64 %and69, 0, !dbg !4004
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !4004

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !4004

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub73 = sub i64 %22, 1, !dbg !4004
  %and74 = and i64 %sub73, 1125899906842624, !dbg !4004
  %tobool75 = icmp ne i64 %and74, 0, !dbg !4004
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !4004

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !4004

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub78 = sub i64 %23, 1, !dbg !4004
  %and79 = and i64 %sub78, 562949953421312, !dbg !4004
  %tobool80 = icmp ne i64 %and79, 0, !dbg !4004
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !4004

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !4004

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub83 = sub i64 %24, 1, !dbg !4004
  %and84 = and i64 %sub83, 281474976710656, !dbg !4004
  %tobool85 = icmp ne i64 %and84, 0, !dbg !4004
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !4004

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !4004

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub88 = sub i64 %25, 1, !dbg !4004
  %and89 = and i64 %sub88, 140737488355328, !dbg !4004
  %tobool90 = icmp ne i64 %and89, 0, !dbg !4004
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !4004

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !4004

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub93 = sub i64 %26, 1, !dbg !4004
  %and94 = and i64 %sub93, 70368744177664, !dbg !4004
  %tobool95 = icmp ne i64 %and94, 0, !dbg !4004
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !4004

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !4004

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub98 = sub i64 %27, 1, !dbg !4004
  %and99 = and i64 %sub98, 35184372088832, !dbg !4004
  %tobool100 = icmp ne i64 %and99, 0, !dbg !4004
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !4004

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !4004

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub103 = sub i64 %28, 1, !dbg !4004
  %and104 = and i64 %sub103, 17592186044416, !dbg !4004
  %tobool105 = icmp ne i64 %and104, 0, !dbg !4004
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !4004

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !4004

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub108 = sub i64 %29, 1, !dbg !4004
  %and109 = and i64 %sub108, 8796093022208, !dbg !4004
  %tobool110 = icmp ne i64 %and109, 0, !dbg !4004
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !4004

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !4004

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub113 = sub i64 %30, 1, !dbg !4004
  %and114 = and i64 %sub113, 4398046511104, !dbg !4004
  %tobool115 = icmp ne i64 %and114, 0, !dbg !4004
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !4004

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !4004

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub118 = sub i64 %31, 1, !dbg !4004
  %and119 = and i64 %sub118, 2199023255552, !dbg !4004
  %tobool120 = icmp ne i64 %and119, 0, !dbg !4004
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !4004

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !4004

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub123 = sub i64 %32, 1, !dbg !4004
  %and124 = and i64 %sub123, 1099511627776, !dbg !4004
  %tobool125 = icmp ne i64 %and124, 0, !dbg !4004
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !4004

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !4004

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub128 = sub i64 %33, 1, !dbg !4004
  %and129 = and i64 %sub128, 549755813888, !dbg !4004
  %tobool130 = icmp ne i64 %and129, 0, !dbg !4004
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !4004

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !4004

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub133 = sub i64 %34, 1, !dbg !4004
  %and134 = and i64 %sub133, 274877906944, !dbg !4004
  %tobool135 = icmp ne i64 %and134, 0, !dbg !4004
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !4004

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !4004

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub138 = sub i64 %35, 1, !dbg !4004
  %and139 = and i64 %sub138, 137438953472, !dbg !4004
  %tobool140 = icmp ne i64 %and139, 0, !dbg !4004
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !4004

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !4004

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub143 = sub i64 %36, 1, !dbg !4004
  %and144 = and i64 %sub143, 68719476736, !dbg !4004
  %tobool145 = icmp ne i64 %and144, 0, !dbg !4004
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !4004

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !4004

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub148 = sub i64 %37, 1, !dbg !4004
  %and149 = and i64 %sub148, 34359738368, !dbg !4004
  %tobool150 = icmp ne i64 %and149, 0, !dbg !4004
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !4004

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !4004

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub153 = sub i64 %38, 1, !dbg !4004
  %and154 = and i64 %sub153, 17179869184, !dbg !4004
  %tobool155 = icmp ne i64 %and154, 0, !dbg !4004
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !4004

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !4004

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub158 = sub i64 %39, 1, !dbg !4004
  %and159 = and i64 %sub158, 8589934592, !dbg !4004
  %tobool160 = icmp ne i64 %and159, 0, !dbg !4004
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !4004

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !4004

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub163 = sub i64 %40, 1, !dbg !4004
  %and164 = and i64 %sub163, 4294967296, !dbg !4004
  %tobool165 = icmp ne i64 %and164, 0, !dbg !4004
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !4004

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !4004

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub168 = sub i64 %41, 1, !dbg !4004
  %and169 = and i64 %sub168, 2147483648, !dbg !4004
  %tobool170 = icmp ne i64 %and169, 0, !dbg !4004
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !4004

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !4004

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub173 = sub i64 %42, 1, !dbg !4004
  %and174 = and i64 %sub173, 1073741824, !dbg !4004
  %tobool175 = icmp ne i64 %and174, 0, !dbg !4004
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !4004

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !4004

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub178 = sub i64 %43, 1, !dbg !4004
  %and179 = and i64 %sub178, 536870912, !dbg !4004
  %tobool180 = icmp ne i64 %and179, 0, !dbg !4004
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !4004

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !4004

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub183 = sub i64 %44, 1, !dbg !4004
  %and184 = and i64 %sub183, 268435456, !dbg !4004
  %tobool185 = icmp ne i64 %and184, 0, !dbg !4004
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !4004

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !4004

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub188 = sub i64 %45, 1, !dbg !4004
  %and189 = and i64 %sub188, 134217728, !dbg !4004
  %tobool190 = icmp ne i64 %and189, 0, !dbg !4004
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !4004

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !4004

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub193 = sub i64 %46, 1, !dbg !4004
  %and194 = and i64 %sub193, 67108864, !dbg !4004
  %tobool195 = icmp ne i64 %and194, 0, !dbg !4004
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !4004

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !4004

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub198 = sub i64 %47, 1, !dbg !4004
  %and199 = and i64 %sub198, 33554432, !dbg !4004
  %tobool200 = icmp ne i64 %and199, 0, !dbg !4004
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !4004

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !4004

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub203 = sub i64 %48, 1, !dbg !4004
  %and204 = and i64 %sub203, 16777216, !dbg !4004
  %tobool205 = icmp ne i64 %and204, 0, !dbg !4004
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !4004

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !4004

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub208 = sub i64 %49, 1, !dbg !4004
  %and209 = and i64 %sub208, 8388608, !dbg !4004
  %tobool210 = icmp ne i64 %and209, 0, !dbg !4004
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !4004

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !4004

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub213 = sub i64 %50, 1, !dbg !4004
  %and214 = and i64 %sub213, 4194304, !dbg !4004
  %tobool215 = icmp ne i64 %and214, 0, !dbg !4004
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !4004

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !4004

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub218 = sub i64 %51, 1, !dbg !4004
  %and219 = and i64 %sub218, 2097152, !dbg !4004
  %tobool220 = icmp ne i64 %and219, 0, !dbg !4004
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !4004

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !4004

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub223 = sub i64 %52, 1, !dbg !4004
  %and224 = and i64 %sub223, 1048576, !dbg !4004
  %tobool225 = icmp ne i64 %and224, 0, !dbg !4004
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !4004

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !4004

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub228 = sub i64 %53, 1, !dbg !4004
  %and229 = and i64 %sub228, 524288, !dbg !4004
  %tobool230 = icmp ne i64 %and229, 0, !dbg !4004
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !4004

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !4004

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub233 = sub i64 %54, 1, !dbg !4004
  %and234 = and i64 %sub233, 262144, !dbg !4004
  %tobool235 = icmp ne i64 %and234, 0, !dbg !4004
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !4004

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !4004

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub238 = sub i64 %55, 1, !dbg !4004
  %and239 = and i64 %sub238, 131072, !dbg !4004
  %tobool240 = icmp ne i64 %and239, 0, !dbg !4004
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !4004

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !4004

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub243 = sub i64 %56, 1, !dbg !4004
  %and244 = and i64 %sub243, 65536, !dbg !4004
  %tobool245 = icmp ne i64 %and244, 0, !dbg !4004
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !4004

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !4004

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub248 = sub i64 %57, 1, !dbg !4004
  %and249 = and i64 %sub248, 32768, !dbg !4004
  %tobool250 = icmp ne i64 %and249, 0, !dbg !4004
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !4004

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !4004

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub253 = sub i64 %58, 1, !dbg !4004
  %and254 = and i64 %sub253, 16384, !dbg !4004
  %tobool255 = icmp ne i64 %and254, 0, !dbg !4004
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !4004

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !4004

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub258 = sub i64 %59, 1, !dbg !4004
  %and259 = and i64 %sub258, 8192, !dbg !4004
  %tobool260 = icmp ne i64 %and259, 0, !dbg !4004
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !4004

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !4004

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub263 = sub i64 %60, 1, !dbg !4004
  %and264 = and i64 %sub263, 4096, !dbg !4004
  %tobool265 = icmp ne i64 %and264, 0, !dbg !4004
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !4004

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !4004

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub268 = sub i64 %61, 1, !dbg !4004
  %and269 = and i64 %sub268, 2048, !dbg !4004
  %tobool270 = icmp ne i64 %and269, 0, !dbg !4004
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !4004

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !4004

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub273 = sub i64 %62, 1, !dbg !4004
  %and274 = and i64 %sub273, 1024, !dbg !4004
  %tobool275 = icmp ne i64 %and274, 0, !dbg !4004
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !4004

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !4004

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub278 = sub i64 %63, 1, !dbg !4004
  %and279 = and i64 %sub278, 512, !dbg !4004
  %tobool280 = icmp ne i64 %and279, 0, !dbg !4004
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !4004

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !4004

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub283 = sub i64 %64, 1, !dbg !4004
  %and284 = and i64 %sub283, 256, !dbg !4004
  %tobool285 = icmp ne i64 %and284, 0, !dbg !4004
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !4004

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !4004

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub288 = sub i64 %65, 1, !dbg !4004
  %and289 = and i64 %sub288, 128, !dbg !4004
  %tobool290 = icmp ne i64 %and289, 0, !dbg !4004
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !4004

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !4004

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub293 = sub i64 %66, 1, !dbg !4004
  %and294 = and i64 %sub293, 64, !dbg !4004
  %tobool295 = icmp ne i64 %and294, 0, !dbg !4004
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !4004

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !4004

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub298 = sub i64 %67, 1, !dbg !4004
  %and299 = and i64 %sub298, 32, !dbg !4004
  %tobool300 = icmp ne i64 %and299, 0, !dbg !4004
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !4004

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !4004

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub303 = sub i64 %68, 1, !dbg !4004
  %and304 = and i64 %sub303, 16, !dbg !4004
  %tobool305 = icmp ne i64 %and304, 0, !dbg !4004
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !4004

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !4004

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub308 = sub i64 %69, 1, !dbg !4004
  %and309 = and i64 %sub308, 8, !dbg !4004
  %tobool310 = icmp ne i64 %and309, 0, !dbg !4004
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !4004

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !4004

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub313 = sub i64 %70, 1, !dbg !4004
  %and314 = and i64 %sub313, 4, !dbg !4004
  %tobool315 = icmp ne i64 %and314, 0, !dbg !4004
  %71 = zext i1 %tobool315 to i64, !dbg !4004
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !4004
  br label %cond.end, !dbg !4004

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !4004
  br label %cond.end317, !dbg !4004

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !4004
  br label %cond.end319, !dbg !4004

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !4004
  br label %cond.end321, !dbg !4004

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !4004
  br label %cond.end323, !dbg !4004

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !4004
  br label %cond.end325, !dbg !4004

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !4004
  br label %cond.end327, !dbg !4004

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !4004
  br label %cond.end329, !dbg !4004

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !4004
  br label %cond.end331, !dbg !4004

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !4004
  br label %cond.end333, !dbg !4004

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !4004
  br label %cond.end335, !dbg !4004

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !4004
  br label %cond.end337, !dbg !4004

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !4004
  br label %cond.end339, !dbg !4004

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !4004
  br label %cond.end341, !dbg !4004

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !4004
  br label %cond.end343, !dbg !4004

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !4004
  br label %cond.end345, !dbg !4004

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !4004
  br label %cond.end347, !dbg !4004

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !4004
  br label %cond.end349, !dbg !4004

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !4004
  br label %cond.end351, !dbg !4004

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !4004
  br label %cond.end353, !dbg !4004

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !4004
  br label %cond.end355, !dbg !4004

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !4004
  br label %cond.end357, !dbg !4004

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !4004
  br label %cond.end359, !dbg !4004

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !4004
  br label %cond.end361, !dbg !4004

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !4004
  br label %cond.end363, !dbg !4004

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !4004
  br label %cond.end365, !dbg !4004

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !4004
  br label %cond.end367, !dbg !4004

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !4004
  br label %cond.end369, !dbg !4004

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !4004
  br label %cond.end371, !dbg !4004

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !4004
  br label %cond.end373, !dbg !4004

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !4004
  br label %cond.end375, !dbg !4004

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !4004
  br label %cond.end377, !dbg !4004

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !4004
  br label %cond.end379, !dbg !4004

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !4004
  br label %cond.end381, !dbg !4004

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !4004
  br label %cond.end383, !dbg !4004

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !4004
  br label %cond.end385, !dbg !4004

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !4004
  br label %cond.end387, !dbg !4004

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !4004
  br label %cond.end389, !dbg !4004

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !4004
  br label %cond.end391, !dbg !4004

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !4004
  br label %cond.end393, !dbg !4004

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !4004
  br label %cond.end395, !dbg !4004

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !4004
  br label %cond.end397, !dbg !4004

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !4004
  br label %cond.end399, !dbg !4004

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !4004
  br label %cond.end401, !dbg !4004

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !4004
  br label %cond.end403, !dbg !4004

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !4004
  br label %cond.end405, !dbg !4004

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !4004
  br label %cond.end407, !dbg !4004

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !4004
  br label %cond.end409, !dbg !4004

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !4004
  br label %cond.end411, !dbg !4004

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !4004
  br label %cond.end413, !dbg !4004

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !4004
  br label %cond.end415, !dbg !4004

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !4004
  br label %cond.end417, !dbg !4004

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !4004
  br label %cond.end419, !dbg !4004

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !4004
  br label %cond.end421, !dbg !4004

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !4004
  br label %cond.end423, !dbg !4004

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !4004
  br label %cond.end425, !dbg !4004

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !4004
  br label %cond.end427, !dbg !4004

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !4004
  br label %cond.end429, !dbg !4004

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !4004
  br label %cond.end431, !dbg !4004

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !4004
  br label %cond.end433, !dbg !4004

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !4004
  br label %cond.end435, !dbg !4004

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !4004
  br label %cond.end437, !dbg !4004

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !4004
  br label %cond.end440, !dbg !4004

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !4004

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !4004
  br label %cond.end444, !dbg !4004

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !4004
  %sub443 = sub i64 %72, 1, !dbg !4004
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !4004
  br label %cond.end444, !dbg !4004

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !4004
  %sub446 = sub i32 %cond445, 12, !dbg !4005
  %add = add i32 %sub446, 1, !dbg !4006
  store i32 %add, i32* %retval, align 4, !dbg !4007
  br label %return, !dbg !4007

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !4008
  %dec = add i64 %73, -1, !dbg !4008
  store i64 %dec, i64* %size.addr, align 8, !dbg !4008
  %74 = load i64, i64* %size.addr, align 8, !dbg !4009
  %shr = lshr i64 %74, 12, !dbg !4009
  store i64 %shr, i64* %size.addr, align 8, !dbg !4009
  %75 = load i64, i64* %size.addr, align 8, !dbg !4010
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3987
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !4011
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !4012
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !4011, !srcloc !4013
  store i32 %78, i32* %bitpos.i, align 4, !dbg !4011
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !4014
  %add.i = add i32 %79, 1, !dbg !4015
  store i32 %add.i, i32* %retval, align 4, !dbg !4016
  br label %return, !dbg !4016

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !4017
  ret i32 %80, !dbg !4017
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !4018 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3979, metadata !DIExpression()), !dbg !4022
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3986, metadata !DIExpression()), !dbg !4024
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !4025, metadata !DIExpression()), !dbg !4026
  %0 = load i64, i64* %n.addr, align 8, !dbg !4027
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !4024
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !4028
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !4029
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !4028, !srcloc !4013
  store i32 %3, i32* %bitpos.i, align 4, !dbg !4028
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !4030
  %add.i = add i32 %4, 1, !dbg !4031
  %sub = sub i32 %add.i, 1, !dbg !4032
  ret i32 %sub, !dbg !4033
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !4034 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !4038, metadata !DIExpression()), !dbg !4039
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !4040, metadata !DIExpression()), !dbg !4041
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !4042, metadata !DIExpression()), !dbg !4043
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !4044, metadata !DIExpression()), !dbg !4045
  %0 = load i8*, i8** %object.addr, align 8, !dbg !4046
  ret i8* %0, !dbg !4047
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.dev_pm_opp* @_opp_add_static_v2(%struct.opp_table* %opp_table, %struct.device* %dev, %struct.device_node* %np) #0 !dbg !4048 {
entry:
  %retval = alloca %struct.dev_pm_opp*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %new_opp = alloca %struct.dev_pm_opp*, align 8
  %rate = alloca i64, align 8
  %val = alloca i32, align 4
  %ret = alloca i32, align 4
  %rate_not_available = alloca i8, align 1
  %tmp = alloca i32, align 4
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !4051, metadata !DIExpression()), !dbg !4052
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4053, metadata !DIExpression()), !dbg !4054
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4055, metadata !DIExpression()), !dbg !4056
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %new_opp, metadata !4057, metadata !DIExpression()), !dbg !4058
  call void @llvm.dbg.declare(metadata i64* %rate, metadata !4059, metadata !DIExpression()), !dbg !4060
  store i64 0, i64* %rate, align 8, !dbg !4060
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.declare(metadata i8* %rate_not_available, metadata !4065, metadata !DIExpression()), !dbg !4066
  store i8 0, i8* %rate_not_available, align 1, !dbg !4066
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4067
  %call = call %struct.dev_pm_opp* @_opp_allocate(%struct.opp_table* %0) #7, !dbg !4068
  store %struct.dev_pm_opp* %call, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4069
  %1 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4070
  %tobool = icmp ne %struct.dev_pm_opp* %1, null, !dbg !4070
  br i1 %tobool, label %if.end, label %if.then, !dbg !4072

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !4073
  %2 = bitcast i8* %call1 to %struct.dev_pm_opp*, !dbg !4073
  store %struct.dev_pm_opp* %2, %struct.dev_pm_opp** %retval, align 8, !dbg !4074
  br label %return, !dbg !4074

if.end:                                           ; preds = %entry
  %3 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4075
  %4 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4076
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4077
  %call2 = call i32 @_read_opp_key(%struct.dev_pm_opp* %3, %struct.opp_table* %4, %struct.device_node* %5, i8* %rate_not_available) #7, !dbg !4078
  store i32 %call2, i32* %ret, align 4, !dbg !4079
  %6 = load i32, i32* %ret, align 4, !dbg !4080
  %cmp = icmp slt i32 %6, 0, !dbg !4082
  br i1 %cmp, label %land.lhs.true, label %if.end5, !dbg !4083

land.lhs.true:                                    ; preds = %if.end
  %7 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4084
  %is_genpd = getelementptr inbounds %struct.opp_table, %struct.opp_table* %7, i32 0, i32 26, !dbg !4085
  %8 = load i8, i8* %is_genpd, align 2, !dbg !4085
  %tobool3 = trunc i8 %8 to i1, !dbg !4085
  br i1 %tobool3, label %if.end5, label %if.then4, !dbg !4086

if.then4:                                         ; preds = %land.lhs.true
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4087
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.23, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__._opp_add_static_v2, i64 0, i64 0)) #8, !dbg !4087
  br label %free_opp, !dbg !4089

if.end5:                                          ; preds = %land.lhs.true, %if.end
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4090
  %11 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4092
  %12 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4093
  %call6 = call zeroext i1 @_opp_is_supported(%struct.device* %10, %struct.opp_table* %11, %struct.device_node* %12) #7, !dbg !4094
  br i1 %call6, label %if.end8, label %if.then7, !dbg !4095

if.then7:                                         ; preds = %if.end5
  br label %free_opp, !dbg !4096

if.end8:                                          ; preds = %if.end5
  %13 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4098
  %call9 = call zeroext i1 @of_property_read_bool(%struct.device_node* %13, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.24, i64 0, i64 0)) #7, !dbg !4099
  %14 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4100
  %turbo = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %14, i32 0, i32 4, !dbg !4101
  %frombool = zext i1 %call9 to i8, !dbg !4102
  store i8 %frombool, i8* %turbo, align 2, !dbg !4102
  %15 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4103
  %16 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4104
  %np10 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %16, i32 0, i32 14, !dbg !4105
  store %struct.device_node* %15, %struct.device_node** %np10, align 8, !dbg !4106
  %17 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4107
  %dynamic = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %17, i32 0, i32 3, !dbg !4108
  store i8 0, i8* %dynamic, align 1, !dbg !4109
  %18 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4110
  %available = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %18, i32 0, i32 2, !dbg !4111
  store i8 1, i8* %available, align 4, !dbg !4112
  %19 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4113
  %20 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4114
  %call11 = call i32 @_of_opp_alloc_required_opps(%struct.opp_table* %19, %struct.dev_pm_opp* %20) #7, !dbg !4115
  store i32 %call11, i32* %ret, align 4, !dbg !4116
  %21 = load i32, i32* %ret, align 4, !dbg !4117
  %tobool12 = icmp ne i32 %21, 0, !dbg !4117
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4119

if.then13:                                        ; preds = %if.end8
  br label %free_opp, !dbg !4120

if.end14:                                         ; preds = %if.end8
  %22 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4121
  %call15 = call i32 @of_property_read_u32(%struct.device_node* %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.25, i64 0, i64 0), i32* %val) #7, !dbg !4123
  %tobool16 = icmp ne i32 %call15, 0, !dbg !4123
  br i1 %tobool16, label %if.end18, label %if.then17, !dbg !4124

if.then17:                                        ; preds = %if.end14
  %23 = load i32, i32* %val, align 4, !dbg !4125
  %conv = zext i32 %23 to i64, !dbg !4125
  %24 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4126
  %clock_latency_ns = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %24, i32 0, i32 11, !dbg !4127
  store i64 %conv, i64* %clock_latency_ns, align 8, !dbg !4128
  br label %if.end18, !dbg !4126

if.end18:                                         ; preds = %if.then17, %if.end14
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4129
  %26 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4130
  %27 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4131
  %call19 = call i32 @opp_parse_supplies(%struct.dev_pm_opp* %25, %struct.device* %26, %struct.opp_table* %27) #7, !dbg !4132
  store i32 %call19, i32* %ret, align 4, !dbg !4133
  %28 = load i32, i32* %ret, align 4, !dbg !4134
  %tobool20 = icmp ne i32 %28, 0, !dbg !4134
  br i1 %tobool20, label %if.then21, label %if.end22, !dbg !4136

if.then21:                                        ; preds = %if.end18
  br label %free_required_opps, !dbg !4137

if.end22:                                         ; preds = %if.end18
  %29 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4138
  %is_genpd23 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %29, i32 0, i32 26, !dbg !4140
  %30 = load i8, i8* %is_genpd23, align 2, !dbg !4140
  %tobool24 = trunc i8 %30 to i1, !dbg !4140
  br i1 %tobool24, label %if.then25, label %if.end27, !dbg !4141

if.then25:                                        ; preds = %if.end22
  %31 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4142
  %32 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4143
  %call26 = call i32 @pm_genpd_opp_to_performance_state(%struct.device* %31, %struct.dev_pm_opp* %32) #7, !dbg !4144
  %33 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4145
  %pstate = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %33, i32 0, i32 6, !dbg !4146
  store i32 %call26, i32* %pstate, align 8, !dbg !4147
  br label %if.end27, !dbg !4145

if.end27:                                         ; preds = %if.then25, %if.end22
  %34 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4148
  %35 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4149
  %36 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4150
  %37 = load i8, i8* %rate_not_available, align 1, !dbg !4151
  %tobool28 = trunc i8 %37 to i1, !dbg !4151
  %call29 = call i32 @_opp_add(%struct.device* %34, %struct.dev_pm_opp* %35, %struct.opp_table* %36, i1 zeroext %tobool28) #7, !dbg !4152
  store i32 %call29, i32* %ret, align 4, !dbg !4153
  %38 = load i32, i32* %ret, align 4, !dbg !4154
  %tobool30 = icmp ne i32 %38, 0, !dbg !4154
  br i1 %tobool30, label %if.then31, label %if.end36, !dbg !4156

if.then31:                                        ; preds = %if.end27
  %39 = load i32, i32* %ret, align 4, !dbg !4157
  %cmp32 = icmp eq i32 %39, -16, !dbg !4160
  br i1 %cmp32, label %if.then34, label %if.end35, !dbg !4161

if.then34:                                        ; preds = %if.then31
  store i32 0, i32* %ret, align 4, !dbg !4162
  br label %if.end35, !dbg !4163

if.end35:                                         ; preds = %if.then34, %if.then31
  br label %free_required_opps, !dbg !4164

if.end36:                                         ; preds = %if.end27
  %40 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4165
  %call37 = call zeroext i1 @of_property_read_bool(%struct.device_node* %40, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.26, i64 0, i64 0)) #7, !dbg !4167
  br i1 %call37, label %if.then38, label %if.end54, !dbg !4168

if.then38:                                        ; preds = %if.end36
  %41 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4169
  %suspend_opp = getelementptr inbounds %struct.opp_table, %struct.opp_table* %41, i32 0, i32 11, !dbg !4172
  %42 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %suspend_opp, align 8, !dbg !4172
  %tobool39 = icmp ne %struct.dev_pm_opp* %42, null, !dbg !4169
  br i1 %tobool39, label %if.then40, label %if.else, !dbg !4173

if.then40:                                        ; preds = %if.then38
  %43 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4174
  %rate41 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %43, i32 0, i32 7, !dbg !4177
  %44 = load i64, i64* %rate41, align 8, !dbg !4177
  %45 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4178
  %suspend_opp42 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %45, i32 0, i32 11, !dbg !4179
  %46 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %suspend_opp42, align 8, !dbg !4179
  %rate43 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %46, i32 0, i32 7, !dbg !4180
  %47 = load i64, i64* %rate43, align 8, !dbg !4180
  %cmp44 = icmp ugt i64 %44, %47, !dbg !4181
  br i1 %cmp44, label %if.then46, label %if.end50, !dbg !4182

if.then46:                                        ; preds = %if.then40
  %48 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4183
  %suspend_opp47 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %48, i32 0, i32 11, !dbg !4185
  %49 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %suspend_opp47, align 8, !dbg !4185
  %suspend = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %49, i32 0, i32 5, !dbg !4186
  store i8 0, i8* %suspend, align 1, !dbg !4187
  %50 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4188
  %suspend48 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %50, i32 0, i32 5, !dbg !4189
  store i8 1, i8* %suspend48, align 1, !dbg !4190
  %51 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4191
  %52 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4192
  %suspend_opp49 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %52, i32 0, i32 11, !dbg !4193
  store %struct.dev_pm_opp* %51, %struct.dev_pm_opp** %suspend_opp49, align 8, !dbg !4194
  br label %if.end50, !dbg !4195

if.end50:                                         ; preds = %if.then46, %if.then40
  br label %if.end53, !dbg !4196

if.else:                                          ; preds = %if.then38
  %53 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4197
  %suspend51 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %53, i32 0, i32 5, !dbg !4199
  store i8 1, i8* %suspend51, align 1, !dbg !4200
  %54 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4201
  %55 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4202
  %suspend_opp52 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %55, i32 0, i32 11, !dbg !4203
  store %struct.dev_pm_opp* %54, %struct.dev_pm_opp** %suspend_opp52, align 8, !dbg !4204
  br label %if.end53

if.end53:                                         ; preds = %if.else, %if.end50
  br label %if.end54, !dbg !4205

if.end54:                                         ; preds = %if.end53, %if.end36
  %56 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4206
  %clock_latency_ns55 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %56, i32 0, i32 11, !dbg !4208
  %57 = load i64, i64* %clock_latency_ns55, align 8, !dbg !4208
  %58 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4209
  %clock_latency_ns_max = getelementptr inbounds %struct.opp_table, %struct.opp_table* %58, i32 0, i32 7, !dbg !4210
  %59 = load i64, i64* %clock_latency_ns_max, align 8, !dbg !4210
  %cmp56 = icmp ugt i64 %57, %59, !dbg !4211
  br i1 %cmp56, label %if.then58, label %if.end61, !dbg !4212

if.then58:                                        ; preds = %if.end54
  %60 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4213
  %clock_latency_ns59 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %60, i32 0, i32 11, !dbg !4214
  %61 = load i64, i64* %clock_latency_ns59, align 8, !dbg !4214
  %62 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4215
  %clock_latency_ns_max60 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %62, i32 0, i32 7, !dbg !4216
  store i64 %61, i64* %clock_latency_ns_max60, align 8, !dbg !4217
  br label %if.end61, !dbg !4215

if.end61:                                         ; preds = %if.then58, %if.end54
  store i32 0, i32* %tmp, align 4, !dbg !4218
  %63 = load i32, i32* %tmp, align 4, !dbg !4221
  %64 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4222
  %head = getelementptr inbounds %struct.opp_table, %struct.opp_table* %64, i32 0, i32 1, !dbg !4223
  %65 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4224
  %66 = bitcast %struct.dev_pm_opp* %65 to i8*, !dbg !4224
  %call62 = call i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head* %head, i64 0, i8* %66) #7, !dbg !4225
  %67 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4226
  store %struct.dev_pm_opp* %67, %struct.dev_pm_opp** %retval, align 8, !dbg !4227
  br label %return, !dbg !4227

free_required_opps:                               ; preds = %if.end35, %if.then21
  call void @llvm.dbg.label(metadata !4228), !dbg !4229
  %68 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4230
  %69 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4231
  call void @_of_opp_free_required_opps(%struct.opp_table* %68, %struct.dev_pm_opp* %69) #7, !dbg !4232
  br label %free_opp, !dbg !4232

free_opp:                                         ; preds = %free_required_opps, %if.then13, %if.then7, %if.then4
  call void @llvm.dbg.label(metadata !4233), !dbg !4234
  %70 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp, align 8, !dbg !4235
  call void @_opp_free(%struct.dev_pm_opp* %70) #7, !dbg !4236
  %71 = load i32, i32* %ret, align 4, !dbg !4237
  %conv63 = sext i32 %71 to i64, !dbg !4237
  %call64 = call i8* @ERR_PTR(i64 %conv63) #7, !dbg !4238
  %72 = bitcast i8* %call64 to %struct.dev_pm_opp*, !dbg !4238
  store %struct.dev_pm_opp* %72, %struct.dev_pm_opp** %retval, align 8, !dbg !4239
  br label %return, !dbg !4239

return:                                           ; preds = %free_opp, %if.end61, %if.then
  %73 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %retval, align 8, !dbg !4240
  ret %struct.dev_pm_opp* %73, !dbg !4240
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @_opp_remove_all_static(%struct.opp_table*) #2

; Function Attrs: noredzone
declare dso_local %struct.dev_pm_opp* @_opp_allocate(%struct.opp_table*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !4241 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !4244, metadata !DIExpression()), !dbg !4245
  %0 = load i64, i64* %error.addr, align 8, !dbg !4246
  %1 = inttoptr i64 %0 to i8*, !dbg !4247
  ret i8* %1, !dbg !4248
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_read_opp_key(%struct.dev_pm_opp* %new_opp, %struct.opp_table* %table, %struct.device_node* %np, i8* %rate_not_available) #0 !dbg !4249 {
entry:
  %retval = alloca i32, align 4
  %new_opp.addr = alloca %struct.dev_pm_opp*, align 8
  %table.addr = alloca %struct.opp_table*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %rate_not_available.addr = alloca i8*, align 8
  %found = alloca i8, align 1
  %rate = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.dev_pm_opp* %new_opp, %struct.dev_pm_opp** %new_opp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %new_opp.addr, metadata !4253, metadata !DIExpression()), !dbg !4254
  store %struct.opp_table* %table, %struct.opp_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %table.addr, metadata !4255, metadata !DIExpression()), !dbg !4256
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4257, metadata !DIExpression()), !dbg !4258
  store i8* %rate_not_available, i8** %rate_not_available.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %rate_not_available.addr, metadata !4259, metadata !DIExpression()), !dbg !4260
  call void @llvm.dbg.declare(metadata i8* %found, metadata !4261, metadata !DIExpression()), !dbg !4262
  store i8 0, i8* %found, align 1, !dbg !4262
  call void @llvm.dbg.declare(metadata i64* %rate, metadata !4263, metadata !DIExpression()), !dbg !4264
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4265, metadata !DIExpression()), !dbg !4266
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4267
  %call = call i32 @of_property_read_u64(%struct.device_node* %0, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.27, i64 0, i64 0), i64* %rate) #7, !dbg !4268
  store i32 %call, i32* %ret, align 4, !dbg !4269
  %1 = load i32, i32* %ret, align 4, !dbg !4270
  %tobool = icmp ne i32 %1, 0, !dbg !4270
  br i1 %tobool, label %if.end, label %if.then, !dbg !4272

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %rate, align 8, !dbg !4273
  %3 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp.addr, align 8, !dbg !4275
  %rate1 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %3, i32 0, i32 7, !dbg !4276
  store i64 %2, i64* %rate1, align 8, !dbg !4277
  store i8 1, i8* %found, align 1, !dbg !4278
  br label %if.end, !dbg !4279

if.end:                                           ; preds = %if.then, %entry
  %4 = load i32, i32* %ret, align 4, !dbg !4280
  %tobool2 = icmp ne i32 %4, 0, !dbg !4281
  %lnot = xor i1 %tobool2, true, !dbg !4281
  %lnot3 = xor i1 %lnot, true, !dbg !4282
  %5 = load i8*, i8** %rate_not_available.addr, align 8, !dbg !4283
  %frombool = zext i1 %lnot3 to i8, !dbg !4284
  store i8 %frombool, i8* %5, align 1, !dbg !4284
  %6 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp.addr, align 8, !dbg !4285
  %7 = load %struct.opp_table*, %struct.opp_table** %table.addr, align 8, !dbg !4286
  %8 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4287
  %call4 = call i32 @_read_bw(%struct.dev_pm_opp* %6, %struct.opp_table* %7, %struct.device_node* %8, i1 zeroext true) #7, !dbg !4288
  store i32 %call4, i32* %ret, align 4, !dbg !4289
  %9 = load i32, i32* %ret, align 4, !dbg !4290
  %tobool5 = icmp ne i32 %9, 0, !dbg !4290
  br i1 %tobool5, label %if.end8, label %if.then6, !dbg !4292

if.then6:                                         ; preds = %if.end
  store i8 1, i8* %found, align 1, !dbg !4293
  %10 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp.addr, align 8, !dbg !4295
  %11 = load %struct.opp_table*, %struct.opp_table** %table.addr, align 8, !dbg !4296
  %12 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4297
  %call7 = call i32 @_read_bw(%struct.dev_pm_opp* %10, %struct.opp_table* %11, %struct.device_node* %12, i1 zeroext false) #7, !dbg !4298
  store i32 %call7, i32* %ret, align 4, !dbg !4299
  br label %if.end8, !dbg !4300

if.end8:                                          ; preds = %if.then6, %if.end
  %13 = load i32, i32* %ret, align 4, !dbg !4301
  %tobool9 = icmp ne i32 %13, 0, !dbg !4301
  br i1 %tobool9, label %land.lhs.true, label %if.end11, !dbg !4303

land.lhs.true:                                    ; preds = %if.end8
  %14 = load i32, i32* %ret, align 4, !dbg !4304
  %cmp = icmp ne i32 %14, -19, !dbg !4305
  br i1 %cmp, label %if.then10, label %if.end11, !dbg !4306

if.then10:                                        ; preds = %land.lhs.true
  %15 = load i32, i32* %ret, align 4, !dbg !4307
  store i32 %15, i32* %retval, align 4, !dbg !4308
  br label %return, !dbg !4308

if.end11:                                         ; preds = %land.lhs.true, %if.end8
  %16 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4309
  %17 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp.addr, align 8, !dbg !4311
  %level = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %17, i32 0, i32 8, !dbg !4312
  %call12 = call i32 @of_property_read_u32(%struct.device_node* %16, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.28, i64 0, i64 0), i32* %level) #7, !dbg !4313
  %tobool13 = icmp ne i32 %call12, 0, !dbg !4313
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !4314

if.then14:                                        ; preds = %if.end11
  store i8 1, i8* %found, align 1, !dbg !4315
  br label %if.end15, !dbg !4316

if.end15:                                         ; preds = %if.then14, %if.end11
  %18 = load i8, i8* %found, align 1, !dbg !4317
  %tobool16 = trunc i8 %18 to i1, !dbg !4317
  br i1 %tobool16, label %if.then17, label %if.end18, !dbg !4319

if.then17:                                        ; preds = %if.end15
  store i32 0, i32* %retval, align 4, !dbg !4320
  br label %return, !dbg !4320

if.end18:                                         ; preds = %if.end15
  %19 = load i32, i32* %ret, align 4, !dbg !4321
  store i32 %19, i32* %retval, align 4, !dbg !4322
  br label %return, !dbg !4322

return:                                           ; preds = %if.end18, %if.then17, %if.then10
  %20 = load i32, i32* %retval, align 4, !dbg !4323
  ret i32 %20, !dbg !4323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @_opp_is_supported(%struct.device* %dev, %struct.opp_table* %opp_table, %struct.device_node* %np) #0 !dbg !4324 {
entry:
  %retval = alloca i1, align 1
  %dev.addr = alloca %struct.device*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %levels = alloca i32, align 4
  %count = alloca i32, align 4
  %versions = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %val = alloca i32, align 4
  %supported = alloca i8, align 1
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4327, metadata !DIExpression()), !dbg !4328
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !4329, metadata !DIExpression()), !dbg !4330
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4331, metadata !DIExpression()), !dbg !4332
  call void @llvm.dbg.declare(metadata i32* %levels, metadata !4333, metadata !DIExpression()), !dbg !4334
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4335
  %supported_hw_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 17, !dbg !4336
  %1 = load i32, i32* %supported_hw_count, align 8, !dbg !4336
  store i32 %1, i32* %levels, align 4, !dbg !4334
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4337, metadata !DIExpression()), !dbg !4338
  call void @llvm.dbg.declare(metadata i32* %versions, metadata !4339, metadata !DIExpression()), !dbg !4340
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4341, metadata !DIExpression()), !dbg !4342
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4343, metadata !DIExpression()), !dbg !4344
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4345, metadata !DIExpression()), !dbg !4346
  call void @llvm.dbg.declare(metadata i32* %val, metadata !4347, metadata !DIExpression()), !dbg !4348
  %2 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4349
  %supported_hw = getelementptr inbounds %struct.opp_table, %struct.opp_table* %2, i32 0, i32 16, !dbg !4351
  %3 = load i32*, i32** %supported_hw, align 8, !dbg !4351
  %tobool = icmp ne i32* %3, null, !dbg !4349
  br i1 %tobool, label %if.end, label %if.then, !dbg !4352

if.then:                                          ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4353
  %call = call %struct.property* @of_find_property(%struct.device_node* %4, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32* null) #7, !dbg !4356
  %tobool1 = icmp ne %struct.property* %call, null, !dbg !4356
  br i1 %tobool1, label %if.then2, label %if.else, !dbg !4357

if.then2:                                         ; preds = %if.then
  store i1 false, i1* %retval, align 1, !dbg !4358
  br label %return, !dbg !4358

if.else:                                          ; preds = %if.then
  store i1 true, i1* %retval, align 1, !dbg !4359
  br label %return, !dbg !4359

if.end:                                           ; preds = %entry
  %5 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4360
  %call3 = call i32 @of_property_count_u32_elems(%struct.device_node* %5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0)) #7, !dbg !4361
  store i32 %call3, i32* %count, align 4, !dbg !4362
  %6 = load i32, i32* %count, align 4, !dbg !4363
  %cmp = icmp sle i32 %6, 0, !dbg !4365
  br i1 %cmp, label %if.then5, label %lor.lhs.false, !dbg !4366

lor.lhs.false:                                    ; preds = %if.end
  %7 = load i32, i32* %count, align 4, !dbg !4367
  %8 = load i32, i32* %levels, align 4, !dbg !4368
  %rem = urem i32 %7, %8, !dbg !4369
  %tobool4 = icmp ne i32 %rem, 0, !dbg !4369
  br i1 %tobool4, label %if.then5, label %if.end6, !dbg !4370

if.then5:                                         ; preds = %lor.lhs.false, %if.end
  %9 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4371
  %10 = load i32, i32* %count, align 4, !dbg !4371
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %9, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.33, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__._opp_is_supported, i64 0, i64 0), i32 %10) #8, !dbg !4371
  store i1 false, i1* %retval, align 1, !dbg !4373
  br label %return, !dbg !4373

if.end6:                                          ; preds = %lor.lhs.false
  %11 = load i32, i32* %count, align 4, !dbg !4374
  %12 = load i32, i32* %levels, align 4, !dbg !4375
  %div = udiv i32 %11, %12, !dbg !4376
  store i32 %div, i32* %versions, align 4, !dbg !4377
  store i32 0, i32* %i, align 4, !dbg !4378
  br label %for.cond, !dbg !4380

for.cond:                                         ; preds = %for.inc24, %if.end6
  %13 = load i32, i32* %i, align 4, !dbg !4381
  %14 = load i32, i32* %versions, align 4, !dbg !4383
  %cmp7 = icmp slt i32 %13, %14, !dbg !4384
  br i1 %cmp7, label %for.body, label %for.end26, !dbg !4385

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i8* %supported, metadata !4386, metadata !DIExpression()), !dbg !4388
  store i8 1, i8* %supported, align 1, !dbg !4388
  store i32 0, i32* %j, align 4, !dbg !4389
  br label %for.cond8, !dbg !4391

for.cond8:                                        ; preds = %for.inc, %for.body
  %15 = load i32, i32* %j, align 4, !dbg !4392
  %16 = load i32, i32* %levels, align 4, !dbg !4394
  %cmp9 = icmp ult i32 %15, %16, !dbg !4395
  br i1 %cmp9, label %for.body10, label %for.end, !dbg !4396

for.body10:                                       ; preds = %for.cond8
  %17 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4397
  %18 = load i32, i32* %i, align 4, !dbg !4399
  %19 = load i32, i32* %levels, align 4, !dbg !4400
  %mul = mul i32 %18, %19, !dbg !4401
  %20 = load i32, i32* %j, align 4, !dbg !4402
  %add = add i32 %mul, %20, !dbg !4403
  %call11 = call i32 @of_property_read_u32_index(%struct.device_node* %17, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.32, i64 0, i64 0), i32 %add, i32* %val) #7, !dbg !4404
  store i32 %call11, i32* %ret, align 4, !dbg !4405
  %21 = load i32, i32* %ret, align 4, !dbg !4406
  %tobool12 = icmp ne i32 %21, 0, !dbg !4406
  br i1 %tobool12, label %if.then13, label %if.end16, !dbg !4408

if.then13:                                        ; preds = %for.body10
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4409
  %23 = load i32, i32* %i, align 4, !dbg !4409
  %24 = load i32, i32* %levels, align 4, !dbg !4409
  %mul14 = mul i32 %23, %24, !dbg !4409
  %25 = load i32, i32* %j, align 4, !dbg !4409
  %add15 = add i32 %mul14, %25, !dbg !4409
  %26 = load i32, i32* %ret, align 4, !dbg !4409
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %22, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.34, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__._opp_is_supported, i64 0, i64 0), i32 %add15, i32 %26) #8, !dbg !4409
  store i1 false, i1* %retval, align 1, !dbg !4411
  br label %return, !dbg !4411

if.end16:                                         ; preds = %for.body10
  %27 = load i32, i32* %val, align 4, !dbg !4412
  %28 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4414
  %supported_hw17 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %28, i32 0, i32 16, !dbg !4415
  %29 = load i32*, i32** %supported_hw17, align 8, !dbg !4415
  %30 = load i32, i32* %j, align 4, !dbg !4416
  %idxprom = sext i32 %30 to i64, !dbg !4414
  %arrayidx = getelementptr i32, i32* %29, i64 %idxprom, !dbg !4414
  %31 = load i32, i32* %arrayidx, align 4, !dbg !4414
  %and = and i32 %27, %31, !dbg !4417
  %tobool18 = icmp ne i32 %and, 0, !dbg !4417
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4418

if.then19:                                        ; preds = %if.end16
  store i8 0, i8* %supported, align 1, !dbg !4419
  br label %for.end, !dbg !4421

if.end20:                                         ; preds = %if.end16
  br label %for.inc, !dbg !4422

for.inc:                                          ; preds = %if.end20
  %32 = load i32, i32* %j, align 4, !dbg !4423
  %inc = add i32 %32, 1, !dbg !4423
  store i32 %inc, i32* %j, align 4, !dbg !4423
  br label %for.cond8, !dbg !4424, !llvm.loop !4425

for.end:                                          ; preds = %if.then19, %for.cond8
  %33 = load i8, i8* %supported, align 1, !dbg !4427
  %tobool21 = trunc i8 %33 to i1, !dbg !4427
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !4429

if.then22:                                        ; preds = %for.end
  store i1 true, i1* %retval, align 1, !dbg !4430
  br label %return, !dbg !4430

if.end23:                                         ; preds = %for.end
  br label %for.inc24, !dbg !4431

for.inc24:                                        ; preds = %if.end23
  %34 = load i32, i32* %i, align 4, !dbg !4432
  %inc25 = add i32 %34, 1, !dbg !4432
  store i32 %inc25, i32* %i, align 4, !dbg !4432
  br label %for.cond, !dbg !4433, !llvm.loop !4434

for.end26:                                        ; preds = %for.cond
  store i1 false, i1* %retval, align 1, !dbg !4436
  br label %return, !dbg !4436

return:                                           ; preds = %for.end26, %if.then22, %if.then13, %if.then5, %if.else, %if.then2
  %35 = load i1, i1* %retval, align 1, !dbg !4437
  ret i1 %35, !dbg !4437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_of_opp_alloc_required_opps(%struct.opp_table* %opp_table, %struct.dev_pm_opp* %opp) #0 !dbg !4438 {
entry:
  %retval = alloca i32, align 4
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %opp.addr = alloca %struct.dev_pm_opp*, align 8
  %required_opps = alloca %struct.dev_pm_opp**, align 8
  %required_table = alloca %struct.opp_table*, align 8
  %np = alloca %struct.device_node*, align 8
  %i = alloca i32, align 4
  %ret = alloca i32, align 4
  %count = alloca i32, align 4
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !4441, metadata !DIExpression()), !dbg !4442
  store %struct.dev_pm_opp* %opp, %struct.dev_pm_opp** %opp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp.addr, metadata !4443, metadata !DIExpression()), !dbg !4444
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp*** %required_opps, metadata !4445, metadata !DIExpression()), !dbg !4446
  call void @llvm.dbg.declare(metadata %struct.opp_table** %required_table, metadata !4447, metadata !DIExpression()), !dbg !4448
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !4449, metadata !DIExpression()), !dbg !4450
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4451, metadata !DIExpression()), !dbg !4452
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4455, metadata !DIExpression()), !dbg !4456
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4457
  %required_opp_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 15, !dbg !4458
  %1 = load i32, i32* %required_opp_count, align 8, !dbg !4458
  store i32 %1, i32* %count, align 4, !dbg !4456
  %2 = load i32, i32* %count, align 4, !dbg !4459
  %tobool = icmp ne i32 %2, 0, !dbg !4459
  br i1 %tobool, label %if.end, label %if.then, !dbg !4461

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4462
  br label %return, !dbg !4462

if.end:                                           ; preds = %entry
  %3 = load i32, i32* %count, align 4, !dbg !4463
  %conv = sext i32 %3 to i64, !dbg !4463
  %call = call i8* @kcalloc(i64 %conv, i64 8, i32 3264) #7, !dbg !4464
  %4 = bitcast i8* %call to %struct.dev_pm_opp**, !dbg !4464
  store %struct.dev_pm_opp** %4, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !4465
  %5 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !4466
  %tobool1 = icmp ne %struct.dev_pm_opp** %5, null, !dbg !4466
  br i1 %tobool1, label %if.end3, label %if.then2, !dbg !4468

if.then2:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !4469
  br label %return, !dbg !4469

if.end3:                                          ; preds = %if.end
  %6 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !4470
  %7 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4471
  %required_opps4 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %7, i32 0, i32 12, !dbg !4472
  store %struct.dev_pm_opp** %6, %struct.dev_pm_opp*** %required_opps4, align 8, !dbg !4473
  store i32 0, i32* %i, align 4, !dbg !4474
  br label %for.cond, !dbg !4476

for.cond:                                         ; preds = %for.inc, %if.end3
  %8 = load i32, i32* %i, align 4, !dbg !4477
  %9 = load i32, i32* %count, align 4, !dbg !4479
  %cmp = icmp slt i32 %8, %9, !dbg !4480
  br i1 %cmp, label %for.body, label %for.end, !dbg !4481

for.body:                                         ; preds = %for.cond
  %10 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4482
  %required_opp_tables = getelementptr inbounds %struct.opp_table, %struct.opp_table* %10, i32 0, i32 14, !dbg !4484
  %11 = load %struct.opp_table**, %struct.opp_table*** %required_opp_tables, align 8, !dbg !4484
  %12 = load i32, i32* %i, align 4, !dbg !4485
  %idxprom = sext i32 %12 to i64, !dbg !4482
  %arrayidx = getelementptr %struct.opp_table*, %struct.opp_table** %11, i64 %idxprom, !dbg !4482
  %13 = load %struct.opp_table*, %struct.opp_table** %arrayidx, align 8, !dbg !4482
  store %struct.opp_table* %13, %struct.opp_table** %required_table, align 8, !dbg !4486
  %14 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4487
  %np6 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %14, i32 0, i32 14, !dbg !4488
  %15 = load %struct.device_node*, %struct.device_node** %np6, align 8, !dbg !4488
  %16 = load i32, i32* %i, align 4, !dbg !4489
  %call7 = call %struct.device_node* @of_parse_required_opp(%struct.device_node* %15, i32 %16) #7, !dbg !4490
  store %struct.device_node* %call7, %struct.device_node** %np, align 8, !dbg !4491
  %17 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4492
  %tobool8 = icmp ne %struct.device_node* %17, null, !dbg !4492
  %lnot = xor i1 %tobool8, true, !dbg !4492
  %lnot9 = xor i1 %lnot, true, !dbg !4492
  %lnot10 = xor i1 %lnot9, true, !dbg !4492
  %lnot.ext = zext i1 %lnot10 to i32, !dbg !4492
  %conv11 = sext i32 %lnot.ext to i64, !dbg !4492
  %tobool12 = icmp ne i64 %conv11, 0, !dbg !4492
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !4494

if.then13:                                        ; preds = %for.body
  store i32 -19, i32* %ret, align 4, !dbg !4495
  br label %free_required_opps, !dbg !4497

if.end14:                                         ; preds = %for.body
  %18 = load %struct.opp_table*, %struct.opp_table** %required_table, align 8, !dbg !4498
  %19 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4499
  %call15 = call %struct.dev_pm_opp* @_find_opp_of_np(%struct.opp_table* %18, %struct.device_node* %19) #7, !dbg !4500
  %20 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !4501
  %21 = load i32, i32* %i, align 4, !dbg !4502
  %idxprom16 = sext i32 %21 to i64, !dbg !4501
  %arrayidx17 = getelementptr %struct.dev_pm_opp*, %struct.dev_pm_opp** %20, i64 %idxprom16, !dbg !4501
  store %struct.dev_pm_opp* %call15, %struct.dev_pm_opp** %arrayidx17, align 8, !dbg !4503
  %22 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4504
  call void @of_node_put(%struct.device_node* %22) #7, !dbg !4505
  %23 = load %struct.dev_pm_opp**, %struct.dev_pm_opp*** %required_opps, align 8, !dbg !4506
  %24 = load i32, i32* %i, align 4, !dbg !4508
  %idxprom18 = sext i32 %24 to i64, !dbg !4506
  %arrayidx19 = getelementptr %struct.dev_pm_opp*, %struct.dev_pm_opp** %23, i64 %idxprom18, !dbg !4506
  %25 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %arrayidx19, align 8, !dbg !4506
  %tobool20 = icmp ne %struct.dev_pm_opp* %25, null, !dbg !4506
  br i1 %tobool20, label %if.end24, label %if.then21, !dbg !4509

if.then21:                                        ; preds = %if.end14
  %26 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4510
  %np22 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %26, i32 0, i32 14, !dbg !4510
  %27 = load %struct.device_node*, %struct.device_node** %np22, align 8, !dbg !4510
  %28 = load i32, i32* %i, align 4, !dbg !4510
  %call23 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.35, i64 0, i64 0), i8* getelementptr inbounds ([28 x i8], [28 x i8]* @__func__._of_opp_alloc_required_opps, i64 0, i64 0), %struct.device_node* %27, i32 %28) #8, !dbg !4510
  store i32 -19, i32* %ret, align 4, !dbg !4512
  br label %free_required_opps, !dbg !4513

if.end24:                                         ; preds = %if.end14
  br label %for.inc, !dbg !4514

for.inc:                                          ; preds = %if.end24
  %29 = load i32, i32* %i, align 4, !dbg !4515
  %inc = add i32 %29, 1, !dbg !4515
  store i32 %inc, i32* %i, align 4, !dbg !4515
  br label %for.cond, !dbg !4516, !llvm.loop !4517

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !4519
  br label %return, !dbg !4519

free_required_opps:                               ; preds = %if.then21, %if.then13
  call void @llvm.dbg.label(metadata !4520), !dbg !4521
  %30 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4522
  %31 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4523
  call void @_of_opp_free_required_opps(%struct.opp_table* %30, %struct.dev_pm_opp* %31) #7, !dbg !4524
  %32 = load i32, i32* %ret, align 4, !dbg !4525
  store i32 %32, i32* %retval, align 4, !dbg !4526
  br label %return, !dbg !4526

return:                                           ; preds = %free_required_opps, %for.end, %if.then2, %if.then
  %33 = load i32, i32* %retval, align 4, !dbg !4527
  ret i32 %33, !dbg !4527
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @opp_parse_supplies(%struct.dev_pm_opp* %opp, %struct.device* %dev, %struct.opp_table* %opp_table) #0 !dbg !4528 {
entry:
  %retval = alloca i32, align 4
  %opp.addr = alloca %struct.dev_pm_opp*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %opp_table.addr = alloca %struct.opp_table*, align 8
  %microvolt = alloca i32*, align 8
  %microamp = alloca i32*, align 8
  %supplies = alloca i32, align 4
  %vcount = alloca i32, align 4
  %icount = alloca i32, align 4
  %ret = alloca i32, align 4
  %i = alloca i32, align 4
  %j = alloca i32, align 4
  %prop = alloca %struct.property*, align 8
  %name = alloca [255 x i8], align 16
  store %struct.dev_pm_opp* %opp, %struct.dev_pm_opp** %opp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %opp.addr, metadata !4531, metadata !DIExpression()), !dbg !4532
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !4533, metadata !DIExpression()), !dbg !4534
  store %struct.opp_table* %opp_table, %struct.opp_table** %opp_table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %opp_table.addr, metadata !4535, metadata !DIExpression()), !dbg !4536
  call void @llvm.dbg.declare(metadata i32** %microvolt, metadata !4537, metadata !DIExpression()), !dbg !4538
  call void @llvm.dbg.declare(metadata i32** %microamp, metadata !4539, metadata !DIExpression()), !dbg !4540
  store i32* null, i32** %microamp, align 8, !dbg !4540
  call void @llvm.dbg.declare(metadata i32* %supplies, metadata !4541, metadata !DIExpression()), !dbg !4542
  %0 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4543
  %regulator_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %0, i32 0, i32 21, !dbg !4544
  %1 = load i32, i32* %regulator_count, align 8, !dbg !4544
  store i32 %1, i32* %supplies, align 4, !dbg !4542
  call void @llvm.dbg.declare(metadata i32* %vcount, metadata !4545, metadata !DIExpression()), !dbg !4546
  call void @llvm.dbg.declare(metadata i32* %icount, metadata !4547, metadata !DIExpression()), !dbg !4548
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4549, metadata !DIExpression()), !dbg !4550
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4551, metadata !DIExpression()), !dbg !4552
  call void @llvm.dbg.declare(metadata i32* %j, metadata !4553, metadata !DIExpression()), !dbg !4554
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !4555, metadata !DIExpression()), !dbg !4556
  store %struct.property* null, %struct.property** %prop, align 8, !dbg !4556
  call void @llvm.dbg.declare(metadata [255 x i8]* %name, metadata !4557, metadata !DIExpression()), !dbg !4561
  %2 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4562
  %prop_name = getelementptr inbounds %struct.opp_table, %struct.opp_table* %2, i32 0, i32 18, !dbg !4564
  %3 = load i8*, i8** %prop_name, align 8, !dbg !4564
  %tobool = icmp ne i8* %3, null, !dbg !4562
  br i1 %tobool, label %if.then, label %if.end, !dbg !4565

if.then:                                          ; preds = %entry
  %arraydecay = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4566
  %4 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4568
  %prop_name1 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %4, i32 0, i32 18, !dbg !4569
  %5 = load i8*, i8** %prop_name1, align 8, !dbg !4569
  %call = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay, i64 255, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.36, i64 0, i64 0), i8* %5) #7, !dbg !4570
  %6 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4571
  %np = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %6, i32 0, i32 14, !dbg !4572
  %7 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !4572
  %arraydecay2 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4573
  %call3 = call %struct.property* @of_find_property(%struct.device_node* %7, i8* %arraydecay2, i32* null) #7, !dbg !4574
  store %struct.property* %call3, %struct.property** %prop, align 8, !dbg !4575
  br label %if.end, !dbg !4576

if.end:                                           ; preds = %if.then, %entry
  %8 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4577
  %tobool4 = icmp ne %struct.property* %8, null, !dbg !4577
  br i1 %tobool4, label %if.end22, label %if.then5, !dbg !4579

if.then5:                                         ; preds = %if.end
  %arraydecay6 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4580
  %call7 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay6, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.37, i64 0, i64 0)) #7, !dbg !4582
  %9 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4583
  %np8 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %9, i32 0, i32 14, !dbg !4584
  %10 = load %struct.device_node*, %struct.device_node** %np8, align 8, !dbg !4584
  %arraydecay9 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4585
  %call10 = call %struct.property* @of_find_property(%struct.device_node* %10, i8* %arraydecay9, i32* null) #7, !dbg !4586
  store %struct.property* %call10, %struct.property** %prop, align 8, !dbg !4587
  %11 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4588
  %tobool11 = icmp ne %struct.property* %11, null, !dbg !4588
  br i1 %tobool11, label %if.end21, label %if.then12, !dbg !4590

if.then12:                                        ; preds = %if.then5
  %12 = load i32, i32* %supplies, align 4, !dbg !4591
  %cmp = icmp eq i32 %12, -1, !dbg !4591
  %lnot = xor i1 %cmp, true, !dbg !4591
  %lnot13 = xor i1 %lnot, true, !dbg !4591
  %lnot.ext = zext i1 %lnot13 to i32, !dbg !4591
  %conv = sext i32 %lnot.ext to i64, !dbg !4591
  %tobool14 = icmp ne i64 %conv, 0, !dbg !4591
  br i1 %tobool14, label %if.then15, label %if.end17, !dbg !4594

if.then15:                                        ; preds = %if.then12
  %13 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4595
  %regulator_count16 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %13, i32 0, i32 21, !dbg !4597
  store i32 0, i32* %regulator_count16, align 8, !dbg !4598
  store i32 0, i32* %retval, align 4, !dbg !4599
  br label %return, !dbg !4599

if.end17:                                         ; preds = %if.then12
  %14 = load i32, i32* %supplies, align 4, !dbg !4600
  %tobool18 = icmp ne i32 %14, 0, !dbg !4600
  br i1 %tobool18, label %if.end20, label %if.then19, !dbg !4602

if.then19:                                        ; preds = %if.end17
  store i32 0, i32* %retval, align 4, !dbg !4603
  br label %return, !dbg !4603

if.end20:                                         ; preds = %if.end17
  %15 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4604
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %15, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.38, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0)) #8, !dbg !4604
  store i32 -22, i32* %retval, align 4, !dbg !4605
  br label %return, !dbg !4605

if.end21:                                         ; preds = %if.then5
  br label %if.end22, !dbg !4606

if.end22:                                         ; preds = %if.end21, %if.end
  %16 = load i32, i32* %supplies, align 4, !dbg !4607
  %cmp23 = icmp eq i32 %16, -1, !dbg !4607
  %lnot25 = xor i1 %cmp23, true, !dbg !4607
  %lnot27 = xor i1 %lnot25, true, !dbg !4607
  %lnot.ext28 = zext i1 %lnot27 to i32, !dbg !4607
  %conv29 = sext i32 %lnot.ext28 to i64, !dbg !4607
  %tobool30 = icmp ne i64 %conv29, 0, !dbg !4607
  br i1 %tobool30, label %if.then31, label %if.else, !dbg !4609

if.then31:                                        ; preds = %if.end22
  %17 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4610
  %regulator_count32 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %17, i32 0, i32 21, !dbg !4612
  store i32 1, i32* %regulator_count32, align 8, !dbg !4613
  store i32 1, i32* %supplies, align 4, !dbg !4614
  br label %if.end44, !dbg !4615

if.else:                                          ; preds = %if.end22
  %18 = load i32, i32* %supplies, align 4, !dbg !4616
  %tobool33 = icmp ne i32 %18, 0, !dbg !4616
  %lnot34 = xor i1 %tobool33, true, !dbg !4616
  %lnot36 = xor i1 %lnot34, true, !dbg !4616
  %lnot38 = xor i1 %lnot36, true, !dbg !4616
  %lnot.ext39 = zext i1 %lnot38 to i32, !dbg !4616
  %conv40 = sext i32 %lnot.ext39 to i64, !dbg !4616
  %tobool41 = icmp ne i64 %conv40, 0, !dbg !4616
  br i1 %tobool41, label %if.then42, label %if.end43, !dbg !4618

if.then42:                                        ; preds = %if.else
  %19 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4619
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %19, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.39, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0)) #8, !dbg !4619
  store i32 -22, i32* %retval, align 4, !dbg !4621
  br label %return, !dbg !4621

if.end43:                                         ; preds = %if.else
  br label %if.end44

if.end44:                                         ; preds = %if.end43, %if.then31
  %20 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4622
  %np45 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %20, i32 0, i32 14, !dbg !4623
  %21 = load %struct.device_node*, %struct.device_node** %np45, align 8, !dbg !4623
  %arraydecay46 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4624
  %call47 = call i32 @of_property_count_u32_elems(%struct.device_node* %21, i8* %arraydecay46) #7, !dbg !4625
  store i32 %call47, i32* %vcount, align 4, !dbg !4626
  %22 = load i32, i32* %vcount, align 4, !dbg !4627
  %cmp48 = icmp slt i32 %22, 0, !dbg !4629
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !4630

if.then50:                                        ; preds = %if.end44
  %23 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4631
  %arraydecay51 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4631
  %24 = load i32, i32* %vcount, align 4, !dbg !4631
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %23, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0), i8* %arraydecay51, i32 %24) #8, !dbg !4631
  %25 = load i32, i32* %vcount, align 4, !dbg !4633
  store i32 %25, i32* %retval, align 4, !dbg !4634
  br label %return, !dbg !4634

if.end52:                                         ; preds = %if.end44
  %26 = load i32, i32* %vcount, align 4, !dbg !4635
  %27 = load i32, i32* %supplies, align 4, !dbg !4637
  %cmp53 = icmp ne i32 %26, %27, !dbg !4638
  br i1 %cmp53, label %land.lhs.true, label %if.end59, !dbg !4639

land.lhs.true:                                    ; preds = %if.end52
  %28 = load i32, i32* %vcount, align 4, !dbg !4640
  %29 = load i32, i32* %supplies, align 4, !dbg !4641
  %mul = mul i32 %29, 3, !dbg !4642
  %cmp55 = icmp ne i32 %28, %mul, !dbg !4643
  br i1 %cmp55, label %if.then57, label %if.end59, !dbg !4644

if.then57:                                        ; preds = %land.lhs.true
  %30 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4645
  %arraydecay58 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4645
  %31 = load i32, i32* %vcount, align 4, !dbg !4645
  %32 = load i32, i32* %supplies, align 4, !dbg !4645
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %30, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0), i8* %arraydecay58, i32 %31, i32 %32) #8, !dbg !4645
  store i32 -22, i32* %retval, align 4, !dbg !4647
  br label %return, !dbg !4647

if.end59:                                         ; preds = %land.lhs.true, %if.end52
  %33 = load i32, i32* %vcount, align 4, !dbg !4648
  %conv60 = sext i32 %33 to i64, !dbg !4648
  %call61 = call i8* @kmalloc_array(i64 %conv60, i64 4, i32 3264) #7, !dbg !4649
  %34 = bitcast i8* %call61 to i32*, !dbg !4649
  store i32* %34, i32** %microvolt, align 8, !dbg !4650
  %35 = load i32*, i32** %microvolt, align 8, !dbg !4651
  %tobool62 = icmp ne i32* %35, null, !dbg !4651
  br i1 %tobool62, label %if.end64, label %if.then63, !dbg !4653

if.then63:                                        ; preds = %if.end59
  store i32 -12, i32* %retval, align 4, !dbg !4654
  br label %return, !dbg !4654

if.end64:                                         ; preds = %if.end59
  %36 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4655
  %np65 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %36, i32 0, i32 14, !dbg !4656
  %37 = load %struct.device_node*, %struct.device_node** %np65, align 8, !dbg !4656
  %arraydecay66 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4657
  %38 = load i32*, i32** %microvolt, align 8, !dbg !4658
  %39 = load i32, i32* %vcount, align 4, !dbg !4659
  %conv67 = sext i32 %39 to i64, !dbg !4659
  %call68 = call i32 @of_property_read_u32_array(%struct.device_node* %37, i8* %arraydecay66, i32* %38, i64 %conv67) #7, !dbg !4660
  store i32 %call68, i32* %ret, align 4, !dbg !4661
  %40 = load i32, i32* %ret, align 4, !dbg !4662
  %tobool69 = icmp ne i32 %40, 0, !dbg !4662
  br i1 %tobool69, label %if.then70, label %if.end72, !dbg !4664

if.then70:                                        ; preds = %if.end64
  %41 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4665
  %arraydecay71 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4665
  %42 = load i32, i32* %ret, align 4, !dbg !4665
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %41, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0), i8* %arraydecay71, i32 %42) #8, !dbg !4665
  store i32 -22, i32* %ret, align 4, !dbg !4667
  br label %free_microvolt, !dbg !4668

if.end72:                                         ; preds = %if.end64
  store %struct.property* null, %struct.property** %prop, align 8, !dbg !4669
  %43 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4670
  %prop_name73 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %43, i32 0, i32 18, !dbg !4672
  %44 = load i8*, i8** %prop_name73, align 8, !dbg !4672
  %tobool74 = icmp ne i8* %44, null, !dbg !4670
  br i1 %tobool74, label %if.then75, label %if.end82, !dbg !4673

if.then75:                                        ; preds = %if.end72
  %arraydecay76 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4674
  %45 = load %struct.opp_table*, %struct.opp_table** %opp_table.addr, align 8, !dbg !4676
  %prop_name77 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %45, i32 0, i32 18, !dbg !4677
  %46 = load i8*, i8** %prop_name77, align 8, !dbg !4677
  %call78 = call i32 (i8*, i64, i8*, ...) @snprintf(i8* %arraydecay76, i64 255, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.43, i64 0, i64 0), i8* %46) #7, !dbg !4678
  %47 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4679
  %np79 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %47, i32 0, i32 14, !dbg !4680
  %48 = load %struct.device_node*, %struct.device_node** %np79, align 8, !dbg !4680
  %arraydecay80 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4681
  %call81 = call %struct.property* @of_find_property(%struct.device_node* %48, i8* %arraydecay80, i32* null) #7, !dbg !4682
  store %struct.property* %call81, %struct.property** %prop, align 8, !dbg !4683
  br label %if.end82, !dbg !4684

if.end82:                                         ; preds = %if.then75, %if.end72
  %49 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4685
  %tobool83 = icmp ne %struct.property* %49, null, !dbg !4685
  br i1 %tobool83, label %if.end90, label %if.then84, !dbg !4687

if.then84:                                        ; preds = %if.end82
  %arraydecay85 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4688
  %call86 = call i32 (i8*, i8*, ...) @sprintf(i8* %arraydecay85, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.44, i64 0, i64 0)) #7, !dbg !4690
  %50 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4691
  %np87 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %50, i32 0, i32 14, !dbg !4692
  %51 = load %struct.device_node*, %struct.device_node** %np87, align 8, !dbg !4692
  %arraydecay88 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4693
  %call89 = call %struct.property* @of_find_property(%struct.device_node* %51, i8* %arraydecay88, i32* null) #7, !dbg !4694
  store %struct.property* %call89, %struct.property** %prop, align 8, !dbg !4695
  br label %if.end90, !dbg !4696

if.end90:                                         ; preds = %if.then84, %if.end82
  %52 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4697
  %tobool91 = icmp ne %struct.property* %52, null, !dbg !4697
  br i1 %tobool91, label %if.then92, label %if.end119, !dbg !4699

if.then92:                                        ; preds = %if.end90
  %53 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4700
  %np93 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %53, i32 0, i32 14, !dbg !4702
  %54 = load %struct.device_node*, %struct.device_node** %np93, align 8, !dbg !4702
  %arraydecay94 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4703
  %call95 = call i32 @of_property_count_u32_elems(%struct.device_node* %54, i8* %arraydecay94) #7, !dbg !4704
  store i32 %call95, i32* %icount, align 4, !dbg !4705
  %55 = load i32, i32* %icount, align 4, !dbg !4706
  %cmp96 = icmp slt i32 %55, 0, !dbg !4708
  br i1 %cmp96, label %if.then98, label %if.end100, !dbg !4709

if.then98:                                        ; preds = %if.then92
  %56 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4710
  %arraydecay99 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4710
  %57 = load i32, i32* %icount, align 4, !dbg !4710
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %56, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.40, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0), i8* %arraydecay99, i32 %57) #8, !dbg !4710
  %58 = load i32, i32* %icount, align 4, !dbg !4712
  store i32 %58, i32* %ret, align 4, !dbg !4713
  br label %free_microvolt, !dbg !4714

if.end100:                                        ; preds = %if.then92
  %59 = load i32, i32* %icount, align 4, !dbg !4715
  %60 = load i32, i32* %supplies, align 4, !dbg !4717
  %cmp101 = icmp ne i32 %59, %60, !dbg !4718
  br i1 %cmp101, label %if.then103, label %if.end105, !dbg !4719

if.then103:                                       ; preds = %if.end100
  %61 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4720
  %arraydecay104 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4720
  %62 = load i32, i32* %icount, align 4, !dbg !4720
  %63 = load i32, i32* %supplies, align 4, !dbg !4720
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %61, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.41, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0), i8* %arraydecay104, i32 %62, i32 %63) #8, !dbg !4720
  store i32 -22, i32* %ret, align 4, !dbg !4722
  br label %free_microvolt, !dbg !4723

if.end105:                                        ; preds = %if.end100
  %64 = load i32, i32* %icount, align 4, !dbg !4724
  %conv106 = sext i32 %64 to i64, !dbg !4724
  %call107 = call i8* @kmalloc_array(i64 %conv106, i64 4, i32 3264) #7, !dbg !4725
  %65 = bitcast i8* %call107 to i32*, !dbg !4725
  store i32* %65, i32** %microamp, align 8, !dbg !4726
  %66 = load i32*, i32** %microamp, align 8, !dbg !4727
  %tobool108 = icmp ne i32* %66, null, !dbg !4727
  br i1 %tobool108, label %if.end110, label %if.then109, !dbg !4729

if.then109:                                       ; preds = %if.end105
  store i32 -22, i32* %ret, align 4, !dbg !4730
  br label %free_microvolt, !dbg !4732

if.end110:                                        ; preds = %if.end105
  %67 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4733
  %np111 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %67, i32 0, i32 14, !dbg !4734
  %68 = load %struct.device_node*, %struct.device_node** %np111, align 8, !dbg !4734
  %arraydecay112 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4735
  %69 = load i32*, i32** %microamp, align 8, !dbg !4736
  %70 = load i32, i32* %icount, align 4, !dbg !4737
  %conv113 = sext i32 %70 to i64, !dbg !4737
  %call114 = call i32 @of_property_read_u32_array(%struct.device_node* %68, i8* %arraydecay112, i32* %69, i64 %conv113) #7, !dbg !4738
  store i32 %call114, i32* %ret, align 4, !dbg !4739
  %71 = load i32, i32* %ret, align 4, !dbg !4740
  %tobool115 = icmp ne i32 %71, 0, !dbg !4740
  br i1 %tobool115, label %if.then116, label %if.end118, !dbg !4742

if.then116:                                       ; preds = %if.end110
  %72 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !4743
  %arraydecay117 = getelementptr inbounds [255 x i8], [255 x i8]* %name, i64 0, i64 0, !dbg !4743
  %73 = load i32, i32* %ret, align 4, !dbg !4743
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %72, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.42, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.opp_parse_supplies, i64 0, i64 0), i8* %arraydecay117, i32 %73) #8, !dbg !4743
  store i32 -22, i32* %ret, align 4, !dbg !4745
  br label %free_microamp, !dbg !4746

if.end118:                                        ; preds = %if.end110
  br label %if.end119, !dbg !4747

if.end119:                                        ; preds = %if.end118, %if.end90
  store i32 0, i32* %i, align 4, !dbg !4748
  store i32 0, i32* %j, align 4, !dbg !4750
  br label %for.cond, !dbg !4751

for.cond:                                         ; preds = %for.inc, %if.end119
  %74 = load i32, i32* %i, align 4, !dbg !4752
  %75 = load i32, i32* %supplies, align 4, !dbg !4754
  %cmp120 = icmp slt i32 %74, %75, !dbg !4755
  br i1 %cmp120, label %for.body, label %for.end, !dbg !4756

for.body:                                         ; preds = %for.cond
  %76 = load i32*, i32** %microvolt, align 8, !dbg !4757
  %77 = load i32, i32* %j, align 4, !dbg !4759
  %inc = add i32 %77, 1, !dbg !4759
  store i32 %inc, i32* %j, align 4, !dbg !4759
  %idxprom = sext i32 %77 to i64, !dbg !4757
  %arrayidx = getelementptr i32, i32* %76, i64 %idxprom, !dbg !4757
  %78 = load i32, i32* %arrayidx, align 4, !dbg !4757
  %conv122 = zext i32 %78 to i64, !dbg !4757
  %79 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4760
  %supplies123 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %79, i32 0, i32 9, !dbg !4761
  %80 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies123, align 8, !dbg !4761
  %81 = load i32, i32* %i, align 4, !dbg !4762
  %idxprom124 = sext i32 %81 to i64, !dbg !4760
  %arrayidx125 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %80, i64 %idxprom124, !dbg !4760
  %u_volt = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx125, i32 0, i32 0, !dbg !4763
  store i64 %conv122, i64* %u_volt, align 8, !dbg !4764
  %82 = load i32, i32* %vcount, align 4, !dbg !4765
  %83 = load i32, i32* %supplies, align 4, !dbg !4767
  %cmp126 = icmp eq i32 %82, %83, !dbg !4768
  br i1 %cmp126, label %if.then128, label %if.else143, !dbg !4769

if.then128:                                       ; preds = %for.body
  %84 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4770
  %supplies129 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %84, i32 0, i32 9, !dbg !4772
  %85 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies129, align 8, !dbg !4772
  %86 = load i32, i32* %i, align 4, !dbg !4773
  %idxprom130 = sext i32 %86 to i64, !dbg !4770
  %arrayidx131 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %85, i64 %idxprom130, !dbg !4770
  %u_volt132 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx131, i32 0, i32 0, !dbg !4774
  %87 = load i64, i64* %u_volt132, align 8, !dbg !4774
  %88 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4775
  %supplies133 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %88, i32 0, i32 9, !dbg !4776
  %89 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies133, align 8, !dbg !4776
  %90 = load i32, i32* %i, align 4, !dbg !4777
  %idxprom134 = sext i32 %90 to i64, !dbg !4775
  %arrayidx135 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %89, i64 %idxprom134, !dbg !4775
  %u_volt_min = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx135, i32 0, i32 1, !dbg !4778
  store i64 %87, i64* %u_volt_min, align 8, !dbg !4779
  %91 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4780
  %supplies136 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %91, i32 0, i32 9, !dbg !4781
  %92 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies136, align 8, !dbg !4781
  %93 = load i32, i32* %i, align 4, !dbg !4782
  %idxprom137 = sext i32 %93 to i64, !dbg !4780
  %arrayidx138 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %92, i64 %idxprom137, !dbg !4780
  %u_volt139 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx138, i32 0, i32 0, !dbg !4783
  %94 = load i64, i64* %u_volt139, align 8, !dbg !4783
  %95 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4784
  %supplies140 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %95, i32 0, i32 9, !dbg !4785
  %96 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies140, align 8, !dbg !4785
  %97 = load i32, i32* %i, align 4, !dbg !4786
  %idxprom141 = sext i32 %97 to i64, !dbg !4784
  %arrayidx142 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %96, i64 %idxprom141, !dbg !4784
  %u_volt_max = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx142, i32 0, i32 2, !dbg !4787
  store i64 %94, i64* %u_volt_max, align 8, !dbg !4788
  br label %if.end160, !dbg !4789

if.else143:                                       ; preds = %for.body
  %98 = load i32*, i32** %microvolt, align 8, !dbg !4790
  %99 = load i32, i32* %j, align 4, !dbg !4792
  %inc144 = add i32 %99, 1, !dbg !4792
  store i32 %inc144, i32* %j, align 4, !dbg !4792
  %idxprom145 = sext i32 %99 to i64, !dbg !4790
  %arrayidx146 = getelementptr i32, i32* %98, i64 %idxprom145, !dbg !4790
  %100 = load i32, i32* %arrayidx146, align 4, !dbg !4790
  %conv147 = zext i32 %100 to i64, !dbg !4790
  %101 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4793
  %supplies148 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %101, i32 0, i32 9, !dbg !4794
  %102 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies148, align 8, !dbg !4794
  %103 = load i32, i32* %i, align 4, !dbg !4795
  %idxprom149 = sext i32 %103 to i64, !dbg !4793
  %arrayidx150 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %102, i64 %idxprom149, !dbg !4793
  %u_volt_min151 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx150, i32 0, i32 1, !dbg !4796
  store i64 %conv147, i64* %u_volt_min151, align 8, !dbg !4797
  %104 = load i32*, i32** %microvolt, align 8, !dbg !4798
  %105 = load i32, i32* %j, align 4, !dbg !4799
  %inc152 = add i32 %105, 1, !dbg !4799
  store i32 %inc152, i32* %j, align 4, !dbg !4799
  %idxprom153 = sext i32 %105 to i64, !dbg !4798
  %arrayidx154 = getelementptr i32, i32* %104, i64 %idxprom153, !dbg !4798
  %106 = load i32, i32* %arrayidx154, align 4, !dbg !4798
  %conv155 = zext i32 %106 to i64, !dbg !4798
  %107 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4800
  %supplies156 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %107, i32 0, i32 9, !dbg !4801
  %108 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies156, align 8, !dbg !4801
  %109 = load i32, i32* %i, align 4, !dbg !4802
  %idxprom157 = sext i32 %109 to i64, !dbg !4800
  %arrayidx158 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %108, i64 %idxprom157, !dbg !4800
  %u_volt_max159 = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx158, i32 0, i32 2, !dbg !4803
  store i64 %conv155, i64* %u_volt_max159, align 8, !dbg !4804
  br label %if.end160

if.end160:                                        ; preds = %if.else143, %if.then128
  %110 = load i32*, i32** %microamp, align 8, !dbg !4805
  %tobool161 = icmp ne i32* %110, null, !dbg !4805
  br i1 %tobool161, label %if.then162, label %if.end169, !dbg !4807

if.then162:                                       ; preds = %if.end160
  %111 = load i32*, i32** %microamp, align 8, !dbg !4808
  %112 = load i32, i32* %i, align 4, !dbg !4809
  %idxprom163 = sext i32 %112 to i64, !dbg !4808
  %arrayidx164 = getelementptr i32, i32* %111, i64 %idxprom163, !dbg !4808
  %113 = load i32, i32* %arrayidx164, align 4, !dbg !4808
  %conv165 = zext i32 %113 to i64, !dbg !4808
  %114 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %opp.addr, align 8, !dbg !4810
  %supplies166 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %114, i32 0, i32 9, !dbg !4811
  %115 = load %struct.dev_pm_opp_supply*, %struct.dev_pm_opp_supply** %supplies166, align 8, !dbg !4811
  %116 = load i32, i32* %i, align 4, !dbg !4812
  %idxprom167 = sext i32 %116 to i64, !dbg !4810
  %arrayidx168 = getelementptr %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %115, i64 %idxprom167, !dbg !4810
  %u_amp = getelementptr inbounds %struct.dev_pm_opp_supply, %struct.dev_pm_opp_supply* %arrayidx168, i32 0, i32 3, !dbg !4813
  store i64 %conv165, i64* %u_amp, align 8, !dbg !4814
  br label %if.end169, !dbg !4810

if.end169:                                        ; preds = %if.then162, %if.end160
  br label %for.inc, !dbg !4815

for.inc:                                          ; preds = %if.end169
  %117 = load i32, i32* %i, align 4, !dbg !4816
  %inc170 = add i32 %117, 1, !dbg !4816
  store i32 %inc170, i32* %i, align 4, !dbg !4816
  br label %for.cond, !dbg !4817, !llvm.loop !4818

for.end:                                          ; preds = %for.cond
  br label %free_microamp, !dbg !4819

free_microamp:                                    ; preds = %for.end, %if.then116
  call void @llvm.dbg.label(metadata !4820), !dbg !4821
  %118 = load i32*, i32** %microamp, align 8, !dbg !4822
  %119 = bitcast i32* %118 to i8*, !dbg !4822
  call void @kfree(i8* %119) #7, !dbg !4823
  br label %free_microvolt, !dbg !4823

free_microvolt:                                   ; preds = %free_microamp, %if.then109, %if.then103, %if.then98, %if.then70
  call void @llvm.dbg.label(metadata !4824), !dbg !4825
  %120 = load i32*, i32** %microvolt, align 8, !dbg !4826
  %121 = bitcast i32* %120 to i8*, !dbg !4826
  call void @kfree(i8* %121) #7, !dbg !4827
  %122 = load i32, i32* %ret, align 4, !dbg !4828
  store i32 %122, i32* %retval, align 4, !dbg !4829
  br label %return, !dbg !4829

return:                                           ; preds = %free_microvolt, %if.then63, %if.then57, %if.then50, %if.then42, %if.end20, %if.then19, %if.then15
  %123 = load i32, i32* %retval, align 4, !dbg !4830
  ret i32 %123, !dbg !4830
}

; Function Attrs: noredzone
declare dso_local i32 @pm_genpd_opp_to_performance_state(%struct.device*, %struct.dev_pm_opp*) #2

; Function Attrs: noredzone
declare dso_local i32 @_opp_add(%struct.device*, %struct.dev_pm_opp*, %struct.opp_table*, i1 zeroext) #2

; Function Attrs: noredzone
declare dso_local i32 @blocking_notifier_call_chain(%struct.blocking_notifier_head*, i64, i8*) #2

; Function Attrs: noredzone
declare dso_local void @_opp_free(%struct.dev_pm_opp*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_u64(%struct.device_node*, i8*, i64*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @_read_bw(%struct.dev_pm_opp* %new_opp, %struct.opp_table* %table, %struct.device_node* %np, i1 zeroext %peak) #0 !dbg !4831 {
entry:
  %retval = alloca i32, align 4
  %new_opp.addr = alloca %struct.dev_pm_opp*, align 8
  %table.addr = alloca %struct.opp_table*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %peak.addr = alloca i8, align 1
  %name = alloca i8*, align 8
  %prop = alloca %struct.property*, align 8
  %i = alloca i32, align 4
  %count = alloca i32, align 4
  %ret = alloca i32, align 4
  %bw = alloca i32*, align 8
  store %struct.dev_pm_opp* %new_opp, %struct.dev_pm_opp** %new_opp.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dev_pm_opp** %new_opp.addr, metadata !4834, metadata !DIExpression()), !dbg !4835
  store %struct.opp_table* %table, %struct.opp_table** %table.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.opp_table** %table.addr, metadata !4836, metadata !DIExpression()), !dbg !4837
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4838, metadata !DIExpression()), !dbg !4839
  %frombool = zext i1 %peak to i8
  store i8 %frombool, i8* %peak.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %peak.addr, metadata !4840, metadata !DIExpression()), !dbg !4841
  call void @llvm.dbg.declare(metadata i8** %name, metadata !4842, metadata !DIExpression()), !dbg !4843
  %0 = load i8, i8* %peak.addr, align 1, !dbg !4844
  %tobool = trunc i8 %0 to i1, !dbg !4844
  %1 = zext i1 %tobool to i64, !dbg !4844
  %cond = select i1 %tobool, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.20, i64 0, i64 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.29, i64 0, i64 0), !dbg !4844
  store i8* %cond, i8** %name, align 8, !dbg !4843
  call void @llvm.dbg.declare(metadata %struct.property** %prop, metadata !4845, metadata !DIExpression()), !dbg !4846
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4847, metadata !DIExpression()), !dbg !4848
  call void @llvm.dbg.declare(metadata i32* %count, metadata !4849, metadata !DIExpression()), !dbg !4850
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !4851, metadata !DIExpression()), !dbg !4852
  call void @llvm.dbg.declare(metadata i32** %bw, metadata !4853, metadata !DIExpression()), !dbg !4854
  %2 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4855
  %3 = load i8*, i8** %name, align 8, !dbg !4856
  %call = call %struct.property* @of_find_property(%struct.device_node* %2, i8* %3, i32* null) #7, !dbg !4857
  store %struct.property* %call, %struct.property** %prop, align 8, !dbg !4858
  %4 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4859
  %tobool1 = icmp ne %struct.property* %4, null, !dbg !4859
  br i1 %tobool1, label %if.end, label %if.then, !dbg !4861

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !4862
  br label %return, !dbg !4862

if.end:                                           ; preds = %entry
  %5 = load %struct.property*, %struct.property** %prop, align 8, !dbg !4863
  %length = getelementptr inbounds %struct.property, %struct.property* %5, i32 0, i32 1, !dbg !4864
  %6 = load i32, i32* %length, align 8, !dbg !4864
  %conv = sext i32 %6 to i64, !dbg !4863
  %div = udiv i64 %conv, 4, !dbg !4865
  %conv2 = trunc i64 %div to i32, !dbg !4863
  store i32 %conv2, i32* %count, align 4, !dbg !4866
  %7 = load %struct.opp_table*, %struct.opp_table** %table.addr, align 8, !dbg !4867
  %path_count = getelementptr inbounds %struct.opp_table, %struct.opp_table* %7, i32 0, i32 23, !dbg !4869
  %8 = load i32, i32* %path_count, align 8, !dbg !4869
  %9 = load i32, i32* %count, align 4, !dbg !4870
  %cmp = icmp ne i32 %8, %9, !dbg !4871
  br i1 %cmp, label %if.then4, label %if.end7, !dbg !4872

if.then4:                                         ; preds = %if.end
  %10 = load i8*, i8** %name, align 8, !dbg !4873
  %11 = load i32, i32* %count, align 4, !dbg !4873
  %12 = load %struct.opp_table*, %struct.opp_table** %table.addr, align 8, !dbg !4873
  %path_count5 = getelementptr inbounds %struct.opp_table, %struct.opp_table* %12, i32 0, i32 23, !dbg !4873
  %13 = load i32, i32* %path_count5, align 8, !dbg !4873
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.30, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._read_bw, i64 0, i64 0), i8* %10, i32 %11, i32 %13) #8, !dbg !4873
  store i32 -22, i32* %retval, align 4, !dbg !4875
  br label %return, !dbg !4875

if.end7:                                          ; preds = %if.end
  %14 = load i32, i32* %count, align 4, !dbg !4876
  %conv8 = sext i32 %14 to i64, !dbg !4876
  %call9 = call i8* @kmalloc_array(i64 %conv8, i64 4, i32 3264) #7, !dbg !4877
  %15 = bitcast i8* %call9 to i32*, !dbg !4877
  store i32* %15, i32** %bw, align 8, !dbg !4878
  %16 = load i32*, i32** %bw, align 8, !dbg !4879
  %tobool10 = icmp ne i32* %16, null, !dbg !4879
  br i1 %tobool10, label %if.end12, label %if.then11, !dbg !4881

if.then11:                                        ; preds = %if.end7
  store i32 -12, i32* %retval, align 4, !dbg !4882
  br label %return, !dbg !4882

if.end12:                                         ; preds = %if.end7
  %17 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4883
  %18 = load i8*, i8** %name, align 8, !dbg !4884
  %19 = load i32*, i32** %bw, align 8, !dbg !4885
  %20 = load i32, i32* %count, align 4, !dbg !4886
  %conv13 = sext i32 %20 to i64, !dbg !4886
  %call14 = call i32 @of_property_read_u32_array(%struct.device_node* %17, i8* %18, i32* %19, i64 %conv13) #7, !dbg !4887
  store i32 %call14, i32* %ret, align 4, !dbg !4888
  %21 = load i32, i32* %ret, align 4, !dbg !4889
  %tobool15 = icmp ne i32 %21, 0, !dbg !4889
  br i1 %tobool15, label %if.then16, label %if.end18, !dbg !4891

if.then16:                                        ; preds = %if.end12
  %22 = load i8*, i8** %name, align 8, !dbg !4892
  %23 = load i32, i32* %ret, align 4, !dbg !4892
  %call17 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.31, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @__func__._read_bw, i64 0, i64 0), i8* %22, i32 %23) #8, !dbg !4892
  br label %out, !dbg !4894

if.end18:                                         ; preds = %if.end12
  store i32 0, i32* %i, align 4, !dbg !4895
  br label %for.cond, !dbg !4897

for.cond:                                         ; preds = %for.inc, %if.end18
  %24 = load i32, i32* %i, align 4, !dbg !4898
  %25 = load i32, i32* %count, align 4, !dbg !4900
  %cmp19 = icmp slt i32 %24, %25, !dbg !4901
  br i1 %cmp19, label %for.body, label %for.end, !dbg !4902

for.body:                                         ; preds = %for.cond
  %26 = load i8, i8* %peak.addr, align 1, !dbg !4903
  %tobool21 = trunc i8 %26 to i1, !dbg !4903
  br i1 %tobool21, label %if.then22, label %if.else, !dbg !4906

if.then22:                                        ; preds = %for.body
  %27 = load i32*, i32** %bw, align 8, !dbg !4907
  %28 = load i32, i32* %i, align 4, !dbg !4907
  %idxprom = sext i32 %28 to i64, !dbg !4907
  %arrayidx = getelementptr i32, i32* %27, i64 %idxprom, !dbg !4907
  %29 = load i32, i32* %arrayidx, align 4, !dbg !4907
  %30 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp.addr, align 8, !dbg !4908
  %bandwidth = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %30, i32 0, i32 10, !dbg !4909
  %31 = load %struct.dev_pm_opp_icc_bw*, %struct.dev_pm_opp_icc_bw** %bandwidth, align 8, !dbg !4909
  %32 = load i32, i32* %i, align 4, !dbg !4910
  %idxprom23 = sext i32 %32 to i64, !dbg !4908
  %arrayidx24 = getelementptr %struct.dev_pm_opp_icc_bw, %struct.dev_pm_opp_icc_bw* %31, i64 %idxprom23, !dbg !4908
  %peak25 = getelementptr inbounds %struct.dev_pm_opp_icc_bw, %struct.dev_pm_opp_icc_bw* %arrayidx24, i32 0, i32 1, !dbg !4911
  store i32 %29, i32* %peak25, align 4, !dbg !4912
  br label %if.end31, !dbg !4908

if.else:                                          ; preds = %for.body
  %33 = load i32*, i32** %bw, align 8, !dbg !4913
  %34 = load i32, i32* %i, align 4, !dbg !4913
  %idxprom26 = sext i32 %34 to i64, !dbg !4913
  %arrayidx27 = getelementptr i32, i32* %33, i64 %idxprom26, !dbg !4913
  %35 = load i32, i32* %arrayidx27, align 4, !dbg !4913
  %36 = load %struct.dev_pm_opp*, %struct.dev_pm_opp** %new_opp.addr, align 8, !dbg !4914
  %bandwidth28 = getelementptr inbounds %struct.dev_pm_opp, %struct.dev_pm_opp* %36, i32 0, i32 10, !dbg !4915
  %37 = load %struct.dev_pm_opp_icc_bw*, %struct.dev_pm_opp_icc_bw** %bandwidth28, align 8, !dbg !4915
  %38 = load i32, i32* %i, align 4, !dbg !4916
  %idxprom29 = sext i32 %38 to i64, !dbg !4914
  %arrayidx30 = getelementptr %struct.dev_pm_opp_icc_bw, %struct.dev_pm_opp_icc_bw* %37, i64 %idxprom29, !dbg !4914
  %avg = getelementptr inbounds %struct.dev_pm_opp_icc_bw, %struct.dev_pm_opp_icc_bw* %arrayidx30, i32 0, i32 0, !dbg !4917
  store i32 %35, i32* %avg, align 4, !dbg !4918
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then22
  br label %for.inc, !dbg !4919

for.inc:                                          ; preds = %if.end31
  %39 = load i32, i32* %i, align 4, !dbg !4920
  %inc = add i32 %39, 1, !dbg !4920
  store i32 %inc, i32* %i, align 4, !dbg !4920
  br label %for.cond, !dbg !4921, !llvm.loop !4922

for.end:                                          ; preds = %for.cond
  br label %out, !dbg !4923

out:                                              ; preds = %for.end, %if.then16
  call void @llvm.dbg.label(metadata !4924), !dbg !4925
  %40 = load i32*, i32** %bw, align 8, !dbg !4926
  %41 = bitcast i32* %40 to i8*, !dbg !4926
  call void @kfree(i8* %41) #7, !dbg !4927
  %42 = load i32, i32* %ret, align 4, !dbg !4928
  store i32 %42, i32* %retval, align 4, !dbg !4929
  br label %return, !dbg !4929

return:                                           ; preds = %out, %if.then11, %if.then4, %if.then
  %43 = load i32, i32* %retval, align 4, !dbg !4930
  ret i32 %43, !dbg !4930
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_count_u32_elems(%struct.device_node* %np, i8* %propname) #0 !dbg !4931 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !4934, metadata !DIExpression()), !dbg !4935
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !4936, metadata !DIExpression()), !dbg !4937
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !4938
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !4939
  %call = call i32 @of_property_count_elems_of_size(%struct.device_node* %0, i8* %1, i32 4) #7, !dbg !4940
  ret i32 %call, !dbg !4941
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_u32_index(%struct.device_node*, i8*, i32, i32*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #3

; Function Attrs: noredzone
declare dso_local i32 @of_property_count_elems_of_size(%struct.device_node*, i8*, i32) #2

; Function Attrs: noredzone
declare dso_local i32 @snprintf(i8*, i64, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @_opp_add_v1(%struct.opp_table*, %struct.device*, i64, i64, i1 zeroext) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #4

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__fswab32(i32 %val) #6 !dbg !4942 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4945, metadata !DIExpression()), !dbg !4946
  %0 = load i32, i32* %val.addr, align 4, !dbg !4947
  %call = call i32 @__arch_swab32(i32 %0) #10, !dbg !4948
  ret i32 %call, !dbg !4949
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__arch_swab32(i32 %val) #6 !dbg !4950 {
entry:
  %val.addr = alloca i32, align 4
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !4952, metadata !DIExpression()), !dbg !4953
  %0 = load i32, i32* %val.addr, align 4, !dbg !4954
  %1 = call i32 asm "bswapl $0", "=r,0,~{dirflag},~{fpsr},~{flags}"(i32 %0) #13, !dbg !4955, !srcloc !4956
  store i32 %1, i32* %val.addr, align 4, !dbg !4955
  %2 = load i32, i32* %val.addr, align 4, !dbg !4957
  ret i32 %2, !dbg !4958
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bitmap_empty(i64* %src, i32 %nbits) #0 !dbg !4959 {
entry:
  %retval = alloca i32, align 4
  %src.addr = alloca i64*, align 8
  %nbits.addr = alloca i32, align 4
  store i64* %src, i64** %src.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %src.addr, metadata !4965, metadata !DIExpression()), !dbg !4966
  store i32 %nbits, i32* %nbits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nbits.addr, metadata !4967, metadata !DIExpression()), !dbg !4968
  %0 = load i32, i32* %nbits.addr, align 4, !dbg !4969
  %1 = call i1 @llvm.is.constant.i32(i32 %0), !dbg !4969
  br i1 %1, label %land.lhs.true, label %if.end, !dbg !4969

land.lhs.true:                                    ; preds = %entry
  %2 = load i32, i32* %nbits.addr, align 4, !dbg !4969
  %cmp = icmp ule i32 %2, 64, !dbg !4969
  br i1 %cmp, label %land.lhs.true1, label %if.end, !dbg !4969

land.lhs.true1:                                   ; preds = %land.lhs.true
  %3 = load i32, i32* %nbits.addr, align 4, !dbg !4969
  %cmp2 = icmp ugt i32 %3, 0, !dbg !4969
  br i1 %cmp2, label %if.then, label %if.end, !dbg !4971

if.then:                                          ; preds = %land.lhs.true1
  %4 = load i64*, i64** %src.addr, align 8, !dbg !4972
  %5 = load i64, i64* %4, align 8, !dbg !4973
  %6 = load i32, i32* %nbits.addr, align 4, !dbg !4974
  %sub = sub i32 0, %6, !dbg !4974
  %and = and i32 %sub, 63, !dbg !4974
  %sh_prom = zext i32 %and to i64, !dbg !4974
  %shr = lshr i64 -1, %sh_prom, !dbg !4974
  %and3 = and i64 %5, %shr, !dbg !4975
  %tobool = icmp ne i64 %and3, 0, !dbg !4976
  %lnot = xor i1 %tobool, true, !dbg !4976
  %lnot.ext = zext i1 %lnot to i32, !dbg !4976
  store i32 %lnot.ext, i32* %retval, align 4, !dbg !4977
  br label %return, !dbg !4977

if.end:                                           ; preds = %land.lhs.true1, %land.lhs.true, %entry
  %7 = load i64*, i64** %src.addr, align 8, !dbg !4978
  %8 = load i32, i32* %nbits.addr, align 4, !dbg !4979
  %conv = zext i32 %8 to i64, !dbg !4979
  %call = call i64 @find_first_bit(i64* %7, i64 %conv) #7, !dbg !4980
  %9 = load i32, i32* %nbits.addr, align 4, !dbg !4981
  %conv4 = zext i32 %9 to i64, !dbg !4981
  %cmp5 = icmp eq i64 %call, %conv4, !dbg !4982
  %conv6 = zext i1 %cmp5 to i32, !dbg !4982
  store i32 %conv6, i32* %retval, align 4, !dbg !4983
  br label %return, !dbg !4983

return:                                           ; preds = %if.end, %if.then
  %10 = load i32, i32* %retval, align 4, !dbg !4984
  ret i32 %10, !dbg !4984
}

; Function Attrs: noredzone
declare dso_local i64 @find_first_bit(i64*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #0 !dbg !4985 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !4991, metadata !DIExpression()), !dbg !4993
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !4995, metadata !DIExpression()), !dbg !4996
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !4997, metadata !DIExpression()), !dbg !5005
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !5007, metadata !DIExpression()), !dbg !5008
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !5009, metadata !DIExpression()), !dbg !5010
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !5011, metadata !DIExpression()), !dbg !5012
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !5013
  %1 = load i64, i64* %nr.addr, align 8, !dbg !5014
  %div = sdiv i64 %1, 64, !dbg !5014
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !5015
  %2 = bitcast i64* %add.ptr to i8*, !dbg !5013
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !5016
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !5017
  %conv.i = trunc i64 %4 to i32, !dbg !5017
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #11, !dbg !5018
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !5019
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !5019
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #11, !dbg !5019
  %7 = load i64, i64* %nr.addr, align 8, !dbg !5020
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !5021
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !5022
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #9, !dbg !5024
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !5025

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !5026
  %12 = bitcast i64* %11 to i8*, !dbg !5026
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !5026
  %shr.i = ashr i64 %13, 3, !dbg !5026
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !5026
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !5028
  %and.i = and i64 %14, 7, !dbg !5028
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !5028
  %shl.i = shl i32 1, %sh_prom.i, !dbg !5028
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #9, !dbg !5029, !srcloc !5030
  br label %arch_set_bit.exit, !dbg !5031

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !5032
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !5034
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #9, !dbg !5035, !srcloc !5036
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !5037
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @cpumask_check(i32 %cpu) #0 !dbg !5038 {
entry:
  %cpu.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5041, metadata !DIExpression()), !dbg !5042
  %0 = load i32, i32* %cpu.addr, align 4, !dbg !5043
  call void @cpu_max_bits_warn(i32 %0, i32 1) #7, !dbg !5044
  %1 = load i32, i32* %cpu.addr, align 4, !dbg !5045
  ret i32 %1, !dbg !5046
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !5047 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !5051, metadata !DIExpression()), !dbg !5052
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !5053, metadata !DIExpression()), !dbg !5054
  ret i1 true, !dbg !5055
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !5056 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !5060, metadata !DIExpression()), !dbg !5061
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !5062, metadata !DIExpression()), !dbg !5063
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !5064, metadata !DIExpression()), !dbg !5065
  ret void, !dbg !5066
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @cpu_max_bits_warn(i32 %cpu, i32 %bits) #0 !dbg !5067 {
entry:
  %cpu.addr = alloca i32, align 4
  %bits.addr = alloca i32, align 4
  store i32 %cpu, i32* %cpu.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cpu.addr, metadata !5070, metadata !DIExpression()), !dbg !5071
  store i32 %bits, i32* %bits.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %bits.addr, metadata !5072, metadata !DIExpression()), !dbg !5073
  ret void, !dbg !5074
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_cpu_node(i32, i32*) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_parent(%struct.device_node*) #2

; Function Attrs: noredzone
declare dso_local void @dev_pm_opp_get(%struct.dev_pm_opp*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { cold noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }
attributes #13 = { nounwind readnone }

!llvm.dbg.cu = !{!0}
!llvm.module.flags = !{!2151, !2152, !2153, !2154}
!llvm.ident = !{!2155}

!0 = distinct !DICompileUnit(language: DW_LANG_C89, file: !1, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !2, retainedTypes: !74, splitDebugInlining: false, nameTableKind: None)
!1 = !DIFile(filename: "drivers/opp/of.c", directory: "/home/lizy2001/genbc/linux")
!2 = !{!3, !9, !15, !21, !27, !34, !42, !48, !54, !59, !66}
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
!48 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "opp_table_access", file: !49, line: 118, baseType: !5, size: 32, elements: !50)
!49 = !DIFile(filename: "drivers/opp/opp.h", directory: "/home/lizy2001/genbc/linux")
!50 = !{!51, !52, !53}
!51 = !DIEnumerator(name: "OPP_TABLE_ACCESS_UNKNOWN", value: 0, isUnsigned: true)
!52 = !DIEnumerator(name: "OPP_TABLE_ACCESS_EXCLUSIVE", value: 1, isUnsigned: true)
!53 = !DIEnumerator(name: "OPP_TABLE_ACCESS_SHARED", value: 2, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 10, baseType: !5, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !60, line: 305, baseType: !5, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dev_pm_opp_event", file: !67, line: 24, baseType: !5, size: 32, elements: !68)
!67 = !DIFile(filename: "./include/linux/pm_opp.h", directory: "/home/lizy2001/genbc/linux")
!68 = !{!69, !70, !71, !72, !73}
!69 = !DIEnumerator(name: "OPP_EVENT_ADD", value: 0, isUnsigned: true)
!70 = !DIEnumerator(name: "OPP_EVENT_REMOVE", value: 1, isUnsigned: true)
!71 = !DIEnumerator(name: "OPP_EVENT_ENABLE", value: 2, isUnsigned: true)
!72 = !DIEnumerator(name: "OPP_EVENT_DISABLE", value: 3, isUnsigned: true)
!73 = !DIEnumerator(name: "OPP_EVENT_ADJUST_VOLTAGE", value: 4, isUnsigned: true)
!74 = !{!75, !76, !1498, !2145, !128, !287, !2069, !2147, !173, !5, !2148, !2150}
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "opp_table", file: !49, line: 168, size: 2304, elements: !78)
!78 = !{!79, !86, !131, !132, !133, !147, !161, !2064, !2065, !2066, !2067, !2068, !2100, !2101, !2103, !2105, !2106, !2108, !2109, !2110, !2113, !2117, !2118, !2123, !2124, !2125, !2126, !2127, !2144}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !77, file: !49, line: 169, baseType: !80, size: 128)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !81, line: 178, size: 128, elements: !82)
!81 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!82 = !{!83, !85}
!83 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !80, file: !81, line: 179, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !80, file: !81, line: 179, baseType: !84, size: 64, offset: 64)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !77, file: !49, line: 171, baseType: !87, size: 320, offset: 128)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "blocking_notifier_head", file: !88, line: 65, size: 320, elements: !89)
!88 = !DIFile(filename: "./include/linux/notifier.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !118}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "rwsem", scope: !87, file: !88, line: 66, baseType: !91, size: 256)
!91 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !92, line: 35, size: 256, elements: !93)
!92 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!93 = !{!94, !106, !107, !117}
!94 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !91, file: !92, line: 36, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !96, line: 13, baseType: !97)
!96 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!97 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !81, line: 175, baseType: !98)
!98 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 173, size: 64, elements: !99)
!99 = !{!100}
!100 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !98, file: !81, line: 174, baseType: !101, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !102, line: 22, baseType: !103)
!102 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!103 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !104, line: 30, baseType: !105)
!104 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!105 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !91, file: !92, line: 42, baseType: !95, size: 64, offset: 64)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !91, file: !92, line: 46, baseType: !108, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !109, line: 29, baseType: !110)
!109 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !109, line: 20, elements: !111)
!111 = !{!112}
!112 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !110, file: !109, line: 21, baseType: !113)
!113 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !114, line: 25, baseType: !115)
!114 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!115 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !114, line: 25, elements: !116)
!116 = !{}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !91, file: !92, line: 47, baseType: !80, size: 128, offset: 128)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !87, file: !88, line: 67, baseType: !119, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "notifier_block", file: !88, line: 54, size: 192, elements: !121)
!121 = !{!122, !129, !130}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_call", scope: !120, file: !88, line: 55, baseType: !123, size: 64)
!123 = !DIDerivedType(tag: DW_TAG_typedef, name: "notifier_fn_t", file: !88, line: 51, baseType: !124)
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = !DISubroutineType(types: !126)
!126 = !{!127, !119, !128, !75}
!127 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!128 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !120, file: !88, line: 56, baseType: !119, size: 64, offset: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "priority", scope: !120, file: !88, line: 57, baseType: !127, size: 32, offset: 128)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "dev_list", scope: !77, file: !49, line: 172, baseType: !80, size: 128, offset: 448)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "opp_list", scope: !77, file: !49, line: 173, baseType: !80, size: 128, offset: 576)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !77, file: !49, line: 174, baseType: !134, size: 32, offset: 704)
!134 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !135, line: 19, size: 32, elements: !136)
!135 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!136 = !{!137}
!137 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !134, file: !135, line: 20, baseType: !138, size: 32)
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !139, line: 113, baseType: !140)
!139 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !139, line: 111, size: 32, elements: !141)
!141 = !{!142}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !140, file: !139, line: 112, baseType: !143, size: 32)
!143 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !81, line: 168, baseType: !144)
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !81, line: 166, size: 32, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !144, file: !81, line: 167, baseType: !127, size: 32)
!147 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !77, file: !49, line: 175, baseType: !148, size: 192, offset: 768)
!148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !149, line: 53, size: 192, elements: !150)
!149 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!150 = !{!151, !152, !160}
!151 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !148, file: !149, line: 54, baseType: !95, size: 64)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !148, file: !149, line: 55, baseType: !153, offset: 64)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !109, line: 83, baseType: !154)
!154 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !109, line: 71, elements: !155)
!155 = !{!156}
!156 = !DIDerivedType(tag: DW_TAG_member, scope: !154, file: !109, line: 72, baseType: !157)
!157 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !154, file: !109, line: 72, elements: !158)
!158 = !{!159}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !157, file: !109, line: 73, baseType: !110)
!160 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !148, file: !149, line: 59, baseType: !80, size: 128, offset: 64)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !77, file: !49, line: 177, baseType: !162, size: 64, offset: 960)
!162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !163, size: 64)
!163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !164, line: 51, size: 1344, elements: !165)
!164 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!165 = !{!166, !170, !174, !175, !2048, !2057, !2058, !2059, !2060, !2061, !2062, !2063}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !163, file: !164, line: 52, baseType: !167, size: 64)
!167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !168, size: 64)
!168 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !169)
!169 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !163, file: !164, line: 53, baseType: !171, size: 32, offset: 64)
!171 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !164, line: 28, baseType: !172)
!172 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !102, line: 21, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !104, line: 27, baseType: !5)
!174 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !163, file: !164, line: 54, baseType: !167, size: 64, offset: 128)
!175 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !163, file: !164, line: 55, baseType: !176, size: 192, offset: 192)
!176 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !177, line: 17, size: 192, elements: !178)
!177 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!178 = !{!179, !181, !2047}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !176, file: !177, line: 18, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !176, file: !177, line: 19, baseType: !182, size: 64, offset: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !177, line: 110, size: 1152, elements: !185)
!185 = !{!186, !190, !194, !202, !1989, !1993, !1997, !2002, !2006, !2007, !2011, !2015, !2019, !2030, !2031, !2032, !2033, !2043}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !184, file: !177, line: 111, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DISubroutineType(types: !189)
!189 = !{!180, !180}
!190 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !184, file: !177, line: 112, baseType: !191, size: 64, offset: 64)
!191 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !192, size: 64)
!192 = !DISubroutineType(types: !193)
!193 = !{null, !180}
!194 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !184, file: !177, line: 113, baseType: !195, size: 64, offset: 128)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DISubroutineType(types: !197)
!197 = !{!198, !200}
!198 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !81, line: 30, baseType: !199)
!199 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !176)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !184, file: !177, line: 114, baseType: !203, size: 64, offset: 192)
!203 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !204, size: 64)
!204 = !DISubroutineType(types: !205)
!205 = !{!206, !200, !208}
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !28, line: 461, size: 5568, elements: !211)
!211 = !{!212, !1622, !1624, !1627, !1628, !1679, !1776, !1777, !1778, !1779, !1780, !1789, !1898, !1911, !1914, !1915, !1919, !1921, !1922, !1923, !1927, !1933, !1934, !1937, !1938, !1939, !1942, !1943, !1944, !1945, !1977, !1978, !1979, !1982, !1985, !1986, !1987, !1988}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !210, file: !28, line: 462, baseType: !213, size: 512)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !214, line: 64, size: 512, elements: !215)
!214 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !217, !218, !220, !265, !1462, !1616, !1617, !1618, !1619, !1620, !1621}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !214, line: 65, baseType: !167, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !213, file: !214, line: 66, baseType: !80, size: 128, offset: 64)
!218 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !214, line: 67, baseType: !219, size: 64, offset: 192)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !213, file: !214, line: 68, baseType: !221, size: 64, offset: 256)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !214, line: 192, size: 704, elements: !223)
!223 = !{!224, !225, !226, !227}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !222, file: !214, line: 193, baseType: !80, size: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !222, file: !214, line: 194, baseType: !153, offset: 128)
!226 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !222, file: !214, line: 195, baseType: !213, size: 512, offset: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !222, file: !214, line: 196, baseType: !228, size: 64, offset: 640)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !214, line: 156, size: 192, elements: !231)
!231 = !{!232, !237, !242}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !230, file: !214, line: 157, baseType: !233, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !234)
!234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !235, size: 64)
!235 = !DISubroutineType(types: !236)
!236 = !{!127, !221, !219}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !214, line: 158, baseType: !238, size: 64, offset: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!167, !221, !219}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !230, file: !214, line: 159, baseType: !243, size: 64, offset: 128)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!127, !221, !219, !247}
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !214, line: 148, size: 20736, elements: !249)
!249 = !{!250, !255, !259, !260, !264}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !248, file: !214, line: 149, baseType: !251, size: 192)
!251 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 192, elements: !253)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !169, size: 64)
!253 = !{!254}
!254 = !DISubrange(count: 3)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !248, file: !214, line: 150, baseType: !256, size: 4096, offset: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !252, size: 4096, elements: !257)
!257 = !{!258}
!258 = !DISubrange(count: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !248, file: !214, line: 151, baseType: !127, size: 32, offset: 4288)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !248, file: !214, line: 152, baseType: !261, size: 16384, offset: 4320)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 16384, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 2048)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !248, file: !214, line: 153, baseType: !127, size: 32, offset: 20704)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !213, file: !214, line: 69, baseType: !266, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !267, size: 64)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !214, line: 138, size: 448, elements: !268)
!268 = !{!269, !273, !302, !304, !1410, !1441, !1445}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !267, file: !214, line: 139, baseType: !270, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = !DISubroutineType(types: !272)
!272 = !{null, !219}
!273 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !267, file: !214, line: 140, baseType: !274, size: 64, offset: 64)
!274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !276)
!276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !277, line: 230, size: 128, elements: !278)
!277 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!278 = !{!279, !295}
!279 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !276, file: !277, line: 231, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !281, size: 64)
!281 = !DISubroutineType(types: !282)
!282 = !{!283, !219, !288, !252}
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !81, line: 60, baseType: !284)
!284 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !285, line: 73, baseType: !286)
!285 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!286 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !285, line: 15, baseType: !287)
!287 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !277, line: 30, size: 128, elements: !290)
!290 = !{!291, !292}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !289, file: !277, line: 31, baseType: !167, size: 64)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !289, file: !277, line: 32, baseType: !293, size: 16, offset: 64)
!293 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !81, line: 19, baseType: !294)
!294 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !276, file: !277, line: 232, baseType: !296, size: 64, offset: 64)
!296 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!297 = !DISubroutineType(types: !298)
!298 = !{!283, !219, !288, !167, !299}
!299 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !81, line: 55, baseType: !300)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !285, line: 72, baseType: !301)
!301 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !285, line: 16, baseType: !128)
!302 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !267, file: !214, line: 141, baseType: !303, size: 64, offset: 128)
!303 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !267, file: !214, line: 142, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !307, size: 64)
!307 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !308)
!308 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !277, line: 84, size: 320, elements: !309)
!309 = !{!310, !311, !315, !1407, !1408}
!310 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !308, file: !277, line: 85, baseType: !167, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !308, file: !277, line: 86, baseType: !312, size: 64, offset: 64)
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = !DISubroutineType(types: !314)
!314 = !{!293, !219, !288, !127}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !308, file: !277, line: 88, baseType: !316, size: 64, offset: 128)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!293, !219, !319, !127}
!319 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !320, size: 64)
!320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !277, line: 168, size: 448, elements: !321)
!321 = !{!322, !323, !324, !325, !334, !335}
!322 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !320, file: !277, line: 169, baseType: !289, size: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !320, file: !277, line: 170, baseType: !299, size: 64, offset: 128)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !320, file: !277, line: 171, baseType: !75, size: 64, offset: 192)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !320, file: !277, line: 172, baseType: !326, size: 64, offset: 256)
!326 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !327, size: 64)
!327 = !DISubroutineType(types: !328)
!328 = !{!283, !329, !219, !319, !252, !332, !299}
!329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!330 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !331, line: 526, flags: DIFlagFwdDecl)
!331 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !81, line: 46, baseType: !333)
!333 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !285, line: 88, baseType: !105)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !320, file: !277, line: 174, baseType: !326, size: 64, offset: 320)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !320, file: !277, line: 176, baseType: !336, size: 64, offset: 384)
!336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !337, size: 64)
!337 = !DISubroutineType(types: !338)
!338 = !{!127, !329, !219, !319, !339}
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !341, line: 305, size: 1472, elements: !342)
!341 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !344, !345, !346, !347, !355, !356, !1381, !1387, !1388, !1393, !1394, !1397, !1401, !1402, !1403, !1404, !1405}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !340, file: !341, line: 308, baseType: !128, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !340, file: !341, line: 309, baseType: !128, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !340, file: !341, line: 313, baseType: !339, size: 64, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !340, file: !341, line: 313, baseType: !339, size: 64, offset: 192)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !340, file: !341, line: 315, baseType: !348, size: 192, align: 64, offset: 256)
!348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !349, line: 24, size: 192, align: 64, elements: !350)
!349 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!350 = !{!351, !352, !354}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !348, file: !349, line: 25, baseType: !128, size: 64)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !348, file: !349, line: 26, baseType: !353, size: 64, offset: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !348, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !348, file: !349, line: 27, baseType: !353, size: 64, offset: 128)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !340, file: !341, line: 323, baseType: !128, size: 64, offset: 448)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !340, file: !341, line: 327, baseType: !357, size: 64, offset: 512)
!357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !358, size: 64)
!358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !341, line: 388, size: 7296, elements: !359)
!359 = !{!360, !1377}
!360 = !DIDerivedType(tag: DW_TAG_member, scope: !358, file: !341, line: 389, baseType: !361, size: 7296)
!361 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !358, file: !341, line: 389, size: 7296, elements: !362)
!362 = !{!363, !364, !368, !372, !376, !377, !378, !379, !380, !388, !389, !390, !391, !392, !393, !394, !395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408, !409, !410, !411, !412, !413, !414, !415, !416, !417, !418, !422, !430, !433, !459, !460, !1347, !1348, !1351, !1355, !1356, !1359, !1360, !1361, !1364, !1376}
!363 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !361, file: !341, line: 390, baseType: !339, size: 64)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !361, file: !341, line: 391, baseType: !365, size: 64, offset: 64)
!365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !349, line: 31, size: 64, elements: !366)
!366 = !{!367}
!367 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !365, file: !349, line: 32, baseType: !353, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !361, file: !341, line: 392, baseType: !369, size: 64, offset: 128)
!369 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !102, line: 23, baseType: !370)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !104, line: 31, baseType: !371)
!371 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !361, file: !341, line: 394, baseType: !373, size: 64, offset: 192)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!128, !329, !128, !128, !128, !128}
!376 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !361, file: !341, line: 398, baseType: !128, size: 64, offset: 256)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !361, file: !341, line: 399, baseType: !128, size: 64, offset: 320)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !361, file: !341, line: 405, baseType: !128, size: 64, offset: 384)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !361, file: !341, line: 406, baseType: !128, size: 64, offset: 448)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !361, file: !341, line: 407, baseType: !381, size: 64, offset: 512)
!381 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !382, size: 64)
!382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !331, line: 286, baseType: !383)
!383 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !331, line: 286, size: 64, elements: !384)
!384 = !{!385}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !383, file: !331, line: 286, baseType: !386, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !387, line: 18, baseType: !128)
!387 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!388 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !361, file: !341, line: 416, baseType: !143, size: 32, offset: 576)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !361, file: !341, line: 428, baseType: !143, size: 32, offset: 608)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !361, file: !341, line: 437, baseType: !143, size: 32, offset: 640)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !361, file: !341, line: 447, baseType: !143, size: 32, offset: 672)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !361, file: !341, line: 450, baseType: !95, size: 64, offset: 704)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !361, file: !341, line: 452, baseType: !127, size: 32, offset: 768)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !361, file: !341, line: 454, baseType: !153, offset: 800)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !361, file: !341, line: 457, baseType: !91, size: 256, offset: 832)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !361, file: !341, line: 459, baseType: !80, size: 128, offset: 1088)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !361, file: !341, line: 466, baseType: !128, size: 64, offset: 1216)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !361, file: !341, line: 467, baseType: !128, size: 64, offset: 1280)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !361, file: !341, line: 469, baseType: !128, size: 64, offset: 1344)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !361, file: !341, line: 470, baseType: !128, size: 64, offset: 1408)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !361, file: !341, line: 471, baseType: !97, size: 64, offset: 1472)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !361, file: !341, line: 472, baseType: !128, size: 64, offset: 1536)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !361, file: !341, line: 473, baseType: !128, size: 64, offset: 1600)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !361, file: !341, line: 474, baseType: !128, size: 64, offset: 1664)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !361, file: !341, line: 475, baseType: !128, size: 64, offset: 1728)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !361, file: !341, line: 477, baseType: !153, offset: 1792)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !361, file: !341, line: 478, baseType: !128, size: 64, offset: 1792)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !361, file: !341, line: 478, baseType: !128, size: 64, offset: 1856)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !361, file: !341, line: 478, baseType: !128, size: 64, offset: 1920)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !361, file: !341, line: 478, baseType: !128, size: 64, offset: 1984)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !361, file: !341, line: 479, baseType: !128, size: 64, offset: 2048)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !361, file: !341, line: 479, baseType: !128, size: 64, offset: 2112)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !361, file: !341, line: 479, baseType: !128, size: 64, offset: 2176)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !361, file: !341, line: 480, baseType: !128, size: 64, offset: 2240)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !361, file: !341, line: 480, baseType: !128, size: 64, offset: 2304)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !361, file: !341, line: 480, baseType: !128, size: 64, offset: 2368)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !361, file: !341, line: 480, baseType: !128, size: 64, offset: 2432)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !361, file: !341, line: 482, baseType: !419, size: 2816, offset: 2496)
!419 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 2816, elements: !420)
!420 = !{!421}
!421 = !DISubrange(count: 44)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !361, file: !341, line: 488, baseType: !423, size: 256, offset: 5312)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !424, line: 60, size: 256, elements: !425)
!424 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!425 = !{!426}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !423, file: !424, line: 61, baseType: !427, size: 256)
!427 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 256, elements: !428)
!428 = !{!429}
!429 = !DISubrange(count: 4)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !361, file: !341, line: 490, baseType: !431, size: 64, offset: 5568)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !341, line: 490, flags: DIFlagFwdDecl)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !361, file: !341, line: 493, baseType: !434, size: 896, offset: 5632)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !435, line: 53, baseType: !436)
!435 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !435, line: 13, size: 896, elements: !437)
!437 = !{!438, !439, !440, !441, !444, !445, !446, !447, !451, !452, !455}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !436, file: !435, line: 18, baseType: !369, size: 64)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !436, file: !435, line: 28, baseType: !97, size: 64, offset: 64)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !436, file: !435, line: 31, baseType: !91, size: 256, offset: 128)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !436, file: !435, line: 32, baseType: !442, size: 64, offset: 384)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !435, line: 32, flags: DIFlagFwdDecl)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !436, file: !435, line: 37, baseType: !294, size: 16, offset: 448)
!445 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !436, file: !435, line: 40, baseType: !148, size: 192, offset: 512)
!446 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !436, file: !435, line: 41, baseType: !75, size: 64, offset: 704)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !436, file: !435, line: 42, baseType: !448, size: 64, offset: 768)
!448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !449, size: 64)
!449 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !450)
!450 = !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !435, line: 42, flags: DIFlagFwdDecl)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !436, file: !435, line: 44, baseType: !143, size: 32, offset: 832)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !436, file: !435, line: 50, baseType: !453, size: 16, offset: 864)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !102, line: 19, baseType: !454)
!454 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !104, line: 24, baseType: !294)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !436, file: !435, line: 51, baseType: !456, size: 16, offset: 880)
!456 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !102, line: 18, baseType: !457)
!457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !104, line: 23, baseType: !458)
!458 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !361, file: !341, line: 495, baseType: !128, size: 64, offset: 6528)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !361, file: !341, line: 497, baseType: !461, size: 64, offset: 6592)
!461 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !462, size: 64)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !341, line: 381, size: 384, elements: !463)
!463 = !{!464, !465, !1346}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !462, file: !341, line: 382, baseType: !143, size: 32)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !462, file: !341, line: 383, baseType: !466, size: 128, offset: 64)
!466 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !341, line: 376, size: 128, elements: !467)
!467 = !{!468, !1344}
!468 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !466, file: !341, line: 377, baseType: !469, size: 64)
!469 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !470, size: 64)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !471, line: 640, size: 48640, elements: !472)
!471 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473, !479, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !494, !512, !523, !618, !619, !620, !631, !632, !634, !635, !636, !637, !643, !644, !645, !646, !647, !648, !649, !650, !651, !652, !653, !654, !655, !656, !657, !658, !716, !719, !720, !721, !722, !723, !724, !725, !726, !727, !728, !772, !774, !775, !776, !788, !790, !791, !792, !793, !794, !800, !801, !802, !803, !804, !805, !806, !818, !823, !827, !828, !829, !832, !836, !839, !842, !845, !848, !851, !854, !857, !863, !864, !865, !871, !872, !873, !874, !875, !884, !885, !886, !887, !888, !893, !894, !895, !898, !899, !902, !905, !908, !911, !914, !917, !918, !998, !1001, !1004, !1005, !1008, !1009, !1010, !1016, !1017, !1018, !1031, !1032, !1033, !1043, !1048, !1051, !1149, !1150, !1151, !1152, !1153, !1154, !1155, !1156, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !470, file: !471, line: 646, baseType: !474, size: 128)
!474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !475, line: 56, size: 128, elements: !476)
!475 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!476 = !{!477, !478}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !474, file: !475, line: 57, baseType: !128, size: 64)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !474, file: !475, line: 58, baseType: !172, size: 32, offset: 64)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !470, file: !471, line: 649, baseType: !480, size: 64, offset: 128)
!480 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !287)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !470, file: !471, line: 657, baseType: !75, size: 64, offset: 192)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !470, file: !471, line: 658, baseType: !138, size: 32, offset: 256)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !470, file: !471, line: 660, baseType: !5, size: 32, offset: 288)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !470, file: !471, line: 661, baseType: !5, size: 32, offset: 320)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !470, file: !471, line: 684, baseType: !127, size: 32, offset: 352)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !470, file: !471, line: 686, baseType: !127, size: 32, offset: 384)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !470, file: !471, line: 687, baseType: !127, size: 32, offset: 416)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !470, file: !471, line: 688, baseType: !127, size: 32, offset: 448)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !470, file: !471, line: 689, baseType: !5, size: 32, offset: 480)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !470, file: !471, line: 691, baseType: !491, size: 64, offset: 512)
!491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !492, size: 64)
!492 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !493)
!493 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !471, line: 691, flags: DIFlagFwdDecl)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !470, file: !471, line: 692, baseType: !495, size: 832, offset: 576)
!495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !471, line: 451, size: 832, elements: !496)
!496 = !{!497, !502, !503, !504, !505, !506, !507, !508, !509, !510}
!497 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !495, file: !471, line: 453, baseType: !498, size: 128)
!498 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !471, line: 325, size: 128, elements: !499)
!499 = !{!500, !501}
!500 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !498, file: !471, line: 326, baseType: !128, size: 64)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !498, file: !471, line: 327, baseType: !172, size: 32, offset: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !495, file: !471, line: 454, baseType: !348, size: 192, align: 64, offset: 128)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !495, file: !471, line: 455, baseType: !80, size: 128, offset: 320)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !495, file: !471, line: 456, baseType: !5, size: 32, offset: 448)
!505 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !495, file: !471, line: 458, baseType: !369, size: 64, offset: 512)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !495, file: !471, line: 459, baseType: !369, size: 64, offset: 576)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !495, file: !471, line: 460, baseType: !369, size: 64, offset: 640)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !495, file: !471, line: 461, baseType: !369, size: 64, offset: 704)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !495, file: !471, line: 463, baseType: !369, size: 64, offset: 768)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !495, file: !471, line: 465, baseType: !511, offset: 832)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !471, line: 415, elements: !116)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !470, file: !471, line: 693, baseType: !513, size: 384, offset: 1408)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !471, line: 489, size: 384, elements: !514)
!514 = !{!515, !516, !517, !518, !519, !520, !521}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !513, file: !471, line: 490, baseType: !80, size: 128)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !513, file: !471, line: 491, baseType: !128, size: 64, offset: 128)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !513, file: !471, line: 492, baseType: !128, size: 64, offset: 192)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !513, file: !471, line: 493, baseType: !5, size: 32, offset: 256)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !513, file: !471, line: 494, baseType: !294, size: 16, offset: 288)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !513, file: !471, line: 495, baseType: !294, size: 16, offset: 304)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !513, file: !471, line: 497, baseType: !522, size: 64, offset: 320)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !470, file: !471, line: 697, baseType: !524, size: 1792, offset: 1792)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !471, line: 507, size: 1792, elements: !525)
!525 = !{!526, !527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !615, !616}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !524, file: !471, line: 508, baseType: !348, size: 192, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !524, file: !471, line: 515, baseType: !369, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !524, file: !471, line: 516, baseType: !369, size: 64, offset: 256)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !524, file: !471, line: 517, baseType: !369, size: 64, offset: 320)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !524, file: !471, line: 518, baseType: !369, size: 64, offset: 384)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !524, file: !471, line: 519, baseType: !369, size: 64, offset: 448)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !524, file: !471, line: 526, baseType: !101, size: 64, offset: 512)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !524, file: !471, line: 527, baseType: !369, size: 64, offset: 576)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !524, file: !471, line: 528, baseType: !5, size: 32, offset: 640)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !524, file: !471, line: 554, baseType: !5, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !524, file: !471, line: 555, baseType: !5, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !524, file: !471, line: 556, baseType: !5, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !524, file: !471, line: 557, baseType: !5, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !524, file: !471, line: 563, baseType: !540, size: 512, offset: 704)
!540 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !4, line: 118, size: 512, elements: !541)
!541 = !{!542, !550, !551, !556, !608, !612, !613, !614}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !540, file: !4, line: 119, baseType: !543, size: 256)
!543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !544, line: 9, size: 256, elements: !545)
!544 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!545 = !{!546, !547}
!546 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !543, file: !544, line: 10, baseType: !348, size: 192, align: 64)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !543, file: !544, line: 11, baseType: !548, size: 64, offset: 192)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !549, line: 29, baseType: !101)
!549 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!550 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !540, file: !4, line: 120, baseType: !548, size: 64, offset: 256)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !540, file: !4, line: 121, baseType: !552, size: 64, offset: 320)
!552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !553, size: 64)
!553 = !DISubroutineType(types: !554)
!554 = !{!3, !555}
!555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !540, size: 64)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !540, file: !4, line: 122, baseType: !557, size: 64, offset: 384)
!557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !558, size: 64)
!558 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !4, line: 159, size: 512, align: 512, elements: !559)
!559 = !{!560, !580, !581, !584, !594, !595, !603, !607}
!560 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !558, file: !4, line: 160, baseType: !561, size: 64)
!561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !562, size: 64)
!562 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !4, line: 214, size: 4608, align: 512, elements: !563)
!563 = !{!564, !565, !566, !567, !568, !569, !570, !571, !572, !573, !574, !575, !576}
!564 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !562, file: !4, line: 215, baseType: !108)
!565 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !562, file: !4, line: 216, baseType: !5, size: 32)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !562, file: !4, line: 217, baseType: !5, size: 32, offset: 32)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !562, file: !4, line: 218, baseType: !5, size: 32, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !562, file: !4, line: 219, baseType: !5, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !562, file: !4, line: 220, baseType: !5, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !562, file: !4, line: 221, baseType: !5, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !562, file: !4, line: 222, baseType: !5, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !562, file: !4, line: 233, baseType: !548, size: 64, offset: 128)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !562, file: !4, line: 234, baseType: !555, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !562, file: !4, line: 235, baseType: !548, size: 64, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !562, file: !4, line: 236, baseType: !555, size: 64, offset: 320)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !562, file: !4, line: 237, baseType: !577, size: 4096, offset: 512)
!577 = !DICompositeType(tag: DW_TAG_array_type, baseType: !558, size: 4096, elements: !578)
!578 = !{!579}
!579 = !DISubrange(count: 8)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !558, file: !4, line: 161, baseType: !5, size: 32, offset: 64)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !558, file: !4, line: 162, baseType: !582, size: 32, offset: 96)
!582 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !81, line: 27, baseType: !583)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !285, line: 96, baseType: !127)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !558, file: !4, line: 163, baseType: !585, size: 32, offset: 128)
!585 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !586, line: 276, baseType: !587)
!586 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!587 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !586, line: 276, size: 32, elements: !588)
!588 = !{!589}
!589 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !587, file: !586, line: 276, baseType: !590, size: 32)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !586, line: 70, baseType: !591)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !586, line: 65, size: 32, elements: !592)
!592 = !{!593}
!593 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !591, file: !586, line: 66, baseType: !5, size: 32)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !558, file: !4, line: 164, baseType: !555, size: 64, offset: 192)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !558, file: !4, line: 165, baseType: !596, size: 128, offset: 256)
!596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !544, line: 14, size: 128, elements: !597)
!597 = !{!598}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !596, file: !544, line: 15, baseType: !599, size: 128)
!599 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !349, line: 125, size: 128, elements: !600)
!600 = !{!601, !602}
!601 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !599, file: !349, line: 126, baseType: !365, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !599, file: !349, line: 127, baseType: !353, size: 64, offset: 64)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !558, file: !4, line: 166, baseType: !604, size: 64, offset: 384)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!548}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !558, file: !4, line: 167, baseType: !548, size: 64, offset: 448)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !540, file: !4, line: 123, baseType: !609, size: 8, offset: 448)
!609 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !102, line: 17, baseType: !610)
!610 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !104, line: 21, baseType: !611)
!611 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !540, file: !4, line: 124, baseType: !609, size: 8, offset: 456)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !540, file: !4, line: 125, baseType: !609, size: 8, offset: 464)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !540, file: !4, line: 126, baseType: !609, size: 8, offset: 472)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !524, file: !471, line: 572, baseType: !540, size: 512, offset: 1216)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !524, file: !471, line: 580, baseType: !617, size: 64, offset: 1728)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !524, size: 64)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !470, file: !471, line: 721, baseType: !5, size: 32, offset: 3584)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !470, file: !471, line: 722, baseType: !127, size: 32, offset: 3616)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !470, file: !471, line: 723, baseType: !621, size: 64, offset: 3648)
!621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!622 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !623)
!623 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !624, line: 17, baseType: !625)
!624 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!625 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !624, line: 17, size: 64, elements: !626)
!626 = !{!627}
!627 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !625, file: !624, line: 17, baseType: !628, size: 64)
!628 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, size: 64, elements: !629)
!629 = !{!630}
!630 = !DISubrange(count: 1)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !470, file: !471, line: 724, baseType: !623, size: 64, offset: 3712)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !470, file: !471, line: 749, baseType: !633, offset: 3776)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !471, line: 290, elements: !116)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !470, file: !471, line: 751, baseType: !80, size: 128, offset: 3776)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !470, file: !471, line: 757, baseType: !357, size: 64, offset: 3904)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !470, file: !471, line: 758, baseType: !357, size: 64, offset: 3968)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !470, file: !471, line: 761, baseType: !638, size: 320, offset: 4032)
!638 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !424, line: 34, size: 320, elements: !639)
!639 = !{!640, !641}
!640 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !638, file: !424, line: 35, baseType: !369, size: 64)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !638, file: !424, line: 36, baseType: !642, size: 256, offset: 64)
!642 = !DICompositeType(tag: DW_TAG_array_type, baseType: !339, size: 256, elements: !428)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !470, file: !471, line: 766, baseType: !127, size: 32, offset: 4352)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !470, file: !471, line: 767, baseType: !127, size: 32, offset: 4384)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !470, file: !471, line: 768, baseType: !127, size: 32, offset: 4416)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !470, file: !471, line: 770, baseType: !127, size: 32, offset: 4448)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !470, file: !471, line: 772, baseType: !128, size: 64, offset: 4480)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !470, file: !471, line: 775, baseType: !5, size: 32, offset: 4544)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !470, file: !471, line: 778, baseType: !5, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !470, file: !471, line: 779, baseType: !5, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!651 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !470, file: !471, line: 780, baseType: !5, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!652 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !470, file: !471, line: 803, baseType: !5, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !470, file: !471, line: 806, baseType: !5, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !470, file: !471, line: 807, baseType: !5, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !470, file: !471, line: 809, baseType: !5, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !470, file: !471, line: 815, baseType: !5, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !470, file: !471, line: 831, baseType: !128, size: 64, offset: 4672)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !470, file: !471, line: 833, baseType: !659, size: 384, offset: 4736)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !10, line: 25, size: 384, elements: !660)
!660 = !{!661, !666}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !659, file: !10, line: 26, baseType: !662, size: 64)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!287, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, scope: !659, file: !10, line: 27, baseType: !667, size: 320, offset: 64)
!667 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !659, file: !10, line: 27, size: 320, elements: !668)
!668 = !{!669, !679, !706}
!669 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !667, file: !10, line: 36, baseType: !670, size: 320)
!670 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !667, file: !10, line: 29, size: 320, elements: !671)
!671 = !{!672, !674, !675, !676, !677, !678}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !670, file: !10, line: 30, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !172, size: 64)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !670, file: !10, line: 31, baseType: !172, size: 32, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !670, file: !10, line: 32, baseType: !172, size: 32, offset: 96)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !670, file: !10, line: 33, baseType: !172, size: 32, offset: 128)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !670, file: !10, line: 34, baseType: !369, size: 64, offset: 192)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !670, file: !10, line: 35, baseType: !673, size: 64, offset: 256)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !667, file: !10, line: 46, baseType: !680, size: 192)
!680 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !667, file: !10, line: 38, size: 192, elements: !681)
!681 = !{!682, !683, !684, !705}
!682 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !680, file: !10, line: 39, baseType: !582, size: 32)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !680, file: !10, line: 40, baseType: !9, size: 32, offset: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, scope: !680, file: !10, line: 41, baseType: !685, size: 64, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !680, file: !10, line: 41, size: 64, elements: !686)
!686 = !{!687, !695}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !685, file: !10, line: 42, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !690, line: 7, size: 128, elements: !691)
!690 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !694}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !689, file: !690, line: 8, baseType: !693, size: 64)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !285, line: 93, baseType: !105)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !689, file: !690, line: 9, baseType: !105, size: 64, offset: 64)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !685, file: !10, line: 43, baseType: !696, size: 64)
!696 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !697, size: 64)
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !698, line: 7, size: 64, elements: !699)
!698 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!699 = !{!700, !704}
!700 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !697, file: !698, line: 8, baseType: !701, size: 32)
!701 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !698, line: 5, baseType: !702)
!702 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !102, line: 20, baseType: !703)
!703 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !104, line: 26, baseType: !127)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !697, file: !698, line: 9, baseType: !702, size: 32, offset: 32)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !680, file: !10, line: 45, baseType: !369, size: 64, offset: 128)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !667, file: !10, line: 54, baseType: !707, size: 256)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !667, file: !10, line: 48, size: 256, elements: !708)
!708 = !{!709, !712, !713, !714, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !707, file: !10, line: 49, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !711, size: 64)
!711 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !10, line: 14, flags: DIFlagFwdDecl)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !707, file: !10, line: 50, baseType: !127, size: 32, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !707, file: !10, line: 51, baseType: !127, size: 32, offset: 96)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !707, file: !10, line: 52, baseType: !128, size: 64, offset: 128)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !707, file: !10, line: 53, baseType: !128, size: 64, offset: 192)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !470, file: !471, line: 835, baseType: !717, size: 32, offset: 5120)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !81, line: 22, baseType: !718)
!718 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !285, line: 28, baseType: !127)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !470, file: !471, line: 836, baseType: !717, size: 32, offset: 5152)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !470, file: !471, line: 840, baseType: !128, size: 64, offset: 5184)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !470, file: !471, line: 849, baseType: !469, size: 64, offset: 5248)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !470, file: !471, line: 852, baseType: !469, size: 64, offset: 5312)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !470, file: !471, line: 857, baseType: !80, size: 128, offset: 5376)
!724 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !470, file: !471, line: 858, baseType: !80, size: 128, offset: 5504)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !470, file: !471, line: 859, baseType: !469, size: 64, offset: 5632)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !470, file: !471, line: 867, baseType: !80, size: 128, offset: 5696)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !470, file: !471, line: 868, baseType: !80, size: 128, offset: 5824)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !470, file: !471, line: 871, baseType: !729, size: 64, offset: 5952)
!729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !730, size: 64)
!730 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !731, line: 59, size: 768, elements: !732)
!731 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!732 = !{!733, !734, !735, !736, !747, !748, !755, !764}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !730, file: !731, line: 61, baseType: !138, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !730, file: !731, line: 62, baseType: !5, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !730, file: !731, line: 63, baseType: !153, offset: 64)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !730, file: !731, line: 65, baseType: !737, size: 256, offset: 64)
!737 = !DICompositeType(tag: DW_TAG_array_type, baseType: !738, size: 256, elements: !428)
!738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !81, line: 182, size: 64, elements: !739)
!739 = !{!740}
!740 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !738, file: !81, line: 183, baseType: !741, size: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !81, line: 186, size: 128, elements: !743)
!743 = !{!744, !745}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !742, file: !81, line: 187, baseType: !741, size: 64)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !742, file: !81, line: 187, baseType: !746, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !741, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !730, file: !731, line: 66, baseType: !738, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !730, file: !731, line: 68, baseType: !749, size: 128, offset: 384)
!749 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !750, line: 40, baseType: !751)
!750 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!751 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !750, line: 36, size: 128, elements: !752)
!752 = !{!753, !754}
!753 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !751, file: !750, line: 37, baseType: !153)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !751, file: !750, line: 38, baseType: !80, size: 128)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !730, file: !731, line: 69, baseType: !756, size: 128, align: 64, offset: 512)
!756 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !81, line: 216, size: 128, align: 64, elements: !757)
!757 = !{!758, !760}
!758 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !756, file: !81, line: 217, baseType: !759, size: 64)
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !756, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !756, file: !81, line: 218, baseType: !761, size: 64, offset: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DISubroutineType(types: !763)
!763 = !{null, !759}
!764 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !730, file: !731, line: 70, baseType: !765, size: 128, offset: 640)
!765 = !DICompositeType(tag: DW_TAG_array_type, baseType: !766, size: 128, elements: !629)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !731, line: 54, size: 128, elements: !767)
!767 = !{!768, !769}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !766, file: !731, line: 55, baseType: !127, size: 32)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !766, file: !731, line: 56, baseType: !770, size: 64, offset: 64)
!770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !771, size: 64)
!771 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !731, line: 56, flags: DIFlagFwdDecl)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !470, file: !471, line: 872, baseType: !773, size: 512, offset: 6016)
!773 = !DICompositeType(tag: DW_TAG_array_type, baseType: !742, size: 512, elements: !428)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !470, file: !471, line: 873, baseType: !80, size: 128, offset: 6528)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !470, file: !471, line: 874, baseType: !80, size: 128, offset: 6656)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !470, file: !471, line: 876, baseType: !777, size: 64, offset: 6784)
!777 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!778 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !779, line: 26, size: 192, elements: !780)
!779 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !778, file: !779, line: 27, baseType: !5, size: 32)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !778, file: !779, line: 28, baseType: !783, size: 128, offset: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !784, line: 43, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !783, file: !784, line: 44, baseType: !108)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !783, file: !784, line: 45, baseType: !80, size: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !470, file: !471, line: 879, baseType: !789, size: 64, offset: 6848)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !470, file: !471, line: 882, baseType: !789, size: 64, offset: 6912)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !470, file: !471, line: 884, baseType: !369, size: 64, offset: 6976)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !470, file: !471, line: 885, baseType: !369, size: 64, offset: 7040)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !470, file: !471, line: 890, baseType: !369, size: 64, offset: 7104)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !470, file: !471, line: 891, baseType: !795, size: 128, offset: 7168)
!795 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !471, line: 242, size: 128, elements: !796)
!796 = !{!797, !798, !799}
!797 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !795, file: !471, line: 244, baseType: !369, size: 64)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !795, file: !471, line: 245, baseType: !369, size: 64, offset: 64)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !795, file: !471, line: 246, baseType: !108, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !470, file: !471, line: 900, baseType: !128, size: 64, offset: 7296)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !470, file: !471, line: 901, baseType: !128, size: 64, offset: 7360)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !470, file: !471, line: 904, baseType: !369, size: 64, offset: 7424)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !470, file: !471, line: 907, baseType: !369, size: 64, offset: 7488)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !470, file: !471, line: 910, baseType: !128, size: 64, offset: 7552)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !470, file: !471, line: 911, baseType: !128, size: 64, offset: 7616)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !470, file: !471, line: 914, baseType: !807, size: 640, offset: 7680)
!807 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !808, line: 123, size: 640, elements: !809)
!808 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!809 = !{!810, !816, !817}
!810 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !807, file: !808, line: 124, baseType: !811, size: 576)
!811 = !DICompositeType(tag: DW_TAG_array_type, baseType: !812, size: 576, elements: !253)
!812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !808, line: 108, size: 192, elements: !813)
!813 = !{!814, !815}
!814 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !812, file: !808, line: 109, baseType: !369, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !812, file: !808, line: 110, baseType: !596, size: 128, offset: 64)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !807, file: !808, line: 125, baseType: !5, size: 32, offset: 576)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !807, file: !808, line: 126, baseType: !5, size: 32, offset: 608)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !470, file: !471, line: 917, baseType: !819, size: 192, offset: 8320)
!819 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !808, line: 134, size: 192, elements: !820)
!820 = !{!821, !822}
!821 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !819, file: !808, line: 135, baseType: !756, size: 128, align: 64)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !819, file: !808, line: 136, baseType: !5, size: 32, offset: 128)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !470, file: !471, line: 923, baseType: !824, size: 64, offset: 8512)
!824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !825, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !826)
!826 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !471, line: 923, flags: DIFlagFwdDecl)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !470, file: !471, line: 926, baseType: !824, size: 64, offset: 8576)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !470, file: !471, line: 929, baseType: !824, size: 64, offset: 8640)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !470, file: !471, line: 933, baseType: !830, size: 64, offset: 8704)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !471, line: 933, flags: DIFlagFwdDecl)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !470, file: !471, line: 943, baseType: !833, size: 128, offset: 8768)
!833 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 128, elements: !834)
!834 = !{!835}
!835 = !DISubrange(count: 16)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !470, file: !471, line: 945, baseType: !837, size: 64, offset: 8896)
!837 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !838, size: 64)
!838 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !471, line: 49, flags: DIFlagFwdDecl)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !470, file: !471, line: 956, baseType: !840, size: 64, offset: 8960)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !841, size: 64)
!841 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !471, line: 45, flags: DIFlagFwdDecl)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !470, file: !471, line: 959, baseType: !843, size: 64, offset: 9024)
!843 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !844, size: 64)
!844 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !471, line: 959, flags: DIFlagFwdDecl)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !470, file: !471, line: 962, baseType: !846, size: 64, offset: 9088)
!846 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !847, size: 64)
!847 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !471, line: 66, flags: DIFlagFwdDecl)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !470, file: !471, line: 966, baseType: !849, size: 64, offset: 9152)
!849 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!850 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !471, line: 50, flags: DIFlagFwdDecl)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !470, file: !471, line: 969, baseType: !852, size: 64, offset: 9216)
!852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !853, size: 64)
!853 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !808, line: 223, flags: DIFlagFwdDecl)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !470, file: !471, line: 970, baseType: !855, size: 64, offset: 9280)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !471, line: 62, flags: DIFlagFwdDecl)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !470, file: !471, line: 971, baseType: !858, size: 64, offset: 9344)
!858 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !859, line: 25, baseType: !860)
!859 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !859, line: 23, size: 64, elements: !861)
!861 = !{!862}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !860, file: !859, line: 24, baseType: !628, size: 64)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !470, file: !471, line: 972, baseType: !858, size: 64, offset: 9408)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !470, file: !471, line: 974, baseType: !858, size: 64, offset: 9472)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !470, file: !471, line: 975, baseType: !866, size: 192, offset: 9536)
!866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !867, line: 30, size: 192, elements: !868)
!867 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!868 = !{!869, !870}
!869 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !866, file: !867, line: 31, baseType: !80, size: 128)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !866, file: !867, line: 32, baseType: !858, size: 64, offset: 128)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !470, file: !471, line: 976, baseType: !128, size: 64, offset: 9728)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !470, file: !471, line: 977, baseType: !299, size: 64, offset: 9792)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !470, file: !471, line: 978, baseType: !5, size: 32, offset: 9856)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !470, file: !471, line: 980, baseType: !759, size: 64, offset: 9920)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !470, file: !471, line: 989, baseType: !876, size: 128, offset: 9984)
!876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !877, line: 35, size: 128, elements: !878)
!877 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!878 = !{!879, !880, !881}
!879 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !876, file: !877, line: 36, baseType: !127, size: 32)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !876, file: !877, line: 37, baseType: !143, size: 32, offset: 32)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !876, file: !877, line: 38, baseType: !882, size: 64, offset: 64)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !877, line: 23, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !470, file: !471, line: 992, baseType: !369, size: 64, offset: 10112)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !470, file: !471, line: 993, baseType: !369, size: 64, offset: 10176)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !470, file: !471, line: 996, baseType: !153, offset: 10240)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !470, file: !471, line: 999, baseType: !108, offset: 10240)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !470, file: !471, line: 1001, baseType: !889, size: 64, offset: 10240)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !471, line: 636, size: 64, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !889, file: !471, line: 637, baseType: !892, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !470, file: !471, line: 1005, baseType: !599, size: 128, offset: 10304)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !470, file: !471, line: 1007, baseType: !469, size: 64, offset: 10432)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !470, file: !471, line: 1009, baseType: !896, size: 64, offset: 10496)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !897, size: 64)
!897 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !471, line: 1009, flags: DIFlagFwdDecl)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !470, file: !471, line: 1043, baseType: !75, size: 64, offset: 10560)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !470, file: !471, line: 1046, baseType: !900, size: 64, offset: 10624)
!900 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !901, size: 64)
!901 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !471, line: 41, flags: DIFlagFwdDecl)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !470, file: !471, line: 1050, baseType: !903, size: 64, offset: 10688)
!903 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !904, size: 64)
!904 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !471, line: 42, flags: DIFlagFwdDecl)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !470, file: !471, line: 1054, baseType: !906, size: 64, offset: 10752)
!906 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !907, size: 64)
!907 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !471, line: 55, flags: DIFlagFwdDecl)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !470, file: !471, line: 1056, baseType: !909, size: 64, offset: 10816)
!909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !910, size: 64)
!910 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !471, line: 40, flags: DIFlagFwdDecl)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !470, file: !471, line: 1058, baseType: !912, size: 64, offset: 10880)
!912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !913, size: 64)
!913 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !471, line: 47, flags: DIFlagFwdDecl)
!914 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !470, file: !471, line: 1061, baseType: !915, size: 64, offset: 10944)
!915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !916, size: 64)
!916 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !471, line: 43, flags: DIFlagFwdDecl)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !470, file: !471, line: 1064, baseType: !128, size: 64, offset: 11008)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !470, file: !471, line: 1065, baseType: !919, size: 64, offset: 11072)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !867, line: 14, baseType: !921)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !867, line: 12, size: 384, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, scope: !921, file: !867, line: 13, baseType: !924, size: 384)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !921, file: !867, line: 13, size: 384, elements: !925)
!925 = !{!926, !927, !928, !929}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !924, file: !867, line: 13, baseType: !127, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !924, file: !867, line: 13, baseType: !127, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !924, file: !867, line: 13, baseType: !127, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !924, file: !867, line: 13, baseType: !930, size: 256, offset: 128)
!930 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !931, line: 32, size: 256, elements: !932)
!931 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!932 = !{!933, !939, !952, !958, !967, !987, !992}
!933 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !930, file: !931, line: 37, baseType: !934, size: 64)
!934 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 34, size: 64, elements: !935)
!935 = !{!936, !937}
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !934, file: !931, line: 35, baseType: !718, size: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !934, file: !931, line: 36, baseType: !938, size: 32, offset: 32)
!938 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !285, line: 49, baseType: !5)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !930, file: !931, line: 45, baseType: !940, size: 192)
!940 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 40, size: 192, elements: !941)
!941 = !{!942, !944, !945, !951}
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !940, file: !931, line: 41, baseType: !943, size: 32)
!943 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !285, line: 95, baseType: !127)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !940, file: !931, line: 42, baseType: !127, size: 32, offset: 32)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !940, file: !931, line: 43, baseType: !946, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !931, line: 11, baseType: !947)
!947 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !931, line: 8, size: 64, elements: !948)
!948 = !{!949, !950}
!949 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !947, file: !931, line: 9, baseType: !127, size: 32)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !947, file: !931, line: 10, baseType: !75, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !940, file: !931, line: 44, baseType: !127, size: 32, offset: 128)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !930, file: !931, line: 52, baseType: !953, size: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 48, size: 128, elements: !954)
!954 = !{!955, !956, !957}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !953, file: !931, line: 49, baseType: !718, size: 32)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !953, file: !931, line: 50, baseType: !938, size: 32, offset: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !953, file: !931, line: 51, baseType: !946, size: 64, offset: 64)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !930, file: !931, line: 61, baseType: !959, size: 256)
!959 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 55, size: 256, elements: !960)
!960 = !{!961, !962, !963, !964, !966}
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !959, file: !931, line: 56, baseType: !718, size: 32)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !959, file: !931, line: 57, baseType: !938, size: 32, offset: 32)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !959, file: !931, line: 58, baseType: !127, size: 32, offset: 64)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !959, file: !931, line: 59, baseType: !965, size: 64, offset: 128)
!965 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !285, line: 94, baseType: !286)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !959, file: !931, line: 60, baseType: !965, size: 64, offset: 192)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !930, file: !931, line: 95, baseType: !968, size: 256)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 64, size: 256, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !968, file: !931, line: 65, baseType: !75, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, scope: !968, file: !931, line: 77, baseType: !972, size: 192, offset: 64)
!972 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !968, file: !931, line: 77, size: 192, elements: !973)
!973 = !{!974, !975, !982}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !972, file: !931, line: 82, baseType: !458, size: 16)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !972, file: !931, line: 88, baseType: !976, size: 192)
!976 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !931, line: 84, size: 192, elements: !977)
!977 = !{!978, !980, !981}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !976, file: !931, line: 85, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 64, elements: !578)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !976, file: !931, line: 86, baseType: !75, size: 64, offset: 64)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !976, file: !931, line: 87, baseType: !75, size: 64, offset: 128)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !972, file: !931, line: 93, baseType: !983, size: 96)
!983 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !972, file: !931, line: 90, size: 96, elements: !984)
!984 = !{!985, !986}
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !983, file: !931, line: 91, baseType: !979, size: 64)
!986 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !983, file: !931, line: 92, baseType: !173, size: 32, offset: 64)
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !930, file: !931, line: 101, baseType: !988, size: 128)
!988 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 98, size: 128, elements: !989)
!989 = !{!990, !991}
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !988, file: !931, line: 99, baseType: !287, size: 64)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !988, file: !931, line: 100, baseType: !127, size: 32, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !930, file: !931, line: 108, baseType: !993, size: 128)
!993 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !930, file: !931, line: 104, size: 128, elements: !994)
!994 = !{!995, !996, !997}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !993, file: !931, line: 105, baseType: !75, size: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !993, file: !931, line: 106, baseType: !127, size: 32, offset: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !993, file: !931, line: 107, baseType: !5, size: 32, offset: 96)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !470, file: !471, line: 1067, baseType: !999, offset: 11136)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1000, line: 12, elements: !116)
!1000 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !470, file: !471, line: 1099, baseType: !1002, size: 64, offset: 11136)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !471, line: 56, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !470, file: !471, line: 1103, baseType: !80, size: 128, offset: 11200)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !470, file: !471, line: 1104, baseType: !1006, size: 64, offset: 11328)
!1006 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1007, size: 64)
!1007 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !471, line: 46, flags: DIFlagFwdDecl)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !470, file: !471, line: 1105, baseType: !148, size: 192, offset: 11392)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !470, file: !471, line: 1106, baseType: !5, size: 32, offset: 11584)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !470, file: !471, line: 1109, baseType: !1011, size: 128, offset: 11648)
!1011 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1012, size: 128, elements: !1014)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !471, line: 51, flags: DIFlagFwdDecl)
!1014 = !{!1015}
!1015 = !DISubrange(count: 2)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !470, file: !471, line: 1110, baseType: !148, size: 192, offset: 11776)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !470, file: !471, line: 1111, baseType: !80, size: 128, offset: 11968)
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !470, file: !471, line: 1173, baseType: !1019, size: 64, offset: 12096)
!1019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1021, line: 62, size: 256, align: 256, elements: !1022)
!1021 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1022 = !{!1023, !1024, !1025, !1030}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1020, file: !1021, line: 75, baseType: !173, size: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1020, file: !1021, line: 90, baseType: !173, size: 32, offset: 32)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1020, file: !1021, line: 124, baseType: !1026, size: 64, offset: 64)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1020, file: !1021, line: 109, size: 64, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1026, file: !1021, line: 110, baseType: !370, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1026, file: !1021, line: 112, baseType: !370, size: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1020, file: !1021, line: 144, baseType: !173, size: 32, offset: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !470, file: !471, line: 1174, baseType: !172, size: 32, offset: 12160)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !470, file: !471, line: 1179, baseType: !128, size: 64, offset: 12224)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !470, file: !471, line: 1182, baseType: !1034, size: 128, offset: 12288)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !424, line: 76, size: 128, elements: !1035)
!1035 = !{!1036, !1041, !1042}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1034, file: !424, line: 85, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1038, line: 7, size: 64, elements: !1039)
!1038 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1039 = !{!1040}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1037, file: !1038, line: 12, baseType: !625, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1034, file: !424, line: 88, baseType: !198, size: 8, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1034, file: !424, line: 95, baseType: !198, size: 8, offset: 72)
!1043 = !DIDerivedType(tag: DW_TAG_member, scope: !470, file: !471, line: 1184, baseType: !1044, size: 128, offset: 12416)
!1044 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !470, file: !471, line: 1184, size: 128, elements: !1045)
!1045 = !{!1046, !1047}
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1044, file: !471, line: 1185, baseType: !138, size: 32)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1044, file: !471, line: 1186, baseType: !756, size: 128, align: 64)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !470, file: !471, line: 1190, baseType: !1049, size: 64, offset: 12544)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !471, line: 53, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !470, file: !471, line: 1192, baseType: !1052, size: 128, offset: 12608)
!1052 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !424, line: 64, size: 128, elements: !1053)
!1053 = !{!1054, !1147, !1148}
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1052, file: !424, line: 65, baseType: !1055, size: 64)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !341, line: 68, size: 512, align: 128, elements: !1057)
!1057 = !{!1058, !1059, !1139, !1146}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1056, file: !341, line: 69, baseType: !128, size: 64)
!1059 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !341, line: 77, baseType: !1060, size: 320, offset: 64)
!1060 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !341, line: 77, size: 320, elements: !1061)
!1061 = !{!1062, !1071, !1076, !1104, !1112, !1118, !1131, !1138}
!1062 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 78, baseType: !1063, size: 320)
!1063 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 78, size: 320, elements: !1064)
!1064 = !{!1065, !1066, !1069, !1070}
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1063, file: !341, line: 84, baseType: !80, size: 128)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1063, file: !341, line: 86, baseType: !1067, size: 64, offset: 128)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !341, line: 26, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1063, file: !341, line: 87, baseType: !128, size: 64, offset: 192)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1063, file: !341, line: 94, baseType: !128, size: 64, offset: 256)
!1071 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 96, baseType: !1072, size: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 96, size: 64, elements: !1073)
!1073 = !{!1074}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1072, file: !341, line: 101, baseType: !1075, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !81, line: 143, baseType: !369)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 103, baseType: !1077, size: 320)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 103, size: 320, elements: !1078)
!1078 = !{!1079, !1089, !1092, !1093}
!1079 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !341, line: 104, baseType: !1080, size: 128)
!1080 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !341, line: 104, size: 128, elements: !1081)
!1081 = !{!1082, !1083}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1080, file: !341, line: 105, baseType: !80, size: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1080, file: !341, line: 106, baseType: !1084, size: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1080, file: !341, line: 106, size: 128, elements: !1085)
!1085 = !{!1086, !1087, !1088}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1084, file: !341, line: 107, baseType: !1055, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1084, file: !341, line: 109, baseType: !127, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1084, file: !341, line: 110, baseType: !127, size: 32, offset: 96)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1077, file: !341, line: 117, baseType: !1090, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1091, size: 64)
!1091 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !341, line: 117, flags: DIFlagFwdDecl)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1077, file: !341, line: 119, baseType: !75, size: 64, offset: 192)
!1093 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !341, line: 120, baseType: !1094, size: 64, offset: 256)
!1094 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !341, line: 120, size: 64, elements: !1095)
!1095 = !{!1096, !1097, !1098}
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1094, file: !341, line: 121, baseType: !75, size: 64)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1094, file: !341, line: 122, baseType: !128, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, scope: !1094, file: !341, line: 123, baseType: !1099, size: 32)
!1099 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1094, file: !341, line: 123, size: 32, elements: !1100)
!1100 = !{!1101, !1102, !1103}
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1099, file: !341, line: 124, baseType: !5, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1099, file: !341, line: 125, baseType: !5, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1099, file: !341, line: 126, baseType: !5, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 130, baseType: !1105, size: 192)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 130, size: 192, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110, !1111}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1105, file: !341, line: 131, baseType: !128, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1105, file: !341, line: 134, baseType: !611, size: 8, offset: 64)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1105, file: !341, line: 135, baseType: !611, size: 8, offset: 72)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1105, file: !341, line: 136, baseType: !143, size: 32, offset: 96)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1105, file: !341, line: 137, baseType: !5, size: 32, offset: 128)
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 139, baseType: !1113, size: 256)
!1113 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 139, size: 256, elements: !1114)
!1114 = !{!1115, !1116, !1117}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1113, file: !341, line: 140, baseType: !128, size: 64)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1113, file: !341, line: 141, baseType: !143, size: 32, offset: 64)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1113, file: !341, line: 143, baseType: !80, size: 128, offset: 128)
!1118 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 145, baseType: !1119, size: 256)
!1119 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 145, size: 256, elements: !1120)
!1120 = !{!1121, !1122, !1124, !1125, !1130}
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1119, file: !341, line: 146, baseType: !128, size: 64)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1119, file: !341, line: 147, baseType: !1123, size: 64, offset: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !331, line: 509, baseType: !1055)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1119, file: !341, line: 148, baseType: !128, size: 64, offset: 128)
!1125 = !DIDerivedType(tag: DW_TAG_member, scope: !1119, file: !341, line: 149, baseType: !1126, size: 64, offset: 192)
!1126 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1119, file: !341, line: 149, size: 64, elements: !1127)
!1127 = !{!1128, !1129}
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1126, file: !341, line: 150, baseType: !357, size: 64)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1126, file: !341, line: 151, baseType: !143, size: 32)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1119, file: !341, line: 156, baseType: !153, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1060, file: !341, line: 159, baseType: !1132, size: 128)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1060, file: !341, line: 159, size: 128, elements: !1133)
!1133 = !{!1134, !1137}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1132, file: !341, line: 161, baseType: !1135, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1136, size: 64)
!1136 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !341, line: 161, flags: DIFlagFwdDecl)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1132, file: !341, line: 162, baseType: !75, size: 64, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1060, file: !341, line: 176, baseType: !756, size: 128, align: 64)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !1056, file: !341, line: 179, baseType: !1140, size: 32, offset: 384)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1056, file: !341, line: 179, size: 32, elements: !1141)
!1141 = !{!1142, !1143, !1144, !1145}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1140, file: !341, line: 184, baseType: !143, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1140, file: !341, line: 192, baseType: !5, size: 32)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1140, file: !341, line: 194, baseType: !5, size: 32)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1140, file: !341, line: 195, baseType: !127, size: 32)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1056, file: !341, line: 199, baseType: !143, size: 32, offset: 416)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1052, file: !424, line: 67, baseType: !173, size: 32, offset: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1052, file: !424, line: 68, baseType: !173, size: 32, offset: 96)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !470, file: !471, line: 1206, baseType: !127, size: 32, offset: 12736)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !470, file: !471, line: 1207, baseType: !127, size: 32, offset: 12768)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !470, file: !471, line: 1209, baseType: !128, size: 64, offset: 12800)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !470, file: !471, line: 1219, baseType: !369, size: 64, offset: 12864)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !470, file: !471, line: 1220, baseType: !369, size: 64, offset: 12928)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !470, file: !471, line: 1317, baseType: !127, size: 32, offset: 12992)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !470, file: !471, line: 1319, baseType: !469, size: 64, offset: 13056)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !470, file: !471, line: 1322, baseType: !1157, size: 64, offset: 13120)
!1157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1158, size: 64)
!1158 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !471, line: 1322, flags: DIFlagFwdDecl)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !470, file: !471, line: 1326, baseType: !138, size: 32, offset: 13184)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !470, file: !471, line: 1342, baseType: !75, size: 64, offset: 13248)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !470, file: !471, line: 1343, baseType: !370, size: 64, offset: 13312)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !470, file: !471, line: 1344, baseType: !369, size: 64, offset: 13376)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !470, file: !471, line: 1345, baseType: !370, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !470, file: !471, line: 1346, baseType: !370, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !470, file: !471, line: 1347, baseType: !370, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !470, file: !471, line: 1348, baseType: !756, size: 128, align: 64, offset: 13504)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !470, file: !471, line: 1358, baseType: !1168, size: 34816, offset: 13824)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1169, line: 485, size: 34816, elements: !1170)
!1169 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1170 = !{!1171, !1189, !1190, !1191, !1192, !1193, !1194, !1195, !1196, !1200, !1201, !1202, !1203, !1204, !1205, !1208, !1209, !1210}
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1168, file: !1169, line: 487, baseType: !1172, size: 192)
!1172 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1173, size: 192, elements: !253)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1174, line: 16, size: 64, elements: !1175)
!1174 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1175 = !{!1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184, !1185, !1186, !1187, !1188}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1173, file: !1174, line: 17, baseType: !453, size: 16)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1173, file: !1174, line: 18, baseType: !453, size: 16, offset: 16)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1173, file: !1174, line: 19, baseType: !453, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1173, file: !1174, line: 19, baseType: !453, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1173, file: !1174, line: 19, baseType: !453, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1173, file: !1174, line: 19, baseType: !453, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1173, file: !1174, line: 19, baseType: !453, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1173, file: !1174, line: 20, baseType: !453, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1173, file: !1174, line: 20, baseType: !453, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1173, file: !1174, line: 20, baseType: !453, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1173, file: !1174, line: 20, baseType: !453, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1173, file: !1174, line: 20, baseType: !453, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1173, file: !1174, line: 20, baseType: !453, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1168, file: !1169, line: 491, baseType: !128, size: 64, offset: 192)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1168, file: !1169, line: 495, baseType: !294, size: 16, offset: 256)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1168, file: !1169, line: 496, baseType: !294, size: 16, offset: 272)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1168, file: !1169, line: 497, baseType: !294, size: 16, offset: 288)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1168, file: !1169, line: 498, baseType: !294, size: 16, offset: 304)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1168, file: !1169, line: 502, baseType: !128, size: 64, offset: 320)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1168, file: !1169, line: 503, baseType: !128, size: 64, offset: 384)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1168, file: !1169, line: 514, baseType: !1197, size: 256, offset: 448)
!1197 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1198, size: 256, elements: !428)
!1198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1199, size: 64)
!1199 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1169, line: 483, flags: DIFlagFwdDecl)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1168, file: !1169, line: 516, baseType: !128, size: 64, offset: 704)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1168, file: !1169, line: 518, baseType: !128, size: 64, offset: 768)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1168, file: !1169, line: 520, baseType: !128, size: 64, offset: 832)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1168, file: !1169, line: 521, baseType: !128, size: 64, offset: 896)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1168, file: !1169, line: 522, baseType: !128, size: 64, offset: 960)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1168, file: !1169, line: 528, baseType: !1206, size: 64, offset: 1024)
!1206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1207, size: 64)
!1207 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1169, line: 10, flags: DIFlagFwdDecl)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1168, file: !1169, line: 535, baseType: !128, size: 64, offset: 1088)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1168, file: !1169, line: 537, baseType: !5, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1168, file: !1169, line: 540, baseType: !1211, size: 33280, offset: 1536)
!1211 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1212, line: 317, size: 33280, elements: !1213)
!1212 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1213 = !{!1214, !1215, !1216}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1211, file: !1212, line: 330, baseType: !5, size: 32)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1211, file: !1212, line: 337, baseType: !128, size: 64, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1211, file: !1212, line: 348, baseType: !1217, size: 32768, offset: 512)
!1217 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1212, line: 304, size: 32768, elements: !1218)
!1218 = !{!1219, !1234, !1273, !1323, !1340}
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1217, file: !1212, line: 305, baseType: !1220, size: 896)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1212, line: 12, size: 896, elements: !1221)
!1221 = !{!1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229, !1233}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1220, file: !1212, line: 13, baseType: !172, size: 32)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1220, file: !1212, line: 14, baseType: !172, size: 32, offset: 32)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1220, file: !1212, line: 15, baseType: !172, size: 32, offset: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1220, file: !1212, line: 16, baseType: !172, size: 32, offset: 96)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1220, file: !1212, line: 17, baseType: !172, size: 32, offset: 128)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1220, file: !1212, line: 18, baseType: !172, size: 32, offset: 160)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1220, file: !1212, line: 19, baseType: !172, size: 32, offset: 192)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1220, file: !1212, line: 22, baseType: !1230, size: 640, offset: 224)
!1230 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 640, elements: !1231)
!1231 = !{!1232}
!1232 = !DISubrange(count: 20)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1220, file: !1212, line: 25, baseType: !172, size: 32, offset: 864)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1217, file: !1212, line: 306, baseType: !1235, size: 4096, align: 128)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1212, line: 34, size: 4096, align: 128, elements: !1236)
!1236 = !{!1237, !1238, !1239, !1240, !1241, !1256, !1257, !1258, !1262, !1264, !1268}
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1235, file: !1212, line: 35, baseType: !453, size: 16)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1235, file: !1212, line: 36, baseType: !453, size: 16, offset: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1235, file: !1212, line: 37, baseType: !453, size: 16, offset: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1235, file: !1212, line: 38, baseType: !453, size: 16, offset: 48)
!1241 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1212, line: 39, baseType: !1242, size: 128, offset: 64)
!1242 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1212, line: 39, size: 128, elements: !1243)
!1243 = !{!1244, !1249}
!1244 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !1212, line: 40, baseType: !1245, size: 128)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1212, line: 40, size: 128, elements: !1246)
!1246 = !{!1247, !1248}
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1245, file: !1212, line: 41, baseType: !369, size: 64)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1245, file: !1212, line: 42, baseType: !369, size: 64, offset: 64)
!1249 = !DIDerivedType(tag: DW_TAG_member, scope: !1242, file: !1212, line: 44, baseType: !1250, size: 128)
!1250 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1242, file: !1212, line: 44, size: 128, elements: !1251)
!1251 = !{!1252, !1253, !1254, !1255}
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1250, file: !1212, line: 45, baseType: !172, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1250, file: !1212, line: 46, baseType: !172, size: 32, offset: 32)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1250, file: !1212, line: 47, baseType: !172, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1250, file: !1212, line: 48, baseType: !172, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1235, file: !1212, line: 51, baseType: !172, size: 32, offset: 192)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1235, file: !1212, line: 52, baseType: !172, size: 32, offset: 224)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1235, file: !1212, line: 55, baseType: !1259, size: 1024, offset: 256)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 1024, elements: !1260)
!1260 = !{!1261}
!1261 = !DISubrange(count: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1235, file: !1212, line: 58, baseType: !1263, size: 2048, offset: 1280)
!1263 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 2048, elements: !257)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1235, file: !1212, line: 60, baseType: !1265, size: 384, offset: 3328)
!1265 = !DICompositeType(tag: DW_TAG_array_type, baseType: !172, size: 384, elements: !1266)
!1266 = !{!1267}
!1267 = !DISubrange(count: 12)
!1268 = !DIDerivedType(tag: DW_TAG_member, scope: !1235, file: !1212, line: 62, baseType: !1269, size: 384, offset: 3712)
!1269 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1235, file: !1212, line: 62, size: 384, elements: !1270)
!1270 = !{!1271, !1272}
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1269, file: !1212, line: 63, baseType: !1265, size: 384)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1269, file: !1212, line: 64, baseType: !1265, size: 384)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1217, file: !1212, line: 307, baseType: !1274, size: 1088)
!1274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1212, line: 79, size: 1088, elements: !1275)
!1275 = !{!1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1322}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1274, file: !1212, line: 80, baseType: !172, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1274, file: !1212, line: 81, baseType: !172, size: 32, offset: 32)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1274, file: !1212, line: 82, baseType: !172, size: 32, offset: 64)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1274, file: !1212, line: 83, baseType: !172, size: 32, offset: 96)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1274, file: !1212, line: 84, baseType: !172, size: 32, offset: 128)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1274, file: !1212, line: 85, baseType: !172, size: 32, offset: 160)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1274, file: !1212, line: 86, baseType: !172, size: 32, offset: 192)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1274, file: !1212, line: 88, baseType: !1230, size: 640, offset: 224)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1274, file: !1212, line: 89, baseType: !609, size: 8, offset: 864)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1274, file: !1212, line: 90, baseType: !609, size: 8, offset: 872)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1274, file: !1212, line: 91, baseType: !609, size: 8, offset: 880)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1274, file: !1212, line: 92, baseType: !609, size: 8, offset: 888)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1274, file: !1212, line: 93, baseType: !609, size: 8, offset: 896)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1274, file: !1212, line: 94, baseType: !609, size: 8, offset: 904)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1274, file: !1212, line: 95, baseType: !1291, size: 64, offset: 960)
!1291 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1292, size: 64)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1293, line: 11, size: 128, elements: !1294)
!1293 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1294 = !{!1295, !1296}
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1292, file: !1293, line: 12, baseType: !287, size: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1292, file: !1293, line: 13, baseType: !1297, size: 64, offset: 64)
!1297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1298, size: 64)
!1298 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1299, line: 56, size: 1344, elements: !1300)
!1299 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1300 = !{!1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317, !1318, !1319, !1320, !1321}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1298, file: !1299, line: 61, baseType: !128, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1298, file: !1299, line: 62, baseType: !128, size: 64, offset: 64)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1298, file: !1299, line: 63, baseType: !128, size: 64, offset: 128)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1298, file: !1299, line: 64, baseType: !128, size: 64, offset: 192)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1298, file: !1299, line: 65, baseType: !128, size: 64, offset: 256)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1298, file: !1299, line: 66, baseType: !128, size: 64, offset: 320)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1298, file: !1299, line: 68, baseType: !128, size: 64, offset: 384)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1298, file: !1299, line: 69, baseType: !128, size: 64, offset: 448)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1298, file: !1299, line: 70, baseType: !128, size: 64, offset: 512)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1298, file: !1299, line: 71, baseType: !128, size: 64, offset: 576)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1298, file: !1299, line: 72, baseType: !128, size: 64, offset: 640)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1298, file: !1299, line: 73, baseType: !128, size: 64, offset: 704)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1298, file: !1299, line: 74, baseType: !128, size: 64, offset: 768)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1298, file: !1299, line: 75, baseType: !128, size: 64, offset: 832)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1298, file: !1299, line: 76, baseType: !128, size: 64, offset: 896)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1298, file: !1299, line: 81, baseType: !128, size: 64, offset: 960)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1298, file: !1299, line: 83, baseType: !128, size: 64, offset: 1024)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1298, file: !1299, line: 84, baseType: !128, size: 64, offset: 1088)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1298, file: !1299, line: 85, baseType: !128, size: 64, offset: 1152)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1298, file: !1299, line: 86, baseType: !128, size: 64, offset: 1216)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1298, file: !1299, line: 87, baseType: !128, size: 64, offset: 1280)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1274, file: !1212, line: 96, baseType: !172, size: 32, offset: 1024)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1217, file: !1212, line: 308, baseType: !1324, size: 4608, align: 512)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1212, line: 289, size: 4608, align: 512, elements: !1325)
!1325 = !{!1326, !1327, !1336}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1324, file: !1212, line: 290, baseType: !1235, size: 4096, align: 128)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1324, file: !1212, line: 291, baseType: !1328, size: 512, offset: 4096)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1212, line: 268, size: 512, elements: !1329)
!1329 = !{!1330, !1331, !1332}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1328, file: !1212, line: 269, baseType: !369, size: 64)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1328, file: !1212, line: 270, baseType: !369, size: 64, offset: 64)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1328, file: !1212, line: 271, baseType: !1333, size: 384, offset: 128)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 384, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 6)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1324, file: !1212, line: 292, baseType: !1337, offset: 4608)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 0)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1217, file: !1212, line: 309, baseType: !1341, size: 32768)
!1341 = !DICompositeType(tag: DW_TAG_array_type, baseType: !609, size: 32768, elements: !1342)
!1342 = !{!1343}
!1343 = !DISubrange(count: 4096)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !466, file: !341, line: 378, baseType: !1345, size: 64, offset: 64)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !466, size: 64)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !462, file: !341, line: 384, baseType: !778, size: 192, offset: 192)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !361, file: !341, line: 500, baseType: !153, offset: 6656)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !361, file: !341, line: 501, baseType: !1349, size: 64, offset: 6656)
!1349 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1350, size: 64)
!1350 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !341, line: 387, flags: DIFlagFwdDecl)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !361, file: !341, line: 516, baseType: !1352, size: 64, offset: 6720)
!1352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1353, size: 64)
!1353 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1354, line: 18, flags: DIFlagFwdDecl)
!1354 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !361, file: !341, line: 519, baseType: !329, size: 64, offset: 6784)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !361, file: !341, line: 521, baseType: !1357, size: 64, offset: 6848)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !341, line: 521, flags: DIFlagFwdDecl)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !361, file: !341, line: 545, baseType: !143, size: 32, offset: 6912)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !361, file: !341, line: 548, baseType: !198, size: 8, offset: 6944)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !361, file: !341, line: 550, baseType: !1362, offset: 6952)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1363, line: 142, elements: !116)
!1363 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !361, file: !341, line: 554, baseType: !1365, size: 256, offset: 6976)
!1365 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1366, line: 102, size: 256, elements: !1367)
!1366 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1367 = !{!1368, !1369, !1370}
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1365, file: !1366, line: 103, baseType: !95, size: 64)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1365, file: !1366, line: 104, baseType: !80, size: 128, offset: 64)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1365, file: !1366, line: 105, baseType: !1371, size: 64, offset: 192)
!1371 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1366, line: 21, baseType: !1372)
!1372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1373, size: 64)
!1373 = !DISubroutineType(types: !1374)
!1374 = !{null, !1375}
!1375 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1365, size: 64)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !361, file: !341, line: 557, baseType: !172, size: 32, offset: 7232)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !358, file: !341, line: 565, baseType: !1378, offset: 7296)
!1378 = !DICompositeType(tag: DW_TAG_array_type, baseType: !128, elements: !1379)
!1379 = !{!1380}
!1380 = !DISubrange(count: -1)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !340, file: !341, line: 333, baseType: !1382, size: 64, offset: 576)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !331, line: 284, baseType: !1383)
!1383 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !331, line: 284, size: 64, elements: !1384)
!1384 = !{!1385}
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1383, file: !331, line: 284, baseType: !1386, size: 64)
!1386 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !387, line: 19, baseType: !128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !340, file: !341, line: 334, baseType: !128, size: 64, offset: 640)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !340, file: !341, line: 343, baseType: !1389, size: 256, offset: 704)
!1389 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !340, file: !341, line: 340, size: 256, elements: !1390)
!1390 = !{!1391, !1392}
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1389, file: !341, line: 341, baseType: !348, size: 192, align: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1389, file: !341, line: 342, baseType: !128, size: 64, offset: 192)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !340, file: !341, line: 351, baseType: !80, size: 128, offset: 960)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !340, file: !341, line: 353, baseType: !1395, size: 64, offset: 1088)
!1395 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1396, size: 64)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !341, line: 353, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !340, file: !341, line: 356, baseType: !1398, size: 64, offset: 1152)
!1398 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1399, size: 64)
!1399 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1400)
!1400 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !341, line: 356, flags: DIFlagFwdDecl)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !340, file: !341, line: 359, baseType: !128, size: 64, offset: 1216)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !340, file: !341, line: 361, baseType: !329, size: 64, offset: 1280)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !340, file: !341, line: 362, baseType: !75, size: 64, offset: 1344)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !340, file: !341, line: 365, baseType: !95, size: 64, offset: 1408)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !340, file: !341, line: 373, baseType: !1406, offset: 1472)
!1406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !341, line: 296, elements: !116)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !308, file: !277, line: 90, baseType: !303, size: 64, offset: 192)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !308, file: !277, line: 91, baseType: !1409, size: 64, offset: 256)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !267, file: !214, line: 143, baseType: !1411, size: 64, offset: 256)
!1411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1412, size: 64)
!1412 = !DISubroutineType(types: !1413)
!1413 = !{!1414, !219}
!1414 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1415, size: 64)
!1415 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1416)
!1416 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !16, line: 39, size: 384, elements: !1417)
!1417 = !{!1418, !1419, !1423, !1427, !1433, !1437}
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1416, file: !16, line: 40, baseType: !15, size: 32)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1416, file: !16, line: 41, baseType: !1420, size: 64, offset: 64)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!198}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1416, file: !16, line: 42, baseType: !1424, size: 64, offset: 128)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!75}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1416, file: !16, line: 43, baseType: !1428, size: 64, offset: 192)
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DISubroutineType(types: !1430)
!1430 = !{!206, !1431}
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !16, line: 19, flags: DIFlagFwdDecl)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1416, file: !16, line: 44, baseType: !1434, size: 64, offset: 256)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{!206}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1416, file: !16, line: 45, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{null, !75}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !267, file: !214, line: 144, baseType: !1442, size: 64, offset: 320)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{!206, !219}
!1445 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !267, file: !214, line: 145, baseType: !1446, size: 64, offset: 384)
!1446 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1447, size: 64)
!1447 = !DISubroutineType(types: !1448)
!1448 = !{null, !219, !1449, !1455}
!1449 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1450, size: 64)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1354, line: 23, baseType: !1451)
!1451 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1354, line: 21, size: 32, elements: !1452)
!1452 = !{!1453}
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1451, file: !1354, line: 22, baseType: !1454, size: 32)
!1454 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !81, line: 32, baseType: !938)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1354, line: 28, baseType: !1457)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1354, line: 26, size: 32, elements: !1458)
!1458 = !{!1459}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1457, file: !1354, line: 27, baseType: !1460, size: 32)
!1460 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !81, line: 33, baseType: !1461)
!1461 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !285, line: 50, baseType: !5)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !213, file: !214, line: 70, baseType: !1463, size: 64, offset: 384)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1465, line: 123, size: 1024, elements: !1466)
!1465 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1466 = !{!1467, !1468, !1469, !1470, !1471, !1472, !1473, !1474, !1609, !1610, !1611, !1612, !1613}
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1464, file: !1465, line: 124, baseType: !143, size: 32)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1464, file: !1465, line: 125, baseType: !143, size: 32, offset: 32)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1464, file: !1465, line: 135, baseType: !1463, size: 64, offset: 64)
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1464, file: !1465, line: 136, baseType: !167, size: 64, offset: 128)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1464, file: !1465, line: 138, baseType: !348, size: 192, align: 64, offset: 192)
!1472 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1464, file: !1465, line: 140, baseType: !206, size: 64, offset: 384)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1464, file: !1465, line: 141, baseType: !5, size: 32, offset: 448)
!1474 = !DIDerivedType(tag: DW_TAG_member, scope: !1464, file: !1465, line: 142, baseType: !1475, size: 256, offset: 512)
!1475 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1464, file: !1465, line: 142, size: 256, elements: !1476)
!1476 = !{!1477, !1532, !1536}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1475, file: !1465, line: 143, baseType: !1478, size: 192)
!1478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1465, line: 91, size: 192, elements: !1479)
!1479 = !{!1480, !1481, !1482}
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1478, file: !1465, line: 92, baseType: !128, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1478, file: !1465, line: 94, baseType: !365, size: 64, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1478, file: !1465, line: 100, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1465, line: 180, size: 704, elements: !1485)
!1485 = !{!1486, !1487, !1488, !1502, !1503, !1504, !1530, !1531}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1484, file: !1465, line: 182, baseType: !1463, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1484, file: !1465, line: 183, baseType: !5, size: 32, offset: 64)
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1484, file: !1465, line: 186, baseType: !1489, size: 192, offset: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1490, line: 19, size: 192, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1500, !1501}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1489, file: !1490, line: 20, baseType: !1493, size: 128)
!1493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1494, line: 292, size: 128, elements: !1495)
!1494 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1495 = !{!1496, !1497, !1499}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1493, file: !1494, line: 293, baseType: !153)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1493, file: !1494, line: 295, baseType: !1498, size: 32)
!1498 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !81, line: 148, baseType: !5)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1493, file: !1494, line: 296, baseType: !75, size: 64, offset: 64)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1489, file: !1490, line: 21, baseType: !5, size: 32, offset: 128)
!1501 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1489, file: !1490, line: 22, baseType: !5, size: 32, offset: 160)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1484, file: !1465, line: 187, baseType: !172, size: 32, offset: 320)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1484, file: !1465, line: 188, baseType: !172, size: 32, offset: 352)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1484, file: !1465, line: 189, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1465, line: 168, size: 320, elements: !1507)
!1507 = !{!1508, !1514, !1518, !1522, !1526}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1506, file: !1465, line: 169, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1510, size: 64)
!1510 = !DISubroutineType(types: !1511)
!1511 = !{!127, !1512, !1483}
!1512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1513, size: 64)
!1513 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !331, line: 539, flags: DIFlagFwdDecl)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1506, file: !1465, line: 171, baseType: !1515, size: 64, offset: 64)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!127, !1463, !167, !293}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1506, file: !1465, line: 173, baseType: !1519, size: 64, offset: 128)
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DISubroutineType(types: !1521)
!1521 = !{!127, !1463}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1506, file: !1465, line: 174, baseType: !1523, size: 64, offset: 192)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!127, !1463, !1463, !167}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1506, file: !1465, line: 176, baseType: !1527, size: 64, offset: 256)
!1527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1528, size: 64)
!1528 = !DISubroutineType(types: !1529)
!1529 = !{!127, !1512, !1463, !1483}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1484, file: !1465, line: 192, baseType: !80, size: 128, offset: 448)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1484, file: !1465, line: 194, baseType: !749, size: 128, offset: 576)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1475, file: !1465, line: 144, baseType: !1533, size: 64)
!1533 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1465, line: 103, size: 64, elements: !1534)
!1534 = !{!1535}
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1533, file: !1465, line: 104, baseType: !1463, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1475, file: !1465, line: 145, baseType: !1537, size: 256)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1465, line: 107, size: 256, elements: !1538)
!1538 = !{!1539, !1604, !1607, !1608}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1537, file: !1465, line: 108, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1542)
!1542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1465, line: 217, size: 768, elements: !1543)
!1543 = !{!1544, !1564, !1568, !1572, !1577, !1581, !1585, !1589, !1590, !1591, !1592, !1600}
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1542, file: !1465, line: 222, baseType: !1545, size: 64)
!1545 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1546, size: 64)
!1546 = !DISubroutineType(types: !1547)
!1547 = !{!127, !1548}
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1465, line: 197, size: 1088, elements: !1550)
!1550 = !{!1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558, !1559, !1560, !1561, !1562, !1563}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1549, file: !1465, line: 199, baseType: !1463, size: 64)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1549, file: !1465, line: 200, baseType: !329, size: 64, offset: 64)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1549, file: !1465, line: 201, baseType: !1512, size: 64, offset: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1549, file: !1465, line: 202, baseType: !75, size: 64, offset: 192)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1549, file: !1465, line: 205, baseType: !148, size: 192, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1549, file: !1465, line: 206, baseType: !148, size: 192, offset: 448)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1549, file: !1465, line: 207, baseType: !127, size: 32, offset: 640)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1549, file: !1465, line: 208, baseType: !80, size: 128, offset: 704)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1549, file: !1465, line: 209, baseType: !252, size: 64, offset: 832)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1549, file: !1465, line: 211, baseType: !299, size: 64, offset: 896)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1549, file: !1465, line: 212, baseType: !198, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1549, file: !1465, line: 213, baseType: !198, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1549, file: !1465, line: 214, baseType: !1398, size: 64, offset: 1024)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1542, file: !1465, line: 223, baseType: !1565, size: 64, offset: 64)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = !DISubroutineType(types: !1567)
!1567 = !{null, !1548}
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1542, file: !1465, line: 236, baseType: !1569, size: 64, offset: 128)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = !DISubroutineType(types: !1571)
!1571 = !{!127, !1512, !75}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1542, file: !1465, line: 238, baseType: !1573, size: 64, offset: 192)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!75, !1512, !1576}
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1542, file: !1465, line: 239, baseType: !1578, size: 64, offset: 256)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!75, !1512, !75, !1576}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1542, file: !1465, line: 240, baseType: !1582, size: 64, offset: 320)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{null, !1512, !75}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1542, file: !1465, line: 242, baseType: !1586, size: 64, offset: 384)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!283, !1548, !252, !299, !332}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1542, file: !1465, line: 252, baseType: !299, size: 64, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1542, file: !1465, line: 259, baseType: !198, size: 8, offset: 512)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1542, file: !1465, line: 260, baseType: !1586, size: 64, offset: 576)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1542, file: !1465, line: 263, baseType: !1593, size: 64, offset: 640)
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DISubroutineType(types: !1595)
!1595 = !{!1596, !1548, !1598}
!1596 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1597, line: 52, baseType: !5)
!1597 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1598 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1599, size: 64)
!1599 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1465, line: 27, flags: DIFlagFwdDecl)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1542, file: !1465, line: 266, baseType: !1601, size: 64, offset: 704)
!1601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1602, size: 64)
!1602 = !DISubroutineType(types: !1603)
!1603 = !{!127, !1548, !339}
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1537, file: !1465, line: 109, baseType: !1605, size: 64, offset: 64)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1606, size: 64)
!1606 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1465, line: 31, flags: DIFlagFwdDecl)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1537, file: !1465, line: 110, baseType: !332, size: 64, offset: 128)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1537, file: !1465, line: 111, baseType: !1463, size: 64, offset: 192)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1464, file: !1465, line: 148, baseType: !75, size: 64, offset: 768)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1464, file: !1465, line: 154, baseType: !369, size: 64, offset: 832)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1464, file: !1465, line: 156, baseType: !294, size: 16, offset: 896)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1464, file: !1465, line: 157, baseType: !293, size: 16, offset: 912)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1464, file: !1465, line: 158, baseType: !1614, size: 64, offset: 960)
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1465, line: 32, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !213, file: !214, line: 71, baseType: !134, size: 32, offset: 448)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !213, file: !214, line: 75, baseType: !5, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !213, file: !214, line: 76, baseType: !5, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !213, file: !214, line: 77, baseType: !5, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !213, file: !214, line: 78, baseType: !5, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !213, file: !214, line: 79, baseType: !5, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !28, line: 463, baseType: !1623, size: 64, offset: 512)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !210, file: !28, line: 465, baseType: !1625, size: 64, offset: 576)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !28, line: 36, flags: DIFlagFwdDecl)
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !210, file: !28, line: 467, baseType: !167, size: 64, offset: 640)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !28, line: 468, baseType: !1629, size: 64, offset: 704)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1631)
!1631 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !28, line: 87, size: 384, elements: !1632)
!1632 = !{!1633, !1634, !1635, !1639, !1644, !1648}
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1631, file: !28, line: 88, baseType: !167, size: 64)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1631, file: !28, line: 89, baseType: !305, size: 64, offset: 64)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1631, file: !28, line: 90, baseType: !1636, size: 64, offset: 128)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!127, !1623, !247}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1631, file: !28, line: 91, baseType: !1640, size: 64, offset: 192)
!1640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1641, size: 64)
!1641 = !DISubroutineType(types: !1642)
!1642 = !{!252, !1623, !1643, !1449, !1455}
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1631, file: !28, line: 93, baseType: !1645, size: 64, offset: 256)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{null, !1623}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1631, file: !28, line: 95, baseType: !1649, size: 64, offset: 320)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1651)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !35, line: 278, size: 1472, elements: !1652)
!1652 = !{!1653, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676, !1677, !1678}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1651, file: !35, line: 279, baseType: !1654, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1655, size: 64)
!1655 = !DISubroutineType(types: !1656)
!1656 = !{!127, !1623}
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1651, file: !35, line: 280, baseType: !1645, size: 64, offset: 64)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1651, file: !35, line: 281, baseType: !1654, size: 64, offset: 128)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1651, file: !35, line: 282, baseType: !1654, size: 64, offset: 192)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1651, file: !35, line: 283, baseType: !1654, size: 64, offset: 256)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1651, file: !35, line: 284, baseType: !1654, size: 64, offset: 320)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1651, file: !35, line: 285, baseType: !1654, size: 64, offset: 384)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1651, file: !35, line: 286, baseType: !1654, size: 64, offset: 448)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1651, file: !35, line: 287, baseType: !1654, size: 64, offset: 512)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1651, file: !35, line: 288, baseType: !1654, size: 64, offset: 576)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1651, file: !35, line: 289, baseType: !1654, size: 64, offset: 640)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1651, file: !35, line: 290, baseType: !1654, size: 64, offset: 704)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1651, file: !35, line: 291, baseType: !1654, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1651, file: !35, line: 292, baseType: !1654, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1651, file: !35, line: 293, baseType: !1654, size: 64, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1651, file: !35, line: 294, baseType: !1654, size: 64, offset: 960)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1651, file: !35, line: 295, baseType: !1654, size: 64, offset: 1024)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1651, file: !35, line: 296, baseType: !1654, size: 64, offset: 1088)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1651, file: !35, line: 297, baseType: !1654, size: 64, offset: 1152)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1651, file: !35, line: 298, baseType: !1654, size: 64, offset: 1216)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1651, file: !35, line: 299, baseType: !1654, size: 64, offset: 1280)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1651, file: !35, line: 300, baseType: !1654, size: 64, offset: 1344)
!1678 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1651, file: !35, line: 301, baseType: !1654, size: 64, offset: 1408)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !210, file: !28, line: 470, baseType: !1680, size: 64, offset: 768)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1682, line: 82, size: 1408, elements: !1683)
!1682 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1683 = !{!1684, !1685, !1686, !1687, !1688, !1689, !1690, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1762, !1763, !1764, !1765, !1769, !1772, !1775}
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1681, file: !1682, line: 83, baseType: !167, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1681, file: !1682, line: 84, baseType: !167, size: 64, offset: 64)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1681, file: !1682, line: 85, baseType: !1623, size: 64, offset: 128)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1681, file: !1682, line: 86, baseType: !305, size: 64, offset: 192)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1681, file: !1682, line: 87, baseType: !305, size: 64, offset: 256)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1681, file: !1682, line: 88, baseType: !305, size: 64, offset: 320)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1681, file: !1682, line: 90, baseType: !1691, size: 64, offset: 384)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DISubroutineType(types: !1693)
!1693 = !{!127, !1623, !1694}
!1694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1695, size: 64)
!1695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !22, line: 95, size: 1152, elements: !1696)
!1696 = !{!1697, !1698, !1699, !1703, !1704, !1705, !1706, !1720, !1733, !1734, !1735, !1736, !1737, !1745, !1746, !1747, !1748, !1749, !1750}
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1695, file: !22, line: 96, baseType: !167, size: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1695, file: !22, line: 97, baseType: !1680, size: 64, offset: 64)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1695, file: !22, line: 99, baseType: !1700, size: 64, offset: 128)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1702, line: 76, flags: DIFlagFwdDecl)
!1702 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1695, file: !22, line: 100, baseType: !167, size: 64, offset: 192)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1695, file: !22, line: 102, baseType: !198, size: 8, offset: 256)
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1695, file: !22, line: 103, baseType: !21, size: 32, offset: 288)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1695, file: !22, line: 105, baseType: !1707, size: 64, offset: 320)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1709)
!1709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1710, line: 262, size: 1600, elements: !1711)
!1710 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1711 = !{!1712, !1714, !1715, !1719}
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1709, file: !1710, line: 263, baseType: !1713, size: 256)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 256, elements: !1260)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1709, file: !1710, line: 264, baseType: !1713, size: 256, offset: 256)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1709, file: !1710, line: 265, baseType: !1716, size: 1024, offset: 512)
!1716 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 1024, elements: !1717)
!1717 = !{!1718}
!1718 = !DISubrange(count: 128)
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1709, file: !1710, line: 266, baseType: !206, size: 64, offset: 1536)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1695, file: !22, line: 106, baseType: !1721, size: 64, offset: 384)
!1721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1722, size: 64)
!1722 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1723)
!1723 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1710, line: 210, size: 256, elements: !1724)
!1724 = !{!1725, !1729, !1731, !1732}
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1723, file: !1710, line: 211, baseType: !1726, size: 72)
!1726 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 72, elements: !1727)
!1727 = !{!1728}
!1728 = !DISubrange(count: 9)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1723, file: !1710, line: 212, baseType: !1730, size: 64, offset: 128)
!1730 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1710, line: 14, baseType: !128)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1723, file: !1710, line: 213, baseType: !173, size: 32, offset: 192)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1723, file: !1710, line: 214, baseType: !173, size: 32, offset: 224)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1695, file: !22, line: 108, baseType: !1654, size: 64, offset: 448)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1695, file: !22, line: 109, baseType: !1645, size: 64, offset: 512)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1695, file: !22, line: 110, baseType: !1654, size: 64, offset: 576)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1695, file: !22, line: 111, baseType: !1645, size: 64, offset: 640)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1695, file: !22, line: 112, baseType: !1738, size: 64, offset: 704)
!1738 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1739, size: 64)
!1739 = !DISubroutineType(types: !1740)
!1740 = !{!127, !1623, !1741}
!1741 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !35, line: 52, baseType: !1742)
!1742 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !35, line: 50, size: 32, elements: !1743)
!1743 = !{!1744}
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1742, file: !35, line: 51, baseType: !127, size: 32)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1695, file: !22, line: 113, baseType: !1654, size: 64, offset: 768)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1695, file: !22, line: 114, baseType: !305, size: 64, offset: 832)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1695, file: !22, line: 115, baseType: !305, size: 64, offset: 896)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1695, file: !22, line: 117, baseType: !1649, size: 64, offset: 960)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1695, file: !22, line: 118, baseType: !1645, size: 64, offset: 1024)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1695, file: !22, line: 120, baseType: !1751, size: 64, offset: 1088)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !22, line: 120, flags: DIFlagFwdDecl)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1681, file: !1682, line: 91, baseType: !1636, size: 64, offset: 448)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1681, file: !1682, line: 92, baseType: !1654, size: 64, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1681, file: !1682, line: 93, baseType: !1645, size: 64, offset: 576)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1681, file: !1682, line: 94, baseType: !1654, size: 64, offset: 640)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1681, file: !1682, line: 95, baseType: !1645, size: 64, offset: 704)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1681, file: !1682, line: 97, baseType: !1654, size: 64, offset: 768)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1681, file: !1682, line: 98, baseType: !1654, size: 64, offset: 832)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1681, file: !1682, line: 100, baseType: !1738, size: 64, offset: 896)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1681, file: !1682, line: 101, baseType: !1654, size: 64, offset: 960)
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1681, file: !1682, line: 103, baseType: !1654, size: 64, offset: 1024)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1681, file: !1682, line: 105, baseType: !1654, size: 64, offset: 1088)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1681, file: !1682, line: 107, baseType: !1649, size: 64, offset: 1152)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1681, file: !1682, line: 109, baseType: !1766, size: 64, offset: 1216)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1768)
!1768 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1682, line: 109, flags: DIFlagFwdDecl)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1681, file: !1682, line: 111, baseType: !1770, size: 64, offset: 1280)
!1770 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1771, size: 64)
!1771 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1682, line: 111, flags: DIFlagFwdDecl)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1681, file: !1682, line: 112, baseType: !1773, offset: 1344)
!1773 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1774, line: 187, elements: !116)
!1774 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1681, file: !1682, line: 114, baseType: !198, size: 8, offset: 1344)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !210, file: !28, line: 471, baseType: !1694, size: 64, offset: 832)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !210, file: !28, line: 473, baseType: !75, size: 64, offset: 896)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !210, file: !28, line: 475, baseType: !75, size: 64, offset: 960)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !210, file: !28, line: 480, baseType: !148, size: 192, offset: 1024)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !210, file: !28, line: 484, baseType: !1781, size: 576, offset: 1216)
!1781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !28, line: 361, size: 576, elements: !1782)
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1788}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1781, file: !28, line: 362, baseType: !80, size: 128)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1781, file: !28, line: 363, baseType: !80, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1781, file: !28, line: 364, baseType: !80, size: 128, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1781, file: !28, line: 365, baseType: !80, size: 128, offset: 384)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1781, file: !28, line: 366, baseType: !198, size: 8, offset: 512)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1781, file: !28, line: 367, baseType: !27, size: 32, offset: 544)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !210, file: !28, line: 485, baseType: !1790, size: 2304, offset: 1792)
!1790 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !35, line: 565, size: 2304, elements: !1791)
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804, !1805, !1806, !1807, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1874, !1875, !1876, !1877, !1891, !1895}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1790, file: !35, line: 566, baseType: !1741, size: 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1790, file: !35, line: 567, baseType: !5, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1790, file: !35, line: 568, baseType: !5, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1790, file: !35, line: 569, baseType: !198, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1790, file: !35, line: 570, baseType: !198, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1790, file: !35, line: 571, baseType: !198, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1790, file: !35, line: 572, baseType: !198, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1790, file: !35, line: 573, baseType: !198, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1790, file: !35, line: 574, baseType: !198, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1790, file: !35, line: 575, baseType: !198, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1790, file: !35, line: 576, baseType: !198, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1790, file: !35, line: 577, baseType: !172, size: 32, offset: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1790, file: !35, line: 578, baseType: !153, offset: 96)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1790, file: !35, line: 580, baseType: !80, size: 128, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1790, file: !35, line: 581, baseType: !778, size: 192, offset: 256)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1790, file: !35, line: 582, baseType: !1808, size: 64, offset: 448)
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1809, size: 64)
!1809 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1810, line: 43, size: 1472, elements: !1811)
!1810 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1811 = !{!1812, !1813, !1814, !1815, !1816, !1819, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1809, file: !1810, line: 44, baseType: !167, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1809, file: !1810, line: 45, baseType: !127, size: 32, offset: 64)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1809, file: !1810, line: 46, baseType: !80, size: 128, offset: 128)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1809, file: !1810, line: 47, baseType: !153, offset: 256)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1809, file: !1810, line: 48, baseType: !1817, size: 64, offset: 256)
!1817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1818, size: 64)
!1818 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !35, line: 533, flags: DIFlagFwdDecl)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1809, file: !1810, line: 49, baseType: !1820, size: 320, offset: 320)
!1820 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1821, line: 11, size: 320, elements: !1822)
!1821 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1822 = !{!1823, !1824, !1825, !1830}
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1820, file: !1821, line: 16, baseType: !742, size: 128)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1820, file: !1821, line: 17, baseType: !128, size: 64, offset: 128)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1820, file: !1821, line: 18, baseType: !1826, size: 64, offset: 192)
!1826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1827, size: 64)
!1827 = !DISubroutineType(types: !1828)
!1828 = !{null, !1829}
!1829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1820, size: 64)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1820, file: !1821, line: 19, baseType: !172, size: 32, offset: 256)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1809, file: !1810, line: 50, baseType: !128, size: 64, offset: 640)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1809, file: !1810, line: 51, baseType: !548, size: 64, offset: 704)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1809, file: !1810, line: 52, baseType: !548, size: 64, offset: 768)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1809, file: !1810, line: 53, baseType: !548, size: 64, offset: 832)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1809, file: !1810, line: 54, baseType: !548, size: 64, offset: 896)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1809, file: !1810, line: 55, baseType: !548, size: 64, offset: 960)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1809, file: !1810, line: 56, baseType: !128, size: 64, offset: 1024)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1809, file: !1810, line: 57, baseType: !128, size: 64, offset: 1088)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1809, file: !1810, line: 58, baseType: !128, size: 64, offset: 1152)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1809, file: !1810, line: 59, baseType: !128, size: 64, offset: 1216)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1809, file: !1810, line: 60, baseType: !128, size: 64, offset: 1280)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1809, file: !1810, line: 61, baseType: !1623, size: 64, offset: 1344)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1809, file: !1810, line: 62, baseType: !198, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1809, file: !1810, line: 63, baseType: !198, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1790, file: !35, line: 583, baseType: !198, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1790, file: !35, line: 584, baseType: !198, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1790, file: !35, line: 585, baseType: !198, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1790, file: !35, line: 586, baseType: !5, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1790, file: !35, line: 587, baseType: !5, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1790, file: !35, line: 592, baseType: !540, size: 512, offset: 576)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1790, file: !35, line: 593, baseType: !369, size: 64, offset: 1088)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1790, file: !35, line: 594, baseType: !1365, size: 256, offset: 1152)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1790, file: !35, line: 595, baseType: !749, size: 128, offset: 1408)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1790, file: !35, line: 596, baseType: !1817, size: 64, offset: 1536)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1790, file: !35, line: 597, baseType: !143, size: 32, offset: 1600)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1790, file: !35, line: 598, baseType: !143, size: 32, offset: 1632)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1790, file: !35, line: 599, baseType: !5, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1790, file: !35, line: 600, baseType: !5, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1790, file: !35, line: 601, baseType: !5, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1790, file: !35, line: 602, baseType: !5, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1790, file: !35, line: 603, baseType: !5, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1790, file: !35, line: 604, baseType: !198, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1790, file: !35, line: 605, baseType: !5, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1790, file: !35, line: 606, baseType: !5, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1790, file: !35, line: 607, baseType: !5, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1790, file: !35, line: 608, baseType: !5, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1790, file: !35, line: 609, baseType: !5, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1790, file: !35, line: 610, baseType: !5, size: 32, offset: 1696)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1790, file: !35, line: 611, baseType: !34, size: 32, offset: 1728)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1790, file: !35, line: 612, baseType: !42, size: 32, offset: 1760)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1790, file: !35, line: 613, baseType: !127, size: 32, offset: 1792)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1790, file: !35, line: 614, baseType: !127, size: 32, offset: 1824)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1790, file: !35, line: 615, baseType: !369, size: 64, offset: 1856)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1790, file: !35, line: 616, baseType: !369, size: 64, offset: 1920)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1790, file: !35, line: 617, baseType: !369, size: 64, offset: 1984)
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1790, file: !35, line: 618, baseType: !369, size: 64, offset: 2048)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1790, file: !35, line: 620, baseType: !1878, size: 64, offset: 2112)
!1878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1879, size: 64)
!1879 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !35, line: 536, size: 256, elements: !1880)
!1880 = !{!1881, !1882, !1883, !1884}
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1879, file: !35, line: 537, baseType: !153)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1879, file: !35, line: 538, baseType: !5, size: 32)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1879, file: !35, line: 540, baseType: !80, size: 128, offset: 64)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1879, file: !35, line: 543, baseType: !1885, size: 64, offset: 192)
!1885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1886, size: 64)
!1886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !1887, line: 182, size: 192, elements: !1888)
!1887 = !DIFile(filename: "./include/linux/pm_domain.h", directory: "/home/lizy2001/genbc/linux")
!1888 = !{!1889, !1890}
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !1886, file: !1887, line: 183, baseType: !80, size: 128)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1886, file: !1887, line: 184, baseType: !1623, size: 64, offset: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1790, file: !35, line: 621, baseType: !1892, size: 64, offset: 2176)
!1892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1893, size: 64)
!1893 = !DISubroutineType(types: !1894)
!1894 = !{null, !1623, !702}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1790, file: !35, line: 622, baseType: !1896, size: 64, offset: 2240)
!1896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1897, size: 64)
!1897 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !35, line: 622, flags: DIFlagFwdDecl)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !210, file: !28, line: 486, baseType: !1899, size: 64, offset: 4096)
!1899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1900, size: 64)
!1900 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !35, line: 642, size: 1792, elements: !1901)
!1901 = !{!1902, !1903, !1904, !1908, !1909, !1910}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1900, file: !35, line: 643, baseType: !1651, size: 1472)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1900, file: !35, line: 644, baseType: !1654, size: 64, offset: 1472)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1900, file: !35, line: 645, baseType: !1905, size: 64, offset: 1536)
!1905 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1906, size: 64)
!1906 = !DISubroutineType(types: !1907)
!1907 = !{null, !1623, !198}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1900, file: !35, line: 646, baseType: !1654, size: 64, offset: 1600)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1900, file: !35, line: 647, baseType: !1645, size: 64, offset: 1664)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1900, file: !35, line: 648, baseType: !1645, size: 64, offset: 1728)
!1911 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !210, file: !28, line: 493, baseType: !1912, size: 64, offset: 4160)
!1912 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1913 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !28, line: 493, flags: DIFlagFwdDecl)
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !210, file: !28, line: 499, baseType: !80, size: 128, offset: 4224)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !210, file: !28, line: 502, baseType: !1916, size: 64, offset: 4352)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !28, line: 502, flags: DIFlagFwdDecl)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !210, file: !28, line: 504, baseType: !1920, size: 64, offset: 4416)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !369, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !210, file: !28, line: 505, baseType: !369, size: 64, offset: 4480)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !210, file: !28, line: 510, baseType: !369, size: 64, offset: 4544)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !210, file: !28, line: 511, baseType: !1924, size: 64, offset: 4608)
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1926)
!1926 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !28, line: 511, flags: DIFlagFwdDecl)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !210, file: !28, line: 513, baseType: !1928, size: 64, offset: 4672)
!1928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1929, size: 64)
!1929 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !28, line: 288, size: 128, elements: !1930)
!1930 = !{!1931, !1932}
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1929, file: !28, line: 293, baseType: !5, size: 32)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1929, file: !28, line: 294, baseType: !128, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !210, file: !28, line: 515, baseType: !80, size: 128, offset: 4736)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !210, file: !28, line: 526, baseType: !1935, offset: 4864)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1936, line: 5, elements: !116)
!1936 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !210, file: !28, line: 528, baseType: !162, size: 64, offset: 4864)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !210, file: !28, line: 529, baseType: !180, size: 64, offset: 4928)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !210, file: !28, line: 534, baseType: !1940, size: 32, offset: 4992)
!1940 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !81, line: 16, baseType: !1941)
!1941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !81, line: 13, baseType: !172)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !210, file: !28, line: 535, baseType: !172, size: 32, offset: 5024)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !210, file: !28, line: 537, baseType: !153, offset: 5056)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !210, file: !28, line: 538, baseType: !80, size: 128, offset: 5056)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !210, file: !28, line: 540, baseType: !1946, size: 64, offset: 5184)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1948, line: 54, size: 960, elements: !1949)
!1948 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1949 = !{!1950, !1951, !1952, !1953, !1954, !1955, !1956, !1960, !1964, !1965, !1966, !1967, !1971, !1975, !1976}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1947, file: !1948, line: 55, baseType: !167, size: 64)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1947, file: !1948, line: 56, baseType: !1700, size: 64, offset: 64)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1947, file: !1948, line: 58, baseType: !305, size: 64, offset: 128)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1947, file: !1948, line: 59, baseType: !305, size: 64, offset: 192)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1947, file: !1948, line: 60, baseType: !219, size: 64, offset: 256)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1947, file: !1948, line: 62, baseType: !1636, size: 64, offset: 320)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1947, file: !1948, line: 63, baseType: !1957, size: 64, offset: 384)
!1957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1958, size: 64)
!1958 = !DISubroutineType(types: !1959)
!1959 = !{!252, !1623, !1643}
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1947, file: !1948, line: 65, baseType: !1961, size: 64, offset: 448)
!1961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1962, size: 64)
!1962 = !DISubroutineType(types: !1963)
!1963 = !{null, !1946}
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1947, file: !1948, line: 66, baseType: !1645, size: 64, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1947, file: !1948, line: 68, baseType: !1654, size: 64, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1947, file: !1948, line: 70, baseType: !1414, size: 64, offset: 640)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1947, file: !1948, line: 71, baseType: !1968, size: 64, offset: 704)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!206, !1623}
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1947, file: !1948, line: 73, baseType: !1972, size: 64, offset: 768)
!1972 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1973, size: 64)
!1973 = !DISubroutineType(types: !1974)
!1974 = !{null, !1623, !1449, !1455}
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1947, file: !1948, line: 75, baseType: !1649, size: 64, offset: 832)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1947, file: !1948, line: 77, baseType: !1770, size: 64, offset: 896)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !210, file: !28, line: 541, baseType: !305, size: 64, offset: 5248)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !210, file: !28, line: 543, baseType: !1645, size: 64, offset: 5312)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !210, file: !28, line: 544, baseType: !1980, size: 64, offset: 5376)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !28, line: 45, flags: DIFlagFwdDecl)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !210, file: !28, line: 545, baseType: !1983, size: 64, offset: 5440)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !28, line: 47, flags: DIFlagFwdDecl)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !210, file: !28, line: 547, baseType: !198, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !210, file: !28, line: 548, baseType: !198, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !210, file: !28, line: 549, baseType: !198, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !210, file: !28, line: 550, baseType: !198, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !184, file: !177, line: 116, baseType: !1990, size: 64, offset: 256)
!1990 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1991, size: 64)
!1991 = !DISubroutineType(types: !1992)
!1992 = !{!198, !200, !167}
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !184, file: !177, line: 118, baseType: !1994, size: 64, offset: 320)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{!127, !200, !167, !5, !75, !299}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !184, file: !177, line: 123, baseType: !1998, size: 64, offset: 384)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = !DISubroutineType(types: !2000)
!2000 = !{!127, !200, !167, !2001, !299}
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !184, file: !177, line: 126, baseType: !2003, size: 64, offset: 448)
!2003 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2004, size: 64)
!2004 = !DISubroutineType(types: !2005)
!2005 = !{!167, !200}
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !184, file: !177, line: 127, baseType: !2003, size: 64, offset: 512)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !184, file: !177, line: 128, baseType: !2008, size: 64, offset: 576)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!180, !200}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !184, file: !177, line: 130, baseType: !2012, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!180, !200, !180}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !184, file: !177, line: 133, baseType: !2016, size: 64, offset: 704)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!180, !200, !167}
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !184, file: !177, line: 135, baseType: !2020, size: 64, offset: 768)
!2020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2021, size: 64)
!2021 = !DISubroutineType(types: !2022)
!2022 = !{!127, !200, !167, !167, !5, !5, !2023}
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !177, line: 43, size: 640, elements: !2025)
!2025 = !{!2026, !2027, !2028}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2024, file: !177, line: 44, baseType: !180, size: 64)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2024, file: !177, line: 45, baseType: !5, size: 32, offset: 64)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2024, file: !177, line: 46, baseType: !2029, size: 512, offset: 128)
!2029 = !DICompositeType(tag: DW_TAG_array_type, baseType: !369, size: 512, elements: !578)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !184, file: !177, line: 140, baseType: !2012, size: 64, offset: 832)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !184, file: !177, line: 143, baseType: !2008, size: 64, offset: 896)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !184, file: !177, line: 145, baseType: !187, size: 64, offset: 960)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !184, file: !177, line: 146, baseType: !2034, size: 64, offset: 1024)
!2034 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2035, size: 64)
!2035 = !DISubroutineType(types: !2036)
!2036 = !{!127, !200, !2037}
!2037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2038, size: 64)
!2038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !177, line: 29, size: 128, elements: !2039)
!2039 = !{!2040, !2041, !2042}
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2038, file: !177, line: 30, baseType: !5, size: 32)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2038, file: !177, line: 31, baseType: !5, size: 32, offset: 32)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2038, file: !177, line: 32, baseType: !200, size: 64, offset: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !184, file: !177, line: 148, baseType: !2044, size: 64, offset: 1088)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!127, !200, !1623}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !176, file: !177, line: 20, baseType: !1623, size: 64, offset: 128)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !163, file: !164, line: 57, baseType: !2049, size: 64, offset: 384)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !164, line: 31, size: 704, elements: !2051)
!2051 = !{!2052, !2053, !2054, !2055, !2056}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2050, file: !164, line: 32, baseType: !252, size: 64)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2050, file: !164, line: 33, baseType: !127, size: 32, offset: 64)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2050, file: !164, line: 34, baseType: !75, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2050, file: !164, line: 35, baseType: !2049, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2050, file: !164, line: 43, baseType: !320, size: 448, offset: 256)
!2057 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !163, file: !164, line: 58, baseType: !2049, size: 64, offset: 448)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !163, file: !164, line: 59, baseType: !162, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !163, file: !164, line: 60, baseType: !162, size: 64, offset: 576)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !163, file: !164, line: 61, baseType: !162, size: 64, offset: 640)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !163, file: !164, line: 63, baseType: !213, size: 512, offset: 704)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !163, file: !164, line: 65, baseType: !128, size: 64, offset: 1216)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !163, file: !164, line: 66, baseType: !75, size: 64, offset: 1280)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "clock_latency_ns_max", scope: !77, file: !49, line: 178, baseType: !128, size: 64, offset: 1024)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "voltage_tolerance_v1", scope: !77, file: !49, line: 181, baseType: !5, size: 32, offset: 1088)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "parsed_static_opps", scope: !77, file: !49, line: 183, baseType: !5, size: 32, offset: 1120)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "shared_opp", scope: !77, file: !49, line: 184, baseType: !48, size: 32, offset: 1152)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_opp", scope: !77, file: !49, line: 185, baseType: !2069, size: 64, offset: 1216)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_opp", file: !49, line: 73, size: 768, elements: !2071)
!2071 = !{!2072, !2073, !2074, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2089, !2095, !2096, !2098, !2099}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2070, file: !49, line: 74, baseType: !80, size: 128)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !2070, file: !49, line: 75, baseType: !134, size: 32, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "available", scope: !2070, file: !49, line: 77, baseType: !198, size: 8, offset: 160)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic", scope: !2070, file: !49, line: 78, baseType: !198, size: 8, offset: 168)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "turbo", scope: !2070, file: !49, line: 79, baseType: !198, size: 8, offset: 176)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2070, file: !49, line: 80, baseType: !198, size: 8, offset: 184)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "pstate", scope: !2070, file: !49, line: 81, baseType: !5, size: 32, offset: 192)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !2070, file: !49, line: 82, baseType: !128, size: 64, offset: 256)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2070, file: !49, line: 83, baseType: !5, size: 32, offset: 320)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "supplies", scope: !2070, file: !49, line: 85, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_opp_supply", file: !67, line: 38, size: 256, elements: !2084)
!2084 = !{!2085, !2086, !2087, !2088}
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "u_volt", scope: !2083, file: !67, line: 39, baseType: !128, size: 64)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "u_volt_min", scope: !2083, file: !67, line: 40, baseType: !128, size: 64, offset: 64)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "u_volt_max", scope: !2083, file: !67, line: 41, baseType: !128, size: 64, offset: 128)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "u_amp", scope: !2083, file: !67, line: 42, baseType: !128, size: 64, offset: 192)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "bandwidth", scope: !2070, file: !49, line: 86, baseType: !2090, size: 64, offset: 448)
!2090 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2091, size: 64)
!2091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_opp_icc_bw", file: !67, line: 52, size: 64, elements: !2092)
!2092 = !{!2093, !2094}
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "avg", scope: !2091, file: !67, line: 53, baseType: !172, size: 32)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "peak", scope: !2091, file: !67, line: 54, baseType: !172, size: 32, offset: 32)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "clock_latency_ns", scope: !2070, file: !49, line: 88, baseType: !128, size: 64, offset: 512)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "required_opps", scope: !2070, file: !49, line: 90, baseType: !2097, size: 64, offset: 576)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2069, size: 64)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "opp_table", scope: !2070, file: !49, line: 91, baseType: !76, size: 64, offset: 640)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "np", scope: !2070, file: !49, line: 93, baseType: !162, size: 64, offset: 704)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "genpd_virt_dev_lock", scope: !77, file: !49, line: 187, baseType: !148, size: 192, offset: 1280)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "genpd_virt_devs", scope: !77, file: !49, line: 188, baseType: !2102, size: 64, offset: 1472)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "required_opp_tables", scope: !77, file: !49, line: 189, baseType: !2104, size: 64, offset: 1536)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "required_opp_count", scope: !77, file: !49, line: 190, baseType: !5, size: 32, offset: 1600)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "supported_hw", scope: !77, file: !49, line: 192, baseType: !2107, size: 64, offset: 1664)
!2107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5, size: 64)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "supported_hw_count", scope: !77, file: !49, line: 193, baseType: !5, size: 32, offset: 1728)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "prop_name", scope: !77, file: !49, line: 194, baseType: !167, size: 64, offset: 1792)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !77, file: !49, line: 195, baseType: !2111, size: 64, offset: 1856)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !67, line: 18, flags: DIFlagFwdDecl)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "regulators", scope: !77, file: !49, line: 196, baseType: !2114, size: 64, offset: 1920)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "regulator", file: !67, line: 19, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "regulator_count", scope: !77, file: !49, line: 197, baseType: !127, size: 32, offset: 1984)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "paths", scope: !77, file: !49, line: 198, baseType: !2119, size: 64, offset: 2048)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2121, size: 64)
!2121 = !DICompositeType(tag: DW_TAG_structure_type, name: "icc_path", file: !2122, line: 23, flags: DIFlagFwdDecl)
!2122 = !DIFile(filename: "./include/linux/interconnect.h", directory: "/home/lizy2001/genbc/linux")
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "path_count", scope: !77, file: !49, line: 199, baseType: !5, size: 32, offset: 2112)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !77, file: !49, line: 200, baseType: !198, size: 8, offset: 2144)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "genpd_performance_state", scope: !77, file: !49, line: 201, baseType: !198, size: 8, offset: 2152)
!2126 = !DIDerivedType(tag: DW_TAG_member, name: "is_genpd", scope: !77, file: !49, line: 202, baseType: !198, size: 8, offset: 2160)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "set_opp", scope: !77, file: !49, line: 204, baseType: !2128, size: 64, offset: 2176)
!2128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2129, size: 64)
!2129 = !DISubroutineType(types: !2130)
!2130 = !{!127, !2131}
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_set_opp_data", file: !67, line: 80, size: 512, elements: !2133)
!2133 = !{!2134, !2139, !2140, !2141, !2142, !2143}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "old_opp", scope: !2132, file: !67, line: 81, baseType: !2135, size: 128)
!2135 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_opp_info", file: !67, line: 64, size: 128, elements: !2136)
!2136 = !{!2137, !2138}
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !2135, file: !67, line: 65, baseType: !128, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "supplies", scope: !2135, file: !67, line: 66, baseType: !2082, size: 64, offset: 64)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "new_opp", scope: !2132, file: !67, line: 82, baseType: !2135, size: 128, offset: 128)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "regulators", scope: !2132, file: !67, line: 84, baseType: !2114, size: 64, offset: 256)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "regulator_count", scope: !2132, file: !67, line: 85, baseType: !5, size: 32, offset: 320)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !2132, file: !67, line: 86, baseType: !2111, size: 64, offset: 384)
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2132, file: !67, line: 87, baseType: !1623, size: 64, offset: 448)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "set_opp_data", scope: !77, file: !49, line: 205, baseType: !2131, size: 64, offset: 2240)
!2145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2146, size: 64)
!2146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !625)
!2147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !169)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!2151 = !{i32 7, !"Dwarf Version", i32 4}
!2152 = !{i32 2, !"Debug Info Version", i32 3}
!2153 = !{i32 1, !"wchar_size", i32 2}
!2154 = !{i32 1, !"Code Model", i32 2}
!2155 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2156 = distinct !DISubprogram(name: "dev_pm_opp_of_get_opp_desc_node", scope: !1, file: !1, line: 36, type: !2157, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{!162, !1623}
!2159 = !DILocalVariable(name: "dev", arg: 1, scope: !2156, file: !1, line: 36, type: !1623)
!2160 = !DILocation(line: 36, column: 68, scope: !2156)
!2161 = !DILocation(line: 38, column: 35, scope: !2156)
!2162 = !DILocation(line: 38, column: 40, scope: !2156)
!2163 = !DILocation(line: 38, column: 9, scope: !2156)
!2164 = !DILocation(line: 38, column: 2, scope: !2156)
!2165 = distinct !DISubprogram(name: "_opp_of_get_opp_desc_node", scope: !1, file: !1, line: 28, type: !2166, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2166 = !DISubroutineType(types: !2167)
!2167 = !{!162, !162, !127}
!2168 = !DILocalVariable(name: "np", arg: 1, scope: !2165, file: !1, line: 28, type: !162)
!2169 = !DILocation(line: 28, column: 74, scope: !2165)
!2170 = !DILocalVariable(name: "index", arg: 2, scope: !2165, file: !1, line: 29, type: !127)
!2171 = !DILocation(line: 29, column: 16, scope: !2165)
!2172 = !DILocation(line: 32, column: 26, scope: !2165)
!2173 = !DILocation(line: 32, column: 53, scope: !2165)
!2174 = !DILocation(line: 32, column: 9, scope: !2165)
!2175 = !DILocation(line: 32, column: 2, scope: !2165)
!2176 = distinct !DISubprogram(name: "_managed_opp", scope: !1, file: !1, line: 42, type: !2177, scopeLine: 43, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2177 = !DISubroutineType(types: !2178)
!2178 = !{!76, !1623, !127}
!2179 = !DILocalVariable(name: "dev", arg: 1, scope: !2176, file: !1, line: 42, type: !1623)
!2180 = !DILocation(line: 42, column: 47, scope: !2176)
!2181 = !DILocalVariable(name: "index", arg: 2, scope: !2176, file: !1, line: 42, type: !127)
!2182 = !DILocation(line: 42, column: 56, scope: !2176)
!2183 = !DILocalVariable(name: "opp_table", scope: !2176, file: !1, line: 44, type: !76)
!2184 = !DILocation(line: 44, column: 20, scope: !2176)
!2185 = !DILocalVariable(name: "managed_table", scope: !2176, file: !1, line: 44, type: !76)
!2186 = !DILocation(line: 44, column: 32, scope: !2176)
!2187 = !DILocalVariable(name: "np", scope: !2176, file: !1, line: 45, type: !162)
!2188 = !DILocation(line: 45, column: 22, scope: !2176)
!2189 = !DILocation(line: 47, column: 33, scope: !2176)
!2190 = !DILocation(line: 47, column: 38, scope: !2176)
!2191 = !DILocation(line: 47, column: 47, scope: !2176)
!2192 = !DILocation(line: 47, column: 7, scope: !2176)
!2193 = !DILocation(line: 47, column: 5, scope: !2176)
!2194 = !DILocation(line: 48, column: 7, scope: !2195)
!2195 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 48, column: 6)
!2196 = !DILocation(line: 48, column: 6, scope: !2176)
!2197 = !DILocation(line: 49, column: 3, scope: !2195)
!2198 = !DILocalVariable(name: "__mptr", scope: !2199, file: !1, line: 51, type: !75)
!2199 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 51, column: 2)
!2200 = distinct !DILexicalBlock(scope: !2176, file: !1, line: 51, column: 2)
!2201 = !DILocation(line: 51, column: 2, scope: !2199)
!2202 = !DILocation(line: 51, column: 2, scope: !2203)
!2203 = distinct !DILexicalBlock(scope: !2199, file: !1, line: 51, column: 2)
!2204 = !DILocation(line: 51, column: 2, scope: !2200)
!2205 = !DILocation(line: 51, column: 2, scope: !2206)
!2206 = distinct !DILexicalBlock(scope: !2200, file: !1, line: 51, column: 2)
!2207 = !DILocation(line: 52, column: 7, scope: !2208)
!2208 = distinct !DILexicalBlock(scope: !2209, file: !1, line: 52, column: 7)
!2209 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 51, column: 52)
!2210 = !DILocation(line: 52, column: 18, scope: !2208)
!2211 = !DILocation(line: 52, column: 24, scope: !2208)
!2212 = !DILocation(line: 52, column: 21, scope: !2208)
!2213 = !DILocation(line: 52, column: 7, scope: !2209)
!2214 = !DILocation(line: 60, column: 8, scope: !2215)
!2215 = distinct !DILexicalBlock(scope: !2216, file: !1, line: 60, column: 8)
!2216 = distinct !DILexicalBlock(scope: !2208, file: !1, line: 52, column: 28)
!2217 = !DILocation(line: 60, column: 19, scope: !2215)
!2218 = !DILocation(line: 60, column: 30, scope: !2215)
!2219 = !DILocation(line: 60, column: 8, scope: !2216)
!2220 = !DILocation(line: 61, column: 25, scope: !2221)
!2221 = distinct !DILexicalBlock(scope: !2215, file: !1, line: 60, column: 58)
!2222 = !DILocation(line: 61, column: 5, scope: !2221)
!2223 = !DILocation(line: 62, column: 21, scope: !2221)
!2224 = !DILocation(line: 62, column: 19, scope: !2221)
!2225 = !DILocation(line: 63, column: 4, scope: !2221)
!2226 = !DILocation(line: 65, column: 4, scope: !2216)
!2227 = !DILocation(line: 67, column: 2, scope: !2209)
!2228 = !DILocalVariable(name: "__mptr", scope: !2229, file: !1, line: 51, type: !75)
!2229 = distinct !DILexicalBlock(scope: !2206, file: !1, line: 51, column: 2)
!2230 = !DILocation(line: 51, column: 2, scope: !2229)
!2231 = !DILocation(line: 51, column: 2, scope: !2232)
!2232 = distinct !DILexicalBlock(scope: !2229, file: !1, line: 51, column: 2)
!2233 = distinct !{!2233, !2204, !2234}
!2234 = !DILocation(line: 67, column: 2, scope: !2200)
!2235 = !DILocation(line: 69, column: 14, scope: !2176)
!2236 = !DILocation(line: 69, column: 2, scope: !2176)
!2237 = !DILocation(line: 71, column: 9, scope: !2176)
!2238 = !DILocation(line: 71, column: 2, scope: !2176)
!2239 = !DILocation(line: 72, column: 1, scope: !2176)
!2240 = distinct !DISubprogram(name: "of_node_put", scope: !164, file: !164, line: 129, type: !2241, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2241 = !DISubroutineType(types: !2242)
!2242 = !{null, !162}
!2243 = !DILocalVariable(name: "node", arg: 1, scope: !2240, file: !164, line: 129, type: !162)
!2244 = !DILocation(line: 129, column: 52, scope: !2240)
!2245 = !DILocation(line: 129, column: 60, scope: !2240)
!2246 = distinct !DISubprogram(name: "_of_init_opp_table", scope: !1, file: !1, line: 219, type: !2247, scopeLine: 221, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2247 = !DISubroutineType(types: !2248)
!2248 = !{null, !76, !1623, !127}
!2249 = !DILocalVariable(name: "opp_table", arg: 1, scope: !2246, file: !1, line: 219, type: !76)
!2250 = !DILocation(line: 219, column: 43, scope: !2246)
!2251 = !DILocalVariable(name: "dev", arg: 2, scope: !2246, file: !1, line: 219, type: !1623)
!2252 = !DILocation(line: 219, column: 69, scope: !2246)
!2253 = !DILocalVariable(name: "index", arg: 3, scope: !2246, file: !1, line: 220, type: !127)
!2254 = !DILocation(line: 220, column: 8, scope: !2246)
!2255 = !DILocalVariable(name: "np", scope: !2246, file: !1, line: 222, type: !162)
!2256 = !DILocation(line: 222, column: 22, scope: !2246)
!2257 = !DILocalVariable(name: "opp_np", scope: !2246, file: !1, line: 222, type: !162)
!2258 = !DILocation(line: 222, column: 27, scope: !2246)
!2259 = !DILocalVariable(name: "val", scope: !2246, file: !1, line: 223, type: !172)
!2260 = !DILocation(line: 223, column: 6, scope: !2246)
!2261 = !DILocation(line: 229, column: 19, scope: !2246)
!2262 = !DILocation(line: 229, column: 24, scope: !2246)
!2263 = !DILocation(line: 229, column: 7, scope: !2246)
!2264 = !DILocation(line: 229, column: 5, scope: !2246)
!2265 = !DILocation(line: 230, column: 7, scope: !2266)
!2266 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 230, column: 6)
!2267 = !DILocation(line: 230, column: 6, scope: !2246)
!2268 = !DILocation(line: 231, column: 3, scope: !2266)
!2269 = !DILocation(line: 233, column: 28, scope: !2270)
!2270 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 233, column: 6)
!2271 = !DILocation(line: 233, column: 7, scope: !2270)
!2272 = !DILocation(line: 233, column: 6, scope: !2246)
!2273 = !DILocation(line: 234, column: 37, scope: !2270)
!2274 = !DILocation(line: 234, column: 3, scope: !2270)
!2275 = !DILocation(line: 234, column: 14, scope: !2270)
!2276 = !DILocation(line: 234, column: 35, scope: !2270)
!2277 = !DILocation(line: 235, column: 23, scope: !2246)
!2278 = !DILocation(line: 236, column: 10, scope: !2246)
!2279 = !DILocation(line: 236, column: 21, scope: !2246)
!2280 = !DILocation(line: 235, column: 2, scope: !2246)
!2281 = !DILocation(line: 238, column: 23, scope: !2282)
!2282 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 238, column: 6)
!2283 = !DILocation(line: 238, column: 6, scope: !2282)
!2284 = !DILocation(line: 238, column: 6, scope: !2246)
!2285 = !DILocation(line: 239, column: 3, scope: !2282)
!2286 = !DILocation(line: 239, column: 14, scope: !2282)
!2287 = !DILocation(line: 239, column: 23, scope: !2282)
!2288 = !DILocation(line: 242, column: 37, scope: !2246)
!2289 = !DILocation(line: 242, column: 41, scope: !2246)
!2290 = !DILocation(line: 242, column: 11, scope: !2246)
!2291 = !DILocation(line: 242, column: 9, scope: !2246)
!2292 = !DILocation(line: 243, column: 14, scope: !2246)
!2293 = !DILocation(line: 243, column: 2, scope: !2246)
!2294 = !DILocation(line: 245, column: 7, scope: !2295)
!2295 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 245, column: 6)
!2296 = !DILocation(line: 245, column: 6, scope: !2246)
!2297 = !DILocation(line: 246, column: 3, scope: !2295)
!2298 = !DILocation(line: 248, column: 28, scope: !2299)
!2299 = distinct !DILexicalBlock(scope: !2246, file: !1, line: 248, column: 6)
!2300 = !DILocation(line: 248, column: 6, scope: !2299)
!2301 = !DILocation(line: 248, column: 6, scope: !2246)
!2302 = !DILocation(line: 249, column: 3, scope: !2299)
!2303 = !DILocation(line: 249, column: 14, scope: !2299)
!2304 = !DILocation(line: 249, column: 25, scope: !2299)
!2305 = !DILocation(line: 251, column: 3, scope: !2299)
!2306 = !DILocation(line: 251, column: 14, scope: !2299)
!2307 = !DILocation(line: 251, column: 25, scope: !2299)
!2308 = !DILocation(line: 253, column: 18, scope: !2246)
!2309 = !DILocation(line: 253, column: 2, scope: !2246)
!2310 = !DILocation(line: 253, column: 13, scope: !2246)
!2311 = !DILocation(line: 253, column: 16, scope: !2246)
!2312 = !DILocation(line: 255, column: 35, scope: !2246)
!2313 = !DILocation(line: 255, column: 46, scope: !2246)
!2314 = !DILocation(line: 255, column: 51, scope: !2246)
!2315 = !DILocation(line: 255, column: 2, scope: !2246)
!2316 = !DILocation(line: 256, column: 14, scope: !2246)
!2317 = !DILocation(line: 256, column: 2, scope: !2246)
!2318 = !DILocation(line: 257, column: 1, scope: !2246)
!2319 = distinct !DISubprogram(name: "of_node_get", scope: !164, file: !164, line: 125, type: !2320, scopeLine: 126, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2320 = !DISubroutineType(types: !2321)
!2321 = !{!162, !162}
!2322 = !DILocalVariable(name: "node", arg: 1, scope: !2319, file: !164, line: 125, type: !162)
!2323 = !DILocation(line: 125, column: 67, scope: !2319)
!2324 = !DILocation(line: 127, column: 9, scope: !2319)
!2325 = !DILocation(line: 127, column: 2, scope: !2319)
!2326 = distinct !DISubprogram(name: "of_property_read_u32", scope: !164, file: !164, line: 1214, type: !2327, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2327 = !DISubroutineType(types: !2328)
!2328 = !{!127, !2329, !167, !673}
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !163)
!2331 = !DILocalVariable(name: "np", arg: 1, scope: !2326, file: !164, line: 1214, type: !2329)
!2332 = !DILocation(line: 1214, column: 66, scope: !2326)
!2333 = !DILocalVariable(name: "propname", arg: 2, scope: !2326, file: !164, line: 1215, type: !167)
!2334 = !DILocation(line: 1215, column: 24, scope: !2326)
!2335 = !DILocalVariable(name: "out_value", arg: 3, scope: !2326, file: !164, line: 1216, type: !673)
!2336 = !DILocation(line: 1216, column: 17, scope: !2326)
!2337 = !DILocation(line: 1218, column: 36, scope: !2326)
!2338 = !DILocation(line: 1218, column: 40, scope: !2326)
!2339 = !DILocation(line: 1218, column: 50, scope: !2326)
!2340 = !DILocation(line: 1218, column: 9, scope: !2326)
!2341 = !DILocation(line: 1218, column: 2, scope: !2326)
!2342 = distinct !DISubprogram(name: "of_property_read_bool", scope: !164, file: !164, line: 1192, type: !2343, scopeLine: 1194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2343 = !DISubroutineType(types: !2344)
!2344 = !{!198, !2329, !167}
!2345 = !DILocalVariable(name: "np", arg: 1, scope: !2342, file: !164, line: 1192, type: !2329)
!2346 = !DILocation(line: 1192, column: 68, scope: !2342)
!2347 = !DILocalVariable(name: "propname", arg: 2, scope: !2342, file: !164, line: 1193, type: !167)
!2348 = !DILocation(line: 1193, column: 19, scope: !2342)
!2349 = !DILocalVariable(name: "prop", scope: !2342, file: !164, line: 1195, type: !2049)
!2350 = !DILocation(line: 1195, column: 19, scope: !2342)
!2351 = !DILocation(line: 1195, column: 43, scope: !2342)
!2352 = !DILocation(line: 1195, column: 47, scope: !2342)
!2353 = !DILocation(line: 1195, column: 26, scope: !2342)
!2354 = !DILocation(line: 1197, column: 9, scope: !2342)
!2355 = !DILocation(line: 1197, column: 2, scope: !2342)
!2356 = distinct !DISubprogram(name: "_opp_table_alloc_required_tables", scope: !1, file: !1, line: 161, type: !2357, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2357 = !DISubroutineType(types: !2358)
!2358 = !{null, !76, !1623, !162}
!2359 = !DILocalVariable(name: "opp_table", arg: 1, scope: !2356, file: !1, line: 161, type: !76)
!2360 = !DILocation(line: 161, column: 64, scope: !2356)
!2361 = !DILocalVariable(name: "dev", arg: 2, scope: !2356, file: !1, line: 162, type: !1623)
!2362 = !DILocation(line: 162, column: 26, scope: !2356)
!2363 = !DILocalVariable(name: "opp_np", arg: 3, scope: !2356, file: !1, line: 163, type: !162)
!2364 = !DILocation(line: 163, column: 31, scope: !2356)
!2365 = !DILocalVariable(name: "required_opp_tables", scope: !2356, file: !1, line: 165, type: !2104)
!2366 = !DILocation(line: 165, column: 21, scope: !2356)
!2367 = !DILocalVariable(name: "required_np", scope: !2356, file: !1, line: 166, type: !162)
!2368 = !DILocation(line: 166, column: 22, scope: !2356)
!2369 = !DILocalVariable(name: "np", scope: !2356, file: !1, line: 166, type: !162)
!2370 = !DILocation(line: 166, column: 36, scope: !2356)
!2371 = !DILocalVariable(name: "count", scope: !2356, file: !1, line: 167, type: !127)
!2372 = !DILocation(line: 167, column: 6, scope: !2356)
!2373 = !DILocalVariable(name: "i", scope: !2356, file: !1, line: 167, type: !127)
!2374 = !DILocation(line: 167, column: 13, scope: !2356)
!2375 = !DILocation(line: 170, column: 35, scope: !2356)
!2376 = !DILocation(line: 170, column: 7, scope: !2356)
!2377 = !DILocation(line: 170, column: 5, scope: !2356)
!2378 = !DILocation(line: 171, column: 7, scope: !2379)
!2379 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 171, column: 6)
!2380 = !DILocation(line: 171, column: 6, scope: !2356)
!2381 = !DILocation(line: 172, column: 3, scope: !2382)
!2382 = distinct !DILexicalBlock(scope: !2379, file: !1, line: 171, column: 11)
!2383 = !DILocation(line: 173, column: 3, scope: !2382)
!2384 = !DILocation(line: 176, column: 37, scope: !2356)
!2385 = !DILocation(line: 176, column: 10, scope: !2356)
!2386 = !DILocation(line: 176, column: 8, scope: !2356)
!2387 = !DILocation(line: 177, column: 7, scope: !2388)
!2388 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 177, column: 6)
!2389 = !DILocation(line: 177, column: 6, scope: !2356)
!2390 = !DILocation(line: 178, column: 3, scope: !2388)
!2391 = !DILocation(line: 180, column: 32, scope: !2356)
!2392 = !DILocation(line: 180, column: 24, scope: !2356)
!2393 = !DILocation(line: 180, column: 22, scope: !2356)
!2394 = !DILocation(line: 182, column: 7, scope: !2395)
!2395 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 182, column: 6)
!2396 = !DILocation(line: 182, column: 6, scope: !2356)
!2397 = !DILocation(line: 183, column: 3, scope: !2395)
!2398 = !DILocation(line: 185, column: 35, scope: !2356)
!2399 = !DILocation(line: 185, column: 2, scope: !2356)
!2400 = !DILocation(line: 185, column: 13, scope: !2356)
!2401 = !DILocation(line: 185, column: 33, scope: !2356)
!2402 = !DILocation(line: 186, column: 34, scope: !2356)
!2403 = !DILocation(line: 186, column: 2, scope: !2356)
!2404 = !DILocation(line: 186, column: 13, scope: !2356)
!2405 = !DILocation(line: 186, column: 32, scope: !2356)
!2406 = !DILocation(line: 188, column: 9, scope: !2407)
!2407 = distinct !DILexicalBlock(scope: !2356, file: !1, line: 188, column: 2)
!2408 = !DILocation(line: 188, column: 7, scope: !2407)
!2409 = !DILocation(line: 188, column: 14, scope: !2410)
!2410 = distinct !DILexicalBlock(scope: !2407, file: !1, line: 188, column: 2)
!2411 = !DILocation(line: 188, column: 18, scope: !2410)
!2412 = !DILocation(line: 188, column: 16, scope: !2410)
!2413 = !DILocation(line: 188, column: 2, scope: !2407)
!2414 = !DILocation(line: 189, column: 39, scope: !2415)
!2415 = distinct !DILexicalBlock(scope: !2410, file: !1, line: 188, column: 30)
!2416 = !DILocation(line: 189, column: 43, scope: !2415)
!2417 = !DILocation(line: 189, column: 17, scope: !2415)
!2418 = !DILocation(line: 189, column: 15, scope: !2415)
!2419 = !DILocation(line: 190, column: 8, scope: !2420)
!2420 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 190, column: 7)
!2421 = !DILocation(line: 190, column: 7, scope: !2415)
!2422 = !DILocation(line: 191, column: 4, scope: !2420)
!2423 = !DILocation(line: 193, column: 50, scope: !2415)
!2424 = !DILocation(line: 193, column: 28, scope: !2415)
!2425 = !DILocation(line: 193, column: 3, scope: !2415)
!2426 = !DILocation(line: 193, column: 23, scope: !2415)
!2427 = !DILocation(line: 193, column: 26, scope: !2415)
!2428 = !DILocation(line: 194, column: 15, scope: !2415)
!2429 = !DILocation(line: 194, column: 3, scope: !2415)
!2430 = !DILocation(line: 196, column: 14, scope: !2431)
!2431 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 196, column: 7)
!2432 = !DILocation(line: 196, column: 34, scope: !2431)
!2433 = !DILocation(line: 196, column: 7, scope: !2431)
!2434 = !DILocation(line: 196, column: 7, scope: !2415)
!2435 = !DILocation(line: 197, column: 4, scope: !2431)
!2436 = !DILocation(line: 204, column: 8, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2415, file: !1, line: 204, column: 7)
!2438 = !DILocation(line: 204, column: 28, scope: !2437)
!2439 = !DILocation(line: 204, column: 32, scope: !2437)
!2440 = !DILocation(line: 204, column: 7, scope: !2415)
!2441 = !DILocation(line: 205, column: 4, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2437, file: !1, line: 204, column: 42)
!2443 = !DILocation(line: 207, column: 4, scope: !2442)
!2444 = !DILocation(line: 209, column: 2, scope: !2415)
!2445 = !DILocation(line: 188, column: 26, scope: !2410)
!2446 = !DILocation(line: 188, column: 2, scope: !2410)
!2447 = distinct !{!2447, !2413, !2448}
!2448 = !DILocation(line: 209, column: 2, scope: !2407)
!2449 = !DILocation(line: 211, column: 2, scope: !2356)
!2450 = !DILabel(scope: !2356, name: "free_required_tables", file: !1, line: 213)
!2451 = !DILocation(line: 213, column: 1, scope: !2356)
!2452 = !DILocation(line: 214, column: 34, scope: !2356)
!2453 = !DILocation(line: 214, column: 2, scope: !2356)
!2454 = !DILabel(scope: !2356, name: "put_np", file: !1, line: 215)
!2455 = !DILocation(line: 215, column: 1, scope: !2356)
!2456 = !DILocation(line: 216, column: 14, scope: !2356)
!2457 = !DILocation(line: 216, column: 2, scope: !2356)
!2458 = !DILocation(line: 217, column: 1, scope: !2356)
!2459 = distinct !DISubprogram(name: "_of_clear_opp_table", scope: !1, file: !1, line: 259, type: !2460, scopeLine: 260, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2460 = !DISubroutineType(types: !2461)
!2461 = !{null, !76}
!2462 = !DILocalVariable(name: "opp_table", arg: 1, scope: !2459, file: !1, line: 259, type: !76)
!2463 = !DILocation(line: 259, column: 44, scope: !2459)
!2464 = !DILocation(line: 261, column: 34, scope: !2459)
!2465 = !DILocation(line: 261, column: 2, scope: !2459)
!2466 = !DILocation(line: 262, column: 1, scope: !2459)
!2467 = distinct !DISubprogram(name: "_opp_table_free_required_tables", scope: !1, file: !1, line: 136, type: !2460, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2468 = !DILocalVariable(name: "opp_table", arg: 1, scope: !2467, file: !1, line: 136, type: !76)
!2469 = !DILocation(line: 136, column: 63, scope: !2467)
!2470 = !DILocalVariable(name: "required_opp_tables", scope: !2467, file: !1, line: 138, type: !2104)
!2471 = !DILocation(line: 138, column: 21, scope: !2467)
!2472 = !DILocation(line: 138, column: 43, scope: !2467)
!2473 = !DILocation(line: 138, column: 54, scope: !2467)
!2474 = !DILocalVariable(name: "i", scope: !2467, file: !1, line: 139, type: !127)
!2475 = !DILocation(line: 139, column: 6, scope: !2467)
!2476 = !DILocation(line: 141, column: 7, scope: !2477)
!2477 = distinct !DILexicalBlock(scope: !2467, file: !1, line: 141, column: 6)
!2478 = !DILocation(line: 141, column: 6, scope: !2467)
!2479 = !DILocation(line: 142, column: 3, scope: !2477)
!2480 = !DILocation(line: 144, column: 9, scope: !2481)
!2481 = distinct !DILexicalBlock(scope: !2467, file: !1, line: 144, column: 2)
!2482 = !DILocation(line: 144, column: 7, scope: !2481)
!2483 = !DILocation(line: 144, column: 14, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2481, file: !1, line: 144, column: 2)
!2485 = !DILocation(line: 144, column: 18, scope: !2484)
!2486 = !DILocation(line: 144, column: 29, scope: !2484)
!2487 = !DILocation(line: 144, column: 16, scope: !2484)
!2488 = !DILocation(line: 144, column: 2, scope: !2481)
!2489 = !DILocation(line: 145, column: 22, scope: !2490)
!2490 = distinct !DILexicalBlock(scope: !2491, file: !1, line: 145, column: 7)
!2491 = distinct !DILexicalBlock(scope: !2484, file: !1, line: 144, column: 54)
!2492 = !DILocation(line: 145, column: 42, scope: !2490)
!2493 = !DILocation(line: 145, column: 7, scope: !2490)
!2494 = !DILocation(line: 145, column: 7, scope: !2491)
!2495 = !DILocation(line: 146, column: 4, scope: !2490)
!2496 = !DILocation(line: 148, column: 28, scope: !2491)
!2497 = !DILocation(line: 148, column: 48, scope: !2491)
!2498 = !DILocation(line: 148, column: 3, scope: !2491)
!2499 = !DILocation(line: 149, column: 2, scope: !2491)
!2500 = !DILocation(line: 144, column: 50, scope: !2484)
!2501 = !DILocation(line: 144, column: 2, scope: !2484)
!2502 = distinct !{!2502, !2488, !2503}
!2503 = !DILocation(line: 149, column: 2, scope: !2481)
!2504 = !DILocation(line: 151, column: 8, scope: !2467)
!2505 = !DILocation(line: 151, column: 2, scope: !2467)
!2506 = !DILocation(line: 153, column: 2, scope: !2467)
!2507 = !DILocation(line: 153, column: 13, scope: !2467)
!2508 = !DILocation(line: 153, column: 32, scope: !2467)
!2509 = !DILocation(line: 154, column: 2, scope: !2467)
!2510 = !DILocation(line: 154, column: 13, scope: !2467)
!2511 = !DILocation(line: 154, column: 33, scope: !2467)
!2512 = !DILocation(line: 155, column: 1, scope: !2467)
!2513 = distinct !DISubprogram(name: "_of_opp_free_required_opps", scope: !1, file: !1, line: 268, type: !2514, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2514 = !DISubroutineType(types: !2515)
!2515 = !{null, !76, !2069}
!2516 = !DILocalVariable(name: "opp_table", arg: 1, scope: !2513, file: !1, line: 268, type: !76)
!2517 = !DILocation(line: 268, column: 51, scope: !2513)
!2518 = !DILocalVariable(name: "opp", arg: 2, scope: !2513, file: !1, line: 269, type: !2069)
!2519 = !DILocation(line: 269, column: 24, scope: !2513)
!2520 = !DILocalVariable(name: "required_opps", scope: !2513, file: !1, line: 271, type: !2097)
!2521 = !DILocation(line: 271, column: 22, scope: !2513)
!2522 = !DILocation(line: 271, column: 38, scope: !2513)
!2523 = !DILocation(line: 271, column: 43, scope: !2513)
!2524 = !DILocalVariable(name: "i", scope: !2513, file: !1, line: 272, type: !127)
!2525 = !DILocation(line: 272, column: 6, scope: !2513)
!2526 = !DILocation(line: 274, column: 7, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 274, column: 6)
!2528 = !DILocation(line: 274, column: 6, scope: !2513)
!2529 = !DILocation(line: 275, column: 3, scope: !2527)
!2530 = !DILocation(line: 277, column: 9, scope: !2531)
!2531 = distinct !DILexicalBlock(scope: !2513, file: !1, line: 277, column: 2)
!2532 = !DILocation(line: 277, column: 7, scope: !2531)
!2533 = !DILocation(line: 277, column: 14, scope: !2534)
!2534 = distinct !DILexicalBlock(scope: !2531, file: !1, line: 277, column: 2)
!2535 = !DILocation(line: 277, column: 18, scope: !2534)
!2536 = !DILocation(line: 277, column: 29, scope: !2534)
!2537 = !DILocation(line: 277, column: 16, scope: !2534)
!2538 = !DILocation(line: 277, column: 2, scope: !2531)
!2539 = !DILocation(line: 278, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2541, file: !1, line: 278, column: 7)
!2541 = distinct !DILexicalBlock(scope: !2534, file: !1, line: 277, column: 54)
!2542 = !DILocation(line: 278, column: 22, scope: !2540)
!2543 = !DILocation(line: 278, column: 7, scope: !2541)
!2544 = !DILocation(line: 279, column: 4, scope: !2540)
!2545 = !DILocation(line: 282, column: 18, scope: !2541)
!2546 = !DILocation(line: 282, column: 32, scope: !2541)
!2547 = !DILocation(line: 282, column: 3, scope: !2541)
!2548 = !DILocation(line: 283, column: 2, scope: !2541)
!2549 = !DILocation(line: 277, column: 50, scope: !2534)
!2550 = !DILocation(line: 277, column: 2, scope: !2534)
!2551 = distinct !{!2551, !2538, !2552}
!2552 = !DILocation(line: 283, column: 2, scope: !2531)
!2553 = !DILocation(line: 285, column: 8, scope: !2513)
!2554 = !DILocation(line: 285, column: 2, scope: !2513)
!2555 = !DILocation(line: 286, column: 2, scope: !2513)
!2556 = !DILocation(line: 286, column: 7, scope: !2513)
!2557 = !DILocation(line: 286, column: 21, scope: !2513)
!2558 = !DILocation(line: 287, column: 1, scope: !2513)
!2559 = distinct !DISubprogram(name: "dev_pm_opp_of_find_icc_paths", scope: !1, file: !1, line: 372, type: !2560, scopeLine: 374, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{!127, !1623, !76}
!2562 = !DILocalVariable(name: "dev", arg: 1, scope: !2559, file: !1, line: 372, type: !1623)
!2563 = !DILocation(line: 372, column: 49, scope: !2559)
!2564 = !DILocalVariable(name: "opp_table", arg: 2, scope: !2559, file: !1, line: 373, type: !76)
!2565 = !DILocation(line: 373, column: 24, scope: !2559)
!2566 = !DILocalVariable(name: "np", scope: !2559, file: !1, line: 375, type: !162)
!2567 = !DILocation(line: 375, column: 22, scope: !2559)
!2568 = !DILocalVariable(name: "ret", scope: !2559, file: !1, line: 376, type: !127)
!2569 = !DILocation(line: 376, column: 6, scope: !2559)
!2570 = !DILocalVariable(name: "i", scope: !2559, file: !1, line: 376, type: !127)
!2571 = !DILocation(line: 376, column: 11, scope: !2559)
!2572 = !DILocalVariable(name: "count", scope: !2559, file: !1, line: 376, type: !127)
!2573 = !DILocation(line: 376, column: 14, scope: !2559)
!2574 = !DILocalVariable(name: "num_paths", scope: !2559, file: !1, line: 376, type: !127)
!2575 = !DILocation(line: 376, column: 21, scope: !2559)
!2576 = !DILocalVariable(name: "paths", scope: !2559, file: !1, line: 377, type: !2119)
!2577 = !DILocation(line: 377, column: 20, scope: !2559)
!2578 = !DILocation(line: 379, column: 29, scope: !2559)
!2579 = !DILocation(line: 379, column: 34, scope: !2559)
!2580 = !DILocation(line: 379, column: 8, scope: !2559)
!2581 = !DILocation(line: 379, column: 6, scope: !2559)
!2582 = !DILocation(line: 380, column: 6, scope: !2583)
!2583 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 380, column: 6)
!2584 = !DILocation(line: 380, column: 10, scope: !2583)
!2585 = !DILocation(line: 380, column: 6, scope: !2559)
!2586 = !DILocation(line: 381, column: 10, scope: !2583)
!2587 = !DILocation(line: 381, column: 3, scope: !2583)
!2588 = !DILocation(line: 383, column: 6, scope: !2559)
!2589 = !DILocation(line: 385, column: 19, scope: !2559)
!2590 = !DILocation(line: 385, column: 24, scope: !2559)
!2591 = !DILocation(line: 385, column: 7, scope: !2559)
!2592 = !DILocation(line: 385, column: 5, scope: !2559)
!2593 = !DILocation(line: 386, column: 7, scope: !2594)
!2594 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 386, column: 6)
!2595 = !DILocation(line: 386, column: 6, scope: !2559)
!2596 = !DILocation(line: 387, column: 3, scope: !2594)
!2597 = !DILocation(line: 389, column: 37, scope: !2559)
!2598 = !DILocation(line: 389, column: 10, scope: !2559)
!2599 = !DILocation(line: 389, column: 8, scope: !2559)
!2600 = !DILocation(line: 391, column: 14, scope: !2559)
!2601 = !DILocation(line: 391, column: 2, scope: !2559)
!2602 = !DILocation(line: 392, column: 6, scope: !2603)
!2603 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 392, column: 6)
!2604 = !DILocation(line: 392, column: 12, scope: !2603)
!2605 = !DILocation(line: 392, column: 6, scope: !2559)
!2606 = !DILocation(line: 393, column: 3, scope: !2603)
!2607 = !DILocation(line: 396, column: 6, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 396, column: 6)
!2609 = !DILocation(line: 396, column: 12, scope: !2608)
!2610 = !DILocation(line: 396, column: 6, scope: !2559)
!2611 = !DILocation(line: 397, column: 3, scope: !2612)
!2612 = distinct !DILexicalBlock(scope: !2608, file: !1, line: 396, column: 17)
!2613 = !DILocation(line: 398, column: 3, scope: !2612)
!2614 = !DILocation(line: 401, column: 14, scope: !2559)
!2615 = !DILocation(line: 401, column: 20, scope: !2559)
!2616 = !DILocation(line: 401, column: 12, scope: !2559)
!2617 = !DILocation(line: 402, column: 18, scope: !2559)
!2618 = !DILocation(line: 402, column: 10, scope: !2559)
!2619 = !DILocation(line: 402, column: 8, scope: !2559)
!2620 = !DILocation(line: 403, column: 7, scope: !2621)
!2621 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 403, column: 6)
!2622 = !DILocation(line: 403, column: 6, scope: !2559)
!2623 = !DILocation(line: 404, column: 3, scope: !2621)
!2624 = !DILocation(line: 406, column: 9, scope: !2625)
!2625 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 406, column: 2)
!2626 = !DILocation(line: 406, column: 7, scope: !2625)
!2627 = !DILocation(line: 406, column: 14, scope: !2628)
!2628 = distinct !DILexicalBlock(scope: !2625, file: !1, line: 406, column: 2)
!2629 = !DILocation(line: 406, column: 18, scope: !2628)
!2630 = !DILocation(line: 406, column: 16, scope: !2628)
!2631 = !DILocation(line: 406, column: 2, scope: !2625)
!2632 = !DILocation(line: 407, column: 34, scope: !2633)
!2633 = distinct !DILexicalBlock(scope: !2628, file: !1, line: 406, column: 34)
!2634 = !DILocation(line: 407, column: 39, scope: !2633)
!2635 = !DILocation(line: 407, column: 14, scope: !2633)
!2636 = !DILocation(line: 407, column: 3, scope: !2633)
!2637 = !DILocation(line: 407, column: 9, scope: !2633)
!2638 = !DILocation(line: 407, column: 12, scope: !2633)
!2639 = !DILocation(line: 408, column: 14, scope: !2640)
!2640 = distinct !DILexicalBlock(scope: !2633, file: !1, line: 408, column: 7)
!2641 = !DILocation(line: 408, column: 20, scope: !2640)
!2642 = !DILocation(line: 408, column: 7, scope: !2640)
!2643 = !DILocation(line: 408, column: 7, scope: !2633)
!2644 = !DILocation(line: 409, column: 18, scope: !2645)
!2645 = distinct !DILexicalBlock(scope: !2640, file: !1, line: 408, column: 25)
!2646 = !DILocation(line: 409, column: 24, scope: !2645)
!2647 = !DILocation(line: 409, column: 10, scope: !2645)
!2648 = !DILocation(line: 409, column: 8, scope: !2645)
!2649 = !DILocation(line: 410, column: 8, scope: !2650)
!2650 = distinct !DILexicalBlock(scope: !2645, file: !1, line: 410, column: 8)
!2651 = !DILocation(line: 410, column: 12, scope: !2650)
!2652 = !DILocation(line: 410, column: 8, scope: !2645)
!2653 = !DILocation(line: 411, column: 5, scope: !2654)
!2654 = distinct !DILexicalBlock(scope: !2650, file: !1, line: 410, column: 30)
!2655 = !DILocation(line: 413, column: 4, scope: !2654)
!2656 = !DILocation(line: 414, column: 4, scope: !2645)
!2657 = !DILocation(line: 416, column: 2, scope: !2633)
!2658 = !DILocation(line: 406, column: 30, scope: !2628)
!2659 = !DILocation(line: 406, column: 2, scope: !2628)
!2660 = distinct !{!2660, !2631, !2661}
!2661 = !DILocation(line: 416, column: 2, scope: !2625)
!2662 = !DILocation(line: 418, column: 6, scope: !2663)
!2663 = distinct !DILexicalBlock(scope: !2559, file: !1, line: 418, column: 6)
!2664 = !DILocation(line: 418, column: 6, scope: !2559)
!2665 = !DILocation(line: 419, column: 22, scope: !2666)
!2666 = distinct !DILexicalBlock(scope: !2663, file: !1, line: 418, column: 17)
!2667 = !DILocation(line: 419, column: 3, scope: !2666)
!2668 = !DILocation(line: 419, column: 14, scope: !2666)
!2669 = !DILocation(line: 419, column: 20, scope: !2666)
!2670 = !DILocation(line: 420, column: 27, scope: !2666)
!2671 = !DILocation(line: 420, column: 3, scope: !2666)
!2672 = !DILocation(line: 420, column: 14, scope: !2666)
!2673 = !DILocation(line: 420, column: 25, scope: !2666)
!2674 = !DILocation(line: 421, column: 3, scope: !2666)
!2675 = !DILabel(scope: !2559, name: "err", file: !1, line: 424)
!2676 = !DILocation(line: 424, column: 1, scope: !2559)
!2677 = !DILocation(line: 425, column: 2, scope: !2559)
!2678 = !DILocation(line: 425, column: 10, scope: !2559)
!2679 = !DILocation(line: 426, column: 11, scope: !2559)
!2680 = !DILocation(line: 426, column: 17, scope: !2559)
!2681 = !DILocation(line: 426, column: 3, scope: !2559)
!2682 = distinct !{!2682, !2677, !2683}
!2683 = !DILocation(line: 426, column: 19, scope: !2559)
!2684 = !DILocation(line: 428, column: 8, scope: !2559)
!2685 = !DILocation(line: 428, column: 2, scope: !2559)
!2686 = !DILocation(line: 430, column: 9, scope: !2559)
!2687 = !DILocation(line: 430, column: 2, scope: !2559)
!2688 = !DILocation(line: 431, column: 1, scope: !2559)
!2689 = distinct !DISubprogram(name: "_bandwidth_supported", scope: !1, file: !1, line: 335, type: !2560, scopeLine: 336, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2690 = !DILocalVariable(name: "dev", arg: 1, scope: !2689, file: !1, line: 335, type: !1623)
!2691 = !DILocation(line: 335, column: 48, scope: !2689)
!2692 = !DILocalVariable(name: "opp_table", arg: 2, scope: !2689, file: !1, line: 335, type: !76)
!2693 = !DILocation(line: 335, column: 71, scope: !2689)
!2694 = !DILocalVariable(name: "np", scope: !2689, file: !1, line: 337, type: !162)
!2695 = !DILocation(line: 337, column: 22, scope: !2689)
!2696 = !DILocalVariable(name: "opp_np", scope: !2689, file: !1, line: 337, type: !162)
!2697 = !DILocation(line: 337, column: 27, scope: !2689)
!2698 = !DILocalVariable(name: "prop", scope: !2689, file: !1, line: 338, type: !2049)
!2699 = !DILocation(line: 338, column: 19, scope: !2689)
!2700 = !DILocation(line: 340, column: 7, scope: !2701)
!2701 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 340, column: 6)
!2702 = !DILocation(line: 340, column: 6, scope: !2689)
!2703 = !DILocation(line: 341, column: 20, scope: !2704)
!2704 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 340, column: 18)
!2705 = !DILocation(line: 341, column: 25, scope: !2704)
!2706 = !DILocation(line: 341, column: 8, scope: !2704)
!2707 = !DILocation(line: 341, column: 6, scope: !2704)
!2708 = !DILocation(line: 342, column: 8, scope: !2709)
!2709 = distinct !DILexicalBlock(scope: !2704, file: !1, line: 342, column: 7)
!2710 = !DILocation(line: 342, column: 7, scope: !2704)
!2711 = !DILocation(line: 343, column: 4, scope: !2709)
!2712 = !DILocation(line: 345, column: 38, scope: !2704)
!2713 = !DILocation(line: 345, column: 12, scope: !2704)
!2714 = !DILocation(line: 345, column: 10, scope: !2704)
!2715 = !DILocation(line: 346, column: 15, scope: !2704)
!2716 = !DILocation(line: 346, column: 3, scope: !2704)
!2717 = !DILocation(line: 347, column: 2, scope: !2704)
!2718 = !DILocation(line: 348, column: 24, scope: !2719)
!2719 = distinct !DILexicalBlock(scope: !2701, file: !1, line: 347, column: 9)
!2720 = !DILocation(line: 348, column: 35, scope: !2719)
!2721 = !DILocation(line: 348, column: 12, scope: !2719)
!2722 = !DILocation(line: 348, column: 10, scope: !2719)
!2723 = !DILocation(line: 352, column: 7, scope: !2724)
!2724 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 352, column: 6)
!2725 = !DILocation(line: 352, column: 6, scope: !2689)
!2726 = !DILocation(line: 353, column: 3, scope: !2724)
!2727 = !DILocation(line: 356, column: 35, scope: !2689)
!2728 = !DILocation(line: 356, column: 7, scope: !2689)
!2729 = !DILocation(line: 356, column: 5, scope: !2689)
!2730 = !DILocation(line: 357, column: 7, scope: !2731)
!2731 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 357, column: 6)
!2732 = !DILocation(line: 357, column: 6, scope: !2689)
!2733 = !DILocation(line: 358, column: 3, scope: !2734)
!2734 = distinct !DILexicalBlock(scope: !2731, file: !1, line: 357, column: 11)
!2735 = !DILocation(line: 359, column: 3, scope: !2734)
!2736 = !DILocation(line: 361, column: 14, scope: !2689)
!2737 = !DILocation(line: 361, column: 2, scope: !2689)
!2738 = !DILocation(line: 363, column: 26, scope: !2689)
!2739 = !DILocation(line: 363, column: 9, scope: !2689)
!2740 = !DILocation(line: 363, column: 7, scope: !2689)
!2741 = !DILocation(line: 364, column: 14, scope: !2689)
!2742 = !DILocation(line: 364, column: 2, scope: !2689)
!2743 = !DILocation(line: 366, column: 7, scope: !2744)
!2744 = distinct !DILexicalBlock(scope: !2689, file: !1, line: 366, column: 6)
!2745 = !DILocation(line: 366, column: 12, scope: !2744)
!2746 = !DILocation(line: 366, column: 16, scope: !2744)
!2747 = !DILocation(line: 366, column: 22, scope: !2744)
!2748 = !DILocation(line: 366, column: 6, scope: !2689)
!2749 = !DILocation(line: 367, column: 3, scope: !2744)
!2750 = !DILocation(line: 369, column: 2, scope: !2689)
!2751 = !DILocation(line: 370, column: 1, scope: !2689)
!2752 = distinct !DISubprogram(name: "kcalloc", scope: !60, file: !60, line: 601, type: !2753, scopeLine: 602, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!75, !299, !299, !1498}
!2755 = !DILocalVariable(name: "n", arg: 1, scope: !2752, file: !60, line: 601, type: !299)
!2756 = !DILocation(line: 601, column: 36, scope: !2752)
!2757 = !DILocalVariable(name: "size", arg: 2, scope: !2752, file: !60, line: 601, type: !299)
!2758 = !DILocation(line: 601, column: 46, scope: !2752)
!2759 = !DILocalVariable(name: "flags", arg: 3, scope: !2752, file: !60, line: 601, type: !1498)
!2760 = !DILocation(line: 601, column: 58, scope: !2752)
!2761 = !DILocation(line: 603, column: 23, scope: !2752)
!2762 = !DILocation(line: 603, column: 26, scope: !2752)
!2763 = !DILocation(line: 603, column: 32, scope: !2752)
!2764 = !DILocation(line: 603, column: 38, scope: !2752)
!2765 = !DILocation(line: 603, column: 9, scope: !2752)
!2766 = !DILocation(line: 603, column: 2, scope: !2752)
!2767 = distinct !DISubprogram(name: "of_icc_get_by_index", scope: !2122, file: !2122, line: 82, type: !2768, scopeLine: 83, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!2120, !1623, !127}
!2770 = !DILocalVariable(name: "dev", arg: 1, scope: !2767, file: !2122, line: 82, type: !1623)
!2771 = !DILocation(line: 82, column: 67, scope: !2767)
!2772 = !DILocalVariable(name: "idx", arg: 2, scope: !2767, file: !2122, line: 82, type: !127)
!2773 = !DILocation(line: 82, column: 76, scope: !2767)
!2774 = !DILocation(line: 84, column: 2, scope: !2767)
!2775 = distinct !DISubprogram(name: "IS_ERR", scope: !2776, file: !2776, line: 34, type: !2777, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2776 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2777 = !DISubroutineType(types: !2778)
!2778 = !{!198, !206}
!2779 = !DILocalVariable(name: "ptr", arg: 1, scope: !2775, file: !2776, line: 34, type: !206)
!2780 = !DILocation(line: 34, column: 60, scope: !2775)
!2781 = !DILocation(line: 36, column: 9, scope: !2775)
!2782 = !DILocation(line: 36, column: 2, scope: !2775)
!2783 = distinct !DISubprogram(name: "PTR_ERR", scope: !2776, file: !2776, line: 29, type: !2784, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2784 = !DISubroutineType(types: !2785)
!2785 = !{!287, !206}
!2786 = !DILocalVariable(name: "ptr", arg: 1, scope: !2783, file: !2776, line: 29, type: !206)
!2787 = !DILocation(line: 29, column: 61, scope: !2783)
!2788 = !DILocation(line: 31, column: 16, scope: !2783)
!2789 = !DILocation(line: 31, column: 9, scope: !2783)
!2790 = !DILocation(line: 31, column: 2, scope: !2783)
!2791 = distinct !DISubprogram(name: "icc_put", scope: !2122, file: !2122, line: 87, type: !2792, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2792 = !DISubroutineType(types: !2793)
!2793 = !{null, !2120}
!2794 = !DILocalVariable(name: "path", arg: 1, scope: !2791, file: !2122, line: 87, type: !2120)
!2795 = !DILocation(line: 87, column: 45, scope: !2791)
!2796 = !DILocation(line: 89, column: 1, scope: !2791)
!2797 = distinct !DISubprogram(name: "dev_pm_opp_of_remove_table", scope: !1, file: !1, line: 636, type: !1646, scopeLine: 637, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2798 = !DILocalVariable(name: "dev", arg: 1, scope: !2797, file: !1, line: 636, type: !1623)
!2799 = !DILocation(line: 636, column: 48, scope: !2797)
!2800 = !DILocation(line: 638, column: 26, scope: !2797)
!2801 = !DILocation(line: 638, column: 2, scope: !2797)
!2802 = !DILocation(line: 639, column: 1, scope: !2797)
!2803 = distinct !DISubprogram(name: "dev_pm_opp_of_add_table", scope: !1, file: !1, line: 972, type: !1655, scopeLine: 973, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2804 = !DILocalVariable(name: "dev", arg: 1, scope: !2803, file: !1, line: 972, type: !1623)
!2805 = !DILocation(line: 972, column: 44, scope: !2803)
!2806 = !DILocalVariable(name: "opp_table", scope: !2803, file: !1, line: 974, type: !76)
!2807 = !DILocation(line: 974, column: 20, scope: !2803)
!2808 = !DILocalVariable(name: "ret", scope: !2803, file: !1, line: 975, type: !127)
!2809 = !DILocation(line: 975, column: 6, scope: !2803)
!2810 = !DILocation(line: 977, column: 47, scope: !2803)
!2811 = !DILocation(line: 977, column: 14, scope: !2803)
!2812 = !DILocation(line: 977, column: 12, scope: !2803)
!2813 = !DILocation(line: 978, column: 13, scope: !2814)
!2814 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 978, column: 6)
!2815 = !DILocation(line: 978, column: 6, scope: !2814)
!2816 = !DILocation(line: 978, column: 6, scope: !2803)
!2817 = !DILocation(line: 979, column: 18, scope: !2814)
!2818 = !DILocation(line: 979, column: 10, scope: !2814)
!2819 = !DILocation(line: 979, column: 3, scope: !2814)
!2820 = !DILocation(line: 985, column: 6, scope: !2821)
!2821 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 985, column: 6)
!2822 = !DILocation(line: 985, column: 17, scope: !2821)
!2823 = !DILocation(line: 985, column: 6, scope: !2803)
!2824 = !DILocation(line: 986, column: 30, scope: !2821)
!2825 = !DILocation(line: 986, column: 35, scope: !2821)
!2826 = !DILocation(line: 986, column: 9, scope: !2821)
!2827 = !DILocation(line: 986, column: 7, scope: !2821)
!2828 = !DILocation(line: 986, column: 3, scope: !2821)
!2829 = !DILocation(line: 988, column: 30, scope: !2821)
!2830 = !DILocation(line: 988, column: 35, scope: !2821)
!2831 = !DILocation(line: 988, column: 9, scope: !2821)
!2832 = !DILocation(line: 988, column: 7, scope: !2821)
!2833 = !DILocation(line: 990, column: 6, scope: !2834)
!2834 = distinct !DILexicalBlock(scope: !2803, file: !1, line: 990, column: 6)
!2835 = !DILocation(line: 990, column: 6, scope: !2803)
!2836 = !DILocation(line: 991, column: 28, scope: !2834)
!2837 = !DILocation(line: 991, column: 3, scope: !2834)
!2838 = !DILocation(line: 993, column: 9, scope: !2803)
!2839 = !DILocation(line: 993, column: 2, scope: !2803)
!2840 = !DILocation(line: 994, column: 1, scope: !2803)
!2841 = distinct !DISubprogram(name: "_of_add_opp_table_v2", scope: !1, file: !1, line: 842, type: !2560, scopeLine: 843, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2842 = !DILocalVariable(name: "dev", arg: 1, scope: !2841, file: !1, line: 842, type: !1623)
!2843 = !DILocation(line: 842, column: 48, scope: !2841)
!2844 = !DILocalVariable(name: "opp_table", arg: 2, scope: !2841, file: !1, line: 842, type: !76)
!2845 = !DILocation(line: 842, column: 71, scope: !2841)
!2846 = !DILocalVariable(name: "np", scope: !2841, file: !1, line: 844, type: !162)
!2847 = !DILocation(line: 844, column: 22, scope: !2841)
!2848 = !DILocalVariable(name: "ret", scope: !2841, file: !1, line: 845, type: !127)
!2849 = !DILocation(line: 845, column: 6, scope: !2841)
!2850 = !DILocalVariable(name: "count", scope: !2841, file: !1, line: 845, type: !127)
!2851 = !DILocation(line: 845, column: 11, scope: !2841)
!2852 = !DILocalVariable(name: "opp", scope: !2841, file: !1, line: 846, type: !2069)
!2853 = !DILocation(line: 846, column: 21, scope: !2841)
!2854 = !DILocation(line: 849, column: 14, scope: !2841)
!2855 = !DILocation(line: 849, column: 25, scope: !2841)
!2856 = !DILocation(line: 849, column: 2, scope: !2841)
!2857 = !DILocation(line: 850, column: 6, scope: !2858)
!2858 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 850, column: 6)
!2859 = !DILocation(line: 850, column: 17, scope: !2858)
!2860 = !DILocation(line: 850, column: 6, scope: !2841)
!2861 = !DILocation(line: 851, column: 3, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2858, file: !1, line: 850, column: 37)
!2863 = !DILocation(line: 851, column: 14, scope: !2862)
!2864 = !DILocation(line: 851, column: 32, scope: !2862)
!2865 = !DILocation(line: 852, column: 17, scope: !2862)
!2866 = !DILocation(line: 852, column: 28, scope: !2862)
!2867 = !DILocation(line: 852, column: 3, scope: !2862)
!2868 = !DILocation(line: 853, column: 3, scope: !2862)
!2869 = !DILocation(line: 856, column: 2, scope: !2841)
!2870 = !DILocation(line: 856, column: 13, scope: !2841)
!2871 = !DILocation(line: 856, column: 32, scope: !2841)
!2872 = !DILocation(line: 857, column: 16, scope: !2841)
!2873 = !DILocation(line: 857, column: 27, scope: !2841)
!2874 = !DILocation(line: 857, column: 2, scope: !2841)
!2875 = !DILocation(line: 860, column: 2, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 860, column: 2)
!2877 = !DILocation(line: 860, column: 2, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2876, file: !1, line: 860, column: 2)
!2879 = !DILocation(line: 861, column: 28, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2878, file: !1, line: 860, column: 54)
!2881 = !DILocation(line: 861, column: 39, scope: !2880)
!2882 = !DILocation(line: 861, column: 44, scope: !2880)
!2883 = !DILocation(line: 861, column: 9, scope: !2880)
!2884 = !DILocation(line: 861, column: 7, scope: !2880)
!2885 = !DILocation(line: 862, column: 14, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2880, file: !1, line: 862, column: 7)
!2887 = !DILocation(line: 862, column: 7, scope: !2886)
!2888 = !DILocation(line: 862, column: 7, scope: !2880)
!2889 = !DILocation(line: 863, column: 18, scope: !2890)
!2890 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 862, column: 20)
!2891 = !DILocation(line: 863, column: 10, scope: !2890)
!2892 = !DILocation(line: 863, column: 8, scope: !2890)
!2893 = !DILocation(line: 864, column: 4, scope: !2890)
!2894 = !DILocation(line: 866, column: 16, scope: !2890)
!2895 = !DILocation(line: 866, column: 4, scope: !2890)
!2896 = !DILocation(line: 867, column: 4, scope: !2890)
!2897 = !DILocation(line: 868, column: 14, scope: !2898)
!2898 = distinct !DILexicalBlock(scope: !2886, file: !1, line: 868, column: 14)
!2899 = !DILocation(line: 868, column: 14, scope: !2886)
!2900 = !DILocation(line: 869, column: 9, scope: !2901)
!2901 = distinct !DILexicalBlock(scope: !2898, file: !1, line: 868, column: 19)
!2902 = !DILocation(line: 870, column: 3, scope: !2901)
!2903 = !DILocation(line: 871, column: 2, scope: !2880)
!2904 = distinct !{!2904, !2875, !2905}
!2905 = !DILocation(line: 871, column: 2, scope: !2876)
!2906 = !DILocalVariable(name: "__ret_warn_on", scope: !2907, file: !1, line: 874, type: !127)
!2907 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 874, column: 6)
!2908 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 874, column: 6)
!2909 = !DILocation(line: 874, column: 6, scope: !2907)
!2910 = !DILocation(line: 874, column: 6, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2907, file: !1, line: 874, column: 6)
!2912 = !DILocation(line: 874, column: 6, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2911, file: !1, line: 874, column: 6)
!2914 = !DILocation(line: 874, column: 6, scope: !2915)
!2915 = distinct !DILexicalBlock(scope: !2913, file: !1, line: 874, column: 6)
!2916 = !DILocation(line: 874, column: 6, scope: !2917)
!2917 = distinct !DILexicalBlock(scope: !2913, file: !1, line: 874, column: 6)
!2918 = !{i32 -2143467732, i32 -2143467703, i32 -2143467657, i32 -2143467599, i32 -2143467545, i32 -2143467491, i32 -2143467436, i32 -2143467405}
!2919 = !DILocation(line: 874, column: 6, scope: !2920)
!2920 = distinct !DILexicalBlock(scope: !2913, file: !1, line: 874, column: 6)
!2921 = !{i32 -2143467007, i32 -2143467000, i32 -2143466948, i32 -2143466917, i32 -2143466887}
!2922 = !DILocation(line: 874, column: 6, scope: !2923)
!2923 = distinct !DILexicalBlock(scope: !2913, file: !1, line: 874, column: 6)
!2924 = !DILocation(line: 874, column: 6, scope: !2908)
!2925 = !DILocation(line: 874, column: 6, scope: !2841)
!2926 = !DILocation(line: 875, column: 7, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2908, file: !1, line: 874, column: 23)
!2928 = !DILocation(line: 876, column: 3, scope: !2927)
!2929 = !DILocalVariable(name: "__mptr", scope: !2930, file: !1, line: 879, type: !75)
!2930 = distinct !DILexicalBlock(scope: !2931, file: !1, line: 879, column: 2)
!2931 = distinct !DILexicalBlock(scope: !2841, file: !1, line: 879, column: 2)
!2932 = !DILocation(line: 879, column: 2, scope: !2930)
!2933 = !DILocation(line: 879, column: 2, scope: !2934)
!2934 = distinct !DILexicalBlock(scope: !2930, file: !1, line: 879, column: 2)
!2935 = !DILocation(line: 879, column: 2, scope: !2931)
!2936 = !DILocation(line: 879, column: 2, scope: !2937)
!2937 = distinct !DILexicalBlock(scope: !2931, file: !1, line: 879, column: 2)
!2938 = !DILocation(line: 881, column: 7, scope: !2939)
!2939 = distinct !DILexicalBlock(scope: !2940, file: !1, line: 881, column: 7)
!2940 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 879, column: 55)
!2941 = !DILocation(line: 881, column: 12, scope: !2939)
!2942 = !DILocation(line: 881, column: 7, scope: !2940)
!2943 = !DILocation(line: 882, column: 4, scope: !2944)
!2944 = distinct !DILexicalBlock(scope: !2939, file: !1, line: 881, column: 20)
!2945 = !DILocation(line: 882, column: 15, scope: !2944)
!2946 = !DILocation(line: 882, column: 39, scope: !2944)
!2947 = !DILocation(line: 883, column: 4, scope: !2944)
!2948 = !DILocation(line: 885, column: 2, scope: !2940)
!2949 = !DILocalVariable(name: "__mptr", scope: !2950, file: !1, line: 879, type: !75)
!2950 = distinct !DILexicalBlock(scope: !2937, file: !1, line: 879, column: 2)
!2951 = !DILocation(line: 879, column: 2, scope: !2950)
!2952 = !DILocation(line: 879, column: 2, scope: !2953)
!2953 = distinct !DILexicalBlock(scope: !2950, file: !1, line: 879, column: 2)
!2954 = distinct !{!2954, !2935, !2955}
!2955 = !DILocation(line: 885, column: 2, scope: !2931)
!2956 = !DILocation(line: 887, column: 2, scope: !2841)
!2957 = !DILabel(scope: !2841, name: "remove_static_opp", file: !1, line: 889)
!2958 = !DILocation(line: 889, column: 1, scope: !2841)
!2959 = !DILocation(line: 890, column: 25, scope: !2841)
!2960 = !DILocation(line: 890, column: 2, scope: !2841)
!2961 = !DILocation(line: 892, column: 9, scope: !2841)
!2962 = !DILocation(line: 892, column: 2, scope: !2841)
!2963 = !DILocation(line: 893, column: 1, scope: !2841)
!2964 = distinct !DISubprogram(name: "_of_add_opp_table_v1", scope: !1, file: !1, line: 896, type: !2560, scopeLine: 897, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2965 = !DILocalVariable(name: "p", arg: 1, scope: !2966, file: !2967, line: 184, type: !2970)
!2966 = distinct !DISubprogram(name: "__swab32p", scope: !2967, file: !2967, line: 184, type: !2968, scopeLine: 185, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2967 = !DIFile(filename: "./include/uapi/linux/swab.h", directory: "/home/lizy2001/genbc/linux")
!2968 = !DISubroutineType(types: !2969)
!2969 = !{!173, !2970}
!2970 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2971, size: 64)
!2971 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !173)
!2972 = !DILocation(line: 184, column: 53, scope: !2966, inlinedAt: !2973)
!2973 = distinct !DILocation(line: 82, column: 9, scope: !2974, inlinedAt: !2981)
!2974 = distinct !DISubprogram(name: "__be32_to_cpup", scope: !2975, file: !2975, line: 80, type: !2976, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!2975 = !DIFile(filename: "./include/uapi/linux/byteorder/little_endian.h", directory: "/home/lizy2001/genbc/linux")
!2976 = !DISubroutineType(types: !2977)
!2977 = !{!173, !2978}
!2978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2979, size: 64)
!2979 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2980)
!2980 = !DIDerivedType(tag: DW_TAG_typedef, name: "__be32", file: !1597, line: 32, baseType: !173)
!2981 = distinct !DILocation(line: 936, column: 24, scope: !2982)
!2982 = distinct !DILexicalBlock(scope: !2964, file: !1, line: 934, column: 13)
!2983 = !DILocalVariable(name: "p", arg: 1, scope: !2974, file: !2975, line: 80, type: !2978)
!2984 = !DILocation(line: 80, column: 59, scope: !2974, inlinedAt: !2981)
!2985 = !DILocation(line: 184, column: 53, scope: !2966, inlinedAt: !2986)
!2986 = distinct !DILocation(line: 82, column: 9, scope: !2974, inlinedAt: !2987)
!2987 = distinct !DILocation(line: 935, column: 24, scope: !2982)
!2988 = !DILocation(line: 80, column: 59, scope: !2974, inlinedAt: !2987)
!2989 = !DILocalVariable(name: "dev", arg: 1, scope: !2964, file: !1, line: 896, type: !1623)
!2990 = !DILocation(line: 896, column: 48, scope: !2964)
!2991 = !DILocalVariable(name: "opp_table", arg: 2, scope: !2964, file: !1, line: 896, type: !76)
!2992 = !DILocation(line: 896, column: 71, scope: !2964)
!2993 = !DILocalVariable(name: "prop", scope: !2964, file: !1, line: 898, type: !2994)
!2994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2995, size: 64)
!2995 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2050)
!2996 = !DILocation(line: 898, column: 25, scope: !2964)
!2997 = !DILocalVariable(name: "val", scope: !2964, file: !1, line: 899, type: !2978)
!2998 = !DILocation(line: 899, column: 16, scope: !2964)
!2999 = !DILocalVariable(name: "nr", scope: !2964, file: !1, line: 900, type: !127)
!3000 = !DILocation(line: 900, column: 6, scope: !2964)
!3001 = !DILocalVariable(name: "ret", scope: !2964, file: !1, line: 900, type: !127)
!3002 = !DILocation(line: 900, column: 10, scope: !2964)
!3003 = !DILocation(line: 902, column: 14, scope: !2964)
!3004 = !DILocation(line: 902, column: 25, scope: !2964)
!3005 = !DILocation(line: 902, column: 2, scope: !2964)
!3006 = !DILocation(line: 903, column: 6, scope: !3007)
!3007 = distinct !DILexicalBlock(scope: !2964, file: !1, line: 903, column: 6)
!3008 = !DILocation(line: 903, column: 17, scope: !3007)
!3009 = !DILocation(line: 903, column: 6, scope: !2964)
!3010 = !DILocation(line: 904, column: 3, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !3007, file: !1, line: 903, column: 37)
!3012 = !DILocation(line: 904, column: 14, scope: !3011)
!3013 = !DILocation(line: 904, column: 32, scope: !3011)
!3014 = !DILocation(line: 905, column: 17, scope: !3011)
!3015 = !DILocation(line: 905, column: 28, scope: !3011)
!3016 = !DILocation(line: 905, column: 3, scope: !3011)
!3017 = !DILocation(line: 906, column: 3, scope: !3011)
!3018 = !DILocation(line: 909, column: 2, scope: !2964)
!3019 = !DILocation(line: 909, column: 13, scope: !2964)
!3020 = !DILocation(line: 909, column: 32, scope: !2964)
!3021 = !DILocation(line: 910, column: 16, scope: !2964)
!3022 = !DILocation(line: 910, column: 27, scope: !2964)
!3023 = !DILocation(line: 910, column: 2, scope: !2964)
!3024 = !DILocation(line: 912, column: 26, scope: !2964)
!3025 = !DILocation(line: 912, column: 31, scope: !2964)
!3026 = !DILocation(line: 912, column: 9, scope: !2964)
!3027 = !DILocation(line: 912, column: 7, scope: !2964)
!3028 = !DILocation(line: 913, column: 7, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !2964, file: !1, line: 913, column: 6)
!3030 = !DILocation(line: 913, column: 6, scope: !2964)
!3031 = !DILocation(line: 914, column: 7, scope: !3032)
!3032 = distinct !DILexicalBlock(scope: !3029, file: !1, line: 913, column: 13)
!3033 = !DILocation(line: 915, column: 3, scope: !3032)
!3034 = !DILocation(line: 917, column: 7, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !2964, file: !1, line: 917, column: 6)
!3036 = !DILocation(line: 917, column: 13, scope: !3035)
!3037 = !DILocation(line: 917, column: 6, scope: !2964)
!3038 = !DILocation(line: 918, column: 7, scope: !3039)
!3039 = distinct !DILexicalBlock(scope: !3035, file: !1, line: 917, column: 20)
!3040 = !DILocation(line: 919, column: 3, scope: !3039)
!3041 = !DILocation(line: 926, column: 7, scope: !2964)
!3042 = !DILocation(line: 926, column: 13, scope: !2964)
!3043 = !DILocation(line: 926, column: 20, scope: !2964)
!3044 = !DILocation(line: 926, column: 5, scope: !2964)
!3045 = !DILocation(line: 927, column: 6, scope: !3046)
!3046 = distinct !DILexicalBlock(scope: !2964, file: !1, line: 927, column: 6)
!3047 = !DILocation(line: 927, column: 9, scope: !3046)
!3048 = !DILocation(line: 927, column: 6, scope: !2964)
!3049 = !DILocation(line: 928, column: 3, scope: !3050)
!3050 = distinct !DILexicalBlock(scope: !3046, file: !1, line: 927, column: 14)
!3051 = !DILocation(line: 929, column: 7, scope: !3050)
!3052 = !DILocation(line: 930, column: 3, scope: !3050)
!3053 = !DILocation(line: 933, column: 8, scope: !2964)
!3054 = !DILocation(line: 933, column: 14, scope: !2964)
!3055 = !DILocation(line: 933, column: 6, scope: !2964)
!3056 = !DILocation(line: 934, column: 2, scope: !2964)
!3057 = !DILocation(line: 934, column: 9, scope: !2964)
!3058 = !DILocalVariable(name: "freq", scope: !2982, file: !1, line: 935, type: !128)
!3059 = !DILocation(line: 935, column: 17, scope: !2982)
!3060 = !DILocation(line: 935, column: 40, scope: !2982)
!3061 = !DILocation(line: 82, column: 28, scope: !2974, inlinedAt: !2987)
!3062 = !DILocation(line: 189, column: 9, scope: !2966, inlinedAt: !2986)
!3063 = !DILocation(line: 935, column: 44, scope: !2982)
!3064 = !DILocation(line: 935, column: 24, scope: !2982)
!3065 = !DILocalVariable(name: "volt", scope: !2982, file: !1, line: 936, type: !128)
!3066 = !DILocation(line: 936, column: 17, scope: !2982)
!3067 = !DILocation(line: 936, column: 40, scope: !2982)
!3068 = !DILocation(line: 82, column: 28, scope: !2974, inlinedAt: !2981)
!3069 = !DILocation(line: 189, column: 9, scope: !2966, inlinedAt: !2973)
!3070 = !DILocation(line: 936, column: 24, scope: !2982)
!3071 = !DILocation(line: 938, column: 21, scope: !2982)
!3072 = !DILocation(line: 938, column: 32, scope: !2982)
!3073 = !DILocation(line: 938, column: 37, scope: !2982)
!3074 = !DILocation(line: 938, column: 43, scope: !2982)
!3075 = !DILocation(line: 938, column: 9, scope: !2982)
!3076 = !DILocation(line: 938, column: 7, scope: !2982)
!3077 = !DILocation(line: 939, column: 7, scope: !3078)
!3078 = distinct !DILexicalBlock(scope: !2982, file: !1, line: 939, column: 7)
!3079 = !DILocation(line: 939, column: 7, scope: !2982)
!3080 = !DILocation(line: 940, column: 4, scope: !3081)
!3081 = distinct !DILexicalBlock(scope: !3078, file: !1, line: 939, column: 12)
!3082 = !DILocation(line: 942, column: 4, scope: !3081)
!3083 = !DILocation(line: 944, column: 6, scope: !2982)
!3084 = distinct !{!3084, !3056, !3085}
!3085 = !DILocation(line: 945, column: 2, scope: !2964)
!3086 = !DILocation(line: 947, column: 2, scope: !2964)
!3087 = !DILabel(scope: !2964, name: "remove_static_opp", file: !1, line: 949)
!3088 = !DILocation(line: 949, column: 1, scope: !2964)
!3089 = !DILocation(line: 950, column: 25, scope: !2964)
!3090 = !DILocation(line: 950, column: 2, scope: !2964)
!3091 = !DILocation(line: 952, column: 9, scope: !2964)
!3092 = !DILocation(line: 952, column: 2, scope: !2964)
!3093 = !DILocation(line: 953, column: 1, scope: !2964)
!3094 = distinct !DISubprogram(name: "dev_pm_opp_of_add_table_indexed", scope: !1, file: !1, line: 1016, type: !3095, scopeLine: 1017, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3095 = !DISubroutineType(types: !3096)
!3096 = !{!127, !1623, !127}
!3097 = !DILocalVariable(name: "dev", arg: 1, scope: !3094, file: !1, line: 1016, type: !1623)
!3098 = !DILocation(line: 1016, column: 52, scope: !3094)
!3099 = !DILocalVariable(name: "index", arg: 2, scope: !3094, file: !1, line: 1016, type: !127)
!3100 = !DILocation(line: 1016, column: 61, scope: !3094)
!3101 = !DILocalVariable(name: "opp_table", scope: !3094, file: !1, line: 1018, type: !76)
!3102 = !DILocation(line: 1018, column: 20, scope: !3094)
!3103 = !DILocalVariable(name: "ret", scope: !3094, file: !1, line: 1019, type: !127)
!3104 = !DILocation(line: 1019, column: 6, scope: !3094)
!3105 = !DILocalVariable(name: "count", scope: !3094, file: !1, line: 1019, type: !127)
!3106 = !DILocation(line: 1019, column: 11, scope: !3094)
!3107 = !DILocation(line: 1021, column: 6, scope: !3108)
!3108 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 1021, column: 6)
!3109 = !DILocation(line: 1021, column: 6, scope: !3094)
!3110 = !DILocation(line: 1026, column: 38, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !1, line: 1021, column: 13)
!3112 = !DILocation(line: 1026, column: 43, scope: !3111)
!3113 = !DILocation(line: 1026, column: 11, scope: !3111)
!3114 = !DILocation(line: 1026, column: 9, scope: !3111)
!3115 = !DILocation(line: 1028, column: 7, scope: !3116)
!3116 = distinct !DILexicalBlock(scope: !3111, file: !1, line: 1028, column: 7)
!3117 = !DILocation(line: 1028, column: 13, scope: !3116)
!3118 = !DILocation(line: 1028, column: 7, scope: !3111)
!3119 = !DILocation(line: 1029, column: 10, scope: !3116)
!3120 = !DILocation(line: 1029, column: 4, scope: !3116)
!3121 = !DILocation(line: 1030, column: 2, scope: !3111)
!3122 = !DILocation(line: 1032, column: 47, scope: !3094)
!3123 = !DILocation(line: 1032, column: 52, scope: !3094)
!3124 = !DILocation(line: 1032, column: 14, scope: !3094)
!3125 = !DILocation(line: 1032, column: 12, scope: !3094)
!3126 = !DILocation(line: 1033, column: 13, scope: !3127)
!3127 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 1033, column: 6)
!3128 = !DILocation(line: 1033, column: 6, scope: !3127)
!3129 = !DILocation(line: 1033, column: 6, scope: !3094)
!3130 = !DILocation(line: 1034, column: 18, scope: !3127)
!3131 = !DILocation(line: 1034, column: 10, scope: !3127)
!3132 = !DILocation(line: 1034, column: 3, scope: !3127)
!3133 = !DILocation(line: 1036, column: 29, scope: !3094)
!3134 = !DILocation(line: 1036, column: 34, scope: !3094)
!3135 = !DILocation(line: 1036, column: 8, scope: !3094)
!3136 = !DILocation(line: 1036, column: 6, scope: !3094)
!3137 = !DILocation(line: 1037, column: 6, scope: !3138)
!3138 = distinct !DILexicalBlock(scope: !3094, file: !1, line: 1037, column: 6)
!3139 = !DILocation(line: 1037, column: 6, scope: !3094)
!3140 = !DILocation(line: 1038, column: 28, scope: !3138)
!3141 = !DILocation(line: 1038, column: 3, scope: !3138)
!3142 = !DILocation(line: 1040, column: 9, scope: !3094)
!3143 = !DILocation(line: 1040, column: 2, scope: !3094)
!3144 = !DILocation(line: 1041, column: 1, scope: !3094)
!3145 = distinct !DISubprogram(name: "dev_pm_opp_of_cpumask_remove_table", scope: !1, file: !1, line: 1053, type: !3146, scopeLine: 1054, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3146 = !DISubroutineType(types: !3147)
!3147 = !{null, !2145}
!3148 = !DILocalVariable(name: "cpumask", arg: 1, scope: !3145, file: !1, line: 1053, type: !2145)
!3149 = !DILocation(line: 1053, column: 63, scope: !3145)
!3150 = !DILocation(line: 1055, column: 35, scope: !3145)
!3151 = !DILocation(line: 1055, column: 2, scope: !3145)
!3152 = !DILocation(line: 1056, column: 1, scope: !3145)
!3153 = distinct !DISubprogram(name: "dev_pm_opp_of_cpumask_add_table", scope: !1, file: !1, line: 1065, type: !3154, scopeLine: 1066, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3154 = !DISubroutineType(types: !3155)
!3155 = !{!127, !2145}
!3156 = !DILocalVariable(name: "cpumask", arg: 1, scope: !3153, file: !1, line: 1065, type: !2145)
!3157 = !DILocation(line: 1065, column: 59, scope: !3153)
!3158 = !DILocalVariable(name: "cpu_dev", scope: !3153, file: !1, line: 1067, type: !1623)
!3159 = !DILocation(line: 1067, column: 17, scope: !3153)
!3160 = !DILocalVariable(name: "cpu", scope: !3153, file: !1, line: 1068, type: !127)
!3161 = !DILocation(line: 1068, column: 6, scope: !3153)
!3162 = !DILocalVariable(name: "ret", scope: !3153, file: !1, line: 1068, type: !127)
!3163 = !DILocation(line: 1068, column: 11, scope: !3153)
!3164 = !DILocalVariable(name: "__ret_warn_on", scope: !3165, file: !1, line: 1070, type: !127)
!3165 = distinct !DILexicalBlock(scope: !3166, file: !1, line: 1070, column: 6)
!3166 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 1070, column: 6)
!3167 = !DILocation(line: 1070, column: 6, scope: !3165)
!3168 = !DILocation(line: 1070, column: 6, scope: !3169)
!3169 = distinct !DILexicalBlock(scope: !3165, file: !1, line: 1070, column: 6)
!3170 = !DILocation(line: 1070, column: 6, scope: !3171)
!3171 = distinct !DILexicalBlock(scope: !3169, file: !1, line: 1070, column: 6)
!3172 = !DILocation(line: 1070, column: 6, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3171, file: !1, line: 1070, column: 6)
!3174 = !DILocation(line: 1070, column: 6, scope: !3175)
!3175 = distinct !DILexicalBlock(scope: !3171, file: !1, line: 1070, column: 6)
!3176 = !{i32 -2143461681, i32 -2143461652, i32 -2143461606, i32 -2143461548, i32 -2143461494, i32 -2143461440, i32 -2143461385, i32 -2143461354}
!3177 = !DILocation(line: 1070, column: 6, scope: !3178)
!3178 = distinct !DILexicalBlock(scope: !3171, file: !1, line: 1070, column: 6)
!3179 = !{i32 -2143460955, i32 -2143460948, i32 -2143460896, i32 -2143460865, i32 -2143460835}
!3180 = !DILocation(line: 1070, column: 6, scope: !3181)
!3181 = distinct !DILexicalBlock(scope: !3171, file: !1, line: 1070, column: 6)
!3182 = !DILocation(line: 1070, column: 6, scope: !3166)
!3183 = !DILocation(line: 1070, column: 6, scope: !3153)
!3184 = !DILocation(line: 1071, column: 3, scope: !3166)
!3185 = !DILocation(line: 1073, column: 2, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3153, file: !1, line: 1073, column: 2)
!3187 = !DILocation(line: 1073, column: 2, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3186, file: !1, line: 1073, column: 2)
!3189 = !DILocation(line: 1074, column: 28, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3188, file: !1, line: 1073, column: 29)
!3191 = !DILocation(line: 1074, column: 13, scope: !3190)
!3192 = !DILocation(line: 1074, column: 11, scope: !3190)
!3193 = !DILocation(line: 1075, column: 8, scope: !3194)
!3194 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 1075, column: 7)
!3195 = !DILocation(line: 1075, column: 7, scope: !3190)
!3196 = !DILocation(line: 1076, column: 4, scope: !3197)
!3197 = distinct !DILexicalBlock(scope: !3194, file: !1, line: 1075, column: 17)
!3198 = !DILocation(line: 1078, column: 8, scope: !3197)
!3199 = !DILocation(line: 1079, column: 4, scope: !3197)
!3200 = !DILocation(line: 1082, column: 33, scope: !3190)
!3201 = !DILocation(line: 1082, column: 9, scope: !3190)
!3202 = !DILocation(line: 1082, column: 7, scope: !3190)
!3203 = !DILocation(line: 1083, column: 7, scope: !3204)
!3204 = distinct !DILexicalBlock(scope: !3190, file: !1, line: 1083, column: 7)
!3205 = !DILocation(line: 1083, column: 7, scope: !3190)
!3206 = !DILocation(line: 1088, column: 4, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3208, file: !1, line: 1088, column: 4)
!3208 = distinct !DILexicalBlock(scope: !3209, file: !1, line: 1088, column: 4)
!3209 = distinct !DILexicalBlock(scope: !3204, file: !1, line: 1083, column: 12)
!3210 = !DILocation(line: 1088, column: 4, scope: !3208)
!3211 = !DILocation(line: 1091, column: 4, scope: !3209)
!3212 = !DILocation(line: 1093, column: 2, scope: !3190)
!3213 = distinct !{!3213, !3185, !3214}
!3214 = !DILocation(line: 1093, column: 2, scope: !3186)
!3215 = !DILocation(line: 1095, column: 2, scope: !3153)
!3216 = !DILabel(scope: !3153, name: "remove_table", file: !1, line: 1097)
!3217 = !DILocation(line: 1097, column: 1, scope: !3153)
!3218 = !DILocation(line: 1099, column: 35, scope: !3153)
!3219 = !DILocation(line: 1099, column: 44, scope: !3153)
!3220 = !DILocation(line: 1099, column: 2, scope: !3153)
!3221 = !DILocation(line: 1101, column: 9, scope: !3153)
!3222 = !DILocation(line: 1101, column: 2, scope: !3153)
!3223 = !DILocation(line: 1102, column: 1, scope: !3153)
!3224 = distinct !DISubprogram(name: "cpumask_empty", scope: !624, file: !624, line: 543, type: !3225, scopeLine: 544, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3225 = !DISubroutineType(types: !3226)
!3226 = !{!198, !2145}
!3227 = !DILocalVariable(name: "srcp", arg: 1, scope: !3224, file: !624, line: 543, type: !2145)
!3228 = !DILocation(line: 543, column: 56, scope: !3224)
!3229 = !DILocation(line: 545, column: 22, scope: !3224)
!3230 = !DILocation(line: 545, column: 9, scope: !3224)
!3231 = !DILocation(line: 545, column: 2, scope: !3224)
!3232 = distinct !DISubprogram(name: "dev_pm_opp_of_get_sharing_cpus", scope: !1, file: !1, line: 1122, type: !3233, scopeLine: 1124, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3233 = !DISubroutineType(types: !3234)
!3234 = !{!127, !1623, !3235}
!3235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !625, size: 64)
!3236 = !DILocalVariable(name: "cpu_dev", arg: 1, scope: !3232, file: !1, line: 1122, type: !1623)
!3237 = !DILocation(line: 1122, column: 51, scope: !3232)
!3238 = !DILocalVariable(name: "cpumask", arg: 2, scope: !3232, file: !1, line: 1123, type: !3235)
!3239 = !DILocation(line: 1123, column: 24, scope: !3232)
!3240 = !DILocalVariable(name: "np", scope: !3232, file: !1, line: 1125, type: !162)
!3241 = !DILocation(line: 1125, column: 22, scope: !3232)
!3242 = !DILocalVariable(name: "tmp_np", scope: !3232, file: !1, line: 1125, type: !162)
!3243 = !DILocation(line: 1125, column: 27, scope: !3232)
!3244 = !DILocalVariable(name: "cpu_np", scope: !3232, file: !1, line: 1125, type: !162)
!3245 = !DILocation(line: 1125, column: 36, scope: !3232)
!3246 = !DILocalVariable(name: "cpu", scope: !3232, file: !1, line: 1126, type: !127)
!3247 = !DILocation(line: 1126, column: 6, scope: !3232)
!3248 = !DILocalVariable(name: "ret", scope: !3232, file: !1, line: 1126, type: !127)
!3249 = !DILocation(line: 1126, column: 11, scope: !3232)
!3250 = !DILocation(line: 1129, column: 39, scope: !3232)
!3251 = !DILocation(line: 1129, column: 7, scope: !3232)
!3252 = !DILocation(line: 1129, column: 5, scope: !3232)
!3253 = !DILocation(line: 1130, column: 7, scope: !3254)
!3254 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 1130, column: 6)
!3255 = !DILocation(line: 1130, column: 6, scope: !3232)
!3256 = !DILocation(line: 1132, column: 3, scope: !3257)
!3257 = distinct !DILexicalBlock(scope: !3254, file: !1, line: 1130, column: 11)
!3258 = !DILocation(line: 1135, column: 18, scope: !3232)
!3259 = !DILocation(line: 1135, column: 27, scope: !3232)
!3260 = !DILocation(line: 1135, column: 31, scope: !3232)
!3261 = !DILocation(line: 1135, column: 2, scope: !3232)
!3262 = !DILocation(line: 1138, column: 29, scope: !3263)
!3263 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 1138, column: 6)
!3264 = !DILocation(line: 1138, column: 7, scope: !3263)
!3265 = !DILocation(line: 1138, column: 6, scope: !3232)
!3266 = !DILocation(line: 1139, column: 3, scope: !3263)
!3267 = !DILocation(line: 1141, column: 2, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3232, file: !1, line: 1141, column: 2)
!3269 = !DILocation(line: 1141, column: 2, scope: !3270)
!3270 = distinct !DILexicalBlock(scope: !3268, file: !1, line: 1141, column: 2)
!3271 = !DILocation(line: 1142, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 1142, column: 7)
!3273 = distinct !DILexicalBlock(scope: !3270, file: !1, line: 1141, column: 29)
!3274 = !DILocation(line: 1142, column: 14, scope: !3272)
!3275 = !DILocation(line: 1142, column: 23, scope: !3272)
!3276 = !DILocation(line: 1142, column: 11, scope: !3272)
!3277 = !DILocation(line: 1142, column: 7, scope: !3273)
!3278 = !DILocation(line: 1143, column: 4, scope: !3272)
!3279 = !DILocation(line: 1145, column: 35, scope: !3273)
!3280 = !DILocation(line: 1145, column: 12, scope: !3273)
!3281 = !DILocation(line: 1145, column: 10, scope: !3273)
!3282 = !DILocation(line: 1146, column: 8, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 1146, column: 7)
!3284 = !DILocation(line: 1146, column: 7, scope: !3273)
!3285 = !DILocation(line: 1147, column: 4, scope: !3286)
!3286 = distinct !DILexicalBlock(scope: !3283, file: !1, line: 1146, column: 16)
!3287 = !DILocation(line: 1149, column: 8, scope: !3286)
!3288 = !DILocation(line: 1150, column: 4, scope: !3286)
!3289 = !DILocation(line: 1154, column: 38, scope: !3273)
!3290 = !DILocation(line: 1154, column: 12, scope: !3273)
!3291 = !DILocation(line: 1154, column: 10, scope: !3273)
!3292 = !DILocation(line: 1155, column: 15, scope: !3273)
!3293 = !DILocation(line: 1155, column: 3, scope: !3273)
!3294 = !DILocation(line: 1156, column: 8, scope: !3295)
!3295 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 1156, column: 7)
!3296 = !DILocation(line: 1156, column: 7, scope: !3273)
!3297 = !DILocation(line: 1157, column: 4, scope: !3298)
!3298 = distinct !DILexicalBlock(scope: !3295, file: !1, line: 1156, column: 16)
!3299 = !DILocation(line: 1158, column: 8, scope: !3298)
!3300 = !DILocation(line: 1159, column: 4, scope: !3298)
!3301 = !DILocation(line: 1163, column: 7, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3273, file: !1, line: 1163, column: 7)
!3303 = !DILocation(line: 1163, column: 13, scope: !3302)
!3304 = !DILocation(line: 1163, column: 10, scope: !3302)
!3305 = !DILocation(line: 1163, column: 7, scope: !3273)
!3306 = !DILocation(line: 1164, column: 20, scope: !3302)
!3307 = !DILocation(line: 1164, column: 25, scope: !3302)
!3308 = !DILocation(line: 1164, column: 4, scope: !3302)
!3309 = !DILocation(line: 1166, column: 15, scope: !3273)
!3310 = !DILocation(line: 1166, column: 3, scope: !3273)
!3311 = !DILocation(line: 1167, column: 2, scope: !3273)
!3312 = distinct !{!3312, !3267, !3313}
!3313 = !DILocation(line: 1167, column: 2, scope: !3268)
!3314 = !DILabel(scope: !3232, name: "put_cpu_node", file: !1, line: 1169)
!3315 = !DILocation(line: 1169, column: 1, scope: !3232)
!3316 = !DILocation(line: 1170, column: 14, scope: !3232)
!3317 = !DILocation(line: 1170, column: 2, scope: !3232)
!3318 = !DILocation(line: 1171, column: 9, scope: !3232)
!3319 = !DILocation(line: 1171, column: 2, scope: !3232)
!3320 = !DILocation(line: 1172, column: 1, scope: !3232)
!3321 = distinct !DISubprogram(name: "cpumask_set_cpu", scope: !624, file: !624, line: 332, type: !3322, scopeLine: 333, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3322 = !DISubroutineType(types: !3323)
!3323 = !{null, !5, !3235}
!3324 = !DILocalVariable(name: "cpu", arg: 1, scope: !3321, file: !624, line: 332, type: !5)
!3325 = !DILocation(line: 332, column: 49, scope: !3321)
!3326 = !DILocalVariable(name: "dstp", arg: 2, scope: !3321, file: !624, line: 332, type: !3235)
!3327 = !DILocation(line: 332, column: 70, scope: !3321)
!3328 = !DILocation(line: 334, column: 24, scope: !3321)
!3329 = !DILocation(line: 334, column: 10, scope: !3321)
!3330 = !DILocation(line: 334, column: 30, scope: !3321)
!3331 = !DILocation(line: 334, column: 2, scope: !3321)
!3332 = !DILocation(line: 335, column: 1, scope: !3321)
!3333 = distinct !DISubprogram(name: "of_cpu_device_node_get", scope: !3334, file: !3334, line: 49, type: !3335, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3334 = !DIFile(filename: "./include/linux/of_device.h", directory: "/home/lizy2001/genbc/linux")
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!162, !127}
!3337 = !DILocalVariable(name: "cpu", arg: 1, scope: !3333, file: !3334, line: 49, type: !127)
!3338 = !DILocation(line: 49, column: 62, scope: !3333)
!3339 = !DILocalVariable(name: "cpu_dev", scope: !3333, file: !3334, line: 51, type: !1623)
!3340 = !DILocation(line: 51, column: 17, scope: !3333)
!3341 = !DILocation(line: 52, column: 27, scope: !3333)
!3342 = !DILocation(line: 52, column: 12, scope: !3333)
!3343 = !DILocation(line: 52, column: 10, scope: !3333)
!3344 = !DILocation(line: 53, column: 7, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3333, file: !3334, line: 53, column: 6)
!3346 = !DILocation(line: 53, column: 6, scope: !3333)
!3347 = !DILocation(line: 54, column: 26, scope: !3345)
!3348 = !DILocation(line: 54, column: 10, scope: !3345)
!3349 = !DILocation(line: 54, column: 3, scope: !3345)
!3350 = !DILocation(line: 55, column: 21, scope: !3333)
!3351 = !DILocation(line: 55, column: 30, scope: !3333)
!3352 = !DILocation(line: 55, column: 9, scope: !3333)
!3353 = !DILocation(line: 55, column: 2, scope: !3333)
!3354 = !DILocation(line: 56, column: 1, scope: !3333)
!3355 = distinct !DISubprogram(name: "of_get_required_opp_performance_state", scope: !1, file: !1, line: 1186, type: !3356, scopeLine: 1187, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3356 = !DISubroutineType(types: !3357)
!3357 = !{!127, !162, !127}
!3358 = !DILocalVariable(name: "np", arg: 1, scope: !3355, file: !1, line: 1186, type: !162)
!3359 = !DILocation(line: 1186, column: 63, scope: !3355)
!3360 = !DILocalVariable(name: "index", arg: 2, scope: !3355, file: !1, line: 1186, type: !127)
!3361 = !DILocation(line: 1186, column: 71, scope: !3355)
!3362 = !DILocalVariable(name: "opp", scope: !3355, file: !1, line: 1188, type: !2069)
!3363 = !DILocation(line: 1188, column: 21, scope: !3355)
!3364 = !DILocalVariable(name: "required_np", scope: !3355, file: !1, line: 1189, type: !162)
!3365 = !DILocation(line: 1189, column: 22, scope: !3355)
!3366 = !DILocalVariable(name: "opp_table", scope: !3355, file: !1, line: 1190, type: !76)
!3367 = !DILocation(line: 1190, column: 20, scope: !3355)
!3368 = !DILocalVariable(name: "pstate", scope: !3355, file: !1, line: 1191, type: !127)
!3369 = !DILocation(line: 1191, column: 6, scope: !3355)
!3370 = !DILocation(line: 1193, column: 38, scope: !3355)
!3371 = !DILocation(line: 1193, column: 42, scope: !3355)
!3372 = !DILocation(line: 1193, column: 16, scope: !3355)
!3373 = !DILocation(line: 1193, column: 14, scope: !3355)
!3374 = !DILocation(line: 1194, column: 7, scope: !3375)
!3375 = distinct !DILexicalBlock(scope: !3355, file: !1, line: 1194, column: 6)
!3376 = !DILocation(line: 1194, column: 6, scope: !3355)
!3377 = !DILocation(line: 1195, column: 3, scope: !3375)
!3378 = !DILocation(line: 1197, column: 36, scope: !3355)
!3379 = !DILocation(line: 1197, column: 14, scope: !3355)
!3380 = !DILocation(line: 1197, column: 12, scope: !3355)
!3381 = !DILocation(line: 1198, column: 13, scope: !3382)
!3382 = distinct !DILexicalBlock(scope: !3355, file: !1, line: 1198, column: 6)
!3383 = !DILocation(line: 1198, column: 6, scope: !3382)
!3384 = !DILocation(line: 1198, column: 6, scope: !3355)
!3385 = !DILocation(line: 1199, column: 3, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3382, file: !1, line: 1198, column: 25)
!3387 = !DILocation(line: 1201, column: 3, scope: !3386)
!3388 = !DILocation(line: 1204, column: 24, scope: !3355)
!3389 = !DILocation(line: 1204, column: 35, scope: !3355)
!3390 = !DILocation(line: 1204, column: 8, scope: !3355)
!3391 = !DILocation(line: 1204, column: 6, scope: !3355)
!3392 = !DILocation(line: 1205, column: 6, scope: !3393)
!3393 = distinct !DILexicalBlock(scope: !3355, file: !1, line: 1205, column: 6)
!3394 = !DILocation(line: 1205, column: 6, scope: !3355)
!3395 = !DILocation(line: 1206, column: 12, scope: !3396)
!3396 = distinct !DILexicalBlock(scope: !3393, file: !1, line: 1205, column: 11)
!3397 = !DILocation(line: 1206, column: 17, scope: !3396)
!3398 = !DILocation(line: 1206, column: 10, scope: !3396)
!3399 = !DILocation(line: 1207, column: 18, scope: !3396)
!3400 = !DILocation(line: 1207, column: 3, scope: !3396)
!3401 = !DILocation(line: 1208, column: 2, scope: !3396)
!3402 = !DILocation(line: 1210, column: 27, scope: !3355)
!3403 = !DILocation(line: 1210, column: 2, scope: !3355)
!3404 = !DILabel(scope: !3355, name: "put_required_np", file: !1, line: 1212)
!3405 = !DILocation(line: 1212, column: 1, scope: !3355)
!3406 = !DILocation(line: 1213, column: 14, scope: !3355)
!3407 = !DILocation(line: 1213, column: 2, scope: !3355)
!3408 = !DILocation(line: 1215, column: 9, scope: !3355)
!3409 = !DILocation(line: 1215, column: 2, scope: !3355)
!3410 = !DILocation(line: 1216, column: 1, scope: !3355)
!3411 = distinct !DISubprogram(name: "of_parse_required_opp", scope: !1, file: !1, line: 95, type: !2166, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3412 = !DILocalVariable(name: "np", arg: 1, scope: !3411, file: !1, line: 95, type: !162)
!3413 = !DILocation(line: 95, column: 70, scope: !3411)
!3414 = !DILocalVariable(name: "index", arg: 2, scope: !3411, file: !1, line: 96, type: !127)
!3415 = !DILocation(line: 96, column: 12, scope: !3411)
!3416 = !DILocalVariable(name: "required_np", scope: !3411, file: !1, line: 98, type: !162)
!3417 = !DILocation(line: 98, column: 22, scope: !3411)
!3418 = !DILocation(line: 100, column: 33, scope: !3411)
!3419 = !DILocation(line: 100, column: 54, scope: !3411)
!3420 = !DILocation(line: 100, column: 16, scope: !3411)
!3421 = !DILocation(line: 100, column: 14, scope: !3411)
!3422 = !DILocation(line: 101, column: 6, scope: !3423)
!3423 = distinct !DILexicalBlock(scope: !3411, file: !1, line: 101, column: 6)
!3424 = !DILocation(line: 101, column: 6, scope: !3411)
!3425 = !DILocation(line: 102, column: 3, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3423, file: !1, line: 101, column: 30)
!3427 = !DILocation(line: 104, column: 2, scope: !3426)
!3428 = !DILocation(line: 106, column: 9, scope: !3411)
!3429 = !DILocation(line: 106, column: 2, scope: !3411)
!3430 = distinct !DISubprogram(name: "_find_table_of_opp_np", scope: !1, file: !1, line: 110, type: !3431, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3431 = !DISubroutineType(types: !3432)
!3432 = !{!76, !162}
!3433 = !DILocalVariable(name: "opp_np", arg: 1, scope: !3430, file: !1, line: 110, type: !162)
!3434 = !DILocation(line: 110, column: 68, scope: !3430)
!3435 = !DILocalVariable(name: "opp_table", scope: !3430, file: !1, line: 112, type: !76)
!3436 = !DILocation(line: 112, column: 20, scope: !3430)
!3437 = !DILocalVariable(name: "opp_table_np", scope: !3430, file: !1, line: 113, type: !162)
!3438 = !DILocation(line: 113, column: 22, scope: !3430)
!3439 = !DILocation(line: 115, column: 2, scope: !3430)
!3440 = !DILocation(line: 115, column: 2, scope: !3441)
!3441 = distinct !DILexicalBlock(scope: !3430, file: !1, line: 115, column: 2)
!3442 = !DILocation(line: 117, column: 31, scope: !3430)
!3443 = !DILocation(line: 117, column: 17, scope: !3430)
!3444 = !DILocation(line: 117, column: 15, scope: !3430)
!3445 = !DILocation(line: 118, column: 7, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3430, file: !1, line: 118, column: 6)
!3447 = !DILocation(line: 118, column: 6, scope: !3430)
!3448 = !DILocation(line: 119, column: 3, scope: !3446)
!3449 = !DILocation(line: 122, column: 14, scope: !3430)
!3450 = !DILocation(line: 122, column: 2, scope: !3430)
!3451 = !DILocalVariable(name: "__mptr", scope: !3452, file: !1, line: 124, type: !75)
!3452 = distinct !DILexicalBlock(scope: !3453, file: !1, line: 124, column: 2)
!3453 = distinct !DILexicalBlock(scope: !3430, file: !1, line: 124, column: 2)
!3454 = !DILocation(line: 124, column: 2, scope: !3452)
!3455 = !DILocation(line: 124, column: 2, scope: !3456)
!3456 = distinct !DILexicalBlock(scope: !3452, file: !1, line: 124, column: 2)
!3457 = !DILocation(line: 124, column: 2, scope: !3453)
!3458 = !DILocation(line: 124, column: 2, scope: !3459)
!3459 = distinct !DILexicalBlock(scope: !3453, file: !1, line: 124, column: 2)
!3460 = !DILocation(line: 125, column: 7, scope: !3461)
!3461 = distinct !DILexicalBlock(scope: !3462, file: !1, line: 125, column: 7)
!3462 = distinct !DILexicalBlock(scope: !3459, file: !1, line: 124, column: 52)
!3463 = !DILocation(line: 125, column: 23, scope: !3461)
!3464 = !DILocation(line: 125, column: 34, scope: !3461)
!3465 = !DILocation(line: 125, column: 20, scope: !3461)
!3466 = !DILocation(line: 125, column: 7, scope: !3462)
!3467 = !DILocation(line: 126, column: 24, scope: !3468)
!3468 = distinct !DILexicalBlock(scope: !3461, file: !1, line: 125, column: 38)
!3469 = !DILocation(line: 126, column: 4, scope: !3468)
!3470 = !DILocation(line: 127, column: 11, scope: !3468)
!3471 = !DILocation(line: 127, column: 4, scope: !3468)
!3472 = !DILocation(line: 129, column: 2, scope: !3462)
!3473 = !DILocalVariable(name: "__mptr", scope: !3474, file: !1, line: 124, type: !75)
!3474 = distinct !DILexicalBlock(scope: !3459, file: !1, line: 124, column: 2)
!3475 = !DILocation(line: 124, column: 2, scope: !3474)
!3476 = !DILocation(line: 124, column: 2, scope: !3477)
!3477 = distinct !DILexicalBlock(scope: !3474, file: !1, line: 124, column: 2)
!3478 = distinct !{!3478, !3457, !3479}
!3479 = !DILocation(line: 129, column: 2, scope: !3453)
!3480 = !DILabel(scope: !3430, name: "err", file: !1, line: 131)
!3481 = !DILocation(line: 131, column: 1, scope: !3430)
!3482 = !DILocation(line: 132, column: 9, scope: !3430)
!3483 = !DILocation(line: 132, column: 2, scope: !3430)
!3484 = !DILocation(line: 133, column: 1, scope: !3430)
!3485 = distinct !DISubprogram(name: "_find_opp_of_np", scope: !1, file: !1, line: 75, type: !3486, scopeLine: 77, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3486 = !DISubroutineType(types: !3487)
!3487 = !{!2069, !76, !162}
!3488 = !DILocalVariable(name: "opp_table", arg: 1, scope: !3485, file: !1, line: 75, type: !76)
!3489 = !DILocation(line: 75, column: 61, scope: !3485)
!3490 = !DILocalVariable(name: "opp_np", arg: 2, scope: !3485, file: !1, line: 76, type: !162)
!3491 = !DILocation(line: 76, column: 28, scope: !3485)
!3492 = !DILocalVariable(name: "opp", scope: !3485, file: !1, line: 78, type: !2069)
!3493 = !DILocation(line: 78, column: 21, scope: !3485)
!3494 = !DILocation(line: 80, column: 14, scope: !3485)
!3495 = !DILocation(line: 80, column: 25, scope: !3485)
!3496 = !DILocation(line: 80, column: 2, scope: !3485)
!3497 = !DILocalVariable(name: "__mptr", scope: !3498, file: !1, line: 82, type: !75)
!3498 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 82, column: 2)
!3499 = distinct !DILexicalBlock(scope: !3485, file: !1, line: 82, column: 2)
!3500 = !DILocation(line: 82, column: 2, scope: !3498)
!3501 = !DILocation(line: 82, column: 2, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3498, file: !1, line: 82, column: 2)
!3503 = !DILocation(line: 82, column: 2, scope: !3499)
!3504 = !DILocation(line: 82, column: 2, scope: !3505)
!3505 = distinct !DILexicalBlock(scope: !3499, file: !1, line: 82, column: 2)
!3506 = !DILocation(line: 83, column: 7, scope: !3507)
!3507 = distinct !DILexicalBlock(scope: !3508, file: !1, line: 83, column: 7)
!3508 = distinct !DILexicalBlock(scope: !3505, file: !1, line: 82, column: 55)
!3509 = !DILocation(line: 83, column: 12, scope: !3507)
!3510 = !DILocation(line: 83, column: 18, scope: !3507)
!3511 = !DILocation(line: 83, column: 15, scope: !3507)
!3512 = !DILocation(line: 83, column: 7, scope: !3508)
!3513 = !DILocation(line: 84, column: 19, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3507, file: !1, line: 83, column: 26)
!3515 = !DILocation(line: 84, column: 4, scope: !3514)
!3516 = !DILocation(line: 85, column: 18, scope: !3514)
!3517 = !DILocation(line: 85, column: 29, scope: !3514)
!3518 = !DILocation(line: 85, column: 4, scope: !3514)
!3519 = !DILocation(line: 86, column: 11, scope: !3514)
!3520 = !DILocation(line: 86, column: 4, scope: !3514)
!3521 = !DILocation(line: 88, column: 2, scope: !3508)
!3522 = !DILocalVariable(name: "__mptr", scope: !3523, file: !1, line: 82, type: !75)
!3523 = distinct !DILexicalBlock(scope: !3505, file: !1, line: 82, column: 2)
!3524 = !DILocation(line: 82, column: 2, scope: !3523)
!3525 = !DILocation(line: 82, column: 2, scope: !3526)
!3526 = distinct !DILexicalBlock(scope: !3523, file: !1, line: 82, column: 2)
!3527 = distinct !{!3527, !3503, !3528}
!3528 = !DILocation(line: 88, column: 2, scope: !3499)
!3529 = !DILocation(line: 90, column: 16, scope: !3485)
!3530 = !DILocation(line: 90, column: 27, scope: !3485)
!3531 = !DILocation(line: 90, column: 2, scope: !3485)
!3532 = !DILocation(line: 92, column: 2, scope: !3485)
!3533 = !DILocation(line: 93, column: 1, scope: !3485)
!3534 = distinct !DISubprogram(name: "dev_pm_opp_get_of_node", scope: !1, file: !1, line: 1227, type: !3535, scopeLine: 1228, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!162, !2069}
!3537 = !DILocalVariable(name: "opp", arg: 1, scope: !3534, file: !1, line: 1227, type: !2069)
!3538 = !DILocation(line: 1227, column: 63, scope: !3534)
!3539 = !DILocation(line: 1229, column: 21, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3534, file: !1, line: 1229, column: 6)
!3541 = !DILocation(line: 1229, column: 6, scope: !3540)
!3542 = !DILocation(line: 1229, column: 6, scope: !3534)
!3543 = !DILocation(line: 1230, column: 3, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !1, line: 1229, column: 27)
!3545 = !DILocation(line: 1231, column: 3, scope: !3544)
!3546 = !DILocation(line: 1234, column: 21, scope: !3534)
!3547 = !DILocation(line: 1234, column: 26, scope: !3534)
!3548 = !DILocation(line: 1234, column: 9, scope: !3534)
!3549 = !DILocation(line: 1234, column: 2, scope: !3534)
!3550 = !DILocation(line: 1235, column: 1, scope: !3534)
!3551 = distinct !DISubprogram(name: "IS_ERR_OR_NULL", scope: !2776, file: !2776, line: 39, type: !2777, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3552 = !DILocalVariable(name: "ptr", arg: 1, scope: !3551, file: !2776, line: 39, type: !206)
!3553 = !DILocation(line: 39, column: 68, scope: !3551)
!3554 = !DILocation(line: 41, column: 9, scope: !3551)
!3555 = !DILocation(line: 41, column: 24, scope: !3551)
!3556 = !DILocation(line: 41, column: 27, scope: !3551)
!3557 = !DILocation(line: 41, column: 2, scope: !3551)
!3558 = distinct !DISubprogram(name: "dev_pm_opp_of_register_em", scope: !1, file: !1, line: 1299, type: !3233, scopeLine: 1300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3559 = !DILocalVariable(name: "dev", arg: 1, scope: !3558, file: !1, line: 1299, type: !1623)
!3560 = !DILocation(line: 1299, column: 46, scope: !3558)
!3561 = !DILocalVariable(name: "cpus", arg: 2, scope: !3558, file: !1, line: 1299, type: !3235)
!3562 = !DILocation(line: 1299, column: 67, scope: !3558)
!3563 = !DILocalVariable(name: "em_cb", scope: !3558, file: !1, line: 1301, type: !3564)
!3564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "em_data_callback", file: !3565, line: 184, elements: !116)
!3565 = !DIFile(filename: "./include/linux/energy_model.h", directory: "/home/lizy2001/genbc/linux")
!3566 = !DILocation(line: 1301, column: 26, scope: !3558)
!3567 = !DILocalVariable(name: "np", scope: !3558, file: !1, line: 1302, type: !162)
!3568 = !DILocation(line: 1302, column: 22, scope: !3558)
!3569 = !DILocalVariable(name: "ret", scope: !3558, file: !1, line: 1303, type: !127)
!3570 = !DILocation(line: 1303, column: 6, scope: !3558)
!3571 = !DILocalVariable(name: "nr_opp", scope: !3558, file: !1, line: 1303, type: !127)
!3572 = !DILocation(line: 1303, column: 11, scope: !3558)
!3573 = !DILocalVariable(name: "cap", scope: !3558, file: !1, line: 1304, type: !172)
!3574 = !DILocation(line: 1304, column: 6, scope: !3558)
!3575 = !DILocation(line: 1306, column: 21, scope: !3576)
!3576 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1306, column: 6)
!3577 = !DILocation(line: 1306, column: 6, scope: !3576)
!3578 = !DILocation(line: 1306, column: 6, scope: !3558)
!3579 = !DILocation(line: 1307, column: 7, scope: !3580)
!3580 = distinct !DILexicalBlock(scope: !3576, file: !1, line: 1306, column: 27)
!3581 = !DILocation(line: 1308, column: 3, scope: !3580)
!3582 = !DILocation(line: 1311, column: 36, scope: !3558)
!3583 = !DILocation(line: 1311, column: 11, scope: !3558)
!3584 = !DILocation(line: 1311, column: 9, scope: !3558)
!3585 = !DILocation(line: 1312, column: 6, scope: !3586)
!3586 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1312, column: 6)
!3587 = !DILocation(line: 1312, column: 13, scope: !3586)
!3588 = !DILocation(line: 1312, column: 6, scope: !3558)
!3589 = !DILocation(line: 1313, column: 7, scope: !3590)
!3590 = distinct !DILexicalBlock(scope: !3586, file: !1, line: 1312, column: 19)
!3591 = !DILocation(line: 1314, column: 3, scope: !3590)
!3592 = !DILocation(line: 1317, column: 19, scope: !3558)
!3593 = !DILocation(line: 1317, column: 24, scope: !3558)
!3594 = !DILocation(line: 1317, column: 7, scope: !3558)
!3595 = !DILocation(line: 1317, column: 5, scope: !3558)
!3596 = !DILocation(line: 1318, column: 7, scope: !3597)
!3597 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1318, column: 6)
!3598 = !DILocation(line: 1318, column: 6, scope: !3558)
!3599 = !DILocation(line: 1319, column: 7, scope: !3600)
!3600 = distinct !DILexicalBlock(scope: !3597, file: !1, line: 1318, column: 11)
!3601 = !DILocation(line: 1320, column: 3, scope: !3600)
!3602 = !DILocation(line: 1330, column: 29, scope: !3558)
!3603 = !DILocation(line: 1330, column: 8, scope: !3558)
!3604 = !DILocation(line: 1330, column: 6, scope: !3558)
!3605 = !DILocation(line: 1331, column: 14, scope: !3558)
!3606 = !DILocation(line: 1331, column: 2, scope: !3558)
!3607 = !DILocation(line: 1332, column: 6, scope: !3608)
!3608 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1332, column: 6)
!3609 = !DILocation(line: 1332, column: 10, scope: !3608)
!3610 = !DILocation(line: 1332, column: 14, scope: !3608)
!3611 = !DILocation(line: 1332, column: 6, scope: !3558)
!3612 = !DILocation(line: 1334, column: 7, scope: !3613)
!3613 = distinct !DILexicalBlock(scope: !3608, file: !1, line: 1332, column: 19)
!3614 = !DILocation(line: 1335, column: 3, scope: !3613)
!3615 = !DILocation(line: 1338, column: 36, scope: !3558)
!3616 = !DILocation(line: 1338, column: 41, scope: !3558)
!3617 = !DILocation(line: 1338, column: 57, scope: !3558)
!3618 = !DILocation(line: 1338, column: 8, scope: !3558)
!3619 = !DILocation(line: 1338, column: 6, scope: !3558)
!3620 = !DILocation(line: 1339, column: 6, scope: !3621)
!3621 = distinct !DILexicalBlock(scope: !3558, file: !1, line: 1339, column: 6)
!3622 = !DILocation(line: 1339, column: 6, scope: !3558)
!3623 = !DILocation(line: 1340, column: 3, scope: !3621)
!3624 = !DILocation(line: 1342, column: 2, scope: !3558)
!3625 = !DILabel(scope: !3558, name: "failed", file: !1, line: 1344)
!3626 = !DILocation(line: 1344, column: 1, scope: !3558)
!3627 = !DILocation(line: 1346, column: 9, scope: !3558)
!3628 = !DILocation(line: 1346, column: 2, scope: !3558)
!3629 = !DILocation(line: 1347, column: 1, scope: !3558)
!3630 = distinct !DISubprogram(name: "em_dev_register_perf_domain", scope: !3565, file: !3565, line: 188, type: !3631, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3631 = !DISubroutineType(types: !3632)
!3632 = !{!127, !1623, !5, !3633, !3634}
!3633 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3564, size: 64)
!3634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!3635 = !DILocalVariable(name: "dev", arg: 1, scope: !3630, file: !3565, line: 188, type: !1623)
!3636 = !DILocation(line: 188, column: 48, scope: !3630)
!3637 = !DILocalVariable(name: "nr_states", arg: 2, scope: !3630, file: !3565, line: 188, type: !5)
!3638 = !DILocation(line: 188, column: 66, scope: !3630)
!3639 = !DILocalVariable(name: "cb", arg: 3, scope: !3630, file: !3565, line: 189, type: !3633)
!3640 = !DILocation(line: 189, column: 30, scope: !3630)
!3641 = !DILocalVariable(name: "span", arg: 4, scope: !3630, file: !3565, line: 189, type: !3634)
!3642 = !DILocation(line: 189, column: 45, scope: !3630)
!3643 = !DILocation(line: 191, column: 2, scope: !3630)
!3644 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !164, file: !164, line: 494, type: !3645, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3645 = !DISubroutineType(types: !3646)
!3646 = !{!127, !2329, !167, !673, !299}
!3647 = !DILocalVariable(name: "np", arg: 1, scope: !3644, file: !164, line: 494, type: !2329)
!3648 = !DILocation(line: 494, column: 72, scope: !3644)
!3649 = !DILocalVariable(name: "propname", arg: 2, scope: !3644, file: !164, line: 495, type: !167)
!3650 = !DILocation(line: 495, column: 23, scope: !3644)
!3651 = !DILocalVariable(name: "out_values", arg: 3, scope: !3644, file: !164, line: 496, type: !673)
!3652 = !DILocation(line: 496, column: 16, scope: !3644)
!3653 = !DILocalVariable(name: "sz", arg: 4, scope: !3644, file: !164, line: 496, type: !299)
!3654 = !DILocation(line: 496, column: 35, scope: !3644)
!3655 = !DILocalVariable(name: "ret", scope: !3644, file: !164, line: 498, type: !127)
!3656 = !DILocation(line: 498, column: 6, scope: !3644)
!3657 = !DILocation(line: 498, column: 48, scope: !3644)
!3658 = !DILocation(line: 498, column: 52, scope: !3644)
!3659 = !DILocation(line: 498, column: 62, scope: !3644)
!3660 = !DILocation(line: 499, column: 13, scope: !3644)
!3661 = !DILocation(line: 498, column: 12, scope: !3644)
!3662 = !DILocation(line: 500, column: 6, scope: !3663)
!3663 = distinct !DILexicalBlock(scope: !3644, file: !164, line: 500, column: 6)
!3664 = !DILocation(line: 500, column: 10, scope: !3663)
!3665 = !DILocation(line: 500, column: 6, scope: !3644)
!3666 = !DILocation(line: 501, column: 3, scope: !3663)
!3667 = !DILocation(line: 503, column: 10, scope: !3663)
!3668 = !DILocation(line: 503, column: 3, scope: !3663)
!3669 = !DILocation(line: 504, column: 1, scope: !3644)
!3670 = distinct !DISubprogram(name: "kmalloc_array", scope: !60, file: !60, line: 584, type: !2753, scopeLine: 585, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3671 = !DILocalVariable(name: "s", arg: 1, scope: !3672, file: !60, line: 445, type: !1090)
!3672 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !60, file: !60, line: 445, type: !3673, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3673 = !DISubroutineType(types: !3674)
!3674 = !{!75, !1090, !1498, !299}
!3675 = !DILocation(line: 445, column: 72, scope: !3672, inlinedAt: !3676)
!3676 = distinct !DILocation(line: 552, column: 10, scope: !3677, inlinedAt: !3682)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !60, line: 540, column: 34)
!3678 = distinct !DILexicalBlock(scope: !3679, file: !60, line: 540, column: 6)
!3679 = distinct !DISubprogram(name: "kmalloc", scope: !60, file: !60, line: 538, type: !3680, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3680 = !DISubroutineType(types: !3681)
!3681 = !{!75, !299, !1498}
!3682 = distinct !DILocation(line: 591, column: 10, scope: !3683)
!3683 = distinct !DILexicalBlock(scope: !3670, file: !60, line: 590, column: 6)
!3684 = !DILocalVariable(name: "flags", arg: 2, scope: !3672, file: !60, line: 446, type: !1498)
!3685 = !DILocation(line: 446, column: 9, scope: !3672, inlinedAt: !3676)
!3686 = !DILocalVariable(name: "size", arg: 3, scope: !3672, file: !60, line: 446, type: !299)
!3687 = !DILocation(line: 446, column: 23, scope: !3672, inlinedAt: !3676)
!3688 = !DILocalVariable(name: "ret", scope: !3672, file: !60, line: 448, type: !75)
!3689 = !DILocation(line: 448, column: 8, scope: !3672, inlinedAt: !3676)
!3690 = !DILocalVariable(name: "flags", arg: 1, scope: !3691, file: !60, line: 318, type: !1498)
!3691 = distinct !DISubprogram(name: "kmalloc_type", scope: !60, file: !60, line: 318, type: !3692, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3692 = !DISubroutineType(types: !3693)
!3693 = !{!59, !1498}
!3694 = !DILocation(line: 318, column: 67, scope: !3691, inlinedAt: !3695)
!3695 = distinct !DILocation(line: 553, column: 20, scope: !3677, inlinedAt: !3682)
!3696 = !DILocalVariable(name: "size", arg: 1, scope: !3697, file: !60, line: 346, type: !299)
!3697 = distinct !DISubprogram(name: "kmalloc_index", scope: !60, file: !60, line: 346, type: !3698, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3698 = !DISubroutineType(types: !3699)
!3699 = !{!5, !299}
!3700 = !DILocation(line: 346, column: 58, scope: !3697, inlinedAt: !3701)
!3701 = distinct !DILocation(line: 547, column: 11, scope: !3677, inlinedAt: !3682)
!3702 = !DILocalVariable(name: "size", arg: 1, scope: !3703, file: !60, line: 472, type: !299)
!3703 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !60, file: !60, line: 472, type: !3704, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3704 = !DISubroutineType(types: !3705)
!3705 = !{!75, !299, !1498, !5}
!3706 = !DILocation(line: 472, column: 28, scope: !3703, inlinedAt: !3707)
!3707 = distinct !DILocation(line: 481, column: 9, scope: !3708, inlinedAt: !3709)
!3708 = distinct !DISubprogram(name: "kmalloc_large", scope: !60, file: !60, line: 478, type: !3680, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3709 = distinct !DILocation(line: 545, column: 11, scope: !3710, inlinedAt: !3682)
!3710 = distinct !DILexicalBlock(scope: !3677, file: !60, line: 544, column: 7)
!3711 = !DILocalVariable(name: "flags", arg: 2, scope: !3703, file: !60, line: 472, type: !1498)
!3712 = !DILocation(line: 472, column: 40, scope: !3703, inlinedAt: !3707)
!3713 = !DILocalVariable(name: "order", arg: 3, scope: !3703, file: !60, line: 472, type: !5)
!3714 = !DILocation(line: 472, column: 60, scope: !3703, inlinedAt: !3707)
!3715 = !DILocalVariable(name: "size", arg: 1, scope: !3708, file: !60, line: 478, type: !299)
!3716 = !DILocation(line: 478, column: 51, scope: !3708, inlinedAt: !3709)
!3717 = !DILocalVariable(name: "flags", arg: 2, scope: !3708, file: !60, line: 478, type: !1498)
!3718 = !DILocation(line: 478, column: 63, scope: !3708, inlinedAt: !3709)
!3719 = !DILocalVariable(name: "order", scope: !3708, file: !60, line: 480, type: !5)
!3720 = !DILocation(line: 480, column: 15, scope: !3708, inlinedAt: !3709)
!3721 = !DILocalVariable(name: "size", arg: 1, scope: !3679, file: !60, line: 538, type: !299)
!3722 = !DILocation(line: 538, column: 45, scope: !3679, inlinedAt: !3682)
!3723 = !DILocalVariable(name: "flags", arg: 2, scope: !3679, file: !60, line: 538, type: !1498)
!3724 = !DILocation(line: 538, column: 57, scope: !3679, inlinedAt: !3682)
!3725 = !DILocalVariable(name: "index", scope: !3677, file: !60, line: 542, type: !5)
!3726 = !DILocation(line: 542, column: 16, scope: !3677, inlinedAt: !3682)
!3727 = !DILocalVariable(name: "n", arg: 1, scope: !3670, file: !60, line: 584, type: !299)
!3728 = !DILocation(line: 584, column: 42, scope: !3670)
!3729 = !DILocalVariable(name: "size", arg: 2, scope: !3670, file: !60, line: 584, type: !299)
!3730 = !DILocation(line: 584, column: 52, scope: !3670)
!3731 = !DILocalVariable(name: "flags", arg: 3, scope: !3670, file: !60, line: 584, type: !1498)
!3732 = !DILocation(line: 584, column: 64, scope: !3670)
!3733 = !DILocalVariable(name: "bytes", scope: !3670, file: !60, line: 586, type: !299)
!3734 = !DILocation(line: 586, column: 9, scope: !3670)
!3735 = !DILocalVariable(name: "__a", scope: !3736, file: !60, line: 588, type: !299)
!3736 = distinct !DILexicalBlock(scope: !3737, file: !60, line: 588, column: 6)
!3737 = distinct !DILexicalBlock(scope: !3670, file: !60, line: 588, column: 6)
!3738 = !DILocation(line: 588, column: 6, scope: !3736)
!3739 = !DILocalVariable(name: "__b", scope: !3736, file: !60, line: 588, type: !299)
!3740 = !DILocalVariable(name: "__d", scope: !3736, file: !60, line: 588, type: !3741)
!3741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !299, size: 64)
!3742 = !DILocation(line: 588, column: 6, scope: !3737)
!3743 = !DILocation(line: 588, column: 6, scope: !3670)
!3744 = !DILocation(line: 589, column: 3, scope: !3737)
!3745 = !DILocation(line: 590, column: 27, scope: !3683)
!3746 = !DILocation(line: 590, column: 6, scope: !3683)
!3747 = !DILocation(line: 590, column: 30, scope: !3683)
!3748 = !DILocation(line: 590, column: 54, scope: !3683)
!3749 = !DILocation(line: 590, column: 33, scope: !3683)
!3750 = !DILocation(line: 590, column: 6, scope: !3670)
!3751 = !DILocation(line: 591, column: 18, scope: !3683)
!3752 = !DILocation(line: 591, column: 25, scope: !3683)
!3753 = !DILocation(line: 540, column: 27, scope: !3678, inlinedAt: !3682)
!3754 = !DILocation(line: 540, column: 6, scope: !3678, inlinedAt: !3682)
!3755 = !DILocation(line: 540, column: 6, scope: !3679, inlinedAt: !3682)
!3756 = !DILocation(line: 544, column: 7, scope: !3710, inlinedAt: !3682)
!3757 = !DILocation(line: 544, column: 12, scope: !3710, inlinedAt: !3682)
!3758 = !DILocation(line: 544, column: 7, scope: !3677, inlinedAt: !3682)
!3759 = !DILocation(line: 545, column: 25, scope: !3710, inlinedAt: !3682)
!3760 = !DILocation(line: 545, column: 31, scope: !3710, inlinedAt: !3682)
!3761 = !DILocation(line: 480, column: 33, scope: !3708, inlinedAt: !3709)
!3762 = !DILocation(line: 480, column: 23, scope: !3708, inlinedAt: !3709)
!3763 = !DILocation(line: 481, column: 29, scope: !3708, inlinedAt: !3709)
!3764 = !DILocation(line: 481, column: 35, scope: !3708, inlinedAt: !3709)
!3765 = !DILocation(line: 481, column: 42, scope: !3708, inlinedAt: !3709)
!3766 = !DILocation(line: 474, column: 23, scope: !3703, inlinedAt: !3707)
!3767 = !DILocation(line: 474, column: 29, scope: !3703, inlinedAt: !3707)
!3768 = !DILocation(line: 474, column: 36, scope: !3703, inlinedAt: !3707)
!3769 = !DILocation(line: 474, column: 9, scope: !3703, inlinedAt: !3707)
!3770 = !DILocation(line: 545, column: 4, scope: !3710, inlinedAt: !3682)
!3771 = !DILocation(line: 547, column: 25, scope: !3677, inlinedAt: !3682)
!3772 = !DILocation(line: 348, column: 7, scope: !3773, inlinedAt: !3701)
!3773 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 348, column: 6)
!3774 = !DILocation(line: 348, column: 6, scope: !3697, inlinedAt: !3701)
!3775 = !DILocation(line: 349, column: 3, scope: !3773, inlinedAt: !3701)
!3776 = !DILocation(line: 351, column: 6, scope: !3777, inlinedAt: !3701)
!3777 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 351, column: 6)
!3778 = !DILocation(line: 351, column: 11, scope: !3777, inlinedAt: !3701)
!3779 = !DILocation(line: 351, column: 6, scope: !3697, inlinedAt: !3701)
!3780 = !DILocation(line: 352, column: 3, scope: !3777, inlinedAt: !3701)
!3781 = !DILocation(line: 354, column: 32, scope: !3782, inlinedAt: !3701)
!3782 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 354, column: 6)
!3783 = !DILocation(line: 354, column: 37, scope: !3782, inlinedAt: !3701)
!3784 = !DILocation(line: 354, column: 42, scope: !3782, inlinedAt: !3701)
!3785 = !DILocation(line: 354, column: 45, scope: !3782, inlinedAt: !3701)
!3786 = !DILocation(line: 354, column: 50, scope: !3782, inlinedAt: !3701)
!3787 = !DILocation(line: 354, column: 6, scope: !3697, inlinedAt: !3701)
!3788 = !DILocation(line: 355, column: 3, scope: !3782, inlinedAt: !3701)
!3789 = !DILocation(line: 356, column: 32, scope: !3790, inlinedAt: !3701)
!3790 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 356, column: 6)
!3791 = !DILocation(line: 356, column: 37, scope: !3790, inlinedAt: !3701)
!3792 = !DILocation(line: 356, column: 43, scope: !3790, inlinedAt: !3701)
!3793 = !DILocation(line: 356, column: 46, scope: !3790, inlinedAt: !3701)
!3794 = !DILocation(line: 356, column: 51, scope: !3790, inlinedAt: !3701)
!3795 = !DILocation(line: 356, column: 6, scope: !3697, inlinedAt: !3701)
!3796 = !DILocation(line: 357, column: 3, scope: !3790, inlinedAt: !3701)
!3797 = !DILocation(line: 358, column: 6, scope: !3798, inlinedAt: !3701)
!3798 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 358, column: 6)
!3799 = !DILocation(line: 358, column: 11, scope: !3798, inlinedAt: !3701)
!3800 = !DILocation(line: 358, column: 6, scope: !3697, inlinedAt: !3701)
!3801 = !DILocation(line: 358, column: 26, scope: !3798, inlinedAt: !3701)
!3802 = !DILocation(line: 359, column: 6, scope: !3803, inlinedAt: !3701)
!3803 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 359, column: 6)
!3804 = !DILocation(line: 359, column: 11, scope: !3803, inlinedAt: !3701)
!3805 = !DILocation(line: 359, column: 6, scope: !3697, inlinedAt: !3701)
!3806 = !DILocation(line: 359, column: 26, scope: !3803, inlinedAt: !3701)
!3807 = !DILocation(line: 360, column: 6, scope: !3808, inlinedAt: !3701)
!3808 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 360, column: 6)
!3809 = !DILocation(line: 360, column: 11, scope: !3808, inlinedAt: !3701)
!3810 = !DILocation(line: 360, column: 6, scope: !3697, inlinedAt: !3701)
!3811 = !DILocation(line: 360, column: 26, scope: !3808, inlinedAt: !3701)
!3812 = !DILocation(line: 361, column: 6, scope: !3813, inlinedAt: !3701)
!3813 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 361, column: 6)
!3814 = !DILocation(line: 361, column: 11, scope: !3813, inlinedAt: !3701)
!3815 = !DILocation(line: 361, column: 6, scope: !3697, inlinedAt: !3701)
!3816 = !DILocation(line: 361, column: 26, scope: !3813, inlinedAt: !3701)
!3817 = !DILocation(line: 362, column: 6, scope: !3818, inlinedAt: !3701)
!3818 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 362, column: 6)
!3819 = !DILocation(line: 362, column: 11, scope: !3818, inlinedAt: !3701)
!3820 = !DILocation(line: 362, column: 6, scope: !3697, inlinedAt: !3701)
!3821 = !DILocation(line: 362, column: 26, scope: !3818, inlinedAt: !3701)
!3822 = !DILocation(line: 363, column: 6, scope: !3823, inlinedAt: !3701)
!3823 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 363, column: 6)
!3824 = !DILocation(line: 363, column: 11, scope: !3823, inlinedAt: !3701)
!3825 = !DILocation(line: 363, column: 6, scope: !3697, inlinedAt: !3701)
!3826 = !DILocation(line: 363, column: 26, scope: !3823, inlinedAt: !3701)
!3827 = !DILocation(line: 364, column: 6, scope: !3828, inlinedAt: !3701)
!3828 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 364, column: 6)
!3829 = !DILocation(line: 364, column: 11, scope: !3828, inlinedAt: !3701)
!3830 = !DILocation(line: 364, column: 6, scope: !3697, inlinedAt: !3701)
!3831 = !DILocation(line: 364, column: 26, scope: !3828, inlinedAt: !3701)
!3832 = !DILocation(line: 365, column: 6, scope: !3833, inlinedAt: !3701)
!3833 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 365, column: 6)
!3834 = !DILocation(line: 365, column: 11, scope: !3833, inlinedAt: !3701)
!3835 = !DILocation(line: 365, column: 6, scope: !3697, inlinedAt: !3701)
!3836 = !DILocation(line: 365, column: 26, scope: !3833, inlinedAt: !3701)
!3837 = !DILocation(line: 366, column: 6, scope: !3838, inlinedAt: !3701)
!3838 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 366, column: 6)
!3839 = !DILocation(line: 366, column: 11, scope: !3838, inlinedAt: !3701)
!3840 = !DILocation(line: 366, column: 6, scope: !3697, inlinedAt: !3701)
!3841 = !DILocation(line: 366, column: 26, scope: !3838, inlinedAt: !3701)
!3842 = !DILocation(line: 367, column: 6, scope: !3843, inlinedAt: !3701)
!3843 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 367, column: 6)
!3844 = !DILocation(line: 367, column: 11, scope: !3843, inlinedAt: !3701)
!3845 = !DILocation(line: 367, column: 6, scope: !3697, inlinedAt: !3701)
!3846 = !DILocation(line: 367, column: 26, scope: !3843, inlinedAt: !3701)
!3847 = !DILocation(line: 368, column: 6, scope: !3848, inlinedAt: !3701)
!3848 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 368, column: 6)
!3849 = !DILocation(line: 368, column: 11, scope: !3848, inlinedAt: !3701)
!3850 = !DILocation(line: 368, column: 6, scope: !3697, inlinedAt: !3701)
!3851 = !DILocation(line: 368, column: 26, scope: !3848, inlinedAt: !3701)
!3852 = !DILocation(line: 369, column: 6, scope: !3853, inlinedAt: !3701)
!3853 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 369, column: 6)
!3854 = !DILocation(line: 369, column: 11, scope: !3853, inlinedAt: !3701)
!3855 = !DILocation(line: 369, column: 6, scope: !3697, inlinedAt: !3701)
!3856 = !DILocation(line: 369, column: 26, scope: !3853, inlinedAt: !3701)
!3857 = !DILocation(line: 370, column: 6, scope: !3858, inlinedAt: !3701)
!3858 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 370, column: 6)
!3859 = !DILocation(line: 370, column: 11, scope: !3858, inlinedAt: !3701)
!3860 = !DILocation(line: 370, column: 6, scope: !3697, inlinedAt: !3701)
!3861 = !DILocation(line: 370, column: 26, scope: !3858, inlinedAt: !3701)
!3862 = !DILocation(line: 371, column: 6, scope: !3863, inlinedAt: !3701)
!3863 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 371, column: 6)
!3864 = !DILocation(line: 371, column: 11, scope: !3863, inlinedAt: !3701)
!3865 = !DILocation(line: 371, column: 6, scope: !3697, inlinedAt: !3701)
!3866 = !DILocation(line: 371, column: 26, scope: !3863, inlinedAt: !3701)
!3867 = !DILocation(line: 372, column: 6, scope: !3868, inlinedAt: !3701)
!3868 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 372, column: 6)
!3869 = !DILocation(line: 372, column: 11, scope: !3868, inlinedAt: !3701)
!3870 = !DILocation(line: 372, column: 6, scope: !3697, inlinedAt: !3701)
!3871 = !DILocation(line: 372, column: 26, scope: !3868, inlinedAt: !3701)
!3872 = !DILocation(line: 373, column: 6, scope: !3873, inlinedAt: !3701)
!3873 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 373, column: 6)
!3874 = !DILocation(line: 373, column: 11, scope: !3873, inlinedAt: !3701)
!3875 = !DILocation(line: 373, column: 6, scope: !3697, inlinedAt: !3701)
!3876 = !DILocation(line: 373, column: 26, scope: !3873, inlinedAt: !3701)
!3877 = !DILocation(line: 374, column: 6, scope: !3878, inlinedAt: !3701)
!3878 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 374, column: 6)
!3879 = !DILocation(line: 374, column: 11, scope: !3878, inlinedAt: !3701)
!3880 = !DILocation(line: 374, column: 6, scope: !3697, inlinedAt: !3701)
!3881 = !DILocation(line: 374, column: 26, scope: !3878, inlinedAt: !3701)
!3882 = !DILocation(line: 375, column: 6, scope: !3883, inlinedAt: !3701)
!3883 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 375, column: 6)
!3884 = !DILocation(line: 375, column: 11, scope: !3883, inlinedAt: !3701)
!3885 = !DILocation(line: 375, column: 6, scope: !3697, inlinedAt: !3701)
!3886 = !DILocation(line: 375, column: 27, scope: !3883, inlinedAt: !3701)
!3887 = !DILocation(line: 376, column: 6, scope: !3888, inlinedAt: !3701)
!3888 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 376, column: 6)
!3889 = !DILocation(line: 376, column: 11, scope: !3888, inlinedAt: !3701)
!3890 = !DILocation(line: 376, column: 6, scope: !3697, inlinedAt: !3701)
!3891 = !DILocation(line: 376, column: 32, scope: !3888, inlinedAt: !3701)
!3892 = !DILocation(line: 377, column: 6, scope: !3893, inlinedAt: !3701)
!3893 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 377, column: 6)
!3894 = !DILocation(line: 377, column: 11, scope: !3893, inlinedAt: !3701)
!3895 = !DILocation(line: 377, column: 6, scope: !3697, inlinedAt: !3701)
!3896 = !DILocation(line: 377, column: 32, scope: !3893, inlinedAt: !3701)
!3897 = !DILocation(line: 378, column: 6, scope: !3898, inlinedAt: !3701)
!3898 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 378, column: 6)
!3899 = !DILocation(line: 378, column: 11, scope: !3898, inlinedAt: !3701)
!3900 = !DILocation(line: 378, column: 6, scope: !3697, inlinedAt: !3701)
!3901 = !DILocation(line: 378, column: 32, scope: !3898, inlinedAt: !3701)
!3902 = !DILocation(line: 379, column: 6, scope: !3903, inlinedAt: !3701)
!3903 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 379, column: 6)
!3904 = !DILocation(line: 379, column: 11, scope: !3903, inlinedAt: !3701)
!3905 = !DILocation(line: 379, column: 6, scope: !3697, inlinedAt: !3701)
!3906 = !DILocation(line: 379, column: 33, scope: !3903, inlinedAt: !3701)
!3907 = !DILocation(line: 380, column: 6, scope: !3908, inlinedAt: !3701)
!3908 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 380, column: 6)
!3909 = !DILocation(line: 380, column: 11, scope: !3908, inlinedAt: !3701)
!3910 = !DILocation(line: 380, column: 6, scope: !3697, inlinedAt: !3701)
!3911 = !DILocation(line: 380, column: 33, scope: !3908, inlinedAt: !3701)
!3912 = !DILocation(line: 381, column: 6, scope: !3913, inlinedAt: !3701)
!3913 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 381, column: 6)
!3914 = !DILocation(line: 381, column: 11, scope: !3913, inlinedAt: !3701)
!3915 = !DILocation(line: 381, column: 6, scope: !3697, inlinedAt: !3701)
!3916 = !DILocation(line: 381, column: 33, scope: !3913, inlinedAt: !3701)
!3917 = !DILocation(line: 382, column: 2, scope: !3918, inlinedAt: !3701)
!3918 = distinct !DILexicalBlock(scope: !3919, file: !60, line: 382, column: 2)
!3919 = distinct !DILexicalBlock(scope: !3697, file: !60, line: 382, column: 2)
!3920 = !{i32 -2143521072, i32 -2143521043, i32 -2143520997, i32 -2143520939, i32 -2143520885, i32 -2143520831, i32 -2143520776, i32 -2143520745}
!3921 = !DILocation(line: 382, column: 2, scope: !3922, inlinedAt: !3701)
!3922 = distinct !DILexicalBlock(scope: !3923, file: !60, line: 382, column: 2)
!3923 = distinct !DILexicalBlock(scope: !3919, file: !60, line: 382, column: 2)
!3924 = !{i32 -2143520302, i32 -2143520295, i32 -2143520241, i32 -2143520210, i32 -2143520180}
!3925 = !DILocation(line: 382, column: 2, scope: !3923, inlinedAt: !3701)
!3926 = !DILocation(line: 386, column: 1, scope: !3697, inlinedAt: !3701)
!3927 = !DILocation(line: 547, column: 9, scope: !3677, inlinedAt: !3682)
!3928 = !DILocation(line: 549, column: 8, scope: !3929, inlinedAt: !3682)
!3929 = distinct !DILexicalBlock(scope: !3677, file: !60, line: 549, column: 7)
!3930 = !DILocation(line: 549, column: 7, scope: !3677, inlinedAt: !3682)
!3931 = !DILocation(line: 550, column: 4, scope: !3929, inlinedAt: !3682)
!3932 = !DILocation(line: 553, column: 33, scope: !3677, inlinedAt: !3682)
!3933 = !DILocation(line: 325, column: 6, scope: !3934, inlinedAt: !3695)
!3934 = distinct !DILexicalBlock(scope: !3691, file: !60, line: 325, column: 6)
!3935 = !DILocation(line: 325, column: 6, scope: !3691, inlinedAt: !3695)
!3936 = !DILocation(line: 326, column: 3, scope: !3934, inlinedAt: !3695)
!3937 = !DILocation(line: 332, column: 9, scope: !3691, inlinedAt: !3695)
!3938 = !DILocation(line: 332, column: 15, scope: !3691, inlinedAt: !3695)
!3939 = !DILocation(line: 332, column: 2, scope: !3691, inlinedAt: !3695)
!3940 = !DILocation(line: 336, column: 1, scope: !3691, inlinedAt: !3695)
!3941 = !DILocation(line: 553, column: 5, scope: !3677, inlinedAt: !3682)
!3942 = !DILocation(line: 553, column: 41, scope: !3677, inlinedAt: !3682)
!3943 = !DILocation(line: 554, column: 5, scope: !3677, inlinedAt: !3682)
!3944 = !DILocation(line: 554, column: 12, scope: !3677, inlinedAt: !3682)
!3945 = !DILocation(line: 448, column: 31, scope: !3672, inlinedAt: !3676)
!3946 = !DILocation(line: 448, column: 34, scope: !3672, inlinedAt: !3676)
!3947 = !DILocation(line: 448, column: 14, scope: !3672, inlinedAt: !3676)
!3948 = !DILocation(line: 450, column: 22, scope: !3672, inlinedAt: !3676)
!3949 = !DILocation(line: 450, column: 25, scope: !3672, inlinedAt: !3676)
!3950 = !DILocation(line: 450, column: 30, scope: !3672, inlinedAt: !3676)
!3951 = !DILocation(line: 450, column: 36, scope: !3672, inlinedAt: !3676)
!3952 = !DILocation(line: 450, column: 8, scope: !3672, inlinedAt: !3676)
!3953 = !DILocation(line: 450, column: 6, scope: !3672, inlinedAt: !3676)
!3954 = !DILocation(line: 451, column: 9, scope: !3672, inlinedAt: !3676)
!3955 = !DILocation(line: 552, column: 3, scope: !3677, inlinedAt: !3682)
!3956 = !DILocation(line: 557, column: 19, scope: !3679, inlinedAt: !3682)
!3957 = !DILocation(line: 557, column: 25, scope: !3679, inlinedAt: !3682)
!3958 = !DILocation(line: 557, column: 9, scope: !3679, inlinedAt: !3682)
!3959 = !DILocation(line: 557, column: 2, scope: !3679, inlinedAt: !3682)
!3960 = !DILocation(line: 558, column: 1, scope: !3679, inlinedAt: !3682)
!3961 = !DILocation(line: 591, column: 3, scope: !3683)
!3962 = !DILocation(line: 592, column: 19, scope: !3670)
!3963 = !DILocation(line: 592, column: 26, scope: !3670)
!3964 = !DILocation(line: 592, column: 9, scope: !3670)
!3965 = !DILocation(line: 592, column: 2, scope: !3670)
!3966 = !DILocation(line: 593, column: 1, scope: !3670)
!3967 = distinct !DISubprogram(name: "__must_check_overflow", scope: !3968, file: !3968, line: 52, type: !3969, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3968 = !DIFile(filename: "./include/linux/overflow.h", directory: "/home/lizy2001/genbc/linux")
!3969 = !DISubroutineType(types: !3970)
!3970 = !{!198, !198}
!3971 = !DILocalVariable(name: "overflow", arg: 1, scope: !3967, file: !3968, line: 52, type: !198)
!3972 = !DILocation(line: 52, column: 60, scope: !3967)
!3973 = !DILocation(line: 54, column: 9, scope: !3967)
!3974 = !DILocation(line: 54, column: 2, scope: !3967)
!3975 = distinct !DISubprogram(name: "get_order", scope: !3976, file: !3976, line: 29, type: !3977, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3976 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3977 = !DISubroutineType(types: !3978)
!3978 = !{!127, !128}
!3979 = !DILocalVariable(name: "x", arg: 1, scope: !3980, file: !3981, line: 366, type: !370)
!3980 = distinct !DISubprogram(name: "fls64", scope: !3981, file: !3981, line: 366, type: !3982, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!3981 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3982 = !DISubroutineType(types: !3983)
!3983 = !{!127, !370}
!3984 = !DILocation(line: 366, column: 40, scope: !3980, inlinedAt: !3985)
!3985 = distinct !DILocation(line: 46, column: 9, scope: !3975)
!3986 = !DILocalVariable(name: "bitpos", scope: !3980, file: !3981, line: 368, type: !127)
!3987 = !DILocation(line: 368, column: 6, scope: !3980, inlinedAt: !3985)
!3988 = !DILocalVariable(name: "size", arg: 1, scope: !3975, file: !3976, line: 29, type: !128)
!3989 = !DILocation(line: 29, column: 63, scope: !3975)
!3990 = !DILocation(line: 31, column: 27, scope: !3991)
!3991 = distinct !DILexicalBlock(scope: !3975, file: !3976, line: 31, column: 6)
!3992 = !DILocation(line: 31, column: 6, scope: !3991)
!3993 = !DILocation(line: 31, column: 6, scope: !3975)
!3994 = !DILocation(line: 32, column: 8, scope: !3995)
!3995 = distinct !DILexicalBlock(scope: !3996, file: !3976, line: 32, column: 7)
!3996 = distinct !DILexicalBlock(scope: !3991, file: !3976, line: 31, column: 34)
!3997 = !DILocation(line: 32, column: 7, scope: !3996)
!3998 = !DILocation(line: 33, column: 4, scope: !3995)
!3999 = !DILocation(line: 35, column: 7, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3996, file: !3976, line: 35, column: 7)
!4001 = !DILocation(line: 35, column: 12, scope: !4000)
!4002 = !DILocation(line: 35, column: 7, scope: !3996)
!4003 = !DILocation(line: 36, column: 4, scope: !4000)
!4004 = !DILocation(line: 38, column: 10, scope: !3996)
!4005 = !DILocation(line: 38, column: 28, scope: !3996)
!4006 = !DILocation(line: 38, column: 41, scope: !3996)
!4007 = !DILocation(line: 38, column: 3, scope: !3996)
!4008 = !DILocation(line: 41, column: 6, scope: !3975)
!4009 = !DILocation(line: 42, column: 7, scope: !3975)
!4010 = !DILocation(line: 46, column: 15, scope: !3975)
!4011 = !DILocation(line: 374, column: 2, scope: !3980, inlinedAt: !3985)
!4012 = !DILocation(line: 376, column: 14, scope: !3980, inlinedAt: !3985)
!4013 = !{i32 421247}
!4014 = !DILocation(line: 377, column: 9, scope: !3980, inlinedAt: !3985)
!4015 = !DILocation(line: 377, column: 16, scope: !3980, inlinedAt: !3985)
!4016 = !DILocation(line: 46, column: 2, scope: !3975)
!4017 = !DILocation(line: 48, column: 1, scope: !3975)
!4018 = distinct !DISubprogram(name: "__ilog2_u64", scope: !4019, file: !4019, line: 30, type: !4020, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4019 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!4020 = !DISubroutineType(types: !4021)
!4021 = !{!127, !369}
!4022 = !DILocation(line: 366, column: 40, scope: !3980, inlinedAt: !4023)
!4023 = distinct !DILocation(line: 32, column: 9, scope: !4018)
!4024 = !DILocation(line: 368, column: 6, scope: !3980, inlinedAt: !4023)
!4025 = !DILocalVariable(name: "n", arg: 1, scope: !4018, file: !4019, line: 30, type: !369)
!4026 = !DILocation(line: 30, column: 21, scope: !4018)
!4027 = !DILocation(line: 32, column: 15, scope: !4018)
!4028 = !DILocation(line: 374, column: 2, scope: !3980, inlinedAt: !4023)
!4029 = !DILocation(line: 376, column: 14, scope: !3980, inlinedAt: !4023)
!4030 = !DILocation(line: 377, column: 9, scope: !3980, inlinedAt: !4023)
!4031 = !DILocation(line: 377, column: 16, scope: !3980, inlinedAt: !4023)
!4032 = !DILocation(line: 32, column: 18, scope: !4018)
!4033 = !DILocation(line: 32, column: 2, scope: !4018)
!4034 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !4035, file: !4035, line: 137, type: !4036, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4035 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!4036 = !DISubroutineType(types: !4037)
!4037 = !{!75, !1090, !206, !299, !1498}
!4038 = !DILocalVariable(name: "s", arg: 1, scope: !4034, file: !4035, line: 137, type: !1090)
!4039 = !DILocation(line: 137, column: 54, scope: !4034)
!4040 = !DILocalVariable(name: "object", arg: 2, scope: !4034, file: !4035, line: 137, type: !206)
!4041 = !DILocation(line: 137, column: 69, scope: !4034)
!4042 = !DILocalVariable(name: "size", arg: 3, scope: !4034, file: !4035, line: 138, type: !299)
!4043 = !DILocation(line: 138, column: 12, scope: !4034)
!4044 = !DILocalVariable(name: "flags", arg: 4, scope: !4034, file: !4035, line: 138, type: !1498)
!4045 = !DILocation(line: 138, column: 24, scope: !4034)
!4046 = !DILocation(line: 140, column: 17, scope: !4034)
!4047 = !DILocation(line: 140, column: 2, scope: !4034)
!4048 = distinct !DISubprogram(name: "_opp_add_static_v2", scope: !1, file: !1, line: 750, type: !4049, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4049 = !DISubroutineType(types: !4050)
!4050 = !{!2069, !76, !1623, !162}
!4051 = !DILocalVariable(name: "opp_table", arg: 1, scope: !4048, file: !1, line: 750, type: !76)
!4052 = !DILocation(line: 750, column: 64, scope: !4048)
!4053 = !DILocalVariable(name: "dev", arg: 2, scope: !4048, file: !1, line: 751, type: !1623)
!4054 = !DILocation(line: 751, column: 18, scope: !4048)
!4055 = !DILocalVariable(name: "np", arg: 3, scope: !4048, file: !1, line: 751, type: !162)
!4056 = !DILocation(line: 751, column: 43, scope: !4048)
!4057 = !DILocalVariable(name: "new_opp", scope: !4048, file: !1, line: 753, type: !2069)
!4058 = !DILocation(line: 753, column: 21, scope: !4048)
!4059 = !DILocalVariable(name: "rate", scope: !4048, file: !1, line: 754, type: !369)
!4060 = !DILocation(line: 754, column: 6, scope: !4048)
!4061 = !DILocalVariable(name: "val", scope: !4048, file: !1, line: 755, type: !172)
!4062 = !DILocation(line: 755, column: 6, scope: !4048)
!4063 = !DILocalVariable(name: "ret", scope: !4048, file: !1, line: 756, type: !127)
!4064 = !DILocation(line: 756, column: 6, scope: !4048)
!4065 = !DILocalVariable(name: "rate_not_available", scope: !4048, file: !1, line: 757, type: !198)
!4066 = !DILocation(line: 757, column: 7, scope: !4048)
!4067 = !DILocation(line: 759, column: 26, scope: !4048)
!4068 = !DILocation(line: 759, column: 12, scope: !4048)
!4069 = !DILocation(line: 759, column: 10, scope: !4048)
!4070 = !DILocation(line: 760, column: 7, scope: !4071)
!4071 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 760, column: 6)
!4072 = !DILocation(line: 760, column: 6, scope: !4048)
!4073 = !DILocation(line: 761, column: 10, scope: !4071)
!4074 = !DILocation(line: 761, column: 3, scope: !4071)
!4075 = !DILocation(line: 763, column: 22, scope: !4048)
!4076 = !DILocation(line: 763, column: 31, scope: !4048)
!4077 = !DILocation(line: 763, column: 42, scope: !4048)
!4078 = !DILocation(line: 763, column: 8, scope: !4048)
!4079 = !DILocation(line: 763, column: 6, scope: !4048)
!4080 = !DILocation(line: 764, column: 6, scope: !4081)
!4081 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 764, column: 6)
!4082 = !DILocation(line: 764, column: 10, scope: !4081)
!4083 = !DILocation(line: 764, column: 14, scope: !4081)
!4084 = !DILocation(line: 764, column: 18, scope: !4081)
!4085 = !DILocation(line: 764, column: 29, scope: !4081)
!4086 = !DILocation(line: 764, column: 6, scope: !4048)
!4087 = !DILocation(line: 765, column: 3, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4081, file: !1, line: 764, column: 39)
!4089 = !DILocation(line: 766, column: 3, scope: !4088)
!4090 = !DILocation(line: 770, column: 25, scope: !4091)
!4091 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 770, column: 6)
!4092 = !DILocation(line: 770, column: 30, scope: !4091)
!4093 = !DILocation(line: 770, column: 41, scope: !4091)
!4094 = !DILocation(line: 770, column: 7, scope: !4091)
!4095 = !DILocation(line: 770, column: 6, scope: !4048)
!4096 = !DILocation(line: 772, column: 3, scope: !4097)
!4097 = distinct !DILexicalBlock(scope: !4091, file: !1, line: 770, column: 46)
!4098 = !DILocation(line: 775, column: 41, scope: !4048)
!4099 = !DILocation(line: 775, column: 19, scope: !4048)
!4100 = !DILocation(line: 775, column: 2, scope: !4048)
!4101 = !DILocation(line: 775, column: 11, scope: !4048)
!4102 = !DILocation(line: 775, column: 17, scope: !4048)
!4103 = !DILocation(line: 777, column: 16, scope: !4048)
!4104 = !DILocation(line: 777, column: 2, scope: !4048)
!4105 = !DILocation(line: 777, column: 11, scope: !4048)
!4106 = !DILocation(line: 777, column: 14, scope: !4048)
!4107 = !DILocation(line: 778, column: 2, scope: !4048)
!4108 = !DILocation(line: 778, column: 11, scope: !4048)
!4109 = !DILocation(line: 778, column: 19, scope: !4048)
!4110 = !DILocation(line: 779, column: 2, scope: !4048)
!4111 = !DILocation(line: 779, column: 11, scope: !4048)
!4112 = !DILocation(line: 779, column: 21, scope: !4048)
!4113 = !DILocation(line: 781, column: 36, scope: !4048)
!4114 = !DILocation(line: 781, column: 47, scope: !4048)
!4115 = !DILocation(line: 781, column: 8, scope: !4048)
!4116 = !DILocation(line: 781, column: 6, scope: !4048)
!4117 = !DILocation(line: 782, column: 6, scope: !4118)
!4118 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 782, column: 6)
!4119 = !DILocation(line: 782, column: 6, scope: !4048)
!4120 = !DILocation(line: 783, column: 3, scope: !4118)
!4121 = !DILocation(line: 785, column: 28, scope: !4122)
!4122 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 785, column: 6)
!4123 = !DILocation(line: 785, column: 7, scope: !4122)
!4124 = !DILocation(line: 785, column: 6, scope: !4048)
!4125 = !DILocation(line: 786, column: 31, scope: !4122)
!4126 = !DILocation(line: 786, column: 3, scope: !4122)
!4127 = !DILocation(line: 786, column: 12, scope: !4122)
!4128 = !DILocation(line: 786, column: 29, scope: !4122)
!4129 = !DILocation(line: 788, column: 27, scope: !4048)
!4130 = !DILocation(line: 788, column: 36, scope: !4048)
!4131 = !DILocation(line: 788, column: 41, scope: !4048)
!4132 = !DILocation(line: 788, column: 8, scope: !4048)
!4133 = !DILocation(line: 788, column: 6, scope: !4048)
!4134 = !DILocation(line: 789, column: 6, scope: !4135)
!4135 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 789, column: 6)
!4136 = !DILocation(line: 789, column: 6, scope: !4048)
!4137 = !DILocation(line: 790, column: 3, scope: !4135)
!4138 = !DILocation(line: 792, column: 6, scope: !4139)
!4139 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 792, column: 6)
!4140 = !DILocation(line: 792, column: 17, scope: !4139)
!4141 = !DILocation(line: 792, column: 6, scope: !4048)
!4142 = !DILocation(line: 793, column: 55, scope: !4139)
!4143 = !DILocation(line: 793, column: 60, scope: !4139)
!4144 = !DILocation(line: 793, column: 21, scope: !4139)
!4145 = !DILocation(line: 793, column: 3, scope: !4139)
!4146 = !DILocation(line: 793, column: 12, scope: !4139)
!4147 = !DILocation(line: 793, column: 19, scope: !4139)
!4148 = !DILocation(line: 795, column: 17, scope: !4048)
!4149 = !DILocation(line: 795, column: 22, scope: !4048)
!4150 = !DILocation(line: 795, column: 31, scope: !4048)
!4151 = !DILocation(line: 795, column: 42, scope: !4048)
!4152 = !DILocation(line: 795, column: 8, scope: !4048)
!4153 = !DILocation(line: 795, column: 6, scope: !4048)
!4154 = !DILocation(line: 796, column: 6, scope: !4155)
!4155 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 796, column: 6)
!4156 = !DILocation(line: 796, column: 6, scope: !4048)
!4157 = !DILocation(line: 798, column: 7, scope: !4158)
!4158 = distinct !DILexicalBlock(scope: !4159, file: !1, line: 798, column: 7)
!4159 = distinct !DILexicalBlock(scope: !4155, file: !1, line: 796, column: 11)
!4160 = !DILocation(line: 798, column: 11, scope: !4158)
!4161 = !DILocation(line: 798, column: 7, scope: !4159)
!4162 = !DILocation(line: 799, column: 8, scope: !4158)
!4163 = !DILocation(line: 799, column: 4, scope: !4158)
!4164 = !DILocation(line: 800, column: 3, scope: !4159)
!4165 = !DILocation(line: 804, column: 28, scope: !4166)
!4166 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 804, column: 6)
!4167 = !DILocation(line: 804, column: 6, scope: !4166)
!4168 = !DILocation(line: 804, column: 6, scope: !4048)
!4169 = !DILocation(line: 805, column: 7, scope: !4170)
!4170 = distinct !DILexicalBlock(scope: !4171, file: !1, line: 805, column: 7)
!4171 = distinct !DILexicalBlock(scope: !4166, file: !1, line: 804, column: 48)
!4172 = !DILocation(line: 805, column: 18, scope: !4170)
!4173 = !DILocation(line: 805, column: 7, scope: !4171)
!4174 = !DILocation(line: 807, column: 8, scope: !4175)
!4175 = distinct !DILexicalBlock(scope: !4176, file: !1, line: 807, column: 8)
!4176 = distinct !DILexicalBlock(scope: !4170, file: !1, line: 805, column: 31)
!4177 = !DILocation(line: 807, column: 17, scope: !4175)
!4178 = !DILocation(line: 807, column: 24, scope: !4175)
!4179 = !DILocation(line: 807, column: 35, scope: !4175)
!4180 = !DILocation(line: 807, column: 48, scope: !4175)
!4181 = !DILocation(line: 807, column: 22, scope: !4175)
!4182 = !DILocation(line: 807, column: 8, scope: !4176)
!4183 = !DILocation(line: 808, column: 5, scope: !4184)
!4184 = distinct !DILexicalBlock(scope: !4175, file: !1, line: 807, column: 54)
!4185 = !DILocation(line: 808, column: 16, scope: !4184)
!4186 = !DILocation(line: 808, column: 29, scope: !4184)
!4187 = !DILocation(line: 808, column: 37, scope: !4184)
!4188 = !DILocation(line: 809, column: 5, scope: !4184)
!4189 = !DILocation(line: 809, column: 14, scope: !4184)
!4190 = !DILocation(line: 809, column: 22, scope: !4184)
!4191 = !DILocation(line: 810, column: 30, scope: !4184)
!4192 = !DILocation(line: 810, column: 5, scope: !4184)
!4193 = !DILocation(line: 810, column: 16, scope: !4184)
!4194 = !DILocation(line: 810, column: 28, scope: !4184)
!4195 = !DILocation(line: 811, column: 4, scope: !4184)
!4196 = !DILocation(line: 812, column: 3, scope: !4176)
!4197 = !DILocation(line: 813, column: 4, scope: !4198)
!4198 = distinct !DILexicalBlock(scope: !4170, file: !1, line: 812, column: 10)
!4199 = !DILocation(line: 813, column: 13, scope: !4198)
!4200 = !DILocation(line: 813, column: 21, scope: !4198)
!4201 = !DILocation(line: 814, column: 29, scope: !4198)
!4202 = !DILocation(line: 814, column: 4, scope: !4198)
!4203 = !DILocation(line: 814, column: 15, scope: !4198)
!4204 = !DILocation(line: 814, column: 27, scope: !4198)
!4205 = !DILocation(line: 816, column: 2, scope: !4171)
!4206 = !DILocation(line: 818, column: 6, scope: !4207)
!4207 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 818, column: 6)
!4208 = !DILocation(line: 818, column: 15, scope: !4207)
!4209 = !DILocation(line: 818, column: 34, scope: !4207)
!4210 = !DILocation(line: 818, column: 45, scope: !4207)
!4211 = !DILocation(line: 818, column: 32, scope: !4207)
!4212 = !DILocation(line: 818, column: 6, scope: !4048)
!4213 = !DILocation(line: 819, column: 37, scope: !4207)
!4214 = !DILocation(line: 819, column: 46, scope: !4207)
!4215 = !DILocation(line: 819, column: 3, scope: !4207)
!4216 = !DILocation(line: 819, column: 14, scope: !4207)
!4217 = !DILocation(line: 819, column: 35, scope: !4207)
!4218 = !DILocation(line: 821, column: 2, scope: !4219)
!4219 = distinct !DILexicalBlock(scope: !4220, file: !1, line: 821, column: 2)
!4220 = distinct !DILexicalBlock(scope: !4048, file: !1, line: 821, column: 2)
!4221 = !DILocation(line: 821, column: 2, scope: !4220)
!4222 = !DILocation(line: 830, column: 32, scope: !4048)
!4223 = !DILocation(line: 830, column: 43, scope: !4048)
!4224 = !DILocation(line: 830, column: 64, scope: !4048)
!4225 = !DILocation(line: 830, column: 2, scope: !4048)
!4226 = !DILocation(line: 831, column: 9, scope: !4048)
!4227 = !DILocation(line: 831, column: 2, scope: !4048)
!4228 = !DILabel(scope: !4048, name: "free_required_opps", file: !1, line: 833)
!4229 = !DILocation(line: 833, column: 1, scope: !4048)
!4230 = !DILocation(line: 834, column: 29, scope: !4048)
!4231 = !DILocation(line: 834, column: 40, scope: !4048)
!4232 = !DILocation(line: 834, column: 2, scope: !4048)
!4233 = !DILabel(scope: !4048, name: "free_opp", file: !1, line: 835)
!4234 = !DILocation(line: 835, column: 1, scope: !4048)
!4235 = !DILocation(line: 836, column: 12, scope: !4048)
!4236 = !DILocation(line: 836, column: 2, scope: !4048)
!4237 = !DILocation(line: 838, column: 17, scope: !4048)
!4238 = !DILocation(line: 838, column: 9, scope: !4048)
!4239 = !DILocation(line: 838, column: 2, scope: !4048)
!4240 = !DILocation(line: 839, column: 1, scope: !4048)
!4241 = distinct !DISubprogram(name: "ERR_PTR", scope: !2776, file: !2776, line: 24, type: !4242, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4242 = !DISubroutineType(types: !4243)
!4243 = !{!75, !287}
!4244 = !DILocalVariable(name: "error", arg: 1, scope: !4241, file: !2776, line: 24, type: !287)
!4245 = !DILocation(line: 24, column: 48, scope: !4241)
!4246 = !DILocation(line: 26, column: 18, scope: !4241)
!4247 = !DILocation(line: 26, column: 9, scope: !4241)
!4248 = !DILocation(line: 26, column: 2, scope: !4241)
!4249 = distinct !DISubprogram(name: "_read_opp_key", scope: !1, file: !1, line: 683, type: !4250, scopeLine: 685, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4250 = !DISubroutineType(types: !4251)
!4251 = !{!127, !2069, !76, !162, !4252}
!4252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!4253 = !DILocalVariable(name: "new_opp", arg: 1, scope: !4249, file: !1, line: 683, type: !2069)
!4254 = !DILocation(line: 683, column: 45, scope: !4249)
!4255 = !DILocalVariable(name: "table", arg: 2, scope: !4249, file: !1, line: 683, type: !76)
!4256 = !DILocation(line: 683, column: 72, scope: !4249)
!4257 = !DILocalVariable(name: "np", arg: 3, scope: !4249, file: !1, line: 684, type: !162)
!4258 = !DILocation(line: 684, column: 25, scope: !4249)
!4259 = !DILocalVariable(name: "rate_not_available", arg: 4, scope: !4249, file: !1, line: 684, type: !4252)
!4260 = !DILocation(line: 684, column: 35, scope: !4249)
!4261 = !DILocalVariable(name: "found", scope: !4249, file: !1, line: 686, type: !198)
!4262 = !DILocation(line: 686, column: 7, scope: !4249)
!4263 = !DILocalVariable(name: "rate", scope: !4249, file: !1, line: 687, type: !369)
!4264 = !DILocation(line: 687, column: 6, scope: !4249)
!4265 = !DILocalVariable(name: "ret", scope: !4249, file: !1, line: 688, type: !127)
!4266 = !DILocation(line: 688, column: 6, scope: !4249)
!4267 = !DILocation(line: 690, column: 29, scope: !4249)
!4268 = !DILocation(line: 690, column: 8, scope: !4249)
!4269 = !DILocation(line: 690, column: 6, scope: !4249)
!4270 = !DILocation(line: 691, column: 7, scope: !4271)
!4271 = distinct !DILexicalBlock(scope: !4249, file: !1, line: 691, column: 6)
!4272 = !DILocation(line: 691, column: 6, scope: !4249)
!4273 = !DILocation(line: 697, column: 34, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4271, file: !1, line: 691, column: 12)
!4275 = !DILocation(line: 697, column: 3, scope: !4274)
!4276 = !DILocation(line: 697, column: 12, scope: !4274)
!4277 = !DILocation(line: 697, column: 17, scope: !4274)
!4278 = !DILocation(line: 698, column: 9, scope: !4274)
!4279 = !DILocation(line: 699, column: 2, scope: !4274)
!4280 = !DILocation(line: 700, column: 26, scope: !4249)
!4281 = !DILocation(line: 700, column: 25, scope: !4249)
!4282 = !DILocation(line: 700, column: 24, scope: !4249)
!4283 = !DILocation(line: 700, column: 3, scope: !4249)
!4284 = !DILocation(line: 700, column: 22, scope: !4249)
!4285 = !DILocation(line: 707, column: 17, scope: !4249)
!4286 = !DILocation(line: 707, column: 26, scope: !4249)
!4287 = !DILocation(line: 707, column: 33, scope: !4249)
!4288 = !DILocation(line: 707, column: 8, scope: !4249)
!4289 = !DILocation(line: 707, column: 6, scope: !4249)
!4290 = !DILocation(line: 708, column: 7, scope: !4291)
!4291 = distinct !DILexicalBlock(scope: !4249, file: !1, line: 708, column: 6)
!4292 = !DILocation(line: 708, column: 6, scope: !4249)
!4293 = !DILocation(line: 709, column: 9, scope: !4294)
!4294 = distinct !DILexicalBlock(scope: !4291, file: !1, line: 708, column: 12)
!4295 = !DILocation(line: 710, column: 18, scope: !4294)
!4296 = !DILocation(line: 710, column: 27, scope: !4294)
!4297 = !DILocation(line: 710, column: 34, scope: !4294)
!4298 = !DILocation(line: 710, column: 9, scope: !4294)
!4299 = !DILocation(line: 710, column: 7, scope: !4294)
!4300 = !DILocation(line: 711, column: 2, scope: !4294)
!4301 = !DILocation(line: 714, column: 6, scope: !4302)
!4302 = distinct !DILexicalBlock(scope: !4249, file: !1, line: 714, column: 6)
!4303 = !DILocation(line: 714, column: 10, scope: !4302)
!4304 = !DILocation(line: 714, column: 13, scope: !4302)
!4305 = !DILocation(line: 714, column: 17, scope: !4302)
!4306 = !DILocation(line: 714, column: 6, scope: !4249)
!4307 = !DILocation(line: 715, column: 10, scope: !4302)
!4308 = !DILocation(line: 715, column: 3, scope: !4302)
!4309 = !DILocation(line: 717, column: 28, scope: !4310)
!4310 = distinct !DILexicalBlock(scope: !4249, file: !1, line: 717, column: 6)
!4311 = !DILocation(line: 717, column: 46, scope: !4310)
!4312 = !DILocation(line: 717, column: 55, scope: !4310)
!4313 = !DILocation(line: 717, column: 7, scope: !4310)
!4314 = !DILocation(line: 717, column: 6, scope: !4249)
!4315 = !DILocation(line: 718, column: 9, scope: !4310)
!4316 = !DILocation(line: 718, column: 3, scope: !4310)
!4317 = !DILocation(line: 720, column: 6, scope: !4318)
!4318 = distinct !DILexicalBlock(scope: !4249, file: !1, line: 720, column: 6)
!4319 = !DILocation(line: 720, column: 6, scope: !4249)
!4320 = !DILocation(line: 721, column: 3, scope: !4318)
!4321 = !DILocation(line: 723, column: 9, scope: !4249)
!4322 = !DILocation(line: 723, column: 2, scope: !4249)
!4323 = !DILocation(line: 724, column: 1, scope: !4249)
!4324 = distinct !DISubprogram(name: "_opp_is_supported", scope: !1, file: !1, line: 434, type: !4325, scopeLine: 436, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4325 = !DISubroutineType(types: !4326)
!4326 = !{!198, !1623, !76, !162}
!4327 = !DILocalVariable(name: "dev", arg: 1, scope: !4324, file: !1, line: 434, type: !1623)
!4328 = !DILocation(line: 434, column: 46, scope: !4324)
!4329 = !DILocalVariable(name: "opp_table", arg: 2, scope: !4324, file: !1, line: 434, type: !76)
!4330 = !DILocation(line: 434, column: 69, scope: !4324)
!4331 = !DILocalVariable(name: "np", arg: 3, scope: !4324, file: !1, line: 435, type: !162)
!4332 = !DILocation(line: 435, column: 30, scope: !4324)
!4333 = !DILocalVariable(name: "levels", scope: !4324, file: !1, line: 437, type: !5)
!4334 = !DILocation(line: 437, column: 15, scope: !4324)
!4335 = !DILocation(line: 437, column: 24, scope: !4324)
!4336 = !DILocation(line: 437, column: 35, scope: !4324)
!4337 = !DILocalVariable(name: "count", scope: !4324, file: !1, line: 438, type: !127)
!4338 = !DILocation(line: 438, column: 6, scope: !4324)
!4339 = !DILocalVariable(name: "versions", scope: !4324, file: !1, line: 438, type: !127)
!4340 = !DILocation(line: 438, column: 13, scope: !4324)
!4341 = !DILocalVariable(name: "ret", scope: !4324, file: !1, line: 438, type: !127)
!4342 = !DILocation(line: 438, column: 23, scope: !4324)
!4343 = !DILocalVariable(name: "i", scope: !4324, file: !1, line: 438, type: !127)
!4344 = !DILocation(line: 438, column: 28, scope: !4324)
!4345 = !DILocalVariable(name: "j", scope: !4324, file: !1, line: 438, type: !127)
!4346 = !DILocation(line: 438, column: 31, scope: !4324)
!4347 = !DILocalVariable(name: "val", scope: !4324, file: !1, line: 439, type: !172)
!4348 = !DILocation(line: 439, column: 6, scope: !4324)
!4349 = !DILocation(line: 441, column: 7, scope: !4350)
!4350 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 441, column: 6)
!4351 = !DILocation(line: 441, column: 18, scope: !4350)
!4352 = !DILocation(line: 441, column: 6, scope: !4324)
!4353 = !DILocation(line: 448, column: 24, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4355, file: !1, line: 448, column: 7)
!4355 = distinct !DILexicalBlock(scope: !4350, file: !1, line: 441, column: 32)
!4356 = !DILocation(line: 448, column: 7, scope: !4354)
!4357 = !DILocation(line: 448, column: 7, scope: !4355)
!4358 = !DILocation(line: 449, column: 4, scope: !4354)
!4359 = !DILocation(line: 451, column: 4, scope: !4354)
!4360 = !DILocation(line: 454, column: 38, scope: !4324)
!4361 = !DILocation(line: 454, column: 10, scope: !4324)
!4362 = !DILocation(line: 454, column: 8, scope: !4324)
!4363 = !DILocation(line: 455, column: 6, scope: !4364)
!4364 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 455, column: 6)
!4365 = !DILocation(line: 455, column: 12, scope: !4364)
!4366 = !DILocation(line: 455, column: 17, scope: !4364)
!4367 = !DILocation(line: 455, column: 20, scope: !4364)
!4368 = !DILocation(line: 455, column: 28, scope: !4364)
!4369 = !DILocation(line: 455, column: 26, scope: !4364)
!4370 = !DILocation(line: 455, column: 6, scope: !4324)
!4371 = !DILocation(line: 456, column: 3, scope: !4372)
!4372 = distinct !DILexicalBlock(scope: !4364, file: !1, line: 455, column: 36)
!4373 = !DILocation(line: 458, column: 3, scope: !4372)
!4374 = !DILocation(line: 461, column: 13, scope: !4324)
!4375 = !DILocation(line: 461, column: 21, scope: !4324)
!4376 = !DILocation(line: 461, column: 19, scope: !4324)
!4377 = !DILocation(line: 461, column: 11, scope: !4324)
!4378 = !DILocation(line: 464, column: 9, scope: !4379)
!4379 = distinct !DILexicalBlock(scope: !4324, file: !1, line: 464, column: 2)
!4380 = !DILocation(line: 464, column: 7, scope: !4379)
!4381 = !DILocation(line: 464, column: 14, scope: !4382)
!4382 = distinct !DILexicalBlock(scope: !4379, file: !1, line: 464, column: 2)
!4383 = !DILocation(line: 464, column: 18, scope: !4382)
!4384 = !DILocation(line: 464, column: 16, scope: !4382)
!4385 = !DILocation(line: 464, column: 2, scope: !4379)
!4386 = !DILocalVariable(name: "supported", scope: !4387, file: !1, line: 465, type: !198)
!4387 = distinct !DILexicalBlock(scope: !4382, file: !1, line: 464, column: 33)
!4388 = !DILocation(line: 465, column: 8, scope: !4387)
!4389 = !DILocation(line: 467, column: 10, scope: !4390)
!4390 = distinct !DILexicalBlock(scope: !4387, file: !1, line: 467, column: 3)
!4391 = !DILocation(line: 467, column: 8, scope: !4390)
!4392 = !DILocation(line: 467, column: 15, scope: !4393)
!4393 = distinct !DILexicalBlock(scope: !4390, file: !1, line: 467, column: 3)
!4394 = !DILocation(line: 467, column: 19, scope: !4393)
!4395 = !DILocation(line: 467, column: 17, scope: !4393)
!4396 = !DILocation(line: 467, column: 3, scope: !4390)
!4397 = !DILocation(line: 468, column: 37, scope: !4398)
!4398 = distinct !DILexicalBlock(scope: !4393, file: !1, line: 467, column: 32)
!4399 = !DILocation(line: 469, column: 9, scope: !4398)
!4400 = !DILocation(line: 469, column: 13, scope: !4398)
!4401 = !DILocation(line: 469, column: 11, scope: !4398)
!4402 = !DILocation(line: 469, column: 22, scope: !4398)
!4403 = !DILocation(line: 469, column: 20, scope: !4398)
!4404 = !DILocation(line: 468, column: 10, scope: !4398)
!4405 = !DILocation(line: 468, column: 8, scope: !4398)
!4406 = !DILocation(line: 470, column: 8, scope: !4407)
!4407 = distinct !DILexicalBlock(scope: !4398, file: !1, line: 470, column: 8)
!4408 = !DILocation(line: 470, column: 8, scope: !4398)
!4409 = !DILocation(line: 471, column: 5, scope: !4410)
!4410 = distinct !DILexicalBlock(scope: !4407, file: !1, line: 470, column: 13)
!4411 = !DILocation(line: 473, column: 5, scope: !4410)
!4412 = !DILocation(line: 477, column: 10, scope: !4413)
!4413 = distinct !DILexicalBlock(scope: !4398, file: !1, line: 477, column: 8)
!4414 = !DILocation(line: 477, column: 16, scope: !4413)
!4415 = !DILocation(line: 477, column: 27, scope: !4413)
!4416 = !DILocation(line: 477, column: 40, scope: !4413)
!4417 = !DILocation(line: 477, column: 14, scope: !4413)
!4418 = !DILocation(line: 477, column: 8, scope: !4398)
!4419 = !DILocation(line: 478, column: 15, scope: !4420)
!4420 = distinct !DILexicalBlock(scope: !4413, file: !1, line: 477, column: 45)
!4421 = !DILocation(line: 479, column: 5, scope: !4420)
!4422 = !DILocation(line: 481, column: 3, scope: !4398)
!4423 = !DILocation(line: 467, column: 28, scope: !4393)
!4424 = !DILocation(line: 467, column: 3, scope: !4393)
!4425 = distinct !{!4425, !4396, !4426}
!4426 = !DILocation(line: 481, column: 3, scope: !4390)
!4427 = !DILocation(line: 483, column: 7, scope: !4428)
!4428 = distinct !DILexicalBlock(scope: !4387, file: !1, line: 483, column: 7)
!4429 = !DILocation(line: 483, column: 7, scope: !4387)
!4430 = !DILocation(line: 484, column: 4, scope: !4428)
!4431 = !DILocation(line: 485, column: 2, scope: !4387)
!4432 = !DILocation(line: 464, column: 29, scope: !4382)
!4433 = !DILocation(line: 464, column: 2, scope: !4382)
!4434 = distinct !{!4434, !4385, !4435}
!4435 = !DILocation(line: 485, column: 2, scope: !4379)
!4436 = !DILocation(line: 487, column: 2, scope: !4324)
!4437 = !DILocation(line: 488, column: 1, scope: !4324)
!4438 = distinct !DISubprogram(name: "_of_opp_alloc_required_opps", scope: !1, file: !1, line: 290, type: !4439, scopeLine: 292, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4439 = !DISubroutineType(types: !4440)
!4440 = !{!127, !76, !2069}
!4441 = !DILocalVariable(name: "opp_table", arg: 1, scope: !4438, file: !1, line: 290, type: !76)
!4442 = !DILocation(line: 290, column: 58, scope: !4438)
!4443 = !DILocalVariable(name: "opp", arg: 2, scope: !4438, file: !1, line: 291, type: !2069)
!4444 = !DILocation(line: 291, column: 31, scope: !4438)
!4445 = !DILocalVariable(name: "required_opps", scope: !4438, file: !1, line: 293, type: !2097)
!4446 = !DILocation(line: 293, column: 22, scope: !4438)
!4447 = !DILocalVariable(name: "required_table", scope: !4438, file: !1, line: 294, type: !76)
!4448 = !DILocation(line: 294, column: 20, scope: !4438)
!4449 = !DILocalVariable(name: "np", scope: !4438, file: !1, line: 295, type: !162)
!4450 = !DILocation(line: 295, column: 22, scope: !4438)
!4451 = !DILocalVariable(name: "i", scope: !4438, file: !1, line: 296, type: !127)
!4452 = !DILocation(line: 296, column: 6, scope: !4438)
!4453 = !DILocalVariable(name: "ret", scope: !4438, file: !1, line: 296, type: !127)
!4454 = !DILocation(line: 296, column: 9, scope: !4438)
!4455 = !DILocalVariable(name: "count", scope: !4438, file: !1, line: 296, type: !127)
!4456 = !DILocation(line: 296, column: 14, scope: !4438)
!4457 = !DILocation(line: 296, column: 22, scope: !4438)
!4458 = !DILocation(line: 296, column: 33, scope: !4438)
!4459 = !DILocation(line: 298, column: 7, scope: !4460)
!4460 = distinct !DILexicalBlock(scope: !4438, file: !1, line: 298, column: 6)
!4461 = !DILocation(line: 298, column: 6, scope: !4438)
!4462 = !DILocation(line: 299, column: 3, scope: !4460)
!4463 = !DILocation(line: 301, column: 26, scope: !4438)
!4464 = !DILocation(line: 301, column: 18, scope: !4438)
!4465 = !DILocation(line: 301, column: 16, scope: !4438)
!4466 = !DILocation(line: 302, column: 7, scope: !4467)
!4467 = distinct !DILexicalBlock(scope: !4438, file: !1, line: 302, column: 6)
!4468 = !DILocation(line: 302, column: 6, scope: !4438)
!4469 = !DILocation(line: 303, column: 3, scope: !4467)
!4470 = !DILocation(line: 305, column: 23, scope: !4438)
!4471 = !DILocation(line: 305, column: 2, scope: !4438)
!4472 = !DILocation(line: 305, column: 7, scope: !4438)
!4473 = !DILocation(line: 305, column: 21, scope: !4438)
!4474 = !DILocation(line: 307, column: 9, scope: !4475)
!4475 = distinct !DILexicalBlock(scope: !4438, file: !1, line: 307, column: 2)
!4476 = !DILocation(line: 307, column: 7, scope: !4475)
!4477 = !DILocation(line: 307, column: 14, scope: !4478)
!4478 = distinct !DILexicalBlock(scope: !4475, file: !1, line: 307, column: 2)
!4479 = !DILocation(line: 307, column: 18, scope: !4478)
!4480 = !DILocation(line: 307, column: 16, scope: !4478)
!4481 = !DILocation(line: 307, column: 2, scope: !4475)
!4482 = !DILocation(line: 308, column: 20, scope: !4483)
!4483 = distinct !DILexicalBlock(scope: !4478, file: !1, line: 307, column: 30)
!4484 = !DILocation(line: 308, column: 31, scope: !4483)
!4485 = !DILocation(line: 308, column: 51, scope: !4483)
!4486 = !DILocation(line: 308, column: 18, scope: !4483)
!4487 = !DILocation(line: 310, column: 30, scope: !4483)
!4488 = !DILocation(line: 310, column: 35, scope: !4483)
!4489 = !DILocation(line: 310, column: 39, scope: !4483)
!4490 = !DILocation(line: 310, column: 8, scope: !4483)
!4491 = !DILocation(line: 310, column: 6, scope: !4483)
!4492 = !DILocation(line: 311, column: 7, scope: !4493)
!4493 = distinct !DILexicalBlock(scope: !4483, file: !1, line: 311, column: 7)
!4494 = !DILocation(line: 311, column: 7, scope: !4483)
!4495 = !DILocation(line: 312, column: 8, scope: !4496)
!4496 = distinct !DILexicalBlock(scope: !4493, file: !1, line: 311, column: 22)
!4497 = !DILocation(line: 313, column: 4, scope: !4496)
!4498 = !DILocation(line: 316, column: 38, scope: !4483)
!4499 = !DILocation(line: 316, column: 54, scope: !4483)
!4500 = !DILocation(line: 316, column: 22, scope: !4483)
!4501 = !DILocation(line: 316, column: 3, scope: !4483)
!4502 = !DILocation(line: 316, column: 17, scope: !4483)
!4503 = !DILocation(line: 316, column: 20, scope: !4483)
!4504 = !DILocation(line: 317, column: 15, scope: !4483)
!4505 = !DILocation(line: 317, column: 3, scope: !4483)
!4506 = !DILocation(line: 319, column: 8, scope: !4507)
!4507 = distinct !DILexicalBlock(scope: !4483, file: !1, line: 319, column: 7)
!4508 = !DILocation(line: 319, column: 22, scope: !4507)
!4509 = !DILocation(line: 319, column: 7, scope: !4483)
!4510 = !DILocation(line: 320, column: 4, scope: !4511)
!4511 = distinct !DILexicalBlock(scope: !4507, file: !1, line: 319, column: 26)
!4512 = !DILocation(line: 322, column: 8, scope: !4511)
!4513 = !DILocation(line: 323, column: 4, scope: !4511)
!4514 = !DILocation(line: 325, column: 2, scope: !4483)
!4515 = !DILocation(line: 307, column: 26, scope: !4478)
!4516 = !DILocation(line: 307, column: 2, scope: !4478)
!4517 = distinct !{!4517, !4481, !4518}
!4518 = !DILocation(line: 325, column: 2, scope: !4475)
!4519 = !DILocation(line: 327, column: 2, scope: !4438)
!4520 = !DILabel(scope: !4438, name: "free_required_opps", file: !1, line: 329)
!4521 = !DILocation(line: 329, column: 1, scope: !4438)
!4522 = !DILocation(line: 330, column: 29, scope: !4438)
!4523 = !DILocation(line: 330, column: 40, scope: !4438)
!4524 = !DILocation(line: 330, column: 2, scope: !4438)
!4525 = !DILocation(line: 332, column: 9, scope: !4438)
!4526 = !DILocation(line: 332, column: 2, scope: !4438)
!4527 = !DILocation(line: 333, column: 1, scope: !4438)
!4528 = distinct !DISubprogram(name: "opp_parse_supplies", scope: !1, file: !1, line: 490, type: !4529, scopeLine: 492, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4529 = !DISubroutineType(types: !4530)
!4530 = !{!127, !2069, !1623, !76}
!4531 = !DILocalVariable(name: "opp", arg: 1, scope: !4528, file: !1, line: 490, type: !2069)
!4532 = !DILocation(line: 490, column: 50, scope: !4528)
!4533 = !DILocalVariable(name: "dev", arg: 2, scope: !4528, file: !1, line: 490, type: !1623)
!4534 = !DILocation(line: 490, column: 70, scope: !4528)
!4535 = !DILocalVariable(name: "opp_table", arg: 3, scope: !4528, file: !1, line: 491, type: !76)
!4536 = !DILocation(line: 491, column: 28, scope: !4528)
!4537 = !DILocalVariable(name: "microvolt", scope: !4528, file: !1, line: 493, type: !673)
!4538 = !DILocation(line: 493, column: 7, scope: !4528)
!4539 = !DILocalVariable(name: "microamp", scope: !4528, file: !1, line: 493, type: !673)
!4540 = !DILocation(line: 493, column: 19, scope: !4528)
!4541 = !DILocalVariable(name: "supplies", scope: !4528, file: !1, line: 494, type: !127)
!4542 = !DILocation(line: 494, column: 6, scope: !4528)
!4543 = !DILocation(line: 494, column: 17, scope: !4528)
!4544 = !DILocation(line: 494, column: 28, scope: !4528)
!4545 = !DILocalVariable(name: "vcount", scope: !4528, file: !1, line: 494, type: !127)
!4546 = !DILocation(line: 494, column: 45, scope: !4528)
!4547 = !DILocalVariable(name: "icount", scope: !4528, file: !1, line: 494, type: !127)
!4548 = !DILocation(line: 494, column: 53, scope: !4528)
!4549 = !DILocalVariable(name: "ret", scope: !4528, file: !1, line: 494, type: !127)
!4550 = !DILocation(line: 494, column: 61, scope: !4528)
!4551 = !DILocalVariable(name: "i", scope: !4528, file: !1, line: 494, type: !127)
!4552 = !DILocation(line: 494, column: 66, scope: !4528)
!4553 = !DILocalVariable(name: "j", scope: !4528, file: !1, line: 494, type: !127)
!4554 = !DILocation(line: 494, column: 69, scope: !4528)
!4555 = !DILocalVariable(name: "prop", scope: !4528, file: !1, line: 495, type: !2049)
!4556 = !DILocation(line: 495, column: 19, scope: !4528)
!4557 = !DILocalVariable(name: "name", scope: !4528, file: !1, line: 496, type: !4558)
!4558 = !DICompositeType(tag: DW_TAG_array_type, baseType: !169, size: 2040, elements: !4559)
!4559 = !{!4560}
!4560 = !DISubrange(count: 255)
!4561 = !DILocation(line: 496, column: 7, scope: !4528)
!4562 = !DILocation(line: 499, column: 6, scope: !4563)
!4563 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 499, column: 6)
!4564 = !DILocation(line: 499, column: 17, scope: !4563)
!4565 = !DILocation(line: 499, column: 6, scope: !4528)
!4566 = !DILocation(line: 500, column: 12, scope: !4567)
!4567 = distinct !DILexicalBlock(scope: !4563, file: !1, line: 499, column: 28)
!4568 = !DILocation(line: 501, column: 5, scope: !4567)
!4569 = !DILocation(line: 501, column: 16, scope: !4567)
!4570 = !DILocation(line: 500, column: 3, scope: !4567)
!4571 = !DILocation(line: 502, column: 27, scope: !4567)
!4572 = !DILocation(line: 502, column: 32, scope: !4567)
!4573 = !DILocation(line: 502, column: 36, scope: !4567)
!4574 = !DILocation(line: 502, column: 10, scope: !4567)
!4575 = !DILocation(line: 502, column: 8, scope: !4567)
!4576 = !DILocation(line: 503, column: 2, scope: !4567)
!4577 = !DILocation(line: 505, column: 7, scope: !4578)
!4578 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 505, column: 6)
!4579 = !DILocation(line: 505, column: 6, scope: !4528)
!4580 = !DILocation(line: 507, column: 11, scope: !4581)
!4581 = distinct !DILexicalBlock(scope: !4578, file: !1, line: 505, column: 13)
!4582 = !DILocation(line: 507, column: 3, scope: !4581)
!4583 = !DILocation(line: 508, column: 27, scope: !4581)
!4584 = !DILocation(line: 508, column: 32, scope: !4581)
!4585 = !DILocation(line: 508, column: 36, scope: !4581)
!4586 = !DILocation(line: 508, column: 10, scope: !4581)
!4587 = !DILocation(line: 508, column: 8, scope: !4581)
!4588 = !DILocation(line: 511, column: 8, scope: !4589)
!4589 = distinct !DILexicalBlock(scope: !4581, file: !1, line: 511, column: 7)
!4590 = !DILocation(line: 511, column: 7, scope: !4581)
!4591 = !DILocation(line: 512, column: 8, scope: !4592)
!4592 = distinct !DILexicalBlock(scope: !4593, file: !1, line: 512, column: 8)
!4593 = distinct !DILexicalBlock(scope: !4589, file: !1, line: 511, column: 14)
!4594 = !DILocation(line: 512, column: 8, scope: !4593)
!4595 = !DILocation(line: 514, column: 5, scope: !4596)
!4596 = distinct !DILexicalBlock(scope: !4592, file: !1, line: 512, column: 34)
!4597 = !DILocation(line: 514, column: 16, scope: !4596)
!4598 = !DILocation(line: 514, column: 32, scope: !4596)
!4599 = !DILocation(line: 515, column: 5, scope: !4596)
!4600 = !DILocation(line: 518, column: 9, scope: !4601)
!4601 = distinct !DILexicalBlock(scope: !4593, file: !1, line: 518, column: 8)
!4602 = !DILocation(line: 518, column: 8, scope: !4593)
!4603 = !DILocation(line: 519, column: 5, scope: !4601)
!4604 = !DILocation(line: 521, column: 4, scope: !4593)
!4605 = !DILocation(line: 523, column: 4, scope: !4593)
!4606 = !DILocation(line: 525, column: 2, scope: !4581)
!4607 = !DILocation(line: 527, column: 6, scope: !4608)
!4608 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 527, column: 6)
!4609 = !DILocation(line: 527, column: 6, scope: !4528)
!4610 = !DILocation(line: 529, column: 14, scope: !4611)
!4611 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 527, column: 32)
!4612 = !DILocation(line: 529, column: 25, scope: !4611)
!4613 = !DILocation(line: 529, column: 41, scope: !4611)
!4614 = !DILocation(line: 529, column: 12, scope: !4611)
!4615 = !DILocation(line: 530, column: 2, scope: !4611)
!4616 = !DILocation(line: 530, column: 13, scope: !4617)
!4617 = distinct !DILexicalBlock(scope: !4608, file: !1, line: 530, column: 13)
!4618 = !DILocation(line: 530, column: 13, scope: !4608)
!4619 = !DILocation(line: 531, column: 3, scope: !4620)
!4620 = distinct !DILexicalBlock(scope: !4617, file: !1, line: 530, column: 34)
!4621 = !DILocation(line: 532, column: 3, scope: !4620)
!4622 = !DILocation(line: 535, column: 39, scope: !4528)
!4623 = !DILocation(line: 535, column: 44, scope: !4528)
!4624 = !DILocation(line: 535, column: 48, scope: !4528)
!4625 = !DILocation(line: 535, column: 11, scope: !4528)
!4626 = !DILocation(line: 535, column: 9, scope: !4528)
!4627 = !DILocation(line: 536, column: 6, scope: !4628)
!4628 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 536, column: 6)
!4629 = !DILocation(line: 536, column: 13, scope: !4628)
!4630 = !DILocation(line: 536, column: 6, scope: !4528)
!4631 = !DILocation(line: 537, column: 3, scope: !4632)
!4632 = distinct !DILexicalBlock(scope: !4628, file: !1, line: 536, column: 18)
!4633 = !DILocation(line: 539, column: 10, scope: !4632)
!4634 = !DILocation(line: 539, column: 3, scope: !4632)
!4635 = !DILocation(line: 543, column: 6, scope: !4636)
!4636 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 543, column: 6)
!4637 = !DILocation(line: 543, column: 16, scope: !4636)
!4638 = !DILocation(line: 543, column: 13, scope: !4636)
!4639 = !DILocation(line: 543, column: 25, scope: !4636)
!4640 = !DILocation(line: 543, column: 28, scope: !4636)
!4641 = !DILocation(line: 543, column: 38, scope: !4636)
!4642 = !DILocation(line: 543, column: 47, scope: !4636)
!4643 = !DILocation(line: 543, column: 35, scope: !4636)
!4644 = !DILocation(line: 543, column: 6, scope: !4528)
!4645 = !DILocation(line: 544, column: 3, scope: !4646)
!4646 = distinct !DILexicalBlock(scope: !4636, file: !1, line: 543, column: 52)
!4647 = !DILocation(line: 546, column: 3, scope: !4646)
!4648 = !DILocation(line: 549, column: 28, scope: !4528)
!4649 = !DILocation(line: 549, column: 14, scope: !4528)
!4650 = !DILocation(line: 549, column: 12, scope: !4528)
!4651 = !DILocation(line: 550, column: 7, scope: !4652)
!4652 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 550, column: 6)
!4653 = !DILocation(line: 550, column: 6, scope: !4528)
!4654 = !DILocation(line: 551, column: 3, scope: !4652)
!4655 = !DILocation(line: 553, column: 35, scope: !4528)
!4656 = !DILocation(line: 553, column: 40, scope: !4528)
!4657 = !DILocation(line: 553, column: 44, scope: !4528)
!4658 = !DILocation(line: 553, column: 50, scope: !4528)
!4659 = !DILocation(line: 553, column: 61, scope: !4528)
!4660 = !DILocation(line: 553, column: 8, scope: !4528)
!4661 = !DILocation(line: 553, column: 6, scope: !4528)
!4662 = !DILocation(line: 554, column: 6, scope: !4663)
!4663 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 554, column: 6)
!4664 = !DILocation(line: 554, column: 6, scope: !4528)
!4665 = !DILocation(line: 555, column: 3, scope: !4666)
!4666 = distinct !DILexicalBlock(scope: !4663, file: !1, line: 554, column: 11)
!4667 = !DILocation(line: 556, column: 7, scope: !4666)
!4668 = !DILocation(line: 557, column: 3, scope: !4666)
!4669 = !DILocation(line: 561, column: 7, scope: !4528)
!4670 = !DILocation(line: 562, column: 6, scope: !4671)
!4671 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 562, column: 6)
!4672 = !DILocation(line: 562, column: 17, scope: !4671)
!4673 = !DILocation(line: 562, column: 6, scope: !4528)
!4674 = !DILocation(line: 563, column: 12, scope: !4675)
!4675 = distinct !DILexicalBlock(scope: !4671, file: !1, line: 562, column: 28)
!4676 = !DILocation(line: 564, column: 5, scope: !4675)
!4677 = !DILocation(line: 564, column: 16, scope: !4675)
!4678 = !DILocation(line: 563, column: 3, scope: !4675)
!4679 = !DILocation(line: 565, column: 27, scope: !4675)
!4680 = !DILocation(line: 565, column: 32, scope: !4675)
!4681 = !DILocation(line: 565, column: 36, scope: !4675)
!4682 = !DILocation(line: 565, column: 10, scope: !4675)
!4683 = !DILocation(line: 565, column: 8, scope: !4675)
!4684 = !DILocation(line: 566, column: 2, scope: !4675)
!4685 = !DILocation(line: 568, column: 7, scope: !4686)
!4686 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 568, column: 6)
!4687 = !DILocation(line: 568, column: 6, scope: !4528)
!4688 = !DILocation(line: 570, column: 11, scope: !4689)
!4689 = distinct !DILexicalBlock(scope: !4686, file: !1, line: 568, column: 13)
!4690 = !DILocation(line: 570, column: 3, scope: !4689)
!4691 = !DILocation(line: 571, column: 27, scope: !4689)
!4692 = !DILocation(line: 571, column: 32, scope: !4689)
!4693 = !DILocation(line: 571, column: 36, scope: !4689)
!4694 = !DILocation(line: 571, column: 10, scope: !4689)
!4695 = !DILocation(line: 571, column: 8, scope: !4689)
!4696 = !DILocation(line: 572, column: 2, scope: !4689)
!4697 = !DILocation(line: 574, column: 6, scope: !4698)
!4698 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 574, column: 6)
!4699 = !DILocation(line: 574, column: 6, scope: !4528)
!4700 = !DILocation(line: 575, column: 40, scope: !4701)
!4701 = distinct !DILexicalBlock(scope: !4698, file: !1, line: 574, column: 12)
!4702 = !DILocation(line: 575, column: 45, scope: !4701)
!4703 = !DILocation(line: 575, column: 49, scope: !4701)
!4704 = !DILocation(line: 575, column: 12, scope: !4701)
!4705 = !DILocation(line: 575, column: 10, scope: !4701)
!4706 = !DILocation(line: 576, column: 7, scope: !4707)
!4707 = distinct !DILexicalBlock(scope: !4701, file: !1, line: 576, column: 7)
!4708 = !DILocation(line: 576, column: 14, scope: !4707)
!4709 = !DILocation(line: 576, column: 7, scope: !4701)
!4710 = !DILocation(line: 577, column: 4, scope: !4711)
!4711 = distinct !DILexicalBlock(scope: !4707, file: !1, line: 576, column: 19)
!4712 = !DILocation(line: 579, column: 10, scope: !4711)
!4713 = !DILocation(line: 579, column: 8, scope: !4711)
!4714 = !DILocation(line: 580, column: 4, scope: !4711)
!4715 = !DILocation(line: 583, column: 7, scope: !4716)
!4716 = distinct !DILexicalBlock(scope: !4701, file: !1, line: 583, column: 7)
!4717 = !DILocation(line: 583, column: 17, scope: !4716)
!4718 = !DILocation(line: 583, column: 14, scope: !4716)
!4719 = !DILocation(line: 583, column: 7, scope: !4701)
!4720 = !DILocation(line: 584, column: 4, scope: !4721)
!4721 = distinct !DILexicalBlock(scope: !4716, file: !1, line: 583, column: 27)
!4722 = !DILocation(line: 586, column: 8, scope: !4721)
!4723 = !DILocation(line: 587, column: 4, scope: !4721)
!4724 = !DILocation(line: 590, column: 28, scope: !4701)
!4725 = !DILocation(line: 590, column: 14, scope: !4701)
!4726 = !DILocation(line: 590, column: 12, scope: !4701)
!4727 = !DILocation(line: 591, column: 8, scope: !4728)
!4728 = distinct !DILexicalBlock(scope: !4701, file: !1, line: 591, column: 7)
!4729 = !DILocation(line: 591, column: 7, scope: !4701)
!4730 = !DILocation(line: 592, column: 8, scope: !4731)
!4731 = distinct !DILexicalBlock(scope: !4728, file: !1, line: 591, column: 18)
!4732 = !DILocation(line: 593, column: 4, scope: !4731)
!4733 = !DILocation(line: 596, column: 36, scope: !4701)
!4734 = !DILocation(line: 596, column: 41, scope: !4701)
!4735 = !DILocation(line: 596, column: 45, scope: !4701)
!4736 = !DILocation(line: 596, column: 51, scope: !4701)
!4737 = !DILocation(line: 597, column: 8, scope: !4701)
!4738 = !DILocation(line: 596, column: 9, scope: !4701)
!4739 = !DILocation(line: 596, column: 7, scope: !4701)
!4740 = !DILocation(line: 598, column: 7, scope: !4741)
!4741 = distinct !DILexicalBlock(scope: !4701, file: !1, line: 598, column: 7)
!4742 = !DILocation(line: 598, column: 7, scope: !4701)
!4743 = !DILocation(line: 599, column: 4, scope: !4744)
!4744 = distinct !DILexicalBlock(scope: !4741, file: !1, line: 598, column: 12)
!4745 = !DILocation(line: 601, column: 8, scope: !4744)
!4746 = !DILocation(line: 602, column: 4, scope: !4744)
!4747 = !DILocation(line: 604, column: 2, scope: !4701)
!4748 = !DILocation(line: 606, column: 9, scope: !4749)
!4749 = distinct !DILexicalBlock(scope: !4528, file: !1, line: 606, column: 2)
!4750 = !DILocation(line: 606, column: 16, scope: !4749)
!4751 = !DILocation(line: 606, column: 7, scope: !4749)
!4752 = !DILocation(line: 606, column: 21, scope: !4753)
!4753 = distinct !DILexicalBlock(scope: !4749, file: !1, line: 606, column: 2)
!4754 = !DILocation(line: 606, column: 25, scope: !4753)
!4755 = !DILocation(line: 606, column: 23, scope: !4753)
!4756 = !DILocation(line: 606, column: 2, scope: !4749)
!4757 = !DILocation(line: 607, column: 29, scope: !4758)
!4758 = distinct !DILexicalBlock(scope: !4753, file: !1, line: 606, column: 40)
!4759 = !DILocation(line: 607, column: 40, scope: !4758)
!4760 = !DILocation(line: 607, column: 3, scope: !4758)
!4761 = !DILocation(line: 607, column: 8, scope: !4758)
!4762 = !DILocation(line: 607, column: 17, scope: !4758)
!4763 = !DILocation(line: 607, column: 20, scope: !4758)
!4764 = !DILocation(line: 607, column: 27, scope: !4758)
!4765 = !DILocation(line: 609, column: 7, scope: !4766)
!4766 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 609, column: 7)
!4767 = !DILocation(line: 609, column: 17, scope: !4766)
!4768 = !DILocation(line: 609, column: 14, scope: !4766)
!4769 = !DILocation(line: 609, column: 7, scope: !4758)
!4770 = !DILocation(line: 610, column: 34, scope: !4771)
!4771 = distinct !DILexicalBlock(scope: !4766, file: !1, line: 609, column: 27)
!4772 = !DILocation(line: 610, column: 39, scope: !4771)
!4773 = !DILocation(line: 610, column: 48, scope: !4771)
!4774 = !DILocation(line: 610, column: 51, scope: !4771)
!4775 = !DILocation(line: 610, column: 4, scope: !4771)
!4776 = !DILocation(line: 610, column: 9, scope: !4771)
!4777 = !DILocation(line: 610, column: 18, scope: !4771)
!4778 = !DILocation(line: 610, column: 21, scope: !4771)
!4779 = !DILocation(line: 610, column: 32, scope: !4771)
!4780 = !DILocation(line: 611, column: 34, scope: !4771)
!4781 = !DILocation(line: 611, column: 39, scope: !4771)
!4782 = !DILocation(line: 611, column: 48, scope: !4771)
!4783 = !DILocation(line: 611, column: 51, scope: !4771)
!4784 = !DILocation(line: 611, column: 4, scope: !4771)
!4785 = !DILocation(line: 611, column: 9, scope: !4771)
!4786 = !DILocation(line: 611, column: 18, scope: !4771)
!4787 = !DILocation(line: 611, column: 21, scope: !4771)
!4788 = !DILocation(line: 611, column: 32, scope: !4771)
!4789 = !DILocation(line: 612, column: 3, scope: !4771)
!4790 = !DILocation(line: 613, column: 34, scope: !4791)
!4791 = distinct !DILexicalBlock(scope: !4766, file: !1, line: 612, column: 10)
!4792 = !DILocation(line: 613, column: 45, scope: !4791)
!4793 = !DILocation(line: 613, column: 4, scope: !4791)
!4794 = !DILocation(line: 613, column: 9, scope: !4791)
!4795 = !DILocation(line: 613, column: 18, scope: !4791)
!4796 = !DILocation(line: 613, column: 21, scope: !4791)
!4797 = !DILocation(line: 613, column: 32, scope: !4791)
!4798 = !DILocation(line: 614, column: 34, scope: !4791)
!4799 = !DILocation(line: 614, column: 45, scope: !4791)
!4800 = !DILocation(line: 614, column: 4, scope: !4791)
!4801 = !DILocation(line: 614, column: 9, scope: !4791)
!4802 = !DILocation(line: 614, column: 18, scope: !4791)
!4803 = !DILocation(line: 614, column: 21, scope: !4791)
!4804 = !DILocation(line: 614, column: 32, scope: !4791)
!4805 = !DILocation(line: 617, column: 7, scope: !4806)
!4806 = distinct !DILexicalBlock(scope: !4758, file: !1, line: 617, column: 7)
!4807 = !DILocation(line: 617, column: 7, scope: !4758)
!4808 = !DILocation(line: 618, column: 29, scope: !4806)
!4809 = !DILocation(line: 618, column: 38, scope: !4806)
!4810 = !DILocation(line: 618, column: 4, scope: !4806)
!4811 = !DILocation(line: 618, column: 9, scope: !4806)
!4812 = !DILocation(line: 618, column: 18, scope: !4806)
!4813 = !DILocation(line: 618, column: 21, scope: !4806)
!4814 = !DILocation(line: 618, column: 27, scope: !4806)
!4815 = !DILocation(line: 619, column: 2, scope: !4758)
!4816 = !DILocation(line: 606, column: 36, scope: !4753)
!4817 = !DILocation(line: 606, column: 2, scope: !4753)
!4818 = distinct !{!4818, !4756, !4819}
!4819 = !DILocation(line: 619, column: 2, scope: !4749)
!4820 = !DILabel(scope: !4528, name: "free_microamp", file: !1, line: 621)
!4821 = !DILocation(line: 621, column: 1, scope: !4528)
!4822 = !DILocation(line: 622, column: 8, scope: !4528)
!4823 = !DILocation(line: 622, column: 2, scope: !4528)
!4824 = !DILabel(scope: !4528, name: "free_microvolt", file: !1, line: 623)
!4825 = !DILocation(line: 623, column: 1, scope: !4528)
!4826 = !DILocation(line: 624, column: 8, scope: !4528)
!4827 = !DILocation(line: 624, column: 2, scope: !4528)
!4828 = !DILocation(line: 626, column: 9, scope: !4528)
!4829 = !DILocation(line: 626, column: 2, scope: !4528)
!4830 = !DILocation(line: 627, column: 1, scope: !4528)
!4831 = distinct !DISubprogram(name: "_read_bw", scope: !1, file: !1, line: 642, type: !4832, scopeLine: 644, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4832 = !DISubroutineType(types: !4833)
!4833 = !{!127, !2069, !76, !162, !198}
!4834 = !DILocalVariable(name: "new_opp", arg: 1, scope: !4831, file: !1, line: 642, type: !2069)
!4835 = !DILocation(line: 642, column: 40, scope: !4831)
!4836 = !DILocalVariable(name: "table", arg: 2, scope: !4831, file: !1, line: 642, type: !76)
!4837 = !DILocation(line: 642, column: 67, scope: !4831)
!4838 = !DILocalVariable(name: "np", arg: 3, scope: !4831, file: !1, line: 643, type: !162)
!4839 = !DILocation(line: 643, column: 27, scope: !4831)
!4840 = !DILocalVariable(name: "peak", arg: 4, scope: !4831, file: !1, line: 643, type: !198)
!4841 = !DILocation(line: 643, column: 36, scope: !4831)
!4842 = !DILocalVariable(name: "name", scope: !4831, file: !1, line: 645, type: !167)
!4843 = !DILocation(line: 645, column: 14, scope: !4831)
!4844 = !DILocation(line: 645, column: 21, scope: !4831)
!4845 = !DILocalVariable(name: "prop", scope: !4831, file: !1, line: 646, type: !2049)
!4846 = !DILocation(line: 646, column: 19, scope: !4831)
!4847 = !DILocalVariable(name: "i", scope: !4831, file: !1, line: 647, type: !127)
!4848 = !DILocation(line: 647, column: 6, scope: !4831)
!4849 = !DILocalVariable(name: "count", scope: !4831, file: !1, line: 647, type: !127)
!4850 = !DILocation(line: 647, column: 9, scope: !4831)
!4851 = !DILocalVariable(name: "ret", scope: !4831, file: !1, line: 647, type: !127)
!4852 = !DILocation(line: 647, column: 16, scope: !4831)
!4853 = !DILocalVariable(name: "bw", scope: !4831, file: !1, line: 648, type: !673)
!4854 = !DILocation(line: 648, column: 7, scope: !4831)
!4855 = !DILocation(line: 650, column: 26, scope: !4831)
!4856 = !DILocation(line: 650, column: 30, scope: !4831)
!4857 = !DILocation(line: 650, column: 9, scope: !4831)
!4858 = !DILocation(line: 650, column: 7, scope: !4831)
!4859 = !DILocation(line: 651, column: 7, scope: !4860)
!4860 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 651, column: 6)
!4861 = !DILocation(line: 651, column: 6, scope: !4831)
!4862 = !DILocation(line: 652, column: 3, scope: !4860)
!4863 = !DILocation(line: 654, column: 10, scope: !4831)
!4864 = !DILocation(line: 654, column: 16, scope: !4831)
!4865 = !DILocation(line: 654, column: 23, scope: !4831)
!4866 = !DILocation(line: 654, column: 8, scope: !4831)
!4867 = !DILocation(line: 655, column: 6, scope: !4868)
!4868 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 655, column: 6)
!4869 = !DILocation(line: 655, column: 13, scope: !4868)
!4870 = !DILocation(line: 655, column: 27, scope: !4868)
!4871 = !DILocation(line: 655, column: 24, scope: !4868)
!4872 = !DILocation(line: 655, column: 6, scope: !4831)
!4873 = !DILocation(line: 656, column: 3, scope: !4874)
!4874 = distinct !DILexicalBlock(scope: !4868, file: !1, line: 655, column: 34)
!4875 = !DILocation(line: 658, column: 3, scope: !4874)
!4876 = !DILocation(line: 661, column: 21, scope: !4831)
!4877 = !DILocation(line: 661, column: 7, scope: !4831)
!4878 = !DILocation(line: 661, column: 5, scope: !4831)
!4879 = !DILocation(line: 662, column: 7, scope: !4880)
!4880 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 662, column: 6)
!4881 = !DILocation(line: 662, column: 6, scope: !4831)
!4882 = !DILocation(line: 663, column: 3, scope: !4880)
!4883 = !DILocation(line: 665, column: 35, scope: !4831)
!4884 = !DILocation(line: 665, column: 39, scope: !4831)
!4885 = !DILocation(line: 665, column: 45, scope: !4831)
!4886 = !DILocation(line: 665, column: 49, scope: !4831)
!4887 = !DILocation(line: 665, column: 8, scope: !4831)
!4888 = !DILocation(line: 665, column: 6, scope: !4831)
!4889 = !DILocation(line: 666, column: 6, scope: !4890)
!4890 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 666, column: 6)
!4891 = !DILocation(line: 666, column: 6, scope: !4831)
!4892 = !DILocation(line: 667, column: 3, scope: !4893)
!4893 = distinct !DILexicalBlock(scope: !4890, file: !1, line: 666, column: 11)
!4894 = !DILocation(line: 668, column: 3, scope: !4893)
!4895 = !DILocation(line: 671, column: 9, scope: !4896)
!4896 = distinct !DILexicalBlock(scope: !4831, file: !1, line: 671, column: 2)
!4897 = !DILocation(line: 671, column: 7, scope: !4896)
!4898 = !DILocation(line: 671, column: 14, scope: !4899)
!4899 = distinct !DILexicalBlock(scope: !4896, file: !1, line: 671, column: 2)
!4900 = !DILocation(line: 671, column: 18, scope: !4899)
!4901 = !DILocation(line: 671, column: 16, scope: !4899)
!4902 = !DILocation(line: 671, column: 2, scope: !4896)
!4903 = !DILocation(line: 672, column: 7, scope: !4904)
!4904 = distinct !DILexicalBlock(scope: !4905, file: !1, line: 672, column: 7)
!4905 = distinct !DILexicalBlock(scope: !4899, file: !1, line: 671, column: 30)
!4906 = !DILocation(line: 672, column: 7, scope: !4905)
!4907 = !DILocation(line: 673, column: 33, scope: !4904)
!4908 = !DILocation(line: 673, column: 4, scope: !4904)
!4909 = !DILocation(line: 673, column: 13, scope: !4904)
!4910 = !DILocation(line: 673, column: 23, scope: !4904)
!4911 = !DILocation(line: 673, column: 26, scope: !4904)
!4912 = !DILocation(line: 673, column: 31, scope: !4904)
!4913 = !DILocation(line: 675, column: 32, scope: !4904)
!4914 = !DILocation(line: 675, column: 4, scope: !4904)
!4915 = !DILocation(line: 675, column: 13, scope: !4904)
!4916 = !DILocation(line: 675, column: 23, scope: !4904)
!4917 = !DILocation(line: 675, column: 26, scope: !4904)
!4918 = !DILocation(line: 675, column: 30, scope: !4904)
!4919 = !DILocation(line: 676, column: 2, scope: !4905)
!4920 = !DILocation(line: 671, column: 26, scope: !4899)
!4921 = !DILocation(line: 671, column: 2, scope: !4899)
!4922 = distinct !{!4922, !4902, !4923}
!4923 = !DILocation(line: 676, column: 2, scope: !4896)
!4924 = !DILabel(scope: !4831, name: "out", file: !1, line: 678)
!4925 = !DILocation(line: 678, column: 1, scope: !4831)
!4926 = !DILocation(line: 679, column: 8, scope: !4831)
!4927 = !DILocation(line: 679, column: 2, scope: !4831)
!4928 = !DILocation(line: 680, column: 9, scope: !4831)
!4929 = !DILocation(line: 680, column: 2, scope: !4831)
!4930 = !DILocation(line: 681, column: 1, scope: !4831)
!4931 = distinct !DISubprogram(name: "of_property_count_u32_elems", scope: !164, file: !164, line: 1097, type: !4932, scopeLine: 1099, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4932 = !DISubroutineType(types: !4933)
!4933 = !{!127, !2329, !167}
!4934 = !DILocalVariable(name: "np", arg: 1, scope: !4931, file: !164, line: 1097, type: !2329)
!4935 = !DILocation(line: 1097, column: 73, scope: !4931)
!4936 = !DILocalVariable(name: "propname", arg: 2, scope: !4931, file: !164, line: 1098, type: !167)
!4937 = !DILocation(line: 1098, column: 17, scope: !4931)
!4938 = !DILocation(line: 1100, column: 41, scope: !4931)
!4939 = !DILocation(line: 1100, column: 45, scope: !4931)
!4940 = !DILocation(line: 1100, column: 9, scope: !4931)
!4941 = !DILocation(line: 1100, column: 2, scope: !4931)
!4942 = distinct !DISubprogram(name: "__fswab32", scope: !2967, file: !2967, line: 57, type: !4943, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4943 = !DISubroutineType(types: !4944)
!4944 = !{!173, !173}
!4945 = !DILocalVariable(name: "val", arg: 1, scope: !4942, file: !2967, line: 57, type: !173)
!4946 = !DILocation(line: 57, column: 57, scope: !4942)
!4947 = !DILocation(line: 60, column: 23, scope: !4942)
!4948 = !DILocation(line: 60, column: 9, scope: !4942)
!4949 = !DILocation(line: 60, column: 2, scope: !4942)
!4950 = distinct !DISubprogram(name: "__arch_swab32", scope: !4951, file: !4951, line: 8, type: !4943, scopeLine: 9, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4951 = !DIFile(filename: "./arch/x86/include/uapi/asm/swab.h", directory: "/home/lizy2001/genbc/linux")
!4952 = !DILocalVariable(name: "val", arg: 1, scope: !4950, file: !4951, line: 8, type: !173)
!4953 = !DILocation(line: 8, column: 61, scope: !4950)
!4954 = !DILocation(line: 10, column: 38, scope: !4950)
!4955 = !DILocation(line: 10, column: 2, scope: !4950)
!4956 = !{i32 541471}
!4957 = !DILocation(line: 11, column: 9, scope: !4950)
!4958 = !DILocation(line: 11, column: 2, scope: !4950)
!4959 = distinct !DISubprogram(name: "bitmap_empty", scope: !4960, file: !4960, line: 382, type: !4961, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4960 = !DIFile(filename: "./include/linux/bitmap.h", directory: "/home/lizy2001/genbc/linux")
!4961 = !DISubroutineType(types: !4962)
!4962 = !{!127, !4963, !5}
!4963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4964, size: 64)
!4964 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !128)
!4965 = !DILocalVariable(name: "src", arg: 1, scope: !4959, file: !4960, line: 382, type: !4963)
!4966 = !DILocation(line: 382, column: 53, scope: !4959)
!4967 = !DILocalVariable(name: "nbits", arg: 2, scope: !4959, file: !4960, line: 382, type: !5)
!4968 = !DILocation(line: 382, column: 67, scope: !4959)
!4969 = !DILocation(line: 384, column: 6, scope: !4970)
!4970 = distinct !DILexicalBlock(scope: !4959, file: !4960, line: 384, column: 6)
!4971 = !DILocation(line: 384, column: 6, scope: !4959)
!4972 = !DILocation(line: 385, column: 14, scope: !4970)
!4973 = !DILocation(line: 385, column: 13, scope: !4970)
!4974 = !DILocation(line: 385, column: 20, scope: !4970)
!4975 = !DILocation(line: 385, column: 18, scope: !4970)
!4976 = !DILocation(line: 385, column: 10, scope: !4970)
!4977 = !DILocation(line: 385, column: 3, scope: !4970)
!4978 = !DILocation(line: 387, column: 24, scope: !4959)
!4979 = !DILocation(line: 387, column: 29, scope: !4959)
!4980 = !DILocation(line: 387, column: 9, scope: !4959)
!4981 = !DILocation(line: 387, column: 39, scope: !4959)
!4982 = !DILocation(line: 387, column: 36, scope: !4959)
!4983 = !DILocation(line: 387, column: 2, scope: !4959)
!4984 = !DILocation(line: 388, column: 1, scope: !4959)
!4985 = distinct !DISubprogram(name: "set_bit", scope: !4986, file: !4986, line: 26, type: !4987, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4986 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!4987 = !DISubroutineType(types: !4988)
!4988 = !{null, !287, !4989}
!4989 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4990, size: 64)
!4990 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !128)
!4991 = !DILocalVariable(name: "nr", arg: 1, scope: !4992, file: !3981, line: 52, type: !287)
!4992 = distinct !DISubprogram(name: "arch_set_bit", scope: !3981, file: !3981, line: 52, type: !4987, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4993 = !DILocation(line: 52, column: 19, scope: !4992, inlinedAt: !4994)
!4994 = distinct !DILocation(line: 29, column: 2, scope: !4985)
!4995 = !DILocalVariable(name: "addr", arg: 2, scope: !4992, file: !3981, line: 52, type: !4989)
!4996 = !DILocation(line: 52, column: 47, scope: !4992, inlinedAt: !4994)
!4997 = !DILocalVariable(name: "v", arg: 1, scope: !4998, file: !4999, line: 84, type: !5002)
!4998 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !4999, file: !4999, line: 84, type: !5000, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!4999 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!5000 = !DISubroutineType(types: !5001)
!5001 = !{null, !5002, !299}
!5002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !5003, size: 64)
!5003 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !5004)
!5004 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!5005 = !DILocation(line: 84, column: 74, scope: !4998, inlinedAt: !5006)
!5006 = distinct !DILocation(line: 28, column: 2, scope: !4985)
!5007 = !DILocalVariable(name: "size", arg: 2, scope: !4998, file: !4999, line: 84, type: !299)
!5008 = !DILocation(line: 84, column: 84, scope: !4998, inlinedAt: !5006)
!5009 = !DILocalVariable(name: "nr", arg: 1, scope: !4985, file: !4986, line: 26, type: !287)
!5010 = !DILocation(line: 26, column: 33, scope: !4985)
!5011 = !DILocalVariable(name: "addr", arg: 2, scope: !4985, file: !4986, line: 26, type: !4989)
!5012 = !DILocation(line: 26, column: 61, scope: !4985)
!5013 = !DILocation(line: 28, column: 26, scope: !4985)
!5014 = !DILocation(line: 28, column: 33, scope: !4985)
!5015 = !DILocation(line: 28, column: 31, scope: !4985)
!5016 = !DILocation(line: 86, column: 20, scope: !4998, inlinedAt: !5006)
!5017 = !DILocation(line: 86, column: 23, scope: !4998, inlinedAt: !5006)
!5018 = !DILocation(line: 86, column: 2, scope: !4998, inlinedAt: !5006)
!5019 = !DILocation(line: 87, column: 2, scope: !4998, inlinedAt: !5006)
!5020 = !DILocation(line: 29, column: 15, scope: !4985)
!5021 = !DILocation(line: 29, column: 19, scope: !4985)
!5022 = !DILocation(line: 54, column: 27, scope: !5023, inlinedAt: !4994)
!5023 = distinct !DILexicalBlock(scope: !4992, file: !3981, line: 54, column: 6)
!5024 = !DILocation(line: 54, column: 6, scope: !5023, inlinedAt: !4994)
!5025 = !DILocation(line: 54, column: 6, scope: !4992, inlinedAt: !4994)
!5026 = !DILocation(line: 56, column: 6, scope: !5027, inlinedAt: !4994)
!5027 = distinct !DILexicalBlock(scope: !5023, file: !3981, line: 54, column: 32)
!5028 = !DILocation(line: 57, column: 12, scope: !5027, inlinedAt: !4994)
!5029 = !DILocation(line: 55, column: 3, scope: !5027, inlinedAt: !4994)
!5030 = !{i32 -2147030974}
!5031 = !DILocation(line: 59, column: 2, scope: !5027, inlinedAt: !4994)
!5032 = !DILocation(line: 61, column: 8, scope: !5033, inlinedAt: !4994)
!5033 = distinct !DILexicalBlock(scope: !5023, file: !3981, line: 59, column: 9)
!5034 = !DILocation(line: 61, column: 32, scope: !5033, inlinedAt: !4994)
!5035 = !DILocation(line: 60, column: 3, scope: !5033, inlinedAt: !4994)
!5036 = !{i32 -2147030842}
!5037 = !DILocation(line: 30, column: 1, scope: !4985)
!5038 = distinct !DISubprogram(name: "cpumask_check", scope: !624, file: !624, line: 142, type: !5039, scopeLine: 143, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!5039 = !DISubroutineType(types: !5040)
!5040 = !{!5, !5}
!5041 = !DILocalVariable(name: "cpu", arg: 1, scope: !5038, file: !624, line: 142, type: !5)
!5042 = !DILocation(line: 142, column: 55, scope: !5038)
!5043 = !DILocation(line: 144, column: 20, scope: !5038)
!5044 = !DILocation(line: 144, column: 2, scope: !5038)
!5045 = !DILocation(line: 145, column: 9, scope: !5038)
!5046 = !DILocation(line: 145, column: 2, scope: !5038)
!5047 = distinct !DISubprogram(name: "kasan_check_write", scope: !5048, file: !5048, line: 38, type: !5049, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!5048 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5049 = !DISubroutineType(types: !5050)
!5050 = !{!198, !5002, !5}
!5051 = !DILocalVariable(name: "p", arg: 1, scope: !5047, file: !5048, line: 38, type: !5002)
!5052 = !DILocation(line: 38, column: 59, scope: !5047)
!5053 = !DILocalVariable(name: "size", arg: 2, scope: !5047, file: !5048, line: 38, type: !5)
!5054 = !DILocation(line: 38, column: 75, scope: !5047)
!5055 = !DILocation(line: 40, column: 2, scope: !5047)
!5056 = distinct !DISubprogram(name: "kcsan_check_access", scope: !5057, file: !5057, line: 178, type: !5058, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!5057 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!5058 = !DISubroutineType(types: !5059)
!5059 = !{null, !5002, !299, !127}
!5060 = !DILocalVariable(name: "ptr", arg: 1, scope: !5056, file: !5057, line: 178, type: !5002)
!5061 = !DILocation(line: 178, column: 60, scope: !5056)
!5062 = !DILocalVariable(name: "size", arg: 2, scope: !5056, file: !5057, line: 178, type: !299)
!5063 = !DILocation(line: 178, column: 72, scope: !5056)
!5064 = !DILocalVariable(name: "type", arg: 3, scope: !5056, file: !5057, line: 179, type: !127)
!5065 = !DILocation(line: 179, column: 15, scope: !5056)
!5066 = !DILocation(line: 179, column: 23, scope: !5056)
!5067 = distinct !DISubprogram(name: "cpu_max_bits_warn", scope: !624, file: !624, line: 134, type: !5068, scopeLine: 135, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !0, retainedNodes: !116)
!5068 = !DISubroutineType(types: !5069)
!5069 = !{null, !5, !5}
!5070 = !DILocalVariable(name: "cpu", arg: 1, scope: !5067, file: !624, line: 134, type: !5)
!5071 = !DILocation(line: 134, column: 51, scope: !5067)
!5072 = !DILocalVariable(name: "bits", arg: 2, scope: !5067, file: !624, line: 134, type: !5)
!5073 = !DILocation(line: 134, column: 69, scope: !5067)
!5074 = !DILocation(line: 139, column: 1, scope: !5067)
