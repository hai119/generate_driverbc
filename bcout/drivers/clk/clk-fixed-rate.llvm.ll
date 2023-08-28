; ModuleID = '../bcout/drivers/clk/clk-fixed-rate.llvm.bc'
source_filename = "drivers/clk/clk-fixed-rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_of_fixed_clk_driver_init6:\09\09\09"
module asm ".long\09of_fixed_clk_driver_init - .\09\09\09"
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
%struct.clk_fixed_rate = type { %struct.clk_hw, i64, i64, i64 }
%struct.of_phandle_args = type { %struct.device_node*, i32, [16 x i32] }

@clk_fixed_rate_ops = dso_local constant { i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* } { i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, i64 (%struct.clk_hw*, i64)* @clk_fixed_rate_recalc_rate, i64 (%struct.clk_hw*, i64, i64*)* null, i32 (%struct.clk_hw*, %struct.clk_rate_request*)* null, i32 (%struct.clk_hw*, i8)* null, i8 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i64, i64)* null, i32 (%struct.clk_hw*, i64, i64, i8)* null, i64 (%struct.clk_hw*, i64)* @clk_fixed_rate_recalc_accuracy, i32 (%struct.clk_hw*)* null, i32 (%struct.clk_hw*, i32)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*, %struct.clk_duty*)* null, i32 (%struct.clk_hw*)* null, void (%struct.clk_hw*)* null, void (%struct.clk_hw*, %struct.dentry*)* null }, align 8, !dbg !0
@__of_table_fixed_clk = internal constant %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* bitcast (void (%struct.device_node*)* @of_fixed_clk_setup to i8*) }, section "__clk_of_table", align 8, !dbg !200
@__UNIQUE_ID___addressable_of_fixed_clk_driver_init165 = internal global i8* bitcast (i32 ()* @of_fixed_clk_driver_init to i8*), section ".discard.addressable", align 8, !dbg !218
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"clock-accuracy\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"clock-output-names\00", align 1
@of_fixed_clk_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @of_fixed_clk_probe, i32 (%struct.platform_device*)* @of_fixed_clk_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.4, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([2 x %struct.of_device_id], [2 x %struct.of_device_id]* @of_fixed_clk_ids, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* null, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !220
@.str.4 = private unnamed_addr constant [13 x i8] c"of_fixed_clk\00", align 1
@of_fixed_clk_ids = internal constant [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fixed-clock\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2236
@llvm.used = appending global [2 x i8*] [i8* getelementptr inbounds (%struct.of_device_id, %struct.of_device_id* @__of_table_fixed_clk, i32 0, i32 0, i32 0), i8* bitcast (i8** @__UNIQUE_ID___addressable_of_fixed_clk_driver_init165 to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_fixed_rate_recalc_rate(%struct.clk_hw* %hw, i64 %parent_rate) #0 !dbg !2244 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_rate.addr = alloca i64, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_rate*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2245, metadata !DIExpression()), !dbg !2246
  store i64 %parent_rate, i64* %parent_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_rate.addr, metadata !2247, metadata !DIExpression()), !dbg !2248
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2249, metadata !DIExpression()), !dbg !2251
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2251
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2251
  store i8* %1, i8** %__mptr, align 8, !dbg !2251
  br label %do.body, !dbg !2251

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2252

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2251
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2251
  %3 = bitcast i8* %add.ptr to %struct.clk_fixed_rate*, !dbg !2251
  store %struct.clk_fixed_rate* %3, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2252
  %4 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2251
  %fixed_rate = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %4, i32 0, i32 1, !dbg !2254
  %5 = load i64, i64* %fixed_rate, align 8, !dbg !2254
  ret i64 %5, !dbg !2255
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @clk_fixed_rate_recalc_accuracy(%struct.clk_hw* %hw, i64 %parent_accuracy) #0 !dbg !2256 {
entry:
  %retval = alloca i64, align 8
  %hw.addr = alloca %struct.clk_hw*, align 8
  %parent_accuracy.addr = alloca i64, align 8
  %fixed = alloca %struct.clk_fixed_rate*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_rate*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2257, metadata !DIExpression()), !dbg !2258
  store i64 %parent_accuracy, i64* %parent_accuracy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %parent_accuracy.addr, metadata !2259, metadata !DIExpression()), !dbg !2260
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_rate** %fixed, metadata !2261, metadata !DIExpression()), !dbg !2262
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2263, metadata !DIExpression()), !dbg !2265
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2265
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2265
  store i8* %1, i8** %__mptr, align 8, !dbg !2265
  br label %do.body, !dbg !2265

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2266

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2265
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2265
  %3 = bitcast i8* %add.ptr to %struct.clk_fixed_rate*, !dbg !2265
  store %struct.clk_fixed_rate* %3, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2266
  %4 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2265
  store %struct.clk_fixed_rate* %4, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2262
  %5 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2268
  %flags = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %5, i32 0, i32 3, !dbg !2270
  %6 = load i64, i64* %flags, align 8, !dbg !2270
  %and = and i64 %6, 1, !dbg !2271
  %tobool = icmp ne i64 %and, 0, !dbg !2271
  br i1 %tobool, label %if.then, label %if.end, !dbg !2272

if.then:                                          ; preds = %do.end
  %7 = load i64, i64* %parent_accuracy.addr, align 8, !dbg !2273
  store i64 %7, i64* %retval, align 8, !dbg !2274
  br label %return, !dbg !2274

if.end:                                           ; preds = %do.end
  %8 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2275
  %fixed_accuracy = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %8, i32 0, i32 2, !dbg !2276
  %9 = load i64, i64* %fixed_accuracy, align 8, !dbg !2276
  store i64 %9, i64* %retval, align 8, !dbg !2277
  br label %return, !dbg !2277

return:                                           ; preds = %if.end, %if.then
  %10 = load i64, i64* %retval, align 8, !dbg !2278
  ret i64 %10, !dbg !2278
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk_hw* @__clk_hw_register_fixed_rate(%struct.device* %dev, %struct.device_node* %np, i8* %name, i8* %parent_name, %struct.clk_hw* %parent_hw, %struct.clk_parent_data* %parent_data, i64 %flags, i64 %fixed_rate, i64 %fixed_accuracy, i64 %clk_fixed_flags) #0 !dbg !2279 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %np.addr = alloca %struct.device_node*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %parent_hw.addr = alloca %struct.clk_hw*, align 8
  %parent_data.addr = alloca %struct.clk_parent_data*, align 8
  %flags.addr = alloca i64, align 8
  %fixed_rate.addr = alloca i64, align 8
  %fixed_accuracy.addr = alloca i64, align 8
  %clk_fixed_flags.addr = alloca i64, align 8
  %fixed = alloca %struct.clk_fixed_rate*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %init = alloca %struct.clk_init_data, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2282, metadata !DIExpression()), !dbg !2283
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2284, metadata !DIExpression()), !dbg !2285
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2286, metadata !DIExpression()), !dbg !2287
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2288, metadata !DIExpression()), !dbg !2289
  store %struct.clk_hw* %parent_hw, %struct.clk_hw** %parent_hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %parent_hw.addr, metadata !2290, metadata !DIExpression()), !dbg !2291
  store %struct.clk_parent_data* %parent_data, %struct.clk_parent_data** %parent_data.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_parent_data** %parent_data.addr, metadata !2292, metadata !DIExpression()), !dbg !2293
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2294, metadata !DIExpression()), !dbg !2295
  store i64 %fixed_rate, i64* %fixed_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %fixed_rate.addr, metadata !2296, metadata !DIExpression()), !dbg !2297
  store i64 %fixed_accuracy, i64* %fixed_accuracy.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %fixed_accuracy.addr, metadata !2298, metadata !DIExpression()), !dbg !2299
  store i64 %clk_fixed_flags, i64* %clk_fixed_flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %clk_fixed_flags.addr, metadata !2300, metadata !DIExpression()), !dbg !2301
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_rate** %fixed, metadata !2302, metadata !DIExpression()), !dbg !2303
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2304, metadata !DIExpression()), !dbg !2305
  call void @llvm.dbg.declare(metadata %struct.clk_init_data* %init, metadata !2306, metadata !DIExpression()), !dbg !2307
  %0 = bitcast %struct.clk_init_data* %init to i8*, !dbg !2307
  call void @llvm.memset.p0i8.i64(i8* align 8 %0, i8 0, i64 56, i1 false), !dbg !2307
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2308, metadata !DIExpression()), !dbg !2309
  store i32 -22, i32* %ret, align 4, !dbg !2309
  %call = call i8* @kzalloc(i64 48, i32 3264) #8, !dbg !2310
  %1 = bitcast i8* %call to %struct.clk_fixed_rate*, !dbg !2310
  store %struct.clk_fixed_rate* %1, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2311
  %2 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2312
  %tobool = icmp ne %struct.clk_fixed_rate* %2, null, !dbg !2312
  br i1 %tobool, label %if.end, label %if.then, !dbg !2314

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #8, !dbg !2315
  %3 = bitcast i8* %call1 to %struct.clk_hw*, !dbg !2315
  store %struct.clk_hw* %3, %struct.clk_hw** %retval, align 8, !dbg !2316
  br label %return, !dbg !2316

if.end:                                           ; preds = %entry
  %4 = load i8*, i8** %name.addr, align 8, !dbg !2317
  %name2 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 0, !dbg !2318
  store i8* %4, i8** %name2, align 8, !dbg !2319
  %ops = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 1, !dbg !2320
  store %struct.clk_ops* bitcast ({ i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, i64 (%struct.clk_hw*, i64)*, i64 (%struct.clk_hw*, i64, i64*)*, i32 (%struct.clk_hw*, %struct.clk_rate_request*)*, i32 (%struct.clk_hw*, i8)*, i8 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i64, i64)*, i32 (%struct.clk_hw*, i64, i64, i8)*, i64 (%struct.clk_hw*, i64)*, i32 (%struct.clk_hw*)*, i32 (%struct.clk_hw*, i32)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*, %struct.clk_duty*)*, i32 (%struct.clk_hw*)*, void (%struct.clk_hw*)*, void (%struct.clk_hw*, %struct.dentry*)* }* @clk_fixed_rate_ops to %struct.clk_ops*), %struct.clk_ops** %ops, align 8, !dbg !2321
  %5 = load i64, i64* %flags.addr, align 8, !dbg !2322
  %flags3 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 6, !dbg !2323
  store i64 %5, i64* %flags3, align 8, !dbg !2324
  %6 = load i8*, i8** %parent_name.addr, align 8, !dbg !2325
  %tobool4 = icmp ne i8* %6, null, !dbg !2325
  br i1 %tobool4, label %cond.true, label %cond.false, !dbg !2325

cond.true:                                        ; preds = %if.end
  br label %cond.end, !dbg !2325

cond.false:                                       ; preds = %if.end
  br label %cond.end, !dbg !2325

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8** [ %parent_name.addr, %cond.true ], [ null, %cond.false ], !dbg !2325
  %parent_names = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 2, !dbg !2326
  store i8** %cond, i8*** %parent_names, align 8, !dbg !2327
  %7 = load %struct.clk_hw*, %struct.clk_hw** %parent_hw.addr, align 8, !dbg !2328
  %tobool5 = icmp ne %struct.clk_hw* %7, null, !dbg !2328
  br i1 %tobool5, label %cond.true6, label %cond.false7, !dbg !2328

cond.true6:                                       ; preds = %cond.end
  br label %cond.end8, !dbg !2328

cond.false7:                                      ; preds = %cond.end
  br label %cond.end8, !dbg !2328

cond.end8:                                        ; preds = %cond.false7, %cond.true6
  %cond9 = phi %struct.clk_hw** [ %parent_hw.addr, %cond.true6 ], [ null, %cond.false7 ], !dbg !2328
  %parent_hws = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 4, !dbg !2329
  store %struct.clk_hw** %cond9, %struct.clk_hw*** %parent_hws, align 8, !dbg !2330
  %8 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !2331
  %parent_data10 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 3, !dbg !2332
  store %struct.clk_parent_data* %8, %struct.clk_parent_data** %parent_data10, align 8, !dbg !2333
  %9 = load i8*, i8** %parent_name.addr, align 8, !dbg !2334
  %tobool11 = icmp ne i8* %9, null, !dbg !2334
  br i1 %tobool11, label %if.then15, label %lor.lhs.false, !dbg !2336

lor.lhs.false:                                    ; preds = %cond.end8
  %10 = load %struct.clk_hw*, %struct.clk_hw** %parent_hw.addr, align 8, !dbg !2337
  %tobool12 = icmp ne %struct.clk_hw* %10, null, !dbg !2337
  br i1 %tobool12, label %if.then15, label %lor.lhs.false13, !dbg !2338

lor.lhs.false13:                                  ; preds = %lor.lhs.false
  %11 = load %struct.clk_parent_data*, %struct.clk_parent_data** %parent_data.addr, align 8, !dbg !2339
  %tobool14 = icmp ne %struct.clk_parent_data* %11, null, !dbg !2339
  br i1 %tobool14, label %if.then15, label %if.else, !dbg !2340

if.then15:                                        ; preds = %lor.lhs.false13, %lor.lhs.false, %cond.end8
  %num_parents = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !2341
  store i8 1, i8* %num_parents, align 8, !dbg !2342
  br label %if.end17, !dbg !2343

if.else:                                          ; preds = %lor.lhs.false13
  %num_parents16 = getelementptr inbounds %struct.clk_init_data, %struct.clk_init_data* %init, i32 0, i32 5, !dbg !2344
  store i8 0, i8* %num_parents16, align 8, !dbg !2345
  br label %if.end17

if.end17:                                         ; preds = %if.else, %if.then15
  %12 = load i64, i64* %clk_fixed_flags.addr, align 8, !dbg !2346
  %13 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2347
  %flags18 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %13, i32 0, i32 3, !dbg !2348
  store i64 %12, i64* %flags18, align 8, !dbg !2349
  %14 = load i64, i64* %fixed_rate.addr, align 8, !dbg !2350
  %15 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2351
  %fixed_rate19 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %15, i32 0, i32 1, !dbg !2352
  store i64 %14, i64* %fixed_rate19, align 8, !dbg !2353
  %16 = load i64, i64* %fixed_accuracy.addr, align 8, !dbg !2354
  %17 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2355
  %fixed_accuracy20 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %17, i32 0, i32 2, !dbg !2356
  store i64 %16, i64* %fixed_accuracy20, align 8, !dbg !2357
  %18 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2358
  %hw21 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %18, i32 0, i32 0, !dbg !2359
  %init22 = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %hw21, i32 0, i32 2, !dbg !2360
  store %struct.clk_init_data* %init, %struct.clk_init_data** %init22, align 8, !dbg !2361
  %19 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2362
  %hw23 = getelementptr inbounds %struct.clk_fixed_rate, %struct.clk_fixed_rate* %19, i32 0, i32 0, !dbg !2363
  store %struct.clk_hw* %hw23, %struct.clk_hw** %hw, align 8, !dbg !2364
  %20 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2365
  %tobool24 = icmp ne %struct.device* %20, null, !dbg !2365
  br i1 %tobool24, label %if.then27, label %lor.lhs.false25, !dbg !2367

lor.lhs.false25:                                  ; preds = %if.end17
  %21 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2368
  %tobool26 = icmp ne %struct.device_node* %21, null, !dbg !2368
  br i1 %tobool26, label %if.else29, label %if.then27, !dbg !2369

if.then27:                                        ; preds = %lor.lhs.false25, %if.end17
  %22 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2370
  %23 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2371
  %call28 = call i32 @clk_hw_register(%struct.device* %22, %struct.clk_hw* %23) #8, !dbg !2372
  store i32 %call28, i32* %ret, align 4, !dbg !2373
  br label %if.end34, !dbg !2374

if.else29:                                        ; preds = %lor.lhs.false25
  %24 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2375
  %tobool30 = icmp ne %struct.device_node* %24, null, !dbg !2375
  br i1 %tobool30, label %if.then31, label %if.end33, !dbg !2377

if.then31:                                        ; preds = %if.else29
  %25 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2378
  %26 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2379
  %call32 = call i32 @of_clk_hw_register(%struct.device_node* %25, %struct.clk_hw* %26) #8, !dbg !2380
  store i32 %call32, i32* %ret, align 4, !dbg !2381
  br label %if.end33, !dbg !2382

if.end33:                                         ; preds = %if.then31, %if.else29
  br label %if.end34

if.end34:                                         ; preds = %if.end33, %if.then27
  %27 = load i32, i32* %ret, align 4, !dbg !2383
  %tobool35 = icmp ne i32 %27, 0, !dbg !2383
  br i1 %tobool35, label %if.then36, label %if.end38, !dbg !2385

if.then36:                                        ; preds = %if.end34
  %28 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2386
  %29 = bitcast %struct.clk_fixed_rate* %28 to i8*, !dbg !2386
  call void @kfree(i8* %29) #8, !dbg !2388
  %30 = load i32, i32* %ret, align 4, !dbg !2389
  %conv = sext i32 %30 to i64, !dbg !2389
  %call37 = call i8* @ERR_PTR(i64 %conv) #8, !dbg !2390
  %31 = bitcast i8* %call37 to %struct.clk_hw*, !dbg !2390
  store %struct.clk_hw* %31, %struct.clk_hw** %hw, align 8, !dbg !2391
  br label %if.end38, !dbg !2392

if.end38:                                         ; preds = %if.then36, %if.end34
  %32 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2393
  store %struct.clk_hw* %32, %struct.clk_hw** %retval, align 8, !dbg !2394
  br label %return, !dbg !2394

return:                                           ; preds = %if.end38, %if.then
  %33 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !2395
  ret %struct.clk_hw* %33, !dbg !2395
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2396 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2399, metadata !DIExpression()), !dbg !2403
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2409, metadata !DIExpression()), !dbg !2410
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2411, metadata !DIExpression()), !dbg !2412
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2413, metadata !DIExpression()), !dbg !2414
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2415, metadata !DIExpression()), !dbg !2419
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2421, metadata !DIExpression()), !dbg !2425
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2427, metadata !DIExpression()), !dbg !2431
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2436, metadata !DIExpression()), !dbg !2437
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2438, metadata !DIExpression()), !dbg !2439
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2440, metadata !DIExpression()), !dbg !2441
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2442, metadata !DIExpression()), !dbg !2443
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2444, metadata !DIExpression()), !dbg !2445
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2446, metadata !DIExpression()), !dbg !2447
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2448, metadata !DIExpression()), !dbg !2449
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2450, metadata !DIExpression()), !dbg !2451
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2452, metadata !DIExpression()), !dbg !2453
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2454, metadata !DIExpression()), !dbg !2455
  %0 = load i64, i64* %size.addr, align 8, !dbg !2456
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2457
  %or = or i32 %1, 256, !dbg !2458
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2459
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #9, !dbg !2460
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2461

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2462
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2463
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2464

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2465
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2466
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2467
  %call.i.i = call i32 @get_order(i64 %7) #10, !dbg !2468
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2445
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2469
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2470
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2471
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2472
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2473
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2474
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #11, !dbg !2475
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2475
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2475
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2475
  call void @llvm.assume(i1 %maskcond.i.i.i) #9, !dbg !2475
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2476
  br label %kmalloc.exit, !dbg !2476

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2477
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2478
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2478
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2480

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2481
  br label %kmalloc_index.exit.i, !dbg !2481

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2482
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2484
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2485

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2486
  br label %kmalloc_index.exit.i, !dbg !2486

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2487
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2489
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2490

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2491
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2492
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2493

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2494
  br label %kmalloc_index.exit.i, !dbg !2494

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2495
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2497
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2498

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2499
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2500
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2501

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2502
  br label %kmalloc_index.exit.i, !dbg !2502

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2503
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2505
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2506

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2507
  br label %kmalloc_index.exit.i, !dbg !2507

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2508
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2510
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2511

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2512
  br label %kmalloc_index.exit.i, !dbg !2512

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2513
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2515
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2516

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2517
  br label %kmalloc_index.exit.i, !dbg !2517

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2518
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2520
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2521

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2522
  br label %kmalloc_index.exit.i, !dbg !2522

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2523
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2525
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2526

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2527
  br label %kmalloc_index.exit.i, !dbg !2527

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2528
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2530
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2531

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2532
  br label %kmalloc_index.exit.i, !dbg !2532

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2533
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2535
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2536

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2537
  br label %kmalloc_index.exit.i, !dbg !2537

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2538
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2540
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2541

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2542
  br label %kmalloc_index.exit.i, !dbg !2542

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2543
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2545
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2546

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2547
  br label %kmalloc_index.exit.i, !dbg !2547

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2548
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2550
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2551

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2552
  br label %kmalloc_index.exit.i, !dbg !2552

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2553
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2555
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2556

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2557
  br label %kmalloc_index.exit.i, !dbg !2557

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2558
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2560
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2561

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2562
  br label %kmalloc_index.exit.i, !dbg !2562

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2563
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2565
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2566

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2567
  br label %kmalloc_index.exit.i, !dbg !2567

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2568
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2570
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2571

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2572
  br label %kmalloc_index.exit.i, !dbg !2572

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2573
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2575
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2576

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2577
  br label %kmalloc_index.exit.i, !dbg !2577

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2578
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2580
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2581

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2582
  br label %kmalloc_index.exit.i, !dbg !2582

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2583
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2585
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2586

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2587
  br label %kmalloc_index.exit.i, !dbg !2587

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2588
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2590
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2591

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2592
  br label %kmalloc_index.exit.i, !dbg !2592

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2593
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2595
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2596

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2597
  br label %kmalloc_index.exit.i, !dbg !2597

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2598
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2600
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2601

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2602
  br label %kmalloc_index.exit.i, !dbg !2602

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2603
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2605
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2606

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2607
  br label %kmalloc_index.exit.i, !dbg !2607

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2608
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2610
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2611

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2612
  br label %kmalloc_index.exit.i, !dbg !2612

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2613
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2615
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2616

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2617
  br label %kmalloc_index.exit.i, !dbg !2617

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2618
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2620
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2621

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2622
  br label %kmalloc_index.exit.i, !dbg !2622

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 382, i32 0, i64 12) #9, !dbg !2623, !srcloc !2626
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 105) #9, !dbg !2627, !srcloc !2630
  unreachable, !dbg !2631

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2632
  store i32 %45, i32* %index.i, align 4, !dbg !2633
  %46 = load i32, i32* %index.i, align 4, !dbg !2634
  %tobool.i = icmp ne i32 %46, 0, !dbg !2634
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2636

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2637
  br label %kmalloc.exit, !dbg !2637

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2638
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2639
  %and.i.i = and i32 %48, 17, !dbg !2639
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2639
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2639
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2639
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2639
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2641

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2642
  br label %kmalloc_type.exit.i, !dbg !2642

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2643
  %and2.i.i = and i32 %49, 1, !dbg !2644
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2643
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2643
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2643
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2645
  br label %kmalloc_type.exit.i, !dbg !2645

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2646
  %idxprom.i = zext i32 %51 to i64, !dbg !2647
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2647
  %52 = load i32, i32* %index.i, align 4, !dbg !2648
  %idxprom6.i = zext i32 %52 to i64, !dbg !2647
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2647
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2647
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2649
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2650
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2651
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2652
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #11, !dbg !2653
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2653
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2653
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2653
  call void @llvm.assume(i1 %maskcond.i.i) #9, !dbg !2653
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2414
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2654
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2655
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2656
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2657
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #11, !dbg !2658
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2659
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2660
  store i8* %62, i8** %retval.i, align 8, !dbg !2661
  br label %kmalloc.exit, !dbg !2661

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2662
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2663
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #11, !dbg !2664
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2664
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2664
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2664
  call void @llvm.assume(i1 %maskcond.i) #9, !dbg !2664
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2665
  br label %kmalloc.exit, !dbg !2665

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2666
  ret i8* %65, !dbg !2667
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2668 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2672, metadata !DIExpression()), !dbg !2673
  %0 = load i64, i64* %error.addr, align 8, !dbg !2674
  %1 = inttoptr i64 %0 to i8*, !dbg !2675
  ret i8* %1, !dbg !2676
}

; Function Attrs: noredzone
declare dso_local i32 @clk_hw_register(%struct.device*, %struct.clk_hw*) #3

; Function Attrs: noredzone
declare dso_local i32 @of_clk_hw_register(%struct.device_node*, %struct.clk_hw*) #3

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.clk* @clk_register_fixed_rate(%struct.device* %dev, i8* %name, i8* %parent_name, i64 %flags, i64 %fixed_rate) #0 !dbg !2677 {
entry:
  %retval = alloca %struct.clk*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %name.addr = alloca i8*, align 8
  %parent_name.addr = alloca i8*, align 8
  %flags.addr = alloca i64, align 8
  %fixed_rate.addr = alloca i64, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  store i8* %parent_name, i8** %parent_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %parent_name.addr, metadata !2684, metadata !DIExpression()), !dbg !2685
  store i64 %flags, i64* %flags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr, metadata !2686, metadata !DIExpression()), !dbg !2687
  store i64 %fixed_rate, i64* %fixed_rate.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %fixed_rate.addr, metadata !2688, metadata !DIExpression()), !dbg !2689
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2690, metadata !DIExpression()), !dbg !2691
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2692
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2692
  %2 = load i8*, i8** %parent_name.addr, align 8, !dbg !2692
  %3 = load i64, i64* %flags.addr, align 8, !dbg !2692
  %4 = load i64, i64* %fixed_rate.addr, align 8, !dbg !2692
  %call = call %struct.clk_hw* @__clk_hw_register_fixed_rate(%struct.device* %0, %struct.device_node* null, i8* %1, i8* %2, %struct.clk_hw* null, %struct.clk_parent_data* null, i64 %3, i64 %4, i64 0, i64 0) #8, !dbg !2692
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2693
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2694
  %6 = bitcast %struct.clk_hw* %5 to i8*, !dbg !2694
  %call1 = call zeroext i1 @IS_ERR(i8* %6) #8, !dbg !2696
  br i1 %call1, label %if.then, label %if.end, !dbg !2697

if.then:                                          ; preds = %entry
  %7 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2698
  %8 = bitcast %struct.clk_hw* %7 to i8*, !dbg !2698
  %call2 = call i8* @ERR_CAST(i8* %8) #8, !dbg !2699
  %9 = bitcast i8* %call2 to %struct.clk*, !dbg !2699
  store %struct.clk* %9, %struct.clk** %retval, align 8, !dbg !2700
  br label %return, !dbg !2700

if.end:                                           ; preds = %entry
  %10 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2701
  %clk = getelementptr inbounds %struct.clk_hw, %struct.clk_hw* %10, i32 0, i32 1, !dbg !2702
  %11 = load %struct.clk*, %struct.clk** %clk, align 8, !dbg !2702
  store %struct.clk* %11, %struct.clk** %retval, align 8, !dbg !2703
  br label %return, !dbg !2703

return:                                           ; preds = %if.end, %if.then
  %12 = load %struct.clk*, %struct.clk** %retval, align 8, !dbg !2704
  ret %struct.clk* %12, !dbg !2704
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #0 !dbg !2705 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2708, metadata !DIExpression()), !dbg !2709
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2710
  %1 = ptrtoint i8* %0 to i64, !dbg !2710
  %2 = inttoptr i64 %1 to i8*, !dbg !2710
  %3 = ptrtoint i8* %2 to i64, !dbg !2710
  %cmp = icmp uge i64 %3, -4095, !dbg !2710
  %lnot = xor i1 %cmp, true, !dbg !2710
  %lnot1 = xor i1 %lnot, true, !dbg !2710
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2710
  %conv = sext i32 %lnot.ext to i64, !dbg !2710
  %tobool = icmp ne i64 %conv, 0, !dbg !2710
  ret i1 %tobool, !dbg !2711
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_CAST(i8* %ptr) #0 !dbg !2712 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2717
  ret i8* %0, !dbg !2718
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_unregister_fixed_rate(%struct.clk* %clk) #0 !dbg !2719 {
entry:
  %clk.addr = alloca %struct.clk*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_rate*, align 8
  store %struct.clk* %clk, %struct.clk** %clk.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk** %clk.addr, metadata !2722, metadata !DIExpression()), !dbg !2723
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2724, metadata !DIExpression()), !dbg !2725
  %0 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2726
  %call = call %struct.clk_hw* @__clk_get_hw(%struct.clk* %0) #8, !dbg !2727
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2728
  %1 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2729
  %tobool = icmp ne %struct.clk_hw* %1, null, !dbg !2729
  br i1 %tobool, label %if.end, label %if.then, !dbg !2731

if.then:                                          ; preds = %entry
  br label %return, !dbg !2732

if.end:                                           ; preds = %entry
  %2 = load %struct.clk*, %struct.clk** %clk.addr, align 8, !dbg !2733
  call void @clk_unregister(%struct.clk* %2) #8, !dbg !2734
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2735, metadata !DIExpression()), !dbg !2737
  %3 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2737
  %4 = bitcast %struct.clk_hw* %3 to i8*, !dbg !2737
  store i8* %4, i8** %__mptr, align 8, !dbg !2737
  br label %do.body, !dbg !2737

do.body:                                          ; preds = %if.end
  br label %do.end, !dbg !2738

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !2737
  %add.ptr = getelementptr i8, i8* %5, i64 0, !dbg !2737
  %6 = bitcast i8* %add.ptr to %struct.clk_fixed_rate*, !dbg !2737
  store %struct.clk_fixed_rate* %6, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2738
  %7 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2737
  %8 = bitcast %struct.clk_fixed_rate* %7 to i8*, !dbg !2740
  call void @kfree(i8* %8) #8, !dbg !2741
  br label %return, !dbg !2742

return:                                           ; preds = %do.end, %if.then
  ret void, !dbg !2742
}

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @__clk_get_hw(%struct.clk*) #3

; Function Attrs: noredzone
declare dso_local void @clk_unregister(%struct.clk*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @clk_hw_unregister_fixed_rate(%struct.clk_hw* %hw) #0 !dbg !2743 {
entry:
  %hw.addr = alloca %struct.clk_hw*, align 8
  %fixed = alloca %struct.clk_fixed_rate*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.clk_fixed_rate*, align 8
  store %struct.clk_hw* %hw, %struct.clk_hw** %hw.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw.addr, metadata !2744, metadata !DIExpression()), !dbg !2745
  call void @llvm.dbg.declare(metadata %struct.clk_fixed_rate** %fixed, metadata !2746, metadata !DIExpression()), !dbg !2747
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2748, metadata !DIExpression()), !dbg !2750
  %0 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2750
  %1 = bitcast %struct.clk_hw* %0 to i8*, !dbg !2750
  store i8* %1, i8** %__mptr, align 8, !dbg !2750
  br label %do.body, !dbg !2750

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2751

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !2750
  %add.ptr = getelementptr i8, i8* %2, i64 0, !dbg !2750
  %3 = bitcast i8* %add.ptr to %struct.clk_fixed_rate*, !dbg !2750
  store %struct.clk_fixed_rate* %3, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2751
  %4 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %tmp, align 8, !dbg !2750
  store %struct.clk_fixed_rate* %4, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2753
  %5 = load %struct.clk_hw*, %struct.clk_hw** %hw.addr, align 8, !dbg !2754
  call void @clk_hw_unregister(%struct.clk_hw* %5) #8, !dbg !2755
  %6 = load %struct.clk_fixed_rate*, %struct.clk_fixed_rate** %fixed, align 8, !dbg !2756
  %7 = bitcast %struct.clk_fixed_rate* %6 to i8*, !dbg !2756
  call void @kfree(i8* %7) #8, !dbg !2757
  ret void, !dbg !2758
}

; Function Attrs: noredzone
declare dso_local void @clk_hw_unregister(%struct.clk_hw*) #3

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define dso_local void @of_fixed_clk_setup(%struct.device_node* %node) #4 section ".init.text" !dbg !2759 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2764
  %call = call %struct.clk_hw* @_of_fixed_clk_setup(%struct.device_node* %0) #8, !dbg !2765
  ret void, !dbg !2766
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.clk_hw* @_of_fixed_clk_setup(%struct.device_node* %node) #0 !dbg !2767 {
entry:
  %retval = alloca %struct.clk_hw*, align 8
  %node.addr = alloca %struct.device_node*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  %clk_name = alloca i8*, align 8
  %rate = alloca i32, align 4
  %accuracy = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2770, metadata !DIExpression()), !dbg !2771
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2772, metadata !DIExpression()), !dbg !2773
  call void @llvm.dbg.declare(metadata i8** %clk_name, metadata !2774, metadata !DIExpression()), !dbg !2775
  %0 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2776
  %name = getelementptr inbounds %struct.device_node, %struct.device_node* %0, i32 0, i32 0, !dbg !2777
  %1 = load i8*, i8** %name, align 8, !dbg !2777
  store i8* %1, i8** %clk_name, align 8, !dbg !2775
  call void @llvm.dbg.declare(metadata i32* %rate, metadata !2778, metadata !DIExpression()), !dbg !2779
  call void @llvm.dbg.declare(metadata i32* %accuracy, metadata !2780, metadata !DIExpression()), !dbg !2781
  store i32 0, i32* %accuracy, align 4, !dbg !2781
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2782, metadata !DIExpression()), !dbg !2783
  %2 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2784
  %call = call i32 @of_property_read_u32(%struct.device_node* %2, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0), i32* %rate) #8, !dbg !2786
  %tobool = icmp ne i32 %call, 0, !dbg !2786
  br i1 %tobool, label %if.then, label %if.end, !dbg !2787

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -5) #8, !dbg !2788
  %3 = bitcast i8* %call1 to %struct.clk_hw*, !dbg !2788
  store %struct.clk_hw* %3, %struct.clk_hw** %retval, align 8, !dbg !2789
  br label %return, !dbg !2789

if.end:                                           ; preds = %entry
  %4 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2790
  %call2 = call i32 @of_property_read_u32(%struct.device_node* %4, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0), i32* %accuracy) #8, !dbg !2791
  %5 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2792
  %call3 = call i32 @of_property_read_string(%struct.device_node* %5, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.3, i64 0, i64 0), i8** %clk_name) #8, !dbg !2793
  %6 = load i8*, i8** %clk_name, align 8, !dbg !2794
  %7 = load i32, i32* %rate, align 4, !dbg !2794
  %conv = zext i32 %7 to i64, !dbg !2794
  %8 = load i32, i32* %accuracy, align 4, !dbg !2794
  %conv4 = zext i32 %8 to i64, !dbg !2794
  %call5 = call %struct.clk_hw* @__clk_hw_register_fixed_rate(%struct.device* null, %struct.device_node* null, i8* %6, i8* null, %struct.clk_hw* null, %struct.clk_parent_data* null, i64 0, i64 %conv, i64 %conv4, i64 0) #8, !dbg !2794
  store %struct.clk_hw* %call5, %struct.clk_hw** %hw, align 8, !dbg !2795
  %9 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2796
  %10 = bitcast %struct.clk_hw* %9 to i8*, !dbg !2796
  %call6 = call zeroext i1 @IS_ERR(i8* %10) #8, !dbg !2798
  br i1 %call6, label %if.then7, label %if.end8, !dbg !2799

if.then7:                                         ; preds = %if.end
  %11 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2800
  store %struct.clk_hw* %11, %struct.clk_hw** %retval, align 8, !dbg !2801
  br label %return, !dbg !2801

if.end8:                                          ; preds = %if.end
  %12 = load %struct.device_node*, %struct.device_node** %node.addr, align 8, !dbg !2802
  %13 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2803
  %14 = bitcast %struct.clk_hw* %13 to i8*, !dbg !2803
  %call9 = call i32 @of_clk_add_hw_provider(%struct.device_node* %12, %struct.clk_hw* (%struct.of_phandle_args*, i8*)* @of_clk_hw_simple_get, i8* %14) #8, !dbg !2804
  store i32 %call9, i32* %ret, align 4, !dbg !2805
  %15 = load i32, i32* %ret, align 4, !dbg !2806
  %tobool10 = icmp ne i32 %15, 0, !dbg !2806
  br i1 %tobool10, label %if.then11, label %if.end14, !dbg !2808

if.then11:                                        ; preds = %if.end8
  %16 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2809
  call void @clk_hw_unregister_fixed_rate(%struct.clk_hw* %16) #8, !dbg !2811
  %17 = load i32, i32* %ret, align 4, !dbg !2812
  %conv12 = sext i32 %17 to i64, !dbg !2812
  %call13 = call i8* @ERR_PTR(i64 %conv12) #8, !dbg !2813
  %18 = bitcast i8* %call13 to %struct.clk_hw*, !dbg !2813
  store %struct.clk_hw* %18, %struct.clk_hw** %retval, align 8, !dbg !2814
  br label %return, !dbg !2814

if.end14:                                         ; preds = %if.end8
  %19 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2815
  store %struct.clk_hw* %19, %struct.clk_hw** %retval, align 8, !dbg !2816
  br label %return, !dbg !2816

return:                                           ; preds = %if.end14, %if.then11, %if.then7, %if.then
  %20 = load %struct.clk_hw*, %struct.clk_hw** %retval, align 8, !dbg !2817
  ret %struct.clk_hw* %20, !dbg !2817
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fixed_clk_driver_init() #4 section ".init.text" !dbg !2818 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @of_fixed_clk_driver, %struct.module* null) #8, !dbg !2821
  ret i32 %call, !dbg !2821
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #3

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #6

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #7 !dbg !2822 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2826, metadata !DIExpression()), !dbg !2831
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2833, metadata !DIExpression()), !dbg !2834
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2835, metadata !DIExpression()), !dbg !2836
  %0 = load i64, i64* %size.addr, align 8, !dbg !2837
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !2839
  br i1 %1, label %if.then, label %if.end447, !dbg !2840

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !2841
  %tobool = icmp ne i64 %2, 0, !dbg !2841
  br i1 %tobool, label %if.end, label %if.then1, !dbg !2844

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !2845
  br label %return, !dbg !2845

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !2846
  %cmp = icmp ult i64 %3, 4096, !dbg !2848
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !2849

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !2850
  br label %return, !dbg !2850

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub = sub i64 %4, 1, !dbg !2851
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !2851
  br i1 %5, label %cond.true, label %cond.false442, !dbg !2851

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub4 = sub i64 %6, 1, !dbg !2851
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !2851
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !2851

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub6 = sub i64 %8, 1, !dbg !2851
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !2851
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !2851

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !2851

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub9 = sub i64 %9, 1, !dbg !2851
  %and = and i64 %sub9, -9223372036854775808, !dbg !2851
  %tobool10 = icmp ne i64 %and, 0, !dbg !2851
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !2851

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !2851

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub13 = sub i64 %10, 1, !dbg !2851
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !2851
  %tobool15 = icmp ne i64 %and14, 0, !dbg !2851
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !2851

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !2851

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub18 = sub i64 %11, 1, !dbg !2851
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !2851
  %tobool20 = icmp ne i64 %and19, 0, !dbg !2851
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !2851

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !2851

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub23 = sub i64 %12, 1, !dbg !2851
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !2851
  %tobool25 = icmp ne i64 %and24, 0, !dbg !2851
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !2851

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !2851

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub28 = sub i64 %13, 1, !dbg !2851
  %and29 = and i64 %sub28, 576460752303423488, !dbg !2851
  %tobool30 = icmp ne i64 %and29, 0, !dbg !2851
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !2851

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !2851

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub33 = sub i64 %14, 1, !dbg !2851
  %and34 = and i64 %sub33, 288230376151711744, !dbg !2851
  %tobool35 = icmp ne i64 %and34, 0, !dbg !2851
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !2851

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !2851

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub38 = sub i64 %15, 1, !dbg !2851
  %and39 = and i64 %sub38, 144115188075855872, !dbg !2851
  %tobool40 = icmp ne i64 %and39, 0, !dbg !2851
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !2851

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !2851

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub43 = sub i64 %16, 1, !dbg !2851
  %and44 = and i64 %sub43, 72057594037927936, !dbg !2851
  %tobool45 = icmp ne i64 %and44, 0, !dbg !2851
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !2851

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !2851

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub48 = sub i64 %17, 1, !dbg !2851
  %and49 = and i64 %sub48, 36028797018963968, !dbg !2851
  %tobool50 = icmp ne i64 %and49, 0, !dbg !2851
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !2851

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !2851

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub53 = sub i64 %18, 1, !dbg !2851
  %and54 = and i64 %sub53, 18014398509481984, !dbg !2851
  %tobool55 = icmp ne i64 %and54, 0, !dbg !2851
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !2851

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !2851

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub58 = sub i64 %19, 1, !dbg !2851
  %and59 = and i64 %sub58, 9007199254740992, !dbg !2851
  %tobool60 = icmp ne i64 %and59, 0, !dbg !2851
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !2851

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !2851

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub63 = sub i64 %20, 1, !dbg !2851
  %and64 = and i64 %sub63, 4503599627370496, !dbg !2851
  %tobool65 = icmp ne i64 %and64, 0, !dbg !2851
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !2851

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !2851

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub68 = sub i64 %21, 1, !dbg !2851
  %and69 = and i64 %sub68, 2251799813685248, !dbg !2851
  %tobool70 = icmp ne i64 %and69, 0, !dbg !2851
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !2851

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !2851

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub73 = sub i64 %22, 1, !dbg !2851
  %and74 = and i64 %sub73, 1125899906842624, !dbg !2851
  %tobool75 = icmp ne i64 %and74, 0, !dbg !2851
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !2851

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !2851

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub78 = sub i64 %23, 1, !dbg !2851
  %and79 = and i64 %sub78, 562949953421312, !dbg !2851
  %tobool80 = icmp ne i64 %and79, 0, !dbg !2851
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !2851

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !2851

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub83 = sub i64 %24, 1, !dbg !2851
  %and84 = and i64 %sub83, 281474976710656, !dbg !2851
  %tobool85 = icmp ne i64 %and84, 0, !dbg !2851
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !2851

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !2851

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub88 = sub i64 %25, 1, !dbg !2851
  %and89 = and i64 %sub88, 140737488355328, !dbg !2851
  %tobool90 = icmp ne i64 %and89, 0, !dbg !2851
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !2851

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !2851

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub93 = sub i64 %26, 1, !dbg !2851
  %and94 = and i64 %sub93, 70368744177664, !dbg !2851
  %tobool95 = icmp ne i64 %and94, 0, !dbg !2851
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !2851

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !2851

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub98 = sub i64 %27, 1, !dbg !2851
  %and99 = and i64 %sub98, 35184372088832, !dbg !2851
  %tobool100 = icmp ne i64 %and99, 0, !dbg !2851
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !2851

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !2851

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub103 = sub i64 %28, 1, !dbg !2851
  %and104 = and i64 %sub103, 17592186044416, !dbg !2851
  %tobool105 = icmp ne i64 %and104, 0, !dbg !2851
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !2851

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !2851

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub108 = sub i64 %29, 1, !dbg !2851
  %and109 = and i64 %sub108, 8796093022208, !dbg !2851
  %tobool110 = icmp ne i64 %and109, 0, !dbg !2851
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !2851

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !2851

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub113 = sub i64 %30, 1, !dbg !2851
  %and114 = and i64 %sub113, 4398046511104, !dbg !2851
  %tobool115 = icmp ne i64 %and114, 0, !dbg !2851
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !2851

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !2851

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub118 = sub i64 %31, 1, !dbg !2851
  %and119 = and i64 %sub118, 2199023255552, !dbg !2851
  %tobool120 = icmp ne i64 %and119, 0, !dbg !2851
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !2851

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !2851

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub123 = sub i64 %32, 1, !dbg !2851
  %and124 = and i64 %sub123, 1099511627776, !dbg !2851
  %tobool125 = icmp ne i64 %and124, 0, !dbg !2851
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !2851

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !2851

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub128 = sub i64 %33, 1, !dbg !2851
  %and129 = and i64 %sub128, 549755813888, !dbg !2851
  %tobool130 = icmp ne i64 %and129, 0, !dbg !2851
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !2851

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !2851

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub133 = sub i64 %34, 1, !dbg !2851
  %and134 = and i64 %sub133, 274877906944, !dbg !2851
  %tobool135 = icmp ne i64 %and134, 0, !dbg !2851
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !2851

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !2851

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub138 = sub i64 %35, 1, !dbg !2851
  %and139 = and i64 %sub138, 137438953472, !dbg !2851
  %tobool140 = icmp ne i64 %and139, 0, !dbg !2851
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !2851

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !2851

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub143 = sub i64 %36, 1, !dbg !2851
  %and144 = and i64 %sub143, 68719476736, !dbg !2851
  %tobool145 = icmp ne i64 %and144, 0, !dbg !2851
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !2851

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !2851

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub148 = sub i64 %37, 1, !dbg !2851
  %and149 = and i64 %sub148, 34359738368, !dbg !2851
  %tobool150 = icmp ne i64 %and149, 0, !dbg !2851
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !2851

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !2851

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub153 = sub i64 %38, 1, !dbg !2851
  %and154 = and i64 %sub153, 17179869184, !dbg !2851
  %tobool155 = icmp ne i64 %and154, 0, !dbg !2851
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !2851

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !2851

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub158 = sub i64 %39, 1, !dbg !2851
  %and159 = and i64 %sub158, 8589934592, !dbg !2851
  %tobool160 = icmp ne i64 %and159, 0, !dbg !2851
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !2851

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !2851

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub163 = sub i64 %40, 1, !dbg !2851
  %and164 = and i64 %sub163, 4294967296, !dbg !2851
  %tobool165 = icmp ne i64 %and164, 0, !dbg !2851
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !2851

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !2851

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub168 = sub i64 %41, 1, !dbg !2851
  %and169 = and i64 %sub168, 2147483648, !dbg !2851
  %tobool170 = icmp ne i64 %and169, 0, !dbg !2851
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !2851

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !2851

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub173 = sub i64 %42, 1, !dbg !2851
  %and174 = and i64 %sub173, 1073741824, !dbg !2851
  %tobool175 = icmp ne i64 %and174, 0, !dbg !2851
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !2851

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !2851

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub178 = sub i64 %43, 1, !dbg !2851
  %and179 = and i64 %sub178, 536870912, !dbg !2851
  %tobool180 = icmp ne i64 %and179, 0, !dbg !2851
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !2851

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !2851

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub183 = sub i64 %44, 1, !dbg !2851
  %and184 = and i64 %sub183, 268435456, !dbg !2851
  %tobool185 = icmp ne i64 %and184, 0, !dbg !2851
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !2851

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !2851

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub188 = sub i64 %45, 1, !dbg !2851
  %and189 = and i64 %sub188, 134217728, !dbg !2851
  %tobool190 = icmp ne i64 %and189, 0, !dbg !2851
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !2851

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !2851

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub193 = sub i64 %46, 1, !dbg !2851
  %and194 = and i64 %sub193, 67108864, !dbg !2851
  %tobool195 = icmp ne i64 %and194, 0, !dbg !2851
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !2851

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !2851

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub198 = sub i64 %47, 1, !dbg !2851
  %and199 = and i64 %sub198, 33554432, !dbg !2851
  %tobool200 = icmp ne i64 %and199, 0, !dbg !2851
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !2851

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !2851

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub203 = sub i64 %48, 1, !dbg !2851
  %and204 = and i64 %sub203, 16777216, !dbg !2851
  %tobool205 = icmp ne i64 %and204, 0, !dbg !2851
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !2851

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !2851

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub208 = sub i64 %49, 1, !dbg !2851
  %and209 = and i64 %sub208, 8388608, !dbg !2851
  %tobool210 = icmp ne i64 %and209, 0, !dbg !2851
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !2851

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !2851

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub213 = sub i64 %50, 1, !dbg !2851
  %and214 = and i64 %sub213, 4194304, !dbg !2851
  %tobool215 = icmp ne i64 %and214, 0, !dbg !2851
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !2851

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !2851

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub218 = sub i64 %51, 1, !dbg !2851
  %and219 = and i64 %sub218, 2097152, !dbg !2851
  %tobool220 = icmp ne i64 %and219, 0, !dbg !2851
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !2851

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !2851

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub223 = sub i64 %52, 1, !dbg !2851
  %and224 = and i64 %sub223, 1048576, !dbg !2851
  %tobool225 = icmp ne i64 %and224, 0, !dbg !2851
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !2851

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !2851

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub228 = sub i64 %53, 1, !dbg !2851
  %and229 = and i64 %sub228, 524288, !dbg !2851
  %tobool230 = icmp ne i64 %and229, 0, !dbg !2851
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !2851

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !2851

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub233 = sub i64 %54, 1, !dbg !2851
  %and234 = and i64 %sub233, 262144, !dbg !2851
  %tobool235 = icmp ne i64 %and234, 0, !dbg !2851
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !2851

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !2851

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub238 = sub i64 %55, 1, !dbg !2851
  %and239 = and i64 %sub238, 131072, !dbg !2851
  %tobool240 = icmp ne i64 %and239, 0, !dbg !2851
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !2851

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !2851

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub243 = sub i64 %56, 1, !dbg !2851
  %and244 = and i64 %sub243, 65536, !dbg !2851
  %tobool245 = icmp ne i64 %and244, 0, !dbg !2851
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !2851

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !2851

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub248 = sub i64 %57, 1, !dbg !2851
  %and249 = and i64 %sub248, 32768, !dbg !2851
  %tobool250 = icmp ne i64 %and249, 0, !dbg !2851
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !2851

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !2851

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub253 = sub i64 %58, 1, !dbg !2851
  %and254 = and i64 %sub253, 16384, !dbg !2851
  %tobool255 = icmp ne i64 %and254, 0, !dbg !2851
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !2851

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !2851

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub258 = sub i64 %59, 1, !dbg !2851
  %and259 = and i64 %sub258, 8192, !dbg !2851
  %tobool260 = icmp ne i64 %and259, 0, !dbg !2851
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !2851

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !2851

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub263 = sub i64 %60, 1, !dbg !2851
  %and264 = and i64 %sub263, 4096, !dbg !2851
  %tobool265 = icmp ne i64 %and264, 0, !dbg !2851
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !2851

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !2851

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub268 = sub i64 %61, 1, !dbg !2851
  %and269 = and i64 %sub268, 2048, !dbg !2851
  %tobool270 = icmp ne i64 %and269, 0, !dbg !2851
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !2851

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !2851

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub273 = sub i64 %62, 1, !dbg !2851
  %and274 = and i64 %sub273, 1024, !dbg !2851
  %tobool275 = icmp ne i64 %and274, 0, !dbg !2851
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !2851

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !2851

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub278 = sub i64 %63, 1, !dbg !2851
  %and279 = and i64 %sub278, 512, !dbg !2851
  %tobool280 = icmp ne i64 %and279, 0, !dbg !2851
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !2851

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !2851

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub283 = sub i64 %64, 1, !dbg !2851
  %and284 = and i64 %sub283, 256, !dbg !2851
  %tobool285 = icmp ne i64 %and284, 0, !dbg !2851
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !2851

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !2851

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub288 = sub i64 %65, 1, !dbg !2851
  %and289 = and i64 %sub288, 128, !dbg !2851
  %tobool290 = icmp ne i64 %and289, 0, !dbg !2851
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !2851

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !2851

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub293 = sub i64 %66, 1, !dbg !2851
  %and294 = and i64 %sub293, 64, !dbg !2851
  %tobool295 = icmp ne i64 %and294, 0, !dbg !2851
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !2851

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !2851

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub298 = sub i64 %67, 1, !dbg !2851
  %and299 = and i64 %sub298, 32, !dbg !2851
  %tobool300 = icmp ne i64 %and299, 0, !dbg !2851
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !2851

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !2851

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub303 = sub i64 %68, 1, !dbg !2851
  %and304 = and i64 %sub303, 16, !dbg !2851
  %tobool305 = icmp ne i64 %and304, 0, !dbg !2851
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !2851

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !2851

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub308 = sub i64 %69, 1, !dbg !2851
  %and309 = and i64 %sub308, 8, !dbg !2851
  %tobool310 = icmp ne i64 %and309, 0, !dbg !2851
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !2851

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !2851

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub313 = sub i64 %70, 1, !dbg !2851
  %and314 = and i64 %sub313, 4, !dbg !2851
  %tobool315 = icmp ne i64 %and314, 0, !dbg !2851
  %71 = zext i1 %tobool315 to i64, !dbg !2851
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !2851
  br label %cond.end, !dbg !2851

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !2851
  br label %cond.end317, !dbg !2851

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !2851
  br label %cond.end319, !dbg !2851

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !2851
  br label %cond.end321, !dbg !2851

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !2851
  br label %cond.end323, !dbg !2851

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !2851
  br label %cond.end325, !dbg !2851

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !2851
  br label %cond.end327, !dbg !2851

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !2851
  br label %cond.end329, !dbg !2851

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !2851
  br label %cond.end331, !dbg !2851

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !2851
  br label %cond.end333, !dbg !2851

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !2851
  br label %cond.end335, !dbg !2851

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !2851
  br label %cond.end337, !dbg !2851

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !2851
  br label %cond.end339, !dbg !2851

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !2851
  br label %cond.end341, !dbg !2851

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !2851
  br label %cond.end343, !dbg !2851

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !2851
  br label %cond.end345, !dbg !2851

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !2851
  br label %cond.end347, !dbg !2851

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !2851
  br label %cond.end349, !dbg !2851

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !2851
  br label %cond.end351, !dbg !2851

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !2851
  br label %cond.end353, !dbg !2851

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !2851
  br label %cond.end355, !dbg !2851

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !2851
  br label %cond.end357, !dbg !2851

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !2851
  br label %cond.end359, !dbg !2851

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !2851
  br label %cond.end361, !dbg !2851

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !2851
  br label %cond.end363, !dbg !2851

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !2851
  br label %cond.end365, !dbg !2851

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !2851
  br label %cond.end367, !dbg !2851

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !2851
  br label %cond.end369, !dbg !2851

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !2851
  br label %cond.end371, !dbg !2851

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !2851
  br label %cond.end373, !dbg !2851

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !2851
  br label %cond.end375, !dbg !2851

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !2851
  br label %cond.end377, !dbg !2851

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !2851
  br label %cond.end379, !dbg !2851

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !2851
  br label %cond.end381, !dbg !2851

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !2851
  br label %cond.end383, !dbg !2851

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !2851
  br label %cond.end385, !dbg !2851

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !2851
  br label %cond.end387, !dbg !2851

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !2851
  br label %cond.end389, !dbg !2851

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !2851
  br label %cond.end391, !dbg !2851

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !2851
  br label %cond.end393, !dbg !2851

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !2851
  br label %cond.end395, !dbg !2851

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !2851
  br label %cond.end397, !dbg !2851

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !2851
  br label %cond.end399, !dbg !2851

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !2851
  br label %cond.end401, !dbg !2851

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !2851
  br label %cond.end403, !dbg !2851

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !2851
  br label %cond.end405, !dbg !2851

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !2851
  br label %cond.end407, !dbg !2851

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !2851
  br label %cond.end409, !dbg !2851

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !2851
  br label %cond.end411, !dbg !2851

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !2851
  br label %cond.end413, !dbg !2851

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !2851
  br label %cond.end415, !dbg !2851

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !2851
  br label %cond.end417, !dbg !2851

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !2851
  br label %cond.end419, !dbg !2851

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !2851
  br label %cond.end421, !dbg !2851

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !2851
  br label %cond.end423, !dbg !2851

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !2851
  br label %cond.end425, !dbg !2851

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !2851
  br label %cond.end427, !dbg !2851

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !2851
  br label %cond.end429, !dbg !2851

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !2851
  br label %cond.end431, !dbg !2851

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !2851
  br label %cond.end433, !dbg !2851

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !2851
  br label %cond.end435, !dbg !2851

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !2851
  br label %cond.end437, !dbg !2851

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !2851
  br label %cond.end440, !dbg !2851

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !2851

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !2851
  br label %cond.end444, !dbg !2851

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !2851
  %sub443 = sub i64 %72, 1, !dbg !2851
  %call = call i32 @__ilog2_u64(i64 %sub443) #10, !dbg !2851
  br label %cond.end444, !dbg !2851

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !2851
  %sub446 = sub i32 %cond445, 12, !dbg !2852
  %add = add i32 %sub446, 1, !dbg !2853
  store i32 %add, i32* %retval, align 4, !dbg !2854
  br label %return, !dbg !2854

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !2855
  %dec = add i64 %73, -1, !dbg !2855
  store i64 %dec, i64* %size.addr, align 8, !dbg !2855
  %74 = load i64, i64* %size.addr, align 8, !dbg !2856
  %shr = lshr i64 %74, 12, !dbg !2856
  store i64 %shr, i64* %size.addr, align 8, !dbg !2856
  %75 = load i64, i64* %size.addr, align 8, !dbg !2857
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2834
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !2858
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !2859
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #12, !dbg !2858, !srcloc !2860
  store i32 %78, i32* %bitpos.i, align 4, !dbg !2858
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !2861
  %add.i = add i32 %79, 1, !dbg !2862
  store i32 %add.i, i32* %retval, align 4, !dbg !2863
  br label %return, !dbg !2863

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !2864
  ret i32 %80, !dbg !2864
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #7 !dbg !2865 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !2826, metadata !DIExpression()), !dbg !2869
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !2833, metadata !DIExpression()), !dbg !2871
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  %0 = load i64, i64* %n.addr, align 8, !dbg !2874
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !2871
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !2875
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !2876
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #12, !dbg !2875, !srcloc !2860
  store i32 %3, i32* %bitpos.i, align 4, !dbg !2875
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !2877
  %add.i = add i32 %4, 1, !dbg !2878
  %sub = sub i32 %add.i, 1, !dbg !2879
  ret i32 %sub, !dbg !2880
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !2881 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !2885, metadata !DIExpression()), !dbg !2886
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2887, metadata !DIExpression()), !dbg !2888
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2889, metadata !DIExpression()), !dbg !2890
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2891, metadata !DIExpression()), !dbg !2892
  %0 = load i8*, i8** %object.addr, align 8, !dbg !2893
  ret i8* %0, !dbg !2894
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #0 !dbg !2895 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2900, metadata !DIExpression()), !dbg !2901
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2904, metadata !DIExpression()), !dbg !2905
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2906
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2907
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2908
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #8, !dbg !2909
  ret i32 %call, !dbg !2910
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #3

; Function Attrs: noredzone
declare dso_local i32 @of_clk_add_hw_provider(%struct.device_node*, %struct.clk_hw* (%struct.of_phandle_args*, i8*)*, i8*) #3

; Function Attrs: noredzone
declare dso_local %struct.clk_hw* @of_clk_hw_simple_get(%struct.of_phandle_args*, i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #0 !dbg !2911 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2914, metadata !DIExpression()), !dbg !2915
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2916, metadata !DIExpression()), !dbg !2917
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2922, metadata !DIExpression()), !dbg !2923
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2924
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2925
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !2926
  %3 = load i64, i64* %sz.addr, align 8, !dbg !2927
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #8, !dbg !2928
  store i32 %call, i32* %ret, align 4, !dbg !2923
  %4 = load i32, i32* %ret, align 4, !dbg !2929
  %cmp = icmp sge i32 %4, 0, !dbg !2931
  br i1 %cmp, label %if.then, label %if.else, !dbg !2932

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2933
  br label %return, !dbg !2933

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !2934
  store i32 %5, i32* %retval, align 4, !dbg !2935
  br label %return, !dbg !2935

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2936
  ret i32 %6, !dbg !2936
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #3

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fixed_clk_probe(%struct.platform_device* %pdev) #0 !dbg !2937 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2938, metadata !DIExpression()), !dbg !2939
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2940, metadata !DIExpression()), !dbg !2941
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2942
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2943
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2944
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2944
  %call = call %struct.clk_hw* @_of_fixed_clk_setup(%struct.device_node* %1) #8, !dbg !2945
  store %struct.clk_hw* %call, %struct.clk_hw** %hw, align 8, !dbg !2946
  %2 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2947
  %3 = bitcast %struct.clk_hw* %2 to i8*, !dbg !2947
  %call1 = call zeroext i1 @IS_ERR(i8* %3) #8, !dbg !2949
  br i1 %call1, label %if.then, label %if.end, !dbg !2950

if.then:                                          ; preds = %entry
  %4 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2951
  %5 = bitcast %struct.clk_hw* %4 to i8*, !dbg !2951
  %call2 = call i64 @PTR_ERR(i8* %5) #8, !dbg !2952
  %conv = trunc i64 %call2 to i32, !dbg !2952
  store i32 %conv, i32* %retval, align 4, !dbg !2953
  br label %return, !dbg !2953

if.end:                                           ; preds = %entry
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2954
  %7 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2955
  %8 = bitcast %struct.clk_hw* %7 to i8*, !dbg !2955
  call void @platform_set_drvdata(%struct.platform_device* %6, i8* %8) #8, !dbg !2956
  store i32 0, i32* %retval, align 4, !dbg !2957
  br label %return, !dbg !2957

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2958
  ret i32 %9, !dbg !2958
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_fixed_clk_remove(%struct.platform_device* %pdev) #0 !dbg !2959 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %hw = alloca %struct.clk_hw*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2960, metadata !DIExpression()), !dbg !2961
  call void @llvm.dbg.declare(metadata %struct.clk_hw** %hw, metadata !2962, metadata !DIExpression()), !dbg !2963
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2964
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #8, !dbg !2965
  %1 = bitcast i8* %call to %struct.clk_hw*, !dbg !2965
  store %struct.clk_hw* %1, %struct.clk_hw** %hw, align 8, !dbg !2963
  %2 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2966
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %2, i32 0, i32 3, !dbg !2967
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2968
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2968
  call void @of_clk_del_provider(%struct.device_node* %3) #8, !dbg !2969
  %4 = load %struct.clk_hw*, %struct.clk_hw** %hw, align 8, !dbg !2970
  call void @clk_hw_unregister_fixed_rate(%struct.clk_hw* %4) #8, !dbg !2971
  ret i32 0, !dbg !2972
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #0 !dbg !2973 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2976, metadata !DIExpression()), !dbg !2977
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2978
  %1 = ptrtoint i8* %0 to i64, !dbg !2979
  ret i64 %1, !dbg !2980
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #0 !dbg !2981 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2984, metadata !DIExpression()), !dbg !2985
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2986, metadata !DIExpression()), !dbg !2987
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2988
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2989
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2990
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #8, !dbg !2991
  ret void, !dbg !2992
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !2993 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2996, metadata !DIExpression()), !dbg !2997
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2998, metadata !DIExpression()), !dbg !2999
  %0 = load i8*, i8** %data.addr, align 8, !dbg !3000
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3001
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !3002
  store i8* %0, i8** %driver_data, align 8, !dbg !3003
  ret void, !dbg !3004
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #0 !dbg !3005 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3010, metadata !DIExpression()), !dbg !3011
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3012
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3013
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #8, !dbg !3014
  ret i8* %call, !dbg !3015
}

; Function Attrs: noredzone
declare dso_local void @of_clk_del_provider(%struct.device_node*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !3016 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3019, metadata !DIExpression()), !dbg !3020
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3021
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3022
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3022
  ret i8* %1, !dbg !3023
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { argmemonly nounwind willreturn }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { nounwind willreturn }
attributes #7 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #8 = { noredzone }
attributes #9 = { nounwind }
attributes #10 = { noredzone nounwind readnone }
attributes #11 = { noredzone nounwind }
attributes #12 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2239, !2240, !2241, !2242}
!llvm.ident = !{!2243}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "clk_fixed_rate_ops", scope: !2, file: !3, line: 46, type: !85, isLocal: false, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !57, globals: !199, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/clk/clk-fixed-rate.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50}
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
!57 = !{!58, !60, !61, !110, !196, !115}
!58 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !59, line: 148, baseType: !7)
!59 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!60 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!61 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !62, size: 64)
!62 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_fixed_rate", file: !63, line: 338, size: 384, elements: !64)
!63 = !DIFile(filename: "./include/linux/clk-provider.h", directory: "/home/lizy2001/genbc/linux")
!64 = !{!65, !193, !194, !195}
!65 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !62, file: !63, line: 339, baseType: !66, size: 192)
!66 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_hw", file: !63, line: 312, size: 192, elements: !67)
!67 = !{!68, !71, !74}
!68 = !DIDerivedType(tag: DW_TAG_member, name: "core", scope: !66, file: !63, line: 313, baseType: !69, size: 64)
!69 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !70, size: 64)
!70 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk_core", file: !63, line: 38, flags: DIFlagFwdDecl)
!71 = !DIDerivedType(tag: DW_TAG_member, name: "clk", scope: !66, file: !63, line: 314, baseType: !72, size: 64, offset: 64)
!72 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !73, size: 64)
!73 = !DICompositeType(tag: DW_TAG_structure_type, name: "clk", file: !63, line: 36, flags: DIFlagFwdDecl)
!74 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !66, file: !63, line: 315, baseType: !75, size: 64, offset: 128)
!75 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !76, size: 64)
!76 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !77)
!77 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_init_data", file: !63, line: 285, size: 448, elements: !78)
!78 = !{!79, !83, !175, !178, !189, !191, !192}
!79 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !77, file: !63, line: 286, baseType: !80, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !82)
!82 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!83 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !77, file: !63, line: 287, baseType: !84, size: 64, offset: 64)
!84 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !86)
!86 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_ops", file: !63, line: 220, size: 1600, elements: !87)
!87 = !{!88, !94, !98, !99, !100, !101, !102, !103, !104, !105, !106, !111, !117, !129, !138, !142, !146, !150, !151, !152, !156, !165, !166, !167, !168}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !86, file: !63, line: 221, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DISubroutineType(types: !91)
!91 = !{!92, !93}
!92 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !66, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare", scope: !86, file: !63, line: 222, baseType: !95, size: 64, offset: 64)
!95 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!96 = !DISubroutineType(types: !97)
!97 = !{null, !93}
!98 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !86, file: !63, line: 223, baseType: !89, size: 64, offset: 128)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_unused", scope: !86, file: !63, line: 224, baseType: !95, size: 64, offset: 192)
!100 = !DIDerivedType(tag: DW_TAG_member, name: "enable", scope: !86, file: !63, line: 225, baseType: !89, size: 64, offset: 256)
!101 = !DIDerivedType(tag: DW_TAG_member, name: "disable", scope: !86, file: !63, line: 226, baseType: !95, size: 64, offset: 320)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "is_enabled", scope: !86, file: !63, line: 227, baseType: !89, size: 64, offset: 384)
!103 = !DIDerivedType(tag: DW_TAG_member, name: "disable_unused", scope: !86, file: !63, line: 228, baseType: !95, size: 64, offset: 448)
!104 = !DIDerivedType(tag: DW_TAG_member, name: "save_context", scope: !86, file: !63, line: 229, baseType: !89, size: 64, offset: 512)
!105 = !DIDerivedType(tag: DW_TAG_member, name: "restore_context", scope: !86, file: !63, line: 230, baseType: !95, size: 64, offset: 576)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_rate", scope: !86, file: !63, line: 231, baseType: !107, size: 64, offset: 640)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!108 = !DISubroutineType(types: !109)
!109 = !{!110, !93, !110}
!110 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "round_rate", scope: !86, file: !63, line: 233, baseType: !112, size: 64, offset: 704)
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!113 = !DISubroutineType(types: !114)
!114 = !{!115, !93, !110, !116}
!115 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!116 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!117 = !DIDerivedType(tag: DW_TAG_member, name: "determine_rate", scope: !86, file: !63, line: 235, baseType: !118, size: 64, offset: 768)
!118 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !119, size: 64)
!119 = !DISubroutineType(types: !120)
!120 = !{!92, !93, !121}
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_rate_request", file: !63, line: 55, size: 320, elements: !123)
!123 = !{!124, !125, !126, !127, !128}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "rate", scope: !122, file: !63, line: 56, baseType: !110, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "min_rate", scope: !122, file: !63, line: 57, baseType: !110, size: 64, offset: 64)
!126 = !DIDerivedType(tag: DW_TAG_member, name: "max_rate", scope: !122, file: !63, line: 58, baseType: !110, size: 64, offset: 128)
!127 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_rate", scope: !122, file: !63, line: 59, baseType: !110, size: 64, offset: 192)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "best_parent_hw", scope: !122, file: !63, line: 60, baseType: !93, size: 64, offset: 256)
!129 = !DIDerivedType(tag: DW_TAG_member, name: "set_parent", scope: !86, file: !63, line: 237, baseType: !130, size: 64, offset: 832)
!130 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !131, size: 64)
!131 = !DISubroutineType(types: !132)
!132 = !{!92, !93, !133}
!133 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !134, line: 17, baseType: !135)
!134 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !136, line: 21, baseType: !137)
!136 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!137 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!138 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !86, file: !63, line: 238, baseType: !139, size: 64, offset: 896)
!139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !140, size: 64)
!140 = !DISubroutineType(types: !141)
!141 = !{!133, !93}
!142 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate", scope: !86, file: !63, line: 239, baseType: !143, size: 64, offset: 960)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !144, size: 64)
!144 = !DISubroutineType(types: !145)
!145 = !{!92, !93, !110, !110}
!146 = !DIDerivedType(tag: DW_TAG_member, name: "set_rate_and_parent", scope: !86, file: !63, line: 241, baseType: !147, size: 64, offset: 1024)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!92, !93, !110, !110, !133}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "recalc_accuracy", scope: !86, file: !63, line: 244, baseType: !107, size: 64, offset: 1088)
!151 = !DIDerivedType(tag: DW_TAG_member, name: "get_phase", scope: !86, file: !63, line: 246, baseType: !89, size: 64, offset: 1152)
!152 = !DIDerivedType(tag: DW_TAG_member, name: "set_phase", scope: !86, file: !63, line: 247, baseType: !153, size: 64, offset: 1216)
!153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !154, size: 64)
!154 = !DISubroutineType(types: !155)
!155 = !{!92, !93, !92}
!156 = !DIDerivedType(tag: DW_TAG_member, name: "get_duty_cycle", scope: !86, file: !63, line: 248, baseType: !157, size: 64, offset: 1280)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!92, !93, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_duty", file: !63, line: 69, size: 64, elements: !162)
!162 = !{!163, !164}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !161, file: !63, line: 70, baseType: !7, size: 32)
!164 = !DIDerivedType(tag: DW_TAG_member, name: "den", scope: !161, file: !63, line: 71, baseType: !7, size: 32, offset: 32)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "set_duty_cycle", scope: !86, file: !63, line: 250, baseType: !157, size: 64, offset: 1344)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "init", scope: !86, file: !63, line: 252, baseType: !89, size: 64, offset: 1408)
!167 = !DIDerivedType(tag: DW_TAG_member, name: "terminate", scope: !86, file: !63, line: 253, baseType: !95, size: 64, offset: 1472)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "debug_init", scope: !86, file: !63, line: 254, baseType: !169, size: 64, offset: 1536)
!169 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !170, size: 64)
!170 = !DISubroutineType(types: !171)
!171 = !{null, !93, !172}
!172 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !173, size: 64)
!173 = !DICompositeType(tag: DW_TAG_structure_type, name: "dentry", file: !174, line: 21, flags: DIFlagFwdDecl)
!174 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!175 = !DIDerivedType(tag: DW_TAG_member, name: "parent_names", scope: !77, file: !63, line: 289, baseType: !176, size: 64, offset: 128)
!176 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !177, size: 64)
!177 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !80)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "parent_data", scope: !77, file: !63, line: 290, baseType: !179, size: 64, offset: 192)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !181)
!181 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "clk_parent_data", file: !63, line: 264, size: 256, elements: !182)
!182 = !{!183, !186, !187, !188}
!183 = !DIDerivedType(tag: DW_TAG_member, name: "hw", scope: !181, file: !63, line: 265, baseType: !184, size: 64)
!184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !185, size: 64)
!185 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !66)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "fw_name", scope: !181, file: !63, line: 266, baseType: !80, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !181, file: !63, line: 267, baseType: !80, size: 64, offset: 128)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !181, file: !63, line: 268, baseType: !92, size: 32, offset: 192)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "parent_hws", scope: !77, file: !63, line: 291, baseType: !190, size: 64, offset: 256)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "num_parents", scope: !77, file: !63, line: 292, baseType: !133, size: 8, offset: 320)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !77, file: !63, line: 293, baseType: !110, size: 64, offset: 384)
!193 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_rate", scope: !62, file: !63, line: 340, baseType: !110, size: 64, offset: 192)
!194 = !DIDerivedType(tag: DW_TAG_member, name: "fixed_accuracy", scope: !62, file: !63, line: 341, baseType: !110, size: 64, offset: 256)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !62, file: !63, line: 342, baseType: !110, size: 64, offset: 320)
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !198, line: 76, flags: DIFlagFwdDecl)
!198 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!199 = !{!0, !200, !218, !220, !2236}
!200 = !DIGlobalVariableExpression(var: !201, expr: !DIExpression())
!201 = distinct !DIGlobalVariable(name: "__of_table_fixed_clk", scope: !2, file: !3, line: 177, type: !202, isLocal: true, isDefinition: true)
!202 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !203)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !204, line: 262, size: 1600, elements: !205)
!204 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !210, !211, !215}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 263, baseType: !207, size: 256)
!207 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 256, elements: !208)
!208 = !{!209}
!209 = !DISubrange(count: 32)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !203, file: !204, line: 264, baseType: !207, size: 256, offset: 256)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !203, file: !204, line: 265, baseType: !212, size: 1024, offset: 512)
!212 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 1024, elements: !213)
!213 = !{!214}
!214 = !DISubrange(count: 128)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !203, file: !204, line: 266, baseType: !216, size: 64, offset: 1536)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!218 = !DIGlobalVariableExpression(var: !219, expr: !DIExpression())
!219 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_of_fixed_clk_driver_init165", scope: !2, file: !3, line: 219, type: !60, isLocal: true, isDefinition: true)
!220 = !DIGlobalVariableExpression(var: !221, expr: !DIExpression())
!221 = distinct !DIGlobalVariable(name: "of_fixed_clk_driver", scope: !2, file: !3, line: 211, type: !222, isLocal: true, isDefinition: true)
!222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !223, line: 200, size: 1600, elements: !224)
!223 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!224 = !{!225, !2223, !2224, !2228, !2232, !2233, !2234, !2235}
!225 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !222, file: !223, line: 201, baseType: !226, size: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!92, !229}
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !223, line: 22, size: 6208, elements: !231)
!231 = !{!232, !233, !234, !237, !2192, !2193, !2194, !2195, !2209, !2217, !2218, !2221}
!232 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !230, file: !223, line: 23, baseType: !80, size: 64)
!233 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !230, file: !223, line: 24, baseType: !92, size: 32, offset: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !230, file: !223, line: 25, baseType: !235, size: 8, offset: 96)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !59, line: 30, baseType: !236)
!236 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !230, file: !223, line: 26, baseType: !238, size: 5568, offset: 128)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !239)
!239 = !{!240, !1730, !1732, !1735, !1736, !1787, !1869, !1870, !1871, !1872, !1873, !1882, !1987, !2000, !2003, !2004, !2008, !2010, !2011, !2012, !2016, !2022, !2023, !2026, !2141, !2142, !2145, !2146, !2147, !2148, !2180, !2181, !2182, !2185, !2188, !2189, !2190, !2191}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !238, file: !30, line: 462, baseType: !241, size: 512)
!241 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !242, line: 64, size: 512, elements: !243)
!242 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!243 = !{!244, !245, !251, !253, !313, !1568, !1720, !1725, !1726, !1727, !1728, !1729}
!244 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !241, file: !242, line: 65, baseType: !80, size: 64)
!245 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !241, file: !242, line: 66, baseType: !246, size: 128, offset: 64)
!246 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !59, line: 178, size: 128, elements: !247)
!247 = !{!248, !250}
!248 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !246, file: !59, line: 179, baseType: !249, size: 64)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !246, size: 64)
!250 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !246, file: !59, line: 179, baseType: !249, size: 64, offset: 64)
!251 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !241, file: !242, line: 67, baseType: !252, size: 64, offset: 192)
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !241, size: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !241, file: !242, line: 68, baseType: !254, size: 64, offset: 256)
!254 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !255, size: 64)
!255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !242, line: 192, size: 704, elements: !256)
!256 = !{!257, !258, !274, !275}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !255, file: !242, line: 193, baseType: !246, size: 128)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !255, file: !242, line: 194, baseType: !259, offset: 128)
!259 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !260, line: 83, baseType: !261)
!260 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !260, line: 71, elements: !262)
!262 = !{!263}
!263 = !DIDerivedType(tag: DW_TAG_member, scope: !261, file: !260, line: 72, baseType: !264)
!264 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !261, file: !260, line: 72, elements: !265)
!265 = !{!266}
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !264, file: !260, line: 73, baseType: !267)
!267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !260, line: 20, elements: !268)
!268 = !{!269}
!269 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !267, file: !260, line: 21, baseType: !270)
!270 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !271, line: 25, baseType: !272)
!271 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !271, line: 25, elements: !273)
!273 = !{}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !255, file: !242, line: 195, baseType: !241, size: 512, offset: 128)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !255, file: !242, line: 196, baseType: !276, size: 64, offset: 640)
!276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !277, size: 64)
!277 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !278)
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !242, line: 156, size: 192, elements: !279)
!279 = !{!280, !285, !290}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !278, file: !242, line: 157, baseType: !281, size: 64)
!281 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !282)
!282 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!283 = !DISubroutineType(types: !284)
!284 = !{!92, !254, !252}
!285 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !278, file: !242, line: 158, baseType: !286, size: 64, offset: 64)
!286 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !287)
!287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !288, size: 64)
!288 = !DISubroutineType(types: !289)
!289 = !{!80, !254, !252}
!290 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !278, file: !242, line: 159, baseType: !291, size: 64, offset: 128)
!291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !292)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = !DISubroutineType(types: !294)
!294 = !{!92, !254, !252, !295}
!295 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !296, size: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !242, line: 148, size: 20736, elements: !297)
!297 = !{!298, !303, !307, !308, !312}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !296, file: !242, line: 149, baseType: !299, size: 192)
!299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 192, elements: !301)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !82, size: 64)
!301 = !{!302}
!302 = !DISubrange(count: 3)
!303 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !296, file: !242, line: 150, baseType: !304, size: 4096, offset: 192)
!304 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 4096, elements: !305)
!305 = !{!306}
!306 = !DISubrange(count: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !296, file: !242, line: 151, baseType: !92, size: 32, offset: 4288)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !296, file: !242, line: 152, baseType: !309, size: 16384, offset: 4320)
!309 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 16384, elements: !310)
!310 = !{!311}
!311 = !DISubrange(count: 2048)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !296, file: !242, line: 153, baseType: !92, size: 32, offset: 20704)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !241, file: !242, line: 69, baseType: !314, size: 64, offset: 320)
!314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !315, size: 64)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !242, line: 138, size: 448, elements: !316)
!316 = !{!317, !321, !349, !351, !1515, !1546, !1550}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !315, file: !242, line: 139, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!319 = !DISubroutineType(types: !320)
!320 = !{null, !252}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !315, file: !242, line: 140, baseType: !322, size: 64, offset: 64)
!322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !324)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !325, line: 230, size: 128, elements: !326)
!325 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327, !342}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !324, file: !325, line: 231, baseType: !328, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !329, size: 64)
!329 = !DISubroutineType(types: !330)
!330 = !{!331, !252, !335, !300}
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !59, line: 60, baseType: !332)
!332 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !333, line: 73, baseType: !334)
!333 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!334 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !333, line: 15, baseType: !115)
!335 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!336 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !325, line: 30, size: 128, elements: !337)
!337 = !{!338, !339}
!338 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !336, file: !325, line: 31, baseType: !80, size: 64)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !336, file: !325, line: 32, baseType: !340, size: 16, offset: 64)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !59, line: 19, baseType: !341)
!341 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !324, file: !325, line: 232, baseType: !343, size: 64, offset: 64)
!343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !344, size: 64)
!344 = !DISubroutineType(types: !345)
!345 = !{!331, !252, !335, !80, !346}
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !59, line: 55, baseType: !347)
!347 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !333, line: 72, baseType: !348)
!348 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !333, line: 16, baseType: !110)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !315, file: !242, line: 141, baseType: !350, size: 64, offset: 128)
!350 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !335, size: 64)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !315, file: !242, line: 142, baseType: !352, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !354, size: 64)
!354 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !355)
!355 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !325, line: 84, size: 320, elements: !356)
!356 = !{!357, !358, !362, !1512, !1513}
!357 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !355, file: !325, line: 85, baseType: !80, size: 64)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !355, file: !325, line: 86, baseType: !359, size: 64, offset: 64)
!359 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !360, size: 64)
!360 = !DISubroutineType(types: !361)
!361 = !{!340, !252, !335, !92}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !355, file: !325, line: 88, baseType: !363, size: 64, offset: 128)
!363 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !364, size: 64)
!364 = !DISubroutineType(types: !365)
!365 = !{!340, !252, !366, !92}
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !325, line: 168, size: 448, elements: !368)
!368 = !{!369, !370, !371, !372, !382, !383}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !367, file: !325, line: 169, baseType: !336, size: 128)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !367, file: !325, line: 170, baseType: !346, size: 64, offset: 128)
!371 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !367, file: !325, line: 171, baseType: !60, size: 64, offset: 192)
!372 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !367, file: !325, line: 172, baseType: !373, size: 64, offset: 256)
!373 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!374 = !DISubroutineType(types: !375)
!375 = !{!331, !376, !252, !366, !300, !379, !346}
!376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !377, size: 64)
!377 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !378, line: 526, flags: DIFlagFwdDecl)
!378 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!379 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !59, line: 46, baseType: !380)
!380 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !333, line: 88, baseType: !381)
!381 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !367, file: !325, line: 174, baseType: !373, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !367, file: !325, line: 176, baseType: !384, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !385, size: 64)
!385 = !DISubroutineType(types: !386)
!386 = !{!92, !376, !252, !366, !387}
!387 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !388, size: 64)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !389, line: 305, size: 1472, elements: !390)
!389 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!390 = !{!391, !392, !393, !394, !395, !403, !404, !1486, !1492, !1493, !1498, !1499, !1502, !1506, !1507, !1508, !1509, !1510}
!391 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !388, file: !389, line: 308, baseType: !110, size: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !388, file: !389, line: 309, baseType: !110, size: 64, offset: 64)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !388, file: !389, line: 313, baseType: !387, size: 64, offset: 128)
!394 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !388, file: !389, line: 313, baseType: !387, size: 64, offset: 192)
!395 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !388, file: !389, line: 315, baseType: !396, size: 192, align: 64, offset: 256)
!396 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !397, line: 24, size: 192, align: 64, elements: !398)
!397 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!398 = !{!399, !400, !402}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !396, file: !397, line: 25, baseType: !110, size: 64)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !396, file: !397, line: 26, baseType: !401, size: 64, offset: 64)
!401 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !396, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !396, file: !397, line: 27, baseType: !401, size: 64, offset: 128)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !388, file: !389, line: 323, baseType: !110, size: 64, offset: 448)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !388, file: !389, line: 327, baseType: !405, size: 64, offset: 512)
!405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !406, size: 64)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !389, line: 388, size: 7296, elements: !407)
!407 = !{!408, !1482}
!408 = !DIDerivedType(tag: DW_TAG_member, scope: !406, file: !389, line: 389, baseType: !409, size: 7296)
!409 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !406, file: !389, line: 389, size: 7296, elements: !410)
!410 = !{!411, !412, !416, !420, !424, !425, !426, !427, !428, !436, !441, !442, !443, !444, !453, !454, !455, !464, !465, !466, !467, !468, !469, !470, !471, !472, !473, !474, !475, !476, !477, !478, !479, !480, !481, !482, !483, !484, !485, !486, !490, !498, !501, !549, !550, !1453, !1454, !1457, !1460, !1461, !1464, !1465, !1466, !1469, !1481}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !409, file: !389, line: 390, baseType: !387, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !409, file: !389, line: 391, baseType: !413, size: 64, offset: 64)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !397, line: 31, size: 64, elements: !414)
!414 = !{!415}
!415 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !413, file: !397, line: 32, baseType: !401, size: 64)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !409, file: !389, line: 392, baseType: !417, size: 64, offset: 128)
!417 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !134, line: 23, baseType: !418)
!418 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !136, line: 31, baseType: !419)
!419 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !409, file: !389, line: 394, baseType: !421, size: 64, offset: 192)
!421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !422, size: 64)
!422 = !DISubroutineType(types: !423)
!423 = !{!110, !376, !110, !110, !110, !110}
!424 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !409, file: !389, line: 398, baseType: !110, size: 64, offset: 256)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !409, file: !389, line: 399, baseType: !110, size: 64, offset: 320)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !409, file: !389, line: 405, baseType: !110, size: 64, offset: 384)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !409, file: !389, line: 406, baseType: !110, size: 64, offset: 448)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !409, file: !389, line: 407, baseType: !429, size: 64, offset: 512)
!429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !430, size: 64)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !378, line: 286, baseType: !431)
!431 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !378, line: 286, size: 64, elements: !432)
!432 = !{!433}
!433 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !431, file: !378, line: 286, baseType: !434, size: 64)
!434 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !435, line: 18, baseType: !110)
!435 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!436 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !409, file: !389, line: 416, baseType: !437, size: 32, offset: 576)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !59, line: 168, baseType: !438)
!438 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 166, size: 32, elements: !439)
!439 = !{!440}
!440 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !438, file: !59, line: 167, baseType: !92, size: 32)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !409, file: !389, line: 428, baseType: !437, size: 32, offset: 608)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !409, file: !389, line: 437, baseType: !437, size: 32, offset: 640)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !409, file: !389, line: 447, baseType: !437, size: 32, offset: 672)
!444 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !409, file: !389, line: 450, baseType: !445, size: 64, offset: 704)
!445 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !446, line: 13, baseType: !447)
!446 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!447 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !59, line: 175, baseType: !448)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !59, line: 173, size: 64, elements: !449)
!449 = !{!450}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !448, file: !59, line: 174, baseType: !451, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !134, line: 22, baseType: !452)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !136, line: 30, baseType: !381)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !409, file: !389, line: 452, baseType: !92, size: 32, offset: 768)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !409, file: !389, line: 454, baseType: !259, offset: 800)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !409, file: !389, line: 457, baseType: !456, size: 256, offset: 832)
!456 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !457, line: 35, size: 256, elements: !458)
!457 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!458 = !{!459, !460, !461, !463}
!459 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !456, file: !457, line: 36, baseType: !445, size: 64)
!460 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !456, file: !457, line: 42, baseType: !445, size: 64, offset: 64)
!461 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !456, file: !457, line: 46, baseType: !462, offset: 128)
!462 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !260, line: 29, baseType: !267)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !456, file: !457, line: 47, baseType: !246, size: 128, offset: 128)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !409, file: !389, line: 459, baseType: !246, size: 128, offset: 1088)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !409, file: !389, line: 466, baseType: !110, size: 64, offset: 1216)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !409, file: !389, line: 467, baseType: !110, size: 64, offset: 1280)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !409, file: !389, line: 469, baseType: !110, size: 64, offset: 1344)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !409, file: !389, line: 470, baseType: !110, size: 64, offset: 1408)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !409, file: !389, line: 471, baseType: !447, size: 64, offset: 1472)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !409, file: !389, line: 472, baseType: !110, size: 64, offset: 1536)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !409, file: !389, line: 473, baseType: !110, size: 64, offset: 1600)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !409, file: !389, line: 474, baseType: !110, size: 64, offset: 1664)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !409, file: !389, line: 475, baseType: !110, size: 64, offset: 1728)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !409, file: !389, line: 477, baseType: !259, offset: 1792)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !409, file: !389, line: 478, baseType: !110, size: 64, offset: 1792)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !409, file: !389, line: 478, baseType: !110, size: 64, offset: 1856)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !409, file: !389, line: 478, baseType: !110, size: 64, offset: 1920)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !409, file: !389, line: 478, baseType: !110, size: 64, offset: 1984)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !409, file: !389, line: 479, baseType: !110, size: 64, offset: 2048)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !409, file: !389, line: 479, baseType: !110, size: 64, offset: 2112)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !409, file: !389, line: 479, baseType: !110, size: 64, offset: 2176)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !409, file: !389, line: 480, baseType: !110, size: 64, offset: 2240)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !409, file: !389, line: 480, baseType: !110, size: 64, offset: 2304)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !409, file: !389, line: 480, baseType: !110, size: 64, offset: 2368)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !409, file: !389, line: 480, baseType: !110, size: 64, offset: 2432)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !409, file: !389, line: 482, baseType: !487, size: 2816, offset: 2496)
!487 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 2816, elements: !488)
!488 = !{!489}
!489 = !DISubrange(count: 44)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !409, file: !389, line: 488, baseType: !491, size: 256, offset: 5312)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !492, line: 60, size: 256, elements: !493)
!492 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!493 = !{!494}
!494 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !491, file: !492, line: 61, baseType: !495, size: 256)
!495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !445, size: 256, elements: !496)
!496 = !{!497}
!497 = !DISubrange(count: 4)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !409, file: !389, line: 490, baseType: !499, size: 64, offset: 5568)
!499 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !500, size: 64)
!500 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !389, line: 490, flags: DIFlagFwdDecl)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !409, file: !389, line: 493, baseType: !502, size: 896, offset: 5632)
!502 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !503, line: 53, baseType: !504)
!503 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !503, line: 13, size: 896, elements: !505)
!505 = !{!506, !507, !508, !509, !512, !513, !520, !521, !541, !542, !545}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !504, file: !503, line: 18, baseType: !417, size: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !504, file: !503, line: 28, baseType: !447, size: 64, offset: 64)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !504, file: !503, line: 31, baseType: !456, size: 256, offset: 128)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !504, file: !503, line: 32, baseType: !510, size: 64, offset: 384)
!510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !511, size: 64)
!511 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !503, line: 32, flags: DIFlagFwdDecl)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !504, file: !503, line: 37, baseType: !341, size: 16, offset: 448)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !504, file: !503, line: 40, baseType: !514, size: 192, offset: 512)
!514 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !515, line: 53, size: 192, elements: !516)
!515 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!516 = !{!517, !518, !519}
!517 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !514, file: !515, line: 54, baseType: !445, size: 64)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !514, file: !515, line: 55, baseType: !259, offset: 64)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !514, file: !515, line: 59, baseType: !246, size: 128, offset: 64)
!520 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !504, file: !503, line: 41, baseType: !60, size: 64, offset: 704)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !504, file: !503, line: 42, baseType: !522, size: 64, offset: 768)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !524)
!524 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !525, line: 13, size: 896, elements: !526)
!525 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!526 = !{!527, !528, !529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540}
!527 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !524, file: !525, line: 14, baseType: !60, size: 64)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !524, file: !525, line: 15, baseType: !110, size: 64, offset: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !524, file: !525, line: 17, baseType: !110, size: 64, offset: 128)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !524, file: !525, line: 17, baseType: !110, size: 64, offset: 192)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !524, file: !525, line: 19, baseType: !115, size: 64, offset: 256)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !524, file: !525, line: 21, baseType: !115, size: 64, offset: 320)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !524, file: !525, line: 22, baseType: !115, size: 64, offset: 384)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !524, file: !525, line: 23, baseType: !115, size: 64, offset: 448)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !524, file: !525, line: 24, baseType: !115, size: 64, offset: 512)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !524, file: !525, line: 25, baseType: !115, size: 64, offset: 576)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !524, file: !525, line: 26, baseType: !115, size: 64, offset: 640)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !524, file: !525, line: 27, baseType: !115, size: 64, offset: 704)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !524, file: !525, line: 28, baseType: !115, size: 64, offset: 768)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !524, file: !525, line: 29, baseType: !115, size: 64, offset: 832)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !504, file: !503, line: 44, baseType: !437, size: 32, offset: 832)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !504, file: !503, line: 50, baseType: !543, size: 16, offset: 864)
!543 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !134, line: 19, baseType: !544)
!544 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !136, line: 24, baseType: !341)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !504, file: !503, line: 51, baseType: !546, size: 16, offset: 880)
!546 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !134, line: 18, baseType: !547)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !136, line: 23, baseType: !548)
!548 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !409, file: !389, line: 495, baseType: !110, size: 64, offset: 6528)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !409, file: !389, line: 497, baseType: !551, size: 64, offset: 6592)
!551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !552, size: 64)
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !389, line: 381, size: 384, elements: !553)
!553 = !{!554, !555, !1452}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !552, file: !389, line: 382, baseType: !437, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !552, file: !389, line: 383, baseType: !556, size: 128, offset: 64)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !389, line: 376, size: 128, elements: !557)
!557 = !{!558, !1450}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !556, file: !389, line: 377, baseType: !559, size: 64)
!559 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !560, size: 64)
!560 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !561, line: 640, size: 48640, elements: !562)
!561 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!562 = !{!563, !571, !573, !574, !580, !581, !582, !583, !584, !585, !586, !587, !591, !609, !620, !712, !713, !714, !725, !726, !728, !729, !730, !731, !737, !738, !739, !740, !741, !742, !743, !744, !745, !746, !747, !748, !749, !750, !751, !752, !810, !813, !814, !815, !816, !817, !818, !819, !820, !821, !822, !866, !868, !869, !870, !882, !884, !885, !886, !887, !888, !894, !895, !896, !897, !898, !899, !900, !912, !917, !922, !923, !924, !927, !931, !934, !937, !940, !943, !947, !950, !953, !959, !960, !961, !967, !968, !969, !970, !971, !980, !981, !982, !983, !984, !989, !990, !991, !994, !995, !998, !1001, !1004, !1007, !1010, !1013, !1014, !1094, !1097, !1100, !1101, !1104, !1105, !1106, !1112, !1113, !1114, !1127, !1128, !1129, !1139, !1144, !1147, !1245, !1246, !1247, !1248, !1249, !1250, !1251, !1252, !1267, !1268, !1269, !1270, !1271, !1272, !1273, !1274, !1275}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !560, file: !561, line: 646, baseType: !564, size: 128)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !565, line: 56, size: 128, elements: !566)
!565 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!566 = !{!567, !568}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !564, file: !565, line: 57, baseType: !110, size: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !564, file: !565, line: 58, baseType: !569, size: 32, offset: 64)
!569 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !134, line: 21, baseType: !570)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !136, line: 27, baseType: !7)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !560, file: !561, line: 649, baseType: !572, size: 64, offset: 128)
!572 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !115)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !560, file: !561, line: 657, baseType: !60, size: 64, offset: 192)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !560, file: !561, line: 658, baseType: !575, size: 32, offset: 256)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !576, line: 113, baseType: !577)
!576 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!577 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !576, line: 111, size: 32, elements: !578)
!578 = !{!579}
!579 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !577, file: !576, line: 112, baseType: !437, size: 32)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !560, file: !561, line: 660, baseType: !7, size: 32, offset: 288)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !560, file: !561, line: 661, baseType: !7, size: 32, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !560, file: !561, line: 684, baseType: !92, size: 32, offset: 352)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !560, file: !561, line: 686, baseType: !92, size: 32, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !560, file: !561, line: 687, baseType: !92, size: 32, offset: 416)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !560, file: !561, line: 688, baseType: !92, size: 32, offset: 448)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !560, file: !561, line: 689, baseType: !7, size: 32, offset: 480)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !560, file: !561, line: 691, baseType: !588, size: 64, offset: 512)
!588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!589 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !590)
!590 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !561, line: 691, flags: DIFlagFwdDecl)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !560, file: !561, line: 692, baseType: !592, size: 832, offset: 576)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !561, line: 451, size: 832, elements: !593)
!593 = !{!594, !599, !600, !601, !602, !603, !604, !605, !606, !607}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !592, file: !561, line: 453, baseType: !595, size: 128)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !561, line: 325, size: 128, elements: !596)
!596 = !{!597, !598}
!597 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !595, file: !561, line: 326, baseType: !110, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !595, file: !561, line: 327, baseType: !569, size: 32, offset: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !592, file: !561, line: 454, baseType: !396, size: 192, align: 64, offset: 128)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !592, file: !561, line: 455, baseType: !246, size: 128, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !592, file: !561, line: 456, baseType: !7, size: 32, offset: 448)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !592, file: !561, line: 458, baseType: !417, size: 64, offset: 512)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !592, file: !561, line: 459, baseType: !417, size: 64, offset: 576)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !592, file: !561, line: 460, baseType: !417, size: 64, offset: 640)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !592, file: !561, line: 461, baseType: !417, size: 64, offset: 704)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !592, file: !561, line: 463, baseType: !417, size: 64, offset: 768)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !592, file: !561, line: 465, baseType: !608, offset: 832)
!608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !561, line: 415, elements: !273)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !560, file: !561, line: 693, baseType: !610, size: 384, offset: 1408)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !561, line: 489, size: 384, elements: !611)
!611 = !{!612, !613, !614, !615, !616, !617, !618}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !610, file: !561, line: 490, baseType: !246, size: 128)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !610, file: !561, line: 491, baseType: !110, size: 64, offset: 128)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !610, file: !561, line: 492, baseType: !110, size: 64, offset: 192)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !610, file: !561, line: 493, baseType: !7, size: 32, offset: 256)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !610, file: !561, line: 494, baseType: !341, size: 16, offset: 288)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !610, file: !561, line: 495, baseType: !341, size: 16, offset: 304)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !610, file: !561, line: 497, baseType: !619, size: 64, offset: 320)
!619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !560, file: !561, line: 697, baseType: !621, size: 1792, offset: 1792)
!621 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !561, line: 507, size: 1792, elements: !622)
!622 = !{!623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !709, !710}
!623 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !621, file: !561, line: 508, baseType: !396, size: 192, align: 64)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !621, file: !561, line: 515, baseType: !417, size: 64, offset: 192)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !621, file: !561, line: 516, baseType: !417, size: 64, offset: 256)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !621, file: !561, line: 517, baseType: !417, size: 64, offset: 320)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !621, file: !561, line: 518, baseType: !417, size: 64, offset: 384)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !621, file: !561, line: 519, baseType: !417, size: 64, offset: 448)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !621, file: !561, line: 526, baseType: !451, size: 64, offset: 512)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !621, file: !561, line: 527, baseType: !417, size: 64, offset: 576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !621, file: !561, line: 528, baseType: !7, size: 32, offset: 640)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !621, file: !561, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !621, file: !561, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !621, file: !561, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !621, file: !561, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !621, file: !561, line: 563, baseType: !637, size: 512, offset: 704)
!637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !638)
!638 = !{!639, !647, !648, !653, !705, !706, !707, !708}
!639 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !637, file: !6, line: 119, baseType: !640, size: 256)
!640 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !641, line: 9, size: 256, elements: !642)
!641 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!642 = !{!643, !644}
!643 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !640, file: !641, line: 10, baseType: !396, size: 192, align: 64)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !640, file: !641, line: 11, baseType: !645, size: 64, offset: 192)
!645 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !646, line: 29, baseType: !451)
!646 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!647 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !637, file: !6, line: 120, baseType: !645, size: 64, offset: 256)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !637, file: !6, line: 121, baseType: !649, size: 64, offset: 320)
!649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !650, size: 64)
!650 = !DISubroutineType(types: !651)
!651 = !{!5, !652}
!652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !637, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !637, file: !6, line: 122, baseType: !654, size: 64, offset: 384)
!654 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !655, size: 64)
!655 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !656)
!656 = !{!657, !677, !678, !681, !691, !692, !700, !704}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !655, file: !6, line: 160, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !659, size: 64)
!659 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !660)
!660 = !{!661, !662, !663, !664, !665, !666, !667, !668, !669, !670, !671, !672, !673}
!661 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !659, file: !6, line: 215, baseType: !462)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !659, file: !6, line: 216, baseType: !7, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !659, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !659, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !659, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !659, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !659, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !659, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !659, file: !6, line: 233, baseType: !645, size: 64, offset: 128)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !659, file: !6, line: 234, baseType: !652, size: 64, offset: 192)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !659, file: !6, line: 235, baseType: !645, size: 64, offset: 256)
!672 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !659, file: !6, line: 236, baseType: !652, size: 64, offset: 320)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !659, file: !6, line: 237, baseType: !674, size: 4096, offset: 512)
!674 = !DICompositeType(tag: DW_TAG_array_type, baseType: !655, size: 4096, elements: !675)
!675 = !{!676}
!676 = !DISubrange(count: 8)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !655, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !655, file: !6, line: 162, baseType: !679, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !59, line: 27, baseType: !680)
!680 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !333, line: 96, baseType: !92)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !655, file: !6, line: 163, baseType: !682, size: 32, offset: 128)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !683, line: 276, baseType: !684)
!683 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !683, line: 276, size: 32, elements: !685)
!685 = !{!686}
!686 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !684, file: !683, line: 276, baseType: !687, size: 32)
!687 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !683, line: 70, baseType: !688)
!688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !683, line: 65, size: 32, elements: !689)
!689 = !{!690}
!690 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !688, file: !683, line: 66, baseType: !7, size: 32)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !655, file: !6, line: 164, baseType: !652, size: 64, offset: 192)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !655, file: !6, line: 165, baseType: !693, size: 128, offset: 256)
!693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !641, line: 14, size: 128, elements: !694)
!694 = !{!695}
!695 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !693, file: !641, line: 15, baseType: !696, size: 128)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !397, line: 125, size: 128, elements: !697)
!697 = !{!698, !699}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !696, file: !397, line: 126, baseType: !413, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !696, file: !397, line: 127, baseType: !401, size: 64, offset: 64)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !655, file: !6, line: 166, baseType: !701, size: 64, offset: 384)
!701 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !702, size: 64)
!702 = !DISubroutineType(types: !703)
!703 = !{!645}
!704 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !655, file: !6, line: 167, baseType: !645, size: 64, offset: 448)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !637, file: !6, line: 123, baseType: !133, size: 8, offset: 448)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !637, file: !6, line: 124, baseType: !133, size: 8, offset: 456)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !637, file: !6, line: 125, baseType: !133, size: 8, offset: 464)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !637, file: !6, line: 126, baseType: !133, size: 8, offset: 472)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !621, file: !561, line: 572, baseType: !637, size: 512, offset: 1216)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !621, file: !561, line: 580, baseType: !711, size: 64, offset: 1728)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !621, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !560, file: !561, line: 721, baseType: !7, size: 32, offset: 3584)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !560, file: !561, line: 722, baseType: !92, size: 32, offset: 3616)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !560, file: !561, line: 723, baseType: !715, size: 64, offset: 3648)
!715 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !716, size: 64)
!716 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !717)
!717 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !718, line: 17, baseType: !719)
!718 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !718, line: 17, size: 64, elements: !720)
!720 = !{!721}
!721 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !719, file: !718, line: 17, baseType: !722, size: 64)
!722 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, size: 64, elements: !723)
!723 = !{!724}
!724 = !DISubrange(count: 1)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !560, file: !561, line: 724, baseType: !717, size: 64, offset: 3712)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !560, file: !561, line: 749, baseType: !727, offset: 3776)
!727 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !561, line: 290, elements: !273)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !560, file: !561, line: 751, baseType: !246, size: 128, offset: 3776)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !560, file: !561, line: 757, baseType: !405, size: 64, offset: 3904)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !560, file: !561, line: 758, baseType: !405, size: 64, offset: 3968)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !560, file: !561, line: 761, baseType: !732, size: 320, offset: 4032)
!732 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !492, line: 34, size: 320, elements: !733)
!733 = !{!734, !735}
!734 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !732, file: !492, line: 35, baseType: !417, size: 64)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !732, file: !492, line: 36, baseType: !736, size: 256, offset: 64)
!736 = !DICompositeType(tag: DW_TAG_array_type, baseType: !387, size: 256, elements: !496)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !560, file: !561, line: 766, baseType: !92, size: 32, offset: 4352)
!738 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !560, file: !561, line: 767, baseType: !92, size: 32, offset: 4384)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !560, file: !561, line: 768, baseType: !92, size: 32, offset: 4416)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !560, file: !561, line: 770, baseType: !92, size: 32, offset: 4448)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !560, file: !561, line: 772, baseType: !110, size: 64, offset: 4480)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !560, file: !561, line: 775, baseType: !7, size: 32, offset: 4544)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !560, file: !561, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!744 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !560, file: !561, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !560, file: !561, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !560, file: !561, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !560, file: !561, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!748 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !560, file: !561, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !560, file: !561, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !560, file: !561, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !560, file: !561, line: 831, baseType: !110, size: 64, offset: 4672)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !560, file: !561, line: 833, baseType: !753, size: 384, offset: 4736)
!753 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !754)
!754 = !{!755, !760}
!755 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !753, file: !12, line: 26, baseType: !756, size: 64)
!756 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !757, size: 64)
!757 = !DISubroutineType(types: !758)
!758 = !{!115, !759}
!759 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !753, size: 64)
!760 = !DIDerivedType(tag: DW_TAG_member, scope: !753, file: !12, line: 27, baseType: !761, size: 320, offset: 64)
!761 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !753, file: !12, line: 27, size: 320, elements: !762)
!762 = !{!763, !773, !800}
!763 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !761, file: !12, line: 36, baseType: !764, size: 320)
!764 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !761, file: !12, line: 29, size: 320, elements: !765)
!765 = !{!766, !768, !769, !770, !771, !772}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !764, file: !12, line: 30, baseType: !767, size: 64)
!767 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !569, size: 64)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !764, file: !12, line: 31, baseType: !569, size: 32, offset: 64)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !764, file: !12, line: 32, baseType: !569, size: 32, offset: 96)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !764, file: !12, line: 33, baseType: !569, size: 32, offset: 128)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !764, file: !12, line: 34, baseType: !417, size: 64, offset: 192)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !764, file: !12, line: 35, baseType: !767, size: 64, offset: 256)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !761, file: !12, line: 46, baseType: !774, size: 192)
!774 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !761, file: !12, line: 38, size: 192, elements: !775)
!775 = !{!776, !777, !778, !799}
!776 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !774, file: !12, line: 39, baseType: !679, size: 32)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !774, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!778 = !DIDerivedType(tag: DW_TAG_member, scope: !774, file: !12, line: 41, baseType: !779, size: 64, offset: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !774, file: !12, line: 41, size: 64, elements: !780)
!780 = !{!781, !789}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !779, file: !12, line: 42, baseType: !782, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !783, size: 64)
!783 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !784, line: 7, size: 128, elements: !785)
!784 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!785 = !{!786, !788}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !783, file: !784, line: 8, baseType: !787, size: 64)
!787 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !333, line: 93, baseType: !381)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !783, file: !784, line: 9, baseType: !381, size: 64, offset: 64)
!789 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !779, file: !12, line: 43, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !791, size: 64)
!791 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !792, line: 7, size: 64, elements: !793)
!792 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!793 = !{!794, !798}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !791, file: !792, line: 8, baseType: !795, size: 32)
!795 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !792, line: 5, baseType: !796)
!796 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !134, line: 20, baseType: !797)
!797 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !136, line: 26, baseType: !92)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !791, file: !792, line: 9, baseType: !796, size: 32, offset: 32)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !774, file: !12, line: 45, baseType: !417, size: 64, offset: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !761, file: !12, line: 54, baseType: !801, size: 256)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !761, file: !12, line: 48, size: 256, elements: !802)
!802 = !{!803, !806, !807, !808, !809}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !801, file: !12, line: 49, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !801, file: !12, line: 50, baseType: !92, size: 32, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !801, file: !12, line: 51, baseType: !92, size: 32, offset: 96)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !801, file: !12, line: 52, baseType: !110, size: 64, offset: 128)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !801, file: !12, line: 53, baseType: !110, size: 64, offset: 192)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !560, file: !561, line: 835, baseType: !811, size: 32, offset: 5120)
!811 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !59, line: 22, baseType: !812)
!812 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !333, line: 28, baseType: !92)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !560, file: !561, line: 836, baseType: !811, size: 32, offset: 5152)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !560, file: !561, line: 840, baseType: !110, size: 64, offset: 5184)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !560, file: !561, line: 849, baseType: !559, size: 64, offset: 5248)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !560, file: !561, line: 852, baseType: !559, size: 64, offset: 5312)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !560, file: !561, line: 857, baseType: !246, size: 128, offset: 5376)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !560, file: !561, line: 858, baseType: !246, size: 128, offset: 5504)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !560, file: !561, line: 859, baseType: !559, size: 64, offset: 5632)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !560, file: !561, line: 867, baseType: !246, size: 128, offset: 5696)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !560, file: !561, line: 868, baseType: !246, size: 128, offset: 5824)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !560, file: !561, line: 871, baseType: !823, size: 64, offset: 5952)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !825, line: 59, size: 768, elements: !826)
!825 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!826 = !{!827, !828, !829, !830, !841, !842, !849, !858}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !824, file: !825, line: 61, baseType: !575, size: 32)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !824, file: !825, line: 62, baseType: !7, size: 32, offset: 32)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !824, file: !825, line: 63, baseType: !259, offset: 64)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !824, file: !825, line: 65, baseType: !831, size: 256, offset: 64)
!831 = !DICompositeType(tag: DW_TAG_array_type, baseType: !832, size: 256, elements: !496)
!832 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !59, line: 182, size: 64, elements: !833)
!833 = !{!834}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !832, file: !59, line: 183, baseType: !835, size: 64)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !59, line: 186, size: 128, elements: !837)
!837 = !{!838, !839}
!838 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !836, file: !59, line: 187, baseType: !835, size: 64)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !836, file: !59, line: 187, baseType: !840, size: 64, offset: 64)
!840 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !835, size: 64)
!841 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !824, file: !825, line: 66, baseType: !832, size: 64, offset: 320)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !824, file: !825, line: 68, baseType: !843, size: 128, offset: 384)
!843 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !844, line: 40, baseType: !845)
!844 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !844, line: 36, size: 128, elements: !846)
!846 = !{!847, !848}
!847 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !845, file: !844, line: 37, baseType: !259)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !845, file: !844, line: 38, baseType: !246, size: 128)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !824, file: !825, line: 69, baseType: !850, size: 128, align: 64, offset: 512)
!850 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !59, line: 216, size: 128, align: 64, elements: !851)
!851 = !{!852, !854}
!852 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !850, file: !59, line: 217, baseType: !853, size: 64)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !850, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !850, file: !59, line: 218, baseType: !855, size: 64, offset: 64)
!855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !856, size: 64)
!856 = !DISubroutineType(types: !857)
!857 = !{null, !853}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !824, file: !825, line: 70, baseType: !859, size: 128, offset: 640)
!859 = !DICompositeType(tag: DW_TAG_array_type, baseType: !860, size: 128, elements: !723)
!860 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !825, line: 54, size: 128, elements: !861)
!861 = !{!862, !863}
!862 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !860, file: !825, line: 55, baseType: !92, size: 32)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !860, file: !825, line: 56, baseType: !864, size: 64, offset: 64)
!864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !865, size: 64)
!865 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !825, line: 56, flags: DIFlagFwdDecl)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !560, file: !561, line: 872, baseType: !867, size: 512, offset: 6016)
!867 = !DICompositeType(tag: DW_TAG_array_type, baseType: !836, size: 512, elements: !496)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !560, file: !561, line: 873, baseType: !246, size: 128, offset: 6528)
!869 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !560, file: !561, line: 874, baseType: !246, size: 128, offset: 6656)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !560, file: !561, line: 876, baseType: !871, size: 64, offset: 6784)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !873, line: 26, size: 192, elements: !874)
!873 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!874 = !{!875, !876}
!875 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !872, file: !873, line: 27, baseType: !7, size: 32)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !872, file: !873, line: 28, baseType: !877, size: 128, offset: 64)
!877 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !878, line: 43, size: 128, elements: !879)
!878 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!879 = !{!880, !881}
!880 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !877, file: !878, line: 44, baseType: !462)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !877, file: !878, line: 45, baseType: !246, size: 128)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !560, file: !561, line: 879, baseType: !883, size: 64, offset: 6848)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !92, size: 64)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !560, file: !561, line: 882, baseType: !883, size: 64, offset: 6912)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !560, file: !561, line: 884, baseType: !417, size: 64, offset: 6976)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !560, file: !561, line: 885, baseType: !417, size: 64, offset: 7040)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !560, file: !561, line: 890, baseType: !417, size: 64, offset: 7104)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !560, file: !561, line: 891, baseType: !889, size: 128, offset: 7168)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !561, line: 242, size: 128, elements: !890)
!890 = !{!891, !892, !893}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !889, file: !561, line: 244, baseType: !417, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !889, file: !561, line: 245, baseType: !417, size: 64, offset: 64)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !889, file: !561, line: 246, baseType: !462, offset: 128)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !560, file: !561, line: 900, baseType: !110, size: 64, offset: 7296)
!895 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !560, file: !561, line: 901, baseType: !110, size: 64, offset: 7360)
!896 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !560, file: !561, line: 904, baseType: !417, size: 64, offset: 7424)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !560, file: !561, line: 907, baseType: !417, size: 64, offset: 7488)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !560, file: !561, line: 910, baseType: !110, size: 64, offset: 7552)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !560, file: !561, line: 911, baseType: !110, size: 64, offset: 7616)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !560, file: !561, line: 914, baseType: !901, size: 640, offset: 7680)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !902, line: 123, size: 640, elements: !903)
!902 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!903 = !{!904, !910, !911}
!904 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !901, file: !902, line: 124, baseType: !905, size: 576)
!905 = !DICompositeType(tag: DW_TAG_array_type, baseType: !906, size: 576, elements: !301)
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !902, line: 108, size: 192, elements: !907)
!907 = !{!908, !909}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !906, file: !902, line: 109, baseType: !417, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !906, file: !902, line: 110, baseType: !693, size: 128, offset: 64)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !901, file: !902, line: 125, baseType: !7, size: 32, offset: 576)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !901, file: !902, line: 126, baseType: !7, size: 32, offset: 608)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !560, file: !561, line: 917, baseType: !913, size: 192, offset: 8320)
!913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !902, line: 134, size: 192, elements: !914)
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !913, file: !902, line: 135, baseType: !850, size: 128, align: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !913, file: !902, line: 136, baseType: !7, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !560, file: !561, line: 923, baseType: !918, size: 64, offset: 8512)
!918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !919, size: 64)
!919 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !920)
!920 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !921, line: 11, flags: DIFlagFwdDecl)
!921 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!922 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !560, file: !561, line: 926, baseType: !918, size: 64, offset: 8576)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !560, file: !561, line: 929, baseType: !918, size: 64, offset: 8640)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !560, file: !561, line: 933, baseType: !925, size: 64, offset: 8704)
!925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !926, size: 64)
!926 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !561, line: 933, flags: DIFlagFwdDecl)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !560, file: !561, line: 943, baseType: !928, size: 128, offset: 8768)
!928 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 128, elements: !929)
!929 = !{!930}
!930 = !DISubrange(count: 16)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !560, file: !561, line: 945, baseType: !932, size: 64, offset: 8896)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !561, line: 49, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !560, file: !561, line: 956, baseType: !935, size: 64, offset: 8960)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !561, line: 45, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !560, file: !561, line: 959, baseType: !938, size: 64, offset: 9024)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !561, line: 959, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !560, file: !561, line: 962, baseType: !941, size: 64, offset: 9088)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !561, line: 66, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !560, file: !561, line: 966, baseType: !944, size: 64, offset: 9152)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !946, line: 35, flags: DIFlagFwdDecl)
!946 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!947 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !560, file: !561, line: 969, baseType: !948, size: 64, offset: 9216)
!948 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !949, size: 64)
!949 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !902, line: 223, flags: DIFlagFwdDecl)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !560, file: !561, line: 970, baseType: !951, size: 64, offset: 9280)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !561, line: 62, flags: DIFlagFwdDecl)
!953 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !560, file: !561, line: 971, baseType: !954, size: 64, offset: 9344)
!954 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !955, line: 25, baseType: !956)
!955 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !955, line: 23, size: 64, elements: !957)
!957 = !{!958}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !956, file: !955, line: 24, baseType: !722, size: 64)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !560, file: !561, line: 972, baseType: !954, size: 64, offset: 9408)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !560, file: !561, line: 974, baseType: !954, size: 64, offset: 9472)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !560, file: !561, line: 975, baseType: !962, size: 192, offset: 9536)
!962 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !963, line: 30, size: 192, elements: !964)
!963 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !962, file: !963, line: 31, baseType: !246, size: 128)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !962, file: !963, line: 32, baseType: !954, size: 64, offset: 128)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !560, file: !561, line: 976, baseType: !110, size: 64, offset: 9728)
!968 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !560, file: !561, line: 977, baseType: !346, size: 64, offset: 9792)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !560, file: !561, line: 978, baseType: !7, size: 32, offset: 9856)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !560, file: !561, line: 980, baseType: !853, size: 64, offset: 9920)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !560, file: !561, line: 989, baseType: !972, size: 128, offset: 9984)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !973, line: 35, size: 128, elements: !974)
!973 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !972, file: !973, line: 36, baseType: !92, size: 32)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !972, file: !973, line: 37, baseType: !437, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !972, file: !973, line: 38, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !979, size: 64)
!979 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !973, line: 23, flags: DIFlagFwdDecl)
!980 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !560, file: !561, line: 992, baseType: !417, size: 64, offset: 10112)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !560, file: !561, line: 993, baseType: !417, size: 64, offset: 10176)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !560, file: !561, line: 996, baseType: !259, offset: 10240)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !560, file: !561, line: 999, baseType: !462, offset: 10240)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !560, file: !561, line: 1001, baseType: !985, size: 64, offset: 10240)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !561, line: 636, size: 64, elements: !986)
!986 = !{!987}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !985, file: !561, line: 637, baseType: !988, size: 64)
!988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !560, file: !561, line: 1005, baseType: !696, size: 128, offset: 10304)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !560, file: !561, line: 1007, baseType: !559, size: 64, offset: 10432)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !560, file: !561, line: 1009, baseType: !992, size: 64, offset: 10496)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !561, line: 1009, flags: DIFlagFwdDecl)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !560, file: !561, line: 1043, baseType: !60, size: 64, offset: 10560)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !560, file: !561, line: 1046, baseType: !996, size: 64, offset: 10624)
!996 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !997, size: 64)
!997 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !561, line: 41, flags: DIFlagFwdDecl)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !560, file: !561, line: 1050, baseType: !999, size: 64, offset: 10688)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !561, line: 42, flags: DIFlagFwdDecl)
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !560, file: !561, line: 1054, baseType: !1002, size: 64, offset: 10752)
!1002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1003, size: 64)
!1003 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !561, line: 55, flags: DIFlagFwdDecl)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !560, file: !561, line: 1056, baseType: !1005, size: 64, offset: 10816)
!1005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1006, size: 64)
!1006 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !561, line: 40, flags: DIFlagFwdDecl)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !560, file: !561, line: 1058, baseType: !1008, size: 64, offset: 10880)
!1008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1009, size: 64)
!1009 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !561, line: 47, flags: DIFlagFwdDecl)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !560, file: !561, line: 1061, baseType: !1011, size: 64, offset: 10944)
!1011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !561, line: 43, flags: DIFlagFwdDecl)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !560, file: !561, line: 1064, baseType: !110, size: 64, offset: 11008)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !560, file: !561, line: 1065, baseType: !1015, size: 64, offset: 11072)
!1015 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1016, size: 64)
!1016 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !963, line: 14, baseType: !1017)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !963, line: 12, size: 384, elements: !1018)
!1018 = !{!1019}
!1019 = !DIDerivedType(tag: DW_TAG_member, scope: !1017, file: !963, line: 13, baseType: !1020, size: 384)
!1020 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1017, file: !963, line: 13, size: 384, elements: !1021)
!1021 = !{!1022, !1023, !1024, !1025}
!1022 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !1020, file: !963, line: 13, baseType: !92, size: 32)
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !1020, file: !963, line: 13, baseType: !92, size: 32, offset: 32)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !1020, file: !963, line: 13, baseType: !92, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !1020, file: !963, line: 13, baseType: !1026, size: 256, offset: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !1027, line: 32, size: 256, elements: !1028)
!1027 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!1028 = !{!1029, !1035, !1048, !1054, !1063, !1083, !1088}
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !1026, file: !1027, line: 37, baseType: !1030, size: 64)
!1030 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 34, size: 64, elements: !1031)
!1031 = !{!1032, !1033}
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1030, file: !1027, line: 35, baseType: !812, size: 32)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1030, file: !1027, line: 36, baseType: !1034, size: 32, offset: 32)
!1034 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !333, line: 49, baseType: !7)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !1026, file: !1027, line: 45, baseType: !1036, size: 192)
!1036 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 40, size: 192, elements: !1037)
!1037 = !{!1038, !1040, !1041, !1047}
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !1036, file: !1027, line: 41, baseType: !1039, size: 32)
!1039 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !333, line: 95, baseType: !92)
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !1036, file: !1027, line: 42, baseType: !92, size: 32, offset: 32)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1036, file: !1027, line: 43, baseType: !1042, size: 64, offset: 64)
!1042 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !1027, line: 11, baseType: !1043)
!1043 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !1027, line: 8, size: 64, elements: !1044)
!1044 = !{!1045, !1046}
!1045 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !1043, file: !1027, line: 9, baseType: !92, size: 32)
!1046 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !1043, file: !1027, line: 10, baseType: !60, size: 64)
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !1036, file: !1027, line: 44, baseType: !92, size: 32, offset: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !1026, file: !1027, line: 52, baseType: !1049, size: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 48, size: 128, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1049, file: !1027, line: 49, baseType: !812, size: 32)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1049, file: !1027, line: 50, baseType: !1034, size: 32, offset: 32)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !1049, file: !1027, line: 51, baseType: !1042, size: 64, offset: 64)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !1026, file: !1027, line: 61, baseType: !1055, size: 256)
!1055 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 55, size: 256, elements: !1056)
!1056 = !{!1057, !1058, !1059, !1060, !1062}
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1055, file: !1027, line: 56, baseType: !812, size: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1055, file: !1027, line: 57, baseType: !1034, size: 32, offset: 32)
!1059 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1055, file: !1027, line: 58, baseType: !92, size: 32, offset: 64)
!1060 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1055, file: !1027, line: 59, baseType: !1061, size: 64, offset: 128)
!1061 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !333, line: 94, baseType: !334)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1055, file: !1027, line: 60, baseType: !1061, size: 64, offset: 192)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !1026, file: !1027, line: 95, baseType: !1064, size: 256)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 64, size: 256, elements: !1065)
!1065 = !{!1066, !1067}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1064, file: !1027, line: 65, baseType: !60, size: 64)
!1067 = !DIDerivedType(tag: DW_TAG_member, scope: !1064, file: !1027, line: 77, baseType: !1068, size: 192, offset: 64)
!1068 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1064, file: !1027, line: 77, size: 192, elements: !1069)
!1069 = !{!1070, !1071, !1078}
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1068, file: !1027, line: 82, baseType: !548, size: 16)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1068, file: !1027, line: 88, baseType: !1072, size: 192)
!1072 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1027, line: 84, size: 192, elements: !1073)
!1073 = !{!1074, !1076, !1077}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1072, file: !1027, line: 85, baseType: !1075, size: 64)
!1075 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 64, elements: !675)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1072, file: !1027, line: 86, baseType: !60, size: 64, offset: 64)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1072, file: !1027, line: 87, baseType: !60, size: 64, offset: 128)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1068, file: !1027, line: 93, baseType: !1079, size: 96)
!1079 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1068, file: !1027, line: 90, size: 96, elements: !1080)
!1080 = !{!1081, !1082}
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1079, file: !1027, line: 91, baseType: !1075, size: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1079, file: !1027, line: 92, baseType: !570, size: 32, offset: 64)
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !1026, file: !1027, line: 101, baseType: !1084, size: 128)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 98, size: 128, elements: !1085)
!1085 = !{!1086, !1087}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1084, file: !1027, line: 99, baseType: !115, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1084, file: !1027, line: 100, baseType: !92, size: 32, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !1026, file: !1027, line: 108, baseType: !1089, size: 128)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1026, file: !1027, line: 104, size: 128, elements: !1090)
!1090 = !{!1091, !1092, !1093}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1089, file: !1027, line: 105, baseType: !60, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1089, file: !1027, line: 106, baseType: !92, size: 32, offset: 64)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1089, file: !1027, line: 107, baseType: !7, size: 32, offset: 96)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !560, file: !561, line: 1067, baseType: !1095, offset: 11136)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1096, line: 12, elements: !273)
!1096 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !560, file: !561, line: 1099, baseType: !1098, size: 64, offset: 11136)
!1098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1099, size: 64)
!1099 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !561, line: 56, flags: DIFlagFwdDecl)
!1100 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !560, file: !561, line: 1103, baseType: !246, size: 128, offset: 11200)
!1101 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !560, file: !561, line: 1104, baseType: !1102, size: 64, offset: 11328)
!1102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1103 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !561, line: 46, flags: DIFlagFwdDecl)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !560, file: !561, line: 1105, baseType: !514, size: 192, offset: 11392)
!1105 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !560, file: !561, line: 1106, baseType: !7, size: 32, offset: 11584)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !560, file: !561, line: 1109, baseType: !1107, size: 128, offset: 11648)
!1107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1108, size: 128, elements: !1110)
!1108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1109, size: 64)
!1109 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !561, line: 51, flags: DIFlagFwdDecl)
!1110 = !{!1111}
!1111 = !DISubrange(count: 2)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !560, file: !561, line: 1110, baseType: !514, size: 192, offset: 11776)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !560, file: !561, line: 1111, baseType: !246, size: 128, offset: 11968)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !560, file: !561, line: 1173, baseType: !1115, size: 64, offset: 12096)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1117, line: 62, size: 256, align: 256, elements: !1118)
!1117 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1118 = !{!1119, !1120, !1121, !1126}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1116, file: !1117, line: 75, baseType: !570, size: 32)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1116, file: !1117, line: 90, baseType: !570, size: 32, offset: 32)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1116, file: !1117, line: 124, baseType: !1122, size: 64, offset: 64)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1116, file: !1117, line: 109, size: 64, elements: !1123)
!1123 = !{!1124, !1125}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1122, file: !1117, line: 110, baseType: !418, size: 64)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1122, file: !1117, line: 112, baseType: !418, size: 64)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1116, file: !1117, line: 144, baseType: !570, size: 32, offset: 128)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !560, file: !561, line: 1174, baseType: !569, size: 32, offset: 12160)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !560, file: !561, line: 1179, baseType: !110, size: 64, offset: 12224)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !560, file: !561, line: 1182, baseType: !1130, size: 128, offset: 12288)
!1130 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !492, line: 76, size: 128, elements: !1131)
!1131 = !{!1132, !1137, !1138}
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1130, file: !492, line: 85, baseType: !1133, size: 64)
!1133 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1134, line: 7, size: 64, elements: !1135)
!1134 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1135 = !{!1136}
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1133, file: !1134, line: 12, baseType: !719, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1130, file: !492, line: 88, baseType: !235, size: 8, offset: 64)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1130, file: !492, line: 95, baseType: !235, size: 8, offset: 72)
!1139 = !DIDerivedType(tag: DW_TAG_member, scope: !560, file: !561, line: 1184, baseType: !1140, size: 128, offset: 12416)
!1140 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !560, file: !561, line: 1184, size: 128, elements: !1141)
!1141 = !{!1142, !1143}
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1140, file: !561, line: 1185, baseType: !575, size: 32)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1140, file: !561, line: 1186, baseType: !850, size: 128, align: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !560, file: !561, line: 1190, baseType: !1145, size: 64, offset: 12544)
!1145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1146, size: 64)
!1146 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !561, line: 53, flags: DIFlagFwdDecl)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !560, file: !561, line: 1192, baseType: !1148, size: 128, offset: 12608)
!1148 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !492, line: 64, size: 128, elements: !1149)
!1149 = !{!1150, !1243, !1244}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1148, file: !492, line: 65, baseType: !1151, size: 64)
!1151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1152, size: 64)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !389, line: 68, size: 512, align: 128, elements: !1153)
!1153 = !{!1154, !1155, !1235, !1242}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1152, file: !389, line: 69, baseType: !110, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !389, line: 77, baseType: !1156, size: 320, offset: 64)
!1156 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !389, line: 77, size: 320, elements: !1157)
!1157 = !{!1158, !1167, !1172, !1200, !1208, !1214, !1227, !1234}
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 78, baseType: !1159, size: 320)
!1159 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 78, size: 320, elements: !1160)
!1160 = !{!1161, !1162, !1165, !1166}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1159, file: !389, line: 84, baseType: !246, size: 128)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1159, file: !389, line: 86, baseType: !1163, size: 64, offset: 128)
!1163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1164, size: 64)
!1164 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !389, line: 26, flags: DIFlagFwdDecl)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1159, file: !389, line: 87, baseType: !110, size: 64, offset: 192)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1159, file: !389, line: 94, baseType: !110, size: 64, offset: 256)
!1167 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 96, baseType: !1168, size: 64)
!1168 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 96, size: 64, elements: !1169)
!1169 = !{!1170}
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1168, file: !389, line: 101, baseType: !1171, size: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !59, line: 143, baseType: !417)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 103, baseType: !1173, size: 320)
!1173 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 103, size: 320, elements: !1174)
!1174 = !{!1175, !1185, !1188, !1189}
!1175 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !389, line: 104, baseType: !1176, size: 128)
!1176 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !389, line: 104, size: 128, elements: !1177)
!1177 = !{!1178, !1179}
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1176, file: !389, line: 105, baseType: !246, size: 128)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1176, file: !389, line: 106, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1176, file: !389, line: 106, size: 128, elements: !1181)
!1181 = !{!1182, !1183, !1184}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1180, file: !389, line: 107, baseType: !1151, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1180, file: !389, line: 109, baseType: !92, size: 32, offset: 64)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1180, file: !389, line: 110, baseType: !92, size: 32, offset: 96)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1173, file: !389, line: 117, baseType: !1186, size: 64, offset: 128)
!1186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1187, size: 64)
!1187 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !389, line: 117, flags: DIFlagFwdDecl)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1173, file: !389, line: 119, baseType: !60, size: 64, offset: 192)
!1189 = !DIDerivedType(tag: DW_TAG_member, scope: !1173, file: !389, line: 120, baseType: !1190, size: 64, offset: 256)
!1190 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1173, file: !389, line: 120, size: 64, elements: !1191)
!1191 = !{!1192, !1193, !1194}
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1190, file: !389, line: 121, baseType: !60, size: 64)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1190, file: !389, line: 122, baseType: !110, size: 64)
!1194 = !DIDerivedType(tag: DW_TAG_member, scope: !1190, file: !389, line: 123, baseType: !1195, size: 32)
!1195 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1190, file: !389, line: 123, size: 32, elements: !1196)
!1196 = !{!1197, !1198, !1199}
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1195, file: !389, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1195, file: !389, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1195, file: !389, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1200 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 130, baseType: !1201, size: 192)
!1201 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 130, size: 192, elements: !1202)
!1202 = !{!1203, !1204, !1205, !1206, !1207}
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1201, file: !389, line: 131, baseType: !110, size: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1201, file: !389, line: 134, baseType: !137, size: 8, offset: 64)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1201, file: !389, line: 135, baseType: !137, size: 8, offset: 72)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1201, file: !389, line: 136, baseType: !437, size: 32, offset: 96)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1201, file: !389, line: 137, baseType: !7, size: 32, offset: 128)
!1208 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 139, baseType: !1209, size: 256)
!1209 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 139, size: 256, elements: !1210)
!1210 = !{!1211, !1212, !1213}
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1209, file: !389, line: 140, baseType: !110, size: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1209, file: !389, line: 141, baseType: !437, size: 32, offset: 64)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1209, file: !389, line: 143, baseType: !246, size: 128, offset: 128)
!1214 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 145, baseType: !1215, size: 256)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 145, size: 256, elements: !1216)
!1216 = !{!1217, !1218, !1220, !1221, !1226}
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1215, file: !389, line: 146, baseType: !110, size: 64)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1215, file: !389, line: 147, baseType: !1219, size: 64, offset: 64)
!1219 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !378, line: 509, baseType: !1151)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1215, file: !389, line: 148, baseType: !110, size: 64, offset: 128)
!1221 = !DIDerivedType(tag: DW_TAG_member, scope: !1215, file: !389, line: 149, baseType: !1222, size: 64, offset: 192)
!1222 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1215, file: !389, line: 149, size: 64, elements: !1223)
!1223 = !{!1224, !1225}
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1222, file: !389, line: 150, baseType: !405, size: 64)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1222, file: !389, line: 151, baseType: !437, size: 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1215, file: !389, line: 156, baseType: !259, offset: 256)
!1227 = !DIDerivedType(tag: DW_TAG_member, scope: !1156, file: !389, line: 159, baseType: !1228, size: 128)
!1228 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1156, file: !389, line: 159, size: 128, elements: !1229)
!1229 = !{!1230, !1233}
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1228, file: !389, line: 161, baseType: !1231, size: 64)
!1231 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1232, size: 64)
!1232 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !389, line: 161, flags: DIFlagFwdDecl)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1228, file: !389, line: 162, baseType: !60, size: 64, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1156, file: !389, line: 176, baseType: !850, size: 128, align: 64)
!1235 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !389, line: 179, baseType: !1236, size: 32, offset: 384)
!1236 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !389, line: 179, size: 32, elements: !1237)
!1237 = !{!1238, !1239, !1240, !1241}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1236, file: !389, line: 184, baseType: !437, size: 32)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1236, file: !389, line: 192, baseType: !7, size: 32)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1236, file: !389, line: 194, baseType: !7, size: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1236, file: !389, line: 195, baseType: !92, size: 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1152, file: !389, line: 199, baseType: !437, size: 32, offset: 416)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1148, file: !492, line: 67, baseType: !570, size: 32, offset: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1148, file: !492, line: 68, baseType: !570, size: 32, offset: 96)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !560, file: !561, line: 1206, baseType: !92, size: 32, offset: 12736)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !560, file: !561, line: 1207, baseType: !92, size: 32, offset: 12768)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !560, file: !561, line: 1209, baseType: !110, size: 64, offset: 12800)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !560, file: !561, line: 1219, baseType: !417, size: 64, offset: 12864)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !560, file: !561, line: 1220, baseType: !417, size: 64, offset: 12928)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !560, file: !561, line: 1317, baseType: !92, size: 32, offset: 12992)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !560, file: !561, line: 1319, baseType: !559, size: 64, offset: 13056)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !560, file: !561, line: 1322, baseType: !1253, size: 64, offset: 13120)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1255, line: 56, size: 512, elements: !1256)
!1255 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1256 = !{!1257, !1258, !1259, !1260, !1261, !1263, !1264, !1266}
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1254, file: !1255, line: 57, baseType: !1253, size: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1254, file: !1255, line: 58, baseType: !60, size: 64, offset: 64)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1254, file: !1255, line: 59, baseType: !110, size: 64, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1254, file: !1255, line: 60, baseType: !110, size: 64, offset: 192)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1254, file: !1255, line: 61, baseType: !1262, size: 64, offset: 256)
!1262 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1151, size: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1254, file: !1255, line: 62, baseType: !7, size: 32, offset: 320)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1254, file: !1255, line: 63, baseType: !1265, size: 64, offset: 384)
!1265 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !59, line: 153, baseType: !417)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1254, file: !1255, line: 64, baseType: !216, size: 64, offset: 448)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !560, file: !561, line: 1326, baseType: !575, size: 32, offset: 13184)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !560, file: !561, line: 1342, baseType: !60, size: 64, offset: 13248)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !560, file: !561, line: 1343, baseType: !418, size: 64, offset: 13312)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !560, file: !561, line: 1344, baseType: !417, size: 64, offset: 13376)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !560, file: !561, line: 1345, baseType: !418, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !560, file: !561, line: 1346, baseType: !418, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !560, file: !561, line: 1347, baseType: !418, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !560, file: !561, line: 1348, baseType: !850, size: 128, align: 64, offset: 13504)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !560, file: !561, line: 1358, baseType: !1276, size: 34816, offset: 13824)
!1276 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1277, line: 485, size: 34816, elements: !1278)
!1277 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1278 = !{!1279, !1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1308, !1309, !1310, !1311, !1312, !1313, !1316, !1317, !1318}
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1276, file: !1277, line: 487, baseType: !1280, size: 192)
!1280 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1281, size: 192, elements: !301)
!1281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1282, line: 16, size: 64, elements: !1283)
!1282 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1281, file: !1282, line: 17, baseType: !543, size: 16)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1281, file: !1282, line: 18, baseType: !543, size: 16, offset: 16)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1281, file: !1282, line: 19, baseType: !543, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1281, file: !1282, line: 19, baseType: !543, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1281, file: !1282, line: 19, baseType: !543, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1281, file: !1282, line: 19, baseType: !543, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1281, file: !1282, line: 19, baseType: !543, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1281, file: !1282, line: 20, baseType: !543, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1281, file: !1282, line: 20, baseType: !543, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1281, file: !1282, line: 20, baseType: !543, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1281, file: !1282, line: 20, baseType: !543, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1281, file: !1282, line: 20, baseType: !543, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1281, file: !1282, line: 20, baseType: !543, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1276, file: !1277, line: 491, baseType: !110, size: 64, offset: 192)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1276, file: !1277, line: 495, baseType: !341, size: 16, offset: 256)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1276, file: !1277, line: 496, baseType: !341, size: 16, offset: 272)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1276, file: !1277, line: 497, baseType: !341, size: 16, offset: 288)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1276, file: !1277, line: 498, baseType: !341, size: 16, offset: 304)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1276, file: !1277, line: 502, baseType: !110, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1276, file: !1277, line: 503, baseType: !110, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1276, file: !1277, line: 514, baseType: !1305, size: 256, offset: 448)
!1305 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1306, size: 256, elements: !496)
!1306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1307, size: 64)
!1307 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1277, line: 483, flags: DIFlagFwdDecl)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1276, file: !1277, line: 516, baseType: !110, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1276, file: !1277, line: 518, baseType: !110, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1276, file: !1277, line: 520, baseType: !110, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1276, file: !1277, line: 521, baseType: !110, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1276, file: !1277, line: 522, baseType: !110, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1276, file: !1277, line: 528, baseType: !1314, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1315, size: 64)
!1315 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1277, line: 10, flags: DIFlagFwdDecl)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1276, file: !1277, line: 535, baseType: !110, size: 64, offset: 1088)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1276, file: !1277, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1276, file: !1277, line: 540, baseType: !1319, size: 33280, offset: 1536)
!1319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1320, line: 317, size: 33280, elements: !1321)
!1320 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1321 = !{!1322, !1323, !1324}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1319, file: !1320, line: 330, baseType: !7, size: 32)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1319, file: !1320, line: 337, baseType: !110, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1319, file: !1320, line: 348, baseType: !1325, size: 32768, offset: 512)
!1325 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1320, line: 304, size: 32768, elements: !1326)
!1326 = !{!1327, !1342, !1379, !1429, !1446}
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1325, file: !1320, line: 305, baseType: !1328, size: 896)
!1328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1320, line: 12, size: 896, elements: !1329)
!1329 = !{!1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1341}
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1328, file: !1320, line: 13, baseType: !569, size: 32)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1328, file: !1320, line: 14, baseType: !569, size: 32, offset: 32)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1328, file: !1320, line: 15, baseType: !569, size: 32, offset: 64)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1328, file: !1320, line: 16, baseType: !569, size: 32, offset: 96)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1328, file: !1320, line: 17, baseType: !569, size: 32, offset: 128)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1328, file: !1320, line: 18, baseType: !569, size: 32, offset: 160)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1328, file: !1320, line: 19, baseType: !569, size: 32, offset: 192)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1328, file: !1320, line: 22, baseType: !1338, size: 640, offset: 224)
!1338 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 640, elements: !1339)
!1339 = !{!1340}
!1340 = !DISubrange(count: 20)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1328, file: !1320, line: 25, baseType: !569, size: 32, offset: 864)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1325, file: !1320, line: 306, baseType: !1343, size: 4096, align: 128)
!1343 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1320, line: 34, size: 4096, align: 128, elements: !1344)
!1344 = !{!1345, !1346, !1347, !1348, !1349, !1364, !1365, !1366, !1368, !1370, !1374}
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1343, file: !1320, line: 35, baseType: !543, size: 16)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1343, file: !1320, line: 36, baseType: !543, size: 16, offset: 16)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1343, file: !1320, line: 37, baseType: !543, size: 16, offset: 32)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1343, file: !1320, line: 38, baseType: !543, size: 16, offset: 48)
!1349 = !DIDerivedType(tag: DW_TAG_member, scope: !1343, file: !1320, line: 39, baseType: !1350, size: 128, offset: 64)
!1350 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1343, file: !1320, line: 39, size: 128, elements: !1351)
!1351 = !{!1352, !1357}
!1352 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !1320, line: 40, baseType: !1353, size: 128)
!1353 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1320, line: 40, size: 128, elements: !1354)
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1353, file: !1320, line: 41, baseType: !417, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1353, file: !1320, line: 42, baseType: !417, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_member, scope: !1350, file: !1320, line: 44, baseType: !1358, size: 128)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1350, file: !1320, line: 44, size: 128, elements: !1359)
!1359 = !{!1360, !1361, !1362, !1363}
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1358, file: !1320, line: 45, baseType: !569, size: 32)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1358, file: !1320, line: 46, baseType: !569, size: 32, offset: 32)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1358, file: !1320, line: 47, baseType: !569, size: 32, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1358, file: !1320, line: 48, baseType: !569, size: 32, offset: 96)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1343, file: !1320, line: 51, baseType: !569, size: 32, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1343, file: !1320, line: 52, baseType: !569, size: 32, offset: 224)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1343, file: !1320, line: 55, baseType: !1367, size: 1024, offset: 256)
!1367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 1024, elements: !208)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1343, file: !1320, line: 58, baseType: !1369, size: 2048, offset: 1280)
!1369 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 2048, elements: !305)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1343, file: !1320, line: 60, baseType: !1371, size: 384, offset: 3328)
!1371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !569, size: 384, elements: !1372)
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
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1380, file: !1320, line: 80, baseType: !569, size: 32)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1380, file: !1320, line: 81, baseType: !569, size: 32, offset: 32)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1380, file: !1320, line: 82, baseType: !569, size: 32, offset: 64)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1380, file: !1320, line: 83, baseType: !569, size: 32, offset: 96)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1380, file: !1320, line: 84, baseType: !569, size: 32, offset: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1380, file: !1320, line: 85, baseType: !569, size: 32, offset: 160)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1380, file: !1320, line: 86, baseType: !569, size: 32, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1380, file: !1320, line: 88, baseType: !1338, size: 640, offset: 224)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1380, file: !1320, line: 89, baseType: !133, size: 8, offset: 864)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1380, file: !1320, line: 90, baseType: !133, size: 8, offset: 872)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1380, file: !1320, line: 91, baseType: !133, size: 8, offset: 880)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1380, file: !1320, line: 92, baseType: !133, size: 8, offset: 888)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1380, file: !1320, line: 93, baseType: !133, size: 8, offset: 896)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1380, file: !1320, line: 94, baseType: !133, size: 8, offset: 904)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1380, file: !1320, line: 95, baseType: !1397, size: 64, offset: 960)
!1397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1398, size: 64)
!1398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1399, line: 11, size: 128, elements: !1400)
!1399 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1400 = !{!1401, !1402}
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1398, file: !1399, line: 12, baseType: !115, size: 64)
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1398, file: !1399, line: 13, baseType: !1403, size: 64, offset: 64)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1405, line: 56, size: 1344, elements: !1406)
!1405 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1406 = !{!1407, !1408, !1409, !1410, !1411, !1412, !1413, !1414, !1415, !1416, !1417, !1418, !1419, !1420, !1421, !1422, !1423, !1424, !1425, !1426, !1427}
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1404, file: !1405, line: 61, baseType: !110, size: 64)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1404, file: !1405, line: 62, baseType: !110, size: 64, offset: 64)
!1409 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1404, file: !1405, line: 63, baseType: !110, size: 64, offset: 128)
!1410 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1404, file: !1405, line: 64, baseType: !110, size: 64, offset: 192)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1404, file: !1405, line: 65, baseType: !110, size: 64, offset: 256)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1404, file: !1405, line: 66, baseType: !110, size: 64, offset: 320)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1404, file: !1405, line: 68, baseType: !110, size: 64, offset: 384)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1404, file: !1405, line: 69, baseType: !110, size: 64, offset: 448)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1404, file: !1405, line: 70, baseType: !110, size: 64, offset: 512)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1404, file: !1405, line: 71, baseType: !110, size: 64, offset: 576)
!1417 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1404, file: !1405, line: 72, baseType: !110, size: 64, offset: 640)
!1418 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1404, file: !1405, line: 73, baseType: !110, size: 64, offset: 704)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1404, file: !1405, line: 74, baseType: !110, size: 64, offset: 768)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1404, file: !1405, line: 75, baseType: !110, size: 64, offset: 832)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1404, file: !1405, line: 76, baseType: !110, size: 64, offset: 896)
!1422 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1404, file: !1405, line: 81, baseType: !110, size: 64, offset: 960)
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1404, file: !1405, line: 83, baseType: !110, size: 64, offset: 1024)
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1404, file: !1405, line: 84, baseType: !110, size: 64, offset: 1088)
!1425 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1404, file: !1405, line: 85, baseType: !110, size: 64, offset: 1152)
!1426 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1404, file: !1405, line: 86, baseType: !110, size: 64, offset: 1216)
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1404, file: !1405, line: 87, baseType: !110, size: 64, offset: 1280)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1380, file: !1320, line: 96, baseType: !569, size: 32, offset: 1024)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1325, file: !1320, line: 308, baseType: !1430, size: 4608, align: 512)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1320, line: 289, size: 4608, align: 512, elements: !1431)
!1431 = !{!1432, !1433, !1442}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1430, file: !1320, line: 290, baseType: !1343, size: 4096, align: 128)
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1430, file: !1320, line: 291, baseType: !1434, size: 512, offset: 4096)
!1434 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1320, line: 268, size: 512, elements: !1435)
!1435 = !{!1436, !1437, !1438}
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1434, file: !1320, line: 269, baseType: !417, size: 64)
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1434, file: !1320, line: 270, baseType: !417, size: 64, offset: 64)
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1434, file: !1320, line: 271, baseType: !1439, size: 384, offset: 128)
!1439 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 384, elements: !1440)
!1440 = !{!1441}
!1441 = !DISubrange(count: 6)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1430, file: !1320, line: 292, baseType: !1443, offset: 4608)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 0)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1325, file: !1320, line: 309, baseType: !1447, size: 32768)
!1447 = !DICompositeType(tag: DW_TAG_array_type, baseType: !133, size: 32768, elements: !1448)
!1448 = !{!1449}
!1449 = !DISubrange(count: 4096)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !556, file: !389, line: 378, baseType: !1451, size: 64, offset: 64)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !556, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !552, file: !389, line: 384, baseType: !872, size: 192, offset: 192)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !409, file: !389, line: 500, baseType: !259, offset: 6656)
!1454 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !409, file: !389, line: 501, baseType: !1455, size: 64, offset: 6656)
!1455 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1456, size: 64)
!1456 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !389, line: 387, flags: DIFlagFwdDecl)
!1457 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !409, file: !389, line: 516, baseType: !1458, size: 64, offset: 6720)
!1458 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1459, size: 64)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !389, line: 516, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !409, file: !389, line: 519, baseType: !376, size: 64, offset: 6784)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !409, file: !389, line: 521, baseType: !1462, size: 64, offset: 6848)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !389, line: 521, flags: DIFlagFwdDecl)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !409, file: !389, line: 545, baseType: !437, size: 32, offset: 6912)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !409, file: !389, line: 548, baseType: !235, size: 8, offset: 6944)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !409, file: !389, line: 550, baseType: !1467, offset: 6952)
!1467 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1468, line: 142, elements: !273)
!1468 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !409, file: !389, line: 554, baseType: !1470, size: 256, offset: 6976)
!1470 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1471, line: 102, size: 256, elements: !1472)
!1471 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1472 = !{!1473, !1474, !1475}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1470, file: !1471, line: 103, baseType: !445, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1470, file: !1471, line: 104, baseType: !246, size: 128, offset: 64)
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1470, file: !1471, line: 105, baseType: !1476, size: 64, offset: 192)
!1476 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1471, line: 21, baseType: !1477)
!1477 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1478, size: 64)
!1478 = !DISubroutineType(types: !1479)
!1479 = !{null, !1480}
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1470, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !409, file: !389, line: 557, baseType: !569, size: 32, offset: 7232)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !406, file: !389, line: 565, baseType: !1483, offset: 7296)
!1483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !110, elements: !1484)
!1484 = !{!1485}
!1485 = !DISubrange(count: -1)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !388, file: !389, line: 333, baseType: !1487, size: 64, offset: 576)
!1487 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !378, line: 284, baseType: !1488)
!1488 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !378, line: 284, size: 64, elements: !1489)
!1489 = !{!1490}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1488, file: !378, line: 284, baseType: !1491, size: 64)
!1491 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !435, line: 19, baseType: !110)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !388, file: !389, line: 334, baseType: !110, size: 64, offset: 640)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !388, file: !389, line: 343, baseType: !1494, size: 256, offset: 704)
!1494 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !388, file: !389, line: 340, size: 256, elements: !1495)
!1495 = !{!1496, !1497}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1494, file: !389, line: 341, baseType: !396, size: 192, align: 64)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1494, file: !389, line: 342, baseType: !110, size: 64, offset: 192)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !388, file: !389, line: 351, baseType: !246, size: 128, offset: 960)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !388, file: !389, line: 353, baseType: !1500, size: 64, offset: 1088)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !389, line: 353, flags: DIFlagFwdDecl)
!1502 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !388, file: !389, line: 356, baseType: !1503, size: 64, offset: 1152)
!1503 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1505)
!1505 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !389, line: 356, flags: DIFlagFwdDecl)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !388, file: !389, line: 359, baseType: !110, size: 64, offset: 1216)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !388, file: !389, line: 361, baseType: !376, size: 64, offset: 1280)
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !388, file: !389, line: 362, baseType: !60, size: 64, offset: 1344)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !388, file: !389, line: 365, baseType: !445, size: 64, offset: 1408)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !388, file: !389, line: 373, baseType: !1511, offset: 1472)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !389, line: 296, elements: !273)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !355, file: !325, line: 90, baseType: !350, size: 64, offset: 192)
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !355, file: !325, line: 91, baseType: !1514, size: 64, offset: 256)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !366, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !315, file: !242, line: 143, baseType: !1516, size: 64, offset: 256)
!1516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1517, size: 64)
!1517 = !DISubroutineType(types: !1518)
!1518 = !{!1519, !252}
!1519 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1520, size: 64)
!1520 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1521)
!1521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1522)
!1522 = !{!1523, !1524, !1528, !1532, !1538, !1542}
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1521, file: !18, line: 40, baseType: !17, size: 32)
!1524 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1521, file: !18, line: 41, baseType: !1525, size: 64, offset: 64)
!1525 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1526, size: 64)
!1526 = !DISubroutineType(types: !1527)
!1527 = !{!235}
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1521, file: !18, line: 42, baseType: !1529, size: 64, offset: 128)
!1529 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1530, size: 64)
!1530 = !DISubroutineType(types: !1531)
!1531 = !{!60}
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1521, file: !18, line: 43, baseType: !1533, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1534, size: 64)
!1534 = !DISubroutineType(types: !1535)
!1535 = !{!216, !1536}
!1536 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1537, size: 64)
!1537 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1521, file: !18, line: 44, baseType: !1539, size: 64, offset: 256)
!1539 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1540, size: 64)
!1540 = !DISubroutineType(types: !1541)
!1541 = !{!216}
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1521, file: !18, line: 45, baseType: !1543, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !60}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !315, file: !242, line: 144, baseType: !1547, size: 64, offset: 320)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!216, !252}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !315, file: !242, line: 145, baseType: !1551, size: 64, offset: 384)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{null, !252, !1554, !1561}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1555, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1556, line: 23, baseType: !1557)
!1556 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1557 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1556, line: 21, size: 32, elements: !1558)
!1558 = !{!1559}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1557, file: !1556, line: 22, baseType: !1560, size: 32)
!1560 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !59, line: 32, baseType: !1034)
!1561 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1562, size: 64)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1556, line: 28, baseType: !1563)
!1563 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1556, line: 26, size: 32, elements: !1564)
!1564 = !{!1565}
!1565 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1563, file: !1556, line: 27, baseType: !1566, size: 32)
!1566 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !59, line: 33, baseType: !1567)
!1567 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !333, line: 50, baseType: !7)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !241, file: !242, line: 70, baseType: !1569, size: 64, offset: 384)
!1569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1570, size: 64)
!1570 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !174, line: 123, size: 1024, elements: !1571)
!1571 = !{!1572, !1573, !1574, !1575, !1576, !1577, !1578, !1579, !1713, !1714, !1715, !1716, !1717}
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1570, file: !174, line: 124, baseType: !437, size: 32)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1570, file: !174, line: 125, baseType: !437, size: 32, offset: 32)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1570, file: !174, line: 135, baseType: !1569, size: 64, offset: 64)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1570, file: !174, line: 136, baseType: !80, size: 64, offset: 128)
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1570, file: !174, line: 138, baseType: !396, size: 192, align: 64, offset: 192)
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1570, file: !174, line: 140, baseType: !216, size: 64, offset: 384)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1570, file: !174, line: 141, baseType: !7, size: 32, offset: 448)
!1579 = !DIDerivedType(tag: DW_TAG_member, scope: !1570, file: !174, line: 142, baseType: !1580, size: 256, offset: 512)
!1580 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1570, file: !174, line: 142, size: 256, elements: !1581)
!1581 = !{!1582, !1636, !1640}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1580, file: !174, line: 143, baseType: !1583, size: 192)
!1583 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !174, line: 91, size: 192, elements: !1584)
!1584 = !{!1585, !1586, !1587}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1583, file: !174, line: 92, baseType: !110, size: 64)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1583, file: !174, line: 94, baseType: !413, size: 64, offset: 64)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1583, file: !174, line: 100, baseType: !1588, size: 64, offset: 128)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !174, line: 180, size: 704, elements: !1590)
!1590 = !{!1591, !1592, !1593, !1606, !1607, !1608, !1634, !1635}
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1589, file: !174, line: 182, baseType: !1569, size: 64)
!1592 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1589, file: !174, line: 183, baseType: !7, size: 32, offset: 64)
!1593 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1589, file: !174, line: 186, baseType: !1594, size: 192, offset: 128)
!1594 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1595, line: 19, size: 192, elements: !1596)
!1595 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1596 = !{!1597, !1604, !1605}
!1597 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1594, file: !1595, line: 20, baseType: !1598, size: 128)
!1598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1599, line: 292, size: 128, elements: !1600)
!1599 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1600 = !{!1601, !1602, !1603}
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1598, file: !1599, line: 293, baseType: !259)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1598, file: !1599, line: 295, baseType: !58, size: 32)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1598, file: !1599, line: 296, baseType: !60, size: 64, offset: 64)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1594, file: !1595, line: 21, baseType: !7, size: 32, offset: 128)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1594, file: !1595, line: 22, baseType: !7, size: 32, offset: 160)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1589, file: !174, line: 187, baseType: !569, size: 32, offset: 320)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1589, file: !174, line: 188, baseType: !569, size: 32, offset: 352)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1589, file: !174, line: 189, baseType: !1609, size: 64, offset: 384)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !174, line: 168, size: 320, elements: !1611)
!1611 = !{!1612, !1618, !1622, !1626, !1630}
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1610, file: !174, line: 169, baseType: !1613, size: 64)
!1613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1614, size: 64)
!1614 = !DISubroutineType(types: !1615)
!1615 = !{!92, !1616, !1588}
!1616 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1617, size: 64)
!1617 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !378, line: 539, flags: DIFlagFwdDecl)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1610, file: !174, line: 171, baseType: !1619, size: 64, offset: 64)
!1619 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1620, size: 64)
!1620 = !DISubroutineType(types: !1621)
!1621 = !{!92, !1569, !80, !340}
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1610, file: !174, line: 173, baseType: !1623, size: 64, offset: 128)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DISubroutineType(types: !1625)
!1625 = !{!92, !1569}
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1610, file: !174, line: 174, baseType: !1627, size: 64, offset: 192)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{!92, !1569, !1569, !80}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1610, file: !174, line: 176, baseType: !1631, size: 64, offset: 256)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DISubroutineType(types: !1633)
!1633 = !{!92, !1616, !1569, !1588}
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1589, file: !174, line: 192, baseType: !246, size: 128, offset: 448)
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1589, file: !174, line: 194, baseType: !843, size: 128, offset: 576)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1580, file: !174, line: 144, baseType: !1637, size: 64)
!1637 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !174, line: 103, size: 64, elements: !1638)
!1638 = !{!1639}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1637, file: !174, line: 104, baseType: !1569, size: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1580, file: !174, line: 145, baseType: !1641, size: 256)
!1641 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !174, line: 107, size: 256, elements: !1642)
!1642 = !{!1643, !1708, !1711, !1712}
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1641, file: !174, line: 108, baseType: !1644, size: 64)
!1644 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1645, size: 64)
!1645 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1646)
!1646 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !174, line: 217, size: 768, elements: !1647)
!1647 = !{!1648, !1668, !1672, !1676, !1681, !1685, !1689, !1693, !1694, !1695, !1696, !1704}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1646, file: !174, line: 222, baseType: !1649, size: 64)
!1649 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1650, size: 64)
!1650 = !DISubroutineType(types: !1651)
!1651 = !{!92, !1652}
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !174, line: 197, size: 1088, elements: !1654)
!1654 = !{!1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1653, file: !174, line: 199, baseType: !1569, size: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1653, file: !174, line: 200, baseType: !376, size: 64, offset: 64)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1653, file: !174, line: 201, baseType: !1616, size: 64, offset: 128)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1653, file: !174, line: 202, baseType: !60, size: 64, offset: 192)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1653, file: !174, line: 205, baseType: !514, size: 192, offset: 256)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1653, file: !174, line: 206, baseType: !514, size: 192, offset: 448)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1653, file: !174, line: 207, baseType: !92, size: 32, offset: 640)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1653, file: !174, line: 208, baseType: !246, size: 128, offset: 704)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1653, file: !174, line: 209, baseType: !300, size: 64, offset: 832)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1653, file: !174, line: 211, baseType: !346, size: 64, offset: 896)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1653, file: !174, line: 212, baseType: !235, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1653, file: !174, line: 213, baseType: !235, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1653, file: !174, line: 214, baseType: !1503, size: 64, offset: 1024)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1646, file: !174, line: 223, baseType: !1669, size: 64, offset: 64)
!1669 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1670, size: 64)
!1670 = !DISubroutineType(types: !1671)
!1671 = !{null, !1652}
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1646, file: !174, line: 236, baseType: !1673, size: 64, offset: 128)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!92, !1616, !60}
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1646, file: !174, line: 238, baseType: !1677, size: 64, offset: 192)
!1677 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1678, size: 64)
!1678 = !DISubroutineType(types: !1679)
!1679 = !{!60, !1616, !1680}
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1646, file: !174, line: 239, baseType: !1682, size: 64, offset: 256)
!1682 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1683, size: 64)
!1683 = !DISubroutineType(types: !1684)
!1684 = !{!60, !1616, !60, !1680}
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1646, file: !174, line: 240, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DISubroutineType(types: !1688)
!1688 = !{null, !1616, !60}
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1646, file: !174, line: 242, baseType: !1690, size: 64, offset: 384)
!1690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1691, size: 64)
!1691 = !DISubroutineType(types: !1692)
!1692 = !{!331, !1652, !300, !346, !379}
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1646, file: !174, line: 252, baseType: !346, size: 64, offset: 448)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1646, file: !174, line: 259, baseType: !235, size: 8, offset: 512)
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1646, file: !174, line: 260, baseType: !1690, size: 64, offset: 576)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1646, file: !174, line: 263, baseType: !1697, size: 64, offset: 640)
!1697 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1698, size: 64)
!1698 = !DISubroutineType(types: !1699)
!1699 = !{!1700, !1652, !1702}
!1700 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1701, line: 52, baseType: !7)
!1701 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !174, line: 27, flags: DIFlagFwdDecl)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1646, file: !174, line: 266, baseType: !1705, size: 64, offset: 704)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DISubroutineType(types: !1707)
!1707 = !{!92, !1652, !387}
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1641, file: !174, line: 109, baseType: !1709, size: 64, offset: 64)
!1709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1710, size: 64)
!1710 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !174, line: 31, flags: DIFlagFwdDecl)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1641, file: !174, line: 110, baseType: !379, size: 64, offset: 128)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1641, file: !174, line: 111, baseType: !1569, size: 64, offset: 192)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1570, file: !174, line: 148, baseType: !60, size: 64, offset: 768)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1570, file: !174, line: 154, baseType: !417, size: 64, offset: 832)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1570, file: !174, line: 156, baseType: !341, size: 16, offset: 896)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1570, file: !174, line: 157, baseType: !340, size: 16, offset: 912)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1570, file: !174, line: 158, baseType: !1718, size: 64, offset: 960)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !174, line: 32, flags: DIFlagFwdDecl)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !241, file: !242, line: 71, baseType: !1721, size: 32, offset: 448)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1722, line: 19, size: 32, elements: !1723)
!1722 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1723 = !{!1724}
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1721, file: !1722, line: 20, baseType: !575, size: 32)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !241, file: !242, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !241, file: !242, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !241, file: !242, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !241, file: !242, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !241, file: !242, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !238, file: !30, line: 463, baseType: !1731, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !238, size: 64)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !238, file: !30, line: 465, baseType: !1733, size: 64, offset: 576)
!1733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1734, size: 64)
!1734 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !238, file: !30, line: 467, baseType: !80, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !238, file: !30, line: 468, baseType: !1737, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1738, size: 64)
!1738 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1739)
!1739 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1740)
!1740 = !{!1741, !1742, !1743, !1747, !1752, !1756}
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1739, file: !30, line: 88, baseType: !80, size: 64)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1739, file: !30, line: 89, baseType: !352, size: 64, offset: 64)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1739, file: !30, line: 90, baseType: !1744, size: 64, offset: 128)
!1744 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1745, size: 64)
!1745 = !DISubroutineType(types: !1746)
!1746 = !{!92, !1731, !295}
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1739, file: !30, line: 91, baseType: !1748, size: 64, offset: 192)
!1748 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1749, size: 64)
!1749 = !DISubroutineType(types: !1750)
!1750 = !{!300, !1731, !1751, !1554, !1561}
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !340, size: 64)
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
!1764 = !{!92, !1731}
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
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !238, file: !30, line: 470, baseType: !1788, size: 64, offset: 768)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1790, line: 82, size: 1408, elements: !1791)
!1790 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1791 = !{!1792, !1793, !1794, !1795, !1796, !1797, !1798, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1862, !1865, !1868}
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1789, file: !1790, line: 83, baseType: !80, size: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1789, file: !1790, line: 84, baseType: !80, size: 64, offset: 64)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1789, file: !1790, line: 85, baseType: !1731, size: 64, offset: 128)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1789, file: !1790, line: 86, baseType: !352, size: 64, offset: 192)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1789, file: !1790, line: 87, baseType: !352, size: 64, offset: 256)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1789, file: !1790, line: 88, baseType: !352, size: 64, offset: 320)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1789, file: !1790, line: 90, baseType: !1799, size: 64, offset: 384)
!1799 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1800, size: 64)
!1800 = !DISubroutineType(types: !1801)
!1801 = !{!92, !1731, !1802}
!1802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1803, size: 64)
!1803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1804)
!1804 = !{!1805, !1806, !1807, !1808, !1809, !1810, !1811, !1813, !1826, !1827, !1828, !1829, !1830, !1838, !1839, !1840, !1841, !1842, !1843}
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1803, file: !24, line: 96, baseType: !80, size: 64)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1803, file: !24, line: 97, baseType: !1788, size: 64, offset: 64)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1803, file: !24, line: 99, baseType: !196, size: 64, offset: 128)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1803, file: !24, line: 100, baseType: !80, size: 64, offset: 192)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1803, file: !24, line: 102, baseType: !235, size: 8, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1803, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1803, file: !24, line: 105, baseType: !1812, size: 64, offset: 320)
!1812 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1803, file: !24, line: 106, baseType: !1814, size: 64, offset: 384)
!1814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1815, size: 64)
!1815 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1816)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !204, line: 210, size: 256, elements: !1817)
!1817 = !{!1818, !1822, !1824, !1825}
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1816, file: !204, line: 211, baseType: !1819, size: 72)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !135, size: 72, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 9)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1816, file: !204, line: 212, baseType: !1823, size: 64, offset: 128)
!1823 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !204, line: 14, baseType: !110)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1816, file: !204, line: 213, baseType: !570, size: 32, offset: 192)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1816, file: !204, line: 214, baseType: !570, size: 32, offset: 224)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1803, file: !24, line: 108, baseType: !1762, size: 64, offset: 448)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1803, file: !24, line: 109, baseType: !1753, size: 64, offset: 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1803, file: !24, line: 110, baseType: !1762, size: 64, offset: 576)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1803, file: !24, line: 111, baseType: !1753, size: 64, offset: 640)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1803, file: !24, line: 112, baseType: !1831, size: 64, offset: 704)
!1831 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1832, size: 64)
!1832 = !DISubroutineType(types: !1833)
!1833 = !{!92, !1731, !1834}
!1834 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1835)
!1835 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1836)
!1836 = !{!1837}
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1835, file: !37, line: 51, baseType: !92, size: 32)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1803, file: !24, line: 113, baseType: !1762, size: 64, offset: 768)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1803, file: !24, line: 114, baseType: !352, size: 64, offset: 832)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1803, file: !24, line: 115, baseType: !352, size: 64, offset: 896)
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
!1866 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1867, line: 187, elements: !273)
!1867 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1789, file: !1790, line: 114, baseType: !235, size: 8, offset: 1344)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !238, file: !30, line: 471, baseType: !1802, size: 64, offset: 832)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !238, file: !30, line: 473, baseType: !60, size: 64, offset: 896)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !238, file: !30, line: 475, baseType: !60, size: 64, offset: 960)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !238, file: !30, line: 480, baseType: !514, size: 192, offset: 1024)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !238, file: !30, line: 484, baseType: !1874, size: 576, offset: 1216)
!1874 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1875)
!1875 = !{!1876, !1877, !1878, !1879, !1880, !1881}
!1876 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1874, file: !30, line: 362, baseType: !246, size: 128)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1874, file: !30, line: 363, baseType: !246, size: 128, offset: 128)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1874, file: !30, line: 364, baseType: !246, size: 128, offset: 256)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1874, file: !30, line: 365, baseType: !246, size: 128, offset: 384)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1874, file: !30, line: 366, baseType: !235, size: 8, offset: 512)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1874, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !238, file: !30, line: 485, baseType: !1883, size: 2304, offset: 1792)
!1883 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1884)
!1884 = !{!1885, !1886, !1887, !1888, !1889, !1890, !1891, !1892, !1893, !1894, !1895, !1896, !1897, !1898, !1899, !1900, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1980, !1984}
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1883, file: !37, line: 566, baseType: !1834, size: 32)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1883, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1883, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1883, file: !37, line: 569, baseType: !235, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1883, file: !37, line: 570, baseType: !235, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1883, file: !37, line: 571, baseType: !235, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1883, file: !37, line: 572, baseType: !235, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1883, file: !37, line: 573, baseType: !235, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1883, file: !37, line: 574, baseType: !235, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1883, file: !37, line: 575, baseType: !235, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1883, file: !37, line: 576, baseType: !235, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1883, file: !37, line: 577, baseType: !569, size: 32, offset: 64)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1883, file: !37, line: 578, baseType: !259, offset: 96)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1883, file: !37, line: 580, baseType: !246, size: 128, offset: 128)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1883, file: !37, line: 581, baseType: !872, size: 192, offset: 256)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1883, file: !37, line: 582, baseType: !1901, size: 64, offset: 448)
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1903, line: 43, size: 1472, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905, !1906, !1907, !1908, !1909, !1912, !1924, !1925, !1926, !1927, !1928, !1929, !1930, !1931, !1932, !1933, !1934, !1935, !1936, !1937}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1902, file: !1903, line: 44, baseType: !80, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1902, file: !1903, line: 45, baseType: !92, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1902, file: !1903, line: 46, baseType: !246, size: 128, offset: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1902, file: !1903, line: 47, baseType: !259, offset: 256)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1902, file: !1903, line: 48, baseType: !1910, size: 64, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1902, file: !1903, line: 49, baseType: !1913, size: 320, offset: 320)
!1913 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1914, line: 11, size: 320, elements: !1915)
!1914 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1915 = !{!1916, !1917, !1918, !1923}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1913, file: !1914, line: 16, baseType: !836, size: 128)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1913, file: !1914, line: 17, baseType: !110, size: 64, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1913, file: !1914, line: 18, baseType: !1919, size: 64, offset: 192)
!1919 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1920, size: 64)
!1920 = !DISubroutineType(types: !1921)
!1921 = !{null, !1922}
!1922 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1913, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1913, file: !1914, line: 19, baseType: !569, size: 32, offset: 256)
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1902, file: !1903, line: 50, baseType: !110, size: 64, offset: 640)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1902, file: !1903, line: 51, baseType: !645, size: 64, offset: 704)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1902, file: !1903, line: 52, baseType: !645, size: 64, offset: 768)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1902, file: !1903, line: 53, baseType: !645, size: 64, offset: 832)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1902, file: !1903, line: 54, baseType: !645, size: 64, offset: 896)
!1929 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1902, file: !1903, line: 55, baseType: !645, size: 64, offset: 960)
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1902, file: !1903, line: 56, baseType: !110, size: 64, offset: 1024)
!1931 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1902, file: !1903, line: 57, baseType: !110, size: 64, offset: 1088)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1902, file: !1903, line: 58, baseType: !110, size: 64, offset: 1152)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1902, file: !1903, line: 59, baseType: !110, size: 64, offset: 1216)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1902, file: !1903, line: 60, baseType: !110, size: 64, offset: 1280)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1902, file: !1903, line: 61, baseType: !1731, size: 64, offset: 1344)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1902, file: !1903, line: 62, baseType: !235, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1902, file: !1903, line: 63, baseType: !235, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1883, file: !37, line: 583, baseType: !235, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1883, file: !37, line: 584, baseType: !235, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1883, file: !37, line: 585, baseType: !235, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1883, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1883, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1883, file: !37, line: 592, baseType: !637, size: 512, offset: 576)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1883, file: !37, line: 593, baseType: !417, size: 64, offset: 1088)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1883, file: !37, line: 594, baseType: !1470, size: 256, offset: 1152)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1883, file: !37, line: 595, baseType: !843, size: 128, offset: 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1883, file: !37, line: 596, baseType: !1910, size: 64, offset: 1536)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1883, file: !37, line: 597, baseType: !437, size: 32, offset: 1600)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1883, file: !37, line: 598, baseType: !437, size: 32, offset: 1632)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1883, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1883, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1883, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1883, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1883, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1883, file: !37, line: 604, baseType: !235, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1883, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1883, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1883, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1883, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1883, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1883, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1883, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1883, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1883, file: !37, line: 613, baseType: !92, size: 32, offset: 1792)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1883, file: !37, line: 614, baseType: !92, size: 32, offset: 1824)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1883, file: !37, line: 615, baseType: !417, size: 64, offset: 1856)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1883, file: !37, line: 616, baseType: !417, size: 64, offset: 1920)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1883, file: !37, line: 617, baseType: !417, size: 64, offset: 1984)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1883, file: !37, line: 618, baseType: !417, size: 64, offset: 2048)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1883, file: !37, line: 620, baseType: !1971, size: 64, offset: 2112)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1973)
!1973 = !{!1974, !1975, !1976, !1977}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1972, file: !37, line: 537, baseType: !259)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1972, file: !37, line: 538, baseType: !7, size: 32)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1972, file: !37, line: 540, baseType: !246, size: 128, offset: 64)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1972, file: !37, line: 543, baseType: !1978, size: 64, offset: 192)
!1978 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1979, size: 64)
!1979 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1883, file: !37, line: 621, baseType: !1981, size: 64, offset: 2176)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = !DISubroutineType(types: !1983)
!1983 = !{null, !1731, !796}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1883, file: !37, line: 622, baseType: !1985, size: 64, offset: 2240)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !238, file: !30, line: 486, baseType: !1988, size: 64, offset: 4096)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1990)
!1990 = !{!1991, !1992, !1993, !1997, !1998, !1999}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1989, file: !37, line: 643, baseType: !1759, size: 1472)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1989, file: !37, line: 644, baseType: !1762, size: 64, offset: 1472)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1989, file: !37, line: 645, baseType: !1994, size: 64, offset: 1536)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = !DISubroutineType(types: !1996)
!1996 = !{null, !1731, !235}
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1989, file: !37, line: 646, baseType: !1762, size: 64, offset: 1600)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1989, file: !37, line: 647, baseType: !1753, size: 64, offset: 1664)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1989, file: !37, line: 648, baseType: !1753, size: 64, offset: 1728)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !238, file: !30, line: 493, baseType: !2001, size: 64, offset: 4160)
!2001 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2002, size: 64)
!2002 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !30, line: 493, flags: DIFlagFwdDecl)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !238, file: !30, line: 499, baseType: !246, size: 128, offset: 4224)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !238, file: !30, line: 502, baseType: !2005, size: 64, offset: 4352)
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2007)
!2007 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !238, file: !30, line: 504, baseType: !2009, size: 64, offset: 4416)
!2009 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !417, size: 64)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !238, file: !30, line: 505, baseType: !417, size: 64, offset: 4480)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !238, file: !30, line: 510, baseType: !417, size: 64, offset: 4544)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !238, file: !30, line: 511, baseType: !2013, size: 64, offset: 4608)
!2013 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2014, size: 64)
!2014 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2015)
!2015 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !238, file: !30, line: 513, baseType: !2017, size: 64, offset: 4672)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2019)
!2019 = !{!2020, !2021}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2018, file: !30, line: 293, baseType: !7, size: 32)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2018, file: !30, line: 294, baseType: !110, size: 64, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !238, file: !30, line: 515, baseType: !246, size: 128, offset: 4736)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !238, file: !30, line: 526, baseType: !2024, offset: 4864)
!2024 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2025, line: 5, elements: !273)
!2025 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !238, file: !30, line: 528, baseType: !2027, size: 64, offset: 4864)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2029, line: 51, size: 1344, elements: !2030)
!2029 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2030 = !{!2031, !2032, !2034, !2035, !2125, !2134, !2135, !2136, !2137, !2138, !2139, !2140}
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2028, file: !2029, line: 52, baseType: !80, size: 64)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2028, file: !2029, line: 53, baseType: !2033, size: 32, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2029, line: 28, baseType: !569)
!2034 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2028, file: !2029, line: 54, baseType: !80, size: 64, offset: 128)
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
!2057 = !{!235, !2058}
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2059, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2036)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2044, file: !2037, line: 114, baseType: !2061, size: 64, offset: 192)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!216, !2058, !2064}
!2064 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2065, size: 64)
!2065 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2044, file: !2037, line: 116, baseType: !2067, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2068, size: 64)
!2068 = !DISubroutineType(types: !2069)
!2069 = !{!235, !2058, !80}
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2044, file: !2037, line: 118, baseType: !2071, size: 64, offset: 320)
!2071 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2072, size: 64)
!2072 = !DISubroutineType(types: !2073)
!2073 = !{!92, !2058, !80, !7, !60, !346}
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2044, file: !2037, line: 123, baseType: !2075, size: 64, offset: 384)
!2075 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2076, size: 64)
!2076 = !DISubroutineType(types: !2077)
!2077 = !{!92, !2058, !80, !2078, !346}
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !80, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2044, file: !2037, line: 126, baseType: !2080, size: 64, offset: 448)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!80, !2058}
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
!2095 = !{!2040, !2058, !80}
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2044, file: !2037, line: 135, baseType: !2097, size: 64, offset: 768)
!2097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2098, size: 64)
!2098 = !DISubroutineType(types: !2099)
!2099 = !{!92, !2058, !80, !80, !7, !7, !2100}
!2100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2101, size: 64)
!2101 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2037, line: 43, size: 640, elements: !2102)
!2102 = !{!2103, !2104, !2105}
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2101, file: !2037, line: 44, baseType: !2040, size: 64)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2101, file: !2037, line: 45, baseType: !7, size: 32, offset: 64)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2101, file: !2037, line: 46, baseType: !2106, size: 512, offset: 128)
!2106 = !DICompositeType(tag: DW_TAG_array_type, baseType: !417, size: 512, elements: !675)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2044, file: !2037, line: 140, baseType: !2089, size: 64, offset: 832)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2044, file: !2037, line: 143, baseType: !2085, size: 64, offset: 896)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2044, file: !2037, line: 145, baseType: !2047, size: 64, offset: 960)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2044, file: !2037, line: 146, baseType: !2111, size: 64, offset: 1024)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DISubroutineType(types: !2113)
!2113 = !{!92, !2058, !2114}
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2037, line: 29, size: 128, elements: !2116)
!2116 = !{!2117, !2118, !2119}
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2115, file: !2037, line: 30, baseType: !7, size: 32)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2115, file: !2037, line: 31, baseType: !7, size: 32, offset: 32)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2115, file: !2037, line: 32, baseType: !2058, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2044, file: !2037, line: 148, baseType: !2121, size: 64, offset: 1088)
!2121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2122, size: 64)
!2122 = !DISubroutineType(types: !2123)
!2123 = !{!92, !2058, !1731}
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2036, file: !2037, line: 20, baseType: !1731, size: 64, offset: 128)
!2125 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2028, file: !2029, line: 57, baseType: !2126, size: 64, offset: 384)
!2126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2127, size: 64)
!2127 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2029, line: 31, size: 704, elements: !2128)
!2128 = !{!2129, !2130, !2131, !2132, !2133}
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2127, file: !2029, line: 32, baseType: !300, size: 64)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2127, file: !2029, line: 33, baseType: !92, size: 32, offset: 64)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2127, file: !2029, line: 34, baseType: !60, size: 64, offset: 128)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2127, file: !2029, line: 35, baseType: !2126, size: 64, offset: 192)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2127, file: !2029, line: 43, baseType: !367, size: 448, offset: 256)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2028, file: !2029, line: 58, baseType: !2126, size: 64, offset: 448)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2028, file: !2029, line: 59, baseType: !2027, size: 64, offset: 512)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2028, file: !2029, line: 60, baseType: !2027, size: 64, offset: 576)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2028, file: !2029, line: 61, baseType: !2027, size: 64, offset: 640)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2028, file: !2029, line: 63, baseType: !241, size: 512, offset: 704)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2028, file: !2029, line: 65, baseType: !110, size: 64, offset: 1216)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2028, file: !2029, line: 66, baseType: !60, size: 64, offset: 1280)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !238, file: !30, line: 529, baseType: !2040, size: 64, offset: 4928)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !238, file: !30, line: 534, baseType: !2143, size: 32, offset: 4992)
!2143 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !59, line: 16, baseType: !2144)
!2144 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !59, line: 13, baseType: !569)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !238, file: !30, line: 535, baseType: !569, size: 32, offset: 5024)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !238, file: !30, line: 537, baseType: !259, offset: 5056)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !238, file: !30, line: 538, baseType: !246, size: 128, offset: 5056)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !238, file: !30, line: 540, baseType: !2149, size: 64, offset: 5184)
!2149 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2150, size: 64)
!2150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2151, line: 54, size: 960, elements: !2152)
!2151 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2152 = !{!2153, !2154, !2155, !2156, !2157, !2158, !2159, !2163, !2167, !2168, !2169, !2170, !2174, !2178, !2179}
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2150, file: !2151, line: 55, baseType: !80, size: 64)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2150, file: !2151, line: 56, baseType: !196, size: 64, offset: 64)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2150, file: !2151, line: 58, baseType: !352, size: 64, offset: 128)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2150, file: !2151, line: 59, baseType: !352, size: 64, offset: 192)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2150, file: !2151, line: 60, baseType: !252, size: 64, offset: 256)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2150, file: !2151, line: 62, baseType: !1744, size: 64, offset: 320)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2150, file: !2151, line: 63, baseType: !2160, size: 64, offset: 384)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!300, !1731, !1751}
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2150, file: !2151, line: 65, baseType: !2164, size: 64, offset: 448)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DISubroutineType(types: !2166)
!2166 = !{null, !2149}
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2150, file: !2151, line: 66, baseType: !1753, size: 64, offset: 512)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2150, file: !2151, line: 68, baseType: !1762, size: 64, offset: 576)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2150, file: !2151, line: 70, baseType: !1519, size: 64, offset: 640)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2150, file: !2151, line: 71, baseType: !2171, size: 64, offset: 704)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{!216, !1731}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2150, file: !2151, line: 73, baseType: !2175, size: 64, offset: 768)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{null, !1731, !1554, !1561}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2150, file: !2151, line: 75, baseType: !1757, size: 64, offset: 832)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2150, file: !2151, line: 77, baseType: !1863, size: 64, offset: 896)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !238, file: !30, line: 541, baseType: !352, size: 64, offset: 5248)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !238, file: !30, line: 543, baseType: !1753, size: 64, offset: 5312)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !238, file: !30, line: 544, baseType: !2183, size: 64, offset: 5376)
!2183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2184, size: 64)
!2184 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !238, file: !30, line: 545, baseType: !2186, size: 64, offset: 5440)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !238, file: !30, line: 547, baseType: !235, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !238, file: !30, line: 548, baseType: !235, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !238, file: !30, line: 549, baseType: !235, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !238, file: !30, line: 550, baseType: !235, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !230, file: !223, line: 27, baseType: !417, size: 64, offset: 5696)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !230, file: !223, line: 28, baseType: !2018, size: 128, offset: 5760)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !230, file: !223, line: 29, baseType: !569, size: 32, offset: 5888)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !230, file: !223, line: 30, baseType: !2196, size: 64, offset: 5952)
!2196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2197, size: 64)
!2197 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2198, line: 20, size: 512, elements: !2199)
!2198 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2199 = !{!2200, !2202, !2203, !2204, !2205, !2206, !2207, !2208}
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2197, file: !2198, line: 21, baseType: !2201, size: 64)
!2201 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !59, line: 158, baseType: !1265)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2197, file: !2198, line: 22, baseType: !2201, size: 64, offset: 64)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2197, file: !2198, line: 23, baseType: !80, size: 64, offset: 128)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2197, file: !2198, line: 24, baseType: !110, size: 64, offset: 192)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2197, file: !2198, line: 25, baseType: !110, size: 64, offset: 256)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2197, file: !2198, line: 26, baseType: !2196, size: 64, offset: 320)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2197, file: !2198, line: 26, baseType: !2196, size: 64, offset: 384)
!2208 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2197, file: !2198, line: 26, baseType: !2196, size: 64, offset: 448)
!2209 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !230, file: !223, line: 32, baseType: !2210, size: 64, offset: 6016)
!2210 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2211, size: 64)
!2211 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2212)
!2212 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !204, line: 586, size: 256, elements: !2213)
!2213 = !{!2214, !2216}
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2212, file: !204, line: 587, baseType: !2215, size: 160)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !82, size: 160, elements: !1339)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2212, file: !204, line: 588, baseType: !1823, size: 64, offset: 192)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !230, file: !223, line: 33, baseType: !300, size: 64, offset: 6080)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !230, file: !223, line: 36, baseType: !2219, size: 64, offset: 6144)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !223, line: 18, flags: DIFlagFwdDecl)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !230, file: !223, line: 39, baseType: !2222, offset: 6208)
!2222 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2025, line: 8, elements: !273)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !222, file: !223, line: 202, baseType: !226, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !222, file: !223, line: 203, baseType: !2225, size: 64, offset: 128)
!2225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2226, size: 64)
!2226 = !DISubroutineType(types: !2227)
!2227 = !{null, !229}
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !222, file: !223, line: 204, baseType: !2229, size: 64, offset: 192)
!2229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2230, size: 64)
!2230 = !DISubroutineType(types: !2231)
!2231 = !{!92, !229, !1834}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !222, file: !223, line: 205, baseType: !226, size: 64, offset: 256)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !222, file: !223, line: 206, baseType: !1803, size: 1152, offset: 320)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !222, file: !223, line: 207, baseType: !2210, size: 64, offset: 1472)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !222, file: !223, line: 208, baseType: !235, size: 8, offset: 1536)
!2236 = !DIGlobalVariableExpression(var: !2237, expr: !DIExpression())
!2237 = distinct !DIGlobalVariable(name: "of_fixed_clk_ids", scope: !2, file: !3, line: 206, type: !2238, isLocal: true, isDefinition: true)
!2238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !202, size: 3200, elements: !1110)
!2239 = !{i32 7, !"Dwarf Version", i32 4}
!2240 = !{i32 2, !"Debug Info Version", i32 3}
!2241 = !{i32 1, !"wchar_size", i32 2}
!2242 = !{i32 1, !"Code Model", i32 2}
!2243 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2244 = distinct !DISubprogram(name: "clk_fixed_rate_recalc_rate", scope: !3, file: !3, line: 29, type: !108, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2245 = !DILocalVariable(name: "hw", arg: 1, scope: !2244, file: !3, line: 29, type: !93)
!2246 = !DILocation(line: 29, column: 64, scope: !2244)
!2247 = !DILocalVariable(name: "parent_rate", arg: 2, scope: !2244, file: !3, line: 30, type: !110)
!2248 = !DILocation(line: 30, column: 17, scope: !2244)
!2249 = !DILocalVariable(name: "__mptr", scope: !2250, file: !3, line: 32, type: !60)
!2250 = distinct !DILexicalBlock(scope: !2244, file: !3, line: 32, column: 9)
!2251 = !DILocation(line: 32, column: 9, scope: !2250)
!2252 = !DILocation(line: 32, column: 9, scope: !2253)
!2253 = distinct !DILexicalBlock(scope: !2250, file: !3, line: 32, column: 9)
!2254 = !DILocation(line: 32, column: 32, scope: !2244)
!2255 = !DILocation(line: 32, column: 2, scope: !2244)
!2256 = distinct !DISubprogram(name: "clk_fixed_rate_recalc_accuracy", scope: !3, file: !3, line: 35, type: !108, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2257 = !DILocalVariable(name: "hw", arg: 1, scope: !2256, file: !3, line: 35, type: !93)
!2258 = !DILocation(line: 35, column: 68, scope: !2256)
!2259 = !DILocalVariable(name: "parent_accuracy", arg: 2, scope: !2256, file: !3, line: 36, type: !110)
!2260 = !DILocation(line: 36, column: 17, scope: !2256)
!2261 = !DILocalVariable(name: "fixed", scope: !2256, file: !3, line: 38, type: !61)
!2262 = !DILocation(line: 38, column: 25, scope: !2256)
!2263 = !DILocalVariable(name: "__mptr", scope: !2264, file: !3, line: 38, type: !60)
!2264 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 38, column: 33)
!2265 = !DILocation(line: 38, column: 33, scope: !2264)
!2266 = !DILocation(line: 38, column: 33, scope: !2267)
!2267 = distinct !DILexicalBlock(scope: !2264, file: !3, line: 38, column: 33)
!2268 = !DILocation(line: 40, column: 6, scope: !2269)
!2269 = distinct !DILexicalBlock(scope: !2256, file: !3, line: 40, column: 6)
!2270 = !DILocation(line: 40, column: 13, scope: !2269)
!2271 = !DILocation(line: 40, column: 19, scope: !2269)
!2272 = !DILocation(line: 40, column: 6, scope: !2256)
!2273 = !DILocation(line: 41, column: 10, scope: !2269)
!2274 = !DILocation(line: 41, column: 3, scope: !2269)
!2275 = !DILocation(line: 43, column: 9, scope: !2256)
!2276 = !DILocation(line: 43, column: 16, scope: !2256)
!2277 = !DILocation(line: 43, column: 2, scope: !2256)
!2278 = !DILocation(line: 44, column: 1, scope: !2256)
!2279 = distinct !DISubprogram(name: "__clk_hw_register_fixed_rate", scope: !3, file: !3, line: 52, type: !2280, scopeLine: 58, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2280 = !DISubroutineType(types: !2281)
!2281 = !{!93, !1731, !2027, !80, !80, !184, !179, !110, !110, !110, !110}
!2282 = !DILocalVariable(name: "dev", arg: 1, scope: !2279, file: !3, line: 52, type: !1731)
!2283 = !DILocation(line: 52, column: 60, scope: !2279)
!2284 = !DILocalVariable(name: "np", arg: 2, scope: !2279, file: !3, line: 53, type: !2027)
!2285 = !DILocation(line: 53, column: 23, scope: !2279)
!2286 = !DILocalVariable(name: "name", arg: 3, scope: !2279, file: !3, line: 53, type: !80)
!2287 = !DILocation(line: 53, column: 39, scope: !2279)
!2288 = !DILocalVariable(name: "parent_name", arg: 4, scope: !2279, file: !3, line: 54, type: !80)
!2289 = !DILocation(line: 54, column: 15, scope: !2279)
!2290 = !DILocalVariable(name: "parent_hw", arg: 5, scope: !2279, file: !3, line: 54, type: !184)
!2291 = !DILocation(line: 54, column: 49, scope: !2279)
!2292 = !DILocalVariable(name: "parent_data", arg: 6, scope: !2279, file: !3, line: 55, type: !179)
!2293 = !DILocation(line: 55, column: 33, scope: !2279)
!2294 = !DILocalVariable(name: "flags", arg: 7, scope: !2279, file: !3, line: 55, type: !110)
!2295 = !DILocation(line: 55, column: 60, scope: !2279)
!2296 = !DILocalVariable(name: "fixed_rate", arg: 8, scope: !2279, file: !3, line: 56, type: !110)
!2297 = !DILocation(line: 56, column: 17, scope: !2279)
!2298 = !DILocalVariable(name: "fixed_accuracy", arg: 9, scope: !2279, file: !3, line: 56, type: !110)
!2299 = !DILocation(line: 56, column: 43, scope: !2279)
!2300 = !DILocalVariable(name: "clk_fixed_flags", arg: 10, scope: !2279, file: !3, line: 57, type: !110)
!2301 = !DILocation(line: 57, column: 17, scope: !2279)
!2302 = !DILocalVariable(name: "fixed", scope: !2279, file: !3, line: 59, type: !61)
!2303 = !DILocation(line: 59, column: 25, scope: !2279)
!2304 = !DILocalVariable(name: "hw", scope: !2279, file: !3, line: 60, type: !93)
!2305 = !DILocation(line: 60, column: 17, scope: !2279)
!2306 = !DILocalVariable(name: "init", scope: !2279, file: !3, line: 61, type: !77)
!2307 = !DILocation(line: 61, column: 23, scope: !2279)
!2308 = !DILocalVariable(name: "ret", scope: !2279, file: !3, line: 62, type: !92)
!2309 = !DILocation(line: 62, column: 6, scope: !2279)
!2310 = !DILocation(line: 65, column: 10, scope: !2279)
!2311 = !DILocation(line: 65, column: 8, scope: !2279)
!2312 = !DILocation(line: 66, column: 7, scope: !2313)
!2313 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 66, column: 6)
!2314 = !DILocation(line: 66, column: 6, scope: !2279)
!2315 = !DILocation(line: 67, column: 10, scope: !2313)
!2316 = !DILocation(line: 67, column: 3, scope: !2313)
!2317 = !DILocation(line: 69, column: 14, scope: !2279)
!2318 = !DILocation(line: 69, column: 7, scope: !2279)
!2319 = !DILocation(line: 69, column: 12, scope: !2279)
!2320 = !DILocation(line: 70, column: 7, scope: !2279)
!2321 = !DILocation(line: 70, column: 11, scope: !2279)
!2322 = !DILocation(line: 71, column: 15, scope: !2279)
!2323 = !DILocation(line: 71, column: 7, scope: !2279)
!2324 = !DILocation(line: 71, column: 13, scope: !2279)
!2325 = !DILocation(line: 72, column: 22, scope: !2279)
!2326 = !DILocation(line: 72, column: 7, scope: !2279)
!2327 = !DILocation(line: 72, column: 20, scope: !2279)
!2328 = !DILocation(line: 73, column: 20, scope: !2279)
!2329 = !DILocation(line: 73, column: 7, scope: !2279)
!2330 = !DILocation(line: 73, column: 18, scope: !2279)
!2331 = !DILocation(line: 74, column: 21, scope: !2279)
!2332 = !DILocation(line: 74, column: 7, scope: !2279)
!2333 = !DILocation(line: 74, column: 19, scope: !2279)
!2334 = !DILocation(line: 75, column: 6, scope: !2335)
!2335 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 75, column: 6)
!2336 = !DILocation(line: 75, column: 18, scope: !2335)
!2337 = !DILocation(line: 75, column: 21, scope: !2335)
!2338 = !DILocation(line: 75, column: 31, scope: !2335)
!2339 = !DILocation(line: 75, column: 34, scope: !2335)
!2340 = !DILocation(line: 75, column: 6, scope: !2279)
!2341 = !DILocation(line: 76, column: 8, scope: !2335)
!2342 = !DILocation(line: 76, column: 20, scope: !2335)
!2343 = !DILocation(line: 76, column: 3, scope: !2335)
!2344 = !DILocation(line: 78, column: 8, scope: !2335)
!2345 = !DILocation(line: 78, column: 20, scope: !2335)
!2346 = !DILocation(line: 81, column: 17, scope: !2279)
!2347 = !DILocation(line: 81, column: 2, scope: !2279)
!2348 = !DILocation(line: 81, column: 9, scope: !2279)
!2349 = !DILocation(line: 81, column: 15, scope: !2279)
!2350 = !DILocation(line: 82, column: 22, scope: !2279)
!2351 = !DILocation(line: 82, column: 2, scope: !2279)
!2352 = !DILocation(line: 82, column: 9, scope: !2279)
!2353 = !DILocation(line: 82, column: 20, scope: !2279)
!2354 = !DILocation(line: 83, column: 26, scope: !2279)
!2355 = !DILocation(line: 83, column: 2, scope: !2279)
!2356 = !DILocation(line: 83, column: 9, scope: !2279)
!2357 = !DILocation(line: 83, column: 24, scope: !2279)
!2358 = !DILocation(line: 84, column: 2, scope: !2279)
!2359 = !DILocation(line: 84, column: 9, scope: !2279)
!2360 = !DILocation(line: 84, column: 12, scope: !2279)
!2361 = !DILocation(line: 84, column: 17, scope: !2279)
!2362 = !DILocation(line: 87, column: 8, scope: !2279)
!2363 = !DILocation(line: 87, column: 15, scope: !2279)
!2364 = !DILocation(line: 87, column: 5, scope: !2279)
!2365 = !DILocation(line: 88, column: 6, scope: !2366)
!2366 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 88, column: 6)
!2367 = !DILocation(line: 88, column: 10, scope: !2366)
!2368 = !DILocation(line: 88, column: 14, scope: !2366)
!2369 = !DILocation(line: 88, column: 6, scope: !2279)
!2370 = !DILocation(line: 89, column: 25, scope: !2366)
!2371 = !DILocation(line: 89, column: 30, scope: !2366)
!2372 = !DILocation(line: 89, column: 9, scope: !2366)
!2373 = !DILocation(line: 89, column: 7, scope: !2366)
!2374 = !DILocation(line: 89, column: 3, scope: !2366)
!2375 = !DILocation(line: 90, column: 11, scope: !2376)
!2376 = distinct !DILexicalBlock(scope: !2366, file: !3, line: 90, column: 11)
!2377 = !DILocation(line: 90, column: 11, scope: !2366)
!2378 = !DILocation(line: 91, column: 28, scope: !2376)
!2379 = !DILocation(line: 91, column: 32, scope: !2376)
!2380 = !DILocation(line: 91, column: 9, scope: !2376)
!2381 = !DILocation(line: 91, column: 7, scope: !2376)
!2382 = !DILocation(line: 91, column: 3, scope: !2376)
!2383 = !DILocation(line: 92, column: 6, scope: !2384)
!2384 = distinct !DILexicalBlock(scope: !2279, file: !3, line: 92, column: 6)
!2385 = !DILocation(line: 92, column: 6, scope: !2279)
!2386 = !DILocation(line: 93, column: 9, scope: !2387)
!2387 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 92, column: 11)
!2388 = !DILocation(line: 93, column: 3, scope: !2387)
!2389 = !DILocation(line: 94, column: 16, scope: !2387)
!2390 = !DILocation(line: 94, column: 8, scope: !2387)
!2391 = !DILocation(line: 94, column: 6, scope: !2387)
!2392 = !DILocation(line: 95, column: 2, scope: !2387)
!2393 = !DILocation(line: 97, column: 9, scope: !2279)
!2394 = !DILocation(line: 97, column: 2, scope: !2279)
!2395 = !DILocation(line: 98, column: 1, scope: !2279)
!2396 = distinct !DISubprogram(name: "kzalloc", scope: !51, file: !51, line: 662, type: !2397, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2397 = !DISubroutineType(types: !2398)
!2398 = !{!60, !346, !58}
!2399 = !DILocalVariable(name: "s", arg: 1, scope: !2400, file: !51, line: 445, type: !1186)
!2400 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !51, file: !51, line: 445, type: !2401, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2401 = !DISubroutineType(types: !2402)
!2402 = !{!60, !1186, !58, !346}
!2403 = !DILocation(line: 445, column: 72, scope: !2400, inlinedAt: !2404)
!2404 = distinct !DILocation(line: 552, column: 10, scope: !2405, inlinedAt: !2408)
!2405 = distinct !DILexicalBlock(scope: !2406, file: !51, line: 540, column: 34)
!2406 = distinct !DILexicalBlock(scope: !2407, file: !51, line: 540, column: 6)
!2407 = distinct !DISubprogram(name: "kmalloc", scope: !51, file: !51, line: 538, type: !2397, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2408 = distinct !DILocation(line: 664, column: 9, scope: !2396)
!2409 = !DILocalVariable(name: "flags", arg: 2, scope: !2400, file: !51, line: 446, type: !58)
!2410 = !DILocation(line: 446, column: 9, scope: !2400, inlinedAt: !2404)
!2411 = !DILocalVariable(name: "size", arg: 3, scope: !2400, file: !51, line: 446, type: !346)
!2412 = !DILocation(line: 446, column: 23, scope: !2400, inlinedAt: !2404)
!2413 = !DILocalVariable(name: "ret", scope: !2400, file: !51, line: 448, type: !60)
!2414 = !DILocation(line: 448, column: 8, scope: !2400, inlinedAt: !2404)
!2415 = !DILocalVariable(name: "flags", arg: 1, scope: !2416, file: !51, line: 318, type: !58)
!2416 = distinct !DISubprogram(name: "kmalloc_type", scope: !51, file: !51, line: 318, type: !2417, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2417 = !DISubroutineType(types: !2418)
!2418 = !{!50, !58}
!2419 = !DILocation(line: 318, column: 67, scope: !2416, inlinedAt: !2420)
!2420 = distinct !DILocation(line: 553, column: 20, scope: !2405, inlinedAt: !2408)
!2421 = !DILocalVariable(name: "size", arg: 1, scope: !2422, file: !51, line: 346, type: !346)
!2422 = distinct !DISubprogram(name: "kmalloc_index", scope: !51, file: !51, line: 346, type: !2423, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2423 = !DISubroutineType(types: !2424)
!2424 = !{!7, !346}
!2425 = !DILocation(line: 346, column: 58, scope: !2422, inlinedAt: !2426)
!2426 = distinct !DILocation(line: 547, column: 11, scope: !2405, inlinedAt: !2408)
!2427 = !DILocalVariable(name: "size", arg: 1, scope: !2428, file: !51, line: 472, type: !346)
!2428 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !51, file: !51, line: 472, type: !2429, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2429 = !DISubroutineType(types: !2430)
!2430 = !{!60, !346, !58, !7}
!2431 = !DILocation(line: 472, column: 28, scope: !2428, inlinedAt: !2432)
!2432 = distinct !DILocation(line: 481, column: 9, scope: !2433, inlinedAt: !2434)
!2433 = distinct !DISubprogram(name: "kmalloc_large", scope: !51, file: !51, line: 478, type: !2397, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2434 = distinct !DILocation(line: 545, column: 11, scope: !2435, inlinedAt: !2408)
!2435 = distinct !DILexicalBlock(scope: !2405, file: !51, line: 544, column: 7)
!2436 = !DILocalVariable(name: "flags", arg: 2, scope: !2428, file: !51, line: 472, type: !58)
!2437 = !DILocation(line: 472, column: 40, scope: !2428, inlinedAt: !2432)
!2438 = !DILocalVariable(name: "order", arg: 3, scope: !2428, file: !51, line: 472, type: !7)
!2439 = !DILocation(line: 472, column: 60, scope: !2428, inlinedAt: !2432)
!2440 = !DILocalVariable(name: "size", arg: 1, scope: !2433, file: !51, line: 478, type: !346)
!2441 = !DILocation(line: 478, column: 51, scope: !2433, inlinedAt: !2434)
!2442 = !DILocalVariable(name: "flags", arg: 2, scope: !2433, file: !51, line: 478, type: !58)
!2443 = !DILocation(line: 478, column: 63, scope: !2433, inlinedAt: !2434)
!2444 = !DILocalVariable(name: "order", scope: !2433, file: !51, line: 480, type: !7)
!2445 = !DILocation(line: 480, column: 15, scope: !2433, inlinedAt: !2434)
!2446 = !DILocalVariable(name: "size", arg: 1, scope: !2407, file: !51, line: 538, type: !346)
!2447 = !DILocation(line: 538, column: 45, scope: !2407, inlinedAt: !2408)
!2448 = !DILocalVariable(name: "flags", arg: 2, scope: !2407, file: !51, line: 538, type: !58)
!2449 = !DILocation(line: 538, column: 57, scope: !2407, inlinedAt: !2408)
!2450 = !DILocalVariable(name: "index", scope: !2405, file: !51, line: 542, type: !7)
!2451 = !DILocation(line: 542, column: 16, scope: !2405, inlinedAt: !2408)
!2452 = !DILocalVariable(name: "size", arg: 1, scope: !2396, file: !51, line: 662, type: !346)
!2453 = !DILocation(line: 662, column: 36, scope: !2396)
!2454 = !DILocalVariable(name: "flags", arg: 2, scope: !2396, file: !51, line: 662, type: !58)
!2455 = !DILocation(line: 662, column: 48, scope: !2396)
!2456 = !DILocation(line: 664, column: 17, scope: !2396)
!2457 = !DILocation(line: 664, column: 23, scope: !2396)
!2458 = !DILocation(line: 664, column: 29, scope: !2396)
!2459 = !DILocation(line: 540, column: 27, scope: !2406, inlinedAt: !2408)
!2460 = !DILocation(line: 540, column: 6, scope: !2406, inlinedAt: !2408)
!2461 = !DILocation(line: 540, column: 6, scope: !2407, inlinedAt: !2408)
!2462 = !DILocation(line: 544, column: 7, scope: !2435, inlinedAt: !2408)
!2463 = !DILocation(line: 544, column: 12, scope: !2435, inlinedAt: !2408)
!2464 = !DILocation(line: 544, column: 7, scope: !2405, inlinedAt: !2408)
!2465 = !DILocation(line: 545, column: 25, scope: !2435, inlinedAt: !2408)
!2466 = !DILocation(line: 545, column: 31, scope: !2435, inlinedAt: !2408)
!2467 = !DILocation(line: 480, column: 33, scope: !2433, inlinedAt: !2434)
!2468 = !DILocation(line: 480, column: 23, scope: !2433, inlinedAt: !2434)
!2469 = !DILocation(line: 481, column: 29, scope: !2433, inlinedAt: !2434)
!2470 = !DILocation(line: 481, column: 35, scope: !2433, inlinedAt: !2434)
!2471 = !DILocation(line: 481, column: 42, scope: !2433, inlinedAt: !2434)
!2472 = !DILocation(line: 474, column: 23, scope: !2428, inlinedAt: !2432)
!2473 = !DILocation(line: 474, column: 29, scope: !2428, inlinedAt: !2432)
!2474 = !DILocation(line: 474, column: 36, scope: !2428, inlinedAt: !2432)
!2475 = !DILocation(line: 474, column: 9, scope: !2428, inlinedAt: !2432)
!2476 = !DILocation(line: 545, column: 4, scope: !2435, inlinedAt: !2408)
!2477 = !DILocation(line: 547, column: 25, scope: !2405, inlinedAt: !2408)
!2478 = !DILocation(line: 348, column: 7, scope: !2479, inlinedAt: !2426)
!2479 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 348, column: 6)
!2480 = !DILocation(line: 348, column: 6, scope: !2422, inlinedAt: !2426)
!2481 = !DILocation(line: 349, column: 3, scope: !2479, inlinedAt: !2426)
!2482 = !DILocation(line: 351, column: 6, scope: !2483, inlinedAt: !2426)
!2483 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 351, column: 6)
!2484 = !DILocation(line: 351, column: 11, scope: !2483, inlinedAt: !2426)
!2485 = !DILocation(line: 351, column: 6, scope: !2422, inlinedAt: !2426)
!2486 = !DILocation(line: 352, column: 3, scope: !2483, inlinedAt: !2426)
!2487 = !DILocation(line: 354, column: 32, scope: !2488, inlinedAt: !2426)
!2488 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 354, column: 6)
!2489 = !DILocation(line: 354, column: 37, scope: !2488, inlinedAt: !2426)
!2490 = !DILocation(line: 354, column: 42, scope: !2488, inlinedAt: !2426)
!2491 = !DILocation(line: 354, column: 45, scope: !2488, inlinedAt: !2426)
!2492 = !DILocation(line: 354, column: 50, scope: !2488, inlinedAt: !2426)
!2493 = !DILocation(line: 354, column: 6, scope: !2422, inlinedAt: !2426)
!2494 = !DILocation(line: 355, column: 3, scope: !2488, inlinedAt: !2426)
!2495 = !DILocation(line: 356, column: 32, scope: !2496, inlinedAt: !2426)
!2496 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 356, column: 6)
!2497 = !DILocation(line: 356, column: 37, scope: !2496, inlinedAt: !2426)
!2498 = !DILocation(line: 356, column: 43, scope: !2496, inlinedAt: !2426)
!2499 = !DILocation(line: 356, column: 46, scope: !2496, inlinedAt: !2426)
!2500 = !DILocation(line: 356, column: 51, scope: !2496, inlinedAt: !2426)
!2501 = !DILocation(line: 356, column: 6, scope: !2422, inlinedAt: !2426)
!2502 = !DILocation(line: 357, column: 3, scope: !2496, inlinedAt: !2426)
!2503 = !DILocation(line: 358, column: 6, scope: !2504, inlinedAt: !2426)
!2504 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 358, column: 6)
!2505 = !DILocation(line: 358, column: 11, scope: !2504, inlinedAt: !2426)
!2506 = !DILocation(line: 358, column: 6, scope: !2422, inlinedAt: !2426)
!2507 = !DILocation(line: 358, column: 26, scope: !2504, inlinedAt: !2426)
!2508 = !DILocation(line: 359, column: 6, scope: !2509, inlinedAt: !2426)
!2509 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 359, column: 6)
!2510 = !DILocation(line: 359, column: 11, scope: !2509, inlinedAt: !2426)
!2511 = !DILocation(line: 359, column: 6, scope: !2422, inlinedAt: !2426)
!2512 = !DILocation(line: 359, column: 26, scope: !2509, inlinedAt: !2426)
!2513 = !DILocation(line: 360, column: 6, scope: !2514, inlinedAt: !2426)
!2514 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 360, column: 6)
!2515 = !DILocation(line: 360, column: 11, scope: !2514, inlinedAt: !2426)
!2516 = !DILocation(line: 360, column: 6, scope: !2422, inlinedAt: !2426)
!2517 = !DILocation(line: 360, column: 26, scope: !2514, inlinedAt: !2426)
!2518 = !DILocation(line: 361, column: 6, scope: !2519, inlinedAt: !2426)
!2519 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 361, column: 6)
!2520 = !DILocation(line: 361, column: 11, scope: !2519, inlinedAt: !2426)
!2521 = !DILocation(line: 361, column: 6, scope: !2422, inlinedAt: !2426)
!2522 = !DILocation(line: 361, column: 26, scope: !2519, inlinedAt: !2426)
!2523 = !DILocation(line: 362, column: 6, scope: !2524, inlinedAt: !2426)
!2524 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 362, column: 6)
!2525 = !DILocation(line: 362, column: 11, scope: !2524, inlinedAt: !2426)
!2526 = !DILocation(line: 362, column: 6, scope: !2422, inlinedAt: !2426)
!2527 = !DILocation(line: 362, column: 26, scope: !2524, inlinedAt: !2426)
!2528 = !DILocation(line: 363, column: 6, scope: !2529, inlinedAt: !2426)
!2529 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 363, column: 6)
!2530 = !DILocation(line: 363, column: 11, scope: !2529, inlinedAt: !2426)
!2531 = !DILocation(line: 363, column: 6, scope: !2422, inlinedAt: !2426)
!2532 = !DILocation(line: 363, column: 26, scope: !2529, inlinedAt: !2426)
!2533 = !DILocation(line: 364, column: 6, scope: !2534, inlinedAt: !2426)
!2534 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 364, column: 6)
!2535 = !DILocation(line: 364, column: 11, scope: !2534, inlinedAt: !2426)
!2536 = !DILocation(line: 364, column: 6, scope: !2422, inlinedAt: !2426)
!2537 = !DILocation(line: 364, column: 26, scope: !2534, inlinedAt: !2426)
!2538 = !DILocation(line: 365, column: 6, scope: !2539, inlinedAt: !2426)
!2539 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 365, column: 6)
!2540 = !DILocation(line: 365, column: 11, scope: !2539, inlinedAt: !2426)
!2541 = !DILocation(line: 365, column: 6, scope: !2422, inlinedAt: !2426)
!2542 = !DILocation(line: 365, column: 26, scope: !2539, inlinedAt: !2426)
!2543 = !DILocation(line: 366, column: 6, scope: !2544, inlinedAt: !2426)
!2544 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 366, column: 6)
!2545 = !DILocation(line: 366, column: 11, scope: !2544, inlinedAt: !2426)
!2546 = !DILocation(line: 366, column: 6, scope: !2422, inlinedAt: !2426)
!2547 = !DILocation(line: 366, column: 26, scope: !2544, inlinedAt: !2426)
!2548 = !DILocation(line: 367, column: 6, scope: !2549, inlinedAt: !2426)
!2549 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 367, column: 6)
!2550 = !DILocation(line: 367, column: 11, scope: !2549, inlinedAt: !2426)
!2551 = !DILocation(line: 367, column: 6, scope: !2422, inlinedAt: !2426)
!2552 = !DILocation(line: 367, column: 26, scope: !2549, inlinedAt: !2426)
!2553 = !DILocation(line: 368, column: 6, scope: !2554, inlinedAt: !2426)
!2554 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 368, column: 6)
!2555 = !DILocation(line: 368, column: 11, scope: !2554, inlinedAt: !2426)
!2556 = !DILocation(line: 368, column: 6, scope: !2422, inlinedAt: !2426)
!2557 = !DILocation(line: 368, column: 26, scope: !2554, inlinedAt: !2426)
!2558 = !DILocation(line: 369, column: 6, scope: !2559, inlinedAt: !2426)
!2559 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 369, column: 6)
!2560 = !DILocation(line: 369, column: 11, scope: !2559, inlinedAt: !2426)
!2561 = !DILocation(line: 369, column: 6, scope: !2422, inlinedAt: !2426)
!2562 = !DILocation(line: 369, column: 26, scope: !2559, inlinedAt: !2426)
!2563 = !DILocation(line: 370, column: 6, scope: !2564, inlinedAt: !2426)
!2564 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 370, column: 6)
!2565 = !DILocation(line: 370, column: 11, scope: !2564, inlinedAt: !2426)
!2566 = !DILocation(line: 370, column: 6, scope: !2422, inlinedAt: !2426)
!2567 = !DILocation(line: 370, column: 26, scope: !2564, inlinedAt: !2426)
!2568 = !DILocation(line: 371, column: 6, scope: !2569, inlinedAt: !2426)
!2569 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 371, column: 6)
!2570 = !DILocation(line: 371, column: 11, scope: !2569, inlinedAt: !2426)
!2571 = !DILocation(line: 371, column: 6, scope: !2422, inlinedAt: !2426)
!2572 = !DILocation(line: 371, column: 26, scope: !2569, inlinedAt: !2426)
!2573 = !DILocation(line: 372, column: 6, scope: !2574, inlinedAt: !2426)
!2574 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 372, column: 6)
!2575 = !DILocation(line: 372, column: 11, scope: !2574, inlinedAt: !2426)
!2576 = !DILocation(line: 372, column: 6, scope: !2422, inlinedAt: !2426)
!2577 = !DILocation(line: 372, column: 26, scope: !2574, inlinedAt: !2426)
!2578 = !DILocation(line: 373, column: 6, scope: !2579, inlinedAt: !2426)
!2579 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 373, column: 6)
!2580 = !DILocation(line: 373, column: 11, scope: !2579, inlinedAt: !2426)
!2581 = !DILocation(line: 373, column: 6, scope: !2422, inlinedAt: !2426)
!2582 = !DILocation(line: 373, column: 26, scope: !2579, inlinedAt: !2426)
!2583 = !DILocation(line: 374, column: 6, scope: !2584, inlinedAt: !2426)
!2584 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 374, column: 6)
!2585 = !DILocation(line: 374, column: 11, scope: !2584, inlinedAt: !2426)
!2586 = !DILocation(line: 374, column: 6, scope: !2422, inlinedAt: !2426)
!2587 = !DILocation(line: 374, column: 26, scope: !2584, inlinedAt: !2426)
!2588 = !DILocation(line: 375, column: 6, scope: !2589, inlinedAt: !2426)
!2589 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 375, column: 6)
!2590 = !DILocation(line: 375, column: 11, scope: !2589, inlinedAt: !2426)
!2591 = !DILocation(line: 375, column: 6, scope: !2422, inlinedAt: !2426)
!2592 = !DILocation(line: 375, column: 27, scope: !2589, inlinedAt: !2426)
!2593 = !DILocation(line: 376, column: 6, scope: !2594, inlinedAt: !2426)
!2594 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 376, column: 6)
!2595 = !DILocation(line: 376, column: 11, scope: !2594, inlinedAt: !2426)
!2596 = !DILocation(line: 376, column: 6, scope: !2422, inlinedAt: !2426)
!2597 = !DILocation(line: 376, column: 32, scope: !2594, inlinedAt: !2426)
!2598 = !DILocation(line: 377, column: 6, scope: !2599, inlinedAt: !2426)
!2599 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 377, column: 6)
!2600 = !DILocation(line: 377, column: 11, scope: !2599, inlinedAt: !2426)
!2601 = !DILocation(line: 377, column: 6, scope: !2422, inlinedAt: !2426)
!2602 = !DILocation(line: 377, column: 32, scope: !2599, inlinedAt: !2426)
!2603 = !DILocation(line: 378, column: 6, scope: !2604, inlinedAt: !2426)
!2604 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 378, column: 6)
!2605 = !DILocation(line: 378, column: 11, scope: !2604, inlinedAt: !2426)
!2606 = !DILocation(line: 378, column: 6, scope: !2422, inlinedAt: !2426)
!2607 = !DILocation(line: 378, column: 32, scope: !2604, inlinedAt: !2426)
!2608 = !DILocation(line: 379, column: 6, scope: !2609, inlinedAt: !2426)
!2609 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 379, column: 6)
!2610 = !DILocation(line: 379, column: 11, scope: !2609, inlinedAt: !2426)
!2611 = !DILocation(line: 379, column: 6, scope: !2422, inlinedAt: !2426)
!2612 = !DILocation(line: 379, column: 33, scope: !2609, inlinedAt: !2426)
!2613 = !DILocation(line: 380, column: 6, scope: !2614, inlinedAt: !2426)
!2614 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 380, column: 6)
!2615 = !DILocation(line: 380, column: 11, scope: !2614, inlinedAt: !2426)
!2616 = !DILocation(line: 380, column: 6, scope: !2422, inlinedAt: !2426)
!2617 = !DILocation(line: 380, column: 33, scope: !2614, inlinedAt: !2426)
!2618 = !DILocation(line: 381, column: 6, scope: !2619, inlinedAt: !2426)
!2619 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 381, column: 6)
!2620 = !DILocation(line: 381, column: 11, scope: !2619, inlinedAt: !2426)
!2621 = !DILocation(line: 381, column: 6, scope: !2422, inlinedAt: !2426)
!2622 = !DILocation(line: 381, column: 33, scope: !2619, inlinedAt: !2426)
!2623 = !DILocation(line: 382, column: 2, scope: !2624, inlinedAt: !2426)
!2624 = distinct !DILexicalBlock(scope: !2625, file: !51, line: 382, column: 2)
!2625 = distinct !DILexicalBlock(scope: !2422, file: !51, line: 382, column: 2)
!2626 = !{i32 -2144078087, i32 -2144078058, i32 -2144078012, i32 -2144077954, i32 -2144077900, i32 -2144077846, i32 -2144077791, i32 -2144077760}
!2627 = !DILocation(line: 382, column: 2, scope: !2628, inlinedAt: !2426)
!2628 = distinct !DILexicalBlock(scope: !2629, file: !51, line: 382, column: 2)
!2629 = distinct !DILexicalBlock(scope: !2625, file: !51, line: 382, column: 2)
!2630 = !{i32 -2144077317, i32 -2144077310, i32 -2144077256, i32 -2144077225, i32 -2144077195}
!2631 = !DILocation(line: 382, column: 2, scope: !2629, inlinedAt: !2426)
!2632 = !DILocation(line: 386, column: 1, scope: !2422, inlinedAt: !2426)
!2633 = !DILocation(line: 547, column: 9, scope: !2405, inlinedAt: !2408)
!2634 = !DILocation(line: 549, column: 8, scope: !2635, inlinedAt: !2408)
!2635 = distinct !DILexicalBlock(scope: !2405, file: !51, line: 549, column: 7)
!2636 = !DILocation(line: 549, column: 7, scope: !2405, inlinedAt: !2408)
!2637 = !DILocation(line: 550, column: 4, scope: !2635, inlinedAt: !2408)
!2638 = !DILocation(line: 553, column: 33, scope: !2405, inlinedAt: !2408)
!2639 = !DILocation(line: 325, column: 6, scope: !2640, inlinedAt: !2420)
!2640 = distinct !DILexicalBlock(scope: !2416, file: !51, line: 325, column: 6)
!2641 = !DILocation(line: 325, column: 6, scope: !2416, inlinedAt: !2420)
!2642 = !DILocation(line: 326, column: 3, scope: !2640, inlinedAt: !2420)
!2643 = !DILocation(line: 332, column: 9, scope: !2416, inlinedAt: !2420)
!2644 = !DILocation(line: 332, column: 15, scope: !2416, inlinedAt: !2420)
!2645 = !DILocation(line: 332, column: 2, scope: !2416, inlinedAt: !2420)
!2646 = !DILocation(line: 336, column: 1, scope: !2416, inlinedAt: !2420)
!2647 = !DILocation(line: 553, column: 5, scope: !2405, inlinedAt: !2408)
!2648 = !DILocation(line: 553, column: 41, scope: !2405, inlinedAt: !2408)
!2649 = !DILocation(line: 554, column: 5, scope: !2405, inlinedAt: !2408)
!2650 = !DILocation(line: 554, column: 12, scope: !2405, inlinedAt: !2408)
!2651 = !DILocation(line: 448, column: 31, scope: !2400, inlinedAt: !2404)
!2652 = !DILocation(line: 448, column: 34, scope: !2400, inlinedAt: !2404)
!2653 = !DILocation(line: 448, column: 14, scope: !2400, inlinedAt: !2404)
!2654 = !DILocation(line: 450, column: 22, scope: !2400, inlinedAt: !2404)
!2655 = !DILocation(line: 450, column: 25, scope: !2400, inlinedAt: !2404)
!2656 = !DILocation(line: 450, column: 30, scope: !2400, inlinedAt: !2404)
!2657 = !DILocation(line: 450, column: 36, scope: !2400, inlinedAt: !2404)
!2658 = !DILocation(line: 450, column: 8, scope: !2400, inlinedAt: !2404)
!2659 = !DILocation(line: 450, column: 6, scope: !2400, inlinedAt: !2404)
!2660 = !DILocation(line: 451, column: 9, scope: !2400, inlinedAt: !2404)
!2661 = !DILocation(line: 552, column: 3, scope: !2405, inlinedAt: !2408)
!2662 = !DILocation(line: 557, column: 19, scope: !2407, inlinedAt: !2408)
!2663 = !DILocation(line: 557, column: 25, scope: !2407, inlinedAt: !2408)
!2664 = !DILocation(line: 557, column: 9, scope: !2407, inlinedAt: !2408)
!2665 = !DILocation(line: 557, column: 2, scope: !2407, inlinedAt: !2408)
!2666 = !DILocation(line: 558, column: 1, scope: !2407, inlinedAt: !2408)
!2667 = !DILocation(line: 664, column: 2, scope: !2396)
!2668 = distinct !DISubprogram(name: "ERR_PTR", scope: !2669, file: !2669, line: 24, type: !2670, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2669 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2670 = !DISubroutineType(types: !2671)
!2671 = !{!60, !115}
!2672 = !DILocalVariable(name: "error", arg: 1, scope: !2668, file: !2669, line: 24, type: !115)
!2673 = !DILocation(line: 24, column: 48, scope: !2668)
!2674 = !DILocation(line: 26, column: 18, scope: !2668)
!2675 = !DILocation(line: 26, column: 9, scope: !2668)
!2676 = !DILocation(line: 26, column: 2, scope: !2668)
!2677 = distinct !DISubprogram(name: "clk_register_fixed_rate", scope: !3, file: !3, line: 101, type: !2678, scopeLine: 104, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2678 = !DISubroutineType(types: !2679)
!2679 = !{!72, !1731, !80, !80, !110, !110}
!2680 = !DILocalVariable(name: "dev", arg: 1, scope: !2677, file: !3, line: 101, type: !1731)
!2681 = !DILocation(line: 101, column: 52, scope: !2677)
!2682 = !DILocalVariable(name: "name", arg: 2, scope: !2677, file: !3, line: 101, type: !80)
!2683 = !DILocation(line: 101, column: 69, scope: !2677)
!2684 = !DILocalVariable(name: "parent_name", arg: 3, scope: !2677, file: !3, line: 102, type: !80)
!2685 = !DILocation(line: 102, column: 15, scope: !2677)
!2686 = !DILocalVariable(name: "flags", arg: 4, scope: !2677, file: !3, line: 102, type: !110)
!2687 = !DILocation(line: 102, column: 42, scope: !2677)
!2688 = !DILocalVariable(name: "fixed_rate", arg: 5, scope: !2677, file: !3, line: 103, type: !110)
!2689 = !DILocation(line: 103, column: 17, scope: !2677)
!2690 = !DILocalVariable(name: "hw", scope: !2677, file: !3, line: 105, type: !93)
!2691 = !DILocation(line: 105, column: 17, scope: !2677)
!2692 = !DILocation(line: 107, column: 7, scope: !2677)
!2693 = !DILocation(line: 107, column: 5, scope: !2677)
!2694 = !DILocation(line: 109, column: 13, scope: !2695)
!2695 = distinct !DILexicalBlock(scope: !2677, file: !3, line: 109, column: 6)
!2696 = !DILocation(line: 109, column: 6, scope: !2695)
!2697 = !DILocation(line: 109, column: 6, scope: !2677)
!2698 = !DILocation(line: 110, column: 19, scope: !2695)
!2699 = !DILocation(line: 110, column: 10, scope: !2695)
!2700 = !DILocation(line: 110, column: 3, scope: !2695)
!2701 = !DILocation(line: 111, column: 9, scope: !2677)
!2702 = !DILocation(line: 111, column: 13, scope: !2677)
!2703 = !DILocation(line: 111, column: 2, scope: !2677)
!2704 = !DILocation(line: 112, column: 1, scope: !2677)
!2705 = distinct !DISubprogram(name: "IS_ERR", scope: !2669, file: !2669, line: 34, type: !2706, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2706 = !DISubroutineType(types: !2707)
!2707 = !{!235, !216}
!2708 = !DILocalVariable(name: "ptr", arg: 1, scope: !2705, file: !2669, line: 34, type: !216)
!2709 = !DILocation(line: 34, column: 60, scope: !2705)
!2710 = !DILocation(line: 36, column: 9, scope: !2705)
!2711 = !DILocation(line: 36, column: 2, scope: !2705)
!2712 = distinct !DISubprogram(name: "ERR_CAST", scope: !2669, file: !2669, line: 51, type: !2713, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2713 = !DISubroutineType(types: !2714)
!2714 = !{!60, !216}
!2715 = !DILocalVariable(name: "ptr", arg: 1, scope: !2712, file: !2669, line: 51, type: !216)
!2716 = !DILocation(line: 51, column: 64, scope: !2712)
!2717 = !DILocation(line: 54, column: 18, scope: !2712)
!2718 = !DILocation(line: 54, column: 2, scope: !2712)
!2719 = distinct !DISubprogram(name: "clk_unregister_fixed_rate", scope: !3, file: !3, line: 115, type: !2720, scopeLine: 116, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2720 = !DISubroutineType(types: !2721)
!2721 = !{null, !72}
!2722 = !DILocalVariable(name: "clk", arg: 1, scope: !2719, file: !3, line: 115, type: !72)
!2723 = !DILocation(line: 115, column: 44, scope: !2719)
!2724 = !DILocalVariable(name: "hw", scope: !2719, file: !3, line: 117, type: !93)
!2725 = !DILocation(line: 117, column: 17, scope: !2719)
!2726 = !DILocation(line: 119, column: 20, scope: !2719)
!2727 = !DILocation(line: 119, column: 7, scope: !2719)
!2728 = !DILocation(line: 119, column: 5, scope: !2719)
!2729 = !DILocation(line: 120, column: 7, scope: !2730)
!2730 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 120, column: 6)
!2731 = !DILocation(line: 120, column: 6, scope: !2719)
!2732 = !DILocation(line: 121, column: 3, scope: !2730)
!2733 = !DILocation(line: 123, column: 17, scope: !2719)
!2734 = !DILocation(line: 123, column: 2, scope: !2719)
!2735 = !DILocalVariable(name: "__mptr", scope: !2736, file: !3, line: 124, type: !60)
!2736 = distinct !DILexicalBlock(scope: !2719, file: !3, line: 124, column: 8)
!2737 = !DILocation(line: 124, column: 8, scope: !2736)
!2738 = !DILocation(line: 124, column: 8, scope: !2739)
!2739 = distinct !DILexicalBlock(scope: !2736, file: !3, line: 124, column: 8)
!2740 = !DILocation(line: 124, column: 8, scope: !2719)
!2741 = !DILocation(line: 124, column: 2, scope: !2719)
!2742 = !DILocation(line: 125, column: 1, scope: !2719)
!2743 = distinct !DISubprogram(name: "clk_hw_unregister_fixed_rate", scope: !3, file: !3, line: 128, type: !96, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2744 = !DILocalVariable(name: "hw", arg: 1, scope: !2743, file: !3, line: 128, type: !93)
!2745 = !DILocation(line: 128, column: 50, scope: !2743)
!2746 = !DILocalVariable(name: "fixed", scope: !2743, file: !3, line: 130, type: !61)
!2747 = !DILocation(line: 130, column: 25, scope: !2743)
!2748 = !DILocalVariable(name: "__mptr", scope: !2749, file: !3, line: 132, type: !60)
!2749 = distinct !DILexicalBlock(scope: !2743, file: !3, line: 132, column: 10)
!2750 = !DILocation(line: 132, column: 10, scope: !2749)
!2751 = !DILocation(line: 132, column: 10, scope: !2752)
!2752 = distinct !DILexicalBlock(scope: !2749, file: !3, line: 132, column: 10)
!2753 = !DILocation(line: 132, column: 8, scope: !2743)
!2754 = !DILocation(line: 134, column: 20, scope: !2743)
!2755 = !DILocation(line: 134, column: 2, scope: !2743)
!2756 = !DILocation(line: 135, column: 8, scope: !2743)
!2757 = !DILocation(line: 135, column: 2, scope: !2743)
!2758 = !DILocation(line: 136, column: 1, scope: !2743)
!2759 = distinct !DISubprogram(name: "of_fixed_clk_setup", scope: !3, file: !3, line: 173, type: !2760, scopeLine: 174, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2760 = !DISubroutineType(types: !2761)
!2761 = !{null, !2027}
!2762 = !DILocalVariable(name: "node", arg: 1, scope: !2759, file: !3, line: 173, type: !2027)
!2763 = !DILocation(line: 173, column: 52, scope: !2759)
!2764 = !DILocation(line: 175, column: 22, scope: !2759)
!2765 = !DILocation(line: 175, column: 2, scope: !2759)
!2766 = !DILocation(line: 176, column: 1, scope: !2759)
!2767 = distinct !DISubprogram(name: "_of_fixed_clk_setup", scope: !3, file: !3, line: 140, type: !2768, scopeLine: 141, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2768 = !DISubroutineType(types: !2769)
!2769 = !{!93, !2027}
!2770 = !DILocalVariable(name: "node", arg: 1, scope: !2767, file: !3, line: 140, type: !2027)
!2771 = !DILocation(line: 140, column: 63, scope: !2767)
!2772 = !DILocalVariable(name: "hw", scope: !2767, file: !3, line: 142, type: !93)
!2773 = !DILocation(line: 142, column: 17, scope: !2767)
!2774 = !DILocalVariable(name: "clk_name", scope: !2767, file: !3, line: 143, type: !80)
!2775 = !DILocation(line: 143, column: 14, scope: !2767)
!2776 = !DILocation(line: 143, column: 25, scope: !2767)
!2777 = !DILocation(line: 143, column: 31, scope: !2767)
!2778 = !DILocalVariable(name: "rate", scope: !2767, file: !3, line: 144, type: !569)
!2779 = !DILocation(line: 144, column: 6, scope: !2767)
!2780 = !DILocalVariable(name: "accuracy", scope: !2767, file: !3, line: 145, type: !569)
!2781 = !DILocation(line: 145, column: 6, scope: !2767)
!2782 = !DILocalVariable(name: "ret", scope: !2767, file: !3, line: 146, type: !92)
!2783 = !DILocation(line: 146, column: 6, scope: !2767)
!2784 = !DILocation(line: 148, column: 27, scope: !2785)
!2785 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 148, column: 6)
!2786 = !DILocation(line: 148, column: 6, scope: !2785)
!2787 = !DILocation(line: 148, column: 6, scope: !2767)
!2788 = !DILocation(line: 149, column: 10, scope: !2785)
!2789 = !DILocation(line: 149, column: 3, scope: !2785)
!2790 = !DILocation(line: 151, column: 23, scope: !2767)
!2791 = !DILocation(line: 151, column: 2, scope: !2767)
!2792 = !DILocation(line: 153, column: 26, scope: !2767)
!2793 = !DILocation(line: 153, column: 2, scope: !2767)
!2794 = !DILocation(line: 155, column: 7, scope: !2767)
!2795 = !DILocation(line: 155, column: 5, scope: !2767)
!2796 = !DILocation(line: 157, column: 13, scope: !2797)
!2797 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 157, column: 6)
!2798 = !DILocation(line: 157, column: 6, scope: !2797)
!2799 = !DILocation(line: 157, column: 6, scope: !2767)
!2800 = !DILocation(line: 158, column: 10, scope: !2797)
!2801 = !DILocation(line: 158, column: 3, scope: !2797)
!2802 = !DILocation(line: 160, column: 31, scope: !2767)
!2803 = !DILocation(line: 160, column: 59, scope: !2767)
!2804 = !DILocation(line: 160, column: 8, scope: !2767)
!2805 = !DILocation(line: 160, column: 6, scope: !2767)
!2806 = !DILocation(line: 161, column: 6, scope: !2807)
!2807 = distinct !DILexicalBlock(scope: !2767, file: !3, line: 161, column: 6)
!2808 = !DILocation(line: 161, column: 6, scope: !2767)
!2809 = !DILocation(line: 162, column: 32, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !2807, file: !3, line: 161, column: 11)
!2811 = !DILocation(line: 162, column: 3, scope: !2810)
!2812 = !DILocation(line: 163, column: 18, scope: !2810)
!2813 = !DILocation(line: 163, column: 10, scope: !2810)
!2814 = !DILocation(line: 163, column: 3, scope: !2810)
!2815 = !DILocation(line: 166, column: 9, scope: !2767)
!2816 = !DILocation(line: 166, column: 2, scope: !2767)
!2817 = !DILocation(line: 167, column: 1, scope: !2767)
!2818 = distinct !DISubprogram(name: "of_fixed_clk_driver_init", scope: !3, file: !3, line: 219, type: !2819, scopeLine: 219, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2819 = !DISubroutineType(types: !2820)
!2820 = !{!92}
!2821 = !DILocation(line: 219, column: 1, scope: !2818)
!2822 = distinct !DISubprogram(name: "get_order", scope: !2823, file: !2823, line: 29, type: !2824, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2823 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!2824 = !DISubroutineType(types: !2825)
!2825 = !{!92, !110}
!2826 = !DILocalVariable(name: "x", arg: 1, scope: !2827, file: !2828, line: 366, type: !418)
!2827 = distinct !DISubprogram(name: "fls64", scope: !2828, file: !2828, line: 366, type: !2829, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2828 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!2829 = !DISubroutineType(types: !2830)
!2830 = !{!92, !418}
!2831 = !DILocation(line: 366, column: 40, scope: !2827, inlinedAt: !2832)
!2832 = distinct !DILocation(line: 46, column: 9, scope: !2822)
!2833 = !DILocalVariable(name: "bitpos", scope: !2827, file: !2828, line: 368, type: !92)
!2834 = !DILocation(line: 368, column: 6, scope: !2827, inlinedAt: !2832)
!2835 = !DILocalVariable(name: "size", arg: 1, scope: !2822, file: !2823, line: 29, type: !110)
!2836 = !DILocation(line: 29, column: 63, scope: !2822)
!2837 = !DILocation(line: 31, column: 27, scope: !2838)
!2838 = distinct !DILexicalBlock(scope: !2822, file: !2823, line: 31, column: 6)
!2839 = !DILocation(line: 31, column: 6, scope: !2838)
!2840 = !DILocation(line: 31, column: 6, scope: !2822)
!2841 = !DILocation(line: 32, column: 8, scope: !2842)
!2842 = distinct !DILexicalBlock(scope: !2843, file: !2823, line: 32, column: 7)
!2843 = distinct !DILexicalBlock(scope: !2838, file: !2823, line: 31, column: 34)
!2844 = !DILocation(line: 32, column: 7, scope: !2843)
!2845 = !DILocation(line: 33, column: 4, scope: !2842)
!2846 = !DILocation(line: 35, column: 7, scope: !2847)
!2847 = distinct !DILexicalBlock(scope: !2843, file: !2823, line: 35, column: 7)
!2848 = !DILocation(line: 35, column: 12, scope: !2847)
!2849 = !DILocation(line: 35, column: 7, scope: !2843)
!2850 = !DILocation(line: 36, column: 4, scope: !2847)
!2851 = !DILocation(line: 38, column: 10, scope: !2843)
!2852 = !DILocation(line: 38, column: 28, scope: !2843)
!2853 = !DILocation(line: 38, column: 41, scope: !2843)
!2854 = !DILocation(line: 38, column: 3, scope: !2843)
!2855 = !DILocation(line: 41, column: 6, scope: !2822)
!2856 = !DILocation(line: 42, column: 7, scope: !2822)
!2857 = !DILocation(line: 46, column: 15, scope: !2822)
!2858 = !DILocation(line: 374, column: 2, scope: !2827, inlinedAt: !2832)
!2859 = !DILocation(line: 376, column: 14, scope: !2827, inlinedAt: !2832)
!2860 = !{i32 287980}
!2861 = !DILocation(line: 377, column: 9, scope: !2827, inlinedAt: !2832)
!2862 = !DILocation(line: 377, column: 16, scope: !2827, inlinedAt: !2832)
!2863 = !DILocation(line: 46, column: 2, scope: !2822)
!2864 = !DILocation(line: 48, column: 1, scope: !2822)
!2865 = distinct !DISubprogram(name: "__ilog2_u64", scope: !2866, file: !2866, line: 30, type: !2867, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2866 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!2867 = !DISubroutineType(types: !2868)
!2868 = !{!92, !417}
!2869 = !DILocation(line: 366, column: 40, scope: !2827, inlinedAt: !2870)
!2870 = distinct !DILocation(line: 32, column: 9, scope: !2865)
!2871 = !DILocation(line: 368, column: 6, scope: !2827, inlinedAt: !2870)
!2872 = !DILocalVariable(name: "n", arg: 1, scope: !2865, file: !2866, line: 30, type: !417)
!2873 = !DILocation(line: 30, column: 21, scope: !2865)
!2874 = !DILocation(line: 32, column: 15, scope: !2865)
!2875 = !DILocation(line: 374, column: 2, scope: !2827, inlinedAt: !2870)
!2876 = !DILocation(line: 376, column: 14, scope: !2827, inlinedAt: !2870)
!2877 = !DILocation(line: 377, column: 9, scope: !2827, inlinedAt: !2870)
!2878 = !DILocation(line: 377, column: 16, scope: !2827, inlinedAt: !2870)
!2879 = !DILocation(line: 32, column: 18, scope: !2865)
!2880 = !DILocation(line: 32, column: 2, scope: !2865)
!2881 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !2882, file: !2882, line: 137, type: !2883, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2882 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!2883 = !DISubroutineType(types: !2884)
!2884 = !{!60, !1186, !216, !346, !58}
!2885 = !DILocalVariable(name: "s", arg: 1, scope: !2881, file: !2882, line: 137, type: !1186)
!2886 = !DILocation(line: 137, column: 54, scope: !2881)
!2887 = !DILocalVariable(name: "object", arg: 2, scope: !2881, file: !2882, line: 137, type: !216)
!2888 = !DILocation(line: 137, column: 69, scope: !2881)
!2889 = !DILocalVariable(name: "size", arg: 3, scope: !2881, file: !2882, line: 138, type: !346)
!2890 = !DILocation(line: 138, column: 12, scope: !2881)
!2891 = !DILocalVariable(name: "flags", arg: 4, scope: !2881, file: !2882, line: 138, type: !58)
!2892 = !DILocation(line: 138, column: 24, scope: !2881)
!2893 = !DILocation(line: 140, column: 17, scope: !2881)
!2894 = !DILocation(line: 140, column: 2, scope: !2881)
!2895 = distinct !DISubprogram(name: "of_property_read_u32", scope: !2029, file: !2029, line: 1214, type: !2896, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2896 = !DISubroutineType(types: !2897)
!2897 = !{!92, !2898, !80, !767}
!2898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2899, size: 64)
!2899 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2028)
!2900 = !DILocalVariable(name: "np", arg: 1, scope: !2895, file: !2029, line: 1214, type: !2898)
!2901 = !DILocation(line: 1214, column: 66, scope: !2895)
!2902 = !DILocalVariable(name: "propname", arg: 2, scope: !2895, file: !2029, line: 1215, type: !80)
!2903 = !DILocation(line: 1215, column: 24, scope: !2895)
!2904 = !DILocalVariable(name: "out_value", arg: 3, scope: !2895, file: !2029, line: 1216, type: !767)
!2905 = !DILocation(line: 1216, column: 17, scope: !2895)
!2906 = !DILocation(line: 1218, column: 36, scope: !2895)
!2907 = !DILocation(line: 1218, column: 40, scope: !2895)
!2908 = !DILocation(line: 1218, column: 50, scope: !2895)
!2909 = !DILocation(line: 1218, column: 9, scope: !2895)
!2910 = !DILocation(line: 1218, column: 2, scope: !2895)
!2911 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !2029, file: !2029, line: 494, type: !2912, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2912 = !DISubroutineType(types: !2913)
!2913 = !{!92, !2898, !80, !767, !346}
!2914 = !DILocalVariable(name: "np", arg: 1, scope: !2911, file: !2029, line: 494, type: !2898)
!2915 = !DILocation(line: 494, column: 72, scope: !2911)
!2916 = !DILocalVariable(name: "propname", arg: 2, scope: !2911, file: !2029, line: 495, type: !80)
!2917 = !DILocation(line: 495, column: 23, scope: !2911)
!2918 = !DILocalVariable(name: "out_values", arg: 3, scope: !2911, file: !2029, line: 496, type: !767)
!2919 = !DILocation(line: 496, column: 16, scope: !2911)
!2920 = !DILocalVariable(name: "sz", arg: 4, scope: !2911, file: !2029, line: 496, type: !346)
!2921 = !DILocation(line: 496, column: 35, scope: !2911)
!2922 = !DILocalVariable(name: "ret", scope: !2911, file: !2029, line: 498, type: !92)
!2923 = !DILocation(line: 498, column: 6, scope: !2911)
!2924 = !DILocation(line: 498, column: 48, scope: !2911)
!2925 = !DILocation(line: 498, column: 52, scope: !2911)
!2926 = !DILocation(line: 498, column: 62, scope: !2911)
!2927 = !DILocation(line: 499, column: 13, scope: !2911)
!2928 = !DILocation(line: 498, column: 12, scope: !2911)
!2929 = !DILocation(line: 500, column: 6, scope: !2930)
!2930 = distinct !DILexicalBlock(scope: !2911, file: !2029, line: 500, column: 6)
!2931 = !DILocation(line: 500, column: 10, scope: !2930)
!2932 = !DILocation(line: 500, column: 6, scope: !2911)
!2933 = !DILocation(line: 501, column: 3, scope: !2930)
!2934 = !DILocation(line: 503, column: 10, scope: !2930)
!2935 = !DILocation(line: 503, column: 3, scope: !2930)
!2936 = !DILocation(line: 504, column: 1, scope: !2911)
!2937 = distinct !DISubprogram(name: "of_fixed_clk_probe", scope: !3, file: !3, line: 189, type: !227, scopeLine: 190, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2938 = !DILocalVariable(name: "pdev", arg: 1, scope: !2937, file: !3, line: 189, type: !229)
!2939 = !DILocation(line: 189, column: 55, scope: !2937)
!2940 = !DILocalVariable(name: "hw", scope: !2937, file: !3, line: 191, type: !93)
!2941 = !DILocation(line: 191, column: 17, scope: !2937)
!2942 = !DILocation(line: 197, column: 27, scope: !2937)
!2943 = !DILocation(line: 197, column: 33, scope: !2937)
!2944 = !DILocation(line: 197, column: 37, scope: !2937)
!2945 = !DILocation(line: 197, column: 7, scope: !2937)
!2946 = !DILocation(line: 197, column: 5, scope: !2937)
!2947 = !DILocation(line: 198, column: 13, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2937, file: !3, line: 198, column: 6)
!2949 = !DILocation(line: 198, column: 6, scope: !2948)
!2950 = !DILocation(line: 198, column: 6, scope: !2937)
!2951 = !DILocation(line: 199, column: 18, scope: !2948)
!2952 = !DILocation(line: 199, column: 10, scope: !2948)
!2953 = !DILocation(line: 199, column: 3, scope: !2948)
!2954 = !DILocation(line: 201, column: 23, scope: !2937)
!2955 = !DILocation(line: 201, column: 29, scope: !2937)
!2956 = !DILocation(line: 201, column: 2, scope: !2937)
!2957 = !DILocation(line: 203, column: 2, scope: !2937)
!2958 = !DILocation(line: 204, column: 1, scope: !2937)
!2959 = distinct !DISubprogram(name: "of_fixed_clk_remove", scope: !3, file: !3, line: 179, type: !227, scopeLine: 180, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2960 = !DILocalVariable(name: "pdev", arg: 1, scope: !2959, file: !3, line: 179, type: !229)
!2961 = !DILocation(line: 179, column: 56, scope: !2959)
!2962 = !DILocalVariable(name: "hw", scope: !2959, file: !3, line: 181, type: !93)
!2963 = !DILocation(line: 181, column: 17, scope: !2959)
!2964 = !DILocation(line: 181, column: 43, scope: !2959)
!2965 = !DILocation(line: 181, column: 22, scope: !2959)
!2966 = !DILocation(line: 183, column: 22, scope: !2959)
!2967 = !DILocation(line: 183, column: 28, scope: !2959)
!2968 = !DILocation(line: 183, column: 32, scope: !2959)
!2969 = !DILocation(line: 183, column: 2, scope: !2959)
!2970 = !DILocation(line: 184, column: 31, scope: !2959)
!2971 = !DILocation(line: 184, column: 2, scope: !2959)
!2972 = !DILocation(line: 186, column: 2, scope: !2959)
!2973 = distinct !DISubprogram(name: "PTR_ERR", scope: !2669, file: !2669, line: 29, type: !2974, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2974 = !DISubroutineType(types: !2975)
!2975 = !{!115, !216}
!2976 = !DILocalVariable(name: "ptr", arg: 1, scope: !2973, file: !2669, line: 29, type: !216)
!2977 = !DILocation(line: 29, column: 61, scope: !2973)
!2978 = !DILocation(line: 31, column: 16, scope: !2973)
!2979 = !DILocation(line: 31, column: 9, scope: !2973)
!2980 = !DILocation(line: 31, column: 2, scope: !2973)
!2981 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !223, file: !223, line: 236, type: !2982, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2982 = !DISubroutineType(types: !2983)
!2983 = !{null, !229, !60}
!2984 = !DILocalVariable(name: "pdev", arg: 1, scope: !2981, file: !223, line: 236, type: !229)
!2985 = !DILocation(line: 236, column: 65, scope: !2981)
!2986 = !DILocalVariable(name: "data", arg: 2, scope: !2981, file: !223, line: 237, type: !60)
!2987 = !DILocation(line: 237, column: 12, scope: !2981)
!2988 = !DILocation(line: 239, column: 19, scope: !2981)
!2989 = !DILocation(line: 239, column: 25, scope: !2981)
!2990 = !DILocation(line: 239, column: 30, scope: !2981)
!2991 = !DILocation(line: 239, column: 2, scope: !2981)
!2992 = !DILocation(line: 240, column: 1, scope: !2981)
!2993 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2994, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!2994 = !DISubroutineType(types: !2995)
!2995 = !{null, !1731, !60}
!2996 = !DILocalVariable(name: "dev", arg: 1, scope: !2993, file: !30, line: 660, type: !1731)
!2997 = !DILocation(line: 660, column: 51, scope: !2993)
!2998 = !DILocalVariable(name: "data", arg: 2, scope: !2993, file: !30, line: 660, type: !60)
!2999 = !DILocation(line: 660, column: 62, scope: !2993)
!3000 = !DILocation(line: 662, column: 21, scope: !2993)
!3001 = !DILocation(line: 662, column: 2, scope: !2993)
!3002 = !DILocation(line: 662, column: 7, scope: !2993)
!3003 = !DILocation(line: 662, column: 19, scope: !2993)
!3004 = !DILocation(line: 663, column: 1, scope: !2993)
!3005 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !223, file: !223, line: 231, type: !3006, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3006 = !DISubroutineType(types: !3007)
!3007 = !{!60, !3008}
!3008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3009, size: 64)
!3009 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !230)
!3010 = !DILocalVariable(name: "pdev", arg: 1, scope: !3005, file: !223, line: 231, type: !3008)
!3011 = !DILocation(line: 231, column: 72, scope: !3005)
!3012 = !DILocation(line: 233, column: 26, scope: !3005)
!3013 = !DILocation(line: 233, column: 32, scope: !3005)
!3014 = !DILocation(line: 233, column: 9, scope: !3005)
!3015 = !DILocation(line: 233, column: 2, scope: !3005)
!3016 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3017, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !273)
!3017 = !DISubroutineType(types: !3018)
!3018 = !{!60, !2064}
!3019 = !DILocalVariable(name: "dev", arg: 1, scope: !3016, file: !30, line: 655, type: !2064)
!3020 = !DILocation(line: 655, column: 58, scope: !3016)
!3021 = !DILocation(line: 657, column: 9, scope: !3016)
!3022 = !DILocation(line: 657, column: 14, scope: !3016)
!3023 = !DILocation(line: 657, column: 2, scope: !3016)
