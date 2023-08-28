; ModuleID = '../bcout/drivers/input/gameport/gameport.llvm.bc'
source_filename = "drivers/input/gameport/gameport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_gameport_init4:\09\09\09"
module asm ".long\09gameport_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
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
%struct.kernfs_node = type { %struct.atomic_t, %struct.atomic_t, %struct.kernfs_node*, i8*, %struct.rb_node, i8*, i32, %union.anon.38, i8*, i64, i16, i16, %struct.kernfs_iattrs* }
%struct.atomic_t = type { i32 }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.file = type opaque
%struct.seq_file = type opaque
%struct.vm_operations_struct = type opaque
%struct.poll_table_struct = type opaque
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.37, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
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
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.18, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.1 }
%union.anon.1 = type { %struct.anon.2 }
%struct.anon.2 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.kernel_siginfo = type { %struct.anon.6 }
%struct.anon.6 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.10 }
%struct.anon.10 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.17, i32, [12 x i8] }
%union.anon.17 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.18 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.19, %union.anon.32, %struct.atomic_t, [8 x i8] }
%union.anon.19 = type { %struct.anon.20 }
%struct.anon.20 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.32 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.33, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.36 }
%union.anon.33 = type { %struct.anon.34 }
%struct.anon.34 = type { i64, i64 }
%union.anon.36 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.pgprot = type { i64 }
%struct.anon.37 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
%struct.of_device_id = type opaque
%struct.acpi_device_id = type opaque
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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type opaque
%struct.dma_map_ops = type opaque
%struct.bus_dma_region = type opaque
%struct.device_dma_parameters = type { i32, i64 }
%struct.dev_archdata = type {}
%struct.device_node = type opaque
%struct.fwnode_handle = type { %struct.fwnode_handle*, %struct.fwnode_operations*, %struct.device* }
%struct.fwnode_operations = type { %struct.fwnode_handle* (%struct.fwnode_handle*)*, void (%struct.fwnode_handle*)*, i1 (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*, %struct.device*)*, i1 (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i32, i8*, i64)*, i32 (%struct.fwnode_handle*, i8*, i8**, i64)*, i8* (%struct.fwnode_handle*)*, i8* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, i8*)*, i32 (%struct.fwnode_handle*, i8*, i8*, i32, i32, %struct.fwnode_reference_args*)*, %struct.fwnode_handle* (%struct.fwnode_handle*, %struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, %struct.fwnode_handle* (%struct.fwnode_handle*)*, i32 (%struct.fwnode_handle*, %struct.fwnode_endpoint*)*, i32 (%struct.fwnode_handle*, %struct.device*)* }
%struct.fwnode_reference_args = type { %struct.fwnode_handle*, i32, [8 x i64] }
%struct.fwnode_endpoint = type { i32, i32, %struct.fwnode_handle* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.bin_attribute = type { %struct.attribute, i64, i8*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i64 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, i8*, i64, i64)*, i32 (%struct.file*, %struct.kobject*, %struct.bin_attribute*, %struct.vm_area_struct*)* }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.workqueue_struct = type opaque
%struct.paravirt_patch_template = type { %struct.pv_init_ops, %struct.pv_time_ops, %struct.pv_cpu_ops, %struct.pv_irq_ops, %struct.pv_mmu_ops, %struct.pv_lock_ops }
%struct.pv_init_ops = type { i32 (i8, i8*, i64, i32)* }
%struct.pv_time_ops = type { i64 ()*, i64 (i32)* }
%struct.pv_cpu_ops = type { void ()*, i64 (i32)*, void (i32, i64)*, i64 ()*, void (i64)*, void (i64)*, void ()*, void (%struct.desc_ptr*)*, void (%struct.desc_ptr*)*, void (i8*, i32)*, i64 ()*, void (%struct.thread_struct*, i32)*, void (i32)*, void (%struct.desc_struct*, i32, i8*)*, void (%struct.desc_struct*, i32, i8*, i32)*, void (%struct.gate_struct*, i32, %struct.gate_struct*)*, void (%struct.desc_struct*, i32)*, void (%struct.desc_struct*, i32)*, void (i64)*, void ()*, void ()*, void ()*, void (i32*, i32*, i32*, i32*)*, i64 (i32)*, void (i32, i32, i32)*, i64 (i32, i32*)*, i32 (i32, i32, i32)*, i64 (i32)*, void ()*, void ()*, void ()*, void (%struct.task_struct*)*, void (%struct.task_struct*)* }
%struct.desc_ptr = type <{ i16, i64 }>
%struct.gate_struct = type { i16, i16, %struct.idt_bits, i16, i32, i32 }
%struct.idt_bits = type { i16 }
%struct.pv_irq_ops = type { %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void ()*, void ()* }
%struct.paravirt_callee_save = type { i8* }
%struct.pv_mmu_ops = type { void ()*, void ()*, void (i64)*, void (%struct.cpumask*, %struct.flush_tlb_info*)*, void (%struct.mmu_gather*, i8*)*, void (%struct.mm_struct*)*, %struct.paravirt_callee_save, void (i64)*, i64 ()*, void (i64)*, void (%struct.mm_struct*, %struct.mm_struct*)*, void (%struct.mm_struct*, %struct.mm_struct*)*, i32 (%struct.mm_struct*)*, void (%struct.mm_struct*, %struct.pgd_t*)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (%struct.mm_struct*, i64)*, void (i64)*, void (i64)*, void (i64)*, void (i64)*, void (%struct.pte_t*, i64)*, void (%struct.pmd_t*, i64)*, i64 (%struct.vm_area_struct*, i64, %struct.pte_t*)*, void (%struct.vm_area_struct*, i64, %struct.pte_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pud_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.p4d_t*, i64)*, %struct.paravirt_callee_save, %struct.paravirt_callee_save, void (%struct.pgd_t*, i64)*, %struct.pv_lazy_ops, void (i32, i64, i64)* }
%struct.flush_tlb_info = type opaque
%struct.mmu_gather = type opaque
%struct.pte_t = type { i64 }
%struct.pmd_t = type { i64 }
%struct.pud_t = type { i64 }
%struct.p4d_t = type { i64 }
%struct.pv_lazy_ops = type { void ()*, void ()*, void ()* }
%struct.pv_lock_ops = type { void (%struct.qspinlock*, i32)*, %struct.paravirt_callee_save, void (i8*, i8)*, void (i32)*, %struct.paravirt_callee_save }
%struct.qspinlock = type opaque
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.driver_attribute = type { %struct.attribute, i64 (%struct.device_driver*, i8*)*, i64 (%struct.device_driver*, i8*, i64)* }
%struct.cpuinfo_x86 = type { i8, i8, i8, i8, i32, [3 x i32], i8, i8, i8, i8, i32, i32, %union.anon.39, [16 x i8], [64 x i8], i32, i32, i32, i32, i32, i32, i64, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i16, i32, i8, i8 }
%union.anon.39 = type { i64, [72 x i8] }
%struct.gameport = type { i8*, [32 x i8], [32 x i8], i32, i32, i32, {}*, i8 (%struct.gameport*)*, i32 (%struct.gameport*, i32*, i32*)*, i32 (%struct.gameport*, i32*, i32*)*, i32 (%struct.gameport*, i32)*, {}*, %struct.timer_list, i32, %struct.spinlock, i32, {}*, %struct.gameport*, %struct.gameport*, %struct.gameport_driver*, %struct.mutex, %struct.device, %struct.list_head }
%struct.gameport_driver = type { i8*, i32 (%struct.gameport*, %struct.gameport_driver*)*, i32 (%struct.gameport*)*, {}*, %struct.device_driver, i8 }
%struct.__va_list_tag = type { i32, i32, i8*, i8* }
%struct.gameport_event = type { i32, i8*, %struct.module*, %struct.list_head }

@__UNIQUE_ID_author161 = internal constant [48 x i8] c"gameport.author=Vojtech Pavlik <vojtech@ucw.cz>\00", section ".modinfo", align 1, !dbg !0
@__UNIQUE_ID_description162 = internal constant [44 x i8] c"gameport.description=Generic gameport layer\00", section ".modinfo", align 1, !dbg !2115
@__UNIQUE_ID_file163 = internal constant [46 x i8] c"gameport.file=drivers/input/gameport/gameport\00", section ".modinfo", align 1, !dbg !2118
@__UNIQUE_ID_license164 = internal constant [21 x i8] c"gameport.license=GPL\00", section ".modinfo", align 1, !dbg !2123
@__param_str_use_ktime = internal constant [19 x i8] c"gameport.use_ktime\00", align 16, !dbg !2200
@param_ops_bool = external dso_local constant %struct.kernel_param_ops, align 8
@use_ktime = internal global i8 1, align 1, !dbg !2205
@__param_use_ktime = internal constant %struct.kernel_param { i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__param_str_use_ktime, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_bool, i16 256, i8 -1, i8 0, %union.anon { i8* @use_ktime } }, section "__param", align 8, !dbg !2128
@__UNIQUE_ID_use_ktimetype165 = internal constant [33 x i8] c"gameport.parmtype=use_ktime:bool\00", section ".modinfo", align 1, !dbg !2181
@__UNIQUE_ID_use_ktime166 = internal constant [58 x i8] c"gameport.parm=use_ktime:Use ktime for measuring I/O speed\00", section ".modinfo", align 1, !dbg !2186
@.str = private unnamed_addr constant [34 x i8] c"drivers/input/gameport/gameport.c\00", align 1
@jiffies = external dso_local global i64, align 8
@gameport_mutex = internal global %struct.mutex { %struct.atomic64_t zeroinitializer, %struct.spinlock undef, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gameport_mutex to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.mutex* @gameport_mutex to i8*), i64 8) to %struct.list_head*) } }, align 8, !dbg !2216
@gameport_bus = internal global %struct.bus_type { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.8, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @gameport_device_groups, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @gameport_driver_groups, i32 0, i32 0), i32 (%struct.device*, %struct.device_driver*)* @gameport_bus_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i32 (%struct.device*)* @gameport_driver_probe, void (%struct.device*)* null, i32 (%struct.device*)* @gameport_driver_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !2220
@.str.1 = private unnamed_addr constant [56 x i8] c"\013gameport: driver_register() failed for %s, error: %d\0A\00", align 1
@gameport_list = internal global %struct.list_head { %struct.list_head* @gameport_list, %struct.list_head* @gameport_list }, align 8, !dbg !2218
@gameport_event_work = internal global %struct.work_struct { %struct.atomic64_t { i64 68719476704 }, %struct.list_head { %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @gameport_event_work to i8*), i64 8) to %struct.list_head*), %struct.list_head* bitcast (i8* getelementptr (i8, i8* bitcast (%struct.work_struct* @gameport_event_work to i8*), i64 8) to %struct.list_head*) }, void (%struct.work_struct*)* @gameport_handle_events }, align 8, !dbg !2266
@__UNIQUE_ID___addressable_gameport_init193 = internal global i8* bitcast (i32 ()* @gameport_init to i8*), section ".discard.addressable", align 8, !dbg !2191
@__exitcall_gameport_exit = internal global void ()* @gameport_exit, section ".exitcall.exit", align 8, !dbg !2193
@gameport_init_port.gameport_no = internal global %struct.atomic_t { i32 -1 }, align 4, !dbg !2207
@gameport_init_port.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2210
@.str.2 = private unnamed_addr constant [21 x i8] c"&gameport->drv_mutex\00", align 1
@.str.3 = private unnamed_addr constant [12 x i8] c"gameport%lu\00", align 1
@gameport_event_lock = internal global %struct.spinlock undef, align 1, !dbg !2212
@gameport_event_list = internal global %struct.list_head { %struct.list_head* @gameport_event_list, %struct.list_head* @gameport_event_list }, align 8, !dbg !2214
@.str.4 = private unnamed_addr constant [49 x i8] c"\013gameport: Not enough memory to queue event %d\0A\00", align 1
@.str.5 = private unnamed_addr constant [59 x i8] c"\014gameport: Can't get module reference, dropping event %d\0A\00", align 1
@system_long_wq = external dso_local global %struct.workqueue_struct*, align 8
@pv_ops = external dso_local global %struct.paravirt_patch_template, align 8
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.6 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@.str.7 = private unnamed_addr constant [47 x i8] c"device_attach() failed for %s (%s), error: %d\0A\00", align 1
@.str.8 = private unnamed_addr constant [9 x i8] c"gameport\00", align 1
@gameport_device_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @gameport_device_group, %struct.attribute_group* null], align 16, !dbg !2222
@gameport_driver_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @gameport_driver_group, %struct.attribute_group* null], align 16, !dbg !2246
@gameport_device_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([3 x %struct.attribute*], [3 x %struct.attribute*]* @gameport_device_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2225
@gameport_device_attrs = internal global [3 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_description, i32 0, i32 0), %struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_drvctl, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2227
@dev_attr_description = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @gameport_description_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2230
@dev_attr_drvctl = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i16 128 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* null, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* @drvctl_store }, align 8, !dbg !2244
@.str.9 = private unnamed_addr constant [12 x i8] c"description\00", align 1
@.str.10 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"drvctl\00", align 1
@.str.12 = private unnamed_addr constant [5 x i8] c"none\00", align 1
@.str.13 = private unnamed_addr constant [10 x i8] c"reconnect\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"rescan\00", align 1
@.str.15 = private unnamed_addr constant [59 x i8] c"device_bind_driver() failed for %s (%s) and %s, error: %d\0A\00", align 1
@gameport_driver_group = internal constant %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @gameport_driver_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2248
@gameport_driver_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.driver_attribute, %struct.driver_attribute* @driver_attr_description, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2250
@driver_attr_description = internal global %struct.driver_attribute { %struct.attribute { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.9, i32 0, i32 0), i16 292 }, i64 (%struct.device_driver*, i8*)* @description_show, i64 (%struct.device_driver*, i8*, i64)* null }, align 8, !dbg !2253
@.str.16 = private unnamed_addr constant [7 x i8] c"(none)\00", align 1
@.str.17 = private unnamed_addr constant [31 x i8] c"%s is %s, io %#x, speed %dkHz\0A\00", align 1
@.str.18 = private unnamed_addr constant [23 x i8] c"%s is %s, speed %dkHz\0A\00", align 1
@.str.19 = private unnamed_addr constant [44 x i8] c"device_add() failed for %s (%s), error: %d\0A\00", align 1
@boot_cpu_data = external dso_local global %struct.cpuinfo_x86, align 8
@.str.20 = private unnamed_addr constant [54 x i8] c"\013gameport: driver_attach() failed for %s, error: %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [56 x i8] c"\013gameport: failed to register gameport bus, error: %d\0A\00", align 1
@llvm.used = appending global [10 x i8*] [i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_author161, i32 0, i32 0), i8* getelementptr inbounds ([44 x i8], [44 x i8]* @__UNIQUE_ID_description162, i32 0, i32 0), i8* getelementptr inbounds ([46 x i8], [46 x i8]* @__UNIQUE_ID_file163, i32 0, i32 0), i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__UNIQUE_ID_license164, i32 0, i32 0), i8* bitcast (%struct.kernel_param* @__param_use_ktime to i8*), i8* getelementptr inbounds ([33 x i8], [33 x i8]* @__UNIQUE_ID_use_ktimetype165, i32 0, i32 0), i8* getelementptr inbounds ([58 x i8], [58 x i8]* @__UNIQUE_ID_use_ktime166, i32 0, i32 0), i8* bitcast (void ()* @gameport_exit to i8*), i8* bitcast (i8** @__UNIQUE_ID___addressable_gameport_init193 to i8*), i8* bitcast (void ()** @__exitcall_gameport_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gameport_start_polling(%struct.gameport* %gameport) #0 !dbg !2277 {
entry:
  %lock.addr.i40 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i40, metadata !2278, metadata !DIExpression()), !dbg !2284
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2286, metadata !DIExpression()), !dbg !2292
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2296, metadata !DIExpression()), !dbg !2298
  %gameport.addr = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2300, metadata !DIExpression()), !dbg !2301
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2302
  %timer_lock = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 14, !dbg !2303
  store %struct.spinlock* %timer_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2304, !srcloc !2306
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2307
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2307
  %rlock.i = bitcast %union.anon.0* %2 to %struct.raw_spinlock*, !dbg !2307
  %3 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2309
  %poll_cnt = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 15, !dbg !2310
  %4 = load i32, i32* %poll_cnt, align 4, !dbg !2311
  %inc = add i32 %4, 1, !dbg !2311
  store i32 %inc, i32* %poll_cnt, align 4, !dbg !2311
  %tobool = icmp ne i32 %4, 0, !dbg !2311
  br i1 %tobool, label %if.end38, label %if.then, !dbg !2312

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2313

do.body:                                          ; preds = %if.then
  %5 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2314
  %poll_handler = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 16, !dbg !2314
  %poll_handler1 = bitcast {}** %poll_handler to void (%struct.gameport*)**, !dbg !2314
  %6 = load void (%struct.gameport*)*, void (%struct.gameport*)** %poll_handler1, align 8, !dbg !2314
  %tobool2 = icmp ne void (%struct.gameport*)* %6, null, !dbg !2314
  %lnot = xor i1 %tobool2, true, !dbg !2314
  %lnot3 = xor i1 %lnot, true, !dbg !2314
  %lnot4 = xor i1 %lnot3, true, !dbg !2314
  %lnot.ext = zext i1 %lnot4 to i32, !dbg !2314
  %conv = sext i32 %lnot.ext to i64, !dbg !2314
  %tobool5 = icmp ne i64 %conv, 0, !dbg !2314
  br i1 %tobool5, label %if.then6, label %if.end, !dbg !2317

if.then6:                                         ; preds = %do.body
  br label %do.body7, !dbg !2314

do.body7:                                         ; preds = %if.then6
  br label %do.body8, !dbg !2318

do.body8:                                         ; preds = %do.body7
  br label %do.end, !dbg !2320

do.end:                                           ; preds = %do.body8
  br label %do.body9, !dbg !2318

do.body9:                                         ; preds = %do.end
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 181, i32 0, i64 12) #3, !dbg !2322, !srcloc !2324
  br label %do.end10, !dbg !2322

do.end10:                                         ; preds = %do.body9
  br label %do.body11, !dbg !2318

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 167) #3, !dbg !2325, !srcloc !2328
  unreachable, !dbg !2329

do.end12:                                         ; No predecessors!
  br label %do.end13, !dbg !2318

do.end13:                                         ; preds = %do.end12
  br label %if.end, !dbg !2318

if.end:                                           ; preds = %do.end13, %do.body
  br label %do.end14, !dbg !2317

do.end14:                                         ; preds = %if.end
  br label %do.body15, !dbg !2330

do.body15:                                        ; preds = %do.end14
  %7 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2331
  %poll_interval = getelementptr inbounds %struct.gameport, %struct.gameport* %7, i32 0, i32 13, !dbg !2331
  %8 = load i32, i32* %poll_interval, align 8, !dbg !2331
  %tobool16 = icmp ne i32 %8, 0, !dbg !2331
  %lnot17 = xor i1 %tobool16, true, !dbg !2331
  %lnot19 = xor i1 %lnot17, true, !dbg !2331
  %lnot21 = xor i1 %lnot19, true, !dbg !2331
  %lnot.ext22 = zext i1 %lnot21 to i32, !dbg !2331
  %conv23 = sext i32 %lnot.ext22 to i64, !dbg !2331
  %tobool24 = icmp ne i64 %conv23, 0, !dbg !2331
  br i1 %tobool24, label %if.then25, label %if.end34, !dbg !2334

if.then25:                                        ; preds = %do.body15
  br label %do.body26, !dbg !2331

do.body26:                                        ; preds = %if.then25
  br label %do.body27, !dbg !2335

do.body27:                                        ; preds = %do.body26
  br label %do.end28, !dbg !2337

do.end28:                                         ; preds = %do.body27
  br label %do.body29, !dbg !2335

do.body29:                                        ; preds = %do.end28
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 182, i32 0, i64 12) #3, !dbg !2339, !srcloc !2341
  br label %do.end30, !dbg !2339

do.end30:                                         ; preds = %do.body29
  br label %do.body31, !dbg !2335

do.body31:                                        ; preds = %do.end30
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 168) #3, !dbg !2342, !srcloc !2345
  unreachable, !dbg !2346

do.end32:                                         ; No predecessors!
  br label %do.end33, !dbg !2335

do.end33:                                         ; preds = %do.end32
  br label %if.end34, !dbg !2335

if.end34:                                         ; preds = %do.end33, %do.body15
  br label %do.end35, !dbg !2334

do.end35:                                         ; preds = %if.end34
  %9 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2347
  %poll_timer = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 12, !dbg !2348
  %10 = load volatile i64, i64* @jiffies, align 8, !dbg !2349
  %11 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2350
  %poll_interval36 = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 13, !dbg !2351
  %12 = load i32, i32* %poll_interval36, align 8, !dbg !2351
  store i32 %12, i32* %m.addr.i, align 4
  %13 = load i32, i32* %m.addr.i, align 4, !dbg !2352
  %14 = call i1 @llvm.is.constant.i32(i32 %13) #3, !dbg !2354
  br i1 %14, label %if.then.i, label %if.else.i, !dbg !2355

if.then.i:                                        ; preds = %do.end35
  %15 = load i32, i32* %m.addr.i, align 4, !dbg !2356
  %cmp.i = icmp slt i32 %15, 0, !dbg !2359
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2360

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !2361
  br label %msecs_to_jiffies.exit, !dbg !2361

if.end.i:                                         ; preds = %if.then.i
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !2362
  %call.i = call i64 @_msecs_to_jiffies(i32 %16) #11, !dbg !2363
  store i64 %call.i, i64* %retval.i, align 8, !dbg !2364
  br label %msecs_to_jiffies.exit, !dbg !2364

if.else.i:                                        ; preds = %do.end35
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !2365
  %call2.i = call i64 @__msecs_to_jiffies(i32 %17) #11, !dbg !2367
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !2368
  br label %msecs_to_jiffies.exit, !dbg !2368

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %18 = load i64, i64* %retval.i, align 8, !dbg !2369
  %add = add i64 %10, %18, !dbg !2370
  %call37 = call i32 @mod_timer(%struct.timer_list* %poll_timer, i64 %add) #12, !dbg !2371
  br label %if.end38, !dbg !2372

if.end38:                                         ; preds = %msecs_to_jiffies.exit, %entry
  %19 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2373
  %timer_lock39 = getelementptr inbounds %struct.gameport, %struct.gameport* %19, i32 0, i32 14, !dbg !2374
  store %struct.spinlock* %timer_lock39, %struct.spinlock** %lock.addr.i40, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2375, !srcloc !2377
  %20 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i40, align 8, !dbg !2378
  %21 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %20, i32 0, i32 0, !dbg !2378
  %rlock.i41 = bitcast %union.anon.0* %21 to %struct.raw_spinlock*, !dbg !2378
  ret void, !dbg !2380
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @mod_timer(%struct.timer_list*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gameport_stop_polling(%struct.gameport* %gameport) #0 !dbg !2381 {
entry:
  %lock.addr.i2 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i2, metadata !2278, metadata !DIExpression()), !dbg !2382
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2296, metadata !DIExpression()), !dbg !2384
  %gameport.addr = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2386, metadata !DIExpression()), !dbg !2387
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2388
  %timer_lock = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 14, !dbg !2389
  store %struct.spinlock* %timer_lock, %struct.spinlock** %lock.addr.i, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2390, !srcloc !2306
  %1 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2391
  %2 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %1, i32 0, i32 0, !dbg !2391
  %rlock.i = bitcast %union.anon.0* %2 to %struct.raw_spinlock*, !dbg !2391
  %3 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2392
  %poll_cnt = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 15, !dbg !2394
  %4 = load i32, i32* %poll_cnt, align 4, !dbg !2395
  %dec = add i32 %4, -1, !dbg !2395
  store i32 %dec, i32* %poll_cnt, align 4, !dbg !2395
  %tobool = icmp ne i32 %dec, 0, !dbg !2395
  br i1 %tobool, label %if.end, label %if.then, !dbg !2396

if.then:                                          ; preds = %entry
  %5 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2397
  %poll_timer = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 12, !dbg !2398
  %call = call i32 @del_timer(%struct.timer_list* %poll_timer) #12, !dbg !2399
  br label %if.end, !dbg !2399

if.end:                                           ; preds = %if.then, %entry
  %6 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2400
  %timer_lock1 = getelementptr inbounds %struct.gameport, %struct.gameport* %6, i32 0, i32 14, !dbg !2401
  store %struct.spinlock* %timer_lock1, %struct.spinlock** %lock.addr.i2, align 8
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2402, !srcloc !2377
  %7 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i2, align 8, !dbg !2403
  %8 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %7, i32 0, i32 0, !dbg !2403
  %rlock.i3 = bitcast %union.anon.0* %8 to %struct.raw_spinlock*, !dbg !2403
  ret void, !dbg !2404
}

; Function Attrs: noredzone
declare dso_local i32 @del_timer(%struct.timer_list*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gameport_set_phys(%struct.gameport* %gameport, i8* %fmt, ...) #0 !dbg !2405 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %fmt.addr = alloca i8*, align 8
  %args = alloca [1 x %struct.__va_list_tag], align 16
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2408, metadata !DIExpression()), !dbg !2409
  store i8* %fmt, i8** %fmt.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %fmt.addr, metadata !2410, metadata !DIExpression()), !dbg !2411
  call void @llvm.dbg.declare(metadata [1 x %struct.__va_list_tag]* %args, metadata !2412, metadata !DIExpression()), !dbg !2424
  %arraydecay = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !2425
  %arraydecay1 = bitcast %struct.__va_list_tag* %arraydecay to i8*, !dbg !2425
  call void @llvm.va_start(i8* %arraydecay1), !dbg !2425
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2426
  %phys = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 2, !dbg !2427
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !2426
  %1 = load i8*, i8** %fmt.addr, align 8, !dbg !2428
  %arraydecay3 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !2429
  %call = call i32 @vsnprintf(i8* %arraydecay2, i64 32, i8* %1, %struct.__va_list_tag* %arraydecay3) #12, !dbg !2430
  %arraydecay4 = getelementptr inbounds [1 x %struct.__va_list_tag], [1 x %struct.__va_list_tag]* %args, i64 0, i64 0, !dbg !2431
  %arraydecay45 = bitcast %struct.__va_list_tag* %arraydecay4 to i8*, !dbg !2431
  call void @llvm.va_end(i8* %arraydecay45), !dbg !2431
  ret void, !dbg !2432
}

; Function Attrs: nounwind
declare void @llvm.va_start(i8*) #3

; Function Attrs: noredzone
declare dso_local i32 @vsnprintf(i8*, i64, i8*, %struct.__va_list_tag*) #2

; Function Attrs: nounwind
declare void @llvm.va_end(i8*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @__gameport_register_port(%struct.gameport* %gameport, %struct.module* %owner) #0 !dbg !2433 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %owner.addr = alloca %struct.module*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2436, metadata !DIExpression()), !dbg !2437
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2438, metadata !DIExpression()), !dbg !2439
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2440
  call void @gameport_init_port(%struct.gameport* %0) #12, !dbg !2441
  %1 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2442
  %2 = bitcast %struct.gameport* %1 to i8*, !dbg !2442
  %3 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2443
  %call = call i32 @gameport_queue_event(i8* %2, %struct.module* %3, i32 0) #12, !dbg !2444
  ret void, !dbg !2445
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_init_port(%struct.gameport* %gameport) #0 !dbg !2209 {
entry:
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2446, metadata !DIExpression()), !dbg !2451
  %i.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %i.addr.i.i.i, metadata !2454, metadata !DIExpression()), !dbg !2460
  %v.addr.i.i.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i.i.i, metadata !2470, metadata !DIExpression()), !dbg !2471
  %__ret.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %__ret.i.i.i, metadata !2472, metadata !DIExpression()), !dbg !2474
  %tmp.i.i.i = alloca i32, align 4
  %v.addr.i1.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i1.i, metadata !2475, metadata !DIExpression()), !dbg !2476
  %v.addr.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i.i, metadata !2477, metadata !DIExpression()), !dbg !2485
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2487, metadata !DIExpression()), !dbg !2488
  %v.addr.i = alloca %struct.atomic_t*, align 8
  call void @llvm.dbg.declare(metadata %struct.atomic_t** %v.addr.i, metadata !2489, metadata !DIExpression()), !dbg !2490
  %gameport.addr = alloca %struct.gameport*, align 8
  %.compoundliteral = alloca %struct.spinlock, align 1
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2491, metadata !DIExpression()), !dbg !2492
  call void @__module_get(%struct.module* null) #12, !dbg !2493
  br label %do.body, !dbg !2494

do.body:                                          ; preds = %entry
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2495
  %drv_mutex = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 20, !dbg !2495
  call void @__mutex_init(%struct.mutex* %drv_mutex, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), %struct.lock_class_key* @gameport_init_port.__key) #12, !dbg !2495
  br label %do.end, !dbg !2495

do.end:                                           ; preds = %do.body
  %1 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2497
  %dev = getelementptr inbounds %struct.gameport, %struct.gameport* %1, i32 0, i32 21, !dbg !2498
  call void @device_initialize(%struct.device* %dev) #12, !dbg !2499
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2500
  %dev1 = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 21, !dbg !2501
  store %struct.atomic_t* @gameport_init_port.gameport_no, %struct.atomic_t** %v.addr.i, align 8
  %3 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2502
  %4 = bitcast %struct.atomic_t* %3 to i8*, !dbg !2502
  store i8* %4, i8** %v.addr.i.i, align 8
  store i64 4, i64* %size.addr.i.i, align 8
  %5 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2503
  %6 = load i64, i64* %size.addr.i.i, align 8, !dbg !2504
  %conv.i.i = trunc i64 %6 to i32, !dbg !2504
  %call.i.i = call zeroext i1 @kasan_check_write(i8* %5, i32 %conv.i.i) #11, !dbg !2505
  %7 = load i8*, i8** %v.addr.i.i, align 8, !dbg !2506
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2506
  call void @kcsan_check_access(i8* %7, i64 %8, i32 7) #11, !dbg !2506
  %9 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i, align 8, !dbg !2507
  store %struct.atomic_t* %9, %struct.atomic_t** %v.addr.i1.i, align 8
  %10 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i1.i, align 8, !dbg !2508
  store i32 1, i32* %i.addr.i.i.i, align 4
  store %struct.atomic_t* %10, %struct.atomic_t** %v.addr.i.i.i, align 8
  %11 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2509
  %12 = load i32, i32* %i.addr.i.i.i, align 4, !dbg !2474
  store i32 %12, i32* %__ret.i.i.i, align 4, !dbg !2474
  %13 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2474
  %14 = load %struct.atomic_t*, %struct.atomic_t** %v.addr.i.i.i, align 8, !dbg !2474
  %counter.i.i.i = getelementptr inbounds %struct.atomic_t, %struct.atomic_t* %14, i32 0, i32 0, !dbg !2474
  %15 = call i32 asm sideeffect "xaddl $0, $1\0A", "=r,=*m,0,*m,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i32* %counter.i.i.i, i32 %13, i32* %counter.i.i.i) #3, !dbg !2474, !srcloc !2510
  store i32 %15, i32* %__ret.i.i.i, align 4, !dbg !2474
  %16 = load i32, i32* %__ret.i.i.i, align 4, !dbg !2474
  store i32 %16, i32* %tmp.i.i.i, align 4, !dbg !2474
  %17 = load i32, i32* %tmp.i.i.i, align 4, !dbg !2474
  %add.i.i.i = add i32 %11, %17, !dbg !2511
  %conv = sext i32 %add.i.i.i to i64, !dbg !2512
  %call2 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev1, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.3, i64 0, i64 0), i64 %conv) #12, !dbg !2513
  %18 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2514
  %dev3 = getelementptr inbounds %struct.gameport, %struct.gameport* %18, i32 0, i32 21, !dbg !2515
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 5, !dbg !2516
  store %struct.bus_type* @gameport_bus, %struct.bus_type** %bus, align 8, !dbg !2517
  %19 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2518
  %dev4 = getelementptr inbounds %struct.gameport, %struct.gameport* %19, i32 0, i32 21, !dbg !2519
  %release = getelementptr inbounds %struct.device, %struct.device* %dev4, i32 0, i32 31, !dbg !2520
  store void (%struct.device*)* @gameport_release_port, void (%struct.device*)** %release, align 8, !dbg !2521
  %20 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2522
  %parent = getelementptr inbounds %struct.gameport, %struct.gameport* %20, i32 0, i32 17, !dbg !2524
  %21 = load %struct.gameport*, %struct.gameport** %parent, align 8, !dbg !2524
  %tobool = icmp ne %struct.gameport* %21, null, !dbg !2522
  br i1 %tobool, label %if.then, label %if.end, !dbg !2525

if.then:                                          ; preds = %do.end
  %22 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2526
  %parent5 = getelementptr inbounds %struct.gameport, %struct.gameport* %22, i32 0, i32 17, !dbg !2527
  %23 = load %struct.gameport*, %struct.gameport** %parent5, align 8, !dbg !2527
  %dev6 = getelementptr inbounds %struct.gameport, %struct.gameport* %23, i32 0, i32 21, !dbg !2528
  %24 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2529
  %dev7 = getelementptr inbounds %struct.gameport, %struct.gameport* %24, i32 0, i32 21, !dbg !2530
  %parent8 = getelementptr inbounds %struct.device, %struct.device* %dev7, i32 0, i32 1, !dbg !2531
  store %struct.device* %dev6, %struct.device** %parent8, align 8, !dbg !2532
  br label %if.end, !dbg !2529

if.end:                                           ; preds = %if.then, %do.end
  %25 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2533
  %node = getelementptr inbounds %struct.gameport, %struct.gameport* %25, i32 0, i32 22, !dbg !2534
  call void @INIT_LIST_HEAD(%struct.list_head* %node) #12, !dbg !2535
  br label %do.body9, !dbg !2536

do.body9:                                         ; preds = %if.end
  %26 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2537
  %timer_lock = getelementptr inbounds %struct.gameport, %struct.gameport* %26, i32 0, i32 14, !dbg !2537
  store %struct.spinlock* %timer_lock, %struct.spinlock** %lock.addr.i, align 8
  %27 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2538
  %28 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %27, i32 0, i32 0, !dbg !2539
  %rlock.i = bitcast %union.anon.0* %28 to %struct.raw_spinlock*, !dbg !2539
  %29 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2537
  %timer_lock11 = getelementptr inbounds %struct.gameport, %struct.gameport* %29, i32 0, i32 14, !dbg !2537
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %.compoundliteral, i32 0, i32 0, !dbg !2537
  %rlock = bitcast %union.anon.0* %30 to %struct.raw_spinlock*, !dbg !2537
  %31 = bitcast %struct.spinlock* %timer_lock11 to i8*, !dbg !2537
  %32 = bitcast %struct.spinlock* %.compoundliteral to i8*, !dbg !2537
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %31, i8* align 1 %32, i64 0, i1 false), !dbg !2537
  br label %do.end12, !dbg !2537

do.end12:                                         ; preds = %do.body9
  %33 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2540
  %poll_timer = getelementptr inbounds %struct.gameport, %struct.gameport* %33, i32 0, i32 12, !dbg !2540
  call void @init_timer_key(%struct.timer_list* %poll_timer, void (%struct.timer_list*)* @gameport_run_poll_handler, i32 0, i8* null, %struct.lock_class_key* null) #12, !dbg !2540
  ret void, !dbg !2541
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_queue_event(i8* %object, %struct.module* %owner, i32 %event_type) #0 !dbg !2542 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2545, metadata !DIExpression()), !dbg !2549
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2557, metadata !DIExpression()), !dbg !2558
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2559, metadata !DIExpression()), !dbg !2560
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2561, metadata !DIExpression()), !dbg !2562
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2563, metadata !DIExpression()), !dbg !2567
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2569, metadata !DIExpression()), !dbg !2573
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2575, metadata !DIExpression()), !dbg !2579
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2584, metadata !DIExpression()), !dbg !2585
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2586, metadata !DIExpression()), !dbg !2587
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2588, metadata !DIExpression()), !dbg !2589
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2590, metadata !DIExpression()), !dbg !2591
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2592, metadata !DIExpression()), !dbg !2593
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2594, metadata !DIExpression()), !dbg !2595
  %flags.addr.i53 = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i53, metadata !2596, metadata !DIExpression()), !dbg !2597
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2598, metadata !DIExpression()), !dbg !2599
  %lock.addr.i51 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i51, metadata !2600, metadata !DIExpression()), !dbg !2604
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2606, metadata !DIExpression()), !dbg !2607
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2446, metadata !DIExpression()), !dbg !2608
  %object.addr = alloca i8*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %event_type.addr = alloca i32, align 4
  %flags = alloca i64, align 8
  %event = alloca %struct.gameport_event*, align 8
  %retval1 = alloca i32, align 4
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy6 = alloca i64, align 8
  %__dummy27 = alloca i64, align 8
  %tmp10 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.gameport_event*, align 8
  %__mptr32 = alloca i8*, align 8
  %tmp36 = alloca %struct.gameport_event*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !2615, metadata !DIExpression()), !dbg !2616
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !2617, metadata !DIExpression()), !dbg !2618
  store i32 %event_type, i32* %event_type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %event_type.addr, metadata !2619, metadata !DIExpression()), !dbg !2620
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !2621, metadata !DIExpression()), !dbg !2622
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event, metadata !2623, metadata !DIExpression()), !dbg !2624
  call void @llvm.dbg.declare(metadata i32* %retval1, metadata !2625, metadata !DIExpression()), !dbg !2626
  store i32 0, i32* %retval1, align 4, !dbg !2626
  br label %do.body, !dbg !2627

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !2628

do.body2:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !2629, metadata !DIExpression()), !dbg !2631
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !2632, metadata !DIExpression()), !dbg !2631
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !2631
  %conv = zext i1 %cmp to i32, !dbg !2631
  store i32 1, i32* %tmp, align 4, !dbg !2631
  %0 = load i32, i32* %tmp, align 4, !dbg !2631
  br label %do.body3, !dbg !2633

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !2634

do.body4:                                         ; preds = %do.body3
  br label %do.body5, !dbg !2635

do.body5:                                         ; preds = %do.body4
  call void @llvm.dbg.declare(metadata i64* %__dummy6, metadata !2637, metadata !DIExpression()), !dbg !2640
  call void @llvm.dbg.declare(metadata i64* %__dummy27, metadata !2641, metadata !DIExpression()), !dbg !2640
  %cmp8 = icmp eq i64* %__dummy6, %__dummy27, !dbg !2640
  %conv9 = zext i1 %cmp8 to i32, !dbg !2640
  store i32 1, i32* %tmp10, align 4, !dbg !2640
  %1 = load i32, i32* %tmp10, align 4, !dbg !2640
  %call = call i64 @arch_local_irq_save() #12, !dbg !2642
  store i64 %call, i64* %flags, align 8, !dbg !2642
  br label %do.end, !dbg !2642

do.end:                                           ; preds = %do.body5
  br label %do.end11, !dbg !2635

do.end11:                                         ; preds = %do.end
  br label %do.body12, !dbg !2634

do.body12:                                        ; preds = %do.end11
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2643, !srcloc !2644
  br label %do.body13, !dbg !2643

do.body13:                                        ; preds = %do.body12
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !2645
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !2646
  %rlock.i = bitcast %union.anon.0* %3 to %struct.raw_spinlock*, !dbg !2646
  br label %do.end15, !dbg !2647

do.end15:                                         ; preds = %do.body13
  br label %do.end16, !dbg !2643

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !2634

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !2633

do.end18:                                         ; preds = %do.end17
  br label %do.end19, !dbg !2628

do.end19:                                         ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2648, metadata !DIExpression()), !dbg !2651
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gameport_event_list, i32 0, i32 1), align 8, !dbg !2651
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !2651
  store i8* %5, i8** %__mptr, align 8, !dbg !2651
  br label %do.body20, !dbg !2651

do.body20:                                        ; preds = %do.end19
  br label %do.end21, !dbg !2652

do.end21:                                         ; preds = %do.body20
  %6 = load i8*, i8** %__mptr, align 8, !dbg !2651
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !2651
  %7 = bitcast i8* %add.ptr to %struct.gameport_event*, !dbg !2651
  store %struct.gameport_event* %7, %struct.gameport_event** %tmp22, align 8, !dbg !2652
  %8 = load %struct.gameport_event*, %struct.gameport_event** %tmp22, align 8, !dbg !2651
  store %struct.gameport_event* %8, %struct.gameport_event** %event, align 8, !dbg !2654
  br label %for.cond, !dbg !2654

for.cond:                                         ; preds = %do.end35, %do.end21
  %9 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2655
  %node = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %9, i32 0, i32 3, !dbg !2655
  %cmp23 = icmp eq %struct.list_head* %node, @gameport_event_list, !dbg !2655
  %lnot = xor i1 %cmp23, true, !dbg !2655
  br i1 %lnot, label %for.body, label %for.end, !dbg !2654

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2657
  %object25 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %10, i32 0, i32 1, !dbg !2660
  %11 = load i8*, i8** %object25, align 8, !dbg !2660
  %12 = load i8*, i8** %object.addr, align 8, !dbg !2661
  %cmp26 = icmp eq i8* %11, %12, !dbg !2662
  br i1 %cmp26, label %if.then, label %if.end31, !dbg !2663

if.then:                                          ; preds = %for.body
  %13 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2664
  %type = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %13, i32 0, i32 0, !dbg !2667
  %14 = load i32, i32* %type, align 8, !dbg !2667
  %15 = load i32, i32* %event_type.addr, align 4, !dbg !2668
  %cmp28 = icmp eq i32 %14, %15, !dbg !2669
  br i1 %cmp28, label %if.then30, label %if.end, !dbg !2670

if.then30:                                        ; preds = %if.then
  br label %out, !dbg !2671

if.end:                                           ; preds = %if.then
  br label %for.end, !dbg !2672

if.end31:                                         ; preds = %for.body
  br label %for.inc, !dbg !2673

for.inc:                                          ; preds = %if.end31
  call void @llvm.dbg.declare(metadata i8** %__mptr32, metadata !2674, metadata !DIExpression()), !dbg !2676
  %16 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2676
  %node33 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %16, i32 0, i32 3, !dbg !2676
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %node33, i32 0, i32 1, !dbg !2676
  %17 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !2676
  %18 = bitcast %struct.list_head* %17 to i8*, !dbg !2676
  store i8* %18, i8** %__mptr32, align 8, !dbg !2676
  br label %do.body34, !dbg !2676

do.body34:                                        ; preds = %for.inc
  br label %do.end35, !dbg !2677

do.end35:                                         ; preds = %do.body34
  %19 = load i8*, i8** %__mptr32, align 8, !dbg !2676
  %add.ptr37 = getelementptr i8, i8* %19, i64 -24, !dbg !2676
  %20 = bitcast i8* %add.ptr37 to %struct.gameport_event*, !dbg !2676
  store %struct.gameport_event* %20, %struct.gameport_event** %tmp36, align 8, !dbg !2677
  %21 = load %struct.gameport_event*, %struct.gameport_event** %tmp36, align 8, !dbg !2676
  store %struct.gameport_event* %21, %struct.gameport_event** %event, align 8, !dbg !2655
  br label %for.cond, !dbg !2655, !llvm.loop !2679

for.end:                                          ; preds = %if.end, %for.cond
  store i64 40, i64* %size.addr.i, align 8
  store i32 2592, i32* %flags.addr.i53, align 4
  %22 = load i64, i64* %size.addr.i, align 8, !dbg !2681
  %23 = call i1 @llvm.is.constant.i64(i64 %22) #3, !dbg !2682
  br i1 %23, label %if.then.i, label %if.end9.i, !dbg !2683

if.then.i:                                        ; preds = %for.end
  %24 = load i64, i64* %size.addr.i, align 8, !dbg !2684
  %cmp.i = icmp ugt i64 %24, 8192, !dbg !2685
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2686

if.then1.i:                                       ; preds = %if.then.i
  %25 = load i64, i64* %size.addr.i, align 8, !dbg !2687
  %26 = load i32, i32* %flags.addr.i53, align 4, !dbg !2688
  store i64 %25, i64* %size.addr.i.i, align 8
  store i32 %26, i32* %flags.addr.i.i, align 4
  %27 = load i64, i64* %size.addr.i.i, align 8, !dbg !2689
  %call.i.i = call i32 @get_order(i64 %27) #13, !dbg !2690
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2593
  %28 = load i64, i64* %size.addr.i.i, align 8, !dbg !2691
  %29 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2692
  %30 = load i32, i32* %order.i.i, align 4, !dbg !2693
  store i64 %28, i64* %size.addr.i.i.i, align 8
  store i32 %29, i32* %flags.addr.i.i.i, align 4
  store i32 %30, i32* %order.addr.i.i.i, align 4
  %31 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2694
  %32 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2695
  %33 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2696
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %31, i32 %32, i32 %33) #11, !dbg !2697
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2697
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2697
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2697
  call void @llvm.assume(i1 %maskcond.i.i.i) #3, !dbg !2697
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2698
  br label %kmalloc.exit, !dbg !2698

if.end.i:                                         ; preds = %if.then.i
  %34 = load i64, i64* %size.addr.i, align 8, !dbg !2699
  store i64 %34, i64* %size.addr.i11.i, align 8
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2700
  %tobool.i.i = icmp ne i64 %35, 0, !dbg !2700
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2702

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2703
  br label %kmalloc_index.exit.i, !dbg !2703

if.end.i.i:                                       ; preds = %if.end.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2704
  %cmp.i.i = icmp ule i64 %36, 8, !dbg !2706
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2707

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2708
  br label %kmalloc_index.exit.i, !dbg !2708

if.end2.i.i:                                      ; preds = %if.end.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2709
  %cmp3.i.i = icmp ugt i64 %37, 64, !dbg !2711
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2712

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2713
  %cmp4.i.i = icmp ule i64 %38, 96, !dbg !2714
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2715

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2716
  br label %kmalloc_index.exit.i, !dbg !2716

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2717
  %cmp7.i.i = icmp ugt i64 %39, 128, !dbg !2719
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2720

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp9.i.i = icmp ule i64 %40, 192, !dbg !2722
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2723

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2724
  br label %kmalloc_index.exit.i, !dbg !2724

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2725
  %cmp12.i.i = icmp ule i64 %41, 8, !dbg !2727
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2728

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2729
  br label %kmalloc_index.exit.i, !dbg !2729

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2730
  %cmp15.i.i = icmp ule i64 %42, 16, !dbg !2732
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2733

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2734
  br label %kmalloc_index.exit.i, !dbg !2734

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2735
  %cmp18.i.i = icmp ule i64 %43, 32, !dbg !2737
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2738

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2739
  br label %kmalloc_index.exit.i, !dbg !2739

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2740
  %cmp21.i.i = icmp ule i64 %44, 64, !dbg !2742
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2743

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2744
  br label %kmalloc_index.exit.i, !dbg !2744

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %45 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2745
  %cmp24.i.i = icmp ule i64 %45, 128, !dbg !2747
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2748

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2749
  br label %kmalloc_index.exit.i, !dbg !2749

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %46 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2750
  %cmp27.i.i = icmp ule i64 %46, 256, !dbg !2752
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2753

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2754
  br label %kmalloc_index.exit.i, !dbg !2754

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %47 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2755
  %cmp30.i.i = icmp ule i64 %47, 512, !dbg !2757
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2758

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2759
  br label %kmalloc_index.exit.i, !dbg !2759

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %48 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2760
  %cmp33.i.i = icmp ule i64 %48, 1024, !dbg !2762
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2763

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2764
  br label %kmalloc_index.exit.i, !dbg !2764

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %49 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2765
  %cmp36.i.i = icmp ule i64 %49, 2048, !dbg !2767
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2768

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2769
  br label %kmalloc_index.exit.i, !dbg !2769

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %50 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2770
  %cmp39.i.i = icmp ule i64 %50, 4096, !dbg !2772
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2773

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2774
  br label %kmalloc_index.exit.i, !dbg !2774

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %51 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2775
  %cmp42.i.i = icmp ule i64 %51, 8192, !dbg !2777
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2778

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2779
  br label %kmalloc_index.exit.i, !dbg !2779

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %52 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2780
  %cmp45.i.i = icmp ule i64 %52, 16384, !dbg !2782
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2783

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2784
  br label %kmalloc_index.exit.i, !dbg !2784

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %53 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2785
  %cmp48.i.i = icmp ule i64 %53, 32768, !dbg !2787
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2788

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2789
  br label %kmalloc_index.exit.i, !dbg !2789

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %54 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2790
  %cmp51.i.i = icmp ule i64 %54, 65536, !dbg !2792
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2793

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2794
  br label %kmalloc_index.exit.i, !dbg !2794

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %55 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2795
  %cmp54.i.i = icmp ule i64 %55, 131072, !dbg !2797
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2798

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2799
  br label %kmalloc_index.exit.i, !dbg !2799

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %56 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2800
  %cmp57.i.i = icmp ule i64 %56, 262144, !dbg !2802
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2803

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2804
  br label %kmalloc_index.exit.i, !dbg !2804

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %57 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2805
  %cmp60.i.i = icmp ule i64 %57, 524288, !dbg !2807
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2808

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2809
  br label %kmalloc_index.exit.i, !dbg !2809

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %58 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2810
  %cmp63.i.i = icmp ule i64 %58, 1048576, !dbg !2812
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2813

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2814
  br label %kmalloc_index.exit.i, !dbg !2814

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %59 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2815
  %cmp66.i.i = icmp ule i64 %59, 2097152, !dbg !2817
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2818

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2819
  br label %kmalloc_index.exit.i, !dbg !2819

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %60 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2820
  %cmp69.i.i = icmp ule i64 %60, 4194304, !dbg !2822
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2823

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2824
  br label %kmalloc_index.exit.i, !dbg !2824

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %61 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2825
  %cmp72.i.i = icmp ule i64 %61, 8388608, !dbg !2827
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2828

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2829
  br label %kmalloc_index.exit.i, !dbg !2829

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %62 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2830
  %cmp75.i.i = icmp ule i64 %62, 16777216, !dbg !2832
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2833

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2834
  br label %kmalloc_index.exit.i, !dbg !2834

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %63 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2835
  %cmp78.i.i = icmp ule i64 %63, 33554432, !dbg !2837
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2838

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2839
  br label %kmalloc_index.exit.i, !dbg !2839

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %64 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2840
  %cmp81.i.i = icmp ule i64 %64, 67108864, !dbg !2842
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2843

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2844
  br label %kmalloc_index.exit.i, !dbg !2844

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0), i32 382, i32 0, i64 12) #3, !dbg !2845, !srcloc !2848
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #3, !dbg !2849, !srcloc !2852
  unreachable, !dbg !2853

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %65 = load i32, i32* %retval.i.i, align 4, !dbg !2854
  store i32 %65, i32* %index.i, align 4, !dbg !2855
  %66 = load i32, i32* %index.i, align 4, !dbg !2856
  %tobool.i = icmp ne i32 %66, 0, !dbg !2856
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2858

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2859
  br label %kmalloc.exit, !dbg !2859

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %67 = load i32, i32* %flags.addr.i53, align 4, !dbg !2860
  store i32 %67, i32* %flags.addr.i13.i, align 4
  %68 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2861
  %and.i.i = and i32 %68, 17, !dbg !2861
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2861
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2861
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2861
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2861
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2863

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2864
  br label %kmalloc_type.exit.i, !dbg !2864

if.end.i16.i:                                     ; preds = %if.end4.i
  %69 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2865
  %and2.i.i = and i32 %69, 1, !dbg !2866
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2865
  %70 = zext i1 %tobool3.i.i to i64, !dbg !2865
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2865
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2867
  br label %kmalloc_type.exit.i, !dbg !2867

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %71 = load i32, i32* %retval.i12.i, align 4, !dbg !2868
  %idxprom.i = zext i32 %71 to i64, !dbg !2869
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2869
  %72 = load i32, i32* %index.i, align 4, !dbg !2870
  %idxprom6.i = zext i32 %72 to i64, !dbg !2869
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2869
  %73 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2869
  %74 = load i32, i32* %flags.addr.i53, align 4, !dbg !2871
  %75 = load i64, i64* %size.addr.i, align 8, !dbg !2872
  store %struct.kmem_cache* %73, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %74, i32* %flags.addr.i17.i, align 4
  store i64 %75, i64* %size.addr.i18.i, align 8
  %76 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2873
  %77 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2874
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %76, i32 %77) #11, !dbg !2875
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2875
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2875
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2875
  call void @llvm.assume(i1 %maskcond.i.i) #3, !dbg !2875
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2562
  %78 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2876
  %79 = load i8*, i8** %ret.i.i, align 8, !dbg !2877
  %80 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2878
  %81 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2879
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %78, i8* %79, i64 %80, i32 %81) #11, !dbg !2880
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2881
  %82 = load i8*, i8** %ret.i.i, align 8, !dbg !2882
  store i8* %82, i8** %retval.i, align 8, !dbg !2883
  br label %kmalloc.exit, !dbg !2883

if.end9.i:                                        ; preds = %for.end
  %83 = load i64, i64* %size.addr.i, align 8, !dbg !2884
  %84 = load i32, i32* %flags.addr.i53, align 4, !dbg !2885
  %call10.i = call noalias i8* @__kmalloc(i64 %83, i32 %84) #11, !dbg !2886
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2886
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2886
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2886
  call void @llvm.assume(i1 %maskcond.i) #3, !dbg !2886
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2887
  br label %kmalloc.exit, !dbg !2887

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %85 = load i8*, i8** %retval.i, align 8, !dbg !2888
  %86 = bitcast i8* %85 to %struct.gameport_event*, !dbg !2889
  store %struct.gameport_event* %86, %struct.gameport_event** %event, align 8, !dbg !2890
  %87 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2891
  %tobool = icmp ne %struct.gameport_event* %87, null, !dbg !2891
  br i1 %tobool, label %if.end41, label %if.then39, !dbg !2893

if.then39:                                        ; preds = %kmalloc.exit
  %88 = load i32, i32* %event_type.addr, align 4, !dbg !2894
  %call40 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.4, i64 0, i64 0), i32 %88) #14, !dbg !2894
  store i32 -12, i32* %retval1, align 4, !dbg !2896
  br label %out, !dbg !2897

if.end41:                                         ; preds = %kmalloc.exit
  %89 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2898
  %call42 = call zeroext i1 @try_module_get(%struct.module* %89) #12, !dbg !2900
  br i1 %call42, label %if.end45, label %if.then43, !dbg !2901

if.then43:                                        ; preds = %if.end41
  %90 = load i32, i32* %event_type.addr, align 4, !dbg !2902
  %call44 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.5, i64 0, i64 0), i32 %90) #14, !dbg !2902
  %91 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2904
  %92 = bitcast %struct.gameport_event* %91 to i8*, !dbg !2904
  call void @kfree(i8* %92) #12, !dbg !2905
  store i32 -22, i32* %retval1, align 4, !dbg !2906
  br label %out, !dbg !2907

if.end45:                                         ; preds = %if.end41
  %93 = load i32, i32* %event_type.addr, align 4, !dbg !2908
  %94 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2909
  %type46 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %94, i32 0, i32 0, !dbg !2910
  store i32 %93, i32* %type46, align 8, !dbg !2911
  %95 = load i8*, i8** %object.addr, align 8, !dbg !2912
  %96 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2913
  %object47 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %96, i32 0, i32 1, !dbg !2914
  store i8* %95, i8** %object47, align 8, !dbg !2915
  %97 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !2916
  %98 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2917
  %owner48 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %98, i32 0, i32 2, !dbg !2918
  store %struct.module* %97, %struct.module** %owner48, align 8, !dbg !2919
  %99 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !2920
  %node49 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %99, i32 0, i32 3, !dbg !2921
  call void @list_add_tail(%struct.list_head* %node49, %struct.list_head* @gameport_event_list) #12, !dbg !2922
  %100 = load %struct.workqueue_struct*, %struct.workqueue_struct** @system_long_wq, align 8, !dbg !2923
  %call50 = call zeroext i1 @queue_work(%struct.workqueue_struct* %100, %struct.work_struct* @gameport_event_work) #12, !dbg !2924
  br label %out, !dbg !2924

out:                                              ; preds = %if.end45, %if.then43, %if.then39, %if.then30
  call void @llvm.dbg.label(metadata !2925), !dbg !2926
  %101 = load i64, i64* %flags, align 8, !dbg !2927
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i51, align 8
  store i64 %101, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !176, metadata !2928, metadata !DIExpression()) #3, !dbg !2931
  call void @llvm.dbg.declare(metadata !176, metadata !2932, metadata !DIExpression()) #3, !dbg !2931
  store i32 1, i32* %tmp.i, align 4, !dbg !2931
  %102 = load i32, i32* %tmp.i, align 4, !dbg !2931
  call void @llvm.dbg.declare(metadata !176, metadata !2933, metadata !DIExpression()) #3, !dbg !2938
  call void @llvm.dbg.declare(metadata !176, metadata !2939, metadata !DIExpression()) #3, !dbg !2938
  store i32 1, i32* %tmp8.i, align 4, !dbg !2938
  %103 = load i32, i32* %tmp8.i, align 4, !dbg !2938
  %104 = load i64, i64* %flags.addr.i, align 8, !dbg !2940
  call void @arch_local_irq_restore(i64 %104) #11, !dbg !2940
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !2941, !srcloc !2943
  %105 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i51, align 8, !dbg !2944
  %106 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %105, i32 0, i32 0, !dbg !2944
  %rlock.i52 = bitcast %union.anon.0* %106 to %struct.raw_spinlock*, !dbg !2944
  %107 = load i32, i32* %retval1, align 4, !dbg !2946
  ret i32 %107, !dbg !2947
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gameport_unregister_port(%struct.gameport* %gameport) #0 !dbg !2948 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2949, metadata !DIExpression()), !dbg !2950
  call void @mutex_lock(%struct.mutex* @gameport_mutex) #12, !dbg !2951
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2952
  call void @gameport_disconnect_port(%struct.gameport* %0) #12, !dbg !2953
  %1 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2954
  call void @gameport_destroy_port(%struct.gameport* %1) #12, !dbg !2955
  call void @mutex_unlock(%struct.mutex* @gameport_mutex) #12, !dbg !2956
  ret void, !dbg !2957
}

; Function Attrs: noredzone
declare dso_local void @mutex_lock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_disconnect_port(%struct.gameport* %gameport) #0 !dbg !2958 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %s = alloca %struct.gameport*, align 8
  %parent = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !2959, metadata !DIExpression()), !dbg !2960
  call void @llvm.dbg.declare(metadata %struct.gameport** %s, metadata !2961, metadata !DIExpression()), !dbg !2962
  call void @llvm.dbg.declare(metadata %struct.gameport** %parent, metadata !2963, metadata !DIExpression()), !dbg !2964
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2965
  %child = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 18, !dbg !2967
  %1 = load %struct.gameport*, %struct.gameport** %child, align 8, !dbg !2967
  %tobool = icmp ne %struct.gameport* %1, null, !dbg !2965
  br i1 %tobool, label %if.then, label %if.end, !dbg !2968

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2969
  store %struct.gameport* %2, %struct.gameport** %s, align 8, !dbg !2972
  br label %for.cond, !dbg !2973

for.cond:                                         ; preds = %for.inc, %if.then
  %3 = load %struct.gameport*, %struct.gameport** %s, align 8, !dbg !2974
  %child1 = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 18, !dbg !2976
  %4 = load %struct.gameport*, %struct.gameport** %child1, align 8, !dbg !2976
  %tobool2 = icmp ne %struct.gameport* %4, null, !dbg !2977
  br i1 %tobool2, label %for.body, label %for.end, !dbg !2977

for.body:                                         ; preds = %for.cond
  br label %for.inc, !dbg !2977

for.inc:                                          ; preds = %for.body
  %5 = load %struct.gameport*, %struct.gameport** %s, align 8, !dbg !2978
  %child3 = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 18, !dbg !2979
  %6 = load %struct.gameport*, %struct.gameport** %child3, align 8, !dbg !2979
  store %struct.gameport* %6, %struct.gameport** %s, align 8, !dbg !2980
  br label %for.cond, !dbg !2981, !llvm.loop !2982

for.end:                                          ; preds = %for.cond
  br label %do.body, !dbg !2984

do.body:                                          ; preds = %do.cond, %for.end
  %7 = load %struct.gameport*, %struct.gameport** %s, align 8, !dbg !2985
  %parent4 = getelementptr inbounds %struct.gameport, %struct.gameport* %7, i32 0, i32 17, !dbg !2987
  %8 = load %struct.gameport*, %struct.gameport** %parent4, align 8, !dbg !2987
  store %struct.gameport* %8, %struct.gameport** %parent, align 8, !dbg !2988
  %9 = load %struct.gameport*, %struct.gameport** %s, align 8, !dbg !2989
  %dev = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 21, !dbg !2990
  call void @device_release_driver(%struct.device* %dev) #12, !dbg !2991
  %10 = load %struct.gameport*, %struct.gameport** %s, align 8, !dbg !2992
  call void @gameport_destroy_port(%struct.gameport* %10) #12, !dbg !2993
  br label %do.cond, !dbg !2994

do.cond:                                          ; preds = %do.body
  %11 = load %struct.gameport*, %struct.gameport** %parent, align 8, !dbg !2995
  store %struct.gameport* %11, %struct.gameport** %s, align 8, !dbg !2996
  %12 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !2997
  %cmp = icmp ne %struct.gameport* %11, %12, !dbg !2998
  br i1 %cmp, label %do.body, label %do.end, !dbg !2994, !llvm.loop !2999

do.end:                                           ; preds = %do.cond
  br label %if.end, !dbg !3001

if.end:                                           ; preds = %do.end, %entry
  %13 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3002
  %dev5 = getelementptr inbounds %struct.gameport, %struct.gameport* %13, i32 0, i32 21, !dbg !3003
  call void @device_release_driver(%struct.device* %dev5) #12, !dbg !3004
  ret void, !dbg !3005
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_destroy_port(%struct.gameport* %gameport) #0 !dbg !3006 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %child = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !3007, metadata !DIExpression()), !dbg !3008
  call void @llvm.dbg.declare(metadata %struct.gameport** %child, metadata !3009, metadata !DIExpression()), !dbg !3010
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3011
  %call = call %struct.gameport* @gameport_get_pending_child(%struct.gameport* %0) #12, !dbg !3012
  store %struct.gameport* %call, %struct.gameport** %child, align 8, !dbg !3013
  %1 = load %struct.gameport*, %struct.gameport** %child, align 8, !dbg !3014
  %tobool = icmp ne %struct.gameport* %1, null, !dbg !3014
  br i1 %tobool, label %if.then, label %if.end, !dbg !3016

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport*, %struct.gameport** %child, align 8, !dbg !3017
  %3 = bitcast %struct.gameport* %2 to i8*, !dbg !3017
  call void @gameport_remove_pending_events(i8* %3) #12, !dbg !3019
  %4 = load %struct.gameport*, %struct.gameport** %child, align 8, !dbg !3020
  %dev = getelementptr inbounds %struct.gameport, %struct.gameport* %4, i32 0, i32 21, !dbg !3021
  call void @put_device(%struct.device* %dev) #12, !dbg !3022
  br label %if.end, !dbg !3023

if.end:                                           ; preds = %if.then, %entry
  %5 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3024
  %parent = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 17, !dbg !3026
  %6 = load %struct.gameport*, %struct.gameport** %parent, align 8, !dbg !3026
  %tobool1 = icmp ne %struct.gameport* %6, null, !dbg !3024
  br i1 %tobool1, label %if.then2, label %if.end6, !dbg !3027

if.then2:                                         ; preds = %if.end
  %7 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3028
  %parent3 = getelementptr inbounds %struct.gameport, %struct.gameport* %7, i32 0, i32 17, !dbg !3030
  %8 = load %struct.gameport*, %struct.gameport** %parent3, align 8, !dbg !3030
  %child4 = getelementptr inbounds %struct.gameport, %struct.gameport* %8, i32 0, i32 18, !dbg !3031
  store %struct.gameport* null, %struct.gameport** %child4, align 8, !dbg !3032
  %9 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3033
  %parent5 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 17, !dbg !3034
  store %struct.gameport* null, %struct.gameport** %parent5, align 8, !dbg !3035
  br label %if.end6, !dbg !3036

if.end6:                                          ; preds = %if.then2, %if.end
  %10 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3037
  %dev7 = getelementptr inbounds %struct.gameport, %struct.gameport* %10, i32 0, i32 21, !dbg !3039
  %call8 = call i32 @device_is_registered(%struct.device* %dev7) #12, !dbg !3040
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3040
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !3041

if.then10:                                        ; preds = %if.end6
  %11 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3042
  %dev11 = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 21, !dbg !3043
  call void @device_del(%struct.device* %dev11) #12, !dbg !3044
  br label %if.end12, !dbg !3044

if.end12:                                         ; preds = %if.then10, %if.end6
  %12 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3045
  %node = getelementptr inbounds %struct.gameport, %struct.gameport* %12, i32 0, i32 22, !dbg !3046
  call void @list_del_init(%struct.list_head* %node) #12, !dbg !3047
  %13 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3048
  %14 = bitcast %struct.gameport* %13 to i8*, !dbg !3048
  call void @gameport_remove_pending_events(i8* %14) #12, !dbg !3049
  %15 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3050
  %dev13 = getelementptr inbounds %struct.gameport, %struct.gameport* %15, i32 0, i32 21, !dbg !3051
  call void @put_device(%struct.device* %dev13) #12, !dbg !3052
  ret void, !dbg !3053
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__gameport_register_driver(%struct.gameport_driver* %drv, %struct.module* %owner, i8* %mod_name) #0 !dbg !3054 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.gameport_driver*, align 8
  %owner.addr = alloca %struct.module*, align 8
  %mod_name.addr = alloca i8*, align 8
  %error = alloca i32, align 4
  store %struct.gameport_driver* %drv, %struct.gameport_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv.addr, metadata !3057, metadata !DIExpression()), !dbg !3058
  store %struct.module* %owner, %struct.module** %owner.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %owner.addr, metadata !3059, metadata !DIExpression()), !dbg !3060
  store i8* %mod_name, i8** %mod_name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %mod_name.addr, metadata !3061, metadata !DIExpression()), !dbg !3062
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3063, metadata !DIExpression()), !dbg !3064
  %0 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3065
  %driver = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %0, i32 0, i32 4, !dbg !3066
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 1, !dbg !3067
  store %struct.bus_type* @gameport_bus, %struct.bus_type** %bus, align 8, !dbg !3068
  %1 = load %struct.module*, %struct.module** %owner.addr, align 8, !dbg !3069
  %2 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3070
  %driver1 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %2, i32 0, i32 4, !dbg !3071
  %owner2 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver1, i32 0, i32 2, !dbg !3072
  store %struct.module* %1, %struct.module** %owner2, align 8, !dbg !3073
  %3 = load i8*, i8** %mod_name.addr, align 8, !dbg !3074
  %4 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3075
  %driver3 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %4, i32 0, i32 4, !dbg !3076
  %mod_name4 = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver3, i32 0, i32 3, !dbg !3077
  store i8* %3, i8** %mod_name4, align 8, !dbg !3078
  %5 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3079
  %ignore = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %5, i32 0, i32 5, !dbg !3080
  store i8 1, i8* %ignore, align 8, !dbg !3081
  %6 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3082
  %driver5 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %6, i32 0, i32 4, !dbg !3083
  %call = call i32 @driver_register(%struct.device_driver* %driver5) #12, !dbg !3084
  store i32 %call, i32* %error, align 4, !dbg !3085
  %7 = load i32, i32* %error, align 4, !dbg !3086
  %tobool = icmp ne i32 %7, 0, !dbg !3086
  br i1 %tobool, label %if.then, label %if.end, !dbg !3088

if.then:                                          ; preds = %entry
  %8 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3089
  %driver6 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %8, i32 0, i32 4, !dbg !3089
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver6, i32 0, i32 0, !dbg !3089
  %9 = load i8*, i8** %name, align 8, !dbg !3089
  %10 = load i32, i32* %error, align 4, !dbg !3089
  %call7 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.1, i64 0, i64 0), i8* %9, i32 %10) #14, !dbg !3089
  %11 = load i32, i32* %error, align 4, !dbg !3091
  store i32 %11, i32* %retval, align 4, !dbg !3092
  br label %return, !dbg !3092

if.end:                                           ; preds = %entry
  %12 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3093
  %ignore8 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %12, i32 0, i32 5, !dbg !3094
  store i8 0, i8* %ignore8, align 8, !dbg !3095
  %13 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3096
  %14 = bitcast %struct.gameport_driver* %13 to i8*, !dbg !3096
  %call9 = call i32 @gameport_queue_event(i8* %14, %struct.module* null, i32 1) #12, !dbg !3097
  store i32 %call9, i32* %error, align 4, !dbg !3098
  %15 = load i32, i32* %error, align 4, !dbg !3099
  %tobool10 = icmp ne i32 %15, 0, !dbg !3099
  br i1 %tobool10, label %if.then11, label %if.end13, !dbg !3101

if.then11:                                        ; preds = %if.end
  %16 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3102
  %driver12 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %16, i32 0, i32 4, !dbg !3104
  call void @driver_unregister(%struct.device_driver* %driver12) #12, !dbg !3105
  %17 = load i32, i32* %error, align 4, !dbg !3106
  store i32 %17, i32* %retval, align 4, !dbg !3107
  br label %return, !dbg !3107

if.end13:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3108
  br label %return, !dbg !3108

return:                                           ; preds = %if.end13, %if.then11, %if.then
  %18 = load i32, i32* %retval, align 4, !dbg !3109
  ret i32 %18, !dbg !3109
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #4

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gameport_unregister_driver(%struct.gameport_driver* %drv) #0 !dbg !3110 {
entry:
  %drv.addr = alloca %struct.gameport_driver*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  %__mptr3 = alloca i8*, align 8
  %tmp7 = alloca %struct.gameport*, align 8
  store %struct.gameport_driver* %drv, %struct.gameport_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv.addr, metadata !3113, metadata !DIExpression()), !dbg !3114
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3115, metadata !DIExpression()), !dbg !3116
  call void @mutex_lock(%struct.mutex* @gameport_mutex) #12, !dbg !3117
  %0 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3118
  %ignore = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %0, i32 0, i32 5, !dbg !3119
  store i8 1, i8* %ignore, align 8, !dbg !3120
  %1 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3121
  %2 = bitcast %struct.gameport_driver* %1 to i8*, !dbg !3121
  call void @gameport_remove_pending_events(i8* %2) #12, !dbg !3122
  br label %start_over, !dbg !3122

start_over:                                       ; preds = %if.then, %entry
  call void @llvm.dbg.label(metadata !3123), !dbg !3124
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3125, metadata !DIExpression()), !dbg !3128
  %3 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gameport_list, i32 0, i32 0), align 8, !dbg !3128
  %4 = bitcast %struct.list_head* %3 to i8*, !dbg !3128
  store i8* %4, i8** %__mptr, align 8, !dbg !3128
  br label %do.body, !dbg !3128

do.body:                                          ; preds = %start_over
  br label %do.end, !dbg !3129

do.end:                                           ; preds = %do.body
  %5 = load i8*, i8** %__mptr, align 8, !dbg !3128
  %add.ptr = getelementptr i8, i8* %5, i64 -936, !dbg !3128
  %6 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3128
  store %struct.gameport* %6, %struct.gameport** %tmp, align 8, !dbg !3129
  %7 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3128
  store %struct.gameport* %7, %struct.gameport** %gameport, align 8, !dbg !3131
  br label %for.cond, !dbg !3131

for.cond:                                         ; preds = %do.end6, %do.end
  %8 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3132
  %node = getelementptr inbounds %struct.gameport, %struct.gameport* %8, i32 0, i32 22, !dbg !3132
  %cmp = icmp eq %struct.list_head* %node, @gameport_list, !dbg !3132
  %lnot = xor i1 %cmp, true, !dbg !3132
  br i1 %lnot, label %for.body, label %for.end, !dbg !3131

for.body:                                         ; preds = %for.cond
  %9 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3134
  %drv1 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 19, !dbg !3137
  %10 = load %struct.gameport_driver*, %struct.gameport_driver** %drv1, align 8, !dbg !3137
  %11 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3138
  %cmp2 = icmp eq %struct.gameport_driver* %10, %11, !dbg !3139
  br i1 %cmp2, label %if.then, label %if.end, !dbg !3140

if.then:                                          ; preds = %for.body
  %12 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3141
  call void @gameport_disconnect_port(%struct.gameport* %12) #12, !dbg !3143
  %13 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3144
  call void @gameport_find_driver(%struct.gameport* %13) #12, !dbg !3145
  br label %start_over, !dbg !3146

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !3147

for.inc:                                          ; preds = %if.end
  call void @llvm.dbg.declare(metadata i8** %__mptr3, metadata !3148, metadata !DIExpression()), !dbg !3150
  %14 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3150
  %node4 = getelementptr inbounds %struct.gameport, %struct.gameport* %14, i32 0, i32 22, !dbg !3150
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node4, i32 0, i32 0, !dbg !3150
  %15 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3150
  %16 = bitcast %struct.list_head* %15 to i8*, !dbg !3150
  store i8* %16, i8** %__mptr3, align 8, !dbg !3150
  br label %do.body5, !dbg !3150

do.body5:                                         ; preds = %for.inc
  br label %do.end6, !dbg !3151

do.end6:                                          ; preds = %do.body5
  %17 = load i8*, i8** %__mptr3, align 8, !dbg !3150
  %add.ptr8 = getelementptr i8, i8* %17, i64 -936, !dbg !3150
  %18 = bitcast i8* %add.ptr8 to %struct.gameport*, !dbg !3150
  store %struct.gameport* %18, %struct.gameport** %tmp7, align 8, !dbg !3151
  %19 = load %struct.gameport*, %struct.gameport** %tmp7, align 8, !dbg !3150
  store %struct.gameport* %19, %struct.gameport** %gameport, align 8, !dbg !3132
  br label %for.cond, !dbg !3132, !llvm.loop !3153

for.end:                                          ; preds = %for.cond
  %20 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3155
  %driver = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %20, i32 0, i32 4, !dbg !3156
  call void @driver_unregister(%struct.device_driver* %driver) #12, !dbg !3157
  call void @mutex_unlock(%struct.mutex* @gameport_mutex) #12, !dbg !3158
  ret void, !dbg !3159
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_remove_pending_events(i8* %object) #0 !dbg !3160 {
entry:
  %lock.addr.i42 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i42, metadata !2600, metadata !DIExpression()), !dbg !3161
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2606, metadata !DIExpression()), !dbg !3163
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2446, metadata !DIExpression()), !dbg !3164
  %object.addr = alloca i8*, align 8
  %event = alloca %struct.gameport_event*, align 8
  %next = alloca %struct.gameport_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.gameport_event*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp26 = alloca %struct.gameport_event*, align 8
  %__mptr35 = alloca i8*, align 8
  %tmp40 = alloca %struct.gameport_event*, align 8
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3171, metadata !DIExpression()), !dbg !3172
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event, metadata !3173, metadata !DIExpression()), !dbg !3174
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %next, metadata !3175, metadata !DIExpression()), !dbg !3176
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3177, metadata !DIExpression()), !dbg !3178
  br label %do.body, !dbg !3179

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3180

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3181, metadata !DIExpression()), !dbg !3183
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3184, metadata !DIExpression()), !dbg !3183
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3183
  %conv = zext i1 %cmp to i32, !dbg !3183
  store i32 1, i32* %tmp, align 4, !dbg !3183
  %0 = load i32, i32* %tmp, align 4, !dbg !3183
  br label %do.body2, !dbg !3185

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3186

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3187

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3189, metadata !DIExpression()), !dbg !3192
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3193, metadata !DIExpression()), !dbg !3192
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3192
  %conv8 = zext i1 %cmp7 to i32, !dbg !3192
  store i32 1, i32* %tmp9, align 4, !dbg !3192
  %1 = load i32, i32* %tmp9, align 4, !dbg !3192
  %call = call i64 @arch_local_irq_save() #12, !dbg !3194
  store i64 %call, i64* %flags, align 8, !dbg !3194
  br label %do.end, !dbg !3194

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3187

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3186

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !3195, !srcloc !3196
  br label %do.body12, !dbg !3195

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3197
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !3198
  %rlock.i = bitcast %union.anon.0* %3 to %struct.raw_spinlock*, !dbg !3198
  br label %do.end14, !dbg !3199

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3195

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3186

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3185

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3180

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3200, metadata !DIExpression()), !dbg !3203
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gameport_event_list, i32 0, i32 0), align 8, !dbg !3203
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !3203
  store i8* %5, i8** %__mptr, align 8, !dbg !3203
  br label %do.body19, !dbg !3203

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3204

do.end20:                                         ; preds = %do.body19
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3203
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !3203
  %7 = bitcast i8* %add.ptr to %struct.gameport_event*, !dbg !3203
  store %struct.gameport_event* %7, %struct.gameport_event** %tmp21, align 8, !dbg !3204
  %8 = load %struct.gameport_event*, %struct.gameport_event** %tmp21, align 8, !dbg !3203
  store %struct.gameport_event* %8, %struct.gameport_event** %event, align 8, !dbg !3206
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !3207, metadata !DIExpression()), !dbg !3209
  %9 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3209
  %node = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %9, i32 0, i32 3, !dbg !3209
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !3209
  %10 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !3209
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !3209
  store i8* %11, i8** %__mptr22, align 8, !dbg !3209
  br label %do.body24, !dbg !3209

do.body24:                                        ; preds = %do.end20
  br label %do.end25, !dbg !3210

do.end25:                                         ; preds = %do.body24
  %12 = load i8*, i8** %__mptr22, align 8, !dbg !3209
  %add.ptr27 = getelementptr i8, i8* %12, i64 -24, !dbg !3209
  %13 = bitcast i8* %add.ptr27 to %struct.gameport_event*, !dbg !3209
  store %struct.gameport_event* %13, %struct.gameport_event** %tmp26, align 8, !dbg !3210
  %14 = load %struct.gameport_event*, %struct.gameport_event** %tmp26, align 8, !dbg !3209
  store %struct.gameport_event* %14, %struct.gameport_event** %next, align 8, !dbg !3206
  br label %for.cond, !dbg !3206

for.cond:                                         ; preds = %do.end39, %do.end25
  %15 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3212
  %node28 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %15, i32 0, i32 3, !dbg !3212
  %cmp29 = icmp eq %struct.list_head* %node28, @gameport_event_list, !dbg !3212
  %lnot = xor i1 %cmp29, true, !dbg !3212
  br i1 %lnot, label %for.body, label %for.end, !dbg !3206

for.body:                                         ; preds = %for.cond
  %16 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3214
  %object31 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %16, i32 0, i32 1, !dbg !3217
  %17 = load i8*, i8** %object31, align 8, !dbg !3217
  %18 = load i8*, i8** %object.addr, align 8, !dbg !3218
  %cmp32 = icmp eq i8* %17, %18, !dbg !3219
  br i1 %cmp32, label %if.then, label %if.end, !dbg !3220

if.then:                                          ; preds = %for.body
  %19 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3221
  %node34 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %19, i32 0, i32 3, !dbg !3223
  call void @list_del_init(%struct.list_head* %node34) #12, !dbg !3224
  %20 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3225
  call void @gameport_free_event(%struct.gameport_event* %20) #12, !dbg !3226
  br label %if.end, !dbg !3227

if.end:                                           ; preds = %if.then, %for.body
  br label %for.inc, !dbg !3228

for.inc:                                          ; preds = %if.end
  %21 = load %struct.gameport_event*, %struct.gameport_event** %next, align 8, !dbg !3212
  store %struct.gameport_event* %21, %struct.gameport_event** %event, align 8, !dbg !3212
  call void @llvm.dbg.declare(metadata i8** %__mptr35, metadata !3229, metadata !DIExpression()), !dbg !3231
  %22 = load %struct.gameport_event*, %struct.gameport_event** %next, align 8, !dbg !3231
  %node36 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %22, i32 0, i32 3, !dbg !3231
  %next37 = getelementptr inbounds %struct.list_head, %struct.list_head* %node36, i32 0, i32 0, !dbg !3231
  %23 = load %struct.list_head*, %struct.list_head** %next37, align 8, !dbg !3231
  %24 = bitcast %struct.list_head* %23 to i8*, !dbg !3231
  store i8* %24, i8** %__mptr35, align 8, !dbg !3231
  br label %do.body38, !dbg !3231

do.body38:                                        ; preds = %for.inc
  br label %do.end39, !dbg !3232

do.end39:                                         ; preds = %do.body38
  %25 = load i8*, i8** %__mptr35, align 8, !dbg !3231
  %add.ptr41 = getelementptr i8, i8* %25, i64 -24, !dbg !3231
  %26 = bitcast i8* %add.ptr41 to %struct.gameport_event*, !dbg !3231
  store %struct.gameport_event* %26, %struct.gameport_event** %tmp40, align 8, !dbg !3232
  %27 = load %struct.gameport_event*, %struct.gameport_event** %tmp40, align 8, !dbg !3231
  store %struct.gameport_event* %27, %struct.gameport_event** %next, align 8, !dbg !3212
  br label %for.cond, !dbg !3212, !llvm.loop !3234

for.end:                                          ; preds = %for.cond
  %28 = load i64, i64* %flags, align 8, !dbg !3236
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i42, align 8
  store i64 %28, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !176, metadata !2928, metadata !DIExpression()) #3, !dbg !3237
  call void @llvm.dbg.declare(metadata !176, metadata !2932, metadata !DIExpression()) #3, !dbg !3237
  store i32 1, i32* %tmp.i, align 4, !dbg !3237
  %29 = load i32, i32* %tmp.i, align 4, !dbg !3237
  call void @llvm.dbg.declare(metadata !176, metadata !2933, metadata !DIExpression()) #3, !dbg !3238
  call void @llvm.dbg.declare(metadata !176, metadata !2939, metadata !DIExpression()) #3, !dbg !3238
  store i32 1, i32* %tmp8.i, align 4, !dbg !3238
  %30 = load i32, i32* %tmp8.i, align 4, !dbg !3238
  %31 = load i64, i64* %flags.addr.i, align 8, !dbg !3239
  call void @arch_local_irq_restore(i64 %31) #11, !dbg !3239
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !3240, !srcloc !2943
  %32 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i42, align 8, !dbg !3241
  %33 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %32, i32 0, i32 0, !dbg !3241
  %rlock.i43 = bitcast %union.anon.0* %33 to %struct.raw_spinlock*, !dbg !3241
  ret void, !dbg !3242
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_find_driver(%struct.gameport* %gameport) #0 !dbg !3243 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %error = alloca i32, align 4
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !3244, metadata !DIExpression()), !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3246, metadata !DIExpression()), !dbg !3247
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3248
  %dev = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 21, !dbg !3249
  %call = call i32 @device_attach(%struct.device* %dev) #12, !dbg !3250
  store i32 %call, i32* %error, align 4, !dbg !3251
  %1 = load i32, i32* %error, align 4, !dbg !3252
  %cmp = icmp slt i32 %1, 0, !dbg !3254
  br i1 %cmp, label %if.then, label %if.end, !dbg !3255

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3256
  %dev1 = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 21, !dbg !3256
  %3 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3256
  %phys = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 2, !dbg !3256
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !3256
  %4 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3256
  %name = getelementptr inbounds %struct.gameport, %struct.gameport* %4, i32 0, i32 1, !dbg !3256
  %arraydecay2 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !3256
  %5 = load i32, i32* %error, align 4, !dbg !3256
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev1, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.7, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay2, i32 %5) #14, !dbg !3256
  br label %if.end, !dbg !3256

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3257
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @gameport_open(%struct.gameport* %gameport, %struct.gameport_driver* %drv, i32 %mode) #0 !dbg !3258 {
entry:
  %retval = alloca i32, align 4
  %gameport.addr = alloca %struct.gameport*, align 8
  %drv.addr = alloca %struct.gameport_driver*, align 8
  %mode.addr = alloca i32, align 4
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !3261, metadata !DIExpression()), !dbg !3262
  store %struct.gameport_driver* %drv, %struct.gameport_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv.addr, metadata !3263, metadata !DIExpression()), !dbg !3264
  store i32 %mode, i32* %mode.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %mode.addr, metadata !3265, metadata !DIExpression()), !dbg !3266
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3267
  %open = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 10, !dbg !3269
  %1 = load i32 (%struct.gameport*, i32)*, i32 (%struct.gameport*, i32)** %open, align 8, !dbg !3269
  %tobool = icmp ne i32 (%struct.gameport*, i32)* %1, null, !dbg !3267
  br i1 %tobool, label %if.then, label %if.else, !dbg !3270

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3271
  %open1 = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 10, !dbg !3274
  %3 = load i32 (%struct.gameport*, i32)*, i32 (%struct.gameport*, i32)** %open1, align 8, !dbg !3274
  %4 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3275
  %5 = load i32, i32* %mode.addr, align 4, !dbg !3276
  %call = call i32 %3(%struct.gameport* %4, i32 %5) #12, !dbg !3271
  %tobool2 = icmp ne i32 %call, 0, !dbg !3271
  br i1 %tobool2, label %if.then3, label %if.end, !dbg !3277

if.then3:                                         ; preds = %if.then
  store i32 -1, i32* %retval, align 4, !dbg !3278
  br label %return, !dbg !3278

if.end:                                           ; preds = %if.then
  br label %if.end6, !dbg !3280

if.else:                                          ; preds = %entry
  %6 = load i32, i32* %mode.addr, align 4, !dbg !3281
  %cmp = icmp ne i32 %6, 1, !dbg !3284
  br i1 %cmp, label %if.then4, label %if.end5, !dbg !3285

if.then4:                                         ; preds = %if.else
  store i32 -1, i32* %retval, align 4, !dbg !3286
  br label %return, !dbg !3286

if.end5:                                          ; preds = %if.else
  br label %if.end6

if.end6:                                          ; preds = %if.end5, %if.end
  %7 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3287
  %8 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3288
  call void @gameport_set_drv(%struct.gameport* %7, %struct.gameport_driver* %8) #12, !dbg !3289
  store i32 0, i32* %retval, align 4, !dbg !3290
  br label %return, !dbg !3290

return:                                           ; preds = %if.end6, %if.then4, %if.then3
  %9 = load i32, i32* %retval, align 4, !dbg !3291
  ret i32 %9, !dbg !3291
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_set_drv(%struct.gameport* %gameport, %struct.gameport_driver* %drv) #0 !dbg !3292 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %drv.addr = alloca %struct.gameport_driver*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !3295, metadata !DIExpression()), !dbg !3296
  store %struct.gameport_driver* %drv, %struct.gameport_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv.addr, metadata !3297, metadata !DIExpression()), !dbg !3298
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3299
  %drv_mutex = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 20, !dbg !3300
  call void @mutex_lock(%struct.mutex* %drv_mutex) #12, !dbg !3301
  %1 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !3302
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3303
  %drv1 = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 19, !dbg !3304
  store %struct.gameport_driver* %1, %struct.gameport_driver** %drv1, align 8, !dbg !3305
  %3 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3306
  %drv_mutex2 = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 20, !dbg !3307
  call void @mutex_unlock(%struct.mutex* %drv_mutex2) #12, !dbg !3308
  ret void, !dbg !3309
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @gameport_close(%struct.gameport* %gameport) #0 !dbg !3310 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !3311, metadata !DIExpression()), !dbg !3312
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3313
  %poll_timer = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 12, !dbg !3313
  %call = call i32 @del_timer(%struct.timer_list* %poll_timer) #12, !dbg !3313
  %1 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3314
  %poll_handler = getelementptr inbounds %struct.gameport, %struct.gameport* %1, i32 0, i32 16, !dbg !3315
  %poll_handler1 = bitcast {}** %poll_handler to void (%struct.gameport*)**, !dbg !3315
  store void (%struct.gameport*)* null, void (%struct.gameport*)** %poll_handler1, align 8, !dbg !3316
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3317
  %poll_interval = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 13, !dbg !3318
  store i32 0, i32* %poll_interval, align 8, !dbg !3319
  %3 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3320
  call void @gameport_set_drv(%struct.gameport* %3, %struct.gameport_driver* null) #12, !dbg !3321
  %4 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3322
  %close = getelementptr inbounds %struct.gameport, %struct.gameport* %4, i32 0, i32 11, !dbg !3324
  %close2 = bitcast {}** %close to void (%struct.gameport*)**, !dbg !3324
  %5 = load void (%struct.gameport*)*, void (%struct.gameport*)** %close2, align 8, !dbg !3324
  %tobool = icmp ne void (%struct.gameport*)* %5, null, !dbg !3322
  br i1 %tobool, label %if.then, label %if.end, !dbg !3325

if.then:                                          ; preds = %entry
  %6 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3326
  %close3 = getelementptr inbounds %struct.gameport, %struct.gameport* %6, i32 0, i32 11, !dbg !3327
  %close4 = bitcast {}** %close3 to void (%struct.gameport*)**, !dbg !3327
  %7 = load void (%struct.gameport*)*, void (%struct.gameport*)** %close4, align 8, !dbg !3327
  %8 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3328
  call void %7(%struct.gameport* %8) #12, !dbg !3326
  br label %if.end, !dbg !3326

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !3329
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @gameport_exit() #5 section ".exit.text" !dbg !3330 {
entry:
  call void @bus_unregister(%struct.bus_type* @gameport_bus) #12, !dbg !3331
  %call = call zeroext i1 @cancel_work_sync(%struct.work_struct* @gameport_event_work) #12, !dbg !3332
  ret void, !dbg !3333
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @cancel_work_sync(%struct.work_struct*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_init() #5 section ".init.text" !dbg !3334 {
entry:
  %retval = alloca i32, align 4
  %error = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3337, metadata !DIExpression()), !dbg !3338
  %call = call i32 @bus_register(%struct.bus_type* @gameport_bus) #12, !dbg !3339
  store i32 %call, i32* %error, align 4, !dbg !3340
  %0 = load i32, i32* %error, align 4, !dbg !3341
  %tobool = icmp ne i32 %0, 0, !dbg !3341
  br i1 %tobool, label %if.then, label %if.end, !dbg !3343

if.then:                                          ; preds = %entry
  %1 = load i32, i32* %error, align 4, !dbg !3344
  %call1 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.21, i64 0, i64 0), i32 %1) #14, !dbg !3344
  %2 = load i32, i32* %error, align 4, !dbg !3346
  store i32 %2, i32* %retval, align 4, !dbg !3347
  br label %return, !dbg !3347

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !3348
  br label %return, !dbg !3348

return:                                           ; preds = %if.end, %if.then
  %3 = load i32, i32* %retval, align 4, !dbg !3349
  ret i32 %3, !dbg !3349
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #6

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #0 !dbg !3350 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !3351, metadata !DIExpression()), !dbg !3352
  %0 = load i32, i32* %m.addr, align 4, !dbg !3353
  %conv = zext i32 %0 to i64, !dbg !3353
  %add = add i64 %conv, 4, !dbg !3354
  %sub = sub i64 %add, 1, !dbg !3355
  %div = sdiv i64 %sub, 4, !dbg !3356
  ret i64 %div, !dbg !3357
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__module_get(%struct.module* %module) #0 !dbg !3358 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3362, metadata !DIExpression()), !dbg !3363
  ret void, !dbg !3364
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #2

; Function Attrs: noredzone
declare dso_local void @device_initialize(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_release_port(%struct.device* %dev) #0 !dbg !3365 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3368, metadata !DIExpression()), !dbg !3369
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3370, metadata !DIExpression()), !dbg !3372
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3372
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3372
  store i8* %1, i8** %__mptr, align 8, !dbg !3372
  br label %do.body, !dbg !3372

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3373

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3372
  %add.ptr = getelementptr i8, i8* %2, i64 -240, !dbg !3372
  %3 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3372
  store %struct.gameport* %3, %struct.gameport** %tmp, align 8, !dbg !3373
  %4 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3372
  store %struct.gameport* %4, %struct.gameport** %gameport, align 8, !dbg !3369
  %5 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3375
  %6 = bitcast %struct.gameport* %5 to i8*, !dbg !3375
  call void @kfree(i8* %6) #12, !dbg !3376
  call void @module_put(%struct.module* null) #12, !dbg !3377
  ret void, !dbg !3378
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @INIT_LIST_HEAD(%struct.list_head* %list) #0 !dbg !3379 {
entry:
  %list.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %list, %struct.list_head** %list.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %list.addr, metadata !3383, metadata !DIExpression()), !dbg !3384
  br label %do.body, !dbg !3385

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3386

do.body1:                                         ; preds = %do.body
  br label %do.end, !dbg !3388

do.end:                                           ; preds = %do.body1
  br label %do.body2, !dbg !3386

do.body2:                                         ; preds = %do.end
  %0 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3390
  %1 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3390
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 0, !dbg !3390
  store volatile %struct.list_head* %0, %struct.list_head** %next, align 8, !dbg !3390
  br label %do.end3, !dbg !3390

do.end3:                                          ; preds = %do.body2
  br label %do.end4, !dbg !3386

do.end4:                                          ; preds = %do.end3
  %2 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3392
  %3 = load %struct.list_head*, %struct.list_head** %list.addr, align 8, !dbg !3393
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 1, !dbg !3394
  store %struct.list_head* %2, %struct.list_head** %prev, align 8, !dbg !3395
  ret void, !dbg !3396
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #7

; Function Attrs: noredzone
declare dso_local void @init_timer_key(%struct.timer_list*, void (%struct.timer_list*)*, i32, i8*, %struct.lock_class_key*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_run_poll_handler(%struct.timer_list* %t) #0 !dbg !3397 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !2286, metadata !DIExpression()), !dbg !3398
  %t.addr = alloca %struct.timer_list*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  store %struct.timer_list* %t, %struct.timer_list** %t.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.timer_list** %t.addr, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3403, metadata !DIExpression()), !dbg !3404
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3405, metadata !DIExpression()), !dbg !3407
  %0 = load %struct.timer_list*, %struct.timer_list** %t.addr, align 8, !dbg !3407
  %1 = bitcast %struct.timer_list* %0 to i8*, !dbg !3407
  store i8* %1, i8** %__mptr, align 8, !dbg !3407
  br label %do.body, !dbg !3407

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3408

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3407
  %add.ptr = getelementptr i8, i8* %2, i64 -136, !dbg !3407
  %3 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3407
  store %struct.gameport* %3, %struct.gameport** %tmp, align 8, !dbg !3408
  %4 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3407
  store %struct.gameport* %4, %struct.gameport** %gameport, align 8, !dbg !3404
  %5 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3410
  %poll_handler = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 16, !dbg !3411
  %poll_handler1 = bitcast {}** %poll_handler to void (%struct.gameport*)**, !dbg !3411
  %6 = load void (%struct.gameport*)*, void (%struct.gameport*)** %poll_handler1, align 8, !dbg !3411
  %7 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3412
  call void %6(%struct.gameport* %7) #12, !dbg !3410
  %8 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3413
  %poll_cnt = getelementptr inbounds %struct.gameport, %struct.gameport* %8, i32 0, i32 15, !dbg !3414
  %9 = load i32, i32* %poll_cnt, align 4, !dbg !3414
  %tobool = icmp ne i32 %9, 0, !dbg !3413
  br i1 %tobool, label %if.then, label %if.end, !dbg !3415

if.then:                                          ; preds = %do.end
  %10 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3416
  %poll_timer = getelementptr inbounds %struct.gameport, %struct.gameport* %10, i32 0, i32 12, !dbg !3417
  %11 = load volatile i64, i64* @jiffies, align 8, !dbg !3418
  %12 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3419
  %poll_interval = getelementptr inbounds %struct.gameport, %struct.gameport* %12, i32 0, i32 13, !dbg !3420
  %13 = load i32, i32* %poll_interval, align 8, !dbg !3420
  store i32 %13, i32* %m.addr.i, align 4
  %14 = load i32, i32* %m.addr.i, align 4, !dbg !3421
  %15 = call i1 @llvm.is.constant.i32(i32 %14) #3, !dbg !3422
  br i1 %15, label %if.then.i, label %if.else.i, !dbg !3423

if.then.i:                                        ; preds = %if.then
  %16 = load i32, i32* %m.addr.i, align 4, !dbg !3424
  %cmp.i = icmp slt i32 %16, 0, !dbg !3425
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3426

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3427
  br label %msecs_to_jiffies.exit, !dbg !3427

if.end.i:                                         ; preds = %if.then.i
  %17 = load i32, i32* %m.addr.i, align 4, !dbg !3428
  %call.i = call i64 @_msecs_to_jiffies(i32 %17) #11, !dbg !3429
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3430
  br label %msecs_to_jiffies.exit, !dbg !3430

if.else.i:                                        ; preds = %if.then
  %18 = load i32, i32* %m.addr.i, align 4, !dbg !3431
  %call2.i = call i64 @__msecs_to_jiffies(i32 %18) #11, !dbg !3432
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3433
  br label %msecs_to_jiffies.exit, !dbg !3433

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %19 = load i64, i64* %retval.i, align 8, !dbg !3434
  %add = add i64 %11, %19, !dbg !3435
  %call2 = call i32 @mod_timer(%struct.timer_list* %poll_timer, i64 %add) #12, !dbg !3436
  br label %if.end, !dbg !3436

if.end:                                           ; preds = %msecs_to_jiffies.exit, %do.end
  ret void, !dbg !3437
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #0 !dbg !3438 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3442, metadata !DIExpression()), !dbg !3443
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3444, metadata !DIExpression()), !dbg !3445
  ret i1 true, !dbg !3446
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #0 !dbg !3447 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3451, metadata !DIExpression()), !dbg !3452
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3453, metadata !DIExpression()), !dbg !3454
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3455, metadata !DIExpression()), !dbg !3456
  ret void, !dbg !3457
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @module_put(%struct.module* %module) #0 !dbg !3458 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3459, metadata !DIExpression()), !dbg !3460
  ret void, !dbg !3461
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_irq_save() #0 !dbg !3462 {
entry:
  %f = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %f, metadata !3466, metadata !DIExpression()), !dbg !3467
  %call = call i64 @arch_local_save_flags() #12, !dbg !3468
  store i64 %call, i64* %f, align 8, !dbg !3469
  call void @arch_local_irq_disable() #12, !dbg !3470
  %0 = load i64, i64* %f, align 8, !dbg !3471
  ret i64 %0, !dbg !3472
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @try_module_get(%struct.module* %module) #0 !dbg !3473 {
entry:
  %module.addr = alloca %struct.module*, align 8
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !3476, metadata !DIExpression()), !dbg !3477
  ret i1 true, !dbg !3478
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_add_tail(%struct.list_head* %new, %struct.list_head* %head) #0 !dbg !3479 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %head.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3482, metadata !DIExpression()), !dbg !3483
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !3484, metadata !DIExpression()), !dbg !3485
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3486
  %1 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3487
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3488
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3488
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !3489
  call void @__list_add(%struct.list_head* %0, %struct.list_head* %2, %struct.list_head* %3) #12, !dbg !3490
  ret void, !dbg !3491
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @queue_work(%struct.workqueue_struct* %wq, %struct.work_struct* %work) #0 !dbg !3492 {
entry:
  %wq.addr = alloca %struct.workqueue_struct*, align 8
  %work.addr = alloca %struct.work_struct*, align 8
  store %struct.workqueue_struct* %wq, %struct.workqueue_struct** %wq.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.workqueue_struct** %wq.addr, metadata !3497, metadata !DIExpression()), !dbg !3498
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !3499, metadata !DIExpression()), !dbg !3500
  %0 = load %struct.workqueue_struct*, %struct.workqueue_struct** %wq.addr, align 8, !dbg !3501
  %1 = load %struct.work_struct*, %struct.work_struct** %work.addr, align 8, !dbg !3502
  %call = call zeroext i1 @queue_work_on(i32 1, %struct.workqueue_struct* %0, %struct.work_struct* %1) #12, !dbg !3503
  ret i1 %call, !dbg !3504
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @arch_local_save_flags() #0 !dbg !3505 {
entry:
  %__ret = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  %__mask = alloca i64, align 8
  %tmp = alloca i64, align 8
  %tmp2 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__ret, metadata !3506, metadata !DIExpression()), !dbg !3508
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3509, metadata !DIExpression()), !dbg !3508
  %0 = load i64, i64* %__edi, align 8, !dbg !3508
  store i64 %0, i64* %__edi, align 8, !dbg !3508
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3510, metadata !DIExpression()), !dbg !3508
  %1 = load i64, i64* %__esi, align 8, !dbg !3508
  store i64 %1, i64* %__esi, align 8, !dbg !3508
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3511, metadata !DIExpression()), !dbg !3508
  %2 = load i64, i64* %__edx, align 8, !dbg !3508
  store i64 %2, i64* %__edx, align 8, !dbg !3508
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3512, metadata !DIExpression()), !dbg !3508
  %3 = load i64, i64* %__ecx, align 8, !dbg !3508
  store i64 %3, i64* %__ecx, align 8, !dbg !3508
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3513, metadata !DIExpression()), !dbg !3508
  %4 = load i64, i64* %__eax, align 8, !dbg !3508
  store i64 %4, i64* %__eax, align 8, !dbg !3508
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), align 8, !dbg !3508
  %6 = call i64 @llvm.read_register.i64(metadata !2271), !dbg !3514
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 36, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 0, i32 0), i32 1, i64 %6) #3, !dbg !3514, !srcloc !3517
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3514
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3514
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3514
  call void @llvm.write_register.i64(metadata !2271, i64 %asmresult1), !dbg !3514
  %8 = load i64, i64* %__eax, align 8, !dbg !3514
  call void @llvm.dbg.declare(metadata i64* %__mask, metadata !3518, metadata !DIExpression()), !dbg !3520
  store i64 -1, i64* %__mask, align 8, !dbg !3520
  %9 = load i64, i64* %__mask, align 8, !dbg !3520
  store i64 %9, i64* %tmp, align 8, !dbg !3520
  %10 = load i64, i64* %tmp, align 8, !dbg !3520
  %and = and i64 %8, %10, !dbg !3514
  store i64 %and, i64* %__ret, align 8, !dbg !3514
  %11 = load i64, i64* %__ret, align 8, !dbg !3508
  store i64 %11, i64* %tmp2, align 8, !dbg !3521
  %12 = load i64, i64* %tmp2, align 8, !dbg !3508
  ret i64 %12, !dbg !3522
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_disable() #0 !dbg !3523 {
entry:
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3524, metadata !DIExpression()), !dbg !3526
  %0 = load i64, i64* %__edi, align 8, !dbg !3526
  store i64 %0, i64* %__edi, align 8, !dbg !3526
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3527, metadata !DIExpression()), !dbg !3526
  %1 = load i64, i64* %__esi, align 8, !dbg !3526
  store i64 %1, i64* %__esi, align 8, !dbg !3526
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3528, metadata !DIExpression()), !dbg !3526
  %2 = load i64, i64* %__edx, align 8, !dbg !3526
  store i64 %2, i64* %__edx, align 8, !dbg !3526
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3529, metadata !DIExpression()), !dbg !3526
  %3 = load i64, i64* %__ecx, align 8, !dbg !3526
  store i64 %3, i64* %__ecx, align 8, !dbg !3526
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3530, metadata !DIExpression()), !dbg !3526
  %4 = load i64, i64* %__eax, align 8, !dbg !3526
  store i64 %4, i64* %__eax, align 8, !dbg !3526
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), align 8, !dbg !3526
  %6 = call i64 @llvm.read_register.i64(metadata !2271), !dbg !3526
  %7 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 38, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 2, i32 0), i32 1, i64 %6) #3, !dbg !3526, !srcloc !3531
  %asmresult = extractvalue { i64, i64 } %7, 0, !dbg !3526
  %asmresult1 = extractvalue { i64, i64 } %7, 1, !dbg !3526
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3526
  call void @llvm.write_register.i64(metadata !2271, i64 %asmresult1), !dbg !3526
  ret void, !dbg !3532
}

; Function Attrs: nounwind readonly
declare i64 @llvm.read_register.i64(metadata) #8

; Function Attrs: nounwind
declare void @llvm.write_register.i64(metadata, i64) #3

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #6

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #9

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #10 !dbg !3533 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3537, metadata !DIExpression()), !dbg !3542
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3544, metadata !DIExpression()), !dbg !3545
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3546, metadata !DIExpression()), !dbg !3547
  %0 = load i64, i64* %size.addr, align 8, !dbg !3548
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3550
  br i1 %1, label %if.then, label %if.end447, !dbg !3551

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3552
  %tobool = icmp ne i64 %2, 0, !dbg !3552
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3555

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3556
  br label %return, !dbg !3556

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3557
  %cmp = icmp ult i64 %3, 4096, !dbg !3559
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3560

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3561
  br label %return, !dbg !3561

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub = sub i64 %4, 1, !dbg !3562
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3562
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3562

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub4 = sub i64 %6, 1, !dbg !3562
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3562
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3562

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub6 = sub i64 %8, 1, !dbg !3562
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3562
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3562

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3562

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub9 = sub i64 %9, 1, !dbg !3562
  %and = and i64 %sub9, -9223372036854775808, !dbg !3562
  %tobool10 = icmp ne i64 %and, 0, !dbg !3562
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3562

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3562

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub13 = sub i64 %10, 1, !dbg !3562
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3562
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3562
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3562

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3562

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub18 = sub i64 %11, 1, !dbg !3562
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3562
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3562
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3562

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3562

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub23 = sub i64 %12, 1, !dbg !3562
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3562
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3562
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3562

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3562

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub28 = sub i64 %13, 1, !dbg !3562
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3562
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3562
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3562

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3562

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub33 = sub i64 %14, 1, !dbg !3562
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3562
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3562
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3562

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3562

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub38 = sub i64 %15, 1, !dbg !3562
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3562
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3562
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3562

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3562

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub43 = sub i64 %16, 1, !dbg !3562
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3562
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3562
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3562

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3562

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub48 = sub i64 %17, 1, !dbg !3562
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3562
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3562
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3562

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3562

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub53 = sub i64 %18, 1, !dbg !3562
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3562
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3562
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3562

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3562

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub58 = sub i64 %19, 1, !dbg !3562
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3562
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3562
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3562

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3562

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub63 = sub i64 %20, 1, !dbg !3562
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3562
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3562
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3562

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3562

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub68 = sub i64 %21, 1, !dbg !3562
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3562
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3562
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3562

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3562

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub73 = sub i64 %22, 1, !dbg !3562
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3562
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3562
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3562

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3562

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub78 = sub i64 %23, 1, !dbg !3562
  %and79 = and i64 %sub78, 562949953421312, !dbg !3562
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3562
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3562

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3562

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub83 = sub i64 %24, 1, !dbg !3562
  %and84 = and i64 %sub83, 281474976710656, !dbg !3562
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3562
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3562

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3562

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub88 = sub i64 %25, 1, !dbg !3562
  %and89 = and i64 %sub88, 140737488355328, !dbg !3562
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3562
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3562

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3562

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub93 = sub i64 %26, 1, !dbg !3562
  %and94 = and i64 %sub93, 70368744177664, !dbg !3562
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3562
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3562

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3562

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub98 = sub i64 %27, 1, !dbg !3562
  %and99 = and i64 %sub98, 35184372088832, !dbg !3562
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3562
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3562

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3562

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub103 = sub i64 %28, 1, !dbg !3562
  %and104 = and i64 %sub103, 17592186044416, !dbg !3562
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3562
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3562

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3562

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub108 = sub i64 %29, 1, !dbg !3562
  %and109 = and i64 %sub108, 8796093022208, !dbg !3562
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3562
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3562

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3562

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub113 = sub i64 %30, 1, !dbg !3562
  %and114 = and i64 %sub113, 4398046511104, !dbg !3562
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3562
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3562

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3562

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub118 = sub i64 %31, 1, !dbg !3562
  %and119 = and i64 %sub118, 2199023255552, !dbg !3562
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3562
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3562

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3562

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub123 = sub i64 %32, 1, !dbg !3562
  %and124 = and i64 %sub123, 1099511627776, !dbg !3562
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3562
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3562

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3562

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub128 = sub i64 %33, 1, !dbg !3562
  %and129 = and i64 %sub128, 549755813888, !dbg !3562
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3562
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3562

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3562

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub133 = sub i64 %34, 1, !dbg !3562
  %and134 = and i64 %sub133, 274877906944, !dbg !3562
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3562
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3562

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3562

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub138 = sub i64 %35, 1, !dbg !3562
  %and139 = and i64 %sub138, 137438953472, !dbg !3562
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3562
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3562

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3562

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub143 = sub i64 %36, 1, !dbg !3562
  %and144 = and i64 %sub143, 68719476736, !dbg !3562
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3562
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3562

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3562

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub148 = sub i64 %37, 1, !dbg !3562
  %and149 = and i64 %sub148, 34359738368, !dbg !3562
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3562
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3562

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3562

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub153 = sub i64 %38, 1, !dbg !3562
  %and154 = and i64 %sub153, 17179869184, !dbg !3562
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3562
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3562

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3562

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub158 = sub i64 %39, 1, !dbg !3562
  %and159 = and i64 %sub158, 8589934592, !dbg !3562
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3562
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3562

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3562

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub163 = sub i64 %40, 1, !dbg !3562
  %and164 = and i64 %sub163, 4294967296, !dbg !3562
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3562
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3562

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3562

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub168 = sub i64 %41, 1, !dbg !3562
  %and169 = and i64 %sub168, 2147483648, !dbg !3562
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3562
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3562

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3562

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub173 = sub i64 %42, 1, !dbg !3562
  %and174 = and i64 %sub173, 1073741824, !dbg !3562
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3562
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3562

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3562

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub178 = sub i64 %43, 1, !dbg !3562
  %and179 = and i64 %sub178, 536870912, !dbg !3562
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3562
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3562

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3562

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub183 = sub i64 %44, 1, !dbg !3562
  %and184 = and i64 %sub183, 268435456, !dbg !3562
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3562
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3562

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3562

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub188 = sub i64 %45, 1, !dbg !3562
  %and189 = and i64 %sub188, 134217728, !dbg !3562
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3562
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3562

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3562

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub193 = sub i64 %46, 1, !dbg !3562
  %and194 = and i64 %sub193, 67108864, !dbg !3562
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3562
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3562

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3562

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub198 = sub i64 %47, 1, !dbg !3562
  %and199 = and i64 %sub198, 33554432, !dbg !3562
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3562
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3562

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3562

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub203 = sub i64 %48, 1, !dbg !3562
  %and204 = and i64 %sub203, 16777216, !dbg !3562
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3562
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3562

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3562

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub208 = sub i64 %49, 1, !dbg !3562
  %and209 = and i64 %sub208, 8388608, !dbg !3562
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3562
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3562

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3562

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub213 = sub i64 %50, 1, !dbg !3562
  %and214 = and i64 %sub213, 4194304, !dbg !3562
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3562
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3562

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3562

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub218 = sub i64 %51, 1, !dbg !3562
  %and219 = and i64 %sub218, 2097152, !dbg !3562
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3562
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3562

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3562

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub223 = sub i64 %52, 1, !dbg !3562
  %and224 = and i64 %sub223, 1048576, !dbg !3562
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3562
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3562

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3562

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub228 = sub i64 %53, 1, !dbg !3562
  %and229 = and i64 %sub228, 524288, !dbg !3562
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3562
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3562

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3562

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub233 = sub i64 %54, 1, !dbg !3562
  %and234 = and i64 %sub233, 262144, !dbg !3562
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3562
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3562

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3562

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub238 = sub i64 %55, 1, !dbg !3562
  %and239 = and i64 %sub238, 131072, !dbg !3562
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3562
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3562

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3562

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub243 = sub i64 %56, 1, !dbg !3562
  %and244 = and i64 %sub243, 65536, !dbg !3562
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3562
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3562

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3562

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub248 = sub i64 %57, 1, !dbg !3562
  %and249 = and i64 %sub248, 32768, !dbg !3562
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3562
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3562

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3562

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub253 = sub i64 %58, 1, !dbg !3562
  %and254 = and i64 %sub253, 16384, !dbg !3562
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3562
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3562

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3562

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub258 = sub i64 %59, 1, !dbg !3562
  %and259 = and i64 %sub258, 8192, !dbg !3562
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3562
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3562

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3562

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub263 = sub i64 %60, 1, !dbg !3562
  %and264 = and i64 %sub263, 4096, !dbg !3562
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3562
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3562

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3562

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub268 = sub i64 %61, 1, !dbg !3562
  %and269 = and i64 %sub268, 2048, !dbg !3562
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3562
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3562

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3562

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub273 = sub i64 %62, 1, !dbg !3562
  %and274 = and i64 %sub273, 1024, !dbg !3562
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3562
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3562

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3562

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub278 = sub i64 %63, 1, !dbg !3562
  %and279 = and i64 %sub278, 512, !dbg !3562
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3562
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3562

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3562

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub283 = sub i64 %64, 1, !dbg !3562
  %and284 = and i64 %sub283, 256, !dbg !3562
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3562
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3562

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3562

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub288 = sub i64 %65, 1, !dbg !3562
  %and289 = and i64 %sub288, 128, !dbg !3562
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3562
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3562

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3562

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub293 = sub i64 %66, 1, !dbg !3562
  %and294 = and i64 %sub293, 64, !dbg !3562
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3562
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3562

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3562

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub298 = sub i64 %67, 1, !dbg !3562
  %and299 = and i64 %sub298, 32, !dbg !3562
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3562
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3562

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3562

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub303 = sub i64 %68, 1, !dbg !3562
  %and304 = and i64 %sub303, 16, !dbg !3562
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3562
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3562

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3562

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub308 = sub i64 %69, 1, !dbg !3562
  %and309 = and i64 %sub308, 8, !dbg !3562
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3562
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3562

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3562

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub313 = sub i64 %70, 1, !dbg !3562
  %and314 = and i64 %sub313, 4, !dbg !3562
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3562
  %71 = zext i1 %tobool315 to i64, !dbg !3562
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3562
  br label %cond.end, !dbg !3562

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3562
  br label %cond.end317, !dbg !3562

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3562
  br label %cond.end319, !dbg !3562

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3562
  br label %cond.end321, !dbg !3562

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3562
  br label %cond.end323, !dbg !3562

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3562
  br label %cond.end325, !dbg !3562

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3562
  br label %cond.end327, !dbg !3562

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3562
  br label %cond.end329, !dbg !3562

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3562
  br label %cond.end331, !dbg !3562

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3562
  br label %cond.end333, !dbg !3562

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3562
  br label %cond.end335, !dbg !3562

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3562
  br label %cond.end337, !dbg !3562

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3562
  br label %cond.end339, !dbg !3562

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3562
  br label %cond.end341, !dbg !3562

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3562
  br label %cond.end343, !dbg !3562

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3562
  br label %cond.end345, !dbg !3562

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3562
  br label %cond.end347, !dbg !3562

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3562
  br label %cond.end349, !dbg !3562

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3562
  br label %cond.end351, !dbg !3562

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3562
  br label %cond.end353, !dbg !3562

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3562
  br label %cond.end355, !dbg !3562

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3562
  br label %cond.end357, !dbg !3562

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3562
  br label %cond.end359, !dbg !3562

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3562
  br label %cond.end361, !dbg !3562

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3562
  br label %cond.end363, !dbg !3562

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3562
  br label %cond.end365, !dbg !3562

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3562
  br label %cond.end367, !dbg !3562

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3562
  br label %cond.end369, !dbg !3562

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3562
  br label %cond.end371, !dbg !3562

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3562
  br label %cond.end373, !dbg !3562

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3562
  br label %cond.end375, !dbg !3562

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3562
  br label %cond.end377, !dbg !3562

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3562
  br label %cond.end379, !dbg !3562

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3562
  br label %cond.end381, !dbg !3562

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3562
  br label %cond.end383, !dbg !3562

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3562
  br label %cond.end385, !dbg !3562

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3562
  br label %cond.end387, !dbg !3562

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3562
  br label %cond.end389, !dbg !3562

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3562
  br label %cond.end391, !dbg !3562

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3562
  br label %cond.end393, !dbg !3562

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3562
  br label %cond.end395, !dbg !3562

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3562
  br label %cond.end397, !dbg !3562

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3562
  br label %cond.end399, !dbg !3562

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3562
  br label %cond.end401, !dbg !3562

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3562
  br label %cond.end403, !dbg !3562

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3562
  br label %cond.end405, !dbg !3562

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3562
  br label %cond.end407, !dbg !3562

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3562
  br label %cond.end409, !dbg !3562

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3562
  br label %cond.end411, !dbg !3562

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3562
  br label %cond.end413, !dbg !3562

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3562
  br label %cond.end415, !dbg !3562

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3562
  br label %cond.end417, !dbg !3562

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3562
  br label %cond.end419, !dbg !3562

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3562
  br label %cond.end421, !dbg !3562

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3562
  br label %cond.end423, !dbg !3562

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3562
  br label %cond.end425, !dbg !3562

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3562
  br label %cond.end427, !dbg !3562

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3562
  br label %cond.end429, !dbg !3562

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3562
  br label %cond.end431, !dbg !3562

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3562
  br label %cond.end433, !dbg !3562

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3562
  br label %cond.end435, !dbg !3562

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3562
  br label %cond.end437, !dbg !3562

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3562
  br label %cond.end440, !dbg !3562

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3562

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3562
  br label %cond.end444, !dbg !3562

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3562
  %sub443 = sub i64 %72, 1, !dbg !3562
  %call = call i32 @__ilog2_u64(i64 %sub443) #13, !dbg !3562
  br label %cond.end444, !dbg !3562

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3562
  %sub446 = sub i32 %cond445, 12, !dbg !3563
  %add = add i32 %sub446, 1, !dbg !3564
  store i32 %add, i32* %retval, align 4, !dbg !3565
  br label %return, !dbg !3565

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3566
  %dec = add i64 %73, -1, !dbg !3566
  store i64 %dec, i64* %size.addr, align 8, !dbg !3566
  %74 = load i64, i64* %size.addr, align 8, !dbg !3567
  %shr = lshr i64 %74, 12, !dbg !3567
  store i64 %shr, i64* %size.addr, align 8, !dbg !3567
  %75 = load i64, i64* %size.addr, align 8, !dbg !3568
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3545
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3569
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3570
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #8, !dbg !3569, !srcloc !3571
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3569
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3572
  %add.i = add i32 %79, 1, !dbg !3573
  store i32 %add.i, i32* %retval, align 4, !dbg !3574
  br label %return, !dbg !3574

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3575
  ret i32 %80, !dbg !3575
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #10 !dbg !3576 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3537, metadata !DIExpression()), !dbg !3580
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3544, metadata !DIExpression()), !dbg !3582
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3583, metadata !DIExpression()), !dbg !3584
  %0 = load i64, i64* %n.addr, align 8, !dbg !3585
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3582
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3586
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3587
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #8, !dbg !3586, !srcloc !3571
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3586
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3588
  %add.i = add i32 %4, 1, !dbg !3589
  %sub = sub i32 %add.i, 1, !dbg !3590
  ret i32 %sub, !dbg !3591
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3592 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3600, metadata !DIExpression()), !dbg !3601
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3602, metadata !DIExpression()), !dbg !3603
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3604
  ret i8* %0, !dbg !3605
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_add(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3606 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3609, metadata !DIExpression()), !dbg !3610
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3611, metadata !DIExpression()), !dbg !3612
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3613, metadata !DIExpression()), !dbg !3614
  %0 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3615
  %1 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3617
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3618
  %call = call zeroext i1 @__list_add_valid(%struct.list_head* %0, %struct.list_head* %1, %struct.list_head* %2) #12, !dbg !3619
  br i1 %call, label %if.end, label %if.then, !dbg !3620

if.then:                                          ; preds = %entry
  br label %do.end8, !dbg !3621

if.end:                                           ; preds = %entry
  %3 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3622
  %4 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3623
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %4, i32 0, i32 1, !dbg !3624
  store %struct.list_head* %3, %struct.list_head** %prev1, align 8, !dbg !3625
  %5 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3626
  %6 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3627
  %next2 = getelementptr inbounds %struct.list_head, %struct.list_head* %6, i32 0, i32 0, !dbg !3628
  store %struct.list_head* %5, %struct.list_head** %next2, align 8, !dbg !3629
  %7 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3630
  %8 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3631
  %prev3 = getelementptr inbounds %struct.list_head, %struct.list_head* %8, i32 0, i32 1, !dbg !3632
  store %struct.list_head* %7, %struct.list_head** %prev3, align 8, !dbg !3633
  br label %do.body, !dbg !3634

do.body:                                          ; preds = %if.end
  br label %do.body4, !dbg !3635

do.body4:                                         ; preds = %do.body
  br label %do.end, !dbg !3637

do.end:                                           ; preds = %do.body4
  br label %do.body5, !dbg !3635

do.body5:                                         ; preds = %do.end
  %9 = load %struct.list_head*, %struct.list_head** %new.addr, align 8, !dbg !3639
  %10 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3639
  %next6 = getelementptr inbounds %struct.list_head, %struct.list_head* %10, i32 0, i32 0, !dbg !3639
  store volatile %struct.list_head* %9, %struct.list_head** %next6, align 8, !dbg !3639
  br label %do.end7, !dbg !3639

do.end7:                                          ; preds = %do.body5
  br label %do.end8, !dbg !3635

do.end8:                                          ; preds = %if.then, %do.end7
  ret void, !dbg !3641
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_add_valid(%struct.list_head* %new, %struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3642 {
entry:
  %new.addr = alloca %struct.list_head*, align 8
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %new, %struct.list_head** %new.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %new.addr, metadata !3645, metadata !DIExpression()), !dbg !3646
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3647, metadata !DIExpression()), !dbg !3648
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3649, metadata !DIExpression()), !dbg !3650
  ret i1 true, !dbg !3651
}

; Function Attrs: noredzone
declare dso_local zeroext i1 @queue_work_on(i32, %struct.workqueue_struct*, %struct.work_struct*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @arch_local_irq_restore(i64 %f) #0 !dbg !3652 {
entry:
  %f.addr = alloca i64, align 8
  %__edi = alloca i64, align 8
  %__esi = alloca i64, align 8
  %__edx = alloca i64, align 8
  %__ecx = alloca i64, align 8
  %__eax = alloca i64, align 8
  store i64 %f, i64* %f.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %f.addr, metadata !3655, metadata !DIExpression()), !dbg !3656
  call void @llvm.dbg.declare(metadata i64* %__edi, metadata !3657, metadata !DIExpression()), !dbg !3659
  %0 = load i64, i64* %__edi, align 8, !dbg !3659
  store i64 %0, i64* %__edi, align 8, !dbg !3659
  call void @llvm.dbg.declare(metadata i64* %__esi, metadata !3660, metadata !DIExpression()), !dbg !3659
  %1 = load i64, i64* %__esi, align 8, !dbg !3659
  store i64 %1, i64* %__esi, align 8, !dbg !3659
  call void @llvm.dbg.declare(metadata i64* %__edx, metadata !3661, metadata !DIExpression()), !dbg !3659
  %2 = load i64, i64* %__edx, align 8, !dbg !3659
  store i64 %2, i64* %__edx, align 8, !dbg !3659
  call void @llvm.dbg.declare(metadata i64* %__ecx, metadata !3662, metadata !DIExpression()), !dbg !3659
  %3 = load i64, i64* %__ecx, align 8, !dbg !3659
  store i64 %3, i64* %__ecx, align 8, !dbg !3659
  call void @llvm.dbg.declare(metadata i64* %__eax, metadata !3663, metadata !DIExpression()), !dbg !3659
  %4 = load i64, i64* %__eax, align 8, !dbg !3659
  store i64 %4, i64* %__eax, align 8, !dbg !3659
  %5 = load i8*, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), align 8, !dbg !3659
  %6 = call i64 @llvm.read_register.i64(metadata !2271), !dbg !3659
  %7 = load i64, i64* %f.addr, align 8, !dbg !3659
  %8 = call { i64, i64 } asm sideeffect "771:\0A\09999:\0A\09.pushsection .discard.retpoline_safe\0A\09 .quad  999b\0A\09.popsection\0A\09call *${3:c};\0A772:\0A.pushsection .parainstructions,\22a\22\0A .balign 8 \0A .quad  771b\0A  .byte ${2:c}\0A  .byte 772b-771b\0A  .short ${4:c}\0A.popsection\0A", "={ax},={rsp},i,i,i,{di},1,~{memory},~{cc},~{dirflag},~{fpsr},~{flags}"(i64 37, i8** getelementptr inbounds (%struct.paravirt_patch_template, %struct.paravirt_patch_template* @pv_ops, i32 0, i32 3, i32 1, i32 0), i32 1, i64 %7, i64 %6) #3, !dbg !3659, !srcloc !3664
  %asmresult = extractvalue { i64, i64 } %8, 0, !dbg !3659
  %asmresult1 = extractvalue { i64, i64 } %8, 1, !dbg !3659
  store i64 %asmresult, i64* %__eax, align 8, !dbg !3659
  call void @llvm.write_register.i64(metadata !2271, i64 %asmresult1), !dbg !3659
  ret void, !dbg !3665
}

; Function Attrs: noredzone
declare dso_local void @device_release_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gameport* @gameport_get_pending_child(%struct.gameport* %parent) #0 !dbg !3666 {
entry:
  %lock.addr.i37 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i37, metadata !2600, metadata !DIExpression()), !dbg !3669
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2606, metadata !DIExpression()), !dbg !3671
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2446, metadata !DIExpression()), !dbg !3672
  %parent.addr = alloca %struct.gameport*, align 8
  %event = alloca %struct.gameport_event*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %child = alloca %struct.gameport*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.gameport_event*, align 8
  %__mptr31 = alloca i8*, align 8
  %tmp35 = alloca %struct.gameport_event*, align 8
  store %struct.gameport* %parent, %struct.gameport** %parent.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %parent.addr, metadata !3679, metadata !DIExpression()), !dbg !3680
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event, metadata !3681, metadata !DIExpression()), !dbg !3682
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3683, metadata !DIExpression()), !dbg !3684
  call void @llvm.dbg.declare(metadata %struct.gameport** %child, metadata !3685, metadata !DIExpression()), !dbg !3686
  store %struct.gameport* null, %struct.gameport** %child, align 8, !dbg !3686
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !3687, metadata !DIExpression()), !dbg !3688
  br label %do.body, !dbg !3689

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !3690

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !3691, metadata !DIExpression()), !dbg !3693
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !3694, metadata !DIExpression()), !dbg !3693
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !3693
  %conv = zext i1 %cmp to i32, !dbg !3693
  store i32 1, i32* %tmp, align 4, !dbg !3693
  %0 = load i32, i32* %tmp, align 4, !dbg !3693
  br label %do.body2, !dbg !3695

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !3696

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !3697

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !3699, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !3703, metadata !DIExpression()), !dbg !3702
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !3702
  %conv8 = zext i1 %cmp7 to i32, !dbg !3702
  store i32 1, i32* %tmp9, align 4, !dbg !3702
  %1 = load i32, i32* %tmp9, align 4, !dbg !3702
  %call = call i64 @arch_local_irq_save() #12, !dbg !3704
  store i64 %call, i64* %flags, align 8, !dbg !3704
  br label %do.end, !dbg !3704

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !3697

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !3696

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !3705, !srcloc !3706
  br label %do.body12, !dbg !3705

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !3707
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !3708
  %rlock.i = bitcast %union.anon.0* %3 to %struct.raw_spinlock*, !dbg !3708
  br label %do.end14, !dbg !3709

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !3705

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !3696

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !3695

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !3690

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3710, metadata !DIExpression()), !dbg !3713
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gameport_event_list, i32 0, i32 0), align 8, !dbg !3713
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !3713
  store i8* %5, i8** %__mptr, align 8, !dbg !3713
  br label %do.body19, !dbg !3713

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !3714

do.end20:                                         ; preds = %do.body19
  %6 = load i8*, i8** %__mptr, align 8, !dbg !3713
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !3713
  %7 = bitcast i8* %add.ptr to %struct.gameport_event*, !dbg !3713
  store %struct.gameport_event* %7, %struct.gameport_event** %tmp21, align 8, !dbg !3714
  %8 = load %struct.gameport_event*, %struct.gameport_event** %tmp21, align 8, !dbg !3713
  store %struct.gameport_event* %8, %struct.gameport_event** %event, align 8, !dbg !3716
  br label %for.cond, !dbg !3716

for.cond:                                         ; preds = %do.end34, %do.end20
  %9 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3717
  %node = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %9, i32 0, i32 3, !dbg !3717
  %cmp22 = icmp eq %struct.list_head* %node, @gameport_event_list, !dbg !3717
  %lnot = xor i1 %cmp22, true, !dbg !3717
  br i1 %lnot, label %for.body, label %for.end, !dbg !3716

for.body:                                         ; preds = %for.cond
  %10 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3719
  %type = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %10, i32 0, i32 0, !dbg !3722
  %11 = load i32, i32* %type, align 8, !dbg !3722
  %cmp24 = icmp eq i32 %11, 0, !dbg !3723
  br i1 %cmp24, label %if.then, label %if.end30, !dbg !3724

if.then:                                          ; preds = %for.body
  %12 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3725
  %object = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %12, i32 0, i32 1, !dbg !3727
  %13 = load i8*, i8** %object, align 8, !dbg !3727
  %14 = bitcast i8* %13 to %struct.gameport*, !dbg !3725
  store %struct.gameport* %14, %struct.gameport** %gameport, align 8, !dbg !3728
  %15 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3729
  %parent26 = getelementptr inbounds %struct.gameport, %struct.gameport* %15, i32 0, i32 17, !dbg !3731
  %16 = load %struct.gameport*, %struct.gameport** %parent26, align 8, !dbg !3731
  %17 = load %struct.gameport*, %struct.gameport** %parent.addr, align 8, !dbg !3732
  %cmp27 = icmp eq %struct.gameport* %16, %17, !dbg !3733
  br i1 %cmp27, label %if.then29, label %if.end, !dbg !3734

if.then29:                                        ; preds = %if.then
  %18 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3735
  store %struct.gameport* %18, %struct.gameport** %child, align 8, !dbg !3737
  br label %for.end, !dbg !3738

if.end:                                           ; preds = %if.then
  br label %if.end30, !dbg !3739

if.end30:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !3740

for.inc:                                          ; preds = %if.end30
  call void @llvm.dbg.declare(metadata i8** %__mptr31, metadata !3741, metadata !DIExpression()), !dbg !3743
  %19 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !3743
  %node32 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %19, i32 0, i32 3, !dbg !3743
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %node32, i32 0, i32 0, !dbg !3743
  %20 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3743
  %21 = bitcast %struct.list_head* %20 to i8*, !dbg !3743
  store i8* %21, i8** %__mptr31, align 8, !dbg !3743
  br label %do.body33, !dbg !3743

do.body33:                                        ; preds = %for.inc
  br label %do.end34, !dbg !3744

do.end34:                                         ; preds = %do.body33
  %22 = load i8*, i8** %__mptr31, align 8, !dbg !3743
  %add.ptr36 = getelementptr i8, i8* %22, i64 -24, !dbg !3743
  %23 = bitcast i8* %add.ptr36 to %struct.gameport_event*, !dbg !3743
  store %struct.gameport_event* %23, %struct.gameport_event** %tmp35, align 8, !dbg !3744
  %24 = load %struct.gameport_event*, %struct.gameport_event** %tmp35, align 8, !dbg !3743
  store %struct.gameport_event* %24, %struct.gameport_event** %event, align 8, !dbg !3717
  br label %for.cond, !dbg !3717, !llvm.loop !3746

for.end:                                          ; preds = %if.then29, %for.cond
  %25 = load i64, i64* %flags, align 8, !dbg !3748
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i37, align 8
  store i64 %25, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !176, metadata !2928, metadata !DIExpression()) #3, !dbg !3749
  call void @llvm.dbg.declare(metadata !176, metadata !2932, metadata !DIExpression()) #3, !dbg !3749
  store i32 1, i32* %tmp.i, align 4, !dbg !3749
  %26 = load i32, i32* %tmp.i, align 4, !dbg !3749
  call void @llvm.dbg.declare(metadata !176, metadata !2933, metadata !DIExpression()) #3, !dbg !3750
  call void @llvm.dbg.declare(metadata !176, metadata !2939, metadata !DIExpression()) #3, !dbg !3750
  store i32 1, i32* %tmp8.i, align 4, !dbg !3750
  %27 = load i32, i32* %tmp8.i, align 4, !dbg !3750
  %28 = load i64, i64* %flags.addr.i, align 8, !dbg !3751
  call void @arch_local_irq_restore(i64 %28) #11, !dbg !3751
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !3752, !srcloc !2943
  %29 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i37, align 8, !dbg !3753
  %30 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %29, i32 0, i32 0, !dbg !3753
  %rlock.i38 = bitcast %union.anon.0* %30 to %struct.raw_spinlock*, !dbg !3753
  %31 = load %struct.gameport*, %struct.gameport** %child, align 8, !dbg !3754
  ret %struct.gameport* %31, !dbg !3755
}

; Function Attrs: noredzone
declare dso_local void @put_device(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @device_is_registered(%struct.device* %dev) #0 !dbg !3756 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3757, metadata !DIExpression()), !dbg !3758
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3759
  %kobj = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 0, !dbg !3760
  %state_in_sysfs = getelementptr inbounds %struct.kobject, %struct.kobject* %kobj, i32 0, i32 7, !dbg !3761
  %bf.load = load i8, i8* %state_in_sysfs, align 4, !dbg !3761
  %bf.lshr = lshr i8 %bf.load, 1, !dbg !3761
  %bf.clear = and i8 %bf.lshr, 1, !dbg !3761
  %bf.cast = zext i8 %bf.clear to i32, !dbg !3761
  ret i32 %bf.cast, !dbg !3762
}

; Function Attrs: noredzone
declare dso_local void @device_del(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @list_del_init(%struct.list_head* %entry1) #0 !dbg !3763 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3764, metadata !DIExpression()), !dbg !3765
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3766
  call void @__list_del_entry(%struct.list_head* %0) #12, !dbg !3767
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3768
  call void @INIT_LIST_HEAD(%struct.list_head* %1) #12, !dbg !3769
  ret void, !dbg !3770
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del_entry(%struct.list_head* %entry1) #0 !dbg !3771 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3772, metadata !DIExpression()), !dbg !3773
  %0 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3774
  %call = call zeroext i1 @__list_del_entry_valid(%struct.list_head* %0) #12, !dbg !3776
  br i1 %call, label %if.end, label %if.then, !dbg !3777

if.then:                                          ; preds = %entry
  br label %return, !dbg !3778

if.end:                                           ; preds = %entry
  %1 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3779
  %prev = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3780
  %2 = load %struct.list_head*, %struct.list_head** %prev, align 8, !dbg !3780
  %3 = load %struct.list_head*, %struct.list_head** %entry.addr, align 8, !dbg !3781
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3782
  %4 = load %struct.list_head*, %struct.list_head** %next, align 8, !dbg !3782
  call void @__list_del(%struct.list_head* %2, %struct.list_head* %4) #12, !dbg !3783
  br label %return, !dbg !3784

return:                                           ; preds = %if.end, %if.then
  ret void, !dbg !3784
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @__list_del_entry_valid(%struct.list_head* %entry1) #0 !dbg !3785 {
entry:
  %entry.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %entry1, %struct.list_head** %entry.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %entry.addr, metadata !3788, metadata !DIExpression()), !dbg !3789
  ret i1 true, !dbg !3790
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__list_del(%struct.list_head* %prev, %struct.list_head* %next) #0 !dbg !3791 {
entry:
  %prev.addr = alloca %struct.list_head*, align 8
  %next.addr = alloca %struct.list_head*, align 8
  store %struct.list_head* %prev, %struct.list_head** %prev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %prev.addr, metadata !3792, metadata !DIExpression()), !dbg !3793
  store %struct.list_head* %next, %struct.list_head** %next.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %next.addr, metadata !3794, metadata !DIExpression()), !dbg !3795
  %0 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3796
  %1 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3797
  %prev1 = getelementptr inbounds %struct.list_head, %struct.list_head* %1, i32 0, i32 1, !dbg !3798
  store %struct.list_head* %0, %struct.list_head** %prev1, align 8, !dbg !3799
  br label %do.body, !dbg !3800

do.body:                                          ; preds = %entry
  br label %do.body2, !dbg !3801

do.body2:                                         ; preds = %do.body
  br label %do.end, !dbg !3803

do.end:                                           ; preds = %do.body2
  br label %do.body3, !dbg !3801

do.body3:                                         ; preds = %do.end
  %2 = load %struct.list_head*, %struct.list_head** %next.addr, align 8, !dbg !3805
  %3 = load %struct.list_head*, %struct.list_head** %prev.addr, align 8, !dbg !3805
  %next4 = getelementptr inbounds %struct.list_head, %struct.list_head* %3, i32 0, i32 0, !dbg !3805
  store volatile %struct.list_head* %2, %struct.list_head** %next4, align 8, !dbg !3805
  br label %do.end5, !dbg !3805

do.end5:                                          ; preds = %do.body3
  br label %do.end6, !dbg !3801

do.end6:                                          ; preds = %do.end5
  ret void, !dbg !3807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_free_event(%struct.gameport_event* %event) #0 !dbg !3808 {
entry:
  %event.addr = alloca %struct.gameport_event*, align 8
  store %struct.gameport_event* %event, %struct.gameport_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event.addr, metadata !3811, metadata !DIExpression()), !dbg !3812
  %0 = load %struct.gameport_event*, %struct.gameport_event** %event.addr, align 8, !dbg !3813
  %owner = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %0, i32 0, i32 2, !dbg !3814
  %1 = load %struct.module*, %struct.module** %owner, align 8, !dbg !3814
  call void @module_put(%struct.module* %1) #12, !dbg !3815
  %2 = load %struct.gameport_event*, %struct.gameport_event** %event.addr, align 8, !dbg !3816
  %3 = bitcast %struct.gameport_event* %2 to i8*, !dbg !3816
  call void @kfree(i8* %3) #12, !dbg !3817
  ret void, !dbg !3818
}

; Function Attrs: noredzone
declare dso_local i32 @device_attach(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_bus_match(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !3819 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  %gameport_drv = alloca %struct.gameport_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3820, metadata !DIExpression()), !dbg !3821
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3822, metadata !DIExpression()), !dbg !3823
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %gameport_drv, metadata !3824, metadata !DIExpression()), !dbg !3825
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3826, metadata !DIExpression()), !dbg !3828
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3828
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !3828
  store i8* %1, i8** %__mptr, align 8, !dbg !3828
  br label %do.body, !dbg !3828

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3829

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3828
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !3828
  %3 = bitcast i8* %add.ptr to %struct.gameport_driver*, !dbg !3828
  store %struct.gameport_driver* %3, %struct.gameport_driver** %tmp, align 8, !dbg !3829
  %4 = load %struct.gameport_driver*, %struct.gameport_driver** %tmp, align 8, !dbg !3828
  store %struct.gameport_driver* %4, %struct.gameport_driver** %gameport_drv, align 8, !dbg !3825
  %5 = load %struct.gameport_driver*, %struct.gameport_driver** %gameport_drv, align 8, !dbg !3831
  %ignore = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %5, i32 0, i32 5, !dbg !3832
  %6 = load i8, i8* %ignore, align 8, !dbg !3832
  %tobool = trunc i8 %6 to i1, !dbg !3832
  %lnot = xor i1 %tobool, true, !dbg !3833
  %lnot.ext = zext i1 %lnot to i32, !dbg !3833
  ret i32 %lnot.ext, !dbg !3834
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_driver_probe(%struct.device* %dev) #0 !dbg !3835 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  %drv = alloca %struct.gameport_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.gameport_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3836, metadata !DIExpression()), !dbg !3837
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3838, metadata !DIExpression()), !dbg !3839
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3840, metadata !DIExpression()), !dbg !3842
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3842
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3842
  store i8* %1, i8** %__mptr, align 8, !dbg !3842
  br label %do.body, !dbg !3842

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3843

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3842
  %add.ptr = getelementptr i8, i8* %2, i64 -240, !dbg !3842
  %3 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3842
  store %struct.gameport* %3, %struct.gameport** %tmp, align 8, !dbg !3843
  %4 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3842
  store %struct.gameport* %4, %struct.gameport** %gameport, align 8, !dbg !3839
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv, metadata !3845, metadata !DIExpression()), !dbg !3846
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3847, metadata !DIExpression()), !dbg !3849
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3849
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !3849
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3849
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !3849
  store i8* %7, i8** %__mptr1, align 8, !dbg !3849
  br label %do.body2, !dbg !3849

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3850

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3849
  %add.ptr5 = getelementptr i8, i8* %8, i64 -32, !dbg !3849
  %9 = bitcast i8* %add.ptr5 to %struct.gameport_driver*, !dbg !3849
  store %struct.gameport_driver* %9, %struct.gameport_driver** %tmp4, align 8, !dbg !3850
  %10 = load %struct.gameport_driver*, %struct.gameport_driver** %tmp4, align 8, !dbg !3849
  store %struct.gameport_driver* %10, %struct.gameport_driver** %drv, align 8, !dbg !3846
  %11 = load %struct.gameport_driver*, %struct.gameport_driver** %drv, align 8, !dbg !3852
  %connect = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %11, i32 0, i32 1, !dbg !3853
  %12 = load i32 (%struct.gameport*, %struct.gameport_driver*)*, i32 (%struct.gameport*, %struct.gameport_driver*)** %connect, align 8, !dbg !3853
  %13 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3854
  %14 = load %struct.gameport_driver*, %struct.gameport_driver** %drv, align 8, !dbg !3855
  %call = call i32 %12(%struct.gameport* %13, %struct.gameport_driver* %14) #12, !dbg !3852
  %15 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3856
  %drv6 = getelementptr inbounds %struct.gameport, %struct.gameport* %15, i32 0, i32 19, !dbg !3857
  %16 = load %struct.gameport_driver*, %struct.gameport_driver** %drv6, align 8, !dbg !3857
  %tobool = icmp ne %struct.gameport_driver* %16, null, !dbg !3856
  %17 = zext i1 %tobool to i64, !dbg !3856
  %cond = select i1 %tobool, i32 0, i32 -19, !dbg !3856
  ret i32 %cond, !dbg !3858
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_driver_remove(%struct.device* %dev) #0 !dbg !3859 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  %drv = alloca %struct.gameport_driver*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.gameport_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3860, metadata !DIExpression()), !dbg !3861
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3862, metadata !DIExpression()), !dbg !3863
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3864, metadata !DIExpression()), !dbg !3866
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3866
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3866
  store i8* %1, i8** %__mptr, align 8, !dbg !3866
  br label %do.body, !dbg !3866

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3867

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3866
  %add.ptr = getelementptr i8, i8* %2, i64 -240, !dbg !3866
  %3 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3866
  store %struct.gameport* %3, %struct.gameport** %tmp, align 8, !dbg !3867
  %4 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3866
  store %struct.gameport* %4, %struct.gameport** %gameport, align 8, !dbg !3863
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv, metadata !3869, metadata !DIExpression()), !dbg !3870
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3871, metadata !DIExpression()), !dbg !3873
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3873
  %driver = getelementptr inbounds %struct.device, %struct.device* %5, i32 0, i32 6, !dbg !3873
  %6 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3873
  %7 = bitcast %struct.device_driver* %6 to i8*, !dbg !3873
  store i8* %7, i8** %__mptr1, align 8, !dbg !3873
  br label %do.body2, !dbg !3873

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3874

do.end3:                                          ; preds = %do.body2
  %8 = load i8*, i8** %__mptr1, align 8, !dbg !3873
  %add.ptr5 = getelementptr i8, i8* %8, i64 -32, !dbg !3873
  %9 = bitcast i8* %add.ptr5 to %struct.gameport_driver*, !dbg !3873
  store %struct.gameport_driver* %9, %struct.gameport_driver** %tmp4, align 8, !dbg !3874
  %10 = load %struct.gameport_driver*, %struct.gameport_driver** %tmp4, align 8, !dbg !3873
  store %struct.gameport_driver* %10, %struct.gameport_driver** %drv, align 8, !dbg !3870
  %11 = load %struct.gameport_driver*, %struct.gameport_driver** %drv, align 8, !dbg !3876
  %disconnect = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %11, i32 0, i32 3, !dbg !3877
  %disconnect6 = bitcast {}** %disconnect to void (%struct.gameport*)**, !dbg !3877
  %12 = load void (%struct.gameport*)*, void (%struct.gameport*)** %disconnect6, align 8, !dbg !3877
  %13 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3878
  call void %12(%struct.gameport* %13) #12, !dbg !3876
  ret i32 0, !dbg !3879
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @gameport_description_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3880 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3881, metadata !DIExpression()), !dbg !3882
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3883, metadata !DIExpression()), !dbg !3884
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3885, metadata !DIExpression()), !dbg !3886
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3887, metadata !DIExpression()), !dbg !3888
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3889, metadata !DIExpression()), !dbg !3891
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3891
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3891
  store i8* %1, i8** %__mptr, align 8, !dbg !3891
  br label %do.body, !dbg !3891

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3892

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3891
  %add.ptr = getelementptr i8, i8* %2, i64 -240, !dbg !3891
  %3 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3891
  store %struct.gameport* %3, %struct.gameport** %tmp, align 8, !dbg !3892
  %4 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3891
  store %struct.gameport* %4, %struct.gameport** %gameport, align 8, !dbg !3888
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !3894
  %6 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3895
  %name = getelementptr inbounds %struct.gameport, %struct.gameport* %6, i32 0, i32 1, !dbg !3896
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !3895
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %arraydecay) #12, !dbg !3897
  %conv = sext i32 %call to i64, !dbg !3897
  ret i64 %conv, !dbg !3898
}

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @drvctl_store(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf, i64 %count) #0 !dbg !3899 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %count.addr = alloca i64, align 8
  %gameport = alloca %struct.gameport*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport*, align 8
  %drv = alloca %struct.device_driver*, align 8
  %error = alloca i32, align 4
  %__mptr15 = alloca i8*, align 8
  %tmp18 = alloca %struct.gameport_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3900, metadata !DIExpression()), !dbg !3901
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3902, metadata !DIExpression()), !dbg !3903
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3904, metadata !DIExpression()), !dbg !3905
  store i64 %count, i64* %count.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %count.addr, metadata !3906, metadata !DIExpression()), !dbg !3907
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport, metadata !3908, metadata !DIExpression()), !dbg !3909
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3910, metadata !DIExpression()), !dbg !3912
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3912
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3912
  store i8* %1, i8** %__mptr, align 8, !dbg !3912
  br label %do.body, !dbg !3912

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3913

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3912
  %add.ptr = getelementptr i8, i8* %2, i64 -240, !dbg !3912
  %3 = bitcast i8* %add.ptr to %struct.gameport*, !dbg !3912
  store %struct.gameport* %3, %struct.gameport** %tmp, align 8, !dbg !3913
  %4 = load %struct.gameport*, %struct.gameport** %tmp, align 8, !dbg !3912
  store %struct.gameport* %4, %struct.gameport** %gameport, align 8, !dbg !3909
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv, metadata !3915, metadata !DIExpression()), !dbg !3916
  call void @llvm.dbg.declare(metadata i32* %error, metadata !3917, metadata !DIExpression()), !dbg !3918
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* @gameport_mutex) #12, !dbg !3919
  store i32 %call, i32* %error, align 4, !dbg !3920
  %5 = load i32, i32* %error, align 4, !dbg !3921
  %tobool = icmp ne i32 %5, 0, !dbg !3921
  br i1 %tobool, label %if.then, label %if.end, !dbg !3923

if.then:                                          ; preds = %do.end
  %6 = load i32, i32* %error, align 4, !dbg !3924
  %conv = sext i32 %6 to i64, !dbg !3924
  store i64 %conv, i64* %retval, align 8, !dbg !3925
  br label %return, !dbg !3925

if.end:                                           ; preds = %do.end
  %7 = load i8*, i8** %buf.addr, align 8, !dbg !3926
  %8 = load i64, i64* %count.addr, align 8, !dbg !3928
  %call1 = call i32 @strncmp(i8* %7, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.12, i64 0, i64 0), i64 %8) #12, !dbg !3929
  %tobool2 = icmp ne i32 %call1, 0, !dbg !3929
  br i1 %tobool2, label %if.else, label %if.then3, !dbg !3930

if.then3:                                         ; preds = %if.end
  %9 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3931
  call void @gameport_disconnect_port(%struct.gameport* %9) #12, !dbg !3933
  br label %if.end25, !dbg !3934

if.else:                                          ; preds = %if.end
  %10 = load i8*, i8** %buf.addr, align 8, !dbg !3935
  %11 = load i64, i64* %count.addr, align 8, !dbg !3937
  %call4 = call i32 @strncmp(i8* %10, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.13, i64 0, i64 0), i64 %11) #12, !dbg !3938
  %tobool5 = icmp ne i32 %call4, 0, !dbg !3938
  br i1 %tobool5, label %if.else7, label %if.then6, !dbg !3939

if.then6:                                         ; preds = %if.else
  %12 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3940
  call void @gameport_reconnect_port(%struct.gameport* %12) #12, !dbg !3942
  br label %if.end24, !dbg !3943

if.else7:                                         ; preds = %if.else
  %13 = load i8*, i8** %buf.addr, align 8, !dbg !3944
  %14 = load i64, i64* %count.addr, align 8, !dbg !3946
  %call8 = call i32 @strncmp(i8* %13, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i64 0, i64 0), i64 %14) #12, !dbg !3947
  %tobool9 = icmp ne i32 %call8, 0, !dbg !3947
  br i1 %tobool9, label %if.else11, label %if.then10, !dbg !3948

if.then10:                                        ; preds = %if.else7
  %15 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3949
  call void @gameport_disconnect_port(%struct.gameport* %15) #12, !dbg !3951
  %16 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3952
  call void @gameport_find_driver(%struct.gameport* %16) #12, !dbg !3953
  br label %if.end23, !dbg !3954

if.else11:                                        ; preds = %if.else7
  %17 = load i8*, i8** %buf.addr, align 8, !dbg !3955
  %call12 = call %struct.device_driver* @driver_find(i8* %17, %struct.bus_type* @gameport_bus) #12, !dbg !3957
  store %struct.device_driver* %call12, %struct.device_driver** %drv, align 8, !dbg !3958
  %cmp = icmp ne %struct.device_driver* %call12, null, !dbg !3959
  br i1 %cmp, label %if.then14, label %if.else21, !dbg !3960

if.then14:                                        ; preds = %if.else11
  %18 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3961
  call void @gameport_disconnect_port(%struct.gameport* %18) #12, !dbg !3963
  %19 = load %struct.gameport*, %struct.gameport** %gameport, align 8, !dbg !3964
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !3965, metadata !DIExpression()), !dbg !3967
  %20 = load %struct.device_driver*, %struct.device_driver** %drv, align 8, !dbg !3967
  %21 = bitcast %struct.device_driver* %20 to i8*, !dbg !3967
  store i8* %21, i8** %__mptr15, align 8, !dbg !3967
  br label %do.body16, !dbg !3967

do.body16:                                        ; preds = %if.then14
  br label %do.end17, !dbg !3968

do.end17:                                         ; preds = %do.body16
  %22 = load i8*, i8** %__mptr15, align 8, !dbg !3967
  %add.ptr19 = getelementptr i8, i8* %22, i64 -32, !dbg !3967
  %23 = bitcast i8* %add.ptr19 to %struct.gameport_driver*, !dbg !3967
  store %struct.gameport_driver* %23, %struct.gameport_driver** %tmp18, align 8, !dbg !3968
  %24 = load %struct.gameport_driver*, %struct.gameport_driver** %tmp18, align 8, !dbg !3967
  %call20 = call i32 @gameport_bind_driver(%struct.gameport* %19, %struct.gameport_driver* %24) #12, !dbg !3970
  store i32 %call20, i32* %error, align 4, !dbg !3971
  br label %if.end22, !dbg !3972

if.else21:                                        ; preds = %if.else11
  store i32 -22, i32* %error, align 4, !dbg !3973
  br label %if.end22

if.end22:                                         ; preds = %if.else21, %do.end17
  br label %if.end23

if.end23:                                         ; preds = %if.end22, %if.then10
  br label %if.end24

if.end24:                                         ; preds = %if.end23, %if.then6
  br label %if.end25

if.end25:                                         ; preds = %if.end24, %if.then3
  call void @mutex_unlock(%struct.mutex* @gameport_mutex) #12, !dbg !3975
  %25 = load i32, i32* %error, align 4, !dbg !3976
  %tobool26 = icmp ne i32 %25, 0, !dbg !3976
  br i1 %tobool26, label %cond.true, label %cond.false, !dbg !3976

cond.true:                                        ; preds = %if.end25
  %26 = load i32, i32* %error, align 4, !dbg !3977
  %conv27 = sext i32 %26 to i64, !dbg !3977
  br label %cond.end, !dbg !3976

cond.false:                                       ; preds = %if.end25
  %27 = load i64, i64* %count.addr, align 8, !dbg !3978
  br label %cond.end, !dbg !3976

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ %conv27, %cond.true ], [ %27, %cond.false ], !dbg !3976
  store i64 %cond, i64* %retval, align 8, !dbg !3979
  br label %return, !dbg !3979

return:                                           ; preds = %cond.end, %if.then
  %28 = load i64, i64* %retval, align 8, !dbg !3980
  ret i64 %28, !dbg !3980
}

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #2

; Function Attrs: noredzone
declare dso_local i32 @strncmp(i8*, i8*, i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_reconnect_port(%struct.gameport* %gameport) #0 !dbg !3981 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !3982, metadata !DIExpression()), !dbg !3983
  br label %do.body, !dbg !3984

do.body:                                          ; preds = %do.cond, %entry
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3985
  %drv = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 19, !dbg !3988
  %1 = load %struct.gameport_driver*, %struct.gameport_driver** %drv, align 8, !dbg !3988
  %tobool = icmp ne %struct.gameport_driver* %1, null, !dbg !3985
  br i1 %tobool, label %lor.lhs.false, label %if.then, !dbg !3989

lor.lhs.false:                                    ; preds = %do.body
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3990
  %drv1 = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 19, !dbg !3991
  %3 = load %struct.gameport_driver*, %struct.gameport_driver** %drv1, align 8, !dbg !3991
  %reconnect = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %3, i32 0, i32 2, !dbg !3992
  %4 = load i32 (%struct.gameport*)*, i32 (%struct.gameport*)** %reconnect, align 8, !dbg !3992
  %tobool2 = icmp ne i32 (%struct.gameport*)* %4, null, !dbg !3990
  br i1 %tobool2, label %lor.lhs.false3, label %if.then, !dbg !3993

lor.lhs.false3:                                   ; preds = %lor.lhs.false
  %5 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3994
  %drv4 = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 19, !dbg !3995
  %6 = load %struct.gameport_driver*, %struct.gameport_driver** %drv4, align 8, !dbg !3995
  %reconnect5 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %6, i32 0, i32 2, !dbg !3996
  %7 = load i32 (%struct.gameport*)*, i32 (%struct.gameport*)** %reconnect5, align 8, !dbg !3996
  %8 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3997
  %call = call i32 %7(%struct.gameport* %8) #12, !dbg !3994
  %tobool6 = icmp ne i32 %call, 0, !dbg !3994
  br i1 %tobool6, label %if.then, label %if.end, !dbg !3998

if.then:                                          ; preds = %lor.lhs.false3, %lor.lhs.false, %do.body
  %9 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !3999
  call void @gameport_disconnect_port(%struct.gameport* %9) #12, !dbg !4001
  %10 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4002
  call void @gameport_find_driver(%struct.gameport* %10) #12, !dbg !4003
  br label %do.end, !dbg !4004

if.end:                                           ; preds = %lor.lhs.false3
  %11 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4005
  %child = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 18, !dbg !4006
  %12 = load %struct.gameport*, %struct.gameport** %child, align 8, !dbg !4006
  store %struct.gameport* %12, %struct.gameport** %gameport.addr, align 8, !dbg !4007
  br label %do.cond, !dbg !4008

do.cond:                                          ; preds = %if.end
  %13 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4009
  %tobool7 = icmp ne %struct.gameport* %13, null, !dbg !4008
  br i1 %tobool7, label %do.body, label %do.end, !dbg !4008, !llvm.loop !4010

do.end:                                           ; preds = %do.cond, %if.then
  ret void, !dbg !4012
}

; Function Attrs: noredzone
declare dso_local %struct.device_driver* @driver_find(i8*, %struct.bus_type*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_bind_driver(%struct.gameport* %gameport, %struct.gameport_driver* %drv) #0 !dbg !4013 {
entry:
  %retval = alloca i32, align 4
  %gameport.addr = alloca %struct.gameport*, align 8
  %drv.addr = alloca %struct.gameport_driver*, align 8
  %error = alloca i32, align 4
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !4014, metadata !DIExpression()), !dbg !4015
  store %struct.gameport_driver* %drv, %struct.gameport_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv.addr, metadata !4016, metadata !DIExpression()), !dbg !4017
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4018, metadata !DIExpression()), !dbg !4019
  %0 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4020
  %driver = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %0, i32 0, i32 4, !dbg !4021
  %1 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4022
  %dev = getelementptr inbounds %struct.gameport, %struct.gameport* %1, i32 0, i32 21, !dbg !4023
  %driver1 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 6, !dbg !4024
  store %struct.device_driver* %driver, %struct.device_driver** %driver1, align 8, !dbg !4025
  %2 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4026
  %connect = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %2, i32 0, i32 1, !dbg !4028
  %3 = load i32 (%struct.gameport*, %struct.gameport_driver*)*, i32 (%struct.gameport*, %struct.gameport_driver*)** %connect, align 8, !dbg !4028
  %4 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4029
  %5 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4030
  %call = call i32 %3(%struct.gameport* %4, %struct.gameport_driver* %5) #12, !dbg !4026
  %tobool = icmp ne i32 %call, 0, !dbg !4026
  br i1 %tobool, label %if.then, label %if.end, !dbg !4031

if.then:                                          ; preds = %entry
  %6 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4032
  %dev2 = getelementptr inbounds %struct.gameport, %struct.gameport* %6, i32 0, i32 21, !dbg !4034
  %driver3 = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 6, !dbg !4035
  store %struct.device_driver* null, %struct.device_driver** %driver3, align 8, !dbg !4036
  store i32 -19, i32* %retval, align 4, !dbg !4037
  br label %return, !dbg !4037

if.end:                                           ; preds = %entry
  %7 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4038
  %dev4 = getelementptr inbounds %struct.gameport, %struct.gameport* %7, i32 0, i32 21, !dbg !4039
  %call5 = call i32 @device_bind_driver(%struct.device* %dev4) #12, !dbg !4040
  store i32 %call5, i32* %error, align 4, !dbg !4041
  %8 = load i32, i32* %error, align 4, !dbg !4042
  %tobool6 = icmp ne i32 %8, 0, !dbg !4042
  br i1 %tobool6, label %if.then7, label %if.end13, !dbg !4044

if.then7:                                         ; preds = %if.end
  %9 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4045
  %dev8 = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 21, !dbg !4045
  %10 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4045
  %phys = getelementptr inbounds %struct.gameport, %struct.gameport* %10, i32 0, i32 2, !dbg !4045
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4045
  %11 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4045
  %name = getelementptr inbounds %struct.gameport, %struct.gameport* %11, i32 0, i32 1, !dbg !4045
  %arraydecay9 = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4045
  %12 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4045
  %description = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %12, i32 0, i32 0, !dbg !4045
  %13 = load i8*, i8** %description, align 8, !dbg !4045
  %14 = load i32, i32* %error, align 4, !dbg !4045
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %dev8, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.15, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay9, i8* %13, i32 %14) #14, !dbg !4045
  %15 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4047
  %disconnect = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %15, i32 0, i32 3, !dbg !4048
  %disconnect10 = bitcast {}** %disconnect to void (%struct.gameport*)**, !dbg !4048
  %16 = load void (%struct.gameport*)*, void (%struct.gameport*)** %disconnect10, align 8, !dbg !4048
  %17 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4049
  call void %16(%struct.gameport* %17) #12, !dbg !4047
  %18 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4050
  %dev11 = getelementptr inbounds %struct.gameport, %struct.gameport* %18, i32 0, i32 21, !dbg !4051
  %driver12 = getelementptr inbounds %struct.device, %struct.device* %dev11, i32 0, i32 6, !dbg !4052
  store %struct.device_driver* null, %struct.device_driver** %driver12, align 8, !dbg !4053
  %19 = load i32, i32* %error, align 4, !dbg !4054
  store i32 %19, i32* %retval, align 4, !dbg !4055
  br label %return, !dbg !4055

if.end13:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !4056
  br label %return, !dbg !4056

return:                                           ; preds = %if.end13, %if.then7, %if.then
  %20 = load i32, i32* %retval, align 4, !dbg !4057
  ret i32 %20, !dbg !4057
}

; Function Attrs: noredzone
declare dso_local i32 @device_bind_driver(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @description_show(%struct.device_driver* %drv, i8* %buf) #0 !dbg !4058 {
entry:
  %drv.addr = alloca %struct.device_driver*, align 8
  %buf.addr = alloca i8*, align 8
  %driver = alloca %struct.gameport_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.gameport_driver*, align 8
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !4059, metadata !DIExpression()), !dbg !4060
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !4061, metadata !DIExpression()), !dbg !4062
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %driver, metadata !4063, metadata !DIExpression()), !dbg !4064
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4065, metadata !DIExpression()), !dbg !4067
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !4067
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !4067
  store i8* %1, i8** %__mptr, align 8, !dbg !4067
  br label %do.body, !dbg !4067

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4068

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !4067
  %add.ptr = getelementptr i8, i8* %2, i64 -32, !dbg !4067
  %3 = bitcast i8* %add.ptr to %struct.gameport_driver*, !dbg !4067
  store %struct.gameport_driver* %3, %struct.gameport_driver** %tmp, align 8, !dbg !4068
  %4 = load %struct.gameport_driver*, %struct.gameport_driver** %tmp, align 8, !dbg !4067
  store %struct.gameport_driver* %4, %struct.gameport_driver** %driver, align 8, !dbg !4064
  %5 = load i8*, i8** %buf.addr, align 8, !dbg !4070
  %6 = load %struct.gameport_driver*, %struct.gameport_driver** %driver, align 8, !dbg !4071
  %description = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %6, i32 0, i32 0, !dbg !4072
  %7 = load i8*, i8** %description, align 8, !dbg !4072
  %tobool = icmp ne i8* %7, null, !dbg !4071
  br i1 %tobool, label %cond.true, label %cond.false, !dbg !4071

cond.true:                                        ; preds = %do.end
  %8 = load %struct.gameport_driver*, %struct.gameport_driver** %driver, align 8, !dbg !4073
  %description1 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %8, i32 0, i32 0, !dbg !4074
  %9 = load i8*, i8** %description1, align 8, !dbg !4074
  br label %cond.end, !dbg !4071

cond.false:                                       ; preds = %do.end
  br label %cond.end, !dbg !4071

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %9, %cond.true ], [ getelementptr inbounds ([7 x i8], [7 x i8]* @.str.16, i64 0, i64 0), %cond.false ], !dbg !4071
  %call = call i32 (i8*, i8*, ...) @sprintf(i8* %5, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.10, i64 0, i64 0), i8* %cond) #12, !dbg !4075
  %conv = sext i32 %call to i64, !dbg !4075
  ret i64 %conv, !dbg !4076
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_handle_events(%struct.work_struct* %work) #0 !dbg !4077 {
entry:
  %work.addr = alloca %struct.work_struct*, align 8
  %event = alloca %struct.gameport_event*, align 8
  store %struct.work_struct* %work, %struct.work_struct** %work.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.work_struct** %work.addr, metadata !4078, metadata !DIExpression()), !dbg !4079
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event, metadata !4080, metadata !DIExpression()), !dbg !4081
  call void @mutex_lock(%struct.mutex* @gameport_mutex) #12, !dbg !4082
  %call = call %struct.gameport_event* @gameport_get_event() #12, !dbg !4083
  store %struct.gameport_event* %call, %struct.gameport_event** %event, align 8, !dbg !4085
  %tobool = icmp ne %struct.gameport_event* %call, null, !dbg !4085
  br i1 %tobool, label %if.then, label %if.end, !dbg !4086

if.then:                                          ; preds = %entry
  %0 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4087
  %type = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %0, i32 0, i32 0, !dbg !4089
  %1 = load i32, i32* %type, align 8, !dbg !4089
  switch i32 %1, label %sw.epilog [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
  ], !dbg !4090

sw.bb:                                            ; preds = %if.then
  %2 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4091
  %object = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %2, i32 0, i32 1, !dbg !4093
  %3 = load i8*, i8** %object, align 8, !dbg !4093
  %4 = bitcast i8* %3 to %struct.gameport*, !dbg !4091
  call void @gameport_add_port(%struct.gameport* %4) #12, !dbg !4094
  br label %sw.epilog, !dbg !4095

sw.bb1:                                           ; preds = %if.then
  %5 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4096
  %object2 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %5, i32 0, i32 1, !dbg !4097
  %6 = load i8*, i8** %object2, align 8, !dbg !4097
  %7 = bitcast i8* %6 to %struct.gameport_driver*, !dbg !4096
  call void @gameport_attach_driver(%struct.gameport_driver* %7) #12, !dbg !4098
  br label %sw.epilog, !dbg !4099

sw.epilog:                                        ; preds = %if.then, %sw.bb1, %sw.bb
  %8 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4100
  call void @gameport_remove_duplicate_events(%struct.gameport_event* %8) #12, !dbg !4101
  %9 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4102
  call void @gameport_free_event(%struct.gameport_event* %9) #12, !dbg !4103
  br label %if.end, !dbg !4104

if.end:                                           ; preds = %sw.epilog, %entry
  call void @mutex_unlock(%struct.mutex* @gameport_mutex) #12, !dbg !4105
  ret void, !dbg !4106
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.gameport_event* @gameport_get_event() #0 !dbg !4107 {
entry:
  %lock.addr.i23 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i23, metadata !2600, metadata !DIExpression()), !dbg !4110
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2606, metadata !DIExpression()), !dbg !4112
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2446, metadata !DIExpression()), !dbg !4113
  %event = alloca %struct.gameport_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp22 = alloca %struct.gameport_event*, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event, metadata !4120, metadata !DIExpression()), !dbg !4121
  store %struct.gameport_event* null, %struct.gameport_event** %event, align 8, !dbg !4121
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4122, metadata !DIExpression()), !dbg !4123
  br label %do.body, !dbg !4124

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4125

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4126, metadata !DIExpression()), !dbg !4128
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4129, metadata !DIExpression()), !dbg !4128
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4128
  %conv = zext i1 %cmp to i32, !dbg !4128
  store i32 1, i32* %tmp, align 4, !dbg !4128
  %0 = load i32, i32* %tmp, align 4, !dbg !4128
  br label %do.body2, !dbg !4130

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4131

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4132

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4134, metadata !DIExpression()), !dbg !4137
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4138, metadata !DIExpression()), !dbg !4137
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4137
  %conv8 = zext i1 %cmp7 to i32, !dbg !4137
  store i32 1, i32* %tmp9, align 4, !dbg !4137
  %1 = load i32, i32* %tmp9, align 4, !dbg !4137
  %call = call i64 @arch_local_irq_save() #12, !dbg !4139
  store i64 %call, i64* %flags, align 8, !dbg !4139
  br label %do.end, !dbg !4139

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4132

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4131

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4140, !srcloc !4141
  br label %do.body12, !dbg !4140

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4142
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4143
  %rlock.i = bitcast %union.anon.0* %3 to %struct.raw_spinlock*, !dbg !4143
  br label %do.end14, !dbg !4144

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4140

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4131

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4130

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4125

do.end18:                                         ; preds = %do.end17
  %call19 = call i32 @list_empty(%struct.list_head* @gameport_event_list) #12, !dbg !4145
  %tobool = icmp ne i32 %call19, 0, !dbg !4145
  br i1 %tobool, label %if.end, label %if.then, !dbg !4147

if.then:                                          ; preds = %do.end18
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4148, metadata !DIExpression()), !dbg !4151
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gameport_event_list, i32 0, i32 0), align 8, !dbg !4151
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !4151
  store i8* %5, i8** %__mptr, align 8, !dbg !4151
  br label %do.body20, !dbg !4151

do.body20:                                        ; preds = %if.then
  br label %do.end21, !dbg !4152

do.end21:                                         ; preds = %do.body20
  %6 = load i8*, i8** %__mptr, align 8, !dbg !4151
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !4151
  %7 = bitcast i8* %add.ptr to %struct.gameport_event*, !dbg !4151
  store %struct.gameport_event* %7, %struct.gameport_event** %tmp22, align 8, !dbg !4152
  %8 = load %struct.gameport_event*, %struct.gameport_event** %tmp22, align 8, !dbg !4151
  store %struct.gameport_event* %8, %struct.gameport_event** %event, align 8, !dbg !4154
  %9 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4155
  %node = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %9, i32 0, i32 3, !dbg !4156
  call void @list_del_init(%struct.list_head* %node) #12, !dbg !4157
  br label %if.end, !dbg !4158

if.end:                                           ; preds = %do.end21, %do.end18
  %10 = load i64, i64* %flags, align 8, !dbg !4159
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i23, align 8
  store i64 %10, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !176, metadata !2928, metadata !DIExpression()) #3, !dbg !4160
  call void @llvm.dbg.declare(metadata !176, metadata !2932, metadata !DIExpression()) #3, !dbg !4160
  store i32 1, i32* %tmp.i, align 4, !dbg !4160
  %11 = load i32, i32* %tmp.i, align 4, !dbg !4160
  call void @llvm.dbg.declare(metadata !176, metadata !2933, metadata !DIExpression()) #3, !dbg !4161
  call void @llvm.dbg.declare(metadata !176, metadata !2939, metadata !DIExpression()) #3, !dbg !4161
  store i32 1, i32* %tmp8.i, align 4, !dbg !4161
  %12 = load i32, i32* %tmp8.i, align 4, !dbg !4161
  %13 = load i64, i64* %flags.addr.i, align 8, !dbg !4162
  call void @arch_local_irq_restore(i64 %13) #11, !dbg !4162
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4163, !srcloc !2943
  %14 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i23, align 8, !dbg !4164
  %15 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %14, i32 0, i32 0, !dbg !4164
  %rlock.i24 = bitcast %union.anon.0* %15 to %struct.raw_spinlock*, !dbg !4164
  %16 = load %struct.gameport_event*, %struct.gameport_event** %event, align 8, !dbg !4165
  ret %struct.gameport_event* %16, !dbg !4166
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_add_port(%struct.gameport* %gameport) #0 !dbg !4167 {
entry:
  %gameport.addr = alloca %struct.gameport*, align 8
  %error = alloca i32, align 4
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !4168, metadata !DIExpression()), !dbg !4169
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4170, metadata !DIExpression()), !dbg !4171
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4172
  %parent = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 17, !dbg !4174
  %1 = load %struct.gameport*, %struct.gameport** %parent, align 8, !dbg !4174
  %tobool = icmp ne %struct.gameport* %1, null, !dbg !4172
  br i1 %tobool, label %if.then, label %if.end, !dbg !4175

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4176
  %3 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4177
  %parent1 = getelementptr inbounds %struct.gameport, %struct.gameport* %3, i32 0, i32 17, !dbg !4178
  %4 = load %struct.gameport*, %struct.gameport** %parent1, align 8, !dbg !4178
  %child = getelementptr inbounds %struct.gameport, %struct.gameport* %4, i32 0, i32 18, !dbg !4179
  store %struct.gameport* %2, %struct.gameport** %child, align 8, !dbg !4180
  br label %if.end, !dbg !4177

if.end:                                           ; preds = %if.then, %entry
  %5 = load i8, i8* @use_ktime, align 1, !dbg !4181
  %tobool2 = trunc i8 %5 to i1, !dbg !4181
  br i1 %tobool2, label %cond.true, label %cond.false, !dbg !4181

cond.true:                                        ; preds = %if.end
  %6 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4182
  %call = call i32 @gameport_measure_speed(%struct.gameport* %6) #12, !dbg !4183
  br label %cond.end, !dbg !4181

cond.false:                                       ; preds = %if.end
  %7 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4184
  %call3 = call i32 @old_gameport_measure_speed(%struct.gameport* %7) #12, !dbg !4185
  br label %cond.end, !dbg !4181

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %call, %cond.true ], [ %call3, %cond.false ], !dbg !4181
  %8 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4186
  %speed = getelementptr inbounds %struct.gameport, %struct.gameport* %8, i32 0, i32 4, !dbg !4187
  store i32 %cond, i32* %speed, align 4, !dbg !4188
  %9 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4189
  %node = getelementptr inbounds %struct.gameport, %struct.gameport* %9, i32 0, i32 22, !dbg !4190
  call void @list_add_tail(%struct.list_head* %node, %struct.list_head* @gameport_list) #12, !dbg !4191
  %10 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4192
  %io = getelementptr inbounds %struct.gameport, %struct.gameport* %10, i32 0, i32 3, !dbg !4194
  %11 = load i32, i32* %io, align 8, !dbg !4194
  %tobool4 = icmp ne i32 %11, 0, !dbg !4192
  br i1 %tobool4, label %if.then5, label %if.else, !dbg !4195

if.then5:                                         ; preds = %cond.end
  %12 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4196
  %dev = getelementptr inbounds %struct.gameport, %struct.gameport* %12, i32 0, i32 21, !dbg !4196
  %13 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4196
  %name = getelementptr inbounds %struct.gameport, %struct.gameport* %13, i32 0, i32 1, !dbg !4196
  %arraydecay = getelementptr inbounds [32 x i8], [32 x i8]* %name, i64 0, i64 0, !dbg !4196
  %14 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4196
  %phys = getelementptr inbounds %struct.gameport, %struct.gameport* %14, i32 0, i32 2, !dbg !4196
  %arraydecay6 = getelementptr inbounds [32 x i8], [32 x i8]* %phys, i64 0, i64 0, !dbg !4196
  %15 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4196
  %io7 = getelementptr inbounds %struct.gameport, %struct.gameport* %15, i32 0, i32 3, !dbg !4196
  %16 = load i32, i32* %io7, align 8, !dbg !4196
  %17 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4196
  %speed8 = getelementptr inbounds %struct.gameport, %struct.gameport* %17, i32 0, i32 4, !dbg !4196
  %18 = load i32, i32* %speed8, align 4, !dbg !4196
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.17, i64 0, i64 0), i8* %arraydecay, i8* %arraydecay6, i32 %16, i32 %18) #14, !dbg !4196
  br label %if.end15, !dbg !4196

if.else:                                          ; preds = %cond.end
  %19 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4197
  %dev9 = getelementptr inbounds %struct.gameport, %struct.gameport* %19, i32 0, i32 21, !dbg !4197
  %20 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4197
  %name10 = getelementptr inbounds %struct.gameport, %struct.gameport* %20, i32 0, i32 1, !dbg !4197
  %arraydecay11 = getelementptr inbounds [32 x i8], [32 x i8]* %name10, i64 0, i64 0, !dbg !4197
  %21 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4197
  %phys12 = getelementptr inbounds %struct.gameport, %struct.gameport* %21, i32 0, i32 2, !dbg !4197
  %arraydecay13 = getelementptr inbounds [32 x i8], [32 x i8]* %phys12, i64 0, i64 0, !dbg !4197
  %22 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4197
  %speed14 = getelementptr inbounds %struct.gameport, %struct.gameport* %22, i32 0, i32 4, !dbg !4197
  %23 = load i32, i32* %speed14, align 4, !dbg !4197
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %dev9, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.18, i64 0, i64 0), i8* %arraydecay11, i8* %arraydecay13, i32 %23) #14, !dbg !4197
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then5
  %24 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4198
  %dev16 = getelementptr inbounds %struct.gameport, %struct.gameport* %24, i32 0, i32 21, !dbg !4199
  %call17 = call i32 @device_add(%struct.device* %dev16) #12, !dbg !4200
  store i32 %call17, i32* %error, align 4, !dbg !4201
  %25 = load i32, i32* %error, align 4, !dbg !4202
  %tobool18 = icmp ne i32 %25, 0, !dbg !4202
  br i1 %tobool18, label %if.then19, label %if.end25, !dbg !4204

if.then19:                                        ; preds = %if.end15
  %26 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4205
  %dev20 = getelementptr inbounds %struct.gameport, %struct.gameport* %26, i32 0, i32 21, !dbg !4205
  %27 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4205
  %phys21 = getelementptr inbounds %struct.gameport, %struct.gameport* %27, i32 0, i32 2, !dbg !4205
  %arraydecay22 = getelementptr inbounds [32 x i8], [32 x i8]* %phys21, i64 0, i64 0, !dbg !4205
  %28 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4205
  %name23 = getelementptr inbounds %struct.gameport, %struct.gameport* %28, i32 0, i32 1, !dbg !4205
  %arraydecay24 = getelementptr inbounds [32 x i8], [32 x i8]* %name23, i64 0, i64 0, !dbg !4205
  %29 = load i32, i32* %error, align 4, !dbg !4205
  call void (%struct.device*, i8*, ...) @_dev_err(%struct.device* %dev20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.19, i64 0, i64 0), i8* %arraydecay22, i8* %arraydecay24, i32 %29) #14, !dbg !4205
  br label %if.end25, !dbg !4205

if.end25:                                         ; preds = %if.then19, %if.end15
  ret void, !dbg !4206
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_attach_driver(%struct.gameport_driver* %drv) #0 !dbg !4207 {
entry:
  %drv.addr = alloca %struct.gameport_driver*, align 8
  %error = alloca i32, align 4
  store %struct.gameport_driver* %drv, %struct.gameport_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_driver** %drv.addr, metadata !4208, metadata !DIExpression()), !dbg !4209
  call void @llvm.dbg.declare(metadata i32* %error, metadata !4210, metadata !DIExpression()), !dbg !4211
  %0 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4212
  %driver = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %0, i32 0, i32 4, !dbg !4213
  %call = call i32 @driver_attach(%struct.device_driver* %driver) #12, !dbg !4214
  store i32 %call, i32* %error, align 4, !dbg !4215
  %1 = load i32, i32* %error, align 4, !dbg !4216
  %tobool = icmp ne i32 %1, 0, !dbg !4216
  br i1 %tobool, label %if.then, label %if.end, !dbg !4218

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport_driver*, %struct.gameport_driver** %drv.addr, align 8, !dbg !4219
  %driver1 = getelementptr inbounds %struct.gameport_driver, %struct.gameport_driver* %2, i32 0, i32 4, !dbg !4219
  %name = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver1, i32 0, i32 0, !dbg !4219
  %3 = load i8*, i8** %name, align 8, !dbg !4219
  %4 = load i32, i32* %error, align 4, !dbg !4219
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([54 x i8], [54 x i8]* @.str.20, i64 0, i64 0), i8* %3, i32 %4) #14, !dbg !4219
  br label %if.end, !dbg !4219

if.end:                                           ; preds = %if.then, %entry
  ret void, !dbg !4220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @gameport_remove_duplicate_events(%struct.gameport_event* %event) #0 !dbg !4221 {
entry:
  %lock.addr.i47 = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i47, metadata !2600, metadata !DIExpression()), !dbg !4222
  %flags.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %flags.addr.i, metadata !2606, metadata !DIExpression()), !dbg !4224
  %tmp.i = alloca i32, align 4
  %tmp8.i = alloca i32, align 4
  %lock.addr.i = alloca %struct.spinlock*, align 8
  call void @llvm.dbg.declare(metadata %struct.spinlock** %lock.addr.i, metadata !2446, metadata !DIExpression()), !dbg !4225
  %event.addr = alloca %struct.gameport_event*, align 8
  %e = alloca %struct.gameport_event*, align 8
  %next = alloca %struct.gameport_event*, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy5 = alloca i64, align 8
  %__dummy26 = alloca i64, align 8
  %tmp9 = alloca i32, align 4
  %__mptr = alloca i8*, align 8
  %tmp21 = alloca %struct.gameport_event*, align 8
  %__mptr22 = alloca i8*, align 8
  %tmp26 = alloca %struct.gameport_event*, align 8
  %__mptr40 = alloca i8*, align 8
  %tmp45 = alloca %struct.gameport_event*, align 8
  store %struct.gameport_event* %event, %struct.gameport_event** %event.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %event.addr, metadata !4232, metadata !DIExpression()), !dbg !4233
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %e, metadata !4234, metadata !DIExpression()), !dbg !4235
  call void @llvm.dbg.declare(metadata %struct.gameport_event** %next, metadata !4236, metadata !DIExpression()), !dbg !4237
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4238, metadata !DIExpression()), !dbg !4239
  br label %do.body, !dbg !4240

do.body:                                          ; preds = %entry
  br label %do.body1, !dbg !4241

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4242, metadata !DIExpression()), !dbg !4244
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4245, metadata !DIExpression()), !dbg !4244
  %cmp = icmp eq i64* %__dummy, %__dummy2, !dbg !4244
  %conv = zext i1 %cmp to i32, !dbg !4244
  store i32 1, i32* %tmp, align 4, !dbg !4244
  %0 = load i32, i32* %tmp, align 4, !dbg !4244
  br label %do.body2, !dbg !4246

do.body2:                                         ; preds = %do.body1
  br label %do.body3, !dbg !4247

do.body3:                                         ; preds = %do.body2
  br label %do.body4, !dbg !4248

do.body4:                                         ; preds = %do.body3
  call void @llvm.dbg.declare(metadata i64* %__dummy5, metadata !4250, metadata !DIExpression()), !dbg !4253
  call void @llvm.dbg.declare(metadata i64* %__dummy26, metadata !4254, metadata !DIExpression()), !dbg !4253
  %cmp7 = icmp eq i64* %__dummy5, %__dummy26, !dbg !4253
  %conv8 = zext i1 %cmp7 to i32, !dbg !4253
  store i32 1, i32* %tmp9, align 4, !dbg !4253
  %1 = load i32, i32* %tmp9, align 4, !dbg !4253
  %call = call i64 @arch_local_irq_save() #12, !dbg !4255
  store i64 %call, i64* %flags, align 8, !dbg !4255
  br label %do.end, !dbg !4255

do.end:                                           ; preds = %do.body4
  br label %do.end10, !dbg !4248

do.end10:                                         ; preds = %do.end
  br label %do.body11, !dbg !4247

do.body11:                                        ; preds = %do.end10
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4256, !srcloc !4257
  br label %do.body12, !dbg !4256

do.body12:                                        ; preds = %do.body11
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i, align 8
  %2 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i, align 8, !dbg !4258
  %3 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %2, i32 0, i32 0, !dbg !4259
  %rlock.i = bitcast %union.anon.0* %3 to %struct.raw_spinlock*, !dbg !4259
  br label %do.end14, !dbg !4260

do.end14:                                         ; preds = %do.body12
  br label %do.end15, !dbg !4256

do.end15:                                         ; preds = %do.end14
  br label %do.end16, !dbg !4247

do.end16:                                         ; preds = %do.end15
  br label %do.end17, !dbg !4246

do.end17:                                         ; preds = %do.end16
  br label %do.end18, !dbg !4241

do.end18:                                         ; preds = %do.end17
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !4261, metadata !DIExpression()), !dbg !4264
  %4 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.list_head, %struct.list_head* @gameport_event_list, i32 0, i32 0), align 8, !dbg !4264
  %5 = bitcast %struct.list_head* %4 to i8*, !dbg !4264
  store i8* %5, i8** %__mptr, align 8, !dbg !4264
  br label %do.body19, !dbg !4264

do.body19:                                        ; preds = %do.end18
  br label %do.end20, !dbg !4265

do.end20:                                         ; preds = %do.body19
  %6 = load i8*, i8** %__mptr, align 8, !dbg !4264
  %add.ptr = getelementptr i8, i8* %6, i64 -24, !dbg !4264
  %7 = bitcast i8* %add.ptr to %struct.gameport_event*, !dbg !4264
  store %struct.gameport_event* %7, %struct.gameport_event** %tmp21, align 8, !dbg !4265
  %8 = load %struct.gameport_event*, %struct.gameport_event** %tmp21, align 8, !dbg !4264
  store %struct.gameport_event* %8, %struct.gameport_event** %e, align 8, !dbg !4267
  call void @llvm.dbg.declare(metadata i8** %__mptr22, metadata !4268, metadata !DIExpression()), !dbg !4270
  %9 = load %struct.gameport_event*, %struct.gameport_event** %e, align 8, !dbg !4270
  %node = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %9, i32 0, i32 3, !dbg !4270
  %next23 = getelementptr inbounds %struct.list_head, %struct.list_head* %node, i32 0, i32 0, !dbg !4270
  %10 = load %struct.list_head*, %struct.list_head** %next23, align 8, !dbg !4270
  %11 = bitcast %struct.list_head* %10 to i8*, !dbg !4270
  store i8* %11, i8** %__mptr22, align 8, !dbg !4270
  br label %do.body24, !dbg !4270

do.body24:                                        ; preds = %do.end20
  br label %do.end25, !dbg !4271

do.end25:                                         ; preds = %do.body24
  %12 = load i8*, i8** %__mptr22, align 8, !dbg !4270
  %add.ptr27 = getelementptr i8, i8* %12, i64 -24, !dbg !4270
  %13 = bitcast i8* %add.ptr27 to %struct.gameport_event*, !dbg !4270
  store %struct.gameport_event* %13, %struct.gameport_event** %tmp26, align 8, !dbg !4271
  %14 = load %struct.gameport_event*, %struct.gameport_event** %tmp26, align 8, !dbg !4270
  store %struct.gameport_event* %14, %struct.gameport_event** %next, align 8, !dbg !4267
  br label %for.cond, !dbg !4267

for.cond:                                         ; preds = %do.end44, %do.end25
  %15 = load %struct.gameport_event*, %struct.gameport_event** %e, align 8, !dbg !4273
  %node28 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %15, i32 0, i32 3, !dbg !4273
  %cmp29 = icmp eq %struct.list_head* %node28, @gameport_event_list, !dbg !4273
  %lnot = xor i1 %cmp29, true, !dbg !4273
  br i1 %lnot, label %for.body, label %for.end, !dbg !4267

for.body:                                         ; preds = %for.cond
  %16 = load %struct.gameport_event*, %struct.gameport_event** %event.addr, align 8, !dbg !4275
  %object = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %16, i32 0, i32 1, !dbg !4278
  %17 = load i8*, i8** %object, align 8, !dbg !4278
  %18 = load %struct.gameport_event*, %struct.gameport_event** %e, align 8, !dbg !4279
  %object31 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %18, i32 0, i32 1, !dbg !4280
  %19 = load i8*, i8** %object31, align 8, !dbg !4280
  %cmp32 = icmp eq i8* %17, %19, !dbg !4281
  br i1 %cmp32, label %if.then, label %if.end39, !dbg !4282

if.then:                                          ; preds = %for.body
  %20 = load %struct.gameport_event*, %struct.gameport_event** %event.addr, align 8, !dbg !4283
  %type = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %20, i32 0, i32 0, !dbg !4286
  %21 = load i32, i32* %type, align 8, !dbg !4286
  %22 = load %struct.gameport_event*, %struct.gameport_event** %e, align 8, !dbg !4287
  %type34 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %22, i32 0, i32 0, !dbg !4288
  %23 = load i32, i32* %type34, align 8, !dbg !4288
  %cmp35 = icmp ne i32 %21, %23, !dbg !4289
  br i1 %cmp35, label %if.then37, label %if.end, !dbg !4290

if.then37:                                        ; preds = %if.then
  br label %for.end, !dbg !4291

if.end:                                           ; preds = %if.then
  %24 = load %struct.gameport_event*, %struct.gameport_event** %e, align 8, !dbg !4292
  %node38 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %24, i32 0, i32 3, !dbg !4293
  call void @list_del_init(%struct.list_head* %node38) #12, !dbg !4294
  %25 = load %struct.gameport_event*, %struct.gameport_event** %e, align 8, !dbg !4295
  call void @gameport_free_event(%struct.gameport_event* %25) #12, !dbg !4296
  br label %if.end39, !dbg !4297

if.end39:                                         ; preds = %if.end, %for.body
  br label %for.inc, !dbg !4298

for.inc:                                          ; preds = %if.end39
  %26 = load %struct.gameport_event*, %struct.gameport_event** %next, align 8, !dbg !4273
  store %struct.gameport_event* %26, %struct.gameport_event** %e, align 8, !dbg !4273
  call void @llvm.dbg.declare(metadata i8** %__mptr40, metadata !4299, metadata !DIExpression()), !dbg !4301
  %27 = load %struct.gameport_event*, %struct.gameport_event** %next, align 8, !dbg !4301
  %node41 = getelementptr inbounds %struct.gameport_event, %struct.gameport_event* %27, i32 0, i32 3, !dbg !4301
  %next42 = getelementptr inbounds %struct.list_head, %struct.list_head* %node41, i32 0, i32 0, !dbg !4301
  %28 = load %struct.list_head*, %struct.list_head** %next42, align 8, !dbg !4301
  %29 = bitcast %struct.list_head* %28 to i8*, !dbg !4301
  store i8* %29, i8** %__mptr40, align 8, !dbg !4301
  br label %do.body43, !dbg !4301

do.body43:                                        ; preds = %for.inc
  br label %do.end44, !dbg !4302

do.end44:                                         ; preds = %do.body43
  %30 = load i8*, i8** %__mptr40, align 8, !dbg !4301
  %add.ptr46 = getelementptr i8, i8* %30, i64 -24, !dbg !4301
  %31 = bitcast i8* %add.ptr46 to %struct.gameport_event*, !dbg !4301
  store %struct.gameport_event* %31, %struct.gameport_event** %tmp45, align 8, !dbg !4302
  %32 = load %struct.gameport_event*, %struct.gameport_event** %tmp45, align 8, !dbg !4301
  store %struct.gameport_event* %32, %struct.gameport_event** %next, align 8, !dbg !4273
  br label %for.cond, !dbg !4273, !llvm.loop !4304

for.end:                                          ; preds = %if.then37, %for.cond
  %33 = load i64, i64* %flags, align 8, !dbg !4306
  store %struct.spinlock* @gameport_event_lock, %struct.spinlock** %lock.addr.i47, align 8
  store i64 %33, i64* %flags.addr.i, align 8
  call void @llvm.dbg.declare(metadata !176, metadata !2928, metadata !DIExpression()) #3, !dbg !4307
  call void @llvm.dbg.declare(metadata !176, metadata !2932, metadata !DIExpression()) #3, !dbg !4307
  store i32 1, i32* %tmp.i, align 4, !dbg !4307
  %34 = load i32, i32* %tmp.i, align 4, !dbg !4307
  call void @llvm.dbg.declare(metadata !176, metadata !2933, metadata !DIExpression()) #3, !dbg !4308
  call void @llvm.dbg.declare(metadata !176, metadata !2939, metadata !DIExpression()) #3, !dbg !4308
  store i32 1, i32* %tmp8.i, align 4, !dbg !4308
  %35 = load i32, i32* %tmp8.i, align 4, !dbg !4308
  %36 = load i64, i64* %flags.addr.i, align 8, !dbg !4309
  call void @arch_local_irq_restore(i64 %36) #11, !dbg !4309
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4310, !srcloc !2943
  %37 = load %struct.spinlock*, %struct.spinlock** %lock.addr.i47, align 8, !dbg !4311
  %38 = getelementptr inbounds %struct.spinlock, %struct.spinlock* %37, i32 0, i32 0, !dbg !4311
  %rlock.i48 = bitcast %union.anon.0* %38 to %struct.raw_spinlock*, !dbg !4311
  ret void, !dbg !4312
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @list_empty(%struct.list_head* %head) #0 !dbg !4313 {
entry:
  %head.addr = alloca %struct.list_head*, align 8
  %tmp = alloca %struct.list_head*, align 8
  store %struct.list_head* %head, %struct.list_head** %head.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.list_head** %head.addr, metadata !4318, metadata !DIExpression()), !dbg !4319
  br label %do.body, !dbg !4320

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !4322

do.end:                                           ; preds = %do.body
  %0 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4320
  %next = getelementptr inbounds %struct.list_head, %struct.list_head* %0, i32 0, i32 0, !dbg !4320
  %1 = load volatile %struct.list_head*, %struct.list_head** %next, align 8, !dbg !4320
  store %struct.list_head* %1, %struct.list_head** %tmp, align 8, !dbg !4322
  %2 = load %struct.list_head*, %struct.list_head** %tmp, align 8, !dbg !4320
  %3 = load %struct.list_head*, %struct.list_head** %head.addr, align 8, !dbg !4324
  %cmp = icmp eq %struct.list_head* %2, %3, !dbg !4325
  %conv = zext i1 %cmp to i32, !dbg !4325
  ret i32 %conv, !dbg !4326
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @gameport_measure_speed(%struct.gameport* %gameport) #0 !dbg !4327 {
entry:
  %retval = alloca i32, align 4
  %gameport.addr = alloca %struct.gameport*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %tx = alloca i32, align 4
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %t3 = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy15 = alloca i64, align 8
  %__dummy216 = alloca i64, align 8
  %tmp19 = alloca i32, align 4
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !4328, metadata !DIExpression()), !dbg !4329
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4330, metadata !DIExpression()), !dbg !4331
  call void @llvm.dbg.declare(metadata i32* %t, metadata !4332, metadata !DIExpression()), !dbg !4333
  call void @llvm.dbg.declare(metadata i32* %tx, metadata !4334, metadata !DIExpression()), !dbg !4335
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !4336, metadata !DIExpression()), !dbg !4337
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !4338, metadata !DIExpression()), !dbg !4339
  call void @llvm.dbg.declare(metadata i64* %t3, metadata !4340, metadata !DIExpression()), !dbg !4341
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4342, metadata !DIExpression()), !dbg !4343
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4344
  %call = call i32 @gameport_open(%struct.gameport* %0, %struct.gameport_driver* null, i32 1) #12, !dbg !4346
  %tobool = icmp ne i32 %call, 0, !dbg !4346
  br i1 %tobool, label %if.then, label %if.end, !dbg !4347

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4348
  br label %return, !dbg !4348

if.end:                                           ; preds = %entry
  store i32 -1, i32* %tx, align 4, !dbg !4349
  store i32 0, i32* %i, align 4, !dbg !4350
  br label %for.cond, !dbg !4352

for.cond:                                         ; preds = %for.inc42, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !4353
  %cmp = icmp ult i32 %1, 50, !dbg !4355
  br i1 %cmp, label %for.body, label %for.end44, !dbg !4356

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4357

do.body:                                          ; preds = %for.body
  br label %do.body1, !dbg !4359

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4361, metadata !DIExpression()), !dbg !4364
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4365, metadata !DIExpression()), !dbg !4364
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !4364
  %conv = zext i1 %cmp2 to i32, !dbg !4364
  store i32 1, i32* %tmp, align 4, !dbg !4364
  %2 = load i32, i32* %tmp, align 4, !dbg !4364
  %call3 = call i64 @arch_local_irq_save() #12, !dbg !4366
  store i64 %call3, i64* %flags, align 8, !dbg !4366
  br label %do.end, !dbg !4366

do.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !4359

do.end4:                                          ; preds = %do.end
  %call5 = call i64 @ktime_get_ns() #12, !dbg !4367
  store i64 %call5, i64* %t1, align 8, !dbg !4368
  store i32 0, i32* %t, align 4, !dbg !4369
  br label %for.cond6, !dbg !4371

for.cond6:                                        ; preds = %for.inc, %do.end4
  %3 = load i32, i32* %t, align 4, !dbg !4372
  %cmp7 = icmp ult i32 %3, 50, !dbg !4374
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !4375

for.body9:                                        ; preds = %for.cond6
  %4 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4376
  %call10 = call zeroext i8 @gameport_read(%struct.gameport* %4) #12, !dbg !4377
  br label %for.inc, !dbg !4377

for.inc:                                          ; preds = %for.body9
  %5 = load i32, i32* %t, align 4, !dbg !4378
  %inc = add i32 %5, 1, !dbg !4378
  store i32 %inc, i32* %t, align 4, !dbg !4378
  br label %for.cond6, !dbg !4379, !llvm.loop !4380

for.end:                                          ; preds = %for.cond6
  %call11 = call i64 @ktime_get_ns() #12, !dbg !4382
  store i64 %call11, i64* %t2, align 8, !dbg !4383
  %call12 = call i64 @ktime_get_ns() #12, !dbg !4384
  store i64 %call12, i64* %t3, align 8, !dbg !4385
  br label %do.body13, !dbg !4386

do.body13:                                        ; preds = %for.end
  br label %do.body14, !dbg !4387

do.body14:                                        ; preds = %do.body13
  call void @llvm.dbg.declare(metadata i64* %__dummy15, metadata !4389, metadata !DIExpression()), !dbg !4392
  call void @llvm.dbg.declare(metadata i64* %__dummy216, metadata !4393, metadata !DIExpression()), !dbg !4392
  %cmp17 = icmp eq i64* %__dummy15, %__dummy216, !dbg !4392
  %conv18 = zext i1 %cmp17 to i32, !dbg !4392
  store i32 1, i32* %tmp19, align 4, !dbg !4392
  %6 = load i32, i32* %tmp19, align 4, !dbg !4392
  %7 = load i64, i64* %flags, align 8, !dbg !4394
  call void @arch_local_irq_restore(i64 %7) #12, !dbg !4394
  br label %do.end20, !dbg !4394

do.end20:                                         ; preds = %do.body14
  br label %do.end21, !dbg !4387

do.end21:                                         ; preds = %do.end20
  %8 = load i32, i32* %i, align 4, !dbg !4395
  %mul = mul i32 %8, 10, !dbg !4395
  %9 = call i1 @llvm.is.constant.i32(i32 %mul), !dbg !4395
  br i1 %9, label %if.then22, label %if.else31, !dbg !4398

if.then22:                                        ; preds = %do.end21
  %10 = load i32, i32* %i, align 4, !dbg !4399
  %mul23 = mul i32 %10, 10, !dbg !4399
  %div = udiv i32 %mul23, 20000, !dbg !4399
  %cmp24 = icmp uge i32 %div, 1, !dbg !4399
  br i1 %cmp24, label %if.then26, label %if.else, !dbg !4402

if.then26:                                        ; preds = %if.then22
  call void @__bad_udelay() #12, !dbg !4399
  br label %if.end30, !dbg !4399

if.else:                                          ; preds = %if.then22
  %11 = load i32, i32* %i, align 4, !dbg !4399
  %mul27 = mul i32 %11, 10, !dbg !4399
  %conv28 = zext i32 %mul27 to i64, !dbg !4399
  %mul29 = mul i64 %conv28, 4295, !dbg !4399
  call void @__const_udelay(i64 %mul29) #12, !dbg !4399
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then26
  br label %if.end34, !dbg !4402

if.else31:                                        ; preds = %do.end21
  %12 = load i32, i32* %i, align 4, !dbg !4403
  %mul32 = mul i32 %12, 10, !dbg !4403
  %conv33 = zext i32 %mul32 to i64, !dbg !4403
  call void @__udelay(i64 %conv33) #12, !dbg !4403
  br label %if.end34

if.end34:                                         ; preds = %if.else31, %if.end30
  %13 = load i64, i64* %t2, align 8, !dbg !4405
  %14 = load i64, i64* %t1, align 8, !dbg !4406
  %sub = sub i64 %13, %14, !dbg !4407
  %15 = load i64, i64* %t3, align 8, !dbg !4408
  %16 = load i64, i64* %t2, align 8, !dbg !4409
  %sub35 = sub i64 %15, %16, !dbg !4410
  %sub36 = sub i64 %sub, %sub35, !dbg !4411
  %conv37 = trunc i64 %sub36 to i32, !dbg !4412
  store i32 %conv37, i32* %t, align 4, !dbg !4413
  %17 = load i32, i32* %t, align 4, !dbg !4414
  %18 = load i32, i32* %tx, align 4, !dbg !4416
  %cmp38 = icmp ult i32 %17, %18, !dbg !4417
  br i1 %cmp38, label %if.then40, label %if.end41, !dbg !4418

if.then40:                                        ; preds = %if.end34
  %19 = load i32, i32* %t, align 4, !dbg !4419
  store i32 %19, i32* %tx, align 4, !dbg !4420
  br label %if.end41, !dbg !4421

if.end41:                                         ; preds = %if.then40, %if.end34
  br label %for.inc42, !dbg !4422

for.inc42:                                        ; preds = %if.end41
  %20 = load i32, i32* %i, align 4, !dbg !4423
  %inc43 = add i32 %20, 1, !dbg !4423
  store i32 %inc43, i32* %i, align 4, !dbg !4423
  br label %for.cond, !dbg !4424, !llvm.loop !4425

for.end44:                                        ; preds = %for.cond
  %21 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4427
  call void @gameport_close(%struct.gameport* %21) #12, !dbg !4428
  store i32 50000000, i32* %t, align 4, !dbg !4429
  %22 = load i32, i32* %tx, align 4, !dbg !4430
  %tobool45 = icmp ne i32 %22, 0, !dbg !4430
  br i1 %tobool45, label %if.then46, label %if.end48, !dbg !4432

if.then46:                                        ; preds = %for.end44
  %23 = load i32, i32* %tx, align 4, !dbg !4433
  %24 = load i32, i32* %t, align 4, !dbg !4434
  %div47 = udiv i32 %24, %23, !dbg !4434
  store i32 %div47, i32* %t, align 4, !dbg !4434
  br label %if.end48, !dbg !4435

if.end48:                                         ; preds = %if.then46, %for.end44
  %25 = load i32, i32* %t, align 4, !dbg !4436
  store i32 %25, i32* %retval, align 4, !dbg !4437
  br label %return, !dbg !4437

return:                                           ; preds = %if.end48, %if.then
  %26 = load i32, i32* %retval, align 4, !dbg !4438
  ret i32 %26, !dbg !4438
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @old_gameport_measure_speed(%struct.gameport* %gameport) #0 !dbg !4439 {
entry:
  %low.i52 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %low.i52, metadata !4440, metadata !DIExpression()), !dbg !4445
  %high.i53 = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %high.i53, metadata !4450, metadata !DIExpression()), !dbg !4445
  %low.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %low.i, metadata !4440, metadata !DIExpression()), !dbg !4451
  %high.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %high.i, metadata !4450, metadata !DIExpression()), !dbg !4451
  %retval = alloca i32, align 4
  %gameport.addr = alloca %struct.gameport*, align 8
  %i = alloca i32, align 4
  %t = alloca i32, align 4
  %tx = alloca i64, align 8
  %t1 = alloca i64, align 8
  %t2 = alloca i64, align 8
  %flags = alloca i64, align 8
  %__dummy = alloca i64, align 8
  %__dummy2 = alloca i64, align 8
  %tmp = alloca i32, align 4
  %__dummy14 = alloca i64, align 8
  %__dummy215 = alloca i64, align 8
  %tmp18 = alloca i32, align 4
  %pscr_ret__ = alloca i64, align 8
  %__vpp_verify = alloca i8*, align 8
  %pfo_val__ = alloca i64, align 8
  %tmp44 = alloca i64, align 8
  %tmp45 = alloca i64, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !4453, metadata !DIExpression()), !dbg !4454
  call void @llvm.dbg.declare(metadata i32* %i, metadata !4455, metadata !DIExpression()), !dbg !4456
  call void @llvm.dbg.declare(metadata i32* %t, metadata !4457, metadata !DIExpression()), !dbg !4458
  call void @llvm.dbg.declare(metadata i64* %tx, metadata !4459, metadata !DIExpression()), !dbg !4460
  call void @llvm.dbg.declare(metadata i64* %t1, metadata !4461, metadata !DIExpression()), !dbg !4462
  call void @llvm.dbg.declare(metadata i64* %t2, metadata !4463, metadata !DIExpression()), !dbg !4464
  call void @llvm.dbg.declare(metadata i64* %flags, metadata !4465, metadata !DIExpression()), !dbg !4466
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4467
  %call = call i32 @gameport_open(%struct.gameport* %0, %struct.gameport_driver* null, i32 1) #12, !dbg !4469
  %tobool = icmp ne i32 %call, 0, !dbg !4469
  br i1 %tobool, label %if.then, label %if.end, !dbg !4470

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !4471
  br label %return, !dbg !4471

if.end:                                           ; preds = %entry
  store i64 1073741824, i64* %tx, align 8, !dbg !4472
  store i32 0, i32* %i, align 4, !dbg !4473
  br label %for.cond, !dbg !4474

for.cond:                                         ; preds = %for.inc39, %if.end
  %1 = load i32, i32* %i, align 4, !dbg !4475
  %cmp = icmp ult i32 %1, 50, !dbg !4476
  br i1 %cmp, label %for.body, label %for.end41, !dbg !4477

for.body:                                         ; preds = %for.cond
  br label %do.body, !dbg !4478

do.body:                                          ; preds = %for.body
  br label %do.body1, !dbg !4479

do.body1:                                         ; preds = %do.body
  call void @llvm.dbg.declare(metadata i64* %__dummy, metadata !4481, metadata !DIExpression()), !dbg !4484
  call void @llvm.dbg.declare(metadata i64* %__dummy2, metadata !4485, metadata !DIExpression()), !dbg !4484
  %cmp2 = icmp eq i64* %__dummy, %__dummy2, !dbg !4484
  %conv = zext i1 %cmp2 to i32, !dbg !4484
  store i32 1, i32* %tmp, align 4, !dbg !4484
  %2 = load i32, i32* %tmp, align 4, !dbg !4484
  %call3 = call i64 @arch_local_irq_save() #12, !dbg !4486
  store i64 %call3, i64* %flags, align 8, !dbg !4486
  br label %do.end, !dbg !4486

do.end:                                           ; preds = %do.body1
  br label %do.end4, !dbg !4479

do.end4:                                          ; preds = %do.end
  %3 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4487, !srcloc !4488
  %asmresult.i = extractvalue { i64, i64 } %3, 0, !dbg !4487
  %asmresult1.i = extractvalue { i64, i64 } %3, 1, !dbg !4487
  store i64 %asmresult.i, i64* %low.i, align 8, !dbg !4487
  store i64 %asmresult1.i, i64* %high.i, align 8, !dbg !4487
  %4 = load i64, i64* %low.i, align 8, !dbg !4489
  %5 = load i64, i64* %high.i, align 8, !dbg !4489
  %shl.i = shl i64 %5, 32, !dbg !4489
  %or.i = or i64 %4, %shl.i, !dbg !4489
  store i64 %or.i, i64* %t1, align 8, !dbg !4490
  store i32 0, i32* %t, align 4, !dbg !4491
  br label %for.cond6, !dbg !4493

for.cond6:                                        ; preds = %for.inc, %do.end4
  %6 = load i32, i32* %t, align 4, !dbg !4494
  %cmp7 = icmp ult i32 %6, 50, !dbg !4496
  br i1 %cmp7, label %for.body9, label %for.end, !dbg !4497

for.body9:                                        ; preds = %for.cond6
  %7 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4498
  %call10 = call zeroext i8 @gameport_read(%struct.gameport* %7) #12, !dbg !4499
  br label %for.inc, !dbg !4499

for.inc:                                          ; preds = %for.body9
  %8 = load i32, i32* %t, align 4, !dbg !4500
  %inc = add i32 %8, 1, !dbg !4500
  store i32 %inc, i32* %t, align 4, !dbg !4500
  br label %for.cond6, !dbg !4501, !llvm.loop !4502

for.end:                                          ; preds = %for.cond6
  %9 = call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #3, !dbg !4504, !srcloc !4488
  %asmresult.i54 = extractvalue { i64, i64 } %9, 0, !dbg !4504
  %asmresult1.i55 = extractvalue { i64, i64 } %9, 1, !dbg !4504
  store i64 %asmresult.i54, i64* %low.i52, align 8, !dbg !4504
  store i64 %asmresult1.i55, i64* %high.i53, align 8, !dbg !4504
  %10 = load i64, i64* %low.i52, align 8, !dbg !4505
  %11 = load i64, i64* %high.i53, align 8, !dbg !4505
  %shl.i56 = shl i64 %11, 32, !dbg !4505
  %or.i57 = or i64 %10, %shl.i56, !dbg !4505
  store i64 %or.i57, i64* %t2, align 8, !dbg !4506
  br label %do.body12, !dbg !4507

do.body12:                                        ; preds = %for.end
  br label %do.body13, !dbg !4508

do.body13:                                        ; preds = %do.body12
  call void @llvm.dbg.declare(metadata i64* %__dummy14, metadata !4510, metadata !DIExpression()), !dbg !4513
  call void @llvm.dbg.declare(metadata i64* %__dummy215, metadata !4514, metadata !DIExpression()), !dbg !4513
  %cmp16 = icmp eq i64* %__dummy14, %__dummy215, !dbg !4513
  %conv17 = zext i1 %cmp16 to i32, !dbg !4513
  store i32 1, i32* %tmp18, align 4, !dbg !4513
  %12 = load i32, i32* %tmp18, align 4, !dbg !4513
  %13 = load i64, i64* %flags, align 8, !dbg !4515
  call void @arch_local_irq_restore(i64 %13) #12, !dbg !4515
  br label %do.end19, !dbg !4515

do.end19:                                         ; preds = %do.body13
  br label %do.end20, !dbg !4508

do.end20:                                         ; preds = %do.end19
  %14 = load i32, i32* %i, align 4, !dbg !4516
  %mul = mul i32 %14, 10, !dbg !4516
  %15 = call i1 @llvm.is.constant.i32(i32 %mul), !dbg !4516
  br i1 %15, label %if.then21, label %if.else30, !dbg !4519

if.then21:                                        ; preds = %do.end20
  %16 = load i32, i32* %i, align 4, !dbg !4520
  %mul22 = mul i32 %16, 10, !dbg !4520
  %div = udiv i32 %mul22, 20000, !dbg !4520
  %cmp23 = icmp uge i32 %div, 1, !dbg !4520
  br i1 %cmp23, label %if.then25, label %if.else, !dbg !4523

if.then25:                                        ; preds = %if.then21
  call void @__bad_udelay() #12, !dbg !4520
  br label %if.end29, !dbg !4520

if.else:                                          ; preds = %if.then21
  %17 = load i32, i32* %i, align 4, !dbg !4520
  %mul26 = mul i32 %17, 10, !dbg !4520
  %conv27 = zext i32 %mul26 to i64, !dbg !4520
  %mul28 = mul i64 %conv27, 4295, !dbg !4520
  call void @__const_udelay(i64 %mul28) #12, !dbg !4520
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then25
  br label %if.end33, !dbg !4523

if.else30:                                        ; preds = %do.end20
  %18 = load i32, i32* %i, align 4, !dbg !4524
  %mul31 = mul i32 %18, 10, !dbg !4524
  %conv32 = zext i32 %mul31 to i64, !dbg !4524
  call void @__udelay(i64 %conv32) #12, !dbg !4524
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.end29
  %19 = load i64, i64* %t2, align 8, !dbg !4526
  %20 = load i64, i64* %t1, align 8, !dbg !4528
  %sub = sub i64 %19, %20, !dbg !4529
  %21 = load i64, i64* %tx, align 8, !dbg !4530
  %cmp34 = icmp ult i64 %sub, %21, !dbg !4531
  br i1 %cmp34, label %if.then36, label %if.end38, !dbg !4532

if.then36:                                        ; preds = %if.end33
  %22 = load i64, i64* %t2, align 8, !dbg !4533
  %23 = load i64, i64* %t1, align 8, !dbg !4534
  %sub37 = sub i64 %22, %23, !dbg !4535
  store i64 %sub37, i64* %tx, align 8, !dbg !4536
  br label %if.end38, !dbg !4537

if.end38:                                         ; preds = %if.then36, %if.end33
  br label %for.inc39, !dbg !4538

for.inc39:                                        ; preds = %if.end38
  %24 = load i32, i32* %i, align 4, !dbg !4539
  %inc40 = add i32 %24, 1, !dbg !4539
  store i32 %inc40, i32* %i, align 4, !dbg !4539
  br label %for.cond, !dbg !4540, !llvm.loop !4541

for.end41:                                        ; preds = %for.cond
  %25 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4543
  call void @gameport_close(%struct.gameport* %25) #12, !dbg !4544
  call void @llvm.dbg.declare(metadata i64* %pscr_ret__, metadata !4545, metadata !DIExpression()), !dbg !4547
  br label %do.body42, !dbg !4547

do.body42:                                        ; preds = %for.end41
  call void @llvm.dbg.declare(metadata i8** %__vpp_verify, metadata !4548, metadata !DIExpression()), !dbg !4550
  store i8* null, i8** %__vpp_verify, align 8, !dbg !4550
  %26 = load i8*, i8** %__vpp_verify, align 8, !dbg !4550
  br label %do.end43, !dbg !4550

do.end43:                                         ; preds = %do.body42
  call void @llvm.dbg.declare(metadata i64* %pfo_val__, metadata !4551, metadata !DIExpression()), !dbg !4553
  %27 = call i64 asm sideeffect "movq $1, $0", "=r,*m,~{dirflag},~{fpsr},~{flags}"(i64* getelementptr inbounds (%struct.cpuinfo_x86, %struct.cpuinfo_x86* @boot_cpu_data, i32 0, i32 21)) #3, !dbg !4553, !srcloc !4554
  store i64 %27, i64* %pfo_val__, align 8, !dbg !4553
  %28 = load i64, i64* %pfo_val__, align 8, !dbg !4553
  store i64 %28, i64* %tmp44, align 8, !dbg !4553
  %29 = load i64, i64* %tmp44, align 8, !dbg !4553
  store i64 %29, i64* %pscr_ret__, align 8, !dbg !4547
  %30 = load i64, i64* %pscr_ret__, align 8, !dbg !4547
  store i64 %30, i64* %tmp45, align 8, !dbg !4547
  %31 = load i64, i64* %tmp45, align 8, !dbg !4547
  %mul46 = mul i64 %31, 250, !dbg !4555
  %div47 = udiv i64 %mul46, 20, !dbg !4556
  %32 = load i64, i64* %tx, align 8, !dbg !4557
  %cmp48 = icmp ult i64 %32, 1, !dbg !4558
  br i1 %cmp48, label %cond.true, label %cond.false, !dbg !4557

cond.true:                                        ; preds = %do.end43
  br label %cond.end, !dbg !4557

cond.false:                                       ; preds = %do.end43
  %33 = load i64, i64* %tx, align 8, !dbg !4559
  br label %cond.end, !dbg !4557

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i64 [ 1, %cond.true ], [ %33, %cond.false ], !dbg !4557
  %div50 = udiv i64 %div47, %cond, !dbg !4560
  %conv51 = trunc i64 %div50 to i32, !dbg !4561
  store i32 %conv51, i32* %retval, align 4, !dbg !4562
  br label %return, !dbg !4562

return:                                           ; preds = %cond.end, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !4563
  ret i32 %34, !dbg !4563
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: noredzone
declare dso_local i32 @device_add(%struct.device*) #2

; Function Attrs: cold noredzone
declare dso_local void @_dev_err(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_get_ns() #0 !dbg !4564 {
entry:
  %call = call i64 @ktime_get() #12, !dbg !4568
  %call1 = call i64 @ktime_to_ns(i64 %call) #12, !dbg !4569
  ret i64 %call1, !dbg !4570
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @gameport_read(%struct.gameport* %gameport) #0 !dbg !4571 {
entry:
  %retval = alloca i8, align 1
  %gameport.addr = alloca %struct.gameport*, align 8
  store %struct.gameport* %gameport, %struct.gameport** %gameport.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.gameport** %gameport.addr, metadata !4572, metadata !DIExpression()), !dbg !4573
  %0 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4574
  %read = getelementptr inbounds %struct.gameport, %struct.gameport* %0, i32 0, i32 7, !dbg !4576
  %1 = load i8 (%struct.gameport*)*, i8 (%struct.gameport*)** %read, align 8, !dbg !4576
  %tobool = icmp ne i8 (%struct.gameport*)* %1, null, !dbg !4574
  br i1 %tobool, label %if.then, label %if.else, !dbg !4577

if.then:                                          ; preds = %entry
  %2 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4578
  %read1 = getelementptr inbounds %struct.gameport, %struct.gameport* %2, i32 0, i32 7, !dbg !4579
  %3 = load i8 (%struct.gameport*)*, i8 (%struct.gameport*)** %read1, align 8, !dbg !4579
  %4 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4580
  %call = call zeroext i8 %3(%struct.gameport* %4) #12, !dbg !4578
  store i8 %call, i8* %retval, align 1, !dbg !4581
  br label %return, !dbg !4581

if.else:                                          ; preds = %entry
  %5 = load %struct.gameport*, %struct.gameport** %gameport.addr, align 8, !dbg !4582
  %io = getelementptr inbounds %struct.gameport, %struct.gameport* %5, i32 0, i32 3, !dbg !4583
  %6 = load i32, i32* %io, align 8, !dbg !4583
  %call2 = call zeroext i8 @inb(i32 %6) #12, !dbg !4584
  store i8 %call2, i8* %retval, align 1, !dbg !4585
  br label %return, !dbg !4585

return:                                           ; preds = %if.else, %if.then
  %7 = load i8, i8* %retval, align 1, !dbg !4586
  ret i8 %7, !dbg !4586
}

; Function Attrs: noredzone
declare dso_local void @__bad_udelay() #2

; Function Attrs: noredzone
declare dso_local void @__const_udelay(i64) #2

; Function Attrs: noredzone
declare dso_local void @__udelay(i64) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @ktime_to_ns(i64 %kt) #0 !dbg !4587 {
entry:
  %kt.addr = alloca i64, align 8
  store i64 %kt, i64* %kt.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %kt.addr, metadata !4591, metadata !DIExpression()), !dbg !4592
  %0 = load i64, i64* %kt.addr, align 8, !dbg !4593
  ret i64 %0, !dbg !4594
}

; Function Attrs: noredzone
declare dso_local i64 @ktime_get() #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @inb(i32 %port) #0 !dbg !4595 {
entry:
  %port.addr = alloca i32, align 4
  %value = alloca i8, align 1
  store i32 %port, i32* %port.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %port.addr, metadata !4599, metadata !DIExpression()), !dbg !4600
  call void @llvm.dbg.declare(metadata i8* %value, metadata !4601, metadata !DIExpression()), !dbg !4600
  %0 = load i32, i32* %port.addr, align 4, !dbg !4600
  %1 = call i8 asm sideeffect "inb ${1:w}, ${0:b}", "={ax},N{dx},~{dirflag},~{fpsr},~{flags}"(i32 %0) #3, !dbg !4600, !srcloc !4602
  store i8 %1, i8* %value, align 1, !dbg !4600
  %2 = load i8, i8* %value, align 1, !dbg !4600
  ret i8 %2, !dbg !4600
}

; Function Attrs: noredzone
declare dso_local i32 @driver_attach(%struct.device_driver*) #2

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #6 = { nounwind readnone willreturn }
attributes #7 = { argmemonly nounwind willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind willreturn }
attributes #10 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #11 = { noredzone nounwind }
attributes #12 = { noredzone }
attributes #13 = { noredzone nounwind readnone }
attributes #14 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.named.register.rsp = !{!2271}
!llvm.module.flags = !{!2272, !2273, !2274, !2275}
!llvm.ident = !{!2276}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author161", scope: !2, file: !3, line: 26, type: !2268, isLocal: true, isDefinition: true, align: 8)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !99, globals: !2114, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/input/gameport/gameport.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !30, !38, !44, !50, !54, !59, !66}
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
!23 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dl_dev_state", file: !24, line: 343, baseType: !7, size: 32, elements: !25)
!24 = !DIFile(filename: "./include/linux/device.h", directory: "/home/lizy2001/genbc/linux")
!25 = !{!26, !27, !28, !29}
!26 = !DIEnumerator(name: "DL_DEV_NO_DRIVER", value: 0, isUnsigned: true)
!27 = !DIEnumerator(name: "DL_DEV_PROBING", value: 1, isUnsigned: true)
!28 = !DIEnumerator(name: "DL_DEV_DRIVER_BOUND", value: 2, isUnsigned: true)
!29 = !DIEnumerator(name: "DL_DEV_UNBINDING", value: 3, isUnsigned: true)
!30 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_request", file: !31, line: 524, baseType: !7, size: 32, elements: !32)
!31 = !DIFile(filename: "./include/linux/pm.h", directory: "/home/lizy2001/genbc/linux")
!32 = !{!33, !34, !35, !36, !37}
!33 = !DIEnumerator(name: "RPM_REQ_NONE", value: 0, isUnsigned: true)
!34 = !DIEnumerator(name: "RPM_REQ_IDLE", value: 1, isUnsigned: true)
!35 = !DIEnumerator(name: "RPM_REQ_SUSPEND", value: 2, isUnsigned: true)
!36 = !DIEnumerator(name: "RPM_REQ_AUTOSUSPEND", value: 3, isUnsigned: true)
!37 = !DIEnumerator(name: "RPM_REQ_RESUME", value: 4, isUnsigned: true)
!38 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "rpm_status", file: !31, line: 502, baseType: !7, size: 32, elements: !39)
!39 = !{!40, !41, !42, !43}
!40 = !DIEnumerator(name: "RPM_ACTIVE", value: 0, isUnsigned: true)
!41 = !DIEnumerator(name: "RPM_RESUMING", value: 1, isUnsigned: true)
!42 = !DIEnumerator(name: "RPM_SUSPENDED", value: 2, isUnsigned: true)
!43 = !DIEnumerator(name: "RPM_SUSPENDING", value: 3, isUnsigned: true)
!44 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "probe_type", file: !45, line: 44, baseType: !7, size: 32, elements: !46)
!45 = !DIFile(filename: "./include/linux/device/driver.h", directory: "/home/lizy2001/genbc/linux")
!46 = !{!47, !48, !49}
!47 = !DIEnumerator(name: "PROBE_DEFAULT_STRATEGY", value: 0, isUnsigned: true)
!48 = !DIEnumerator(name: "PROBE_PREFER_ASYNCHRONOUS", value: 1, isUnsigned: true)
!49 = !DIEnumerator(name: "PROBE_FORCE_SYNCHRONOUS", value: 2, isUnsigned: true)
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "gameport_event_type", file: !3, line: 254, baseType: !7, size: 32, elements: !51)
!51 = !{!52, !53}
!52 = !DIEnumerator(name: "GAMEPORT_REGISTER_PORT", value: 0, isUnsigned: true)
!53 = !DIEnumerator(name: "GAMEPORT_ATTACH_DRIVER", value: 1, isUnsigned: true)
!54 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !55, line: 10, baseType: !7, size: 32, elements: !56)
!55 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!56 = !{!57, !58}
!57 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!58 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!59 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !60, line: 305, baseType: !7, size: 32, elements: !61)
!60 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!61 = !{!62, !63, !64, !65}
!62 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!63 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!64 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!65 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!66 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !67, line: 30, baseType: !68, size: 64, elements: !69)
!67 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!68 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!69 = !{!70, !71, !72, !73, !74, !75, !76, !77, !78, !79, !80, !81, !82, !83, !84, !85, !86, !87, !88, !89, !90, !91, !92, !93, !94, !95, !96, !97, !98}
!70 = !DIEnumerator(name: "WORK_STRUCT_PENDING_BIT", value: 0)
!71 = !DIEnumerator(name: "WORK_STRUCT_DELAYED_BIT", value: 1)
!72 = !DIEnumerator(name: "WORK_STRUCT_PWQ_BIT", value: 2)
!73 = !DIEnumerator(name: "WORK_STRUCT_LINKED_BIT", value: 3)
!74 = !DIEnumerator(name: "WORK_STRUCT_COLOR_SHIFT", value: 4)
!75 = !DIEnumerator(name: "WORK_STRUCT_COLOR_BITS", value: 4)
!76 = !DIEnumerator(name: "WORK_STRUCT_PENDING", value: 1)
!77 = !DIEnumerator(name: "WORK_STRUCT_DELAYED", value: 2)
!78 = !DIEnumerator(name: "WORK_STRUCT_PWQ", value: 4)
!79 = !DIEnumerator(name: "WORK_STRUCT_LINKED", value: 8)
!80 = !DIEnumerator(name: "WORK_STRUCT_STATIC", value: 0)
!81 = !DIEnumerator(name: "WORK_NR_COLORS", value: 15)
!82 = !DIEnumerator(name: "WORK_NO_COLOR", value: 15)
!83 = !DIEnumerator(name: "WORK_CPU_UNBOUND", value: 1)
!84 = !DIEnumerator(name: "WORK_STRUCT_FLAG_BITS", value: 8)
!85 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BASE", value: 4)
!86 = !DIEnumerator(name: "__WORK_OFFQ_CANCELING", value: 4)
!87 = !DIEnumerator(name: "WORK_OFFQ_CANCELING", value: 16)
!88 = !DIEnumerator(name: "WORK_OFFQ_FLAG_BITS", value: 1)
!89 = !DIEnumerator(name: "WORK_OFFQ_POOL_SHIFT", value: 5)
!90 = !DIEnumerator(name: "WORK_OFFQ_LEFT", value: 59)
!91 = !DIEnumerator(name: "WORK_OFFQ_POOL_BITS", value: 31)
!92 = !DIEnumerator(name: "WORK_OFFQ_POOL_NONE", value: 2147483647)
!93 = !DIEnumerator(name: "WORK_STRUCT_FLAG_MASK", value: 255)
!94 = !DIEnumerator(name: "WORK_STRUCT_WQ_DATA_MASK", value: -256)
!95 = !DIEnumerator(name: "WORK_STRUCT_NO_POOL", value: 68719476704)
!96 = !DIEnumerator(name: "WORK_BUSY_PENDING", value: 1)
!97 = !DIEnumerator(name: "WORK_BUSY_RUNNING", value: 2)
!98 = !DIEnumerator(name: "WORKER_DESC_LEN", value: 24)
!99 = !{!100, !101, !113, !68, !2000, !149, !2102, !2104, !1557, !182, !2111, !2113}
!100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!102 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gameport", file: !103, line: 17, size: 7616, elements: !104)
!103 = !DIFile(filename: "./include/linux/gameport.h", directory: "/home/lizy2001/genbc/linux")
!104 = !{!105, !106, !111, !112, !114, !115, !116, !120, !125, !130, !131, !135, !136, !160, !161, !177, !178, !179, !180, !181, !2099, !2100, !2101}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "port_data", scope: !102, file: !103, line: 19, baseType: !100, size: 64)
!106 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !102, file: !103, line: 20, baseType: !107, size: 256, offset: 64)
!107 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 256, elements: !109)
!108 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!109 = !{!110}
!110 = !DISubrange(count: 32)
!111 = !DIDerivedType(tag: DW_TAG_member, name: "phys", scope: !102, file: !103, line: 21, baseType: !107, size: 256, offset: 320)
!112 = !DIDerivedType(tag: DW_TAG_member, name: "io", scope: !102, file: !103, line: 23, baseType: !113, size: 32, offset: 576)
!113 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!114 = !DIDerivedType(tag: DW_TAG_member, name: "speed", scope: !102, file: !103, line: 24, baseType: !113, size: 32, offset: 608)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "fuzz", scope: !102, file: !103, line: 25, baseType: !113, size: 32, offset: 640)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "trigger", scope: !102, file: !103, line: 27, baseType: !117, size: 64, offset: 704)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = !DISubroutineType(types: !119)
!119 = !{null, !101}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !102, file: !103, line: 28, baseType: !121, size: 64, offset: 768)
!121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !122, size: 64)
!122 = !DISubroutineType(types: !123)
!123 = !{!124, !101}
!124 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!125 = !DIDerivedType(tag: DW_TAG_member, name: "cooked_read", scope: !102, file: !103, line: 29, baseType: !126, size: 64, offset: 832)
!126 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!127 = !DISubroutineType(types: !128)
!128 = !{!113, !101, !129, !129}
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !113, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_member, name: "calibrate", scope: !102, file: !103, line: 30, baseType: !126, size: 64, offset: 896)
!131 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !102, file: !103, line: 31, baseType: !132, size: 64, offset: 960)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !133, size: 64)
!133 = !DISubroutineType(types: !134)
!134 = !{!113, !101, !113}
!135 = !DIDerivedType(tag: DW_TAG_member, name: "close", scope: !102, file: !103, line: 32, baseType: !117, size: 64, offset: 1024)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "poll_timer", scope: !102, file: !103, line: 34, baseType: !137, size: 320, offset: 1088)
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !138, line: 11, size: 320, elements: !139)
!138 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!139 = !{!140, !148, !150, !155}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !137, file: !138, line: 16, baseType: !141, size: 128)
!141 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !142, line: 186, size: 128, elements: !143)
!142 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!143 = !{!144, !146}
!144 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !141, file: !142, line: 187, baseType: !145, size: 64)
!145 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !141, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !141, file: !142, line: 187, baseType: !147, size: 64, offset: 64)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !145, size: 64)
!148 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !137, file: !138, line: 17, baseType: !149, size: 64, offset: 128)
!149 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!150 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !137, file: !138, line: 18, baseType: !151, size: 64, offset: 192)
!151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !152, size: 64)
!152 = !DISubroutineType(types: !153)
!153 = !{null, !154}
!154 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!155 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !137, file: !138, line: 19, baseType: !156, size: 32, offset: 256)
!156 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !157, line: 21, baseType: !158)
!157 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!158 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !159, line: 27, baseType: !7)
!159 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!160 = !DIDerivedType(tag: DW_TAG_member, name: "poll_interval", scope: !102, file: !103, line: 35, baseType: !7, size: 32, offset: 1408)
!161 = !DIDerivedType(tag: DW_TAG_member, name: "timer_lock", scope: !102, file: !103, line: 36, baseType: !162, offset: 1440)
!162 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !163, line: 83, baseType: !164)
!163 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !163, line: 71, elements: !165)
!165 = !{!166}
!166 = !DIDerivedType(tag: DW_TAG_member, scope: !164, file: !163, line: 72, baseType: !167)
!167 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !164, file: !163, line: 72, elements: !168)
!168 = !{!169}
!169 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !167, file: !163, line: 73, baseType: !170)
!170 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !163, line: 20, elements: !171)
!171 = !{!172}
!172 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !170, file: !163, line: 21, baseType: !173)
!173 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !174, line: 25, baseType: !175)
!174 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !174, line: 25, elements: !176)
!176 = !{}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "poll_cnt", scope: !102, file: !103, line: 37, baseType: !7, size: 32, offset: 1440)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "poll_handler", scope: !102, file: !103, line: 38, baseType: !117, size: 64, offset: 1472)
!179 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !102, file: !103, line: 40, baseType: !101, size: 64, offset: 1536)
!180 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !102, file: !103, line: 40, baseType: !101, size: 64, offset: 1600)
!181 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !102, file: !103, line: 42, baseType: !182, size: 64, offset: 1664)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gameport_driver", file: !103, line: 51, size: 1472, elements: !184)
!184 = !{!185, !188, !192, !196, !197, !2098}
!185 = !DIDerivedType(tag: DW_TAG_member, name: "description", scope: !183, file: !103, line: 52, baseType: !186, size: 64)
!186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !187, size: 64)
!187 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !108)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "connect", scope: !183, file: !103, line: 54, baseType: !189, size: 64, offset: 64)
!189 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !190, size: 64)
!190 = !DISubroutineType(types: !191)
!191 = !{!113, !101, !182}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "reconnect", scope: !183, file: !103, line: 55, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!113, !101}
!196 = !DIDerivedType(tag: DW_TAG_member, name: "disconnect", scope: !183, file: !103, line: 56, baseType: !117, size: 64, offset: 192)
!197 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !183, file: !103, line: 58, baseType: !198, size: 1152, offset: 256)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !45, line: 95, size: 1152, elements: !199)
!199 = !{!200, !201, !2073, !2074, !2075, !2076, !2077, !2081, !2085, !2086, !2087, !2088, !2089, !2090, !2091, !2092, !2093, !2094, !2095}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !198, file: !45, line: 96, baseType: !186, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !198, file: !45, line: 97, baseType: !202, size: 64, offset: 64)
!202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !203, size: 64)
!203 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !204, line: 82, size: 1408, elements: !205)
!204 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!205 = !{!206, !207, !208, !2042, !2043, !2044, !2045, !2049, !2050, !2051, !2052, !2053, !2054, !2055, !2056, !2060, !2061, !2062, !2063, !2064, !2068, !2069, !2072}
!206 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !203, file: !204, line: 83, baseType: !186, size: 64)
!207 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !203, file: !204, line: 84, baseType: !186, size: 64, offset: 64)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !203, file: !204, line: 85, baseType: !209, size: 64, offset: 128)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !24, line: 461, size: 5568, elements: !211)
!211 = !{!212, !1685, !1686, !1689, !1690, !1741, !1742, !1744, !1745, !1746, !1747, !1756, !1854, !1867, !1870, !1871, !1875, !1877, !1878, !1879, !1883, !1889, !1890, !1893, !1897, !1987, !1990, !1991, !1992, !1993, !2030, !2031, !2032, !2035, !2038, !2039, !2040, !2041}
!212 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !210, file: !24, line: 462, baseType: !213, size: 512)
!213 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !214, line: 64, size: 512, elements: !215)
!214 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!215 = !{!216, !217, !223, !225, !270, !1521, !1675, !1680, !1681, !1682, !1683, !1684}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !213, file: !214, line: 65, baseType: !186, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !213, file: !214, line: 66, baseType: !218, size: 128, offset: 64)
!218 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !142, line: 178, size: 128, elements: !219)
!219 = !{!220, !222}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !218, file: !142, line: 179, baseType: !221, size: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!222 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !218, file: !142, line: 179, baseType: !221, size: 64, offset: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !213, file: !214, line: 67, baseType: !224, size: 64, offset: 192)
!224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !213, file: !214, line: 68, baseType: !226, size: 64, offset: 256)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !214, line: 192, size: 704, elements: !228)
!228 = !{!229, !230, !231, !232}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !227, file: !214, line: 193, baseType: !218, size: 128)
!230 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !227, file: !214, line: 194, baseType: !162, offset: 128)
!231 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !227, file: !214, line: 195, baseType: !213, size: 512, offset: 128)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !227, file: !214, line: 196, baseType: !233, size: 64, offset: 640)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !234, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !235)
!235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !214, line: 156, size: 192, elements: !236)
!236 = !{!237, !242, !247}
!237 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !235, file: !214, line: 157, baseType: !238, size: 64)
!238 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !239)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!113, !226, !224}
!242 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !235, file: !214, line: 158, baseType: !243, size: 64, offset: 64)
!243 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !244)
!244 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!245 = !DISubroutineType(types: !246)
!246 = !{!186, !226, !224}
!247 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !235, file: !214, line: 159, baseType: !248, size: 64, offset: 128)
!248 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !249)
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = !DISubroutineType(types: !251)
!251 = !{!113, !226, !224, !252}
!252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !253, size: 64)
!253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !214, line: 148, size: 20736, elements: !254)
!254 = !{!255, !260, !264, !265, !269}
!255 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !253, file: !214, line: 149, baseType: !256, size: 192)
!256 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 192, elements: !258)
!257 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !108, size: 64)
!258 = !{!259}
!259 = !DISubrange(count: 3)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !253, file: !214, line: 150, baseType: !261, size: 4096, offset: 192)
!261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !257, size: 4096, elements: !262)
!262 = !{!263}
!263 = !DISubrange(count: 64)
!264 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !253, file: !214, line: 151, baseType: !113, size: 32, offset: 4288)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !253, file: !214, line: 152, baseType: !266, size: 16384, offset: 4320)
!266 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 16384, elements: !267)
!267 = !{!268}
!268 = !DISubrange(count: 2048)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !253, file: !214, line: 153, baseType: !113, size: 32, offset: 20704)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !213, file: !214, line: 69, baseType: !271, size: 64, offset: 320)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !214, line: 138, size: 448, elements: !273)
!273 = !{!274, !278, !306, !308, !1469, !1500, !1504}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !272, file: !214, line: 139, baseType: !275, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !276, size: 64)
!276 = !DISubroutineType(types: !277)
!277 = !{null, !224}
!278 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !272, file: !214, line: 140, baseType: !279, size: 64, offset: 64)
!279 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !280, size: 64)
!280 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !281)
!281 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !282, line: 230, size: 128, elements: !283)
!282 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!283 = !{!284, !299}
!284 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !281, file: !282, line: 231, baseType: !285, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !286, size: 64)
!286 = !DISubroutineType(types: !287)
!287 = !{!288, !224, !292, !257}
!288 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !142, line: 60, baseType: !289)
!289 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !290, line: 73, baseType: !291)
!290 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!291 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !290, line: 15, baseType: !68)
!292 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !293, size: 64)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !282, line: 30, size: 128, elements: !294)
!294 = !{!295, !296}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !293, file: !282, line: 31, baseType: !186, size: 64)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !293, file: !282, line: 32, baseType: !297, size: 16, offset: 64)
!297 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !142, line: 19, baseType: !298)
!298 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !281, file: !282, line: 232, baseType: !300, size: 64, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !301, size: 64)
!301 = !DISubroutineType(types: !302)
!302 = !{!288, !224, !292, !186, !303}
!303 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !142, line: 55, baseType: !304)
!304 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !290, line: 72, baseType: !305)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !290, line: 16, baseType: !149)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !272, file: !214, line: 141, baseType: !307, size: 64, offset: 128)
!307 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !292, size: 64)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !272, file: !214, line: 142, baseType: !309, size: 64, offset: 192)
!309 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !310, size: 64)
!310 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !311, size: 64)
!311 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !312)
!312 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !282, line: 84, size: 320, elements: !313)
!313 = !{!314, !315, !319, !1466, !1467}
!314 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !312, file: !282, line: 85, baseType: !186, size: 64)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !312, file: !282, line: 86, baseType: !316, size: 64, offset: 64)
!316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !317, size: 64)
!317 = !DISubroutineType(types: !318)
!318 = !{!297, !224, !292, !113}
!319 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !312, file: !282, line: 88, baseType: !320, size: 64, offset: 128)
!320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !321, size: 64)
!321 = !DISubroutineType(types: !322)
!322 = !{!297, !224, !323, !113}
!323 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !324, size: 64)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !282, line: 168, size: 448, elements: !325)
!325 = !{!326, !327, !328, !329, !339, !340}
!326 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !324, file: !282, line: 169, baseType: !293, size: 128)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !324, file: !282, line: 170, baseType: !303, size: 64, offset: 128)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !324, file: !282, line: 171, baseType: !100, size: 64, offset: 192)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !324, file: !282, line: 172, baseType: !330, size: 64, offset: 256)
!330 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !331, size: 64)
!331 = !DISubroutineType(types: !332)
!332 = !{!288, !333, !224, !323, !257, !336, !303}
!333 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !334, size: 64)
!334 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !335, line: 526, flags: DIFlagFwdDecl)
!335 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !142, line: 46, baseType: !337)
!337 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !290, line: 88, baseType: !338)
!338 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !324, file: !282, line: 174, baseType: !330, size: 64, offset: 320)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !324, file: !282, line: 176, baseType: !341, size: 64, offset: 384)
!341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !342, size: 64)
!342 = !DISubroutineType(types: !343)
!343 = !{!113, !333, !224, !323, !344}
!344 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !345, size: 64)
!345 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !346, line: 305, size: 1472, elements: !347)
!346 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!347 = !{!348, !349, !350, !351, !352, !360, !361, !1440, !1446, !1447, !1452, !1453, !1456, !1460, !1461, !1462, !1463, !1464}
!348 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !345, file: !346, line: 308, baseType: !149, size: 64)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !345, file: !346, line: 309, baseType: !149, size: 64, offset: 64)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !345, file: !346, line: 313, baseType: !344, size: 64, offset: 128)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !345, file: !346, line: 313, baseType: !344, size: 64, offset: 192)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !345, file: !346, line: 315, baseType: !353, size: 192, align: 64, offset: 256)
!353 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !354, line: 24, size: 192, align: 64, elements: !355)
!354 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!355 = !{!356, !357, !359}
!356 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !353, file: !354, line: 25, baseType: !149, size: 64)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !353, file: !354, line: 26, baseType: !358, size: 64, offset: 64)
!358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !353, size: 64)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !353, file: !354, line: 27, baseType: !358, size: 64, offset: 128)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !345, file: !346, line: 323, baseType: !149, size: 64, offset: 448)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !345, file: !346, line: 327, baseType: !362, size: 64, offset: 512)
!362 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !363, size: 64)
!363 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !346, line: 388, size: 7296, elements: !364)
!364 = !{!365, !1436}
!365 = !DIDerivedType(tag: DW_TAG_member, scope: !363, file: !346, line: 389, baseType: !366, size: 7296)
!366 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !363, file: !346, line: 389, size: 7296, elements: !367)
!367 = !{!368, !369, !373, !377, !381, !382, !383, !384, !385, !393, !398, !399, !400, !401, !410, !411, !412, !421, !422, !423, !424, !425, !426, !427, !428, !429, !430, !431, !432, !433, !434, !435, !436, !437, !438, !439, !440, !441, !442, !443, !447, !455, !458, !506, !507, !1407, !1408, !1411, !1415, !1416, !1419, !1420, !1421, !1424, !1435}
!368 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !366, file: !346, line: 390, baseType: !344, size: 64)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !366, file: !346, line: 391, baseType: !370, size: 64, offset: 64)
!370 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !354, line: 31, size: 64, elements: !371)
!371 = !{!372}
!372 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !370, file: !354, line: 32, baseType: !358, size: 64)
!373 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !366, file: !346, line: 392, baseType: !374, size: 64, offset: 128)
!374 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !157, line: 23, baseType: !375)
!375 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !159, line: 31, baseType: !376)
!376 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !366, file: !346, line: 394, baseType: !378, size: 64, offset: 192)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DISubroutineType(types: !380)
!380 = !{!149, !333, !149, !149, !149, !149}
!381 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !366, file: !346, line: 398, baseType: !149, size: 64, offset: 256)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !366, file: !346, line: 399, baseType: !149, size: 64, offset: 320)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !366, file: !346, line: 405, baseType: !149, size: 64, offset: 384)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !366, file: !346, line: 406, baseType: !149, size: 64, offset: 448)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !366, file: !346, line: 407, baseType: !386, size: 64, offset: 512)
!386 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !387, size: 64)
!387 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !335, line: 286, baseType: !388)
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !335, line: 286, size: 64, elements: !389)
!389 = !{!390}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !388, file: !335, line: 286, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !392, line: 18, baseType: !149)
!392 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!393 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !366, file: !346, line: 416, baseType: !394, size: 32, offset: 576)
!394 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !142, line: 168, baseType: !395)
!395 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 166, size: 32, elements: !396)
!396 = !{!397}
!397 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !395, file: !142, line: 167, baseType: !113, size: 32)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !366, file: !346, line: 428, baseType: !394, size: 32, offset: 608)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !366, file: !346, line: 437, baseType: !394, size: 32, offset: 640)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !366, file: !346, line: 447, baseType: !394, size: 32, offset: 672)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !366, file: !346, line: 450, baseType: !402, size: 64, offset: 704)
!402 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !403, line: 13, baseType: !404)
!403 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!404 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !142, line: 175, baseType: !405)
!405 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !142, line: 173, size: 64, elements: !406)
!406 = !{!407}
!407 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !405, file: !142, line: 174, baseType: !408, size: 64)
!408 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !157, line: 22, baseType: !409)
!409 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !159, line: 30, baseType: !338)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !366, file: !346, line: 452, baseType: !113, size: 32, offset: 768)
!411 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !366, file: !346, line: 454, baseType: !162, offset: 800)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !366, file: !346, line: 457, baseType: !413, size: 256, offset: 832)
!413 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !414, line: 35, size: 256, elements: !415)
!414 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!415 = !{!416, !417, !418, !420}
!416 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !413, file: !414, line: 36, baseType: !402, size: 64)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !413, file: !414, line: 42, baseType: !402, size: 64, offset: 64)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !413, file: !414, line: 46, baseType: !419, offset: 128)
!419 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !163, line: 29, baseType: !170)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !413, file: !414, line: 47, baseType: !218, size: 128, offset: 128)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !366, file: !346, line: 459, baseType: !218, size: 128, offset: 1088)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !366, file: !346, line: 466, baseType: !149, size: 64, offset: 1216)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !366, file: !346, line: 467, baseType: !149, size: 64, offset: 1280)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !366, file: !346, line: 469, baseType: !149, size: 64, offset: 1344)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !366, file: !346, line: 470, baseType: !149, size: 64, offset: 1408)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !366, file: !346, line: 471, baseType: !404, size: 64, offset: 1472)
!427 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !366, file: !346, line: 472, baseType: !149, size: 64, offset: 1536)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !366, file: !346, line: 473, baseType: !149, size: 64, offset: 1600)
!429 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !366, file: !346, line: 474, baseType: !149, size: 64, offset: 1664)
!430 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !366, file: !346, line: 475, baseType: !149, size: 64, offset: 1728)
!431 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !366, file: !346, line: 477, baseType: !162, offset: 1792)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !366, file: !346, line: 478, baseType: !149, size: 64, offset: 1792)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !366, file: !346, line: 478, baseType: !149, size: 64, offset: 1856)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !366, file: !346, line: 478, baseType: !149, size: 64, offset: 1920)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !366, file: !346, line: 478, baseType: !149, size: 64, offset: 1984)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !366, file: !346, line: 479, baseType: !149, size: 64, offset: 2048)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !366, file: !346, line: 479, baseType: !149, size: 64, offset: 2112)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !366, file: !346, line: 479, baseType: !149, size: 64, offset: 2176)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !366, file: !346, line: 480, baseType: !149, size: 64, offset: 2240)
!440 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !366, file: !346, line: 480, baseType: !149, size: 64, offset: 2304)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !366, file: !346, line: 480, baseType: !149, size: 64, offset: 2368)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !366, file: !346, line: 480, baseType: !149, size: 64, offset: 2432)
!443 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !366, file: !346, line: 482, baseType: !444, size: 2816, offset: 2496)
!444 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 2816, elements: !445)
!445 = !{!446}
!446 = !DISubrange(count: 44)
!447 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !366, file: !346, line: 488, baseType: !448, size: 256, offset: 5312)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !449, line: 60, size: 256, elements: !450)
!449 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!450 = !{!451}
!451 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !448, file: !449, line: 61, baseType: !452, size: 256)
!452 = !DICompositeType(tag: DW_TAG_array_type, baseType: !402, size: 256, elements: !453)
!453 = !{!454}
!454 = !DISubrange(count: 4)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !366, file: !346, line: 490, baseType: !456, size: 64, offset: 5568)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !346, line: 490, flags: DIFlagFwdDecl)
!458 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !366, file: !346, line: 493, baseType: !459, size: 896, offset: 5632)
!459 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !460, line: 53, baseType: !461)
!460 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!461 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !460, line: 13, size: 896, elements: !462)
!462 = !{!463, !464, !465, !466, !469, !470, !477, !478, !498, !499, !502}
!463 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !461, file: !460, line: 18, baseType: !374, size: 64)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !461, file: !460, line: 28, baseType: !404, size: 64, offset: 64)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !461, file: !460, line: 31, baseType: !413, size: 256, offset: 128)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !461, file: !460, line: 32, baseType: !467, size: 64, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !468, size: 64)
!468 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !460, line: 32, flags: DIFlagFwdDecl)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !461, file: !460, line: 37, baseType: !298, size: 16, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !461, file: !460, line: 40, baseType: !471, size: 192, offset: 512)
!471 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !472, line: 53, size: 192, elements: !473)
!472 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!473 = !{!474, !475, !476}
!474 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !471, file: !472, line: 54, baseType: !402, size: 64)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !471, file: !472, line: 55, baseType: !162, offset: 64)
!476 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !471, file: !472, line: 59, baseType: !218, size: 128, offset: 64)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !461, file: !460, line: 41, baseType: !100, size: 64, offset: 704)
!478 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !461, file: !460, line: 42, baseType: !479, size: 64, offset: 768)
!479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !480, size: 64)
!480 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !481)
!481 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !482, line: 13, size: 896, elements: !483)
!482 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!483 = !{!484, !485, !486, !487, !488, !489, !490, !491, !492, !493, !494, !495, !496, !497}
!484 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !481, file: !482, line: 14, baseType: !100, size: 64)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !481, file: !482, line: 15, baseType: !149, size: 64, offset: 64)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !481, file: !482, line: 17, baseType: !149, size: 64, offset: 128)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !481, file: !482, line: 17, baseType: !149, size: 64, offset: 192)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !481, file: !482, line: 19, baseType: !68, size: 64, offset: 256)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !481, file: !482, line: 21, baseType: !68, size: 64, offset: 320)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !481, file: !482, line: 22, baseType: !68, size: 64, offset: 384)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !481, file: !482, line: 23, baseType: !68, size: 64, offset: 448)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !481, file: !482, line: 24, baseType: !68, size: 64, offset: 512)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !481, file: !482, line: 25, baseType: !68, size: 64, offset: 576)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !481, file: !482, line: 26, baseType: !68, size: 64, offset: 640)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !481, file: !482, line: 27, baseType: !68, size: 64, offset: 704)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !481, file: !482, line: 28, baseType: !68, size: 64, offset: 768)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !481, file: !482, line: 29, baseType: !68, size: 64, offset: 832)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !461, file: !460, line: 44, baseType: !394, size: 32, offset: 832)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !461, file: !460, line: 50, baseType: !500, size: 16, offset: 864)
!500 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !157, line: 19, baseType: !501)
!501 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !159, line: 24, baseType: !298)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !461, file: !460, line: 51, baseType: !503, size: 16, offset: 880)
!503 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !157, line: 18, baseType: !504)
!504 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !159, line: 23, baseType: !505)
!505 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!506 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !366, file: !346, line: 495, baseType: !149, size: 64, offset: 6528)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !366, file: !346, line: 497, baseType: !508, size: 64, offset: 6592)
!508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !509, size: 64)
!509 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !346, line: 381, size: 384, elements: !510)
!510 = !{!511, !512, !1406}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !509, file: !346, line: 382, baseType: !394, size: 32)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !509, file: !346, line: 383, baseType: !513, size: 128, offset: 64)
!513 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !346, line: 376, size: 128, elements: !514)
!514 = !{!515, !1404}
!515 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !513, file: !346, line: 377, baseType: !516, size: 64)
!516 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !517, size: 64)
!517 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !518, line: 640, size: 48640, elements: !519)
!518 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!519 = !{!520, !526, !528, !529, !535, !536, !537, !538, !539, !540, !541, !542, !546, !564, !575, !669, !670, !671, !682, !683, !685, !686, !687, !688, !694, !695, !696, !697, !698, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !709, !767, !770, !771, !772, !773, !774, !775, !776, !777, !778, !779, !817, !819, !820, !821, !833, !834, !835, !836, !837, !838, !844, !845, !846, !847, !848, !849, !850, !862, !867, !872, !873, !874, !877, !881, !884, !887, !890, !893, !897, !900, !903, !909, !910, !911, !917, !918, !919, !920, !921, !930, !931, !932, !933, !934, !939, !940, !941, !944, !945, !948, !951, !954, !957, !960, !963, !964, !1044, !1047, !1050, !1051, !1054, !1055, !1056, !1062, !1063, !1064, !1077, !1078, !1079, !1091, !1096, !1099, !1197, !1198, !1199, !1200, !1201, !1202, !1203, !1204, !1221, !1222, !1223, !1224, !1225, !1226, !1227, !1228, !1229}
!520 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !517, file: !518, line: 646, baseType: !521, size: 128)
!521 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !522, line: 56, size: 128, elements: !523)
!522 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!523 = !{!524, !525}
!524 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !521, file: !522, line: 57, baseType: !149, size: 64)
!525 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !521, file: !522, line: 58, baseType: !156, size: 32, offset: 64)
!526 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !517, file: !518, line: 649, baseType: !527, size: 64, offset: 128)
!527 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !68)
!528 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !517, file: !518, line: 657, baseType: !100, size: 64, offset: 192)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !517, file: !518, line: 658, baseType: !530, size: 32, offset: 256)
!530 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !531, line: 113, baseType: !532)
!531 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !531, line: 111, size: 32, elements: !533)
!533 = !{!534}
!534 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !532, file: !531, line: 112, baseType: !394, size: 32)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !517, file: !518, line: 660, baseType: !7, size: 32, offset: 288)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !517, file: !518, line: 661, baseType: !7, size: 32, offset: 320)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !517, file: !518, line: 684, baseType: !113, size: 32, offset: 352)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !517, file: !518, line: 686, baseType: !113, size: 32, offset: 384)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !517, file: !518, line: 687, baseType: !113, size: 32, offset: 416)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !517, file: !518, line: 688, baseType: !113, size: 32, offset: 448)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !517, file: !518, line: 689, baseType: !7, size: 32, offset: 480)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !517, file: !518, line: 691, baseType: !543, size: 64, offset: 512)
!543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !544, size: 64)
!544 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !545)
!545 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !518, line: 691, flags: DIFlagFwdDecl)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !517, file: !518, line: 692, baseType: !547, size: 832, offset: 576)
!547 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !518, line: 451, size: 832, elements: !548)
!548 = !{!549, !554, !555, !556, !557, !558, !559, !560, !561, !562}
!549 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !547, file: !518, line: 453, baseType: !550, size: 128)
!550 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !518, line: 325, size: 128, elements: !551)
!551 = !{!552, !553}
!552 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !550, file: !518, line: 326, baseType: !149, size: 64)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !550, file: !518, line: 327, baseType: !156, size: 32, offset: 64)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !547, file: !518, line: 454, baseType: !353, size: 192, align: 64, offset: 128)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !547, file: !518, line: 455, baseType: !218, size: 128, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !547, file: !518, line: 456, baseType: !7, size: 32, offset: 448)
!557 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !547, file: !518, line: 458, baseType: !374, size: 64, offset: 512)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !547, file: !518, line: 459, baseType: !374, size: 64, offset: 576)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !547, file: !518, line: 460, baseType: !374, size: 64, offset: 640)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !547, file: !518, line: 461, baseType: !374, size: 64, offset: 704)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !547, file: !518, line: 463, baseType: !374, size: 64, offset: 768)
!562 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !547, file: !518, line: 465, baseType: !563, offset: 832)
!563 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !518, line: 415, elements: !176)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !517, file: !518, line: 693, baseType: !565, size: 384, offset: 1408)
!565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !518, line: 489, size: 384, elements: !566)
!566 = !{!567, !568, !569, !570, !571, !572, !573}
!567 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !565, file: !518, line: 490, baseType: !218, size: 128)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !565, file: !518, line: 491, baseType: !149, size: 64, offset: 128)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !565, file: !518, line: 492, baseType: !149, size: 64, offset: 192)
!570 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !565, file: !518, line: 493, baseType: !7, size: 32, offset: 256)
!571 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !565, file: !518, line: 494, baseType: !298, size: 16, offset: 288)
!572 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !565, file: !518, line: 495, baseType: !298, size: 16, offset: 304)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !565, file: !518, line: 497, baseType: !574, size: 64, offset: 320)
!574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !565, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !517, file: !518, line: 697, baseType: !576, size: 1792, offset: 1792)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !518, line: 507, size: 1792, elements: !577)
!577 = !{!578, !579, !580, !581, !582, !583, !584, !585, !586, !587, !588, !589, !590, !591, !666, !667}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !576, file: !518, line: 508, baseType: !353, size: 192, align: 64)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !576, file: !518, line: 515, baseType: !374, size: 64, offset: 192)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !576, file: !518, line: 516, baseType: !374, size: 64, offset: 256)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !576, file: !518, line: 517, baseType: !374, size: 64, offset: 320)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !576, file: !518, line: 518, baseType: !374, size: 64, offset: 384)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !576, file: !518, line: 519, baseType: !374, size: 64, offset: 448)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !576, file: !518, line: 526, baseType: !408, size: 64, offset: 512)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !576, file: !518, line: 527, baseType: !374, size: 64, offset: 576)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !576, file: !518, line: 528, baseType: !7, size: 32, offset: 640)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !576, file: !518, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !576, file: !518, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !576, file: !518, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!590 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !576, file: !518, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!591 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !576, file: !518, line: 563, baseType: !592, size: 512, offset: 704)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !593)
!593 = !{!594, !602, !603, !608, !660, !663, !664, !665}
!594 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !592, file: !6, line: 119, baseType: !595, size: 256)
!595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !596, line: 9, size: 256, elements: !597)
!596 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!597 = !{!598, !599}
!598 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !595, file: !596, line: 10, baseType: !353, size: 192, align: 64)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !595, file: !596, line: 11, baseType: !600, size: 64, offset: 192)
!600 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !601, line: 29, baseType: !408)
!601 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!602 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !592, file: !6, line: 120, baseType: !600, size: 64, offset: 256)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !592, file: !6, line: 121, baseType: !604, size: 64, offset: 320)
!604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !605, size: 64)
!605 = !DISubroutineType(types: !606)
!606 = !{!5, !607}
!607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !592, size: 64)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !592, file: !6, line: 122, baseType: !609, size: 64, offset: 384)
!609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !610, size: 64)
!610 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !611)
!611 = !{!612, !632, !633, !636, !646, !647, !655, !659}
!612 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !610, file: !6, line: 160, baseType: !613, size: 64)
!613 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !614, size: 64)
!614 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !615)
!615 = !{!616, !617, !618, !619, !620, !621, !622, !623, !624, !625, !626, !627, !628}
!616 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !614, file: !6, line: 215, baseType: !419)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !614, file: !6, line: 216, baseType: !7, size: 32)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !614, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !614, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !614, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !614, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !614, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !614, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !614, file: !6, line: 233, baseType: !600, size: 64, offset: 128)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !614, file: !6, line: 234, baseType: !607, size: 64, offset: 192)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !614, file: !6, line: 235, baseType: !600, size: 64, offset: 256)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !614, file: !6, line: 236, baseType: !607, size: 64, offset: 320)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !614, file: !6, line: 237, baseType: !629, size: 4096, offset: 512)
!629 = !DICompositeType(tag: DW_TAG_array_type, baseType: !610, size: 4096, elements: !630)
!630 = !{!631}
!631 = !DISubrange(count: 8)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !610, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !610, file: !6, line: 162, baseType: !634, size: 32, offset: 96)
!634 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !142, line: 27, baseType: !635)
!635 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !290, line: 96, baseType: !113)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !610, file: !6, line: 163, baseType: !637, size: 32, offset: 128)
!637 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !638, line: 276, baseType: !639)
!638 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !638, line: 276, size: 32, elements: !640)
!640 = !{!641}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !639, file: !638, line: 276, baseType: !642, size: 32)
!642 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !638, line: 70, baseType: !643)
!643 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !638, line: 65, size: 32, elements: !644)
!644 = !{!645}
!645 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !643, file: !638, line: 66, baseType: !7, size: 32)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !610, file: !6, line: 164, baseType: !607, size: 64, offset: 192)
!647 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !610, file: !6, line: 165, baseType: !648, size: 128, offset: 256)
!648 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !596, line: 14, size: 128, elements: !649)
!649 = !{!650}
!650 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !648, file: !596, line: 15, baseType: !651, size: 128)
!651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !354, line: 125, size: 128, elements: !652)
!652 = !{!653, !654}
!653 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !651, file: !354, line: 126, baseType: !370, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !651, file: !354, line: 127, baseType: !358, size: 64, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !610, file: !6, line: 166, baseType: !656, size: 64, offset: 384)
!656 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!657 = !DISubroutineType(types: !658)
!658 = !{!600}
!659 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !610, file: !6, line: 167, baseType: !600, size: 64, offset: 448)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !592, file: !6, line: 123, baseType: !661, size: 8, offset: 448)
!661 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !157, line: 17, baseType: !662)
!662 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !159, line: 21, baseType: !124)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !592, file: !6, line: 124, baseType: !661, size: 8, offset: 456)
!664 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !592, file: !6, line: 125, baseType: !661, size: 8, offset: 464)
!665 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !592, file: !6, line: 126, baseType: !661, size: 8, offset: 472)
!666 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !576, file: !518, line: 572, baseType: !592, size: 512, offset: 1216)
!667 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !576, file: !518, line: 580, baseType: !668, size: 64, offset: 1728)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !576, size: 64)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !517, file: !518, line: 721, baseType: !7, size: 32, offset: 3584)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !517, file: !518, line: 722, baseType: !113, size: 32, offset: 3616)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !517, file: !518, line: 723, baseType: !672, size: 64, offset: 3648)
!672 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !674)
!674 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !675, line: 17, baseType: !676)
!675 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !675, line: 17, size: 64, elements: !677)
!677 = !{!678}
!678 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !676, file: !675, line: 17, baseType: !679, size: 64)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, size: 64, elements: !680)
!680 = !{!681}
!681 = !DISubrange(count: 1)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !517, file: !518, line: 724, baseType: !674, size: 64, offset: 3712)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !517, file: !518, line: 749, baseType: !684, offset: 3776)
!684 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !518, line: 290, elements: !176)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !517, file: !518, line: 751, baseType: !218, size: 128, offset: 3776)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !517, file: !518, line: 757, baseType: !362, size: 64, offset: 3904)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !517, file: !518, line: 758, baseType: !362, size: 64, offset: 3968)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !517, file: !518, line: 761, baseType: !689, size: 320, offset: 4032)
!689 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !449, line: 34, size: 320, elements: !690)
!690 = !{!691, !692}
!691 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !689, file: !449, line: 35, baseType: !374, size: 64)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !689, file: !449, line: 36, baseType: !693, size: 256, offset: 64)
!693 = !DICompositeType(tag: DW_TAG_array_type, baseType: !344, size: 256, elements: !453)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !517, file: !518, line: 766, baseType: !113, size: 32, offset: 4352)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !517, file: !518, line: 767, baseType: !113, size: 32, offset: 4384)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !517, file: !518, line: 768, baseType: !113, size: 32, offset: 4416)
!697 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !517, file: !518, line: 770, baseType: !113, size: 32, offset: 4448)
!698 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !517, file: !518, line: 772, baseType: !149, size: 64, offset: 4480)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !517, file: !518, line: 775, baseType: !7, size: 32, offset: 4544)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !517, file: !518, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !517, file: !518, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !517, file: !518, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !517, file: !518, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !517, file: !518, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !517, file: !518, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !517, file: !518, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !517, file: !518, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !517, file: !518, line: 831, baseType: !149, size: 64, offset: 4672)
!709 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !517, file: !518, line: 833, baseType: !710, size: 384, offset: 4736)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !711)
!711 = !{!712, !717}
!712 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !710, file: !12, line: 26, baseType: !713, size: 64)
!713 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !714, size: 64)
!714 = !DISubroutineType(types: !715)
!715 = !{!68, !716}
!716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!717 = !DIDerivedType(tag: DW_TAG_member, scope: !710, file: !12, line: 27, baseType: !718, size: 320, offset: 64)
!718 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !710, file: !12, line: 27, size: 320, elements: !719)
!719 = !{!720, !730, !757}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !718, file: !12, line: 36, baseType: !721, size: 320)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !12, line: 29, size: 320, elements: !722)
!722 = !{!723, !725, !726, !727, !728, !729}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !721, file: !12, line: 30, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !156, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !721, file: !12, line: 31, baseType: !156, size: 32, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !721, file: !12, line: 32, baseType: !156, size: 32, offset: 96)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !721, file: !12, line: 33, baseType: !156, size: 32, offset: 128)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !721, file: !12, line: 34, baseType: !374, size: 64, offset: 192)
!729 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !721, file: !12, line: 35, baseType: !724, size: 64, offset: 256)
!730 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !718, file: !12, line: 46, baseType: !731, size: 192)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !12, line: 38, size: 192, elements: !732)
!732 = !{!733, !734, !735, !756}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !731, file: !12, line: 39, baseType: !634, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !731, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!735 = !DIDerivedType(tag: DW_TAG_member, scope: !731, file: !12, line: 41, baseType: !736, size: 64, offset: 64)
!736 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !731, file: !12, line: 41, size: 64, elements: !737)
!737 = !{!738, !746}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !736, file: !12, line: 42, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !740, size: 64)
!740 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !741, line: 7, size: 128, elements: !742)
!741 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!742 = !{!743, !745}
!743 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !740, file: !741, line: 8, baseType: !744, size: 64)
!744 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !290, line: 93, baseType: !338)
!745 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !740, file: !741, line: 9, baseType: !338, size: 64, offset: 64)
!746 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !736, file: !12, line: 43, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !749, line: 7, size: 64, elements: !750)
!749 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !755}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !748, file: !749, line: 8, baseType: !752, size: 32)
!752 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !749, line: 5, baseType: !753)
!753 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !157, line: 20, baseType: !754)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !159, line: 26, baseType: !113)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !748, file: !749, line: 9, baseType: !753, size: 32, offset: 32)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !731, file: !12, line: 45, baseType: !374, size: 64, offset: 128)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !718, file: !12, line: 54, baseType: !758, size: 256)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !718, file: !12, line: 48, size: 256, elements: !759)
!759 = !{!760, !763, !764, !765, !766}
!760 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !758, file: !12, line: 49, baseType: !761, size: 64)
!761 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !762, size: 64)
!762 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !758, file: !12, line: 50, baseType: !113, size: 32, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !758, file: !12, line: 51, baseType: !113, size: 32, offset: 96)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !758, file: !12, line: 52, baseType: !149, size: 64, offset: 128)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !758, file: !12, line: 53, baseType: !149, size: 64, offset: 192)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !517, file: !518, line: 835, baseType: !768, size: 32, offset: 5120)
!768 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !142, line: 22, baseType: !769)
!769 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !290, line: 28, baseType: !113)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !517, file: !518, line: 836, baseType: !768, size: 32, offset: 5152)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !517, file: !518, line: 840, baseType: !149, size: 64, offset: 5184)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !517, file: !518, line: 849, baseType: !516, size: 64, offset: 5248)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !517, file: !518, line: 852, baseType: !516, size: 64, offset: 5312)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !517, file: !518, line: 857, baseType: !218, size: 128, offset: 5376)
!775 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !517, file: !518, line: 858, baseType: !218, size: 128, offset: 5504)
!776 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !517, file: !518, line: 859, baseType: !516, size: 64, offset: 5632)
!777 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !517, file: !518, line: 867, baseType: !218, size: 128, offset: 5696)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !517, file: !518, line: 868, baseType: !218, size: 128, offset: 5824)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !517, file: !518, line: 871, baseType: !780, size: 64, offset: 5952)
!780 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !781, size: 64)
!781 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !782, line: 59, size: 768, elements: !783)
!782 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!783 = !{!784, !785, !786, !787, !792, !793, !800, !809}
!784 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !781, file: !782, line: 61, baseType: !530, size: 32)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !781, file: !782, line: 62, baseType: !7, size: 32, offset: 32)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !781, file: !782, line: 63, baseType: !162, offset: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !781, file: !782, line: 65, baseType: !788, size: 256, offset: 64)
!788 = !DICompositeType(tag: DW_TAG_array_type, baseType: !789, size: 256, elements: !453)
!789 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !142, line: 182, size: 64, elements: !790)
!790 = !{!791}
!791 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !789, file: !142, line: 183, baseType: !145, size: 64)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !781, file: !782, line: 66, baseType: !789, size: 64, offset: 320)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !781, file: !782, line: 68, baseType: !794, size: 128, offset: 384)
!794 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !795, line: 40, baseType: !796)
!795 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!796 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !795, line: 36, size: 128, elements: !797)
!797 = !{!798, !799}
!798 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !796, file: !795, line: 37, baseType: !162)
!799 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !796, file: !795, line: 38, baseType: !218, size: 128)
!800 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !781, file: !782, line: 69, baseType: !801, size: 128, align: 64, offset: 512)
!801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !142, line: 216, size: 128, align: 64, elements: !802)
!802 = !{!803, !805}
!803 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !801, file: !142, line: 217, baseType: !804, size: 64)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !801, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !801, file: !142, line: 218, baseType: !806, size: 64, offset: 64)
!806 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !807, size: 64)
!807 = !DISubroutineType(types: !808)
!808 = !{null, !804}
!809 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !781, file: !782, line: 70, baseType: !810, size: 128, offset: 640)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !811, size: 128, elements: !680)
!811 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !782, line: 54, size: 128, elements: !812)
!812 = !{!813, !814}
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !811, file: !782, line: 55, baseType: !113, size: 32)
!814 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !811, file: !782, line: 56, baseType: !815, size: 64, offset: 64)
!815 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !816, size: 64)
!816 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !782, line: 56, flags: DIFlagFwdDecl)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !517, file: !518, line: 872, baseType: !818, size: 512, offset: 6016)
!818 = !DICompositeType(tag: DW_TAG_array_type, baseType: !141, size: 512, elements: !453)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !517, file: !518, line: 873, baseType: !218, size: 128, offset: 6528)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !517, file: !518, line: 874, baseType: !218, size: 128, offset: 6656)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !517, file: !518, line: 876, baseType: !822, size: 64, offset: 6784)
!822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !823, size: 64)
!823 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !824, line: 26, size: 192, elements: !825)
!824 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!825 = !{!826, !827}
!826 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !823, file: !824, line: 27, baseType: !7, size: 32)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !823, file: !824, line: 28, baseType: !828, size: 128, offset: 64)
!828 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !829, line: 43, size: 128, elements: !830)
!829 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!830 = !{!831, !832}
!831 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !828, file: !829, line: 44, baseType: !419)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !828, file: !829, line: 45, baseType: !218, size: 128)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !517, file: !518, line: 879, baseType: !129, size: 64, offset: 6848)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !517, file: !518, line: 882, baseType: !129, size: 64, offset: 6912)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !517, file: !518, line: 884, baseType: !374, size: 64, offset: 6976)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !517, file: !518, line: 885, baseType: !374, size: 64, offset: 7040)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !517, file: !518, line: 890, baseType: !374, size: 64, offset: 7104)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !517, file: !518, line: 891, baseType: !839, size: 128, offset: 7168)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !518, line: 242, size: 128, elements: !840)
!840 = !{!841, !842, !843}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !839, file: !518, line: 244, baseType: !374, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !839, file: !518, line: 245, baseType: !374, size: 64, offset: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !839, file: !518, line: 246, baseType: !419, offset: 128)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !517, file: !518, line: 900, baseType: !149, size: 64, offset: 7296)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !517, file: !518, line: 901, baseType: !149, size: 64, offset: 7360)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !517, file: !518, line: 904, baseType: !374, size: 64, offset: 7424)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !517, file: !518, line: 907, baseType: !374, size: 64, offset: 7488)
!848 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !517, file: !518, line: 910, baseType: !149, size: 64, offset: 7552)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !517, file: !518, line: 911, baseType: !149, size: 64, offset: 7616)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !517, file: !518, line: 914, baseType: !851, size: 640, offset: 7680)
!851 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !852, line: 123, size: 640, elements: !853)
!852 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!853 = !{!854, !860, !861}
!854 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !851, file: !852, line: 124, baseType: !855, size: 576)
!855 = !DICompositeType(tag: DW_TAG_array_type, baseType: !856, size: 576, elements: !258)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !852, line: 108, size: 192, elements: !857)
!857 = !{!858, !859}
!858 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !856, file: !852, line: 109, baseType: !374, size: 64)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !856, file: !852, line: 110, baseType: !648, size: 128, offset: 64)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !851, file: !852, line: 125, baseType: !7, size: 32, offset: 576)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !851, file: !852, line: 126, baseType: !7, size: 32, offset: 608)
!862 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !517, file: !518, line: 917, baseType: !863, size: 192, offset: 8320)
!863 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !852, line: 134, size: 192, elements: !864)
!864 = !{!865, !866}
!865 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !863, file: !852, line: 135, baseType: !801, size: 128, align: 64)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !863, file: !852, line: 136, baseType: !7, size: 32, offset: 128)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !517, file: !518, line: 923, baseType: !868, size: 64, offset: 8512)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !870)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !871, line: 11, flags: DIFlagFwdDecl)
!871 = !DIFile(filename: "./include/linux/umh.h", directory: "/home/lizy2001/genbc/linux")
!872 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !517, file: !518, line: 926, baseType: !868, size: 64, offset: 8576)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !517, file: !518, line: 929, baseType: !868, size: 64, offset: 8640)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !517, file: !518, line: 933, baseType: !875, size: 64, offset: 8704)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !518, line: 933, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !517, file: !518, line: 943, baseType: !878, size: 128, offset: 8768)
!878 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 128, elements: !879)
!879 = !{!880}
!880 = !DISubrange(count: 16)
!881 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !517, file: !518, line: 945, baseType: !882, size: 64, offset: 8896)
!882 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !883, size: 64)
!883 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !518, line: 49, flags: DIFlagFwdDecl)
!884 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !517, file: !518, line: 956, baseType: !885, size: 64, offset: 8960)
!885 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !886, size: 64)
!886 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !518, line: 45, flags: DIFlagFwdDecl)
!887 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !517, file: !518, line: 959, baseType: !888, size: 64, offset: 9024)
!888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !889, size: 64)
!889 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !518, line: 959, flags: DIFlagFwdDecl)
!890 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !517, file: !518, line: 962, baseType: !891, size: 64, offset: 9088)
!891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !892, size: 64)
!892 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !518, line: 66, flags: DIFlagFwdDecl)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !517, file: !518, line: 966, baseType: !894, size: 64, offset: 9152)
!894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !895, size: 64)
!895 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !896, line: 35, flags: DIFlagFwdDecl)
!896 = !DIFile(filename: "./include/linux/sysctl.h", directory: "/home/lizy2001/genbc/linux")
!897 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !517, file: !518, line: 969, baseType: !898, size: 64, offset: 9216)
!898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !899, size: 64)
!899 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !852, line: 223, flags: DIFlagFwdDecl)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !517, file: !518, line: 970, baseType: !901, size: 64, offset: 9280)
!901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !902, size: 64)
!902 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !518, line: 62, flags: DIFlagFwdDecl)
!903 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !517, file: !518, line: 971, baseType: !904, size: 64, offset: 9344)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !905, line: 25, baseType: !906)
!905 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!906 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !905, line: 23, size: 64, elements: !907)
!907 = !{!908}
!908 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !906, file: !905, line: 24, baseType: !679, size: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !517, file: !518, line: 972, baseType: !904, size: 64, offset: 9408)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !517, file: !518, line: 974, baseType: !904, size: 64, offset: 9472)
!911 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !517, file: !518, line: 975, baseType: !912, size: 192, offset: 9536)
!912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !913, line: 30, size: 192, elements: !914)
!913 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!914 = !{!915, !916}
!915 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !912, file: !913, line: 31, baseType: !218, size: 128)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !912, file: !913, line: 32, baseType: !904, size: 64, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !517, file: !518, line: 976, baseType: !149, size: 64, offset: 9728)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !517, file: !518, line: 977, baseType: !303, size: 64, offset: 9792)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !517, file: !518, line: 978, baseType: !7, size: 32, offset: 9856)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !517, file: !518, line: 980, baseType: !804, size: 64, offset: 9920)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !517, file: !518, line: 989, baseType: !922, size: 128, offset: 9984)
!922 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !923, line: 35, size: 128, elements: !924)
!923 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!924 = !{!925, !926, !927}
!925 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !922, file: !923, line: 36, baseType: !113, size: 32)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !922, file: !923, line: 37, baseType: !394, size: 32, offset: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !922, file: !923, line: 38, baseType: !928, size: 64, offset: 64)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !923, line: 23, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !517, file: !518, line: 992, baseType: !374, size: 64, offset: 10112)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !517, file: !518, line: 993, baseType: !374, size: 64, offset: 10176)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !517, file: !518, line: 996, baseType: !162, offset: 10240)
!933 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !517, file: !518, line: 999, baseType: !419, offset: 10240)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !517, file: !518, line: 1001, baseType: !935, size: 64, offset: 10240)
!935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !518, line: 636, size: 64, elements: !936)
!936 = !{!937}
!937 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !935, file: !518, line: 637, baseType: !938, size: 64)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !935, size: 64)
!939 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !517, file: !518, line: 1005, baseType: !651, size: 128, offset: 10304)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !517, file: !518, line: 1007, baseType: !516, size: 64, offset: 10432)
!941 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !517, file: !518, line: 1009, baseType: !942, size: 64, offset: 10496)
!942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !943, size: 64)
!943 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !518, line: 1009, flags: DIFlagFwdDecl)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !517, file: !518, line: 1043, baseType: !100, size: 64, offset: 10560)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !517, file: !518, line: 1046, baseType: !946, size: 64, offset: 10624)
!946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !947, size: 64)
!947 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !518, line: 41, flags: DIFlagFwdDecl)
!948 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !517, file: !518, line: 1050, baseType: !949, size: 64, offset: 10688)
!949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !950, size: 64)
!950 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !518, line: 42, flags: DIFlagFwdDecl)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !517, file: !518, line: 1054, baseType: !952, size: 64, offset: 10752)
!952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !953, size: 64)
!953 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !518, line: 55, flags: DIFlagFwdDecl)
!954 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !517, file: !518, line: 1056, baseType: !955, size: 64, offset: 10816)
!955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !956, size: 64)
!956 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !518, line: 40, flags: DIFlagFwdDecl)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !517, file: !518, line: 1058, baseType: !958, size: 64, offset: 10880)
!958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !518, line: 47, flags: DIFlagFwdDecl)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !517, file: !518, line: 1061, baseType: !961, size: 64, offset: 10944)
!961 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !962, size: 64)
!962 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !518, line: 43, flags: DIFlagFwdDecl)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !517, file: !518, line: 1064, baseType: !149, size: 64, offset: 11008)
!964 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !517, file: !518, line: 1065, baseType: !965, size: 64, offset: 11072)
!965 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !966, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !913, line: 14, baseType: !967)
!967 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !913, line: 12, size: 384, elements: !968)
!968 = !{!969}
!969 = !DIDerivedType(tag: DW_TAG_member, scope: !967, file: !913, line: 13, baseType: !970, size: 384)
!970 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !967, file: !913, line: 13, size: 384, elements: !971)
!971 = !{!972, !973, !974, !975}
!972 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !970, file: !913, line: 13, baseType: !113, size: 32)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !970, file: !913, line: 13, baseType: !113, size: 32, offset: 32)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !970, file: !913, line: 13, baseType: !113, size: 32, offset: 64)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !970, file: !913, line: 13, baseType: !976, size: 256, offset: 128)
!976 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !977, line: 32, size: 256, elements: !978)
!977 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!978 = !{!979, !985, !998, !1004, !1013, !1033, !1038}
!979 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !976, file: !977, line: 37, baseType: !980, size: 64)
!980 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 34, size: 64, elements: !981)
!981 = !{!982, !983}
!982 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !980, file: !977, line: 35, baseType: !769, size: 32)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !980, file: !977, line: 36, baseType: !984, size: 32, offset: 32)
!984 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !290, line: 49, baseType: !7)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !976, file: !977, line: 45, baseType: !986, size: 192)
!986 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 40, size: 192, elements: !987)
!987 = !{!988, !990, !991, !997}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !986, file: !977, line: 41, baseType: !989, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !290, line: 95, baseType: !113)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !986, file: !977, line: 42, baseType: !113, size: 32, offset: 32)
!991 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !986, file: !977, line: 43, baseType: !992, size: 64, offset: 64)
!992 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !977, line: 11, baseType: !993)
!993 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !977, line: 8, size: 64, elements: !994)
!994 = !{!995, !996}
!995 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !993, file: !977, line: 9, baseType: !113, size: 32)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !993, file: !977, line: 10, baseType: !100, size: 64)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !986, file: !977, line: 44, baseType: !113, size: 32, offset: 128)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !976, file: !977, line: 52, baseType: !999, size: 128)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 48, size: 128, elements: !1000)
!1000 = !{!1001, !1002, !1003}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !999, file: !977, line: 49, baseType: !769, size: 32)
!1002 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !999, file: !977, line: 50, baseType: !984, size: 32, offset: 32)
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !999, file: !977, line: 51, baseType: !992, size: 64, offset: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !976, file: !977, line: 61, baseType: !1005, size: 256)
!1005 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 55, size: 256, elements: !1006)
!1006 = !{!1007, !1008, !1009, !1010, !1012}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !1005, file: !977, line: 56, baseType: !769, size: 32)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !1005, file: !977, line: 57, baseType: !984, size: 32, offset: 32)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !1005, file: !977, line: 58, baseType: !113, size: 32, offset: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !1005, file: !977, line: 59, baseType: !1011, size: 64, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !290, line: 94, baseType: !291)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !1005, file: !977, line: 60, baseType: !1011, size: 64, offset: 192)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !976, file: !977, line: 95, baseType: !1014, size: 256)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 64, size: 256, elements: !1015)
!1015 = !{!1016, !1017}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1014, file: !977, line: 65, baseType: !100, size: 64)
!1017 = !DIDerivedType(tag: DW_TAG_member, scope: !1014, file: !977, line: 77, baseType: !1018, size: 192, offset: 64)
!1018 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1014, file: !977, line: 77, size: 192, elements: !1019)
!1019 = !{!1020, !1021, !1028}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1018, file: !977, line: 82, baseType: !505, size: 16)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1018, file: !977, line: 88, baseType: !1022, size: 192)
!1022 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !977, line: 84, size: 192, elements: !1023)
!1023 = !{!1024, !1026, !1027}
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1022, file: !977, line: 85, baseType: !1025, size: 64)
!1025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !108, size: 64, elements: !630)
!1026 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1022, file: !977, line: 86, baseType: !100, size: 64, offset: 64)
!1027 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1022, file: !977, line: 87, baseType: !100, size: 64, offset: 128)
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1018, file: !977, line: 93, baseType: !1029, size: 96)
!1029 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1018, file: !977, line: 90, size: 96, elements: !1030)
!1030 = !{!1031, !1032}
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1029, file: !977, line: 91, baseType: !1025, size: 64)
!1032 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1029, file: !977, line: 92, baseType: !158, size: 32, offset: 64)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !976, file: !977, line: 101, baseType: !1034, size: 128)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 98, size: 128, elements: !1035)
!1035 = !{!1036, !1037}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1034, file: !977, line: 99, baseType: !68, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1034, file: !977, line: 100, baseType: !113, size: 32, offset: 64)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !976, file: !977, line: 108, baseType: !1039, size: 128)
!1039 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !976, file: !977, line: 104, size: 128, elements: !1040)
!1040 = !{!1041, !1042, !1043}
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1039, file: !977, line: 105, baseType: !100, size: 64)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1039, file: !977, line: 106, baseType: !113, size: 32, offset: 64)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1039, file: !977, line: 107, baseType: !7, size: 32, offset: 96)
!1044 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !517, file: !518, line: 1067, baseType: !1045, offset: 11136)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1046, line: 12, elements: !176)
!1046 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !517, file: !518, line: 1099, baseType: !1048, size: 64, offset: 11136)
!1048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1049, size: 64)
!1049 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !518, line: 56, flags: DIFlagFwdDecl)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !517, file: !518, line: 1103, baseType: !218, size: 128, offset: 11200)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !517, file: !518, line: 1104, baseType: !1052, size: 64, offset: 11328)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !518, line: 46, flags: DIFlagFwdDecl)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !517, file: !518, line: 1105, baseType: !471, size: 192, offset: 11392)
!1055 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !517, file: !518, line: 1106, baseType: !7, size: 32, offset: 11584)
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !517, file: !518, line: 1109, baseType: !1057, size: 128, offset: 11648)
!1057 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1058, size: 128, elements: !1060)
!1058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1059, size: 64)
!1059 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !518, line: 51, flags: DIFlagFwdDecl)
!1060 = !{!1061}
!1061 = !DISubrange(count: 2)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !517, file: !518, line: 1110, baseType: !471, size: 192, offset: 11776)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !517, file: !518, line: 1111, baseType: !218, size: 128, offset: 11968)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !517, file: !518, line: 1173, baseType: !1065, size: 64, offset: 12096)
!1065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1066, size: 64)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1067, line: 62, size: 256, align: 256, elements: !1068)
!1067 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1068 = !{!1069, !1070, !1071, !1076}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1066, file: !1067, line: 75, baseType: !158, size: 32)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1066, file: !1067, line: 90, baseType: !158, size: 32, offset: 32)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1066, file: !1067, line: 124, baseType: !1072, size: 64, offset: 64)
!1072 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1066, file: !1067, line: 109, size: 64, elements: !1073)
!1073 = !{!1074, !1075}
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1072, file: !1067, line: 110, baseType: !375, size: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1072, file: !1067, line: 112, baseType: !375, size: 64)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1066, file: !1067, line: 144, baseType: !158, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !517, file: !518, line: 1174, baseType: !156, size: 32, offset: 12160)
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !517, file: !518, line: 1179, baseType: !149, size: 64, offset: 12224)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !517, file: !518, line: 1182, baseType: !1080, size: 128, offset: 12288)
!1080 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !449, line: 76, size: 128, elements: !1081)
!1081 = !{!1082, !1087, !1090}
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1080, file: !449, line: 85, baseType: !1083, size: 64)
!1083 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1084, line: 7, size: 64, elements: !1085)
!1084 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1085 = !{!1086}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1083, file: !1084, line: 12, baseType: !676, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1080, file: !449, line: 88, baseType: !1088, size: 8, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !142, line: 30, baseType: !1089)
!1089 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1080, file: !449, line: 95, baseType: !1088, size: 8, offset: 72)
!1091 = !DIDerivedType(tag: DW_TAG_member, scope: !517, file: !518, line: 1184, baseType: !1092, size: 128, offset: 12416)
!1092 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !517, file: !518, line: 1184, size: 128, elements: !1093)
!1093 = !{!1094, !1095}
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1092, file: !518, line: 1185, baseType: !530, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1092, file: !518, line: 1186, baseType: !801, size: 128, align: 64)
!1096 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !517, file: !518, line: 1190, baseType: !1097, size: 64, offset: 12544)
!1097 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1098, size: 64)
!1098 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !518, line: 53, flags: DIFlagFwdDecl)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !517, file: !518, line: 1192, baseType: !1100, size: 128, offset: 12608)
!1100 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !449, line: 64, size: 128, elements: !1101)
!1101 = !{!1102, !1195, !1196}
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1100, file: !449, line: 65, baseType: !1103, size: 64)
!1103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1104, size: 64)
!1104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !346, line: 68, size: 512, align: 128, elements: !1105)
!1105 = !{!1106, !1107, !1187, !1194}
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1104, file: !346, line: 69, baseType: !149, size: 64)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !346, line: 77, baseType: !1108, size: 320, offset: 64)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !346, line: 77, size: 320, elements: !1109)
!1109 = !{!1110, !1119, !1124, !1152, !1160, !1166, !1179, !1186}
!1110 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 78, baseType: !1111, size: 320)
!1111 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 78, size: 320, elements: !1112)
!1112 = !{!1113, !1114, !1117, !1118}
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1111, file: !346, line: 84, baseType: !218, size: 128)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1111, file: !346, line: 86, baseType: !1115, size: 64, offset: 128)
!1115 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1116, size: 64)
!1116 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !346, line: 26, flags: DIFlagFwdDecl)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1111, file: !346, line: 87, baseType: !149, size: 64, offset: 192)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1111, file: !346, line: 94, baseType: !149, size: 64, offset: 256)
!1119 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 96, baseType: !1120, size: 64)
!1120 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 96, size: 64, elements: !1121)
!1121 = !{!1122}
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1120, file: !346, line: 101, baseType: !1123, size: 64)
!1123 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !142, line: 143, baseType: !374)
!1124 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 103, baseType: !1125, size: 320)
!1125 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 103, size: 320, elements: !1126)
!1126 = !{!1127, !1137, !1140, !1141}
!1127 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !346, line: 104, baseType: !1128, size: 128)
!1128 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !346, line: 104, size: 128, elements: !1129)
!1129 = !{!1130, !1131}
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1128, file: !346, line: 105, baseType: !218, size: 128)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1128, file: !346, line: 106, baseType: !1132, size: 128)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1128, file: !346, line: 106, size: 128, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1132, file: !346, line: 107, baseType: !1103, size: 64)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1132, file: !346, line: 109, baseType: !113, size: 32, offset: 64)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1132, file: !346, line: 110, baseType: !113, size: 32, offset: 96)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1125, file: !346, line: 117, baseType: !1138, size: 64, offset: 128)
!1138 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1139, size: 64)
!1139 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !346, line: 117, flags: DIFlagFwdDecl)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1125, file: !346, line: 119, baseType: !100, size: 64, offset: 192)
!1141 = !DIDerivedType(tag: DW_TAG_member, scope: !1125, file: !346, line: 120, baseType: !1142, size: 64, offset: 256)
!1142 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1125, file: !346, line: 120, size: 64, elements: !1143)
!1143 = !{!1144, !1145, !1146}
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1142, file: !346, line: 121, baseType: !100, size: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1142, file: !346, line: 122, baseType: !149, size: 64)
!1146 = !DIDerivedType(tag: DW_TAG_member, scope: !1142, file: !346, line: 123, baseType: !1147, size: 32)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1142, file: !346, line: 123, size: 32, elements: !1148)
!1148 = !{!1149, !1150, !1151}
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1147, file: !346, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1147, file: !346, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1151 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1147, file: !346, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1152 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 130, baseType: !1153, size: 192)
!1153 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 130, size: 192, elements: !1154)
!1154 = !{!1155, !1156, !1157, !1158, !1159}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1153, file: !346, line: 131, baseType: !149, size: 64)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1153, file: !346, line: 134, baseType: !124, size: 8, offset: 64)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1153, file: !346, line: 135, baseType: !124, size: 8, offset: 72)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1153, file: !346, line: 136, baseType: !394, size: 32, offset: 96)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1153, file: !346, line: 137, baseType: !7, size: 32, offset: 128)
!1160 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 139, baseType: !1161, size: 256)
!1161 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 139, size: 256, elements: !1162)
!1162 = !{!1163, !1164, !1165}
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1161, file: !346, line: 140, baseType: !149, size: 64)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1161, file: !346, line: 141, baseType: !394, size: 32, offset: 64)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1161, file: !346, line: 143, baseType: !218, size: 128, offset: 128)
!1166 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 145, baseType: !1167, size: 256)
!1167 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 145, size: 256, elements: !1168)
!1168 = !{!1169, !1170, !1172, !1173, !1178}
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1167, file: !346, line: 146, baseType: !149, size: 64)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1167, file: !346, line: 147, baseType: !1171, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !335, line: 509, baseType: !1103)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1167, file: !346, line: 148, baseType: !149, size: 64, offset: 128)
!1173 = !DIDerivedType(tag: DW_TAG_member, scope: !1167, file: !346, line: 149, baseType: !1174, size: 64, offset: 192)
!1174 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1167, file: !346, line: 149, size: 64, elements: !1175)
!1175 = !{!1176, !1177}
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1174, file: !346, line: 150, baseType: !362, size: 64)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1174, file: !346, line: 151, baseType: !394, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1167, file: !346, line: 156, baseType: !162, offset: 256)
!1179 = !DIDerivedType(tag: DW_TAG_member, scope: !1108, file: !346, line: 159, baseType: !1180, size: 128)
!1180 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1108, file: !346, line: 159, size: 128, elements: !1181)
!1181 = !{!1182, !1185}
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1180, file: !346, line: 161, baseType: !1183, size: 64)
!1183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1184, size: 64)
!1184 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !346, line: 161, flags: DIFlagFwdDecl)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1180, file: !346, line: 162, baseType: !100, size: 64, offset: 64)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1108, file: !346, line: 176, baseType: !801, size: 128, align: 64)
!1187 = !DIDerivedType(tag: DW_TAG_member, scope: !1104, file: !346, line: 179, baseType: !1188, size: 32, offset: 384)
!1188 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1104, file: !346, line: 179, size: 32, elements: !1189)
!1189 = !{!1190, !1191, !1192, !1193}
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1188, file: !346, line: 184, baseType: !394, size: 32)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1188, file: !346, line: 192, baseType: !7, size: 32)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1188, file: !346, line: 194, baseType: !7, size: 32)
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1188, file: !346, line: 195, baseType: !113, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1104, file: !346, line: 199, baseType: !394, size: 32, offset: 416)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1100, file: !449, line: 67, baseType: !158, size: 32, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1100, file: !449, line: 68, baseType: !158, size: 32, offset: 96)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !517, file: !518, line: 1206, baseType: !113, size: 32, offset: 12736)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !517, file: !518, line: 1207, baseType: !113, size: 32, offset: 12768)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !517, file: !518, line: 1209, baseType: !149, size: 64, offset: 12800)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !517, file: !518, line: 1219, baseType: !374, size: 64, offset: 12864)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !517, file: !518, line: 1220, baseType: !374, size: 64, offset: 12928)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !517, file: !518, line: 1317, baseType: !113, size: 32, offset: 12992)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !517, file: !518, line: 1319, baseType: !516, size: 64, offset: 13056)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !517, file: !518, line: 1322, baseType: !1205, size: 64, offset: 13120)
!1205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1206, size: 64)
!1206 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1207, line: 56, size: 512, elements: !1208)
!1207 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1208 = !{!1209, !1210, !1211, !1212, !1213, !1215, !1216, !1218}
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1206, file: !1207, line: 57, baseType: !1205, size: 64)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1206, file: !1207, line: 58, baseType: !100, size: 64, offset: 64)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1206, file: !1207, line: 59, baseType: !149, size: 64, offset: 128)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1206, file: !1207, line: 60, baseType: !149, size: 64, offset: 192)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1206, file: !1207, line: 61, baseType: !1214, size: 64, offset: 256)
!1214 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1103, size: 64)
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1206, file: !1207, line: 62, baseType: !7, size: 32, offset: 320)
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1206, file: !1207, line: 63, baseType: !1217, size: 64, offset: 384)
!1217 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !142, line: 153, baseType: !374)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1206, file: !1207, line: 64, baseType: !1219, size: 64, offset: 448)
!1219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1220, size: 64)
!1220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !517, file: !518, line: 1326, baseType: !530, size: 32, offset: 13184)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !517, file: !518, line: 1342, baseType: !100, size: 64, offset: 13248)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !517, file: !518, line: 1343, baseType: !375, size: 64, offset: 13312)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !517, file: !518, line: 1344, baseType: !374, size: 64, offset: 13376)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !517, file: !518, line: 1345, baseType: !375, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !517, file: !518, line: 1346, baseType: !375, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !517, file: !518, line: 1347, baseType: !375, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !517, file: !518, line: 1348, baseType: !801, size: 128, align: 64, offset: 13504)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !517, file: !518, line: 1358, baseType: !1230, size: 34816, offset: 13824)
!1230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1231, line: 485, size: 34816, elements: !1232)
!1231 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1232 = !{!1233, !1251, !1252, !1253, !1254, !1255, !1256, !1257, !1258, !1262, !1263, !1264, !1265, !1266, !1267, !1270, !1271, !1272}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1230, file: !1231, line: 487, baseType: !1234, size: 192)
!1234 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1235, size: 192, elements: !258)
!1235 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1236, line: 16, size: 64, elements: !1237)
!1236 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1237 = !{!1238, !1239, !1240, !1241, !1242, !1243, !1244, !1245, !1246, !1247, !1248, !1249, !1250}
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1235, file: !1236, line: 17, baseType: !500, size: 16)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1235, file: !1236, line: 18, baseType: !500, size: 16, offset: 16)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1235, file: !1236, line: 19, baseType: !500, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1235, file: !1236, line: 19, baseType: !500, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1235, file: !1236, line: 19, baseType: !500, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1235, file: !1236, line: 19, baseType: !500, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1235, file: !1236, line: 19, baseType: !500, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1245 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1235, file: !1236, line: 20, baseType: !500, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1246 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1235, file: !1236, line: 20, baseType: !500, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1235, file: !1236, line: 20, baseType: !500, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1235, file: !1236, line: 20, baseType: !500, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1235, file: !1236, line: 20, baseType: !500, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1235, file: !1236, line: 20, baseType: !500, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1230, file: !1231, line: 491, baseType: !149, size: 64, offset: 192)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1230, file: !1231, line: 495, baseType: !298, size: 16, offset: 256)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1230, file: !1231, line: 496, baseType: !298, size: 16, offset: 272)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1230, file: !1231, line: 497, baseType: !298, size: 16, offset: 288)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1230, file: !1231, line: 498, baseType: !298, size: 16, offset: 304)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1230, file: !1231, line: 502, baseType: !149, size: 64, offset: 320)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1230, file: !1231, line: 503, baseType: !149, size: 64, offset: 384)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1230, file: !1231, line: 514, baseType: !1259, size: 256, offset: 448)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1260, size: 256, elements: !453)
!1260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1261, size: 64)
!1261 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1231, line: 483, flags: DIFlagFwdDecl)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1230, file: !1231, line: 516, baseType: !149, size: 64, offset: 704)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1230, file: !1231, line: 518, baseType: !149, size: 64, offset: 768)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1230, file: !1231, line: 520, baseType: !149, size: 64, offset: 832)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1230, file: !1231, line: 521, baseType: !149, size: 64, offset: 896)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1230, file: !1231, line: 522, baseType: !149, size: 64, offset: 960)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1230, file: !1231, line: 528, baseType: !1268, size: 64, offset: 1024)
!1268 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1269, size: 64)
!1269 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1231, line: 10, flags: DIFlagFwdDecl)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1230, file: !1231, line: 535, baseType: !149, size: 64, offset: 1088)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1230, file: !1231, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1230, file: !1231, line: 540, baseType: !1273, size: 33280, offset: 1536)
!1273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1274, line: 317, size: 33280, elements: !1275)
!1274 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1275 = !{!1276, !1277, !1278}
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1273, file: !1274, line: 330, baseType: !7, size: 32)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1273, file: !1274, line: 337, baseType: !149, size: 64, offset: 64)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1273, file: !1274, line: 348, baseType: !1279, size: 32768, offset: 512)
!1279 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1274, line: 304, size: 32768, elements: !1280)
!1280 = !{!1281, !1296, !1333, !1383, !1400}
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1279, file: !1274, line: 305, baseType: !1282, size: 896)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1274, line: 12, size: 896, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1295}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1282, file: !1274, line: 13, baseType: !156, size: 32)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1282, file: !1274, line: 14, baseType: !156, size: 32, offset: 32)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1282, file: !1274, line: 15, baseType: !156, size: 32, offset: 64)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1282, file: !1274, line: 16, baseType: !156, size: 32, offset: 96)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1282, file: !1274, line: 17, baseType: !156, size: 32, offset: 128)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1282, file: !1274, line: 18, baseType: !156, size: 32, offset: 160)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1282, file: !1274, line: 19, baseType: !156, size: 32, offset: 192)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1282, file: !1274, line: 22, baseType: !1292, size: 640, offset: 224)
!1292 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 640, elements: !1293)
!1293 = !{!1294}
!1294 = !DISubrange(count: 20)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1282, file: !1274, line: 25, baseType: !156, size: 32, offset: 864)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1279, file: !1274, line: 306, baseType: !1297, size: 4096, align: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1274, line: 34, size: 4096, align: 128, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302, !1303, !1318, !1319, !1320, !1322, !1324, !1328}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1297, file: !1274, line: 35, baseType: !500, size: 16)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1297, file: !1274, line: 36, baseType: !500, size: 16, offset: 16)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1297, file: !1274, line: 37, baseType: !500, size: 16, offset: 32)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1297, file: !1274, line: 38, baseType: !500, size: 16, offset: 48)
!1303 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1274, line: 39, baseType: !1304, size: 128, offset: 64)
!1304 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !1274, line: 39, size: 128, elements: !1305)
!1305 = !{!1306, !1311}
!1306 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1274, line: 40, baseType: !1307, size: 128)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1274, line: 40, size: 128, elements: !1308)
!1308 = !{!1309, !1310}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1307, file: !1274, line: 41, baseType: !374, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1307, file: !1274, line: 42, baseType: !374, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, scope: !1304, file: !1274, line: 44, baseType: !1312, size: 128)
!1312 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1304, file: !1274, line: 44, size: 128, elements: !1313)
!1313 = !{!1314, !1315, !1316, !1317}
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1312, file: !1274, line: 45, baseType: !156, size: 32)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1312, file: !1274, line: 46, baseType: !156, size: 32, offset: 32)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1312, file: !1274, line: 47, baseType: !156, size: 32, offset: 64)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1312, file: !1274, line: 48, baseType: !156, size: 32, offset: 96)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1297, file: !1274, line: 51, baseType: !156, size: 32, offset: 192)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1297, file: !1274, line: 52, baseType: !156, size: 32, offset: 224)
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1297, file: !1274, line: 55, baseType: !1321, size: 1024, offset: 256)
!1321 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 1024, elements: !109)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1297, file: !1274, line: 58, baseType: !1323, size: 2048, offset: 1280)
!1323 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 2048, elements: !262)
!1324 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1297, file: !1274, line: 60, baseType: !1325, size: 384, offset: 3328)
!1325 = !DICompositeType(tag: DW_TAG_array_type, baseType: !156, size: 384, elements: !1326)
!1326 = !{!1327}
!1327 = !DISubrange(count: 12)
!1328 = !DIDerivedType(tag: DW_TAG_member, scope: !1297, file: !1274, line: 62, baseType: !1329, size: 384, offset: 3712)
!1329 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1297, file: !1274, line: 62, size: 384, elements: !1330)
!1330 = !{!1331, !1332}
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1329, file: !1274, line: 63, baseType: !1325, size: 384)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1329, file: !1274, line: 64, baseType: !1325, size: 384)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1279, file: !1274, line: 307, baseType: !1334, size: 1088)
!1334 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1274, line: 79, size: 1088, elements: !1335)
!1335 = !{!1336, !1337, !1338, !1339, !1340, !1341, !1342, !1343, !1344, !1345, !1346, !1347, !1348, !1349, !1350, !1382}
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1334, file: !1274, line: 80, baseType: !156, size: 32)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1334, file: !1274, line: 81, baseType: !156, size: 32, offset: 32)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1334, file: !1274, line: 82, baseType: !156, size: 32, offset: 64)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1334, file: !1274, line: 83, baseType: !156, size: 32, offset: 96)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1334, file: !1274, line: 84, baseType: !156, size: 32, offset: 128)
!1341 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1334, file: !1274, line: 85, baseType: !156, size: 32, offset: 160)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1334, file: !1274, line: 86, baseType: !156, size: 32, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1334, file: !1274, line: 88, baseType: !1292, size: 640, offset: 224)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1334, file: !1274, line: 89, baseType: !661, size: 8, offset: 864)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1334, file: !1274, line: 90, baseType: !661, size: 8, offset: 872)
!1346 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1334, file: !1274, line: 91, baseType: !661, size: 8, offset: 880)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1334, file: !1274, line: 92, baseType: !661, size: 8, offset: 888)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1334, file: !1274, line: 93, baseType: !661, size: 8, offset: 896)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1334, file: !1274, line: 94, baseType: !661, size: 8, offset: 904)
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1334, file: !1274, line: 95, baseType: !1351, size: 64, offset: 960)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1353, line: 11, size: 128, elements: !1354)
!1353 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1354 = !{!1355, !1356}
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1352, file: !1353, line: 12, baseType: !68, size: 64)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1352, file: !1353, line: 13, baseType: !1357, size: 64, offset: 64)
!1357 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1358, size: 64)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1359, line: 56, size: 1344, elements: !1360)
!1359 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !{!1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370, !1371, !1372, !1373, !1374, !1375, !1376, !1377, !1378, !1379, !1380, !1381}
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1358, file: !1359, line: 61, baseType: !149, size: 64)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1358, file: !1359, line: 62, baseType: !149, size: 64, offset: 64)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1358, file: !1359, line: 63, baseType: !149, size: 64, offset: 128)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1358, file: !1359, line: 64, baseType: !149, size: 64, offset: 192)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1358, file: !1359, line: 65, baseType: !149, size: 64, offset: 256)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1358, file: !1359, line: 66, baseType: !149, size: 64, offset: 320)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1358, file: !1359, line: 68, baseType: !149, size: 64, offset: 384)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1358, file: !1359, line: 69, baseType: !149, size: 64, offset: 448)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1358, file: !1359, line: 70, baseType: !149, size: 64, offset: 512)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1358, file: !1359, line: 71, baseType: !149, size: 64, offset: 576)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1358, file: !1359, line: 72, baseType: !149, size: 64, offset: 640)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1358, file: !1359, line: 73, baseType: !149, size: 64, offset: 704)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1358, file: !1359, line: 74, baseType: !149, size: 64, offset: 768)
!1374 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1358, file: !1359, line: 75, baseType: !149, size: 64, offset: 832)
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1358, file: !1359, line: 76, baseType: !149, size: 64, offset: 896)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1358, file: !1359, line: 81, baseType: !149, size: 64, offset: 960)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1358, file: !1359, line: 83, baseType: !149, size: 64, offset: 1024)
!1378 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1358, file: !1359, line: 84, baseType: !149, size: 64, offset: 1088)
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1358, file: !1359, line: 85, baseType: !149, size: 64, offset: 1152)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1358, file: !1359, line: 86, baseType: !149, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1358, file: !1359, line: 87, baseType: !149, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1334, file: !1274, line: 96, baseType: !156, size: 32, offset: 1024)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1279, file: !1274, line: 308, baseType: !1384, size: 4608, align: 512)
!1384 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1274, line: 289, size: 4608, align: 512, elements: !1385)
!1385 = !{!1386, !1387, !1396}
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1384, file: !1274, line: 290, baseType: !1297, size: 4096, align: 128)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1384, file: !1274, line: 291, baseType: !1388, size: 512, offset: 4096)
!1388 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1274, line: 268, size: 512, elements: !1389)
!1389 = !{!1390, !1391, !1392}
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1388, file: !1274, line: 269, baseType: !374, size: 64)
!1391 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1388, file: !1274, line: 270, baseType: !374, size: 64, offset: 64)
!1392 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1388, file: !1274, line: 271, baseType: !1393, size: 384, offset: 128)
!1393 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 384, elements: !1394)
!1394 = !{!1395}
!1395 = !DISubrange(count: 6)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1384, file: !1274, line: 292, baseType: !1397, offset: 4608)
!1397 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, elements: !1398)
!1398 = !{!1399}
!1399 = !DISubrange(count: 0)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1279, file: !1274, line: 309, baseType: !1401, size: 32768)
!1401 = !DICompositeType(tag: DW_TAG_array_type, baseType: !661, size: 32768, elements: !1402)
!1402 = !{!1403}
!1403 = !DISubrange(count: 4096)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !513, file: !346, line: 378, baseType: !1405, size: 64, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !513, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !509, file: !346, line: 384, baseType: !823, size: 192, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !366, file: !346, line: 500, baseType: !162, offset: 6656)
!1408 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !366, file: !346, line: 501, baseType: !1409, size: 64, offset: 6656)
!1409 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1410, size: 64)
!1410 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !346, line: 387, flags: DIFlagFwdDecl)
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !366, file: !346, line: 516, baseType: !1412, size: 64, offset: 6720)
!1412 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1413, size: 64)
!1413 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1414, line: 18, flags: DIFlagFwdDecl)
!1414 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !366, file: !346, line: 519, baseType: !333, size: 64, offset: 6784)
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !366, file: !346, line: 521, baseType: !1417, size: 64, offset: 6848)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !346, line: 521, flags: DIFlagFwdDecl)
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !366, file: !346, line: 545, baseType: !394, size: 32, offset: 6912)
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !366, file: !346, line: 548, baseType: !1088, size: 8, offset: 6944)
!1421 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !366, file: !346, line: 550, baseType: !1422, offset: 6952)
!1422 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1423, line: 142, elements: !176)
!1423 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !366, file: !346, line: 554, baseType: !1425, size: 256, offset: 6976)
!1425 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !67, line: 102, size: 256, elements: !1426)
!1426 = !{!1427, !1428, !1429}
!1427 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1425, file: !67, line: 103, baseType: !402, size: 64)
!1428 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1425, file: !67, line: 104, baseType: !218, size: 128, offset: 64)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1425, file: !67, line: 105, baseType: !1430, size: 64, offset: 192)
!1430 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !67, line: 21, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{null, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !366, file: !346, line: 557, baseType: !156, size: 32, offset: 7232)
!1436 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !363, file: !346, line: 565, baseType: !1437, offset: 7296)
!1437 = !DICompositeType(tag: DW_TAG_array_type, baseType: !149, elements: !1438)
!1438 = !{!1439}
!1439 = !DISubrange(count: -1)
!1440 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !345, file: !346, line: 333, baseType: !1441, size: 64, offset: 576)
!1441 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !335, line: 284, baseType: !1442)
!1442 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !335, line: 284, size: 64, elements: !1443)
!1443 = !{!1444}
!1444 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1442, file: !335, line: 284, baseType: !1445, size: 64)
!1445 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !392, line: 19, baseType: !149)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !345, file: !346, line: 334, baseType: !149, size: 64, offset: 640)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !345, file: !346, line: 343, baseType: !1448, size: 256, offset: 704)
!1448 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !345, file: !346, line: 340, size: 256, elements: !1449)
!1449 = !{!1450, !1451}
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1448, file: !346, line: 341, baseType: !353, size: 192, align: 64)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1448, file: !346, line: 342, baseType: !149, size: 64, offset: 192)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !345, file: !346, line: 351, baseType: !218, size: 128, offset: 960)
!1453 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !345, file: !346, line: 353, baseType: !1454, size: 64, offset: 1088)
!1454 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1455, size: 64)
!1455 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !346, line: 353, flags: DIFlagFwdDecl)
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !345, file: !346, line: 356, baseType: !1457, size: 64, offset: 1152)
!1457 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1458, size: 64)
!1458 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1459)
!1459 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !346, line: 356, flags: DIFlagFwdDecl)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !345, file: !346, line: 359, baseType: !149, size: 64, offset: 1216)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !345, file: !346, line: 361, baseType: !333, size: 64, offset: 1280)
!1462 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !345, file: !346, line: 362, baseType: !100, size: 64, offset: 1344)
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !345, file: !346, line: 365, baseType: !402, size: 64, offset: 1408)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !345, file: !346, line: 373, baseType: !1465, offset: 1472)
!1465 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !346, line: 296, elements: !176)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !312, file: !282, line: 90, baseType: !307, size: 64, offset: 192)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !312, file: !282, line: 91, baseType: !1468, size: 64, offset: 256)
!1468 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !323, size: 64)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !272, file: !214, line: 143, baseType: !1470, size: 64, offset: 256)
!1470 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1471, size: 64)
!1471 = !DISubroutineType(types: !1472)
!1472 = !{!1473, !224}
!1473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1474, size: 64)
!1474 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1475)
!1475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1476)
!1476 = !{!1477, !1478, !1482, !1486, !1492, !1496}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1475, file: !18, line: 40, baseType: !17, size: 32)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1475, file: !18, line: 41, baseType: !1479, size: 64, offset: 64)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = !DISubroutineType(types: !1481)
!1481 = !{!1088}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1475, file: !18, line: 42, baseType: !1483, size: 64, offset: 128)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = !DISubroutineType(types: !1485)
!1485 = !{!100}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1475, file: !18, line: 43, baseType: !1487, size: 64, offset: 192)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1219, !1490}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1475, file: !18, line: 44, baseType: !1493, size: 64, offset: 256)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!1219}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1475, file: !18, line: 45, baseType: !1497, size: 64, offset: 320)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{null, !100}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !272, file: !214, line: 144, baseType: !1501, size: 64, offset: 320)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1219, !224}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !272, file: !214, line: 145, baseType: !1505, size: 64, offset: 384)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{null, !224, !1508, !1514}
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1414, line: 23, baseType: !1510)
!1510 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 21, size: 32, elements: !1511)
!1511 = !{!1512}
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1510, file: !1414, line: 22, baseType: !1513, size: 32)
!1513 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !142, line: 32, baseType: !984)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1414, line: 28, baseType: !1516)
!1516 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1414, line: 26, size: 32, elements: !1517)
!1517 = !{!1518}
!1518 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1516, file: !1414, line: 27, baseType: !1519, size: 32)
!1519 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !142, line: 33, baseType: !1520)
!1520 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !290, line: 50, baseType: !7)
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !213, file: !214, line: 70, baseType: !1522, size: 64, offset: 384)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1524, line: 123, size: 1024, elements: !1525)
!1524 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1525 = !{!1526, !1527, !1528, !1529, !1530, !1531, !1532, !1533, !1668, !1669, !1670, !1671, !1672}
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1523, file: !1524, line: 124, baseType: !394, size: 32)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1523, file: !1524, line: 125, baseType: !394, size: 32, offset: 32)
!1528 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1523, file: !1524, line: 135, baseType: !1522, size: 64, offset: 64)
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1523, file: !1524, line: 136, baseType: !186, size: 64, offset: 128)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1523, file: !1524, line: 138, baseType: !353, size: 192, align: 64, offset: 192)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1523, file: !1524, line: 140, baseType: !1219, size: 64, offset: 384)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1523, file: !1524, line: 141, baseType: !7, size: 32, offset: 448)
!1533 = !DIDerivedType(tag: DW_TAG_member, scope: !1523, file: !1524, line: 142, baseType: !1534, size: 256, offset: 512)
!1534 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1523, file: !1524, line: 142, size: 256, elements: !1535)
!1535 = !{!1536, !1591, !1595}
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1534, file: !1524, line: 143, baseType: !1537, size: 192)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1524, line: 91, size: 192, elements: !1538)
!1538 = !{!1539, !1540, !1541}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1537, file: !1524, line: 92, baseType: !149, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1537, file: !1524, line: 94, baseType: !370, size: 64, offset: 64)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1537, file: !1524, line: 100, baseType: !1542, size: 64, offset: 128)
!1542 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1543, size: 64)
!1543 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1524, line: 180, size: 704, elements: !1544)
!1544 = !{!1545, !1546, !1547, !1561, !1562, !1563, !1589, !1590}
!1545 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1543, file: !1524, line: 182, baseType: !1522, size: 64)
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1543, file: !1524, line: 183, baseType: !7, size: 32, offset: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1543, file: !1524, line: 186, baseType: !1548, size: 192, offset: 128)
!1548 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1549, line: 19, size: 192, elements: !1550)
!1549 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1550 = !{!1551, !1559, !1560}
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1548, file: !1549, line: 20, baseType: !1552, size: 128)
!1552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1553, line: 292, size: 128, elements: !1554)
!1553 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1554 = !{!1555, !1556, !1558}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1552, file: !1553, line: 293, baseType: !162)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1552, file: !1553, line: 295, baseType: !1557, size: 32)
!1557 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !142, line: 148, baseType: !7)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1552, file: !1553, line: 296, baseType: !100, size: 64, offset: 64)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1548, file: !1549, line: 21, baseType: !7, size: 32, offset: 128)
!1560 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1548, file: !1549, line: 22, baseType: !7, size: 32, offset: 160)
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1543, file: !1524, line: 187, baseType: !156, size: 32, offset: 320)
!1562 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1543, file: !1524, line: 188, baseType: !156, size: 32, offset: 352)
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1543, file: !1524, line: 189, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1524, line: 168, size: 320, elements: !1566)
!1566 = !{!1567, !1573, !1577, !1581, !1585}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1565, file: !1524, line: 169, baseType: !1568, size: 64)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!113, !1571, !1542}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !335, line: 539, flags: DIFlagFwdDecl)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1565, file: !1524, line: 171, baseType: !1574, size: 64, offset: 64)
!1574 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1575, size: 64)
!1575 = !DISubroutineType(types: !1576)
!1576 = !{!113, !1522, !186, !297}
!1577 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1565, file: !1524, line: 173, baseType: !1578, size: 64, offset: 128)
!1578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1579, size: 64)
!1579 = !DISubroutineType(types: !1580)
!1580 = !{!113, !1522}
!1581 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1565, file: !1524, line: 174, baseType: !1582, size: 64, offset: 192)
!1582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1583, size: 64)
!1583 = !DISubroutineType(types: !1584)
!1584 = !{!113, !1522, !1522, !186}
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1565, file: !1524, line: 176, baseType: !1586, size: 64, offset: 256)
!1586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1587, size: 64)
!1587 = !DISubroutineType(types: !1588)
!1588 = !{!113, !1571, !1522, !1542}
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1543, file: !1524, line: 192, baseType: !218, size: 128, offset: 448)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1543, file: !1524, line: 194, baseType: !794, size: 128, offset: 576)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1534, file: !1524, line: 144, baseType: !1592, size: 64)
!1592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1524, line: 103, size: 64, elements: !1593)
!1593 = !{!1594}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1592, file: !1524, line: 104, baseType: !1522, size: 64)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1534, file: !1524, line: 145, baseType: !1596, size: 256)
!1596 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1524, line: 107, size: 256, elements: !1597)
!1597 = !{!1598, !1663, !1666, !1667}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1596, file: !1524, line: 108, baseType: !1599, size: 64)
!1599 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1600, size: 64)
!1600 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1601)
!1601 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1524, line: 217, size: 768, elements: !1602)
!1602 = !{!1603, !1623, !1627, !1631, !1636, !1640, !1644, !1648, !1649, !1650, !1651, !1659}
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1601, file: !1524, line: 222, baseType: !1604, size: 64)
!1604 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1605, size: 64)
!1605 = !DISubroutineType(types: !1606)
!1606 = !{!113, !1607}
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1524, line: 197, size: 1088, elements: !1609)
!1609 = !{!1610, !1611, !1612, !1613, !1614, !1615, !1616, !1617, !1618, !1619, !1620, !1621, !1622}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1608, file: !1524, line: 199, baseType: !1522, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1608, file: !1524, line: 200, baseType: !333, size: 64, offset: 64)
!1612 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1608, file: !1524, line: 201, baseType: !1571, size: 64, offset: 128)
!1613 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1608, file: !1524, line: 202, baseType: !100, size: 64, offset: 192)
!1614 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1608, file: !1524, line: 205, baseType: !471, size: 192, offset: 256)
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1608, file: !1524, line: 206, baseType: !471, size: 192, offset: 448)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1608, file: !1524, line: 207, baseType: !113, size: 32, offset: 640)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1608, file: !1524, line: 208, baseType: !218, size: 128, offset: 704)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1608, file: !1524, line: 209, baseType: !257, size: 64, offset: 832)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1608, file: !1524, line: 211, baseType: !303, size: 64, offset: 896)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1608, file: !1524, line: 212, baseType: !1088, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1608, file: !1524, line: 213, baseType: !1088, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1608, file: !1524, line: 214, baseType: !1457, size: 64, offset: 1024)
!1623 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1601, file: !1524, line: 223, baseType: !1624, size: 64, offset: 64)
!1624 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1625, size: 64)
!1625 = !DISubroutineType(types: !1626)
!1626 = !{null, !1607}
!1627 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1601, file: !1524, line: 236, baseType: !1628, size: 64, offset: 128)
!1628 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1629, size: 64)
!1629 = !DISubroutineType(types: !1630)
!1630 = !{!113, !1571, !100}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1601, file: !1524, line: 238, baseType: !1632, size: 64, offset: 192)
!1632 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1633, size: 64)
!1633 = !DISubroutineType(types: !1634)
!1634 = !{!100, !1571, !1635}
!1635 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !336, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1601, file: !1524, line: 239, baseType: !1637, size: 64, offset: 256)
!1637 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1638, size: 64)
!1638 = !DISubroutineType(types: !1639)
!1639 = !{!100, !1571, !100, !1635}
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1601, file: !1524, line: 240, baseType: !1641, size: 64, offset: 320)
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1642, size: 64)
!1642 = !DISubroutineType(types: !1643)
!1643 = !{null, !1571, !100}
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1601, file: !1524, line: 242, baseType: !1645, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1646, size: 64)
!1646 = !DISubroutineType(types: !1647)
!1647 = !{!288, !1607, !257, !303, !336}
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1601, file: !1524, line: 252, baseType: !303, size: 64, offset: 448)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1601, file: !1524, line: 259, baseType: !1088, size: 8, offset: 512)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1601, file: !1524, line: 260, baseType: !1645, size: 64, offset: 576)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1601, file: !1524, line: 263, baseType: !1652, size: 64, offset: 640)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!1655, !1607, !1657}
!1655 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1656, line: 52, baseType: !7)
!1656 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1657 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1658, size: 64)
!1658 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1524, line: 27, flags: DIFlagFwdDecl)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1601, file: !1524, line: 266, baseType: !1660, size: 64, offset: 704)
!1660 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1661, size: 64)
!1661 = !DISubroutineType(types: !1662)
!1662 = !{!113, !1607, !344}
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1596, file: !1524, line: 109, baseType: !1664, size: 64, offset: 64)
!1664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1665, size: 64)
!1665 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1524, line: 31, flags: DIFlagFwdDecl)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1596, file: !1524, line: 110, baseType: !336, size: 64, offset: 128)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1596, file: !1524, line: 111, baseType: !1522, size: 64, offset: 192)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1523, file: !1524, line: 148, baseType: !100, size: 64, offset: 768)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1523, file: !1524, line: 154, baseType: !374, size: 64, offset: 832)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1523, file: !1524, line: 156, baseType: !298, size: 16, offset: 896)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1523, file: !1524, line: 157, baseType: !297, size: 16, offset: 912)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1523, file: !1524, line: 158, baseType: !1673, size: 64, offset: 960)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1524, line: 32, flags: DIFlagFwdDecl)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !213, file: !214, line: 71, baseType: !1676, size: 32, offset: 448)
!1676 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1677, line: 19, size: 32, elements: !1678)
!1677 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1678 = !{!1679}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1676, file: !1677, line: 20, baseType: !530, size: 32)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !213, file: !214, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !213, file: !214, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !213, file: !214, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !213, file: !214, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !213, file: !214, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !210, file: !24, line: 463, baseType: !209, size: 64, offset: 512)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !210, file: !24, line: 465, baseType: !1687, size: 64, offset: 576)
!1687 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1688, size: 64)
!1688 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !24, line: 36, flags: DIFlagFwdDecl)
!1689 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !210, file: !24, line: 467, baseType: !186, size: 64, offset: 640)
!1690 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !210, file: !24, line: 468, baseType: !1691, size: 64, offset: 704)
!1691 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1692, size: 64)
!1692 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !24, line: 87, size: 384, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1701, !1706, !1710}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !24, line: 88, baseType: !186, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1693, file: !24, line: 89, baseType: !309, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1693, file: !24, line: 90, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DISubroutineType(types: !1700)
!1700 = !{!113, !209, !252}
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1693, file: !24, line: 91, baseType: !1702, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1703, size: 64)
!1703 = !DISubroutineType(types: !1704)
!1704 = !{!257, !209, !1705, !1508, !1514}
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !297, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1693, file: !24, line: 93, baseType: !1707, size: 64, offset: 256)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DISubroutineType(types: !1709)
!1709 = !{null, !209}
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1693, file: !24, line: 95, baseType: !1711, size: 64, offset: 320)
!1711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1712, size: 64)
!1712 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1713)
!1713 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !31, line: 278, size: 1472, elements: !1714)
!1714 = !{!1715, !1719, !1720, !1721, !1722, !1723, !1724, !1725, !1726, !1727, !1728, !1729, !1730, !1731, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740}
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1713, file: !31, line: 279, baseType: !1716, size: 64)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DISubroutineType(types: !1718)
!1718 = !{!113, !209}
!1719 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1713, file: !31, line: 280, baseType: !1707, size: 64, offset: 64)
!1720 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1713, file: !31, line: 281, baseType: !1716, size: 64, offset: 128)
!1721 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1713, file: !31, line: 282, baseType: !1716, size: 64, offset: 192)
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1713, file: !31, line: 283, baseType: !1716, size: 64, offset: 256)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1713, file: !31, line: 284, baseType: !1716, size: 64, offset: 320)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1713, file: !31, line: 285, baseType: !1716, size: 64, offset: 384)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1713, file: !31, line: 286, baseType: !1716, size: 64, offset: 448)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1713, file: !31, line: 287, baseType: !1716, size: 64, offset: 512)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1713, file: !31, line: 288, baseType: !1716, size: 64, offset: 576)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1713, file: !31, line: 289, baseType: !1716, size: 64, offset: 640)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1713, file: !31, line: 290, baseType: !1716, size: 64, offset: 704)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1713, file: !31, line: 291, baseType: !1716, size: 64, offset: 768)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1713, file: !31, line: 292, baseType: !1716, size: 64, offset: 832)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1713, file: !31, line: 293, baseType: !1716, size: 64, offset: 896)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1713, file: !31, line: 294, baseType: !1716, size: 64, offset: 960)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1713, file: !31, line: 295, baseType: !1716, size: 64, offset: 1024)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1713, file: !31, line: 296, baseType: !1716, size: 64, offset: 1088)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1713, file: !31, line: 297, baseType: !1716, size: 64, offset: 1152)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1713, file: !31, line: 298, baseType: !1716, size: 64, offset: 1216)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1713, file: !31, line: 299, baseType: !1716, size: 64, offset: 1280)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1713, file: !31, line: 300, baseType: !1716, size: 64, offset: 1344)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1713, file: !31, line: 301, baseType: !1716, size: 64, offset: 1408)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !210, file: !24, line: 470, baseType: !202, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !210, file: !24, line: 471, baseType: !1743, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !210, file: !24, line: 473, baseType: !100, size: 64, offset: 896)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !210, file: !24, line: 475, baseType: !100, size: 64, offset: 960)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !210, file: !24, line: 480, baseType: !471, size: 192, offset: 1024)
!1747 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !210, file: !24, line: 484, baseType: !1748, size: 576, offset: 1216)
!1748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !24, line: 361, size: 576, elements: !1749)
!1749 = !{!1750, !1751, !1752, !1753, !1754, !1755}
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1748, file: !24, line: 362, baseType: !218, size: 128)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1748, file: !24, line: 363, baseType: !218, size: 128, offset: 128)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1748, file: !24, line: 364, baseType: !218, size: 128, offset: 256)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1748, file: !24, line: 365, baseType: !218, size: 128, offset: 384)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1748, file: !24, line: 366, baseType: !1088, size: 8, offset: 512)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1748, file: !24, line: 367, baseType: !23, size: 32, offset: 544)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !210, file: !24, line: 485, baseType: !1757, size: 2304, offset: 1792)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !31, line: 565, size: 2304, elements: !1758)
!1758 = !{!1759, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1805, !1806, !1807, !1808, !1809, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1847, !1851}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1757, file: !31, line: 566, baseType: !1760, size: 32)
!1760 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !31, line: 52, baseType: !1761)
!1761 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !31, line: 50, size: 32, elements: !1762)
!1762 = !{!1763}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1761, file: !31, line: 51, baseType: !113, size: 32)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1757, file: !31, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1757, file: !31, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1757, file: !31, line: 569, baseType: !1088, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1757, file: !31, line: 570, baseType: !1088, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1757, file: !31, line: 571, baseType: !1088, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1757, file: !31, line: 572, baseType: !1088, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1757, file: !31, line: 573, baseType: !1088, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1757, file: !31, line: 574, baseType: !1088, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1757, file: !31, line: 575, baseType: !1088, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1757, file: !31, line: 576, baseType: !1088, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1757, file: !31, line: 577, baseType: !156, size: 32, offset: 64)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1757, file: !31, line: 578, baseType: !162, offset: 96)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1757, file: !31, line: 580, baseType: !218, size: 128, offset: 128)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1757, file: !31, line: 581, baseType: !823, size: 192, offset: 256)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1757, file: !31, line: 582, baseType: !1779, size: 64, offset: 448)
!1779 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1780, size: 64)
!1780 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1781, line: 43, size: 1472, elements: !1782)
!1781 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1782 = !{!1783, !1784, !1785, !1786, !1787, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1804}
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1780, file: !1781, line: 44, baseType: !186, size: 64)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1780, file: !1781, line: 45, baseType: !113, size: 32, offset: 64)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1780, file: !1781, line: 46, baseType: !218, size: 128, offset: 128)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1780, file: !1781, line: 47, baseType: !162, offset: 256)
!1787 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1780, file: !1781, line: 48, baseType: !1788, size: 64, offset: 256)
!1788 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1789, size: 64)
!1789 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !31, line: 533, flags: DIFlagFwdDecl)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1780, file: !1781, line: 49, baseType: !137, size: 320, offset: 320)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1780, file: !1781, line: 50, baseType: !149, size: 64, offset: 640)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1780, file: !1781, line: 51, baseType: !600, size: 64, offset: 704)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1780, file: !1781, line: 52, baseType: !600, size: 64, offset: 768)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1780, file: !1781, line: 53, baseType: !600, size: 64, offset: 832)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1780, file: !1781, line: 54, baseType: !600, size: 64, offset: 896)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1780, file: !1781, line: 55, baseType: !600, size: 64, offset: 960)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1780, file: !1781, line: 56, baseType: !149, size: 64, offset: 1024)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1780, file: !1781, line: 57, baseType: !149, size: 64, offset: 1088)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1780, file: !1781, line: 58, baseType: !149, size: 64, offset: 1152)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1780, file: !1781, line: 59, baseType: !149, size: 64, offset: 1216)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1780, file: !1781, line: 60, baseType: !149, size: 64, offset: 1280)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1780, file: !1781, line: 61, baseType: !209, size: 64, offset: 1344)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1780, file: !1781, line: 62, baseType: !1088, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1780, file: !1781, line: 63, baseType: !1088, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1757, file: !31, line: 583, baseType: !1088, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1757, file: !31, line: 584, baseType: !1088, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1757, file: !31, line: 585, baseType: !1088, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1757, file: !31, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1757, file: !31, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1757, file: !31, line: 592, baseType: !592, size: 512, offset: 576)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1757, file: !31, line: 593, baseType: !374, size: 64, offset: 1088)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1757, file: !31, line: 594, baseType: !1425, size: 256, offset: 1152)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1757, file: !31, line: 595, baseType: !794, size: 128, offset: 1408)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1757, file: !31, line: 596, baseType: !1788, size: 64, offset: 1536)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1757, file: !31, line: 597, baseType: !394, size: 32, offset: 1600)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1757, file: !31, line: 598, baseType: !394, size: 32, offset: 1632)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1757, file: !31, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1757, file: !31, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1757, file: !31, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1757, file: !31, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1757, file: !31, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1757, file: !31, line: 604, baseType: !1088, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1757, file: !31, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1757, file: !31, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1757, file: !31, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1757, file: !31, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1757, file: !31, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1757, file: !31, line: 610, baseType: !7, size: 32, offset: 1696)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1757, file: !31, line: 611, baseType: !30, size: 32, offset: 1728)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1757, file: !31, line: 612, baseType: !38, size: 32, offset: 1760)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1757, file: !31, line: 613, baseType: !113, size: 32, offset: 1792)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1757, file: !31, line: 614, baseType: !113, size: 32, offset: 1824)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1757, file: !31, line: 615, baseType: !374, size: 64, offset: 1856)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1757, file: !31, line: 616, baseType: !374, size: 64, offset: 1920)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1757, file: !31, line: 617, baseType: !374, size: 64, offset: 1984)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1757, file: !31, line: 618, baseType: !374, size: 64, offset: 2048)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1757, file: !31, line: 620, baseType: !1838, size: 64, offset: 2112)
!1838 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1839, size: 64)
!1839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !31, line: 536, size: 256, elements: !1840)
!1840 = !{!1841, !1842, !1843, !1844}
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1839, file: !31, line: 537, baseType: !162)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1839, file: !31, line: 538, baseType: !7, size: 32)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1839, file: !31, line: 540, baseType: !218, size: 128, offset: 64)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1839, file: !31, line: 543, baseType: !1845, size: 64, offset: 192)
!1845 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1846, size: 64)
!1846 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !31, line: 534, flags: DIFlagFwdDecl)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1757, file: !31, line: 621, baseType: !1848, size: 64, offset: 2176)
!1848 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1849, size: 64)
!1849 = !DISubroutineType(types: !1850)
!1850 = !{null, !209, !753}
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1757, file: !31, line: 622, baseType: !1852, size: 64, offset: 2240)
!1852 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1853, size: 64)
!1853 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !31, line: 622, flags: DIFlagFwdDecl)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !210, file: !24, line: 486, baseType: !1855, size: 64, offset: 4096)
!1855 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1856, size: 64)
!1856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !31, line: 642, size: 1792, elements: !1857)
!1857 = !{!1858, !1859, !1860, !1864, !1865, !1866}
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1856, file: !31, line: 643, baseType: !1713, size: 1472)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1856, file: !31, line: 644, baseType: !1716, size: 64, offset: 1472)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1856, file: !31, line: 645, baseType: !1861, size: 64, offset: 1536)
!1861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1862, size: 64)
!1862 = !DISubroutineType(types: !1863)
!1863 = !{null, !209, !1088}
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1856, file: !31, line: 646, baseType: !1716, size: 64, offset: 1600)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1856, file: !31, line: 647, baseType: !1707, size: 64, offset: 1664)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1856, file: !31, line: 648, baseType: !1707, size: 64, offset: 1728)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !210, file: !24, line: 493, baseType: !1868, size: 64, offset: 4160)
!1868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1869, size: 64)
!1869 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !24, line: 493, flags: DIFlagFwdDecl)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !210, file: !24, line: 499, baseType: !218, size: 128, offset: 4224)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !210, file: !24, line: 502, baseType: !1872, size: 64, offset: 4352)
!1872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1873, size: 64)
!1873 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1874)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !24, line: 502, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !210, file: !24, line: 504, baseType: !1876, size: 64, offset: 4416)
!1876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !374, size: 64)
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !210, file: !24, line: 505, baseType: !374, size: 64, offset: 4480)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !210, file: !24, line: 510, baseType: !374, size: 64, offset: 4544)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !210, file: !24, line: 511, baseType: !1880, size: 64, offset: 4608)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1882)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !24, line: 511, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !210, file: !24, line: 513, baseType: !1884, size: 64, offset: 4672)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !24, line: 288, size: 128, elements: !1886)
!1886 = !{!1887, !1888}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !1885, file: !24, line: 293, baseType: !7, size: 32)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !1885, file: !24, line: 294, baseType: !149, size: 64, offset: 64)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !210, file: !24, line: 515, baseType: !218, size: 128, offset: 4736)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !210, file: !24, line: 526, baseType: !1891, offset: 4864)
!1891 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !1892, line: 5, elements: !176)
!1892 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!1893 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !210, file: !24, line: 528, baseType: !1894, size: 64, offset: 4864)
!1894 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1895, size: 64)
!1895 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1896, line: 14, flags: DIFlagFwdDecl)
!1896 = !DIFile(filename: "./include/linux/arch_topology.h", directory: "/home/lizy2001/genbc/linux")
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !210, file: !24, line: 529, baseType: !1898, size: 64, offset: 4928)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1900, line: 17, size: 192, elements: !1901)
!1900 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1901 = !{!1902, !1903, !1986}
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1899, file: !1900, line: 18, baseType: !1898, size: 64)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1899, file: !1900, line: 19, baseType: !1904, size: 64, offset: 64)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1906)
!1906 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1900, line: 110, size: 1152, elements: !1907)
!1907 = !{!1908, !1912, !1916, !1922, !1928, !1932, !1936, !1941, !1945, !1946, !1950, !1954, !1958, !1969, !1970, !1971, !1972, !1982}
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1906, file: !1900, line: 111, baseType: !1909, size: 64)
!1909 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1910 = !DISubroutineType(types: !1911)
!1911 = !{!1898, !1898}
!1912 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1906, file: !1900, line: 112, baseType: !1913, size: 64, offset: 64)
!1913 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1914, size: 64)
!1914 = !DISubroutineType(types: !1915)
!1915 = !{null, !1898}
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1906, file: !1900, line: 113, baseType: !1917, size: 64, offset: 128)
!1917 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1918, size: 64)
!1918 = !DISubroutineType(types: !1919)
!1919 = !{!1088, !1920}
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1899)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1906, file: !1900, line: 114, baseType: !1923, size: 64, offset: 192)
!1923 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1924, size: 64)
!1924 = !DISubroutineType(types: !1925)
!1925 = !{!1219, !1920, !1926}
!1926 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1927 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !210)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1906, file: !1900, line: 116, baseType: !1929, size: 64, offset: 256)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!1088, !1920, !186}
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1906, file: !1900, line: 118, baseType: !1933, size: 64, offset: 320)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DISubroutineType(types: !1935)
!1935 = !{!113, !1920, !186, !7, !100, !303}
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1906, file: !1900, line: 123, baseType: !1937, size: 64, offset: 384)
!1937 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1938, size: 64)
!1938 = !DISubroutineType(types: !1939)
!1939 = !{!113, !1920, !186, !1940, !303}
!1940 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !186, size: 64)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1906, file: !1900, line: 126, baseType: !1942, size: 64, offset: 448)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{!186, !1920}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1906, file: !1900, line: 127, baseType: !1942, size: 64, offset: 512)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1906, file: !1900, line: 128, baseType: !1947, size: 64, offset: 576)
!1947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1948, size: 64)
!1948 = !DISubroutineType(types: !1949)
!1949 = !{!1898, !1920}
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1906, file: !1900, line: 130, baseType: !1951, size: 64, offset: 640)
!1951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1952, size: 64)
!1952 = !DISubroutineType(types: !1953)
!1953 = !{!1898, !1920, !1898}
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1906, file: !1900, line: 133, baseType: !1955, size: 64, offset: 704)
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DISubroutineType(types: !1957)
!1957 = !{!1898, !1920, !186}
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1906, file: !1900, line: 135, baseType: !1959, size: 64, offset: 768)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!113, !1920, !186, !186, !7, !7, !1962}
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1900, line: 43, size: 640, elements: !1964)
!1964 = !{!1965, !1966, !1967}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1963, file: !1900, line: 44, baseType: !1898, size: 64)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1963, file: !1900, line: 45, baseType: !7, size: 32, offset: 64)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1963, file: !1900, line: 46, baseType: !1968, size: 512, offset: 128)
!1968 = !DICompositeType(tag: DW_TAG_array_type, baseType: !374, size: 512, elements: !630)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1906, file: !1900, line: 140, baseType: !1951, size: 64, offset: 832)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1906, file: !1900, line: 143, baseType: !1947, size: 64, offset: 896)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1906, file: !1900, line: 145, baseType: !1909, size: 64, offset: 960)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1906, file: !1900, line: 146, baseType: !1973, size: 64, offset: 1024)
!1973 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1974, size: 64)
!1974 = !DISubroutineType(types: !1975)
!1975 = !{!113, !1920, !1976}
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1900, line: 29, size: 128, elements: !1978)
!1978 = !{!1979, !1980, !1981}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1977, file: !1900, line: 30, baseType: !7, size: 32)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1977, file: !1900, line: 31, baseType: !7, size: 32, offset: 32)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1977, file: !1900, line: 32, baseType: !1920, size: 64, offset: 64)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1906, file: !1900, line: 148, baseType: !1983, size: 64, offset: 1088)
!1983 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1984, size: 64)
!1984 = !DISubroutineType(types: !1985)
!1985 = !{!113, !1920, !209}
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1899, file: !1900, line: 20, baseType: !209, size: 64, offset: 128)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !210, file: !24, line: 534, baseType: !1988, size: 32, offset: 4992)
!1988 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !142, line: 16, baseType: !1989)
!1989 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !142, line: 13, baseType: !156)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !210, file: !24, line: 535, baseType: !156, size: 32, offset: 5024)
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !210, file: !24, line: 537, baseType: !162, offset: 5056)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !210, file: !24, line: 538, baseType: !218, size: 128, offset: 5056)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !210, file: !24, line: 540, baseType: !1994, size: 64, offset: 5184)
!1994 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1995, size: 64)
!1995 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !1996, line: 54, size: 960, elements: !1997)
!1996 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!1997 = !{!1998, !1999, !2003, !2004, !2005, !2006, !2007, !2011, !2015, !2016, !2017, !2018, !2022, !2026, !2027}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1995, file: !1996, line: 55, baseType: !186, size: 64)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1995, file: !1996, line: 56, baseType: !2000, size: 64, offset: 64)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !2002, line: 76, flags: DIFlagFwdDecl)
!2002 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !1995, file: !1996, line: 58, baseType: !309, size: 64, offset: 128)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1995, file: !1996, line: 59, baseType: !309, size: 64, offset: 192)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !1995, file: !1996, line: 60, baseType: !224, size: 64, offset: 256)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !1995, file: !1996, line: 62, baseType: !1698, size: 64, offset: 320)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1995, file: !1996, line: 63, baseType: !2008, size: 64, offset: 384)
!2008 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2009, size: 64)
!2009 = !DISubroutineType(types: !2010)
!2010 = !{!257, !209, !1705}
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !1995, file: !1996, line: 65, baseType: !2012, size: 64, offset: 448)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{null, !1994}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !1995, file: !1996, line: 66, baseType: !1707, size: 64, offset: 512)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !1995, file: !1996, line: 68, baseType: !1716, size: 64, offset: 576)
!2017 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !1995, file: !1996, line: 70, baseType: !1473, size: 64, offset: 640)
!2018 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1995, file: !1996, line: 71, baseType: !2019, size: 64, offset: 704)
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = !DISubroutineType(types: !2021)
!2021 = !{!1219, !209}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1995, file: !1996, line: 73, baseType: !2023, size: 64, offset: 768)
!2023 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2024, size: 64)
!2024 = !DISubroutineType(types: !2025)
!2025 = !{null, !209, !1508, !1514}
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1995, file: !1996, line: 75, baseType: !1711, size: 64, offset: 832)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1995, file: !1996, line: 77, baseType: !2028, size: 64, offset: 896)
!2028 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2029, size: 64)
!2029 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !204, line: 111, flags: DIFlagFwdDecl)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !210, file: !24, line: 541, baseType: !309, size: 64, offset: 5248)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !210, file: !24, line: 543, baseType: !1707, size: 64, offset: 5312)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !210, file: !24, line: 544, baseType: !2033, size: 64, offset: 5376)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !24, line: 45, flags: DIFlagFwdDecl)
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !210, file: !24, line: 545, baseType: !2036, size: 64, offset: 5440)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !24, line: 47, flags: DIFlagFwdDecl)
!2038 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !210, file: !24, line: 547, baseType: !1088, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !210, file: !24, line: 548, baseType: !1088, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !210, file: !24, line: 549, baseType: !1088, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !210, file: !24, line: 550, baseType: !1088, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2042 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !203, file: !204, line: 86, baseType: !309, size: 64, offset: 192)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !203, file: !204, line: 87, baseType: !309, size: 64, offset: 256)
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !203, file: !204, line: 88, baseType: !309, size: 64, offset: 320)
!2045 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !203, file: !204, line: 90, baseType: !2046, size: 64, offset: 384)
!2046 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2047, size: 64)
!2047 = !DISubroutineType(types: !2048)
!2048 = !{!113, !209, !1743}
!2049 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !203, file: !204, line: 91, baseType: !1698, size: 64, offset: 448)
!2050 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !203, file: !204, line: 92, baseType: !1716, size: 64, offset: 512)
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !203, file: !204, line: 93, baseType: !1707, size: 64, offset: 576)
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !203, file: !204, line: 94, baseType: !1716, size: 64, offset: 640)
!2053 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !203, file: !204, line: 95, baseType: !1707, size: 64, offset: 704)
!2054 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !203, file: !204, line: 97, baseType: !1716, size: 64, offset: 768)
!2055 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !203, file: !204, line: 98, baseType: !1716, size: 64, offset: 832)
!2056 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !203, file: !204, line: 100, baseType: !2057, size: 64, offset: 896)
!2057 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2058, size: 64)
!2058 = !DISubroutineType(types: !2059)
!2059 = !{!113, !209, !1760}
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !203, file: !204, line: 101, baseType: !1716, size: 64, offset: 960)
!2061 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !203, file: !204, line: 103, baseType: !1716, size: 64, offset: 1024)
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !203, file: !204, line: 105, baseType: !1716, size: 64, offset: 1088)
!2063 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !203, file: !204, line: 107, baseType: !1711, size: 64, offset: 1152)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !203, file: !204, line: 109, baseType: !2065, size: 64, offset: 1216)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2067)
!2067 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !204, line: 109, flags: DIFlagFwdDecl)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !203, file: !204, line: 111, baseType: !2028, size: 64, offset: 1280)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !203, file: !204, line: 112, baseType: !2070, offset: 1344)
!2070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !2071, line: 187, elements: !176)
!2071 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !203, file: !204, line: 114, baseType: !1088, size: 8, offset: 1344)
!2073 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !198, file: !45, line: 99, baseType: !2000, size: 64, offset: 128)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !198, file: !45, line: 100, baseType: !186, size: 64, offset: 192)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !198, file: !45, line: 102, baseType: !1088, size: 8, offset: 256)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !198, file: !45, line: 103, baseType: !44, size: 32, offset: 288)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !198, file: !45, line: 105, baseType: !2078, size: 64, offset: 320)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2080)
!2080 = !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !45, line: 105, flags: DIFlagFwdDecl)
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !198, file: !45, line: 106, baseType: !2082, size: 64, offset: 384)
!2082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2083, size: 64)
!2083 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2084)
!2084 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !45, line: 106, flags: DIFlagFwdDecl)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !198, file: !45, line: 108, baseType: !1716, size: 64, offset: 448)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !198, file: !45, line: 109, baseType: !1707, size: 64, offset: 512)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !198, file: !45, line: 110, baseType: !1716, size: 64, offset: 576)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !198, file: !45, line: 111, baseType: !1707, size: 64, offset: 640)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !198, file: !45, line: 112, baseType: !2057, size: 64, offset: 704)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !198, file: !45, line: 113, baseType: !1716, size: 64, offset: 768)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !198, file: !45, line: 114, baseType: !309, size: 64, offset: 832)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !198, file: !45, line: 115, baseType: !309, size: 64, offset: 896)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !198, file: !45, line: 117, baseType: !1711, size: 64, offset: 960)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !198, file: !45, line: 118, baseType: !1707, size: 64, offset: 1024)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !198, file: !45, line: 120, baseType: !2096, size: 64, offset: 1088)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !45, line: 120, flags: DIFlagFwdDecl)
!2098 = !DIDerivedType(tag: DW_TAG_member, name: "ignore", scope: !183, file: !103, line: 60, baseType: !1088, size: 8, offset: 1408)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "drv_mutex", scope: !102, file: !103, line: 43, baseType: !471, size: 192, offset: 1728)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !102, file: !103, line: 45, baseType: !210, size: 5568, offset: 1920)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !102, file: !103, line: 47, baseType: !218, size: 128, offset: 7488)
!2102 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2103, size: 64)
!2103 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !221)
!2104 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2105, size: 64)
!2105 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "gameport_event", file: !3, line: 259, size: 320, elements: !2106)
!2106 = !{!2107, !2108, !2109, !2110}
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2105, file: !3, line: 260, baseType: !50, size: 32)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "object", scope: !2105, file: !3, line: 261, baseType: !100, size: 64, offset: 64)
!2109 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2105, file: !3, line: 262, baseType: !2000, size: 64, offset: 128)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2105, file: !3, line: 263, baseType: !218, size: 128, offset: 192)
!2111 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2112, size: 64)
!2112 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !149, size: 64)
!2114 = !{!0, !2115, !2118, !2123, !2128, !2181, !2186, !2191, !2193, !2200, !2205, !2207, !2210, !2212, !2214, !2216, !2218, !2220, !2222, !2225, !2227, !2230, !2244, !2246, !2248, !2250, !2253, !2266}
!2115 = !DIGlobalVariableExpression(var: !2116, expr: !DIExpression())
!2116 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description162", scope: !2, file: !3, line: 27, type: !2117, isLocal: true, isDefinition: true, align: 8)
!2117 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 352, elements: !445)
!2118 = !DIGlobalVariableExpression(var: !2119, expr: !DIExpression())
!2119 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file163", scope: !2, file: !3, line: 28, type: !2120, isLocal: true, isDefinition: true, align: 8)
!2120 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 368, elements: !2121)
!2121 = !{!2122}
!2122 = !DISubrange(count: 46)
!2123 = !DIGlobalVariableExpression(var: !2124, expr: !DIExpression())
!2124 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license164", scope: !2, file: !3, line: 28, type: !2125, isLocal: true, isDefinition: true, align: 8)
!2125 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 168, elements: !2126)
!2126 = !{!2127}
!2127 = !DISubrange(count: 21)
!2128 = !DIGlobalVariableExpression(var: !2129, expr: !DIExpression())
!2129 = distinct !DIGlobalVariable(name: "__param_use_ktime", scope: !2, file: !3, line: 31, type: !2130, isLocal: true, isDefinition: true, align: 64)
!2130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2131)
!2131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !2132, line: 69, size: 320, elements: !2133)
!2132 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!2133 = !{!2134, !2135, !2136, !2152, !2154, !2158, !2159}
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2131, file: !2132, line: 70, baseType: !186, size: 64)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !2131, file: !2132, line: 71, baseType: !2000, size: 64, offset: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2131, file: !2132, line: 72, baseType: !2137, size: 64, offset: 128)
!2137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2138, size: 64)
!2138 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2139)
!2139 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !2132, line: 47, size: 256, elements: !2140)
!2140 = !{!2141, !2142, !2147, !2151}
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2139, file: !2132, line: 49, baseType: !7, size: 32)
!2142 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !2139, file: !2132, line: 51, baseType: !2143, size: 64, offset: 64)
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = !DISubroutineType(types: !2145)
!2145 = !{!113, !186, !2146}
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2139, file: !2132, line: 53, baseType: !2148, size: 64, offset: 128)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DISubroutineType(types: !2150)
!2150 = !{!113, !257, !2146}
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2139, file: !2132, line: 55, baseType: !1497, size: 64, offset: 192)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !2131, file: !2132, line: 73, baseType: !2153, size: 16, offset: 192)
!2153 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !500)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !2131, file: !2132, line: 74, baseType: !2155, size: 8, offset: 208)
!2155 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !157, line: 16, baseType: !2156)
!2156 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !159, line: 20, baseType: !2157)
!2157 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2131, file: !2132, line: 75, baseType: !661, size: 8, offset: 216)
!2159 = !DIDerivedType(tag: DW_TAG_member, scope: !2131, file: !2132, line: 76, baseType: !2160, size: 64, offset: 256)
!2160 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !2131, file: !2132, line: 76, size: 64, elements: !2161)
!2161 = !{!2162, !2163, !2170}
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !2160, file: !2132, line: 77, baseType: !100, size: 64)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !2160, file: !2132, line: 78, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2165, size: 64)
!2165 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2166)
!2166 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !2132, line: 86, size: 128, elements: !2167)
!2167 = !{!2168, !2169}
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !2166, file: !2132, line: 87, baseType: !7, size: 32)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2166, file: !2132, line: 88, baseType: !257, size: 64, offset: 64)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !2160, file: !2132, line: 79, baseType: !2171, size: 64)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2173)
!2173 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !2132, line: 92, size: 256, elements: !2174)
!2174 = !{!2175, !2176, !2177, !2179, !2180}
!2175 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !2173, file: !2132, line: 94, baseType: !7, size: 32)
!2176 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !2173, file: !2132, line: 95, baseType: !7, size: 32, offset: 32)
!2177 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !2173, file: !2132, line: 96, baseType: !2178, size: 64, offset: 64)
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2173, file: !2132, line: 97, baseType: !2137, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !2173, file: !2132, line: 98, baseType: !100, size: 64, offset: 192)
!2181 = !DIGlobalVariableExpression(var: !2182, expr: !DIExpression())
!2182 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_use_ktimetype165", scope: !2, file: !3, line: 31, type: !2183, isLocal: true, isDefinition: true, align: 8)
!2183 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 264, elements: !2184)
!2184 = !{!2185}
!2185 = !DISubrange(count: 33)
!2186 = !DIGlobalVariableExpression(var: !2187, expr: !DIExpression())
!2187 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_use_ktime166", scope: !2, file: !3, line: 32, type: !2188, isLocal: true, isDefinition: true, align: 8)
!2188 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 464, elements: !2189)
!2189 = !{!2190}
!2190 = !DISubrange(count: 58)
!2191 = !DIGlobalVariableExpression(var: !2192, expr: !DIExpression())
!2192 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_gameport_init193", scope: !2, file: !3, line: 855, type: !100, isLocal: true, isDefinition: true)
!2193 = !DIGlobalVariableExpression(var: !2194, expr: !DIExpression())
!2194 = distinct !DIGlobalVariable(name: "__exitcall_gameport_exit", scope: !2, file: !3, line: 856, type: !2195, isLocal: true, isDefinition: true)
!2195 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2196, line: 117, baseType: !2197)
!2196 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2198, size: 64)
!2198 = !DISubroutineType(types: !2199)
!2199 = !{null}
!2200 = !DIGlobalVariableExpression(var: !2201, expr: !DIExpression())
!2201 = distinct !DIGlobalVariable(name: "__param_str_use_ktime", scope: !2, file: !3, line: 31, type: !2202, isLocal: true, isDefinition: true)
!2202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 152, elements: !2203)
!2203 = !{!2204}
!2204 = !DISubrange(count: 19)
!2205 = !DIGlobalVariableExpression(var: !2206, expr: !DIExpression())
!2206 = distinct !DIGlobalVariable(name: "use_ktime", scope: !2, file: !3, line: 30, type: !1088, isLocal: true, isDefinition: true)
!2207 = !DIGlobalVariableExpression(var: !2208, expr: !DIExpression())
!2208 = distinct !DIGlobalVariable(name: "gameport_no", scope: !2209, file: !3, line: 526, type: !394, isLocal: true, isDefinition: true)
!2209 = distinct !DISubprogram(name: "gameport_init_port", scope: !3, file: !3, line: 524, type: !118, scopeLine: 525, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2210 = !DIGlobalVariableExpression(var: !2211, expr: !DIExpression())
!2211 = distinct !DIGlobalVariable(name: "__key", scope: !2209, file: !3, line: 530, type: !2070, isLocal: true, isDefinition: true)
!2212 = !DIGlobalVariableExpression(var: !2213, expr: !DIExpression())
!2213 = distinct !DIGlobalVariable(name: "gameport_event_lock", scope: !2, file: !3, line: 266, type: !162, isLocal: true, isDefinition: true)
!2214 = !DIGlobalVariableExpression(var: !2215, expr: !DIExpression())
!2215 = distinct !DIGlobalVariable(name: "gameport_event_list", scope: !2, file: !3, line: 267, type: !218, isLocal: true, isDefinition: true)
!2216 = !DIGlobalVariableExpression(var: !2217, expr: !DIExpression())
!2217 = distinct !DIGlobalVariable(name: "gameport_mutex", scope: !2, file: !3, line: 38, type: !471, isLocal: true, isDefinition: true)
!2218 = !DIGlobalVariableExpression(var: !2219, expr: !DIExpression())
!2219 = distinct !DIGlobalVariable(name: "gameport_list", scope: !2, file: !3, line: 40, type: !218, isLocal: true, isDefinition: true)
!2220 = !DIGlobalVariableExpression(var: !2221, expr: !DIExpression())
!2221 = distinct !DIGlobalVariable(name: "gameport_bus", scope: !2, file: !3, line: 787, type: !203, isLocal: true, isDefinition: true)
!2222 = !DIGlobalVariableExpression(var: !2223, expr: !DIExpression())
!2223 = distinct !DIGlobalVariable(name: "gameport_device_groups", scope: !2, file: !3, line: 501, type: !2224, isLocal: true, isDefinition: true)
!2224 = !DICompositeType(tag: DW_TAG_array_type, baseType: !310, size: 128, elements: !1060)
!2225 = !DIGlobalVariableExpression(var: !2226, expr: !DIExpression())
!2226 = distinct !DIGlobalVariable(name: "gameport_device_group", scope: !2, file: !3, line: 501, type: !311, isLocal: true, isDefinition: true)
!2227 = !DIGlobalVariableExpression(var: !2228, expr: !DIExpression())
!2228 = distinct !DIGlobalVariable(name: "gameport_device_attrs", scope: !2, file: !3, line: 496, type: !2229, isLocal: true, isDefinition: true)
!2229 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 192, elements: !258)
!2230 = !DIGlobalVariableExpression(var: !2231, expr: !DIExpression())
!2231 = distinct !DIGlobalVariable(name: "dev_attr_description", scope: !2, file: !3, line: 464, type: !2232, isLocal: true, isDefinition: true)
!2232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !24, line: 99, size: 256, elements: !2233)
!2233 = !{!2234, !2235, !2240}
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2232, file: !24, line: 100, baseType: !293, size: 128)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2232, file: !24, line: 101, baseType: !2236, size: 64, offset: 128)
!2236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2237, size: 64)
!2237 = !DISubroutineType(types: !2238)
!2238 = !{!288, !209, !2239, !257}
!2239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2232, size: 64)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2232, file: !24, line: 103, baseType: !2241, size: 64, offset: 192)
!2241 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2242, size: 64)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{!288, !209, !2239, !186, !303}
!2244 = !DIGlobalVariableExpression(var: !2245, expr: !DIExpression())
!2245 = distinct !DIGlobalVariable(name: "dev_attr_drvctl", scope: !2, file: !3, line: 494, type: !2232, isLocal: true, isDefinition: true)
!2246 = !DIGlobalVariableExpression(var: !2247, expr: !DIExpression())
!2247 = distinct !DIGlobalVariable(name: "gameport_driver_groups", scope: !2, file: !3, line: 689, type: !2224, isLocal: true, isDefinition: true)
!2248 = !DIGlobalVariableExpression(var: !2249, expr: !DIExpression())
!2249 = distinct !DIGlobalVariable(name: "gameport_driver_group", scope: !2, file: !3, line: 689, type: !311, isLocal: true, isDefinition: true)
!2250 = !DIGlobalVariableExpression(var: !2251, expr: !DIExpression())
!2251 = distinct !DIGlobalVariable(name: "gameport_driver_attrs", scope: !2, file: !3, line: 685, type: !2252, isLocal: true, isDefinition: true)
!2252 = !DICompositeType(tag: DW_TAG_array_type, baseType: !292, size: 128, elements: !1060)
!2253 = !DIGlobalVariableExpression(var: !2254, expr: !DIExpression())
!2254 = distinct !DIGlobalVariable(name: "driver_attr_description", scope: !2, file: !3, line: 683, type: !2255, isLocal: true, isDefinition: true)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "driver_attribute", file: !45, line: 134, size: 256, elements: !2256)
!2256 = !{!2257, !2258, !2262}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2255, file: !45, line: 135, baseType: !293, size: 128)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2255, file: !45, line: 136, baseType: !2259, size: 64, offset: 128)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!288, !1743, !257}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2255, file: !45, line: 137, baseType: !2263, size: 64, offset: 192)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{!288, !1743, !186, !303}
!2266 = !DIGlobalVariableExpression(var: !2267, expr: !DIExpression())
!2267 = distinct !DIGlobalVariable(name: "gameport_event_work", scope: !2, file: !3, line: 350, type: !1425, isLocal: true, isDefinition: true)
!2268 = !DICompositeType(tag: DW_TAG_array_type, baseType: !187, size: 384, elements: !2269)
!2269 = !{!2270}
!2270 = !DISubrange(count: 48)
!2271 = !{!"rsp"}
!2272 = !{i32 7, !"Dwarf Version", i32 4}
!2273 = !{i32 2, !"Debug Info Version", i32 3}
!2274 = !{i32 1, !"wchar_size", i32 2}
!2275 = !{i32 1, !"Code Model", i32 2}
!2276 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2277 = distinct !DISubprogram(name: "gameport_start_polling", scope: !3, file: !3, line: 176, type: !118, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2278 = !DILocalVariable(name: "lock", arg: 1, scope: !2279, file: !2280, line: 392, type: !2283)
!2279 = distinct !DISubprogram(name: "spin_unlock", scope: !2280, file: !2280, line: 392, type: !2281, scopeLine: 393, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2280 = !DIFile(filename: "./include/linux/spinlock.h", directory: "/home/lizy2001/genbc/linux")
!2281 = !DISubroutineType(types: !2282)
!2282 = !{null, !2283}
!2283 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!2284 = !DILocation(line: 392, column: 53, scope: !2279, inlinedAt: !2285)
!2285 = distinct !DILocation(line: 186, column: 2, scope: !2277)
!2286 = !DILocalVariable(name: "m", arg: 1, scope: !2287, file: !2288, line: 363, type: !2291)
!2287 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !2288, file: !2288, line: 363, type: !2289, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2288 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!2289 = !DISubroutineType(types: !2290)
!2290 = !{!149, !2291}
!2291 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!2292 = !DILocation(line: 363, column: 74, scope: !2287, inlinedAt: !2293)
!2293 = distinct !DILocation(line: 183, column: 46, scope: !2294)
!2294 = distinct !DILexicalBlock(scope: !2295, file: !3, line: 180, column: 29)
!2295 = distinct !DILexicalBlock(scope: !2277, file: !3, line: 180, column: 6)
!2296 = !DILocalVariable(name: "lock", arg: 1, scope: !2297, file: !2280, line: 352, type: !2283)
!2297 = distinct !DISubprogram(name: "spin_lock", scope: !2280, file: !2280, line: 352, type: !2281, scopeLine: 353, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2298 = !DILocation(line: 352, column: 51, scope: !2297, inlinedAt: !2299)
!2299 = distinct !DILocation(line: 178, column: 2, scope: !2277)
!2300 = !DILocalVariable(name: "gameport", arg: 1, scope: !2277, file: !3, line: 176, type: !101)
!2301 = !DILocation(line: 176, column: 46, scope: !2277)
!2302 = !DILocation(line: 178, column: 13, scope: !2277)
!2303 = !DILocation(line: 178, column: 23, scope: !2277)
!2304 = !DILocation(line: 354, column: 2, scope: !2305, inlinedAt: !2299)
!2305 = distinct !DILexicalBlock(scope: !2297, file: !2280, line: 354, column: 2)
!2306 = !{i32 -2145462329}
!2307 = !DILocation(line: 354, column: 2, scope: !2308, inlinedAt: !2299)
!2308 = distinct !DILexicalBlock(scope: !2305, file: !2280, line: 354, column: 2)
!2309 = !DILocation(line: 180, column: 7, scope: !2295)
!2310 = !DILocation(line: 180, column: 17, scope: !2295)
!2311 = !DILocation(line: 180, column: 25, scope: !2295)
!2312 = !DILocation(line: 180, column: 6, scope: !2277)
!2313 = !DILocation(line: 181, column: 3, scope: !2294)
!2314 = !DILocation(line: 181, column: 3, scope: !2315)
!2315 = distinct !DILexicalBlock(scope: !2316, file: !3, line: 181, column: 3)
!2316 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 181, column: 3)
!2317 = !DILocation(line: 181, column: 3, scope: !2316)
!2318 = !DILocation(line: 181, column: 3, scope: !2319)
!2319 = distinct !DILexicalBlock(scope: !2315, file: !3, line: 181, column: 3)
!2320 = !DILocation(line: 181, column: 3, scope: !2321)
!2321 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 181, column: 3)
!2322 = !DILocation(line: 181, column: 3, scope: !2323)
!2323 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 181, column: 3)
!2324 = !{i32 -2143432867, i32 -2143432838, i32 -2143432792, i32 -2143432734, i32 -2143432680, i32 -2143432626, i32 -2143432571, i32 -2143432540}
!2325 = !DILocation(line: 181, column: 3, scope: !2326)
!2326 = distinct !DILexicalBlock(scope: !2327, file: !3, line: 181, column: 3)
!2327 = distinct !DILexicalBlock(scope: !2319, file: !3, line: 181, column: 3)
!2328 = !{i32 -2143432084, i32 -2143432077, i32 -2143432023, i32 -2143431992, i32 -2143431962}
!2329 = !DILocation(line: 181, column: 3, scope: !2327)
!2330 = !DILocation(line: 182, column: 3, scope: !2294)
!2331 = !DILocation(line: 182, column: 3, scope: !2332)
!2332 = distinct !DILexicalBlock(scope: !2333, file: !3, line: 182, column: 3)
!2333 = distinct !DILexicalBlock(scope: !2294, file: !3, line: 182, column: 3)
!2334 = !DILocation(line: 182, column: 3, scope: !2333)
!2335 = !DILocation(line: 182, column: 3, scope: !2336)
!2336 = distinct !DILexicalBlock(scope: !2332, file: !3, line: 182, column: 3)
!2337 = !DILocation(line: 182, column: 3, scope: !2338)
!2338 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 182, column: 3)
!2339 = !DILocation(line: 182, column: 3, scope: !2340)
!2340 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 182, column: 3)
!2341 = !{i32 -2143431631, i32 -2143431602, i32 -2143431556, i32 -2143431498, i32 -2143431444, i32 -2143431390, i32 -2143431335, i32 -2143431304}
!2342 = !DILocation(line: 182, column: 3, scope: !2343)
!2343 = distinct !DILexicalBlock(scope: !2344, file: !3, line: 182, column: 3)
!2344 = distinct !DILexicalBlock(scope: !2336, file: !3, line: 182, column: 3)
!2345 = !{i32 -2143430848, i32 -2143430841, i32 -2143430787, i32 -2143430756, i32 -2143430726}
!2346 = !DILocation(line: 182, column: 3, scope: !2344)
!2347 = !DILocation(line: 183, column: 14, scope: !2294)
!2348 = !DILocation(line: 183, column: 24, scope: !2294)
!2349 = !DILocation(line: 183, column: 36, scope: !2294)
!2350 = !DILocation(line: 183, column: 63, scope: !2294)
!2351 = !DILocation(line: 183, column: 73, scope: !2294)
!2352 = !DILocation(line: 365, column: 27, scope: !2353, inlinedAt: !2293)
!2353 = distinct !DILexicalBlock(scope: !2287, file: !2288, line: 365, column: 6)
!2354 = !DILocation(line: 365, column: 6, scope: !2353, inlinedAt: !2293)
!2355 = !DILocation(line: 365, column: 6, scope: !2287, inlinedAt: !2293)
!2356 = !DILocation(line: 366, column: 12, scope: !2357, inlinedAt: !2293)
!2357 = distinct !DILexicalBlock(scope: !2358, file: !2288, line: 366, column: 7)
!2358 = distinct !DILexicalBlock(scope: !2353, file: !2288, line: 365, column: 31)
!2359 = !DILocation(line: 366, column: 14, scope: !2357, inlinedAt: !2293)
!2360 = !DILocation(line: 366, column: 7, scope: !2358, inlinedAt: !2293)
!2361 = !DILocation(line: 367, column: 4, scope: !2357, inlinedAt: !2293)
!2362 = !DILocation(line: 368, column: 28, scope: !2358, inlinedAt: !2293)
!2363 = !DILocation(line: 368, column: 10, scope: !2358, inlinedAt: !2293)
!2364 = !DILocation(line: 368, column: 3, scope: !2358, inlinedAt: !2293)
!2365 = !DILocation(line: 370, column: 29, scope: !2366, inlinedAt: !2293)
!2366 = distinct !DILexicalBlock(scope: !2353, file: !2288, line: 369, column: 9)
!2367 = !DILocation(line: 370, column: 10, scope: !2366, inlinedAt: !2293)
!2368 = !DILocation(line: 370, column: 3, scope: !2366, inlinedAt: !2293)
!2369 = !DILocation(line: 372, column: 1, scope: !2287, inlinedAt: !2293)
!2370 = !DILocation(line: 183, column: 44, scope: !2294)
!2371 = !DILocation(line: 183, column: 3, scope: !2294)
!2372 = !DILocation(line: 184, column: 2, scope: !2294)
!2373 = !DILocation(line: 186, column: 15, scope: !2277)
!2374 = !DILocation(line: 186, column: 25, scope: !2277)
!2375 = !DILocation(line: 394, column: 2, scope: !2376, inlinedAt: !2285)
!2376 = distinct !DILexicalBlock(scope: !2279, file: !2280, line: 394, column: 2)
!2377 = !{i32 -2145459968}
!2378 = !DILocation(line: 394, column: 2, scope: !2379, inlinedAt: !2285)
!2379 = distinct !DILexicalBlock(scope: !2376, file: !2280, line: 394, column: 2)
!2380 = !DILocation(line: 187, column: 1, scope: !2277)
!2381 = distinct !DISubprogram(name: "gameport_stop_polling", scope: !3, file: !3, line: 190, type: !118, scopeLine: 191, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2382 = !DILocation(line: 392, column: 53, scope: !2279, inlinedAt: !2383)
!2383 = distinct !DILocation(line: 197, column: 2, scope: !2381)
!2384 = !DILocation(line: 352, column: 51, scope: !2297, inlinedAt: !2385)
!2385 = distinct !DILocation(line: 192, column: 2, scope: !2381)
!2386 = !DILocalVariable(name: "gameport", arg: 1, scope: !2381, file: !3, line: 190, type: !101)
!2387 = !DILocation(line: 190, column: 45, scope: !2381)
!2388 = !DILocation(line: 192, column: 13, scope: !2381)
!2389 = !DILocation(line: 192, column: 23, scope: !2381)
!2390 = !DILocation(line: 354, column: 2, scope: !2305, inlinedAt: !2385)
!2391 = !DILocation(line: 354, column: 2, scope: !2308, inlinedAt: !2385)
!2392 = !DILocation(line: 194, column: 9, scope: !2393)
!2393 = distinct !DILexicalBlock(scope: !2381, file: !3, line: 194, column: 6)
!2394 = !DILocation(line: 194, column: 19, scope: !2393)
!2395 = !DILocation(line: 194, column: 7, scope: !2393)
!2396 = !DILocation(line: 194, column: 6, scope: !2381)
!2397 = !DILocation(line: 195, column: 14, scope: !2393)
!2398 = !DILocation(line: 195, column: 24, scope: !2393)
!2399 = !DILocation(line: 195, column: 3, scope: !2393)
!2400 = !DILocation(line: 197, column: 15, scope: !2381)
!2401 = !DILocation(line: 197, column: 25, scope: !2381)
!2402 = !DILocation(line: 394, column: 2, scope: !2376, inlinedAt: !2383)
!2403 = !DILocation(line: 394, column: 2, scope: !2379, inlinedAt: !2383)
!2404 = !DILocation(line: 198, column: 1, scope: !2381)
!2405 = distinct !DISubprogram(name: "gameport_set_phys", scope: !3, file: !3, line: 511, type: !2406, scopeLine: 512, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2406 = !DISubroutineType(types: !2407)
!2407 = !{null, !101, !186, null}
!2408 = !DILocalVariable(name: "gameport", arg: 1, scope: !2405, file: !3, line: 511, type: !101)
!2409 = !DILocation(line: 511, column: 41, scope: !2405)
!2410 = !DILocalVariable(name: "fmt", arg: 2, scope: !2405, file: !3, line: 511, type: !186)
!2411 = !DILocation(line: 511, column: 63, scope: !2405)
!2412 = !DILocalVariable(name: "args", scope: !2405, file: !3, line: 513, type: !2413)
!2413 = !DIDerivedType(tag: DW_TAG_typedef, name: "va_list", file: !2414, line: 99, baseType: !2415)
!2414 = !DIFile(filename: "/usr/lib/gcc/x86_64-linux-gnu/9/include/stdarg.h", directory: "")
!2415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__gnuc_va_list", file: !2414, line: 40, baseType: !2416)
!2416 = !DIDerivedType(tag: DW_TAG_typedef, name: "__builtin_va_list", file: !3, line: 513, baseType: !2417)
!2417 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2418, size: 192, elements: !680)
!2418 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__va_list_tag", file: !3, line: 513, size: 192, elements: !2419)
!2419 = !{!2420, !2421, !2422, !2423}
!2420 = !DIDerivedType(tag: DW_TAG_member, name: "gp_offset", scope: !2418, file: !3, line: 513, baseType: !7, size: 32)
!2421 = !DIDerivedType(tag: DW_TAG_member, name: "fp_offset", scope: !2418, file: !3, line: 513, baseType: !7, size: 32, offset: 32)
!2422 = !DIDerivedType(tag: DW_TAG_member, name: "overflow_arg_area", scope: !2418, file: !3, line: 513, baseType: !100, size: 64, offset: 64)
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "reg_save_area", scope: !2418, file: !3, line: 513, baseType: !100, size: 64, offset: 128)
!2424 = !DILocation(line: 513, column: 10, scope: !2405)
!2425 = !DILocation(line: 515, column: 2, scope: !2405)
!2426 = !DILocation(line: 516, column: 12, scope: !2405)
!2427 = !DILocation(line: 516, column: 22, scope: !2405)
!2428 = !DILocation(line: 516, column: 52, scope: !2405)
!2429 = !DILocation(line: 516, column: 57, scope: !2405)
!2430 = !DILocation(line: 516, column: 2, scope: !2405)
!2431 = !DILocation(line: 517, column: 2, scope: !2405)
!2432 = !DILocation(line: 518, column: 1, scope: !2405)
!2433 = distinct !DISubprogram(name: "__gameport_register_port", scope: !3, file: !3, line: 654, type: !2434, scopeLine: 655, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2434 = !DISubroutineType(types: !2435)
!2435 = !{null, !101, !2000}
!2436 = !DILocalVariable(name: "gameport", arg: 1, scope: !2433, file: !3, line: 654, type: !101)
!2437 = !DILocation(line: 654, column: 48, scope: !2433)
!2438 = !DILocalVariable(name: "owner", arg: 2, scope: !2433, file: !3, line: 654, type: !2000)
!2439 = !DILocation(line: 654, column: 73, scope: !2433)
!2440 = !DILocation(line: 656, column: 21, scope: !2433)
!2441 = !DILocation(line: 656, column: 2, scope: !2433)
!2442 = !DILocation(line: 657, column: 23, scope: !2433)
!2443 = !DILocation(line: 657, column: 33, scope: !2433)
!2444 = !DILocation(line: 657, column: 2, scope: !2433)
!2445 = !DILocation(line: 658, column: 1, scope: !2433)
!2446 = !DILocalVariable(name: "lock", arg: 1, scope: !2447, file: !2280, line: 327, type: !2283)
!2447 = distinct !DISubprogram(name: "spinlock_check", scope: !2280, file: !2280, line: 327, type: !2448, scopeLine: 328, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2448 = !DISubroutineType(types: !2449)
!2449 = !{!2450, !2283}
!2450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !419, size: 64)
!2451 = !DILocation(line: 327, column: 67, scope: !2447, inlinedAt: !2452)
!2452 = distinct !DILocation(line: 540, column: 2, scope: !2453)
!2453 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 540, column: 2)
!2454 = !DILocalVariable(name: "i", arg: 1, scope: !2455, file: !2456, line: 163, type: !113)
!2455 = distinct !DISubprogram(name: "arch_atomic_add_return", scope: !2456, file: !2456, line: 163, type: !2457, scopeLine: 164, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2456 = !DIFile(filename: "./arch/x86/include/asm/atomic.h", directory: "/home/lizy2001/genbc/linux")
!2457 = !DISubroutineType(types: !2458)
!2458 = !{!113, !113, !2459}
!2459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !394, size: 64)
!2460 = !DILocation(line: 163, column: 55, scope: !2455, inlinedAt: !2461)
!2461 = distinct !DILocation(line: 286, column: 9, scope: !2462, inlinedAt: !2466)
!2462 = distinct !DISubprogram(name: "arch_atomic_inc_return", scope: !2463, file: !2463, line: 284, type: !2464, scopeLine: 285, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2463 = !DIFile(filename: "./include/linux/atomic-arch-fallback.h", directory: "/home/lizy2001/genbc/linux")
!2464 = !DISubroutineType(types: !2465)
!2465 = !{!113, !2459}
!2466 = distinct !DILocation(line: 251, column: 9, scope: !2467, inlinedAt: !2469)
!2467 = distinct !DISubprogram(name: "atomic_inc_return", scope: !2468, file: !2468, line: 248, type: !2464, scopeLine: 249, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2468 = !DIFile(filename: "./include/asm-generic/atomic-instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2469 = distinct !DILocation(line: 533, column: 19, scope: !2209)
!2470 = !DILocalVariable(name: "v", arg: 2, scope: !2455, file: !2456, line: 163, type: !2459)
!2471 = !DILocation(line: 163, column: 68, scope: !2455, inlinedAt: !2461)
!2472 = !DILocalVariable(name: "__ret", scope: !2473, file: !2456, line: 165, type: !113)
!2473 = distinct !DILexicalBlock(scope: !2455, file: !2456, line: 165, column: 13)
!2474 = !DILocation(line: 165, column: 13, scope: !2473, inlinedAt: !2461)
!2475 = !DILocalVariable(name: "v", arg: 1, scope: !2462, file: !2463, line: 284, type: !2459)
!2476 = !DILocation(line: 284, column: 34, scope: !2462, inlinedAt: !2466)
!2477 = !DILocalVariable(name: "v", arg: 1, scope: !2478, file: !2479, line: 99, type: !2482)
!2478 = distinct !DISubprogram(name: "instrument_atomic_read_write", scope: !2479, file: !2479, line: 99, type: !2480, scopeLine: 100, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2479 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!2480 = !DISubroutineType(types: !2481)
!2481 = !{null, !2482, !303}
!2482 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2483, size: 64)
!2483 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2484)
!2484 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2485 = !DILocation(line: 99, column: 79, scope: !2478, inlinedAt: !2486)
!2486 = distinct !DILocation(line: 250, column: 2, scope: !2467, inlinedAt: !2469)
!2487 = !DILocalVariable(name: "size", arg: 2, scope: !2478, file: !2479, line: 99, type: !303)
!2488 = !DILocation(line: 99, column: 89, scope: !2478, inlinedAt: !2486)
!2489 = !DILocalVariable(name: "v", arg: 1, scope: !2467, file: !2468, line: 248, type: !2459)
!2490 = !DILocation(line: 248, column: 29, scope: !2467, inlinedAt: !2469)
!2491 = !DILocalVariable(name: "gameport", arg: 1, scope: !2209, file: !3, line: 524, type: !101)
!2492 = !DILocation(line: 524, column: 49, scope: !2209)
!2493 = !DILocation(line: 528, column: 2, scope: !2209)
!2494 = !DILocation(line: 530, column: 2, scope: !2209)
!2495 = !DILocation(line: 530, column: 2, scope: !2496)
!2496 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 530, column: 2)
!2497 = !DILocation(line: 531, column: 21, scope: !2209)
!2498 = !DILocation(line: 531, column: 31, scope: !2209)
!2499 = !DILocation(line: 531, column: 2, scope: !2209)
!2500 = !DILocation(line: 532, column: 16, scope: !2209)
!2501 = !DILocation(line: 532, column: 26, scope: !2209)
!2502 = !DILocation(line: 250, column: 31, scope: !2467, inlinedAt: !2469)
!2503 = !DILocation(line: 101, column: 20, scope: !2478, inlinedAt: !2486)
!2504 = !DILocation(line: 101, column: 23, scope: !2478, inlinedAt: !2486)
!2505 = !DILocation(line: 101, column: 2, scope: !2478, inlinedAt: !2486)
!2506 = !DILocation(line: 102, column: 2, scope: !2478, inlinedAt: !2486)
!2507 = !DILocation(line: 251, column: 32, scope: !2467, inlinedAt: !2469)
!2508 = !DILocation(line: 286, column: 35, scope: !2462, inlinedAt: !2466)
!2509 = !DILocation(line: 165, column: 9, scope: !2455, inlinedAt: !2461)
!2510 = !{i32 -2146606996}
!2511 = !DILocation(line: 165, column: 11, scope: !2455, inlinedAt: !2461)
!2512 = !DILocation(line: 533, column: 4, scope: !2209)
!2513 = !DILocation(line: 532, column: 2, scope: !2209)
!2514 = !DILocation(line: 534, column: 2, scope: !2209)
!2515 = !DILocation(line: 534, column: 12, scope: !2209)
!2516 = !DILocation(line: 534, column: 16, scope: !2209)
!2517 = !DILocation(line: 534, column: 20, scope: !2209)
!2518 = !DILocation(line: 535, column: 2, scope: !2209)
!2519 = !DILocation(line: 535, column: 12, scope: !2209)
!2520 = !DILocation(line: 535, column: 16, scope: !2209)
!2521 = !DILocation(line: 535, column: 24, scope: !2209)
!2522 = !DILocation(line: 536, column: 6, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2209, file: !3, line: 536, column: 6)
!2524 = !DILocation(line: 536, column: 16, scope: !2523)
!2525 = !DILocation(line: 536, column: 6, scope: !2209)
!2526 = !DILocation(line: 537, column: 27, scope: !2523)
!2527 = !DILocation(line: 537, column: 37, scope: !2523)
!2528 = !DILocation(line: 537, column: 45, scope: !2523)
!2529 = !DILocation(line: 537, column: 3, scope: !2523)
!2530 = !DILocation(line: 537, column: 13, scope: !2523)
!2531 = !DILocation(line: 537, column: 17, scope: !2523)
!2532 = !DILocation(line: 537, column: 24, scope: !2523)
!2533 = !DILocation(line: 539, column: 18, scope: !2209)
!2534 = !DILocation(line: 539, column: 28, scope: !2209)
!2535 = !DILocation(line: 539, column: 2, scope: !2209)
!2536 = !DILocation(line: 540, column: 2, scope: !2209)
!2537 = !DILocation(line: 540, column: 2, scope: !2453)
!2538 = !DILocation(line: 329, column: 10, scope: !2447, inlinedAt: !2452)
!2539 = !DILocation(line: 329, column: 16, scope: !2447, inlinedAt: !2452)
!2540 = !DILocation(line: 541, column: 2, scope: !2209)
!2541 = !DILocation(line: 542, column: 1, scope: !2209)
!2542 = distinct !DISubprogram(name: "gameport_queue_event", scope: !3, file: !3, line: 352, type: !2543, scopeLine: 354, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2543 = !DISubroutineType(types: !2544)
!2544 = !{!113, !100, !2000, !50}
!2545 = !DILocalVariable(name: "s", arg: 1, scope: !2546, file: !60, line: 445, type: !1138)
!2546 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !60, file: !60, line: 445, type: !2547, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2547 = !DISubroutineType(types: !2548)
!2548 = !{!100, !1138, !1557, !303}
!2549 = !DILocation(line: 445, column: 72, scope: !2546, inlinedAt: !2550)
!2550 = distinct !DILocation(line: 552, column: 10, scope: !2551, inlinedAt: !2556)
!2551 = distinct !DILexicalBlock(scope: !2552, file: !60, line: 540, column: 34)
!2552 = distinct !DILexicalBlock(scope: !2553, file: !60, line: 540, column: 6)
!2553 = distinct !DISubprogram(name: "kmalloc", scope: !60, file: !60, line: 538, type: !2554, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!100, !303, !1557}
!2556 = distinct !DILocation(line: 376, column: 10, scope: !2542)
!2557 = !DILocalVariable(name: "flags", arg: 2, scope: !2546, file: !60, line: 446, type: !1557)
!2558 = !DILocation(line: 446, column: 9, scope: !2546, inlinedAt: !2550)
!2559 = !DILocalVariable(name: "size", arg: 3, scope: !2546, file: !60, line: 446, type: !303)
!2560 = !DILocation(line: 446, column: 23, scope: !2546, inlinedAt: !2550)
!2561 = !DILocalVariable(name: "ret", scope: !2546, file: !60, line: 448, type: !100)
!2562 = !DILocation(line: 448, column: 8, scope: !2546, inlinedAt: !2550)
!2563 = !DILocalVariable(name: "flags", arg: 1, scope: !2564, file: !60, line: 318, type: !1557)
!2564 = distinct !DISubprogram(name: "kmalloc_type", scope: !60, file: !60, line: 318, type: !2565, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2565 = !DISubroutineType(types: !2566)
!2566 = !{!59, !1557}
!2567 = !DILocation(line: 318, column: 67, scope: !2564, inlinedAt: !2568)
!2568 = distinct !DILocation(line: 553, column: 20, scope: !2551, inlinedAt: !2556)
!2569 = !DILocalVariable(name: "size", arg: 1, scope: !2570, file: !60, line: 346, type: !303)
!2570 = distinct !DISubprogram(name: "kmalloc_index", scope: !60, file: !60, line: 346, type: !2571, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2571 = !DISubroutineType(types: !2572)
!2572 = !{!7, !303}
!2573 = !DILocation(line: 346, column: 58, scope: !2570, inlinedAt: !2574)
!2574 = distinct !DILocation(line: 547, column: 11, scope: !2551, inlinedAt: !2556)
!2575 = !DILocalVariable(name: "size", arg: 1, scope: !2576, file: !60, line: 472, type: !303)
!2576 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !60, file: !60, line: 472, type: !2577, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2577 = !DISubroutineType(types: !2578)
!2578 = !{!100, !303, !1557, !7}
!2579 = !DILocation(line: 472, column: 28, scope: !2576, inlinedAt: !2580)
!2580 = distinct !DILocation(line: 481, column: 9, scope: !2581, inlinedAt: !2582)
!2581 = distinct !DISubprogram(name: "kmalloc_large", scope: !60, file: !60, line: 478, type: !2554, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2582 = distinct !DILocation(line: 545, column: 11, scope: !2583, inlinedAt: !2556)
!2583 = distinct !DILexicalBlock(scope: !2551, file: !60, line: 544, column: 7)
!2584 = !DILocalVariable(name: "flags", arg: 2, scope: !2576, file: !60, line: 472, type: !1557)
!2585 = !DILocation(line: 472, column: 40, scope: !2576, inlinedAt: !2580)
!2586 = !DILocalVariable(name: "order", arg: 3, scope: !2576, file: !60, line: 472, type: !7)
!2587 = !DILocation(line: 472, column: 60, scope: !2576, inlinedAt: !2580)
!2588 = !DILocalVariable(name: "size", arg: 1, scope: !2581, file: !60, line: 478, type: !303)
!2589 = !DILocation(line: 478, column: 51, scope: !2581, inlinedAt: !2582)
!2590 = !DILocalVariable(name: "flags", arg: 2, scope: !2581, file: !60, line: 478, type: !1557)
!2591 = !DILocation(line: 478, column: 63, scope: !2581, inlinedAt: !2582)
!2592 = !DILocalVariable(name: "order", scope: !2581, file: !60, line: 480, type: !7)
!2593 = !DILocation(line: 480, column: 15, scope: !2581, inlinedAt: !2582)
!2594 = !DILocalVariable(name: "size", arg: 1, scope: !2553, file: !60, line: 538, type: !303)
!2595 = !DILocation(line: 538, column: 45, scope: !2553, inlinedAt: !2556)
!2596 = !DILocalVariable(name: "flags", arg: 2, scope: !2553, file: !60, line: 538, type: !1557)
!2597 = !DILocation(line: 538, column: 57, scope: !2553, inlinedAt: !2556)
!2598 = !DILocalVariable(name: "index", scope: !2551, file: !60, line: 542, type: !7)
!2599 = !DILocation(line: 542, column: 16, scope: !2551, inlinedAt: !2556)
!2600 = !DILocalVariable(name: "lock", arg: 1, scope: !2601, file: !2280, line: 407, type: !2283)
!2601 = distinct !DISubprogram(name: "spin_unlock_irqrestore", scope: !2280, file: !2280, line: 407, type: !2602, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2602 = !DISubroutineType(types: !2603)
!2603 = !{null, !2283, !149}
!2604 = !DILocation(line: 407, column: 64, scope: !2601, inlinedAt: !2605)
!2605 = distinct !DILocation(line: 399, column: 2, scope: !2542)
!2606 = !DILocalVariable(name: "flags", arg: 2, scope: !2601, file: !2280, line: 407, type: !149)
!2607 = !DILocation(line: 407, column: 84, scope: !2601, inlinedAt: !2605)
!2608 = !DILocation(line: 327, column: 67, scope: !2447, inlinedAt: !2609)
!2609 = distinct !DILocation(line: 359, column: 2, scope: !2610)
!2610 = distinct !DILexicalBlock(scope: !2611, file: !3, line: 359, column: 2)
!2611 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 359, column: 2)
!2612 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 359, column: 2)
!2613 = distinct !DILexicalBlock(scope: !2614, file: !3, line: 359, column: 2)
!2614 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 359, column: 2)
!2615 = !DILocalVariable(name: "object", arg: 1, scope: !2542, file: !3, line: 352, type: !100)
!2616 = !DILocation(line: 352, column: 39, scope: !2542)
!2617 = !DILocalVariable(name: "owner", arg: 2, scope: !2542, file: !3, line: 352, type: !2000)
!2618 = !DILocation(line: 352, column: 62, scope: !2542)
!2619 = !DILocalVariable(name: "event_type", arg: 3, scope: !2542, file: !3, line: 353, type: !50)
!2620 = !DILocation(line: 353, column: 30, scope: !2542)
!2621 = !DILocalVariable(name: "flags", scope: !2542, file: !3, line: 355, type: !149)
!2622 = !DILocation(line: 355, column: 16, scope: !2542)
!2623 = !DILocalVariable(name: "event", scope: !2542, file: !3, line: 356, type: !2104)
!2624 = !DILocation(line: 356, column: 25, scope: !2542)
!2625 = !DILocalVariable(name: "retval", scope: !2542, file: !3, line: 357, type: !113)
!2626 = !DILocation(line: 357, column: 6, scope: !2542)
!2627 = !DILocation(line: 359, column: 2, scope: !2542)
!2628 = !DILocation(line: 359, column: 2, scope: !2614)
!2629 = !DILocalVariable(name: "__dummy", scope: !2630, file: !3, line: 359, type: !149)
!2630 = distinct !DILexicalBlock(scope: !2613, file: !3, line: 359, column: 2)
!2631 = !DILocation(line: 359, column: 2, scope: !2630)
!2632 = !DILocalVariable(name: "__dummy2", scope: !2630, file: !3, line: 359, type: !149)
!2633 = !DILocation(line: 359, column: 2, scope: !2613)
!2634 = !DILocation(line: 359, column: 2, scope: !2612)
!2635 = !DILocation(line: 359, column: 2, scope: !2636)
!2636 = distinct !DILexicalBlock(scope: !2612, file: !3, line: 359, column: 2)
!2637 = !DILocalVariable(name: "__dummy", scope: !2638, file: !3, line: 359, type: !149)
!2638 = distinct !DILexicalBlock(scope: !2639, file: !3, line: 359, column: 2)
!2639 = distinct !DILexicalBlock(scope: !2636, file: !3, line: 359, column: 2)
!2640 = !DILocation(line: 359, column: 2, scope: !2638)
!2641 = !DILocalVariable(name: "__dummy2", scope: !2638, file: !3, line: 359, type: !149)
!2642 = !DILocation(line: 359, column: 2, scope: !2639)
!2643 = !DILocation(line: 359, column: 2, scope: !2611)
!2644 = !{i32 -2143416591}
!2645 = !DILocation(line: 329, column: 10, scope: !2447, inlinedAt: !2609)
!2646 = !DILocation(line: 329, column: 16, scope: !2447, inlinedAt: !2609)
!2647 = !DILocation(line: 359, column: 2, scope: !2610)
!2648 = !DILocalVariable(name: "__mptr", scope: !2649, file: !3, line: 368, type: !100)
!2649 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 368, column: 2)
!2650 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 368, column: 2)
!2651 = !DILocation(line: 368, column: 2, scope: !2649)
!2652 = !DILocation(line: 368, column: 2, scope: !2653)
!2653 = distinct !DILexicalBlock(scope: !2649, file: !3, line: 368, column: 2)
!2654 = !DILocation(line: 368, column: 2, scope: !2650)
!2655 = !DILocation(line: 368, column: 2, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2650, file: !3, line: 368, column: 2)
!2657 = !DILocation(line: 369, column: 7, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 369, column: 7)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 368, column: 65)
!2660 = !DILocation(line: 369, column: 14, scope: !2658)
!2661 = !DILocation(line: 369, column: 24, scope: !2658)
!2662 = !DILocation(line: 369, column: 21, scope: !2658)
!2663 = !DILocation(line: 369, column: 7, scope: !2659)
!2664 = !DILocation(line: 370, column: 8, scope: !2665)
!2665 = distinct !DILexicalBlock(scope: !2666, file: !3, line: 370, column: 8)
!2666 = distinct !DILexicalBlock(scope: !2658, file: !3, line: 369, column: 32)
!2667 = !DILocation(line: 370, column: 15, scope: !2665)
!2668 = !DILocation(line: 370, column: 23, scope: !2665)
!2669 = !DILocation(line: 370, column: 20, scope: !2665)
!2670 = !DILocation(line: 370, column: 8, scope: !2666)
!2671 = !DILocation(line: 371, column: 5, scope: !2665)
!2672 = !DILocation(line: 372, column: 4, scope: !2666)
!2673 = !DILocation(line: 374, column: 2, scope: !2659)
!2674 = !DILocalVariable(name: "__mptr", scope: !2675, file: !3, line: 368, type: !100)
!2675 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 368, column: 2)
!2676 = !DILocation(line: 368, column: 2, scope: !2675)
!2677 = !DILocation(line: 368, column: 2, scope: !2678)
!2678 = distinct !DILexicalBlock(scope: !2675, file: !3, line: 368, column: 2)
!2679 = distinct !{!2679, !2654, !2680}
!2680 = !DILocation(line: 374, column: 2, scope: !2650)
!2681 = !DILocation(line: 540, column: 27, scope: !2552, inlinedAt: !2556)
!2682 = !DILocation(line: 540, column: 6, scope: !2552, inlinedAt: !2556)
!2683 = !DILocation(line: 540, column: 6, scope: !2553, inlinedAt: !2556)
!2684 = !DILocation(line: 544, column: 7, scope: !2583, inlinedAt: !2556)
!2685 = !DILocation(line: 544, column: 12, scope: !2583, inlinedAt: !2556)
!2686 = !DILocation(line: 544, column: 7, scope: !2551, inlinedAt: !2556)
!2687 = !DILocation(line: 545, column: 25, scope: !2583, inlinedAt: !2556)
!2688 = !DILocation(line: 545, column: 31, scope: !2583, inlinedAt: !2556)
!2689 = !DILocation(line: 480, column: 33, scope: !2581, inlinedAt: !2582)
!2690 = !DILocation(line: 480, column: 23, scope: !2581, inlinedAt: !2582)
!2691 = !DILocation(line: 481, column: 29, scope: !2581, inlinedAt: !2582)
!2692 = !DILocation(line: 481, column: 35, scope: !2581, inlinedAt: !2582)
!2693 = !DILocation(line: 481, column: 42, scope: !2581, inlinedAt: !2582)
!2694 = !DILocation(line: 474, column: 23, scope: !2576, inlinedAt: !2580)
!2695 = !DILocation(line: 474, column: 29, scope: !2576, inlinedAt: !2580)
!2696 = !DILocation(line: 474, column: 36, scope: !2576, inlinedAt: !2580)
!2697 = !DILocation(line: 474, column: 9, scope: !2576, inlinedAt: !2580)
!2698 = !DILocation(line: 545, column: 4, scope: !2583, inlinedAt: !2556)
!2699 = !DILocation(line: 547, column: 25, scope: !2551, inlinedAt: !2556)
!2700 = !DILocation(line: 348, column: 7, scope: !2701, inlinedAt: !2574)
!2701 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 348, column: 6)
!2702 = !DILocation(line: 348, column: 6, scope: !2570, inlinedAt: !2574)
!2703 = !DILocation(line: 349, column: 3, scope: !2701, inlinedAt: !2574)
!2704 = !DILocation(line: 351, column: 6, scope: !2705, inlinedAt: !2574)
!2705 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 351, column: 6)
!2706 = !DILocation(line: 351, column: 11, scope: !2705, inlinedAt: !2574)
!2707 = !DILocation(line: 351, column: 6, scope: !2570, inlinedAt: !2574)
!2708 = !DILocation(line: 352, column: 3, scope: !2705, inlinedAt: !2574)
!2709 = !DILocation(line: 354, column: 32, scope: !2710, inlinedAt: !2574)
!2710 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 354, column: 6)
!2711 = !DILocation(line: 354, column: 37, scope: !2710, inlinedAt: !2574)
!2712 = !DILocation(line: 354, column: 42, scope: !2710, inlinedAt: !2574)
!2713 = !DILocation(line: 354, column: 45, scope: !2710, inlinedAt: !2574)
!2714 = !DILocation(line: 354, column: 50, scope: !2710, inlinedAt: !2574)
!2715 = !DILocation(line: 354, column: 6, scope: !2570, inlinedAt: !2574)
!2716 = !DILocation(line: 355, column: 3, scope: !2710, inlinedAt: !2574)
!2717 = !DILocation(line: 356, column: 32, scope: !2718, inlinedAt: !2574)
!2718 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 356, column: 6)
!2719 = !DILocation(line: 356, column: 37, scope: !2718, inlinedAt: !2574)
!2720 = !DILocation(line: 356, column: 43, scope: !2718, inlinedAt: !2574)
!2721 = !DILocation(line: 356, column: 46, scope: !2718, inlinedAt: !2574)
!2722 = !DILocation(line: 356, column: 51, scope: !2718, inlinedAt: !2574)
!2723 = !DILocation(line: 356, column: 6, scope: !2570, inlinedAt: !2574)
!2724 = !DILocation(line: 357, column: 3, scope: !2718, inlinedAt: !2574)
!2725 = !DILocation(line: 358, column: 6, scope: !2726, inlinedAt: !2574)
!2726 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 358, column: 6)
!2727 = !DILocation(line: 358, column: 11, scope: !2726, inlinedAt: !2574)
!2728 = !DILocation(line: 358, column: 6, scope: !2570, inlinedAt: !2574)
!2729 = !DILocation(line: 358, column: 26, scope: !2726, inlinedAt: !2574)
!2730 = !DILocation(line: 359, column: 6, scope: !2731, inlinedAt: !2574)
!2731 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 359, column: 6)
!2732 = !DILocation(line: 359, column: 11, scope: !2731, inlinedAt: !2574)
!2733 = !DILocation(line: 359, column: 6, scope: !2570, inlinedAt: !2574)
!2734 = !DILocation(line: 359, column: 26, scope: !2731, inlinedAt: !2574)
!2735 = !DILocation(line: 360, column: 6, scope: !2736, inlinedAt: !2574)
!2736 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 360, column: 6)
!2737 = !DILocation(line: 360, column: 11, scope: !2736, inlinedAt: !2574)
!2738 = !DILocation(line: 360, column: 6, scope: !2570, inlinedAt: !2574)
!2739 = !DILocation(line: 360, column: 26, scope: !2736, inlinedAt: !2574)
!2740 = !DILocation(line: 361, column: 6, scope: !2741, inlinedAt: !2574)
!2741 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 361, column: 6)
!2742 = !DILocation(line: 361, column: 11, scope: !2741, inlinedAt: !2574)
!2743 = !DILocation(line: 361, column: 6, scope: !2570, inlinedAt: !2574)
!2744 = !DILocation(line: 361, column: 26, scope: !2741, inlinedAt: !2574)
!2745 = !DILocation(line: 362, column: 6, scope: !2746, inlinedAt: !2574)
!2746 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 362, column: 6)
!2747 = !DILocation(line: 362, column: 11, scope: !2746, inlinedAt: !2574)
!2748 = !DILocation(line: 362, column: 6, scope: !2570, inlinedAt: !2574)
!2749 = !DILocation(line: 362, column: 26, scope: !2746, inlinedAt: !2574)
!2750 = !DILocation(line: 363, column: 6, scope: !2751, inlinedAt: !2574)
!2751 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 363, column: 6)
!2752 = !DILocation(line: 363, column: 11, scope: !2751, inlinedAt: !2574)
!2753 = !DILocation(line: 363, column: 6, scope: !2570, inlinedAt: !2574)
!2754 = !DILocation(line: 363, column: 26, scope: !2751, inlinedAt: !2574)
!2755 = !DILocation(line: 364, column: 6, scope: !2756, inlinedAt: !2574)
!2756 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 364, column: 6)
!2757 = !DILocation(line: 364, column: 11, scope: !2756, inlinedAt: !2574)
!2758 = !DILocation(line: 364, column: 6, scope: !2570, inlinedAt: !2574)
!2759 = !DILocation(line: 364, column: 26, scope: !2756, inlinedAt: !2574)
!2760 = !DILocation(line: 365, column: 6, scope: !2761, inlinedAt: !2574)
!2761 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 365, column: 6)
!2762 = !DILocation(line: 365, column: 11, scope: !2761, inlinedAt: !2574)
!2763 = !DILocation(line: 365, column: 6, scope: !2570, inlinedAt: !2574)
!2764 = !DILocation(line: 365, column: 26, scope: !2761, inlinedAt: !2574)
!2765 = !DILocation(line: 366, column: 6, scope: !2766, inlinedAt: !2574)
!2766 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 366, column: 6)
!2767 = !DILocation(line: 366, column: 11, scope: !2766, inlinedAt: !2574)
!2768 = !DILocation(line: 366, column: 6, scope: !2570, inlinedAt: !2574)
!2769 = !DILocation(line: 366, column: 26, scope: !2766, inlinedAt: !2574)
!2770 = !DILocation(line: 367, column: 6, scope: !2771, inlinedAt: !2574)
!2771 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 367, column: 6)
!2772 = !DILocation(line: 367, column: 11, scope: !2771, inlinedAt: !2574)
!2773 = !DILocation(line: 367, column: 6, scope: !2570, inlinedAt: !2574)
!2774 = !DILocation(line: 367, column: 26, scope: !2771, inlinedAt: !2574)
!2775 = !DILocation(line: 368, column: 6, scope: !2776, inlinedAt: !2574)
!2776 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 368, column: 6)
!2777 = !DILocation(line: 368, column: 11, scope: !2776, inlinedAt: !2574)
!2778 = !DILocation(line: 368, column: 6, scope: !2570, inlinedAt: !2574)
!2779 = !DILocation(line: 368, column: 26, scope: !2776, inlinedAt: !2574)
!2780 = !DILocation(line: 369, column: 6, scope: !2781, inlinedAt: !2574)
!2781 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 369, column: 6)
!2782 = !DILocation(line: 369, column: 11, scope: !2781, inlinedAt: !2574)
!2783 = !DILocation(line: 369, column: 6, scope: !2570, inlinedAt: !2574)
!2784 = !DILocation(line: 369, column: 26, scope: !2781, inlinedAt: !2574)
!2785 = !DILocation(line: 370, column: 6, scope: !2786, inlinedAt: !2574)
!2786 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 370, column: 6)
!2787 = !DILocation(line: 370, column: 11, scope: !2786, inlinedAt: !2574)
!2788 = !DILocation(line: 370, column: 6, scope: !2570, inlinedAt: !2574)
!2789 = !DILocation(line: 370, column: 26, scope: !2786, inlinedAt: !2574)
!2790 = !DILocation(line: 371, column: 6, scope: !2791, inlinedAt: !2574)
!2791 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 371, column: 6)
!2792 = !DILocation(line: 371, column: 11, scope: !2791, inlinedAt: !2574)
!2793 = !DILocation(line: 371, column: 6, scope: !2570, inlinedAt: !2574)
!2794 = !DILocation(line: 371, column: 26, scope: !2791, inlinedAt: !2574)
!2795 = !DILocation(line: 372, column: 6, scope: !2796, inlinedAt: !2574)
!2796 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 372, column: 6)
!2797 = !DILocation(line: 372, column: 11, scope: !2796, inlinedAt: !2574)
!2798 = !DILocation(line: 372, column: 6, scope: !2570, inlinedAt: !2574)
!2799 = !DILocation(line: 372, column: 26, scope: !2796, inlinedAt: !2574)
!2800 = !DILocation(line: 373, column: 6, scope: !2801, inlinedAt: !2574)
!2801 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 373, column: 6)
!2802 = !DILocation(line: 373, column: 11, scope: !2801, inlinedAt: !2574)
!2803 = !DILocation(line: 373, column: 6, scope: !2570, inlinedAt: !2574)
!2804 = !DILocation(line: 373, column: 26, scope: !2801, inlinedAt: !2574)
!2805 = !DILocation(line: 374, column: 6, scope: !2806, inlinedAt: !2574)
!2806 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 374, column: 6)
!2807 = !DILocation(line: 374, column: 11, scope: !2806, inlinedAt: !2574)
!2808 = !DILocation(line: 374, column: 6, scope: !2570, inlinedAt: !2574)
!2809 = !DILocation(line: 374, column: 26, scope: !2806, inlinedAt: !2574)
!2810 = !DILocation(line: 375, column: 6, scope: !2811, inlinedAt: !2574)
!2811 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 375, column: 6)
!2812 = !DILocation(line: 375, column: 11, scope: !2811, inlinedAt: !2574)
!2813 = !DILocation(line: 375, column: 6, scope: !2570, inlinedAt: !2574)
!2814 = !DILocation(line: 375, column: 27, scope: !2811, inlinedAt: !2574)
!2815 = !DILocation(line: 376, column: 6, scope: !2816, inlinedAt: !2574)
!2816 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 376, column: 6)
!2817 = !DILocation(line: 376, column: 11, scope: !2816, inlinedAt: !2574)
!2818 = !DILocation(line: 376, column: 6, scope: !2570, inlinedAt: !2574)
!2819 = !DILocation(line: 376, column: 32, scope: !2816, inlinedAt: !2574)
!2820 = !DILocation(line: 377, column: 6, scope: !2821, inlinedAt: !2574)
!2821 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 377, column: 6)
!2822 = !DILocation(line: 377, column: 11, scope: !2821, inlinedAt: !2574)
!2823 = !DILocation(line: 377, column: 6, scope: !2570, inlinedAt: !2574)
!2824 = !DILocation(line: 377, column: 32, scope: !2821, inlinedAt: !2574)
!2825 = !DILocation(line: 378, column: 6, scope: !2826, inlinedAt: !2574)
!2826 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 378, column: 6)
!2827 = !DILocation(line: 378, column: 11, scope: !2826, inlinedAt: !2574)
!2828 = !DILocation(line: 378, column: 6, scope: !2570, inlinedAt: !2574)
!2829 = !DILocation(line: 378, column: 32, scope: !2826, inlinedAt: !2574)
!2830 = !DILocation(line: 379, column: 6, scope: !2831, inlinedAt: !2574)
!2831 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 379, column: 6)
!2832 = !DILocation(line: 379, column: 11, scope: !2831, inlinedAt: !2574)
!2833 = !DILocation(line: 379, column: 6, scope: !2570, inlinedAt: !2574)
!2834 = !DILocation(line: 379, column: 33, scope: !2831, inlinedAt: !2574)
!2835 = !DILocation(line: 380, column: 6, scope: !2836, inlinedAt: !2574)
!2836 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 380, column: 6)
!2837 = !DILocation(line: 380, column: 11, scope: !2836, inlinedAt: !2574)
!2838 = !DILocation(line: 380, column: 6, scope: !2570, inlinedAt: !2574)
!2839 = !DILocation(line: 380, column: 33, scope: !2836, inlinedAt: !2574)
!2840 = !DILocation(line: 381, column: 6, scope: !2841, inlinedAt: !2574)
!2841 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 381, column: 6)
!2842 = !DILocation(line: 381, column: 11, scope: !2841, inlinedAt: !2574)
!2843 = !DILocation(line: 381, column: 6, scope: !2570, inlinedAt: !2574)
!2844 = !DILocation(line: 381, column: 33, scope: !2841, inlinedAt: !2574)
!2845 = !DILocation(line: 382, column: 2, scope: !2846, inlinedAt: !2574)
!2846 = distinct !DILexicalBlock(scope: !2847, file: !60, line: 382, column: 2)
!2847 = distinct !DILexicalBlock(scope: !2570, file: !60, line: 382, column: 2)
!2848 = !{i32 -2143463754, i32 -2143463725, i32 -2143463679, i32 -2143463621, i32 -2143463567, i32 -2143463513, i32 -2143463458, i32 -2143463427}
!2849 = !DILocation(line: 382, column: 2, scope: !2850, inlinedAt: !2574)
!2850 = distinct !DILexicalBlock(scope: !2851, file: !60, line: 382, column: 2)
!2851 = distinct !DILexicalBlock(scope: !2847, file: !60, line: 382, column: 2)
!2852 = !{i32 -2143462984, i32 -2143462977, i32 -2143462923, i32 -2143462892, i32 -2143462862}
!2853 = !DILocation(line: 382, column: 2, scope: !2851, inlinedAt: !2574)
!2854 = !DILocation(line: 386, column: 1, scope: !2570, inlinedAt: !2574)
!2855 = !DILocation(line: 547, column: 9, scope: !2551, inlinedAt: !2556)
!2856 = !DILocation(line: 549, column: 8, scope: !2857, inlinedAt: !2556)
!2857 = distinct !DILexicalBlock(scope: !2551, file: !60, line: 549, column: 7)
!2858 = !DILocation(line: 549, column: 7, scope: !2551, inlinedAt: !2556)
!2859 = !DILocation(line: 550, column: 4, scope: !2857, inlinedAt: !2556)
!2860 = !DILocation(line: 553, column: 33, scope: !2551, inlinedAt: !2556)
!2861 = !DILocation(line: 325, column: 6, scope: !2862, inlinedAt: !2568)
!2862 = distinct !DILexicalBlock(scope: !2564, file: !60, line: 325, column: 6)
!2863 = !DILocation(line: 325, column: 6, scope: !2564, inlinedAt: !2568)
!2864 = !DILocation(line: 326, column: 3, scope: !2862, inlinedAt: !2568)
!2865 = !DILocation(line: 332, column: 9, scope: !2564, inlinedAt: !2568)
!2866 = !DILocation(line: 332, column: 15, scope: !2564, inlinedAt: !2568)
!2867 = !DILocation(line: 332, column: 2, scope: !2564, inlinedAt: !2568)
!2868 = !DILocation(line: 336, column: 1, scope: !2564, inlinedAt: !2568)
!2869 = !DILocation(line: 553, column: 5, scope: !2551, inlinedAt: !2556)
!2870 = !DILocation(line: 553, column: 41, scope: !2551, inlinedAt: !2556)
!2871 = !DILocation(line: 554, column: 5, scope: !2551, inlinedAt: !2556)
!2872 = !DILocation(line: 554, column: 12, scope: !2551, inlinedAt: !2556)
!2873 = !DILocation(line: 448, column: 31, scope: !2546, inlinedAt: !2550)
!2874 = !DILocation(line: 448, column: 34, scope: !2546, inlinedAt: !2550)
!2875 = !DILocation(line: 448, column: 14, scope: !2546, inlinedAt: !2550)
!2876 = !DILocation(line: 450, column: 22, scope: !2546, inlinedAt: !2550)
!2877 = !DILocation(line: 450, column: 25, scope: !2546, inlinedAt: !2550)
!2878 = !DILocation(line: 450, column: 30, scope: !2546, inlinedAt: !2550)
!2879 = !DILocation(line: 450, column: 36, scope: !2546, inlinedAt: !2550)
!2880 = !DILocation(line: 450, column: 8, scope: !2546, inlinedAt: !2550)
!2881 = !DILocation(line: 450, column: 6, scope: !2546, inlinedAt: !2550)
!2882 = !DILocation(line: 451, column: 9, scope: !2546, inlinedAt: !2550)
!2883 = !DILocation(line: 552, column: 3, scope: !2551, inlinedAt: !2556)
!2884 = !DILocation(line: 557, column: 19, scope: !2553, inlinedAt: !2556)
!2885 = !DILocation(line: 557, column: 25, scope: !2553, inlinedAt: !2556)
!2886 = !DILocation(line: 557, column: 9, scope: !2553, inlinedAt: !2556)
!2887 = !DILocation(line: 557, column: 2, scope: !2553, inlinedAt: !2556)
!2888 = !DILocation(line: 558, column: 1, scope: !2553, inlinedAt: !2556)
!2889 = !DILocation(line: 376, column: 10, scope: !2542)
!2890 = !DILocation(line: 376, column: 8, scope: !2542)
!2891 = !DILocation(line: 377, column: 7, scope: !2892)
!2892 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 377, column: 6)
!2893 = !DILocation(line: 377, column: 6, scope: !2542)
!2894 = !DILocation(line: 378, column: 3, scope: !2895)
!2895 = distinct !DILexicalBlock(scope: !2892, file: !3, line: 377, column: 14)
!2896 = !DILocation(line: 379, column: 10, scope: !2895)
!2897 = !DILocation(line: 380, column: 3, scope: !2895)
!2898 = !DILocation(line: 383, column: 22, scope: !2899)
!2899 = distinct !DILexicalBlock(scope: !2542, file: !3, line: 383, column: 6)
!2900 = !DILocation(line: 383, column: 7, scope: !2899)
!2901 = !DILocation(line: 383, column: 6, scope: !2542)
!2902 = !DILocation(line: 384, column: 3, scope: !2903)
!2903 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 383, column: 30)
!2904 = !DILocation(line: 386, column: 9, scope: !2903)
!2905 = !DILocation(line: 386, column: 3, scope: !2903)
!2906 = !DILocation(line: 387, column: 10, scope: !2903)
!2907 = !DILocation(line: 388, column: 3, scope: !2903)
!2908 = !DILocation(line: 391, column: 16, scope: !2542)
!2909 = !DILocation(line: 391, column: 2, scope: !2542)
!2910 = !DILocation(line: 391, column: 9, scope: !2542)
!2911 = !DILocation(line: 391, column: 14, scope: !2542)
!2912 = !DILocation(line: 392, column: 18, scope: !2542)
!2913 = !DILocation(line: 392, column: 2, scope: !2542)
!2914 = !DILocation(line: 392, column: 9, scope: !2542)
!2915 = !DILocation(line: 392, column: 16, scope: !2542)
!2916 = !DILocation(line: 393, column: 17, scope: !2542)
!2917 = !DILocation(line: 393, column: 2, scope: !2542)
!2918 = !DILocation(line: 393, column: 9, scope: !2542)
!2919 = !DILocation(line: 393, column: 15, scope: !2542)
!2920 = !DILocation(line: 395, column: 17, scope: !2542)
!2921 = !DILocation(line: 395, column: 24, scope: !2542)
!2922 = !DILocation(line: 395, column: 2, scope: !2542)
!2923 = !DILocation(line: 396, column: 13, scope: !2542)
!2924 = !DILocation(line: 396, column: 2, scope: !2542)
!2925 = !DILabel(scope: !2542, name: "out", file: !3, line: 398)
!2926 = !DILocation(line: 398, column: 1, scope: !2542)
!2927 = !DILocation(line: 399, column: 47, scope: !2542)
!2928 = !DILocalVariable(name: "__dummy", scope: !2929, file: !2280, line: 409, type: !149)
!2929 = distinct !DILexicalBlock(scope: !2930, file: !2280, line: 409, column: 2)
!2930 = distinct !DILexicalBlock(scope: !2601, file: !2280, line: 409, column: 2)
!2931 = !DILocation(line: 409, column: 2, scope: !2929, inlinedAt: !2605)
!2932 = !DILocalVariable(name: "__dummy2", scope: !2929, file: !2280, line: 409, type: !149)
!2933 = !DILocalVariable(name: "__dummy", scope: !2934, file: !2280, line: 409, type: !149)
!2934 = distinct !DILexicalBlock(scope: !2935, file: !2280, line: 409, column: 2)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !2280, line: 409, column: 2)
!2936 = distinct !DILexicalBlock(scope: !2937, file: !2280, line: 409, column: 2)
!2937 = distinct !DILexicalBlock(scope: !2930, file: !2280, line: 409, column: 2)
!2938 = !DILocation(line: 409, column: 2, scope: !2934, inlinedAt: !2605)
!2939 = !DILocalVariable(name: "__dummy2", scope: !2934, file: !2280, line: 409, type: !149)
!2940 = !DILocation(line: 409, column: 2, scope: !2935, inlinedAt: !2605)
!2941 = !DILocation(line: 409, column: 2, scope: !2942, inlinedAt: !2605)
!2942 = distinct !DILexicalBlock(scope: !2937, file: !2280, line: 409, column: 2)
!2943 = !{i32 -2145457642}
!2944 = !DILocation(line: 409, column: 2, scope: !2945, inlinedAt: !2605)
!2945 = distinct !DILexicalBlock(scope: !2942, file: !2280, line: 409, column: 2)
!2946 = !DILocation(line: 400, column: 9, scope: !2542)
!2947 = !DILocation(line: 400, column: 2, scope: !2542)
!2948 = distinct !DISubprogram(name: "gameport_unregister_port", scope: !3, file: !3, line: 664, type: !118, scopeLine: 665, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2949 = !DILocalVariable(name: "gameport", arg: 1, scope: !2948, file: !3, line: 664, type: !101)
!2950 = !DILocation(line: 664, column: 48, scope: !2948)
!2951 = !DILocation(line: 666, column: 2, scope: !2948)
!2952 = !DILocation(line: 667, column: 27, scope: !2948)
!2953 = !DILocation(line: 667, column: 2, scope: !2948)
!2954 = !DILocation(line: 668, column: 24, scope: !2948)
!2955 = !DILocation(line: 668, column: 2, scope: !2948)
!2956 = !DILocation(line: 669, column: 2, scope: !2948)
!2957 = !DILocation(line: 670, column: 1, scope: !2948)
!2958 = distinct !DISubprogram(name: "gameport_disconnect_port", scope: !3, file: !3, line: 623, type: !118, scopeLine: 624, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!2959 = !DILocalVariable(name: "gameport", arg: 1, scope: !2958, file: !3, line: 623, type: !101)
!2960 = !DILocation(line: 623, column: 55, scope: !2958)
!2961 = !DILocalVariable(name: "s", scope: !2958, file: !3, line: 625, type: !101)
!2962 = !DILocation(line: 625, column: 19, scope: !2958)
!2963 = !DILocalVariable(name: "parent", scope: !2958, file: !3, line: 625, type: !101)
!2964 = !DILocation(line: 625, column: 23, scope: !2958)
!2965 = !DILocation(line: 627, column: 6, scope: !2966)
!2966 = distinct !DILexicalBlock(scope: !2958, file: !3, line: 627, column: 6)
!2967 = !DILocation(line: 627, column: 16, scope: !2966)
!2968 = !DILocation(line: 627, column: 6, scope: !2958)
!2969 = !DILocation(line: 633, column: 12, scope: !2970)
!2970 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 633, column: 3)
!2971 = distinct !DILexicalBlock(scope: !2966, file: !3, line: 627, column: 23)
!2972 = !DILocation(line: 633, column: 10, scope: !2970)
!2973 = !DILocation(line: 633, column: 8, scope: !2970)
!2974 = !DILocation(line: 633, column: 22, scope: !2975)
!2975 = distinct !DILexicalBlock(scope: !2970, file: !3, line: 633, column: 3)
!2976 = !DILocation(line: 633, column: 25, scope: !2975)
!2977 = !DILocation(line: 633, column: 3, scope: !2970)
!2978 = !DILocation(line: 633, column: 36, scope: !2975)
!2979 = !DILocation(line: 633, column: 39, scope: !2975)
!2980 = !DILocation(line: 633, column: 34, scope: !2975)
!2981 = !DILocation(line: 633, column: 3, scope: !2975)
!2982 = distinct !{!2982, !2977, !2983}
!2983 = !DILocation(line: 634, column: 15, scope: !2970)
!2984 = !DILocation(line: 636, column: 3, scope: !2971)
!2985 = !DILocation(line: 637, column: 13, scope: !2986)
!2986 = distinct !DILexicalBlock(scope: !2971, file: !3, line: 636, column: 6)
!2987 = !DILocation(line: 637, column: 16, scope: !2986)
!2988 = !DILocation(line: 637, column: 11, scope: !2986)
!2989 = !DILocation(line: 639, column: 27, scope: !2986)
!2990 = !DILocation(line: 639, column: 30, scope: !2986)
!2991 = !DILocation(line: 639, column: 4, scope: !2986)
!2992 = !DILocation(line: 640, column: 26, scope: !2986)
!2993 = !DILocation(line: 640, column: 4, scope: !2986)
!2994 = !DILocation(line: 641, column: 3, scope: !2986)
!2995 = !DILocation(line: 641, column: 17, scope: !2971)
!2996 = !DILocation(line: 641, column: 15, scope: !2971)
!2997 = !DILocation(line: 641, column: 28, scope: !2971)
!2998 = !DILocation(line: 641, column: 25, scope: !2971)
!2999 = distinct !{!2999, !2984, !3000}
!3000 = !DILocation(line: 641, column: 36, scope: !2971)
!3001 = !DILocation(line: 642, column: 2, scope: !2971)
!3002 = !DILocation(line: 647, column: 25, scope: !2958)
!3003 = !DILocation(line: 647, column: 35, scope: !2958)
!3004 = !DILocation(line: 647, column: 2, scope: !2958)
!3005 = !DILocation(line: 648, column: 1, scope: !2958)
!3006 = distinct !DISubprogram(name: "gameport_destroy_port", scope: !3, file: !3, line: 579, type: !118, scopeLine: 580, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3007 = !DILocalVariable(name: "gameport", arg: 1, scope: !3006, file: !3, line: 579, type: !101)
!3008 = !DILocation(line: 579, column: 52, scope: !3006)
!3009 = !DILocalVariable(name: "child", scope: !3006, file: !3, line: 581, type: !101)
!3010 = !DILocation(line: 581, column: 19, scope: !3006)
!3011 = !DILocation(line: 583, column: 37, scope: !3006)
!3012 = !DILocation(line: 583, column: 10, scope: !3006)
!3013 = !DILocation(line: 583, column: 8, scope: !3006)
!3014 = !DILocation(line: 584, column: 6, scope: !3015)
!3015 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 584, column: 6)
!3016 = !DILocation(line: 584, column: 6, scope: !3006)
!3017 = !DILocation(line: 585, column: 34, scope: !3018)
!3018 = distinct !DILexicalBlock(scope: !3015, file: !3, line: 584, column: 13)
!3019 = !DILocation(line: 585, column: 3, scope: !3018)
!3020 = !DILocation(line: 586, column: 15, scope: !3018)
!3021 = !DILocation(line: 586, column: 22, scope: !3018)
!3022 = !DILocation(line: 586, column: 3, scope: !3018)
!3023 = !DILocation(line: 587, column: 2, scope: !3018)
!3024 = !DILocation(line: 589, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 589, column: 6)
!3026 = !DILocation(line: 589, column: 16, scope: !3025)
!3027 = !DILocation(line: 589, column: 6, scope: !3006)
!3028 = !DILocation(line: 590, column: 3, scope: !3029)
!3029 = distinct !DILexicalBlock(scope: !3025, file: !3, line: 589, column: 24)
!3030 = !DILocation(line: 590, column: 13, scope: !3029)
!3031 = !DILocation(line: 590, column: 21, scope: !3029)
!3032 = !DILocation(line: 590, column: 27, scope: !3029)
!3033 = !DILocation(line: 591, column: 3, scope: !3029)
!3034 = !DILocation(line: 591, column: 13, scope: !3029)
!3035 = !DILocation(line: 591, column: 20, scope: !3029)
!3036 = !DILocation(line: 592, column: 2, scope: !3029)
!3037 = !DILocation(line: 594, column: 28, scope: !3038)
!3038 = distinct !DILexicalBlock(scope: !3006, file: !3, line: 594, column: 6)
!3039 = !DILocation(line: 594, column: 38, scope: !3038)
!3040 = !DILocation(line: 594, column: 6, scope: !3038)
!3041 = !DILocation(line: 594, column: 6, scope: !3006)
!3042 = !DILocation(line: 595, column: 15, scope: !3038)
!3043 = !DILocation(line: 595, column: 25, scope: !3038)
!3044 = !DILocation(line: 595, column: 3, scope: !3038)
!3045 = !DILocation(line: 597, column: 17, scope: !3006)
!3046 = !DILocation(line: 597, column: 27, scope: !3006)
!3047 = !DILocation(line: 597, column: 2, scope: !3006)
!3048 = !DILocation(line: 599, column: 33, scope: !3006)
!3049 = !DILocation(line: 599, column: 2, scope: !3006)
!3050 = !DILocation(line: 600, column: 14, scope: !3006)
!3051 = !DILocation(line: 600, column: 24, scope: !3006)
!3052 = !DILocation(line: 600, column: 2, scope: !3006)
!3053 = !DILocation(line: 601, column: 1, scope: !3006)
!3054 = distinct !DISubprogram(name: "__gameport_register_driver", scope: !3, file: !3, line: 719, type: !3055, scopeLine: 721, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3055 = !DISubroutineType(types: !3056)
!3056 = !{!113, !182, !2000, !186}
!3057 = !DILocalVariable(name: "drv", arg: 1, scope: !3054, file: !3, line: 719, type: !182)
!3058 = !DILocation(line: 719, column: 56, scope: !3054)
!3059 = !DILocalVariable(name: "owner", arg: 2, scope: !3054, file: !3, line: 719, type: !2000)
!3060 = !DILocation(line: 719, column: 76, scope: !3054)
!3061 = !DILocalVariable(name: "mod_name", arg: 3, scope: !3054, file: !3, line: 720, type: !186)
!3062 = !DILocation(line: 720, column: 17, scope: !3054)
!3063 = !DILocalVariable(name: "error", scope: !3054, file: !3, line: 722, type: !113)
!3064 = !DILocation(line: 722, column: 6, scope: !3054)
!3065 = !DILocation(line: 724, column: 2, scope: !3054)
!3066 = !DILocation(line: 724, column: 7, scope: !3054)
!3067 = !DILocation(line: 724, column: 14, scope: !3054)
!3068 = !DILocation(line: 724, column: 18, scope: !3054)
!3069 = !DILocation(line: 725, column: 22, scope: !3054)
!3070 = !DILocation(line: 725, column: 2, scope: !3054)
!3071 = !DILocation(line: 725, column: 7, scope: !3054)
!3072 = !DILocation(line: 725, column: 14, scope: !3054)
!3073 = !DILocation(line: 725, column: 20, scope: !3054)
!3074 = !DILocation(line: 726, column: 25, scope: !3054)
!3075 = !DILocation(line: 726, column: 2, scope: !3054)
!3076 = !DILocation(line: 726, column: 7, scope: !3054)
!3077 = !DILocation(line: 726, column: 14, scope: !3054)
!3078 = !DILocation(line: 726, column: 23, scope: !3054)
!3079 = !DILocation(line: 732, column: 2, scope: !3054)
!3080 = !DILocation(line: 732, column: 7, scope: !3054)
!3081 = !DILocation(line: 732, column: 14, scope: !3054)
!3082 = !DILocation(line: 734, column: 27, scope: !3054)
!3083 = !DILocation(line: 734, column: 32, scope: !3054)
!3084 = !DILocation(line: 734, column: 10, scope: !3054)
!3085 = !DILocation(line: 734, column: 8, scope: !3054)
!3086 = !DILocation(line: 735, column: 6, scope: !3087)
!3087 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 735, column: 6)
!3088 = !DILocation(line: 735, column: 6, scope: !3054)
!3089 = !DILocation(line: 736, column: 3, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3087, file: !3, line: 735, column: 13)
!3091 = !DILocation(line: 738, column: 10, scope: !3090)
!3092 = !DILocation(line: 738, column: 3, scope: !3090)
!3093 = !DILocation(line: 744, column: 2, scope: !3054)
!3094 = !DILocation(line: 744, column: 7, scope: !3054)
!3095 = !DILocation(line: 744, column: 14, scope: !3054)
!3096 = !DILocation(line: 745, column: 31, scope: !3054)
!3097 = !DILocation(line: 745, column: 10, scope: !3054)
!3098 = !DILocation(line: 745, column: 8, scope: !3054)
!3099 = !DILocation(line: 746, column: 6, scope: !3100)
!3100 = distinct !DILexicalBlock(scope: !3054, file: !3, line: 746, column: 6)
!3101 = !DILocation(line: 746, column: 6, scope: !3054)
!3102 = !DILocation(line: 747, column: 22, scope: !3103)
!3103 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 746, column: 13)
!3104 = !DILocation(line: 747, column: 27, scope: !3103)
!3105 = !DILocation(line: 747, column: 3, scope: !3103)
!3106 = !DILocation(line: 748, column: 10, scope: !3103)
!3107 = !DILocation(line: 748, column: 3, scope: !3103)
!3108 = !DILocation(line: 751, column: 2, scope: !3054)
!3109 = !DILocation(line: 752, column: 1, scope: !3054)
!3110 = distinct !DISubprogram(name: "gameport_unregister_driver", scope: !3, file: !3, line: 755, type: !3111, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3111 = !DISubroutineType(types: !3112)
!3112 = !{null, !182}
!3113 = !DILocalVariable(name: "drv", arg: 1, scope: !3110, file: !3, line: 755, type: !182)
!3114 = !DILocation(line: 755, column: 57, scope: !3110)
!3115 = !DILocalVariable(name: "gameport", scope: !3110, file: !3, line: 757, type: !101)
!3116 = !DILocation(line: 757, column: 19, scope: !3110)
!3117 = !DILocation(line: 759, column: 2, scope: !3110)
!3118 = !DILocation(line: 761, column: 2, scope: !3110)
!3119 = !DILocation(line: 761, column: 7, scope: !3110)
!3120 = !DILocation(line: 761, column: 14, scope: !3110)
!3121 = !DILocation(line: 762, column: 33, scope: !3110)
!3122 = !DILocation(line: 762, column: 2, scope: !3110)
!3123 = !DILabel(scope: !3110, name: "start_over", file: !3, line: 764)
!3124 = !DILocation(line: 764, column: 1, scope: !3110)
!3125 = !DILocalVariable(name: "__mptr", scope: !3126, file: !3, line: 765, type: !100)
!3126 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 765, column: 2)
!3127 = distinct !DILexicalBlock(scope: !3110, file: !3, line: 765, column: 2)
!3128 = !DILocation(line: 765, column: 2, scope: !3126)
!3129 = !DILocation(line: 765, column: 2, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3126, file: !3, line: 765, column: 2)
!3131 = !DILocation(line: 765, column: 2, scope: !3127)
!3132 = !DILocation(line: 765, column: 2, scope: !3133)
!3133 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 765, column: 2)
!3134 = !DILocation(line: 766, column: 7, scope: !3135)
!3135 = distinct !DILexicalBlock(scope: !3136, file: !3, line: 766, column: 7)
!3136 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 765, column: 54)
!3137 = !DILocation(line: 766, column: 17, scope: !3135)
!3138 = !DILocation(line: 766, column: 24, scope: !3135)
!3139 = !DILocation(line: 766, column: 21, scope: !3135)
!3140 = !DILocation(line: 766, column: 7, scope: !3136)
!3141 = !DILocation(line: 767, column: 29, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3135, file: !3, line: 766, column: 29)
!3143 = !DILocation(line: 767, column: 4, scope: !3142)
!3144 = !DILocation(line: 768, column: 25, scope: !3142)
!3145 = !DILocation(line: 768, column: 4, scope: !3142)
!3146 = !DILocation(line: 770, column: 4, scope: !3142)
!3147 = !DILocation(line: 772, column: 2, scope: !3136)
!3148 = !DILocalVariable(name: "__mptr", scope: !3149, file: !3, line: 765, type: !100)
!3149 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 765, column: 2)
!3150 = !DILocation(line: 765, column: 2, scope: !3149)
!3151 = !DILocation(line: 765, column: 2, scope: !3152)
!3152 = distinct !DILexicalBlock(scope: !3149, file: !3, line: 765, column: 2)
!3153 = distinct !{!3153, !3131, !3154}
!3154 = !DILocation(line: 772, column: 2, scope: !3127)
!3155 = !DILocation(line: 774, column: 21, scope: !3110)
!3156 = !DILocation(line: 774, column: 26, scope: !3110)
!3157 = !DILocation(line: 774, column: 2, scope: !3110)
!3158 = !DILocation(line: 776, column: 2, scope: !3110)
!3159 = !DILocation(line: 777, column: 1, scope: !3110)
!3160 = distinct !DISubprogram(name: "gameport_remove_pending_events", scope: !3, file: !3, line: 407, type: !1498, scopeLine: 408, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3161 = !DILocation(line: 407, column: 64, scope: !2601, inlinedAt: !3162)
!3162 = distinct !DILocation(line: 421, column: 2, scope: !3160)
!3163 = !DILocation(line: 407, column: 84, scope: !2601, inlinedAt: !3162)
!3164 = !DILocation(line: 327, column: 67, scope: !2447, inlinedAt: !3165)
!3165 = distinct !DILocation(line: 412, column: 2, scope: !3166)
!3166 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 412, column: 2)
!3167 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 412, column: 2)
!3168 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 412, column: 2)
!3169 = distinct !DILexicalBlock(scope: !3170, file: !3, line: 412, column: 2)
!3170 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 412, column: 2)
!3171 = !DILocalVariable(name: "object", arg: 1, scope: !3160, file: !3, line: 407, type: !100)
!3172 = !DILocation(line: 407, column: 50, scope: !3160)
!3173 = !DILocalVariable(name: "event", scope: !3160, file: !3, line: 409, type: !2104)
!3174 = !DILocation(line: 409, column: 25, scope: !3160)
!3175 = !DILocalVariable(name: "next", scope: !3160, file: !3, line: 409, type: !2104)
!3176 = !DILocation(line: 409, column: 33, scope: !3160)
!3177 = !DILocalVariable(name: "flags", scope: !3160, file: !3, line: 410, type: !149)
!3178 = !DILocation(line: 410, column: 16, scope: !3160)
!3179 = !DILocation(line: 412, column: 2, scope: !3160)
!3180 = !DILocation(line: 412, column: 2, scope: !3170)
!3181 = !DILocalVariable(name: "__dummy", scope: !3182, file: !3, line: 412, type: !149)
!3182 = distinct !DILexicalBlock(scope: !3169, file: !3, line: 412, column: 2)
!3183 = !DILocation(line: 412, column: 2, scope: !3182)
!3184 = !DILocalVariable(name: "__dummy2", scope: !3182, file: !3, line: 412, type: !149)
!3185 = !DILocation(line: 412, column: 2, scope: !3169)
!3186 = !DILocation(line: 412, column: 2, scope: !3168)
!3187 = !DILocation(line: 412, column: 2, scope: !3188)
!3188 = distinct !DILexicalBlock(scope: !3168, file: !3, line: 412, column: 2)
!3189 = !DILocalVariable(name: "__dummy", scope: !3190, file: !3, line: 412, type: !149)
!3190 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 412, column: 2)
!3191 = distinct !DILexicalBlock(scope: !3188, file: !3, line: 412, column: 2)
!3192 = !DILocation(line: 412, column: 2, scope: !3190)
!3193 = !DILocalVariable(name: "__dummy2", scope: !3190, file: !3, line: 412, type: !149)
!3194 = !DILocation(line: 412, column: 2, scope: !3191)
!3195 = !DILocation(line: 412, column: 2, scope: !3167)
!3196 = !{i32 -2143410933}
!3197 = !DILocation(line: 329, column: 10, scope: !2447, inlinedAt: !3165)
!3198 = !DILocation(line: 329, column: 16, scope: !2447, inlinedAt: !3165)
!3199 = !DILocation(line: 412, column: 2, scope: !3166)
!3200 = !DILocalVariable(name: "__mptr", scope: !3201, file: !3, line: 414, type: !100)
!3201 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 414, column: 2)
!3202 = distinct !DILexicalBlock(scope: !3160, file: !3, line: 414, column: 2)
!3203 = !DILocation(line: 414, column: 2, scope: !3201)
!3204 = !DILocation(line: 414, column: 2, scope: !3205)
!3205 = distinct !DILexicalBlock(scope: !3201, file: !3, line: 414, column: 2)
!3206 = !DILocation(line: 414, column: 2, scope: !3202)
!3207 = !DILocalVariable(name: "__mptr", scope: !3208, file: !3, line: 414, type: !100)
!3208 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 414, column: 2)
!3209 = !DILocation(line: 414, column: 2, scope: !3208)
!3210 = !DILocation(line: 414, column: 2, scope: !3211)
!3211 = distinct !DILexicalBlock(scope: !3208, file: !3, line: 414, column: 2)
!3212 = !DILocation(line: 414, column: 2, scope: !3213)
!3213 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 414, column: 2)
!3214 = !DILocation(line: 415, column: 7, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3216, file: !3, line: 415, column: 7)
!3216 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 414, column: 68)
!3217 = !DILocation(line: 415, column: 14, scope: !3215)
!3218 = !DILocation(line: 415, column: 24, scope: !3215)
!3219 = !DILocation(line: 415, column: 21, scope: !3215)
!3220 = !DILocation(line: 415, column: 7, scope: !3216)
!3221 = !DILocation(line: 416, column: 19, scope: !3222)
!3222 = distinct !DILexicalBlock(scope: !3215, file: !3, line: 415, column: 32)
!3223 = !DILocation(line: 416, column: 26, scope: !3222)
!3224 = !DILocation(line: 416, column: 4, scope: !3222)
!3225 = !DILocation(line: 417, column: 24, scope: !3222)
!3226 = !DILocation(line: 417, column: 4, scope: !3222)
!3227 = !DILocation(line: 418, column: 3, scope: !3222)
!3228 = !DILocation(line: 419, column: 2, scope: !3216)
!3229 = !DILocalVariable(name: "__mptr", scope: !3230, file: !3, line: 414, type: !100)
!3230 = distinct !DILexicalBlock(scope: !3213, file: !3, line: 414, column: 2)
!3231 = !DILocation(line: 414, column: 2, scope: !3230)
!3232 = !DILocation(line: 414, column: 2, scope: !3233)
!3233 = distinct !DILexicalBlock(scope: !3230, file: !3, line: 414, column: 2)
!3234 = distinct !{!3234, !3206, !3235}
!3235 = !DILocation(line: 419, column: 2, scope: !3202)
!3236 = !DILocation(line: 421, column: 47, scope: !3160)
!3237 = !DILocation(line: 409, column: 2, scope: !2929, inlinedAt: !3162)
!3238 = !DILocation(line: 409, column: 2, scope: !2934, inlinedAt: !3162)
!3239 = !DILocation(line: 409, column: 2, scope: !2935, inlinedAt: !3162)
!3240 = !DILocation(line: 409, column: 2, scope: !2942, inlinedAt: !3162)
!3241 = !DILocation(line: 409, column: 2, scope: !2945, inlinedAt: !3162)
!3242 = !DILocation(line: 422, column: 1, scope: !3160)
!3243 = distinct !DISubprogram(name: "gameport_find_driver", scope: !3, file: !3, line: 238, type: !118, scopeLine: 239, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3244 = !DILocalVariable(name: "gameport", arg: 1, scope: !3243, file: !3, line: 238, type: !101)
!3245 = !DILocation(line: 238, column: 51, scope: !3243)
!3246 = !DILocalVariable(name: "error", scope: !3243, file: !3, line: 240, type: !113)
!3247 = !DILocation(line: 240, column: 6, scope: !3243)
!3248 = !DILocation(line: 242, column: 25, scope: !3243)
!3249 = !DILocation(line: 242, column: 35, scope: !3243)
!3250 = !DILocation(line: 242, column: 10, scope: !3243)
!3251 = !DILocation(line: 242, column: 8, scope: !3243)
!3252 = !DILocation(line: 243, column: 6, scope: !3253)
!3253 = distinct !DILexicalBlock(scope: !3243, file: !3, line: 243, column: 6)
!3254 = !DILocation(line: 243, column: 12, scope: !3253)
!3255 = !DILocation(line: 243, column: 6, scope: !3243)
!3256 = !DILocation(line: 244, column: 3, scope: !3253)
!3257 = !DILocation(line: 247, column: 1, scope: !3243)
!3258 = distinct !DISubprogram(name: "gameport_open", scope: !3, file: !3, line: 803, type: !3259, scopeLine: 804, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3259 = !DISubroutineType(types: !3260)
!3260 = !{!113, !101, !182, !113}
!3261 = !DILocalVariable(name: "gameport", arg: 1, scope: !3258, file: !3, line: 803, type: !101)
!3262 = !DILocation(line: 803, column: 36, scope: !3258)
!3263 = !DILocalVariable(name: "drv", arg: 2, scope: !3258, file: !3, line: 803, type: !182)
!3264 = !DILocation(line: 803, column: 70, scope: !3258)
!3265 = !DILocalVariable(name: "mode", arg: 3, scope: !3258, file: !3, line: 803, type: !113)
!3266 = !DILocation(line: 803, column: 79, scope: !3258)
!3267 = !DILocation(line: 805, column: 6, scope: !3268)
!3268 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 805, column: 6)
!3269 = !DILocation(line: 805, column: 16, scope: !3268)
!3270 = !DILocation(line: 805, column: 6, scope: !3258)
!3271 = !DILocation(line: 806, column: 7, scope: !3272)
!3272 = distinct !DILexicalBlock(scope: !3273, file: !3, line: 806, column: 7)
!3273 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 805, column: 22)
!3274 = !DILocation(line: 806, column: 17, scope: !3272)
!3275 = !DILocation(line: 806, column: 22, scope: !3272)
!3276 = !DILocation(line: 806, column: 32, scope: !3272)
!3277 = !DILocation(line: 806, column: 7, scope: !3273)
!3278 = !DILocation(line: 807, column: 4, scope: !3279)
!3279 = distinct !DILexicalBlock(scope: !3272, file: !3, line: 806, column: 39)
!3280 = !DILocation(line: 809, column: 2, scope: !3273)
!3281 = !DILocation(line: 810, column: 7, scope: !3282)
!3282 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 810, column: 7)
!3283 = distinct !DILexicalBlock(scope: !3268, file: !3, line: 809, column: 9)
!3284 = !DILocation(line: 810, column: 12, scope: !3282)
!3285 = !DILocation(line: 810, column: 7, scope: !3283)
!3286 = !DILocation(line: 811, column: 4, scope: !3282)
!3287 = !DILocation(line: 814, column: 19, scope: !3258)
!3288 = !DILocation(line: 814, column: 29, scope: !3258)
!3289 = !DILocation(line: 814, column: 2, scope: !3258)
!3290 = !DILocation(line: 815, column: 2, scope: !3258)
!3291 = !DILocation(line: 816, column: 1, scope: !3258)
!3292 = distinct !DISubprogram(name: "gameport_set_drv", scope: !3, file: !3, line: 796, type: !3293, scopeLine: 797, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3293 = !DISubroutineType(types: !3294)
!3294 = !{null, !101, !182}
!3295 = !DILocalVariable(name: "gameport", arg: 1, scope: !3292, file: !3, line: 796, type: !101)
!3296 = !DILocation(line: 796, column: 47, scope: !3292)
!3297 = !DILocalVariable(name: "drv", arg: 2, scope: !3292, file: !3, line: 796, type: !182)
!3298 = !DILocation(line: 796, column: 81, scope: !3292)
!3299 = !DILocation(line: 798, column: 14, scope: !3292)
!3300 = !DILocation(line: 798, column: 24, scope: !3292)
!3301 = !DILocation(line: 798, column: 2, scope: !3292)
!3302 = !DILocation(line: 799, column: 18, scope: !3292)
!3303 = !DILocation(line: 799, column: 2, scope: !3292)
!3304 = !DILocation(line: 799, column: 12, scope: !3292)
!3305 = !DILocation(line: 799, column: 16, scope: !3292)
!3306 = !DILocation(line: 800, column: 16, scope: !3292)
!3307 = !DILocation(line: 800, column: 26, scope: !3292)
!3308 = !DILocation(line: 800, column: 2, scope: !3292)
!3309 = !DILocation(line: 801, column: 1, scope: !3292)
!3310 = distinct !DISubprogram(name: "gameport_close", scope: !3, file: !3, line: 819, type: !118, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3311 = !DILocalVariable(name: "gameport", arg: 1, scope: !3310, file: !3, line: 819, type: !101)
!3312 = !DILocation(line: 819, column: 38, scope: !3310)
!3313 = !DILocation(line: 821, column: 2, scope: !3310)
!3314 = !DILocation(line: 822, column: 2, scope: !3310)
!3315 = !DILocation(line: 822, column: 12, scope: !3310)
!3316 = !DILocation(line: 822, column: 25, scope: !3310)
!3317 = !DILocation(line: 823, column: 2, scope: !3310)
!3318 = !DILocation(line: 823, column: 12, scope: !3310)
!3319 = !DILocation(line: 823, column: 26, scope: !3310)
!3320 = !DILocation(line: 824, column: 19, scope: !3310)
!3321 = !DILocation(line: 824, column: 2, scope: !3310)
!3322 = !DILocation(line: 825, column: 6, scope: !3323)
!3323 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 825, column: 6)
!3324 = !DILocation(line: 825, column: 16, scope: !3323)
!3325 = !DILocation(line: 825, column: 6, scope: !3310)
!3326 = !DILocation(line: 826, column: 3, scope: !3323)
!3327 = !DILocation(line: 826, column: 13, scope: !3323)
!3328 = !DILocation(line: 826, column: 19, scope: !3323)
!3329 = !DILocation(line: 827, column: 1, scope: !3310)
!3330 = distinct !DISubprogram(name: "gameport_exit", scope: !3, file: !3, line: 844, type: !2198, scopeLine: 845, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3331 = !DILocation(line: 846, column: 2, scope: !3330)
!3332 = !DILocation(line: 852, column: 2, scope: !3330)
!3333 = !DILocation(line: 853, column: 1, scope: !3330)
!3334 = distinct !DISubprogram(name: "gameport_init", scope: !3, file: !3, line: 830, type: !3335, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3335 = !DISubroutineType(types: !3336)
!3336 = !{!113}
!3337 = !DILocalVariable(name: "error", scope: !3334, file: !3, line: 832, type: !113)
!3338 = !DILocation(line: 832, column: 6, scope: !3334)
!3339 = !DILocation(line: 834, column: 10, scope: !3334)
!3340 = !DILocation(line: 834, column: 8, scope: !3334)
!3341 = !DILocation(line: 835, column: 6, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3334, file: !3, line: 835, column: 6)
!3343 = !DILocation(line: 835, column: 6, scope: !3334)
!3344 = !DILocation(line: 836, column: 3, scope: !3345)
!3345 = distinct !DILexicalBlock(scope: !3342, file: !3, line: 835, column: 13)
!3346 = !DILocation(line: 837, column: 10, scope: !3345)
!3347 = !DILocation(line: 837, column: 3, scope: !3345)
!3348 = !DILocation(line: 841, column: 2, scope: !3334)
!3349 = !DILocation(line: 842, column: 1, scope: !3334)
!3350 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !2288, file: !2288, line: 308, type: !2289, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3351 = !DILocalVariable(name: "m", arg: 1, scope: !3350, file: !2288, line: 308, type: !2291)
!3352 = !DILocation(line: 308, column: 66, scope: !3350)
!3353 = !DILocation(line: 310, column: 10, scope: !3350)
!3354 = !DILocation(line: 310, column: 12, scope: !3350)
!3355 = !DILocation(line: 310, column: 34, scope: !3350)
!3356 = !DILocation(line: 310, column: 39, scope: !3350)
!3357 = !DILocation(line: 310, column: 2, scope: !3350)
!3358 = distinct !DISubprogram(name: "__module_get", scope: !3359, file: !3359, line: 747, type: !3360, scopeLine: 748, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3359 = !DIFile(filename: "./include/linux/module.h", directory: "/home/lizy2001/genbc/linux")
!3360 = !DISubroutineType(types: !3361)
!3361 = !{null, !2000}
!3362 = !DILocalVariable(name: "module", arg: 1, scope: !3358, file: !3359, line: 747, type: !2000)
!3363 = !DILocation(line: 747, column: 48, scope: !3358)
!3364 = !DILocation(line: 749, column: 1, scope: !3358)
!3365 = distinct !DISubprogram(name: "gameport_release_port", scope: !3, file: !3, line: 503, type: !1708, scopeLine: 504, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3366 = !DILocalVariable(name: "dev", arg: 1, scope: !3365, file: !3, line: 503, type: !209)
!3367 = !DILocation(line: 503, column: 50, scope: !3365)
!3368 = !DILocalVariable(name: "gameport", scope: !3365, file: !3, line: 505, type: !101)
!3369 = !DILocation(line: 505, column: 19, scope: !3365)
!3370 = !DILocalVariable(name: "__mptr", scope: !3371, file: !3, line: 505, type: !100)
!3371 = distinct !DILexicalBlock(scope: !3365, file: !3, line: 505, column: 30)
!3372 = !DILocation(line: 505, column: 30, scope: !3371)
!3373 = !DILocation(line: 505, column: 30, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 505, column: 30)
!3375 = !DILocation(line: 507, column: 8, scope: !3365)
!3376 = !DILocation(line: 507, column: 2, scope: !3365)
!3377 = !DILocation(line: 508, column: 2, scope: !3365)
!3378 = !DILocation(line: 509, column: 1, scope: !3365)
!3379 = distinct !DISubprogram(name: "INIT_LIST_HEAD", scope: !3380, file: !3380, line: 33, type: !3381, scopeLine: 34, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3380 = !DIFile(filename: "./include/linux/list.h", directory: "/home/lizy2001/genbc/linux")
!3381 = !DISubroutineType(types: !3382)
!3382 = !{null, !221}
!3383 = !DILocalVariable(name: "list", arg: 1, scope: !3379, file: !3380, line: 33, type: !221)
!3384 = !DILocation(line: 33, column: 53, scope: !3379)
!3385 = !DILocation(line: 35, column: 2, scope: !3379)
!3386 = !DILocation(line: 35, column: 2, scope: !3387)
!3387 = distinct !DILexicalBlock(scope: !3379, file: !3380, line: 35, column: 2)
!3388 = !DILocation(line: 35, column: 2, scope: !3389)
!3389 = distinct !DILexicalBlock(scope: !3387, file: !3380, line: 35, column: 2)
!3390 = !DILocation(line: 35, column: 2, scope: !3391)
!3391 = distinct !DILexicalBlock(scope: !3387, file: !3380, line: 35, column: 2)
!3392 = !DILocation(line: 36, column: 15, scope: !3379)
!3393 = !DILocation(line: 36, column: 2, scope: !3379)
!3394 = !DILocation(line: 36, column: 8, scope: !3379)
!3395 = !DILocation(line: 36, column: 13, scope: !3379)
!3396 = !DILocation(line: 37, column: 1, scope: !3379)
!3397 = distinct !DISubprogram(name: "gameport_run_poll_handler", scope: !3, file: !3, line: 201, type: !152, scopeLine: 202, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3398 = !DILocation(line: 363, column: 74, scope: !2287, inlinedAt: !3399)
!3399 = distinct !DILocation(line: 207, column: 46, scope: !3400)
!3400 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 206, column: 6)
!3401 = !DILocalVariable(name: "t", arg: 1, scope: !3397, file: !3, line: 201, type: !154)
!3402 = !DILocation(line: 201, column: 58, scope: !3397)
!3403 = !DILocalVariable(name: "gameport", scope: !3397, file: !3, line: 203, type: !101)
!3404 = !DILocation(line: 203, column: 19, scope: !3397)
!3405 = !DILocalVariable(name: "__mptr", scope: !3406, file: !3, line: 203, type: !100)
!3406 = distinct !DILexicalBlock(scope: !3397, file: !3, line: 203, column: 30)
!3407 = !DILocation(line: 203, column: 30, scope: !3406)
!3408 = !DILocation(line: 203, column: 30, scope: !3409)
!3409 = distinct !DILexicalBlock(scope: !3406, file: !3, line: 203, column: 30)
!3410 = !DILocation(line: 205, column: 2, scope: !3397)
!3411 = !DILocation(line: 205, column: 12, scope: !3397)
!3412 = !DILocation(line: 205, column: 25, scope: !3397)
!3413 = !DILocation(line: 206, column: 6, scope: !3400)
!3414 = !DILocation(line: 206, column: 16, scope: !3400)
!3415 = !DILocation(line: 206, column: 6, scope: !3397)
!3416 = !DILocation(line: 207, column: 14, scope: !3400)
!3417 = !DILocation(line: 207, column: 24, scope: !3400)
!3418 = !DILocation(line: 207, column: 36, scope: !3400)
!3419 = !DILocation(line: 207, column: 63, scope: !3400)
!3420 = !DILocation(line: 207, column: 73, scope: !3400)
!3421 = !DILocation(line: 365, column: 27, scope: !2353, inlinedAt: !3399)
!3422 = !DILocation(line: 365, column: 6, scope: !2353, inlinedAt: !3399)
!3423 = !DILocation(line: 365, column: 6, scope: !2287, inlinedAt: !3399)
!3424 = !DILocation(line: 366, column: 12, scope: !2357, inlinedAt: !3399)
!3425 = !DILocation(line: 366, column: 14, scope: !2357, inlinedAt: !3399)
!3426 = !DILocation(line: 366, column: 7, scope: !2358, inlinedAt: !3399)
!3427 = !DILocation(line: 367, column: 4, scope: !2357, inlinedAt: !3399)
!3428 = !DILocation(line: 368, column: 28, scope: !2358, inlinedAt: !3399)
!3429 = !DILocation(line: 368, column: 10, scope: !2358, inlinedAt: !3399)
!3430 = !DILocation(line: 368, column: 3, scope: !2358, inlinedAt: !3399)
!3431 = !DILocation(line: 370, column: 29, scope: !2366, inlinedAt: !3399)
!3432 = !DILocation(line: 370, column: 10, scope: !2366, inlinedAt: !3399)
!3433 = !DILocation(line: 370, column: 3, scope: !2366, inlinedAt: !3399)
!3434 = !DILocation(line: 372, column: 1, scope: !2287, inlinedAt: !3399)
!3435 = !DILocation(line: 207, column: 44, scope: !3400)
!3436 = !DILocation(line: 207, column: 3, scope: !3400)
!3437 = !DILocation(line: 208, column: 1, scope: !3397)
!3438 = distinct !DISubprogram(name: "kasan_check_write", scope: !3439, file: !3439, line: 38, type: !3440, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3439 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3440 = !DISubroutineType(types: !3441)
!3441 = !{!1088, !2482, !7}
!3442 = !DILocalVariable(name: "p", arg: 1, scope: !3438, file: !3439, line: 38, type: !2482)
!3443 = !DILocation(line: 38, column: 59, scope: !3438)
!3444 = !DILocalVariable(name: "size", arg: 2, scope: !3438, file: !3439, line: 38, type: !7)
!3445 = !DILocation(line: 38, column: 75, scope: !3438)
!3446 = !DILocation(line: 40, column: 2, scope: !3438)
!3447 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3448, file: !3448, line: 178, type: !3449, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3448 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3449 = !DISubroutineType(types: !3450)
!3450 = !{null, !2482, !303, !113}
!3451 = !DILocalVariable(name: "ptr", arg: 1, scope: !3447, file: !3448, line: 178, type: !2482)
!3452 = !DILocation(line: 178, column: 60, scope: !3447)
!3453 = !DILocalVariable(name: "size", arg: 2, scope: !3447, file: !3448, line: 178, type: !303)
!3454 = !DILocation(line: 178, column: 72, scope: !3447)
!3455 = !DILocalVariable(name: "type", arg: 3, scope: !3447, file: !3448, line: 179, type: !113)
!3456 = !DILocation(line: 179, column: 15, scope: !3447)
!3457 = !DILocation(line: 179, column: 23, scope: !3447)
!3458 = distinct !DISubprogram(name: "module_put", scope: !3359, file: !3359, line: 756, type: !3360, scopeLine: 757, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3459 = !DILocalVariable(name: "module", arg: 1, scope: !3458, file: !3359, line: 756, type: !2000)
!3460 = !DILocation(line: 756, column: 46, scope: !3458)
!3461 = !DILocation(line: 758, column: 1, scope: !3458)
!3462 = distinct !DISubprogram(name: "arch_local_irq_save", scope: !3463, file: !3463, line: 666, type: !3464, scopeLine: 667, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3463 = !DIFile(filename: "./arch/x86/include/asm/paravirt.h", directory: "/home/lizy2001/genbc/linux")
!3464 = !DISubroutineType(types: !3465)
!3465 = !{!149}
!3466 = !DILocalVariable(name: "f", scope: !3462, file: !3463, line: 668, type: !149)
!3467 = !DILocation(line: 668, column: 16, scope: !3462)
!3468 = !DILocation(line: 670, column: 6, scope: !3462)
!3469 = !DILocation(line: 670, column: 4, scope: !3462)
!3470 = !DILocation(line: 671, column: 2, scope: !3462)
!3471 = !DILocation(line: 672, column: 9, scope: !3462)
!3472 = !DILocation(line: 672, column: 2, scope: !3462)
!3473 = distinct !DISubprogram(name: "try_module_get", scope: !3359, file: !3359, line: 751, type: !3474, scopeLine: 752, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3474 = !DISubroutineType(types: !3475)
!3475 = !{!1088, !2000}
!3476 = !DILocalVariable(name: "module", arg: 1, scope: !3473, file: !3359, line: 751, type: !2000)
!3477 = !DILocation(line: 751, column: 50, scope: !3473)
!3478 = !DILocation(line: 753, column: 2, scope: !3473)
!3479 = distinct !DISubprogram(name: "list_add_tail", scope: !3380, file: !3380, line: 98, type: !3480, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3480 = !DISubroutineType(types: !3481)
!3481 = !{null, !221, !221}
!3482 = !DILocalVariable(name: "new", arg: 1, scope: !3479, file: !3380, line: 98, type: !221)
!3483 = !DILocation(line: 98, column: 52, scope: !3479)
!3484 = !DILocalVariable(name: "head", arg: 2, scope: !3479, file: !3380, line: 98, type: !221)
!3485 = !DILocation(line: 98, column: 75, scope: !3479)
!3486 = !DILocation(line: 100, column: 13, scope: !3479)
!3487 = !DILocation(line: 100, column: 18, scope: !3479)
!3488 = !DILocation(line: 100, column: 24, scope: !3479)
!3489 = !DILocation(line: 100, column: 30, scope: !3479)
!3490 = !DILocation(line: 100, column: 2, scope: !3479)
!3491 = !DILocation(line: 101, column: 1, scope: !3479)
!3492 = distinct !DISubprogram(name: "queue_work", scope: !67, file: !67, line: 504, type: !3493, scopeLine: 506, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3493 = !DISubroutineType(types: !3494)
!3494 = !{!1088, !3495, !1434}
!3495 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3496, size: 64)
!3496 = !DICompositeType(tag: DW_TAG_structure_type, name: "workqueue_struct", file: !67, line: 18, flags: DIFlagFwdDecl)
!3497 = !DILocalVariable(name: "wq", arg: 1, scope: !3492, file: !67, line: 504, type: !3495)
!3498 = !DILocation(line: 504, column: 56, scope: !3492)
!3499 = !DILocalVariable(name: "work", arg: 2, scope: !3492, file: !67, line: 505, type: !1434)
!3500 = !DILocation(line: 505, column: 30, scope: !3492)
!3501 = !DILocation(line: 507, column: 41, scope: !3492)
!3502 = !DILocation(line: 507, column: 45, scope: !3492)
!3503 = !DILocation(line: 507, column: 9, scope: !3492)
!3504 = !DILocation(line: 507, column: 2, scope: !3492)
!3505 = distinct !DISubprogram(name: "arch_local_save_flags", scope: !3463, file: !3463, line: 646, type: !3464, scopeLine: 647, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3506 = !DILocalVariable(name: "__ret", scope: !3507, file: !3463, line: 648, type: !149)
!3507 = distinct !DILexicalBlock(scope: !3505, file: !3463, line: 648, column: 9)
!3508 = !DILocation(line: 648, column: 9, scope: !3507)
!3509 = !DILocalVariable(name: "__edi", scope: !3507, file: !3463, line: 648, type: !149)
!3510 = !DILocalVariable(name: "__esi", scope: !3507, file: !3463, line: 648, type: !149)
!3511 = !DILocalVariable(name: "__edx", scope: !3507, file: !3463, line: 648, type: !149)
!3512 = !DILocalVariable(name: "__ecx", scope: !3507, file: !3463, line: 648, type: !149)
!3513 = !DILocalVariable(name: "__eax", scope: !3507, file: !3463, line: 648, type: !149)
!3514 = !DILocation(line: 648, column: 9, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3516, file: !3463, line: 648, column: 9)
!3516 = distinct !DILexicalBlock(scope: !3507, file: !3463, line: 648, column: 9)
!3517 = !{i32 -2145771211, i32 -2145768896, i32 -2145768662, i32 -2145768611, i32 -2145768583, i32 -2145768558, i32 -2145768874, i32 -2145768861, i32 -2145768423, i32 -2145768304, i32 -2145768769, i32 -2145768742, i32 -2145768714, i32 -2145768684}
!3518 = !DILocalVariable(name: "__mask", scope: !3519, file: !3463, line: 648, type: !149)
!3519 = distinct !DILexicalBlock(scope: !3515, file: !3463, line: 648, column: 9)
!3520 = !DILocation(line: 648, column: 9, scope: !3519)
!3521 = !DILocation(line: 648, column: 9, scope: !3516)
!3522 = !DILocation(line: 648, column: 2, scope: !3505)
!3523 = distinct !DISubprogram(name: "arch_local_irq_disable", scope: !3463, file: !3463, line: 656, type: !2198, scopeLine: 657, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3524 = !DILocalVariable(name: "__edi", scope: !3525, file: !3463, line: 658, type: !149)
!3525 = distinct !DILexicalBlock(scope: !3523, file: !3463, line: 658, column: 2)
!3526 = !DILocation(line: 658, column: 2, scope: !3525)
!3527 = !DILocalVariable(name: "__esi", scope: !3525, file: !3463, line: 658, type: !149)
!3528 = !DILocalVariable(name: "__edx", scope: !3525, file: !3463, line: 658, type: !149)
!3529 = !DILocalVariable(name: "__ecx", scope: !3525, file: !3463, line: 658, type: !149)
!3530 = !DILocalVariable(name: "__eax", scope: !3525, file: !3463, line: 658, type: !149)
!3531 = !{i32 -2145764117, i32 -2145763385, i32 -2145763151, i32 -2145763100, i32 -2145763072, i32 -2145763047, i32 -2145763363, i32 -2145763350, i32 -2145762912, i32 -2145762793, i32 -2145763258, i32 -2145763231, i32 -2145763203, i32 -2145763173}
!3532 = !DILocation(line: 659, column: 1, scope: !3523)
!3533 = distinct !DISubprogram(name: "get_order", scope: !3534, file: !3534, line: 29, type: !3535, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3534 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3535 = !DISubroutineType(types: !3536)
!3536 = !{!113, !149}
!3537 = !DILocalVariable(name: "x", arg: 1, scope: !3538, file: !3539, line: 366, type: !375)
!3538 = distinct !DISubprogram(name: "fls64", scope: !3539, file: !3539, line: 366, type: !3540, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3539 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3540 = !DISubroutineType(types: !3541)
!3541 = !{!113, !375}
!3542 = !DILocation(line: 366, column: 40, scope: !3538, inlinedAt: !3543)
!3543 = distinct !DILocation(line: 46, column: 9, scope: !3533)
!3544 = !DILocalVariable(name: "bitpos", scope: !3538, file: !3539, line: 368, type: !113)
!3545 = !DILocation(line: 368, column: 6, scope: !3538, inlinedAt: !3543)
!3546 = !DILocalVariable(name: "size", arg: 1, scope: !3533, file: !3534, line: 29, type: !149)
!3547 = !DILocation(line: 29, column: 63, scope: !3533)
!3548 = !DILocation(line: 31, column: 27, scope: !3549)
!3549 = distinct !DILexicalBlock(scope: !3533, file: !3534, line: 31, column: 6)
!3550 = !DILocation(line: 31, column: 6, scope: !3549)
!3551 = !DILocation(line: 31, column: 6, scope: !3533)
!3552 = !DILocation(line: 32, column: 8, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3534, line: 32, column: 7)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !3534, line: 31, column: 34)
!3555 = !DILocation(line: 32, column: 7, scope: !3554)
!3556 = !DILocation(line: 33, column: 4, scope: !3553)
!3557 = !DILocation(line: 35, column: 7, scope: !3558)
!3558 = distinct !DILexicalBlock(scope: !3554, file: !3534, line: 35, column: 7)
!3559 = !DILocation(line: 35, column: 12, scope: !3558)
!3560 = !DILocation(line: 35, column: 7, scope: !3554)
!3561 = !DILocation(line: 36, column: 4, scope: !3558)
!3562 = !DILocation(line: 38, column: 10, scope: !3554)
!3563 = !DILocation(line: 38, column: 28, scope: !3554)
!3564 = !DILocation(line: 38, column: 41, scope: !3554)
!3565 = !DILocation(line: 38, column: 3, scope: !3554)
!3566 = !DILocation(line: 41, column: 6, scope: !3533)
!3567 = !DILocation(line: 42, column: 7, scope: !3533)
!3568 = !DILocation(line: 46, column: 15, scope: !3533)
!3569 = !DILocation(line: 374, column: 2, scope: !3538, inlinedAt: !3543)
!3570 = !DILocation(line: 376, column: 14, scope: !3538, inlinedAt: !3543)
!3571 = !{i32 316748}
!3572 = !DILocation(line: 377, column: 9, scope: !3538, inlinedAt: !3543)
!3573 = !DILocation(line: 377, column: 16, scope: !3538, inlinedAt: !3543)
!3574 = !DILocation(line: 46, column: 2, scope: !3533)
!3575 = !DILocation(line: 48, column: 1, scope: !3533)
!3576 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3577, file: !3577, line: 30, type: !3578, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3577 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3578 = !DISubroutineType(types: !3579)
!3579 = !{!113, !374}
!3580 = !DILocation(line: 366, column: 40, scope: !3538, inlinedAt: !3581)
!3581 = distinct !DILocation(line: 32, column: 9, scope: !3576)
!3582 = !DILocation(line: 368, column: 6, scope: !3538, inlinedAt: !3581)
!3583 = !DILocalVariable(name: "n", arg: 1, scope: !3576, file: !3577, line: 30, type: !374)
!3584 = !DILocation(line: 30, column: 21, scope: !3576)
!3585 = !DILocation(line: 32, column: 15, scope: !3576)
!3586 = !DILocation(line: 374, column: 2, scope: !3538, inlinedAt: !3581)
!3587 = !DILocation(line: 376, column: 14, scope: !3538, inlinedAt: !3581)
!3588 = !DILocation(line: 377, column: 9, scope: !3538, inlinedAt: !3581)
!3589 = !DILocation(line: 377, column: 16, scope: !3538, inlinedAt: !3581)
!3590 = !DILocation(line: 32, column: 18, scope: !3576)
!3591 = !DILocation(line: 32, column: 2, scope: !3576)
!3592 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3593, file: !3593, line: 137, type: !3594, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3593 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3594 = !DISubroutineType(types: !3595)
!3595 = !{!100, !1138, !1219, !303, !1557}
!3596 = !DILocalVariable(name: "s", arg: 1, scope: !3592, file: !3593, line: 137, type: !1138)
!3597 = !DILocation(line: 137, column: 54, scope: !3592)
!3598 = !DILocalVariable(name: "object", arg: 2, scope: !3592, file: !3593, line: 137, type: !1219)
!3599 = !DILocation(line: 137, column: 69, scope: !3592)
!3600 = !DILocalVariable(name: "size", arg: 3, scope: !3592, file: !3593, line: 138, type: !303)
!3601 = !DILocation(line: 138, column: 12, scope: !3592)
!3602 = !DILocalVariable(name: "flags", arg: 4, scope: !3592, file: !3593, line: 138, type: !1557)
!3603 = !DILocation(line: 138, column: 24, scope: !3592)
!3604 = !DILocation(line: 140, column: 17, scope: !3592)
!3605 = !DILocation(line: 140, column: 2, scope: !3592)
!3606 = distinct !DISubprogram(name: "__list_add", scope: !3380, file: !3380, line: 63, type: !3607, scopeLine: 66, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3607 = !DISubroutineType(types: !3608)
!3608 = !{null, !221, !221, !221}
!3609 = !DILocalVariable(name: "new", arg: 1, scope: !3606, file: !3380, line: 63, type: !221)
!3610 = !DILocation(line: 63, column: 49, scope: !3606)
!3611 = !DILocalVariable(name: "prev", arg: 2, scope: !3606, file: !3380, line: 64, type: !221)
!3612 = !DILocation(line: 64, column: 28, scope: !3606)
!3613 = !DILocalVariable(name: "next", arg: 3, scope: !3606, file: !3380, line: 65, type: !221)
!3614 = !DILocation(line: 65, column: 28, scope: !3606)
!3615 = !DILocation(line: 67, column: 24, scope: !3616)
!3616 = distinct !DILexicalBlock(scope: !3606, file: !3380, line: 67, column: 6)
!3617 = !DILocation(line: 67, column: 29, scope: !3616)
!3618 = !DILocation(line: 67, column: 35, scope: !3616)
!3619 = !DILocation(line: 67, column: 7, scope: !3616)
!3620 = !DILocation(line: 67, column: 6, scope: !3606)
!3621 = !DILocation(line: 68, column: 3, scope: !3616)
!3622 = !DILocation(line: 70, column: 15, scope: !3606)
!3623 = !DILocation(line: 70, column: 2, scope: !3606)
!3624 = !DILocation(line: 70, column: 8, scope: !3606)
!3625 = !DILocation(line: 70, column: 13, scope: !3606)
!3626 = !DILocation(line: 71, column: 14, scope: !3606)
!3627 = !DILocation(line: 71, column: 2, scope: !3606)
!3628 = !DILocation(line: 71, column: 7, scope: !3606)
!3629 = !DILocation(line: 71, column: 12, scope: !3606)
!3630 = !DILocation(line: 72, column: 14, scope: !3606)
!3631 = !DILocation(line: 72, column: 2, scope: !3606)
!3632 = !DILocation(line: 72, column: 7, scope: !3606)
!3633 = !DILocation(line: 72, column: 12, scope: !3606)
!3634 = !DILocation(line: 73, column: 2, scope: !3606)
!3635 = !DILocation(line: 73, column: 2, scope: !3636)
!3636 = distinct !DILexicalBlock(scope: !3606, file: !3380, line: 73, column: 2)
!3637 = !DILocation(line: 73, column: 2, scope: !3638)
!3638 = distinct !DILexicalBlock(scope: !3636, file: !3380, line: 73, column: 2)
!3639 = !DILocation(line: 73, column: 2, scope: !3640)
!3640 = distinct !DILexicalBlock(scope: !3636, file: !3380, line: 73, column: 2)
!3641 = !DILocation(line: 74, column: 1, scope: !3606)
!3642 = distinct !DISubprogram(name: "__list_add_valid", scope: !3380, file: !3380, line: 45, type: !3643, scopeLine: 48, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3643 = !DISubroutineType(types: !3644)
!3644 = !{!1088, !221, !221, !221}
!3645 = !DILocalVariable(name: "new", arg: 1, scope: !3642, file: !3380, line: 45, type: !221)
!3646 = !DILocation(line: 45, column: 55, scope: !3642)
!3647 = !DILocalVariable(name: "prev", arg: 2, scope: !3642, file: !3380, line: 46, type: !221)
!3648 = !DILocation(line: 46, column: 23, scope: !3642)
!3649 = !DILocalVariable(name: "next", arg: 3, scope: !3642, file: !3380, line: 47, type: !221)
!3650 = !DILocation(line: 47, column: 23, scope: !3642)
!3651 = !DILocation(line: 49, column: 2, scope: !3642)
!3652 = distinct !DISubprogram(name: "arch_local_irq_restore", scope: !3463, file: !3463, line: 651, type: !3653, scopeLine: 652, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3653 = !DISubroutineType(types: !3654)
!3654 = !{null, !149}
!3655 = !DILocalVariable(name: "f", arg: 1, scope: !3652, file: !3463, line: 651, type: !149)
!3656 = !DILocation(line: 651, column: 65, scope: !3652)
!3657 = !DILocalVariable(name: "__edi", scope: !3658, file: !3463, line: 653, type: !149)
!3658 = distinct !DILexicalBlock(scope: !3652, file: !3463, line: 653, column: 2)
!3659 = !DILocation(line: 653, column: 2, scope: !3658)
!3660 = !DILocalVariable(name: "__esi", scope: !3658, file: !3463, line: 653, type: !149)
!3661 = !DILocalVariable(name: "__edx", scope: !3658, file: !3463, line: 653, type: !149)
!3662 = !DILocalVariable(name: "__ecx", scope: !3658, file: !3463, line: 653, type: !149)
!3663 = !DILocalVariable(name: "__eax", scope: !3658, file: !3463, line: 653, type: !149)
!3664 = !{i32 -2145766744, i32 -2145765994, i32 -2145765760, i32 -2145765709, i32 -2145765681, i32 -2145765656, i32 -2145765972, i32 -2145765959, i32 -2145765521, i32 -2145765402, i32 -2145765867, i32 -2145765840, i32 -2145765812, i32 -2145765782}
!3665 = !DILocation(line: 654, column: 1, scope: !3652)
!3666 = distinct !DISubprogram(name: "gameport_get_pending_child", scope: !3, file: !3, line: 432, type: !3667, scopeLine: 433, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3667 = !DISubroutineType(types: !3668)
!3668 = !{!101, !101}
!3669 = !DILocation(line: 407, column: 64, scope: !2601, inlinedAt: !3670)
!3670 = distinct !DILocation(line: 450, column: 2, scope: !3666)
!3671 = !DILocation(line: 407, column: 84, scope: !2601, inlinedAt: !3670)
!3672 = !DILocation(line: 327, column: 67, scope: !2447, inlinedAt: !3673)
!3673 = distinct !DILocation(line: 438, column: 2, scope: !3674)
!3674 = distinct !DILexicalBlock(scope: !3675, file: !3, line: 438, column: 2)
!3675 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 438, column: 2)
!3676 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 438, column: 2)
!3677 = distinct !DILexicalBlock(scope: !3678, file: !3, line: 438, column: 2)
!3678 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 438, column: 2)
!3679 = !DILocalVariable(name: "parent", arg: 1, scope: !3666, file: !3, line: 432, type: !101)
!3680 = !DILocation(line: 432, column: 69, scope: !3666)
!3681 = !DILocalVariable(name: "event", scope: !3666, file: !3, line: 434, type: !2104)
!3682 = !DILocation(line: 434, column: 25, scope: !3666)
!3683 = !DILocalVariable(name: "gameport", scope: !3666, file: !3, line: 435, type: !101)
!3684 = !DILocation(line: 435, column: 19, scope: !3666)
!3685 = !DILocalVariable(name: "child", scope: !3666, file: !3, line: 435, type: !101)
!3686 = !DILocation(line: 435, column: 30, scope: !3666)
!3687 = !DILocalVariable(name: "flags", scope: !3666, file: !3, line: 436, type: !149)
!3688 = !DILocation(line: 436, column: 16, scope: !3666)
!3689 = !DILocation(line: 438, column: 2, scope: !3666)
!3690 = !DILocation(line: 438, column: 2, scope: !3678)
!3691 = !DILocalVariable(name: "__dummy", scope: !3692, file: !3, line: 438, type: !149)
!3692 = distinct !DILexicalBlock(scope: !3677, file: !3, line: 438, column: 2)
!3693 = !DILocation(line: 438, column: 2, scope: !3692)
!3694 = !DILocalVariable(name: "__dummy2", scope: !3692, file: !3, line: 438, type: !149)
!3695 = !DILocation(line: 438, column: 2, scope: !3677)
!3696 = !DILocation(line: 438, column: 2, scope: !3676)
!3697 = !DILocation(line: 438, column: 2, scope: !3698)
!3698 = distinct !DILexicalBlock(scope: !3676, file: !3, line: 438, column: 2)
!3699 = !DILocalVariable(name: "__dummy", scope: !3700, file: !3, line: 438, type: !149)
!3700 = distinct !DILexicalBlock(scope: !3701, file: !3, line: 438, column: 2)
!3701 = distinct !DILexicalBlock(scope: !3698, file: !3, line: 438, column: 2)
!3702 = !DILocation(line: 438, column: 2, scope: !3700)
!3703 = !DILocalVariable(name: "__dummy2", scope: !3700, file: !3, line: 438, type: !149)
!3704 = !DILocation(line: 438, column: 2, scope: !3701)
!3705 = !DILocation(line: 438, column: 2, scope: !3675)
!3706 = !{i32 -2143403981}
!3707 = !DILocation(line: 329, column: 10, scope: !2447, inlinedAt: !3673)
!3708 = !DILocation(line: 329, column: 16, scope: !2447, inlinedAt: !3673)
!3709 = !DILocation(line: 438, column: 2, scope: !3674)
!3710 = !DILocalVariable(name: "__mptr", scope: !3711, file: !3, line: 440, type: !100)
!3711 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 440, column: 2)
!3712 = distinct !DILexicalBlock(scope: !3666, file: !3, line: 440, column: 2)
!3713 = !DILocation(line: 440, column: 2, scope: !3711)
!3714 = !DILocation(line: 440, column: 2, scope: !3715)
!3715 = distinct !DILexicalBlock(scope: !3711, file: !3, line: 440, column: 2)
!3716 = !DILocation(line: 440, column: 2, scope: !3712)
!3717 = !DILocation(line: 440, column: 2, scope: !3718)
!3718 = distinct !DILexicalBlock(scope: !3712, file: !3, line: 440, column: 2)
!3719 = !DILocation(line: 441, column: 7, scope: !3720)
!3720 = distinct !DILexicalBlock(scope: !3721, file: !3, line: 441, column: 7)
!3721 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 440, column: 57)
!3722 = !DILocation(line: 441, column: 14, scope: !3720)
!3723 = !DILocation(line: 441, column: 19, scope: !3720)
!3724 = !DILocation(line: 441, column: 7, scope: !3721)
!3725 = !DILocation(line: 442, column: 15, scope: !3726)
!3726 = distinct !DILexicalBlock(scope: !3720, file: !3, line: 441, column: 46)
!3727 = !DILocation(line: 442, column: 22, scope: !3726)
!3728 = !DILocation(line: 442, column: 13, scope: !3726)
!3729 = !DILocation(line: 443, column: 8, scope: !3730)
!3730 = distinct !DILexicalBlock(scope: !3726, file: !3, line: 443, column: 8)
!3731 = !DILocation(line: 443, column: 18, scope: !3730)
!3732 = !DILocation(line: 443, column: 28, scope: !3730)
!3733 = !DILocation(line: 443, column: 25, scope: !3730)
!3734 = !DILocation(line: 443, column: 8, scope: !3726)
!3735 = !DILocation(line: 444, column: 13, scope: !3736)
!3736 = distinct !DILexicalBlock(scope: !3730, file: !3, line: 443, column: 36)
!3737 = !DILocation(line: 444, column: 11, scope: !3736)
!3738 = !DILocation(line: 445, column: 5, scope: !3736)
!3739 = !DILocation(line: 447, column: 3, scope: !3726)
!3740 = !DILocation(line: 448, column: 2, scope: !3721)
!3741 = !DILocalVariable(name: "__mptr", scope: !3742, file: !3, line: 440, type: !100)
!3742 = distinct !DILexicalBlock(scope: !3718, file: !3, line: 440, column: 2)
!3743 = !DILocation(line: 440, column: 2, scope: !3742)
!3744 = !DILocation(line: 440, column: 2, scope: !3745)
!3745 = distinct !DILexicalBlock(scope: !3742, file: !3, line: 440, column: 2)
!3746 = distinct !{!3746, !3716, !3747}
!3747 = !DILocation(line: 448, column: 2, scope: !3712)
!3748 = !DILocation(line: 450, column: 47, scope: !3666)
!3749 = !DILocation(line: 409, column: 2, scope: !2929, inlinedAt: !3670)
!3750 = !DILocation(line: 409, column: 2, scope: !2934, inlinedAt: !3670)
!3751 = !DILocation(line: 409, column: 2, scope: !2935, inlinedAt: !3670)
!3752 = !DILocation(line: 409, column: 2, scope: !2942, inlinedAt: !3670)
!3753 = !DILocation(line: 409, column: 2, scope: !2945, inlinedAt: !3670)
!3754 = !DILocation(line: 451, column: 9, scope: !3666)
!3755 = !DILocation(line: 451, column: 2, scope: !3666)
!3756 = distinct !DISubprogram(name: "device_is_registered", scope: !24, file: !24, line: 680, type: !1717, scopeLine: 681, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3757 = !DILocalVariable(name: "dev", arg: 1, scope: !3756, file: !24, line: 680, type: !209)
!3758 = !DILocation(line: 680, column: 55, scope: !3756)
!3759 = !DILocation(line: 682, column: 9, scope: !3756)
!3760 = !DILocation(line: 682, column: 14, scope: !3756)
!3761 = !DILocation(line: 682, column: 19, scope: !3756)
!3762 = !DILocation(line: 682, column: 2, scope: !3756)
!3763 = distinct !DISubprogram(name: "list_del_init", scope: !3380, file: !3380, line: 202, type: !3381, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3764 = !DILocalVariable(name: "entry", arg: 1, scope: !3763, file: !3380, line: 202, type: !221)
!3765 = !DILocation(line: 202, column: 52, scope: !3763)
!3766 = !DILocation(line: 204, column: 19, scope: !3763)
!3767 = !DILocation(line: 204, column: 2, scope: !3763)
!3768 = !DILocation(line: 205, column: 17, scope: !3763)
!3769 = !DILocation(line: 205, column: 2, scope: !3763)
!3770 = !DILocation(line: 206, column: 1, scope: !3763)
!3771 = distinct !DISubprogram(name: "__list_del_entry", scope: !3380, file: !3380, line: 130, type: !3381, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3772 = !DILocalVariable(name: "entry", arg: 1, scope: !3771, file: !3380, line: 130, type: !221)
!3773 = !DILocation(line: 130, column: 55, scope: !3771)
!3774 = !DILocation(line: 132, column: 30, scope: !3775)
!3775 = distinct !DILexicalBlock(scope: !3771, file: !3380, line: 132, column: 6)
!3776 = !DILocation(line: 132, column: 7, scope: !3775)
!3777 = !DILocation(line: 132, column: 6, scope: !3771)
!3778 = !DILocation(line: 133, column: 3, scope: !3775)
!3779 = !DILocation(line: 135, column: 13, scope: !3771)
!3780 = !DILocation(line: 135, column: 20, scope: !3771)
!3781 = !DILocation(line: 135, column: 26, scope: !3771)
!3782 = !DILocation(line: 135, column: 33, scope: !3771)
!3783 = !DILocation(line: 135, column: 2, scope: !3771)
!3784 = !DILocation(line: 136, column: 1, scope: !3771)
!3785 = distinct !DISubprogram(name: "__list_del_entry_valid", scope: !3380, file: !3380, line: 51, type: !3786, scopeLine: 52, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3786 = !DISubroutineType(types: !3787)
!3787 = !{!1088, !221}
!3788 = !DILocalVariable(name: "entry", arg: 1, scope: !3785, file: !3380, line: 51, type: !221)
!3789 = !DILocation(line: 51, column: 61, scope: !3785)
!3790 = !DILocation(line: 53, column: 2, scope: !3785)
!3791 = distinct !DISubprogram(name: "__list_del", scope: !3380, file: !3380, line: 110, type: !3480, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3792 = !DILocalVariable(name: "prev", arg: 1, scope: !3791, file: !3380, line: 110, type: !221)
!3793 = !DILocation(line: 110, column: 50, scope: !3791)
!3794 = !DILocalVariable(name: "next", arg: 2, scope: !3791, file: !3380, line: 110, type: !221)
!3795 = !DILocation(line: 110, column: 75, scope: !3791)
!3796 = !DILocation(line: 112, column: 15, scope: !3791)
!3797 = !DILocation(line: 112, column: 2, scope: !3791)
!3798 = !DILocation(line: 112, column: 8, scope: !3791)
!3799 = !DILocation(line: 112, column: 13, scope: !3791)
!3800 = !DILocation(line: 113, column: 2, scope: !3791)
!3801 = !DILocation(line: 113, column: 2, scope: !3802)
!3802 = distinct !DILexicalBlock(scope: !3791, file: !3380, line: 113, column: 2)
!3803 = !DILocation(line: 113, column: 2, scope: !3804)
!3804 = distinct !DILexicalBlock(scope: !3802, file: !3380, line: 113, column: 2)
!3805 = !DILocation(line: 113, column: 2, scope: !3806)
!3806 = distinct !DILexicalBlock(scope: !3802, file: !3380, line: 113, column: 2)
!3807 = !DILocation(line: 114, column: 1, scope: !3791)
!3808 = distinct !DISubprogram(name: "gameport_free_event", scope: !3, file: !3, line: 286, type: !3809, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3809 = !DISubroutineType(types: !3810)
!3810 = !{null, !2104}
!3811 = !DILocalVariable(name: "event", arg: 1, scope: !3808, file: !3, line: 286, type: !2104)
!3812 = !DILocation(line: 286, column: 56, scope: !3808)
!3813 = !DILocation(line: 288, column: 13, scope: !3808)
!3814 = !DILocation(line: 288, column: 20, scope: !3808)
!3815 = !DILocation(line: 288, column: 2, scope: !3808)
!3816 = !DILocation(line: 289, column: 8, scope: !3808)
!3817 = !DILocation(line: 289, column: 2, scope: !3808)
!3818 = !DILocation(line: 290, column: 1, scope: !3808)
!3819 = distinct !DISubprogram(name: "gameport_bus_match", scope: !3, file: !3, line: 780, type: !2047, scopeLine: 781, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3820 = !DILocalVariable(name: "dev", arg: 1, scope: !3819, file: !3, line: 780, type: !209)
!3821 = !DILocation(line: 780, column: 46, scope: !3819)
!3822 = !DILocalVariable(name: "drv", arg: 2, scope: !3819, file: !3, line: 780, type: !1743)
!3823 = !DILocation(line: 780, column: 73, scope: !3819)
!3824 = !DILocalVariable(name: "gameport_drv", scope: !3819, file: !3, line: 782, type: !182)
!3825 = !DILocation(line: 782, column: 26, scope: !3819)
!3826 = !DILocalVariable(name: "__mptr", scope: !3827, file: !3, line: 782, type: !100)
!3827 = distinct !DILexicalBlock(scope: !3819, file: !3, line: 782, column: 41)
!3828 = !DILocation(line: 782, column: 41, scope: !3827)
!3829 = !DILocation(line: 782, column: 41, scope: !3830)
!3830 = distinct !DILexicalBlock(scope: !3827, file: !3, line: 782, column: 41)
!3831 = !DILocation(line: 784, column: 10, scope: !3819)
!3832 = !DILocation(line: 784, column: 24, scope: !3819)
!3833 = !DILocation(line: 784, column: 9, scope: !3819)
!3834 = !DILocation(line: 784, column: 2, scope: !3819)
!3835 = distinct !DISubprogram(name: "gameport_driver_probe", scope: !3, file: !3, line: 691, type: !1717, scopeLine: 692, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3836 = !DILocalVariable(name: "dev", arg: 1, scope: !3835, file: !3, line: 691, type: !209)
!3837 = !DILocation(line: 691, column: 49, scope: !3835)
!3838 = !DILocalVariable(name: "gameport", scope: !3835, file: !3, line: 693, type: !101)
!3839 = !DILocation(line: 693, column: 19, scope: !3835)
!3840 = !DILocalVariable(name: "__mptr", scope: !3841, file: !3, line: 693, type: !100)
!3841 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 693, column: 30)
!3842 = !DILocation(line: 693, column: 30, scope: !3841)
!3843 = !DILocation(line: 693, column: 30, scope: !3844)
!3844 = distinct !DILexicalBlock(scope: !3841, file: !3, line: 693, column: 30)
!3845 = !DILocalVariable(name: "drv", scope: !3835, file: !3, line: 694, type: !182)
!3846 = !DILocation(line: 694, column: 26, scope: !3835)
!3847 = !DILocalVariable(name: "__mptr", scope: !3848, file: !3, line: 694, type: !100)
!3848 = distinct !DILexicalBlock(scope: !3835, file: !3, line: 694, column: 32)
!3849 = !DILocation(line: 694, column: 32, scope: !3848)
!3850 = !DILocation(line: 694, column: 32, scope: !3851)
!3851 = distinct !DILexicalBlock(scope: !3848, file: !3, line: 694, column: 32)
!3852 = !DILocation(line: 696, column: 2, scope: !3835)
!3853 = !DILocation(line: 696, column: 7, scope: !3835)
!3854 = !DILocation(line: 696, column: 15, scope: !3835)
!3855 = !DILocation(line: 696, column: 25, scope: !3835)
!3856 = !DILocation(line: 697, column: 9, scope: !3835)
!3857 = !DILocation(line: 697, column: 19, scope: !3835)
!3858 = !DILocation(line: 697, column: 2, scope: !3835)
!3859 = distinct !DISubprogram(name: "gameport_driver_remove", scope: !3, file: !3, line: 700, type: !1717, scopeLine: 701, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3860 = !DILocalVariable(name: "dev", arg: 1, scope: !3859, file: !3, line: 700, type: !209)
!3861 = !DILocation(line: 700, column: 50, scope: !3859)
!3862 = !DILocalVariable(name: "gameport", scope: !3859, file: !3, line: 702, type: !101)
!3863 = !DILocation(line: 702, column: 19, scope: !3859)
!3864 = !DILocalVariable(name: "__mptr", scope: !3865, file: !3, line: 702, type: !100)
!3865 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 702, column: 30)
!3866 = !DILocation(line: 702, column: 30, scope: !3865)
!3867 = !DILocation(line: 702, column: 30, scope: !3868)
!3868 = distinct !DILexicalBlock(scope: !3865, file: !3, line: 702, column: 30)
!3869 = !DILocalVariable(name: "drv", scope: !3859, file: !3, line: 703, type: !182)
!3870 = !DILocation(line: 703, column: 26, scope: !3859)
!3871 = !DILocalVariable(name: "__mptr", scope: !3872, file: !3, line: 703, type: !100)
!3872 = distinct !DILexicalBlock(scope: !3859, file: !3, line: 703, column: 32)
!3873 = !DILocation(line: 703, column: 32, scope: !3872)
!3874 = !DILocation(line: 703, column: 32, scope: !3875)
!3875 = distinct !DILexicalBlock(scope: !3872, file: !3, line: 703, column: 32)
!3876 = !DILocation(line: 705, column: 2, scope: !3859)
!3877 = !DILocation(line: 705, column: 7, scope: !3859)
!3878 = !DILocation(line: 705, column: 18, scope: !3859)
!3879 = !DILocation(line: 706, column: 2, scope: !3859)
!3880 = distinct !DISubprogram(name: "gameport_description_show", scope: !3, file: !3, line: 458, type: !2237, scopeLine: 459, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3881 = !DILocalVariable(name: "dev", arg: 1, scope: !3880, file: !3, line: 458, type: !209)
!3882 = !DILocation(line: 458, column: 57, scope: !3880)
!3883 = !DILocalVariable(name: "attr", arg: 2, scope: !3880, file: !3, line: 458, type: !2239)
!3884 = !DILocation(line: 458, column: 87, scope: !3880)
!3885 = !DILocalVariable(name: "buf", arg: 3, scope: !3880, file: !3, line: 458, type: !257)
!3886 = !DILocation(line: 458, column: 99, scope: !3880)
!3887 = !DILocalVariable(name: "gameport", scope: !3880, file: !3, line: 460, type: !101)
!3888 = !DILocation(line: 460, column: 19, scope: !3880)
!3889 = !DILocalVariable(name: "__mptr", scope: !3890, file: !3, line: 460, type: !100)
!3890 = distinct !DILexicalBlock(scope: !3880, file: !3, line: 460, column: 30)
!3891 = !DILocation(line: 460, column: 30, scope: !3890)
!3892 = !DILocation(line: 460, column: 30, scope: !3893)
!3893 = distinct !DILexicalBlock(scope: !3890, file: !3, line: 460, column: 30)
!3894 = !DILocation(line: 462, column: 17, scope: !3880)
!3895 = !DILocation(line: 462, column: 30, scope: !3880)
!3896 = !DILocation(line: 462, column: 40, scope: !3880)
!3897 = !DILocation(line: 462, column: 9, scope: !3880)
!3898 = !DILocation(line: 462, column: 2, scope: !3880)
!3899 = distinct !DISubprogram(name: "drvctl_store", scope: !3, file: !3, line: 466, type: !2242, scopeLine: 467, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3900 = !DILocalVariable(name: "dev", arg: 1, scope: !3899, file: !3, line: 466, type: !209)
!3901 = !DILocation(line: 466, column: 44, scope: !3899)
!3902 = !DILocalVariable(name: "attr", arg: 2, scope: !3899, file: !3, line: 466, type: !2239)
!3903 = !DILocation(line: 466, column: 74, scope: !3899)
!3904 = !DILocalVariable(name: "buf", arg: 3, scope: !3899, file: !3, line: 466, type: !186)
!3905 = !DILocation(line: 466, column: 92, scope: !3899)
!3906 = !DILocalVariable(name: "count", arg: 4, scope: !3899, file: !3, line: 466, type: !303)
!3907 = !DILocation(line: 466, column: 104, scope: !3899)
!3908 = !DILocalVariable(name: "gameport", scope: !3899, file: !3, line: 468, type: !101)
!3909 = !DILocation(line: 468, column: 19, scope: !3899)
!3910 = !DILocalVariable(name: "__mptr", scope: !3911, file: !3, line: 468, type: !100)
!3911 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 468, column: 30)
!3912 = !DILocation(line: 468, column: 30, scope: !3911)
!3913 = !DILocation(line: 468, column: 30, scope: !3914)
!3914 = distinct !DILexicalBlock(scope: !3911, file: !3, line: 468, column: 30)
!3915 = !DILocalVariable(name: "drv", scope: !3899, file: !3, line: 469, type: !1743)
!3916 = !DILocation(line: 469, column: 24, scope: !3899)
!3917 = !DILocalVariable(name: "error", scope: !3899, file: !3, line: 470, type: !113)
!3918 = !DILocation(line: 470, column: 6, scope: !3899)
!3919 = !DILocation(line: 472, column: 10, scope: !3899)
!3920 = !DILocation(line: 472, column: 8, scope: !3899)
!3921 = !DILocation(line: 473, column: 6, scope: !3922)
!3922 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 473, column: 6)
!3923 = !DILocation(line: 473, column: 6, scope: !3899)
!3924 = !DILocation(line: 474, column: 10, scope: !3922)
!3925 = !DILocation(line: 474, column: 3, scope: !3922)
!3926 = !DILocation(line: 476, column: 15, scope: !3927)
!3927 = distinct !DILexicalBlock(scope: !3899, file: !3, line: 476, column: 6)
!3928 = !DILocation(line: 476, column: 28, scope: !3927)
!3929 = !DILocation(line: 476, column: 7, scope: !3927)
!3930 = !DILocation(line: 476, column: 6, scope: !3899)
!3931 = !DILocation(line: 477, column: 28, scope: !3932)
!3932 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 476, column: 36)
!3933 = !DILocation(line: 477, column: 3, scope: !3932)
!3934 = !DILocation(line: 478, column: 2, scope: !3932)
!3935 = !DILocation(line: 478, column: 22, scope: !3936)
!3936 = distinct !DILexicalBlock(scope: !3927, file: !3, line: 478, column: 13)
!3937 = !DILocation(line: 478, column: 40, scope: !3936)
!3938 = !DILocation(line: 478, column: 14, scope: !3936)
!3939 = !DILocation(line: 478, column: 13, scope: !3927)
!3940 = !DILocation(line: 479, column: 27, scope: !3941)
!3941 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 478, column: 48)
!3942 = !DILocation(line: 479, column: 3, scope: !3941)
!3943 = !DILocation(line: 480, column: 2, scope: !3941)
!3944 = !DILocation(line: 480, column: 22, scope: !3945)
!3945 = distinct !DILexicalBlock(scope: !3936, file: !3, line: 480, column: 13)
!3946 = !DILocation(line: 480, column: 37, scope: !3945)
!3947 = !DILocation(line: 480, column: 14, scope: !3945)
!3948 = !DILocation(line: 480, column: 13, scope: !3936)
!3949 = !DILocation(line: 481, column: 28, scope: !3950)
!3950 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 480, column: 45)
!3951 = !DILocation(line: 481, column: 3, scope: !3950)
!3952 = !DILocation(line: 482, column: 24, scope: !3950)
!3953 = !DILocation(line: 482, column: 3, scope: !3950)
!3954 = !DILocation(line: 483, column: 2, scope: !3950)
!3955 = !DILocation(line: 483, column: 32, scope: !3956)
!3956 = distinct !DILexicalBlock(scope: !3945, file: !3, line: 483, column: 13)
!3957 = !DILocation(line: 483, column: 20, scope: !3956)
!3958 = !DILocation(line: 483, column: 18, scope: !3956)
!3959 = !DILocation(line: 483, column: 53, scope: !3956)
!3960 = !DILocation(line: 483, column: 13, scope: !3945)
!3961 = !DILocation(line: 484, column: 28, scope: !3962)
!3962 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 483, column: 62)
!3963 = !DILocation(line: 484, column: 3, scope: !3962)
!3964 = !DILocation(line: 485, column: 32, scope: !3962)
!3965 = !DILocalVariable(name: "__mptr", scope: !3966, file: !3, line: 485, type: !100)
!3966 = distinct !DILexicalBlock(scope: !3962, file: !3, line: 485, column: 42)
!3967 = !DILocation(line: 485, column: 42, scope: !3966)
!3968 = !DILocation(line: 485, column: 42, scope: !3969)
!3969 = distinct !DILexicalBlock(scope: !3966, file: !3, line: 485, column: 42)
!3970 = !DILocation(line: 485, column: 11, scope: !3962)
!3971 = !DILocation(line: 485, column: 9, scope: !3962)
!3972 = !DILocation(line: 486, column: 2, scope: !3962)
!3973 = !DILocation(line: 487, column: 9, scope: !3974)
!3974 = distinct !DILexicalBlock(scope: !3956, file: !3, line: 486, column: 9)
!3975 = !DILocation(line: 490, column: 2, scope: !3899)
!3976 = !DILocation(line: 492, column: 9, scope: !3899)
!3977 = !DILocation(line: 492, column: 17, scope: !3899)
!3978 = !DILocation(line: 492, column: 25, scope: !3899)
!3979 = !DILocation(line: 492, column: 2, scope: !3899)
!3980 = !DILocation(line: 493, column: 1, scope: !3899)
!3981 = distinct !DISubprogram(name: "gameport_reconnect_port", scope: !3, file: !3, line: 606, type: !118, scopeLine: 607, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!3982 = !DILocalVariable(name: "gameport", arg: 1, scope: !3981, file: !3, line: 606, type: !101)
!3983 = !DILocation(line: 606, column: 54, scope: !3981)
!3984 = !DILocation(line: 608, column: 2, scope: !3981)
!3985 = !DILocation(line: 609, column: 8, scope: !3986)
!3986 = distinct !DILexicalBlock(scope: !3987, file: !3, line: 609, column: 7)
!3987 = distinct !DILexicalBlock(scope: !3981, file: !3, line: 608, column: 5)
!3988 = !DILocation(line: 609, column: 18, scope: !3986)
!3989 = !DILocation(line: 609, column: 22, scope: !3986)
!3990 = !DILocation(line: 609, column: 26, scope: !3986)
!3991 = !DILocation(line: 609, column: 36, scope: !3986)
!3992 = !DILocation(line: 609, column: 41, scope: !3986)
!3993 = !DILocation(line: 609, column: 51, scope: !3986)
!3994 = !DILocation(line: 609, column: 54, scope: !3986)
!3995 = !DILocation(line: 609, column: 64, scope: !3986)
!3996 = !DILocation(line: 609, column: 69, scope: !3986)
!3997 = !DILocation(line: 609, column: 79, scope: !3986)
!3998 = !DILocation(line: 609, column: 7, scope: !3987)
!3999 = !DILocation(line: 610, column: 29, scope: !4000)
!4000 = distinct !DILexicalBlock(scope: !3986, file: !3, line: 609, column: 90)
!4001 = !DILocation(line: 610, column: 4, scope: !4000)
!4002 = !DILocation(line: 611, column: 25, scope: !4000)
!4003 = !DILocation(line: 611, column: 4, scope: !4000)
!4004 = !DILocation(line: 613, column: 4, scope: !4000)
!4005 = !DILocation(line: 615, column: 14, scope: !3987)
!4006 = !DILocation(line: 615, column: 24, scope: !3987)
!4007 = !DILocation(line: 615, column: 12, scope: !3987)
!4008 = !DILocation(line: 616, column: 2, scope: !3987)
!4009 = !DILocation(line: 616, column: 11, scope: !3981)
!4010 = distinct !{!4010, !3984, !4011}
!4011 = !DILocation(line: 616, column: 19, scope: !3981)
!4012 = !DILocation(line: 617, column: 1, scope: !3981)
!4013 = distinct !DISubprogram(name: "gameport_bind_driver", scope: !3, file: !3, line: 214, type: !190, scopeLine: 215, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4014 = !DILocalVariable(name: "gameport", arg: 1, scope: !4013, file: !3, line: 214, type: !101)
!4015 = !DILocation(line: 214, column: 50, scope: !4013)
!4016 = !DILocalVariable(name: "drv", arg: 2, scope: !4013, file: !3, line: 214, type: !182)
!4017 = !DILocation(line: 214, column: 84, scope: !4013)
!4018 = !DILocalVariable(name: "error", scope: !4013, file: !3, line: 216, type: !113)
!4019 = !DILocation(line: 216, column: 6, scope: !4013)
!4020 = !DILocation(line: 218, column: 26, scope: !4013)
!4021 = !DILocation(line: 218, column: 31, scope: !4013)
!4022 = !DILocation(line: 218, column: 2, scope: !4013)
!4023 = !DILocation(line: 218, column: 12, scope: !4013)
!4024 = !DILocation(line: 218, column: 16, scope: !4013)
!4025 = !DILocation(line: 218, column: 23, scope: !4013)
!4026 = !DILocation(line: 219, column: 6, scope: !4027)
!4027 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 219, column: 6)
!4028 = !DILocation(line: 219, column: 11, scope: !4027)
!4029 = !DILocation(line: 219, column: 19, scope: !4027)
!4030 = !DILocation(line: 219, column: 29, scope: !4027)
!4031 = !DILocation(line: 219, column: 6, scope: !4013)
!4032 = !DILocation(line: 220, column: 3, scope: !4033)
!4033 = distinct !DILexicalBlock(scope: !4027, file: !3, line: 219, column: 35)
!4034 = !DILocation(line: 220, column: 13, scope: !4033)
!4035 = !DILocation(line: 220, column: 17, scope: !4033)
!4036 = !DILocation(line: 220, column: 24, scope: !4033)
!4037 = !DILocation(line: 221, column: 3, scope: !4033)
!4038 = !DILocation(line: 224, column: 30, scope: !4013)
!4039 = !DILocation(line: 224, column: 40, scope: !4013)
!4040 = !DILocation(line: 224, column: 10, scope: !4013)
!4041 = !DILocation(line: 224, column: 8, scope: !4013)
!4042 = !DILocation(line: 225, column: 6, scope: !4043)
!4043 = distinct !DILexicalBlock(scope: !4013, file: !3, line: 225, column: 6)
!4044 = !DILocation(line: 225, column: 6, scope: !4013)
!4045 = !DILocation(line: 226, column: 3, scope: !4046)
!4046 = distinct !DILexicalBlock(scope: !4043, file: !3, line: 225, column: 13)
!4047 = !DILocation(line: 230, column: 3, scope: !4046)
!4048 = !DILocation(line: 230, column: 8, scope: !4046)
!4049 = !DILocation(line: 230, column: 19, scope: !4046)
!4050 = !DILocation(line: 231, column: 3, scope: !4046)
!4051 = !DILocation(line: 231, column: 13, scope: !4046)
!4052 = !DILocation(line: 231, column: 17, scope: !4046)
!4053 = !DILocation(line: 231, column: 24, scope: !4046)
!4054 = !DILocation(line: 232, column: 10, scope: !4046)
!4055 = !DILocation(line: 232, column: 3, scope: !4046)
!4056 = !DILocation(line: 235, column: 2, scope: !4013)
!4057 = !DILocation(line: 236, column: 1, scope: !4013)
!4058 = distinct !DISubprogram(name: "description_show", scope: !3, file: !3, line: 678, type: !2260, scopeLine: 679, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4059 = !DILocalVariable(name: "drv", arg: 1, scope: !4058, file: !3, line: 678, type: !1743)
!4060 = !DILocation(line: 678, column: 55, scope: !4058)
!4061 = !DILocalVariable(name: "buf", arg: 2, scope: !4058, file: !3, line: 678, type: !257)
!4062 = !DILocation(line: 678, column: 66, scope: !4058)
!4063 = !DILocalVariable(name: "driver", scope: !4058, file: !3, line: 680, type: !182)
!4064 = !DILocation(line: 680, column: 26, scope: !4058)
!4065 = !DILocalVariable(name: "__mptr", scope: !4066, file: !3, line: 680, type: !100)
!4066 = distinct !DILexicalBlock(scope: !4058, file: !3, line: 680, column: 35)
!4067 = !DILocation(line: 680, column: 35, scope: !4066)
!4068 = !DILocation(line: 680, column: 35, scope: !4069)
!4069 = distinct !DILexicalBlock(scope: !4066, file: !3, line: 680, column: 35)
!4070 = !DILocation(line: 681, column: 17, scope: !4058)
!4071 = !DILocation(line: 681, column: 30, scope: !4058)
!4072 = !DILocation(line: 681, column: 38, scope: !4058)
!4073 = !DILocation(line: 681, column: 52, scope: !4058)
!4074 = !DILocation(line: 681, column: 60, scope: !4058)
!4075 = !DILocation(line: 681, column: 9, scope: !4058)
!4076 = !DILocation(line: 681, column: 2, scope: !4058)
!4077 = distinct !DISubprogram(name: "gameport_handle_events", scope: !3, file: !3, line: 318, type: !1432, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4078 = !DILocalVariable(name: "work", arg: 1, scope: !4077, file: !3, line: 318, type: !1434)
!4079 = !DILocation(line: 318, column: 56, scope: !4077)
!4080 = !DILocalVariable(name: "event", scope: !4077, file: !3, line: 320, type: !2104)
!4081 = !DILocation(line: 320, column: 25, scope: !4077)
!4082 = !DILocation(line: 322, column: 2, scope: !4077)
!4083 = !DILocation(line: 330, column: 15, scope: !4084)
!4084 = distinct !DILexicalBlock(scope: !4077, file: !3, line: 330, column: 6)
!4085 = !DILocation(line: 330, column: 13, scope: !4084)
!4086 = !DILocation(line: 330, column: 6, scope: !4077)
!4087 = !DILocation(line: 332, column: 11, scope: !4088)
!4088 = distinct !DILexicalBlock(scope: !4084, file: !3, line: 330, column: 38)
!4089 = !DILocation(line: 332, column: 18, scope: !4088)
!4090 = !DILocation(line: 332, column: 3, scope: !4088)
!4091 = !DILocation(line: 335, column: 22, scope: !4092)
!4092 = distinct !DILexicalBlock(scope: !4088, file: !3, line: 332, column: 24)
!4093 = !DILocation(line: 335, column: 29, scope: !4092)
!4094 = !DILocation(line: 335, column: 4, scope: !4092)
!4095 = !DILocation(line: 336, column: 4, scope: !4092)
!4096 = !DILocation(line: 339, column: 27, scope: !4092)
!4097 = !DILocation(line: 339, column: 34, scope: !4092)
!4098 = !DILocation(line: 339, column: 4, scope: !4092)
!4099 = !DILocation(line: 340, column: 4, scope: !4092)
!4100 = !DILocation(line: 343, column: 36, scope: !4088)
!4101 = !DILocation(line: 343, column: 3, scope: !4088)
!4102 = !DILocation(line: 344, column: 23, scope: !4088)
!4103 = !DILocation(line: 344, column: 3, scope: !4088)
!4104 = !DILocation(line: 345, column: 2, scope: !4088)
!4105 = !DILocation(line: 347, column: 2, scope: !4077)
!4106 = !DILocation(line: 348, column: 1, scope: !4077)
!4107 = distinct !DISubprogram(name: "gameport_get_event", scope: !3, file: !3, line: 269, type: !4108, scopeLine: 270, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4108 = !DISubroutineType(types: !4109)
!4109 = !{!2104}
!4110 = !DILocation(line: 407, column: 64, scope: !2601, inlinedAt: !4111)
!4111 = distinct !DILocation(line: 282, column: 2, scope: !4107)
!4112 = !DILocation(line: 407, column: 84, scope: !2601, inlinedAt: !4111)
!4113 = !DILocation(line: 327, column: 67, scope: !2447, inlinedAt: !4114)
!4114 = distinct !DILocation(line: 274, column: 2, scope: !4115)
!4115 = distinct !DILexicalBlock(scope: !4116, file: !3, line: 274, column: 2)
!4116 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 274, column: 2)
!4117 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 274, column: 2)
!4118 = distinct !DILexicalBlock(scope: !4119, file: !3, line: 274, column: 2)
!4119 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 274, column: 2)
!4120 = !DILocalVariable(name: "event", scope: !4107, file: !3, line: 271, type: !2104)
!4121 = !DILocation(line: 271, column: 25, scope: !4107)
!4122 = !DILocalVariable(name: "flags", scope: !4107, file: !3, line: 272, type: !149)
!4123 = !DILocation(line: 272, column: 16, scope: !4107)
!4124 = !DILocation(line: 274, column: 2, scope: !4107)
!4125 = !DILocation(line: 274, column: 2, scope: !4119)
!4126 = !DILocalVariable(name: "__dummy", scope: !4127, file: !3, line: 274, type: !149)
!4127 = distinct !DILexicalBlock(scope: !4118, file: !3, line: 274, column: 2)
!4128 = !DILocation(line: 274, column: 2, scope: !4127)
!4129 = !DILocalVariable(name: "__dummy2", scope: !4127, file: !3, line: 274, type: !149)
!4130 = !DILocation(line: 274, column: 2, scope: !4118)
!4131 = !DILocation(line: 274, column: 2, scope: !4117)
!4132 = !DILocation(line: 274, column: 2, scope: !4133)
!4133 = distinct !DILexicalBlock(scope: !4117, file: !3, line: 274, column: 2)
!4134 = !DILocalVariable(name: "__dummy", scope: !4135, file: !3, line: 274, type: !149)
!4135 = distinct !DILexicalBlock(scope: !4136, file: !3, line: 274, column: 2)
!4136 = distinct !DILexicalBlock(scope: !4133, file: !3, line: 274, column: 2)
!4137 = !DILocation(line: 274, column: 2, scope: !4135)
!4138 = !DILocalVariable(name: "__dummy2", scope: !4135, file: !3, line: 274, type: !149)
!4139 = !DILocation(line: 274, column: 2, scope: !4136)
!4140 = !DILocation(line: 274, column: 2, scope: !4116)
!4141 = !{i32 -2143426984}
!4142 = !DILocation(line: 329, column: 10, scope: !2447, inlinedAt: !4114)
!4143 = !DILocation(line: 329, column: 16, scope: !2447, inlinedAt: !4114)
!4144 = !DILocation(line: 274, column: 2, scope: !4115)
!4145 = !DILocation(line: 276, column: 7, scope: !4146)
!4146 = distinct !DILexicalBlock(scope: !4107, file: !3, line: 276, column: 6)
!4147 = !DILocation(line: 276, column: 6, scope: !4107)
!4148 = !DILocalVariable(name: "__mptr", scope: !4149, file: !3, line: 277, type: !100)
!4149 = distinct !DILexicalBlock(scope: !4150, file: !3, line: 277, column: 11)
!4150 = distinct !DILexicalBlock(scope: !4146, file: !3, line: 276, column: 41)
!4151 = !DILocation(line: 277, column: 11, scope: !4149)
!4152 = !DILocation(line: 277, column: 11, scope: !4153)
!4153 = distinct !DILexicalBlock(scope: !4149, file: !3, line: 277, column: 11)
!4154 = !DILocation(line: 277, column: 9, scope: !4150)
!4155 = !DILocation(line: 279, column: 18, scope: !4150)
!4156 = !DILocation(line: 279, column: 25, scope: !4150)
!4157 = !DILocation(line: 279, column: 3, scope: !4150)
!4158 = !DILocation(line: 280, column: 2, scope: !4150)
!4159 = !DILocation(line: 282, column: 47, scope: !4107)
!4160 = !DILocation(line: 409, column: 2, scope: !2929, inlinedAt: !4111)
!4161 = !DILocation(line: 409, column: 2, scope: !2934, inlinedAt: !4111)
!4162 = !DILocation(line: 409, column: 2, scope: !2935, inlinedAt: !4111)
!4163 = !DILocation(line: 409, column: 2, scope: !2942, inlinedAt: !4111)
!4164 = !DILocation(line: 409, column: 2, scope: !2945, inlinedAt: !4111)
!4165 = !DILocation(line: 283, column: 9, scope: !4107)
!4166 = !DILocation(line: 283, column: 2, scope: !4107)
!4167 = distinct !DISubprogram(name: "gameport_add_port", scope: !3, file: !3, line: 548, type: !118, scopeLine: 549, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4168 = !DILocalVariable(name: "gameport", arg: 1, scope: !4167, file: !3, line: 548, type: !101)
!4169 = !DILocation(line: 548, column: 48, scope: !4167)
!4170 = !DILocalVariable(name: "error", scope: !4167, file: !3, line: 550, type: !113)
!4171 = !DILocation(line: 550, column: 6, scope: !4167)
!4172 = !DILocation(line: 552, column: 6, scope: !4173)
!4173 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 552, column: 6)
!4174 = !DILocation(line: 552, column: 16, scope: !4173)
!4175 = !DILocation(line: 552, column: 6, scope: !4167)
!4176 = !DILocation(line: 553, column: 29, scope: !4173)
!4177 = !DILocation(line: 553, column: 3, scope: !4173)
!4178 = !DILocation(line: 553, column: 13, scope: !4173)
!4179 = !DILocation(line: 553, column: 21, scope: !4173)
!4180 = !DILocation(line: 553, column: 27, scope: !4173)
!4181 = !DILocation(line: 555, column: 20, scope: !4167)
!4182 = !DILocation(line: 556, column: 26, scope: !4167)
!4183 = !DILocation(line: 556, column: 3, scope: !4167)
!4184 = !DILocation(line: 557, column: 30, scope: !4167)
!4185 = !DILocation(line: 557, column: 3, scope: !4167)
!4186 = !DILocation(line: 555, column: 2, scope: !4167)
!4187 = !DILocation(line: 555, column: 12, scope: !4167)
!4188 = !DILocation(line: 555, column: 18, scope: !4167)
!4189 = !DILocation(line: 559, column: 17, scope: !4167)
!4190 = !DILocation(line: 559, column: 27, scope: !4167)
!4191 = !DILocation(line: 559, column: 2, scope: !4167)
!4192 = !DILocation(line: 561, column: 6, scope: !4193)
!4193 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 561, column: 6)
!4194 = !DILocation(line: 561, column: 16, scope: !4193)
!4195 = !DILocation(line: 561, column: 6, scope: !4167)
!4196 = !DILocation(line: 562, column: 3, scope: !4193)
!4197 = !DILocation(line: 565, column: 3, scope: !4193)
!4198 = !DILocation(line: 568, column: 22, scope: !4167)
!4199 = !DILocation(line: 568, column: 32, scope: !4167)
!4200 = !DILocation(line: 568, column: 10, scope: !4167)
!4201 = !DILocation(line: 568, column: 8, scope: !4167)
!4202 = !DILocation(line: 569, column: 6, scope: !4203)
!4203 = distinct !DILexicalBlock(scope: !4167, file: !3, line: 569, column: 6)
!4204 = !DILocation(line: 569, column: 6, scope: !4167)
!4205 = !DILocation(line: 570, column: 3, scope: !4203)
!4206 = !DILocation(line: 573, column: 1, scope: !4167)
!4207 = distinct !DISubprogram(name: "gameport_attach_driver", scope: !3, file: !3, line: 709, type: !3111, scopeLine: 710, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4208 = !DILocalVariable(name: "drv", arg: 1, scope: !4207, file: !3, line: 709, type: !182)
!4209 = !DILocation(line: 709, column: 60, scope: !4207)
!4210 = !DILocalVariable(name: "error", scope: !4207, file: !3, line: 711, type: !113)
!4211 = !DILocation(line: 711, column: 6, scope: !4207)
!4212 = !DILocation(line: 713, column: 25, scope: !4207)
!4213 = !DILocation(line: 713, column: 30, scope: !4207)
!4214 = !DILocation(line: 713, column: 10, scope: !4207)
!4215 = !DILocation(line: 713, column: 8, scope: !4207)
!4216 = !DILocation(line: 714, column: 6, scope: !4217)
!4217 = distinct !DILexicalBlock(scope: !4207, file: !3, line: 714, column: 6)
!4218 = !DILocation(line: 714, column: 6, scope: !4207)
!4219 = !DILocation(line: 715, column: 3, scope: !4217)
!4220 = !DILocation(line: 717, column: 1, scope: !4207)
!4221 = distinct !DISubprogram(name: "gameport_remove_duplicate_events", scope: !3, file: !3, line: 292, type: !3809, scopeLine: 293, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4222 = !DILocation(line: 407, column: 64, scope: !2601, inlinedAt: !4223)
!4223 = distinct !DILocation(line: 314, column: 2, scope: !4221)
!4224 = !DILocation(line: 407, column: 84, scope: !2601, inlinedAt: !4223)
!4225 = !DILocation(line: 327, column: 67, scope: !2447, inlinedAt: !4226)
!4226 = distinct !DILocation(line: 297, column: 2, scope: !4227)
!4227 = distinct !DILexicalBlock(scope: !4228, file: !3, line: 297, column: 2)
!4228 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 297, column: 2)
!4229 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 297, column: 2)
!4230 = distinct !DILexicalBlock(scope: !4231, file: !3, line: 297, column: 2)
!4231 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 297, column: 2)
!4232 = !DILocalVariable(name: "event", arg: 1, scope: !4221, file: !3, line: 292, type: !2104)
!4233 = !DILocation(line: 292, column: 69, scope: !4221)
!4234 = !DILocalVariable(name: "e", scope: !4221, file: !3, line: 294, type: !2104)
!4235 = !DILocation(line: 294, column: 25, scope: !4221)
!4236 = !DILocalVariable(name: "next", scope: !4221, file: !3, line: 294, type: !2104)
!4237 = !DILocation(line: 294, column: 29, scope: !4221)
!4238 = !DILocalVariable(name: "flags", scope: !4221, file: !3, line: 295, type: !149)
!4239 = !DILocation(line: 295, column: 16, scope: !4221)
!4240 = !DILocation(line: 297, column: 2, scope: !4221)
!4241 = !DILocation(line: 297, column: 2, scope: !4231)
!4242 = !DILocalVariable(name: "__dummy", scope: !4243, file: !3, line: 297, type: !149)
!4243 = distinct !DILexicalBlock(scope: !4230, file: !3, line: 297, column: 2)
!4244 = !DILocation(line: 297, column: 2, scope: !4243)
!4245 = !DILocalVariable(name: "__dummy2", scope: !4243, file: !3, line: 297, type: !149)
!4246 = !DILocation(line: 297, column: 2, scope: !4230)
!4247 = !DILocation(line: 297, column: 2, scope: !4229)
!4248 = !DILocation(line: 297, column: 2, scope: !4249)
!4249 = distinct !DILexicalBlock(scope: !4229, file: !3, line: 297, column: 2)
!4250 = !DILocalVariable(name: "__dummy", scope: !4251, file: !3, line: 297, type: !149)
!4251 = distinct !DILexicalBlock(scope: !4252, file: !3, line: 297, column: 2)
!4252 = distinct !DILexicalBlock(scope: !4249, file: !3, line: 297, column: 2)
!4253 = !DILocation(line: 297, column: 2, scope: !4251)
!4254 = !DILocalVariable(name: "__dummy2", scope: !4251, file: !3, line: 297, type: !149)
!4255 = !DILocation(line: 297, column: 2, scope: !4252)
!4256 = !DILocation(line: 297, column: 2, scope: !4228)
!4257 = !{i32 -2143423955}
!4258 = !DILocation(line: 329, column: 10, scope: !2447, inlinedAt: !4226)
!4259 = !DILocation(line: 329, column: 16, scope: !2447, inlinedAt: !4226)
!4260 = !DILocation(line: 297, column: 2, scope: !4227)
!4261 = !DILocalVariable(name: "__mptr", scope: !4262, file: !3, line: 299, type: !100)
!4262 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 299, column: 2)
!4263 = distinct !DILexicalBlock(scope: !4221, file: !3, line: 299, column: 2)
!4264 = !DILocation(line: 299, column: 2, scope: !4262)
!4265 = !DILocation(line: 299, column: 2, scope: !4266)
!4266 = distinct !DILexicalBlock(scope: !4262, file: !3, line: 299, column: 2)
!4267 = !DILocation(line: 299, column: 2, scope: !4263)
!4268 = !DILocalVariable(name: "__mptr", scope: !4269, file: !3, line: 299, type: !100)
!4269 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 299, column: 2)
!4270 = !DILocation(line: 299, column: 2, scope: !4269)
!4271 = !DILocation(line: 299, column: 2, scope: !4272)
!4272 = distinct !DILexicalBlock(scope: !4269, file: !3, line: 299, column: 2)
!4273 = !DILocation(line: 299, column: 2, scope: !4274)
!4274 = distinct !DILexicalBlock(scope: !4263, file: !3, line: 299, column: 2)
!4275 = !DILocation(line: 300, column: 7, scope: !4276)
!4276 = distinct !DILexicalBlock(scope: !4277, file: !3, line: 300, column: 7)
!4277 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 299, column: 64)
!4278 = !DILocation(line: 300, column: 14, scope: !4276)
!4279 = !DILocation(line: 300, column: 24, scope: !4276)
!4280 = !DILocation(line: 300, column: 27, scope: !4276)
!4281 = !DILocation(line: 300, column: 21, scope: !4276)
!4282 = !DILocation(line: 300, column: 7, scope: !4277)
!4283 = !DILocation(line: 306, column: 8, scope: !4284)
!4284 = distinct !DILexicalBlock(scope: !4285, file: !3, line: 306, column: 8)
!4285 = distinct !DILexicalBlock(scope: !4276, file: !3, line: 300, column: 35)
!4286 = !DILocation(line: 306, column: 15, scope: !4284)
!4287 = !DILocation(line: 306, column: 23, scope: !4284)
!4288 = !DILocation(line: 306, column: 26, scope: !4284)
!4289 = !DILocation(line: 306, column: 20, scope: !4284)
!4290 = !DILocation(line: 306, column: 8, scope: !4285)
!4291 = !DILocation(line: 307, column: 5, scope: !4284)
!4292 = !DILocation(line: 309, column: 19, scope: !4285)
!4293 = !DILocation(line: 309, column: 22, scope: !4285)
!4294 = !DILocation(line: 309, column: 4, scope: !4285)
!4295 = !DILocation(line: 310, column: 24, scope: !4285)
!4296 = !DILocation(line: 310, column: 4, scope: !4285)
!4297 = !DILocation(line: 311, column: 3, scope: !4285)
!4298 = !DILocation(line: 312, column: 2, scope: !4277)
!4299 = !DILocalVariable(name: "__mptr", scope: !4300, file: !3, line: 299, type: !100)
!4300 = distinct !DILexicalBlock(scope: !4274, file: !3, line: 299, column: 2)
!4301 = !DILocation(line: 299, column: 2, scope: !4300)
!4302 = !DILocation(line: 299, column: 2, scope: !4303)
!4303 = distinct !DILexicalBlock(scope: !4300, file: !3, line: 299, column: 2)
!4304 = distinct !{!4304, !4267, !4305}
!4305 = !DILocation(line: 312, column: 2, scope: !4263)
!4306 = !DILocation(line: 314, column: 47, scope: !4221)
!4307 = !DILocation(line: 409, column: 2, scope: !2929, inlinedAt: !4223)
!4308 = !DILocation(line: 409, column: 2, scope: !2934, inlinedAt: !4223)
!4309 = !DILocation(line: 409, column: 2, scope: !2935, inlinedAt: !4223)
!4310 = !DILocation(line: 409, column: 2, scope: !2942, inlinedAt: !4223)
!4311 = !DILocation(line: 409, column: 2, scope: !2945, inlinedAt: !4223)
!4312 = !DILocation(line: 315, column: 1, scope: !4221)
!4313 = distinct !DISubprogram(name: "list_empty", scope: !3380, file: !3380, line: 280, type: !4314, scopeLine: 281, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4314 = !DISubroutineType(types: !4315)
!4315 = !{!113, !4316}
!4316 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !4317, size: 64)
!4317 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !218)
!4318 = !DILocalVariable(name: "head", arg: 1, scope: !4313, file: !3380, line: 280, type: !4316)
!4319 = !DILocation(line: 280, column: 54, scope: !4313)
!4320 = !DILocation(line: 282, column: 9, scope: !4321)
!4321 = distinct !DILexicalBlock(scope: !4313, file: !3380, line: 282, column: 9)
!4322 = !DILocation(line: 282, column: 9, scope: !4323)
!4323 = distinct !DILexicalBlock(scope: !4321, file: !3380, line: 282, column: 9)
!4324 = !DILocation(line: 282, column: 34, scope: !4313)
!4325 = !DILocation(line: 282, column: 31, scope: !4313)
!4326 = !DILocation(line: 282, column: 2, scope: !4313)
!4327 = distinct !DISubprogram(name: "gameport_measure_speed", scope: !3, file: !3, line: 78, type: !194, scopeLine: 79, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4328 = !DILocalVariable(name: "gameport", arg: 1, scope: !4327, file: !3, line: 78, type: !101)
!4329 = !DILocation(line: 78, column: 52, scope: !4327)
!4330 = !DILocalVariable(name: "i", scope: !4327, file: !3, line: 80, type: !7)
!4331 = !DILocation(line: 80, column: 15, scope: !4327)
!4332 = !DILocalVariable(name: "t", scope: !4327, file: !3, line: 80, type: !7)
!4333 = !DILocation(line: 80, column: 18, scope: !4327)
!4334 = !DILocalVariable(name: "tx", scope: !4327, file: !3, line: 80, type: !7)
!4335 = !DILocation(line: 80, column: 21, scope: !4327)
!4336 = !DILocalVariable(name: "t1", scope: !4327, file: !3, line: 81, type: !374)
!4337 = !DILocation(line: 81, column: 6, scope: !4327)
!4338 = !DILocalVariable(name: "t2", scope: !4327, file: !3, line: 81, type: !374)
!4339 = !DILocation(line: 81, column: 10, scope: !4327)
!4340 = !DILocalVariable(name: "t3", scope: !4327, file: !3, line: 81, type: !374)
!4341 = !DILocation(line: 81, column: 14, scope: !4327)
!4342 = !DILocalVariable(name: "flags", scope: !4327, file: !3, line: 82, type: !149)
!4343 = !DILocation(line: 82, column: 16, scope: !4327)
!4344 = !DILocation(line: 84, column: 20, scope: !4345)
!4345 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 84, column: 6)
!4346 = !DILocation(line: 84, column: 6, scope: !4345)
!4347 = !DILocation(line: 84, column: 6, scope: !4327)
!4348 = !DILocation(line: 85, column: 3, scope: !4345)
!4349 = !DILocation(line: 87, column: 5, scope: !4327)
!4350 = !DILocation(line: 89, column: 9, scope: !4351)
!4351 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 89, column: 2)
!4352 = !DILocation(line: 89, column: 7, scope: !4351)
!4353 = !DILocation(line: 89, column: 14, scope: !4354)
!4354 = distinct !DILexicalBlock(scope: !4351, file: !3, line: 89, column: 2)
!4355 = !DILocation(line: 89, column: 16, scope: !4354)
!4356 = !DILocation(line: 89, column: 2, scope: !4351)
!4357 = !DILocation(line: 90, column: 3, scope: !4358)
!4358 = distinct !DILexicalBlock(scope: !4354, file: !3, line: 89, column: 27)
!4359 = !DILocation(line: 90, column: 3, scope: !4360)
!4360 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 90, column: 3)
!4361 = !DILocalVariable(name: "__dummy", scope: !4362, file: !3, line: 90, type: !149)
!4362 = distinct !DILexicalBlock(scope: !4363, file: !3, line: 90, column: 3)
!4363 = distinct !DILexicalBlock(scope: !4360, file: !3, line: 90, column: 3)
!4364 = !DILocation(line: 90, column: 3, scope: !4362)
!4365 = !DILocalVariable(name: "__dummy2", scope: !4362, file: !3, line: 90, type: !149)
!4366 = !DILocation(line: 90, column: 3, scope: !4363)
!4367 = !DILocation(line: 91, column: 8, scope: !4358)
!4368 = !DILocation(line: 91, column: 6, scope: !4358)
!4369 = !DILocation(line: 92, column: 10, scope: !4370)
!4370 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 92, column: 3)
!4371 = !DILocation(line: 92, column: 8, scope: !4370)
!4372 = !DILocation(line: 92, column: 15, scope: !4373)
!4373 = distinct !DILexicalBlock(scope: !4370, file: !3, line: 92, column: 3)
!4374 = !DILocation(line: 92, column: 17, scope: !4373)
!4375 = !DILocation(line: 92, column: 3, scope: !4370)
!4376 = !DILocation(line: 93, column: 18, scope: !4373)
!4377 = !DILocation(line: 93, column: 4, scope: !4373)
!4378 = !DILocation(line: 92, column: 24, scope: !4373)
!4379 = !DILocation(line: 92, column: 3, scope: !4373)
!4380 = distinct !{!4380, !4375, !4381}
!4381 = !DILocation(line: 93, column: 26, scope: !4370)
!4382 = !DILocation(line: 94, column: 8, scope: !4358)
!4383 = !DILocation(line: 94, column: 6, scope: !4358)
!4384 = !DILocation(line: 95, column: 8, scope: !4358)
!4385 = !DILocation(line: 95, column: 6, scope: !4358)
!4386 = !DILocation(line: 96, column: 3, scope: !4358)
!4387 = !DILocation(line: 96, column: 3, scope: !4388)
!4388 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 96, column: 3)
!4389 = !DILocalVariable(name: "__dummy", scope: !4390, file: !3, line: 96, type: !149)
!4390 = distinct !DILexicalBlock(scope: !4391, file: !3, line: 96, column: 3)
!4391 = distinct !DILexicalBlock(scope: !4388, file: !3, line: 96, column: 3)
!4392 = !DILocation(line: 96, column: 3, scope: !4390)
!4393 = !DILocalVariable(name: "__dummy2", scope: !4390, file: !3, line: 96, type: !149)
!4394 = !DILocation(line: 96, column: 3, scope: !4391)
!4395 = !DILocation(line: 97, column: 3, scope: !4396)
!4396 = distinct !DILexicalBlock(scope: !4397, file: !3, line: 97, column: 3)
!4397 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 97, column: 3)
!4398 = !DILocation(line: 97, column: 3, scope: !4397)
!4399 = !DILocation(line: 97, column: 3, scope: !4400)
!4400 = distinct !DILexicalBlock(scope: !4401, file: !3, line: 97, column: 3)
!4401 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 97, column: 3)
!4402 = !DILocation(line: 97, column: 3, scope: !4401)
!4403 = !DILocation(line: 97, column: 3, scope: !4404)
!4404 = distinct !DILexicalBlock(scope: !4396, file: !3, line: 97, column: 3)
!4405 = !DILocation(line: 98, column: 8, scope: !4358)
!4406 = !DILocation(line: 98, column: 13, scope: !4358)
!4407 = !DILocation(line: 98, column: 11, scope: !4358)
!4408 = !DILocation(line: 98, column: 20, scope: !4358)
!4409 = !DILocation(line: 98, column: 25, scope: !4358)
!4410 = !DILocation(line: 98, column: 23, scope: !4358)
!4411 = !DILocation(line: 98, column: 17, scope: !4358)
!4412 = !DILocation(line: 98, column: 7, scope: !4358)
!4413 = !DILocation(line: 98, column: 5, scope: !4358)
!4414 = !DILocation(line: 99, column: 7, scope: !4415)
!4415 = distinct !DILexicalBlock(scope: !4358, file: !3, line: 99, column: 7)
!4416 = !DILocation(line: 99, column: 11, scope: !4415)
!4417 = !DILocation(line: 99, column: 9, scope: !4415)
!4418 = !DILocation(line: 99, column: 7, scope: !4358)
!4419 = !DILocation(line: 100, column: 9, scope: !4415)
!4420 = !DILocation(line: 100, column: 7, scope: !4415)
!4421 = !DILocation(line: 100, column: 4, scope: !4415)
!4422 = !DILocation(line: 101, column: 2, scope: !4358)
!4423 = !DILocation(line: 89, column: 23, scope: !4354)
!4424 = !DILocation(line: 89, column: 2, scope: !4354)
!4425 = distinct !{!4425, !4356, !4426}
!4426 = !DILocation(line: 101, column: 2, scope: !4351)
!4427 = !DILocation(line: 103, column: 17, scope: !4327)
!4428 = !DILocation(line: 103, column: 2, scope: !4327)
!4429 = !DILocation(line: 104, column: 4, scope: !4327)
!4430 = !DILocation(line: 105, column: 6, scope: !4431)
!4431 = distinct !DILexicalBlock(scope: !4327, file: !3, line: 105, column: 6)
!4432 = !DILocation(line: 105, column: 6, scope: !4327)
!4433 = !DILocation(line: 106, column: 8, scope: !4431)
!4434 = !DILocation(line: 106, column: 5, scope: !4431)
!4435 = !DILocation(line: 106, column: 3, scope: !4431)
!4436 = !DILocation(line: 107, column: 9, scope: !4327)
!4437 = !DILocation(line: 107, column: 2, scope: !4327)
!4438 = !DILocation(line: 108, column: 1, scope: !4327)
!4439 = distinct !DISubprogram(name: "old_gameport_measure_speed", scope: !3, file: !3, line: 110, type: !194, scopeLine: 111, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4440 = !DILocalVariable(name: "low", scope: !4441, file: !4442, line: 201, type: !149)
!4441 = distinct !DISubprogram(name: "rdtsc", scope: !4442, file: !4442, line: 199, type: !4443, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4442 = !DIFile(filename: "./arch/x86/include/asm/msr.h", directory: "/home/lizy2001/genbc/linux")
!4443 = !DISubroutineType(types: !4444)
!4444 = !{!376}
!4445 = !DILocation(line: 201, column: 2, scope: !4441, inlinedAt: !4446)
!4446 = distinct !DILocation(line: 150, column: 8, scope: !4447)
!4447 = distinct !DILexicalBlock(scope: !4448, file: !3, line: 146, column: 26)
!4448 = distinct !DILexicalBlock(scope: !4449, file: !3, line: 146, column: 2)
!4449 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 146, column: 2)
!4450 = !DILocalVariable(name: "high", scope: !4441, file: !4442, line: 201, type: !149)
!4451 = !DILocation(line: 201, column: 2, scope: !4441, inlinedAt: !4452)
!4452 = distinct !DILocation(line: 148, column: 8, scope: !4447)
!4453 = !DILocalVariable(name: "gameport", arg: 1, scope: !4439, file: !3, line: 110, type: !101)
!4454 = !DILocation(line: 110, column: 56, scope: !4439)
!4455 = !DILocalVariable(name: "i", scope: !4439, file: !3, line: 138, type: !7)
!4456 = !DILocation(line: 138, column: 15, scope: !4439)
!4457 = !DILocalVariable(name: "t", scope: !4439, file: !3, line: 138, type: !7)
!4458 = !DILocation(line: 138, column: 18, scope: !4439)
!4459 = !DILocalVariable(name: "tx", scope: !4439, file: !3, line: 139, type: !149)
!4460 = !DILocation(line: 139, column: 16, scope: !4439)
!4461 = !DILocalVariable(name: "t1", scope: !4439, file: !3, line: 139, type: !149)
!4462 = !DILocation(line: 139, column: 20, scope: !4439)
!4463 = !DILocalVariable(name: "t2", scope: !4439, file: !3, line: 139, type: !149)
!4464 = !DILocation(line: 139, column: 24, scope: !4439)
!4465 = !DILocalVariable(name: "flags", scope: !4439, file: !3, line: 139, type: !149)
!4466 = !DILocation(line: 139, column: 28, scope: !4439)
!4467 = !DILocation(line: 141, column: 20, scope: !4468)
!4468 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 141, column: 6)
!4469 = !DILocation(line: 141, column: 6, scope: !4468)
!4470 = !DILocation(line: 141, column: 6, scope: !4439)
!4471 = !DILocation(line: 142, column: 3, scope: !4468)
!4472 = !DILocation(line: 144, column: 5, scope: !4439)
!4473 = !DILocation(line: 146, column: 8, scope: !4449)
!4474 = !DILocation(line: 146, column: 6, scope: !4449)
!4475 = !DILocation(line: 146, column: 13, scope: !4448)
!4476 = !DILocation(line: 146, column: 15, scope: !4448)
!4477 = !DILocation(line: 146, column: 2, scope: !4449)
!4478 = !DILocation(line: 147, column: 3, scope: !4447)
!4479 = !DILocation(line: 147, column: 3, scope: !4480)
!4480 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 147, column: 3)
!4481 = !DILocalVariable(name: "__dummy", scope: !4482, file: !3, line: 147, type: !149)
!4482 = distinct !DILexicalBlock(scope: !4483, file: !3, line: 147, column: 3)
!4483 = distinct !DILexicalBlock(scope: !4480, file: !3, line: 147, column: 3)
!4484 = !DILocation(line: 147, column: 3, scope: !4482)
!4485 = !DILocalVariable(name: "__dummy2", scope: !4482, file: !3, line: 147, type: !149)
!4486 = !DILocation(line: 147, column: 3, scope: !4483)
!4487 = !DILocation(line: 203, column: 2, scope: !4441, inlinedAt: !4452)
!4488 = !{i32 1293540}
!4489 = !DILocation(line: 205, column: 9, scope: !4441, inlinedAt: !4452)
!4490 = !DILocation(line: 148, column: 6, scope: !4447)
!4491 = !DILocation(line: 149, column: 10, scope: !4492)
!4492 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 149, column: 3)
!4493 = !DILocation(line: 149, column: 8, scope: !4492)
!4494 = !DILocation(line: 149, column: 15, scope: !4495)
!4495 = distinct !DILexicalBlock(scope: !4492, file: !3, line: 149, column: 3)
!4496 = !DILocation(line: 149, column: 17, scope: !4495)
!4497 = !DILocation(line: 149, column: 3, scope: !4492)
!4498 = !DILocation(line: 149, column: 42, scope: !4495)
!4499 = !DILocation(line: 149, column: 28, scope: !4495)
!4500 = !DILocation(line: 149, column: 24, scope: !4495)
!4501 = !DILocation(line: 149, column: 3, scope: !4495)
!4502 = distinct !{!4502, !4497, !4503}
!4503 = !DILocation(line: 149, column: 50, scope: !4492)
!4504 = !DILocation(line: 203, column: 2, scope: !4441, inlinedAt: !4446)
!4505 = !DILocation(line: 205, column: 9, scope: !4441, inlinedAt: !4446)
!4506 = !DILocation(line: 150, column: 6, scope: !4447)
!4507 = !DILocation(line: 151, column: 3, scope: !4447)
!4508 = !DILocation(line: 151, column: 3, scope: !4509)
!4509 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 151, column: 3)
!4510 = !DILocalVariable(name: "__dummy", scope: !4511, file: !3, line: 151, type: !149)
!4511 = distinct !DILexicalBlock(scope: !4512, file: !3, line: 151, column: 3)
!4512 = distinct !DILexicalBlock(scope: !4509, file: !3, line: 151, column: 3)
!4513 = !DILocation(line: 151, column: 3, scope: !4511)
!4514 = !DILocalVariable(name: "__dummy2", scope: !4511, file: !3, line: 151, type: !149)
!4515 = !DILocation(line: 151, column: 3, scope: !4512)
!4516 = !DILocation(line: 152, column: 3, scope: !4517)
!4517 = distinct !DILexicalBlock(scope: !4518, file: !3, line: 152, column: 3)
!4518 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 152, column: 3)
!4519 = !DILocation(line: 152, column: 3, scope: !4518)
!4520 = !DILocation(line: 152, column: 3, scope: !4521)
!4521 = distinct !DILexicalBlock(scope: !4522, file: !3, line: 152, column: 3)
!4522 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 152, column: 3)
!4523 = !DILocation(line: 152, column: 3, scope: !4522)
!4524 = !DILocation(line: 152, column: 3, scope: !4525)
!4525 = distinct !DILexicalBlock(scope: !4517, file: !3, line: 152, column: 3)
!4526 = !DILocation(line: 153, column: 7, scope: !4527)
!4527 = distinct !DILexicalBlock(scope: !4447, file: !3, line: 153, column: 7)
!4528 = !DILocation(line: 153, column: 12, scope: !4527)
!4529 = !DILocation(line: 153, column: 10, scope: !4527)
!4530 = !DILocation(line: 153, column: 17, scope: !4527)
!4531 = !DILocation(line: 153, column: 15, scope: !4527)
!4532 = !DILocation(line: 153, column: 7, scope: !4447)
!4533 = !DILocation(line: 153, column: 26, scope: !4527)
!4534 = !DILocation(line: 153, column: 31, scope: !4527)
!4535 = !DILocation(line: 153, column: 29, scope: !4527)
!4536 = !DILocation(line: 153, column: 24, scope: !4527)
!4537 = !DILocation(line: 153, column: 21, scope: !4527)
!4538 = !DILocation(line: 154, column: 2, scope: !4447)
!4539 = !DILocation(line: 146, column: 22, scope: !4448)
!4540 = !DILocation(line: 146, column: 2, scope: !4448)
!4541 = distinct !{!4541, !4477, !4542}
!4542 = !DILocation(line: 154, column: 2, scope: !4449)
!4543 = !DILocation(line: 156, column: 17, scope: !4439)
!4544 = !DILocation(line: 156, column: 2, scope: !4439)
!4545 = !DILocalVariable(name: "pscr_ret__", scope: !4546, file: !3, line: 157, type: !149)
!4546 = distinct !DILexicalBlock(scope: !4439, file: !3, line: 157, column: 10)
!4547 = !DILocation(line: 157, column: 10, scope: !4546)
!4548 = !DILocalVariable(name: "__vpp_verify", scope: !4549, file: !3, line: 157, type: !1219)
!4549 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 157, column: 10)
!4550 = !DILocation(line: 157, column: 10, scope: !4549)
!4551 = !DILocalVariable(name: "pfo_val__", scope: !4552, file: !3, line: 157, type: !374)
!4552 = distinct !DILexicalBlock(scope: !4546, file: !3, line: 157, column: 10)
!4553 = !DILocation(line: 157, column: 10, scope: !4552)
!4554 = !{i32 -2143433275}
!4555 = !DILocation(line: 157, column: 50, scope: !4439)
!4556 = !DILocation(line: 158, column: 21, scope: !4439)
!4557 = !DILocation(line: 158, column: 39, scope: !4439)
!4558 = !DILocation(line: 158, column: 42, scope: !4439)
!4559 = !DILocation(line: 158, column: 52, scope: !4439)
!4560 = !DILocation(line: 158, column: 36, scope: !4439)
!4561 = !DILocation(line: 157, column: 9, scope: !4439)
!4562 = !DILocation(line: 157, column: 2, scope: !4439)
!4563 = !DILocation(line: 174, column: 1, scope: !4439)
!4564 = distinct !DISubprogram(name: "ktime_get_ns", scope: !4565, file: !4565, line: 152, type: !4566, scopeLine: 153, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4565 = !DIFile(filename: "./include/linux/timekeeping.h", directory: "/home/lizy2001/genbc/linux")
!4566 = !DISubroutineType(types: !4567)
!4567 = !{!374}
!4568 = !DILocation(line: 154, column: 21, scope: !4564)
!4569 = !DILocation(line: 154, column: 9, scope: !4564)
!4570 = !DILocation(line: 154, column: 2, scope: !4564)
!4571 = distinct !DISubprogram(name: "gameport_read", scope: !103, file: !103, line: 174, type: !122, scopeLine: 175, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4572 = !DILocalVariable(name: "gameport", arg: 1, scope: !4571, file: !103, line: 174, type: !101)
!4573 = !DILocation(line: 174, column: 60, scope: !4571)
!4574 = !DILocation(line: 176, column: 6, scope: !4575)
!4575 = distinct !DILexicalBlock(scope: !4571, file: !103, line: 176, column: 6)
!4576 = !DILocation(line: 176, column: 16, scope: !4575)
!4577 = !DILocation(line: 176, column: 6, scope: !4571)
!4578 = !DILocation(line: 177, column: 10, scope: !4575)
!4579 = !DILocation(line: 177, column: 20, scope: !4575)
!4580 = !DILocation(line: 177, column: 25, scope: !4575)
!4581 = !DILocation(line: 177, column: 3, scope: !4575)
!4582 = !DILocation(line: 179, column: 14, scope: !4575)
!4583 = !DILocation(line: 179, column: 24, scope: !4575)
!4584 = !DILocation(line: 179, column: 10, scope: !4575)
!4585 = !DILocation(line: 179, column: 3, scope: !4575)
!4586 = !DILocation(line: 180, column: 1, scope: !4571)
!4587 = distinct !DISubprogram(name: "ktime_to_ns", scope: !601, file: !601, line: 80, type: !4588, scopeLine: 81, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4588 = !DISubroutineType(types: !4589)
!4589 = !{!408, !4590}
!4590 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !600)
!4591 = !DILocalVariable(name: "kt", arg: 1, scope: !4587, file: !601, line: 80, type: !4590)
!4592 = !DILocation(line: 80, column: 45, scope: !4587)
!4593 = !DILocation(line: 82, column: 9, scope: !4587)
!4594 = !DILocation(line: 82, column: 2, scope: !4587)
!4595 = distinct !DISubprogram(name: "inb", scope: !4596, file: !4596, line: 334, type: !4597, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !176)
!4596 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!4597 = !DISubroutineType(types: !4598)
!4598 = !{!124, !113}
!4599 = !DILocalVariable(name: "port", arg: 1, scope: !4595, file: !4596, line: 334, type: !113)
!4600 = !DILocation(line: 334, column: 1, scope: !4595)
!4601 = !DILocalVariable(name: "value", scope: !4595, file: !4596, line: 334, type: !124)
!4602 = !{i32 -2144281104}
