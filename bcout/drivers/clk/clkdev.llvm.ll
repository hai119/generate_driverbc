; ModuleID = '../bcout/drivers/clk/clkdev.llvm.bc'
source_filename = "drivers/clk/clkdev.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.kmem_cache = type opaque
%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_lookup = type { %struct.list_head, i8*, i8*, %struct.clk*, %struct.clk_hw* }
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
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.clk_lookup_alloc = type { %struct.clk_lookup, [20 x i8], [16 x i8] }

@clocks_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clocks_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @clocks_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !0
@clocks = internal global %struct.list_head { %struct.list_head* @clocks, %struct.list_head* @clocks }, align 8, !dbg !213
@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"drivers/clk/clkdev.c\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @clk_find_hw(i8* %dev_id, i8* %con_id) #0 !dbg !250 {
entry:
  %dev_id.addr = alloca i8*, align 8
  %con_id.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !253, metadata !DIExpression()), !dbg !254
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !255, metadata !DIExpression()), !dbg !256
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !257, metadata !DIExpression()), !dbg !258
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !259, metadata !DIExpression()), !dbg !260
  %call = call i8* @ERR_PTR(i64 -2) #7, !dbg !261
  %0 = bitcast i8* %call to %struct.clk_hw*, !dbg !261
  store %struct.clk_hw* %0, %struct.clk_hw** %hw, align 8, !dbg !260
  call void @mutex_lock(%struct.mutex* @clocks_mutex) #7, !dbg !262
  %1 = load i8*, i8** %dev_id.addr, align 8, !dbg !263
  %2 = load i8*, i8** %con_id.addr, align 8, !dbg !264
  %call1 = call %struct.clk_lookup* @clk_find(i8* %1, i8* %2) #7, !dbg !265
  store %struct.clk_lookup* %call1, %struct.clk_lookup** %cl, align 8, !dbg !266
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !267
  %tobool = icmp ne %struct.clk_lookup* %3, null, !dbg !267
  br i1 %tobool, label %if.then, label %if.end, !dbg !269

if.then:                                          ; preds = %entry
  %4 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !270
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %4, i32 0, i32 4, !dbg !271
  %5 = load %struct.clk_hw*, %struct.clk_hw** %clk_hw, align 8, !dbg !271
  store %struct.clk_hw* %5, %struct.clk_hw** %hw, align 8, !dbg !272
  br label %if.end, !dbg !273

if.end:                                           ; preds = %if.then, %entry
  call void @mutex_unlock(%struct.mutex* @clocks_mutex) #7, !dbg !274
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !275
  ret %struct.clk_hw* %6, !dbg !276
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !277 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !281, metadata !DIExpression()), !dbg !282
  %0 = load i64, i64* %error.addr, align 8, !dbg !283
  %1 = inttoptr i64 %0 to i8*, !dbg !284
  ret i8* %1, !dbg !285
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_lookup* @clk_find(i8* %dev_id, i8* %con_id) #0 !dbg !286 {
entry:
  %dev_id.addr = alloca i8*, align 8
  %con_id.addr = alloca i8*, align 8
  %p = alloca %struct.clk_lookup*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %match = alloca i32, align 4
  %best_found = alloca i32, align 4
  %best_possible = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_lookup*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp39 = alloca %struct.clk_lookup*, align 8
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !289, metadata !DIExpression()), !dbg !290
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !291, metadata !DIExpression()), !dbg !292
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %p, metadata !293, metadata !DIExpression()), !dbg !294
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !295, metadata !DIExpression()), !dbg !296
  store %struct.clk_lookup* null, %struct.clk_lookup** %cl, align 8, !dbg !296
  call void @llvm.dbg.declare(metadata i32* %match, metadata !297, metadata !DIExpression()), !dbg !298
  call void @llvm.dbg.declare(metadata i32* %best_found, metadata !299, metadata !DIExpression()), !dbg !300
  store i32 0, i32* %best_found, align 4, !dbg !300
  call void @llvm.dbg.declare(metadata i32* %best_possible, metadata !301, metadata !DIExpression()), !dbg !302
  store i32 0, i32* %best_possible, align 4, !dbg !302
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !303
  %tobool = icmp ne i8* %0, null, !dbg !303
  br i1 %tobool, label %if.then, label %if.end, !dbg !305

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %best_possible, align 4, !dbg !306
  %add = add i32 %1, 2, !dbg !306
  store i32 %add, i32* %best_possible, align 4, !dbg !306
  br label %if.end, !dbg !307

if.end:                                           ; preds = %if.then, %entry
  %2 = load i8*, i8** %con_id.addr, align 8, !dbg !308
  %tobool1 = icmp ne i8* %2, null, !dbg !308
  br i1 %tobool1, label %if.then2, label %if.end4, !dbg !310

if.then2:                                         ; preds = %if.end
  %3 = load i32, i32* %best_possible, align 4, !dbg !311
  %add3 = add i32 %3, 1, !dbg !311
  store i32 %add3, i32* %best_possible, align 4, !dbg !311
  br label %if.end4, !dbg !312

if.end4:                                          ; preds = %if.then2, %if.end
  br label %do.body, !dbg !313

do.body:                                          ; preds = %if.end4
  br label %do.end, !dbg !314

do.end:                                           ; preds = %do.body
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !316, metadata !DIExpression()), !dbg !319
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @clocks, i32 0, i32 0), align 8, !dbg !319
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !319
  store i8* %5, i8** %__mptr, align 8, !dbg !319
  br label %do.body5, !dbg !319

do.body5:                                         ; preds = %do.end
  br label %do.end6, !dbg !320

do.end6:                                          ; preds = %do.body5
  %6 = load i8*, i8** %__mptr, align 8, !dbg !319
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !319
  %7 = bitcast i8* %add.ptr to %struct.clk_lookup*, !dbg !319
  store %struct.clk_lookup* %7, %struct.clk_lookup** %tmp, align 8, !dbg !320
  %8 = load %struct.clk_lookup*, %struct.clk_lookup** %tmp, align 8, !dbg !319
  store %struct.clk_lookup* %8, %struct.clk_lookup** %p, align 8, !dbg !322
  br label %for.cond, !dbg !322

for.cond:                                         ; preds = %do.end38, %do.end6
  %9 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !323
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %9, i32 0, i32 0, !dbg !323
  %cmp = icmp eq %struct.list_head* %node, @clocks, !dbg !323
  %lnot = xor i1 %cmp, true, !dbg !323
  br i1 %lnot, label %for.body, label %for.end, !dbg !322

for.body:                                         ; preds = %for.cond
  store i32 0, i32* %match, align 4, !dbg !325
  %10 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !327
  %dev_id7 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %10, i32 0, i32 1, !dbg !329
  %11 = load i8*, i8** %dev_id7, align 8, !dbg !329
  %tobool8 = icmp ne i8* %11, null, !dbg !327
  br i1 %tobool8, label %if.then9, label %if.end16, !dbg !330

if.then9:                                         ; preds = %for.body
  %12 = load i8*, i8** %dev_id.addr, align 8, !dbg !331
  %tobool10 = icmp ne i8* %12, null, !dbg !331
  br i1 %tobool10, label %lor.lhs.false, label %if.then13, !dbg !334

lor.lhs.false:                                    ; preds = %if.then9
  %13 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !335
  %dev_id11 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %13, i32 0, i32 1, !dbg !336
  %14 = load i8*, i8** %dev_id11, align 8, !dbg !336
  %15 = load i8*, i8** %dev_id.addr, align 8, !dbg !337
  %call = call i32 @strcmp(i8* %14, i8* %15) #7, !dbg !338
  %tobool12 = icmp ne i32 %call, 0, !dbg !338
  br i1 %tobool12, label %if.then13, label %if.end14, !dbg !339

if.then13:                                        ; preds = %lor.lhs.false, %if.then9
  br label %for.inc, !dbg !340

if.end14:                                         ; preds = %lor.lhs.false
  %16 = load i32, i32* %match, align 4, !dbg !341
  %add15 = add i32 %16, 2, !dbg !341
  store i32 %add15, i32* %match, align 4, !dbg !341
  br label %if.end16, !dbg !342

if.end16:                                         ; preds = %if.end14, %for.body
  %17 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !343
  %con_id17 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %17, i32 0, i32 2, !dbg !345
  %18 = load i8*, i8** %con_id17, align 8, !dbg !345
  %tobool18 = icmp ne i8* %18, null, !dbg !343
  br i1 %tobool18, label %if.then19, label %if.end28, !dbg !346

if.then19:                                        ; preds = %if.end16
  %19 = load i8*, i8** %con_id.addr, align 8, !dbg !347
  %tobool20 = icmp ne i8* %19, null, !dbg !347
  br i1 %tobool20, label %lor.lhs.false21, label %if.then25, !dbg !350

lor.lhs.false21:                                  ; preds = %if.then19
  %20 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !351
  %con_id22 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %20, i32 0, i32 2, !dbg !352
  %21 = load i8*, i8** %con_id22, align 8, !dbg !352
  %22 = load i8*, i8** %con_id.addr, align 8, !dbg !353
  %call23 = call i32 @strcmp(i8* %21, i8* %22) #7, !dbg !354
  %tobool24 = icmp ne i32 %call23, 0, !dbg !354
  br i1 %tobool24, label %if.then25, label %if.end26, !dbg !355

if.then25:                                        ; preds = %lor.lhs.false21, %if.then19
  br label %for.inc, !dbg !356

if.end26:                                         ; preds = %lor.lhs.false21
  %23 = load i32, i32* %match, align 4, !dbg !357
  %add27 = add i32 %23, 1, !dbg !357
  store i32 %add27, i32* %match, align 4, !dbg !357
  br label %if.end28, !dbg !358

if.end28:                                         ; preds = %if.end26, %if.end16
  %24 = load i32, i32* %match, align 4, !dbg !359
  %25 = load i32, i32* %best_found, align 4, !dbg !361
  %cmp29 = icmp sgt i32 %24, %25, !dbg !362
  br i1 %cmp29, label %if.then30, label %if.end34, !dbg !363

if.then30:                                        ; preds = %if.end28
  %26 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !364
  store %struct.clk_lookup* %26, %struct.clk_lookup** %cl, align 8, !dbg !366
  %27 = load i32, i32* %match, align 4, !dbg !367
  %28 = load i32, i32* %best_possible, align 4, !dbg !369
  %cmp31 = icmp ne i32 %27, %28, !dbg !370
  br i1 %cmp31, label %if.then32, label %if.else, !dbg !371

if.then32:                                        ; preds = %if.then30
  %29 = load i32, i32* %match, align 4, !dbg !372
  store i32 %29, i32* %best_found, align 4, !dbg !373
  br label %if.end33, !dbg !374

if.else:                                          ; preds = %if.then30
  br label %for.end, !dbg !375

if.end33:                                         ; preds = %if.then32
  br label %if.end34, !dbg !376

if.end34:                                         ; preds = %if.end33, %if.end28
  br label %for.inc, !dbg !377

for.inc:                                          ; preds = %if.end34, %if.then25, %if.then13
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !378, metadata !DIExpression()), !dbg !380
  %30 = load %struct.clk_lookup*, %struct.clk_lookup** %p, align 8, !dbg !380
  %node36 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %30, i32 0, i32 0, !dbg !380
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node36, i32 0, i32 0, !dbg !380
  %31 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !380
  %32 = bitcast %struct.list_head* %31 to i8*, !dbg !380
  store i8* %32, i8** %__mptr35, align 8, !dbg !380
  br label %do.body37, !dbg !380

do.body37:                                        ; preds = %for.inc
  br label %do.end38, !dbg !381

do.end38:                                         ; preds = %do.body37
  %33 = load i8*, i8** %__mptr35, align 8, !dbg !380
  %add.ptr40 = getelementptr i8, i8* %33, i64 0, !dbg !380
  %34 = bitcast i8* %add.ptr40 to %struct.clk_lookup*, !dbg !380
  store %struct.clk_lookup* %34, %struct.clk_lookup** %tmp39, align 8, !dbg !381
  %35 = load %struct.clk_lookup*, %struct.clk_lookup** %tmp39, align 8, !dbg !380
  store %struct.clk_lookup* %35, %struct.clk_lookup** %p, align 8, !dbg !323
  br label %for.cond, !dbg !323, !llvm.loop !383

for.end:                                          ; preds = %if.else, %for.cond
  %36 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !385
  ret %struct.clk_lookup* %36, !dbg !386
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_get_sys(i8* %dev_id, i8* %con_id) #0 !dbg !387 {
entry:
  %dev_id.addr = alloca i8*, align 8
  %con_id.addr = alloca i8*, align 8
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !390, metadata !DIExpression()), !dbg !391
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !392, metadata !DIExpression()), !dbg !393
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !394
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !395
  %call = call %struct.clk* @__clk_get_sys(%struct.device* null, i8* %0, i8* %1) #7, !dbg !396
  ret %struct.clk* %call, !dbg !397
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk* @__clk_get_sys(%struct.device* %dev, i8* %dev_id, i8* %con_id) #0 !dbg !398 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %dev_id.addr = alloca i8*, align 8
  %con_id.addr = alloca i8*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2329, metadata !DIExpression()), !dbg !2330
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2335, metadata !DIExpression()), !dbg !2336
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !2337
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2338
  %call = call %struct.clk_hw* @clk_find_hw(i8* %0, i8* %1) #7, !dbg !2339
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2336
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2340
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2341
  %4 = load i8*, i8** %dev_id.addr, align 8, !dbg !2342
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !2343
  %call1 = call %struct.clk* @clk_hw_create_clk(%struct.device* %2, %struct.clk_hw* %3, i8* %4, i8* %5) #7, !dbg !2344
  ret %struct.clk* %call1, !dbg !2345
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_get(%struct.device* %dev, i8* %con_id) #0 !dbg !2346 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id = alloca i8*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2349, metadata !DIExpression()), !dbg !2350
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2351, metadata !DIExpression()), !dbg !2352
  call void @llvm.dbg.declare(metadata i8** %dev_id, metadata !2353, metadata !DIExpression()), !dbg !2354
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2355
  %tobool = icmp ne %struct.device* %0, null, !dbg !2355
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !2355

cond.true:                                        ; preds = %entry
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2356
  %call = call i8* @dev_name(%struct.device* %1) #7, !dbg !2357
  br label %cond.end, !dbg !2355

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2355

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %call, %cond.true ], [ null, %cond.false ], !dbg !2355
  store i8* %cond, i8** %dev_id, align 8, !dbg !2354
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2358, metadata !DIExpression()), !dbg !2359
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2360
  %tobool1 = icmp ne %struct.device* %2, null, !dbg !2360
  br i1 %tobool1, label %land.lhs.true, label %if.end9, !dbg !2362

land.lhs.true:                                    ; preds = %cond.end
  %3 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2363
  %of_node = getelementptr inbounds %struct.device, %struct.device* %3, i32 0, i32 23, !dbg !2364
  %4 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2364
  %tobool2 = icmp ne %struct.device_node* %4, null, !dbg !2363
  br i1 %tobool2, label %if.then, label %if.end9, !dbg !2365

if.then:                                          ; preds = %land.lhs.true
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2366
  %of_node3 = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 23, !dbg !2368
  %6 = load %struct.device_node*, %struct.device_node** %of_node3, align 8, !dbg !2368
  %7 = load i8*, i8** %con_id.addr, align 8, !dbg !2369
  %call4 = call %struct.clk_hw* @of_clk_get_hw(%struct.device_node* %6, i32 0, i8* %7) #7, !dbg !2370
  store %struct.clk_hw* %call4, %struct.clk_hw** %hw, align 8, !dbg !2371
  %8 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2372
  %9 = bitcast %struct.clk_hw* %8 to i8*, !dbg !2372
  %call5 = call zeroext i1 @IS_ERR(i8* %9) #7, !dbg !2374
  br i1 %call5, label %lor.lhs.false, label %if.then7, !dbg !2375

lor.lhs.false:                                    ; preds = %if.then
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2376
  %11 = bitcast %struct.clk_hw* %10 to i8*, !dbg !2376
  %call6 = call i64 @PTR_ERR(i8* %11) #7, !dbg !2377
  %cmp = icmp eq i64 %call6, -517, !dbg !2378
  br i1 %cmp, label %if.then7, label %if.end, !dbg !2379

if.then7:                                         ; preds = %lor.lhs.false, %if.then
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2380
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2381
  %14 = load i8*, i8** %dev_id, align 8, !dbg !2382
  %15 = load i8*, i8** %con_id.addr, align 8, !dbg !2383
  %call8 = call %struct.clk* @clk_hw_create_clk(%struct.device* %12, %struct.clk_hw* %13, i8* %14, i8* %15) #7, !dbg !2384
  store %struct.clk* %call8, %struct.clk** %retval, align 8, !dbg !2385
  br label %return, !dbg !2385

if.end:                                           ; preds = %lor.lhs.false
  br label %if.end9, !dbg !2386

if.end9:                                          ; preds = %if.end, %land.lhs.true, %cond.end
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2387
  %17 = load i8*, i8** %dev_id, align 8, !dbg !2388
  %18 = load i8*, i8** %con_id.addr, align 8, !dbg !2389
  %call10 = call %struct.clk* @__clk_get_sys(%struct.device* %16, i8* %17, i8* %18) #7, !dbg !2390
  store %struct.clk* %call10, %struct.clk** %retval, align 8, !dbg !2391
  br label %return, !dbg !2391

return:                                           ; preds = %if.end9, %if.then7
  %19 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !2392
  ret %struct.clk* %19, !dbg !2392
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !2393 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2396, metadata !DIExpression()), !dbg !2397
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2398
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !2400
  %1 = load i8*, i8** %init_name, align 8, !dbg !2400
  %tobool = icmp ne i8* %1, null, !dbg !2398
  br i1 %tobool, label %if.then, label %if.end, !dbg !2401

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2402
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !2403
  %3 = load i8*, i8** %init_name1, align 8, !dbg !2403
  store i8* %3, i8** %retval, align 8, !dbg !2404
  br label %return, !dbg !2404

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2405
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !2406
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !2407
  store i8* %call, i8** %retval, align 8, !dbg !2408
  br label %return, !dbg !2408

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !2409
  ret i8* %5, !dbg !2409
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @of_clk_get_hw(%struct.device_node*, i32, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2410 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2413, metadata !DIExpression()), !dbg !2414
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2415
  %1 = ptrtoint i8* %0 to i64, !dbg !2415
  %2 = inttoptr i64 %1 to i8*, !dbg !2415
  %3 = ptrtoint i8* %2 to i64, !dbg !2415
  %cmp = icmp uge i64 %3, -4095, !dbg !2415
  %lnot = xor i1 %cmp, true, !dbg !2415
  %lnot1 = xor i1 %lnot, true, !dbg !2415
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2415
  %conv = sext i32 %lnot.ext to i64, !dbg !2415
  %tobool = icmp ne i64 %conv, 0, !dbg !2415
  ret i1 %tobool, !dbg !2416
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2417 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2420, metadata !DIExpression()), !dbg !2421
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2422
  %1 = ptrtoint i8* %0 to i64, !dbg !2423
  ret i64 %1, !dbg !2424
}

; Function Attrs: noredzone
declare dso_local %struct.clk* @clk_hw_create_clk(%struct.device*, %struct.clk_hw*, i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_put(%struct.clk* %clk) #0 !dbg !2425 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2430
  call void @__clk_put(%struct.clk* %0) #7, !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: noredzone
declare dso_local void @__clk_put(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clkdev_add(%struct.clk_lookup* %cl) #0 !dbg !2433 {
entry:
  %cl.addr = alloca %struct.clk_lookup*, align 8
  store %struct.clk_lookup* %cl, %struct.clk_lookup** %cl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  %0 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2438
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %0, i32 0, i32 4, !dbg !2440
  %1 = load %struct.clk_hw*, %struct.clk_hw** %clk_hw, align 8, !dbg !2440
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !2438
  br i1 %tobool, label %if.end, label %if.then, !dbg !2441

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2442
  %clk = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %2, i32 0, i32 3, !dbg !2443
  %3 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2443
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %3) #7, !dbg !2444
  %4 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2445
  %clk_hw1 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %4, i32 0, i32 4, !dbg !2446
  store %struct.clk_hw* %call, %struct.clk_hw** %clk_hw1, align 8, !dbg !2447
  br label %if.end, !dbg !2445

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2448
  call void @__clkdev_add(%struct.clk_lookup* %5) #7, !dbg !2449
  ret void, !dbg !2450
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__clkdev_add(%struct.clk_lookup* %cl) #0 !dbg !2451 {
entry:
  %cl.addr = alloca %struct.clk_lookup*, align 8
  store %struct.clk_lookup* %cl, %struct.clk_lookup** %cl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  call void @mutex_lock(%struct.mutex* @clocks_mutex) #7, !dbg !2454
  %0 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2455
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %0, i32 0, i32 0, !dbg !2456
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @clocks) #7, !dbg !2457
  call void @mutex_unlock(%struct.mutex* @clocks_mutex) #7, !dbg !2458
  ret void, !dbg !2459
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clkdev_add_table(%struct.clk_lookup* %cl, i64 %num) #0 !dbg !2460 {
entry:
  %cl.addr = alloca %struct.clk_lookup*, align 8
  %num.addr = alloca i64, align 8
  store %struct.clk_lookup* %cl, %struct.clk_lookup** %cl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl.addr, metadata !2463, metadata !DIExpression()), !dbg !2464
  store i64 %num, i64* %num.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %num.addr, metadata !2465, metadata !DIExpression()), !dbg !2466
  call void @mutex_lock(%struct.mutex* @clocks_mutex) #7, !dbg !2467
  br label %while.cond, !dbg !2468

while.cond:                                       ; preds = %while.body, %entry
  %0 = load i64, i64* %num.addr, align 8, !dbg !2469
  %dec = add i64 %0, -1, !dbg !2469
  store i64 %dec, i64* %num.addr, align 8, !dbg !2469
  %tobool = icmp ne i64 %0, 0, !dbg !2468
  br i1 %tobool, label %while.body, label %while.end, !dbg !2468

while.body:                                       ; preds = %while.cond
  %1 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2470
  %clk = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %1, i32 0, i32 3, !dbg !2472
  %2 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2472
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %2) #7, !dbg !2473
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2474
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %3, i32 0, i32 4, !dbg !2475
  store %struct.clk_hw* %call, %struct.clk_hw** %clk_hw, align 8, !dbg !2476
  %4 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2477
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %4, i32 0, i32 0, !dbg !2478
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @clocks) #7, !dbg !2479
  %5 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2480
  %incdec.ptr = getelementptr %struct.clk_lookup, %struct.clk_lookup* %5, i32 1, !dbg !2480
  store %struct.clk_lookup* %incdec.ptr, %struct.clk_lookup** %cl.addr, align 8, !dbg !2480
  br label %while.cond, !dbg !2468, !llvm.loop !2481

while.end:                                        ; preds = %while.cond
  call void @mutex_unlock(%struct.mutex* @clocks_mutex) #7, !dbg !2483
  ret void, !dbg !2484
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !2485 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2489, metadata !DIExpression()), !dbg !2490
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2493
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2494
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !2495
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2495
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !2496
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #7, !dbg !2497
  ret void, !dbg !2498
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_lookup* @clkdev_alloc(%struct.clk* %clk, i8* %con_id, i8* %dev_fmt, ...) #0 section ".ref.text" !dbg !2499 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_fmt.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2502, metadata !DIExpression()), !dbg !2503
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2504, metadata !DIExpression()), !dbg !2505
  store i8* %dev_fmt, i8** %dev_fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_fmt.addr, metadata !2506, metadata !DIExpression()), !dbg !2507
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2508, metadata !DIExpression()), !dbg !2509
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2510, metadata !DIExpression()), !dbg !2522
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2523
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2523
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2523
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2524
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #7, !dbg !2525
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2526
  %2 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2527
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2528
  %call3 = call %struct.clk_lookup* @vclkdev_alloc(%struct.clk_hw* %call, i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #7, !dbg !2529
  store %struct.clk_lookup* %call3, %struct.clk_lookup** %cl, align 8, !dbg !2530
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2531
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !2531
  call void @llvm.va_end(i8* %arraydecay45), !dbg !2531
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2532
  ret %struct.clk_lookup* %3, !dbg !2533
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_lookup* @vclkdev_alloc(%struct.clk_hw* %hw, i8* %con_id, i8* %dev_fmt, %struct.__va_list_tag* %ap) #0 section ".ref.text" !dbg !2534 {
entry:
  %retval = alloca %struct.clk_lookup*, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %cla = alloca %struct.clk_lookup_alloc*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  store i8* %dev_fmt, i8** %dev_fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_fmt.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %ap.addr, metadata !2544, metadata !DIExpression()), !dbg !2545
  call void @llvm.dbg.declare(metadata %struct.clk_lookup_alloc** %cla, metadata !2546, metadata !DIExpression()), !dbg !2554
  %call = call i8* @kzalloc(i64 88, i32 3264) #7, !dbg !2555
  %0 = bitcast i8* %call to %struct.clk_lookup_alloc*, !dbg !2555
  store %struct.clk_lookup_alloc* %0, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2556
  %1 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2557
  %tobool = icmp ne %struct.clk_lookup_alloc* %1, null, !dbg !2557
  br i1 %tobool, label %if.end, label %if.then, !dbg !2559

if.then:                                          ; preds = %entry
  store %struct.clk_lookup* null, %struct.clk_lookup** %retval, align 8, !dbg !2560
  br label %return, !dbg !2560

if.end:                                           ; preds = %entry
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2561
  %3 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2562
  %cl = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %3, i32 0, i32 0, !dbg !2563
  %clk_hw = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl, i32 0, i32 4, !dbg !2564
  store %struct.clk_hw* %2, %struct.clk_hw** %clk_hw, align 8, !dbg !2565
  %4 = load i8*, i8** %con_id.addr, align 8, !dbg !2566
  %tobool1 = icmp ne i8* %4, null, !dbg !2566
  br i1 %tobool1, label %if.then2, label %if.end9, !dbg !2568

if.then2:                                         ; preds = %if.end
  %5 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2569
  %con_id3 = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %5, i32 0, i32 2, !dbg !2571
  %arraydecay = getelementptr inbounds [16 x i8], [16 x i8]* %con_id3, i64 0, i64 0, !dbg !2569
  %6 = load i8*, i8** %con_id.addr, align 8, !dbg !2572
  %call4 = call i64 @strlcpy(i8* %arraydecay, i8* %6, i64 16) #7, !dbg !2573
  %7 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2574
  %con_id5 = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %7, i32 0, i32 2, !dbg !2575
  %arraydecay6 = getelementptr inbounds [16 x i8], [16 x i8]* %con_id5, i64 0, i64 0, !dbg !2574
  %8 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2576
  %cl7 = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %8, i32 0, i32 0, !dbg !2577
  %con_id8 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl7, i32 0, i32 2, !dbg !2578
  store i8* %arraydecay6, i8** %con_id8, align 8, !dbg !2579
  br label %if.end9, !dbg !2580

if.end9:                                          ; preds = %if.then2, %if.end
  %9 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2581
  %tobool10 = icmp ne i8* %9, null, !dbg !2581
  br i1 %tobool10, label %if.then11, label %if.end18, !dbg !2583

if.then11:                                        ; preds = %if.end9
  %10 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2584
  %dev_id = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %10, i32 0, i32 1, !dbg !2586
  %arraydecay12 = getelementptr inbounds [20 x i8], [20 x i8]* %dev_id, i64 0, i64 0, !dbg !2584
  %11 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2587
  %12 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !2588
  %call13 = call i32 @vscnprintf(i8* %arraydecay12, i64 20, i8* %11, %struct.__va_list_tag* %12) #7, !dbg !2589
  %13 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2590
  %dev_id14 = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %13, i32 0, i32 1, !dbg !2591
  %arraydecay15 = getelementptr inbounds [20 x i8], [20 x i8]* %dev_id14, i64 0, i64 0, !dbg !2590
  %14 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2592
  %cl16 = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %14, i32 0, i32 0, !dbg !2593
  %dev_id17 = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %cl16, i32 0, i32 1, !dbg !2594
  store i8* %arraydecay15, i8** %dev_id17, align 8, !dbg !2595
  br label %if.end18, !dbg !2596

if.end18:                                         ; preds = %if.then11, %if.end9
  %15 = load %struct.clk_lookup_alloc*, %struct.clk_lookup_alloc** %cla, align 8, !dbg !2597
  %cl19 = getelementptr inbounds %struct.clk_lookup_alloc, %struct.clk_lookup_alloc* %15, i32 0, i32 0, !dbg !2598
  store %struct.clk_lookup* %cl19, %struct.clk_lookup** %retval, align 8, !dbg !2599
  br label %return, !dbg !2599

return:                                           ; preds = %if.end18, %if.then
  %16 = load %struct.clk_lookup*, %struct.clk_lookup** %retval, align 8, !dbg !2600
  ret %struct.clk_lookup* %16, !dbg !2600
}

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_lookup* @clkdev_hw_alloc(%struct.clk_hw* %hw, i8* %con_id, i8* %dev_fmt, ...) #0 !dbg !2601 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_fmt.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2604, metadata !DIExpression()), !dbg !2605
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2606, metadata !DIExpression()), !dbg !2607
  store i8* %dev_fmt, i8** %dev_fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_fmt.addr, metadata !2608, metadata !DIExpression()), !dbg !2609
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2610, metadata !DIExpression()), !dbg !2611
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2612, metadata !DIExpression()), !dbg !2613
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2614
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2614
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2614
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2615
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2616
  %2 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2617
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2618
  %call = call %struct.clk_lookup* @vclkdev_alloc(%struct.clk_hw* %0, i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #7, !dbg !2619
  store %struct.clk_lookup* %call, %struct.clk_lookup** %cl, align 8, !dbg !2620
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2621
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2621
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2621
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2622
  ret %struct.clk_lookup* %3, !dbg !2623
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_lookup* @clkdev_create(%struct.clk* %clk, i8* %con_id, i8* %dev_fmt, ...) #0 !dbg !2624 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_fmt.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2627, metadata !DIExpression()), !dbg !2628
  store i8* %dev_fmt, i8** %dev_fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_fmt.addr, metadata !2629, metadata !DIExpression()), !dbg !2630
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2631, metadata !DIExpression()), !dbg !2632
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2633, metadata !DIExpression()), !dbg !2634
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2635
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2635
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2635
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2636
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #7, !dbg !2637
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2638
  %2 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2639
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2640
  %call3 = call %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* %call, i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #7, !dbg !2641
  store %struct.clk_lookup* %call3, %struct.clk_lookup** %cl, align 8, !dbg !2642
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2643
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !2643
  call void @llvm.va_end(i8* %arraydecay45), !dbg !2643
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2644
  ret %struct.clk_lookup* %3, !dbg !2645
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* %hw, i8* %con_id, i8* %dev_fmt, %struct.__va_list_tag* %ap) #0 !dbg !2646 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_fmt.addr = alloca i8*, align 8
  %ap.addr = alloca %struct.__va_list_tag*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2647, metadata !DIExpression()), !dbg !2648
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2649, metadata !DIExpression()), !dbg !2650
  store i8* %dev_fmt, i8** %dev_fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_fmt.addr, metadata !2651, metadata !DIExpression()), !dbg !2652
  store %struct.__va_list_tag* %ap, %struct.__va_list_tag** %ap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.__va_list_tag** %ap.addr, metadata !2653, metadata !DIExpression()), !dbg !2654
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2655, metadata !DIExpression()), !dbg !2656
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2657
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2658
  %2 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2659
  %3 = load %struct.__va_list_tag*, %struct.__va_list_tag** %ap.addr, align 8, !dbg !2660
  %call = call %struct.clk_lookup* @vclkdev_alloc(%struct.clk_hw* %0, i8* %1, i8* %2, %struct.__va_list_tag* %3) #7, !dbg !2661
  store %struct.clk_lookup* %call, %struct.clk_lookup** %cl, align 8, !dbg !2662
  %4 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2663
  %tobool = icmp ne %struct.clk_lookup* %4, null, !dbg !2663
  br i1 %tobool, label %if.then, label %if.end, !dbg !2665

if.then:                                          ; preds = %entry
  %5 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2666
  call void @__clkdev_add(%struct.clk_lookup* %5) #7, !dbg !2667
  br label %if.end, !dbg !2667

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2668
  ret %struct.clk_lookup* %6, !dbg !2669
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_lookup* @clkdev_hw_create(%struct.clk_hw* %hw, i8* %con_id, i8* %dev_fmt, ...) #0 !dbg !2670 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_fmt.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2671, metadata !DIExpression()), !dbg !2672
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2673, metadata !DIExpression()), !dbg !2674
  store i8* %dev_fmt, i8** %dev_fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_fmt.addr, metadata !2675, metadata !DIExpression()), !dbg !2676
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !2679, metadata !DIExpression()), !dbg !2680
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2681
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2681
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2681
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2682
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2683
  %2 = load i8*, i8** %dev_fmt.addr, align 8, !dbg !2684
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2685
  %call = call %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* %0, i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #7, !dbg !2686
  store %struct.clk_lookup* %call, %struct.clk_lookup** %cl, align 8, !dbg !2687
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !2688
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !2688
  call void @llvm.va_end(i8* %arraydecay34), !dbg !2688
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2689
  ret %struct.clk_lookup* %3, !dbg !2690
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_add_alias(i8* %alias, i8* %alias_dev_name, i8* %con_id, %struct.device* %dev) #0 !dbg !2691 {
entry:
  %retval = alloca i32, align 4
  %alias.addr = alloca i8*, align 8
  %alias_dev_name.addr = alloca i8*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %r = alloca %struct.clk*, align 8
  %l = alloca %struct.clk_lookup*, align 8
  store i8* %alias, i8** %alias.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %alias.addr, metadata !2694, metadata !DIExpression()), !dbg !2695
  store i8* %alias_dev_name, i8** %alias_dev_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %alias_dev_name.addr, metadata !2696, metadata !DIExpression()), !dbg !2697
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2698, metadata !DIExpression()), !dbg !2699
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2700, metadata !DIExpression()), !dbg !2701
  call void @llvm.dbg.declare(metadata %struct.clk** %r, metadata !2702, metadata !DIExpression()), !dbg !2703
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2704
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2705
  %call = call %struct.clk* @clk_get(%struct.device* %0, i8* %1) #7, !dbg !2706
  store %struct.clk* %call, %struct.clk** %r, align 8, !dbg !2703
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %l, metadata !2707, metadata !DIExpression()), !dbg !2708
  %2 = load %struct.clk*, %struct.clk** %r, align 8, !dbg !2709
  %3 = bitcast %struct.clk* %2 to i8*, !dbg !2709
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #7, !dbg !2711
  br i1 %call1, label %if.then, label %if.end, !dbg !2712

if.then:                                          ; preds = %entry
  %4 = load %struct.clk*, %struct.clk** %r, align 8, !dbg !2713
  %5 = bitcast %struct.clk* %4 to i8*, !dbg !2713
  %call2 = call i64 @PTR_ERR(i8* %5) #7, !dbg !2714
  %conv = trunc i64 %call2 to i32, !dbg !2714
  store i32 %conv, i32* %retval, align 4, !dbg !2715
  br label %return, !dbg !2715

if.end:                                           ; preds = %entry
  %6 = load %struct.clk*, %struct.clk** %r, align 8, !dbg !2716
  %7 = load i8*, i8** %alias.addr, align 8, !dbg !2717
  %8 = load i8*, i8** %alias_dev_name.addr, align 8, !dbg !2718
  %tobool = icmp ne i8* %8, null, !dbg !2718
  %9 = zext i1 %tobool to i64, !dbg !2718
  %cond = select i1 %tobool, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* null, !dbg !2718
  %10 = load i8*, i8** %alias_dev_name.addr, align 8, !dbg !2719
  %call3 = call %struct.clk_lookup* (%struct.clk*, i8*, i8*, ...) @clkdev_create(%struct.clk* %6, i8* %7, i8* %cond, i8* %10) #7, !dbg !2720
  store %struct.clk_lookup* %call3, %struct.clk_lookup** %l, align 8, !dbg !2721
  %11 = load %struct.clk*, %struct.clk** %r, align 8, !dbg !2722
  call void @clk_put(%struct.clk* %11) #7, !dbg !2723
  %12 = load %struct.clk_lookup*, %struct.clk_lookup** %l, align 8, !dbg !2724
  %tobool4 = icmp ne %struct.clk_lookup* %12, null, !dbg !2724
  %13 = zext i1 %tobool4 to i64, !dbg !2724
  %cond5 = select i1 %tobool4, i32 0, i32 -19, !dbg !2724
  store i32 %cond5, i32* %retval, align 4, !dbg !2725
  br label %return, !dbg !2725

return:                                           ; preds = %if.end, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !2726
  ret i32 %14, !dbg !2726
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clkdev_drop(%struct.clk_lookup* %cl) #0 !dbg !2727 {
entry:
  %cl.addr = alloca %struct.clk_lookup*, align 8
  store %struct.clk_lookup* %cl, %struct.clk_lookup** %cl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl.addr, metadata !2728, metadata !DIExpression()), !dbg !2729
  call void @mutex_lock(%struct.mutex* @clocks_mutex) #7, !dbg !2730
  %0 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2731
  %node = getelementptr inbounds %struct.clk_lookup, %struct.clk_lookup* %0, i32 0, i32 0, !dbg !2732
  call void @list_del(%struct.list_head* %node) #7, !dbg !2733
  call void @mutex_unlock(%struct.mutex* @clocks_mutex) #7, !dbg !2734
  %1 = load %struct.clk_lookup*, %struct.clk_lookup** %cl.addr, align 8, !dbg !2735
  %2 = bitcast %struct.clk_lookup* %1 to i8*, !dbg !2735
  call void @kfree(i8* %2) #7, !dbg !2736
  ret void, !dbg !2737
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del(%struct.list_head* %entry1) #0 !dbg !2738 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2743
  call void @__list_del_entry(%struct.list_head* %0) #7, !dbg !2744
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2745
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !2746
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 256 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %next, align 8, !dbg !2747
  %2 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !2748
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %2, i32 0, i32 1, !dbg !2749
  store %struct.list_head* bitcast (i8* getelementptr (i8, i8* inttoptr (i64 290 to i8*), i64 -2401263026318606336) to %struct.list_head*), %struct.list_head** %prev, align 8, !dbg !2750
  ret void, !dbg !2751
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_register_clkdev(%struct.clk* %clk, i8* %con_id, i8* %dev_id) #0 !dbg !2752 {
entry:
  %retval = alloca i32, align 4
  %clk.addr = alloca %struct.clk*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2755, metadata !DIExpression()), !dbg !2756
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2757, metadata !DIExpression()), !dbg !2758
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2759, metadata !DIExpression()), !dbg !2760
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2761, metadata !DIExpression()), !dbg !2762
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2763
  %1 = bitcast %struct.clk* %0 to i8*, !dbg !2763
  %call = call zeroext i1 @IS_ERR(i8* %1) #7, !dbg !2765
  br i1 %call, label %if.then, label %if.end, !dbg !2766

if.then:                                          ; preds = %entry
  %2 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2767
  %3 = bitcast %struct.clk* %2 to i8*, !dbg !2767
  %call1 = call i64 @PTR_ERR(i8* %3) #7, !dbg !2768
  %conv = trunc i64 %call1 to i32, !dbg !2768
  store i32 %conv, i32* %retval, align 4, !dbg !2769
  br label %return, !dbg !2769

if.end:                                           ; preds = %entry
  %4 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2770
  %call2 = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %4) #7, !dbg !2771
  %5 = load i8*, i8** %con_id.addr, align 8, !dbg !2772
  %6 = load i8*, i8** %dev_id.addr, align 8, !dbg !2773
  %call3 = call i32 @do_clk_register_clkdev(%struct.clk_hw* %call2, %struct.clk_lookup** %cl, i8* %5, i8* %6) #7, !dbg !2774
  store i32 %call3, i32* %retval, align 4, !dbg !2775
  br label %return, !dbg !2775

return:                                           ; preds = %if.end, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !2776
  ret i32 %7, !dbg !2776
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @do_clk_register_clkdev(%struct.clk_hw* %hw, %struct.clk_lookup** %cl, i8* %con_id, i8* %dev_id) #0 !dbg !2777 {
entry:
  %retval = alloca i32, align 4
  %hw.addr = alloca %struct.clk_hw*, align 8
  %cl.addr = alloca %struct.clk_lookup**, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2780, metadata !DIExpression()), !dbg !2781
  store %struct.clk_lookup** %cl, %struct.clk_lookup*** %cl.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_lookup*** %cl.addr, metadata !2782, metadata !DIExpression()), !dbg !2783
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2784, metadata !DIExpression()), !dbg !2785
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2786, metadata !DIExpression()), !dbg !2787
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2788
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2788
  %call = call zeroext i1 @IS_ERR(i8* %1) #7, !dbg !2790
  br i1 %call, label %if.then, label %if.end, !dbg !2791

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2792
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !2792
  %call1 = call i64 @PTR_ERR(i8* %3) #7, !dbg !2793
  %conv = trunc i64 %call1 to i32, !dbg !2793
  store i32 %conv, i32* %retval, align 4, !dbg !2794
  br label %return, !dbg !2794

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %dev_id.addr, align 8, !dbg !2795
  %tobool = icmp ne i8* %4, null, !dbg !2795
  br i1 %tobool, label %if.then2, label %if.else, !dbg !2797

if.then2:                                         ; preds = %if.end
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2798
  %6 = load i8*, i8** %con_id.addr, align 8, !dbg !2799
  %7 = load i8*, i8** %dev_id.addr, align 8, !dbg !2800
  %call3 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @__clk_register_clkdev(%struct.clk_hw* %5, i8* %6, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i8* %7) #7, !dbg !2801
  %8 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl.addr, align 8, !dbg !2802
  store %struct.clk_lookup* %call3, %struct.clk_lookup** %8, align 8, !dbg !2803
  br label %if.end5, !dbg !2804

if.else:                                          ; preds = %if.end
  %9 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2805
  %10 = load i8*, i8** %con_id.addr, align 8, !dbg !2806
  %call4 = call %struct.clk_lookup* (%struct.clk_hw*, i8*, i8*, ...) @__clk_register_clkdev(%struct.clk_hw* %9, i8* %10, i8* null) #7, !dbg !2807
  %11 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl.addr, align 8, !dbg !2808
  store %struct.clk_lookup* %call4, %struct.clk_lookup** %11, align 8, !dbg !2809
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then2
  %12 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl.addr, align 8, !dbg !2810
  %13 = load %struct.clk_lookup*, %struct.clk_lookup** %12, align 8, !dbg !2811
  %tobool6 = icmp ne %struct.clk_lookup* %13, null, !dbg !2811
  %14 = zext i1 %tobool6 to i64, !dbg !2811
  %cond = select i1 %tobool6, i32 0, i32 -12, !dbg !2811
  store i32 %cond, i32* %retval, align 4, !dbg !2812
  br label %return, !dbg !2812

return:                                           ; preds = %if.end5, %if.then
  %15 = load i32, i32* %retval, align 4, !dbg !2813
  ret i32 %15, !dbg !2813
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @clk_hw_register_clkdev(%struct.clk_hw* %hw, i8* %con_id, i8* %dev_id) #0 !dbg !2814 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2817, metadata !DIExpression()), !dbg !2818
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2819, metadata !DIExpression()), !dbg !2820
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2821, metadata !DIExpression()), !dbg !2822
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2823, metadata !DIExpression()), !dbg !2824
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2825
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2826
  %2 = load i8*, i8** %dev_id.addr, align 8, !dbg !2827
  %call = call i32 @do_clk_register_clkdev(%struct.clk_hw* %0, %struct.clk_lookup** %cl, i8* %1, i8* %2) #7, !dbg !2828
  ret i32 %call, !dbg !2829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @devm_clk_release_clkdev(%struct.device* %dev, i8* %con_id, i8* %dev_id) #0 !dbg !2830 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %rval = alloca i32, align 4
  %__ret_warn_on = alloca i32, align 4
  %tmp = alloca i64, align 8
  %__ret_warn_on22 = alloca i32, align 4
  %tmp45 = alloca i64, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2833, metadata !DIExpression()), !dbg !2834
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2835, metadata !DIExpression()), !dbg !2836
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !2839, metadata !DIExpression()), !dbg !2840
  call void @llvm.dbg.declare(metadata i32* %rval, metadata !2841, metadata !DIExpression()), !dbg !2842
  call void @mutex_lock(%struct.mutex* @clocks_mutex) #7, !dbg !2843
  %0 = load i8*, i8** %dev_id.addr, align 8, !dbg !2844
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !2845
  %call = call %struct.clk_lookup* @clk_find(i8* %0, i8* %1) #7, !dbg !2846
  store %struct.clk_lookup* %call, %struct.clk_lookup** %cl, align 8, !dbg !2847
  call void @mutex_unlock(%struct.mutex* @clocks_mutex) #7, !dbg !2848
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on, metadata !2849, metadata !DIExpression()), !dbg !2851
  %2 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2851
  %tobool = icmp ne %struct.clk_lookup* %2, null, !dbg !2851
  %lnot = xor i1 %tobool, true, !dbg !2851
  %lnot1 = xor i1 %lnot, true, !dbg !2851
  %lnot2 = xor i1 %lnot1, true, !dbg !2851
  %lnot.ext = zext i1 %lnot2 to i32, !dbg !2851
  store i32 %lnot.ext, i32* %__ret_warn_on, align 4, !dbg !2851
  %3 = load i32, i32* %__ret_warn_on, align 4, !dbg !2852
  %tobool3 = icmp ne i32 %3, 0, !dbg !2852
  %lnot4 = xor i1 %tobool3, true, !dbg !2852
  %lnot6 = xor i1 %lnot4, true, !dbg !2852
  %lnot.ext7 = zext i1 %lnot6 to i32, !dbg !2852
  %conv = sext i32 %lnot.ext7 to i64, !dbg !2852
  %tobool8 = icmp ne i64 %conv, 0, !dbg !2852
  br i1 %tobool8, label %if.then, label %if.end, !dbg !2851

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2852

do.body:                                          ; preds = %if.then
  br label %do.body9, !dbg !2854

do.body9:                                         ; preds = %do.body
  br label %do.end, !dbg !2856

do.end:                                           ; preds = %do.body9
  br label %do.body10, !dbg !2854

do.body10:                                        ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 409, i32 2305, i64 12) #3, !dbg !2858, !srcloc !2860
  br label %do.end11, !dbg !2858

do.end11:                                         ; preds = %do.body10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 163) #3, !dbg !2861, !srcloc !2863
  br label %do.body12, !dbg !2854

do.body12:                                        ; preds = %do.end11
  br label %do.end13, !dbg !2864

do.end13:                                         ; preds = %do.body12
  br label %do.end14, !dbg !2854

do.end14:                                         ; preds = %do.end13
  br label %if.end, !dbg !2854

if.end:                                           ; preds = %do.end14, %entry
  %4 = load i32, i32* %__ret_warn_on, align 4, !dbg !2851
  %tobool15 = icmp ne i32 %4, 0, !dbg !2851
  %lnot16 = xor i1 %tobool15, true, !dbg !2851
  %lnot18 = xor i1 %lnot16, true, !dbg !2851
  %lnot.ext19 = zext i1 %lnot18 to i32, !dbg !2851
  %conv20 = sext i32 %lnot.ext19 to i64, !dbg !2851
  store i64 %conv20, i64* %tmp, align 8, !dbg !2852
  %5 = load i64, i64* %tmp, align 8, !dbg !2851
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2866
  %7 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !2867
  %8 = bitcast %struct.clk_lookup* %7 to i8*, !dbg !2867
  %call21 = call i32 @devres_release(%struct.device* %6, void (%struct.device*, i8*)* @devm_clkdev_release, i32 (%struct.device*, i8*, i8*)* @devm_clk_match_clkdev, i8* %8) #7, !dbg !2868
  store i32 %call21, i32* %rval, align 4, !dbg !2869
  call void @llvm.dbg.declare(metadata i32* %__ret_warn_on22, metadata !2870, metadata !DIExpression()), !dbg !2872
  %9 = load i32, i32* %rval, align 4, !dbg !2872
  %tobool23 = icmp ne i32 %9, 0, !dbg !2872
  %lnot24 = xor i1 %tobool23, true, !dbg !2872
  %lnot26 = xor i1 %lnot24, true, !dbg !2872
  %lnot.ext27 = zext i1 %lnot26 to i32, !dbg !2872
  store i32 %lnot.ext27, i32* %__ret_warn_on22, align 4, !dbg !2872
  %10 = load i32, i32* %__ret_warn_on22, align 4, !dbg !2873
  %tobool28 = icmp ne i32 %10, 0, !dbg !2873
  %lnot29 = xor i1 %tobool28, true, !dbg !2873
  %lnot31 = xor i1 %lnot29, true, !dbg !2873
  %lnot.ext32 = zext i1 %lnot31 to i32, !dbg !2873
  %conv33 = sext i32 %lnot.ext32 to i64, !dbg !2873
  %tobool34 = icmp ne i64 %conv33, 0, !dbg !2873
  br i1 %tobool34, label %if.then35, label %if.end44, !dbg !2872

if.then35:                                        ; preds = %if.end
  br label %do.body36, !dbg !2873

do.body36:                                        ; preds = %if.then35
  br label %do.body37, !dbg !2875

do.body37:                                        ; preds = %do.body36
  br label %do.end38, !dbg !2877

do.end38:                                         ; preds = %do.body37
  br label %do.body39, !dbg !2875

do.body39:                                        ; preds = %do.end38
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 412, i32 2305, i64 12) #3, !dbg !2879, !srcloc !2881
  br label %do.end40, !dbg !2879

do.end40:                                         ; preds = %do.body39
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.reachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 164) #3, !dbg !2882, !srcloc !2884
  br label %do.body41, !dbg !2875

do.body41:                                        ; preds = %do.end40
  br label %do.end42, !dbg !2885

do.end42:                                         ; preds = %do.body41
  br label %do.end43, !dbg !2875

do.end43:                                         ; preds = %do.end42
  br label %if.end44, !dbg !2875

if.end44:                                         ; preds = %do.end43, %if.end
  %11 = load i32, i32* %__ret_warn_on22, align 4, !dbg !2872
  %tobool46 = icmp ne i32 %11, 0, !dbg !2872
  %lnot47 = xor i1 %tobool46, true, !dbg !2872
  %lnot49 = xor i1 %lnot47, true, !dbg !2872
  %lnot.ext50 = zext i1 %lnot49 to i32, !dbg !2872
  %conv51 = sext i32 %lnot.ext50 to i64, !dbg !2872
  store i64 %conv51, i64* %tmp45, align 8, !dbg !2873
  %12 = load i64, i64* %tmp45, align 8, !dbg !2872
  ret void, !dbg !2887
}

; Function Attrs: noredzone
declare dso_local i32 @devres_release(%struct.device*, void (%struct.device*, i8*)*, i32 (%struct.device*, i8*, i8*)*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @devm_clkdev_release(%struct.device* %dev, i8* %res) #0 !dbg !2888 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2893, metadata !DIExpression()), !dbg !2894
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2895
  %1 = bitcast i8* %0 to %struct.clk_lookup**, !dbg !2896
  %2 = load %struct.clk_lookup*, %struct.clk_lookup** %1, align 8, !dbg !2897
  call void @clkdev_drop(%struct.clk_lookup* %2) #7, !dbg !2898
  ret void, !dbg !2899
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_clk_match_clkdev(%struct.device* %dev, i8* %res, i8* %data) #0 !dbg !2900 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %res.addr = alloca i8*, align 8
  %data.addr = alloca i8*, align 8
  %l = alloca %struct.clk_lookup**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2903, metadata !DIExpression()), !dbg !2904
  store i8* %res, i8** %res.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %res.addr, metadata !2905, metadata !DIExpression()), !dbg !2906
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2907, metadata !DIExpression()), !dbg !2908
  call void @llvm.dbg.declare(metadata %struct.clk_lookup*** %l, metadata !2909, metadata !DIExpression()), !dbg !2910
  %0 = load i8*, i8** %res.addr, align 8, !dbg !2911
  %1 = bitcast i8* %0 to %struct.clk_lookup**, !dbg !2911
  store %struct.clk_lookup** %1, %struct.clk_lookup*** %l, align 8, !dbg !2910
  %2 = load %struct.clk_lookup**, %struct.clk_lookup*** %l, align 8, !dbg !2912
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %2, align 8, !dbg !2913
  %4 = load i8*, i8** %data.addr, align 8, !dbg !2914
  %5 = bitcast i8* %4 to %struct.clk_lookup*, !dbg !2914
  %cmp = icmp eq %struct.clk_lookup* %3, %5, !dbg !2915
  %conv = zext i1 %cmp to i32, !dbg !2915
  ret i32 %conv, !dbg !2916
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @devm_clk_hw_register_clkdev(%struct.device* %dev, %struct.clk_hw* %hw, i8* %con_id, i8* %dev_id) #0 !dbg !2917 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  %rval = alloca i32, align 4
  %cl = alloca %struct.clk_lookup**, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2922, metadata !DIExpression()), !dbg !2923
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !2924, metadata !DIExpression()), !dbg !2925
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2926, metadata !DIExpression()), !dbg !2927
  call void @llvm.dbg.declare(metadata i32* %rval, metadata !2928, metadata !DIExpression()), !dbg !2929
  store i32 -12, i32* %rval, align 4, !dbg !2929
  call void @llvm.dbg.declare(metadata %struct.clk_lookup*** %cl, metadata !2930, metadata !DIExpression()), !dbg !2931
  %call = call i8* @devres_alloc(void (%struct.device*, i8*)* @devm_clkdev_release, i64 8, i32 3264) #7, !dbg !2932
  %0 = bitcast i8* %call to %struct.clk_lookup**, !dbg !2932
  store %struct.clk_lookup** %0, %struct.clk_lookup*** %cl, align 8, !dbg !2933
  %1 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl, align 8, !dbg !2934
  %tobool = icmp ne %struct.clk_lookup** %1, null, !dbg !2934
  br i1 %tobool, label %if.then, label %if.end4, !dbg !2936

if.then:                                          ; preds = %entry
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2937
  %3 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl, align 8, !dbg !2939
  %4 = load i8*, i8** %con_id.addr, align 8, !dbg !2940
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !2941
  %call1 = call i32 @do_clk_register_clkdev(%struct.clk_hw* %2, %struct.clk_lookup** %3, i8* %4, i8* %5) #7, !dbg !2942
  store i32 %call1, i32* %rval, align 4, !dbg !2943
  %6 = load i32, i32* %rval, align 4, !dbg !2944
  %tobool2 = icmp ne i32 %6, 0, !dbg !2944
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !2946

if.then3:                                         ; preds = %if.then
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2947
  %8 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl, align 8, !dbg !2948
  %9 = bitcast %struct.clk_lookup** %8 to i8*, !dbg !2948
  call void @devres_add(%struct.device* %7, i8* %9) #7, !dbg !2949
  br label %if.end, !dbg !2949

if.else:                                          ; preds = %if.then
  %10 = load %struct.clk_lookup**, %struct.clk_lookup*** %cl, align 8, !dbg !2950
  %11 = bitcast %struct.clk_lookup** %10 to i8*, !dbg !2950
  call void @devres_free(i8* %11) #7, !dbg !2951
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then3
  br label %if.end4, !dbg !2952

if.end4:                                          ; preds = %if.end, %entry
  %12 = load i32, i32* %rval, align 4, !dbg !2953
  ret i32 %12, !dbg !2954
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devres_alloc(void (%struct.device*, i8*)* %release, i64 %size, i32 %gfp) #0 !dbg !2955 {
entry:
  %release.addr = alloca void (%struct.device*, i8*)*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store void (%struct.device*, i8*)* %release, void (%struct.device*, i8*)** %release.addr, align 8
  call void @llvm.dbg.declare(metadata void (%struct.device*, i8*)** %release.addr, metadata !2960, metadata !DIExpression()), !dbg !2961
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2962, metadata !DIExpression()), !dbg !2963
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2964, metadata !DIExpression()), !dbg !2965
  %0 = load void (%struct.device*, i8*)*, void (%struct.device*, i8*)** %release.addr, align 8, !dbg !2966
  %1 = load i64, i64* %size.addr, align 8, !dbg !2967
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2968
  %call = call noalias i8* @devres_alloc_node(void (%struct.device*, i8*)* %0, i64 %1, i32 %2, i32 -1) #7, !dbg !2969
  ret i8* %call, !dbg !2970
}

; Function Attrs: noredzone
declare dso_local void @devres_add(%struct.device*, i8*) #2

; Function Attrs: noredzone
declare dso_local void @devres_free(i8*) #2

; Function Attrs: noredzone
declare dso_local i32 @strcmp(i8*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !2971 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !2978
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !2979
  %1 = load i8*, i8** %name, align 8, !dbg !2979
  ret i8* %1, !dbg !2980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !2981 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !2984, metadata !DIExpression()), !dbg !2985
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !2986, metadata !DIExpression()), !dbg !2987
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !2988, metadata !DIExpression()), !dbg !2989
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2990
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !2992
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2993
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #7, !dbg !2994
  br i1 %call, label %if.end, label %if.then, !dbg !2995

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !2996

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !2997
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !2998
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !2999
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3000
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3001
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3002
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3003
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3004
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3005
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3006
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3007
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3008
  br label %do.body, !dbg !3009

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3010

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3012

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3010

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3014
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3014
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3014
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3014
  br label %do.end7, !dbg !3014

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3010

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3016
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3017 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3020, metadata !DIExpression()), !dbg !3021
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3022, metadata !DIExpression()), !dbg !3023
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3024, metadata !DIExpression()), !dbg !3025
  ret i1 true, !dbg !3026
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !3027 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !3030, metadata !DIExpression()), !dbg !3034
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !3040, metadata !DIExpression()), !dbg !3041
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !3042, metadata !DIExpression()), !dbg !3043
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !3044, metadata !DIExpression()), !dbg !3045
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !3046, metadata !DIExpression()), !dbg !3050
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !3052, metadata !DIExpression()), !dbg !3056
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !3058, metadata !DIExpression()), !dbg !3062
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !3067, metadata !DIExpression()), !dbg !3068
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !3069, metadata !DIExpression()), !dbg !3070
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !3071, metadata !DIExpression()), !dbg !3072
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !3073, metadata !DIExpression()), !dbg !3074
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !3075, metadata !DIExpression()), !dbg !3076
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3077, metadata !DIExpression()), !dbg !3078
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !3079, metadata !DIExpression()), !dbg !3080
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !3081, metadata !DIExpression()), !dbg !3082
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3083, metadata !DIExpression()), !dbg !3084
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3085, metadata !DIExpression()), !dbg !3086
  %0 = load i64, i64* %size.addr, align 8, !dbg !3087
  %1 = load i32, i32* %flags.addr, align 4, !dbg !3088
  %or = or i32 %1, 256, !dbg !3089
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !3090
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #3, !dbg !3091
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !3092

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3093
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !3094
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3095

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !3096
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !3097
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !3098
  %call.i.i = call i32 @get_order(i64 %7) #8, !dbg !3099
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !3076
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !3100
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !3101
  %10 = load i32, i32* %order.i.i, align 4, !dbg !3102
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !3103
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !3104
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !3105
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #9, !dbg !3106
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !3106
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !3106
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !3106
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !3106
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !3107
  br label %kmalloc.exit, !dbg !3107

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !3108
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3109
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !3109
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !3111

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !3112
  br label %kmalloc_index.exit.i, !dbg !3112

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3113
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !3115
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !3116

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3117
  br label %kmalloc_index.exit.i, !dbg !3117

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3118
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !3120
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !3121

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3122
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !3123
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !3124

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !3125
  br label %kmalloc_index.exit.i, !dbg !3125

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3126
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !3128
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !3129

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3130
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !3131
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !3132

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !3133
  br label %kmalloc_index.exit.i, !dbg !3133

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3134
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !3136
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !3137

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !3138
  br label %kmalloc_index.exit.i, !dbg !3138

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3139
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !3141
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !3142

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !3143
  br label %kmalloc_index.exit.i, !dbg !3143

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3144
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !3146
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !3147

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !3148
  br label %kmalloc_index.exit.i, !dbg !3148

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3149
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !3151
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !3152

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !3153
  br label %kmalloc_index.exit.i, !dbg !3153

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3154
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !3156
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !3157

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !3158
  br label %kmalloc_index.exit.i, !dbg !3158

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3159
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !3161
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !3162

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !3163
  br label %kmalloc_index.exit.i, !dbg !3163

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3164
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !3166
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !3167

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !3168
  br label %kmalloc_index.exit.i, !dbg !3168

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3169
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !3171
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !3172

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !3173
  br label %kmalloc_index.exit.i, !dbg !3173

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3174
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !3176
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !3177

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !3178
  br label %kmalloc_index.exit.i, !dbg !3178

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3179
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !3181
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !3182

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !3183
  br label %kmalloc_index.exit.i, !dbg !3183

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3184
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !3186
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !3187

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !3188
  br label %kmalloc_index.exit.i, !dbg !3188

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3189
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !3191
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !3192

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !3193
  br label %kmalloc_index.exit.i, !dbg !3193

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3194
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !3196
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !3197

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !3198
  br label %kmalloc_index.exit.i, !dbg !3198

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3199
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !3201
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !3202

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !3203
  br label %kmalloc_index.exit.i, !dbg !3203

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3204
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !3206
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !3207

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !3208
  br label %kmalloc_index.exit.i, !dbg !3208

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3209
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !3211
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !3212

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !3213
  br label %kmalloc_index.exit.i, !dbg !3213

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3214
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !3216
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !3217

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !3218
  br label %kmalloc_index.exit.i, !dbg !3218

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3219
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !3221
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !3222

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !3223
  br label %kmalloc_index.exit.i, !dbg !3223

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3224
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !3226
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !3227

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !3228
  br label %kmalloc_index.exit.i, !dbg !3228

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3229
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !3231
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !3232

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !3233
  br label %kmalloc_index.exit.i, !dbg !3233

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3234
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !3236
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !3237

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !3238
  br label %kmalloc_index.exit.i, !dbg !3238

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3239
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !3241
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !3242

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !3243
  br label %kmalloc_index.exit.i, !dbg !3243

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3244
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !3246
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !3247

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !3248
  br label %kmalloc_index.exit.i, !dbg !3248

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !3249
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !3251
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !3252

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !3253
  br label %kmalloc_index.exit.i, !dbg !3253

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !3254, !srcloc !3257
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #3, !dbg !3258, !srcloc !3261
  unreachable, !dbg !3262

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !3263
  store i32 %45, i32* %index.i, align 4, !dbg !3264
  %46 = load i32, i32* %index.i, align 4, !dbg !3265
  %tobool.i = icmp ne i32 %46, 0, !dbg !3265
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !3267

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !3268
  br label %kmalloc.exit, !dbg !3268

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !3269
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3270
  %and.i.i = and i32 %48, 17, !dbg !3270
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !3270
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !3270
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !3270
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !3270
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !3272

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !3273
  br label %kmalloc_type.exit.i, !dbg !3273

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !3274
  %and2.i.i = and i32 %49, 1, !dbg !3275
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !3274
  %50 = zext i1 %tobool3.i.i to i64, !dbg !3274
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !3274
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !3276
  br label %kmalloc_type.exit.i, !dbg !3276

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !3277
  %idxprom.i = zext i32 %51 to i64, !dbg !3278
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !3278
  %52 = load i32, i32* %index.i, align 4, !dbg !3279
  %idxprom6.i = zext i32 %52 to i64, !dbg !3278
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !3278
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !3278
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !3280
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !3281
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3282
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3283
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #9, !dbg !3284
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !3284
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !3284
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !3284
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !3284
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !3045
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !3285
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !3286
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !3287
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !3288
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #9, !dbg !3289
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !3290
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !3291
  store i8* %62, i8** %retval.i, align 8, !dbg !3292
  br label %kmalloc.exit, !dbg !3292

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !3293
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !3294
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #9, !dbg !3295
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !3295
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !3295
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !3295
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !3295
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !3296
  br label %kmalloc.exit, !dbg !3296

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !3297
  ret i8* %65, !dbg !3298
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @vscnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3299 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3303, metadata !DIExpression()), !dbg !3308
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3310, metadata !DIExpression()), !dbg !3311
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3312, metadata !DIExpression()), !dbg !3313
  %0 = load i64, i64* %size.addr, align 8, !dbg !3314
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3316
  br i1 %1, label %if.then, label %if.end447, !dbg !3317

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3318
  %tobool = icmp ne i64 %2, 0, !dbg !3318
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3321

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3322
  br label %return, !dbg !3322

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3323
  %cmp = icmp ult i64 %3, 4096, !dbg !3325
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3326

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3327
  br label %return, !dbg !3327

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub = sub i64 %4, 1, !dbg !3328
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3328
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3328

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub4 = sub i64 %6, 1, !dbg !3328
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3328
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3328

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub6 = sub i64 %8, 1, !dbg !3328
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3328
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3328

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3328

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub9 = sub i64 %9, 1, !dbg !3328
  %and = and i64 %sub9, -9223372036854775808, !dbg !3328
  %tobool10 = icmp ne i64 %and, 0, !dbg !3328
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3328

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3328

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub13 = sub i64 %10, 1, !dbg !3328
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3328
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3328
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3328

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3328

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub18 = sub i64 %11, 1, !dbg !3328
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3328
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3328
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3328

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3328

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub23 = sub i64 %12, 1, !dbg !3328
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3328
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3328
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3328

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3328

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub28 = sub i64 %13, 1, !dbg !3328
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3328
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3328
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3328

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3328

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub33 = sub i64 %14, 1, !dbg !3328
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3328
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3328
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3328

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3328

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub38 = sub i64 %15, 1, !dbg !3328
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3328
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3328
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3328

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3328

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub43 = sub i64 %16, 1, !dbg !3328
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3328
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3328
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3328

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3328

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub48 = sub i64 %17, 1, !dbg !3328
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3328
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3328
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3328

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3328

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub53 = sub i64 %18, 1, !dbg !3328
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3328
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3328
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3328

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3328

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub58 = sub i64 %19, 1, !dbg !3328
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3328
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3328
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3328

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3328

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub63 = sub i64 %20, 1, !dbg !3328
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3328
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3328
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3328

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3328

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub68 = sub i64 %21, 1, !dbg !3328
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3328
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3328
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3328

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3328

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub73 = sub i64 %22, 1, !dbg !3328
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3328
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3328
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3328

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3328

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub78 = sub i64 %23, 1, !dbg !3328
  %and79 = and i64 %sub78, 562949953421312, !dbg !3328
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3328
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3328

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3328

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub83 = sub i64 %24, 1, !dbg !3328
  %and84 = and i64 %sub83, 281474976710656, !dbg !3328
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3328
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3328

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3328

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub88 = sub i64 %25, 1, !dbg !3328
  %and89 = and i64 %sub88, 140737488355328, !dbg !3328
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3328
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3328

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3328

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub93 = sub i64 %26, 1, !dbg !3328
  %and94 = and i64 %sub93, 70368744177664, !dbg !3328
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3328
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3328

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3328

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub98 = sub i64 %27, 1, !dbg !3328
  %and99 = and i64 %sub98, 35184372088832, !dbg !3328
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3328
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3328

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3328

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub103 = sub i64 %28, 1, !dbg !3328
  %and104 = and i64 %sub103, 17592186044416, !dbg !3328
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3328
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3328

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3328

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub108 = sub i64 %29, 1, !dbg !3328
  %and109 = and i64 %sub108, 8796093022208, !dbg !3328
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3328
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3328

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3328

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub113 = sub i64 %30, 1, !dbg !3328
  %and114 = and i64 %sub113, 4398046511104, !dbg !3328
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3328
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3328

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3328

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub118 = sub i64 %31, 1, !dbg !3328
  %and119 = and i64 %sub118, 2199023255552, !dbg !3328
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3328
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3328

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3328

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub123 = sub i64 %32, 1, !dbg !3328
  %and124 = and i64 %sub123, 1099511627776, !dbg !3328
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3328
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3328

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3328

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub128 = sub i64 %33, 1, !dbg !3328
  %and129 = and i64 %sub128, 549755813888, !dbg !3328
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3328
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3328

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3328

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub133 = sub i64 %34, 1, !dbg !3328
  %and134 = and i64 %sub133, 274877906944, !dbg !3328
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3328
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3328

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3328

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub138 = sub i64 %35, 1, !dbg !3328
  %and139 = and i64 %sub138, 137438953472, !dbg !3328
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3328
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3328

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3328

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub143 = sub i64 %36, 1, !dbg !3328
  %and144 = and i64 %sub143, 68719476736, !dbg !3328
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3328
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3328

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3328

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub148 = sub i64 %37, 1, !dbg !3328
  %and149 = and i64 %sub148, 34359738368, !dbg !3328
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3328
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3328

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3328

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub153 = sub i64 %38, 1, !dbg !3328
  %and154 = and i64 %sub153, 17179869184, !dbg !3328
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3328
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3328

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3328

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub158 = sub i64 %39, 1, !dbg !3328
  %and159 = and i64 %sub158, 8589934592, !dbg !3328
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3328
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3328

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3328

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub163 = sub i64 %40, 1, !dbg !3328
  %and164 = and i64 %sub163, 4294967296, !dbg !3328
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3328
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3328

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3328

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub168 = sub i64 %41, 1, !dbg !3328
  %and169 = and i64 %sub168, 2147483648, !dbg !3328
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3328
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3328

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3328

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub173 = sub i64 %42, 1, !dbg !3328
  %and174 = and i64 %sub173, 1073741824, !dbg !3328
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3328
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3328

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3328

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub178 = sub i64 %43, 1, !dbg !3328
  %and179 = and i64 %sub178, 536870912, !dbg !3328
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3328
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3328

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3328

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub183 = sub i64 %44, 1, !dbg !3328
  %and184 = and i64 %sub183, 268435456, !dbg !3328
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3328
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3328

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3328

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub188 = sub i64 %45, 1, !dbg !3328
  %and189 = and i64 %sub188, 134217728, !dbg !3328
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3328
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3328

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3328

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub193 = sub i64 %46, 1, !dbg !3328
  %and194 = and i64 %sub193, 67108864, !dbg !3328
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3328
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3328

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3328

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub198 = sub i64 %47, 1, !dbg !3328
  %and199 = and i64 %sub198, 33554432, !dbg !3328
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3328
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3328

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3328

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub203 = sub i64 %48, 1, !dbg !3328
  %and204 = and i64 %sub203, 16777216, !dbg !3328
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3328
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3328

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3328

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub208 = sub i64 %49, 1, !dbg !3328
  %and209 = and i64 %sub208, 8388608, !dbg !3328
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3328
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3328

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3328

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub213 = sub i64 %50, 1, !dbg !3328
  %and214 = and i64 %sub213, 4194304, !dbg !3328
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3328
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3328

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3328

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub218 = sub i64 %51, 1, !dbg !3328
  %and219 = and i64 %sub218, 2097152, !dbg !3328
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3328
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3328

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3328

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub223 = sub i64 %52, 1, !dbg !3328
  %and224 = and i64 %sub223, 1048576, !dbg !3328
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3328
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3328

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3328

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub228 = sub i64 %53, 1, !dbg !3328
  %and229 = and i64 %sub228, 524288, !dbg !3328
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3328
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3328

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3328

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub233 = sub i64 %54, 1, !dbg !3328
  %and234 = and i64 %sub233, 262144, !dbg !3328
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3328
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3328

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3328

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub238 = sub i64 %55, 1, !dbg !3328
  %and239 = and i64 %sub238, 131072, !dbg !3328
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3328
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3328

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3328

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub243 = sub i64 %56, 1, !dbg !3328
  %and244 = and i64 %sub243, 65536, !dbg !3328
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3328
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3328

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3328

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub248 = sub i64 %57, 1, !dbg !3328
  %and249 = and i64 %sub248, 32768, !dbg !3328
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3328
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3328

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3328

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub253 = sub i64 %58, 1, !dbg !3328
  %and254 = and i64 %sub253, 16384, !dbg !3328
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3328
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3328

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3328

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub258 = sub i64 %59, 1, !dbg !3328
  %and259 = and i64 %sub258, 8192, !dbg !3328
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3328
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3328

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3328

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub263 = sub i64 %60, 1, !dbg !3328
  %and264 = and i64 %sub263, 4096, !dbg !3328
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3328
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3328

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3328

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub268 = sub i64 %61, 1, !dbg !3328
  %and269 = and i64 %sub268, 2048, !dbg !3328
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3328
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3328

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3328

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub273 = sub i64 %62, 1, !dbg !3328
  %and274 = and i64 %sub273, 1024, !dbg !3328
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3328
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3328

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3328

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub278 = sub i64 %63, 1, !dbg !3328
  %and279 = and i64 %sub278, 512, !dbg !3328
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3328
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3328

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3328

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub283 = sub i64 %64, 1, !dbg !3328
  %and284 = and i64 %sub283, 256, !dbg !3328
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3328
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3328

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3328

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub288 = sub i64 %65, 1, !dbg !3328
  %and289 = and i64 %sub288, 128, !dbg !3328
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3328
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3328

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3328

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub293 = sub i64 %66, 1, !dbg !3328
  %and294 = and i64 %sub293, 64, !dbg !3328
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3328
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3328

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3328

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub298 = sub i64 %67, 1, !dbg !3328
  %and299 = and i64 %sub298, 32, !dbg !3328
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3328
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3328

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3328

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub303 = sub i64 %68, 1, !dbg !3328
  %and304 = and i64 %sub303, 16, !dbg !3328
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3328
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3328

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3328

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub308 = sub i64 %69, 1, !dbg !3328
  %and309 = and i64 %sub308, 8, !dbg !3328
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3328
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3328

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3328

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub313 = sub i64 %70, 1, !dbg !3328
  %and314 = and i64 %sub313, 4, !dbg !3328
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3328
  %71 = zext i1 %tobool315 to i64, !dbg !3328
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3328
  br label %cond.end, !dbg !3328

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3328
  br label %cond.end317, !dbg !3328

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3328
  br label %cond.end319, !dbg !3328

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3328
  br label %cond.end321, !dbg !3328

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3328
  br label %cond.end323, !dbg !3328

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3328
  br label %cond.end325, !dbg !3328

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3328
  br label %cond.end327, !dbg !3328

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3328
  br label %cond.end329, !dbg !3328

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3328
  br label %cond.end331, !dbg !3328

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3328
  br label %cond.end333, !dbg !3328

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3328
  br label %cond.end335, !dbg !3328

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3328
  br label %cond.end337, !dbg !3328

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3328
  br label %cond.end339, !dbg !3328

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3328
  br label %cond.end341, !dbg !3328

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3328
  br label %cond.end343, !dbg !3328

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3328
  br label %cond.end345, !dbg !3328

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3328
  br label %cond.end347, !dbg !3328

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3328
  br label %cond.end349, !dbg !3328

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3328
  br label %cond.end351, !dbg !3328

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3328
  br label %cond.end353, !dbg !3328

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3328
  br label %cond.end355, !dbg !3328

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3328
  br label %cond.end357, !dbg !3328

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3328
  br label %cond.end359, !dbg !3328

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3328
  br label %cond.end361, !dbg !3328

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3328
  br label %cond.end363, !dbg !3328

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3328
  br label %cond.end365, !dbg !3328

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3328
  br label %cond.end367, !dbg !3328

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3328
  br label %cond.end369, !dbg !3328

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3328
  br label %cond.end371, !dbg !3328

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3328
  br label %cond.end373, !dbg !3328

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3328
  br label %cond.end375, !dbg !3328

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3328
  br label %cond.end377, !dbg !3328

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3328
  br label %cond.end379, !dbg !3328

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3328
  br label %cond.end381, !dbg !3328

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3328
  br label %cond.end383, !dbg !3328

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3328
  br label %cond.end385, !dbg !3328

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3328
  br label %cond.end387, !dbg !3328

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3328
  br label %cond.end389, !dbg !3328

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3328
  br label %cond.end391, !dbg !3328

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3328
  br label %cond.end393, !dbg !3328

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3328
  br label %cond.end395, !dbg !3328

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3328
  br label %cond.end397, !dbg !3328

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3328
  br label %cond.end399, !dbg !3328

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3328
  br label %cond.end401, !dbg !3328

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3328
  br label %cond.end403, !dbg !3328

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3328
  br label %cond.end405, !dbg !3328

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3328
  br label %cond.end407, !dbg !3328

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3328
  br label %cond.end409, !dbg !3328

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3328
  br label %cond.end411, !dbg !3328

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3328
  br label %cond.end413, !dbg !3328

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3328
  br label %cond.end415, !dbg !3328

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3328
  br label %cond.end417, !dbg !3328

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3328
  br label %cond.end419, !dbg !3328

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3328
  br label %cond.end421, !dbg !3328

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3328
  br label %cond.end423, !dbg !3328

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3328
  br label %cond.end425, !dbg !3328

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3328
  br label %cond.end427, !dbg !3328

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3328
  br label %cond.end429, !dbg !3328

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3328
  br label %cond.end431, !dbg !3328

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3328
  br label %cond.end433, !dbg !3328

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3328
  br label %cond.end435, !dbg !3328

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3328
  br label %cond.end437, !dbg !3328

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3328
  br label %cond.end440, !dbg !3328

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3328

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3328
  br label %cond.end444, !dbg !3328

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3328
  %sub443 = sub i64 %72, 1, !dbg !3328
  %call = call i32 @__ilog2_u64(i64 %sub443) #8, !dbg !3328
  br label %cond.end444, !dbg !3328

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3328
  %sub446 = sub i32 %cond445, 12, !dbg !3329
  %add = add i32 %sub446, 1, !dbg !3330
  store i32 %add, i32* %retval, align 4, !dbg !3331
  br label %return, !dbg !3331

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3332
  %dec = add i64 %73, -1, !dbg !3332
  store i64 %dec, i64* %size.addr, align 8, !dbg !3332
  %74 = load i64, i64* %size.addr, align 8, !dbg !3333
  %shr = lshr i64 %74, 12, !dbg !3333
  store i64 %shr, i64* %size.addr, align 8, !dbg !3333
  %75 = load i64, i64* %size.addr, align 8, !dbg !3334
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3311
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3335
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3336
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #10, !dbg !3335, !srcloc !3337
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3335
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3338
  %add.i = add i32 %79, 1, !dbg !3339
  store i32 %add.i, i32* %retval, align 4, !dbg !3340
  br label %return, !dbg !3340

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3341
  ret i32 %80, !dbg !3341
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3342 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3303, metadata !DIExpression()), !dbg !3346
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3310, metadata !DIExpression()), !dbg !3348
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3349, metadata !DIExpression()), !dbg !3350
  %0 = load i64, i64* %n.addr, align 8, !dbg !3351
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3348
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3352
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3353
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #10, !dbg !3352, !srcloc !3337
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3352
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3354
  %add.i = add i32 %4, 1, !dbg !3355
  %sub = sub i32 %add.i, 1, !dbg !3356
  ret i32 %sub, !dbg !3357
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3358 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3362, metadata !DIExpression()), !dbg !3363
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3364, metadata !DIExpression()), !dbg !3365
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3366, metadata !DIExpression()), !dbg !3367
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3368, metadata !DIExpression()), !dbg !3369
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3370
  ret i8* %0, !dbg !3371
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3372 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3373, metadata !DIExpression()), !dbg !3374
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3375
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #7, !dbg !3377
  br i1 %call, label %if.end, label %if.then, !dbg !3378

if.then:                                          ; preds = %entry
  br label %return, !dbg !3379

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3380
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3381
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3381
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3382
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3383
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3383
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #7, !dbg !3384
  br label %return, !dbg !3385

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3385
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3386 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3389, metadata !DIExpression()), !dbg !3390
  ret i1 true, !dbg !3391
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3392 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3393, metadata !DIExpression()), !dbg !3394
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3395, metadata !DIExpression()), !dbg !3396
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3397
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3398
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3399
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3400
  br label %do.body, !dbg !3401

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3402

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3404

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3402

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3406
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3406
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3406
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3406
  br label %do.end5, !dbg !3406

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3402

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3408
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_lookup* @__clk_register_clkdev(%struct.clk_hw* %hw, i8* %con_id, i8* %dev_id, ...) #0 !dbg !3409 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %con_id.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  %cl = alloca %struct.clk_lookup*, align 8
  %ap = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !3410, metadata !DIExpression()), !dbg !3411
  store i8* %con_id, i8** %con_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %con_id.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  call void @llvm.dbg.declare(metadata %struct.clk_lookup** %cl, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %ap, metadata !3418, metadata !DIExpression()), !dbg !3419
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !3420
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !3420
  call void @llvm.va_start(i8* %arraydecay1), !dbg !3420
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !3421
  %1 = load i8*, i8** %con_id.addr, align 8, !dbg !3422
  %2 = load i8*, i8** %dev_id.addr, align 8, !dbg !3423
  %arraydecay2 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !3424
  %call = call %struct.clk_lookup* @vclkdev_create(%struct.clk_hw* %0, i8* %1, i8* %2, %struct.__va_list_tag* %arraydecay2) #7, !dbg !3425
  store %struct.clk_lookup* %call, %struct.clk_lookup** %cl, align 8, !dbg !3426
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %ap, i64 0, i64 0, !dbg !3427
  %arraydecay34 = bitcast %struct.__va_list_tag* %arraydecay3 to i8*, !dbg !3427
  call void @llvm.va_end(i8* %arraydecay34), !dbg !3427
  %3 = load %struct.clk_lookup*, %struct.clk_lookup** %cl, align 8, !dbg !3428
  ret %struct.clk_lookup* %3, !dbg !3429
}

; Function Attrs: noredzone
declare dso_local noalias i8* @devres_alloc_node(void (%struct.device*, i8*)*, i64, i32, i32) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { noredzone nounwind readnone }
attributes #9 = { noredzone nounwind }
attributes #10 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!245, !246, !247, !248}
!llvm.ident = !{!249}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clocks_mutex", scope: !2, file: !3, line: 25, type: !215, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !212, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clkdev.c", directory: "/home/lizy2001/genbc/linux")
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
!62 = !{!63, !65, !66, !126, !131, !209, !211}
!63 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !64, line: 148, baseType: !7)
!64 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!65 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!66 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !67, size: 64)
!67 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_lookup", file: !68, line: 18, size: 384, elements: !69)
!68 = !DIFile(filename: "./include/linux/clkdev.h", directory: "/home/lizy2001/genbc/linux")
!69 = !{!70, !76, !80, !81, !85}
!70 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !67, file: !68, line: 19, baseType: !71, size: 128)
!71 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !64, line: 178, size: 128, elements: !72)
!72 = !{!73, !75}
!73 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !71, file: !64, line: 179, baseType: !74, size: 64)
!74 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !71, size: 64)
!75 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !71, file: !64, line: 179, baseType: !74, size: 64, offset: 64)
!76 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !67, file: !68, line: 20, baseType: !77, size: 64, offset: 128)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !79)
!79 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!80 = !DIDerivedType(tag: DW_TAG_member, name: "con_id", scope: !67, file: !68, line: 21, baseType: !77, size: 64, offset: 192)
!81 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !67, file: !68, line: 22, baseType: !82, size: 64, offset: 256)
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !84, line: 17, flags: DIFlagFwdDecl)
!84 = !DIFile(filename: "./include/linux/clk.h", directory: "/home/lizy2001/genbc/linux")
!85 = !DIDerivedType(tag: DW_TAG_member, name: "clk_hw", scope: !67, file: !68, line: 23, baseType: !86, size: 64, offset: 320)
!86 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !88, line: 312, size: 192, elements: !89)
!88 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !93, !94}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !87, file: !88, line: 313, baseType: !91, size: 64)
!91 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!92 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !88, line: 38, flags: DIFlagFwdDecl)
!93 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !87, file: !88, line: 314, baseType: !82, size: 64, offset: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !87, file: !88, line: 315, baseType: !95, size: 64, offset: 128)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !97)
!97 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !88, line: 285, size: 448, elements: !98)
!98 = !{!99, !100, !191, !194, !205, !207, !208}
!99 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !97, file: !88, line: 286, baseType: !77, size: 64)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !97, file: !88, line: 287, baseType: !101, size: 64, offset: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !88, line: 220, size: 1600, elements: !104)
!104 = !{!105, !110, !114, !115, !116, !117, !118, !119, !120, !121, !122, !127, !133, !145, !154, !158, !162, !166, !167, !168, !172, !181, !182, !183, !184}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !103, file: !88, line: 221, baseType: !106, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !107, size: 64)
!107 = !DISubroutineType(types: !108)
!108 = !{!109, !86}
!109 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !103, file: !88, line: 222, baseType: !111, size: 64, offset: 64)
!111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !112, size: 64)
!112 = !DISubroutineType(types: !113)
!113 = !{null, !86}
!114 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !103, file: !88, line: 223, baseType: !106, size: 64, offset: 128)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !103, file: !88, line: 224, baseType: !111, size: 64, offset: 192)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !103, file: !88, line: 225, baseType: !106, size: 64, offset: 256)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !103, file: !88, line: 226, baseType: !111, size: 64, offset: 320)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !103, file: !88, line: 227, baseType: !106, size: 64, offset: 384)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !103, file: !88, line: 228, baseType: !111, size: 64, offset: 448)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !103, file: !88, line: 229, baseType: !106, size: 64, offset: 512)
!121 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !103, file: !88, line: 230, baseType: !111, size: 64, offset: 576)
!122 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !103, file: !88, line: 231, baseType: !123, size: 64, offset: 640)
!123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !124, size: 64)
!124 = !DISubroutineType(types: !125)
!125 = !{!126, !86, !126}
!126 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !103, file: !88, line: 233, baseType: !128, size: 64, offset: 704)
!128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!129 = !DISubroutineType(types: !130)
!130 = !{!131, !86, !126, !132}
!131 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !103, file: !88, line: 235, baseType: !134, size: 64, offset: 768)
!134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !135, size: 64)
!135 = !DISubroutineType(types: !136)
!136 = !{!109, !86, !137}
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !88, line: 55, size: 320, elements: !139)
!139 = !{!140, !141, !142, !143, !144}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !138, file: !88, line: 56, baseType: !126, size: 64)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !138, file: !88, line: 57, baseType: !126, size: 64, offset: 64)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !138, file: !88, line: 58, baseType: !126, size: 64, offset: 128)
!143 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !138, file: !88, line: 59, baseType: !126, size: 64, offset: 192)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !138, file: !88, line: 60, baseType: !86, size: 64, offset: 256)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !103, file: !88, line: 237, baseType: !146, size: 64, offset: 832)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!109, !86, !149}
!149 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !150, line: 17, baseType: !151)
!150 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!151 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !152, line: 21, baseType: !153)
!152 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!153 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !103, file: !88, line: 238, baseType: !155, size: 64, offset: 896)
!155 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!156 = !DISubroutineType(types: !157)
!157 = !{!149, !86}
!158 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !103, file: !88, line: 239, baseType: !159, size: 64, offset: 960)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DISubroutineType(types: !161)
!161 = !{!109, !86, !126, !126}
!162 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !103, file: !88, line: 241, baseType: !163, size: 64, offset: 1024)
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = !DISubroutineType(types: !165)
!165 = !{!109, !86, !126, !126, !149}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !103, file: !88, line: 244, baseType: !123, size: 64, offset: 1088)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !103, file: !88, line: 246, baseType: !106, size: 64, offset: 1152)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !103, file: !88, line: 247, baseType: !169, size: 64, offset: 1216)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{!109, !86, !109}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !103, file: !88, line: 248, baseType: !173, size: 64, offset: 1280)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DISubroutineType(types: !175)
!175 = !{!109, !86, !176}
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !88, line: 69, size: 64, elements: !178)
!178 = !{!179, !180}
!179 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !177, file: !88, line: 70, baseType: !7, size: 32)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !177, file: !88, line: 71, baseType: !7, size: 32, offset: 32)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !103, file: !88, line: 250, baseType: !173, size: 64, offset: 1344)
!182 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !103, file: !88, line: 252, baseType: !106, size: 64, offset: 1408)
!183 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !103, file: !88, line: 253, baseType: !111, size: 64, offset: 1472)
!184 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !103, file: !88, line: 254, baseType: !185, size: 64, offset: 1536)
!185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!186 = !DISubroutineType(types: !187)
!187 = !{null, !86, !188}
!188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !189, size: 64)
!189 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !190, line: 21, flags: DIFlagFwdDecl)
!190 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!191 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !97, file: !88, line: 289, baseType: !192, size: 64, offset: 128)
!192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !97, file: !88, line: 290, baseType: !195, size: 64, offset: 192)
!195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !196, size: 64)
!196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !197)
!197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !88, line: 264, size: 256, elements: !198)
!198 = !{!199, !202, !203, !204}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !197, file: !88, line: 265, baseType: !200, size: 64)
!200 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!202 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !197, file: !88, line: 266, baseType: !77, size: 64, offset: 64)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !197, file: !88, line: 267, baseType: !77, size: 64, offset: 128)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !197, file: !88, line: 268, baseType: !109, size: 32, offset: 192)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !97, file: !88, line: 291, baseType: !206, size: 64, offset: 256)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !200, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !97, file: !88, line: 292, baseType: !149, size: 8, offset: 320)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !97, file: !88, line: 293, baseType: !126, size: 64, offset: 384)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !74)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!212 = !{!0, !213}
!213 = !DIGlobalVariableExpression(var: !214, expr: !DIExpression())
!214 = distinct !DIGlobalVariable(name: "clocks", scope: !2, file: !3, line: 24, type: !71, isLocal: true, isDefinition: true)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !216, line: 53, size: 192, elements: !217)
!216 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !228, !244}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !215, file: !216, line: 54, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !220, line: 13, baseType: !221)
!220 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!221 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !64, line: 175, baseType: !222)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 173, size: 64, elements: !223)
!223 = !{!224}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !222, file: !64, line: 174, baseType: !225, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !150, line: 22, baseType: !226)
!226 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !152, line: 30, baseType: !227)
!227 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!228 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !215, file: !216, line: 55, baseType: !229, offset: 64)
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !230, line: 83, baseType: !231)
!230 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !230, line: 71, elements: !232)
!232 = !{!233}
!233 = !DIDerivedType(tag: DW_TAG_member, scope: !231, file: !230, line: 72, baseType: !234)
!234 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !231, file: !230, line: 72, elements: !235)
!235 = !{!236}
!236 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !234, file: !230, line: 73, baseType: !237)
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !230, line: 20, elements: !238)
!238 = !{!239}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !237, file: !230, line: 21, baseType: !240)
!240 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !241, line: 25, baseType: !242)
!241 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!242 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !241, line: 25, elements: !243)
!243 = !{}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !215, file: !216, line: 59, baseType: !71, size: 128, offset: 64)
!245 = !{i32 7, !"Dwarf Version", i32 4}
!246 = !{i32 2, !"Debug Info Version", i32 3}
!247 = !{i32 1, !"wchar_size", i32 2}
!248 = !{i32 1, !"Code Model", i32 2}
!249 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!250 = distinct !DISubprogram(name: "clk_find_hw", scope: !3, file: !3, line: 72, type: !251, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!251 = !DISubroutineType(types: !252)
!252 = !{!86, !77, !77}
!253 = !DILocalVariable(name: "dev_id", arg: 1, scope: !250, file: !3, line: 72, type: !77)
!254 = !DILocation(line: 72, column: 40, scope: !250)
!255 = !DILocalVariable(name: "con_id", arg: 2, scope: !250, file: !3, line: 72, type: !77)
!256 = !DILocation(line: 72, column: 60, scope: !250)
!257 = !DILocalVariable(name: "cl", scope: !250, file: !3, line: 74, type: !66)
!258 = !DILocation(line: 74, column: 21, scope: !250)
!259 = !DILocalVariable(name: "hw", scope: !250, file: !3, line: 75, type: !86)
!260 = !DILocation(line: 75, column: 17, scope: !250)
!261 = !DILocation(line: 75, column: 22, scope: !250)
!262 = !DILocation(line: 77, column: 2, scope: !250)
!263 = !DILocation(line: 78, column: 16, scope: !250)
!264 = !DILocation(line: 78, column: 24, scope: !250)
!265 = !DILocation(line: 78, column: 7, scope: !250)
!266 = !DILocation(line: 78, column: 5, scope: !250)
!267 = !DILocation(line: 79, column: 6, scope: !268)
!268 = distinct !DILexicalBlock(scope: !250, file: !3, line: 79, column: 6)
!269 = !DILocation(line: 79, column: 6, scope: !250)
!270 = !DILocation(line: 80, column: 8, scope: !268)
!271 = !DILocation(line: 80, column: 12, scope: !268)
!272 = !DILocation(line: 80, column: 6, scope: !268)
!273 = !DILocation(line: 80, column: 3, scope: !268)
!274 = !DILocation(line: 81, column: 2, scope: !250)
!275 = !DILocation(line: 83, column: 9, scope: !250)
!276 = !DILocation(line: 83, column: 2, scope: !250)
!277 = distinct !DISubprogram(name: "ERR_PTR", scope: !278, file: !278, line: 24, type: !279, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!278 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!279 = !DISubroutineType(types: !280)
!280 = !{!65, !131}
!281 = !DILocalVariable(name: "error", arg: 1, scope: !277, file: !278, line: 24, type: !131)
!282 = !DILocation(line: 24, column: 48, scope: !277)
!283 = !DILocation(line: 26, column: 18, scope: !277)
!284 = !DILocation(line: 26, column: 9, scope: !277)
!285 = !DILocation(line: 26, column: 2, scope: !277)
!286 = distinct !DISubprogram(name: "clk_find", scope: !3, file: !3, line: 36, type: !287, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!287 = !DISubroutineType(types: !288)
!288 = !{!66, !77, !77}
!289 = !DILocalVariable(name: "dev_id", arg: 1, scope: !286, file: !3, line: 36, type: !77)
!290 = !DILocation(line: 36, column: 48, scope: !286)
!291 = !DILocalVariable(name: "con_id", arg: 2, scope: !286, file: !3, line: 36, type: !77)
!292 = !DILocation(line: 36, column: 68, scope: !286)
!293 = !DILocalVariable(name: "p", scope: !286, file: !3, line: 38, type: !66)
!294 = !DILocation(line: 38, column: 21, scope: !286)
!295 = !DILocalVariable(name: "cl", scope: !286, file: !3, line: 38, type: !66)
!296 = !DILocation(line: 38, column: 25, scope: !286)
!297 = !DILocalVariable(name: "match", scope: !286, file: !3, line: 39, type: !109)
!298 = !DILocation(line: 39, column: 6, scope: !286)
!299 = !DILocalVariable(name: "best_found", scope: !286, file: !3, line: 39, type: !109)
!300 = !DILocation(line: 39, column: 13, scope: !286)
!301 = !DILocalVariable(name: "best_possible", scope: !286, file: !3, line: 39, type: !109)
!302 = !DILocation(line: 39, column: 29, scope: !286)
!303 = !DILocation(line: 41, column: 6, scope: !304)
!304 = distinct !DILexicalBlock(scope: !286, file: !3, line: 41, column: 6)
!305 = !DILocation(line: 41, column: 6, scope: !286)
!306 = !DILocation(line: 42, column: 17, scope: !304)
!307 = !DILocation(line: 42, column: 3, scope: !304)
!308 = !DILocation(line: 43, column: 6, scope: !309)
!309 = distinct !DILexicalBlock(scope: !286, file: !3, line: 43, column: 6)
!310 = !DILocation(line: 43, column: 6, scope: !286)
!311 = !DILocation(line: 44, column: 17, scope: !309)
!312 = !DILocation(line: 44, column: 3, scope: !309)
!313 = !DILocation(line: 46, column: 2, scope: !286)
!314 = !DILocation(line: 46, column: 2, scope: !315)
!315 = distinct !DILexicalBlock(scope: !286, file: !3, line: 46, column: 2)
!316 = !DILocalVariable(name: "__mptr", scope: !317, file: !3, line: 48, type: !65)
!317 = distinct !DILexicalBlock(scope: !318, file: !3, line: 48, column: 2)
!318 = distinct !DILexicalBlock(scope: !286, file: !3, line: 48, column: 2)
!319 = !DILocation(line: 48, column: 2, scope: !317)
!320 = !DILocation(line: 48, column: 2, scope: !321)
!321 = distinct !DILexicalBlock(scope: !317, file: !3, line: 48, column: 2)
!322 = !DILocation(line: 48, column: 2, scope: !318)
!323 = !DILocation(line: 48, column: 2, scope: !324)
!324 = distinct !DILexicalBlock(scope: !318, file: !3, line: 48, column: 2)
!325 = !DILocation(line: 49, column: 9, scope: !326)
!326 = distinct !DILexicalBlock(scope: !324, file: !3, line: 48, column: 40)
!327 = !DILocation(line: 50, column: 7, scope: !328)
!328 = distinct !DILexicalBlock(scope: !326, file: !3, line: 50, column: 7)
!329 = !DILocation(line: 50, column: 10, scope: !328)
!330 = !DILocation(line: 50, column: 7, scope: !326)
!331 = !DILocation(line: 51, column: 9, scope: !332)
!332 = distinct !DILexicalBlock(scope: !333, file: !3, line: 51, column: 8)
!333 = distinct !DILexicalBlock(scope: !328, file: !3, line: 50, column: 18)
!334 = !DILocation(line: 51, column: 16, scope: !332)
!335 = !DILocation(line: 51, column: 26, scope: !332)
!336 = !DILocation(line: 51, column: 29, scope: !332)
!337 = !DILocation(line: 51, column: 37, scope: !332)
!338 = !DILocation(line: 51, column: 19, scope: !332)
!339 = !DILocation(line: 51, column: 8, scope: !333)
!340 = !DILocation(line: 52, column: 5, scope: !332)
!341 = !DILocation(line: 53, column: 10, scope: !333)
!342 = !DILocation(line: 54, column: 3, scope: !333)
!343 = !DILocation(line: 55, column: 7, scope: !344)
!344 = distinct !DILexicalBlock(scope: !326, file: !3, line: 55, column: 7)
!345 = !DILocation(line: 55, column: 10, scope: !344)
!346 = !DILocation(line: 55, column: 7, scope: !326)
!347 = !DILocation(line: 56, column: 9, scope: !348)
!348 = distinct !DILexicalBlock(scope: !349, file: !3, line: 56, column: 8)
!349 = distinct !DILexicalBlock(scope: !344, file: !3, line: 55, column: 18)
!350 = !DILocation(line: 56, column: 16, scope: !348)
!351 = !DILocation(line: 56, column: 26, scope: !348)
!352 = !DILocation(line: 56, column: 29, scope: !348)
!353 = !DILocation(line: 56, column: 37, scope: !348)
!354 = !DILocation(line: 56, column: 19, scope: !348)
!355 = !DILocation(line: 56, column: 8, scope: !349)
!356 = !DILocation(line: 57, column: 5, scope: !348)
!357 = !DILocation(line: 58, column: 10, scope: !349)
!358 = !DILocation(line: 59, column: 3, scope: !349)
!359 = !DILocation(line: 61, column: 7, scope: !360)
!360 = distinct !DILexicalBlock(scope: !326, file: !3, line: 61, column: 7)
!361 = !DILocation(line: 61, column: 15, scope: !360)
!362 = !DILocation(line: 61, column: 13, scope: !360)
!363 = !DILocation(line: 61, column: 7, scope: !326)
!364 = !DILocation(line: 62, column: 9, scope: !365)
!365 = distinct !DILexicalBlock(scope: !360, file: !3, line: 61, column: 27)
!366 = !DILocation(line: 62, column: 7, scope: !365)
!367 = !DILocation(line: 63, column: 8, scope: !368)
!368 = distinct !DILexicalBlock(scope: !365, file: !3, line: 63, column: 8)
!369 = !DILocation(line: 63, column: 17, scope: !368)
!370 = !DILocation(line: 63, column: 14, scope: !368)
!371 = !DILocation(line: 63, column: 8, scope: !365)
!372 = !DILocation(line: 64, column: 18, scope: !368)
!373 = !DILocation(line: 64, column: 16, scope: !368)
!374 = !DILocation(line: 64, column: 5, scope: !368)
!375 = !DILocation(line: 66, column: 5, scope: !368)
!376 = !DILocation(line: 67, column: 3, scope: !365)
!377 = !DILocation(line: 68, column: 2, scope: !326)
!378 = !DILocalVariable(name: "__mptr", scope: !379, file: !3, line: 48, type: !65)
!379 = distinct !DILexicalBlock(scope: !324, file: !3, line: 48, column: 2)
!380 = !DILocation(line: 48, column: 2, scope: !379)
!381 = !DILocation(line: 48, column: 2, scope: !382)
!382 = distinct !DILexicalBlock(scope: !379, file: !3, line: 48, column: 2)
!383 = distinct !{!383, !322, !384}
!384 = !DILocation(line: 68, column: 2, scope: !318)
!385 = !DILocation(line: 69, column: 9, scope: !286)
!386 = !DILocation(line: 69, column: 2, scope: !286)
!387 = distinct !DISubprogram(name: "clk_get_sys", scope: !3, file: !3, line: 94, type: !388, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!388 = !DISubroutineType(types: !389)
!389 = !{!82, !77, !77}
!390 = !DILocalVariable(name: "dev_id", arg: 1, scope: !387, file: !3, line: 94, type: !77)
!391 = !DILocation(line: 94, column: 37, scope: !387)
!392 = !DILocalVariable(name: "con_id", arg: 2, scope: !387, file: !3, line: 94, type: !77)
!393 = !DILocation(line: 94, column: 57, scope: !387)
!394 = !DILocation(line: 96, column: 29, scope: !387)
!395 = !DILocation(line: 96, column: 37, scope: !387)
!396 = !DILocation(line: 96, column: 9, scope: !387)
!397 = !DILocation(line: 96, column: 2, scope: !387)
!398 = distinct !DISubprogram(name: "__clk_get_sys", scope: !3, file: !3, line: 86, type: !399, scopeLine: 88, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!399 = !DISubroutineType(types: !400)
!400 = !{!82, !401, !77, !77}
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !403)
!403 = !{!404, !1853, !1854, !1857, !1858, !1909, !2006, !2007, !2008, !2009, !2010, !2019, !2124, !2137, !2140, !2141, !2145, !2147, !2148, !2149, !2153, !2159, !2160, !2163, !2278, !2279, !2282, !2283, !2284, !2285, !2317, !2318, !2319, !2322, !2325, !2326, !2327, !2328}
!404 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !402, file: !30, line: 462, baseType: !405, size: 512)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !406, line: 64, size: 512, elements: !407)
!406 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409, !410, !412, !457, !1691, !1843, !1848, !1849, !1850, !1851, !1852}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !405, file: !406, line: 65, baseType: !77, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !405, file: !406, line: 66, baseType: !71, size: 128, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !405, file: !406, line: 67, baseType: !411, size: 64, offset: 192)
!411 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !405, file: !406, line: 68, baseType: !413, size: 64, offset: 256)
!413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !414, size: 64)
!414 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !406, line: 192, size: 704, elements: !415)
!415 = !{!416, !417, !418, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !414, file: !406, line: 193, baseType: !71, size: 128)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !414, file: !406, line: 194, baseType: !229, offset: 128)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !414, file: !406, line: 195, baseType: !405, size: 512, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !414, file: !406, line: 196, baseType: !420, size: 64, offset: 640)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !421, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !422)
!422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !406, line: 156, size: 192, elements: !423)
!423 = !{!424, !429, !434}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !422, file: !406, line: 157, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !427, size: 64)
!427 = !DISubroutineType(types: !428)
!428 = !{!109, !413, !411}
!429 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !422, file: !406, line: 158, baseType: !430, size: 64, offset: 64)
!430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !431)
!431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !432, size: 64)
!432 = !DISubroutineType(types: !433)
!433 = !{!77, !413, !411}
!434 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !422, file: !406, line: 159, baseType: !435, size: 64, offset: 128)
!435 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !436)
!436 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!437 = !DISubroutineType(types: !438)
!438 = !{!109, !413, !411, !439}
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !406, line: 148, size: 20736, elements: !441)
!441 = !{!442, !447, !451, !452, !456}
!442 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !440, file: !406, line: 149, baseType: !443, size: 192)
!443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 192, elements: !445)
!444 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!445 = !{!446}
!446 = !DISubrange(count: 3)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !440, file: !406, line: 150, baseType: !448, size: 4096, offset: 192)
!448 = !DICompositeType(tag: DW_TAG_array_type, baseType: !444, size: 4096, elements: !449)
!449 = !{!450}
!450 = !DISubrange(count: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !440, file: !406, line: 151, baseType: !109, size: 32, offset: 4288)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !440, file: !406, line: 152, baseType: !453, size: 16384, offset: 4320)
!453 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 16384, elements: !454)
!454 = !{!455}
!455 = !DISubrange(count: 2048)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !440, file: !406, line: 153, baseType: !109, size: 32, offset: 20704)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !405, file: !406, line: 69, baseType: !458, size: 64, offset: 320)
!458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !459, size: 64)
!459 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !406, line: 138, size: 448, elements: !460)
!460 = !{!461, !465, !493, !495, !1637, !1670, !1674}
!461 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !459, file: !406, line: 139, baseType: !462, size: 64)
!462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !463, size: 64)
!463 = !DISubroutineType(types: !464)
!464 = !{null, !411}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !459, file: !406, line: 140, baseType: !466, size: 64, offset: 64)
!466 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !467, size: 64)
!467 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !468)
!468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !469, line: 230, size: 128, elements: !470)
!469 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!470 = !{!471, !486}
!471 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !468, file: !469, line: 231, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !473, size: 64)
!473 = !DISubroutineType(types: !474)
!474 = !{!475, !411, !479, !444}
!475 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !64, line: 60, baseType: !476)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !477, line: 73, baseType: !478)
!477 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!478 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !477, line: 15, baseType: !131)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !469, line: 30, size: 128, elements: !481)
!481 = !{!482, !483}
!482 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !480, file: !469, line: 31, baseType: !77, size: 64)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !480, file: !469, line: 32, baseType: !484, size: 16, offset: 64)
!484 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !64, line: 19, baseType: !485)
!485 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !468, file: !469, line: 232, baseType: !487, size: 64, offset: 64)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !488, size: 64)
!488 = !DISubroutineType(types: !489)
!489 = !{!475, !411, !479, !77, !490}
!490 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !64, line: 55, baseType: !491)
!491 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !477, line: 72, baseType: !492)
!492 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !477, line: 16, baseType: !126)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !459, file: !406, line: 141, baseType: !494, size: 64, offset: 128)
!494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !479, size: 64)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !459, file: !406, line: 142, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !498, size: 64)
!498 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !499)
!499 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !469, line: 84, size: 320, elements: !500)
!500 = !{!501, !502, !506, !1634, !1635}
!501 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !499, file: !469, line: 85, baseType: !77, size: 64)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !499, file: !469, line: 86, baseType: !503, size: 64, offset: 64)
!503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!504 = !DISubroutineType(types: !505)
!505 = !{!484, !411, !479, !109}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !499, file: !469, line: 88, baseType: !507, size: 64, offset: 128)
!507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !508, size: 64)
!508 = !DISubroutineType(types: !509)
!509 = !{!484, !411, !510, !109}
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !469, line: 168, size: 448, elements: !512)
!512 = !{!513, !514, !515, !516, !525, !526}
!513 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !511, file: !469, line: 169, baseType: !480, size: 128)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !511, file: !469, line: 170, baseType: !490, size: 64, offset: 128)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !511, file: !469, line: 171, baseType: !65, size: 64, offset: 192)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !511, file: !469, line: 172, baseType: !517, size: 64, offset: 256)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!475, !520, !411, !510, !444, !523, !490}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !521, size: 64)
!521 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !522, line: 526, flags: DIFlagFwdDecl)
!522 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!523 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !64, line: 46, baseType: !524)
!524 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !477, line: 88, baseType: !227)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !511, file: !469, line: 174, baseType: !517, size: 64, offset: 320)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !511, file: !469, line: 176, baseType: !527, size: 64, offset: 384)
!527 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !528, size: 64)
!528 = !DISubroutineType(types: !529)
!529 = !{!109, !520, !411, !510, !530}
!530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !531, size: 64)
!531 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !532, line: 305, size: 1472, elements: !533)
!532 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!533 = !{!534, !535, !536, !537, !538, !546, !547, !1608, !1614, !1615, !1620, !1621, !1624, !1628, !1629, !1630, !1631, !1632}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !531, file: !532, line: 308, baseType: !126, size: 64)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !531, file: !532, line: 309, baseType: !126, size: 64, offset: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !531, file: !532, line: 313, baseType: !530, size: 64, offset: 128)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !531, file: !532, line: 313, baseType: !530, size: 64, offset: 192)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !531, file: !532, line: 315, baseType: !539, size: 192, align: 64, offset: 256)
!539 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !540, line: 24, size: 192, align: 64, elements: !541)
!540 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!541 = !{!542, !543, !545}
!542 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !539, file: !540, line: 25, baseType: !126, size: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !539, file: !540, line: 26, baseType: !544, size: 64, offset: 64)
!544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !539, size: 64)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !539, file: !540, line: 27, baseType: !544, size: 64, offset: 128)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !531, file: !532, line: 323, baseType: !126, size: 64, offset: 448)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !531, file: !532, line: 327, baseType: !548, size: 64, offset: 512)
!548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !549, size: 64)
!549 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !532, line: 388, size: 7296, elements: !550)
!550 = !{!551, !1604}
!551 = !DIDerivedType(tag: DW_TAG_member, scope: !549, file: !532, line: 389, baseType: !552, size: 7296)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !549, file: !532, line: 389, size: 7296, elements: !553)
!553 = !{!554, !555, !559, !563, !567, !568, !569, !570, !571, !579, !584, !585, !586, !587, !588, !589, !590, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !625, !633, !636, !678, !679, !1574, !1575, !1578, !1582, !1583, !1586, !1587, !1588, !1591, !1603}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !552, file: !532, line: 390, baseType: !530, size: 64)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !552, file: !532, line: 391, baseType: !556, size: 64, offset: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !540, line: 31, size: 64, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !556, file: !540, line: 32, baseType: !544, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !552, file: !532, line: 392, baseType: !560, size: 64, offset: 128)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !150, line: 23, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !152, line: 31, baseType: !562)
!562 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !552, file: !532, line: 394, baseType: !564, size: 64, offset: 192)
!564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!565 = !DISubroutineType(types: !566)
!566 = !{!126, !520, !126, !126, !126, !126}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !552, file: !532, line: 398, baseType: !126, size: 64, offset: 256)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !552, file: !532, line: 399, baseType: !126, size: 64, offset: 320)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !552, file: !532, line: 405, baseType: !126, size: 64, offset: 384)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !552, file: !532, line: 406, baseType: !126, size: 64, offset: 448)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !552, file: !532, line: 407, baseType: !572, size: 64, offset: 512)
!572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !522, line: 286, baseType: !574)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !522, line: 286, size: 64, elements: !575)
!575 = !{!576}
!576 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !574, file: !522, line: 286, baseType: !577, size: 64)
!577 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !578, line: 18, baseType: !126)
!578 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!579 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !552, file: !532, line: 416, baseType: !580, size: 32, offset: 576)
!580 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !64, line: 168, baseType: !581)
!581 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !64, line: 166, size: 32, elements: !582)
!582 = !{!583}
!583 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !581, file: !64, line: 167, baseType: !109, size: 32)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !552, file: !532, line: 428, baseType: !580, size: 32, offset: 608)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !552, file: !532, line: 437, baseType: !580, size: 32, offset: 640)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !552, file: !532, line: 447, baseType: !580, size: 32, offset: 672)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !552, file: !532, line: 450, baseType: !219, size: 64, offset: 704)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !552, file: !532, line: 452, baseType: !109, size: 32, offset: 768)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !552, file: !532, line: 454, baseType: !229, offset: 800)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !552, file: !532, line: 457, baseType: !591, size: 256, offset: 832)
!591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !592, line: 35, size: 256, elements: !593)
!592 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!593 = !{!594, !595, !596, !598}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !591, file: !592, line: 36, baseType: !219, size: 64)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !591, file: !592, line: 42, baseType: !219, size: 64, offset: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !591, file: !592, line: 46, baseType: !597, offset: 128)
!597 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !230, line: 29, baseType: !237)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !591, file: !592, line: 47, baseType: !71, size: 128, offset: 128)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !552, file: !532, line: 459, baseType: !71, size: 128, offset: 1088)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !552, file: !532, line: 466, baseType: !126, size: 64, offset: 1216)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !552, file: !532, line: 467, baseType: !126, size: 64, offset: 1280)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !552, file: !532, line: 469, baseType: !126, size: 64, offset: 1344)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !552, file: !532, line: 470, baseType: !126, size: 64, offset: 1408)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !552, file: !532, line: 471, baseType: !221, size: 64, offset: 1472)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !552, file: !532, line: 472, baseType: !126, size: 64, offset: 1536)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !552, file: !532, line: 473, baseType: !126, size: 64, offset: 1600)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !552, file: !532, line: 474, baseType: !126, size: 64, offset: 1664)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !552, file: !532, line: 475, baseType: !126, size: 64, offset: 1728)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !552, file: !532, line: 477, baseType: !229, offset: 1792)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !552, file: !532, line: 478, baseType: !126, size: 64, offset: 1792)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !552, file: !532, line: 478, baseType: !126, size: 64, offset: 1856)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !552, file: !532, line: 478, baseType: !126, size: 64, offset: 1920)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !552, file: !532, line: 478, baseType: !126, size: 64, offset: 1984)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !552, file: !532, line: 479, baseType: !126, size: 64, offset: 2048)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !552, file: !532, line: 479, baseType: !126, size: 64, offset: 2112)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !552, file: !532, line: 479, baseType: !126, size: 64, offset: 2176)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !552, file: !532, line: 480, baseType: !126, size: 64, offset: 2240)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !552, file: !532, line: 480, baseType: !126, size: 64, offset: 2304)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !552, file: !532, line: 480, baseType: !126, size: 64, offset: 2368)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !552, file: !532, line: 480, baseType: !126, size: 64, offset: 2432)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !552, file: !532, line: 482, baseType: !622, size: 2816, offset: 2496)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 2816, elements: !623)
!623 = !{!624}
!624 = !DISubrange(count: 44)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !552, file: !532, line: 488, baseType: !626, size: 256, offset: 5312)
!626 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !627, line: 60, size: 256, elements: !628)
!627 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!628 = !{!629}
!629 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !626, file: !627, line: 61, baseType: !630, size: 256)
!630 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 256, elements: !631)
!631 = !{!632}
!632 = !DISubrange(count: 4)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !552, file: !532, line: 490, baseType: !634, size: 64, offset: 5568)
!634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !635, size: 64)
!635 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !532, line: 490, flags: DIFlagFwdDecl)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !552, file: !532, line: 493, baseType: !637, size: 896, offset: 5632)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !638, line: 53, baseType: !639)
!638 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !638, line: 13, size: 896, elements: !640)
!640 = !{!641, !642, !643, !644, !647, !648, !649, !650, !670, !671, !674}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !639, file: !638, line: 18, baseType: !560, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !639, file: !638, line: 28, baseType: !221, size: 64, offset: 64)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !639, file: !638, line: 31, baseType: !591, size: 256, offset: 128)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !639, file: !638, line: 32, baseType: !645, size: 64, offset: 384)
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !646, size: 64)
!646 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !638, line: 32, flags: DIFlagFwdDecl)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !639, file: !638, line: 37, baseType: !485, size: 16, offset: 448)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !639, file: !638, line: 40, baseType: !215, size: 192, offset: 512)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !639, file: !638, line: 41, baseType: !65, size: 64, offset: 704)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !639, file: !638, line: 42, baseType: !651, size: 64, offset: 768)
!651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !652, size: 64)
!652 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !653)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !654, line: 13, size: 896, elements: !655)
!654 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!655 = !{!656, !657, !658, !659, !660, !661, !662, !663, !664, !665, !666, !667, !668, !669}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !653, file: !654, line: 14, baseType: !65, size: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !653, file: !654, line: 15, baseType: !126, size: 64, offset: 64)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !653, file: !654, line: 17, baseType: !126, size: 64, offset: 128)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !653, file: !654, line: 17, baseType: !126, size: 64, offset: 192)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !653, file: !654, line: 19, baseType: !131, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !653, file: !654, line: 21, baseType: !131, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !653, file: !654, line: 22, baseType: !131, size: 64, offset: 384)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !653, file: !654, line: 23, baseType: !131, size: 64, offset: 448)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !653, file: !654, line: 24, baseType: !131, size: 64, offset: 512)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !653, file: !654, line: 25, baseType: !131, size: 64, offset: 576)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !653, file: !654, line: 26, baseType: !131, size: 64, offset: 640)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !653, file: !654, line: 27, baseType: !131, size: 64, offset: 704)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !653, file: !654, line: 28, baseType: !131, size: 64, offset: 768)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !653, file: !654, line: 29, baseType: !131, size: 64, offset: 832)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !639, file: !638, line: 44, baseType: !580, size: 32, offset: 832)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !639, file: !638, line: 50, baseType: !672, size: 16, offset: 864)
!672 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !150, line: 19, baseType: !673)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !152, line: 24, baseType: !485)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !639, file: !638, line: 51, baseType: !675, size: 16, offset: 880)
!675 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !150, line: 18, baseType: !676)
!676 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !152, line: 23, baseType: !677)
!677 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !552, file: !532, line: 495, baseType: !126, size: 64, offset: 6528)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !552, file: !532, line: 497, baseType: !680, size: 64, offset: 6592)
!680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !681, size: 64)
!681 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !532, line: 381, size: 384, elements: !682)
!682 = !{!683, !684, !1573}
!683 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !681, file: !532, line: 382, baseType: !580, size: 32)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !681, file: !532, line: 383, baseType: !685, size: 128, offset: 64)
!685 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !532, line: 376, size: 128, elements: !686)
!686 = !{!687, !1571}
!687 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !685, file: !532, line: 377, baseType: !688, size: 64)
!688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !689, size: 64)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !690, line: 640, size: 48640, elements: !691)
!690 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!691 = !{!692, !700, !702, !703, !709, !710, !711, !712, !713, !714, !715, !716, !720, !738, !749, !841, !842, !843, !854, !855, !857, !858, !859, !860, !866, !867, !868, !869, !870, !871, !872, !873, !874, !875, !876, !877, !878, !879, !880, !881, !939, !942, !943, !944, !945, !946, !947, !948, !949, !950, !951, !995, !997, !998, !999, !1011, !1013, !1014, !1015, !1016, !1017, !1023, !1024, !1025, !1026, !1027, !1028, !1029, !1041, !1046, !1051, !1052, !1053, !1056, !1060, !1063, !1066, !1069, !1072, !1076, !1079, !1082, !1088, !1089, !1090, !1096, !1097, !1098, !1099, !1100, !1109, !1110, !1111, !1112, !1113, !1118, !1119, !1120, !1123, !1124, !1127, !1130, !1133, !1136, !1139, !1142, !1143, !1223, !1226, !1229, !1230, !1233, !1234, !1235, !1241, !1242, !1243, !1256, !1257, !1258, !1270, !1275, !1278, !1376, !1377, !1378, !1379, !1380, !1381, !1382, !1383, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394}
!692 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !689, file: !690, line: 646, baseType: !693, size: 128)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !694, line: 56, size: 128, elements: !695)
!694 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!695 = !{!696, !697}
!696 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !693, file: !694, line: 57, baseType: !126, size: 64)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !693, file: !694, line: 58, baseType: !698, size: 32, offset: 64)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !150, line: 21, baseType: !699)
!699 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !152, line: 27, baseType: !7)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !689, file: !690, line: 649, baseType: !701, size: 64, offset: 128)
!701 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !131)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !689, file: !690, line: 657, baseType: !65, size: 64, offset: 192)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !689, file: !690, line: 658, baseType: !704, size: 32, offset: 256)
!704 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !705, line: 113, baseType: !706)
!705 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !705, line: 111, size: 32, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !706, file: !705, line: 112, baseType: !580, size: 32)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !689, file: !690, line: 660, baseType: !7, size: 32, offset: 288)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !689, file: !690, line: 661, baseType: !7, size: 32, offset: 320)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !689, file: !690, line: 684, baseType: !109, size: 32, offset: 352)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !689, file: !690, line: 686, baseType: !109, size: 32, offset: 384)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !689, file: !690, line: 687, baseType: !109, size: 32, offset: 416)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !689, file: !690, line: 688, baseType: !109, size: 32, offset: 448)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !689, file: !690, line: 689, baseType: !7, size: 32, offset: 480)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !689, file: !690, line: 691, baseType: !717, size: 64, offset: 512)
!717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !718, size: 64)
!718 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !719)
!719 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !690, line: 691, flags: DIFlagFwdDecl)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !689, file: !690, line: 692, baseType: !721, size: 832, offset: 576)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !690, line: 451, size: 832, elements: !722)
!722 = !{!723, !728, !729, !730, !731, !732, !733, !734, !735, !736}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !721, file: !690, line: 453, baseType: !724, size: 128)
!724 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !690, line: 325, size: 128, elements: !725)
!725 = !{!726, !727}
!726 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !724, file: !690, line: 326, baseType: !126, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !724, file: !690, line: 327, baseType: !698, size: 32, offset: 64)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !721, file: !690, line: 454, baseType: !539, size: 192, align: 64, offset: 128)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !721, file: !690, line: 455, baseType: !71, size: 128, offset: 320)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !721, file: !690, line: 456, baseType: !7, size: 32, offset: 448)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !721, file: !690, line: 458, baseType: !560, size: 64, offset: 512)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !721, file: !690, line: 459, baseType: !560, size: 64, offset: 576)
!733 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !721, file: !690, line: 460, baseType: !560, size: 64, offset: 640)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !721, file: !690, line: 461, baseType: !560, size: 64, offset: 704)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !721, file: !690, line: 463, baseType: !560, size: 64, offset: 768)
!736 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !721, file: !690, line: 465, baseType: !737, offset: 832)
!737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !690, line: 415, elements: !243)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !689, file: !690, line: 693, baseType: !739, size: 384, offset: 1408)
!739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !690, line: 489, size: 384, elements: !740)
!740 = !{!741, !742, !743, !744, !745, !746, !747}
!741 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !739, file: !690, line: 490, baseType: !71, size: 128)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !739, file: !690, line: 491, baseType: !126, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !739, file: !690, line: 492, baseType: !126, size: 64, offset: 192)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !739, file: !690, line: 493, baseType: !7, size: 32, offset: 256)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !739, file: !690, line: 494, baseType: !485, size: 16, offset: 288)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !739, file: !690, line: 495, baseType: !485, size: 16, offset: 304)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !739, file: !690, line: 497, baseType: !748, size: 64, offset: 320)
!748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !739, size: 64)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !689, file: !690, line: 697, baseType: !750, size: 1792, offset: 1792)
!750 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !690, line: 507, size: 1792, elements: !751)
!751 = !{!752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !838, !839}
!752 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !750, file: !690, line: 508, baseType: !539, size: 192, align: 64)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !750, file: !690, line: 515, baseType: !560, size: 64, offset: 192)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !750, file: !690, line: 516, baseType: !560, size: 64, offset: 256)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !750, file: !690, line: 517, baseType: !560, size: 64, offset: 320)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !750, file: !690, line: 518, baseType: !560, size: 64, offset: 384)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !750, file: !690, line: 519, baseType: !560, size: 64, offset: 448)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !750, file: !690, line: 526, baseType: !225, size: 64, offset: 512)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !750, file: !690, line: 527, baseType: !560, size: 64, offset: 576)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !750, file: !690, line: 528, baseType: !7, size: 32, offset: 640)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !750, file: !690, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !750, file: !690, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !750, file: !690, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !750, file: !690, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !750, file: !690, line: 563, baseType: !766, size: 512, offset: 704)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !767)
!767 = !{!768, !776, !777, !782, !834, !835, !836, !837}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !766, file: !6, line: 119, baseType: !769, size: 256)
!769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !770, line: 9, size: 256, elements: !771)
!770 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!771 = !{!772, !773}
!772 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !769, file: !770, line: 10, baseType: !539, size: 192, align: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !769, file: !770, line: 11, baseType: !774, size: 64, offset: 192)
!774 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !775, line: 29, baseType: !225)
!775 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!776 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !766, file: !6, line: 120, baseType: !774, size: 64, offset: 256)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !766, file: !6, line: 121, baseType: !778, size: 64, offset: 320)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = !DISubroutineType(types: !780)
!780 = !{!5, !781}
!781 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !766, file: !6, line: 122, baseType: !783, size: 64, offset: 384)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !784, size: 64)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !785)
!785 = !{!786, !806, !807, !810, !820, !821, !829, !833}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !784, file: !6, line: 160, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !788, size: 64)
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !789)
!789 = !{!790, !791, !792, !793, !794, !795, !796, !797, !798, !799, !800, !801, !802}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !6, line: 215, baseType: !597)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !788, file: !6, line: 216, baseType: !7, size: 32)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !788, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !788, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !788, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !788, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !788, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !788, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !788, file: !6, line: 233, baseType: !774, size: 64, offset: 128)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !788, file: !6, line: 234, baseType: !781, size: 64, offset: 192)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !788, file: !6, line: 235, baseType: !774, size: 64, offset: 256)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !788, file: !6, line: 236, baseType: !781, size: 64, offset: 320)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !788, file: !6, line: 237, baseType: !803, size: 4096, offset: 512)
!803 = !DICompositeType(tag: DW_TAG_array_type, baseType: !784, size: 4096, elements: !804)
!804 = !{!805}
!805 = !DISubrange(count: 8)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !784, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !784, file: !6, line: 162, baseType: !808, size: 32, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !64, line: 27, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !477, line: 96, baseType: !109)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !784, file: !6, line: 163, baseType: !811, size: 32, offset: 128)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !812, line: 276, baseType: !813)
!812 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!813 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !812, line: 276, size: 32, elements: !814)
!814 = !{!815}
!815 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !813, file: !812, line: 276, baseType: !816, size: 32)
!816 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !812, line: 70, baseType: !817)
!817 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !812, line: 65, size: 32, elements: !818)
!818 = !{!819}
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !817, file: !812, line: 66, baseType: !7, size: 32)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !784, file: !6, line: 164, baseType: !781, size: 64, offset: 192)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !784, file: !6, line: 165, baseType: !822, size: 128, offset: 256)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !770, line: 14, size: 128, elements: !823)
!823 = !{!824}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !822, file: !770, line: 15, baseType: !825, size: 128)
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !540, line: 125, size: 128, elements: !826)
!826 = !{!827, !828}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !825, file: !540, line: 126, baseType: !556, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !825, file: !540, line: 127, baseType: !544, size: 64, offset: 64)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !784, file: !6, line: 166, baseType: !830, size: 64, offset: 384)
!830 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !831, size: 64)
!831 = !DISubroutineType(types: !832)
!832 = !{!774}
!833 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !784, file: !6, line: 167, baseType: !774, size: 64, offset: 448)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !766, file: !6, line: 123, baseType: !149, size: 8, offset: 448)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !766, file: !6, line: 124, baseType: !149, size: 8, offset: 456)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !766, file: !6, line: 125, baseType: !149, size: 8, offset: 464)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !766, file: !6, line: 126, baseType: !149, size: 8, offset: 472)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !750, file: !690, line: 572, baseType: !766, size: 512, offset: 1216)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !750, file: !690, line: 580, baseType: !840, size: 64, offset: 1728)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !750, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !689, file: !690, line: 721, baseType: !7, size: 32, offset: 3584)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !689, file: !690, line: 722, baseType: !109, size: 32, offset: 3616)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !689, file: !690, line: 723, baseType: !844, size: 64, offset: 3648)
!844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !845, size: 64)
!845 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !846)
!846 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !847, line: 17, baseType: !848)
!847 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !847, line: 17, size: 64, elements: !849)
!849 = !{!850}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !848, file: !847, line: 17, baseType: !851, size: 64)
!851 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 64, elements: !852)
!852 = !{!853}
!853 = !DISubrange(count: 1)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !689, file: !690, line: 724, baseType: !846, size: 64, offset: 3712)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !689, file: !690, line: 749, baseType: !856, offset: 3776)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !690, line: 290, elements: !243)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !689, file: !690, line: 751, baseType: !71, size: 128, offset: 3776)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !689, file: !690, line: 757, baseType: !548, size: 64, offset: 3904)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !689, file: !690, line: 758, baseType: !548, size: 64, offset: 3968)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !689, file: !690, line: 761, baseType: !861, size: 320, offset: 4032)
!861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !627, line: 34, size: 320, elements: !862)
!862 = !{!863, !864}
!863 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !861, file: !627, line: 35, baseType: !560, size: 64)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !861, file: !627, line: 36, baseType: !865, size: 256, offset: 64)
!865 = !DICompositeType(tag: DW_TAG_array_type, baseType: !530, size: 256, elements: !631)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !689, file: !690, line: 766, baseType: !109, size: 32, offset: 4352)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !689, file: !690, line: 767, baseType: !109, size: 32, offset: 4384)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !689, file: !690, line: 768, baseType: !109, size: 32, offset: 4416)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !689, file: !690, line: 770, baseType: !109, size: 32, offset: 4448)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !689, file: !690, line: 772, baseType: !126, size: 64, offset: 4480)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !689, file: !690, line: 775, baseType: !7, size: 32, offset: 4544)
!872 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !689, file: !690, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !689, file: !690, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !689, file: !690, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !689, file: !690, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !689, file: !690, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !689, file: !690, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !689, file: !690, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !689, file: !690, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !689, file: !690, line: 831, baseType: !126, size: 64, offset: 4672)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !689, file: !690, line: 833, baseType: !882, size: 384, offset: 4736)
!882 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !883)
!883 = !{!884, !889}
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !882, file: !12, line: 26, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DISubroutineType(types: !887)
!887 = !{!131, !888}
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!889 = !DIDerivedType(tag: DW_TAG_member, scope: !882, file: !12, line: 27, baseType: !890, size: 320, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !882, file: !12, line: 27, size: 320, elements: !891)
!891 = !{!892, !902, !929}
!892 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !890, file: !12, line: 36, baseType: !893, size: 320)
!893 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !12, line: 29, size: 320, elements: !894)
!894 = !{!895, !897, !898, !899, !900, !901}
!895 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !893, file: !12, line: 30, baseType: !896, size: 64)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !698, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !893, file: !12, line: 31, baseType: !698, size: 32, offset: 64)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !893, file: !12, line: 32, baseType: !698, size: 32, offset: 96)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !893, file: !12, line: 33, baseType: !698, size: 32, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !893, file: !12, line: 34, baseType: !560, size: 64, offset: 192)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !893, file: !12, line: 35, baseType: !896, size: 64, offset: 256)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !890, file: !12, line: 46, baseType: !903, size: 192)
!903 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !12, line: 38, size: 192, elements: !904)
!904 = !{!905, !906, !907, !928}
!905 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !903, file: !12, line: 39, baseType: !808, size: 32)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !903, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, scope: !903, file: !12, line: 41, baseType: !908, size: 64, offset: 64)
!908 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !903, file: !12, line: 41, size: 64, elements: !909)
!909 = !{!910, !918}
!910 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !908, file: !12, line: 42, baseType: !911, size: 64)
!911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !912, size: 64)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !913, line: 7, size: 128, elements: !914)
!913 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !917}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !912, file: !913, line: 8, baseType: !916, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !477, line: 93, baseType: !227)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !912, file: !913, line: 9, baseType: !227, size: 64, offset: 64)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !908, file: !12, line: 43, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !920, size: 64)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !921, line: 7, size: 64, elements: !922)
!921 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!922 = !{!923, !927}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !920, file: !921, line: 8, baseType: !924, size: 32)
!924 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !921, line: 5, baseType: !925)
!925 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !150, line: 20, baseType: !926)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !152, line: 26, baseType: !109)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !920, file: !921, line: 9, baseType: !925, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !903, file: !12, line: 45, baseType: !560, size: 64, offset: 128)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !890, file: !12, line: 54, baseType: !930, size: 256)
!930 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !890, file: !12, line: 48, size: 256, elements: !931)
!931 = !{!932, !935, !936, !937, !938}
!932 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !930, file: !12, line: 49, baseType: !933, size: 64)
!933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !934, size: 64)
!934 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!935 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !930, file: !12, line: 50, baseType: !109, size: 32, offset: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !930, file: !12, line: 51, baseType: !109, size: 32, offset: 96)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !930, file: !12, line: 52, baseType: !126, size: 64, offset: 128)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !930, file: !12, line: 53, baseType: !126, size: 64, offset: 192)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !689, file: !690, line: 835, baseType: !940, size: 32, offset: 5120)
!940 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !64, line: 22, baseType: !941)
!941 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !477, line: 28, baseType: !109)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !689, file: !690, line: 836, baseType: !940, size: 32, offset: 5152)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !689, file: !690, line: 840, baseType: !126, size: 64, offset: 5184)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !689, file: !690, line: 849, baseType: !688, size: 64, offset: 5248)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !689, file: !690, line: 852, baseType: !688, size: 64, offset: 5312)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !689, file: !690, line: 857, baseType: !71, size: 128, offset: 5376)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !689, file: !690, line: 858, baseType: !71, size: 128, offset: 5504)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !689, file: !690, line: 859, baseType: !688, size: 64, offset: 5632)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !689, file: !690, line: 867, baseType: !71, size: 128, offset: 5696)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !689, file: !690, line: 868, baseType: !71, size: 128, offset: 5824)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !689, file: !690, line: 871, baseType: !952, size: 64, offset: 5952)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !954, line: 59, size: 768, elements: !955)
!954 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!955 = !{!956, !957, !958, !959, !970, !971, !978, !987}
!956 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !953, file: !954, line: 61, baseType: !704, size: 32)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !953, file: !954, line: 62, baseType: !7, size: 32, offset: 32)
!958 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !953, file: !954, line: 63, baseType: !229, offset: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !953, file: !954, line: 65, baseType: !960, size: 256, offset: 64)
!960 = !DICompositeType(tag: DW_TAG_array_type, baseType: !961, size: 256, elements: !631)
!961 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !64, line: 182, size: 64, elements: !962)
!962 = !{!963}
!963 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !961, file: !64, line: 183, baseType: !964, size: 64)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !64, line: 186, size: 128, elements: !966)
!966 = !{!967, !968}
!967 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !965, file: !64, line: 187, baseType: !964, size: 64)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !965, file: !64, line: 187, baseType: !969, size: 64, offset: 64)
!969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !964, size: 64)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !953, file: !954, line: 66, baseType: !961, size: 64, offset: 320)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !953, file: !954, line: 68, baseType: !972, size: 128, offset: 384)
!972 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !973, line: 40, baseType: !974)
!973 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!974 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !973, line: 36, size: 128, elements: !975)
!975 = !{!976, !977}
!976 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !974, file: !973, line: 37, baseType: !229)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !974, file: !973, line: 38, baseType: !71, size: 128)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !953, file: !954, line: 69, baseType: !979, size: 128, align: 64, offset: 512)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !64, line: 216, size: 128, align: 64, elements: !980)
!980 = !{!981, !983}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !979, file: !64, line: 217, baseType: !982, size: 64)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !979, file: !64, line: 218, baseType: !984, size: 64, offset: 64)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = !DISubroutineType(types: !986)
!986 = !{null, !982}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !953, file: !954, line: 70, baseType: !988, size: 128, offset: 640)
!988 = !DICompositeType(tag: DW_TAG_array_type, baseType: !989, size: 128, elements: !852)
!989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !954, line: 54, size: 128, elements: !990)
!990 = !{!991, !992}
!991 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !989, file: !954, line: 55, baseType: !109, size: 32)
!992 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !989, file: !954, line: 56, baseType: !993, size: 64, offset: 64)
!993 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !994, size: 64)
!994 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !954, line: 56, flags: DIFlagFwdDecl)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !689, file: !690, line: 872, baseType: !996, size: 512, offset: 6016)
!996 = !DICompositeType(tag: DW_TAG_array_type, baseType: !965, size: 512, elements: !631)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !689, file: !690, line: 873, baseType: !71, size: 128, offset: 6528)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !689, file: !690, line: 874, baseType: !71, size: 128, offset: 6656)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !689, file: !690, line: 876, baseType: !1000, size: 64, offset: 6784)
!1000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1001, size: 64)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !1002, line: 26, size: 192, elements: !1003)
!1002 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!1003 = !{!1004, !1005}
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !1001, file: !1002, line: 27, baseType: !7, size: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !1001, file: !1002, line: 28, baseType: !1006, size: 128, offset: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !1007, line: 43, size: 128, elements: !1008)
!1007 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!1008 = !{!1009, !1010}
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1006, file: !1007, line: 44, baseType: !597)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !1006, file: !1007, line: 45, baseType: !71, size: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !689, file: !690, line: 879, baseType: !1012, size: 64, offset: 6848)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !689, file: !690, line: 882, baseType: !1012, size: 64, offset: 6912)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !689, file: !690, line: 884, baseType: !560, size: 64, offset: 6976)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !689, file: !690, line: 885, baseType: !560, size: 64, offset: 7040)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !689, file: !690, line: 890, baseType: !560, size: 64, offset: 7104)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !689, file: !690, line: 891, baseType: !1018, size: 128, offset: 7168)
!1018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !690, line: 242, size: 128, elements: !1019)
!1019 = !{!1020, !1021, !1022}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !1018, file: !690, line: 244, baseType: !560, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !1018, file: !690, line: 245, baseType: !560, size: 64, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1018, file: !690, line: 246, baseType: !597, offset: 128)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !689, file: !690, line: 900, baseType: !126, size: 64, offset: 7296)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !689, file: !690, line: 901, baseType: !126, size: 64, offset: 7360)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !689, file: !690, line: 904, baseType: !560, size: 64, offset: 7424)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !689, file: !690, line: 907, baseType: !560, size: 64, offset: 7488)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !689, file: !690, line: 910, baseType: !126, size: 64, offset: 7552)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !689, file: !690, line: 911, baseType: !126, size: 64, offset: 7616)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !689, file: !690, line: 914, baseType: !1030, size: 640, offset: 7680)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !1031, line: 123, size: 640, elements: !1032)
!1031 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!1032 = !{!1033, !1039, !1040}
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !1030, file: !1031, line: 124, baseType: !1034, size: 576)
!1034 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1035, size: 576, elements: !445)
!1035 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !1031, line: 108, size: 192, elements: !1036)
!1036 = !{!1037, !1038}
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !1035, file: !1031, line: 109, baseType: !560, size: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !1035, file: !1031, line: 110, baseType: !822, size: 128, offset: 64)
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !1030, file: !1031, line: 125, baseType: !7, size: 32, offset: 576)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !1030, file: !1031, line: 126, baseType: !7, size: 32, offset: 608)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !689, file: !690, line: 917, baseType: !1042, size: 192, offset: 8320)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !1031, line: 134, size: 192, elements: !1043)
!1043 = !{!1044, !1045}
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1042, file: !1031, line: 135, baseType: !979, size: 128, align: 64)
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !1042, file: !1031, line: 136, baseType: !7, size: 32, offset: 128)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !689, file: !690, line: 923, baseType: !1047, size: 64, offset: 8512)
!1047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1048, size: 64)
!1048 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1049)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !1050, line: 11, flags: DIFlagFwdDecl)
!1050 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !689, file: !690, line: 926, baseType: !1047, size: 64, offset: 8576)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !689, file: !690, line: 929, baseType: !1047, size: 64, offset: 8640)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !689, file: !690, line: 933, baseType: !1054, size: 64, offset: 8704)
!1054 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1055, size: 64)
!1055 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !690, line: 933, flags: DIFlagFwdDecl)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !689, file: !690, line: 943, baseType: !1057, size: 128, offset: 8768)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 128, elements: !1058)
!1058 = !{!1059}
!1059 = !DISubrange(count: 16)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !689, file: !690, line: 945, baseType: !1061, size: 64, offset: 8896)
!1061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1062, size: 64)
!1062 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !690, line: 49, flags: DIFlagFwdDecl)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !689, file: !690, line: 956, baseType: !1064, size: 64, offset: 8960)
!1064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1065, size: 64)
!1065 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !690, line: 45, flags: DIFlagFwdDecl)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !689, file: !690, line: 959, baseType: !1067, size: 64, offset: 9024)
!1067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1068, size: 64)
!1068 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !690, line: 959, flags: DIFlagFwdDecl)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !689, file: !690, line: 962, baseType: !1070, size: 64, offset: 9088)
!1070 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1071, size: 64)
!1071 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !690, line: 66, flags: DIFlagFwdDecl)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !689, file: !690, line: 966, baseType: !1073, size: 64, offset: 9152)
!1073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1074, size: 64)
!1074 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !1075, line: 35, flags: DIFlagFwdDecl)
!1075 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !689, file: !690, line: 969, baseType: !1077, size: 64, offset: 9216)
!1077 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1078, size: 64)
!1078 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !1031, line: 223, flags: DIFlagFwdDecl)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !689, file: !690, line: 970, baseType: !1080, size: 64, offset: 9280)
!1080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1081, size: 64)
!1081 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !690, line: 62, flags: DIFlagFwdDecl)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !689, file: !690, line: 971, baseType: !1083, size: 64, offset: 9344)
!1083 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !1084, line: 25, baseType: !1085)
!1084 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1084, line: 23, size: 64, elements: !1086)
!1086 = !{!1087}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !1085, file: !1084, line: 24, baseType: !851, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !689, file: !690, line: 972, baseType: !1083, size: 64, offset: 9408)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !689, file: !690, line: 974, baseType: !1083, size: 64, offset: 9472)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !689, file: !690, line: 975, baseType: !1091, size: 192, offset: 9536)
!1091 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !1092, line: 30, size: 192, elements: !1093)
!1092 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1091, file: !1092, line: 31, baseType: !71, size: 128)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !1091, file: !1092, line: 32, baseType: !1083, size: 64, offset: 128)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !689, file: !690, line: 976, baseType: !126, size: 64, offset: 9728)
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !689, file: !690, line: 977, baseType: !490, size: 64, offset: 9792)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !689, file: !690, line: 978, baseType: !7, size: 32, offset: 9856)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !689, file: !690, line: 980, baseType: !982, size: 64, offset: 9920)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !689, file: !690, line: 989, baseType: !1101, size: 128, offset: 9984)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !1102, line: 35, size: 128, elements: !1103)
!1102 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1101, file: !1102, line: 36, baseType: !109, size: 32)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !1101, file: !1102, line: 37, baseType: !580, size: 32, offset: 32)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1101, file: !1102, line: 38, baseType: !1107, size: 64, offset: 64)
!1107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1108, size: 64)
!1108 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !1102, line: 23, flags: DIFlagFwdDecl)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !689, file: !690, line: 992, baseType: !560, size: 64, offset: 10112)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !689, file: !690, line: 993, baseType: !560, size: 64, offset: 10176)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !689, file: !690, line: 996, baseType: !229, offset: 10240)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !689, file: !690, line: 999, baseType: !597, offset: 10240)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !689, file: !690, line: 1001, baseType: !1114, size: 64, offset: 10240)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !690, line: 636, size: 64, elements: !1115)
!1115 = !{!1116}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1114, file: !690, line: 637, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1114, size: 64)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !689, file: !690, line: 1005, baseType: !825, size: 128, offset: 10304)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !689, file: !690, line: 1007, baseType: !688, size: 64, offset: 10432)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !689, file: !690, line: 1009, baseType: !1121, size: 64, offset: 10496)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !690, line: 1009, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !689, file: !690, line: 1043, baseType: !65, size: 64, offset: 10560)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !689, file: !690, line: 1046, baseType: !1125, size: 64, offset: 10624)
!1125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1126, size: 64)
!1126 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !690, line: 41, flags: DIFlagFwdDecl)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !689, file: !690, line: 1050, baseType: !1128, size: 64, offset: 10688)
!1128 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1129, size: 64)
!1129 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !690, line: 42, flags: DIFlagFwdDecl)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !689, file: !690, line: 1054, baseType: !1131, size: 64, offset: 10752)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1132, size: 64)
!1132 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !690, line: 55, flags: DIFlagFwdDecl)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !689, file: !690, line: 1056, baseType: !1134, size: 64, offset: 10816)
!1134 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1135, size: 64)
!1135 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !690, line: 40, flags: DIFlagFwdDecl)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !689, file: !690, line: 1058, baseType: !1137, size: 64, offset: 10880)
!1137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1138, size: 64)
!1138 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !690, line: 47, flags: DIFlagFwdDecl)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !689, file: !690, line: 1061, baseType: !1140, size: 64, offset: 10944)
!1140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1141, size: 64)
!1141 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !690, line: 43, flags: DIFlagFwdDecl)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !689, file: !690, line: 1064, baseType: !126, size: 64, offset: 11008)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !689, file: !690, line: 1065, baseType: !1144, size: 64, offset: 11072)
!1144 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1145, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !1092, line: 14, baseType: !1146)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !1092, line: 12, size: 384, elements: !1147)
!1147 = !{!1148}
!1148 = !DIDerivedType(tag: DW_TAG_member, scope: !1146, file: !1092, line: 13, baseType: !1149, size: 384)
!1149 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1146, file: !1092, line: 13, size: 384, elements: !1150)
!1150 = !{!1151, !1152, !1153, !1154}
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1149, file: !1092, line: 13, baseType: !109, size: 32)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1149, file: !1092, line: 13, baseType: !109, size: 32, offset: 32)
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1149, file: !1092, line: 13, baseType: !109, size: 32, offset: 64)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1149, file: !1092, line: 13, baseType: !1155, size: 256, offset: 128)
!1155 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1156, line: 32, size: 256, elements: !1157)
!1156 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1157 = !{!1158, !1164, !1177, !1183, !1192, !1212, !1217}
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1155, file: !1156, line: 37, baseType: !1159, size: 64)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 34, size: 64, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1159, file: !1156, line: 35, baseType: !941, size: 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1159, file: !1156, line: 36, baseType: !1163, size: 32, offset: 32)
!1163 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !477, line: 49, baseType: !7)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1155, file: !1156, line: 45, baseType: !1165, size: 192)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 40, size: 192, elements: !1166)
!1166 = !{!1167, !1169, !1170, !1176}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1165, file: !1156, line: 41, baseType: !1168, size: 32)
!1168 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !477, line: 95, baseType: !109)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1165, file: !1156, line: 42, baseType: !109, size: 32, offset: 32)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1165, file: !1156, line: 43, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1156, line: 11, baseType: !1172)
!1172 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1156, line: 8, size: 64, elements: !1173)
!1173 = !{!1174, !1175}
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1172, file: !1156, line: 9, baseType: !109, size: 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1172, file: !1156, line: 10, baseType: !65, size: 64)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1165, file: !1156, line: 44, baseType: !109, size: 32, offset: 128)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1155, file: !1156, line: 52, baseType: !1178, size: 128)
!1178 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 48, size: 128, elements: !1179)
!1179 = !{!1180, !1181, !1182}
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1178, file: !1156, line: 49, baseType: !941, size: 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1178, file: !1156, line: 50, baseType: !1163, size: 32, offset: 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1178, file: !1156, line: 51, baseType: !1171, size: 64, offset: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1155, file: !1156, line: 61, baseType: !1184, size: 256)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 55, size: 256, elements: !1185)
!1185 = !{!1186, !1187, !1188, !1189, !1191}
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1184, file: !1156, line: 56, baseType: !941, size: 32)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1184, file: !1156, line: 57, baseType: !1163, size: 32, offset: 32)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1184, file: !1156, line: 58, baseType: !109, size: 32, offset: 64)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1184, file: !1156, line: 59, baseType: !1190, size: 64, offset: 128)
!1190 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !477, line: 94, baseType: !478)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1184, file: !1156, line: 60, baseType: !1190, size: 64, offset: 192)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1155, file: !1156, line: 95, baseType: !1193, size: 256)
!1193 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 64, size: 256, elements: !1194)
!1194 = !{!1195, !1196}
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1193, file: !1156, line: 65, baseType: !65, size: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, scope: !1193, file: !1156, line: 77, baseType: !1197, size: 192, offset: 64)
!1197 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1193, file: !1156, line: 77, size: 192, elements: !1198)
!1198 = !{!1199, !1200, !1207}
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1197, file: !1156, line: 82, baseType: !677, size: 16)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1197, file: !1156, line: 88, baseType: !1201, size: 192)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1156, line: 84, size: 192, elements: !1202)
!1202 = !{!1203, !1205, !1206}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1201, file: !1156, line: 85, baseType: !1204, size: 64)
!1204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 64, elements: !804)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1201, file: !1156, line: 86, baseType: !65, size: 64, offset: 64)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1201, file: !1156, line: 87, baseType: !65, size: 64, offset: 128)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1197, file: !1156, line: 93, baseType: !1208, size: 96)
!1208 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1197, file: !1156, line: 90, size: 96, elements: !1209)
!1209 = !{!1210, !1211}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1208, file: !1156, line: 91, baseType: !1204, size: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1208, file: !1156, line: 92, baseType: !699, size: 32, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1155, file: !1156, line: 101, baseType: !1213, size: 128)
!1213 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 98, size: 128, elements: !1214)
!1214 = !{!1215, !1216}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1213, file: !1156, line: 99, baseType: !131, size: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1213, file: !1156, line: 100, baseType: !109, size: 32, offset: 64)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1155, file: !1156, line: 108, baseType: !1218, size: 128)
!1218 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1155, file: !1156, line: 104, size: 128, elements: !1219)
!1219 = !{!1220, !1221, !1222}
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1218, file: !1156, line: 105, baseType: !65, size: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1218, file: !1156, line: 106, baseType: !109, size: 32, offset: 64)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1218, file: !1156, line: 107, baseType: !7, size: 32, offset: 96)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !689, file: !690, line: 1067, baseType: !1224, offset: 11136)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1225, line: 12, elements: !243)
!1225 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !689, file: !690, line: 1099, baseType: !1227, size: 64, offset: 11136)
!1227 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1228, size: 64)
!1228 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !690, line: 56, flags: DIFlagFwdDecl)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !689, file: !690, line: 1103, baseType: !71, size: 128, offset: 11200)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !689, file: !690, line: 1104, baseType: !1231, size: 64, offset: 11328)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !690, line: 46, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !689, file: !690, line: 1105, baseType: !215, size: 192, offset: 11392)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !689, file: !690, line: 1106, baseType: !7, size: 32, offset: 11584)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !689, file: !690, line: 1109, baseType: !1236, size: 128, offset: 11648)
!1236 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1237, size: 128, elements: !1239)
!1237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1238, size: 64)
!1238 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !690, line: 51, flags: DIFlagFwdDecl)
!1239 = !{!1240}
!1240 = !DISubrange(count: 2)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !689, file: !690, line: 1110, baseType: !215, size: 192, offset: 11776)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !689, file: !690, line: 1111, baseType: !71, size: 128, offset: 11968)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !689, file: !690, line: 1173, baseType: !1244, size: 64, offset: 12096)
!1244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1245, size: 64)
!1245 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1246, line: 62, size: 256, align: 256, elements: !1247)
!1246 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1247 = !{!1248, !1249, !1250, !1255}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1245, file: !1246, line: 75, baseType: !699, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1245, file: !1246, line: 90, baseType: !699, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1245, file: !1246, line: 124, baseType: !1251, size: 64, offset: 64)
!1251 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1245, file: !1246, line: 109, size: 64, elements: !1252)
!1252 = !{!1253, !1254}
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1251, file: !1246, line: 110, baseType: !561, size: 64)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1251, file: !1246, line: 112, baseType: !561, size: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1245, file: !1246, line: 144, baseType: !699, size: 32, offset: 128)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !689, file: !690, line: 1174, baseType: !698, size: 32, offset: 12160)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !689, file: !690, line: 1179, baseType: !126, size: 64, offset: 12224)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !689, file: !690, line: 1182, baseType: !1259, size: 128, offset: 12288)
!1259 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !627, line: 76, size: 128, elements: !1260)
!1260 = !{!1261, !1266, !1269}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1259, file: !627, line: 85, baseType: !1262, size: 64)
!1262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1263, line: 7, size: 64, elements: !1264)
!1263 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1264 = !{!1265}
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1262, file: !1263, line: 12, baseType: !848, size: 64)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1259, file: !627, line: 88, baseType: !1267, size: 8, offset: 64)
!1267 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !64, line: 30, baseType: !1268)
!1268 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1259, file: !627, line: 95, baseType: !1267, size: 8, offset: 72)
!1270 = !DIDerivedType(tag: DW_TAG_member, scope: !689, file: !690, line: 1184, baseType: !1271, size: 128, offset: 12416)
!1271 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !689, file: !690, line: 1184, size: 128, elements: !1272)
!1272 = !{!1273, !1274}
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1271, file: !690, line: 1185, baseType: !704, size: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1271, file: !690, line: 1186, baseType: !979, size: 128, align: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !689, file: !690, line: 1190, baseType: !1276, size: 64, offset: 12544)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !690, line: 53, flags: DIFlagFwdDecl)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !689, file: !690, line: 1192, baseType: !1279, size: 128, offset: 12608)
!1279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !627, line: 64, size: 128, elements: !1280)
!1280 = !{!1281, !1374, !1375}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1279, file: !627, line: 65, baseType: !1282, size: 64)
!1282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1283, size: 64)
!1283 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !532, line: 68, size: 512, align: 128, elements: !1284)
!1284 = !{!1285, !1286, !1366, !1373}
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1283, file: !532, line: 69, baseType: !126, size: 64)
!1286 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !532, line: 77, baseType: !1287, size: 320, offset: 64)
!1287 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !532, line: 77, size: 320, elements: !1288)
!1288 = !{!1289, !1298, !1303, !1331, !1339, !1345, !1358, !1365}
!1289 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 78, baseType: !1290, size: 320)
!1290 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 78, size: 320, elements: !1291)
!1291 = !{!1292, !1293, !1296, !1297}
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1290, file: !532, line: 84, baseType: !71, size: 128)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1290, file: !532, line: 86, baseType: !1294, size: 64, offset: 128)
!1294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1295, size: 64)
!1295 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !532, line: 26, flags: DIFlagFwdDecl)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1290, file: !532, line: 87, baseType: !126, size: 64, offset: 192)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1290, file: !532, line: 94, baseType: !126, size: 64, offset: 256)
!1298 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 96, baseType: !1299, size: 64)
!1299 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 96, size: 64, elements: !1300)
!1300 = !{!1301}
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1299, file: !532, line: 101, baseType: !1302, size: 64)
!1302 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !64, line: 143, baseType: !560)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 103, baseType: !1304, size: 320)
!1304 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 103, size: 320, elements: !1305)
!1305 = !{!1306, !1316, !1319, !1320}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !532, line: 104, baseType: !1307, size: 128)
!1307 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !532, line: 104, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1307, file: !532, line: 105, baseType: !71, size: 128)
!1310 = !DIDerivedType(tag: DW_TAG_member, scope: !1307, file: !532, line: 106, baseType: !1311, size: 128)
!1311 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1307, file: !532, line: 106, size: 128, elements: !1312)
!1312 = !{!1313, !1314, !1315}
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1311, file: !532, line: 107, baseType: !1282, size: 64)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1311, file: !532, line: 109, baseType: !109, size: 32, offset: 64)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1311, file: !532, line: 110, baseType: !109, size: 32, offset: 96)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1304, file: !532, line: 117, baseType: !1317, size: 64, offset: 128)
!1317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1318, size: 64)
!1318 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !532, line: 117, flags: DIFlagFwdDecl)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1304, file: !532, line: 119, baseType: !65, size: 64, offset: 192)
!1320 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !532, line: 120, baseType: !1321, size: 64, offset: 256)
!1321 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1304, file: !532, line: 120, size: 64, elements: !1322)
!1322 = !{!1323, !1324, !1325}
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1321, file: !532, line: 121, baseType: !65, size: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1321, file: !532, line: 122, baseType: !126, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, scope: !1321, file: !532, line: 123, baseType: !1326, size: 32)
!1326 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1321, file: !532, line: 123, size: 32, elements: !1327)
!1327 = !{!1328, !1329, !1330}
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1326, file: !532, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1326, file: !532, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1326, file: !532, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1331 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 130, baseType: !1332, size: 192)
!1332 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 130, size: 192, elements: !1333)
!1333 = !{!1334, !1335, !1336, !1337, !1338}
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1332, file: !532, line: 131, baseType: !126, size: 64)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1332, file: !532, line: 134, baseType: !153, size: 8, offset: 64)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1332, file: !532, line: 135, baseType: !153, size: 8, offset: 72)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1332, file: !532, line: 136, baseType: !580, size: 32, offset: 96)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1332, file: !532, line: 137, baseType: !7, size: 32, offset: 128)
!1339 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 139, baseType: !1340, size: 256)
!1340 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 139, size: 256, elements: !1341)
!1341 = !{!1342, !1343, !1344}
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1340, file: !532, line: 140, baseType: !126, size: 64)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1340, file: !532, line: 141, baseType: !580, size: 32, offset: 64)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1340, file: !532, line: 143, baseType: !71, size: 128, offset: 128)
!1345 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 145, baseType: !1346, size: 256)
!1346 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 145, size: 256, elements: !1347)
!1347 = !{!1348, !1349, !1351, !1352, !1357}
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1346, file: !532, line: 146, baseType: !126, size: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1346, file: !532, line: 147, baseType: !1350, size: 64, offset: 64)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !522, line: 509, baseType: !1282)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1346, file: !532, line: 148, baseType: !126, size: 64, offset: 128)
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1346, file: !532, line: 149, baseType: !1353, size: 64, offset: 192)
!1353 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1346, file: !532, line: 149, size: 64, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1353, file: !532, line: 150, baseType: !548, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1353, file: !532, line: 151, baseType: !580, size: 32)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1346, file: !532, line: 156, baseType: !229, offset: 256)
!1358 = !DIDerivedType(tag: DW_TAG_member, scope: !1287, file: !532, line: 159, baseType: !1359, size: 128)
!1359 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1287, file: !532, line: 159, size: 128, elements: !1360)
!1360 = !{!1361, !1364}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1359, file: !532, line: 161, baseType: !1362, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1363, size: 64)
!1363 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !532, line: 161, flags: DIFlagFwdDecl)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1359, file: !532, line: 162, baseType: !65, size: 64, offset: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1287, file: !532, line: 176, baseType: !979, size: 128, align: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, scope: !1283, file: !532, line: 179, baseType: !1367, size: 32, offset: 384)
!1367 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1283, file: !532, line: 179, size: 32, elements: !1368)
!1368 = !{!1369, !1370, !1371, !1372}
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1367, file: !532, line: 184, baseType: !580, size: 32)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1367, file: !532, line: 192, baseType: !7, size: 32)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1367, file: !532, line: 194, baseType: !7, size: 32)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1367, file: !532, line: 195, baseType: !109, size: 32)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1283, file: !532, line: 199, baseType: !580, size: 32, offset: 416)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1279, file: !627, line: 67, baseType: !699, size: 32, offset: 64)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1279, file: !627, line: 68, baseType: !699, size: 32, offset: 96)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !689, file: !690, line: 1206, baseType: !109, size: 32, offset: 12736)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !689, file: !690, line: 1207, baseType: !109, size: 32, offset: 12768)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !689, file: !690, line: 1209, baseType: !126, size: 64, offset: 12800)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !689, file: !690, line: 1219, baseType: !560, size: 64, offset: 12864)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !689, file: !690, line: 1220, baseType: !560, size: 64, offset: 12928)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !689, file: !690, line: 1317, baseType: !109, size: 32, offset: 12992)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !689, file: !690, line: 1319, baseType: !688, size: 64, offset: 13056)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !689, file: !690, line: 1322, baseType: !1384, size: 64, offset: 13120)
!1384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1385, size: 64)
!1385 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !690, line: 1322, flags: DIFlagFwdDecl)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !689, file: !690, line: 1326, baseType: !704, size: 32, offset: 13184)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !689, file: !690, line: 1342, baseType: !65, size: 64, offset: 13248)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !689, file: !690, line: 1343, baseType: !561, size: 64, offset: 13312)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !689, file: !690, line: 1344, baseType: !560, size: 64, offset: 13376)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !689, file: !690, line: 1345, baseType: !561, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !689, file: !690, line: 1346, baseType: !561, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !689, file: !690, line: 1347, baseType: !561, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !689, file: !690, line: 1348, baseType: !979, size: 128, align: 64, offset: 13504)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !689, file: !690, line: 1358, baseType: !1395, size: 34816, offset: 13824)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1396, line: 485, size: 34816, elements: !1397)
!1396 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1397 = !{!1398, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1427, !1428, !1429, !1430, !1431, !1432, !1435, !1436, !1437}
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1395, file: !1396, line: 487, baseType: !1399, size: 192)
!1399 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1400, size: 192, elements: !445)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1401, line: 16, size: 64, elements: !1402)
!1401 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1404, !1405, !1406, !1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1400, file: !1401, line: 17, baseType: !672, size: 16)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1400, file: !1401, line: 18, baseType: !672, size: 16, offset: 16)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1400, file: !1401, line: 19, baseType: !672, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1400, file: !1401, line: 19, baseType: !672, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1400, file: !1401, line: 19, baseType: !672, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1400, file: !1401, line: 19, baseType: !672, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1400, file: !1401, line: 19, baseType: !672, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1400, file: !1401, line: 20, baseType: !672, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1400, file: !1401, line: 20, baseType: !672, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1400, file: !1401, line: 20, baseType: !672, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1400, file: !1401, line: 20, baseType: !672, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1400, file: !1401, line: 20, baseType: !672, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1400, file: !1401, line: 20, baseType: !672, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1395, file: !1396, line: 491, baseType: !126, size: 64, offset: 192)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1395, file: !1396, line: 495, baseType: !485, size: 16, offset: 256)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1395, file: !1396, line: 496, baseType: !485, size: 16, offset: 272)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1395, file: !1396, line: 497, baseType: !485, size: 16, offset: 288)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1395, file: !1396, line: 498, baseType: !485, size: 16, offset: 304)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1395, file: !1396, line: 502, baseType: !126, size: 64, offset: 320)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1395, file: !1396, line: 503, baseType: !126, size: 64, offset: 384)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1395, file: !1396, line: 514, baseType: !1424, size: 256, offset: 448)
!1424 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1425, size: 256, elements: !631)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1396, line: 483, flags: DIFlagFwdDecl)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1395, file: !1396, line: 516, baseType: !126, size: 64, offset: 704)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1395, file: !1396, line: 518, baseType: !126, size: 64, offset: 768)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1395, file: !1396, line: 520, baseType: !126, size: 64, offset: 832)
!1430 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1395, file: !1396, line: 521, baseType: !126, size: 64, offset: 896)
!1431 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1395, file: !1396, line: 522, baseType: !126, size: 64, offset: 960)
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1395, file: !1396, line: 528, baseType: !1433, size: 64, offset: 1024)
!1433 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1434, size: 64)
!1434 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1396, line: 10, flags: DIFlagFwdDecl)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1395, file: !1396, line: 535, baseType: !126, size: 64, offset: 1088)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1395, file: !1396, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1395, file: !1396, line: 540, baseType: !1438, size: 33280, offset: 1536)
!1438 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1439, line: 317, size: 33280, elements: !1440)
!1439 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1440 = !{!1441, !1442, !1443}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1438, file: !1439, line: 330, baseType: !7, size: 32)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1438, file: !1439, line: 337, baseType: !126, size: 64, offset: 64)
!1443 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1438, file: !1439, line: 348, baseType: !1444, size: 32768, offset: 512)
!1444 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1439, line: 304, size: 32768, elements: !1445)
!1445 = !{!1446, !1461, !1500, !1550, !1567}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1444, file: !1439, line: 305, baseType: !1447, size: 896)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1439, line: 12, size: 896, elements: !1448)
!1448 = !{!1449, !1450, !1451, !1452, !1453, !1454, !1455, !1456, !1460}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1447, file: !1439, line: 13, baseType: !698, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1447, file: !1439, line: 14, baseType: !698, size: 32, offset: 32)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1447, file: !1439, line: 15, baseType: !698, size: 32, offset: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1447, file: !1439, line: 16, baseType: !698, size: 32, offset: 96)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1447, file: !1439, line: 17, baseType: !698, size: 32, offset: 128)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1447, file: !1439, line: 18, baseType: !698, size: 32, offset: 160)
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1447, file: !1439, line: 19, baseType: !698, size: 32, offset: 192)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1447, file: !1439, line: 22, baseType: !1457, size: 640, offset: 224)
!1457 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 640, elements: !1458)
!1458 = !{!1459}
!1459 = !DISubrange(count: 20)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1447, file: !1439, line: 25, baseType: !698, size: 32, offset: 864)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1444, file: !1439, line: 306, baseType: !1462, size: 4096, align: 128)
!1462 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1439, line: 34, size: 4096, align: 128, elements: !1463)
!1463 = !{!1464, !1465, !1466, !1467, !1468, !1483, !1484, !1485, !1489, !1491, !1495}
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1462, file: !1439, line: 35, baseType: !672, size: 16)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1462, file: !1439, line: 36, baseType: !672, size: 16, offset: 16)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1462, file: !1439, line: 37, baseType: !672, size: 16, offset: 32)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1462, file: !1439, line: 38, baseType: !672, size: 16, offset: 48)
!1468 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1439, line: 39, baseType: !1469, size: 128, offset: 64)
!1469 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1439, line: 39, size: 128, elements: !1470)
!1470 = !{!1471, !1476}
!1471 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1439, line: 40, baseType: !1472, size: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !1439, line: 40, size: 128, elements: !1473)
!1473 = !{!1474, !1475}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1472, file: !1439, line: 41, baseType: !560, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1472, file: !1439, line: 42, baseType: !560, size: 64, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, scope: !1469, file: !1439, line: 44, baseType: !1477, size: 128)
!1477 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1469, file: !1439, line: 44, size: 128, elements: !1478)
!1478 = !{!1479, !1480, !1481, !1482}
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1477, file: !1439, line: 45, baseType: !698, size: 32)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1477, file: !1439, line: 46, baseType: !698, size: 32, offset: 32)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1477, file: !1439, line: 47, baseType: !698, size: 32, offset: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1477, file: !1439, line: 48, baseType: !698, size: 32, offset: 96)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1462, file: !1439, line: 51, baseType: !698, size: 32, offset: 192)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1462, file: !1439, line: 52, baseType: !698, size: 32, offset: 224)
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1462, file: !1439, line: 55, baseType: !1486, size: 1024, offset: 256)
!1486 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 1024, elements: !1487)
!1487 = !{!1488}
!1488 = !DISubrange(count: 32)
!1489 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1462, file: !1439, line: 58, baseType: !1490, size: 2048, offset: 1280)
!1490 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 2048, elements: !449)
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1462, file: !1439, line: 60, baseType: !1492, size: 384, offset: 3328)
!1492 = !DICompositeType(tag: DW_TAG_array_type, baseType: !698, size: 384, elements: !1493)
!1493 = !{!1494}
!1494 = !DISubrange(count: 12)
!1495 = !DIDerivedType(tag: DW_TAG_member, scope: !1462, file: !1439, line: 62, baseType: !1496, size: 384, offset: 3712)
!1496 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1462, file: !1439, line: 62, size: 384, elements: !1497)
!1497 = !{!1498, !1499}
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1496, file: !1439, line: 63, baseType: !1492, size: 384)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1496, file: !1439, line: 64, baseType: !1492, size: 384)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1444, file: !1439, line: 307, baseType: !1501, size: 1088)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1439, line: 79, size: 1088, elements: !1502)
!1502 = !{!1503, !1504, !1505, !1506, !1507, !1508, !1509, !1510, !1511, !1512, !1513, !1514, !1515, !1516, !1517, !1549}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1501, file: !1439, line: 80, baseType: !698, size: 32)
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1501, file: !1439, line: 81, baseType: !698, size: 32, offset: 32)
!1505 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1501, file: !1439, line: 82, baseType: !698, size: 32, offset: 64)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1501, file: !1439, line: 83, baseType: !698, size: 32, offset: 96)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1501, file: !1439, line: 84, baseType: !698, size: 32, offset: 128)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1501, file: !1439, line: 85, baseType: !698, size: 32, offset: 160)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1501, file: !1439, line: 86, baseType: !698, size: 32, offset: 192)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1501, file: !1439, line: 88, baseType: !1457, size: 640, offset: 224)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1501, file: !1439, line: 89, baseType: !149, size: 8, offset: 864)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1501, file: !1439, line: 90, baseType: !149, size: 8, offset: 872)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1501, file: !1439, line: 91, baseType: !149, size: 8, offset: 880)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1501, file: !1439, line: 92, baseType: !149, size: 8, offset: 888)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1501, file: !1439, line: 93, baseType: !149, size: 8, offset: 896)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1501, file: !1439, line: 94, baseType: !149, size: 8, offset: 904)
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1501, file: !1439, line: 95, baseType: !1518, size: 64, offset: 960)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1520, line: 11, size: 128, elements: !1521)
!1520 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1521 = !{!1522, !1523}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1519, file: !1520, line: 12, baseType: !131, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1519, file: !1520, line: 13, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1526, line: 56, size: 1344, elements: !1527)
!1526 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1527 = !{!1528, !1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541, !1542, !1543, !1544, !1545, !1546, !1547, !1548}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1525, file: !1526, line: 61, baseType: !126, size: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1525, file: !1526, line: 62, baseType: !126, size: 64, offset: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1525, file: !1526, line: 63, baseType: !126, size: 64, offset: 128)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1525, file: !1526, line: 64, baseType: !126, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1525, file: !1526, line: 65, baseType: !126, size: 64, offset: 256)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1525, file: !1526, line: 66, baseType: !126, size: 64, offset: 320)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1525, file: !1526, line: 68, baseType: !126, size: 64, offset: 384)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1525, file: !1526, line: 69, baseType: !126, size: 64, offset: 448)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1525, file: !1526, line: 70, baseType: !126, size: 64, offset: 512)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1525, file: !1526, line: 71, baseType: !126, size: 64, offset: 576)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1525, file: !1526, line: 72, baseType: !126, size: 64, offset: 640)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1525, file: !1526, line: 73, baseType: !126, size: 64, offset: 704)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1525, file: !1526, line: 74, baseType: !126, size: 64, offset: 768)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1525, file: !1526, line: 75, baseType: !126, size: 64, offset: 832)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1525, file: !1526, line: 76, baseType: !126, size: 64, offset: 896)
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1525, file: !1526, line: 81, baseType: !126, size: 64, offset: 960)
!1544 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1525, file: !1526, line: 83, baseType: !126, size: 64, offset: 1024)
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1525, file: !1526, line: 84, baseType: !126, size: 64, offset: 1088)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1525, file: !1526, line: 85, baseType: !126, size: 64, offset: 1152)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1525, file: !1526, line: 86, baseType: !126, size: 64, offset: 1216)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1525, file: !1526, line: 87, baseType: !126, size: 64, offset: 1280)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1501, file: !1439, line: 96, baseType: !698, size: 32, offset: 1024)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1444, file: !1439, line: 308, baseType: !1551, size: 4608, align: 512)
!1551 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1439, line: 289, size: 4608, align: 512, elements: !1552)
!1552 = !{!1553, !1554, !1563}
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1551, file: !1439, line: 290, baseType: !1462, size: 4096, align: 128)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1551, file: !1439, line: 291, baseType: !1555, size: 512, offset: 4096)
!1555 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1439, line: 268, size: 512, elements: !1556)
!1556 = !{!1557, !1558, !1559}
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1555, file: !1439, line: 269, baseType: !560, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1555, file: !1439, line: 270, baseType: !560, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1555, file: !1439, line: 271, baseType: !1560, size: 384, offset: 128)
!1560 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 384, elements: !1561)
!1561 = !{!1562}
!1562 = !DISubrange(count: 6)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1551, file: !1439, line: 292, baseType: !1564, offset: 4608)
!1564 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !1565)
!1565 = !{!1566}
!1566 = !DISubrange(count: 0)
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1444, file: !1439, line: 309, baseType: !1568, size: 32768)
!1568 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 32768, elements: !1569)
!1569 = !{!1570}
!1570 = !DISubrange(count: 4096)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !685, file: !532, line: 378, baseType: !1572, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !685, size: 64)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !681, file: !532, line: 384, baseType: !1001, size: 192, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !552, file: !532, line: 500, baseType: !229, offset: 6656)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !552, file: !532, line: 501, baseType: !1576, size: 64, offset: 6656)
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !532, line: 387, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !552, file: !532, line: 516, baseType: !1579, size: 64, offset: 6720)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1581, line: 18, flags: DIFlagFwdDecl)
!1581 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !552, file: !532, line: 519, baseType: !520, size: 64, offset: 6784)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !552, file: !532, line: 521, baseType: !1584, size: 64, offset: 6848)
!1584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1585, size: 64)
!1585 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !532, line: 521, flags: DIFlagFwdDecl)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !552, file: !532, line: 545, baseType: !580, size: 32, offset: 6912)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !552, file: !532, line: 548, baseType: !1267, size: 8, offset: 6944)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !552, file: !532, line: 550, baseType: !1589, offset: 6952)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1590, line: 142, elements: !243)
!1590 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !552, file: !532, line: 554, baseType: !1592, size: 256, offset: 6976)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1593, line: 102, size: 256, elements: !1594)
!1593 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1594 = !{!1595, !1596, !1597}
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1592, file: !1593, line: 103, baseType: !219, size: 64)
!1596 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1592, file: !1593, line: 104, baseType: !71, size: 128, offset: 64)
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1592, file: !1593, line: 105, baseType: !1598, size: 64, offset: 192)
!1598 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1593, line: 21, baseType: !1599)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DISubroutineType(types: !1601)
!1601 = !{null, !1602}
!1602 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1592, size: 64)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !552, file: !532, line: 557, baseType: !698, size: 32, offset: 7232)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !549, file: !532, line: 565, baseType: !1605, offset: 7296)
!1605 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, elements: !1606)
!1606 = !{!1607}
!1607 = !DISubrange(count: -1)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !531, file: !532, line: 333, baseType: !1609, size: 64, offset: 576)
!1609 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !522, line: 284, baseType: !1610)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !522, line: 284, size: 64, elements: !1611)
!1611 = !{!1612}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1610, file: !522, line: 284, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !578, line: 19, baseType: !126)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !531, file: !532, line: 334, baseType: !126, size: 64, offset: 640)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !531, file: !532, line: 343, baseType: !1616, size: 256, offset: 704)
!1616 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !531, file: !532, line: 340, size: 256, elements: !1617)
!1617 = !{!1618, !1619}
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1616, file: !532, line: 341, baseType: !539, size: 192, align: 64)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1616, file: !532, line: 342, baseType: !126, size: 64, offset: 192)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !531, file: !532, line: 351, baseType: !71, size: 128, offset: 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !531, file: !532, line: 353, baseType: !1622, size: 64, offset: 1088)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !532, line: 353, flags: DIFlagFwdDecl)
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !531, file: !532, line: 356, baseType: !1625, size: 64, offset: 1152)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1627)
!1627 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !532, line: 356, flags: DIFlagFwdDecl)
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !531, file: !532, line: 359, baseType: !126, size: 64, offset: 1216)
!1629 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !531, file: !532, line: 361, baseType: !520, size: 64, offset: 1280)
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !531, file: !532, line: 362, baseType: !65, size: 64, offset: 1344)
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !531, file: !532, line: 365, baseType: !219, size: 64, offset: 1408)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !531, file: !532, line: 373, baseType: !1633, offset: 1472)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !532, line: 296, elements: !243)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !499, file: !469, line: 90, baseType: !494, size: 64, offset: 192)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !499, file: !469, line: 91, baseType: !1636, size: 64, offset: 256)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !510, size: 64)
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !459, file: !406, line: 143, baseType: !1638, size: 64, offset: 256)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!1641, !411}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1643)
!1643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1644)
!1644 = !{!1645, !1646, !1650, !1654, !1662, !1666}
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1643, file: !18, line: 40, baseType: !17, size: 32)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1643, file: !18, line: 41, baseType: !1647, size: 64, offset: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!1267}
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1643, file: !18, line: 42, baseType: !1651, size: 64, offset: 128)
!1651 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1652, size: 64)
!1652 = !DISubroutineType(types: !1653)
!1653 = !{!65}
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1643, file: !18, line: 43, baseType: !1655, size: 64, offset: 192)
!1655 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1656, size: 64)
!1656 = !DISubroutineType(types: !1657)
!1657 = !{!1658, !1660}
!1658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1659, size: 64)
!1659 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1643, file: !18, line: 44, baseType: !1663, size: 64, offset: 256)
!1663 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1664, size: 64)
!1664 = !DISubroutineType(types: !1665)
!1665 = !{!1658}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1643, file: !18, line: 45, baseType: !1667, size: 64, offset: 320)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !65}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !459, file: !406, line: 144, baseType: !1671, size: 64, offset: 320)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!1658, !411}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !459, file: !406, line: 145, baseType: !1675, size: 64, offset: 384)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{null, !411, !1678, !1684}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1581, line: 23, baseType: !1680)
!1680 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1581, line: 21, size: 32, elements: !1681)
!1681 = !{!1682}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1680, file: !1581, line: 22, baseType: !1683, size: 32)
!1683 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !64, line: 32, baseType: !1163)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1581, line: 28, baseType: !1686)
!1686 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1581, line: 26, size: 32, elements: !1687)
!1687 = !{!1688}
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1686, file: !1581, line: 27, baseType: !1689, size: 32)
!1689 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !64, line: 33, baseType: !1690)
!1690 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !477, line: 50, baseType: !7)
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !405, file: !406, line: 70, baseType: !1692, size: 64, offset: 384)
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !190, line: 123, size: 1024, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1698, !1699, !1700, !1701, !1702, !1836, !1837, !1838, !1839, !1840}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1693, file: !190, line: 124, baseType: !580, size: 32)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1693, file: !190, line: 125, baseType: !580, size: 32, offset: 32)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1693, file: !190, line: 135, baseType: !1692, size: 64, offset: 64)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !190, line: 136, baseType: !77, size: 64, offset: 128)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1693, file: !190, line: 138, baseType: !539, size: 192, align: 64, offset: 192)
!1700 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1693, file: !190, line: 140, baseType: !1658, size: 64, offset: 384)
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1693, file: !190, line: 141, baseType: !7, size: 32, offset: 448)
!1702 = !DIDerivedType(tag: DW_TAG_member, scope: !1693, file: !190, line: 142, baseType: !1703, size: 256, offset: 512)
!1703 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1693, file: !190, line: 142, size: 256, elements: !1704)
!1704 = !{!1705, !1759, !1763}
!1705 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1703, file: !190, line: 143, baseType: !1706, size: 192)
!1706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !190, line: 91, size: 192, elements: !1707)
!1707 = !{!1708, !1709, !1710}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1706, file: !190, line: 92, baseType: !126, size: 64)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1706, file: !190, line: 94, baseType: !556, size: 64, offset: 64)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1706, file: !190, line: 100, baseType: !1711, size: 64, offset: 128)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !190, line: 180, size: 704, elements: !1713)
!1713 = !{!1714, !1715, !1716, !1729, !1730, !1731, !1757, !1758}
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1712, file: !190, line: 182, baseType: !1692, size: 64)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1712, file: !190, line: 183, baseType: !7, size: 32, offset: 64)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1712, file: !190, line: 186, baseType: !1717, size: 192, offset: 128)
!1717 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1718, line: 19, size: 192, elements: !1719)
!1718 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1719 = !{!1720, !1727, !1728}
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1717, file: !1718, line: 20, baseType: !1721, size: 128)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1722, line: 292, size: 128, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724, !1725, !1726}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1721, file: !1722, line: 293, baseType: !229)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1721, file: !1722, line: 295, baseType: !63, size: 32)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1721, file: !1722, line: 296, baseType: !65, size: 64, offset: 64)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1717, file: !1718, line: 21, baseType: !7, size: 32, offset: 128)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1717, file: !1718, line: 22, baseType: !7, size: 32, offset: 160)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1712, file: !190, line: 187, baseType: !698, size: 32, offset: 320)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1712, file: !190, line: 188, baseType: !698, size: 32, offset: 352)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1712, file: !190, line: 189, baseType: !1732, size: 64, offset: 384)
!1732 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1733, size: 64)
!1733 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !190, line: 168, size: 320, elements: !1734)
!1734 = !{!1735, !1741, !1745, !1749, !1753}
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1733, file: !190, line: 169, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1737, size: 64)
!1737 = !DISubroutineType(types: !1738)
!1738 = !{!109, !1739, !1711}
!1739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1740, size: 64)
!1740 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !522, line: 539, flags: DIFlagFwdDecl)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1733, file: !190, line: 171, baseType: !1742, size: 64, offset: 64)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!109, !1692, !77, !484}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1733, file: !190, line: 173, baseType: !1746, size: 64, offset: 128)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!109, !1692}
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1733, file: !190, line: 174, baseType: !1750, size: 64, offset: 192)
!1750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1751, size: 64)
!1751 = !DISubroutineType(types: !1752)
!1752 = !{!109, !1692, !1692, !77}
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1733, file: !190, line: 176, baseType: !1754, size: 64, offset: 256)
!1754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1755, size: 64)
!1755 = !DISubroutineType(types: !1756)
!1756 = !{!109, !1739, !1692, !1711}
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1712, file: !190, line: 192, baseType: !71, size: 128, offset: 448)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1712, file: !190, line: 194, baseType: !972, size: 128, offset: 576)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1703, file: !190, line: 144, baseType: !1760, size: 64)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !190, line: 103, size: 64, elements: !1761)
!1761 = !{!1762}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1760, file: !190, line: 104, baseType: !1692, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1703, file: !190, line: 145, baseType: !1764, size: 256)
!1764 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !190, line: 107, size: 256, elements: !1765)
!1765 = !{!1766, !1831, !1834, !1835}
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1764, file: !190, line: 108, baseType: !1767, size: 64)
!1767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1768, size: 64)
!1768 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1769)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !190, line: 217, size: 768, elements: !1770)
!1770 = !{!1771, !1791, !1795, !1799, !1804, !1808, !1812, !1816, !1817, !1818, !1819, !1827}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1769, file: !190, line: 222, baseType: !1772, size: 64)
!1772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1773, size: 64)
!1773 = !DISubroutineType(types: !1774)
!1774 = !{!109, !1775}
!1775 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1776, size: 64)
!1776 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !190, line: 197, size: 1088, elements: !1777)
!1777 = !{!1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1787, !1788, !1789, !1790}
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1776, file: !190, line: 199, baseType: !1692, size: 64)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1776, file: !190, line: 200, baseType: !520, size: 64, offset: 64)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1776, file: !190, line: 201, baseType: !1739, size: 64, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1776, file: !190, line: 202, baseType: !65, size: 64, offset: 192)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1776, file: !190, line: 205, baseType: !215, size: 192, offset: 256)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1776, file: !190, line: 206, baseType: !215, size: 192, offset: 448)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1776, file: !190, line: 207, baseType: !109, size: 32, offset: 640)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1776, file: !190, line: 208, baseType: !71, size: 128, offset: 704)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1776, file: !190, line: 209, baseType: !444, size: 64, offset: 832)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1776, file: !190, line: 211, baseType: !490, size: 64, offset: 896)
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1776, file: !190, line: 212, baseType: !1267, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1776, file: !190, line: 213, baseType: !1267, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1776, file: !190, line: 214, baseType: !1625, size: 64, offset: 1024)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1769, file: !190, line: 223, baseType: !1792, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1793, size: 64)
!1793 = !DISubroutineType(types: !1794)
!1794 = !{null, !1775}
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1769, file: !190, line: 236, baseType: !1796, size: 64, offset: 128)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DISubroutineType(types: !1798)
!1798 = !{!109, !1739, !65}
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1769, file: !190, line: 238, baseType: !1800, size: 64, offset: 192)
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = !DISubroutineType(types: !1802)
!1802 = !{!65, !1739, !1803}
!1803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1769, file: !190, line: 239, baseType: !1805, size: 64, offset: 256)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{!65, !1739, !65, !1803}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1769, file: !190, line: 240, baseType: !1809, size: 64, offset: 320)
!1809 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1810, size: 64)
!1810 = !DISubroutineType(types: !1811)
!1811 = !{null, !1739, !65}
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1769, file: !190, line: 242, baseType: !1813, size: 64, offset: 384)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DISubroutineType(types: !1815)
!1815 = !{!475, !1775, !444, !490, !523}
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1769, file: !190, line: 252, baseType: !490, size: 64, offset: 448)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1769, file: !190, line: 259, baseType: !1267, size: 8, offset: 512)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1769, file: !190, line: 260, baseType: !1813, size: 64, offset: 576)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1769, file: !190, line: 263, baseType: !1820, size: 64, offset: 640)
!1820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1821, size: 64)
!1821 = !DISubroutineType(types: !1822)
!1822 = !{!1823, !1775, !1825}
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1824, line: 52, baseType: !7)
!1824 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1826, size: 64)
!1826 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !190, line: 27, flags: DIFlagFwdDecl)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1769, file: !190, line: 266, baseType: !1828, size: 64, offset: 704)
!1828 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1829, size: 64)
!1829 = !DISubroutineType(types: !1830)
!1830 = !{!109, !1775, !530}
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1764, file: !190, line: 109, baseType: !1832, size: 64, offset: 64)
!1832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1833, size: 64)
!1833 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !190, line: 31, flags: DIFlagFwdDecl)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1764, file: !190, line: 110, baseType: !523, size: 64, offset: 128)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1764, file: !190, line: 111, baseType: !1692, size: 64, offset: 192)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1693, file: !190, line: 148, baseType: !65, size: 64, offset: 768)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1693, file: !190, line: 154, baseType: !560, size: 64, offset: 832)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1693, file: !190, line: 156, baseType: !485, size: 16, offset: 896)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1693, file: !190, line: 157, baseType: !484, size: 16, offset: 912)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1693, file: !190, line: 158, baseType: !1841, size: 64, offset: 960)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !190, line: 32, flags: DIFlagFwdDecl)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !405, file: !406, line: 71, baseType: !1844, size: 32, offset: 448)
!1844 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1845, line: 19, size: 32, elements: !1846)
!1845 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1844, file: !1845, line: 20, baseType: !704, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !405, file: !406, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !405, file: !406, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !405, file: !406, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !405, file: !406, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !405, file: !406, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !402, file: !30, line: 463, baseType: !401, size: 64, offset: 512)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !402, file: !30, line: 465, baseType: !1855, size: 64, offset: 576)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !402, file: !30, line: 467, baseType: !77, size: 64, offset: 640)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !402, file: !30, line: 468, baseType: !1859, size: 64, offset: 704)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1862)
!1862 = !{!1863, !1864, !1865, !1869, !1874, !1878}
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1861, file: !30, line: 88, baseType: !77, size: 64)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1861, file: !30, line: 89, baseType: !496, size: 64, offset: 64)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1861, file: !30, line: 90, baseType: !1866, size: 64, offset: 128)
!1866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1867, size: 64)
!1867 = !DISubroutineType(types: !1868)
!1868 = !{!109, !401, !439}
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1861, file: !30, line: 91, baseType: !1870, size: 64, offset: 192)
!1870 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1871, size: 64)
!1871 = !DISubroutineType(types: !1872)
!1872 = !{!444, !401, !1873, !1678, !1684}
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !484, size: 64)
!1874 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1861, file: !30, line: 93, baseType: !1875, size: 64, offset: 256)
!1875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1876, size: 64)
!1876 = !DISubroutineType(types: !1877)
!1877 = !{null, !401}
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1861, file: !30, line: 95, baseType: !1879, size: 64, offset: 320)
!1879 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1880, size: 64)
!1880 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1881)
!1881 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1882)
!1882 = !{!1883, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1881, file: !37, line: 279, baseType: !1884, size: 64)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{!109, !401}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1881, file: !37, line: 280, baseType: !1875, size: 64, offset: 64)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1881, file: !37, line: 281, baseType: !1884, size: 64, offset: 128)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1881, file: !37, line: 282, baseType: !1884, size: 64, offset: 192)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1881, file: !37, line: 283, baseType: !1884, size: 64, offset: 256)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1881, file: !37, line: 284, baseType: !1884, size: 64, offset: 320)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1881, file: !37, line: 285, baseType: !1884, size: 64, offset: 384)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1881, file: !37, line: 286, baseType: !1884, size: 64, offset: 448)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1881, file: !37, line: 287, baseType: !1884, size: 64, offset: 512)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1881, file: !37, line: 288, baseType: !1884, size: 64, offset: 576)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1881, file: !37, line: 289, baseType: !1884, size: 64, offset: 640)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1881, file: !37, line: 290, baseType: !1884, size: 64, offset: 704)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1881, file: !37, line: 291, baseType: !1884, size: 64, offset: 768)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1881, file: !37, line: 292, baseType: !1884, size: 64, offset: 832)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1881, file: !37, line: 293, baseType: !1884, size: 64, offset: 896)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1881, file: !37, line: 294, baseType: !1884, size: 64, offset: 960)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1881, file: !37, line: 295, baseType: !1884, size: 64, offset: 1024)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1881, file: !37, line: 296, baseType: !1884, size: 64, offset: 1088)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1881, file: !37, line: 297, baseType: !1884, size: 64, offset: 1152)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1881, file: !37, line: 298, baseType: !1884, size: 64, offset: 1216)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1881, file: !37, line: 299, baseType: !1884, size: 64, offset: 1280)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1881, file: !37, line: 300, baseType: !1884, size: 64, offset: 1344)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1881, file: !37, line: 301, baseType: !1884, size: 64, offset: 1408)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !402, file: !30, line: 470, baseType: !1910, size: 64, offset: 768)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1912, line: 82, size: 1408, elements: !1913)
!1912 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1913 = !{!1914, !1915, !1916, !1917, !1918, !1919, !1920, !1983, !1984, !1985, !1986, !1987, !1988, !1989, !1990, !1991, !1992, !1993, !1994, !1995, !1999, !2002, !2005}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1911, file: !1912, line: 83, baseType: !77, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1911, file: !1912, line: 84, baseType: !77, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1911, file: !1912, line: 85, baseType: !401, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1911, file: !1912, line: 86, baseType: !496, size: 64, offset: 192)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1911, file: !1912, line: 87, baseType: !496, size: 64, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1911, file: !1912, line: 88, baseType: !496, size: 64, offset: 320)
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1911, file: !1912, line: 90, baseType: !1921, size: 64, offset: 384)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!109, !401, !1924}
!1924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1925, size: 64)
!1925 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1926)
!1926 = !{!1927, !1928, !1929, !1933, !1934, !1935, !1936, !1950, !1963, !1964, !1965, !1966, !1967, !1975, !1976, !1977, !1978, !1979, !1980}
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1925, file: !24, line: 96, baseType: !77, size: 64)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1925, file: !24, line: 97, baseType: !1910, size: 64, offset: 64)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1925, file: !24, line: 99, baseType: !1930, size: 64, offset: 128)
!1930 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1931, size: 64)
!1931 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1932, line: 76, flags: DIFlagFwdDecl)
!1932 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1925, file: !24, line: 100, baseType: !77, size: 64, offset: 192)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1925, file: !24, line: 102, baseType: !1267, size: 8, offset: 256)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1925, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1925, file: !24, line: 105, baseType: !1937, size: 64, offset: 320)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1939)
!1939 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1940, line: 262, size: 1600, elements: !1941)
!1940 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1941 = !{!1942, !1944, !1945, !1949}
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1939, file: !1940, line: 263, baseType: !1943, size: 256)
!1943 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 256, elements: !1487)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1939, file: !1940, line: 264, baseType: !1943, size: 256, offset: 256)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1939, file: !1940, line: 265, baseType: !1946, size: 1024, offset: 512)
!1946 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 1024, elements: !1947)
!1947 = !{!1948}
!1948 = !DISubrange(count: 128)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1939, file: !1940, line: 266, baseType: !1658, size: 64, offset: 1536)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1925, file: !24, line: 106, baseType: !1951, size: 64, offset: 384)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1953)
!1953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1940, line: 210, size: 256, elements: !1954)
!1954 = !{!1955, !1959, !1961, !1962}
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1953, file: !1940, line: 211, baseType: !1956, size: 72)
!1956 = !DICompositeType(tag: DW_TAG_array_type, baseType: !151, size: 72, elements: !1957)
!1957 = !{!1958}
!1958 = !DISubrange(count: 9)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1953, file: !1940, line: 212, baseType: !1960, size: 64, offset: 128)
!1960 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1940, line: 14, baseType: !126)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1953, file: !1940, line: 213, baseType: !699, size: 32, offset: 192)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1953, file: !1940, line: 214, baseType: !699, size: 32, offset: 224)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1925, file: !24, line: 108, baseType: !1884, size: 64, offset: 448)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1925, file: !24, line: 109, baseType: !1875, size: 64, offset: 512)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1925, file: !24, line: 110, baseType: !1884, size: 64, offset: 576)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1925, file: !24, line: 111, baseType: !1875, size: 64, offset: 640)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1925, file: !24, line: 112, baseType: !1968, size: 64, offset: 704)
!1968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1969, size: 64)
!1969 = !DISubroutineType(types: !1970)
!1970 = !{!109, !401, !1971}
!1971 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1972)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1973)
!1973 = !{!1974}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1972, file: !37, line: 51, baseType: !109, size: 32)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1925, file: !24, line: 113, baseType: !1884, size: 64, offset: 768)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1925, file: !24, line: 114, baseType: !496, size: 64, offset: 832)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1925, file: !24, line: 115, baseType: !496, size: 64, offset: 896)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1925, file: !24, line: 117, baseType: !1879, size: 64, offset: 960)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1925, file: !24, line: 118, baseType: !1875, size: 64, offset: 1024)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1925, file: !24, line: 120, baseType: !1981, size: 64, offset: 1088)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1911, file: !1912, line: 91, baseType: !1866, size: 64, offset: 448)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1911, file: !1912, line: 92, baseType: !1884, size: 64, offset: 512)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1911, file: !1912, line: 93, baseType: !1875, size: 64, offset: 576)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1911, file: !1912, line: 94, baseType: !1884, size: 64, offset: 640)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1911, file: !1912, line: 95, baseType: !1875, size: 64, offset: 704)
!1988 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1911, file: !1912, line: 97, baseType: !1884, size: 64, offset: 768)
!1989 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1911, file: !1912, line: 98, baseType: !1884, size: 64, offset: 832)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1911, file: !1912, line: 100, baseType: !1968, size: 64, offset: 896)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1911, file: !1912, line: 101, baseType: !1884, size: 64, offset: 960)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1911, file: !1912, line: 103, baseType: !1884, size: 64, offset: 1024)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1911, file: !1912, line: 105, baseType: !1884, size: 64, offset: 1088)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1911, file: !1912, line: 107, baseType: !1879, size: 64, offset: 1152)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1911, file: !1912, line: 109, baseType: !1996, size: 64, offset: 1216)
!1996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1997, size: 64)
!1997 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1998)
!1998 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1912, line: 109, flags: DIFlagFwdDecl)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1911, file: !1912, line: 111, baseType: !2000, size: 64, offset: 1280)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1912, line: 111, flags: DIFlagFwdDecl)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1911, file: !1912, line: 112, baseType: !2003, offset: 1344)
!2003 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2004, line: 187, elements: !243)
!2004 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1911, file: !1912, line: 114, baseType: !1267, size: 8, offset: 1344)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !402, file: !30, line: 471, baseType: !1924, size: 64, offset: 832)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !402, file: !30, line: 473, baseType: !65, size: 64, offset: 896)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !402, file: !30, line: 475, baseType: !65, size: 64, offset: 960)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !402, file: !30, line: 480, baseType: !215, size: 192, offset: 1024)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !402, file: !30, line: 484, baseType: !2011, size: 576, offset: 1216)
!2011 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !2012)
!2012 = !{!2013, !2014, !2015, !2016, !2017, !2018}
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !2011, file: !30, line: 362, baseType: !71, size: 128)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !2011, file: !30, line: 363, baseType: !71, size: 128, offset: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !2011, file: !30, line: 364, baseType: !71, size: 128, offset: 256)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !2011, file: !30, line: 365, baseType: !71, size: 128, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !2011, file: !30, line: 366, baseType: !1267, size: 8, offset: 512)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2011, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!2019 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !402, file: !30, line: 485, baseType: !2020, size: 2304, offset: 1792)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !2021)
!2021 = !{!2022, !2023, !2024, !2025, !2026, !2027, !2028, !2029, !2030, !2031, !2032, !2033, !2034, !2035, !2036, !2037, !2075, !2076, !2077, !2078, !2079, !2080, !2081, !2082, !2083, !2084, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095, !2096, !2097, !2098, !2099, !2100, !2101, !2102, !2103, !2104, !2105, !2106, !2107, !2117, !2121}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !2020, file: !37, line: 566, baseType: !1971, size: 32)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !2020, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !2020, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !2020, file: !37, line: 569, baseType: !1267, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !2020, file: !37, line: 570, baseType: !1267, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !2020, file: !37, line: 571, baseType: !1267, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !2020, file: !37, line: 572, baseType: !1267, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !2020, file: !37, line: 573, baseType: !1267, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !2020, file: !37, line: 574, baseType: !1267, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !2020, file: !37, line: 575, baseType: !1267, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !2020, file: !37, line: 576, baseType: !1267, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !2020, file: !37, line: 577, baseType: !698, size: 32, offset: 64)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2020, file: !37, line: 578, baseType: !229, offset: 96)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2020, file: !37, line: 580, baseType: !71, size: 128, offset: 128)
!2036 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !2020, file: !37, line: 581, baseType: !1001, size: 192, offset: 256)
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2020, file: !37, line: 582, baseType: !2038, size: 64, offset: 448)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2039, size: 64)
!2039 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !2040, line: 43, size: 1472, elements: !2041)
!2040 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!2041 = !{!2042, !2043, !2044, !2045, !2046, !2049, !2061, !2062, !2063, !2064, !2065, !2066, !2067, !2068, !2069, !2070, !2071, !2072, !2073, !2074}
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2039, file: !2040, line: 44, baseType: !77, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2039, file: !2040, line: 45, baseType: !109, size: 32, offset: 64)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2039, file: !2040, line: 46, baseType: !71, size: 128, offset: 128)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2039, file: !2040, line: 47, baseType: !229, offset: 256)
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2039, file: !2040, line: 48, baseType: !2047, size: 64, offset: 256)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !2039, file: !2040, line: 49, baseType: !2050, size: 320, offset: 320)
!2050 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !2051, line: 11, size: 320, elements: !2052)
!2051 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!2052 = !{!2053, !2054, !2055, !2060}
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2050, file: !2051, line: 16, baseType: !965, size: 128)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !2050, file: !2051, line: 17, baseType: !126, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !2050, file: !2051, line: 18, baseType: !2056, size: 64, offset: 192)
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DISubroutineType(types: !2058)
!2058 = !{null, !2059}
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2050, file: !2051, line: 19, baseType: !698, size: 32, offset: 256)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2039, file: !2040, line: 50, baseType: !126, size: 64, offset: 640)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !2039, file: !2040, line: 51, baseType: !774, size: 64, offset: 704)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !2039, file: !2040, line: 52, baseType: !774, size: 64, offset: 768)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !2039, file: !2040, line: 53, baseType: !774, size: 64, offset: 832)
!2065 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !2039, file: !2040, line: 54, baseType: !774, size: 64, offset: 896)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !2039, file: !2040, line: 55, baseType: !774, size: 64, offset: 960)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !2039, file: !2040, line: 56, baseType: !126, size: 64, offset: 1024)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !2039, file: !2040, line: 57, baseType: !126, size: 64, offset: 1088)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !2039, file: !2040, line: 58, baseType: !126, size: 64, offset: 1152)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !2039, file: !2040, line: 59, baseType: !126, size: 64, offset: 1216)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !2039, file: !2040, line: 60, baseType: !126, size: 64, offset: 1280)
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2039, file: !2040, line: 61, baseType: !401, size: 64, offset: 1344)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !2039, file: !2040, line: 62, baseType: !1267, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !2039, file: !2040, line: 63, baseType: !1267, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !2020, file: !37, line: 583, baseType: !1267, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !2020, file: !37, line: 584, baseType: !1267, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !2020, file: !37, line: 585, baseType: !1267, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !2020, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !2020, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !2020, file: !37, line: 592, baseType: !766, size: 512, offset: 576)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !2020, file: !37, line: 593, baseType: !560, size: 64, offset: 1088)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !2020, file: !37, line: 594, baseType: !1592, size: 256, offset: 1152)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !2020, file: !37, line: 595, baseType: !972, size: 128, offset: 1408)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !2020, file: !37, line: 596, baseType: !2047, size: 64, offset: 1536)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !2020, file: !37, line: 597, baseType: !580, size: 32, offset: 1600)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !2020, file: !37, line: 598, baseType: !580, size: 32, offset: 1632)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !2020, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !2020, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !2020, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !2020, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !2020, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !2020, file: !37, line: 604, baseType: !1267, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !2020, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !2020, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !2020, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !2020, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !2020, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !2020, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !2020, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !2020, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !2020, file: !37, line: 613, baseType: !109, size: 32, offset: 1792)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !2020, file: !37, line: 614, baseType: !109, size: 32, offset: 1824)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !2020, file: !37, line: 615, baseType: !560, size: 64, offset: 1856)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !2020, file: !37, line: 616, baseType: !560, size: 64, offset: 1920)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !2020, file: !37, line: 617, baseType: !560, size: 64, offset: 1984)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !2020, file: !37, line: 618, baseType: !560, size: 64, offset: 2048)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !2020, file: !37, line: 620, baseType: !2108, size: 64, offset: 2112)
!2108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2109, size: 64)
!2109 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !2110)
!2110 = !{!2111, !2112, !2113, !2114}
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !2109, file: !37, line: 537, baseType: !229)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !2109, file: !37, line: 538, baseType: !7, size: 32)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !2109, file: !37, line: 540, baseType: !71, size: 128, offset: 64)
!2114 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !2109, file: !37, line: 543, baseType: !2115, size: 64, offset: 192)
!2115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2116, size: 64)
!2116 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !2020, file: !37, line: 621, baseType: !2118, size: 64, offset: 2176)
!2118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2119, size: 64)
!2119 = !DISubroutineType(types: !2120)
!2120 = !{null, !401, !925}
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !2020, file: !37, line: 622, baseType: !2122, size: 64, offset: 2240)
!2122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2123, size: 64)
!2123 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !402, file: !30, line: 486, baseType: !2125, size: 64, offset: 4096)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2127)
!2127 = !{!2128, !2129, !2130, !2134, !2135, !2136}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2126, file: !37, line: 643, baseType: !1881, size: 1472)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2126, file: !37, line: 644, baseType: !1884, size: 64, offset: 1472)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2126, file: !37, line: 645, baseType: !2131, size: 64, offset: 1536)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = !DISubroutineType(types: !2133)
!2133 = !{null, !401, !1267}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2126, file: !37, line: 646, baseType: !1884, size: 64, offset: 1600)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !2126, file: !37, line: 647, baseType: !1875, size: 64, offset: 1664)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !2126, file: !37, line: 648, baseType: !1875, size: 64, offset: 1728)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !402, file: !30, line: 493, baseType: !2138, size: 64, offset: 4160)
!2138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2139, size: 64)
!2139 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !402, file: !30, line: 499, baseType: !71, size: 128, offset: 4224)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !402, file: !30, line: 502, baseType: !2142, size: 64, offset: 4352)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2144)
!2144 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !402, file: !30, line: 504, baseType: !2146, size: 64, offset: 4416)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !402, file: !30, line: 505, baseType: !560, size: 64, offset: 4480)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !402, file: !30, line: 510, baseType: !560, size: 64, offset: 4544)
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !402, file: !30, line: 511, baseType: !2150, size: 64, offset: 4608)
!2150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2151, size: 64)
!2151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2152)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !402, file: !30, line: 513, baseType: !2154, size: 64, offset: 4672)
!2154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2155, size: 64)
!2155 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2156)
!2156 = !{!2157, !2158}
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2155, file: !30, line: 293, baseType: !7, size: 32)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2155, file: !30, line: 294, baseType: !126, size: 64, offset: 64)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !402, file: !30, line: 515, baseType: !71, size: 128, offset: 4736)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !402, file: !30, line: 526, baseType: !2161, offset: 4864)
!2161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2162, line: 5, elements: !243)
!2162 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !402, file: !30, line: 528, baseType: !2164, size: 64, offset: 4864)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2166, line: 51, size: 1344, elements: !2167)
!2166 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2167 = !{!2168, !2169, !2171, !2172, !2262, !2271, !2272, !2273, !2274, !2275, !2276, !2277}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2165, file: !2166, line: 52, baseType: !77, size: 64)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2165, file: !2166, line: 53, baseType: !2170, size: 32, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2166, line: 28, baseType: !698)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2165, file: !2166, line: 54, baseType: !77, size: 64, offset: 128)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2165, file: !2166, line: 55, baseType: !2173, size: 192, offset: 192)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2174, line: 17, size: 192, elements: !2175)
!2174 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2175 = !{!2176, !2178, !2261}
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2173, file: !2174, line: 18, baseType: !2177, size: 64)
!2177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2173, size: 64)
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2173, file: !2174, line: 19, baseType: !2179, size: 64, offset: 64)
!2179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2180, size: 64)
!2180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2181)
!2181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2174, line: 110, size: 1152, elements: !2182)
!2182 = !{!2183, !2187, !2191, !2197, !2203, !2207, !2211, !2216, !2220, !2221, !2225, !2229, !2233, !2244, !2245, !2246, !2247, !2257}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2181, file: !2174, line: 111, baseType: !2184, size: 64)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DISubroutineType(types: !2186)
!2186 = !{!2177, !2177}
!2187 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2181, file: !2174, line: 112, baseType: !2188, size: 64, offset: 64)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DISubroutineType(types: !2190)
!2190 = !{null, !2177}
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2181, file: !2174, line: 113, baseType: !2192, size: 64, offset: 128)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2193, size: 64)
!2193 = !DISubroutineType(types: !2194)
!2194 = !{!1267, !2195}
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2181, file: !2174, line: 114, baseType: !2198, size: 64, offset: 192)
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{!1658, !2195, !2201}
!2201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2202, size: 64)
!2202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !402)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2181, file: !2174, line: 116, baseType: !2204, size: 64, offset: 256)
!2204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2205, size: 64)
!2205 = !DISubroutineType(types: !2206)
!2206 = !{!1267, !2195, !77}
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2181, file: !2174, line: 118, baseType: !2208, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2209, size: 64)
!2209 = !DISubroutineType(types: !2210)
!2210 = !{!109, !2195, !77, !7, !65, !490}
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2181, file: !2174, line: 123, baseType: !2212, size: 64, offset: 384)
!2212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2213, size: 64)
!2213 = !DISubroutineType(types: !2214)
!2214 = !{!109, !2195, !77, !2215, !490}
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !77, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2181, file: !2174, line: 126, baseType: !2217, size: 64, offset: 448)
!2217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2218, size: 64)
!2218 = !DISubroutineType(types: !2219)
!2219 = !{!77, !2195}
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2181, file: !2174, line: 127, baseType: !2217, size: 64, offset: 512)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2181, file: !2174, line: 128, baseType: !2222, size: 64, offset: 576)
!2222 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2223, size: 64)
!2223 = !DISubroutineType(types: !2224)
!2224 = !{!2177, !2195}
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2181, file: !2174, line: 130, baseType: !2226, size: 64, offset: 640)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{!2177, !2195, !2177}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2181, file: !2174, line: 133, baseType: !2230, size: 64, offset: 704)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!2177, !2195, !77}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2181, file: !2174, line: 135, baseType: !2234, size: 64, offset: 768)
!2234 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2235, size: 64)
!2235 = !DISubroutineType(types: !2236)
!2236 = !{!109, !2195, !77, !77, !7, !7, !2237}
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2174, line: 43, size: 640, elements: !2239)
!2239 = !{!2240, !2241, !2242}
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2238, file: !2174, line: 44, baseType: !2177, size: 64)
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2238, file: !2174, line: 45, baseType: !7, size: 32, offset: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2238, file: !2174, line: 46, baseType: !2243, size: 512, offset: 128)
!2243 = !DICompositeType(tag: DW_TAG_array_type, baseType: !560, size: 512, elements: !804)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2181, file: !2174, line: 140, baseType: !2226, size: 64, offset: 832)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2181, file: !2174, line: 143, baseType: !2222, size: 64, offset: 896)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2181, file: !2174, line: 145, baseType: !2184, size: 64, offset: 960)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2181, file: !2174, line: 146, baseType: !2248, size: 64, offset: 1024)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!109, !2195, !2251}
!2251 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2252, size: 64)
!2252 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2174, line: 29, size: 128, elements: !2253)
!2253 = !{!2254, !2255, !2256}
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2252, file: !2174, line: 30, baseType: !7, size: 32)
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2252, file: !2174, line: 31, baseType: !7, size: 32, offset: 32)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2252, file: !2174, line: 32, baseType: !2195, size: 64, offset: 64)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2181, file: !2174, line: 148, baseType: !2258, size: 64, offset: 1088)
!2258 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2259, size: 64)
!2259 = !DISubroutineType(types: !2260)
!2260 = !{!109, !2195, !401}
!2261 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2173, file: !2174, line: 20, baseType: !401, size: 64, offset: 128)
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2165, file: !2166, line: 57, baseType: !2263, size: 64, offset: 384)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2166, line: 31, size: 704, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2269, !2270}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2264, file: !2166, line: 32, baseType: !444, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2264, file: !2166, line: 33, baseType: !109, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2264, file: !2166, line: 34, baseType: !65, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2264, file: !2166, line: 35, baseType: !2263, size: 64, offset: 192)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2264, file: !2166, line: 43, baseType: !511, size: 448, offset: 256)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2165, file: !2166, line: 58, baseType: !2263, size: 64, offset: 448)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2165, file: !2166, line: 59, baseType: !2164, size: 64, offset: 512)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2165, file: !2166, line: 60, baseType: !2164, size: 64, offset: 576)
!2274 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2165, file: !2166, line: 61, baseType: !2164, size: 64, offset: 640)
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2165, file: !2166, line: 63, baseType: !405, size: 512, offset: 704)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2165, file: !2166, line: 65, baseType: !126, size: 64, offset: 1216)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2165, file: !2166, line: 66, baseType: !65, size: 64, offset: 1280)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !402, file: !30, line: 529, baseType: !2177, size: 64, offset: 4928)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !402, file: !30, line: 534, baseType: !2280, size: 32, offset: 4992)
!2280 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !64, line: 16, baseType: !2281)
!2281 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !64, line: 13, baseType: !698)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !402, file: !30, line: 535, baseType: !698, size: 32, offset: 5024)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !402, file: !30, line: 537, baseType: !229, offset: 5056)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !402, file: !30, line: 538, baseType: !71, size: 128, offset: 5056)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !402, file: !30, line: 540, baseType: !2286, size: 64, offset: 5184)
!2286 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2287, size: 64)
!2287 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2288, line: 54, size: 960, elements: !2289)
!2288 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !{!2290, !2291, !2292, !2293, !2294, !2295, !2296, !2300, !2304, !2305, !2306, !2307, !2311, !2315, !2316}
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2287, file: !2288, line: 55, baseType: !77, size: 64)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2287, file: !2288, line: 56, baseType: !1930, size: 64, offset: 64)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2287, file: !2288, line: 58, baseType: !496, size: 64, offset: 128)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2287, file: !2288, line: 59, baseType: !496, size: 64, offset: 192)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2287, file: !2288, line: 60, baseType: !411, size: 64, offset: 256)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2287, file: !2288, line: 62, baseType: !1866, size: 64, offset: 320)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2287, file: !2288, line: 63, baseType: !2297, size: 64, offset: 384)
!2297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2298, size: 64)
!2298 = !DISubroutineType(types: !2299)
!2299 = !{!444, !401, !1873}
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2287, file: !2288, line: 65, baseType: !2301, size: 64, offset: 448)
!2301 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2302, size: 64)
!2302 = !DISubroutineType(types: !2303)
!2303 = !{null, !2286}
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2287, file: !2288, line: 66, baseType: !1875, size: 64, offset: 512)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2287, file: !2288, line: 68, baseType: !1884, size: 64, offset: 576)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2287, file: !2288, line: 70, baseType: !1641, size: 64, offset: 640)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2287, file: !2288, line: 71, baseType: !2308, size: 64, offset: 704)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!1658, !401}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2287, file: !2288, line: 73, baseType: !2312, size: 64, offset: 768)
!2312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2313, size: 64)
!2313 = !DISubroutineType(types: !2314)
!2314 = !{null, !401, !1678, !1684}
!2315 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2287, file: !2288, line: 75, baseType: !1879, size: 64, offset: 832)
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2287, file: !2288, line: 77, baseType: !2000, size: 64, offset: 896)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !402, file: !30, line: 541, baseType: !496, size: 64, offset: 5248)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !402, file: !30, line: 543, baseType: !1875, size: 64, offset: 5312)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !402, file: !30, line: 544, baseType: !2320, size: 64, offset: 5376)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !402, file: !30, line: 545, baseType: !2323, size: 64, offset: 5440)
!2323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2324, size: 64)
!2324 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2325 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !402, file: !30, line: 547, baseType: !1267, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !402, file: !30, line: 548, baseType: !1267, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !402, file: !30, line: 549, baseType: !1267, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !402, file: !30, line: 550, baseType: !1267, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2329 = !DILocalVariable(name: "dev", arg: 1, scope: !398, file: !3, line: 86, type: !401)
!2330 = !DILocation(line: 86, column: 49, scope: !398)
!2331 = !DILocalVariable(name: "dev_id", arg: 2, scope: !398, file: !3, line: 86, type: !77)
!2332 = !DILocation(line: 86, column: 66, scope: !398)
!2333 = !DILocalVariable(name: "con_id", arg: 3, scope: !398, file: !3, line: 87, type: !77)
!2334 = !DILocation(line: 87, column: 18, scope: !398)
!2335 = !DILocalVariable(name: "hw", scope: !398, file: !3, line: 89, type: !86)
!2336 = !DILocation(line: 89, column: 17, scope: !398)
!2337 = !DILocation(line: 89, column: 34, scope: !398)
!2338 = !DILocation(line: 89, column: 42, scope: !398)
!2339 = !DILocation(line: 89, column: 22, scope: !398)
!2340 = !DILocation(line: 91, column: 27, scope: !398)
!2341 = !DILocation(line: 91, column: 32, scope: !398)
!2342 = !DILocation(line: 91, column: 36, scope: !398)
!2343 = !DILocation(line: 91, column: 44, scope: !398)
!2344 = !DILocation(line: 91, column: 9, scope: !398)
!2345 = !DILocation(line: 91, column: 2, scope: !398)
!2346 = distinct !DISubprogram(name: "clk_get", scope: !3, file: !3, line: 100, type: !2347, scopeLine: 101, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2347 = !DISubroutineType(types: !2348)
!2348 = !{!82, !401, !77}
!2349 = !DILocalVariable(name: "dev", arg: 1, scope: !2346, file: !3, line: 100, type: !401)
!2350 = !DILocation(line: 100, column: 36, scope: !2346)
!2351 = !DILocalVariable(name: "con_id", arg: 2, scope: !2346, file: !3, line: 100, type: !77)
!2352 = !DILocation(line: 100, column: 53, scope: !2346)
!2353 = !DILocalVariable(name: "dev_id", scope: !2346, file: !3, line: 102, type: !77)
!2354 = !DILocation(line: 102, column: 14, scope: !2346)
!2355 = !DILocation(line: 102, column: 23, scope: !2346)
!2356 = !DILocation(line: 102, column: 38, scope: !2346)
!2357 = !DILocation(line: 102, column: 29, scope: !2346)
!2358 = !DILocalVariable(name: "hw", scope: !2346, file: !3, line: 103, type: !86)
!2359 = !DILocation(line: 103, column: 17, scope: !2346)
!2360 = !DILocation(line: 105, column: 6, scope: !2361)
!2361 = distinct !DILexicalBlock(scope: !2346, file: !3, line: 105, column: 6)
!2362 = !DILocation(line: 105, column: 10, scope: !2361)
!2363 = !DILocation(line: 105, column: 13, scope: !2361)
!2364 = !DILocation(line: 105, column: 18, scope: !2361)
!2365 = !DILocation(line: 105, column: 6, scope: !2346)
!2366 = !DILocation(line: 106, column: 22, scope: !2367)
!2367 = distinct !DILexicalBlock(scope: !2361, file: !3, line: 105, column: 27)
!2368 = !DILocation(line: 106, column: 27, scope: !2367)
!2369 = !DILocation(line: 106, column: 39, scope: !2367)
!2370 = !DILocation(line: 106, column: 8, scope: !2367)
!2371 = !DILocation(line: 106, column: 6, scope: !2367)
!2372 = !DILocation(line: 107, column: 15, scope: !2373)
!2373 = distinct !DILexicalBlock(scope: !2367, file: !3, line: 107, column: 7)
!2374 = !DILocation(line: 107, column: 8, scope: !2373)
!2375 = !DILocation(line: 107, column: 19, scope: !2373)
!2376 = !DILocation(line: 107, column: 30, scope: !2373)
!2377 = !DILocation(line: 107, column: 22, scope: !2373)
!2378 = !DILocation(line: 107, column: 34, scope: !2373)
!2379 = !DILocation(line: 107, column: 7, scope: !2367)
!2380 = !DILocation(line: 108, column: 29, scope: !2373)
!2381 = !DILocation(line: 108, column: 34, scope: !2373)
!2382 = !DILocation(line: 108, column: 38, scope: !2373)
!2383 = !DILocation(line: 108, column: 46, scope: !2373)
!2384 = !DILocation(line: 108, column: 11, scope: !2373)
!2385 = !DILocation(line: 108, column: 4, scope: !2373)
!2386 = !DILocation(line: 109, column: 2, scope: !2367)
!2387 = !DILocation(line: 111, column: 23, scope: !2346)
!2388 = !DILocation(line: 111, column: 28, scope: !2346)
!2389 = !DILocation(line: 111, column: 36, scope: !2346)
!2390 = !DILocation(line: 111, column: 9, scope: !2346)
!2391 = !DILocation(line: 111, column: 2, scope: !2346)
!2392 = !DILocation(line: 112, column: 1, scope: !2346)
!2393 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !2394, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2394 = !DISubroutineType(types: !2395)
!2395 = !{!77, !2201}
!2396 = !DILocalVariable(name: "dev", arg: 1, scope: !2393, file: !30, line: 609, type: !2201)
!2397 = !DILocation(line: 609, column: 57, scope: !2393)
!2398 = !DILocation(line: 612, column: 6, scope: !2399)
!2399 = distinct !DILexicalBlock(scope: !2393, file: !30, line: 612, column: 6)
!2400 = !DILocation(line: 612, column: 11, scope: !2399)
!2401 = !DILocation(line: 612, column: 6, scope: !2393)
!2402 = !DILocation(line: 613, column: 10, scope: !2399)
!2403 = !DILocation(line: 613, column: 15, scope: !2399)
!2404 = !DILocation(line: 613, column: 3, scope: !2399)
!2405 = !DILocation(line: 615, column: 23, scope: !2393)
!2406 = !DILocation(line: 615, column: 28, scope: !2393)
!2407 = !DILocation(line: 615, column: 9, scope: !2393)
!2408 = !DILocation(line: 615, column: 2, scope: !2393)
!2409 = !DILocation(line: 616, column: 1, scope: !2393)
!2410 = distinct !DISubprogram(name: "IS_ERR", scope: !278, file: !278, line: 34, type: !2411, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2411 = !DISubroutineType(types: !2412)
!2412 = !{!1267, !1658}
!2413 = !DILocalVariable(name: "ptr", arg: 1, scope: !2410, file: !278, line: 34, type: !1658)
!2414 = !DILocation(line: 34, column: 60, scope: !2410)
!2415 = !DILocation(line: 36, column: 9, scope: !2410)
!2416 = !DILocation(line: 36, column: 2, scope: !2410)
!2417 = distinct !DISubprogram(name: "PTR_ERR", scope: !278, file: !278, line: 29, type: !2418, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2418 = !DISubroutineType(types: !2419)
!2419 = !{!131, !1658}
!2420 = !DILocalVariable(name: "ptr", arg: 1, scope: !2417, file: !278, line: 29, type: !1658)
!2421 = !DILocation(line: 29, column: 61, scope: !2417)
!2422 = !DILocation(line: 31, column: 16, scope: !2417)
!2423 = !DILocation(line: 31, column: 9, scope: !2417)
!2424 = !DILocation(line: 31, column: 2, scope: !2417)
!2425 = distinct !DISubprogram(name: "clk_put", scope: !3, file: !3, line: 115, type: !2426, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{null, !82}
!2428 = !DILocalVariable(name: "clk", arg: 1, scope: !2425, file: !3, line: 115, type: !82)
!2429 = !DILocation(line: 115, column: 26, scope: !2425)
!2430 = !DILocation(line: 117, column: 12, scope: !2425)
!2431 = !DILocation(line: 117, column: 2, scope: !2425)
!2432 = !DILocation(line: 118, column: 1, scope: !2425)
!2433 = distinct !DISubprogram(name: "clkdev_add", scope: !3, file: !3, line: 128, type: !2434, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !66}
!2436 = !DILocalVariable(name: "cl", arg: 1, scope: !2433, file: !3, line: 128, type: !66)
!2437 = !DILocation(line: 128, column: 36, scope: !2433)
!2438 = !DILocation(line: 130, column: 7, scope: !2439)
!2439 = distinct !DILexicalBlock(scope: !2433, file: !3, line: 130, column: 6)
!2440 = !DILocation(line: 130, column: 11, scope: !2439)
!2441 = !DILocation(line: 130, column: 6, scope: !2433)
!2442 = !DILocation(line: 131, column: 29, scope: !2439)
!2443 = !DILocation(line: 131, column: 33, scope: !2439)
!2444 = !DILocation(line: 131, column: 16, scope: !2439)
!2445 = !DILocation(line: 131, column: 3, scope: !2439)
!2446 = !DILocation(line: 131, column: 7, scope: !2439)
!2447 = !DILocation(line: 131, column: 14, scope: !2439)
!2448 = !DILocation(line: 132, column: 15, scope: !2433)
!2449 = !DILocation(line: 132, column: 2, scope: !2433)
!2450 = !DILocation(line: 133, column: 1, scope: !2433)
!2451 = distinct !DISubprogram(name: "__clkdev_add", scope: !3, file: !3, line: 121, type: !2434, scopeLine: 122, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2452 = !DILocalVariable(name: "cl", arg: 1, scope: !2451, file: !3, line: 121, type: !66)
!2453 = !DILocation(line: 121, column: 45, scope: !2451)
!2454 = !DILocation(line: 123, column: 2, scope: !2451)
!2455 = !DILocation(line: 124, column: 17, scope: !2451)
!2456 = !DILocation(line: 124, column: 21, scope: !2451)
!2457 = !DILocation(line: 124, column: 2, scope: !2451)
!2458 = !DILocation(line: 125, column: 2, scope: !2451)
!2459 = !DILocation(line: 126, column: 1, scope: !2451)
!2460 = distinct !DISubprogram(name: "clkdev_add_table", scope: !3, file: !3, line: 136, type: !2461, scopeLine: 137, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2461 = !DISubroutineType(types: !2462)
!2462 = !{null, !66, !490}
!2463 = !DILocalVariable(name: "cl", arg: 1, scope: !2460, file: !3, line: 136, type: !66)
!2464 = !DILocation(line: 136, column: 42, scope: !2460)
!2465 = !DILocalVariable(name: "num", arg: 2, scope: !2460, file: !3, line: 136, type: !490)
!2466 = !DILocation(line: 136, column: 53, scope: !2460)
!2467 = !DILocation(line: 138, column: 2, scope: !2460)
!2468 = !DILocation(line: 139, column: 2, scope: !2460)
!2469 = !DILocation(line: 139, column: 12, scope: !2460)
!2470 = !DILocation(line: 140, column: 29, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2460, file: !3, line: 139, column: 16)
!2472 = !DILocation(line: 140, column: 33, scope: !2471)
!2473 = !DILocation(line: 140, column: 16, scope: !2471)
!2474 = !DILocation(line: 140, column: 3, scope: !2471)
!2475 = !DILocation(line: 140, column: 7, scope: !2471)
!2476 = !DILocation(line: 140, column: 14, scope: !2471)
!2477 = !DILocation(line: 141, column: 18, scope: !2471)
!2478 = !DILocation(line: 141, column: 22, scope: !2471)
!2479 = !DILocation(line: 141, column: 3, scope: !2471)
!2480 = !DILocation(line: 142, column: 5, scope: !2471)
!2481 = distinct !{!2481, !2468, !2482}
!2482 = !DILocation(line: 143, column: 2, scope: !2460)
!2483 = !DILocation(line: 144, column: 2, scope: !2460)
!2484 = !DILocation(line: 145, column: 1, scope: !2460)
!2485 = distinct !DISubprogram(name: "list_add_tail", scope: !2486, file: !2486, line: 98, type: !2487, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2486 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!2487 = !DISubroutineType(types: !2488)
!2488 = !{null, !74, !74}
!2489 = !DILocalVariable(name: "new", arg: 1, scope: !2485, file: !2486, line: 98, type: !74)
!2490 = !DILocation(line: 98, column: 52, scope: !2485)
!2491 = !DILocalVariable(name: "head", arg: 2, scope: !2485, file: !2486, line: 98, type: !74)
!2492 = !DILocation(line: 98, column: 75, scope: !2485)
!2493 = !DILocation(line: 100, column: 13, scope: !2485)
!2494 = !DILocation(line: 100, column: 18, scope: !2485)
!2495 = !DILocation(line: 100, column: 24, scope: !2485)
!2496 = !DILocation(line: 100, column: 30, scope: !2485)
!2497 = !DILocation(line: 100, column: 2, scope: !2485)
!2498 = !DILocation(line: 101, column: 1, scope: !2485)
!2499 = distinct !DISubprogram(name: "clkdev_alloc", scope: !3, file: !3, line: 194, type: !2500, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2500 = !DISubroutineType(types: !2501)
!2501 = !{!66, !82, !77, !77, null}
!2502 = !DILocalVariable(name: "clk", arg: 1, scope: !2499, file: !3, line: 194, type: !82)
!2503 = !DILocation(line: 194, column: 26, scope: !2499)
!2504 = !DILocalVariable(name: "con_id", arg: 2, scope: !2499, file: !3, line: 194, type: !77)
!2505 = !DILocation(line: 194, column: 43, scope: !2499)
!2506 = !DILocalVariable(name: "dev_fmt", arg: 3, scope: !2499, file: !3, line: 194, type: !77)
!2507 = !DILocation(line: 194, column: 63, scope: !2499)
!2508 = !DILocalVariable(name: "cl", scope: !2499, file: !3, line: 196, type: !66)
!2509 = !DILocation(line: 196, column: 21, scope: !2499)
!2510 = !DILocalVariable(name: "ap", scope: !2499, file: !3, line: 197, type: !2511)
!2511 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2512, line: 99, baseType: !2513)
!2512 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!2513 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2512, line: 40, baseType: !2514)
!2514 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 197, baseType: !2515)
!2515 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2516, size: 192, elements: !852)
!2516 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 197, size: 192, elements: !2517)
!2517 = !{!2518, !2519, !2520, !2521}
!2518 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2516, file: !3, line: 197, baseType: !7, size: 32)
!2519 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2516, file: !3, line: 197, baseType: !7, size: 32, offset: 32)
!2520 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2516, file: !3, line: 197, baseType: !65, size: 64, offset: 64)
!2521 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2516, file: !3, line: 197, baseType: !65, size: 64, offset: 128)
!2522 = !DILocation(line: 197, column: 10, scope: !2499)
!2523 = !DILocation(line: 199, column: 2, scope: !2499)
!2524 = !DILocation(line: 200, column: 34, scope: !2499)
!2525 = !DILocation(line: 200, column: 21, scope: !2499)
!2526 = !DILocation(line: 200, column: 40, scope: !2499)
!2527 = !DILocation(line: 200, column: 48, scope: !2499)
!2528 = !DILocation(line: 200, column: 57, scope: !2499)
!2529 = !DILocation(line: 200, column: 7, scope: !2499)
!2530 = !DILocation(line: 200, column: 5, scope: !2499)
!2531 = !DILocation(line: 201, column: 2, scope: !2499)
!2532 = !DILocation(line: 203, column: 9, scope: !2499)
!2533 = !DILocation(line: 203, column: 2, scope: !2499)
!2534 = distinct !DISubprogram(name: "vclkdev_alloc", scope: !3, file: !3, line: 157, type: !2535, scopeLine: 159, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2535 = !DISubroutineType(types: !2536)
!2536 = !{!66, !86, !77, !77, !2537}
!2537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2516, size: 64)
!2538 = !DILocalVariable(name: "hw", arg: 1, scope: !2534, file: !3, line: 157, type: !86)
!2539 = !DILocation(line: 157, column: 30, scope: !2534)
!2540 = !DILocalVariable(name: "con_id", arg: 2, scope: !2534, file: !3, line: 157, type: !77)
!2541 = !DILocation(line: 157, column: 46, scope: !2534)
!2542 = !DILocalVariable(name: "dev_fmt", arg: 3, scope: !2534, file: !3, line: 157, type: !77)
!2543 = !DILocation(line: 157, column: 66, scope: !2534)
!2544 = !DILocalVariable(name: "ap", arg: 4, scope: !2534, file: !3, line: 158, type: !2537)
!2545 = !DILocation(line: 158, column: 10, scope: !2534)
!2546 = !DILocalVariable(name: "cla", scope: !2534, file: !3, line: 160, type: !2547)
!2547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2548, size: 64)
!2548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_lookup_alloc", file: !3, line: 150, size: 704, elements: !2549)
!2549 = !{!2550, !2551, !2553}
!2550 = !DIDerivedType(tag: DW_TAG_member, name: "cl", scope: !2548, file: !3, line: 151, baseType: !67, size: 384)
!2551 = !DIDerivedType(tag: DW_TAG_member, name: "dev_id", scope: !2548, file: !3, line: 152, baseType: !2552, size: 160, offset: 384)
!2552 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 160, elements: !1458)
!2553 = !DIDerivedType(tag: DW_TAG_member, name: "con_id", scope: !2548, file: !3, line: 153, baseType: !1057, size: 128, offset: 544)
!2554 = !DILocation(line: 160, column: 27, scope: !2534)
!2555 = !DILocation(line: 162, column: 8, scope: !2534)
!2556 = !DILocation(line: 162, column: 6, scope: !2534)
!2557 = !DILocation(line: 163, column: 7, scope: !2558)
!2558 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 163, column: 6)
!2559 = !DILocation(line: 163, column: 6, scope: !2534)
!2560 = !DILocation(line: 164, column: 3, scope: !2558)
!2561 = !DILocation(line: 166, column: 19, scope: !2534)
!2562 = !DILocation(line: 166, column: 2, scope: !2534)
!2563 = !DILocation(line: 166, column: 7, scope: !2534)
!2564 = !DILocation(line: 166, column: 10, scope: !2534)
!2565 = !DILocation(line: 166, column: 17, scope: !2534)
!2566 = !DILocation(line: 167, column: 6, scope: !2567)
!2567 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 167, column: 6)
!2568 = !DILocation(line: 167, column: 6, scope: !2534)
!2569 = !DILocation(line: 168, column: 11, scope: !2570)
!2570 = distinct !DILexicalBlock(scope: !2567, file: !3, line: 167, column: 14)
!2571 = !DILocation(line: 168, column: 16, scope: !2570)
!2572 = !DILocation(line: 168, column: 24, scope: !2570)
!2573 = !DILocation(line: 168, column: 3, scope: !2570)
!2574 = !DILocation(line: 169, column: 20, scope: !2570)
!2575 = !DILocation(line: 169, column: 25, scope: !2570)
!2576 = !DILocation(line: 169, column: 3, scope: !2570)
!2577 = !DILocation(line: 169, column: 8, scope: !2570)
!2578 = !DILocation(line: 169, column: 11, scope: !2570)
!2579 = !DILocation(line: 169, column: 18, scope: !2570)
!2580 = !DILocation(line: 170, column: 2, scope: !2570)
!2581 = !DILocation(line: 172, column: 6, scope: !2582)
!2582 = distinct !DILexicalBlock(scope: !2534, file: !3, line: 172, column: 6)
!2583 = !DILocation(line: 172, column: 6, scope: !2534)
!2584 = !DILocation(line: 173, column: 14, scope: !2585)
!2585 = distinct !DILexicalBlock(scope: !2582, file: !3, line: 172, column: 15)
!2586 = !DILocation(line: 173, column: 19, scope: !2585)
!2587 = !DILocation(line: 173, column: 48, scope: !2585)
!2588 = !DILocation(line: 173, column: 57, scope: !2585)
!2589 = !DILocation(line: 173, column: 3, scope: !2585)
!2590 = !DILocation(line: 174, column: 20, scope: !2585)
!2591 = !DILocation(line: 174, column: 25, scope: !2585)
!2592 = !DILocation(line: 174, column: 3, scope: !2585)
!2593 = !DILocation(line: 174, column: 8, scope: !2585)
!2594 = !DILocation(line: 174, column: 11, scope: !2585)
!2595 = !DILocation(line: 174, column: 18, scope: !2585)
!2596 = !DILocation(line: 175, column: 2, scope: !2585)
!2597 = !DILocation(line: 177, column: 10, scope: !2534)
!2598 = !DILocation(line: 177, column: 15, scope: !2534)
!2599 = !DILocation(line: 177, column: 2, scope: !2534)
!2600 = !DILocation(line: 178, column: 1, scope: !2534)
!2601 = distinct !DISubprogram(name: "clkdev_hw_alloc", scope: !3, file: !3, line: 208, type: !2602, scopeLine: 209, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{!66, !86, !77, !77, null}
!2604 = !DILocalVariable(name: "hw", arg: 1, scope: !2601, file: !3, line: 208, type: !86)
!2605 = !DILocation(line: 208, column: 32, scope: !2601)
!2606 = !DILocalVariable(name: "con_id", arg: 2, scope: !2601, file: !3, line: 208, type: !77)
!2607 = !DILocation(line: 208, column: 48, scope: !2601)
!2608 = !DILocalVariable(name: "dev_fmt", arg: 3, scope: !2601, file: !3, line: 208, type: !77)
!2609 = !DILocation(line: 208, column: 68, scope: !2601)
!2610 = !DILocalVariable(name: "cl", scope: !2601, file: !3, line: 210, type: !66)
!2611 = !DILocation(line: 210, column: 21, scope: !2601)
!2612 = !DILocalVariable(name: "ap", scope: !2601, file: !3, line: 211, type: !2511)
!2613 = !DILocation(line: 211, column: 10, scope: !2601)
!2614 = !DILocation(line: 213, column: 2, scope: !2601)
!2615 = !DILocation(line: 214, column: 21, scope: !2601)
!2616 = !DILocation(line: 214, column: 25, scope: !2601)
!2617 = !DILocation(line: 214, column: 33, scope: !2601)
!2618 = !DILocation(line: 214, column: 42, scope: !2601)
!2619 = !DILocation(line: 214, column: 7, scope: !2601)
!2620 = !DILocation(line: 214, column: 5, scope: !2601)
!2621 = !DILocation(line: 215, column: 2, scope: !2601)
!2622 = !DILocation(line: 217, column: 9, scope: !2601)
!2623 = !DILocation(line: 217, column: 2, scope: !2601)
!2624 = distinct !DISubprogram(name: "clkdev_create", scope: !3, file: !3, line: 230, type: !2500, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2625 = !DILocalVariable(name: "clk", arg: 1, scope: !2624, file: !3, line: 230, type: !82)
!2626 = !DILocation(line: 230, column: 46, scope: !2624)
!2627 = !DILocalVariable(name: "con_id", arg: 2, scope: !2624, file: !3, line: 230, type: !77)
!2628 = !DILocation(line: 230, column: 63, scope: !2624)
!2629 = !DILocalVariable(name: "dev_fmt", arg: 3, scope: !2624, file: !3, line: 231, type: !77)
!2630 = !DILocation(line: 231, column: 14, scope: !2624)
!2631 = !DILocalVariable(name: "cl", scope: !2624, file: !3, line: 233, type: !66)
!2632 = !DILocation(line: 233, column: 21, scope: !2624)
!2633 = !DILocalVariable(name: "ap", scope: !2624, file: !3, line: 234, type: !2511)
!2634 = !DILocation(line: 234, column: 10, scope: !2624)
!2635 = !DILocation(line: 236, column: 2, scope: !2624)
!2636 = !DILocation(line: 237, column: 35, scope: !2624)
!2637 = !DILocation(line: 237, column: 22, scope: !2624)
!2638 = !DILocation(line: 237, column: 41, scope: !2624)
!2639 = !DILocation(line: 237, column: 49, scope: !2624)
!2640 = !DILocation(line: 237, column: 58, scope: !2624)
!2641 = !DILocation(line: 237, column: 7, scope: !2624)
!2642 = !DILocation(line: 237, column: 5, scope: !2624)
!2643 = !DILocation(line: 238, column: 2, scope: !2624)
!2644 = !DILocation(line: 240, column: 9, scope: !2624)
!2645 = !DILocation(line: 240, column: 2, scope: !2624)
!2646 = distinct !DISubprogram(name: "vclkdev_create", scope: !3, file: !3, line: 181, type: !2535, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2647 = !DILocalVariable(name: "hw", arg: 1, scope: !2646, file: !3, line: 181, type: !86)
!2648 = !DILocation(line: 181, column: 31, scope: !2646)
!2649 = !DILocalVariable(name: "con_id", arg: 2, scope: !2646, file: !3, line: 181, type: !77)
!2650 = !DILocation(line: 181, column: 47, scope: !2646)
!2651 = !DILocalVariable(name: "dev_fmt", arg: 3, scope: !2646, file: !3, line: 181, type: !77)
!2652 = !DILocation(line: 181, column: 67, scope: !2646)
!2653 = !DILocalVariable(name: "ap", arg: 4, scope: !2646, file: !3, line: 182, type: !2537)
!2654 = !DILocation(line: 182, column: 10, scope: !2646)
!2655 = !DILocalVariable(name: "cl", scope: !2646, file: !3, line: 184, type: !66)
!2656 = !DILocation(line: 184, column: 21, scope: !2646)
!2657 = !DILocation(line: 186, column: 21, scope: !2646)
!2658 = !DILocation(line: 186, column: 25, scope: !2646)
!2659 = !DILocation(line: 186, column: 33, scope: !2646)
!2660 = !DILocation(line: 186, column: 42, scope: !2646)
!2661 = !DILocation(line: 186, column: 7, scope: !2646)
!2662 = !DILocation(line: 186, column: 5, scope: !2646)
!2663 = !DILocation(line: 187, column: 6, scope: !2664)
!2664 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 187, column: 6)
!2665 = !DILocation(line: 187, column: 6, scope: !2646)
!2666 = !DILocation(line: 188, column: 16, scope: !2664)
!2667 = !DILocation(line: 188, column: 3, scope: !2664)
!2668 = !DILocation(line: 190, column: 9, scope: !2646)
!2669 = !DILocation(line: 190, column: 2, scope: !2646)
!2670 = distinct !DISubprogram(name: "clkdev_hw_create", scope: !3, file: !3, line: 253, type: !2602, scopeLine: 255, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2671 = !DILocalVariable(name: "hw", arg: 1, scope: !2670, file: !3, line: 253, type: !86)
!2672 = !DILocation(line: 253, column: 52, scope: !2670)
!2673 = !DILocalVariable(name: "con_id", arg: 2, scope: !2670, file: !3, line: 253, type: !77)
!2674 = !DILocation(line: 253, column: 68, scope: !2670)
!2675 = !DILocalVariable(name: "dev_fmt", arg: 3, scope: !2670, file: !3, line: 254, type: !77)
!2676 = !DILocation(line: 254, column: 14, scope: !2670)
!2677 = !DILocalVariable(name: "cl", scope: !2670, file: !3, line: 256, type: !66)
!2678 = !DILocation(line: 256, column: 21, scope: !2670)
!2679 = !DILocalVariable(name: "ap", scope: !2670, file: !3, line: 257, type: !2511)
!2680 = !DILocation(line: 257, column: 10, scope: !2670)
!2681 = !DILocation(line: 259, column: 2, scope: !2670)
!2682 = !DILocation(line: 260, column: 22, scope: !2670)
!2683 = !DILocation(line: 260, column: 26, scope: !2670)
!2684 = !DILocation(line: 260, column: 34, scope: !2670)
!2685 = !DILocation(line: 260, column: 43, scope: !2670)
!2686 = !DILocation(line: 260, column: 7, scope: !2670)
!2687 = !DILocation(line: 260, column: 5, scope: !2670)
!2688 = !DILocation(line: 261, column: 2, scope: !2670)
!2689 = !DILocation(line: 263, column: 9, scope: !2670)
!2690 = !DILocation(line: 263, column: 2, scope: !2670)
!2691 = distinct !DISubprogram(name: "clk_add_alias", scope: !3, file: !3, line: 267, type: !2692, scopeLine: 269, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2692 = !DISubroutineType(types: !2693)
!2693 = !{!109, !77, !77, !77, !401}
!2694 = !DILocalVariable(name: "alias", arg: 1, scope: !2691, file: !3, line: 267, type: !77)
!2695 = !DILocation(line: 267, column: 31, scope: !2691)
!2696 = !DILocalVariable(name: "alias_dev_name", arg: 2, scope: !2691, file: !3, line: 267, type: !77)
!2697 = !DILocation(line: 267, column: 50, scope: !2691)
!2698 = !DILocalVariable(name: "con_id", arg: 3, scope: !2691, file: !3, line: 268, type: !77)
!2699 = !DILocation(line: 268, column: 14, scope: !2691)
!2700 = !DILocalVariable(name: "dev", arg: 4, scope: !2691, file: !3, line: 268, type: !401)
!2701 = !DILocation(line: 268, column: 37, scope: !2691)
!2702 = !DILocalVariable(name: "r", scope: !2691, file: !3, line: 270, type: !82)
!2703 = !DILocation(line: 270, column: 14, scope: !2691)
!2704 = !DILocation(line: 270, column: 26, scope: !2691)
!2705 = !DILocation(line: 270, column: 31, scope: !2691)
!2706 = !DILocation(line: 270, column: 18, scope: !2691)
!2707 = !DILocalVariable(name: "l", scope: !2691, file: !3, line: 271, type: !66)
!2708 = !DILocation(line: 271, column: 21, scope: !2691)
!2709 = !DILocation(line: 273, column: 13, scope: !2710)
!2710 = distinct !DILexicalBlock(scope: !2691, file: !3, line: 273, column: 6)
!2711 = !DILocation(line: 273, column: 6, scope: !2710)
!2712 = !DILocation(line: 273, column: 6, scope: !2691)
!2713 = !DILocation(line: 274, column: 18, scope: !2710)
!2714 = !DILocation(line: 274, column: 10, scope: !2710)
!2715 = !DILocation(line: 274, column: 3, scope: !2710)
!2716 = !DILocation(line: 276, column: 20, scope: !2691)
!2717 = !DILocation(line: 276, column: 23, scope: !2691)
!2718 = !DILocation(line: 276, column: 30, scope: !2691)
!2719 = !DILocation(line: 277, column: 6, scope: !2691)
!2720 = !DILocation(line: 276, column: 6, scope: !2691)
!2721 = !DILocation(line: 276, column: 4, scope: !2691)
!2722 = !DILocation(line: 278, column: 10, scope: !2691)
!2723 = !DILocation(line: 278, column: 2, scope: !2691)
!2724 = !DILocation(line: 280, column: 9, scope: !2691)
!2725 = !DILocation(line: 280, column: 2, scope: !2691)
!2726 = !DILocation(line: 281, column: 1, scope: !2691)
!2727 = distinct !DISubprogram(name: "clkdev_drop", scope: !3, file: !3, line: 287, type: !2434, scopeLine: 288, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2728 = !DILocalVariable(name: "cl", arg: 1, scope: !2727, file: !3, line: 287, type: !66)
!2729 = !DILocation(line: 287, column: 37, scope: !2727)
!2730 = !DILocation(line: 289, column: 2, scope: !2727)
!2731 = !DILocation(line: 290, column: 12, scope: !2727)
!2732 = !DILocation(line: 290, column: 16, scope: !2727)
!2733 = !DILocation(line: 290, column: 2, scope: !2727)
!2734 = !DILocation(line: 291, column: 2, scope: !2727)
!2735 = !DILocation(line: 292, column: 8, scope: !2727)
!2736 = !DILocation(line: 292, column: 2, scope: !2727)
!2737 = !DILocation(line: 293, column: 1, scope: !2727)
!2738 = distinct !DISubprogram(name: "list_del", scope: !2486, file: !2486, line: 144, type: !2739, scopeLine: 145, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2739 = !DISubroutineType(types: !2740)
!2740 = !{null, !74}
!2741 = !DILocalVariable(name: "entry", arg: 1, scope: !2738, file: !2486, line: 144, type: !74)
!2742 = !DILocation(line: 144, column: 47, scope: !2738)
!2743 = !DILocation(line: 146, column: 19, scope: !2738)
!2744 = !DILocation(line: 146, column: 2, scope: !2738)
!2745 = !DILocation(line: 147, column: 2, scope: !2738)
!2746 = !DILocation(line: 147, column: 9, scope: !2738)
!2747 = !DILocation(line: 147, column: 14, scope: !2738)
!2748 = !DILocation(line: 148, column: 2, scope: !2738)
!2749 = !DILocation(line: 148, column: 9, scope: !2738)
!2750 = !DILocation(line: 148, column: 14, scope: !2738)
!2751 = !DILocation(line: 149, column: 1, scope: !2738)
!2752 = distinct !DISubprogram(name: "clk_register_clkdev", scope: !3, file: !3, line: 341, type: !2753, scopeLine: 343, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2753 = !DISubroutineType(types: !2754)
!2754 = !{!109, !82, !77, !77}
!2755 = !DILocalVariable(name: "clk", arg: 1, scope: !2752, file: !3, line: 341, type: !82)
!2756 = !DILocation(line: 341, column: 37, scope: !2752)
!2757 = !DILocalVariable(name: "con_id", arg: 2, scope: !2752, file: !3, line: 341, type: !77)
!2758 = !DILocation(line: 341, column: 54, scope: !2752)
!2759 = !DILocalVariable(name: "dev_id", arg: 3, scope: !2752, file: !3, line: 342, type: !77)
!2760 = !DILocation(line: 342, column: 14, scope: !2752)
!2761 = !DILocalVariable(name: "cl", scope: !2752, file: !3, line: 344, type: !66)
!2762 = !DILocation(line: 344, column: 21, scope: !2752)
!2763 = !DILocation(line: 346, column: 13, scope: !2764)
!2764 = distinct !DILexicalBlock(scope: !2752, file: !3, line: 346, column: 6)
!2765 = !DILocation(line: 346, column: 6, scope: !2764)
!2766 = !DILocation(line: 346, column: 6, scope: !2752)
!2767 = !DILocation(line: 347, column: 18, scope: !2764)
!2768 = !DILocation(line: 347, column: 10, scope: !2764)
!2769 = !DILocation(line: 347, column: 3, scope: !2764)
!2770 = !DILocation(line: 349, column: 45, scope: !2752)
!2771 = !DILocation(line: 349, column: 32, scope: !2752)
!2772 = !DILocation(line: 349, column: 56, scope: !2752)
!2773 = !DILocation(line: 350, column: 12, scope: !2752)
!2774 = !DILocation(line: 349, column: 9, scope: !2752)
!2775 = !DILocation(line: 349, column: 2, scope: !2752)
!2776 = !DILocation(line: 351, column: 1, scope: !2752)
!2777 = distinct !DISubprogram(name: "do_clk_register_clkdev", scope: !3, file: !3, line: 310, type: !2778, scopeLine: 312, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2778 = !DISubroutineType(types: !2779)
!2779 = !{!109, !86, !211, !77, !77}
!2780 = !DILocalVariable(name: "hw", arg: 1, scope: !2777, file: !3, line: 310, type: !86)
!2781 = !DILocation(line: 310, column: 50, scope: !2777)
!2782 = !DILocalVariable(name: "cl", arg: 2, scope: !2777, file: !3, line: 311, type: !211)
!2783 = !DILocation(line: 311, column: 22, scope: !2777)
!2784 = !DILocalVariable(name: "con_id", arg: 3, scope: !2777, file: !3, line: 311, type: !77)
!2785 = !DILocation(line: 311, column: 38, scope: !2777)
!2786 = !DILocalVariable(name: "dev_id", arg: 4, scope: !2777, file: !3, line: 311, type: !77)
!2787 = !DILocation(line: 311, column: 58, scope: !2777)
!2788 = !DILocation(line: 313, column: 13, scope: !2789)
!2789 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 313, column: 6)
!2790 = !DILocation(line: 313, column: 6, scope: !2789)
!2791 = !DILocation(line: 313, column: 6, scope: !2777)
!2792 = !DILocation(line: 314, column: 18, scope: !2789)
!2793 = !DILocation(line: 314, column: 10, scope: !2789)
!2794 = !DILocation(line: 314, column: 3, scope: !2789)
!2795 = !DILocation(line: 319, column: 6, scope: !2796)
!2796 = distinct !DILexicalBlock(scope: !2777, file: !3, line: 319, column: 6)
!2797 = !DILocation(line: 319, column: 6, scope: !2777)
!2798 = !DILocation(line: 320, column: 31, scope: !2796)
!2799 = !DILocation(line: 320, column: 35, scope: !2796)
!2800 = !DILocation(line: 320, column: 49, scope: !2796)
!2801 = !DILocation(line: 320, column: 9, scope: !2796)
!2802 = !DILocation(line: 320, column: 4, scope: !2796)
!2803 = !DILocation(line: 320, column: 7, scope: !2796)
!2804 = !DILocation(line: 320, column: 3, scope: !2796)
!2805 = !DILocation(line: 322, column: 31, scope: !2796)
!2806 = !DILocation(line: 322, column: 35, scope: !2796)
!2807 = !DILocation(line: 322, column: 9, scope: !2796)
!2808 = !DILocation(line: 322, column: 4, scope: !2796)
!2809 = !DILocation(line: 322, column: 7, scope: !2796)
!2810 = !DILocation(line: 324, column: 10, scope: !2777)
!2811 = !DILocation(line: 324, column: 9, scope: !2777)
!2812 = !DILocation(line: 324, column: 2, scope: !2777)
!2813 = !DILocation(line: 325, column: 1, scope: !2777)
!2814 = distinct !DISubprogram(name: "clk_hw_register_clkdev", scope: !3, file: !3, line: 368, type: !2815, scopeLine: 370, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2815 = !DISubroutineType(types: !2816)
!2816 = !{!109, !86, !77, !77}
!2817 = !DILocalVariable(name: "hw", arg: 1, scope: !2814, file: !3, line: 368, type: !86)
!2818 = !DILocation(line: 368, column: 43, scope: !2814)
!2819 = !DILocalVariable(name: "con_id", arg: 2, scope: !2814, file: !3, line: 368, type: !77)
!2820 = !DILocation(line: 368, column: 59, scope: !2814)
!2821 = !DILocalVariable(name: "dev_id", arg: 3, scope: !2814, file: !3, line: 369, type: !77)
!2822 = !DILocation(line: 369, column: 14, scope: !2814)
!2823 = !DILocalVariable(name: "cl", scope: !2814, file: !3, line: 371, type: !66)
!2824 = !DILocation(line: 371, column: 21, scope: !2814)
!2825 = !DILocation(line: 373, column: 32, scope: !2814)
!2826 = !DILocation(line: 373, column: 41, scope: !2814)
!2827 = !DILocation(line: 373, column: 49, scope: !2814)
!2828 = !DILocation(line: 373, column: 9, scope: !2814)
!2829 = !DILocation(line: 373, column: 2, scope: !2814)
!2830 = distinct !DISubprogram(name: "devm_clk_release_clkdev", scope: !3, file: !3, line: 399, type: !2831, scopeLine: 401, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2831 = !DISubroutineType(types: !2832)
!2832 = !{null, !401, !77, !77}
!2833 = !DILocalVariable(name: "dev", arg: 1, scope: !2830, file: !3, line: 399, type: !401)
!2834 = !DILocation(line: 399, column: 45, scope: !2830)
!2835 = !DILocalVariable(name: "con_id", arg: 2, scope: !2830, file: !3, line: 399, type: !77)
!2836 = !DILocation(line: 399, column: 62, scope: !2830)
!2837 = !DILocalVariable(name: "dev_id", arg: 3, scope: !2830, file: !3, line: 400, type: !77)
!2838 = !DILocation(line: 400, column: 21, scope: !2830)
!2839 = !DILocalVariable(name: "cl", scope: !2830, file: !3, line: 402, type: !66)
!2840 = !DILocation(line: 402, column: 21, scope: !2830)
!2841 = !DILocalVariable(name: "rval", scope: !2830, file: !3, line: 403, type: !109)
!2842 = !DILocation(line: 403, column: 6, scope: !2830)
!2843 = !DILocation(line: 405, column: 2, scope: !2830)
!2844 = !DILocation(line: 406, column: 16, scope: !2830)
!2845 = !DILocation(line: 406, column: 24, scope: !2830)
!2846 = !DILocation(line: 406, column: 7, scope: !2830)
!2847 = !DILocation(line: 406, column: 5, scope: !2830)
!2848 = !DILocation(line: 407, column: 2, scope: !2830)
!2849 = !DILocalVariable(name: "__ret_warn_on", scope: !2850, file: !3, line: 409, type: !109)
!2850 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 409, column: 2)
!2851 = !DILocation(line: 409, column: 2, scope: !2850)
!2852 = !DILocation(line: 409, column: 2, scope: !2853)
!2853 = distinct !DILexicalBlock(scope: !2850, file: !3, line: 409, column: 2)
!2854 = !DILocation(line: 409, column: 2, scope: !2855)
!2855 = distinct !DILexicalBlock(scope: !2853, file: !3, line: 409, column: 2)
!2856 = !DILocation(line: 409, column: 2, scope: !2857)
!2857 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 409, column: 2)
!2858 = !DILocation(line: 409, column: 2, scope: !2859)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 409, column: 2)
!2860 = !{i32 -2143351043, i32 -2143351014, i32 -2143350968, i32 -2143350910, i32 -2143350856, i32 -2143350802, i32 -2143350747, i32 -2143350716}
!2861 = !DILocation(line: 409, column: 2, scope: !2862)
!2862 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 409, column: 2)
!2863 = !{i32 -2143350314, i32 -2143350307, i32 -2143350255, i32 -2143350224, i32 -2143350194}
!2864 = !DILocation(line: 409, column: 2, scope: !2865)
!2865 = distinct !DILexicalBlock(scope: !2855, file: !3, line: 409, column: 2)
!2866 = !DILocation(line: 410, column: 24, scope: !2830)
!2867 = !DILocation(line: 411, column: 33, scope: !2830)
!2868 = !DILocation(line: 410, column: 9, scope: !2830)
!2869 = !DILocation(line: 410, column: 7, scope: !2830)
!2870 = !DILocalVariable(name: "__ret_warn_on", scope: !2871, file: !3, line: 412, type: !109)
!2871 = distinct !DILexicalBlock(scope: !2830, file: !3, line: 412, column: 2)
!2872 = !DILocation(line: 412, column: 2, scope: !2871)
!2873 = !DILocation(line: 412, column: 2, scope: !2874)
!2874 = distinct !DILexicalBlock(scope: !2871, file: !3, line: 412, column: 2)
!2875 = !DILocation(line: 412, column: 2, scope: !2876)
!2876 = distinct !DILexicalBlock(scope: !2874, file: !3, line: 412, column: 2)
!2877 = !DILocation(line: 412, column: 2, scope: !2878)
!2878 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 412, column: 2)
!2879 = !DILocation(line: 412, column: 2, scope: !2880)
!2880 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 412, column: 2)
!2881 = !{i32 -2143349618, i32 -2143349589, i32 -2143349543, i32 -2143349485, i32 -2143349431, i32 -2143349377, i32 -2143349322, i32 -2143349291}
!2882 = !DILocation(line: 412, column: 2, scope: !2883)
!2883 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 412, column: 2)
!2884 = !{i32 -2143348889, i32 -2143348882, i32 -2143348830, i32 -2143348799, i32 -2143348769}
!2885 = !DILocation(line: 412, column: 2, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2876, file: !3, line: 412, column: 2)
!2887 = !DILocation(line: 413, column: 1, scope: !2830)
!2888 = distinct !DISubprogram(name: "devm_clkdev_release", scope: !3, file: !3, line: 377, type: !2889, scopeLine: 378, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2889 = !DISubroutineType(types: !2890)
!2890 = !{null, !401, !65}
!2891 = !DILocalVariable(name: "dev", arg: 1, scope: !2888, file: !3, line: 377, type: !401)
!2892 = !DILocation(line: 377, column: 48, scope: !2888)
!2893 = !DILocalVariable(name: "res", arg: 2, scope: !2888, file: !3, line: 377, type: !65)
!2894 = !DILocation(line: 377, column: 59, scope: !2888)
!2895 = !DILocation(line: 379, column: 37, scope: !2888)
!2896 = !DILocation(line: 379, column: 15, scope: !2888)
!2897 = !DILocation(line: 379, column: 14, scope: !2888)
!2898 = !DILocation(line: 379, column: 2, scope: !2888)
!2899 = !DILocation(line: 380, column: 1, scope: !2888)
!2900 = distinct !DISubprogram(name: "devm_clk_match_clkdev", scope: !3, file: !3, line: 382, type: !2901, scopeLine: 383, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2901 = !DISubroutineType(types: !2902)
!2902 = !{!109, !401, !65, !65}
!2903 = !DILocalVariable(name: "dev", arg: 1, scope: !2900, file: !3, line: 382, type: !401)
!2904 = !DILocation(line: 382, column: 49, scope: !2900)
!2905 = !DILocalVariable(name: "res", arg: 2, scope: !2900, file: !3, line: 382, type: !65)
!2906 = !DILocation(line: 382, column: 60, scope: !2900)
!2907 = !DILocalVariable(name: "data", arg: 3, scope: !2900, file: !3, line: 382, type: !65)
!2908 = !DILocation(line: 382, column: 71, scope: !2900)
!2909 = !DILocalVariable(name: "l", scope: !2900, file: !3, line: 384, type: !211)
!2910 = !DILocation(line: 384, column: 22, scope: !2900)
!2911 = !DILocation(line: 384, column: 26, scope: !2900)
!2912 = !DILocation(line: 386, column: 10, scope: !2900)
!2913 = !DILocation(line: 386, column: 9, scope: !2900)
!2914 = !DILocation(line: 386, column: 15, scope: !2900)
!2915 = !DILocation(line: 386, column: 12, scope: !2900)
!2916 = !DILocation(line: 386, column: 2, scope: !2900)
!2917 = distinct !DISubprogram(name: "devm_clk_hw_register_clkdev", scope: !3, file: !3, line: 431, type: !2918, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2918 = !DISubroutineType(types: !2919)
!2919 = !{!109, !401, !86, !77, !77}
!2920 = !DILocalVariable(name: "dev", arg: 1, scope: !2917, file: !3, line: 431, type: !401)
!2921 = !DILocation(line: 431, column: 48, scope: !2917)
!2922 = !DILocalVariable(name: "hw", arg: 2, scope: !2917, file: !3, line: 431, type: !86)
!2923 = !DILocation(line: 431, column: 68, scope: !2917)
!2924 = !DILocalVariable(name: "con_id", arg: 3, scope: !2917, file: !3, line: 432, type: !77)
!2925 = !DILocation(line: 432, column: 17, scope: !2917)
!2926 = !DILocalVariable(name: "dev_id", arg: 4, scope: !2917, file: !3, line: 432, type: !77)
!2927 = !DILocation(line: 432, column: 37, scope: !2917)
!2928 = !DILocalVariable(name: "rval", scope: !2917, file: !3, line: 434, type: !109)
!2929 = !DILocation(line: 434, column: 6, scope: !2917)
!2930 = !DILocalVariable(name: "cl", scope: !2917, file: !3, line: 435, type: !211)
!2931 = !DILocation(line: 435, column: 22, scope: !2917)
!2932 = !DILocation(line: 437, column: 7, scope: !2917)
!2933 = !DILocation(line: 437, column: 5, scope: !2917)
!2934 = !DILocation(line: 438, column: 6, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2917, file: !3, line: 438, column: 6)
!2936 = !DILocation(line: 438, column: 6, scope: !2917)
!2937 = !DILocation(line: 439, column: 33, scope: !2938)
!2938 = distinct !DILexicalBlock(scope: !2935, file: !3, line: 438, column: 10)
!2939 = !DILocation(line: 439, column: 37, scope: !2938)
!2940 = !DILocation(line: 439, column: 41, scope: !2938)
!2941 = !DILocation(line: 439, column: 49, scope: !2938)
!2942 = !DILocation(line: 439, column: 10, scope: !2938)
!2943 = !DILocation(line: 439, column: 8, scope: !2938)
!2944 = !DILocation(line: 440, column: 8, scope: !2945)
!2945 = distinct !DILexicalBlock(scope: !2938, file: !3, line: 440, column: 7)
!2946 = !DILocation(line: 440, column: 7, scope: !2938)
!2947 = !DILocation(line: 441, column: 15, scope: !2945)
!2948 = !DILocation(line: 441, column: 20, scope: !2945)
!2949 = !DILocation(line: 441, column: 4, scope: !2945)
!2950 = !DILocation(line: 443, column: 16, scope: !2945)
!2951 = !DILocation(line: 443, column: 4, scope: !2945)
!2952 = !DILocation(line: 444, column: 2, scope: !2938)
!2953 = !DILocation(line: 445, column: 9, scope: !2917)
!2954 = !DILocation(line: 445, column: 2, scope: !2917)
!2955 = distinct !DISubprogram(name: "devres_alloc", scope: !30, file: !30, line: 178, type: !2956, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2956 = !DISubroutineType(types: !2957)
!2957 = !{!65, !2958, !490, !63}
!2958 = !DIDerivedType(tag: DW_TAG_typedef, name: "dr_release_t", file: !30, line: 165, baseType: !2959)
!2959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2889, size: 64)
!2960 = !DILocalVariable(name: "release", arg: 1, scope: !2955, file: !30, line: 178, type: !2958)
!2961 = !DILocation(line: 178, column: 47, scope: !2955)
!2962 = !DILocalVariable(name: "size", arg: 2, scope: !2955, file: !30, line: 178, type: !490)
!2963 = !DILocation(line: 178, column: 63, scope: !2955)
!2964 = !DILocalVariable(name: "gfp", arg: 3, scope: !2955, file: !30, line: 178, type: !63)
!2965 = !DILocation(line: 178, column: 75, scope: !2955)
!2966 = !DILocation(line: 180, column: 27, scope: !2955)
!2967 = !DILocation(line: 180, column: 36, scope: !2955)
!2968 = !DILocation(line: 180, column: 42, scope: !2955)
!2969 = !DILocation(line: 180, column: 9, scope: !2955)
!2970 = !DILocation(line: 180, column: 2, scope: !2955)
!2971 = distinct !DISubprogram(name: "kobject_name", scope: !406, file: !406, line: 88, type: !2972, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2972 = !DISubroutineType(types: !2973)
!2973 = !{!77, !2974}
!2974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2975, size: 64)
!2975 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !405)
!2976 = !DILocalVariable(name: "kobj", arg: 1, scope: !2971, file: !406, line: 88, type: !2974)
!2977 = !DILocation(line: 88, column: 62, scope: !2971)
!2978 = !DILocation(line: 90, column: 9, scope: !2971)
!2979 = !DILocation(line: 90, column: 15, scope: !2971)
!2980 = !DILocation(line: 90, column: 2, scope: !2971)
!2981 = distinct !DISubprogram(name: "__list_add", scope: !2486, file: !2486, line: 63, type: !2982, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !74, !74, !74}
!2984 = !DILocalVariable(name: "new", arg: 1, scope: !2981, file: !2486, line: 63, type: !74)
!2985 = !DILocation(line: 63, column: 49, scope: !2981)
!2986 = !DILocalVariable(name: "prev", arg: 2, scope: !2981, file: !2486, line: 64, type: !74)
!2987 = !DILocation(line: 64, column: 28, scope: !2981)
!2988 = !DILocalVariable(name: "next", arg: 3, scope: !2981, file: !2486, line: 65, type: !74)
!2989 = !DILocation(line: 65, column: 28, scope: !2981)
!2990 = !DILocation(line: 67, column: 24, scope: !2991)
!2991 = distinct !DILexicalBlock(scope: !2981, file: !2486, line: 67, column: 6)
!2992 = !DILocation(line: 67, column: 29, scope: !2991)
!2993 = !DILocation(line: 67, column: 35, scope: !2991)
!2994 = !DILocation(line: 67, column: 7, scope: !2991)
!2995 = !DILocation(line: 67, column: 6, scope: !2981)
!2996 = !DILocation(line: 68, column: 3, scope: !2991)
!2997 = !DILocation(line: 70, column: 15, scope: !2981)
!2998 = !DILocation(line: 70, column: 2, scope: !2981)
!2999 = !DILocation(line: 70, column: 8, scope: !2981)
!3000 = !DILocation(line: 70, column: 13, scope: !2981)
!3001 = !DILocation(line: 71, column: 14, scope: !2981)
!3002 = !DILocation(line: 71, column: 2, scope: !2981)
!3003 = !DILocation(line: 71, column: 7, scope: !2981)
!3004 = !DILocation(line: 71, column: 12, scope: !2981)
!3005 = !DILocation(line: 72, column: 14, scope: !2981)
!3006 = !DILocation(line: 72, column: 2, scope: !2981)
!3007 = !DILocation(line: 72, column: 7, scope: !2981)
!3008 = !DILocation(line: 72, column: 12, scope: !2981)
!3009 = !DILocation(line: 73, column: 2, scope: !2981)
!3010 = !DILocation(line: 73, column: 2, scope: !3011)
!3011 = distinct !DILexicalBlock(scope: !2981, file: !2486, line: 73, column: 2)
!3012 = !DILocation(line: 73, column: 2, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3011, file: !2486, line: 73, column: 2)
!3014 = !DILocation(line: 73, column: 2, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3011, file: !2486, line: 73, column: 2)
!3016 = !DILocation(line: 74, column: 1, scope: !2981)
!3017 = distinct !DISubprogram(name: "__list_add_valid", scope: !2486, file: !2486, line: 45, type: !3018, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3018 = !DISubroutineType(types: !3019)
!3019 = !{!1267, !74, !74, !74}
!3020 = !DILocalVariable(name: "new", arg: 1, scope: !3017, file: !2486, line: 45, type: !74)
!3021 = !DILocation(line: 45, column: 55, scope: !3017)
!3022 = !DILocalVariable(name: "prev", arg: 2, scope: !3017, file: !2486, line: 46, type: !74)
!3023 = !DILocation(line: 46, column: 23, scope: !3017)
!3024 = !DILocalVariable(name: "next", arg: 3, scope: !3017, file: !2486, line: 47, type: !74)
!3025 = !DILocation(line: 47, column: 23, scope: !3017)
!3026 = !DILocation(line: 49, column: 2, scope: !3017)
!3027 = distinct !DISubprogram(name: "kzalloc", scope: !56, file: !56, line: 662, type: !3028, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3028 = !DISubroutineType(types: !3029)
!3029 = !{!65, !490, !63}
!3030 = !DILocalVariable(name: "s", arg: 1, scope: !3031, file: !56, line: 445, type: !1317)
!3031 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !56, file: !56, line: 445, type: !3032, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3032 = !DISubroutineType(types: !3033)
!3033 = !{!65, !1317, !63, !490}
!3034 = !DILocation(line: 445, column: 72, scope: !3031, inlinedAt: !3035)
!3035 = distinct !DILocation(line: 552, column: 10, scope: !3036, inlinedAt: !3039)
!3036 = distinct !DILexicalBlock(scope: !3037, file: !56, line: 540, column: 34)
!3037 = distinct !DILexicalBlock(scope: !3038, file: !56, line: 540, column: 6)
!3038 = distinct !DISubprogram(name: "kmalloc", scope: !56, file: !56, line: 538, type: !3028, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3039 = distinct !DILocation(line: 664, column: 9, scope: !3027)
!3040 = !DILocalVariable(name: "flags", arg: 2, scope: !3031, file: !56, line: 446, type: !63)
!3041 = !DILocation(line: 446, column: 9, scope: !3031, inlinedAt: !3035)
!3042 = !DILocalVariable(name: "size", arg: 3, scope: !3031, file: !56, line: 446, type: !490)
!3043 = !DILocation(line: 446, column: 23, scope: !3031, inlinedAt: !3035)
!3044 = !DILocalVariable(name: "ret", scope: !3031, file: !56, line: 448, type: !65)
!3045 = !DILocation(line: 448, column: 8, scope: !3031, inlinedAt: !3035)
!3046 = !DILocalVariable(name: "flags", arg: 1, scope: !3047, file: !56, line: 318, type: !63)
!3047 = distinct !DISubprogram(name: "kmalloc_type", scope: !56, file: !56, line: 318, type: !3048, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3048 = !DISubroutineType(types: !3049)
!3049 = !{!55, !63}
!3050 = !DILocation(line: 318, column: 67, scope: !3047, inlinedAt: !3051)
!3051 = distinct !DILocation(line: 553, column: 20, scope: !3036, inlinedAt: !3039)
!3052 = !DILocalVariable(name: "size", arg: 1, scope: !3053, file: !56, line: 346, type: !490)
!3053 = distinct !DISubprogram(name: "kmalloc_index", scope: !56, file: !56, line: 346, type: !3054, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3054 = !DISubroutineType(types: !3055)
!3055 = !{!7, !490}
!3056 = !DILocation(line: 346, column: 58, scope: !3053, inlinedAt: !3057)
!3057 = distinct !DILocation(line: 547, column: 11, scope: !3036, inlinedAt: !3039)
!3058 = !DILocalVariable(name: "size", arg: 1, scope: !3059, file: !56, line: 472, type: !490)
!3059 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !56, file: !56, line: 472, type: !3060, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3060 = !DISubroutineType(types: !3061)
!3061 = !{!65, !490, !63, !7}
!3062 = !DILocation(line: 472, column: 28, scope: !3059, inlinedAt: !3063)
!3063 = distinct !DILocation(line: 481, column: 9, scope: !3064, inlinedAt: !3065)
!3064 = distinct !DISubprogram(name: "kmalloc_large", scope: !56, file: !56, line: 478, type: !3028, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3065 = distinct !DILocation(line: 545, column: 11, scope: !3066, inlinedAt: !3039)
!3066 = distinct !DILexicalBlock(scope: !3036, file: !56, line: 544, column: 7)
!3067 = !DILocalVariable(name: "flags", arg: 2, scope: !3059, file: !56, line: 472, type: !63)
!3068 = !DILocation(line: 472, column: 40, scope: !3059, inlinedAt: !3063)
!3069 = !DILocalVariable(name: "order", arg: 3, scope: !3059, file: !56, line: 472, type: !7)
!3070 = !DILocation(line: 472, column: 60, scope: !3059, inlinedAt: !3063)
!3071 = !DILocalVariable(name: "size", arg: 1, scope: !3064, file: !56, line: 478, type: !490)
!3072 = !DILocation(line: 478, column: 51, scope: !3064, inlinedAt: !3065)
!3073 = !DILocalVariable(name: "flags", arg: 2, scope: !3064, file: !56, line: 478, type: !63)
!3074 = !DILocation(line: 478, column: 63, scope: !3064, inlinedAt: !3065)
!3075 = !DILocalVariable(name: "order", scope: !3064, file: !56, line: 480, type: !7)
!3076 = !DILocation(line: 480, column: 15, scope: !3064, inlinedAt: !3065)
!3077 = !DILocalVariable(name: "size", arg: 1, scope: !3038, file: !56, line: 538, type: !490)
!3078 = !DILocation(line: 538, column: 45, scope: !3038, inlinedAt: !3039)
!3079 = !DILocalVariable(name: "flags", arg: 2, scope: !3038, file: !56, line: 538, type: !63)
!3080 = !DILocation(line: 538, column: 57, scope: !3038, inlinedAt: !3039)
!3081 = !DILocalVariable(name: "index", scope: !3036, file: !56, line: 542, type: !7)
!3082 = !DILocation(line: 542, column: 16, scope: !3036, inlinedAt: !3039)
!3083 = !DILocalVariable(name: "size", arg: 1, scope: !3027, file: !56, line: 662, type: !490)
!3084 = !DILocation(line: 662, column: 36, scope: !3027)
!3085 = !DILocalVariable(name: "flags", arg: 2, scope: !3027, file: !56, line: 662, type: !63)
!3086 = !DILocation(line: 662, column: 48, scope: !3027)
!3087 = !DILocation(line: 664, column: 17, scope: !3027)
!3088 = !DILocation(line: 664, column: 23, scope: !3027)
!3089 = !DILocation(line: 664, column: 29, scope: !3027)
!3090 = !DILocation(line: 540, column: 27, scope: !3037, inlinedAt: !3039)
!3091 = !DILocation(line: 540, column: 6, scope: !3037, inlinedAt: !3039)
!3092 = !DILocation(line: 540, column: 6, scope: !3038, inlinedAt: !3039)
!3093 = !DILocation(line: 544, column: 7, scope: !3066, inlinedAt: !3039)
!3094 = !DILocation(line: 544, column: 12, scope: !3066, inlinedAt: !3039)
!3095 = !DILocation(line: 544, column: 7, scope: !3036, inlinedAt: !3039)
!3096 = !DILocation(line: 545, column: 25, scope: !3066, inlinedAt: !3039)
!3097 = !DILocation(line: 545, column: 31, scope: !3066, inlinedAt: !3039)
!3098 = !DILocation(line: 480, column: 33, scope: !3064, inlinedAt: !3065)
!3099 = !DILocation(line: 480, column: 23, scope: !3064, inlinedAt: !3065)
!3100 = !DILocation(line: 481, column: 29, scope: !3064, inlinedAt: !3065)
!3101 = !DILocation(line: 481, column: 35, scope: !3064, inlinedAt: !3065)
!3102 = !DILocation(line: 481, column: 42, scope: !3064, inlinedAt: !3065)
!3103 = !DILocation(line: 474, column: 23, scope: !3059, inlinedAt: !3063)
!3104 = !DILocation(line: 474, column: 29, scope: !3059, inlinedAt: !3063)
!3105 = !DILocation(line: 474, column: 36, scope: !3059, inlinedAt: !3063)
!3106 = !DILocation(line: 474, column: 9, scope: !3059, inlinedAt: !3063)
!3107 = !DILocation(line: 545, column: 4, scope: !3066, inlinedAt: !3039)
!3108 = !DILocation(line: 547, column: 25, scope: !3036, inlinedAt: !3039)
!3109 = !DILocation(line: 348, column: 7, scope: !3110, inlinedAt: !3057)
!3110 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 348, column: 6)
!3111 = !DILocation(line: 348, column: 6, scope: !3053, inlinedAt: !3057)
!3112 = !DILocation(line: 349, column: 3, scope: !3110, inlinedAt: !3057)
!3113 = !DILocation(line: 351, column: 6, scope: !3114, inlinedAt: !3057)
!3114 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 351, column: 6)
!3115 = !DILocation(line: 351, column: 11, scope: !3114, inlinedAt: !3057)
!3116 = !DILocation(line: 351, column: 6, scope: !3053, inlinedAt: !3057)
!3117 = !DILocation(line: 352, column: 3, scope: !3114, inlinedAt: !3057)
!3118 = !DILocation(line: 354, column: 32, scope: !3119, inlinedAt: !3057)
!3119 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 354, column: 6)
!3120 = !DILocation(line: 354, column: 37, scope: !3119, inlinedAt: !3057)
!3121 = !DILocation(line: 354, column: 42, scope: !3119, inlinedAt: !3057)
!3122 = !DILocation(line: 354, column: 45, scope: !3119, inlinedAt: !3057)
!3123 = !DILocation(line: 354, column: 50, scope: !3119, inlinedAt: !3057)
!3124 = !DILocation(line: 354, column: 6, scope: !3053, inlinedAt: !3057)
!3125 = !DILocation(line: 355, column: 3, scope: !3119, inlinedAt: !3057)
!3126 = !DILocation(line: 356, column: 32, scope: !3127, inlinedAt: !3057)
!3127 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 356, column: 6)
!3128 = !DILocation(line: 356, column: 37, scope: !3127, inlinedAt: !3057)
!3129 = !DILocation(line: 356, column: 43, scope: !3127, inlinedAt: !3057)
!3130 = !DILocation(line: 356, column: 46, scope: !3127, inlinedAt: !3057)
!3131 = !DILocation(line: 356, column: 51, scope: !3127, inlinedAt: !3057)
!3132 = !DILocation(line: 356, column: 6, scope: !3053, inlinedAt: !3057)
!3133 = !DILocation(line: 357, column: 3, scope: !3127, inlinedAt: !3057)
!3134 = !DILocation(line: 358, column: 6, scope: !3135, inlinedAt: !3057)
!3135 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 358, column: 6)
!3136 = !DILocation(line: 358, column: 11, scope: !3135, inlinedAt: !3057)
!3137 = !DILocation(line: 358, column: 6, scope: !3053, inlinedAt: !3057)
!3138 = !DILocation(line: 358, column: 26, scope: !3135, inlinedAt: !3057)
!3139 = !DILocation(line: 359, column: 6, scope: !3140, inlinedAt: !3057)
!3140 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 359, column: 6)
!3141 = !DILocation(line: 359, column: 11, scope: !3140, inlinedAt: !3057)
!3142 = !DILocation(line: 359, column: 6, scope: !3053, inlinedAt: !3057)
!3143 = !DILocation(line: 359, column: 26, scope: !3140, inlinedAt: !3057)
!3144 = !DILocation(line: 360, column: 6, scope: !3145, inlinedAt: !3057)
!3145 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 360, column: 6)
!3146 = !DILocation(line: 360, column: 11, scope: !3145, inlinedAt: !3057)
!3147 = !DILocation(line: 360, column: 6, scope: !3053, inlinedAt: !3057)
!3148 = !DILocation(line: 360, column: 26, scope: !3145, inlinedAt: !3057)
!3149 = !DILocation(line: 361, column: 6, scope: !3150, inlinedAt: !3057)
!3150 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 361, column: 6)
!3151 = !DILocation(line: 361, column: 11, scope: !3150, inlinedAt: !3057)
!3152 = !DILocation(line: 361, column: 6, scope: !3053, inlinedAt: !3057)
!3153 = !DILocation(line: 361, column: 26, scope: !3150, inlinedAt: !3057)
!3154 = !DILocation(line: 362, column: 6, scope: !3155, inlinedAt: !3057)
!3155 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 362, column: 6)
!3156 = !DILocation(line: 362, column: 11, scope: !3155, inlinedAt: !3057)
!3157 = !DILocation(line: 362, column: 6, scope: !3053, inlinedAt: !3057)
!3158 = !DILocation(line: 362, column: 26, scope: !3155, inlinedAt: !3057)
!3159 = !DILocation(line: 363, column: 6, scope: !3160, inlinedAt: !3057)
!3160 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 363, column: 6)
!3161 = !DILocation(line: 363, column: 11, scope: !3160, inlinedAt: !3057)
!3162 = !DILocation(line: 363, column: 6, scope: !3053, inlinedAt: !3057)
!3163 = !DILocation(line: 363, column: 26, scope: !3160, inlinedAt: !3057)
!3164 = !DILocation(line: 364, column: 6, scope: !3165, inlinedAt: !3057)
!3165 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 364, column: 6)
!3166 = !DILocation(line: 364, column: 11, scope: !3165, inlinedAt: !3057)
!3167 = !DILocation(line: 364, column: 6, scope: !3053, inlinedAt: !3057)
!3168 = !DILocation(line: 364, column: 26, scope: !3165, inlinedAt: !3057)
!3169 = !DILocation(line: 365, column: 6, scope: !3170, inlinedAt: !3057)
!3170 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 365, column: 6)
!3171 = !DILocation(line: 365, column: 11, scope: !3170, inlinedAt: !3057)
!3172 = !DILocation(line: 365, column: 6, scope: !3053, inlinedAt: !3057)
!3173 = !DILocation(line: 365, column: 26, scope: !3170, inlinedAt: !3057)
!3174 = !DILocation(line: 366, column: 6, scope: !3175, inlinedAt: !3057)
!3175 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 366, column: 6)
!3176 = !DILocation(line: 366, column: 11, scope: !3175, inlinedAt: !3057)
!3177 = !DILocation(line: 366, column: 6, scope: !3053, inlinedAt: !3057)
!3178 = !DILocation(line: 366, column: 26, scope: !3175, inlinedAt: !3057)
!3179 = !DILocation(line: 367, column: 6, scope: !3180, inlinedAt: !3057)
!3180 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 367, column: 6)
!3181 = !DILocation(line: 367, column: 11, scope: !3180, inlinedAt: !3057)
!3182 = !DILocation(line: 367, column: 6, scope: !3053, inlinedAt: !3057)
!3183 = !DILocation(line: 367, column: 26, scope: !3180, inlinedAt: !3057)
!3184 = !DILocation(line: 368, column: 6, scope: !3185, inlinedAt: !3057)
!3185 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 368, column: 6)
!3186 = !DILocation(line: 368, column: 11, scope: !3185, inlinedAt: !3057)
!3187 = !DILocation(line: 368, column: 6, scope: !3053, inlinedAt: !3057)
!3188 = !DILocation(line: 368, column: 26, scope: !3185, inlinedAt: !3057)
!3189 = !DILocation(line: 369, column: 6, scope: !3190, inlinedAt: !3057)
!3190 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 369, column: 6)
!3191 = !DILocation(line: 369, column: 11, scope: !3190, inlinedAt: !3057)
!3192 = !DILocation(line: 369, column: 6, scope: !3053, inlinedAt: !3057)
!3193 = !DILocation(line: 369, column: 26, scope: !3190, inlinedAt: !3057)
!3194 = !DILocation(line: 370, column: 6, scope: !3195, inlinedAt: !3057)
!3195 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 370, column: 6)
!3196 = !DILocation(line: 370, column: 11, scope: !3195, inlinedAt: !3057)
!3197 = !DILocation(line: 370, column: 6, scope: !3053, inlinedAt: !3057)
!3198 = !DILocation(line: 370, column: 26, scope: !3195, inlinedAt: !3057)
!3199 = !DILocation(line: 371, column: 6, scope: !3200, inlinedAt: !3057)
!3200 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 371, column: 6)
!3201 = !DILocation(line: 371, column: 11, scope: !3200, inlinedAt: !3057)
!3202 = !DILocation(line: 371, column: 6, scope: !3053, inlinedAt: !3057)
!3203 = !DILocation(line: 371, column: 26, scope: !3200, inlinedAt: !3057)
!3204 = !DILocation(line: 372, column: 6, scope: !3205, inlinedAt: !3057)
!3205 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 372, column: 6)
!3206 = !DILocation(line: 372, column: 11, scope: !3205, inlinedAt: !3057)
!3207 = !DILocation(line: 372, column: 6, scope: !3053, inlinedAt: !3057)
!3208 = !DILocation(line: 372, column: 26, scope: !3205, inlinedAt: !3057)
!3209 = !DILocation(line: 373, column: 6, scope: !3210, inlinedAt: !3057)
!3210 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 373, column: 6)
!3211 = !DILocation(line: 373, column: 11, scope: !3210, inlinedAt: !3057)
!3212 = !DILocation(line: 373, column: 6, scope: !3053, inlinedAt: !3057)
!3213 = !DILocation(line: 373, column: 26, scope: !3210, inlinedAt: !3057)
!3214 = !DILocation(line: 374, column: 6, scope: !3215, inlinedAt: !3057)
!3215 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 374, column: 6)
!3216 = !DILocation(line: 374, column: 11, scope: !3215, inlinedAt: !3057)
!3217 = !DILocation(line: 374, column: 6, scope: !3053, inlinedAt: !3057)
!3218 = !DILocation(line: 374, column: 26, scope: !3215, inlinedAt: !3057)
!3219 = !DILocation(line: 375, column: 6, scope: !3220, inlinedAt: !3057)
!3220 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 375, column: 6)
!3221 = !DILocation(line: 375, column: 11, scope: !3220, inlinedAt: !3057)
!3222 = !DILocation(line: 375, column: 6, scope: !3053, inlinedAt: !3057)
!3223 = !DILocation(line: 375, column: 27, scope: !3220, inlinedAt: !3057)
!3224 = !DILocation(line: 376, column: 6, scope: !3225, inlinedAt: !3057)
!3225 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 376, column: 6)
!3226 = !DILocation(line: 376, column: 11, scope: !3225, inlinedAt: !3057)
!3227 = !DILocation(line: 376, column: 6, scope: !3053, inlinedAt: !3057)
!3228 = !DILocation(line: 376, column: 32, scope: !3225, inlinedAt: !3057)
!3229 = !DILocation(line: 377, column: 6, scope: !3230, inlinedAt: !3057)
!3230 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 377, column: 6)
!3231 = !DILocation(line: 377, column: 11, scope: !3230, inlinedAt: !3057)
!3232 = !DILocation(line: 377, column: 6, scope: !3053, inlinedAt: !3057)
!3233 = !DILocation(line: 377, column: 32, scope: !3230, inlinedAt: !3057)
!3234 = !DILocation(line: 378, column: 6, scope: !3235, inlinedAt: !3057)
!3235 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 378, column: 6)
!3236 = !DILocation(line: 378, column: 11, scope: !3235, inlinedAt: !3057)
!3237 = !DILocation(line: 378, column: 6, scope: !3053, inlinedAt: !3057)
!3238 = !DILocation(line: 378, column: 32, scope: !3235, inlinedAt: !3057)
!3239 = !DILocation(line: 379, column: 6, scope: !3240, inlinedAt: !3057)
!3240 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 379, column: 6)
!3241 = !DILocation(line: 379, column: 11, scope: !3240, inlinedAt: !3057)
!3242 = !DILocation(line: 379, column: 6, scope: !3053, inlinedAt: !3057)
!3243 = !DILocation(line: 379, column: 33, scope: !3240, inlinedAt: !3057)
!3244 = !DILocation(line: 380, column: 6, scope: !3245, inlinedAt: !3057)
!3245 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 380, column: 6)
!3246 = !DILocation(line: 380, column: 11, scope: !3245, inlinedAt: !3057)
!3247 = !DILocation(line: 380, column: 6, scope: !3053, inlinedAt: !3057)
!3248 = !DILocation(line: 380, column: 33, scope: !3245, inlinedAt: !3057)
!3249 = !DILocation(line: 381, column: 6, scope: !3250, inlinedAt: !3057)
!3250 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 381, column: 6)
!3251 = !DILocation(line: 381, column: 11, scope: !3250, inlinedAt: !3057)
!3252 = !DILocation(line: 381, column: 6, scope: !3053, inlinedAt: !3057)
!3253 = !DILocation(line: 381, column: 33, scope: !3250, inlinedAt: !3057)
!3254 = !DILocation(line: 382, column: 2, scope: !3255, inlinedAt: !3057)
!3255 = distinct !DILexicalBlock(scope: !3256, file: !56, line: 382, column: 2)
!3256 = distinct !DILexicalBlock(scope: !3053, file: !56, line: 382, column: 2)
!3257 = !{i32 -2143528905, i32 -2143528876, i32 -2143528830, i32 -2143528772, i32 -2143528718, i32 -2143528664, i32 -2143528609, i32 -2143528578}
!3258 = !DILocation(line: 382, column: 2, scope: !3259, inlinedAt: !3057)
!3259 = distinct !DILexicalBlock(scope: !3260, file: !56, line: 382, column: 2)
!3260 = distinct !DILexicalBlock(scope: !3256, file: !56, line: 382, column: 2)
!3261 = !{i32 -2143528135, i32 -2143528128, i32 -2143528074, i32 -2143528043, i32 -2143528013}
!3262 = !DILocation(line: 382, column: 2, scope: !3260, inlinedAt: !3057)
!3263 = !DILocation(line: 386, column: 1, scope: !3053, inlinedAt: !3057)
!3264 = !DILocation(line: 547, column: 9, scope: !3036, inlinedAt: !3039)
!3265 = !DILocation(line: 549, column: 8, scope: !3266, inlinedAt: !3039)
!3266 = distinct !DILexicalBlock(scope: !3036, file: !56, line: 549, column: 7)
!3267 = !DILocation(line: 549, column: 7, scope: !3036, inlinedAt: !3039)
!3268 = !DILocation(line: 550, column: 4, scope: !3266, inlinedAt: !3039)
!3269 = !DILocation(line: 553, column: 33, scope: !3036, inlinedAt: !3039)
!3270 = !DILocation(line: 325, column: 6, scope: !3271, inlinedAt: !3051)
!3271 = distinct !DILexicalBlock(scope: !3047, file: !56, line: 325, column: 6)
!3272 = !DILocation(line: 325, column: 6, scope: !3047, inlinedAt: !3051)
!3273 = !DILocation(line: 326, column: 3, scope: !3271, inlinedAt: !3051)
!3274 = !DILocation(line: 332, column: 9, scope: !3047, inlinedAt: !3051)
!3275 = !DILocation(line: 332, column: 15, scope: !3047, inlinedAt: !3051)
!3276 = !DILocation(line: 332, column: 2, scope: !3047, inlinedAt: !3051)
!3277 = !DILocation(line: 336, column: 1, scope: !3047, inlinedAt: !3051)
!3278 = !DILocation(line: 553, column: 5, scope: !3036, inlinedAt: !3039)
!3279 = !DILocation(line: 553, column: 41, scope: !3036, inlinedAt: !3039)
!3280 = !DILocation(line: 554, column: 5, scope: !3036, inlinedAt: !3039)
!3281 = !DILocation(line: 554, column: 12, scope: !3036, inlinedAt: !3039)
!3282 = !DILocation(line: 448, column: 31, scope: !3031, inlinedAt: !3035)
!3283 = !DILocation(line: 448, column: 34, scope: !3031, inlinedAt: !3035)
!3284 = !DILocation(line: 448, column: 14, scope: !3031, inlinedAt: !3035)
!3285 = !DILocation(line: 450, column: 22, scope: !3031, inlinedAt: !3035)
!3286 = !DILocation(line: 450, column: 25, scope: !3031, inlinedAt: !3035)
!3287 = !DILocation(line: 450, column: 30, scope: !3031, inlinedAt: !3035)
!3288 = !DILocation(line: 450, column: 36, scope: !3031, inlinedAt: !3035)
!3289 = !DILocation(line: 450, column: 8, scope: !3031, inlinedAt: !3035)
!3290 = !DILocation(line: 450, column: 6, scope: !3031, inlinedAt: !3035)
!3291 = !DILocation(line: 451, column: 9, scope: !3031, inlinedAt: !3035)
!3292 = !DILocation(line: 552, column: 3, scope: !3036, inlinedAt: !3039)
!3293 = !DILocation(line: 557, column: 19, scope: !3038, inlinedAt: !3039)
!3294 = !DILocation(line: 557, column: 25, scope: !3038, inlinedAt: !3039)
!3295 = !DILocation(line: 557, column: 9, scope: !3038, inlinedAt: !3039)
!3296 = !DILocation(line: 557, column: 2, scope: !3038, inlinedAt: !3039)
!3297 = !DILocation(line: 558, column: 1, scope: !3038, inlinedAt: !3039)
!3298 = !DILocation(line: 664, column: 2, scope: !3027)
!3299 = distinct !DISubprogram(name: "get_order", scope: !3300, file: !3300, line: 29, type: !3301, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3300 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3301 = !DISubroutineType(types: !3302)
!3302 = !{!109, !126}
!3303 = !DILocalVariable(name: "x", arg: 1, scope: !3304, file: !3305, line: 366, type: !561)
!3304 = distinct !DISubprogram(name: "fls64", scope: !3305, file: !3305, line: 366, type: !3306, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3305 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3306 = !DISubroutineType(types: !3307)
!3307 = !{!109, !561}
!3308 = !DILocation(line: 366, column: 40, scope: !3304, inlinedAt: !3309)
!3309 = distinct !DILocation(line: 46, column: 9, scope: !3299)
!3310 = !DILocalVariable(name: "bitpos", scope: !3304, file: !3305, line: 368, type: !109)
!3311 = !DILocation(line: 368, column: 6, scope: !3304, inlinedAt: !3309)
!3312 = !DILocalVariable(name: "size", arg: 1, scope: !3299, file: !3300, line: 29, type: !126)
!3313 = !DILocation(line: 29, column: 63, scope: !3299)
!3314 = !DILocation(line: 31, column: 27, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3299, file: !3300, line: 31, column: 6)
!3316 = !DILocation(line: 31, column: 6, scope: !3315)
!3317 = !DILocation(line: 31, column: 6, scope: !3299)
!3318 = !DILocation(line: 32, column: 8, scope: !3319)
!3319 = distinct !DILexicalBlock(scope: !3320, file: !3300, line: 32, column: 7)
!3320 = distinct !DILexicalBlock(scope: !3315, file: !3300, line: 31, column: 34)
!3321 = !DILocation(line: 32, column: 7, scope: !3320)
!3322 = !DILocation(line: 33, column: 4, scope: !3319)
!3323 = !DILocation(line: 35, column: 7, scope: !3324)
!3324 = distinct !DILexicalBlock(scope: !3320, file: !3300, line: 35, column: 7)
!3325 = !DILocation(line: 35, column: 12, scope: !3324)
!3326 = !DILocation(line: 35, column: 7, scope: !3320)
!3327 = !DILocation(line: 36, column: 4, scope: !3324)
!3328 = !DILocation(line: 38, column: 10, scope: !3320)
!3329 = !DILocation(line: 38, column: 28, scope: !3320)
!3330 = !DILocation(line: 38, column: 41, scope: !3320)
!3331 = !DILocation(line: 38, column: 3, scope: !3320)
!3332 = !DILocation(line: 41, column: 6, scope: !3299)
!3333 = !DILocation(line: 42, column: 7, scope: !3299)
!3334 = !DILocation(line: 46, column: 15, scope: !3299)
!3335 = !DILocation(line: 374, column: 2, scope: !3304, inlinedAt: !3309)
!3336 = !DILocation(line: 376, column: 14, scope: !3304, inlinedAt: !3309)
!3337 = !{i32 307291}
!3338 = !DILocation(line: 377, column: 9, scope: !3304, inlinedAt: !3309)
!3339 = !DILocation(line: 377, column: 16, scope: !3304, inlinedAt: !3309)
!3340 = !DILocation(line: 46, column: 2, scope: !3299)
!3341 = !DILocation(line: 48, column: 1, scope: !3299)
!3342 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3343, file: !3343, line: 30, type: !3344, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3343 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3344 = !DISubroutineType(types: !3345)
!3345 = !{!109, !560}
!3346 = !DILocation(line: 366, column: 40, scope: !3304, inlinedAt: !3347)
!3347 = distinct !DILocation(line: 32, column: 9, scope: !3342)
!3348 = !DILocation(line: 368, column: 6, scope: !3304, inlinedAt: !3347)
!3349 = !DILocalVariable(name: "n", arg: 1, scope: !3342, file: !3343, line: 30, type: !560)
!3350 = !DILocation(line: 30, column: 21, scope: !3342)
!3351 = !DILocation(line: 32, column: 15, scope: !3342)
!3352 = !DILocation(line: 374, column: 2, scope: !3304, inlinedAt: !3347)
!3353 = !DILocation(line: 376, column: 14, scope: !3304, inlinedAt: !3347)
!3354 = !DILocation(line: 377, column: 9, scope: !3304, inlinedAt: !3347)
!3355 = !DILocation(line: 377, column: 16, scope: !3304, inlinedAt: !3347)
!3356 = !DILocation(line: 32, column: 18, scope: !3342)
!3357 = !DILocation(line: 32, column: 2, scope: !3342)
!3358 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3359, file: !3359, line: 137, type: !3360, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3359 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !DISubroutineType(types: !3361)
!3361 = !{!65, !1317, !1658, !490, !63}
!3362 = !DILocalVariable(name: "s", arg: 1, scope: !3358, file: !3359, line: 137, type: !1317)
!3363 = !DILocation(line: 137, column: 54, scope: !3358)
!3364 = !DILocalVariable(name: "object", arg: 2, scope: !3358, file: !3359, line: 137, type: !1658)
!3365 = !DILocation(line: 137, column: 69, scope: !3358)
!3366 = !DILocalVariable(name: "size", arg: 3, scope: !3358, file: !3359, line: 138, type: !490)
!3367 = !DILocation(line: 138, column: 12, scope: !3358)
!3368 = !DILocalVariable(name: "flags", arg: 4, scope: !3358, file: !3359, line: 138, type: !63)
!3369 = !DILocation(line: 138, column: 24, scope: !3358)
!3370 = !DILocation(line: 140, column: 17, scope: !3358)
!3371 = !DILocation(line: 140, column: 2, scope: !3358)
!3372 = distinct !DISubprogram(name: "__list_del_entry", scope: !2486, file: !2486, line: 130, type: !2739, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3373 = !DILocalVariable(name: "entry", arg: 1, scope: !3372, file: !2486, line: 130, type: !74)
!3374 = !DILocation(line: 130, column: 55, scope: !3372)
!3375 = !DILocation(line: 132, column: 30, scope: !3376)
!3376 = distinct !DILexicalBlock(scope: !3372, file: !2486, line: 132, column: 6)
!3377 = !DILocation(line: 132, column: 7, scope: !3376)
!3378 = !DILocation(line: 132, column: 6, scope: !3372)
!3379 = !DILocation(line: 133, column: 3, scope: !3376)
!3380 = !DILocation(line: 135, column: 13, scope: !3372)
!3381 = !DILocation(line: 135, column: 20, scope: !3372)
!3382 = !DILocation(line: 135, column: 26, scope: !3372)
!3383 = !DILocation(line: 135, column: 33, scope: !3372)
!3384 = !DILocation(line: 135, column: 2, scope: !3372)
!3385 = !DILocation(line: 136, column: 1, scope: !3372)
!3386 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !2486, file: !2486, line: 51, type: !3387, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3387 = !DISubroutineType(types: !3388)
!3388 = !{!1267, !74}
!3389 = !DILocalVariable(name: "entry", arg: 1, scope: !3386, file: !2486, line: 51, type: !74)
!3390 = !DILocation(line: 51, column: 61, scope: !3386)
!3391 = !DILocation(line: 53, column: 2, scope: !3386)
!3392 = distinct !DISubprogram(name: "__list_del", scope: !2486, file: !2486, line: 110, type: !2487, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3393 = !DILocalVariable(name: "prev", arg: 1, scope: !3392, file: !2486, line: 110, type: !74)
!3394 = !DILocation(line: 110, column: 50, scope: !3392)
!3395 = !DILocalVariable(name: "next", arg: 2, scope: !3392, file: !2486, line: 110, type: !74)
!3396 = !DILocation(line: 110, column: 75, scope: !3392)
!3397 = !DILocation(line: 112, column: 15, scope: !3392)
!3398 = !DILocation(line: 112, column: 2, scope: !3392)
!3399 = !DILocation(line: 112, column: 8, scope: !3392)
!3400 = !DILocation(line: 112, column: 13, scope: !3392)
!3401 = !DILocation(line: 113, column: 2, scope: !3392)
!3402 = !DILocation(line: 113, column: 2, scope: !3403)
!3403 = distinct !DILexicalBlock(scope: !3392, file: !2486, line: 113, column: 2)
!3404 = !DILocation(line: 113, column: 2, scope: !3405)
!3405 = distinct !DILexicalBlock(scope: !3403, file: !2486, line: 113, column: 2)
!3406 = !DILocation(line: 113, column: 2, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3403, file: !2486, line: 113, column: 2)
!3408 = !DILocation(line: 114, column: 1, scope: !3392)
!3409 = distinct !DISubprogram(name: "__clk_register_clkdev", scope: !3, file: !3, line: 296, type: !2602, scopeLine: 299, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !243)
!3410 = !DILocalVariable(name: "hw", arg: 1, scope: !3409, file: !3, line: 296, type: !86)
!3411 = !DILocation(line: 296, column: 64, scope: !3409)
!3412 = !DILocalVariable(name: "con_id", arg: 2, scope: !3409, file: !3, line: 297, type: !77)
!3413 = !DILocation(line: 297, column: 19, scope: !3409)
!3414 = !DILocalVariable(name: "dev_id", arg: 3, scope: !3409, file: !3, line: 298, type: !77)
!3415 = !DILocation(line: 298, column: 19, scope: !3409)
!3416 = !DILocalVariable(name: "cl", scope: !3409, file: !3, line: 300, type: !66)
!3417 = !DILocation(line: 300, column: 21, scope: !3409)
!3418 = !DILocalVariable(name: "ap", scope: !3409, file: !3, line: 301, type: !2511)
!3419 = !DILocation(line: 301, column: 10, scope: !3409)
!3420 = !DILocation(line: 303, column: 2, scope: !3409)
!3421 = !DILocation(line: 304, column: 22, scope: !3409)
!3422 = !DILocation(line: 304, column: 26, scope: !3409)
!3423 = !DILocation(line: 304, column: 34, scope: !3409)
!3424 = !DILocation(line: 304, column: 42, scope: !3409)
!3425 = !DILocation(line: 304, column: 7, scope: !3409)
!3426 = !DILocation(line: 304, column: 5, scope: !3409)
!3427 = !DILocation(line: 305, column: 2, scope: !3409)
!3428 = !DILocation(line: 307, column: 9, scope: !3409)
!3429 = !DILocation(line: 307, column: 2, scope: !3409)
