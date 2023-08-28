; ModuleID = '../bcout/drivers/clk/clk-fixed-factor.llvm.bc'
source_filename = "drivers/clk/clk-fixed-factor.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_of_fixed_factor_clk_driver_init6:\09\09\09"
module asm ".long\09of_fixed_factor_clk_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.clk_hw = type { %struct.clk_core*, %struct.clk*, %struct.clk_init_data* }
%struct.clk_core = type opaque
%struct.clk = type opaque
%struct.clk_init_data = type { i8*, %struct.clk_ops*, i8**, %struct.clk_parent_data*, %struct.clk_hw**, i8, i64 }
%struct.clk_ops = type { {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, {}*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, {}*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, {}*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }
%struct.clk_parent_data = type { %struct.clk_hw*, i8*, i8*, i32 }
%struct.clk_rate_request = type { i64, i64, i64, i64, %struct.clk_hw* }
%struct.clk_duty = type { i32, i32 }
%struct.dentry = type opaque
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.kmem_cache = type opaque
%struct.platform_driver = type { i32 (%struct.platform_device*)*, i32 (%struct.platform_device*)*, void (%struct.platform_device*)*, i32 (%struct.platform_device*, i32)*, i32 (%struct.platform_device*)*, %struct.device_driver, %struct.platform_device_id*, i8 }
%struct.platform_device = type { i8*, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, %struct.resource*, %struct.platform_device_id*, i8*, %struct.mfd_cell*, %struct.pdev_archdata }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.module = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.resource = type { i64, i64, i8*, i64, i64, %struct.resource*, %struct.resource*, %struct.resource* }
%struct.mfd_cell = type opaque
%struct.pdev_archdata = type {}
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.clk_fixed_factor = type { %struct.clk_hw, i32, i32 }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }

@clk_fixed_factor_ops = dso_local constant { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* } { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_factor_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* @clk_factor_round_rate, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* @clk_factor_set_rate, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* null, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@__of_table_fixed_factor_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (void (%struct.device_node*)* @of_fixed_factor_clk_setup to i8*) }, section "__clk_of_table", align 8, !dbg !212
@__UNIQUE_ID___addressable_of_fixed_factor_clk_driver_init165 = internal global i8* bitcast (i32 ()* @of_fixed_factor_clk_driver_init to i8*), section ".discard.addressable", align 8, !dbg !230
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"clock-div\00", align 1
@.str.2 = private unnamed_addr constant [64 x i8] c"\013%s Fixed factor clock <%pOFn> must have a clock-div property\0A\00", align 1
@__func__._of_fixed_factor_clk_setup = private unnamed_addr constant [27 x i8] c"_of_fixed_factor_clk_setup\00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"clock-mult\00", align 1
@.str.4 = private unnamed_addr constant [65 x i8] c"\013%s Fixed factor clock <%pOFn> must have a clock-mult property\0A\00", align 1
@.str.5 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@set_rate_parent_matches = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun4i-a10-pll3-2x-clk\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !232
@of_fixed_factor_clk_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @of_fixed_factor_clk_probe, i32 (%struct.platform_device*)* @of_fixed_factor_clk_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @of_fixed_factor_clk_ids, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !237
@.str.6 = private unnamed_addr constant [20 x i8] c"of_fixed_factor_clk\00", align 1
@of_fixed_factor_clk_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-factor-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2237
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_fixed_factor_clk, i32 0, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_of_fixed_factor_clk_driver_init165 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_factor_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate) #0 !dbg !2244 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %fix = alloca %struct.clk_fixed_factor*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_factor*, align 8
  %rate = alloca i64, align 8
  %__base = alloca i32, align 4
  %__rem = alloca i32, align 4
  %tmp5 = alloca i32, align 4
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2245, metadata !DIExpression()), !dbg !2246
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_factor** %fix, metadata !2249, metadata !DIExpression()), !dbg !2250
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2251, metadata !DIExpression()), !dbg !2253
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2253
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2253
  store i8* %1, i8** %__mptr, align 8, !dbg !2253
  br label %do.body, !dbg !2253

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2254

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2253
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2253
  %3 = bitcast i8* %add.ptr to %struct.clk_fixed_factor*, !dbg !2253
  store %struct.clk_fixed_factor* %3, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2254
  %4 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2253
  store %struct.clk_fixed_factor* %4, %struct.clk_fixed_factor** %fix, align 8, !dbg !2250
  call void @llvm.dbg.declare(metadata i64* %rate, metadata !2256, metadata !DIExpression()), !dbg !2257
  %5 = load i64, i64* %parent_rate.addr, align 8, !dbg !2258
  %6 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2259
  %mult = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %6, i32 0, i32 1, !dbg !2260
  %7 = load i32, i32* %mult, align 8, !dbg !2260
  %conv = zext i32 %7 to i64, !dbg !2259
  %mul = mul i64 %5, %conv, !dbg !2261
  store i64 %mul, i64* %rate, align 8, !dbg !2262
  call void @llvm.dbg.declare(metadata i32* %__base, metadata !2263, metadata !DIExpression()), !dbg !2266
  %8 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2266
  %div = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %8, i32 0, i32 2, !dbg !2266
  %9 = load i32, i32* %div, align 4, !dbg !2266
  store i32 %9, i32* %__base, align 4, !dbg !2266
  call void @llvm.dbg.declare(metadata i32* %__rem, metadata !2267, metadata !DIExpression()), !dbg !2266
  %10 = load i64, i64* %rate, align 8, !dbg !2266
  %11 = load i32, i32* %__base, align 4, !dbg !2266
  %conv1 = zext i32 %11 to i64, !dbg !2266
  %rem = urem i64 %10, %conv1, !dbg !2266
  %conv2 = trunc i64 %rem to i32, !dbg !2266
  store i32 %conv2, i32* %__rem, align 4, !dbg !2266
  %12 = load i64, i64* %rate, align 8, !dbg !2266
  %13 = load i32, i32* %__base, align 4, !dbg !2266
  %conv3 = zext i32 %13 to i64, !dbg !2266
  %div4 = udiv i64 %12, %conv3, !dbg !2266
  store i64 %div4, i64* %rate, align 8, !dbg !2266
  %14 = load i32, i32* %__rem, align 4, !dbg !2266
  store i32 %14, i32* %tmp5, align 4, !dbg !2266
  %15 = load i32, i32* %tmp5, align 4, !dbg !2266
  %16 = load i64, i64* %rate, align 8, !dbg !2268
  ret i64 %16, !dbg !2269
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_factor_round_rate(%struct.clk_hw* %hw, i64 %rate, i64* %prate) #0 !dbg !2270 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %prate.addr = alloca i64*, align 8
  %fix = alloca %struct.clk_fixed_factor*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_factor*, align 8
  %best_parent = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2271, metadata !DIExpression()), !dbg !2272
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2273, metadata !DIExpression()), !dbg !2274
  store i64* %prate, i64** %prate.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %prate.addr, metadata !2275, metadata !DIExpression()), !dbg !2276
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_factor** %fix, metadata !2277, metadata !DIExpression()), !dbg !2278
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2279, metadata !DIExpression()), !dbg !2281
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2281
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2281
  store i8* %1, i8** %__mptr, align 8, !dbg !2281
  br label %do.body, !dbg !2281

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2282

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2281
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2281
  %3 = bitcast i8* %add.ptr to %struct.clk_fixed_factor*, !dbg !2281
  store %struct.clk_fixed_factor* %3, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2282
  %4 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2281
  store %struct.clk_fixed_factor* %4, %struct.clk_fixed_factor** %fix, align 8, !dbg !2278
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2284
  %call = call i64 @clk_hw_get_flags(%struct.clk_hw* %5) #9, !dbg !2286
  %and = and i64 %call, 4, !dbg !2287
  %tobool = icmp ne i64 %and, 0, !dbg !2287
  br i1 %tobool, label %if.then, label %if.end, !dbg !2288

if.then:                                          ; preds = %do.end
  call void @llvm.dbg.declare(metadata i64* %best_parent, metadata !2289, metadata !DIExpression()), !dbg !2291
  %6 = load i64, i64* %rate.addr, align 8, !dbg !2292
  %7 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2293
  %mult = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %7, i32 0, i32 1, !dbg !2294
  %8 = load i32, i32* %mult, align 8, !dbg !2294
  %conv = zext i32 %8 to i64, !dbg !2293
  %div = udiv i64 %6, %conv, !dbg !2295
  %9 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2296
  %div1 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %9, i32 0, i32 2, !dbg !2297
  %10 = load i32, i32* %div1, align 4, !dbg !2297
  %conv2 = zext i32 %10 to i64, !dbg !2296
  %mul = mul i64 %div, %conv2, !dbg !2298
  store i64 %mul, i64* %best_parent, align 8, !dbg !2299
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2300
  %call3 = call %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw* %11) #9, !dbg !2301
  %12 = load i64, i64* %best_parent, align 8, !dbg !2302
  %call4 = call i64 @clk_hw_round_rate(%struct.clk_hw* %call3, i64 %12) #9, !dbg !2303
  %13 = load i64*, i64** %prate.addr, align 8, !dbg !2304
  store i64 %call4, i64* %13, align 8, !dbg !2305
  br label %if.end, !dbg !2306

if.end:                                           ; preds = %if.then, %do.end
  %14 = load i64*, i64** %prate.addr, align 8, !dbg !2307
  %15 = load i64, i64* %14, align 8, !dbg !2308
  %16 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2309
  %div5 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %16, i32 0, i32 2, !dbg !2310
  %17 = load i32, i32* %div5, align 4, !dbg !2310
  %conv6 = zext i32 %17 to i64, !dbg !2309
  %div7 = udiv i64 %15, %conv6, !dbg !2311
  %18 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2312
  %mult8 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %18, i32 0, i32 1, !dbg !2313
  %19 = load i32, i32* %mult8, align 8, !dbg !2313
  %conv9 = zext i32 %19 to i64, !dbg !2312
  %mul10 = mul i64 %div7, %conv9, !dbg !2314
  ret i64 %mul10, !dbg !2315
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @clk_factor_set_rate(%struct.clk_hw* %hw, i64 %rate, i64 %parent_rate) #0 !dbg !2316 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %rate.addr = alloca i64, align 8
  %parent_rate.addr = alloca i64, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2317, metadata !DIExpression()), !dbg !2318
  store i64 %rate, i64* %rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %rate.addr, metadata !2319, metadata !DIExpression()), !dbg !2320
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !2321, metadata !DIExpression()), !dbg !2322
  ret i32 0, !dbg !2323
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @clk_hw_register_fixed_factor(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i32 %mult, i32 %div) #0 !dbg !2324 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %mult.addr = alloca i32, align 4
  %div.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2327, metadata !DIExpression()), !dbg !2328
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2329, metadata !DIExpression()), !dbg !2330
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2331, metadata !DIExpression()), !dbg !2332
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2333, metadata !DIExpression()), !dbg !2334
  store i32 %mult, i32* %mult.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mult.addr, metadata !2335, metadata !DIExpression()), !dbg !2336
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2337, metadata !DIExpression()), !dbg !2338
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2339
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2340
  %2 = load i8*, i8** %parent_name.addr, align 8, !dbg !2341
  %3 = load i64, i64* %flags.addr, align 8, !dbg !2342
  %4 = load i32, i32* %mult.addr, align 4, !dbg !2343
  %5 = load i32, i32* %div.addr, align 4, !dbg !2344
  %call = call %struct.clk_hw* @__clk_hw_register_fixed_factor(%struct.device* %0, %struct.device_node* null, i8* %1, i8* %2, i32 -1, i64 %3, i32 %4, i32 %5) #9, !dbg !2345
  ret %struct.clk_hw* %call, !dbg !2346
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @__clk_hw_register_fixed_factor(%struct.device* %dev, %struct.device_node* %np, i8* %name, i8* %parent_name, i32 %index, i64 %flags, i32 %mult, i32 %div) #0 !dbg !2347 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2350, metadata !DIExpression()), !dbg !2354
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2362, metadata !DIExpression()), !dbg !2363
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2364, metadata !DIExpression()), !dbg !2365
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2366, metadata !DIExpression()), !dbg !2367
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2368, metadata !DIExpression()), !dbg !2372
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2374, metadata !DIExpression()), !dbg !2378
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2380, metadata !DIExpression()), !dbg !2384
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2389, metadata !DIExpression()), !dbg !2390
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2391, metadata !DIExpression()), !dbg !2392
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2393, metadata !DIExpression()), !dbg !2394
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2395, metadata !DIExpression()), !dbg !2396
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2397, metadata !DIExpression()), !dbg !2398
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2399, metadata !DIExpression()), !dbg !2400
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2401, metadata !DIExpression()), !dbg !2402
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2403, metadata !DIExpression()), !dbg !2404
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %index.addr = alloca i32, align 4
  %flags.addr = alloca i64, align 8
  %mult.addr = alloca i32, align 4
  %div.addr = alloca i32, align 4
  %fix = alloca %struct.clk_fixed_factor*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %pdata = alloca %struct.clk_parent_data, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2405, metadata !DIExpression()), !dbg !2406
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2407, metadata !DIExpression()), !dbg !2408
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2409, metadata !DIExpression()), !dbg !2410
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2411, metadata !DIExpression()), !dbg !2412
  store i32 %index, i32* %index.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %index.addr, metadata !2413, metadata !DIExpression()), !dbg !2414
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2415, metadata !DIExpression()), !dbg !2416
  store i32 %mult, i32* %mult.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mult.addr, metadata !2417, metadata !DIExpression()), !dbg !2418
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2419, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_factor** %fix, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !2423, metadata !DIExpression()), !dbg !2424
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !2424
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !2424
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data* %pdata, metadata !2425, metadata !DIExpression()), !dbg !2426
  %1 = bitcast %struct.clk_parent_data* %pdata to i8*, !dbg !2426
  call void @llvm.memset.p0i8.i64(i8* align 8 %1, i8 0, i64 32, i1 false), !dbg !2426
  %index2 = getelementptr inbounds %struct.clk_parent_data, %struct.clk_parent_data* %pdata, i32 0, i32 3, !dbg !2427
  %2 = load i32, i32* %index.addr, align 4, !dbg !2428
  store i32 %2, i32* %index2, align 8, !dbg !2427
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2429, metadata !DIExpression()), !dbg !2430
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2431, metadata !DIExpression()), !dbg !2432
  store i64 32, i64* %size.addr.i, align 8
  store i32 3264, i32* %flags.addr.i, align 4
  %3 = load i64, i64* %size.addr.i, align 8, !dbg !2433
  %4 = call i1 @llvm.is.constant.i64(i64 %3) #10, !dbg !2434
  br i1 %4, label %if.then.i, label %if.end9.i, !dbg !2435

if.then.i:                                        ; preds = %entry
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2436
  %cmp.i = icmp ugt i64 %5, 8192, !dbg !2437
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2438

if.then1.i:                                       ; preds = %if.then.i
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !2439
  %7 = load i32, i32* %flags.addr.i, align 4, !dbg !2440
  store i64 %6, i64* %size.addr.i.i, align 8
  store i32 %7, i32* %flags.addr.i.i, align 4
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2441
  %call.i.i = call i32 @get_order(i64 %8) #11, !dbg !2442
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2398
  %9 = load i64, i64* %size.addr.i.i, align 8, !dbg !2443
  %10 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2444
  %11 = load i32, i32* %order.i.i, align 4, !dbg !2445
  store i64 %9, i64* %size.addr.i.i.i, align 8
  store i32 %10, i32* %flags.addr.i.i.i, align 4
  store i32 %11, i32* %order.addr.i.i.i, align 4
  %12 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2446
  %13 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2447
  %14 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2448
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %12, i32 %13, i32 %14) #12, !dbg !2449
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2449
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2449
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2449
  call void @llvm.assume(i1 %maskcond.i.i.i) #10, !dbg !2449
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2450
  br label %kmalloc.exit, !dbg !2450

if.end.i:                                         ; preds = %if.then.i
  %15 = load i64, i64* %size.addr.i, align 8, !dbg !2451
  store i64 %15, i64* %size.addr.i11.i, align 8
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2452
  %tobool.i.i = icmp ne i64 %16, 0, !dbg !2452
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2454

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2455
  br label %kmalloc_index.exit.i, !dbg !2455

if.end.i.i:                                       ; preds = %if.end.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2456
  %cmp.i.i = icmp ule i64 %17, 8, !dbg !2458
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2459

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2460
  br label %kmalloc_index.exit.i, !dbg !2460

if.end2.i.i:                                      ; preds = %if.end.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2461
  %cmp3.i.i = icmp ugt i64 %18, 64, !dbg !2463
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2464

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2465
  %cmp4.i.i = icmp ule i64 %19, 96, !dbg !2466
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2467

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2468
  br label %kmalloc_index.exit.i, !dbg !2468

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2469
  %cmp7.i.i = icmp ugt i64 %20, 128, !dbg !2471
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2472

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2473
  %cmp9.i.i = icmp ule i64 %21, 192, !dbg !2474
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2475

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2476
  br label %kmalloc_index.exit.i, !dbg !2476

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2477
  %cmp12.i.i = icmp ule i64 %22, 8, !dbg !2479
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2480

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2481
  br label %kmalloc_index.exit.i, !dbg !2481

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2482
  %cmp15.i.i = icmp ule i64 %23, 16, !dbg !2484
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2485

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2486
  br label %kmalloc_index.exit.i, !dbg !2486

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2487
  %cmp18.i.i = icmp ule i64 %24, 32, !dbg !2489
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2490

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2491
  br label %kmalloc_index.exit.i, !dbg !2491

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2492
  %cmp21.i.i = icmp ule i64 %25, 64, !dbg !2494
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2495

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2496
  br label %kmalloc_index.exit.i, !dbg !2496

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2497
  %cmp24.i.i = icmp ule i64 %26, 128, !dbg !2499
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2500

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2501
  br label %kmalloc_index.exit.i, !dbg !2501

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2502
  %cmp27.i.i = icmp ule i64 %27, 256, !dbg !2504
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2505

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2506
  br label %kmalloc_index.exit.i, !dbg !2506

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2507
  %cmp30.i.i = icmp ule i64 %28, 512, !dbg !2509
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2510

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2511
  br label %kmalloc_index.exit.i, !dbg !2511

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2512
  %cmp33.i.i = icmp ule i64 %29, 1024, !dbg !2514
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2515

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2516
  br label %kmalloc_index.exit.i, !dbg !2516

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2517
  %cmp36.i.i = icmp ule i64 %30, 2048, !dbg !2519
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2520

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2521
  br label %kmalloc_index.exit.i, !dbg !2521

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2522
  %cmp39.i.i = icmp ule i64 %31, 4096, !dbg !2524
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2525

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2526
  br label %kmalloc_index.exit.i, !dbg !2526

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2527
  %cmp42.i.i = icmp ule i64 %32, 8192, !dbg !2529
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2530

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2531
  br label %kmalloc_index.exit.i, !dbg !2531

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2532
  %cmp45.i.i = icmp ule i64 %33, 16384, !dbg !2534
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2535

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2536
  br label %kmalloc_index.exit.i, !dbg !2536

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2537
  %cmp48.i.i = icmp ule i64 %34, 32768, !dbg !2539
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2540

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2541
  br label %kmalloc_index.exit.i, !dbg !2541

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2542
  %cmp51.i.i = icmp ule i64 %35, 65536, !dbg !2544
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2545

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2546
  br label %kmalloc_index.exit.i, !dbg !2546

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2547
  %cmp54.i.i = icmp ule i64 %36, 131072, !dbg !2549
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2550

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2551
  br label %kmalloc_index.exit.i, !dbg !2551

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2552
  %cmp57.i.i = icmp ule i64 %37, 262144, !dbg !2554
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2555

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2556
  br label %kmalloc_index.exit.i, !dbg !2556

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2557
  %cmp60.i.i = icmp ule i64 %38, 524288, !dbg !2559
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2560

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2561
  br label %kmalloc_index.exit.i, !dbg !2561

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2562
  %cmp63.i.i = icmp ule i64 %39, 1048576, !dbg !2564
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2565

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2566
  br label %kmalloc_index.exit.i, !dbg !2566

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2567
  %cmp66.i.i = icmp ule i64 %40, 2097152, !dbg !2569
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2570

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2571
  br label %kmalloc_index.exit.i, !dbg !2571

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2572
  %cmp69.i.i = icmp ule i64 %41, 4194304, !dbg !2574
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2575

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2576
  br label %kmalloc_index.exit.i, !dbg !2576

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2577
  %cmp72.i.i = icmp ule i64 %42, 8388608, !dbg !2579
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2580

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2581
  br label %kmalloc_index.exit.i, !dbg !2581

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2582
  %cmp75.i.i = icmp ule i64 %43, 16777216, !dbg !2584
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2585

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2586
  br label %kmalloc_index.exit.i, !dbg !2586

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2587
  %cmp78.i.i = icmp ule i64 %44, 33554432, !dbg !2589
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2590

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2591
  br label %kmalloc_index.exit.i, !dbg !2591

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2592
  %cmp81.i.i = icmp ule i64 %45, 67108864, !dbg !2594
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2595

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2596
  br label %kmalloc_index.exit.i, !dbg !2596

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #10, !dbg !2597, !srcloc !2600
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #10, !dbg !2601, !srcloc !2604
  unreachable, !dbg !2605

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %46 = load i32, i32* %retval.i.i, align 4, !dbg !2606
  store i32 %46, i32* %index.i, align 4, !dbg !2607
  %47 = load i32, i32* %index.i, align 4, !dbg !2608
  %tobool.i = icmp ne i32 %47, 0, !dbg !2608
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2610

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2611
  br label %kmalloc.exit, !dbg !2611

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %48 = load i32, i32* %flags.addr.i, align 4, !dbg !2612
  store i32 %48, i32* %flags.addr.i13.i, align 4
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2613
  %and.i.i = and i32 %49, 17, !dbg !2613
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2613
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2613
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2613
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2613
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2615

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2616
  br label %kmalloc_type.exit.i, !dbg !2616

if.end.i16.i:                                     ; preds = %if.end4.i
  %50 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2617
  %and2.i.i = and i32 %50, 1, !dbg !2618
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2617
  %51 = zext i1 %tobool3.i.i to i64, !dbg !2617
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2617
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2619
  br label %kmalloc_type.exit.i, !dbg !2619

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %52 = load i32, i32* %retval.i12.i, align 4, !dbg !2620
  %idxprom.i = zext i32 %52 to i64, !dbg !2621
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2621
  %53 = load i32, i32* %index.i, align 4, !dbg !2622
  %idxprom6.i = zext i32 %53 to i64, !dbg !2621
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2621
  %54 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2621
  %55 = load i32, i32* %flags.addr.i, align 4, !dbg !2623
  %56 = load i64, i64* %size.addr.i, align 8, !dbg !2624
  store %struct.kmem_cache* %54, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %55, i32* %flags.addr.i17.i, align 4
  store i64 %56, i64* %size.addr.i18.i, align 8
  %57 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2625
  %58 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2626
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %57, i32 %58) #12, !dbg !2627
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2627
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2627
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2627
  call void @llvm.assume(i1 %maskcond.i.i) #10, !dbg !2627
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2367
  %59 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2628
  %60 = load i8*, i8** %ret.i.i, align 8, !dbg !2629
  %61 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2630
  %62 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2631
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %59, i8* %60, i64 %61, i32 %62) #12, !dbg !2632
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2633
  %63 = load i8*, i8** %ret.i.i, align 8, !dbg !2634
  store i8* %63, i8** %retval.i, align 8, !dbg !2635
  br label %kmalloc.exit, !dbg !2635

if.end9.i:                                        ; preds = %entry
  %64 = load i64, i64* %size.addr.i, align 8, !dbg !2636
  %65 = load i32, i32* %flags.addr.i, align 4, !dbg !2637
  %call10.i = call noalias i8* @__kmalloc(i64 %64, i32 %65) #12, !dbg !2638
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2638
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2638
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2638
  call void @llvm.assume(i1 %maskcond.i) #10, !dbg !2638
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2639
  br label %kmalloc.exit, !dbg !2639

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %66 = load i8*, i8** %retval.i, align 8, !dbg !2640
  %67 = bitcast i8* %66 to %struct.clk_fixed_factor*, !dbg !2641
  store %struct.clk_fixed_factor* %67, %struct.clk_fixed_factor** %fix, align 8, !dbg !2642
  %68 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2643
  %tobool = icmp ne %struct.clk_fixed_factor* %68, null, !dbg !2643
  br i1 %tobool, label %if.end, label %if.then, !dbg !2645

if.then:                                          ; preds = %kmalloc.exit
  %call3 = call i8* @ERR_PTR(i64 -12) #9, !dbg !2646
  %69 = bitcast i8* %call3 to %struct.clk_hw*, !dbg !2646
  store %struct.clk_hw* %69, %struct.clk_hw** %retval, align 8, !dbg !2647
  br label %return, !dbg !2647

if.end:                                           ; preds = %kmalloc.exit
  %70 = load i32, i32* %mult.addr, align 4, !dbg !2648
  %71 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2649
  %mult4 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %71, i32 0, i32 1, !dbg !2650
  store i32 %70, i32* %mult4, align 8, !dbg !2651
  %72 = load i32, i32* %div.addr, align 4, !dbg !2652
  %73 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2653
  %div5 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %73, i32 0, i32 2, !dbg !2654
  store i32 %72, i32* %div5, align 4, !dbg !2655
  %74 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2656
  %hw6 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %74, i32 0, i32 0, !dbg !2657
  %init7 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw6, i32 0, i32 2, !dbg !2658
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init7, align 8, !dbg !2659
  %75 = load i8*, i8** %name.addr, align 8, !dbg !2660
  %name8 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2661
  store i8* %75, i8** %name8, align 8, !dbg !2662
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !2663
  store %struct.clk_ops* bitcast ({ i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }* @clk_fixed_factor_ops to %struct.clk_ops*), %struct.clk_ops** %ops, align 8, !dbg !2664
  %76 = load i64, i64* %flags.addr, align 8, !dbg !2665
  %flags9 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !2666
  store i64 %76, i64* %flags9, align 8, !dbg !2667
  %77 = load i8*, i8** %parent_name.addr, align 8, !dbg !2668
  %tobool10 = icmp ne i8* %77, null, !dbg !2668
  br i1 %tobool10, label %if.then11, label %if.else, !dbg !2670

if.then11:                                        ; preds = %if.end
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !2671
  store i8** %parent_name.addr, i8*** %parent_names, align 8, !dbg !2672
  br label %if.end12, !dbg !2673

if.else:                                          ; preds = %if.end
  %parent_data = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 3, !dbg !2674
  store %struct.clk_parent_data* %pdata, %struct.clk_parent_data** %parent_data, align 8, !dbg !2675
  br label %if.end12

if.end12:                                         ; preds = %if.else, %if.then11
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !2676
  store i8 1, i8* %num_parents, align 8, !dbg !2677
  %78 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2678
  %hw13 = getelementptr inbounds %struct.clk_fixed_factor, %struct.clk_fixed_factor* %78, i32 0, i32 0, !dbg !2679
  store %struct.clk_hw* %hw13, %struct.clk_hw** %hw, align 8, !dbg !2680
  %79 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2681
  %tobool14 = icmp ne %struct.device* %79, null, !dbg !2681
  br i1 %tobool14, label %if.then15, label %if.else17, !dbg !2683

if.then15:                                        ; preds = %if.end12
  %80 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2684
  %81 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2685
  %call16 = call i32 @clk_hw_register(%struct.device* %80, %struct.clk_hw* %81) #9, !dbg !2686
  store i32 %call16, i32* %ret, align 4, !dbg !2687
  br label %if.end19, !dbg !2688

if.else17:                                        ; preds = %if.end12
  %82 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2689
  %83 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2690
  %call18 = call i32 @of_clk_hw_register(%struct.device_node* %82, %struct.clk_hw* %83) #9, !dbg !2691
  store i32 %call18, i32* %ret, align 4, !dbg !2692
  br label %if.end19

if.end19:                                         ; preds = %if.else17, %if.then15
  %84 = load i32, i32* %ret, align 4, !dbg !2693
  %tobool20 = icmp ne i32 %84, 0, !dbg !2693
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !2695

if.then21:                                        ; preds = %if.end19
  %85 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2696
  %86 = bitcast %struct.clk_fixed_factor* %85 to i8*, !dbg !2696
  call void @kfree(i8* %86) #9, !dbg !2698
  %87 = load i32, i32* %ret, align 4, !dbg !2699
  %conv = sext i32 %87 to i64, !dbg !2699
  %call22 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !2700
  %88 = bitcast i8* %call22 to %struct.clk_hw*, !dbg !2700
  store %struct.clk_hw* %88, %struct.clk_hw** %hw, align 8, !dbg !2701
  br label %if.end23, !dbg !2702

if.end23:                                         ; preds = %if.then21, %if.end19
  %89 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2703
  store %struct.clk_hw* %89, %struct.clk_hw** %retval, align 8, !dbg !2704
  br label %return, !dbg !2704

return:                                           ; preds = %if.end23, %if.then
  %90 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !2705
  ret %struct.clk_hw* %90, !dbg !2705
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_fixed_factor(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i32 %mult, i32 %div) #0 !dbg !2706 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %mult.addr = alloca i32, align 4
  %div.addr = alloca i32, align 4
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2709, metadata !DIExpression()), !dbg !2710
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2711, metadata !DIExpression()), !dbg !2712
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  store i32 %mult, i32* %mult.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mult.addr, metadata !2717, metadata !DIExpression()), !dbg !2718
  store i32 %div, i32* %div.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %div.addr, metadata !2719, metadata !DIExpression()), !dbg !2720
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2721, metadata !DIExpression()), !dbg !2722
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2723
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2724
  %2 = load i8*, i8** %parent_name.addr, align 8, !dbg !2725
  %3 = load i64, i64* %flags.addr, align 8, !dbg !2726
  %4 = load i32, i32* %mult.addr, align 4, !dbg !2727
  %5 = load i32, i32* %div.addr, align 4, !dbg !2728
  %call = call %struct.clk_hw* @clk_hw_register_fixed_factor(%struct.device* %0, i8* %1, i8* %2, i64 %3, i32 %4, i32 %5) #9, !dbg !2729
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2730
  %6 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2731
  %7 = bitcast %struct.clk_hw* %6 to i8*, !dbg !2731
  %call1 = call zeroext i1 @IS_ERR(i8* %7) #9, !dbg !2733
  br i1 %call1, label %if.then, label %if.end, !dbg !2734

if.then:                                          ; preds = %entry
  %8 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2735
  %9 = bitcast %struct.clk_hw* %8 to i8*, !dbg !2735
  %call2 = call i8* @ERR_CAST(i8* %9) #9, !dbg !2736
  %10 = bitcast i8* %call2 to %struct.clk*, !dbg !2736
  store %struct.clk* %10, %struct.clk** %retval, align 8, !dbg !2737
  br label %return, !dbg !2737

if.end:                                           ; preds = %entry
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2738
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %11, i32 0, i32 1, !dbg !2739
  %12 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2739
  store %struct.clk* %12, %struct.clk** %retval, align 8, !dbg !2740
  br label %return, !dbg !2740

return:                                           ; preds = %if.end, %if.then
  %13 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !2741
  ret %struct.clk* %13, !dbg !2741
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2742 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2746, metadata !DIExpression()), !dbg !2747
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2748
  %1 = ptrtoint i8* %0 to i64, !dbg !2748
  %2 = inttoptr i64 %1 to i8*, !dbg !2748
  %3 = ptrtoint i8* %2 to i64, !dbg !2748
  %cmp = icmp uge i64 %3, -4095, !dbg !2748
  %lnot = xor i1 %cmp, true, !dbg !2748
  %lnot1 = xor i1 %lnot, true, !dbg !2748
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2748
  %conv = sext i32 %lnot.ext to i64, !dbg !2748
  %tobool = icmp ne i64 %conv, 0, !dbg !2748
  ret i1 %tobool, !dbg !2749
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !2750 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2753, metadata !DIExpression()), !dbg !2754
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2755
  ret i8* %0, !dbg !2756
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_unregister_fixed_factor(%struct.clk* %clk) #0 !dbg !2757 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_factor*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2760, metadata !DIExpression()), !dbg !2761
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2762, metadata !DIExpression()), !dbg !2763
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2764
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #9, !dbg !2765
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2766
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2767
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !2767
  br i1 %tobool, label %if.end, label %if.then, !dbg !2769

if.then:                                          ; preds = %entry
  br label %return, !dbg !2770

if.end:                                           ; preds = %entry
  %2 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2771
  call void @clk_unregister(%struct.clk* %2) #9, !dbg !2772
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2773, metadata !DIExpression()), !dbg !2775
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2775
  %4 = bitcast %struct.clk_hw* %3 to i8*, !dbg !2775
  store i8* %4, i8** %__mptr, align 8, !dbg !2775
  br label %do.body, !dbg !2775

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2776

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2775
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !2775
  %6 = bitcast i8* %add.ptr to %struct.clk_fixed_factor*, !dbg !2775
  store %struct.clk_fixed_factor* %6, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2776
  %7 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2775
  %8 = bitcast %struct.clk_fixed_factor* %7 to i8*, !dbg !2778
  call void @kfree(i8* %8) #9, !dbg !2779
  br label %return, !dbg !2780

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !2780
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @clk_unregister(%struct.clk*) #2

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_fixed_factor(%struct.clk_hw* %hw) #0 !dbg !2781 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %fix = alloca %struct.clk_fixed_factor*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_factor*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2782, metadata !DIExpression()), !dbg !2783
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_factor** %fix, metadata !2784, metadata !DIExpression()), !dbg !2785
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2786, metadata !DIExpression()), !dbg !2788
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2788
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2788
  store i8* %1, i8** %__mptr, align 8, !dbg !2788
  br label %do.body, !dbg !2788

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2789

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2788
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2788
  %3 = bitcast i8* %add.ptr to %struct.clk_fixed_factor*, !dbg !2788
  store %struct.clk_fixed_factor* %3, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2789
  %4 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %tmp, align 8, !dbg !2788
  store %struct.clk_fixed_factor* %4, %struct.clk_fixed_factor** %fix, align 8, !dbg !2791
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2792
  call void @clk_hw_unregister(%struct.clk_hw* %5) #9, !dbg !2793
  %6 = load %struct.clk_fixed_factor*, %struct.clk_fixed_factor** %fix, align 8, !dbg !2794
  %7 = bitcast %struct.clk_fixed_factor* %6 to i8*, !dbg !2794
  call void @kfree(i8* %7) #9, !dbg !2795
  ret void, !dbg !2796
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @of_fixed_factor_clk_setup(%struct.device_node* %node) #3 section ".init.text" !dbg !2797 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2800, metadata !DIExpression()), !dbg !2801
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2802
  %call = call %struct.clk_hw* @_of_fixed_factor_clk_setup(%struct.device_node* %0) #9, !dbg !2803
  ret void, !dbg !2804
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @_of_fixed_factor_clk_setup(%struct.device_node* %node) #0 !dbg !2805 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %clk_name = alloca i8*, align 8
  %flags = alloca i64, align 8
  %div = alloca i32, align 4
  %mult = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2808, metadata !DIExpression()), !dbg !2809
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2810, metadata !DIExpression()), !dbg !2811
  call void @llvm.dbg.declare(metadata i8** %clk_name, metadata !2812, metadata !DIExpression()), !dbg !2813
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2814
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i32 0, i32 0, !dbg !2815
  %1 = load i8*, i8** %name, align 8, !dbg !2815
  store i8* %1, i8** %clk_name, align 8, !dbg !2813
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2816, metadata !DIExpression()), !dbg !2817
  store i64 0, i64* %flags, align 8, !dbg !2817
  call void @llvm.dbg.declare(metadata i32* %div, metadata !2818, metadata !DIExpression()), !dbg !2819
  call void @llvm.dbg.declare(metadata i32* %mult, metadata !2820, metadata !DIExpression()), !dbg !2821
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2822, metadata !DIExpression()), !dbg !2823
  %2 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2824
  %call = call i32 @of_property_read_u32(%struct.device_node* %2, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32* %div) #9, !dbg !2826
  %tobool = icmp ne i32 %call, 0, !dbg !2826
  br i1 %tobool, label %if.then, label %if.end, !dbg !2827

if.then:                                          ; preds = %entry
  %3 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2828
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__._of_fixed_factor_clk_setup, i64 0, i64 0), %struct.device_node* %3) #13, !dbg !2828
  %call2 = call i8* @ERR_PTR(i64 -5) #9, !dbg !2830
  %4 = bitcast i8* %call2 to %struct.clk_hw*, !dbg !2830
  store %struct.clk_hw* %4, %struct.clk_hw** %retval, align 8, !dbg !2831
  br label %return, !dbg !2831

if.end:                                           ; preds = %entry
  %5 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2832
  %call3 = call i32 @of_property_read_u32(%struct.device_node* %5, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0), i32* %mult) #9, !dbg !2834
  %tobool4 = icmp ne i32 %call3, 0, !dbg !2834
  br i1 %tobool4, label %if.then5, label %if.end8, !dbg !2835

if.then5:                                         ; preds = %if.end
  %6 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2836
  %call6 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str.4, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__func__._of_fixed_factor_clk_setup, i64 0, i64 0), %struct.device_node* %6) #13, !dbg !2836
  %call7 = call i8* @ERR_PTR(i64 -5) #9, !dbg !2838
  %7 = bitcast i8* %call7 to %struct.clk_hw*, !dbg !2838
  store %struct.clk_hw* %7, %struct.clk_hw** %retval, align 8, !dbg !2839
  br label %return, !dbg !2839

if.end8:                                          ; preds = %if.end
  %8 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2840
  %call9 = call i32 @of_property_read_string(%struct.device_node* %8, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.5, i64 0, i64 0), i8** %clk_name) #9, !dbg !2841
  %9 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2842
  %call10 = call %struct.of_device_id* @of_match_node(%struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @set_rate_parent_matches, i64 0, i64 0), %struct.device_node* %9) #9, !dbg !2844
  %tobool11 = icmp ne %struct.of_device_id* %call10, null, !dbg !2844
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !2845

if.then12:                                        ; preds = %if.end8
  %10 = load i64, i64* %flags, align 8, !dbg !2846
  %or = or i64 %10, 4, !dbg !2846
  store i64 %or, i64* %flags, align 8, !dbg !2846
  br label %if.end13, !dbg !2847

if.end13:                                         ; preds = %if.then12, %if.end8
  %11 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2848
  %12 = load i8*, i8** %clk_name, align 8, !dbg !2849
  %13 = load i64, i64* %flags, align 8, !dbg !2850
  %14 = load i32, i32* %mult, align 4, !dbg !2851
  %15 = load i32, i32* %div, align 4, !dbg !2852
  %call14 = call %struct.clk_hw* @__clk_hw_register_fixed_factor(%struct.device* null, %struct.device_node* %11, i8* %12, i8* null, i32 0, i64 %13, i32 %14, i32 %15) #9, !dbg !2853
  store %struct.clk_hw* %call14, %struct.clk_hw** %hw, align 8, !dbg !2854
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2855
  %17 = bitcast %struct.clk_hw* %16 to i8*, !dbg !2855
  %call15 = call zeroext i1 @IS_ERR(i8* %17) #9, !dbg !2857
  br i1 %call15, label %if.then16, label %if.end18, !dbg !2858

if.then16:                                        ; preds = %if.end13
  %18 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2859
  call void @of_node_clear_flag(%struct.device_node* %18, i64 3) #9, !dbg !2861
  %19 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2862
  %20 = bitcast %struct.clk_hw* %19 to i8*, !dbg !2862
  %call17 = call i8* @ERR_CAST(i8* %20) #9, !dbg !2863
  %21 = bitcast i8* %call17 to %struct.clk_hw*, !dbg !2863
  store %struct.clk_hw* %21, %struct.clk_hw** %retval, align 8, !dbg !2864
  br label %return, !dbg !2864

if.end18:                                         ; preds = %if.end13
  %22 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2865
  %23 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2866
  %24 = bitcast %struct.clk_hw* %23 to i8*, !dbg !2866
  %call19 = call i32 @of_clk_add_hw_provider(%struct.device_node* %22, %struct.clk_hw* (%struct.of_phandle_args*, i8*)* @of_clk_hw_simple_get, i8* %24) #9, !dbg !2867
  store i32 %call19, i32* %ret, align 4, !dbg !2868
  %25 = load i32, i32* %ret, align 4, !dbg !2869
  %tobool20 = icmp ne i32 %25, 0, !dbg !2869
  br i1 %tobool20, label %if.then21, label %if.end23, !dbg !2871

if.then21:                                        ; preds = %if.end18
  %26 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2872
  call void @clk_hw_unregister_fixed_factor(%struct.clk_hw* %26) #9, !dbg !2874
  %27 = load i32, i32* %ret, align 4, !dbg !2875
  %conv = sext i32 %27 to i64, !dbg !2875
  %call22 = call i8* @ERR_PTR(i64 %conv) #9, !dbg !2876
  %28 = bitcast i8* %call22 to %struct.clk_hw*, !dbg !2876
  store %struct.clk_hw* %28, %struct.clk_hw** %retval, align 8, !dbg !2877
  br label %return, !dbg !2877

if.end23:                                         ; preds = %if.end18
  %29 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2878
  store %struct.clk_hw* %29, %struct.clk_hw** %retval, align 8, !dbg !2879
  br label %return, !dbg !2879

return:                                           ; preds = %if.end23, %if.then21, %if.then16, %if.then5, %if.then
  %30 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !2880
  ret %struct.clk_hw* %30, !dbg !2880
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fixed_factor_clk_driver_init() #3 section ".init.text" !dbg !2881 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @of_fixed_factor_clk_driver, %struct.module* null) #9, !dbg !2884
  ret i32 %call, !dbg !2884
}

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_get_flags(%struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i64 @clk_hw_round_rate(%struct.clk_hw*, i64) #2

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @clk_hw_get_parent(%struct.clk_hw*) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2885 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2888, metadata !DIExpression()), !dbg !2889
  %0 = load i64, i64* %error.addr, align 8, !dbg !2890
  %1 = inttoptr i64 %0 to i8*, !dbg !2891
  ret i8* %1, !dbg !2892
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_clk_hw_register(%struct.device_node*, %struct.clk_hw*) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !2893 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2897, metadata !DIExpression()), !dbg !2902
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2904, metadata !DIExpression()), !dbg !2905
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  %0 = load i64, i64* %size.addr, align 8, !dbg !2908
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2910
  br i1 %1, label %if.then, label %if.end447, !dbg !2911

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2912
  %tobool = icmp ne i64 %2, 0, !dbg !2912
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2915

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2916
  br label %return, !dbg !2916

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2917
  %cmp = icmp ult i64 %3, 4096, !dbg !2919
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2920

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2921
  br label %return, !dbg !2921

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub = sub i64 %4, 1, !dbg !2922
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2922
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2922

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub4 = sub i64 %6, 1, !dbg !2922
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2922
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2922

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub6 = sub i64 %8, 1, !dbg !2922
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2922
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2922

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2922

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub9 = sub i64 %9, 1, !dbg !2922
  %and = and i64 %sub9, -9223372036854775808, !dbg !2922
  %tobool10 = icmp ne i64 %and, 0, !dbg !2922
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2922

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2922

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub13 = sub i64 %10, 1, !dbg !2922
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2922
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2922
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2922

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2922

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub18 = sub i64 %11, 1, !dbg !2922
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2922
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2922
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2922

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2922

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub23 = sub i64 %12, 1, !dbg !2922
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2922
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2922
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2922

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2922

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub28 = sub i64 %13, 1, !dbg !2922
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2922
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2922
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2922

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2922

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub33 = sub i64 %14, 1, !dbg !2922
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2922
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2922
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2922

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2922

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub38 = sub i64 %15, 1, !dbg !2922
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2922
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2922
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2922

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2922

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub43 = sub i64 %16, 1, !dbg !2922
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2922
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2922
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2922

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2922

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub48 = sub i64 %17, 1, !dbg !2922
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2922
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2922
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2922

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2922

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub53 = sub i64 %18, 1, !dbg !2922
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2922
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2922
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2922

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2922

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub58 = sub i64 %19, 1, !dbg !2922
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2922
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2922
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2922

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2922

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub63 = sub i64 %20, 1, !dbg !2922
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2922
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2922
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2922

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2922

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub68 = sub i64 %21, 1, !dbg !2922
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2922
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2922
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2922

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2922

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub73 = sub i64 %22, 1, !dbg !2922
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2922
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2922
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2922

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2922

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub78 = sub i64 %23, 1, !dbg !2922
  %and79 = and i64 %sub78, 562949953421312, !dbg !2922
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2922
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2922

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2922

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub83 = sub i64 %24, 1, !dbg !2922
  %and84 = and i64 %sub83, 281474976710656, !dbg !2922
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2922
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2922

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2922

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub88 = sub i64 %25, 1, !dbg !2922
  %and89 = and i64 %sub88, 140737488355328, !dbg !2922
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2922
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2922

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2922

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub93 = sub i64 %26, 1, !dbg !2922
  %and94 = and i64 %sub93, 70368744177664, !dbg !2922
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2922
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2922

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2922

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub98 = sub i64 %27, 1, !dbg !2922
  %and99 = and i64 %sub98, 35184372088832, !dbg !2922
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2922
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2922

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2922

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub103 = sub i64 %28, 1, !dbg !2922
  %and104 = and i64 %sub103, 17592186044416, !dbg !2922
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2922
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2922

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2922

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub108 = sub i64 %29, 1, !dbg !2922
  %and109 = and i64 %sub108, 8796093022208, !dbg !2922
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2922
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2922

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2922

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub113 = sub i64 %30, 1, !dbg !2922
  %and114 = and i64 %sub113, 4398046511104, !dbg !2922
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2922
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2922

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2922

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub118 = sub i64 %31, 1, !dbg !2922
  %and119 = and i64 %sub118, 2199023255552, !dbg !2922
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2922
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2922

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2922

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub123 = sub i64 %32, 1, !dbg !2922
  %and124 = and i64 %sub123, 1099511627776, !dbg !2922
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2922
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2922

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2922

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub128 = sub i64 %33, 1, !dbg !2922
  %and129 = and i64 %sub128, 549755813888, !dbg !2922
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2922
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2922

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2922

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub133 = sub i64 %34, 1, !dbg !2922
  %and134 = and i64 %sub133, 274877906944, !dbg !2922
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2922
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2922

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2922

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub138 = sub i64 %35, 1, !dbg !2922
  %and139 = and i64 %sub138, 137438953472, !dbg !2922
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2922
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2922

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2922

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub143 = sub i64 %36, 1, !dbg !2922
  %and144 = and i64 %sub143, 68719476736, !dbg !2922
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2922
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2922

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2922

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub148 = sub i64 %37, 1, !dbg !2922
  %and149 = and i64 %sub148, 34359738368, !dbg !2922
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2922
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2922

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2922

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub153 = sub i64 %38, 1, !dbg !2922
  %and154 = and i64 %sub153, 17179869184, !dbg !2922
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2922
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2922

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2922

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub158 = sub i64 %39, 1, !dbg !2922
  %and159 = and i64 %sub158, 8589934592, !dbg !2922
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2922
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2922

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2922

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub163 = sub i64 %40, 1, !dbg !2922
  %and164 = and i64 %sub163, 4294967296, !dbg !2922
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2922
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2922

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2922

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub168 = sub i64 %41, 1, !dbg !2922
  %and169 = and i64 %sub168, 2147483648, !dbg !2922
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2922
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2922

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2922

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub173 = sub i64 %42, 1, !dbg !2922
  %and174 = and i64 %sub173, 1073741824, !dbg !2922
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2922
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2922

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2922

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub178 = sub i64 %43, 1, !dbg !2922
  %and179 = and i64 %sub178, 536870912, !dbg !2922
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2922
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2922

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2922

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub183 = sub i64 %44, 1, !dbg !2922
  %and184 = and i64 %sub183, 268435456, !dbg !2922
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2922
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2922

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2922

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub188 = sub i64 %45, 1, !dbg !2922
  %and189 = and i64 %sub188, 134217728, !dbg !2922
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2922
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2922

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2922

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub193 = sub i64 %46, 1, !dbg !2922
  %and194 = and i64 %sub193, 67108864, !dbg !2922
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2922
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2922

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2922

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub198 = sub i64 %47, 1, !dbg !2922
  %and199 = and i64 %sub198, 33554432, !dbg !2922
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2922
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2922

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2922

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub203 = sub i64 %48, 1, !dbg !2922
  %and204 = and i64 %sub203, 16777216, !dbg !2922
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2922
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2922

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2922

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub208 = sub i64 %49, 1, !dbg !2922
  %and209 = and i64 %sub208, 8388608, !dbg !2922
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2922
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2922

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2922

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub213 = sub i64 %50, 1, !dbg !2922
  %and214 = and i64 %sub213, 4194304, !dbg !2922
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2922
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2922

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2922

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub218 = sub i64 %51, 1, !dbg !2922
  %and219 = and i64 %sub218, 2097152, !dbg !2922
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2922
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2922

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2922

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub223 = sub i64 %52, 1, !dbg !2922
  %and224 = and i64 %sub223, 1048576, !dbg !2922
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2922
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2922

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2922

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub228 = sub i64 %53, 1, !dbg !2922
  %and229 = and i64 %sub228, 524288, !dbg !2922
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2922
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2922

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2922

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub233 = sub i64 %54, 1, !dbg !2922
  %and234 = and i64 %sub233, 262144, !dbg !2922
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2922
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2922

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2922

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub238 = sub i64 %55, 1, !dbg !2922
  %and239 = and i64 %sub238, 131072, !dbg !2922
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2922
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2922

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2922

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub243 = sub i64 %56, 1, !dbg !2922
  %and244 = and i64 %sub243, 65536, !dbg !2922
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2922
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2922

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2922

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub248 = sub i64 %57, 1, !dbg !2922
  %and249 = and i64 %sub248, 32768, !dbg !2922
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2922
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2922

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2922

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub253 = sub i64 %58, 1, !dbg !2922
  %and254 = and i64 %sub253, 16384, !dbg !2922
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2922
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2922

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2922

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub258 = sub i64 %59, 1, !dbg !2922
  %and259 = and i64 %sub258, 8192, !dbg !2922
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2922
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2922

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2922

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub263 = sub i64 %60, 1, !dbg !2922
  %and264 = and i64 %sub263, 4096, !dbg !2922
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2922
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2922

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2922

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub268 = sub i64 %61, 1, !dbg !2922
  %and269 = and i64 %sub268, 2048, !dbg !2922
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2922
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2922

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2922

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub273 = sub i64 %62, 1, !dbg !2922
  %and274 = and i64 %sub273, 1024, !dbg !2922
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2922
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2922

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2922

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub278 = sub i64 %63, 1, !dbg !2922
  %and279 = and i64 %sub278, 512, !dbg !2922
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2922
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2922

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2922

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub283 = sub i64 %64, 1, !dbg !2922
  %and284 = and i64 %sub283, 256, !dbg !2922
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2922
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2922

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2922

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub288 = sub i64 %65, 1, !dbg !2922
  %and289 = and i64 %sub288, 128, !dbg !2922
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2922
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2922

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2922

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub293 = sub i64 %66, 1, !dbg !2922
  %and294 = and i64 %sub293, 64, !dbg !2922
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2922
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2922

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2922

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub298 = sub i64 %67, 1, !dbg !2922
  %and299 = and i64 %sub298, 32, !dbg !2922
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2922
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2922

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2922

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub303 = sub i64 %68, 1, !dbg !2922
  %and304 = and i64 %sub303, 16, !dbg !2922
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2922
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2922

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2922

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub308 = sub i64 %69, 1, !dbg !2922
  %and309 = and i64 %sub308, 8, !dbg !2922
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2922
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2922

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2922

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub313 = sub i64 %70, 1, !dbg !2922
  %and314 = and i64 %sub313, 4, !dbg !2922
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2922
  %71 = zext i1 %tobool315 to i64, !dbg !2922
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2922
  br label %cond.end, !dbg !2922

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2922
  br label %cond.end317, !dbg !2922

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2922
  br label %cond.end319, !dbg !2922

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2922
  br label %cond.end321, !dbg !2922

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2922
  br label %cond.end323, !dbg !2922

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2922
  br label %cond.end325, !dbg !2922

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2922
  br label %cond.end327, !dbg !2922

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2922
  br label %cond.end329, !dbg !2922

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2922
  br label %cond.end331, !dbg !2922

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2922
  br label %cond.end333, !dbg !2922

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2922
  br label %cond.end335, !dbg !2922

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2922
  br label %cond.end337, !dbg !2922

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2922
  br label %cond.end339, !dbg !2922

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2922
  br label %cond.end341, !dbg !2922

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2922
  br label %cond.end343, !dbg !2922

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2922
  br label %cond.end345, !dbg !2922

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2922
  br label %cond.end347, !dbg !2922

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2922
  br label %cond.end349, !dbg !2922

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2922
  br label %cond.end351, !dbg !2922

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2922
  br label %cond.end353, !dbg !2922

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2922
  br label %cond.end355, !dbg !2922

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2922
  br label %cond.end357, !dbg !2922

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2922
  br label %cond.end359, !dbg !2922

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2922
  br label %cond.end361, !dbg !2922

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2922
  br label %cond.end363, !dbg !2922

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2922
  br label %cond.end365, !dbg !2922

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2922
  br label %cond.end367, !dbg !2922

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2922
  br label %cond.end369, !dbg !2922

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2922
  br label %cond.end371, !dbg !2922

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2922
  br label %cond.end373, !dbg !2922

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2922
  br label %cond.end375, !dbg !2922

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2922
  br label %cond.end377, !dbg !2922

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2922
  br label %cond.end379, !dbg !2922

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2922
  br label %cond.end381, !dbg !2922

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2922
  br label %cond.end383, !dbg !2922

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2922
  br label %cond.end385, !dbg !2922

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2922
  br label %cond.end387, !dbg !2922

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2922
  br label %cond.end389, !dbg !2922

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2922
  br label %cond.end391, !dbg !2922

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2922
  br label %cond.end393, !dbg !2922

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2922
  br label %cond.end395, !dbg !2922

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2922
  br label %cond.end397, !dbg !2922

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2922
  br label %cond.end399, !dbg !2922

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2922
  br label %cond.end401, !dbg !2922

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2922
  br label %cond.end403, !dbg !2922

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2922
  br label %cond.end405, !dbg !2922

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2922
  br label %cond.end407, !dbg !2922

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2922
  br label %cond.end409, !dbg !2922

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2922
  br label %cond.end411, !dbg !2922

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2922
  br label %cond.end413, !dbg !2922

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2922
  br label %cond.end415, !dbg !2922

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2922
  br label %cond.end417, !dbg !2922

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2922
  br label %cond.end419, !dbg !2922

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2922
  br label %cond.end421, !dbg !2922

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2922
  br label %cond.end423, !dbg !2922

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2922
  br label %cond.end425, !dbg !2922

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2922
  br label %cond.end427, !dbg !2922

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2922
  br label %cond.end429, !dbg !2922

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2922
  br label %cond.end431, !dbg !2922

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2922
  br label %cond.end433, !dbg !2922

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2922
  br label %cond.end435, !dbg !2922

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2922
  br label %cond.end437, !dbg !2922

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2922
  br label %cond.end440, !dbg !2922

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2922

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2922
  br label %cond.end444, !dbg !2922

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2922
  %sub443 = sub i64 %72, 1, !dbg !2922
  %call = call i32 @__ilog2_u64(i64 %sub443) #11, !dbg !2922
  br label %cond.end444, !dbg !2922

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2922
  %sub446 = sub i32 %cond445, 12, !dbg !2923
  %add = add i32 %sub446, 1, !dbg !2924
  store i32 %add, i32* %retval, align 4, !dbg !2925
  br label %return, !dbg !2925

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2926
  %dec = add i64 %73, -1, !dbg !2926
  store i64 %dec, i64* %size.addr, align 8, !dbg !2926
  %74 = load i64, i64* %size.addr, align 8, !dbg !2927
  %shr = lshr i64 %74, 12, !dbg !2927
  store i64 %shr, i64* %size.addr, align 8, !dbg !2927
  %75 = load i64, i64* %size.addr, align 8, !dbg !2928
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2905
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2929
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2930
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #14, !dbg !2929, !srcloc !2931
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2929
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2932
  %add.i = add i32 %79, 1, !dbg !2933
  store i32 %add.i, i32* %retval, align 4, !dbg !2934
  br label %return, !dbg !2934

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2935
  ret i32 %80, !dbg !2935
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !2936 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2897, metadata !DIExpression()), !dbg !2940
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2904, metadata !DIExpression()), !dbg !2942
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2943, metadata !DIExpression()), !dbg !2944
  %0 = load i64, i64* %n.addr, align 8, !dbg !2945
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2942
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2946
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2947
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #14, !dbg !2946, !srcloc !2931
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2946
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2948
  %add.i = add i32 %4, 1, !dbg !2949
  %sub = sub i32 %add.i, 1, !dbg !2950
  ret i32 %sub, !dbg !2951
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2952 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2955, metadata !DIExpression()), !dbg !2956
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2957, metadata !DIExpression()), !dbg !2958
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2961, metadata !DIExpression()), !dbg !2962
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2963
  ret i8* %0, !dbg !2964
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2965 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2970, metadata !DIExpression()), !dbg !2971
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2972, metadata !DIExpression()), !dbg !2973
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2974, metadata !DIExpression()), !dbg !2975
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2976
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2977
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2978
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #9, !dbg !2979
  ret i32 %call, !dbg !2980
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #8

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #2

; Function Attrs: noredzone
declare dso_local %struct.of_device_id* @of_match_node(%struct.of_device_id*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_clear_flag(%struct.device_node* %n, i64 %flag) #0 !dbg !2981 {
entry:
  %n.addr = alloca %struct.device_node*, align 8
  %flag.addr = alloca i64, align 8
  store %struct.device_node* %n, %struct.device_node** %n.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %n.addr, metadata !2984, metadata !DIExpression()), !dbg !2985
  store i64 %flag, i64* %flag.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flag.addr, metadata !2986, metadata !DIExpression()), !dbg !2987
  %0 = load i64, i64* %flag.addr, align 8, !dbg !2988
  %1 = load %struct.device_node*, %struct.device_node** %n.addr, align 8, !dbg !2989
  %_flags = getelementptr inbounds %struct.device_node, %struct.device_node* %1, i32 0, i32 10, !dbg !2990
  call void @clear_bit(i64 %0, i64* %_flags) #9, !dbg !2991
  ret void, !dbg !2992
}

; Function Attrs: noredzone
declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, %struct.clk_hw* (%struct.of_phandle_args*, i8*)*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @of_clk_hw_simple_get(%struct.of_phandle_args*, i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !2993 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !3000, metadata !DIExpression()), !dbg !3001
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !3002, metadata !DIExpression()), !dbg !3003
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3004, metadata !DIExpression()), !dbg !3005
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !3006
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !3007
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !3008
  %3 = load i64, i64* %sz.addr, align 8, !dbg !3009
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #9, !dbg !3010
  store i32 %call, i32* %ret, align 4, !dbg !3005
  %4 = load i32, i32* %ret, align 4, !dbg !3011
  %cmp = icmp sge i32 %4, 0, !dbg !3013
  br i1 %cmp, label %if.then, label %if.else, !dbg !3014

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3015
  br label %return, !dbg !3015

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !3016
  store i32 %5, i32* %retval, align 4, !dbg !3017
  br label %return, !dbg !3017

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !3018
  ret i32 %6, !dbg !3018
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #0 !dbg !3019 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3025, metadata !DIExpression()), !dbg !3027
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3029, metadata !DIExpression()), !dbg !3030
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3031, metadata !DIExpression()), !dbg !3039
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3041, metadata !DIExpression()), !dbg !3042
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3043, metadata !DIExpression()), !dbg !3044
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3045, metadata !DIExpression()), !dbg !3046
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3047
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3048
  %div = sdiv i64 %1, 64, !dbg !3048
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3049
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3047
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3050
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3051
  %conv.i = trunc i64 %4 to i32, !dbg !3051
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #12, !dbg !3052
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3053
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3053
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #12, !dbg !3053
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3054
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3055
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3056
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #10, !dbg !3058
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3059

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3060
  %12 = bitcast i64* %11 to i8*, !dbg !3060
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3060
  %shr.i = ashr i64 %13, 3, !dbg !3060
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3060
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3062
  %and.i = and i64 %14, 7, !dbg !3062
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3062
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3062
  %neg.i = xor i32 %shl.i, -1, !dbg !3063
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #10, !dbg !3064, !srcloc !3065
  br label %arch_clear_bit.exit, !dbg !3066

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3067
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3069
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #10, !dbg !3070, !srcloc !3071
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3072
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3073 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3077, metadata !DIExpression()), !dbg !3078
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3079, metadata !DIExpression()), !dbg !3080
  ret i1 true, !dbg !3081
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3082 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3086, metadata !DIExpression()), !dbg !3087
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3088, metadata !DIExpression()), !dbg !3089
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3090, metadata !DIExpression()), !dbg !3091
  ret void, !dbg !3092
}

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fixed_factor_clk_probe(%struct.platform_device* %pdev) #0 !dbg !3093 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %clk = alloca %struct.clk_hw*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3094, metadata !DIExpression()), !dbg !3095
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %clk, metadata !3096, metadata !DIExpression()), !dbg !3097
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3098
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3099
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3100
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3100
  %call = call %struct.clk_hw* @_of_fixed_factor_clk_setup(%struct.device_node* %1) #9, !dbg !3101
  store %struct.clk_hw* %call, %struct.clk_hw** %clk, align 8, !dbg !3102
  %2 = load %struct.clk_hw*, %struct.clk_hw** %clk, align 8, !dbg !3103
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !3103
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #9, !dbg !3105
  br i1 %call1, label %if.then, label %if.end, !dbg !3106

if.then:                                          ; preds = %entry
  %4 = load %struct.clk_hw*, %struct.clk_hw** %clk, align 8, !dbg !3107
  %5 = bitcast %struct.clk_hw* %4 to i8*, !dbg !3107
  %call2 = call i64 @PTR_ERR(i8* %5) #9, !dbg !3108
  %conv = trunc i64 %call2 to i32, !dbg !3108
  store i32 %conv, i32* %retval, align 4, !dbg !3109
  br label %return, !dbg !3109

if.end:                                           ; preds = %entry
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3110
  %7 = load %struct.clk_hw*, %struct.clk_hw** %clk, align 8, !dbg !3111
  %8 = bitcast %struct.clk_hw* %7 to i8*, !dbg !3111
  call void @platform_set_drvdata(%struct.platform_device* %6, i8* %8) #9, !dbg !3112
  store i32 0, i32* %retval, align 4, !dbg !3113
  br label %return, !dbg !3113

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !3114
  ret i32 %9, !dbg !3114
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fixed_factor_clk_remove(%struct.platform_device* %pdev) #0 !dbg !3115 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %clk = alloca %struct.clk_hw*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3116, metadata !DIExpression()), !dbg !3117
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %clk, metadata !3118, metadata !DIExpression()), !dbg !3119
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3120
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #9, !dbg !3121
  %1 = bitcast i8* %call to %struct.clk_hw*, !dbg !3121
  store %struct.clk_hw* %1, %struct.clk_hw** %clk, align 8, !dbg !3119
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3122
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !3123
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !3124
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3124
  call void @of_clk_del_provider(%struct.device_node* %3) #9, !dbg !3125
  %4 = load %struct.clk_hw*, %struct.clk_hw** %clk, align 8, !dbg !3126
  call void @clk_hw_unregister_fixed_factor(%struct.clk_hw* %4) #9, !dbg !3127
  ret i32 0, !dbg !3128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !3129 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3132, metadata !DIExpression()), !dbg !3133
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !3134
  %1 = ptrtoint i8* %0 to i64, !dbg !3135
  ret i64 %1, !dbg !3136
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #0 !dbg !3137 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3140, metadata !DIExpression()), !dbg !3141
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3142, metadata !DIExpression()), !dbg !3143
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3144
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3145
  %1 = load i8*, i8** %data.addr, align 8, !dbg !3146
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #9, !dbg !3147
  ret void, !dbg !3148
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !3149 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3152, metadata !DIExpression()), !dbg !3153
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !3154, metadata !DIExpression()), !dbg !3155
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3156
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3157
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3158
  store i8* %0, i8** %driver_data, align 8, !dbg !3159
  ret void, !dbg !3160
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #0 !dbg !3161 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3166, metadata !DIExpression()), !dbg !3167
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3168
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3169
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #9, !dbg !3170
  ret i8* %call, !dbg !3171
}

; Function Attrs: noredzone
declare dso_local void @of_clk_del_provider(%struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !3172 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3175, metadata !DIExpression()), !dbg !3176
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3177
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3178
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3178
  ret i8* %1, !dbg !3179
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #9 = { noredzone }
attributes #10 = { nounwind }
attributes #11 = { noredzone nounwind readnone }
attributes #12 = { noredzone nounwind }
attributes #13 = { cold noredzone }
attributes #14 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2239, !2240, !2241, !2242}
!llvm.ident = !{!2243}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_fixed_factor_ops", scope: !2, file: !3, line: 60, type: !88, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !62, globals: !211, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-fixed-factor.c", directory: "/home/lizy2001/genbc/linux")
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
!62 = !{!63, !64, !198, !199, !113, !203, !204, !206, !208, !118}
!63 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!64 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !65, size: 64)
!65 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_fixed_factor", file: !66, line: 900, size: 256, elements: !67)
!66 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!67 = !{!68, !196, !197}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !65, file: !66, line: 901, baseType: !69, size: 192)
!69 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !66, line: 312, size: 192, elements: !70)
!70 = !{!71, !74, !77}
!71 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !69, file: !66, line: 313, baseType: !72, size: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !66, line: 38, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !69, file: !66, line: 314, baseType: !75, size: 64, offset: 64)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !66, line: 36, flags: DIFlagFwdDecl)
!77 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !69, file: !66, line: 315, baseType: !78, size: 64, offset: 128)
!78 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!79 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!80 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !66, line: 285, size: 448, elements: !81)
!81 = !{!82, !86, !178, !181, !192, !194, !195}
!82 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !80, file: !66, line: 286, baseType: !83, size: 64)
!83 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!86 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !80, file: !66, line: 287, baseType: !87, size: 64, offset: 64)
!87 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !88, size: 64)
!88 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !89)
!89 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !66, line: 220, size: 1600, elements: !90)
!90 = !{!91, !97, !101, !102, !103, !104, !105, !106, !107, !108, !109, !114, !120, !132, !141, !145, !149, !153, !154, !155, !159, !168, !169, !170, !171}
!91 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !89, file: !66, line: 221, baseType: !92, size: 64)
!92 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !93, size: 64)
!93 = !DISubroutineType(types: !94)
!94 = !{!95, !96}
!95 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!96 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !69, size: 64)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !89, file: !66, line: 222, baseType: !98, size: 64, offset: 64)
!98 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !99, size: 64)
!99 = !DISubroutineType(types: !100)
!100 = !{null, !96}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !89, file: !66, line: 223, baseType: !92, size: 64, offset: 128)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !89, file: !66, line: 224, baseType: !98, size: 64, offset: 192)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !89, file: !66, line: 225, baseType: !92, size: 64, offset: 256)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !89, file: !66, line: 226, baseType: !98, size: 64, offset: 320)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !89, file: !66, line: 227, baseType: !92, size: 64, offset: 384)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !89, file: !66, line: 228, baseType: !98, size: 64, offset: 448)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !89, file: !66, line: 229, baseType: !92, size: 64, offset: 512)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !89, file: !66, line: 230, baseType: !98, size: 64, offset: 576)
!109 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !89, file: !66, line: 231, baseType: !110, size: 64, offset: 640)
!110 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!111 = !DISubroutineType(types: !112)
!112 = !{!113, !96, !113}
!113 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !89, file: !66, line: 233, baseType: !115, size: 64, offset: 704)
!115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !116, size: 64)
!116 = !DISubroutineType(types: !117)
!117 = !{!118, !96, !113, !119}
!118 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!120 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !89, file: !66, line: 235, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!95, !96, !124}
!124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !66, line: 55, size: 320, elements: !126)
!126 = !{!127, !128, !129, !130, !131}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !125, file: !66, line: 56, baseType: !113, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !125, file: !66, line: 57, baseType: !113, size: 64, offset: 64)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !125, file: !66, line: 58, baseType: !113, size: 64, offset: 128)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !125, file: !66, line: 59, baseType: !113, size: 64, offset: 192)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !125, file: !66, line: 60, baseType: !96, size: 64, offset: 256)
!132 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !89, file: !66, line: 237, baseType: !133, size: 64, offset: 832)
!133 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !134, size: 64)
!134 = !DISubroutineType(types: !135)
!135 = !{!95, !96, !136}
!136 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !137, line: 17, baseType: !138)
!137 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!138 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !139, line: 21, baseType: !140)
!139 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!140 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !89, file: !66, line: 238, baseType: !142, size: 64, offset: 896)
!142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !143, size: 64)
!143 = !DISubroutineType(types: !144)
!144 = !{!136, !96}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !89, file: !66, line: 239, baseType: !146, size: 64, offset: 960)
!146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !147, size: 64)
!147 = !DISubroutineType(types: !148)
!148 = !{!95, !96, !113, !113}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !89, file: !66, line: 241, baseType: !150, size: 64, offset: 1024)
!150 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !151, size: 64)
!151 = !DISubroutineType(types: !152)
!152 = !{!95, !96, !113, !113, !136}
!153 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !89, file: !66, line: 244, baseType: !110, size: 64, offset: 1088)
!154 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !89, file: !66, line: 246, baseType: !92, size: 64, offset: 1152)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !89, file: !66, line: 247, baseType: !156, size: 64, offset: 1216)
!156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !157, size: 64)
!157 = !DISubroutineType(types: !158)
!158 = !{!95, !96, !95}
!159 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !89, file: !66, line: 248, baseType: !160, size: 64, offset: 1280)
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = !DISubroutineType(types: !162)
!162 = !{!95, !96, !163}
!163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !164, size: 64)
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !66, line: 69, size: 64, elements: !165)
!165 = !{!166, !167}
!166 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !164, file: !66, line: 70, baseType: !7, size: 32)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !164, file: !66, line: 71, baseType: !7, size: 32, offset: 32)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !89, file: !66, line: 250, baseType: !160, size: 64, offset: 1344)
!169 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !89, file: !66, line: 252, baseType: !92, size: 64, offset: 1408)
!170 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !89, file: !66, line: 253, baseType: !98, size: 64, offset: 1472)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !89, file: !66, line: 254, baseType: !172, size: 64, offset: 1536)
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DISubroutineType(types: !174)
!174 = !{null, !96, !175}
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !177, line: 21, flags: DIFlagFwdDecl)
!177 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !80, file: !66, line: 289, baseType: !179, size: 64, offset: 128)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !83)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !80, file: !66, line: 290, baseType: !182, size: 64, offset: 192)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !184)
!184 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !66, line: 264, size: 256, elements: !185)
!185 = !{!186, !189, !190, !191}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !184, file: !66, line: 265, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !69)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !184, file: !66, line: 266, baseType: !83, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !184, file: !66, line: 267, baseType: !83, size: 64, offset: 128)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !184, file: !66, line: 268, baseType: !95, size: 32, offset: 192)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !80, file: !66, line: 291, baseType: !193, size: 64, offset: 256)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !80, file: !66, line: 292, baseType: !136, size: 8, offset: 320)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !80, file: !66, line: 293, baseType: !113, size: 64, offset: 384)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "mult", scope: !65, file: !66, line: 902, baseType: !7, size: 32, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "div", scope: !65, file: !66, line: 903, baseType: !7, size: 32, offset: 224)
!198 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint64_t", file: !200, line: 107, baseType: !201)
!200 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!201 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !137, line: 23, baseType: !202)
!202 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !139, line: 31, baseType: !198)
!203 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !200, line: 148, baseType: !7)
!204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !205, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !85)
!206 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !207, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !118)
!208 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !209, size: 64)
!209 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !210, line: 76, flags: DIFlagFwdDecl)
!210 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!211 = !{!0, !212, !230, !232, !237, !2237}
!212 = !DIGlobalVariableExpression(var: !213, expr: !DIExpression())
!213 = distinct !DIGlobalVariable(name: "__of_table_fixed_factor_clk", scope: !2, file: !3, line: 215, type: !214, isLocal: true, isDefinition: true)
!214 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !215)
!215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !216, line: 262, size: 1600, elements: !217)
!216 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!217 = !{!218, !222, !223, !227}
!218 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !215, file: !216, line: 263, baseType: !219, size: 256)
!219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 256, elements: !220)
!220 = !{!221}
!221 = !DISubrange(count: 32)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !215, file: !216, line: 264, baseType: !219, size: 256, offset: 256)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !215, file: !216, line: 265, baseType: !224, size: 1024, offset: 512)
!224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 1024, elements: !225)
!225 = !{!226}
!226 = !DISubrange(count: 128)
!227 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !215, file: !216, line: 266, baseType: !228, size: 64, offset: 1536)
!228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !229, size: 64)
!229 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!230 = !DIGlobalVariableExpression(var: !231, expr: !DIExpression())
!231 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_of_fixed_factor_clk_driver_init165", scope: !2, file: !3, line: 259, type: !63, isLocal: true, isDefinition: true)
!232 = !DIGlobalVariableExpression(var: !233, expr: !DIExpression())
!233 = distinct !DIGlobalVariable(name: "set_rate_parent_matches", scope: !2, file: !3, line: 157, type: !234, isLocal: true, isDefinition: true)
!234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !214, size: 3200, elements: !235)
!235 = !{!236}
!236 = !DISubrange(count: 2)
!237 = !DIGlobalVariableExpression(var: !238, expr: !DIExpression())
!238 = distinct !DIGlobalVariable(name: "of_fixed_factor_clk_driver", scope: !2, file: !3, line: 251, type: !239, isLocal: true, isDefinition: true)
!239 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !240, line: 200, size: 1600, elements: !241)
!240 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!241 = !{!242, !2224, !2225, !2229, !2233, !2234, !2235, !2236}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !239, file: !240, line: 201, baseType: !243, size: 64)
!243 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !244, size: 64)
!244 = !DISubroutineType(types: !245)
!245 = !{!95, !246}
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !240, line: 22, size: 6208, elements: !248)
!248 = !{!249, !250, !251, !254, !2192, !2193, !2194, !2195, !2210, !2218, !2219, !2222}
!249 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !247, file: !240, line: 23, baseType: !83, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !247, file: !240, line: 24, baseType: !95, size: 32, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !247, file: !240, line: 25, baseType: !252, size: 8, offset: 96)
!252 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !200, line: 30, baseType: !253)
!253 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !247, file: !240, line: 26, baseType: !255, size: 5568, offset: 128)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !256)
!256 = !{!257, !1730, !1732, !1735, !1736, !1787, !1869, !1870, !1871, !1872, !1873, !1882, !1987, !2000, !2003, !2004, !2008, !2010, !2011, !2012, !2016, !2022, !2023, !2026, !2141, !2142, !2145, !2146, !2147, !2148, !2180, !2181, !2182, !2185, !2188, !2189, !2190, !2191}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !255, file: !30, line: 462, baseType: !258, size: 512)
!258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !259, line: 64, size: 512, elements: !260)
!259 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!260 = !{!261, !262, !268, !270, !330, !1568, !1720, !1725, !1726, !1727, !1728, !1729}
!261 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !258, file: !259, line: 65, baseType: !83, size: 64)
!262 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !258, file: !259, line: 66, baseType: !263, size: 128, offset: 64)
!263 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !200, line: 178, size: 128, elements: !264)
!264 = !{!265, !267}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !263, file: !200, line: 179, baseType: !266, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !263, size: 64)
!267 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !263, file: !200, line: 179, baseType: !266, size: 64, offset: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !258, file: !259, line: 67, baseType: !269, size: 64, offset: 192)
!269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !258, size: 64)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !258, file: !259, line: 68, baseType: !271, size: 64, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !259, line: 192, size: 704, elements: !273)
!273 = !{!274, !275, !291, !292}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !272, file: !259, line: 193, baseType: !263, size: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !272, file: !259, line: 194, baseType: !276, offset: 128)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !277, line: 83, baseType: !278)
!277 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !277, line: 71, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, scope: !278, file: !277, line: 72, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !278, file: !277, line: 72, elements: !282)
!282 = !{!283}
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !281, file: !277, line: 73, baseType: !284)
!284 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !277, line: 20, elements: !285)
!285 = !{!286}
!286 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !284, file: !277, line: 21, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !288, line: 25, baseType: !289)
!288 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !288, line: 25, elements: !290)
!290 = !{}
!291 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !272, file: !259, line: 195, baseType: !258, size: 512, offset: 128)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !272, file: !259, line: 196, baseType: !293, size: 64, offset: 640)
!293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !294, size: 64)
!294 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !295)
!295 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !259, line: 156, size: 192, elements: !296)
!296 = !{!297, !302, !307}
!297 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !295, file: !259, line: 157, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !299)
!299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!300 = !DISubroutineType(types: !301)
!301 = !{!95, !271, !269}
!302 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !295, file: !259, line: 158, baseType: !303, size: 64, offset: 64)
!303 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !305, size: 64)
!305 = !DISubroutineType(types: !306)
!306 = !{!83, !271, !269}
!307 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !295, file: !259, line: 159, baseType: !308, size: 64, offset: 128)
!308 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !309)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DISubroutineType(types: !311)
!311 = !{!95, !271, !269, !312}
!312 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !313, size: 64)
!313 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !259, line: 148, size: 20736, elements: !314)
!314 = !{!315, !320, !324, !325, !329}
!315 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !313, file: !259, line: 149, baseType: !316, size: 192)
!316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 192, elements: !318)
!317 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!318 = !{!319}
!319 = !DISubrange(count: 3)
!320 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !313, file: !259, line: 150, baseType: !321, size: 4096, offset: 192)
!321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !317, size: 4096, elements: !322)
!322 = !{!323}
!323 = !DISubrange(count: 64)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !313, file: !259, line: 151, baseType: !95, size: 32, offset: 4288)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !313, file: !259, line: 152, baseType: !326, size: 16384, offset: 4320)
!326 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 16384, elements: !327)
!327 = !{!328}
!328 = !DISubrange(count: 2048)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !313, file: !259, line: 153, baseType: !95, size: 32, offset: 20704)
!330 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !258, file: !259, line: 69, baseType: !331, size: 64, offset: 320)
!331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !332, size: 64)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !259, line: 138, size: 448, elements: !333)
!333 = !{!334, !338, !366, !368, !1516, !1547, !1551}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !332, file: !259, line: 139, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = !DISubroutineType(types: !337)
!337 = !{null, !269}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !332, file: !259, line: 140, baseType: !339, size: 64, offset: 64)
!339 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
!340 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !341)
!341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !342, line: 230, size: 128, elements: !343)
!342 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!343 = !{!344, !359}
!344 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !341, file: !342, line: 231, baseType: !345, size: 64)
!345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !346, size: 64)
!346 = !DISubroutineType(types: !347)
!347 = !{!348, !269, !352, !317}
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !200, line: 60, baseType: !349)
!349 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !350, line: 73, baseType: !351)
!350 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!351 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !350, line: 15, baseType: !118)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !342, line: 30, size: 128, elements: !354)
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !353, file: !342, line: 31, baseType: !83, size: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !353, file: !342, line: 32, baseType: !357, size: 16, offset: 64)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !200, line: 19, baseType: !358)
!358 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !341, file: !342, line: 232, baseType: !360, size: 64, offset: 64)
!360 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !361, size: 64)
!361 = !DISubroutineType(types: !362)
!362 = !{!348, !269, !352, !83, !363}
!363 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !200, line: 55, baseType: !364)
!364 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !350, line: 72, baseType: !365)
!365 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !350, line: 16, baseType: !113)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !332, file: !259, line: 141, baseType: !367, size: 64, offset: 128)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !352, size: 64)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !332, file: !259, line: 142, baseType: !369, size: 64, offset: 192)
!369 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !372)
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !342, line: 84, size: 320, elements: !373)
!373 = !{!374, !375, !379, !1513, !1514}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !372, file: !342, line: 85, baseType: !83, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !372, file: !342, line: 86, baseType: !376, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DISubroutineType(types: !378)
!378 = !{!357, !269, !352, !95}
!379 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !372, file: !342, line: 88, baseType: !380, size: 64, offset: 128)
!380 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !381, size: 64)
!381 = !DISubroutineType(types: !382)
!382 = !{!357, !269, !383, !95}
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !342, line: 168, size: 448, elements: !385)
!385 = !{!386, !387, !388, !389, !399, !400}
!386 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !384, file: !342, line: 169, baseType: !353, size: 128)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !384, file: !342, line: 170, baseType: !363, size: 64, offset: 128)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !384, file: !342, line: 171, baseType: !63, size: 64, offset: 192)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !384, file: !342, line: 172, baseType: !390, size: 64, offset: 256)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DISubroutineType(types: !392)
!392 = !{!348, !393, !269, !383, !317, !396, !363}
!393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!394 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !395, line: 526, flags: DIFlagFwdDecl)
!395 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!396 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !200, line: 46, baseType: !397)
!397 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !350, line: 88, baseType: !398)
!398 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !384, file: !342, line: 174, baseType: !390, size: 64, offset: 320)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !384, file: !342, line: 176, baseType: !401, size: 64, offset: 384)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !402, size: 64)
!402 = !DISubroutineType(types: !403)
!403 = !{!95, !393, !269, !383, !404}
!404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !405, size: 64)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !406, line: 305, size: 1472, elements: !407)
!406 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!407 = !{!408, !409, !410, !411, !412, !420, !421, !1487, !1493, !1494, !1499, !1500, !1503, !1507, !1508, !1509, !1510, !1511}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !405, file: !406, line: 308, baseType: !113, size: 64)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !405, file: !406, line: 309, baseType: !113, size: 64, offset: 64)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !405, file: !406, line: 313, baseType: !404, size: 64, offset: 128)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !405, file: !406, line: 313, baseType: !404, size: 64, offset: 192)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !405, file: !406, line: 315, baseType: !413, size: 192, align: 64, offset: 256)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !414, line: 24, size: 192, align: 64, elements: !415)
!414 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !417, !419}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !413, file: !414, line: 25, baseType: !113, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !413, file: !414, line: 26, baseType: !418, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !413, size: 64)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !413, file: !414, line: 27, baseType: !418, size: 64, offset: 128)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !405, file: !406, line: 323, baseType: !113, size: 64, offset: 448)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !405, file: !406, line: 327, baseType: !422, size: 64, offset: 512)
!422 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !423, size: 64)
!423 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !406, line: 388, size: 7296, elements: !424)
!424 = !{!425, !1483}
!425 = !DIDerivedType(tag: DW_TAG_member, scope: !423, file: !406, line: 389, baseType: !426, size: 7296)
!426 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !423, file: !406, line: 389, size: 7296, elements: !427)
!427 = !{!428, !429, !433, !434, !438, !439, !440, !441, !442, !450, !455, !456, !457, !458, !467, !468, !469, !478, !479, !480, !481, !482, !483, !484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !504, !512, !515, !563, !564, !1453, !1454, !1457, !1461, !1462, !1465, !1466, !1467, !1470, !1482}
!428 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !426, file: !406, line: 390, baseType: !404, size: 64)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !426, file: !406, line: 391, baseType: !430, size: 64, offset: 64)
!430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !414, line: 31, size: 64, elements: !431)
!431 = !{!432}
!432 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !430, file: !414, line: 32, baseType: !418, size: 64)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !426, file: !406, line: 392, baseType: !201, size: 64, offset: 128)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !426, file: !406, line: 394, baseType: !435, size: 64, offset: 192)
!435 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !436, size: 64)
!436 = !DISubroutineType(types: !437)
!437 = !{!113, !393, !113, !113, !113, !113}
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !426, file: !406, line: 398, baseType: !113, size: 64, offset: 256)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !426, file: !406, line: 399, baseType: !113, size: 64, offset: 320)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !426, file: !406, line: 405, baseType: !113, size: 64, offset: 384)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !426, file: !406, line: 406, baseType: !113, size: 64, offset: 448)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !426, file: !406, line: 407, baseType: !443, size: 64, offset: 512)
!443 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !444, size: 64)
!444 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !395, line: 286, baseType: !445)
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !395, line: 286, size: 64, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !445, file: !395, line: 286, baseType: !448, size: 64)
!448 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !449, line: 18, baseType: !113)
!449 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!450 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !426, file: !406, line: 416, baseType: !451, size: 32, offset: 576)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !200, line: 168, baseType: !452)
!452 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 166, size: 32, elements: !453)
!453 = !{!454}
!454 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !452, file: !200, line: 167, baseType: !95, size: 32)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !426, file: !406, line: 428, baseType: !451, size: 32, offset: 608)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !426, file: !406, line: 437, baseType: !451, size: 32, offset: 640)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !426, file: !406, line: 447, baseType: !451, size: 32, offset: 672)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !426, file: !406, line: 450, baseType: !459, size: 64, offset: 704)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !460, line: 13, baseType: !461)
!460 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!461 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !200, line: 175, baseType: !462)
!462 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !200, line: 173, size: 64, elements: !463)
!463 = !{!464}
!464 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !462, file: !200, line: 174, baseType: !465, size: 64)
!465 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !137, line: 22, baseType: !466)
!466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !139, line: 30, baseType: !398)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !426, file: !406, line: 452, baseType: !95, size: 32, offset: 768)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !426, file: !406, line: 454, baseType: !276, offset: 800)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !426, file: !406, line: 457, baseType: !470, size: 256, offset: 832)
!470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !471, line: 35, size: 256, elements: !472)
!471 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!472 = !{!473, !474, !475, !477}
!473 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !470, file: !471, line: 36, baseType: !459, size: 64)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !470, file: !471, line: 42, baseType: !459, size: 64, offset: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !470, file: !471, line: 46, baseType: !476, offset: 128)
!476 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !277, line: 29, baseType: !284)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !470, file: !471, line: 47, baseType: !263, size: 128, offset: 128)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !426, file: !406, line: 459, baseType: !263, size: 128, offset: 1088)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !426, file: !406, line: 466, baseType: !113, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !426, file: !406, line: 467, baseType: !113, size: 64, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !426, file: !406, line: 469, baseType: !113, size: 64, offset: 1344)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !426, file: !406, line: 470, baseType: !113, size: 64, offset: 1408)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !426, file: !406, line: 471, baseType: !461, size: 64, offset: 1472)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !426, file: !406, line: 472, baseType: !113, size: 64, offset: 1536)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !426, file: !406, line: 473, baseType: !113, size: 64, offset: 1600)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !426, file: !406, line: 474, baseType: !113, size: 64, offset: 1664)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !426, file: !406, line: 475, baseType: !113, size: 64, offset: 1728)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !426, file: !406, line: 477, baseType: !276, offset: 1792)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !426, file: !406, line: 478, baseType: !113, size: 64, offset: 1792)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !426, file: !406, line: 478, baseType: !113, size: 64, offset: 1856)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !426, file: !406, line: 478, baseType: !113, size: 64, offset: 1920)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !426, file: !406, line: 478, baseType: !113, size: 64, offset: 1984)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !426, file: !406, line: 479, baseType: !113, size: 64, offset: 2048)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !426, file: !406, line: 479, baseType: !113, size: 64, offset: 2112)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !426, file: !406, line: 479, baseType: !113, size: 64, offset: 2176)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !426, file: !406, line: 480, baseType: !113, size: 64, offset: 2240)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !426, file: !406, line: 480, baseType: !113, size: 64, offset: 2304)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !426, file: !406, line: 480, baseType: !113, size: 64, offset: 2368)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !426, file: !406, line: 480, baseType: !113, size: 64, offset: 2432)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !426, file: !406, line: 482, baseType: !501, size: 2816, offset: 2496)
!501 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 2816, elements: !502)
!502 = !{!503}
!503 = !DISubrange(count: 44)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !426, file: !406, line: 488, baseType: !505, size: 256, offset: 5312)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !506, line: 60, size: 256, elements: !507)
!506 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !505, file: !506, line: 61, baseType: !509, size: 256)
!509 = !DICompositeType(tag: DW_TAG_array_type, baseType: !459, size: 256, elements: !510)
!510 = !{!511}
!511 = !DISubrange(count: 4)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !426, file: !406, line: 490, baseType: !513, size: 64, offset: 5568)
!513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !514, size: 64)
!514 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !406, line: 490, flags: DIFlagFwdDecl)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !426, file: !406, line: 493, baseType: !516, size: 896, offset: 5632)
!516 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !517, line: 53, baseType: !518)
!517 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !517, line: 13, size: 896, elements: !519)
!519 = !{!520, !521, !522, !523, !526, !527, !534, !535, !555, !556, !559}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !518, file: !517, line: 18, baseType: !201, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !518, file: !517, line: 28, baseType: !461, size: 64, offset: 64)
!522 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !518, file: !517, line: 31, baseType: !470, size: 256, offset: 128)
!523 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !518, file: !517, line: 32, baseType: !524, size: 64, offset: 384)
!524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !525, size: 64)
!525 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !517, line: 32, flags: DIFlagFwdDecl)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !518, file: !517, line: 37, baseType: !358, size: 16, offset: 448)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !518, file: !517, line: 40, baseType: !528, size: 192, offset: 512)
!528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !529, line: 53, size: 192, elements: !530)
!529 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!530 = !{!531, !532, !533}
!531 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !528, file: !529, line: 54, baseType: !459, size: 64)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !528, file: !529, line: 55, baseType: !276, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !528, file: !529, line: 59, baseType: !263, size: 128, offset: 64)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !518, file: !517, line: 41, baseType: !63, size: 64, offset: 704)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !518, file: !517, line: 42, baseType: !536, size: 64, offset: 768)
!536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !537, size: 64)
!537 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !538)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !539, line: 13, size: 896, elements: !540)
!539 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!540 = !{!541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554}
!541 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !538, file: !539, line: 14, baseType: !63, size: 64)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !538, file: !539, line: 15, baseType: !113, size: 64, offset: 64)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !538, file: !539, line: 17, baseType: !113, size: 64, offset: 128)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !538, file: !539, line: 17, baseType: !113, size: 64, offset: 192)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !538, file: !539, line: 19, baseType: !118, size: 64, offset: 256)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !538, file: !539, line: 21, baseType: !118, size: 64, offset: 320)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !538, file: !539, line: 22, baseType: !118, size: 64, offset: 384)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !538, file: !539, line: 23, baseType: !118, size: 64, offset: 448)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !538, file: !539, line: 24, baseType: !118, size: 64, offset: 512)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !538, file: !539, line: 25, baseType: !118, size: 64, offset: 576)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !538, file: !539, line: 26, baseType: !118, size: 64, offset: 640)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !538, file: !539, line: 27, baseType: !118, size: 64, offset: 704)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !538, file: !539, line: 28, baseType: !118, size: 64, offset: 768)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !538, file: !539, line: 29, baseType: !118, size: 64, offset: 832)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !518, file: !517, line: 44, baseType: !451, size: 32, offset: 832)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !518, file: !517, line: 50, baseType: !557, size: 16, offset: 864)
!557 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !137, line: 19, baseType: !558)
!558 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !139, line: 24, baseType: !358)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !518, file: !517, line: 51, baseType: !560, size: 16, offset: 880)
!560 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !137, line: 18, baseType: !561)
!561 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !139, line: 23, baseType: !562)
!562 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!563 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !426, file: !406, line: 495, baseType: !113, size: 64, offset: 6528)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !426, file: !406, line: 497, baseType: !565, size: 64, offset: 6592)
!565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !566, size: 64)
!566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !406, line: 381, size: 384, elements: !567)
!567 = !{!568, !569, !1452}
!568 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !566, file: !406, line: 382, baseType: !451, size: 32)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !566, file: !406, line: 383, baseType: !570, size: 128, offset: 64)
!570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !406, line: 376, size: 128, elements: !571)
!571 = !{!572, !1450}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !570, file: !406, line: 377, baseType: !573, size: 64)
!573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!574 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !575, line: 640, size: 48640, elements: !576)
!575 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!576 = !{!577, !585, !586, !587, !593, !594, !595, !596, !597, !598, !599, !600, !604, !622, !633, !725, !726, !727, !738, !739, !741, !742, !743, !744, !750, !751, !752, !753, !754, !755, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !823, !826, !827, !828, !829, !830, !831, !832, !833, !834, !835, !879, !881, !882, !883, !895, !897, !898, !899, !900, !901, !907, !908, !909, !910, !911, !912, !913, !925, !930, !935, !936, !937, !940, !944, !947, !950, !953, !956, !960, !963, !966, !972, !973, !974, !980, !981, !982, !983, !984, !993, !994, !995, !996, !997, !1002, !1003, !1004, !1007, !1008, !1011, !1014, !1017, !1020, !1023, !1026, !1027, !1107, !1110, !1113, !1114, !1117, !1118, !1119, !1123, !1124, !1125, !1138, !1139, !1140, !1150, !1155, !1158, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!577 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !574, file: !575, line: 646, baseType: !578, size: 128)
!578 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !579, line: 56, size: 128, elements: !580)
!579 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !578, file: !579, line: 57, baseType: !113, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !578, file: !579, line: 58, baseType: !583, size: 32, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !137, line: 21, baseType: !584)
!584 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !139, line: 27, baseType: !7)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !574, file: !575, line: 649, baseType: !207, size: 64, offset: 128)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !574, file: !575, line: 657, baseType: !63, size: 64, offset: 192)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !574, file: !575, line: 658, baseType: !588, size: 32, offset: 256)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !589, line: 113, baseType: !590)
!589 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !589, line: 111, size: 32, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !590, file: !589, line: 112, baseType: !451, size: 32)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !574, file: !575, line: 660, baseType: !7, size: 32, offset: 288)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !574, file: !575, line: 661, baseType: !7, size: 32, offset: 320)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !574, file: !575, line: 684, baseType: !95, size: 32, offset: 352)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !574, file: !575, line: 686, baseType: !95, size: 32, offset: 384)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !574, file: !575, line: 687, baseType: !95, size: 32, offset: 416)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !574, file: !575, line: 688, baseType: !95, size: 32, offset: 448)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !574, file: !575, line: 689, baseType: !7, size: 32, offset: 480)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !574, file: !575, line: 691, baseType: !601, size: 64, offset: 512)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !575, line: 691, flags: DIFlagFwdDecl)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !574, file: !575, line: 692, baseType: !605, size: 832, offset: 576)
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !575, line: 451, size: 832, elements: !606)
!606 = !{!607, !612, !613, !614, !615, !616, !617, !618, !619, !620}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !605, file: !575, line: 453, baseType: !608, size: 128)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !575, line: 325, size: 128, elements: !609)
!609 = !{!610, !611}
!610 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !608, file: !575, line: 326, baseType: !113, size: 64)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !608, file: !575, line: 327, baseType: !583, size: 32, offset: 64)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !605, file: !575, line: 454, baseType: !413, size: 192, align: 64, offset: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !605, file: !575, line: 455, baseType: !263, size: 128, offset: 320)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !605, file: !575, line: 456, baseType: !7, size: 32, offset: 448)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !605, file: !575, line: 458, baseType: !201, size: 64, offset: 512)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !605, file: !575, line: 459, baseType: !201, size: 64, offset: 576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !605, file: !575, line: 460, baseType: !201, size: 64, offset: 640)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !605, file: !575, line: 461, baseType: !201, size: 64, offset: 704)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !605, file: !575, line: 463, baseType: !201, size: 64, offset: 768)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !605, file: !575, line: 465, baseType: !621, offset: 832)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !575, line: 415, elements: !290)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !574, file: !575, line: 693, baseType: !623, size: 384, offset: 1408)
!623 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !575, line: 489, size: 384, elements: !624)
!624 = !{!625, !626, !627, !628, !629, !630, !631}
!625 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !623, file: !575, line: 490, baseType: !263, size: 128)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !623, file: !575, line: 491, baseType: !113, size: 64, offset: 128)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !623, file: !575, line: 492, baseType: !113, size: 64, offset: 192)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !623, file: !575, line: 493, baseType: !7, size: 32, offset: 256)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !623, file: !575, line: 494, baseType: !358, size: 16, offset: 288)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !623, file: !575, line: 495, baseType: !358, size: 16, offset: 304)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !623, file: !575, line: 497, baseType: !632, size: 64, offset: 320)
!632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !623, size: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !574, file: !575, line: 697, baseType: !634, size: 1792, offset: 1792)
!634 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !575, line: 507, size: 1792, elements: !635)
!635 = !{!636, !637, !638, !639, !640, !641, !642, !643, !644, !645, !646, !647, !648, !649, !722, !723}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !634, file: !575, line: 508, baseType: !413, size: 192, align: 64)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !634, file: !575, line: 515, baseType: !201, size: 64, offset: 192)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !634, file: !575, line: 516, baseType: !201, size: 64, offset: 256)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !634, file: !575, line: 517, baseType: !201, size: 64, offset: 320)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !634, file: !575, line: 518, baseType: !201, size: 64, offset: 384)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !634, file: !575, line: 519, baseType: !201, size: 64, offset: 448)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !634, file: !575, line: 526, baseType: !465, size: 64, offset: 512)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !634, file: !575, line: 527, baseType: !201, size: 64, offset: 576)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !634, file: !575, line: 528, baseType: !7, size: 32, offset: 640)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !634, file: !575, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !634, file: !575, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !634, file: !575, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !634, file: !575, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !634, file: !575, line: 563, baseType: !650, size: 512, offset: 704)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !651)
!651 = !{!652, !660, !661, !666, !718, !719, !720, !721}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !650, file: !6, line: 119, baseType: !653, size: 256)
!653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !654, line: 9, size: 256, elements: !655)
!654 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!655 = !{!656, !657}
!656 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !653, file: !654, line: 10, baseType: !413, size: 192, align: 64)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !653, file: !654, line: 11, baseType: !658, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !659, line: 29, baseType: !465)
!659 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!660 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !650, file: !6, line: 120, baseType: !658, size: 64, offset: 256)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !650, file: !6, line: 121, baseType: !662, size: 64, offset: 320)
!662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !663, size: 64)
!663 = !DISubroutineType(types: !664)
!664 = !{!5, !665}
!665 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !650, file: !6, line: 122, baseType: !667, size: 64, offset: 384)
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !668, size: 64)
!668 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !669)
!669 = !{!670, !690, !691, !694, !704, !705, !713, !717}
!670 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !668, file: !6, line: 160, baseType: !671, size: 64)
!671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !672, size: 64)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !673)
!673 = !{!674, !675, !676, !677, !678, !679, !680, !681, !682, !683, !684, !685, !686}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !672, file: !6, line: 215, baseType: !476)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !672, file: !6, line: 216, baseType: !7, size: 32)
!676 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !672, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !672, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !672, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !672, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !672, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !672, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !672, file: !6, line: 233, baseType: !658, size: 64, offset: 128)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !672, file: !6, line: 234, baseType: !665, size: 64, offset: 192)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !672, file: !6, line: 235, baseType: !658, size: 64, offset: 256)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !672, file: !6, line: 236, baseType: !665, size: 64, offset: 320)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !672, file: !6, line: 237, baseType: !687, size: 4096, offset: 512)
!687 = !DICompositeType(tag: DW_TAG_array_type, baseType: !668, size: 4096, elements: !688)
!688 = !{!689}
!689 = !DISubrange(count: 8)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !668, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !668, file: !6, line: 162, baseType: !692, size: 32, offset: 96)
!692 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !200, line: 27, baseType: !693)
!693 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !350, line: 96, baseType: !95)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !668, file: !6, line: 163, baseType: !695, size: 32, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !696, line: 276, baseType: !697)
!696 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!697 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !696, line: 276, size: 32, elements: !698)
!698 = !{!699}
!699 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !697, file: !696, line: 276, baseType: !700, size: 32)
!700 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !696, line: 70, baseType: !701)
!701 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !696, line: 65, size: 32, elements: !702)
!702 = !{!703}
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !701, file: !696, line: 66, baseType: !7, size: 32)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !668, file: !6, line: 164, baseType: !665, size: 64, offset: 192)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !668, file: !6, line: 165, baseType: !706, size: 128, offset: 256)
!706 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !654, line: 14, size: 128, elements: !707)
!707 = !{!708}
!708 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !706, file: !654, line: 15, baseType: !709, size: 128)
!709 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !414, line: 125, size: 128, elements: !710)
!710 = !{!711, !712}
!711 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !709, file: !414, line: 126, baseType: !430, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !709, file: !414, line: 127, baseType: !418, size: 64, offset: 64)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !668, file: !6, line: 166, baseType: !714, size: 64, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !715, size: 64)
!715 = !DISubroutineType(types: !716)
!716 = !{!658}
!717 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !668, file: !6, line: 167, baseType: !658, size: 64, offset: 448)
!718 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !650, file: !6, line: 123, baseType: !136, size: 8, offset: 448)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !650, file: !6, line: 124, baseType: !136, size: 8, offset: 456)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !650, file: !6, line: 125, baseType: !136, size: 8, offset: 464)
!721 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !650, file: !6, line: 126, baseType: !136, size: 8, offset: 472)
!722 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !634, file: !575, line: 572, baseType: !650, size: 512, offset: 1216)
!723 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !634, file: !575, line: 580, baseType: !724, size: 64, offset: 1728)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !634, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !574, file: !575, line: 721, baseType: !7, size: 32, offset: 3584)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !574, file: !575, line: 722, baseType: !95, size: 32, offset: 3616)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !574, file: !575, line: 723, baseType: !728, size: 64, offset: 3648)
!728 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !729, size: 64)
!729 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !730)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !731, line: 17, baseType: !732)
!731 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !731, line: 17, size: 64, elements: !733)
!733 = !{!734}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !732, file: !731, line: 17, baseType: !735, size: 64)
!735 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, size: 64, elements: !736)
!736 = !{!737}
!737 = !DISubrange(count: 1)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !574, file: !575, line: 724, baseType: !730, size: 64, offset: 3712)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !574, file: !575, line: 749, baseType: !740, offset: 3776)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !575, line: 290, elements: !290)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !574, file: !575, line: 751, baseType: !263, size: 128, offset: 3776)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !574, file: !575, line: 757, baseType: !422, size: 64, offset: 3904)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !574, file: !575, line: 758, baseType: !422, size: 64, offset: 3968)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !574, file: !575, line: 761, baseType: !745, size: 320, offset: 4032)
!745 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !506, line: 34, size: 320, elements: !746)
!746 = !{!747, !748}
!747 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !745, file: !506, line: 35, baseType: !201, size: 64)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !745, file: !506, line: 36, baseType: !749, size: 256, offset: 64)
!749 = !DICompositeType(tag: DW_TAG_array_type, baseType: !404, size: 256, elements: !510)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !574, file: !575, line: 766, baseType: !95, size: 32, offset: 4352)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !574, file: !575, line: 767, baseType: !95, size: 32, offset: 4384)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !574, file: !575, line: 768, baseType: !95, size: 32, offset: 4416)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !574, file: !575, line: 770, baseType: !95, size: 32, offset: 4448)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !574, file: !575, line: 772, baseType: !113, size: 64, offset: 4480)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !574, file: !575, line: 775, baseType: !7, size: 32, offset: 4544)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !574, file: !575, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !574, file: !575, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !574, file: !575, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !574, file: !575, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !574, file: !575, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !574, file: !575, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !574, file: !575, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !574, file: !575, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !574, file: !575, line: 831, baseType: !113, size: 64, offset: 4672)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !574, file: !575, line: 833, baseType: !766, size: 384, offset: 4736)
!766 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !767)
!767 = !{!768, !773}
!768 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !766, file: !12, line: 26, baseType: !769, size: 64)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !770, size: 64)
!770 = !DISubroutineType(types: !771)
!771 = !{!118, !772}
!772 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !766, size: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, scope: !766, file: !12, line: 27, baseType: !774, size: 320, offset: 64)
!774 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !766, file: !12, line: 27, size: 320, elements: !775)
!775 = !{!776, !786, !813}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !774, file: !12, line: 36, baseType: !777, size: 320)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !12, line: 29, size: 320, elements: !778)
!778 = !{!779, !781, !782, !783, !784, !785}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !777, file: !12, line: 30, baseType: !780, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !583, size: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !777, file: !12, line: 31, baseType: !583, size: 32, offset: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !777, file: !12, line: 32, baseType: !583, size: 32, offset: 96)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !777, file: !12, line: 33, baseType: !583, size: 32, offset: 128)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !777, file: !12, line: 34, baseType: !201, size: 64, offset: 192)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !777, file: !12, line: 35, baseType: !780, size: 64, offset: 256)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !774, file: !12, line: 46, baseType: !787, size: 192)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !12, line: 38, size: 192, elements: !788)
!788 = !{!789, !790, !791, !812}
!789 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !787, file: !12, line: 39, baseType: !692, size: 32)
!790 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !787, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!791 = !DIDerivedType(tag: DW_TAG_member, scope: !787, file: !12, line: 41, baseType: !792, size: 64, offset: 64)
!792 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !787, file: !12, line: 41, size: 64, elements: !793)
!793 = !{!794, !802}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !792, file: !12, line: 42, baseType: !795, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !797, line: 7, size: 128, elements: !798)
!797 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!798 = !{!799, !801}
!799 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !796, file: !797, line: 8, baseType: !800, size: 64)
!800 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !350, line: 93, baseType: !398)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !796, file: !797, line: 9, baseType: !398, size: 64, offset: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !792, file: !12, line: 43, baseType: !803, size: 64)
!803 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !804, size: 64)
!804 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !805, line: 7, size: 64, elements: !806)
!805 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!806 = !{!807, !811}
!807 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !804, file: !805, line: 8, baseType: !808, size: 32)
!808 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !805, line: 5, baseType: !809)
!809 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !137, line: 20, baseType: !810)
!810 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !139, line: 26, baseType: !95)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !804, file: !805, line: 9, baseType: !809, size: 32, offset: 32)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !787, file: !12, line: 45, baseType: !201, size: 64, offset: 128)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !774, file: !12, line: 54, baseType: !814, size: 256)
!814 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !774, file: !12, line: 48, size: 256, elements: !815)
!815 = !{!816, !819, !820, !821, !822}
!816 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !814, file: !12, line: 49, baseType: !817, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !814, file: !12, line: 50, baseType: !95, size: 32, offset: 64)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !814, file: !12, line: 51, baseType: !95, size: 32, offset: 96)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !814, file: !12, line: 52, baseType: !113, size: 64, offset: 128)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !814, file: !12, line: 53, baseType: !113, size: 64, offset: 192)
!823 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !574, file: !575, line: 835, baseType: !824, size: 32, offset: 5120)
!824 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !200, line: 22, baseType: !825)
!825 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !350, line: 28, baseType: !95)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !574, file: !575, line: 836, baseType: !824, size: 32, offset: 5152)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !574, file: !575, line: 840, baseType: !113, size: 64, offset: 5184)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !574, file: !575, line: 849, baseType: !573, size: 64, offset: 5248)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !574, file: !575, line: 852, baseType: !573, size: 64, offset: 5312)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !574, file: !575, line: 857, baseType: !263, size: 128, offset: 5376)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !574, file: !575, line: 858, baseType: !263, size: 128, offset: 5504)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !574, file: !575, line: 859, baseType: !573, size: 64, offset: 5632)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !574, file: !575, line: 867, baseType: !263, size: 128, offset: 5696)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !574, file: !575, line: 868, baseType: !263, size: 128, offset: 5824)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !574, file: !575, line: 871, baseType: !836, size: 64, offset: 5952)
!836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !837, size: 64)
!837 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !838, line: 59, size: 768, elements: !839)
!838 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!839 = !{!840, !841, !842, !843, !854, !855, !862, !871}
!840 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !837, file: !838, line: 61, baseType: !588, size: 32)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !837, file: !838, line: 62, baseType: !7, size: 32, offset: 32)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !837, file: !838, line: 63, baseType: !276, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !837, file: !838, line: 65, baseType: !844, size: 256, offset: 64)
!844 = !DICompositeType(tag: DW_TAG_array_type, baseType: !845, size: 256, elements: !510)
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !200, line: 182, size: 64, elements: !846)
!846 = !{!847}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !845, file: !200, line: 183, baseType: !848, size: 64)
!848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !849, size: 64)
!849 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !200, line: 186, size: 128, elements: !850)
!850 = !{!851, !852}
!851 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !849, file: !200, line: 187, baseType: !848, size: 64)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !849, file: !200, line: 187, baseType: !853, size: 64, offset: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !837, file: !838, line: 66, baseType: !845, size: 64, offset: 320)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !837, file: !838, line: 68, baseType: !856, size: 128, offset: 384)
!856 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !857, line: 40, baseType: !858)
!857 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !857, line: 36, size: 128, elements: !859)
!859 = !{!860, !861}
!860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !858, file: !857, line: 37, baseType: !276)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !858, file: !857, line: 38, baseType: !263, size: 128)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !837, file: !838, line: 69, baseType: !863, size: 128, align: 64, offset: 512)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !200, line: 216, size: 128, align: 64, elements: !864)
!864 = !{!865, !867}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !863, file: !200, line: 217, baseType: !866, size: 64)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !863, file: !200, line: 218, baseType: !868, size: 64, offset: 64)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DISubroutineType(types: !870)
!870 = !{null, !866}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !837, file: !838, line: 70, baseType: !872, size: 128, offset: 640)
!872 = !DICompositeType(tag: DW_TAG_array_type, baseType: !873, size: 128, elements: !736)
!873 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !838, line: 54, size: 128, elements: !874)
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !873, file: !838, line: 55, baseType: !95, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !873, file: !838, line: 56, baseType: !877, size: 64, offset: 64)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !838, line: 56, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !574, file: !575, line: 872, baseType: !880, size: 512, offset: 6016)
!880 = !DICompositeType(tag: DW_TAG_array_type, baseType: !849, size: 512, elements: !510)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !574, file: !575, line: 873, baseType: !263, size: 128, offset: 6528)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !574, file: !575, line: 874, baseType: !263, size: 128, offset: 6656)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !574, file: !575, line: 876, baseType: !884, size: 64, offset: 6784)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !886, line: 26, size: 192, elements: !887)
!886 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!887 = !{!888, !889}
!888 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !885, file: !886, line: 27, baseType: !7, size: 32)
!889 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !885, file: !886, line: 28, baseType: !890, size: 128, offset: 64)
!890 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !891, line: 43, size: 128, elements: !892)
!891 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!892 = !{!893, !894}
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !890, file: !891, line: 44, baseType: !476)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !890, file: !891, line: 45, baseType: !263, size: 128)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !574, file: !575, line: 879, baseType: !896, size: 64, offset: 6848)
!896 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !574, file: !575, line: 882, baseType: !896, size: 64, offset: 6912)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !574, file: !575, line: 884, baseType: !201, size: 64, offset: 6976)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !574, file: !575, line: 885, baseType: !201, size: 64, offset: 7040)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !574, file: !575, line: 890, baseType: !201, size: 64, offset: 7104)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !574, file: !575, line: 891, baseType: !902, size: 128, offset: 7168)
!902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !575, line: 242, size: 128, elements: !903)
!903 = !{!904, !905, !906}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !902, file: !575, line: 244, baseType: !201, size: 64)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !902, file: !575, line: 245, baseType: !201, size: 64, offset: 64)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !902, file: !575, line: 246, baseType: !476, offset: 128)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !574, file: !575, line: 900, baseType: !113, size: 64, offset: 7296)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !574, file: !575, line: 901, baseType: !113, size: 64, offset: 7360)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !574, file: !575, line: 904, baseType: !201, size: 64, offset: 7424)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !574, file: !575, line: 907, baseType: !201, size: 64, offset: 7488)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !574, file: !575, line: 910, baseType: !113, size: 64, offset: 7552)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !574, file: !575, line: 911, baseType: !113, size: 64, offset: 7616)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !574, file: !575, line: 914, baseType: !914, size: 640, offset: 7680)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !915, line: 123, size: 640, elements: !916)
!915 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!916 = !{!917, !923, !924}
!917 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !914, file: !915, line: 124, baseType: !918, size: 576)
!918 = !DICompositeType(tag: DW_TAG_array_type, baseType: !919, size: 576, elements: !318)
!919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !915, line: 108, size: 192, elements: !920)
!920 = !{!921, !922}
!921 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !919, file: !915, line: 109, baseType: !201, size: 64)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !919, file: !915, line: 110, baseType: !706, size: 128, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !914, file: !915, line: 125, baseType: !7, size: 32, offset: 576)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !914, file: !915, line: 126, baseType: !7, size: 32, offset: 608)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !574, file: !575, line: 917, baseType: !926, size: 192, offset: 8320)
!926 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !915, line: 134, size: 192, elements: !927)
!927 = !{!928, !929}
!928 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !926, file: !915, line: 135, baseType: !863, size: 128, align: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !926, file: !915, line: 136, baseType: !7, size: 32, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !574, file: !575, line: 923, baseType: !931, size: 64, offset: 8512)
!931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !932, size: 64)
!932 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !933)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !934, line: 11, flags: DIFlagFwdDecl)
!934 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!935 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !574, file: !575, line: 926, baseType: !931, size: 64, offset: 8576)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !574, file: !575, line: 929, baseType: !931, size: 64, offset: 8640)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !574, file: !575, line: 933, baseType: !938, size: 64, offset: 8704)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !575, line: 933, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !574, file: !575, line: 943, baseType: !941, size: 128, offset: 8768)
!941 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 128, elements: !942)
!942 = !{!943}
!943 = !DISubrange(count: 16)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !574, file: !575, line: 945, baseType: !945, size: 64, offset: 8896)
!945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !946, size: 64)
!946 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !575, line: 49, flags: DIFlagFwdDecl)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !574, file: !575, line: 956, baseType: !948, size: 64, offset: 8960)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !575, line: 45, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !574, file: !575, line: 959, baseType: !951, size: 64, offset: 9024)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !575, line: 959, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !574, file: !575, line: 962, baseType: !954, size: 64, offset: 9088)
!954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !955, size: 64)
!955 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !575, line: 66, flags: DIFlagFwdDecl)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !574, file: !575, line: 966, baseType: !957, size: 64, offset: 9152)
!957 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !958, size: 64)
!958 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !959, line: 35, flags: DIFlagFwdDecl)
!959 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!960 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !574, file: !575, line: 969, baseType: !961, size: 64, offset: 9216)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !915, line: 223, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !574, file: !575, line: 970, baseType: !964, size: 64, offset: 9280)
!964 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !965, size: 64)
!965 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !575, line: 62, flags: DIFlagFwdDecl)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !574, file: !575, line: 971, baseType: !967, size: 64, offset: 9344)
!967 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !968, line: 25, baseType: !969)
!968 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!969 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !968, line: 23, size: 64, elements: !970)
!970 = !{!971}
!971 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !969, file: !968, line: 24, baseType: !735, size: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !574, file: !575, line: 972, baseType: !967, size: 64, offset: 9408)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !574, file: !575, line: 974, baseType: !967, size: 64, offset: 9472)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !574, file: !575, line: 975, baseType: !975, size: 192, offset: 9536)
!975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !976, line: 30, size: 192, elements: !977)
!976 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!977 = !{!978, !979}
!978 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !975, file: !976, line: 31, baseType: !263, size: 128)
!979 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !975, file: !976, line: 32, baseType: !967, size: 64, offset: 128)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !574, file: !575, line: 976, baseType: !113, size: 64, offset: 9728)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !574, file: !575, line: 977, baseType: !363, size: 64, offset: 9792)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !574, file: !575, line: 978, baseType: !7, size: 32, offset: 9856)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !574, file: !575, line: 980, baseType: !866, size: 64, offset: 9920)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !574, file: !575, line: 989, baseType: !985, size: 128, offset: 9984)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !986, line: 35, size: 128, elements: !987)
!986 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!987 = !{!988, !989, !990}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !985, file: !986, line: 36, baseType: !95, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !985, file: !986, line: 37, baseType: !451, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !985, file: !986, line: 38, baseType: !991, size: 64, offset: 64)
!991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !992, size: 64)
!992 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !986, line: 23, flags: DIFlagFwdDecl)
!993 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !574, file: !575, line: 992, baseType: !201, size: 64, offset: 10112)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !574, file: !575, line: 993, baseType: !201, size: 64, offset: 10176)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !574, file: !575, line: 996, baseType: !276, offset: 10240)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !574, file: !575, line: 999, baseType: !476, offset: 10240)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !574, file: !575, line: 1001, baseType: !998, size: 64, offset: 10240)
!998 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !575, line: 636, size: 64, elements: !999)
!999 = !{!1000}
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !998, file: !575, line: 637, baseType: !1001, size: 64)
!1001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !998, size: 64)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !574, file: !575, line: 1005, baseType: !709, size: 128, offset: 10304)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !574, file: !575, line: 1007, baseType: !573, size: 64, offset: 10432)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !574, file: !575, line: 1009, baseType: !1005, size: 64, offset: 10496)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !575, line: 1009, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !574, file: !575, line: 1043, baseType: !63, size: 64, offset: 10560)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !574, file: !575, line: 1046, baseType: !1009, size: 64, offset: 10624)
!1009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1010, size: 64)
!1010 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !575, line: 41, flags: DIFlagFwdDecl)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !574, file: !575, line: 1050, baseType: !1012, size: 64, offset: 10688)
!1012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1013, size: 64)
!1013 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !575, line: 42, flags: DIFlagFwdDecl)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !574, file: !575, line: 1054, baseType: !1015, size: 64, offset: 10752)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !575, line: 55, flags: DIFlagFwdDecl)
!1017 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !574, file: !575, line: 1056, baseType: !1018, size: 64, offset: 10816)
!1018 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1019, size: 64)
!1019 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !575, line: 40, flags: DIFlagFwdDecl)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !574, file: !575, line: 1058, baseType: !1021, size: 64, offset: 10880)
!1021 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1022, size: 64)
!1022 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !575, line: 47, flags: DIFlagFwdDecl)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !574, file: !575, line: 1061, baseType: !1024, size: 64, offset: 10944)
!1024 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !575, line: 43, flags: DIFlagFwdDecl)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !574, file: !575, line: 1064, baseType: !113, size: 64, offset: 11008)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !574, file: !575, line: 1065, baseType: !1028, size: 64, offset: 11072)
!1028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1029, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !976, line: 14, baseType: !1030)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !976, line: 12, size: 384, elements: !1031)
!1031 = !{!1032}
!1032 = !DIDerivedType(tag: DW_TAG_member, scope: !1030, file: !976, line: 13, baseType: !1033, size: 384)
!1033 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1030, file: !976, line: 13, size: 384, elements: !1034)
!1034 = !{!1035, !1036, !1037, !1038}
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1033, file: !976, line: 13, baseType: !95, size: 32)
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1033, file: !976, line: 13, baseType: !95, size: 32, offset: 32)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1033, file: !976, line: 13, baseType: !95, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1033, file: !976, line: 13, baseType: !1039, size: 256, offset: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1040, line: 32, size: 256, elements: !1041)
!1040 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1041 = !{!1042, !1048, !1061, !1067, !1076, !1096, !1101}
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1039, file: !1040, line: 37, baseType: !1043, size: 64)
!1043 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 34, size: 64, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1043, file: !1040, line: 35, baseType: !825, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1043, file: !1040, line: 36, baseType: !1047, size: 32, offset: 32)
!1047 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !350, line: 49, baseType: !7)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1039, file: !1040, line: 45, baseType: !1049, size: 192)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 40, size: 192, elements: !1050)
!1050 = !{!1051, !1053, !1054, !1060}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1049, file: !1040, line: 41, baseType: !1052, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !350, line: 95, baseType: !95)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1049, file: !1040, line: 42, baseType: !95, size: 32, offset: 32)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1049, file: !1040, line: 43, baseType: !1055, size: 64, offset: 64)
!1055 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1040, line: 11, baseType: !1056)
!1056 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1040, line: 8, size: 64, elements: !1057)
!1057 = !{!1058, !1059}
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1056, file: !1040, line: 9, baseType: !95, size: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1056, file: !1040, line: 10, baseType: !63, size: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1049, file: !1040, line: 44, baseType: !95, size: 32, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1039, file: !1040, line: 52, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 48, size: 128, elements: !1063)
!1063 = !{!1064, !1065, !1066}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1062, file: !1040, line: 49, baseType: !825, size: 32)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1062, file: !1040, line: 50, baseType: !1047, size: 32, offset: 32)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1062, file: !1040, line: 51, baseType: !1055, size: 64, offset: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1039, file: !1040, line: 61, baseType: !1068, size: 256)
!1068 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 55, size: 256, elements: !1069)
!1069 = !{!1070, !1071, !1072, !1073, !1075}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1068, file: !1040, line: 56, baseType: !825, size: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1068, file: !1040, line: 57, baseType: !1047, size: 32, offset: 32)
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1068, file: !1040, line: 58, baseType: !95, size: 32, offset: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1068, file: !1040, line: 59, baseType: !1074, size: 64, offset: 128)
!1074 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !350, line: 94, baseType: !351)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1068, file: !1040, line: 60, baseType: !1074, size: 64, offset: 192)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1039, file: !1040, line: 95, baseType: !1077, size: 256)
!1077 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 64, size: 256, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1077, file: !1040, line: 65, baseType: !63, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1077, file: !1040, line: 77, baseType: !1081, size: 192, offset: 64)
!1081 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1077, file: !1040, line: 77, size: 192, elements: !1082)
!1082 = !{!1083, !1084, !1091}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1081, file: !1040, line: 82, baseType: !562, size: 16)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1081, file: !1040, line: 88, baseType: !1085, size: 192)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1040, line: 84, size: 192, elements: !1086)
!1086 = !{!1087, !1089, !1090}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1085, file: !1040, line: 85, baseType: !1088, size: 64)
!1088 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 64, elements: !688)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1085, file: !1040, line: 86, baseType: !63, size: 64, offset: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1085, file: !1040, line: 87, baseType: !63, size: 64, offset: 128)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1081, file: !1040, line: 93, baseType: !1092, size: 96)
!1092 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1081, file: !1040, line: 90, size: 96, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1092, file: !1040, line: 91, baseType: !1088, size: 64)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1092, file: !1040, line: 92, baseType: !584, size: 32, offset: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1039, file: !1040, line: 101, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 98, size: 128, elements: !1098)
!1098 = !{!1099, !1100}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1097, file: !1040, line: 99, baseType: !118, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1097, file: !1040, line: 100, baseType: !95, size: 32, offset: 64)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1039, file: !1040, line: 108, baseType: !1102, size: 128)
!1102 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1039, file: !1040, line: 104, size: 128, elements: !1103)
!1103 = !{!1104, !1105, !1106}
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1102, file: !1040, line: 105, baseType: !63, size: 64)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1102, file: !1040, line: 106, baseType: !95, size: 32, offset: 64)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1102, file: !1040, line: 107, baseType: !7, size: 32, offset: 96)
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !574, file: !575, line: 1067, baseType: !1108, offset: 11136)
!1108 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1109, line: 12, elements: !290)
!1109 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !574, file: !575, line: 1099, baseType: !1111, size: 64, offset: 11136)
!1111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1112, size: 64)
!1112 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !575, line: 56, flags: DIFlagFwdDecl)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !574, file: !575, line: 1103, baseType: !263, size: 128, offset: 11200)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !574, file: !575, line: 1104, baseType: !1115, size: 64, offset: 11328)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !575, line: 46, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !574, file: !575, line: 1105, baseType: !528, size: 192, offset: 11392)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !574, file: !575, line: 1106, baseType: !7, size: 32, offset: 11584)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !574, file: !575, line: 1109, baseType: !1120, size: 128, offset: 11648)
!1120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1121, size: 128, elements: !235)
!1121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1122, size: 64)
!1122 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !575, line: 51, flags: DIFlagFwdDecl)
!1123 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !574, file: !575, line: 1110, baseType: !528, size: 192, offset: 11776)
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !574, file: !575, line: 1111, baseType: !263, size: 128, offset: 11968)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !574, file: !575, line: 1173, baseType: !1126, size: 64, offset: 12096)
!1126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1127, size: 64)
!1127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1128, line: 62, size: 256, align: 256, elements: !1129)
!1128 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1129 = !{!1130, !1131, !1132, !1137}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1127, file: !1128, line: 75, baseType: !584, size: 32)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1127, file: !1128, line: 90, baseType: !584, size: 32, offset: 32)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1127, file: !1128, line: 124, baseType: !1133, size: 64, offset: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1127, file: !1128, line: 109, size: 64, elements: !1134)
!1134 = !{!1135, !1136}
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1133, file: !1128, line: 110, baseType: !202, size: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1133, file: !1128, line: 112, baseType: !202, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1127, file: !1128, line: 144, baseType: !584, size: 32, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !574, file: !575, line: 1174, baseType: !583, size: 32, offset: 12160)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !574, file: !575, line: 1179, baseType: !113, size: 64, offset: 12224)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !574, file: !575, line: 1182, baseType: !1141, size: 128, offset: 12288)
!1141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !506, line: 76, size: 128, elements: !1142)
!1142 = !{!1143, !1148, !1149}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1141, file: !506, line: 85, baseType: !1144, size: 64)
!1144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1145, line: 7, size: 64, elements: !1146)
!1145 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1146 = !{!1147}
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1144, file: !1145, line: 12, baseType: !732, size: 64)
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1141, file: !506, line: 88, baseType: !252, size: 8, offset: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1141, file: !506, line: 95, baseType: !252, size: 8, offset: 72)
!1150 = !DIDerivedType(tag: DW_TAG_member, scope: !574, file: !575, line: 1184, baseType: !1151, size: 128, offset: 12416)
!1151 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !574, file: !575, line: 1184, size: 128, elements: !1152)
!1152 = !{!1153, !1154}
!1153 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1151, file: !575, line: 1185, baseType: !588, size: 32)
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1151, file: !575, line: 1186, baseType: !863, size: 128, align: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !574, file: !575, line: 1190, baseType: !1156, size: 64, offset: 12544)
!1156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1157, size: 64)
!1157 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !575, line: 53, flags: DIFlagFwdDecl)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !574, file: !575, line: 1192, baseType: !1159, size: 128, offset: 12608)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !506, line: 64, size: 128, elements: !1160)
!1160 = !{!1161, !1254, !1255}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1159, file: !506, line: 65, baseType: !1162, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1163, size: 64)
!1163 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !406, line: 68, size: 512, align: 128, elements: !1164)
!1164 = !{!1165, !1166, !1246, !1253}
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1163, file: !406, line: 69, baseType: !113, size: 64)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !406, line: 77, baseType: !1167, size: 320, offset: 64)
!1167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !406, line: 77, size: 320, elements: !1168)
!1168 = !{!1169, !1178, !1183, !1211, !1219, !1225, !1238, !1245}
!1169 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 78, baseType: !1170, size: 320)
!1170 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 78, size: 320, elements: !1171)
!1171 = !{!1172, !1173, !1176, !1177}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1170, file: !406, line: 84, baseType: !263, size: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1170, file: !406, line: 86, baseType: !1174, size: 64, offset: 128)
!1174 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1175, size: 64)
!1175 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !406, line: 26, flags: DIFlagFwdDecl)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1170, file: !406, line: 87, baseType: !113, size: 64, offset: 192)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1170, file: !406, line: 94, baseType: !113, size: 64, offset: 256)
!1178 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 96, baseType: !1179, size: 64)
!1179 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 96, size: 64, elements: !1180)
!1180 = !{!1181}
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1179, file: !406, line: 101, baseType: !1182, size: 64)
!1182 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !200, line: 143, baseType: !201)
!1183 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 103, baseType: !1184, size: 320)
!1184 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 103, size: 320, elements: !1185)
!1185 = !{!1186, !1196, !1199, !1200}
!1186 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !406, line: 104, baseType: !1187, size: 128)
!1187 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !406, line: 104, size: 128, elements: !1188)
!1188 = !{!1189, !1190}
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1187, file: !406, line: 105, baseType: !263, size: 128)
!1190 = !DIDerivedType(tag: DW_TAG_member, scope: !1187, file: !406, line: 106, baseType: !1191, size: 128)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1187, file: !406, line: 106, size: 128, elements: !1192)
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1191, file: !406, line: 107, baseType: !1162, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1191, file: !406, line: 109, baseType: !95, size: 32, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1191, file: !406, line: 110, baseType: !95, size: 32, offset: 96)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1184, file: !406, line: 117, baseType: !1197, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1198, size: 64)
!1198 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !406, line: 117, flags: DIFlagFwdDecl)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1184, file: !406, line: 119, baseType: !63, size: 64, offset: 192)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1184, file: !406, line: 120, baseType: !1201, size: 64, offset: 256)
!1201 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1184, file: !406, line: 120, size: 64, elements: !1202)
!1202 = !{!1203, !1204, !1205}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1201, file: !406, line: 121, baseType: !63, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1201, file: !406, line: 122, baseType: !113, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, scope: !1201, file: !406, line: 123, baseType: !1206, size: 32)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1201, file: !406, line: 123, size: 32, elements: !1207)
!1207 = !{!1208, !1209, !1210}
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1206, file: !406, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1206, file: !406, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1206, file: !406, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1211 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 130, baseType: !1212, size: 192)
!1212 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 130, size: 192, elements: !1213)
!1213 = !{!1214, !1215, !1216, !1217, !1218}
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1212, file: !406, line: 131, baseType: !113, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1212, file: !406, line: 134, baseType: !140, size: 8, offset: 64)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1212, file: !406, line: 135, baseType: !140, size: 8, offset: 72)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1212, file: !406, line: 136, baseType: !451, size: 32, offset: 96)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1212, file: !406, line: 137, baseType: !7, size: 32, offset: 128)
!1219 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 139, baseType: !1220, size: 256)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 139, size: 256, elements: !1221)
!1221 = !{!1222, !1223, !1224}
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1220, file: !406, line: 140, baseType: !113, size: 64)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1220, file: !406, line: 141, baseType: !451, size: 32, offset: 64)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1220, file: !406, line: 143, baseType: !263, size: 128, offset: 128)
!1225 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 145, baseType: !1226, size: 256)
!1226 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 145, size: 256, elements: !1227)
!1227 = !{!1228, !1229, !1231, !1232, !1237}
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1226, file: !406, line: 146, baseType: !113, size: 64)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1226, file: !406, line: 147, baseType: !1230, size: 64, offset: 64)
!1230 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !395, line: 509, baseType: !1162)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1226, file: !406, line: 148, baseType: !113, size: 64, offset: 128)
!1232 = !DIDerivedType(tag: DW_TAG_member, scope: !1226, file: !406, line: 149, baseType: !1233, size: 64, offset: 192)
!1233 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1226, file: !406, line: 149, size: 64, elements: !1234)
!1234 = !{!1235, !1236}
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1233, file: !406, line: 150, baseType: !422, size: 64)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1233, file: !406, line: 151, baseType: !451, size: 32)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1226, file: !406, line: 156, baseType: !276, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !406, line: 159, baseType: !1239, size: 128)
!1239 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1167, file: !406, line: 159, size: 128, elements: !1240)
!1240 = !{!1241, !1244}
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1239, file: !406, line: 161, baseType: !1242, size: 64)
!1242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1243, size: 64)
!1243 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !406, line: 161, flags: DIFlagFwdDecl)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1239, file: !406, line: 162, baseType: !63, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1167, file: !406, line: 176, baseType: !863, size: 128, align: 64)
!1246 = !DIDerivedType(tag: DW_TAG_member, scope: !1163, file: !406, line: 179, baseType: !1247, size: 32, offset: 384)
!1247 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1163, file: !406, line: 179, size: 32, elements: !1248)
!1248 = !{!1249, !1250, !1251, !1252}
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1247, file: !406, line: 184, baseType: !451, size: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1247, file: !406, line: 192, baseType: !7, size: 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1247, file: !406, line: 194, baseType: !7, size: 32)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1247, file: !406, line: 195, baseType: !95, size: 32)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1163, file: !406, line: 199, baseType: !451, size: 32, offset: 416)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1159, file: !506, line: 67, baseType: !584, size: 32, offset: 64)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1159, file: !506, line: 68, baseType: !584, size: 32, offset: 96)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !574, file: !575, line: 1206, baseType: !95, size: 32, offset: 12736)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !574, file: !575, line: 1207, baseType: !95, size: 32, offset: 12768)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !574, file: !575, line: 1209, baseType: !113, size: 64, offset: 12800)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !574, file: !575, line: 1219, baseType: !201, size: 64, offset: 12864)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !574, file: !575, line: 1220, baseType: !201, size: 64, offset: 12928)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !574, file: !575, line: 1317, baseType: !95, size: 32, offset: 12992)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !574, file: !575, line: 1319, baseType: !573, size: 64, offset: 13056)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !574, file: !575, line: 1322, baseType: !1264, size: 64, offset: 13120)
!1264 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1265, size: 64)
!1265 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1266, line: 9, flags: DIFlagFwdDecl)
!1266 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !574, file: !575, line: 1326, baseType: !588, size: 32, offset: 13184)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !574, file: !575, line: 1342, baseType: !63, size: 64, offset: 13248)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !574, file: !575, line: 1343, baseType: !202, size: 64, offset: 13312)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !574, file: !575, line: 1344, baseType: !201, size: 64, offset: 13376)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !574, file: !575, line: 1345, baseType: !202, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !574, file: !575, line: 1346, baseType: !202, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !574, file: !575, line: 1347, baseType: !202, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !574, file: !575, line: 1348, baseType: !863, size: 128, align: 64, offset: 13504)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !574, file: !575, line: 1358, baseType: !1276, size: 34816, offset: 13824)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1277, line: 485, size: 34816, elements: !1278)
!1277 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !{!1279, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1308, !1309, !1310, !1311, !1312, !1313, !1316, !1317, !1318}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1276, file: !1277, line: 487, baseType: !1280, size: 192)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 192, elements: !318)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1282, line: 16, size: 64, elements: !1283)
!1282 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1281, file: !1282, line: 17, baseType: !557, size: 16)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1281, file: !1282, line: 18, baseType: !557, size: 16, offset: 16)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1281, file: !1282, line: 19, baseType: !557, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1281, file: !1282, line: 19, baseType: !557, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1281, file: !1282, line: 19, baseType: !557, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1281, file: !1282, line: 19, baseType: !557, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1281, file: !1282, line: 19, baseType: !557, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1281, file: !1282, line: 20, baseType: !557, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1281, file: !1282, line: 20, baseType: !557, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1281, file: !1282, line: 20, baseType: !557, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1281, file: !1282, line: 20, baseType: !557, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1281, file: !1282, line: 20, baseType: !557, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1281, file: !1282, line: 20, baseType: !557, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1276, file: !1277, line: 491, baseType: !113, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1276, file: !1277, line: 495, baseType: !358, size: 16, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1276, file: !1277, line: 496, baseType: !358, size: 16, offset: 272)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1276, file: !1277, line: 497, baseType: !358, size: 16, offset: 288)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1276, file: !1277, line: 498, baseType: !358, size: 16, offset: 304)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1276, file: !1277, line: 502, baseType: !113, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1276, file: !1277, line: 503, baseType: !113, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1276, file: !1277, line: 514, baseType: !1305, size: 256, offset: 448)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1306, size: 256, elements: !510)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1277, line: 483, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1276, file: !1277, line: 516, baseType: !113, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1276, file: !1277, line: 518, baseType: !113, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1276, file: !1277, line: 520, baseType: !113, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1276, file: !1277, line: 521, baseType: !113, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1276, file: !1277, line: 522, baseType: !113, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1276, file: !1277, line: 528, baseType: !1314, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1277, line: 10, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1276, file: !1277, line: 535, baseType: !113, size: 64, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1276, file: !1277, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1276, file: !1277, line: 540, baseType: !1319, size: 33280, offset: 1536)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1320, line: 317, size: 33280, elements: !1321)
!1320 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1319, file: !1320, line: 330, baseType: !7, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1319, file: !1320, line: 337, baseType: !113, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1319, file: !1320, line: 348, baseType: !1325, size: 32768, offset: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1320, line: 304, size: 32768, elements: !1326)
!1326 = !{!1327, !1342, !1379, !1429, !1446}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1325, file: !1320, line: 305, baseType: !1328, size: 896)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1320, line: 12, size: 896, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1341}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1328, file: !1320, line: 13, baseType: !583, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1328, file: !1320, line: 14, baseType: !583, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1328, file: !1320, line: 15, baseType: !583, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1328, file: !1320, line: 16, baseType: !583, size: 32, offset: 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1328, file: !1320, line: 17, baseType: !583, size: 32, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1328, file: !1320, line: 18, baseType: !583, size: 32, offset: 160)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1328, file: !1320, line: 19, baseType: !583, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1328, file: !1320, line: 22, baseType: !1338, size: 640, offset: 224)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 640, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 20)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1328, file: !1320, line: 25, baseType: !583, size: 32, offset: 864)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1325, file: !1320, line: 306, baseType: !1343, size: 4096, align: 128)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1320, line: 34, size: 4096, align: 128, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1364, !1365, !1366, !1368, !1370, !1374}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1343, file: !1320, line: 35, baseType: !557, size: 16)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1343, file: !1320, line: 36, baseType: !557, size: 16, offset: 16)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1343, file: !1320, line: 37, baseType: !557, size: 16, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1343, file: !1320, line: 38, baseType: !557, size: 16, offset: 48)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1320, line: 39, baseType: !1350, size: 128, offset: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1320, line: 39, size: 128, elements: !1351)
!1351 = !{!1352, !1357}
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !1320, line: 40, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1320, line: 40, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1353, file: !1320, line: 41, baseType: !201, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1353, file: !1320, line: 42, baseType: !201, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !1320, line: 44, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1320, line: 44, size: 128, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1358, file: !1320, line: 45, baseType: !583, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1358, file: !1320, line: 46, baseType: !583, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1358, file: !1320, line: 47, baseType: !583, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1358, file: !1320, line: 48, baseType: !583, size: 32, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1343, file: !1320, line: 51, baseType: !583, size: 32, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1343, file: !1320, line: 52, baseType: !583, size: 32, offset: 224)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1343, file: !1320, line: 55, baseType: !1367, size: 1024, offset: 256)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 1024, elements: !220)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1343, file: !1320, line: 58, baseType: !1369, size: 2048, offset: 1280)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 2048, elements: !322)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1343, file: !1320, line: 60, baseType: !1371, size: 384, offset: 3328)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !583, size: 384, elements: !1372)
!1372 = !{!1373}
!1373 = !DISubrange(count: 12)
!1374 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1320, line: 62, baseType: !1375, size: 384, offset: 3712)
!1375 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1320, line: 62, size: 384, elements: !1376)
!1376 = !{!1377, !1378}
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1375, file: !1320, line: 63, baseType: !1371, size: 384)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1375, file: !1320, line: 64, baseType: !1371, size: 384)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1325, file: !1320, line: 307, baseType: !1380, size: 1088)
!1380 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1320, line: 79, size: 1088, elements: !1381)
!1381 = !{!1382, !1383, !1384, !1385, !1386, !1387, !1388, !1389, !1390, !1391, !1392, !1393, !1394, !1395, !1396, !1428}
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1380, file: !1320, line: 80, baseType: !583, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1380, file: !1320, line: 81, baseType: !583, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1380, file: !1320, line: 82, baseType: !583, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1380, file: !1320, line: 83, baseType: !583, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1380, file: !1320, line: 84, baseType: !583, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1380, file: !1320, line: 85, baseType: !583, size: 32, offset: 160)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1380, file: !1320, line: 86, baseType: !583, size: 32, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1380, file: !1320, line: 88, baseType: !1338, size: 640, offset: 224)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1380, file: !1320, line: 89, baseType: !136, size: 8, offset: 864)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1380, file: !1320, line: 90, baseType: !136, size: 8, offset: 872)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1380, file: !1320, line: 91, baseType: !136, size: 8, offset: 880)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1380, file: !1320, line: 92, baseType: !136, size: 8, offset: 888)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1380, file: !1320, line: 93, baseType: !136, size: 8, offset: 896)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1380, file: !1320, line: 94, baseType: !136, size: 8, offset: 904)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1380, file: !1320, line: 95, baseType: !1397, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1399, line: 11, size: 128, elements: !1400)
!1399 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1398, file: !1399, line: 12, baseType: !118, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1398, file: !1399, line: 13, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1405, line: 56, size: 1344, elements: !1406)
!1405 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1404, file: !1405, line: 61, baseType: !113, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1404, file: !1405, line: 62, baseType: !113, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1404, file: !1405, line: 63, baseType: !113, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1404, file: !1405, line: 64, baseType: !113, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1404, file: !1405, line: 65, baseType: !113, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1404, file: !1405, line: 66, baseType: !113, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1404, file: !1405, line: 68, baseType: !113, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1404, file: !1405, line: 69, baseType: !113, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1404, file: !1405, line: 70, baseType: !113, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1404, file: !1405, line: 71, baseType: !113, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1404, file: !1405, line: 72, baseType: !113, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1404, file: !1405, line: 73, baseType: !113, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1404, file: !1405, line: 74, baseType: !113, size: 64, offset: 768)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1404, file: !1405, line: 75, baseType: !113, size: 64, offset: 832)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1404, file: !1405, line: 76, baseType: !113, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1404, file: !1405, line: 81, baseType: !113, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1404, file: !1405, line: 83, baseType: !113, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1404, file: !1405, line: 84, baseType: !113, size: 64, offset: 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1405, line: 85, baseType: !113, size: 64, offset: 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1404, file: !1405, line: 86, baseType: !113, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1404, file: !1405, line: 87, baseType: !113, size: 64, offset: 1280)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1380, file: !1320, line: 96, baseType: !583, size: 32, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1325, file: !1320, line: 308, baseType: !1430, size: 4608, align: 512)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1320, line: 289, size: 4608, align: 512, elements: !1431)
!1431 = !{!1432, !1433, !1442}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1430, file: !1320, line: 290, baseType: !1343, size: 4096, align: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1430, file: !1320, line: 291, baseType: !1434, size: 512, offset: 4096)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1320, line: 268, size: 512, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1434, file: !1320, line: 269, baseType: !201, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1434, file: !1320, line: 270, baseType: !201, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1434, file: !1320, line: 271, baseType: !1439, size: 384, offset: 128)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 384, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 6)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1430, file: !1320, line: 292, baseType: !1443, offset: 4608)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 0)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1325, file: !1320, line: 309, baseType: !1447, size: 32768)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !136, size: 32768, elements: !1448)
!1448 = !{!1449}
!1449 = !DISubrange(count: 4096)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !570, file: !406, line: 378, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !566, file: !406, line: 384, baseType: !885, size: 192, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !426, file: !406, line: 500, baseType: !276, offset: 6656)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !426, file: !406, line: 501, baseType: !1455, size: 64, offset: 6656)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !406, line: 387, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !426, file: !406, line: 516, baseType: !1458, size: 64, offset: 6720)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1460, line: 18, flags: DIFlagFwdDecl)
!1460 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !426, file: !406, line: 519, baseType: !393, size: 64, offset: 6784)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !426, file: !406, line: 521, baseType: !1463, size: 64, offset: 6848)
!1463 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1464, size: 64)
!1464 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !406, line: 521, flags: DIFlagFwdDecl)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !426, file: !406, line: 545, baseType: !451, size: 32, offset: 6912)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !426, file: !406, line: 548, baseType: !252, size: 8, offset: 6944)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !426, file: !406, line: 550, baseType: !1468, offset: 6952)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1469, line: 142, elements: !290)
!1469 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !426, file: !406, line: 554, baseType: !1471, size: 256, offset: 6976)
!1471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1472, line: 102, size: 256, elements: !1473)
!1472 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1473 = !{!1474, !1475, !1476}
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1471, file: !1472, line: 103, baseType: !459, size: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1471, file: !1472, line: 104, baseType: !263, size: 128, offset: 64)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1471, file: !1472, line: 105, baseType: !1477, size: 64, offset: 192)
!1477 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1472, line: 21, baseType: !1478)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1479, size: 64)
!1479 = !DISubroutineType(types: !1480)
!1480 = !{null, !1481}
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !426, file: !406, line: 557, baseType: !583, size: 32, offset: 7232)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !423, file: !406, line: 565, baseType: !1484, offset: 7296)
!1484 = !DICompositeType(tag: DW_TAG_array_type, baseType: !113, elements: !1485)
!1485 = !{!1486}
!1486 = !DISubrange(count: -1)
!1487 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !405, file: !406, line: 333, baseType: !1488, size: 64, offset: 576)
!1488 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !395, line: 284, baseType: !1489)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !395, line: 284, size: 64, elements: !1490)
!1490 = !{!1491}
!1491 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1489, file: !395, line: 284, baseType: !1492, size: 64)
!1492 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !449, line: 19, baseType: !113)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !405, file: !406, line: 334, baseType: !113, size: 64, offset: 640)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !405, file: !406, line: 343, baseType: !1495, size: 256, offset: 704)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !405, file: !406, line: 340, size: 256, elements: !1496)
!1496 = !{!1497, !1498}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1495, file: !406, line: 341, baseType: !413, size: 192, align: 64)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1495, file: !406, line: 342, baseType: !113, size: 64, offset: 192)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !405, file: !406, line: 351, baseType: !263, size: 128, offset: 960)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !405, file: !406, line: 353, baseType: !1501, size: 64, offset: 1088)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !406, line: 353, flags: DIFlagFwdDecl)
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !405, file: !406, line: 356, baseType: !1504, size: 64, offset: 1152)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1506)
!1506 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !406, line: 356, flags: DIFlagFwdDecl)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !405, file: !406, line: 359, baseType: !113, size: 64, offset: 1216)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !405, file: !406, line: 361, baseType: !393, size: 64, offset: 1280)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !405, file: !406, line: 362, baseType: !63, size: 64, offset: 1344)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !405, file: !406, line: 365, baseType: !459, size: 64, offset: 1408)
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !405, file: !406, line: 373, baseType: !1512, offset: 1472)
!1512 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !406, line: 296, elements: !290)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !372, file: !342, line: 90, baseType: !367, size: 64, offset: 192)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !372, file: !342, line: 91, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !383, size: 64)
!1516 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !332, file: !259, line: 143, baseType: !1517, size: 64, offset: 256)
!1517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1518, size: 64)
!1518 = !DISubroutineType(types: !1519)
!1519 = !{!1520, !269}
!1520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1521, size: 64)
!1521 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1522)
!1522 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1523)
!1523 = !{!1524, !1525, !1529, !1533, !1539, !1543}
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1522, file: !18, line: 40, baseType: !17, size: 32)
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1522, file: !18, line: 41, baseType: !1526, size: 64, offset: 64)
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = !DISubroutineType(types: !1528)
!1528 = !{!252}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1522, file: !18, line: 42, baseType: !1530, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1531, size: 64)
!1531 = !DISubroutineType(types: !1532)
!1532 = !{!63}
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1522, file: !18, line: 43, baseType: !1534, size: 64, offset: 192)
!1534 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1535, size: 64)
!1535 = !DISubroutineType(types: !1536)
!1536 = !{!228, !1537}
!1537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1538, size: 64)
!1538 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1522, file: !18, line: 44, baseType: !1540, size: 64, offset: 256)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!228}
!1543 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1522, file: !18, line: 45, baseType: !1544, size: 64, offset: 320)
!1544 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1545, size: 64)
!1545 = !DISubroutineType(types: !1546)
!1546 = !{null, !63}
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !332, file: !259, line: 144, baseType: !1548, size: 64, offset: 320)
!1548 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1549, size: 64)
!1549 = !DISubroutineType(types: !1550)
!1550 = !{!228, !269}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !332, file: !259, line: 145, baseType: !1552, size: 64, offset: 384)
!1552 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1553, size: 64)
!1553 = !DISubroutineType(types: !1554)
!1554 = !{null, !269, !1555, !1561}
!1555 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1556, size: 64)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1460, line: 23, baseType: !1557)
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1460, line: 21, size: 32, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1557, file: !1460, line: 22, baseType: !1560, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !200, line: 32, baseType: !1047)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1460, line: 28, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1460, line: 26, size: 32, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1563, file: !1460, line: 27, baseType: !1566, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !200, line: 33, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !350, line: 50, baseType: !7)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !258, file: !259, line: 70, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !177, line: 123, size: 1024, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1713, !1714, !1715, !1716, !1717}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1570, file: !177, line: 124, baseType: !451, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1570, file: !177, line: 125, baseType: !451, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1570, file: !177, line: 135, baseType: !1569, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1570, file: !177, line: 136, baseType: !83, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1570, file: !177, line: 138, baseType: !413, size: 192, align: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1570, file: !177, line: 140, baseType: !228, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1570, file: !177, line: 141, baseType: !7, size: 32, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !177, line: 142, baseType: !1580, size: 256, offset: 512)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !177, line: 142, size: 256, elements: !1581)
!1581 = !{!1582, !1636, !1640}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1580, file: !177, line: 143, baseType: !1583, size: 192)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !177, line: 91, size: 192, elements: !1584)
!1584 = !{!1585, !1586, !1587}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1583, file: !177, line: 92, baseType: !113, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1583, file: !177, line: 94, baseType: !430, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1583, file: !177, line: 100, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !177, line: 180, size: 704, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1606, !1607, !1608, !1634, !1635}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1589, file: !177, line: 182, baseType: !1569, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !177, line: 183, baseType: !7, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1589, file: !177, line: 186, baseType: !1594, size: 192, offset: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1595, line: 19, size: 192, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1596 = !{!1597, !1604, !1605}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1594, file: !1595, line: 20, baseType: !1598, size: 128)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1599, line: 292, size: 128, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1598, file: !1599, line: 293, baseType: !276)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1598, file: !1599, line: 295, baseType: !203, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1598, file: !1599, line: 296, baseType: !63, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1594, file: !1595, line: 21, baseType: !7, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1594, file: !1595, line: 22, baseType: !7, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1589, file: !177, line: 187, baseType: !583, size: 32, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1589, file: !177, line: 188, baseType: !583, size: 32, offset: 352)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1589, file: !177, line: 189, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !177, line: 168, size: 320, elements: !1611)
!1611 = !{!1612, !1618, !1622, !1626, !1630}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1610, file: !177, line: 169, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!95, !1616, !1588}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !395, line: 539, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1610, file: !177, line: 171, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!95, !1569, !83, !357}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1610, file: !177, line: 173, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!95, !1569}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1610, file: !177, line: 174, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!95, !1569, !1569, !83}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1610, file: !177, line: 176, baseType: !1631, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!95, !1616, !1569, !1588}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1589, file: !177, line: 192, baseType: !263, size: 128, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1589, file: !177, line: 194, baseType: !856, size: 128, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1580, file: !177, line: 144, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !177, line: 103, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1637, file: !177, line: 104, baseType: !1569, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1580, file: !177, line: 145, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !177, line: 107, size: 256, elements: !1642)
!1642 = !{!1643, !1708, !1711, !1712}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1641, file: !177, line: 108, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !177, line: 217, size: 768, elements: !1647)
!1647 = !{!1648, !1668, !1672, !1676, !1681, !1685, !1689, !1693, !1694, !1695, !1696, !1704}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1646, file: !177, line: 222, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!95, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !177, line: 197, size: 1088, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1653, file: !177, line: 199, baseType: !1569, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1653, file: !177, line: 200, baseType: !393, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1653, file: !177, line: 201, baseType: !1616, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1653, file: !177, line: 202, baseType: !63, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1653, file: !177, line: 205, baseType: !528, size: 192, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1653, file: !177, line: 206, baseType: !528, size: 192, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1653, file: !177, line: 207, baseType: !95, size: 32, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1653, file: !177, line: 208, baseType: !263, size: 128, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1653, file: !177, line: 209, baseType: !317, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1653, file: !177, line: 211, baseType: !363, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1653, file: !177, line: 212, baseType: !252, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1653, file: !177, line: 213, baseType: !252, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1653, file: !177, line: 214, baseType: !1504, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1646, file: !177, line: 223, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1652}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1646, file: !177, line: 236, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!95, !1616, !63}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1646, file: !177, line: 238, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!63, !1616, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1646, file: !177, line: 239, baseType: !1682, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!63, !1616, !63, !1680}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1646, file: !177, line: 240, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1616, !63}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1646, file: !177, line: 242, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!348, !1652, !317, !363, !396}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1646, file: !177, line: 252, baseType: !363, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1646, file: !177, line: 259, baseType: !252, size: 8, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1646, file: !177, line: 260, baseType: !1690, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1646, file: !177, line: 263, baseType: !1697, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700, !1652, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1701, line: 52, baseType: !7)
!1701 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !177, line: 27, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1646, file: !177, line: 266, baseType: !1705, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!95, !1652, !404}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1641, file: !177, line: 109, baseType: !1709, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !177, line: 31, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1641, file: !177, line: 110, baseType: !396, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1641, file: !177, line: 111, baseType: !1569, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1570, file: !177, line: 148, baseType: !63, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1570, file: !177, line: 154, baseType: !201, size: 64, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !177, line: 156, baseType: !358, size: 16, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1570, file: !177, line: 157, baseType: !357, size: 16, offset: 912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1570, file: !177, line: 158, baseType: !1718, size: 64, offset: 960)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !177, line: 32, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !258, file: !259, line: 71, baseType: !1721, size: 32, offset: 448)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1722, line: 19, size: 32, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1721, file: !1722, line: 20, baseType: !588, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !258, file: !259, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !258, file: !259, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !258, file: !259, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !258, file: !259, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !258, file: !259, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !255, file: !30, line: 463, baseType: !1731, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !255, file: !30, line: 465, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !255, file: !30, line: 467, baseType: !83, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !255, file: !30, line: 468, baseType: !1737, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1747, !1752, !1756}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1739, file: !30, line: 88, baseType: !83, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1739, file: !30, line: 89, baseType: !369, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1739, file: !30, line: 90, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!95, !1731, !312}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1739, file: !30, line: 91, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!317, !1731, !1751, !1555, !1561}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !357, size: 64)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1739, file: !30, line: 93, baseType: !1753, size: 64, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1754, size: 64)
!1754 = !DISubroutineType(types: !1755)
!1755 = !{null, !1731}
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1739, file: !30, line: 95, baseType: !1757, size: 64, offset: 320)
!1757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1758, size: 64)
!1758 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1759)
!1759 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1760)
!1760 = !{!1761, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786}
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1759, file: !37, line: 279, baseType: !1762, size: 64)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DISubroutineType(types: !1764)
!1764 = !{!95, !1731}
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1759, file: !37, line: 280, baseType: !1753, size: 64, offset: 64)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1759, file: !37, line: 281, baseType: !1762, size: 64, offset: 128)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1759, file: !37, line: 282, baseType: !1762, size: 64, offset: 192)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1759, file: !37, line: 283, baseType: !1762, size: 64, offset: 256)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1759, file: !37, line: 284, baseType: !1762, size: 64, offset: 320)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1759, file: !37, line: 285, baseType: !1762, size: 64, offset: 384)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1759, file: !37, line: 286, baseType: !1762, size: 64, offset: 448)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1759, file: !37, line: 287, baseType: !1762, size: 64, offset: 512)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1759, file: !37, line: 288, baseType: !1762, size: 64, offset: 576)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1759, file: !37, line: 289, baseType: !1762, size: 64, offset: 640)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1759, file: !37, line: 290, baseType: !1762, size: 64, offset: 704)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1759, file: !37, line: 291, baseType: !1762, size: 64, offset: 768)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1759, file: !37, line: 292, baseType: !1762, size: 64, offset: 832)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1759, file: !37, line: 293, baseType: !1762, size: 64, offset: 896)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1759, file: !37, line: 294, baseType: !1762, size: 64, offset: 960)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1759, file: !37, line: 295, baseType: !1762, size: 64, offset: 1024)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1759, file: !37, line: 296, baseType: !1762, size: 64, offset: 1088)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1759, file: !37, line: 297, baseType: !1762, size: 64, offset: 1152)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1759, file: !37, line: 298, baseType: !1762, size: 64, offset: 1216)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1759, file: !37, line: 299, baseType: !1762, size: 64, offset: 1280)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1759, file: !37, line: 300, baseType: !1762, size: 64, offset: 1344)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1759, file: !37, line: 301, baseType: !1762, size: 64, offset: 1408)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !255, file: !30, line: 470, baseType: !1788, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1790, line: 82, size: 1408, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1862, !1865, !1868}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1789, file: !1790, line: 83, baseType: !83, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1789, file: !1790, line: 84, baseType: !83, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1789, file: !1790, line: 85, baseType: !1731, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1789, file: !1790, line: 86, baseType: !369, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1789, file: !1790, line: 87, baseType: !369, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1789, file: !1790, line: 88, baseType: !369, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1789, file: !1790, line: 90, baseType: !1799, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!95, !1731, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1813, !1826, !1827, !1828, !1829, !1830, !1838, !1839, !1840, !1841, !1842, !1843}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !24, line: 96, baseType: !83, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1803, file: !24, line: 97, baseType: !1788, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1803, file: !24, line: 99, baseType: !208, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1803, file: !24, line: 100, baseType: !83, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1803, file: !24, line: 102, baseType: !252, size: 8, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1803, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1803, file: !24, line: 105, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !214, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1803, file: !24, line: 106, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !216, line: 210, size: 256, elements: !1817)
!1817 = !{!1818, !1822, !1824, !1825}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1816, file: !216, line: 211, baseType: !1819, size: 72)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !138, size: 72, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 9)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1816, file: !216, line: 212, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !216, line: 14, baseType: !113)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1816, file: !216, line: 213, baseType: !584, size: 32, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1816, file: !216, line: 214, baseType: !584, size: 32, offset: 224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1803, file: !24, line: 108, baseType: !1762, size: 64, offset: 448)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1803, file: !24, line: 109, baseType: !1753, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1803, file: !24, line: 110, baseType: !1762, size: 64, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1803, file: !24, line: 111, baseType: !1753, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1803, file: !24, line: 112, baseType: !1831, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!95, !1731, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1835, file: !37, line: 51, baseType: !95, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1803, file: !24, line: 113, baseType: !1762, size: 64, offset: 768)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1803, file: !24, line: 114, baseType: !369, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1803, file: !24, line: 115, baseType: !369, size: 64, offset: 896)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1803, file: !24, line: 117, baseType: !1757, size: 64, offset: 960)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1803, file: !24, line: 118, baseType: !1753, size: 64, offset: 1024)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1803, file: !24, line: 120, baseType: !1844, size: 64, offset: 1088)
!1844 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1845, size: 64)
!1845 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1789, file: !1790, line: 91, baseType: !1744, size: 64, offset: 448)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1789, file: !1790, line: 92, baseType: !1762, size: 64, offset: 512)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1789, file: !1790, line: 93, baseType: !1753, size: 64, offset: 576)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1789, file: !1790, line: 94, baseType: !1762, size: 64, offset: 640)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1789, file: !1790, line: 95, baseType: !1753, size: 64, offset: 704)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1789, file: !1790, line: 97, baseType: !1762, size: 64, offset: 768)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1789, file: !1790, line: 98, baseType: !1762, size: 64, offset: 832)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1789, file: !1790, line: 100, baseType: !1831, size: 64, offset: 896)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1789, file: !1790, line: 101, baseType: !1762, size: 64, offset: 960)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1789, file: !1790, line: 103, baseType: !1762, size: 64, offset: 1024)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1789, file: !1790, line: 105, baseType: !1762, size: 64, offset: 1088)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1789, file: !1790, line: 107, baseType: !1757, size: 64, offset: 1152)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1789, file: !1790, line: 109, baseType: !1859, size: 64, offset: 1216)
!1859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1860, size: 64)
!1860 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1861)
!1861 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1790, line: 109, flags: DIFlagFwdDecl)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1789, file: !1790, line: 111, baseType: !1863, size: 64, offset: 1280)
!1863 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1864, size: 64)
!1864 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1790, line: 111, flags: DIFlagFwdDecl)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1789, file: !1790, line: 112, baseType: !1866, offset: 1344)
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1867, line: 187, elements: !290)
!1867 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1789, file: !1790, line: 114, baseType: !252, size: 8, offset: 1344)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !255, file: !30, line: 471, baseType: !1802, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !255, file: !30, line: 473, baseType: !63, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !255, file: !30, line: 475, baseType: !63, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !255, file: !30, line: 480, baseType: !528, size: 192, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !255, file: !30, line: 484, baseType: !1874, size: 576, offset: 1216)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1874, file: !30, line: 362, baseType: !263, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1874, file: !30, line: 363, baseType: !263, size: 128, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1874, file: !30, line: 364, baseType: !263, size: 128, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1874, file: !30, line: 365, baseType: !263, size: 128, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1874, file: !30, line: 366, baseType: !252, size: 8, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1874, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !255, file: !30, line: 485, baseType: !1883, size: 2304, offset: 1792)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1980, !1984}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1883, file: !37, line: 566, baseType: !1834, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1883, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1883, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1883, file: !37, line: 569, baseType: !252, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1883, file: !37, line: 570, baseType: !252, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1883, file: !37, line: 571, baseType: !252, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1883, file: !37, line: 572, baseType: !252, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1883, file: !37, line: 573, baseType: !252, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1883, file: !37, line: 574, baseType: !252, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1883, file: !37, line: 575, baseType: !252, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1883, file: !37, line: 576, baseType: !252, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1883, file: !37, line: 577, baseType: !583, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !37, line: 578, baseType: !276, offset: 96)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1883, file: !37, line: 580, baseType: !263, size: 128, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1883, file: !37, line: 581, baseType: !885, size: 192, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1883, file: !37, line: 582, baseType: !1901, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1903, line: 43, size: 1472, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1912, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1902, file: !1903, line: 44, baseType: !83, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1902, file: !1903, line: 45, baseType: !95, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1902, file: !1903, line: 46, baseType: !263, size: 128, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1902, file: !1903, line: 47, baseType: !276, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1902, file: !1903, line: 48, baseType: !1910, size: 64, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1902, file: !1903, line: 49, baseType: !1913, size: 320, offset: 320)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1914, line: 11, size: 320, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917, !1918, !1923}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1913, file: !1914, line: 16, baseType: !849, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1913, file: !1914, line: 17, baseType: !113, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1913, file: !1914, line: 18, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1913, file: !1914, line: 19, baseType: !583, size: 32, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1902, file: !1903, line: 50, baseType: !113, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1902, file: !1903, line: 51, baseType: !658, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1902, file: !1903, line: 52, baseType: !658, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1902, file: !1903, line: 53, baseType: !658, size: 64, offset: 832)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1902, file: !1903, line: 54, baseType: !658, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1902, file: !1903, line: 55, baseType: !658, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1902, file: !1903, line: 56, baseType: !113, size: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1902, file: !1903, line: 57, baseType: !113, size: 64, offset: 1088)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1902, file: !1903, line: 58, baseType: !113, size: 64, offset: 1152)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1902, file: !1903, line: 59, baseType: !113, size: 64, offset: 1216)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1902, file: !1903, line: 60, baseType: !113, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1902, file: !1903, line: 61, baseType: !1731, size: 64, offset: 1344)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1902, file: !1903, line: 62, baseType: !252, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1902, file: !1903, line: 63, baseType: !252, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1883, file: !37, line: 583, baseType: !252, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1883, file: !37, line: 584, baseType: !252, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1883, file: !37, line: 585, baseType: !252, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1883, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1883, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1883, file: !37, line: 592, baseType: !650, size: 512, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1883, file: !37, line: 593, baseType: !201, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1883, file: !37, line: 594, baseType: !1471, size: 256, offset: 1152)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1883, file: !37, line: 595, baseType: !856, size: 128, offset: 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1883, file: !37, line: 596, baseType: !1910, size: 64, offset: 1536)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1883, file: !37, line: 597, baseType: !451, size: 32, offset: 1600)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1883, file: !37, line: 598, baseType: !451, size: 32, offset: 1632)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1883, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1883, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1883, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1883, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1883, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1883, file: !37, line: 604, baseType: !252, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1883, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1883, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1883, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1883, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1883, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1883, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1883, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1883, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1883, file: !37, line: 613, baseType: !95, size: 32, offset: 1792)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1883, file: !37, line: 614, baseType: !95, size: 32, offset: 1824)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1883, file: !37, line: 615, baseType: !201, size: 64, offset: 1856)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1883, file: !37, line: 616, baseType: !201, size: 64, offset: 1920)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1883, file: !37, line: 617, baseType: !201, size: 64, offset: 1984)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1883, file: !37, line: 618, baseType: !201, size: 64, offset: 2048)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1883, file: !37, line: 620, baseType: !1971, size: 64, offset: 2112)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1972, file: !37, line: 537, baseType: !276)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1972, file: !37, line: 538, baseType: !7, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1972, file: !37, line: 540, baseType: !263, size: 128, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1972, file: !37, line: 543, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1883, file: !37, line: 621, baseType: !1981, size: 64, offset: 2176)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1731, !809}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1883, file: !37, line: 622, baseType: !1985, size: 64, offset: 2240)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !255, file: !30, line: 486, baseType: !1988, size: 64, offset: 4096)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1997, !1998, !1999}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1989, file: !37, line: 643, baseType: !1759, size: 1472)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1989, file: !37, line: 644, baseType: !1762, size: 64, offset: 1472)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1989, file: !37, line: 645, baseType: !1994, size: 64, offset: 1536)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1731, !252}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1989, file: !37, line: 646, baseType: !1762, size: 64, offset: 1600)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1989, file: !37, line: 647, baseType: !1753, size: 64, offset: 1664)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1989, file: !37, line: 648, baseType: !1753, size: 64, offset: 1728)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !255, file: !30, line: 493, baseType: !2001, size: 64, offset: 4160)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !255, file: !30, line: 499, baseType: !263, size: 128, offset: 4224)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !255, file: !30, line: 502, baseType: !2005, size: 64, offset: 4352)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !255, file: !30, line: 504, baseType: !2009, size: 64, offset: 4416)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !255, file: !30, line: 505, baseType: !201, size: 64, offset: 4480)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !255, file: !30, line: 510, baseType: !201, size: 64, offset: 4544)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !255, file: !30, line: 511, baseType: !2013, size: 64, offset: 4608)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !255, file: !30, line: 513, baseType: !2017, size: 64, offset: 4672)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2018, file: !30, line: 293, baseType: !7, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2018, file: !30, line: 294, baseType: !113, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !255, file: !30, line: 515, baseType: !263, size: 128, offset: 4736)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !255, file: !30, line: 526, baseType: !2024, offset: 4864)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2025, line: 5, elements: !290)
!2025 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !255, file: !30, line: 528, baseType: !2027, size: 64, offset: 4864)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2029, line: 51, size: 1344, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2032, !2034, !2035, !2125, !2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2028, file: !2029, line: 52, baseType: !83, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2028, file: !2029, line: 53, baseType: !2033, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2029, line: 28, baseType: !583)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2028, file: !2029, line: 54, baseType: !83, size: 64, offset: 128)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2028, file: !2029, line: 55, baseType: !2036, size: 192, offset: 192)
!2036 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2037, line: 17, size: 192, elements: !2038)
!2037 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2038 = !{!2039, !2041, !2124}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2036, file: !2037, line: 18, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2036, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2036, file: !2037, line: 19, baseType: !2042, size: 64, offset: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2043, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2044)
!2044 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2037, line: 110, size: 1152, elements: !2045)
!2045 = !{!2046, !2050, !2054, !2060, !2066, !2070, !2074, !2079, !2083, !2084, !2088, !2092, !2096, !2107, !2108, !2109, !2110, !2120}
!2046 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2044, file: !2037, line: 111, baseType: !2047, size: 64)
!2047 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2048, size: 64)
!2048 = !DISubroutineType(types: !2049)
!2049 = !{!2040, !2040}
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2044, file: !2037, line: 112, baseType: !2051, size: 64, offset: 64)
!2051 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2052, size: 64)
!2052 = !DISubroutineType(types: !2053)
!2053 = !{null, !2040}
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2044, file: !2037, line: 113, baseType: !2055, size: 64, offset: 128)
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DISubroutineType(types: !2057)
!2057 = !{!252, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2044, file: !2037, line: 114, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!228, !2058, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !255)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2044, file: !2037, line: 116, baseType: !2067, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!252, !2058, !83}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2044, file: !2037, line: 118, baseType: !2071, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!95, !2058, !83, !7, !63, !363}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2044, file: !2037, line: 123, baseType: !2075, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!95, !2058, !83, !2078, !363}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2044, file: !2037, line: 126, baseType: !2080, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!83, !2058}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2044, file: !2037, line: 127, baseType: !2080, size: 64, offset: 512)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2044, file: !2037, line: 128, baseType: !2085, size: 64, offset: 576)
!2085 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2086, size: 64)
!2086 = !DISubroutineType(types: !2087)
!2087 = !{!2040, !2058}
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2044, file: !2037, line: 130, baseType: !2089, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DISubroutineType(types: !2091)
!2091 = !{!2040, !2058, !2040}
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2044, file: !2037, line: 133, baseType: !2093, size: 64, offset: 704)
!2093 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2094, size: 64)
!2094 = !DISubroutineType(types: !2095)
!2095 = !{!2040, !2058, !83}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2044, file: !2037, line: 135, baseType: !2097, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!95, !2058, !83, !83, !7, !7, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2037, line: 43, size: 640, elements: !2102)
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2101, file: !2037, line: 44, baseType: !2040, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2101, file: !2037, line: 45, baseType: !7, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2101, file: !2037, line: 46, baseType: !2106, size: 512, offset: 128)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !201, size: 512, elements: !688)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2044, file: !2037, line: 140, baseType: !2089, size: 64, offset: 832)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2044, file: !2037, line: 143, baseType: !2085, size: 64, offset: 896)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2044, file: !2037, line: 145, baseType: !2047, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2044, file: !2037, line: 146, baseType: !2111, size: 64, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!95, !2058, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2037, line: 29, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2115, file: !2037, line: 30, baseType: !7, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2115, file: !2037, line: 31, baseType: !7, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2115, file: !2037, line: 32, baseType: !2058, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2044, file: !2037, line: 148, baseType: !2121, size: 64, offset: 1088)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!95, !2058, !1731}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2036, file: !2037, line: 20, baseType: !1731, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2028, file: !2029, line: 57, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2029, line: 31, size: 704, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2127, file: !2029, line: 32, baseType: !317, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2127, file: !2029, line: 33, baseType: !95, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2127, file: !2029, line: 34, baseType: !63, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2127, file: !2029, line: 35, baseType: !2126, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2127, file: !2029, line: 43, baseType: !384, size: 448, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2028, file: !2029, line: 58, baseType: !2126, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2028, file: !2029, line: 59, baseType: !2027, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2028, file: !2029, line: 60, baseType: !2027, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2028, file: !2029, line: 61, baseType: !2027, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2028, file: !2029, line: 63, baseType: !258, size: 512, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2028, file: !2029, line: 65, baseType: !113, size: 64, offset: 1216)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2028, file: !2029, line: 66, baseType: !63, size: 64, offset: 1280)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !255, file: !30, line: 529, baseType: !2040, size: 64, offset: 4928)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !255, file: !30, line: 534, baseType: !2143, size: 32, offset: 4992)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !200, line: 16, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !200, line: 13, baseType: !583)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !255, file: !30, line: 535, baseType: !583, size: 32, offset: 5024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !255, file: !30, line: 537, baseType: !276, offset: 5056)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !255, file: !30, line: 538, baseType: !263, size: 128, offset: 5056)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !255, file: !30, line: 540, baseType: !2149, size: 64, offset: 5184)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2151, line: 54, size: 960, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2163, !2167, !2168, !2169, !2170, !2174, !2178, !2179}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2150, file: !2151, line: 55, baseType: !83, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2150, file: !2151, line: 56, baseType: !208, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2150, file: !2151, line: 58, baseType: !369, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2150, file: !2151, line: 59, baseType: !369, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2150, file: !2151, line: 60, baseType: !269, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2150, file: !2151, line: 62, baseType: !1744, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2150, file: !2151, line: 63, baseType: !2160, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!317, !1731, !1751}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2150, file: !2151, line: 65, baseType: !2164, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2149}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2150, file: !2151, line: 66, baseType: !1753, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2150, file: !2151, line: 68, baseType: !1762, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2150, file: !2151, line: 70, baseType: !1520, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2150, file: !2151, line: 71, baseType: !2171, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!228, !1731}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2150, file: !2151, line: 73, baseType: !2175, size: 64, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !1731, !1555, !1561}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2150, file: !2151, line: 75, baseType: !1757, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2150, file: !2151, line: 77, baseType: !1863, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !255, file: !30, line: 541, baseType: !369, size: 64, offset: 5248)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !255, file: !30, line: 543, baseType: !1753, size: 64, offset: 5312)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !255, file: !30, line: 544, baseType: !2183, size: 64, offset: 5376)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !255, file: !30, line: 545, baseType: !2186, size: 64, offset: 5440)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !255, file: !30, line: 547, baseType: !252, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !255, file: !30, line: 548, baseType: !252, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !255, file: !30, line: 549, baseType: !252, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !255, file: !30, line: 550, baseType: !252, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !247, file: !240, line: 27, baseType: !201, size: 64, offset: 5696)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !247, file: !240, line: 28, baseType: !2018, size: 128, offset: 5760)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !247, file: !240, line: 29, baseType: !583, size: 32, offset: 5888)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !247, file: !240, line: 30, baseType: !2196, size: 64, offset: 5952)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2198, line: 20, size: 512, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !{!2200, !2203, !2204, !2205, !2206, !2207, !2208, !2209}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2197, file: !2198, line: 21, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !200, line: 158, baseType: !2202)
!2202 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !200, line: 153, baseType: !201)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2197, file: !2198, line: 22, baseType: !2201, size: 64, offset: 64)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2197, file: !2198, line: 23, baseType: !83, size: 64, offset: 128)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2197, file: !2198, line: 24, baseType: !113, size: 64, offset: 192)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2197, file: !2198, line: 25, baseType: !113, size: 64, offset: 256)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2197, file: !2198, line: 26, baseType: !2196, size: 64, offset: 320)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2197, file: !2198, line: 26, baseType: !2196, size: 64, offset: 384)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2197, file: !2198, line: 26, baseType: !2196, size: 64, offset: 448)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !247, file: !240, line: 32, baseType: !2211, size: 64, offset: 6016)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2212, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2213)
!2213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !216, line: 586, size: 256, elements: !2214)
!2214 = !{!2215, !2217}
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2213, file: !216, line: 587, baseType: !2216, size: 160)
!2216 = !DICompositeType(tag: DW_TAG_array_type, baseType: !85, size: 160, elements: !1339)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2213, file: !216, line: 588, baseType: !1823, size: 64, offset: 192)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !247, file: !240, line: 33, baseType: !317, size: 64, offset: 6080)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !247, file: !240, line: 36, baseType: !2220, size: 64, offset: 6144)
!2220 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2221, size: 64)
!2221 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !240, line: 18, flags: DIFlagFwdDecl)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !247, file: !240, line: 39, baseType: !2223, offset: 6208)
!2223 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2025, line: 8, elements: !290)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !239, file: !240, line: 202, baseType: !243, size: 64, offset: 64)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !239, file: !240, line: 203, baseType: !2226, size: 64, offset: 128)
!2226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2227, size: 64)
!2227 = !DISubroutineType(types: !2228)
!2228 = !{null, !246}
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !239, file: !240, line: 204, baseType: !2230, size: 64, offset: 192)
!2230 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2231, size: 64)
!2231 = !DISubroutineType(types: !2232)
!2232 = !{!95, !246, !1834}
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !239, file: !240, line: 205, baseType: !243, size: 64, offset: 256)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !239, file: !240, line: 206, baseType: !1803, size: 1152, offset: 320)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !239, file: !240, line: 207, baseType: !2211, size: 64, offset: 1472)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !239, file: !240, line: 208, baseType: !252, size: 8, offset: 1536)
!2237 = !DIGlobalVariableExpression(var: !2238, expr: !DIExpression())
!2238 = distinct !DIGlobalVariable(name: "of_fixed_factor_clk_ids", scope: !2, file: !3, line: 245, type: !234, isLocal: true, isDefinition: true)
!2239 = !{i32 7, !"Dwarf Version", i32 4}
!2240 = !{i32 2, !"Debug Info Version", i32 3}
!2241 = !{i32 1, !"wchar_size", i32 2}
!2242 = !{i32 1, !"Code Model", i32 2}
!2243 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2244 = distinct !DISubprogram(name: "clk_factor_recalc_rate", scope: !3, file: !3, line: 22, type: !111, scopeLine: 24, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2245 = !DILocalVariable(name: "hw", arg: 1, scope: !2244, file: !3, line: 22, type: !96)
!2246 = !DILocation(line: 22, column: 60, scope: !2244)
!2247 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !2244, file: !3, line: 23, type: !113)
!2248 = !DILocation(line: 23, column: 17, scope: !2244)
!2249 = !DILocalVariable(name: "fix", scope: !2244, file: !3, line: 25, type: !64)
!2250 = !DILocation(line: 25, column: 27, scope: !2244)
!2251 = !DILocalVariable(name: "__mptr", scope: !2252, file: !3, line: 25, type: !63)
!2252 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 25, column: 33)
!2253 = !DILocation(line: 25, column: 33, scope: !2252)
!2254 = !DILocation(line: 25, column: 33, scope: !2255)
!2255 = distinct !DILexicalBlock(scope: !2252, file: !3, line: 25, column: 33)
!2256 = !DILocalVariable(name: "rate", scope: !2244, file: !3, line: 26, type: !198)
!2257 = !DILocation(line: 26, column: 25, scope: !2244)
!2258 = !DILocation(line: 28, column: 33, scope: !2244)
!2259 = !DILocation(line: 28, column: 47, scope: !2244)
!2260 = !DILocation(line: 28, column: 52, scope: !2244)
!2261 = !DILocation(line: 28, column: 45, scope: !2244)
!2262 = !DILocation(line: 28, column: 7, scope: !2244)
!2263 = !DILocalVariable(name: "__base", scope: !2264, file: !3, line: 29, type: !2265)
!2264 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 29, column: 2)
!2265 = !DIDerivedType(tag: DW_TAG_typedef, name: "uint32_t", file: !200, line: 104, baseType: !583)
!2266 = !DILocation(line: 29, column: 2, scope: !2264)
!2267 = !DILocalVariable(name: "__rem", scope: !2264, file: !3, line: 29, type: !2265)
!2268 = !DILocation(line: 30, column: 24, scope: !2244)
!2269 = !DILocation(line: 30, column: 2, scope: !2244)
!2270 = distinct !DISubprogram(name: "clk_factor_round_rate", scope: !3, file: !3, line: 33, type: !116, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2271 = !DILocalVariable(name: "hw", arg: 1, scope: !2270, file: !3, line: 33, type: !96)
!2272 = !DILocation(line: 33, column: 50, scope: !2270)
!2273 = !DILocalVariable(name: "rate", arg: 2, scope: !2270, file: !3, line: 33, type: !113)
!2274 = !DILocation(line: 33, column: 68, scope: !2270)
!2275 = !DILocalVariable(name: "prate", arg: 3, scope: !2270, file: !3, line: 34, type: !119)
!2276 = !DILocation(line: 34, column: 20, scope: !2270)
!2277 = !DILocalVariable(name: "fix", scope: !2270, file: !3, line: 36, type: !64)
!2278 = !DILocation(line: 36, column: 27, scope: !2270)
!2279 = !DILocalVariable(name: "__mptr", scope: !2280, file: !3, line: 36, type: !63)
!2280 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 36, column: 33)
!2281 = !DILocation(line: 36, column: 33, scope: !2280)
!2282 = !DILocation(line: 36, column: 33, scope: !2283)
!2283 = distinct !DILexicalBlock(scope: !2280, file: !3, line: 36, column: 33)
!2284 = !DILocation(line: 38, column: 23, scope: !2285)
!2285 = distinct !DILexicalBlock(scope: !2270, file: !3, line: 38, column: 6)
!2286 = !DILocation(line: 38, column: 6, scope: !2285)
!2287 = !DILocation(line: 38, column: 27, scope: !2285)
!2288 = !DILocation(line: 38, column: 6, scope: !2270)
!2289 = !DILocalVariable(name: "best_parent", scope: !2290, file: !3, line: 39, type: !113)
!2290 = distinct !DILexicalBlock(scope: !2285, file: !3, line: 38, column: 50)
!2291 = !DILocation(line: 39, column: 17, scope: !2290)
!2292 = !DILocation(line: 41, column: 18, scope: !2290)
!2293 = !DILocation(line: 41, column: 25, scope: !2290)
!2294 = !DILocation(line: 41, column: 30, scope: !2290)
!2295 = !DILocation(line: 41, column: 23, scope: !2290)
!2296 = !DILocation(line: 41, column: 38, scope: !2290)
!2297 = !DILocation(line: 41, column: 43, scope: !2290)
!2298 = !DILocation(line: 41, column: 36, scope: !2290)
!2299 = !DILocation(line: 41, column: 15, scope: !2290)
!2300 = !DILocation(line: 42, column: 48, scope: !2290)
!2301 = !DILocation(line: 42, column: 30, scope: !2290)
!2302 = !DILocation(line: 42, column: 53, scope: !2290)
!2303 = !DILocation(line: 42, column: 12, scope: !2290)
!2304 = !DILocation(line: 42, column: 4, scope: !2290)
!2305 = !DILocation(line: 42, column: 10, scope: !2290)
!2306 = !DILocation(line: 43, column: 2, scope: !2290)
!2307 = !DILocation(line: 45, column: 11, scope: !2270)
!2308 = !DILocation(line: 45, column: 10, scope: !2270)
!2309 = !DILocation(line: 45, column: 19, scope: !2270)
!2310 = !DILocation(line: 45, column: 24, scope: !2270)
!2311 = !DILocation(line: 45, column: 17, scope: !2270)
!2312 = !DILocation(line: 45, column: 31, scope: !2270)
!2313 = !DILocation(line: 45, column: 36, scope: !2270)
!2314 = !DILocation(line: 45, column: 29, scope: !2270)
!2315 = !DILocation(line: 45, column: 2, scope: !2270)
!2316 = distinct !DISubprogram(name: "clk_factor_set_rate", scope: !3, file: !3, line: 48, type: !147, scopeLine: 50, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2317 = !DILocalVariable(name: "hw", arg: 1, scope: !2316, file: !3, line: 48, type: !96)
!2318 = !DILocation(line: 48, column: 47, scope: !2316)
!2319 = !DILocalVariable(name: "rate", arg: 2, scope: !2316, file: !3, line: 48, type: !113)
!2320 = !DILocation(line: 48, column: 65, scope: !2316)
!2321 = !DILocalVariable(name: "parent_rate", arg: 3, scope: !2316, file: !3, line: 49, type: !113)
!2322 = !DILocation(line: 49, column: 19, scope: !2316)
!2323 = !DILocation(line: 57, column: 2, scope: !2316)
!2324 = distinct !DISubprogram(name: "clk_hw_register_fixed_factor", scope: !3, file: !3, line: 109, type: !2325, scopeLine: 112, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2325 = !DISubroutineType(types: !2326)
!2326 = !{!96, !1731, !83, !83, !113, !7, !7}
!2327 = !DILocalVariable(name: "dev", arg: 1, scope: !2324, file: !3, line: 109, type: !1731)
!2328 = !DILocation(line: 109, column: 60, scope: !2324)
!2329 = !DILocalVariable(name: "name", arg: 2, scope: !2324, file: !3, line: 110, type: !83)
!2330 = !DILocation(line: 110, column: 15, scope: !2324)
!2331 = !DILocalVariable(name: "parent_name", arg: 3, scope: !2324, file: !3, line: 110, type: !83)
!2332 = !DILocation(line: 110, column: 33, scope: !2324)
!2333 = !DILocalVariable(name: "flags", arg: 4, scope: !2324, file: !3, line: 110, type: !113)
!2334 = !DILocation(line: 110, column: 60, scope: !2324)
!2335 = !DILocalVariable(name: "mult", arg: 5, scope: !2324, file: !3, line: 111, type: !7)
!2336 = !DILocation(line: 111, column: 16, scope: !2324)
!2337 = !DILocalVariable(name: "div", arg: 6, scope: !2324, file: !3, line: 111, type: !7)
!2338 = !DILocation(line: 111, column: 35, scope: !2324)
!2339 = !DILocation(line: 113, column: 40, scope: !2324)
!2340 = !DILocation(line: 113, column: 51, scope: !2324)
!2341 = !DILocation(line: 113, column: 57, scope: !2324)
!2342 = !DILocation(line: 114, column: 12, scope: !2324)
!2343 = !DILocation(line: 114, column: 19, scope: !2324)
!2344 = !DILocation(line: 114, column: 25, scope: !2324)
!2345 = !DILocation(line: 113, column: 9, scope: !2324)
!2346 = !DILocation(line: 113, column: 2, scope: !2324)
!2347 = distinct !DISubprogram(name: "__clk_hw_register_fixed_factor", scope: !3, file: !3, line: 68, type: !2348, scopeLine: 71, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2348 = !DISubroutineType(types: !2349)
!2349 = !{!96, !1731, !2027, !83, !83, !95, !113, !7, !7}
!2350 = !DILocalVariable(name: "s", arg: 1, scope: !2351, file: !51, line: 445, type: !1197)
!2351 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !2352, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2352 = !DISubroutineType(types: !2353)
!2353 = !{!63, !1197, !203, !363}
!2354 = !DILocation(line: 445, column: 72, scope: !2351, inlinedAt: !2355)
!2355 = distinct !DILocation(line: 552, column: 10, scope: !2356, inlinedAt: !2361)
!2356 = distinct !DILexicalBlock(scope: !2357, file: !51, line: 540, column: 34)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !51, line: 540, column: 6)
!2358 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !2359, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!63, !363, !203}
!2361 = distinct !DILocation(line: 78, column: 8, scope: !2347)
!2362 = !DILocalVariable(name: "flags", arg: 2, scope: !2351, file: !51, line: 446, type: !203)
!2363 = !DILocation(line: 446, column: 9, scope: !2351, inlinedAt: !2355)
!2364 = !DILocalVariable(name: "size", arg: 3, scope: !2351, file: !51, line: 446, type: !363)
!2365 = !DILocation(line: 446, column: 23, scope: !2351, inlinedAt: !2355)
!2366 = !DILocalVariable(name: "ret", scope: !2351, file: !51, line: 448, type: !63)
!2367 = !DILocation(line: 448, column: 8, scope: !2351, inlinedAt: !2355)
!2368 = !DILocalVariable(name: "flags", arg: 1, scope: !2369, file: !51, line: 318, type: !203)
!2369 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !2370, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2370 = !DISubroutineType(types: !2371)
!2371 = !{!50, !203}
!2372 = !DILocation(line: 318, column: 67, scope: !2369, inlinedAt: !2373)
!2373 = distinct !DILocation(line: 553, column: 20, scope: !2356, inlinedAt: !2361)
!2374 = !DILocalVariable(name: "size", arg: 1, scope: !2375, file: !51, line: 346, type: !363)
!2375 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !2376, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2376 = !DISubroutineType(types: !2377)
!2377 = !{!7, !363}
!2378 = !DILocation(line: 346, column: 58, scope: !2375, inlinedAt: !2379)
!2379 = distinct !DILocation(line: 547, column: 11, scope: !2356, inlinedAt: !2361)
!2380 = !DILocalVariable(name: "size", arg: 1, scope: !2381, file: !51, line: 472, type: !363)
!2381 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !2382, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2382 = !DISubroutineType(types: !2383)
!2383 = !{!63, !363, !203, !7}
!2384 = !DILocation(line: 472, column: 28, scope: !2381, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 481, column: 9, scope: !2386, inlinedAt: !2387)
!2386 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !2359, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2387 = distinct !DILocation(line: 545, column: 11, scope: !2388, inlinedAt: !2361)
!2388 = distinct !DILexicalBlock(scope: !2356, file: !51, line: 544, column: 7)
!2389 = !DILocalVariable(name: "flags", arg: 2, scope: !2381, file: !51, line: 472, type: !203)
!2390 = !DILocation(line: 472, column: 40, scope: !2381, inlinedAt: !2385)
!2391 = !DILocalVariable(name: "order", arg: 3, scope: !2381, file: !51, line: 472, type: !7)
!2392 = !DILocation(line: 472, column: 60, scope: !2381, inlinedAt: !2385)
!2393 = !DILocalVariable(name: "size", arg: 1, scope: !2386, file: !51, line: 478, type: !363)
!2394 = !DILocation(line: 478, column: 51, scope: !2386, inlinedAt: !2387)
!2395 = !DILocalVariable(name: "flags", arg: 2, scope: !2386, file: !51, line: 478, type: !203)
!2396 = !DILocation(line: 478, column: 63, scope: !2386, inlinedAt: !2387)
!2397 = !DILocalVariable(name: "order", scope: !2386, file: !51, line: 480, type: !7)
!2398 = !DILocation(line: 480, column: 15, scope: !2386, inlinedAt: !2387)
!2399 = !DILocalVariable(name: "size", arg: 1, scope: !2358, file: !51, line: 538, type: !363)
!2400 = !DILocation(line: 538, column: 45, scope: !2358, inlinedAt: !2361)
!2401 = !DILocalVariable(name: "flags", arg: 2, scope: !2358, file: !51, line: 538, type: !203)
!2402 = !DILocation(line: 538, column: 57, scope: !2358, inlinedAt: !2361)
!2403 = !DILocalVariable(name: "index", scope: !2356, file: !51, line: 542, type: !7)
!2404 = !DILocation(line: 542, column: 16, scope: !2356, inlinedAt: !2361)
!2405 = !DILocalVariable(name: "dev", arg: 1, scope: !2347, file: !3, line: 68, type: !1731)
!2406 = !DILocation(line: 68, column: 47, scope: !2347)
!2407 = !DILocalVariable(name: "np", arg: 2, scope: !2347, file: !3, line: 68, type: !2027)
!2408 = !DILocation(line: 68, column: 72, scope: !2347)
!2409 = !DILocalVariable(name: "name", arg: 3, scope: !2347, file: !3, line: 69, type: !83)
!2410 = !DILocation(line: 69, column: 15, scope: !2347)
!2411 = !DILocalVariable(name: "parent_name", arg: 4, scope: !2347, file: !3, line: 69, type: !83)
!2412 = !DILocation(line: 69, column: 33, scope: !2347)
!2413 = !DILocalVariable(name: "index", arg: 5, scope: !2347, file: !3, line: 69, type: !95)
!2414 = !DILocation(line: 69, column: 50, scope: !2347)
!2415 = !DILocalVariable(name: "flags", arg: 6, scope: !2347, file: !3, line: 70, type: !113)
!2416 = !DILocation(line: 70, column: 17, scope: !2347)
!2417 = !DILocalVariable(name: "mult", arg: 7, scope: !2347, file: !3, line: 70, type: !7)
!2418 = !DILocation(line: 70, column: 37, scope: !2347)
!2419 = !DILocalVariable(name: "div", arg: 8, scope: !2347, file: !3, line: 70, type: !7)
!2420 = !DILocation(line: 70, column: 56, scope: !2347)
!2421 = !DILocalVariable(name: "fix", scope: !2347, file: !3, line: 72, type: !64)
!2422 = !DILocation(line: 72, column: 27, scope: !2347)
!2423 = !DILocalVariable(name: "init", scope: !2347, file: !3, line: 73, type: !80)
!2424 = !DILocation(line: 73, column: 23, scope: !2347)
!2425 = !DILocalVariable(name: "pdata", scope: !2347, file: !3, line: 74, type: !184)
!2426 = !DILocation(line: 74, column: 25, scope: !2347)
!2427 = !DILocation(line: 74, column: 33, scope: !2347)
!2428 = !DILocation(line: 74, column: 44, scope: !2347)
!2429 = !DILocalVariable(name: "hw", scope: !2347, file: !3, line: 75, type: !96)
!2430 = !DILocation(line: 75, column: 17, scope: !2347)
!2431 = !DILocalVariable(name: "ret", scope: !2347, file: !3, line: 76, type: !95)
!2432 = !DILocation(line: 76, column: 6, scope: !2347)
!2433 = !DILocation(line: 540, column: 27, scope: !2357, inlinedAt: !2361)
!2434 = !DILocation(line: 540, column: 6, scope: !2357, inlinedAt: !2361)
!2435 = !DILocation(line: 540, column: 6, scope: !2358, inlinedAt: !2361)
!2436 = !DILocation(line: 544, column: 7, scope: !2388, inlinedAt: !2361)
!2437 = !DILocation(line: 544, column: 12, scope: !2388, inlinedAt: !2361)
!2438 = !DILocation(line: 544, column: 7, scope: !2356, inlinedAt: !2361)
!2439 = !DILocation(line: 545, column: 25, scope: !2388, inlinedAt: !2361)
!2440 = !DILocation(line: 545, column: 31, scope: !2388, inlinedAt: !2361)
!2441 = !DILocation(line: 480, column: 33, scope: !2386, inlinedAt: !2387)
!2442 = !DILocation(line: 480, column: 23, scope: !2386, inlinedAt: !2387)
!2443 = !DILocation(line: 481, column: 29, scope: !2386, inlinedAt: !2387)
!2444 = !DILocation(line: 481, column: 35, scope: !2386, inlinedAt: !2387)
!2445 = !DILocation(line: 481, column: 42, scope: !2386, inlinedAt: !2387)
!2446 = !DILocation(line: 474, column: 23, scope: !2381, inlinedAt: !2385)
!2447 = !DILocation(line: 474, column: 29, scope: !2381, inlinedAt: !2385)
!2448 = !DILocation(line: 474, column: 36, scope: !2381, inlinedAt: !2385)
!2449 = !DILocation(line: 474, column: 9, scope: !2381, inlinedAt: !2385)
!2450 = !DILocation(line: 545, column: 4, scope: !2388, inlinedAt: !2361)
!2451 = !DILocation(line: 547, column: 25, scope: !2356, inlinedAt: !2361)
!2452 = !DILocation(line: 348, column: 7, scope: !2453, inlinedAt: !2379)
!2453 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 348, column: 6)
!2454 = !DILocation(line: 348, column: 6, scope: !2375, inlinedAt: !2379)
!2455 = !DILocation(line: 349, column: 3, scope: !2453, inlinedAt: !2379)
!2456 = !DILocation(line: 351, column: 6, scope: !2457, inlinedAt: !2379)
!2457 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 351, column: 6)
!2458 = !DILocation(line: 351, column: 11, scope: !2457, inlinedAt: !2379)
!2459 = !DILocation(line: 351, column: 6, scope: !2375, inlinedAt: !2379)
!2460 = !DILocation(line: 352, column: 3, scope: !2457, inlinedAt: !2379)
!2461 = !DILocation(line: 354, column: 32, scope: !2462, inlinedAt: !2379)
!2462 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 354, column: 6)
!2463 = !DILocation(line: 354, column: 37, scope: !2462, inlinedAt: !2379)
!2464 = !DILocation(line: 354, column: 42, scope: !2462, inlinedAt: !2379)
!2465 = !DILocation(line: 354, column: 45, scope: !2462, inlinedAt: !2379)
!2466 = !DILocation(line: 354, column: 50, scope: !2462, inlinedAt: !2379)
!2467 = !DILocation(line: 354, column: 6, scope: !2375, inlinedAt: !2379)
!2468 = !DILocation(line: 355, column: 3, scope: !2462, inlinedAt: !2379)
!2469 = !DILocation(line: 356, column: 32, scope: !2470, inlinedAt: !2379)
!2470 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 356, column: 6)
!2471 = !DILocation(line: 356, column: 37, scope: !2470, inlinedAt: !2379)
!2472 = !DILocation(line: 356, column: 43, scope: !2470, inlinedAt: !2379)
!2473 = !DILocation(line: 356, column: 46, scope: !2470, inlinedAt: !2379)
!2474 = !DILocation(line: 356, column: 51, scope: !2470, inlinedAt: !2379)
!2475 = !DILocation(line: 356, column: 6, scope: !2375, inlinedAt: !2379)
!2476 = !DILocation(line: 357, column: 3, scope: !2470, inlinedAt: !2379)
!2477 = !DILocation(line: 358, column: 6, scope: !2478, inlinedAt: !2379)
!2478 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 358, column: 6)
!2479 = !DILocation(line: 358, column: 11, scope: !2478, inlinedAt: !2379)
!2480 = !DILocation(line: 358, column: 6, scope: !2375, inlinedAt: !2379)
!2481 = !DILocation(line: 358, column: 26, scope: !2478, inlinedAt: !2379)
!2482 = !DILocation(line: 359, column: 6, scope: !2483, inlinedAt: !2379)
!2483 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 359, column: 6)
!2484 = !DILocation(line: 359, column: 11, scope: !2483, inlinedAt: !2379)
!2485 = !DILocation(line: 359, column: 6, scope: !2375, inlinedAt: !2379)
!2486 = !DILocation(line: 359, column: 26, scope: !2483, inlinedAt: !2379)
!2487 = !DILocation(line: 360, column: 6, scope: !2488, inlinedAt: !2379)
!2488 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 360, column: 6)
!2489 = !DILocation(line: 360, column: 11, scope: !2488, inlinedAt: !2379)
!2490 = !DILocation(line: 360, column: 6, scope: !2375, inlinedAt: !2379)
!2491 = !DILocation(line: 360, column: 26, scope: !2488, inlinedAt: !2379)
!2492 = !DILocation(line: 361, column: 6, scope: !2493, inlinedAt: !2379)
!2493 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 361, column: 6)
!2494 = !DILocation(line: 361, column: 11, scope: !2493, inlinedAt: !2379)
!2495 = !DILocation(line: 361, column: 6, scope: !2375, inlinedAt: !2379)
!2496 = !DILocation(line: 361, column: 26, scope: !2493, inlinedAt: !2379)
!2497 = !DILocation(line: 362, column: 6, scope: !2498, inlinedAt: !2379)
!2498 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 362, column: 6)
!2499 = !DILocation(line: 362, column: 11, scope: !2498, inlinedAt: !2379)
!2500 = !DILocation(line: 362, column: 6, scope: !2375, inlinedAt: !2379)
!2501 = !DILocation(line: 362, column: 26, scope: !2498, inlinedAt: !2379)
!2502 = !DILocation(line: 363, column: 6, scope: !2503, inlinedAt: !2379)
!2503 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 363, column: 6)
!2504 = !DILocation(line: 363, column: 11, scope: !2503, inlinedAt: !2379)
!2505 = !DILocation(line: 363, column: 6, scope: !2375, inlinedAt: !2379)
!2506 = !DILocation(line: 363, column: 26, scope: !2503, inlinedAt: !2379)
!2507 = !DILocation(line: 364, column: 6, scope: !2508, inlinedAt: !2379)
!2508 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 364, column: 6)
!2509 = !DILocation(line: 364, column: 11, scope: !2508, inlinedAt: !2379)
!2510 = !DILocation(line: 364, column: 6, scope: !2375, inlinedAt: !2379)
!2511 = !DILocation(line: 364, column: 26, scope: !2508, inlinedAt: !2379)
!2512 = !DILocation(line: 365, column: 6, scope: !2513, inlinedAt: !2379)
!2513 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 365, column: 6)
!2514 = !DILocation(line: 365, column: 11, scope: !2513, inlinedAt: !2379)
!2515 = !DILocation(line: 365, column: 6, scope: !2375, inlinedAt: !2379)
!2516 = !DILocation(line: 365, column: 26, scope: !2513, inlinedAt: !2379)
!2517 = !DILocation(line: 366, column: 6, scope: !2518, inlinedAt: !2379)
!2518 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 366, column: 6)
!2519 = !DILocation(line: 366, column: 11, scope: !2518, inlinedAt: !2379)
!2520 = !DILocation(line: 366, column: 6, scope: !2375, inlinedAt: !2379)
!2521 = !DILocation(line: 366, column: 26, scope: !2518, inlinedAt: !2379)
!2522 = !DILocation(line: 367, column: 6, scope: !2523, inlinedAt: !2379)
!2523 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 367, column: 6)
!2524 = !DILocation(line: 367, column: 11, scope: !2523, inlinedAt: !2379)
!2525 = !DILocation(line: 367, column: 6, scope: !2375, inlinedAt: !2379)
!2526 = !DILocation(line: 367, column: 26, scope: !2523, inlinedAt: !2379)
!2527 = !DILocation(line: 368, column: 6, scope: !2528, inlinedAt: !2379)
!2528 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 368, column: 6)
!2529 = !DILocation(line: 368, column: 11, scope: !2528, inlinedAt: !2379)
!2530 = !DILocation(line: 368, column: 6, scope: !2375, inlinedAt: !2379)
!2531 = !DILocation(line: 368, column: 26, scope: !2528, inlinedAt: !2379)
!2532 = !DILocation(line: 369, column: 6, scope: !2533, inlinedAt: !2379)
!2533 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 369, column: 6)
!2534 = !DILocation(line: 369, column: 11, scope: !2533, inlinedAt: !2379)
!2535 = !DILocation(line: 369, column: 6, scope: !2375, inlinedAt: !2379)
!2536 = !DILocation(line: 369, column: 26, scope: !2533, inlinedAt: !2379)
!2537 = !DILocation(line: 370, column: 6, scope: !2538, inlinedAt: !2379)
!2538 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 370, column: 6)
!2539 = !DILocation(line: 370, column: 11, scope: !2538, inlinedAt: !2379)
!2540 = !DILocation(line: 370, column: 6, scope: !2375, inlinedAt: !2379)
!2541 = !DILocation(line: 370, column: 26, scope: !2538, inlinedAt: !2379)
!2542 = !DILocation(line: 371, column: 6, scope: !2543, inlinedAt: !2379)
!2543 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 371, column: 6)
!2544 = !DILocation(line: 371, column: 11, scope: !2543, inlinedAt: !2379)
!2545 = !DILocation(line: 371, column: 6, scope: !2375, inlinedAt: !2379)
!2546 = !DILocation(line: 371, column: 26, scope: !2543, inlinedAt: !2379)
!2547 = !DILocation(line: 372, column: 6, scope: !2548, inlinedAt: !2379)
!2548 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 372, column: 6)
!2549 = !DILocation(line: 372, column: 11, scope: !2548, inlinedAt: !2379)
!2550 = !DILocation(line: 372, column: 6, scope: !2375, inlinedAt: !2379)
!2551 = !DILocation(line: 372, column: 26, scope: !2548, inlinedAt: !2379)
!2552 = !DILocation(line: 373, column: 6, scope: !2553, inlinedAt: !2379)
!2553 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 373, column: 6)
!2554 = !DILocation(line: 373, column: 11, scope: !2553, inlinedAt: !2379)
!2555 = !DILocation(line: 373, column: 6, scope: !2375, inlinedAt: !2379)
!2556 = !DILocation(line: 373, column: 26, scope: !2553, inlinedAt: !2379)
!2557 = !DILocation(line: 374, column: 6, scope: !2558, inlinedAt: !2379)
!2558 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 374, column: 6)
!2559 = !DILocation(line: 374, column: 11, scope: !2558, inlinedAt: !2379)
!2560 = !DILocation(line: 374, column: 6, scope: !2375, inlinedAt: !2379)
!2561 = !DILocation(line: 374, column: 26, scope: !2558, inlinedAt: !2379)
!2562 = !DILocation(line: 375, column: 6, scope: !2563, inlinedAt: !2379)
!2563 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 375, column: 6)
!2564 = !DILocation(line: 375, column: 11, scope: !2563, inlinedAt: !2379)
!2565 = !DILocation(line: 375, column: 6, scope: !2375, inlinedAt: !2379)
!2566 = !DILocation(line: 375, column: 27, scope: !2563, inlinedAt: !2379)
!2567 = !DILocation(line: 376, column: 6, scope: !2568, inlinedAt: !2379)
!2568 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 376, column: 6)
!2569 = !DILocation(line: 376, column: 11, scope: !2568, inlinedAt: !2379)
!2570 = !DILocation(line: 376, column: 6, scope: !2375, inlinedAt: !2379)
!2571 = !DILocation(line: 376, column: 32, scope: !2568, inlinedAt: !2379)
!2572 = !DILocation(line: 377, column: 6, scope: !2573, inlinedAt: !2379)
!2573 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 377, column: 6)
!2574 = !DILocation(line: 377, column: 11, scope: !2573, inlinedAt: !2379)
!2575 = !DILocation(line: 377, column: 6, scope: !2375, inlinedAt: !2379)
!2576 = !DILocation(line: 377, column: 32, scope: !2573, inlinedAt: !2379)
!2577 = !DILocation(line: 378, column: 6, scope: !2578, inlinedAt: !2379)
!2578 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 378, column: 6)
!2579 = !DILocation(line: 378, column: 11, scope: !2578, inlinedAt: !2379)
!2580 = !DILocation(line: 378, column: 6, scope: !2375, inlinedAt: !2379)
!2581 = !DILocation(line: 378, column: 32, scope: !2578, inlinedAt: !2379)
!2582 = !DILocation(line: 379, column: 6, scope: !2583, inlinedAt: !2379)
!2583 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 379, column: 6)
!2584 = !DILocation(line: 379, column: 11, scope: !2583, inlinedAt: !2379)
!2585 = !DILocation(line: 379, column: 6, scope: !2375, inlinedAt: !2379)
!2586 = !DILocation(line: 379, column: 33, scope: !2583, inlinedAt: !2379)
!2587 = !DILocation(line: 380, column: 6, scope: !2588, inlinedAt: !2379)
!2588 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 380, column: 6)
!2589 = !DILocation(line: 380, column: 11, scope: !2588, inlinedAt: !2379)
!2590 = !DILocation(line: 380, column: 6, scope: !2375, inlinedAt: !2379)
!2591 = !DILocation(line: 380, column: 33, scope: !2588, inlinedAt: !2379)
!2592 = !DILocation(line: 381, column: 6, scope: !2593, inlinedAt: !2379)
!2593 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 381, column: 6)
!2594 = !DILocation(line: 381, column: 11, scope: !2593, inlinedAt: !2379)
!2595 = !DILocation(line: 381, column: 6, scope: !2375, inlinedAt: !2379)
!2596 = !DILocation(line: 381, column: 33, scope: !2593, inlinedAt: !2379)
!2597 = !DILocation(line: 382, column: 2, scope: !2598, inlinedAt: !2379)
!2598 = distinct !DILexicalBlock(scope: !2599, file: !51, line: 382, column: 2)
!2599 = distinct !DILexicalBlock(scope: !2375, file: !51, line: 382, column: 2)
!2600 = !{i32 -2144077468, i32 -2144077439, i32 -2144077393, i32 -2144077335, i32 -2144077281, i32 -2144077227, i32 -2144077172, i32 -2144077141}
!2601 = !DILocation(line: 382, column: 2, scope: !2602, inlinedAt: !2379)
!2602 = distinct !DILexicalBlock(scope: !2603, file: !51, line: 382, column: 2)
!2603 = distinct !DILexicalBlock(scope: !2599, file: !51, line: 382, column: 2)
!2604 = !{i32 -2144076698, i32 -2144076691, i32 -2144076637, i32 -2144076606, i32 -2144076576}
!2605 = !DILocation(line: 382, column: 2, scope: !2603, inlinedAt: !2379)
!2606 = !DILocation(line: 386, column: 1, scope: !2375, inlinedAt: !2379)
!2607 = !DILocation(line: 547, column: 9, scope: !2356, inlinedAt: !2361)
!2608 = !DILocation(line: 549, column: 8, scope: !2609, inlinedAt: !2361)
!2609 = distinct !DILexicalBlock(scope: !2356, file: !51, line: 549, column: 7)
!2610 = !DILocation(line: 549, column: 7, scope: !2356, inlinedAt: !2361)
!2611 = !DILocation(line: 550, column: 4, scope: !2609, inlinedAt: !2361)
!2612 = !DILocation(line: 553, column: 33, scope: !2356, inlinedAt: !2361)
!2613 = !DILocation(line: 325, column: 6, scope: !2614, inlinedAt: !2373)
!2614 = distinct !DILexicalBlock(scope: !2369, file: !51, line: 325, column: 6)
!2615 = !DILocation(line: 325, column: 6, scope: !2369, inlinedAt: !2373)
!2616 = !DILocation(line: 326, column: 3, scope: !2614, inlinedAt: !2373)
!2617 = !DILocation(line: 332, column: 9, scope: !2369, inlinedAt: !2373)
!2618 = !DILocation(line: 332, column: 15, scope: !2369, inlinedAt: !2373)
!2619 = !DILocation(line: 332, column: 2, scope: !2369, inlinedAt: !2373)
!2620 = !DILocation(line: 336, column: 1, scope: !2369, inlinedAt: !2373)
!2621 = !DILocation(line: 553, column: 5, scope: !2356, inlinedAt: !2361)
!2622 = !DILocation(line: 553, column: 41, scope: !2356, inlinedAt: !2361)
!2623 = !DILocation(line: 554, column: 5, scope: !2356, inlinedAt: !2361)
!2624 = !DILocation(line: 554, column: 12, scope: !2356, inlinedAt: !2361)
!2625 = !DILocation(line: 448, column: 31, scope: !2351, inlinedAt: !2355)
!2626 = !DILocation(line: 448, column: 34, scope: !2351, inlinedAt: !2355)
!2627 = !DILocation(line: 448, column: 14, scope: !2351, inlinedAt: !2355)
!2628 = !DILocation(line: 450, column: 22, scope: !2351, inlinedAt: !2355)
!2629 = !DILocation(line: 450, column: 25, scope: !2351, inlinedAt: !2355)
!2630 = !DILocation(line: 450, column: 30, scope: !2351, inlinedAt: !2355)
!2631 = !DILocation(line: 450, column: 36, scope: !2351, inlinedAt: !2355)
!2632 = !DILocation(line: 450, column: 8, scope: !2351, inlinedAt: !2355)
!2633 = !DILocation(line: 450, column: 6, scope: !2351, inlinedAt: !2355)
!2634 = !DILocation(line: 451, column: 9, scope: !2351, inlinedAt: !2355)
!2635 = !DILocation(line: 552, column: 3, scope: !2356, inlinedAt: !2361)
!2636 = !DILocation(line: 557, column: 19, scope: !2358, inlinedAt: !2361)
!2637 = !DILocation(line: 557, column: 25, scope: !2358, inlinedAt: !2361)
!2638 = !DILocation(line: 557, column: 9, scope: !2358, inlinedAt: !2361)
!2639 = !DILocation(line: 557, column: 2, scope: !2358, inlinedAt: !2361)
!2640 = !DILocation(line: 558, column: 1, scope: !2358, inlinedAt: !2361)
!2641 = !DILocation(line: 78, column: 8, scope: !2347)
!2642 = !DILocation(line: 78, column: 6, scope: !2347)
!2643 = !DILocation(line: 79, column: 7, scope: !2644)
!2644 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 79, column: 6)
!2645 = !DILocation(line: 79, column: 6, scope: !2347)
!2646 = !DILocation(line: 80, column: 10, scope: !2644)
!2647 = !DILocation(line: 80, column: 3, scope: !2644)
!2648 = !DILocation(line: 83, column: 14, scope: !2347)
!2649 = !DILocation(line: 83, column: 2, scope: !2347)
!2650 = !DILocation(line: 83, column: 7, scope: !2347)
!2651 = !DILocation(line: 83, column: 12, scope: !2347)
!2652 = !DILocation(line: 84, column: 13, scope: !2347)
!2653 = !DILocation(line: 84, column: 2, scope: !2347)
!2654 = !DILocation(line: 84, column: 7, scope: !2347)
!2655 = !DILocation(line: 84, column: 11, scope: !2347)
!2656 = !DILocation(line: 85, column: 2, scope: !2347)
!2657 = !DILocation(line: 85, column: 7, scope: !2347)
!2658 = !DILocation(line: 85, column: 10, scope: !2347)
!2659 = !DILocation(line: 85, column: 15, scope: !2347)
!2660 = !DILocation(line: 87, column: 14, scope: !2347)
!2661 = !DILocation(line: 87, column: 7, scope: !2347)
!2662 = !DILocation(line: 87, column: 12, scope: !2347)
!2663 = !DILocation(line: 88, column: 7, scope: !2347)
!2664 = !DILocation(line: 88, column: 11, scope: !2347)
!2665 = !DILocation(line: 89, column: 15, scope: !2347)
!2666 = !DILocation(line: 89, column: 7, scope: !2347)
!2667 = !DILocation(line: 89, column: 13, scope: !2347)
!2668 = !DILocation(line: 90, column: 6, scope: !2669)
!2669 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 90, column: 6)
!2670 = !DILocation(line: 90, column: 6, scope: !2347)
!2671 = !DILocation(line: 91, column: 8, scope: !2669)
!2672 = !DILocation(line: 91, column: 21, scope: !2669)
!2673 = !DILocation(line: 91, column: 3, scope: !2669)
!2674 = !DILocation(line: 93, column: 8, scope: !2669)
!2675 = !DILocation(line: 93, column: 20, scope: !2669)
!2676 = !DILocation(line: 94, column: 7, scope: !2347)
!2677 = !DILocation(line: 94, column: 19, scope: !2347)
!2678 = !DILocation(line: 96, column: 8, scope: !2347)
!2679 = !DILocation(line: 96, column: 13, scope: !2347)
!2680 = !DILocation(line: 96, column: 5, scope: !2347)
!2681 = !DILocation(line: 97, column: 6, scope: !2682)
!2682 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 97, column: 6)
!2683 = !DILocation(line: 97, column: 6, scope: !2347)
!2684 = !DILocation(line: 98, column: 25, scope: !2682)
!2685 = !DILocation(line: 98, column: 30, scope: !2682)
!2686 = !DILocation(line: 98, column: 9, scope: !2682)
!2687 = !DILocation(line: 98, column: 7, scope: !2682)
!2688 = !DILocation(line: 98, column: 3, scope: !2682)
!2689 = !DILocation(line: 100, column: 28, scope: !2682)
!2690 = !DILocation(line: 100, column: 32, scope: !2682)
!2691 = !DILocation(line: 100, column: 9, scope: !2682)
!2692 = !DILocation(line: 100, column: 7, scope: !2682)
!2693 = !DILocation(line: 101, column: 6, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2347, file: !3, line: 101, column: 6)
!2695 = !DILocation(line: 101, column: 6, scope: !2347)
!2696 = !DILocation(line: 102, column: 9, scope: !2697)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 101, column: 11)
!2698 = !DILocation(line: 102, column: 3, scope: !2697)
!2699 = !DILocation(line: 103, column: 16, scope: !2697)
!2700 = !DILocation(line: 103, column: 8, scope: !2697)
!2701 = !DILocation(line: 103, column: 6, scope: !2697)
!2702 = !DILocation(line: 104, column: 2, scope: !2697)
!2703 = !DILocation(line: 106, column: 9, scope: !2347)
!2704 = !DILocation(line: 106, column: 2, scope: !2347)
!2705 = !DILocation(line: 107, column: 1, scope: !2347)
!2706 = distinct !DISubprogram(name: "clk_register_fixed_factor", scope: !3, file: !3, line: 118, type: !2707, scopeLine: 121, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2707 = !DISubroutineType(types: !2708)
!2708 = !{!75, !1731, !83, !83, !113, !7, !7}
!2709 = !DILocalVariable(name: "dev", arg: 1, scope: !2706, file: !3, line: 118, type: !1731)
!2710 = !DILocation(line: 118, column: 54, scope: !2706)
!2711 = !DILocalVariable(name: "name", arg: 2, scope: !2706, file: !3, line: 118, type: !83)
!2712 = !DILocation(line: 118, column: 71, scope: !2706)
!2713 = !DILocalVariable(name: "parent_name", arg: 3, scope: !2706, file: !3, line: 119, type: !83)
!2714 = !DILocation(line: 119, column: 15, scope: !2706)
!2715 = !DILocalVariable(name: "flags", arg: 4, scope: !2706, file: !3, line: 119, type: !113)
!2716 = !DILocation(line: 119, column: 42, scope: !2706)
!2717 = !DILocalVariable(name: "mult", arg: 5, scope: !2706, file: !3, line: 120, type: !7)
!2718 = !DILocation(line: 120, column: 16, scope: !2706)
!2719 = !DILocalVariable(name: "div", arg: 6, scope: !2706, file: !3, line: 120, type: !7)
!2720 = !DILocation(line: 120, column: 35, scope: !2706)
!2721 = !DILocalVariable(name: "hw", scope: !2706, file: !3, line: 122, type: !96)
!2722 = !DILocation(line: 122, column: 17, scope: !2706)
!2723 = !DILocation(line: 124, column: 36, scope: !2706)
!2724 = !DILocation(line: 124, column: 41, scope: !2706)
!2725 = !DILocation(line: 124, column: 47, scope: !2706)
!2726 = !DILocation(line: 124, column: 60, scope: !2706)
!2727 = !DILocation(line: 124, column: 67, scope: !2706)
!2728 = !DILocation(line: 125, column: 8, scope: !2706)
!2729 = !DILocation(line: 124, column: 7, scope: !2706)
!2730 = !DILocation(line: 124, column: 5, scope: !2706)
!2731 = !DILocation(line: 126, column: 13, scope: !2732)
!2732 = distinct !DILexicalBlock(scope: !2706, file: !3, line: 126, column: 6)
!2733 = !DILocation(line: 126, column: 6, scope: !2732)
!2734 = !DILocation(line: 126, column: 6, scope: !2706)
!2735 = !DILocation(line: 127, column: 19, scope: !2732)
!2736 = !DILocation(line: 127, column: 10, scope: !2732)
!2737 = !DILocation(line: 127, column: 3, scope: !2732)
!2738 = !DILocation(line: 128, column: 9, scope: !2706)
!2739 = !DILocation(line: 128, column: 13, scope: !2706)
!2740 = !DILocation(line: 128, column: 2, scope: !2706)
!2741 = !DILocation(line: 129, column: 1, scope: !2706)
!2742 = distinct !DISubprogram(name: "IS_ERR", scope: !2743, file: !2743, line: 34, type: !2744, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2743 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2744 = !DISubroutineType(types: !2745)
!2745 = !{!252, !228}
!2746 = !DILocalVariable(name: "ptr", arg: 1, scope: !2742, file: !2743, line: 34, type: !228)
!2747 = !DILocation(line: 34, column: 60, scope: !2742)
!2748 = !DILocation(line: 36, column: 9, scope: !2742)
!2749 = !DILocation(line: 36, column: 2, scope: !2742)
!2750 = distinct !DISubprogram(name: "ERR_CAST", scope: !2743, file: !2743, line: 51, type: !2751, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2751 = !DISubroutineType(types: !2752)
!2752 = !{!63, !228}
!2753 = !DILocalVariable(name: "ptr", arg: 1, scope: !2750, file: !2743, line: 51, type: !228)
!2754 = !DILocation(line: 51, column: 64, scope: !2750)
!2755 = !DILocation(line: 54, column: 18, scope: !2750)
!2756 = !DILocation(line: 54, column: 2, scope: !2750)
!2757 = distinct !DISubprogram(name: "clk_unregister_fixed_factor", scope: !3, file: !3, line: 132, type: !2758, scopeLine: 133, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2758 = !DISubroutineType(types: !2759)
!2759 = !{null, !75}
!2760 = !DILocalVariable(name: "clk", arg: 1, scope: !2757, file: !3, line: 132, type: !75)
!2761 = !DILocation(line: 132, column: 46, scope: !2757)
!2762 = !DILocalVariable(name: "hw", scope: !2757, file: !3, line: 134, type: !96)
!2763 = !DILocation(line: 134, column: 17, scope: !2757)
!2764 = !DILocation(line: 136, column: 20, scope: !2757)
!2765 = !DILocation(line: 136, column: 7, scope: !2757)
!2766 = !DILocation(line: 136, column: 5, scope: !2757)
!2767 = !DILocation(line: 137, column: 7, scope: !2768)
!2768 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 137, column: 6)
!2769 = !DILocation(line: 137, column: 6, scope: !2757)
!2770 = !DILocation(line: 138, column: 3, scope: !2768)
!2771 = !DILocation(line: 140, column: 17, scope: !2757)
!2772 = !DILocation(line: 140, column: 2, scope: !2757)
!2773 = !DILocalVariable(name: "__mptr", scope: !2774, file: !3, line: 141, type: !63)
!2774 = distinct !DILexicalBlock(scope: !2757, file: !3, line: 141, column: 8)
!2775 = !DILocation(line: 141, column: 8, scope: !2774)
!2776 = !DILocation(line: 141, column: 8, scope: !2777)
!2777 = distinct !DILexicalBlock(scope: !2774, file: !3, line: 141, column: 8)
!2778 = !DILocation(line: 141, column: 8, scope: !2757)
!2779 = !DILocation(line: 141, column: 2, scope: !2757)
!2780 = !DILocation(line: 142, column: 1, scope: !2757)
!2781 = distinct !DISubprogram(name: "clk_hw_unregister_fixed_factor", scope: !3, file: !3, line: 145, type: !99, scopeLine: 146, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2782 = !DILocalVariable(name: "hw", arg: 1, scope: !2781, file: !3, line: 145, type: !96)
!2783 = !DILocation(line: 145, column: 52, scope: !2781)
!2784 = !DILocalVariable(name: "fix", scope: !2781, file: !3, line: 147, type: !64)
!2785 = !DILocation(line: 147, column: 27, scope: !2781)
!2786 = !DILocalVariable(name: "__mptr", scope: !2787, file: !3, line: 149, type: !63)
!2787 = distinct !DILexicalBlock(scope: !2781, file: !3, line: 149, column: 8)
!2788 = !DILocation(line: 149, column: 8, scope: !2787)
!2789 = !DILocation(line: 149, column: 8, scope: !2790)
!2790 = distinct !DILexicalBlock(scope: !2787, file: !3, line: 149, column: 8)
!2791 = !DILocation(line: 149, column: 6, scope: !2781)
!2792 = !DILocation(line: 151, column: 20, scope: !2781)
!2793 = !DILocation(line: 151, column: 2, scope: !2781)
!2794 = !DILocation(line: 152, column: 8, scope: !2781)
!2795 = !DILocation(line: 152, column: 2, scope: !2781)
!2796 = !DILocation(line: 153, column: 1, scope: !2781)
!2797 = distinct !DISubprogram(name: "of_fixed_factor_clk_setup", scope: !3, file: !3, line: 211, type: !2798, scopeLine: 212, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2798 = !DISubroutineType(types: !2799)
!2799 = !{null, !2027}
!2800 = !DILocalVariable(name: "node", arg: 1, scope: !2797, file: !3, line: 211, type: !2027)
!2801 = !DILocation(line: 211, column: 59, scope: !2797)
!2802 = !DILocation(line: 213, column: 29, scope: !2797)
!2803 = !DILocation(line: 213, column: 2, scope: !2797)
!2804 = !DILocation(line: 214, column: 1, scope: !2797)
!2805 = distinct !DISubprogram(name: "_of_fixed_factor_clk_setup", scope: !3, file: !3, line: 162, type: !2806, scopeLine: 163, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2806 = !DISubroutineType(types: !2807)
!2807 = !{!96, !2027}
!2808 = !DILocalVariable(name: "node", arg: 1, scope: !2805, file: !3, line: 162, type: !2027)
!2809 = !DILocation(line: 162, column: 70, scope: !2805)
!2810 = !DILocalVariable(name: "hw", scope: !2805, file: !3, line: 164, type: !96)
!2811 = !DILocation(line: 164, column: 17, scope: !2805)
!2812 = !DILocalVariable(name: "clk_name", scope: !2805, file: !3, line: 165, type: !83)
!2813 = !DILocation(line: 165, column: 14, scope: !2805)
!2814 = !DILocation(line: 165, column: 25, scope: !2805)
!2815 = !DILocation(line: 165, column: 31, scope: !2805)
!2816 = !DILocalVariable(name: "flags", scope: !2805, file: !3, line: 166, type: !113)
!2817 = !DILocation(line: 166, column: 16, scope: !2805)
!2818 = !DILocalVariable(name: "div", scope: !2805, file: !3, line: 167, type: !583)
!2819 = !DILocation(line: 167, column: 6, scope: !2805)
!2820 = !DILocalVariable(name: "mult", scope: !2805, file: !3, line: 167, type: !583)
!2821 = !DILocation(line: 167, column: 11, scope: !2805)
!2822 = !DILocalVariable(name: "ret", scope: !2805, file: !3, line: 168, type: !95)
!2823 = !DILocation(line: 168, column: 6, scope: !2805)
!2824 = !DILocation(line: 170, column: 27, scope: !2825)
!2825 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 170, column: 6)
!2826 = !DILocation(line: 170, column: 6, scope: !2825)
!2827 = !DILocation(line: 170, column: 6, scope: !2805)
!2828 = !DILocation(line: 171, column: 3, scope: !2829)
!2829 = distinct !DILexicalBlock(scope: !2825, file: !3, line: 170, column: 53)
!2830 = !DILocation(line: 173, column: 10, scope: !2829)
!2831 = !DILocation(line: 173, column: 3, scope: !2829)
!2832 = !DILocation(line: 176, column: 27, scope: !2833)
!2833 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 176, column: 6)
!2834 = !DILocation(line: 176, column: 6, scope: !2833)
!2835 = !DILocation(line: 176, column: 6, scope: !2805)
!2836 = !DILocation(line: 177, column: 3, scope: !2837)
!2837 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 176, column: 55)
!2838 = !DILocation(line: 179, column: 10, scope: !2837)
!2839 = !DILocation(line: 179, column: 3, scope: !2837)
!2840 = !DILocation(line: 182, column: 26, scope: !2805)
!2841 = !DILocation(line: 182, column: 2, scope: !2805)
!2842 = !DILocation(line: 184, column: 45, scope: !2843)
!2843 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 184, column: 6)
!2844 = !DILocation(line: 184, column: 6, scope: !2843)
!2845 = !DILocation(line: 184, column: 6, scope: !2805)
!2846 = !DILocation(line: 185, column: 9, scope: !2843)
!2847 = !DILocation(line: 185, column: 3, scope: !2843)
!2848 = !DILocation(line: 187, column: 44, scope: !2805)
!2849 = !DILocation(line: 187, column: 50, scope: !2805)
!2850 = !DILocation(line: 188, column: 10, scope: !2805)
!2851 = !DILocation(line: 188, column: 17, scope: !2805)
!2852 = !DILocation(line: 188, column: 23, scope: !2805)
!2853 = !DILocation(line: 187, column: 7, scope: !2805)
!2854 = !DILocation(line: 187, column: 5, scope: !2805)
!2855 = !DILocation(line: 189, column: 13, scope: !2856)
!2856 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 189, column: 6)
!2857 = !DILocation(line: 189, column: 6, scope: !2856)
!2858 = !DILocation(line: 189, column: 6, scope: !2805)
!2859 = !DILocation(line: 194, column: 22, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2856, file: !3, line: 189, column: 18)
!2861 = !DILocation(line: 194, column: 3, scope: !2860)
!2862 = !DILocation(line: 195, column: 19, scope: !2860)
!2863 = !DILocation(line: 195, column: 10, scope: !2860)
!2864 = !DILocation(line: 195, column: 3, scope: !2860)
!2865 = !DILocation(line: 198, column: 31, scope: !2805)
!2866 = !DILocation(line: 198, column: 59, scope: !2805)
!2867 = !DILocation(line: 198, column: 8, scope: !2805)
!2868 = !DILocation(line: 198, column: 6, scope: !2805)
!2869 = !DILocation(line: 199, column: 6, scope: !2870)
!2870 = distinct !DILexicalBlock(scope: !2805, file: !3, line: 199, column: 6)
!2871 = !DILocation(line: 199, column: 6, scope: !2805)
!2872 = !DILocation(line: 200, column: 34, scope: !2873)
!2873 = distinct !DILexicalBlock(scope: !2870, file: !3, line: 199, column: 11)
!2874 = !DILocation(line: 200, column: 3, scope: !2873)
!2875 = !DILocation(line: 201, column: 18, scope: !2873)
!2876 = !DILocation(line: 201, column: 10, scope: !2873)
!2877 = !DILocation(line: 201, column: 3, scope: !2873)
!2878 = !DILocation(line: 204, column: 9, scope: !2805)
!2879 = !DILocation(line: 204, column: 2, scope: !2805)
!2880 = !DILocation(line: 205, column: 1, scope: !2805)
!2881 = distinct !DISubprogram(name: "of_fixed_factor_clk_driver_init", scope: !3, file: !3, line: 259, type: !2882, scopeLine: 259, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2882 = !DISubroutineType(types: !2883)
!2883 = !{!95}
!2884 = !DILocation(line: 259, column: 1, scope: !2881)
!2885 = distinct !DISubprogram(name: "ERR_PTR", scope: !2743, file: !2743, line: 24, type: !2886, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2886 = !DISubroutineType(types: !2887)
!2887 = !{!63, !118}
!2888 = !DILocalVariable(name: "error", arg: 1, scope: !2885, file: !2743, line: 24, type: !118)
!2889 = !DILocation(line: 24, column: 48, scope: !2885)
!2890 = !DILocation(line: 26, column: 18, scope: !2885)
!2891 = !DILocation(line: 26, column: 9, scope: !2885)
!2892 = !DILocation(line: 26, column: 2, scope: !2885)
!2893 = distinct !DISubprogram(name: "get_order", scope: !2894, file: !2894, line: 29, type: !2895, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2894 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2895 = !DISubroutineType(types: !2896)
!2896 = !{!95, !113}
!2897 = !DILocalVariable(name: "x", arg: 1, scope: !2898, file: !2899, line: 366, type: !202)
!2898 = distinct !DISubprogram(name: "fls64", scope: !2899, file: !2899, line: 366, type: !2900, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2899 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!95, !202}
!2902 = !DILocation(line: 366, column: 40, scope: !2898, inlinedAt: !2903)
!2903 = distinct !DILocation(line: 46, column: 9, scope: !2893)
!2904 = !DILocalVariable(name: "bitpos", scope: !2898, file: !2899, line: 368, type: !95)
!2905 = !DILocation(line: 368, column: 6, scope: !2898, inlinedAt: !2903)
!2906 = !DILocalVariable(name: "size", arg: 1, scope: !2893, file: !2894, line: 29, type: !113)
!2907 = !DILocation(line: 29, column: 63, scope: !2893)
!2908 = !DILocation(line: 31, column: 27, scope: !2909)
!2909 = distinct !DILexicalBlock(scope: !2893, file: !2894, line: 31, column: 6)
!2910 = !DILocation(line: 31, column: 6, scope: !2909)
!2911 = !DILocation(line: 31, column: 6, scope: !2893)
!2912 = !DILocation(line: 32, column: 8, scope: !2913)
!2913 = distinct !DILexicalBlock(scope: !2914, file: !2894, line: 32, column: 7)
!2914 = distinct !DILexicalBlock(scope: !2909, file: !2894, line: 31, column: 34)
!2915 = !DILocation(line: 32, column: 7, scope: !2914)
!2916 = !DILocation(line: 33, column: 4, scope: !2913)
!2917 = !DILocation(line: 35, column: 7, scope: !2918)
!2918 = distinct !DILexicalBlock(scope: !2914, file: !2894, line: 35, column: 7)
!2919 = !DILocation(line: 35, column: 12, scope: !2918)
!2920 = !DILocation(line: 35, column: 7, scope: !2914)
!2921 = !DILocation(line: 36, column: 4, scope: !2918)
!2922 = !DILocation(line: 38, column: 10, scope: !2914)
!2923 = !DILocation(line: 38, column: 28, scope: !2914)
!2924 = !DILocation(line: 38, column: 41, scope: !2914)
!2925 = !DILocation(line: 38, column: 3, scope: !2914)
!2926 = !DILocation(line: 41, column: 6, scope: !2893)
!2927 = !DILocation(line: 42, column: 7, scope: !2893)
!2928 = !DILocation(line: 46, column: 15, scope: !2893)
!2929 = !DILocation(line: 374, column: 2, scope: !2898, inlinedAt: !2903)
!2930 = !DILocation(line: 376, column: 14, scope: !2898, inlinedAt: !2903)
!2931 = !{i32 303049}
!2932 = !DILocation(line: 377, column: 9, scope: !2898, inlinedAt: !2903)
!2933 = !DILocation(line: 377, column: 16, scope: !2898, inlinedAt: !2903)
!2934 = !DILocation(line: 46, column: 2, scope: !2893)
!2935 = !DILocation(line: 48, column: 1, scope: !2893)
!2936 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2937, file: !2937, line: 30, type: !2938, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2937 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2938 = !DISubroutineType(types: !2939)
!2939 = !{!95, !201}
!2940 = !DILocation(line: 366, column: 40, scope: !2898, inlinedAt: !2941)
!2941 = distinct !DILocation(line: 32, column: 9, scope: !2936)
!2942 = !DILocation(line: 368, column: 6, scope: !2898, inlinedAt: !2941)
!2943 = !DILocalVariable(name: "n", arg: 1, scope: !2936, file: !2937, line: 30, type: !201)
!2944 = !DILocation(line: 30, column: 21, scope: !2936)
!2945 = !DILocation(line: 32, column: 15, scope: !2936)
!2946 = !DILocation(line: 374, column: 2, scope: !2898, inlinedAt: !2941)
!2947 = !DILocation(line: 376, column: 14, scope: !2898, inlinedAt: !2941)
!2948 = !DILocation(line: 377, column: 9, scope: !2898, inlinedAt: !2941)
!2949 = !DILocation(line: 377, column: 16, scope: !2898, inlinedAt: !2941)
!2950 = !DILocation(line: 32, column: 18, scope: !2936)
!2951 = !DILocation(line: 32, column: 2, scope: !2936)
!2952 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !1266, file: !1266, line: 137, type: !2953, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2953 = !DISubroutineType(types: !2954)
!2954 = !{!63, !1197, !228, !363, !203}
!2955 = !DILocalVariable(name: "s", arg: 1, scope: !2952, file: !1266, line: 137, type: !1197)
!2956 = !DILocation(line: 137, column: 54, scope: !2952)
!2957 = !DILocalVariable(name: "object", arg: 2, scope: !2952, file: !1266, line: 137, type: !228)
!2958 = !DILocation(line: 137, column: 69, scope: !2952)
!2959 = !DILocalVariable(name: "size", arg: 3, scope: !2952, file: !1266, line: 138, type: !363)
!2960 = !DILocation(line: 138, column: 12, scope: !2952)
!2961 = !DILocalVariable(name: "flags", arg: 4, scope: !2952, file: !1266, line: 138, type: !203)
!2962 = !DILocation(line: 138, column: 24, scope: !2952)
!2963 = !DILocation(line: 140, column: 17, scope: !2952)
!2964 = !DILocation(line: 140, column: 2, scope: !2952)
!2965 = distinct !DISubprogram(name: "of_property_read_u32", scope: !2029, file: !2029, line: 1214, type: !2966, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2966 = !DISubroutineType(types: !2967)
!2967 = !{!95, !2968, !83, !780}
!2968 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2969, size: 64)
!2969 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2970 = !DILocalVariable(name: "np", arg: 1, scope: !2965, file: !2029, line: 1214, type: !2968)
!2971 = !DILocation(line: 1214, column: 66, scope: !2965)
!2972 = !DILocalVariable(name: "propname", arg: 2, scope: !2965, file: !2029, line: 1215, type: !83)
!2973 = !DILocation(line: 1215, column: 24, scope: !2965)
!2974 = !DILocalVariable(name: "out_value", arg: 3, scope: !2965, file: !2029, line: 1216, type: !780)
!2975 = !DILocation(line: 1216, column: 17, scope: !2965)
!2976 = !DILocation(line: 1218, column: 36, scope: !2965)
!2977 = !DILocation(line: 1218, column: 40, scope: !2965)
!2978 = !DILocation(line: 1218, column: 50, scope: !2965)
!2979 = !DILocation(line: 1218, column: 9, scope: !2965)
!2980 = !DILocation(line: 1218, column: 2, scope: !2965)
!2981 = distinct !DISubprogram(name: "of_node_clear_flag", scope: !2029, file: !2029, line: 204, type: !2982, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !2027, !113}
!2984 = !DILocalVariable(name: "n", arg: 1, scope: !2981, file: !2029, line: 204, type: !2027)
!2985 = !DILocation(line: 204, column: 59, scope: !2981)
!2986 = !DILocalVariable(name: "flag", arg: 2, scope: !2981, file: !2029, line: 204, type: !113)
!2987 = !DILocation(line: 204, column: 76, scope: !2981)
!2988 = !DILocation(line: 206, column: 12, scope: !2981)
!2989 = !DILocation(line: 206, column: 19, scope: !2981)
!2990 = !DILocation(line: 206, column: 22, scope: !2981)
!2991 = !DILocation(line: 206, column: 2, scope: !2981)
!2992 = !DILocation(line: 207, column: 1, scope: !2981)
!2993 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !2029, file: !2029, line: 494, type: !2994, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{!95, !2968, !83, !780, !363}
!2996 = !DILocalVariable(name: "np", arg: 1, scope: !2993, file: !2029, line: 494, type: !2968)
!2997 = !DILocation(line: 494, column: 72, scope: !2993)
!2998 = !DILocalVariable(name: "propname", arg: 2, scope: !2993, file: !2029, line: 495, type: !83)
!2999 = !DILocation(line: 495, column: 23, scope: !2993)
!3000 = !DILocalVariable(name: "out_values", arg: 3, scope: !2993, file: !2029, line: 496, type: !780)
!3001 = !DILocation(line: 496, column: 16, scope: !2993)
!3002 = !DILocalVariable(name: "sz", arg: 4, scope: !2993, file: !2029, line: 496, type: !363)
!3003 = !DILocation(line: 496, column: 35, scope: !2993)
!3004 = !DILocalVariable(name: "ret", scope: !2993, file: !2029, line: 498, type: !95)
!3005 = !DILocation(line: 498, column: 6, scope: !2993)
!3006 = !DILocation(line: 498, column: 48, scope: !2993)
!3007 = !DILocation(line: 498, column: 52, scope: !2993)
!3008 = !DILocation(line: 498, column: 62, scope: !2993)
!3009 = !DILocation(line: 499, column: 13, scope: !2993)
!3010 = !DILocation(line: 498, column: 12, scope: !2993)
!3011 = !DILocation(line: 500, column: 6, scope: !3012)
!3012 = distinct !DILexicalBlock(scope: !2993, file: !2029, line: 500, column: 6)
!3013 = !DILocation(line: 500, column: 10, scope: !3012)
!3014 = !DILocation(line: 500, column: 6, scope: !2993)
!3015 = !DILocation(line: 501, column: 3, scope: !3012)
!3016 = !DILocation(line: 503, column: 10, scope: !3012)
!3017 = !DILocation(line: 503, column: 3, scope: !3012)
!3018 = !DILocation(line: 504, column: 1, scope: !2993)
!3019 = distinct !DISubprogram(name: "clear_bit", scope: !3020, file: !3020, line: 39, type: !3021, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3020 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3021 = !DISubroutineType(types: !3022)
!3022 = !{null, !118, !3023}
!3023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3024, size: 64)
!3024 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !113)
!3025 = !DILocalVariable(name: "nr", arg: 1, scope: !3026, file: !2899, line: 72, type: !118)
!3026 = distinct !DISubprogram(name: "arch_clear_bit", scope: !2899, file: !2899, line: 72, type: !3021, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3027 = !DILocation(line: 72, column: 21, scope: !3026, inlinedAt: !3028)
!3028 = distinct !DILocation(line: 42, column: 2, scope: !3019)
!3029 = !DILocalVariable(name: "addr", arg: 2, scope: !3026, file: !2899, line: 72, type: !3023)
!3030 = !DILocation(line: 72, column: 49, scope: !3026, inlinedAt: !3028)
!3031 = !DILocalVariable(name: "v", arg: 1, scope: !3032, file: !3033, line: 84, type: !3036)
!3032 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3033, file: !3033, line: 84, type: !3034, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3033 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3034 = !DISubroutineType(types: !3035)
!3035 = !{null, !3036, !363}
!3036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3037, size: 64)
!3037 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !3038)
!3038 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!3039 = !DILocation(line: 84, column: 74, scope: !3032, inlinedAt: !3040)
!3040 = distinct !DILocation(line: 41, column: 2, scope: !3019)
!3041 = !DILocalVariable(name: "size", arg: 2, scope: !3032, file: !3033, line: 84, type: !363)
!3042 = !DILocation(line: 84, column: 84, scope: !3032, inlinedAt: !3040)
!3043 = !DILocalVariable(name: "nr", arg: 1, scope: !3019, file: !3020, line: 39, type: !118)
!3044 = !DILocation(line: 39, column: 35, scope: !3019)
!3045 = !DILocalVariable(name: "addr", arg: 2, scope: !3019, file: !3020, line: 39, type: !3023)
!3046 = !DILocation(line: 39, column: 63, scope: !3019)
!3047 = !DILocation(line: 41, column: 26, scope: !3019)
!3048 = !DILocation(line: 41, column: 33, scope: !3019)
!3049 = !DILocation(line: 41, column: 31, scope: !3019)
!3050 = !DILocation(line: 86, column: 20, scope: !3032, inlinedAt: !3040)
!3051 = !DILocation(line: 86, column: 23, scope: !3032, inlinedAt: !3040)
!3052 = !DILocation(line: 86, column: 2, scope: !3032, inlinedAt: !3040)
!3053 = !DILocation(line: 87, column: 2, scope: !3032, inlinedAt: !3040)
!3054 = !DILocation(line: 42, column: 17, scope: !3019)
!3055 = !DILocation(line: 42, column: 21, scope: !3019)
!3056 = !DILocation(line: 74, column: 27, scope: !3057, inlinedAt: !3028)
!3057 = distinct !DILexicalBlock(scope: !3026, file: !2899, line: 74, column: 6)
!3058 = !DILocation(line: 74, column: 6, scope: !3057, inlinedAt: !3028)
!3059 = !DILocation(line: 74, column: 6, scope: !3026, inlinedAt: !3028)
!3060 = !DILocation(line: 76, column: 6, scope: !3061, inlinedAt: !3028)
!3061 = distinct !DILexicalBlock(scope: !3057, file: !2899, line: 74, column: 32)
!3062 = !DILocation(line: 77, column: 13, scope: !3061, inlinedAt: !3028)
!3063 = !DILocation(line: 77, column: 12, scope: !3061, inlinedAt: !3028)
!3064 = !DILocation(line: 75, column: 3, scope: !3061, inlinedAt: !3028)
!3065 = !{i32 -2147148218}
!3066 = !DILocation(line: 78, column: 2, scope: !3061, inlinedAt: !3028)
!3067 = !DILocation(line: 80, column: 8, scope: !3068, inlinedAt: !3028)
!3068 = distinct !DILexicalBlock(scope: !3057, file: !2899, line: 78, column: 9)
!3069 = !DILocation(line: 80, column: 32, scope: !3068, inlinedAt: !3028)
!3070 = !DILocation(line: 79, column: 3, scope: !3068, inlinedAt: !3028)
!3071 = !{i32 -2147148086}
!3072 = !DILocation(line: 43, column: 1, scope: !3019)
!3073 = distinct !DISubprogram(name: "kasan_check_write", scope: !3074, file: !3074, line: 38, type: !3075, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3074 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3075 = !DISubroutineType(types: !3076)
!3076 = !{!252, !3036, !7}
!3077 = !DILocalVariable(name: "p", arg: 1, scope: !3073, file: !3074, line: 38, type: !3036)
!3078 = !DILocation(line: 38, column: 59, scope: !3073)
!3079 = !DILocalVariable(name: "size", arg: 2, scope: !3073, file: !3074, line: 38, type: !7)
!3080 = !DILocation(line: 38, column: 75, scope: !3073)
!3081 = !DILocation(line: 40, column: 2, scope: !3073)
!3082 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3083, file: !3083, line: 178, type: !3084, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3083 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3084 = !DISubroutineType(types: !3085)
!3085 = !{null, !3036, !363, !95}
!3086 = !DILocalVariable(name: "ptr", arg: 1, scope: !3082, file: !3083, line: 178, type: !3036)
!3087 = !DILocation(line: 178, column: 60, scope: !3082)
!3088 = !DILocalVariable(name: "size", arg: 2, scope: !3082, file: !3083, line: 178, type: !363)
!3089 = !DILocation(line: 178, column: 72, scope: !3082)
!3090 = !DILocalVariable(name: "type", arg: 3, scope: !3082, file: !3083, line: 179, type: !95)
!3091 = !DILocation(line: 179, column: 15, scope: !3082)
!3092 = !DILocation(line: 179, column: 23, scope: !3082)
!3093 = distinct !DISubprogram(name: "of_fixed_factor_clk_probe", scope: !3, file: !3, line: 228, type: !244, scopeLine: 229, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3094 = !DILocalVariable(name: "pdev", arg: 1, scope: !3093, file: !3, line: 228, type: !246)
!3095 = !DILocation(line: 228, column: 62, scope: !3093)
!3096 = !DILocalVariable(name: "clk", scope: !3093, file: !3, line: 230, type: !96)
!3097 = !DILocation(line: 230, column: 17, scope: !3093)
!3098 = !DILocation(line: 236, column: 35, scope: !3093)
!3099 = !DILocation(line: 236, column: 41, scope: !3093)
!3100 = !DILocation(line: 236, column: 45, scope: !3093)
!3101 = !DILocation(line: 236, column: 8, scope: !3093)
!3102 = !DILocation(line: 236, column: 6, scope: !3093)
!3103 = !DILocation(line: 237, column: 13, scope: !3104)
!3104 = distinct !DILexicalBlock(scope: !3093, file: !3, line: 237, column: 6)
!3105 = !DILocation(line: 237, column: 6, scope: !3104)
!3106 = !DILocation(line: 237, column: 6, scope: !3093)
!3107 = !DILocation(line: 238, column: 18, scope: !3104)
!3108 = !DILocation(line: 238, column: 10, scope: !3104)
!3109 = !DILocation(line: 238, column: 3, scope: !3104)
!3110 = !DILocation(line: 240, column: 23, scope: !3093)
!3111 = !DILocation(line: 240, column: 29, scope: !3093)
!3112 = !DILocation(line: 240, column: 2, scope: !3093)
!3113 = !DILocation(line: 242, column: 2, scope: !3093)
!3114 = !DILocation(line: 243, column: 1, scope: !3093)
!3115 = distinct !DISubprogram(name: "of_fixed_factor_clk_remove", scope: !3, file: !3, line: 218, type: !244, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3116 = !DILocalVariable(name: "pdev", arg: 1, scope: !3115, file: !3, line: 218, type: !246)
!3117 = !DILocation(line: 218, column: 63, scope: !3115)
!3118 = !DILocalVariable(name: "clk", scope: !3115, file: !3, line: 220, type: !96)
!3119 = !DILocation(line: 220, column: 17, scope: !3115)
!3120 = !DILocation(line: 220, column: 44, scope: !3115)
!3121 = !DILocation(line: 220, column: 23, scope: !3115)
!3122 = !DILocation(line: 222, column: 22, scope: !3115)
!3123 = !DILocation(line: 222, column: 28, scope: !3115)
!3124 = !DILocation(line: 222, column: 32, scope: !3115)
!3125 = !DILocation(line: 222, column: 2, scope: !3115)
!3126 = !DILocation(line: 223, column: 33, scope: !3115)
!3127 = !DILocation(line: 223, column: 2, scope: !3115)
!3128 = !DILocation(line: 225, column: 2, scope: !3115)
!3129 = distinct !DISubprogram(name: "PTR_ERR", scope: !2743, file: !2743, line: 29, type: !3130, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3130 = !DISubroutineType(types: !3131)
!3131 = !{!118, !228}
!3132 = !DILocalVariable(name: "ptr", arg: 1, scope: !3129, file: !2743, line: 29, type: !228)
!3133 = !DILocation(line: 29, column: 61, scope: !3129)
!3134 = !DILocation(line: 31, column: 16, scope: !3129)
!3135 = !DILocation(line: 31, column: 9, scope: !3129)
!3136 = !DILocation(line: 31, column: 2, scope: !3129)
!3137 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !240, file: !240, line: 236, type: !3138, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3138 = !DISubroutineType(types: !3139)
!3139 = !{null, !246, !63}
!3140 = !DILocalVariable(name: "pdev", arg: 1, scope: !3137, file: !240, line: 236, type: !246)
!3141 = !DILocation(line: 236, column: 65, scope: !3137)
!3142 = !DILocalVariable(name: "data", arg: 2, scope: !3137, file: !240, line: 237, type: !63)
!3143 = !DILocation(line: 237, column: 12, scope: !3137)
!3144 = !DILocation(line: 239, column: 19, scope: !3137)
!3145 = !DILocation(line: 239, column: 25, scope: !3137)
!3146 = !DILocation(line: 239, column: 30, scope: !3137)
!3147 = !DILocation(line: 239, column: 2, scope: !3137)
!3148 = !DILocation(line: 240, column: 1, scope: !3137)
!3149 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !3150, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3150 = !DISubroutineType(types: !3151)
!3151 = !{null, !1731, !63}
!3152 = !DILocalVariable(name: "dev", arg: 1, scope: !3149, file: !30, line: 660, type: !1731)
!3153 = !DILocation(line: 660, column: 51, scope: !3149)
!3154 = !DILocalVariable(name: "data", arg: 2, scope: !3149, file: !30, line: 660, type: !63)
!3155 = !DILocation(line: 660, column: 62, scope: !3149)
!3156 = !DILocation(line: 662, column: 21, scope: !3149)
!3157 = !DILocation(line: 662, column: 2, scope: !3149)
!3158 = !DILocation(line: 662, column: 7, scope: !3149)
!3159 = !DILocation(line: 662, column: 19, scope: !3149)
!3160 = !DILocation(line: 663, column: 1, scope: !3149)
!3161 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !240, file: !240, line: 231, type: !3162, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3162 = !DISubroutineType(types: !3163)
!3163 = !{!63, !3164}
!3164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3165, size: 64)
!3165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !247)
!3166 = !DILocalVariable(name: "pdev", arg: 1, scope: !3161, file: !240, line: 231, type: !3164)
!3167 = !DILocation(line: 231, column: 72, scope: !3161)
!3168 = !DILocation(line: 233, column: 26, scope: !3161)
!3169 = !DILocation(line: 233, column: 32, scope: !3161)
!3170 = !DILocation(line: 233, column: 9, scope: !3161)
!3171 = !DILocation(line: 233, column: 2, scope: !3161)
!3172 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3173, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !290)
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!63, !2064}
!3175 = !DILocalVariable(name: "dev", arg: 1, scope: !3172, file: !30, line: 655, type: !2064)
!3176 = !DILocation(line: 655, column: 58, scope: !3172)
!3177 = !DILocation(line: 657, column: 9, scope: !3172)
!3178 = !DILocation(line: 657, column: 14, scope: !3172)
!3179 = !DILocation(line: 657, column: 2, scope: !3172)
