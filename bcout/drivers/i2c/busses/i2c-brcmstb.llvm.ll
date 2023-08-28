; ModuleID = '../bcout/drivers/i2c/busses/i2c-brcmstb.llvm.bc'
source_filename = "drivers/i2c/busses/i2c-brcmstb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall6.init\22, \22a\22\09"
module asm "__initcall_brcmstb_i2c_driver_init6:\09\09\09"
module asm ".long\09brcmstb_i2c_driver_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], i8* }
%struct.acpi_device_id = type { [9 x i8], i64, i32, i32 }
%struct.driver_private = type opaque
%struct.platform_device_id = type { [20 x i8], i64 }
%struct.bsc_clk_param = type { i32, i32, i32 }
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.brcmstb_i2c_dev = type { %struct.device*, i8*, i32, %struct.bsc_regs*, %struct.i2c_adapter, %struct.completion, i32, i32 }
%struct.bsc_regs = type { i32, [8 x i32], i32, i32, i32, [8 x i32], i32, i32 }

@__UNIQUE_ID___addressable_brcmstb_i2c_driver_init174 = internal global i8* bitcast (i32 ()* @brcmstb_i2c_driver_init to i8*), section ".discard.addressable", align 8, !dbg !0
@brcmstb_i2c_driver = internal global %struct.platform_driver { i32 (%struct.platform_device*)* @brcmstb_i2c_probe, i32 (%struct.platform_device*)* @brcmstb_i2c_remove, void (%struct.platform_device*)* null, i32 (%struct.platform_device*, i32)* null, i32 (%struct.platform_device*)* null, %struct.device_driver { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), %struct.bus_type* null, %struct.module* null, i8* null, i8 0, i32 0, %struct.of_device_id* getelementptr inbounds ([4 x %struct.of_device_id], [4 x %struct.of_device_id]* @brcmstb_i2c_of_match, i32 0, i32 0), %struct.acpi_device_id* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.dev_pm_ops* @brcmstb_i2c_pm, void (%struct.device*)* null, %struct.driver_private* null }, %struct.platform_device_id* null, i8 0 }, align 8, !dbg !2218
@__exitcall_brcmstb_i2c_driver_exit = internal global void ()* @brcmstb_i2c_driver_exit, section ".exitcall.exit", align 8, !dbg !2194
@__UNIQUE_ID_author175 = internal constant [51 x i8] c"i2c_brcmstb.author=Kamal Dasu <kdasu@broadcom.com>\00", section ".modinfo", align 1, !dbg !2201
@__UNIQUE_ID_description176 = internal constant [51 x i8] c"i2c_brcmstb.description=Broadcom Settop I2C Driver\00", section ".modinfo", align 1, !dbg !2206
@__UNIQUE_ID_file177 = internal constant [48 x i8] c"i2c_brcmstb.file=drivers/i2c/busses/i2c-brcmstb\00", section ".modinfo", align 1, !dbg !2208
@__UNIQUE_ID_license178 = internal constant [27 x i8] c"i2c_brcmstb.license=GPL v2\00", section ".modinfo", align 1, !dbg !2213
@.str = private unnamed_addr constant [12 x i8] c"brcmstb-i2c\00", align 1
@brcmstb_i2c_of_match = internal constant [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmstb-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,brcmper-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"brcm,bcm2711-hdmi-i2c\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i8* null }, %struct.of_device_id zeroinitializer], align 16, !dbg !2375
@brcmstb_i2c_pm = internal constant %struct.dev_pm_ops { i32 (%struct.device*)* null, void (%struct.device*)* null, i32 (%struct.device*)* @brcmstb_i2c_suspend, i32 (%struct.device*)* @brcmstb_i2c_resume, i32 (%struct.device*)* @brcmstb_i2c_suspend, i32 (%struct.device*)* @brcmstb_i2c_resume, i32 (%struct.device*)* @brcmstb_i2c_suspend, i32 (%struct.device*)* @brcmstb_i2c_resume, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null }, align 8, !dbg !2378
@.str.1 = private unnamed_addr constant [22 x i8] c"brcm,bcm2711-hdmi-i2c\00", align 1
@.str.2 = private unnamed_addr constant [16 x i8] c"interrupt-names\00", align 1
@.str.3 = private unnamed_addr constant [16 x i8] c"clock-frequency\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"setting clock-frequency@%dHz\0A\00", align 1
@bsc_clk = internal constant [8 x %struct.bsc_clk_param] [%struct.bsc_clk_param { i32 375000, i32 0, i32 0 }, %struct.bsc_clk_param { i32 390000, i32 16, i32 0 }, %struct.bsc_clk_param { i32 187500, i32 32, i32 0 }, %struct.bsc_clk_param { i32 200000, i32 48, i32 0 }, %struct.bsc_clk_param { i32 93750, i32 0, i32 128 }, %struct.bsc_clk_param { i32 97500, i32 16, i32 128 }, %struct.bsc_clk_param { i32 46875, i32 32, i32 128 }, %struct.bsc_clk_param { i32 50000, i32 48, i32 128 }], align 16, !dbg !2244
@.str.5 = private unnamed_addr constant [20 x i8] c"brcmstb,brcmper-i2c\00", align 1
@.str.6 = private unnamed_addr constant [16 x i8] c"Broadcom STB : \00", align 1
@brcmstb_i2c_algo = internal constant %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @brcmstb_i2c_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @brcmstb_i2c_functionality }, align 8, !dbg !2253
@.str.7 = private unnamed_addr constant [31 x i8] c"%s@%dhz registered in %s mode\0A\00", align 1
@.str.8 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.9 = private unnamed_addr constant [10 x i8] c"interrupt\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"polling\00", align 1
@__init_completion.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !2239
@.str.11 = private unnamed_addr constant [9 x i8] c"&x->wait\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"auto-i2c\00", align 1
@.str.13 = private unnamed_addr constant [40 x i8] c"leaving current clock-frequency @ %dHz\0A\00", align 1
@jiffies = external dso_local global i64, align 8
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_brcmstb_i2c_driver_init174 to i8*), i8* bitcast (void ()* @brcmstb_i2c_driver_exit to i8*), i8* bitcast (void ()** @__exitcall_brcmstb_i2c_driver_exit to i8*), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_author175, i32 0, i32 0), i8* getelementptr inbounds ([51 x i8], [51 x i8]* @__UNIQUE_ID_description176, i32 0, i32 0), i8* getelementptr inbounds ([48 x i8], [48 x i8]* @__UNIQUE_ID_file177, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license178, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_driver_init() #0 section ".init.text" !dbg !2385 {
entry:
  %call = call i32 @__platform_driver_register(%struct.platform_driver* @brcmstb_i2c_driver, %struct.module* null) #6, !dbg !2388
  ret i32 %call, !dbg !2388
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @brcmstb_i2c_driver_exit() #0 section ".exit.text" !dbg !2389 {
entry:
  call void @platform_driver_unregister(%struct.platform_driver* @brcmstb_i2c_driver) #6, !dbg !2390
  ret void, !dbg !2390
}

; Function Attrs: noredzone
declare dso_local void @platform_driver_unregister(%struct.platform_driver*) #1

; Function Attrs: noredzone
declare dso_local i32 @__platform_driver_register(%struct.platform_driver*, %struct.module*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_probe(%struct.platform_device* %pdev) #2 !dbg !2391 {
entry:
  %retval = alloca i32, align 4
  %pdev.addr = alloca %struct.platform_device*, align 8
  %rc = alloca i32, align 4
  %dev = alloca %struct.brcmstb_i2c_dev*, align 8
  %adap = alloca %struct.i2c_adapter*, align 8
  %iomem = alloca %struct.resource*, align 8
  %int_name = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2392, metadata !DIExpression()), !dbg !2393
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2394, metadata !DIExpression()), !dbg !2395
  store i32 0, i32* %rc, align 4, !dbg !2395
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev, metadata !2396, metadata !DIExpression()), !dbg !2420
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap, metadata !2421, metadata !DIExpression()), !dbg !2422
  call void @llvm.dbg.declare(metadata %struct.resource** %iomem, metadata !2423, metadata !DIExpression()), !dbg !2424
  call void @llvm.dbg.declare(metadata i8** %int_name, metadata !2425, metadata !DIExpression()), !dbg !2426
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2427
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2428
  %call = call i8* @devm_kzalloc(%struct.device* %dev1, i64 1008, i32 3264) #6, !dbg !2429
  %1 = bitcast i8* %call to %struct.brcmstb_i2c_dev*, !dbg !2429
  store %struct.brcmstb_i2c_dev* %1, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2430
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2431
  %tobool = icmp ne %struct.brcmstb_i2c_dev* %2, null, !dbg !2431
  br i1 %tobool, label %if.end, label %if.then, !dbg !2433

if.then:                                          ; preds = %entry
  store i32 -12, i32* %retval, align 4, !dbg !2434
  br label %return, !dbg !2434

if.end:                                           ; preds = %entry
  %3 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2435
  %dev2 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %3, i32 0, i32 3, !dbg !2436
  %call3 = call i8* @devm_kzalloc(%struct.device* %dev2, i64 88, i32 3264) #6, !dbg !2437
  %4 = bitcast i8* %call3 to %struct.bsc_regs*, !dbg !2437
  %5 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2438
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %5, i32 0, i32 3, !dbg !2439
  store %struct.bsc_regs* %4, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !2440
  %6 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2441
  %bsc_regmap4 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %6, i32 0, i32 3, !dbg !2443
  %7 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap4, align 8, !dbg !2443
  %tobool5 = icmp ne %struct.bsc_regs* %7, null, !dbg !2441
  br i1 %tobool5, label %if.end7, label %if.then6, !dbg !2444

if.then6:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2445
  br label %return, !dbg !2445

if.end7:                                          ; preds = %if.end
  %8 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2446
  %9 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2447
  %10 = bitcast %struct.brcmstb_i2c_dev* %9 to i8*, !dbg !2447
  call void @platform_set_drvdata(%struct.platform_device* %8, i8* %10) #6, !dbg !2448
  %11 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2449
  %dev8 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 3, !dbg !2450
  %12 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2451
  %device = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %12, i32 0, i32 0, !dbg !2452
  store %struct.device* %dev8, %struct.device** %device, align 8, !dbg !2453
  %13 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2454
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %13, i32 0, i32 5, !dbg !2454
  call void @__init_completion(%struct.completion* %done) #6, !dbg !2454
  %14 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2455
  %call9 = call %struct.resource* @platform_get_resource(%struct.platform_device* %14, i32 512, i32 0) #6, !dbg !2456
  store %struct.resource* %call9, %struct.resource** %iomem, align 8, !dbg !2457
  %15 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2458
  %device10 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %15, i32 0, i32 0, !dbg !2459
  %16 = load %struct.device*, %struct.device** %device10, align 8, !dbg !2459
  %17 = load %struct.resource*, %struct.resource** %iomem, align 8, !dbg !2460
  %call11 = call i8* @devm_ioremap_resource(%struct.device* %16, %struct.resource* %17) #6, !dbg !2461
  %18 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2462
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %18, i32 0, i32 1, !dbg !2463
  store i8* %call11, i8** %base, align 8, !dbg !2464
  %19 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2465
  %base12 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %19, i32 0, i32 1, !dbg !2467
  %20 = load i8*, i8** %base12, align 8, !dbg !2467
  %call13 = call zeroext i1 @IS_ERR(i8* %20) #6, !dbg !2468
  br i1 %call13, label %if.then14, label %if.end15, !dbg !2469

if.then14:                                        ; preds = %if.end7
  store i32 -12, i32* %rc, align 4, !dbg !2470
  br label %probe_errorout, !dbg !2472

if.end15:                                         ; preds = %if.end7
  %21 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2473
  %device16 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %21, i32 0, i32 0, !dbg !2475
  %22 = load %struct.device*, %struct.device** %device16, align 8, !dbg !2475
  %of_node = getelementptr inbounds %struct.device, %struct.device* %22, i32 0, i32 23, !dbg !2476
  %23 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2476
  %call17 = call i32 @of_device_is_compatible(%struct.device_node* %23, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0)) #6, !dbg !2477
  %tobool18 = icmp ne i32 %call17, 0, !dbg !2477
  br i1 %tobool18, label %if.then19, label %if.end24, !dbg !2478

if.then19:                                        ; preds = %if.end15
  %24 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2479
  %call20 = call i32 @bcm2711_release_bsc(%struct.brcmstb_i2c_dev* %24) #6, !dbg !2481
  store i32 %call20, i32* %rc, align 4, !dbg !2482
  %25 = load i32, i32* %rc, align 4, !dbg !2483
  %tobool21 = icmp ne i32 %25, 0, !dbg !2483
  br i1 %tobool21, label %if.then22, label %if.end23, !dbg !2485

if.then22:                                        ; preds = %if.then19
  br label %probe_errorout, !dbg !2486

if.end23:                                         ; preds = %if.then19
  br label %if.end24, !dbg !2487

if.end24:                                         ; preds = %if.end23, %if.end15
  %26 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2488
  %device25 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %26, i32 0, i32 0, !dbg !2489
  %27 = load %struct.device*, %struct.device** %device25, align 8, !dbg !2489
  %of_node26 = getelementptr inbounds %struct.device, %struct.device* %27, i32 0, i32 23, !dbg !2490
  %28 = load %struct.device_node*, %struct.device_node** %of_node26, align 8, !dbg !2490
  %call27 = call i32 @of_property_read_string(%struct.device_node* %28, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0), i8** %int_name) #6, !dbg !2491
  store i32 %call27, i32* %rc, align 4, !dbg !2492
  %29 = load i32, i32* %rc, align 4, !dbg !2493
  %cmp = icmp slt i32 %29, 0, !dbg !2495
  br i1 %cmp, label %if.then28, label %if.end29, !dbg !2496

if.then28:                                        ; preds = %if.end24
  store i8* null, i8** %int_name, align 8, !dbg !2497
  br label %if.end29, !dbg !2498

if.end29:                                         ; preds = %if.then28, %if.end24
  %30 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2499
  %call30 = call i32 @platform_get_irq_optional(%struct.platform_device* %30, i32 0) #6, !dbg !2500
  %31 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2501
  %irq = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %31, i32 0, i32 2, !dbg !2502
  store i32 %call30, i32* %irq, align 8, !dbg !2503
  %32 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2504
  call void @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %32, i1 zeroext false) #6, !dbg !2505
  %33 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2506
  %irq31 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %33, i32 0, i32 2, !dbg !2508
  %34 = load i32, i32* %irq31, align 8, !dbg !2508
  %cmp32 = icmp sge i32 %34, 0, !dbg !2509
  br i1 %cmp32, label %if.then33, label %if.end42, !dbg !2510

if.then33:                                        ; preds = %if.end29
  %35 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2511
  %dev34 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %35, i32 0, i32 3, !dbg !2513
  %36 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2514
  %irq35 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %36, i32 0, i32 2, !dbg !2515
  %37 = load i32, i32* %irq35, align 8, !dbg !2515
  %38 = load i8*, i8** %int_name, align 8, !dbg !2516
  %tobool36 = icmp ne i8* %38, null, !dbg !2516
  br i1 %tobool36, label %cond.true, label %cond.false, !dbg !2516

cond.true:                                        ; preds = %if.then33
  %39 = load i8*, i8** %int_name, align 8, !dbg !2517
  br label %cond.end, !dbg !2516

cond.false:                                       ; preds = %if.then33
  %40 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2518
  %name = getelementptr inbounds %struct.platform_device, %struct.platform_device* %40, i32 0, i32 0, !dbg !2519
  %41 = load i8*, i8** %name, align 8, !dbg !2519
  br label %cond.end, !dbg !2516

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i8* [ %39, %cond.true ], [ %41, %cond.false ], !dbg !2516
  %42 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2520
  %43 = bitcast %struct.brcmstb_i2c_dev* %42 to i8*, !dbg !2520
  %call37 = call i32 @devm_request_irq(%struct.device* %dev34, i32 %37, i32 (i32, i8*)* @brcmstb_i2c_isr, i64 128, i8* %cond, i8* %43) #6, !dbg !2521
  store i32 %call37, i32* %rc, align 4, !dbg !2522
  %44 = load i32, i32* %rc, align 4, !dbg !2523
  %tobool38 = icmp ne i32 %44, 0, !dbg !2523
  br i1 %tobool38, label %if.then39, label %if.end41, !dbg !2525

if.then39:                                        ; preds = %cond.end
  %45 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2526
  %irq40 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %45, i32 0, i32 2, !dbg !2528
  store i32 -1, i32* %irq40, align 8, !dbg !2529
  br label %if.end41, !dbg !2530

if.end41:                                         ; preds = %if.then39, %cond.end
  br label %if.end42, !dbg !2531

if.end42:                                         ; preds = %if.end41, %if.end29
  %46 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2532
  %device43 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %46, i32 0, i32 0, !dbg !2534
  %47 = load %struct.device*, %struct.device** %device43, align 8, !dbg !2534
  %of_node44 = getelementptr inbounds %struct.device, %struct.device* %47, i32 0, i32 23, !dbg !2535
  %48 = load %struct.device_node*, %struct.device_node** %of_node44, align 8, !dbg !2535
  %49 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2536
  %clk_freq_hz = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %49, i32 0, i32 6, !dbg !2537
  %call45 = call i32 @of_property_read_u32(%struct.device_node* %48, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.3, i64 0, i64 0), i32* %clk_freq_hz) #6, !dbg !2538
  %tobool46 = icmp ne i32 %call45, 0, !dbg !2538
  br i1 %tobool46, label %if.then47, label %if.end50, !dbg !2539

if.then47:                                        ; preds = %if.end42
  %50 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2540
  %device48 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %50, i32 0, i32 0, !dbg !2540
  %51 = load %struct.device*, %struct.device** %device48, align 8, !dbg !2540
  %52 = load i32, i32* getelementptr inbounds ([8 x %struct.bsc_clk_param], [8 x %struct.bsc_clk_param]* @bsc_clk, i64 0, i64 0, i32 0), align 16, !dbg !2540
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %51, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0), i32 %52) #7, !dbg !2540
  %53 = load i32, i32* getelementptr inbounds ([8 x %struct.bsc_clk_param], [8 x %struct.bsc_clk_param]* @bsc_clk, i64 0, i64 0, i32 0), align 16, !dbg !2542
  %54 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2543
  %clk_freq_hz49 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %54, i32 0, i32 6, !dbg !2544
  store i32 %53, i32* %clk_freq_hz49, align 8, !dbg !2545
  br label %if.end50, !dbg !2546

if.end50:                                         ; preds = %if.then47, %if.end42
  %55 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2547
  %device51 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %55, i32 0, i32 0, !dbg !2549
  %56 = load %struct.device*, %struct.device** %device51, align 8, !dbg !2549
  %of_node52 = getelementptr inbounds %struct.device, %struct.device* %56, i32 0, i32 23, !dbg !2550
  %57 = load %struct.device_node*, %struct.device_node** %of_node52, align 8, !dbg !2550
  %call53 = call i32 @of_device_is_compatible(%struct.device_node* %57, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.5, i64 0, i64 0)) #6, !dbg !2551
  %tobool54 = icmp ne i32 %call53, 0, !dbg !2551
  br i1 %tobool54, label %if.then55, label %if.else, !dbg !2552

if.then55:                                        ; preds = %if.end50
  %58 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2553
  %data_regsz = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %58, i32 0, i32 7, !dbg !2554
  store i32 1, i32* %data_regsz, align 4, !dbg !2555
  br label %if.end57, !dbg !2553

if.else:                                          ; preds = %if.end50
  %59 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2556
  %data_regsz56 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %59, i32 0, i32 7, !dbg !2557
  store i32 4, i32* %data_regsz56, align 4, !dbg !2558
  br label %if.end57

if.end57:                                         ; preds = %if.else, %if.then55
  %60 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2559
  call void @brcmstb_i2c_set_bsc_reg_defaults(%struct.brcmstb_i2c_dev* %60) #6, !dbg !2560
  %61 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2561
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %61, i32 0, i32 4, !dbg !2562
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adap, align 8, !dbg !2563
  %62 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2564
  %63 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2565
  %64 = bitcast %struct.brcmstb_i2c_dev* %63 to i8*, !dbg !2565
  call void @i2c_set_adapdata(%struct.i2c_adapter* %62, i8* %64) #6, !dbg !2566
  %65 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2567
  %owner = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %65, i32 0, i32 0, !dbg !2568
  store %struct.module* null, %struct.module** %owner, align 8, !dbg !2569
  %66 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2570
  %name58 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %66, i32 0, i32 12, !dbg !2571
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name58, i64 0, i64 0, !dbg !2570
  %call59 = call i64 @strlcpy(i8* %arraydecay, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.6, i64 0, i64 0), i64 48) #6, !dbg !2572
  %67 = load i8*, i8** %int_name, align 8, !dbg !2573
  %tobool60 = icmp ne i8* %67, null, !dbg !2573
  br i1 %tobool60, label %if.then61, label %if.end65, !dbg !2575

if.then61:                                        ; preds = %if.end57
  %68 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2576
  %name62 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %68, i32 0, i32 12, !dbg !2577
  %arraydecay63 = getelementptr inbounds [48 x i8], [48 x i8]* %name62, i64 0, i64 0, !dbg !2576
  %69 = load i8*, i8** %int_name, align 8, !dbg !2578
  %call64 = call i64 @strlcat(i8* %arraydecay63, i8* %69, i64 48) #6, !dbg !2579
  br label %if.end65, !dbg !2579

if.end65:                                         ; preds = %if.then61, %if.end57
  %70 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2580
  %algo = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %70, i32 0, i32 2, !dbg !2581
  store %struct.i2c_algorithm* @brcmstb_i2c_algo, %struct.i2c_algorithm** %algo, align 8, !dbg !2582
  %71 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2583
  %dev66 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %71, i32 0, i32 3, !dbg !2584
  %72 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2585
  %dev67 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %72, i32 0, i32 9, !dbg !2586
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev67, i32 0, i32 1, !dbg !2587
  store %struct.device* %dev66, %struct.device** %parent, align 8, !dbg !2588
  %73 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2589
  %dev68 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %73, i32 0, i32 3, !dbg !2590
  %of_node69 = getelementptr inbounds %struct.device, %struct.device* %dev68, i32 0, i32 23, !dbg !2591
  %74 = load %struct.device_node*, %struct.device_node** %of_node69, align 8, !dbg !2591
  %75 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2592
  %dev70 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %75, i32 0, i32 9, !dbg !2593
  %of_node71 = getelementptr inbounds %struct.device, %struct.device* %dev70, i32 0, i32 23, !dbg !2594
  store %struct.device_node* %74, %struct.device_node** %of_node71, align 8, !dbg !2595
  %76 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap, align 8, !dbg !2596
  %call72 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %76) #6, !dbg !2597
  store i32 %call72, i32* %rc, align 4, !dbg !2598
  %77 = load i32, i32* %rc, align 4, !dbg !2599
  %tobool73 = icmp ne i32 %77, 0, !dbg !2599
  br i1 %tobool73, label %if.then74, label %if.end75, !dbg !2601

if.then74:                                        ; preds = %if.end65
  br label %probe_errorout, !dbg !2602

if.end75:                                         ; preds = %if.end65
  %78 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2603
  %device76 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %78, i32 0, i32 0, !dbg !2603
  %79 = load %struct.device*, %struct.device** %device76, align 8, !dbg !2603
  %80 = load i8*, i8** %int_name, align 8, !dbg !2603
  %tobool77 = icmp ne i8* %80, null, !dbg !2603
  br i1 %tobool77, label %cond.true78, label %cond.false79, !dbg !2603

cond.true78:                                      ; preds = %if.end75
  %81 = load i8*, i8** %int_name, align 8, !dbg !2603
  br label %cond.end80, !dbg !2603

cond.false79:                                     ; preds = %if.end75
  br label %cond.end80, !dbg !2603

cond.end80:                                       ; preds = %cond.false79, %cond.true78
  %cond81 = phi i8* [ %81, %cond.true78 ], [ getelementptr inbounds ([2 x i8], [2 x i8]* @.str.8, i64 0, i64 0), %cond.false79 ], !dbg !2603
  %82 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2603
  %clk_freq_hz82 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %82, i32 0, i32 6, !dbg !2603
  %83 = load i32, i32* %clk_freq_hz82, align 8, !dbg !2603
  %84 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2603
  %irq83 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %84, i32 0, i32 2, !dbg !2603
  %85 = load i32, i32* %irq83, align 8, !dbg !2603
  %cmp84 = icmp sge i32 %85, 0, !dbg !2603
  %86 = zext i1 %cmp84 to i64, !dbg !2603
  %cond85 = select i1 %cmp84, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0), !dbg !2603
  call void (%struct.device*, i8*, ...) @_dev_info(%struct.device* %79, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.7, i64 0, i64 0), i8* %cond81, i32 %83, i8* %cond85) #7, !dbg !2603
  store i32 0, i32* %retval, align 4, !dbg !2604
  br label %return, !dbg !2604

probe_errorout:                                   ; preds = %if.then74, %if.then22, %if.then14
  call void @llvm.dbg.label(metadata !2605), !dbg !2606
  %87 = load i32, i32* %rc, align 4, !dbg !2607
  store i32 %87, i32* %retval, align 4, !dbg !2608
  br label %return, !dbg !2608

return:                                           ; preds = %probe_errorout, %cond.end80, %if.then6, %if.then
  %88 = load i32, i32* %retval, align 4, !dbg !2609
  ret i32 %88, !dbg !2609
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_remove(%struct.platform_device* %pdev) #2 !dbg !2610 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %dev = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2611, metadata !DIExpression()), !dbg !2612
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev, metadata !2613, metadata !DIExpression()), !dbg !2614
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2615
  %call = call i8* @platform_get_drvdata(%struct.platform_device* %0) #6, !dbg !2616
  %1 = bitcast i8* %call to %struct.brcmstb_i2c_dev*, !dbg !2616
  store %struct.brcmstb_i2c_dev* %1, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2614
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2617
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %2, i32 0, i32 4, !dbg !2618
  call void @i2c_del_adapter(%struct.i2c_adapter* %adapter) #6, !dbg !2619
  ret i32 0, !dbg !2620
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @devm_kzalloc(%struct.device* %dev, i64 %size, i32 %gfp) #2 !dbg !2621 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %size.addr = alloca i64, align 8
  %gfp.addr = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2624, metadata !DIExpression()), !dbg !2625
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2626, metadata !DIExpression()), !dbg !2627
  store i32 %gfp, i32* %gfp.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gfp.addr, metadata !2628, metadata !DIExpression()), !dbg !2629
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2630
  %1 = load i64, i64* %size.addr, align 8, !dbg !2631
  %2 = load i32, i32* %gfp.addr, align 4, !dbg !2632
  %or = or i32 %2, 256, !dbg !2633
  %call = call noalias i8* @devm_kmalloc(%struct.device* %0, i64 %1, i32 %or) #6, !dbg !2634
  ret i8* %call, !dbg !2635
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @platform_set_drvdata(%struct.platform_device* %pdev, i8* %data) #2 !dbg !2636 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !2639, metadata !DIExpression()), !dbg !2640
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !2643
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !2644
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2645
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !2646
  ret void, !dbg !2647
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @__init_completion(%struct.completion* %x) #2 !dbg !2241 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !2648, metadata !DIExpression()), !dbg !2649
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !2650
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !2651
  store i32 0, i32* %done, align 8, !dbg !2652
  br label %do.body, !dbg !2653

do.body:                                          ; preds = %entry
  %1 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !2654
  %wait = getelementptr inbounds %struct.completion, %struct.completion* %1, i32 0, i32 1, !dbg !2654
  call void @__init_swait_queue_head(%struct.swait_queue_head* %wait, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.11, i64 0, i64 0), %struct.lock_class_key* @__init_completion.__key) #6, !dbg !2654
  br label %do.end, !dbg !2654

do.end:                                           ; preds = %do.body
  ret void, !dbg !2656
}

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource(%struct.platform_device*, i32, i32) #1

; Function Attrs: noredzone
declare dso_local i8* @devm_ioremap_resource(%struct.device*, %struct.resource*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @IS_ERR(i8* %ptr) #2 !dbg !2657 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2661, metadata !DIExpression()), !dbg !2662
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2663
  %1 = ptrtoint i8* %0 to i64, !dbg !2663
  %2 = inttoptr i64 %1 to i8*, !dbg !2663
  %3 = ptrtoint i8* %2 to i64, !dbg !2663
  %cmp = icmp uge i64 %3, -4095, !dbg !2663
  %lnot = xor i1 %cmp, true, !dbg !2663
  %lnot1 = xor i1 %lnot, true, !dbg !2663
  %lnot.ext = zext i1 %lnot1 to i32, !dbg !2663
  %conv = sext i32 %lnot.ext to i64, !dbg !2663
  %tobool = icmp ne i64 %conv, 0, !dbg !2663
  ret i1 %tobool, !dbg !2664
}

; Function Attrs: noredzone
declare dso_local i32 @of_device_is_compatible(%struct.device_node*, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @bcm2711_release_bsc(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !2665 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %pdev = alloca %struct.platform_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.platform_device*, align 8
  %iomem = alloca %struct.resource*, align 8
  %autoi2c = alloca i8*, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !2668, metadata !DIExpression()), !dbg !2669
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev, metadata !2670, metadata !DIExpression()), !dbg !2671
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2672, metadata !DIExpression()), !dbg !2674
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2674
  %device = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 0, !dbg !2674
  %1 = load %struct.device*, %struct.device** %device, align 8, !dbg !2674
  %2 = bitcast %struct.device* %1 to i8*, !dbg !2674
  store i8* %2, i8** %__mptr, align 8, !dbg !2674
  br label %do.body, !dbg !2674

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !2675

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !2674
  %add.ptr = getelementptr i8, i8* %3, i64 -16, !dbg !2674
  %4 = bitcast i8* %add.ptr to %struct.platform_device*, !dbg !2674
  store %struct.platform_device* %4, %struct.platform_device** %tmp, align 8, !dbg !2675
  %5 = load %struct.platform_device*, %struct.platform_device** %tmp, align 8, !dbg !2674
  store %struct.platform_device* %5, %struct.platform_device** %pdev, align 8, !dbg !2671
  call void @llvm.dbg.declare(metadata %struct.resource** %iomem, metadata !2677, metadata !DIExpression()), !dbg !2678
  call void @llvm.dbg.declare(metadata i8** %autoi2c, metadata !2679, metadata !DIExpression()), !dbg !2680
  %6 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2681
  %call = call %struct.resource* @platform_get_resource_byname(%struct.platform_device* %6, i32 512, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.12, i64 0, i64 0)) #6, !dbg !2682
  store %struct.resource* %call, %struct.resource** %iomem, align 8, !dbg !2683
  %7 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2684
  %dev1 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %7, i32 0, i32 3, !dbg !2685
  %8 = load %struct.resource*, %struct.resource** %iomem, align 8, !dbg !2686
  %call2 = call i8* @devm_ioremap_resource(%struct.device* %dev1, %struct.resource* %8) #6, !dbg !2687
  store i8* %call2, i8** %autoi2c, align 8, !dbg !2688
  %9 = load i8*, i8** %autoi2c, align 8, !dbg !2689
  %call3 = call zeroext i1 @IS_ERR(i8* %9) #6, !dbg !2691
  br i1 %call3, label %if.then, label %if.end, !dbg !2692

if.then:                                          ; preds = %do.end
  %10 = load i8*, i8** %autoi2c, align 8, !dbg !2693
  %call4 = call i64 @PTR_ERR(i8* %10) #6, !dbg !2694
  %conv = trunc i64 %call4 to i32, !dbg !2694
  store i32 %conv, i32* %retval, align 4, !dbg !2695
  br label %return, !dbg !2695

if.end:                                           ; preds = %do.end
  %11 = load i8*, i8** %autoi2c, align 8, !dbg !2696
  %add.ptr5 = getelementptr i8, i8* %11, i64 620, !dbg !2697
  call void @writel(i32 2, i8* %add.ptr5) #6, !dbg !2698
  %12 = load %struct.platform_device*, %struct.platform_device** %pdev, align 8, !dbg !2699
  %dev6 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %12, i32 0, i32 3, !dbg !2700
  %13 = load i8*, i8** %autoi2c, align 8, !dbg !2701
  call void @devm_iounmap(%struct.device* %dev6, i8* %13) #6, !dbg !2702
  %14 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2703
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %14, i32 0, i32 3, !dbg !2704
  %15 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !2704
  %iic_enable = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %15, i32 0, i32 4, !dbg !2705
  store i32 0, i32* %iic_enable, align 4, !dbg !2706
  %16 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2707
  %bsc_regmap7 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %16, i32 0, i32 3, !dbg !2707
  %17 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap7, align 8, !dbg !2707
  %iic_enable8 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %17, i32 0, i32 4, !dbg !2707
  %18 = load i32, i32* %iic_enable8, align 4, !dbg !2707
  %19 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2707
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %19, i32 0, i32 1, !dbg !2707
  %20 = load i8*, i8** %base, align 8, !dbg !2707
  %add.ptr9 = getelementptr i8, i8* %20, i64 44, !dbg !2707
  call void @iowrite32(i32 %18, i8* %add.ptr9) #6, !dbg !2707
  store i32 0, i32* %retval, align 4, !dbg !2708
  br label %return, !dbg !2708

return:                                           ; preds = %if.end, %if.then
  %21 = load i32, i32* %retval, align 4, !dbg !2709
  ret i32 %21, !dbg !2709
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_string(%struct.device_node*, i8*, i8**) #1

; Function Attrs: noredzone
declare dso_local i32 @platform_get_irq_optional(%struct.platform_device*, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %dev, i1 zeroext %int_en) #2 !dbg !2710 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %int_en.addr = alloca i8, align 1
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !2713, metadata !DIExpression()), !dbg !2714
  %frombool = zext i1 %int_en to i8
  store i8 %frombool, i8* %int_en.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %int_en.addr, metadata !2715, metadata !DIExpression()), !dbg !2716
  %0 = load i8, i8* %int_en.addr, align 1, !dbg !2717
  %tobool = trunc i8 %0 to i1, !dbg !2717
  br i1 %tobool, label %if.then, label %if.else, !dbg !2719

if.then:                                          ; preds = %entry
  %1 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2720
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %1, i32 0, i32 3, !dbg !2721
  %2 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !2721
  %ctl_reg = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %2, i32 0, i32 3, !dbg !2722
  %3 = load i32, i32* %ctl_reg, align 4, !dbg !2723
  %or = or i32 %3, 64, !dbg !2723
  store i32 %or, i32* %ctl_reg, align 4, !dbg !2723
  br label %if.end, !dbg !2720

if.else:                                          ; preds = %entry
  %4 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2724
  %bsc_regmap1 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %4, i32 0, i32 3, !dbg !2725
  %5 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap1, align 8, !dbg !2725
  %ctl_reg2 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %5, i32 0, i32 3, !dbg !2726
  %6 = load i32, i32* %ctl_reg2, align 4, !dbg !2727
  %and = and i32 %6, -65, !dbg !2727
  store i32 %and, i32* %ctl_reg2, align 4, !dbg !2727
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  call void asm sideeffect "", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !2728, !srcloc !2729
  %7 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2730
  %bsc_regmap3 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %7, i32 0, i32 3, !dbg !2730
  %8 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap3, align 8, !dbg !2730
  %ctl_reg4 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %8, i32 0, i32 3, !dbg !2730
  %9 = load i32, i32* %ctl_reg4, align 4, !dbg !2730
  %10 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2730
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %10, i32 0, i32 1, !dbg !2730
  %11 = load i8*, i8** %base, align 8, !dbg !2730
  %add.ptr = getelementptr i8, i8* %11, i64 40, !dbg !2730
  call void @iowrite32(i32 %9, i8* %add.ptr) #6, !dbg !2730
  ret void, !dbg !2731
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @devm_request_irq(%struct.device* %dev, i32 %irq, i32 (i32, i8*)* %handler, i64 %irqflags, i8* %devname, i8* %dev_id) #2 !dbg !2732 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %irq.addr = alloca i32, align 4
  %handler.addr = alloca i32 (i32, i8*)*, align 8
  %irqflags.addr = alloca i64, align 8
  %devname.addr = alloca i8*, align 8
  %dev_id.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2741, metadata !DIExpression()), !dbg !2742
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2743, metadata !DIExpression()), !dbg !2744
  store i32 (i32, i8*)* %handler, i32 (i32, i8*)** %handler.addr, align 8
  call void @llvm.dbg.declare(metadata i32 (i32, i8*)** %handler.addr, metadata !2745, metadata !DIExpression()), !dbg !2746
  store i64 %irqflags, i64* %irqflags.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %irqflags.addr, metadata !2747, metadata !DIExpression()), !dbg !2748
  store i8* %devname, i8** %devname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devname.addr, metadata !2749, metadata !DIExpression()), !dbg !2750
  store i8* %dev_id, i8** %dev_id.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %dev_id.addr, metadata !2751, metadata !DIExpression()), !dbg !2752
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2753
  %1 = load i32, i32* %irq.addr, align 4, !dbg !2754
  %2 = load i32 (i32, i8*)*, i32 (i32, i8*)** %handler.addr, align 8, !dbg !2755
  %3 = load i64, i64* %irqflags.addr, align 8, !dbg !2756
  %4 = load i8*, i8** %devname.addr, align 8, !dbg !2757
  %5 = load i8*, i8** %dev_id.addr, align 8, !dbg !2758
  %call = call i32 @devm_request_threaded_irq(%struct.device* %0, i32 %1, i32 (i32, i8*)* %2, i32 (i32, i8*)* null, i64 %3, i8* %4, i8* %5) #6, !dbg !2759
  ret i32 %call, !dbg !2760
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_isr(i32 %irq, i8* %devid) #2 !dbg !2761 {
entry:
  %retval = alloca i32, align 4
  %irq.addr = alloca i32, align 4
  %devid.addr = alloca i8*, align 8
  %dev = alloca %struct.brcmstb_i2c_dev*, align 8
  %status_bsc_ctl = alloca i32, align 4
  %status_iic_intrp = alloca i32, align 4
  store i32 %irq, i32* %irq.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %irq.addr, metadata !2762, metadata !DIExpression()), !dbg !2763
  store i8* %devid, i8** %devid.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %devid.addr, metadata !2764, metadata !DIExpression()), !dbg !2765
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev, metadata !2766, metadata !DIExpression()), !dbg !2767
  %0 = load i8*, i8** %devid.addr, align 8, !dbg !2768
  %1 = bitcast i8* %0 to %struct.brcmstb_i2c_dev*, !dbg !2768
  store %struct.brcmstb_i2c_dev* %1, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2767
  call void @llvm.dbg.declare(metadata i32* %status_bsc_ctl, metadata !2769, metadata !DIExpression()), !dbg !2770
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2771
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %2, i32 0, i32 1, !dbg !2771
  %3 = load i8*, i8** %base, align 8, !dbg !2771
  %add.ptr = getelementptr i8, i8* %3, i64 40, !dbg !2771
  %call = call i32 @ioread32(i8* %add.ptr) #6, !dbg !2771
  store i32 %call, i32* %status_bsc_ctl, align 4, !dbg !2770
  call void @llvm.dbg.declare(metadata i32* %status_iic_intrp, metadata !2772, metadata !DIExpression()), !dbg !2773
  %4 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2774
  %base1 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %4, i32 0, i32 1, !dbg !2774
  %5 = load i8*, i8** %base1, align 8, !dbg !2774
  %add.ptr2 = getelementptr i8, i8* %5, i64 44, !dbg !2774
  %call3 = call i32 @ioread32(i8* %add.ptr2) #6, !dbg !2774
  store i32 %call3, i32* %status_iic_intrp, align 4, !dbg !2773
  %6 = load i32, i32* %status_bsc_ctl, align 4, !dbg !2775
  %and = and i32 %6, 64, !dbg !2777
  %tobool = icmp ne i32 %and, 0, !dbg !2777
  br i1 %tobool, label %if.end, label %if.then, !dbg !2778

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2779
  br label %return, !dbg !2779

if.end:                                           ; preds = %entry
  %7 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2780
  call void @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %7, i1 zeroext false) #6, !dbg !2781
  %8 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2782
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %8, i32 0, i32 5, !dbg !2783
  call void @complete(%struct.completion* %done) #6, !dbg !2784
  store i32 1, i32* %retval, align 4, !dbg !2785
  br label %return, !dbg !2785

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2786
  ret i32 %9, !dbg !2786
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32(%struct.device_node* %np, i8* %propname, i32* %out_value) #2 !dbg !2787 {
entry:
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_value.addr = alloca i32*, align 8
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2792, metadata !DIExpression()), !dbg !2793
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2794, metadata !DIExpression()), !dbg !2795
  store i32* %out_value, i32** %out_value.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_value.addr, metadata !2796, metadata !DIExpression()), !dbg !2797
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2798
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2799
  %2 = load i32*, i32** %out_value.addr, align 8, !dbg !2800
  %call = call i32 @of_property_read_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 1) #6, !dbg !2801
  ret i32 %call, !dbg !2802
}

; Function Attrs: cold noredzone
declare dso_local void @_dev_warn(%struct.device*, i8*, ...) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @brcmstb_i2c_set_bsc_reg_defaults(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !2803 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !2806, metadata !DIExpression()), !dbg !2807
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2808
  %call = call i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev* %0) #6, !dbg !2810
  %conv = sext i32 %call to i64, !dbg !2810
  %cmp = icmp eq i64 %conv, 4, !dbg !2811
  br i1 %cmp, label %if.then, label %if.else, !dbg !2812

if.then:                                          ; preds = %entry
  %1 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2813
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %1, i32 0, i32 3, !dbg !2814
  %2 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !2814
  %ctlhi_reg = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %2, i32 0, i32 6, !dbg !2815
  store i32 64, i32* %ctlhi_reg, align 4, !dbg !2816
  br label %if.end, !dbg !2813

if.else:                                          ; preds = %entry
  %3 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2817
  %bsc_regmap2 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %3, i32 0, i32 3, !dbg !2818
  %4 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap2, align 8, !dbg !2818
  %ctlhi_reg3 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %4, i32 0, i32 6, !dbg !2819
  %5 = load i32, i32* %ctlhi_reg3, align 4, !dbg !2820
  %and = and i32 %5, -65, !dbg !2820
  store i32 %and, i32* %ctlhi_reg3, align 4, !dbg !2820
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %6 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2821
  %bsc_regmap4 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %6, i32 0, i32 3, !dbg !2821
  %7 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap4, align 8, !dbg !2821
  %ctlhi_reg5 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %7, i32 0, i32 6, !dbg !2821
  %8 = load i32, i32* %ctlhi_reg5, align 4, !dbg !2821
  %9 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2821
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %9, i32 0, i32 1, !dbg !2821
  %10 = load i8*, i8** %base, align 8, !dbg !2821
  %add.ptr = getelementptr i8, i8* %10, i64 80, !dbg !2821
  call void @iowrite32(i32 %8, i8* %add.ptr) #6, !dbg !2821
  %11 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2822
  call void @brcmstb_i2c_set_bus_speed(%struct.brcmstb_i2c_dev* %11) #6, !dbg !2823
  ret void, !dbg !2824
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #2 !dbg !2825 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2828, metadata !DIExpression()), !dbg !2829
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2830, metadata !DIExpression()), !dbg !2831
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2832
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !2833
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2834
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #6, !dbg !2835
  ret void, !dbg !2836
}

; Function Attrs: noredzone
declare dso_local i64 @strlcpy(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i64 @strlcat(i8*, i8*, i64) #1

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #1

; Function Attrs: cold noredzone
declare dso_local void @_dev_info(%struct.device*, i8*, ...) #4

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #3

; Function Attrs: noredzone
declare dso_local noalias i8* @devm_kmalloc(%struct.device*, i64, i32) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #2 !dbg !2837 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2840, metadata !DIExpression()), !dbg !2841
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2842, metadata !DIExpression()), !dbg !2843
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2844
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2845
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2846
  store i8* %0, i8** %driver_data, align 8, !dbg !2847
  ret void, !dbg !2848
}

; Function Attrs: noredzone
declare dso_local void @__init_swait_queue_head(%struct.swait_queue_head*, i8*, %struct.lock_class_key*) #1

; Function Attrs: noredzone
declare dso_local %struct.resource* @platform_get_resource_byname(%struct.platform_device*, i32, i8*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @PTR_ERR(i8* %ptr) #2 !dbg !2849 {
entry:
  %ptr.addr = alloca i8*, align 8
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !2852, metadata !DIExpression()), !dbg !2853
  %0 = load i8*, i8** %ptr.addr, align 8, !dbg !2854
  %1 = ptrtoint i8* %0 to i64, !dbg !2855
  ret i64 %1, !dbg !2856
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @writel(i32 %val, i8* %addr) #2 !dbg !2857 {
entry:
  %val.addr = alloca i32, align 4
  %addr.addr = alloca i8*, align 8
  store i32 %val, i32* %val.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %val.addr, metadata !2863, metadata !DIExpression()), !dbg !2864
  store i8* %addr, i8** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %addr.addr, metadata !2865, metadata !DIExpression()), !dbg !2864
  %0 = load i32, i32* %val.addr, align 4, !dbg !2864
  %1 = load i8*, i8** %addr.addr, align 8, !dbg !2864
  %2 = bitcast i8* %1 to i32*, !dbg !2864
  call void asm sideeffect "movl $0,$1", "r,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i32 %0, i32* %2) #8, !dbg !2864, !srcloc !2866
  ret void, !dbg !2864
}

; Function Attrs: noredzone
declare dso_local void @devm_iounmap(%struct.device*, i8*) #1

; Function Attrs: noredzone
declare dso_local void @iowrite32(i32, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @devm_request_threaded_irq(%struct.device*, i32, i32 (i32, i8*)*, i32 (i32, i8*)*, i64, i8*, i8*) #1

; Function Attrs: noredzone
declare dso_local i32 @ioread32(i8*) #1

; Function Attrs: noredzone
declare dso_local void @complete(%struct.completion*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_property_read_u32_array(%struct.device_node* %np, i8* %propname, i32* %out_values, i64 %sz) #2 !dbg !2867 {
entry:
  %retval = alloca i32, align 4
  %np.addr = alloca %struct.device_node*, align 8
  %propname.addr = alloca i8*, align 8
  %out_values.addr = alloca i32*, align 8
  %sz.addr = alloca i64, align 8
  %ret = alloca i32, align 4
  store %struct.device_node* %np, %struct.device_node** %np.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %np.addr, metadata !2870, metadata !DIExpression()), !dbg !2871
  store i8* %propname, i8** %propname.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %propname.addr, metadata !2872, metadata !DIExpression()), !dbg !2873
  store i32* %out_values, i32** %out_values.addr, align 8
  call void @llvm.dbg.declare(metadata i32** %out_values.addr, metadata !2874, metadata !DIExpression()), !dbg !2875
  store i64 %sz, i64* %sz.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %sz.addr, metadata !2876, metadata !DIExpression()), !dbg !2877
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2878, metadata !DIExpression()), !dbg !2879
  %0 = load %struct.device_node*, %struct.device_node** %np.addr, align 8, !dbg !2880
  %1 = load i8*, i8** %propname.addr, align 8, !dbg !2881
  %2 = load i32*, i32** %out_values.addr, align 8, !dbg !2882
  %3 = load i64, i64* %sz.addr, align 8, !dbg !2883
  %call = call i32 @of_property_read_variable_u32_array(%struct.device_node* %0, i8* %1, i32* %2, i64 %3, i64 0) #6, !dbg !2884
  store i32 %call, i32* %ret, align 4, !dbg !2879
  %4 = load i32, i32* %ret, align 4, !dbg !2885
  %cmp = icmp sge i32 %4, 0, !dbg !2887
  br i1 %cmp, label %if.then, label %if.else, !dbg !2888

if.then:                                          ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2889
  br label %return, !dbg !2889

if.else:                                          ; preds = %entry
  %5 = load i32, i32* %ret, align 4, !dbg !2890
  store i32 %5, i32* %retval, align 4, !dbg !2891
  br label %return, !dbg !2891

return:                                           ; preds = %if.else, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2892
  ret i32 %6, !dbg !2892
}

; Function Attrs: noredzone
declare dso_local i32 @of_property_read_variable_u32_array(%struct.device_node*, i8*, i32*, i64, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !2893 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2896
  %data_regsz = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 7, !dbg !2897
  %1 = load i32, i32* %data_regsz, align 4, !dbg !2897
  ret i32 %1, !dbg !2898
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @brcmstb_i2c_set_bus_speed(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !2899 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %i = alloca i32, align 4
  %num_speeds = alloca i32, align 4
  %clk_freq_hz = alloca i32, align 4
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !2900, metadata !DIExpression()), !dbg !2901
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2902, metadata !DIExpression()), !dbg !2903
  store i32 0, i32* %i, align 4, !dbg !2903
  call void @llvm.dbg.declare(metadata i32* %num_speeds, metadata !2904, metadata !DIExpression()), !dbg !2905
  store i32 8, i32* %num_speeds, align 4, !dbg !2905
  call void @llvm.dbg.declare(metadata i32* %clk_freq_hz, metadata !2906, metadata !DIExpression()), !dbg !2907
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2908
  %clk_freq_hz1 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 6, !dbg !2909
  %1 = load i32, i32* %clk_freq_hz1, align 8, !dbg !2909
  store i32 %1, i32* %clk_freq_hz, align 4, !dbg !2907
  store i32 0, i32* %i, align 4, !dbg !2910
  br label %for.cond, !dbg !2912

for.cond:                                         ; preds = %for.inc, %entry
  %2 = load i32, i32* %i, align 4, !dbg !2913
  %3 = load i32, i32* %num_speeds, align 4, !dbg !2915
  %cmp = icmp slt i32 %2, %3, !dbg !2916
  br i1 %cmp, label %for.body, label %for.end, !dbg !2917

for.body:                                         ; preds = %for.cond
  %4 = load i32, i32* %i, align 4, !dbg !2918
  %idxprom = sext i32 %4 to i64, !dbg !2921
  %arrayidx = getelementptr [8 x %struct.bsc_clk_param], [8 x %struct.bsc_clk_param]* @bsc_clk, i64 0, i64 %idxprom, !dbg !2921
  %hz = getelementptr inbounds %struct.bsc_clk_param, %struct.bsc_clk_param* %arrayidx, i32 0, i32 0, !dbg !2922
  %5 = load i32, i32* %hz, align 4, !dbg !2922
  %6 = load i32, i32* %clk_freq_hz, align 4, !dbg !2923
  %cmp2 = icmp eq i32 %5, %6, !dbg !2924
  br i1 %cmp2, label %if.then, label %if.end, !dbg !2925

if.then:                                          ; preds = %for.body
  %7 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2926
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %7, i32 0, i32 3, !dbg !2928
  %8 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !2928
  %ctl_reg = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %8, i32 0, i32 3, !dbg !2929
  %9 = load i32, i32* %ctl_reg, align 4, !dbg !2930
  %and = and i32 %9, -177, !dbg !2930
  store i32 %and, i32* %ctl_reg, align 4, !dbg !2930
  %10 = load i32, i32* %i, align 4, !dbg !2931
  %idxprom3 = sext i32 %10 to i64, !dbg !2932
  %arrayidx4 = getelementptr [8 x %struct.bsc_clk_param], [8 x %struct.bsc_clk_param]* @bsc_clk, i64 0, i64 %idxprom3, !dbg !2932
  %scl_mask = getelementptr inbounds %struct.bsc_clk_param, %struct.bsc_clk_param* %arrayidx4, i32 0, i32 1, !dbg !2933
  %11 = load i32, i32* %scl_mask, align 4, !dbg !2933
  %12 = load i32, i32* %i, align 4, !dbg !2934
  %idxprom5 = sext i32 %12 to i64, !dbg !2935
  %arrayidx6 = getelementptr [8 x %struct.bsc_clk_param], [8 x %struct.bsc_clk_param]* @bsc_clk, i64 0, i64 %idxprom5, !dbg !2935
  %div_mask = getelementptr inbounds %struct.bsc_clk_param, %struct.bsc_clk_param* %arrayidx6, i32 0, i32 2, !dbg !2936
  %13 = load i32, i32* %div_mask, align 4, !dbg !2936
  %or = or i32 %11, %13, !dbg !2937
  %14 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2938
  %bsc_regmap7 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %14, i32 0, i32 3, !dbg !2939
  %15 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap7, align 8, !dbg !2939
  %ctl_reg8 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %15, i32 0, i32 3, !dbg !2940
  %16 = load i32, i32* %ctl_reg8, align 4, !dbg !2941
  %or9 = or i32 %16, %or, !dbg !2941
  store i32 %or9, i32* %ctl_reg8, align 4, !dbg !2941
  %17 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2942
  %bsc_regmap10 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %17, i32 0, i32 3, !dbg !2942
  %18 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap10, align 8, !dbg !2942
  %ctl_reg11 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %18, i32 0, i32 3, !dbg !2942
  %19 = load i32, i32* %ctl_reg11, align 4, !dbg !2942
  %20 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2942
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %20, i32 0, i32 1, !dbg !2942
  %21 = load i8*, i8** %base, align 8, !dbg !2942
  %add.ptr = getelementptr i8, i8* %21, i64 40, !dbg !2942
  call void @iowrite32(i32 %19, i8* %add.ptr) #6, !dbg !2942
  br label %for.end, !dbg !2943

if.end:                                           ; preds = %for.body
  br label %for.inc, !dbg !2944

for.inc:                                          ; preds = %if.end
  %22 = load i32, i32* %i, align 4, !dbg !2945
  %inc = add i32 %22, 1, !dbg !2945
  store i32 %inc, i32* %i, align 4, !dbg !2945
  br label %for.cond, !dbg !2946, !llvm.loop !2947

for.end:                                          ; preds = %if.then, %for.cond
  %23 = load i32, i32* %i, align 4, !dbg !2949
  %24 = load i32, i32* %num_speeds, align 4, !dbg !2951
  %cmp12 = icmp eq i32 %23, %24, !dbg !2952
  br i1 %cmp12, label %if.then13, label %if.end20, !dbg !2953

if.then13:                                        ; preds = %for.end
  %25 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2954
  %base14 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %25, i32 0, i32 1, !dbg !2954
  %26 = load i8*, i8** %base14, align 8, !dbg !2954
  %add.ptr15 = getelementptr i8, i8* %26, i64 40, !dbg !2954
  %call = call i32 @ioread32(i8* %add.ptr15) #6, !dbg !2954
  %and16 = and i32 %call, 48, !dbg !2956
  %shr = lshr i32 %and16, 4, !dbg !2957
  store i32 %shr, i32* %i, align 4, !dbg !2958
  %27 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !2959
  %device = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %27, i32 0, i32 0, !dbg !2959
  %28 = load %struct.device*, %struct.device** %device, align 8, !dbg !2959
  %29 = load i32, i32* %i, align 4, !dbg !2959
  %idxprom17 = sext i32 %29 to i64, !dbg !2959
  %arrayidx18 = getelementptr [8 x %struct.bsc_clk_param], [8 x %struct.bsc_clk_param]* @bsc_clk, i64 0, i64 %idxprom17, !dbg !2959
  %hz19 = getelementptr inbounds %struct.bsc_clk_param, %struct.bsc_clk_param* %arrayidx18, i32 0, i32 0, !dbg !2959
  %30 = load i32, i32* %hz19, align 4, !dbg !2959
  call void (%struct.device*, i8*, ...) @_dev_warn(%struct.device* %28, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.13, i64 0, i64 0), i32 %30) #7, !dbg !2959
  br label %if.end20, !dbg !2960

if.end20:                                         ; preds = %if.then13, %for.end
  ret void, !dbg !2961
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_xfer(%struct.i2c_adapter* %adapter, %struct.i2c_msg* %msgs, i32 %num) #2 !dbg !2962 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %msgs.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %dev = alloca %struct.brcmstb_i2c_dev*, align 8
  %pmsg = alloca %struct.i2c_msg*, align 8
  %rc = alloca i32, align 4
  %i = alloca i32, align 4
  %bytes_to_xfer = alloca i32, align 4
  %tmp_buf = alloca i8*, align 8
  %len = alloca i32, align 4
  %xfersz = alloca i32, align 4
  %cond = alloca i32, align 4
  %cond_per_msg = alloca i32, align 4
  %__UNIQUE_ID___x171 = alloca i32, align 4
  %__UNIQUE_ID___y172 = alloca i32, align 4
  %tmp = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !2963, metadata !DIExpression()), !dbg !2964
  store %struct.i2c_msg* %msgs, %struct.i2c_msg** %msgs.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msgs.addr, metadata !2965, metadata !DIExpression()), !dbg !2966
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !2967, metadata !DIExpression()), !dbg !2968
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev, metadata !2969, metadata !DIExpression()), !dbg !2970
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !2971
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #6, !dbg !2972
  %1 = bitcast i8* %call to %struct.brcmstb_i2c_dev*, !dbg !2972
  store %struct.brcmstb_i2c_dev* %1, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2970
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %pmsg, metadata !2973, metadata !DIExpression()), !dbg !2974
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !2975, metadata !DIExpression()), !dbg !2976
  store i32 0, i32* %rc, align 4, !dbg !2976
  call void @llvm.dbg.declare(metadata i32* %i, metadata !2977, metadata !DIExpression()), !dbg !2978
  call void @llvm.dbg.declare(metadata i32* %bytes_to_xfer, metadata !2979, metadata !DIExpression()), !dbg !2980
  call void @llvm.dbg.declare(metadata i8** %tmp_buf, metadata !2981, metadata !DIExpression()), !dbg !2983
  call void @llvm.dbg.declare(metadata i32* %len, metadata !2984, metadata !DIExpression()), !dbg !2985
  store i32 0, i32* %len, align 4, !dbg !2985
  call void @llvm.dbg.declare(metadata i32* %xfersz, metadata !2986, metadata !DIExpression()), !dbg !2987
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !2988
  %call1 = call i32 @brcmstb_i2c_get_xfersz(%struct.brcmstb_i2c_dev* %2) #6, !dbg !2989
  store i32 %call1, i32* %xfersz, align 4, !dbg !2987
  call void @llvm.dbg.declare(metadata i32* %cond, metadata !2990, metadata !DIExpression()), !dbg !2991
  call void @llvm.dbg.declare(metadata i32* %cond_per_msg, metadata !2992, metadata !DIExpression()), !dbg !2993
  store i32 0, i32* %i, align 4, !dbg !2994
  br label %for.cond, !dbg !2996

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %i, align 4, !dbg !2997
  %4 = load i32, i32* %num.addr, align 4, !dbg !2999
  %cmp = icmp slt i32 %3, %4, !dbg !3000
  br i1 %cmp, label %for.body, label %for.end, !dbg !3001

for.body:                                         ; preds = %for.cond
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !3002
  %6 = load i32, i32* %i, align 4, !dbg !3004
  %idxprom = sext i32 %6 to i64, !dbg !3002
  %arrayidx = getelementptr %struct.i2c_msg, %struct.i2c_msg* %5, i64 %idxprom, !dbg !3002
  store %struct.i2c_msg* %arrayidx, %struct.i2c_msg** %pmsg, align 8, !dbg !3005
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !3006
  %len2 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 2, !dbg !3007
  %8 = load i16, i16* %len2, align 4, !dbg !3007
  %conv = zext i16 %8 to i32, !dbg !3006
  store i32 %conv, i32* %len, align 4, !dbg !3008
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !3009
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %9, i32 0, i32 3, !dbg !3010
  %10 = load i8*, i8** %buf, align 8, !dbg !3010
  store i8* %10, i8** %tmp_buf, align 8, !dbg !3011
  %11 = load i32, i32* %i, align 4, !dbg !3012
  %12 = load i32, i32* %num.addr, align 4, !dbg !3014
  %sub = sub i32 %12, 1, !dbg !3015
  %cmp3 = icmp slt i32 %11, %sub, !dbg !3016
  br i1 %cmp3, label %land.lhs.true, label %if.else, !dbg !3017

land.lhs.true:                                    ; preds = %for.body
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msgs.addr, align 8, !dbg !3018
  %14 = load i32, i32* %i, align 4, !dbg !3019
  %add = add i32 %14, 1, !dbg !3020
  %idxprom5 = sext i32 %add to i64, !dbg !3018
  %arrayidx6 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %13, i64 %idxprom5, !dbg !3018
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx6, i32 0, i32 1, !dbg !3021
  %15 = load i16, i16* %flags, align 2, !dbg !3021
  %conv7 = zext i16 %15 to i32, !dbg !3018
  %and = and i32 %conv7, 16384, !dbg !3022
  %tobool = icmp ne i32 %and, 0, !dbg !3022
  br i1 %tobool, label %if.then, label %if.else, !dbg !3023

if.then:                                          ; preds = %land.lhs.true
  store i32 -113, i32* %cond, align 4, !dbg !3024
  br label %if.end, !dbg !3025

if.else:                                          ; preds = %land.lhs.true, %for.body
  store i32 80, i32* %cond, align 4, !dbg !3026
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !3027
  %17 = load i32, i32* %cond, align 4, !dbg !3028
  call void @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %16, i32 %17) #6, !dbg !3029
  %18 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !3030
  %flags8 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %18, i32 0, i32 1, !dbg !3032
  %19 = load i16, i16* %flags8, align 2, !dbg !3032
  %conv9 = zext i16 %19 to i32, !dbg !3030
  %and10 = and i32 %conv9, 16384, !dbg !3033
  %tobool11 = icmp ne i32 %and10, 0, !dbg !3033
  br i1 %tobool11, label %if.end18, label %if.then12, !dbg !3034

if.then12:                                        ; preds = %if.end
  %20 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !3035
  %21 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !3037
  %call13 = call i32 @brcmstb_i2c_do_addr(%struct.brcmstb_i2c_dev* %20, %struct.i2c_msg* %21) #6, !dbg !3038
  store i32 %call13, i32* %rc, align 4, !dbg !3039
  %22 = load i32, i32* %rc, align 4, !dbg !3040
  %cmp14 = icmp slt i32 %22, 0, !dbg !3042
  br i1 %cmp14, label %if.then16, label %if.end17, !dbg !3043

if.then16:                                        ; preds = %if.then12
  br label %out, !dbg !3044

if.end17:                                         ; preds = %if.then12
  br label %if.end18, !dbg !3046

if.end18:                                         ; preds = %if.end17, %if.end
  %23 = load i32, i32* %cond, align 4, !dbg !3047
  store i32 %23, i32* %cond_per_msg, align 4, !dbg !3048
  br label %while.cond, !dbg !3049

while.cond:                                       ; preds = %if.end40, %if.end18
  %24 = load i32, i32* %len, align 4, !dbg !3050
  %tobool19 = icmp ne i32 %24, 0, !dbg !3049
  br i1 %tobool19, label %while.body, label %while.end, !dbg !3049

while.body:                                       ; preds = %while.cond
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___x171, metadata !3051, metadata !DIExpression()), !dbg !3054
  %25 = load i32, i32* %len, align 4, !dbg !3054
  store i32 %25, i32* %__UNIQUE_ID___x171, align 4, !dbg !3054
  call void @llvm.dbg.declare(metadata i32* %__UNIQUE_ID___y172, metadata !3055, metadata !DIExpression()), !dbg !3054
  %26 = load i32, i32* %xfersz, align 4, !dbg !3054
  store i32 %26, i32* %__UNIQUE_ID___y172, align 4, !dbg !3054
  %27 = load i32, i32* %__UNIQUE_ID___x171, align 4, !dbg !3054
  %28 = load i32, i32* %__UNIQUE_ID___y172, align 4, !dbg !3054
  %cmp20 = icmp slt i32 %27, %28, !dbg !3054
  br i1 %cmp20, label %cond.true, label %cond.false, !dbg !3054

cond.true:                                        ; preds = %while.body
  %29 = load i32, i32* %__UNIQUE_ID___x171, align 4, !dbg !3054
  br label %cond.end, !dbg !3054

cond.false:                                       ; preds = %while.body
  %30 = load i32, i32* %__UNIQUE_ID___y172, align 4, !dbg !3054
  br label %cond.end, !dbg !3054

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond22 = phi i32 [ %29, %cond.true ], [ %30, %cond.false ], !dbg !3054
  store i32 %cond22, i32* %tmp, align 4, !dbg !3054
  %31 = load i32, i32* %tmp, align 4, !dbg !3054
  store i32 %31, i32* %bytes_to_xfer, align 4, !dbg !3056
  %32 = load i32, i32* %len, align 4, !dbg !3057
  %33 = load i32, i32* %xfersz, align 4, !dbg !3059
  %cmp23 = icmp sle i32 %32, %33, !dbg !3060
  br i1 %cmp23, label %if.then25, label %if.else33, !dbg !3061

if.then25:                                        ; preds = %cond.end
  %34 = load i32, i32* %i, align 4, !dbg !3062
  %35 = load i32, i32* %num.addr, align 4, !dbg !3065
  %sub26 = sub i32 %35, 1, !dbg !3066
  %cmp27 = icmp eq i32 %34, %sub26, !dbg !3067
  br i1 %cmp27, label %if.then29, label %if.else31, !dbg !3068

if.then29:                                        ; preds = %if.then25
  %36 = load i32, i32* %cond_per_msg, align 4, !dbg !3069
  %and30 = and i32 %36, -81, !dbg !3070
  store i32 %and30, i32* %cond_per_msg, align 4, !dbg !3071
  br label %if.end32, !dbg !3072

if.else31:                                        ; preds = %if.then25
  %37 = load i32, i32* %cond, align 4, !dbg !3073
  store i32 %37, i32* %cond_per_msg, align 4, !dbg !3074
  br label %if.end32

if.end32:                                         ; preds = %if.else31, %if.then29
  br label %if.end35, !dbg !3075

if.else33:                                        ; preds = %cond.end
  %38 = load i32, i32* %cond_per_msg, align 4, !dbg !3076
  %and34 = and i32 %38, -65, !dbg !3078
  %or = or i32 %and34, 16, !dbg !3079
  store i32 %or, i32* %cond_per_msg, align 4, !dbg !3080
  br label %if.end35

if.end35:                                         ; preds = %if.else33, %if.end32
  %39 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !3081
  %40 = load i32, i32* %cond_per_msg, align 4, !dbg !3082
  call void @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %39, i32 %40) #6, !dbg !3083
  %41 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev, align 8, !dbg !3084
  %42 = load i8*, i8** %tmp_buf, align 8, !dbg !3085
  %43 = load i32, i32* %bytes_to_xfer, align 4, !dbg !3086
  %44 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg, align 8, !dbg !3087
  %call36 = call i32 @brcmstb_i2c_xfer_bsc_data(%struct.brcmstb_i2c_dev* %41, i8* %42, i32 %43, %struct.i2c_msg* %44) #6, !dbg !3088
  store i32 %call36, i32* %rc, align 4, !dbg !3089
  %45 = load i32, i32* %rc, align 4, !dbg !3090
  %cmp37 = icmp slt i32 %45, 0, !dbg !3092
  br i1 %cmp37, label %if.then39, label %if.end40, !dbg !3093

if.then39:                                        ; preds = %if.end35
  br label %out, !dbg !3094

if.end40:                                         ; preds = %if.end35
  %46 = load i32, i32* %bytes_to_xfer, align 4, !dbg !3095
  %47 = load i32, i32* %len, align 4, !dbg !3096
  %sub41 = sub i32 %47, %46, !dbg !3096
  store i32 %sub41, i32* %len, align 4, !dbg !3096
  %48 = load i32, i32* %bytes_to_xfer, align 4, !dbg !3097
  %49 = load i8*, i8** %tmp_buf, align 8, !dbg !3098
  %idx.ext = sext i32 %48 to i64, !dbg !3098
  %add.ptr = getelementptr i8, i8* %49, i64 %idx.ext, !dbg !3098
  store i8* %add.ptr, i8** %tmp_buf, align 8, !dbg !3098
  store i32 48, i32* %cond_per_msg, align 4, !dbg !3099
  br label %while.cond, !dbg !3049, !llvm.loop !3100

while.end:                                        ; preds = %while.cond
  br label %for.inc, !dbg !3102

for.inc:                                          ; preds = %while.end
  %50 = load i32, i32* %i, align 4, !dbg !3103
  %inc = add i32 %50, 1, !dbg !3103
  store i32 %inc, i32* %i, align 4, !dbg !3103
  br label %for.cond, !dbg !3104, !llvm.loop !3105

for.end:                                          ; preds = %for.cond
  %51 = load i32, i32* %num.addr, align 4, !dbg !3107
  store i32 %51, i32* %rc, align 4, !dbg !3108
  br label %out, !dbg !3109

out:                                              ; preds = %for.end, %if.then39, %if.then16
  call void @llvm.dbg.label(metadata !3110), !dbg !3111
  %52 = load i32, i32* %rc, align 4, !dbg !3112
  ret i32 %52, !dbg !3113
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_functionality(%struct.i2c_adapter* %adap) #2 !dbg !3114 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3115, metadata !DIExpression()), !dbg !3116
  ret i32 251592735, !dbg !3117
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #2 !dbg !3118 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3123, metadata !DIExpression()), !dbg !3124
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3125
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !3126
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !3127
  ret i8* %call, !dbg !3128
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_get_xfersz(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !3129 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3130, metadata !DIExpression()), !dbg !3131
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3132
  %data_regsz = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 7, !dbg !3133
  %1 = load i32, i32* %data_regsz, align 4, !dbg !3133
  %mul = mul i32 8, %1, !dbg !3134
  ret i32 %mul, !dbg !3135
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %dev, i32 %cond_flag) #2 !dbg !3136 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %cond_flag.addr = alloca i32, align 4
  %regval = alloca i32, align 4
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3139, metadata !DIExpression()), !dbg !3140
  store i32 %cond_flag, i32* %cond_flag.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cond_flag.addr, metadata !3141, metadata !DIExpression()), !dbg !3142
  call void @llvm.dbg.declare(metadata i32* %regval, metadata !3143, metadata !DIExpression()), !dbg !3144
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3145
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 3, !dbg !3146
  %1 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !3146
  %iic_enable = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %1, i32 0, i32 4, !dbg !3147
  %2 = load i32, i32* %iic_enable, align 4, !dbg !3147
  store i32 %2, i32* %regval, align 4, !dbg !3144
  %3 = load i32, i32* %regval, align 4, !dbg !3148
  %and = and i32 %3, -113, !dbg !3149
  %4 = load i32, i32* %cond_flag.addr, align 4, !dbg !3150
  %or = or i32 %and, %4, !dbg !3151
  %5 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3152
  %bsc_regmap1 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %5, i32 0, i32 3, !dbg !3153
  %6 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap1, align 8, !dbg !3153
  %iic_enable2 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %6, i32 0, i32 4, !dbg !3154
  store i32 %or, i32* %iic_enable2, align 4, !dbg !3155
  ret void, !dbg !3156
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_do_addr(%struct.brcmstb_i2c_dev* %dev, %struct.i2c_msg* %msg) #2 !dbg !3157 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %addr = alloca i8, align 1
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3160, metadata !DIExpression()), !dbg !3161
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3162, metadata !DIExpression()), !dbg !3163
  call void @llvm.dbg.declare(metadata i8* %addr, metadata !3164, metadata !DIExpression()), !dbg !3165
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3166
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 1, !dbg !3168
  %1 = load i16, i16* %flags, align 2, !dbg !3168
  %conv = zext i16 %1 to i32, !dbg !3166
  %and = and i32 %conv, 16, !dbg !3169
  %tobool = icmp ne i32 %and, 0, !dbg !3169
  br i1 %tobool, label %if.then, label %if.else, !dbg !3170

if.then:                                          ; preds = %entry
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3171
  %addr1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 0, !dbg !3173
  %3 = load i16, i16* %addr1, align 8, !dbg !3173
  %conv2 = zext i16 %3 to i32, !dbg !3171
  %and3 = and i32 %conv2, 768, !dbg !3174
  %shr = ashr i32 %and3, 7, !dbg !3175
  %or = or i32 240, %shr, !dbg !3176
  %conv4 = trunc i32 %or to i8, !dbg !3177
  store i8 %conv4, i8* %addr, align 1, !dbg !3178
  %4 = load i8, i8* %addr, align 1, !dbg !3179
  %conv5 = zext i8 %4 to i32, !dbg !3179
  %5 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3179
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %5, i32 0, i32 1, !dbg !3179
  %6 = load i8*, i8** %base, align 8, !dbg !3179
  %add.ptr = getelementptr i8, i8* %6, i64 0, !dbg !3179
  call void @iowrite32(i32 %conv5, i8* %add.ptr) #6, !dbg !3179
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3180
  %addr6 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0, !dbg !3181
  %8 = load i16, i16* %addr6, align 8, !dbg !3181
  %conv7 = zext i16 %8 to i32, !dbg !3180
  %and8 = and i32 %conv7, 255, !dbg !3182
  %conv9 = trunc i32 %and8 to i8, !dbg !3180
  store i8 %conv9, i8* %addr, align 1, !dbg !3183
  %9 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3184
  %call = call i32 @brcmstb_i2c_write_data_byte(%struct.brcmstb_i2c_dev* %9, i8* %addr, i32 0) #6, !dbg !3186
  %cmp = icmp slt i32 %call, 0, !dbg !3187
  br i1 %cmp, label %if.then11, label %if.end, !dbg !3188

if.then11:                                        ; preds = %if.then
  store i32 -121, i32* %retval, align 4, !dbg !3189
  br label %return, !dbg !3189

if.end:                                           ; preds = %if.then
  %10 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3190
  %flags12 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %10, i32 0, i32 1, !dbg !3192
  %11 = load i16, i16* %flags12, align 2, !dbg !3192
  %conv13 = zext i16 %11 to i32, !dbg !3190
  %and14 = and i32 %conv13, 1, !dbg !3193
  %tobool15 = icmp ne i32 %and14, 0, !dbg !3193
  br i1 %tobool15, label %if.then16, label %if.end29, !dbg !3194

if.then16:                                        ; preds = %if.end
  %12 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3195
  call void @brcmstb_set_i2c_start_stop(%struct.brcmstb_i2c_dev* %12, i32 80) #6, !dbg !3197
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3198
  %addr17 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %13, i32 0, i32 0, !dbg !3199
  %14 = load i16, i16* %addr17, align 8, !dbg !3199
  %conv18 = zext i16 %14 to i32, !dbg !3198
  %and19 = and i32 %conv18, 768, !dbg !3200
  %shr20 = ashr i32 %and19, 7, !dbg !3201
  %or21 = or i32 240, %shr20, !dbg !3202
  %or22 = or i32 %or21, 1, !dbg !3203
  %conv23 = trunc i32 %or22 to i8, !dbg !3204
  store i8 %conv23, i8* %addr, align 1, !dbg !3205
  %15 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3206
  %call24 = call i32 @brcmstb_i2c_write_data_byte(%struct.brcmstb_i2c_dev* %15, i8* %addr, i32 0) #6, !dbg !3208
  %cmp25 = icmp slt i32 %call24, 0, !dbg !3209
  br i1 %cmp25, label %if.then27, label %if.end28, !dbg !3210

if.then27:                                        ; preds = %if.then16
  store i32 -121, i32* %retval, align 4, !dbg !3211
  br label %return, !dbg !3211

if.end28:                                         ; preds = %if.then16
  br label %if.end29, !dbg !3212

if.end29:                                         ; preds = %if.end28, %if.end
  br label %if.end34, !dbg !3213

if.else:                                          ; preds = %entry
  %16 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3214
  %call30 = call zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %16) #6, !dbg !3216
  store i8 %call30, i8* %addr, align 1, !dbg !3217
  %17 = load i8, i8* %addr, align 1, !dbg !3218
  %conv31 = zext i8 %17 to i32, !dbg !3218
  %18 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3218
  %base32 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %18, i32 0, i32 1, !dbg !3218
  %19 = load i8*, i8** %base32, align 8, !dbg !3218
  %add.ptr33 = getelementptr i8, i8* %19, i64 0, !dbg !3218
  call void @iowrite32(i32 %conv31, i8* %add.ptr33) #6, !dbg !3218
  br label %if.end34

if.end34:                                         ; preds = %if.else, %if.end29
  store i32 0, i32* %retval, align 4, !dbg !3219
  br label %return, !dbg !3219

return:                                           ; preds = %if.end34, %if.then27, %if.then11
  %20 = load i32, i32* %retval, align 4, !dbg !3220
  ret i32 %20, !dbg !3220
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_xfer_bsc_data(%struct.brcmstb_i2c_dev* %dev, i8* %buf, i32 %len, %struct.i2c_msg* %pmsg) #2 !dbg !3221 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %buf.addr = alloca i8*, align 8
  %len.addr = alloca i32, align 4
  %pmsg.addr = alloca %struct.i2c_msg*, align 8
  %cnt = alloca i32, align 4
  %byte = alloca i32, align 4
  %i = alloca i32, align 4
  %rc = alloca i32, align 4
  %cmd = alloca i32, align 4
  %ctl_reg = alloca i32, align 4
  %pi2creg = alloca %struct.bsc_regs*, align 8
  %no_ack = alloca i32, align 4
  %data_regsz = alloca i32, align 4
  %word = alloca i32, align 4
  %data = alloca i32, align 4
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3224, metadata !DIExpression()), !dbg !3225
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3226, metadata !DIExpression()), !dbg !3227
  store i32 %len, i32* %len.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %len.addr, metadata !3228, metadata !DIExpression()), !dbg !3229
  store %struct.i2c_msg* %pmsg, %struct.i2c_msg** %pmsg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %pmsg.addr, metadata !3230, metadata !DIExpression()), !dbg !3231
  call void @llvm.dbg.declare(metadata i32* %cnt, metadata !3232, metadata !DIExpression()), !dbg !3233
  call void @llvm.dbg.declare(metadata i32* %byte, metadata !3234, metadata !DIExpression()), !dbg !3235
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3236, metadata !DIExpression()), !dbg !3237
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3238, metadata !DIExpression()), !dbg !3239
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !3240, metadata !DIExpression()), !dbg !3241
  call void @llvm.dbg.declare(metadata i32* %ctl_reg, metadata !3242, metadata !DIExpression()), !dbg !3243
  call void @llvm.dbg.declare(metadata %struct.bsc_regs** %pi2creg, metadata !3244, metadata !DIExpression()), !dbg !3245
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3246
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 3, !dbg !3247
  %1 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !3247
  store %struct.bsc_regs* %1, %struct.bsc_regs** %pi2creg, align 8, !dbg !3245
  call void @llvm.dbg.declare(metadata i32* %no_ack, metadata !3248, metadata !DIExpression()), !dbg !3249
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg.addr, align 8, !dbg !3250
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 1, !dbg !3251
  %3 = load i16, i16* %flags, align 2, !dbg !3251
  %conv = zext i16 %3 to i32, !dbg !3250
  %and = and i32 %conv, 4096, !dbg !3252
  store i32 %and, i32* %no_ack, align 4, !dbg !3249
  call void @llvm.dbg.declare(metadata i32* %data_regsz, metadata !3253, metadata !DIExpression()), !dbg !3254
  %4 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3255
  %call = call i32 @brcmstb_i2c_get_data_regsz(%struct.brcmstb_i2c_dev* %4) #6, !dbg !3256
  store i32 %call, i32* %data_regsz, align 4, !dbg !3254
  %5 = load i32, i32* %no_ack, align 4, !dbg !3257
  %tobool = icmp ne i32 %5, 0, !dbg !3257
  br i1 %tobool, label %if.then, label %if.else, !dbg !3259

if.then:                                          ; preds = %entry
  %6 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg.addr, align 8, !dbg !3260
  %flags1 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %6, i32 0, i32 1, !dbg !3262
  %7 = load i16, i16* %flags1, align 2, !dbg !3262
  %conv2 = zext i16 %7 to i32, !dbg !3260
  %and3 = and i32 %conv2, 1, !dbg !3263
  %tobool4 = icmp ne i32 %and3, 0, !dbg !3264
  %8 = zext i1 %tobool4 to i64, !dbg !3264
  %cond = select i1 %tobool4, i32 3, i32 2, !dbg !3264
  store i32 %cond, i32* %cmd, align 4, !dbg !3265
  %9 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3266
  %ctlhi_reg = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %9, i32 0, i32 6, !dbg !3267
  %10 = load i32, i32* %ctlhi_reg, align 4, !dbg !3268
  %or = or i32 %10, 2, !dbg !3268
  store i32 %or, i32* %ctlhi_reg, align 4, !dbg !3268
  br label %if.end, !dbg !3269

if.else:                                          ; preds = %entry
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %pmsg.addr, align 8, !dbg !3270
  %flags5 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 1, !dbg !3272
  %12 = load i16, i16* %flags5, align 2, !dbg !3272
  %conv6 = zext i16 %12 to i32, !dbg !3270
  %and7 = and i32 %conv6, 1, !dbg !3273
  %tobool8 = icmp ne i32 %and7, 0, !dbg !3274
  %13 = zext i1 %tobool8 to i64, !dbg !3274
  %cond9 = select i1 %tobool8, i32 1, i32 0, !dbg !3274
  store i32 %cond9, i32* %cmd, align 4, !dbg !3275
  %14 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3276
  %ctlhi_reg10 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %14, i32 0, i32 6, !dbg !3277
  %15 = load i32, i32* %ctlhi_reg10, align 4, !dbg !3278
  %and11 = and i32 %15, -3, !dbg !3278
  store i32 %and11, i32* %ctlhi_reg10, align 4, !dbg !3278
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %16 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3279
  %ctlhi_reg12 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %16, i32 0, i32 6, !dbg !3279
  %17 = load i32, i32* %ctlhi_reg12, align 4, !dbg !3279
  %18 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3279
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %18, i32 0, i32 1, !dbg !3279
  %19 = load i8*, i8** %base, align 8, !dbg !3279
  %add.ptr = getelementptr i8, i8* %19, i64 80, !dbg !3279
  call void @iowrite32(i32 %17, i8* %add.ptr) #6, !dbg !3279
  %20 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3280
  %ctl_reg13 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %20, i32 0, i32 3, !dbg !3281
  %21 = load i32, i32* %ctl_reg13, align 4, !dbg !3281
  %and14 = and i32 %21, -4, !dbg !3282
  store i32 %and14, i32* %ctl_reg, align 4, !dbg !3283
  %22 = load i32, i32* %cmd, align 4, !dbg !3284
  %cmp = icmp eq i32 %22, 0, !dbg !3286
  br i1 %cmp, label %if.then18, label %lor.lhs.false, !dbg !3287

lor.lhs.false:                                    ; preds = %if.end
  %23 = load i32, i32* %cmd, align 4, !dbg !3288
  %cmp16 = icmp eq i32 %23, 2, !dbg !3289
  br i1 %cmp16, label %if.then18, label %if.else20, !dbg !3290

if.then18:                                        ; preds = %lor.lhs.false, %if.end
  %24 = load i32, i32* %ctl_reg, align 4, !dbg !3291
  %25 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3292
  %ctl_reg19 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %25, i32 0, i32 3, !dbg !3293
  store i32 %24, i32* %ctl_reg19, align 4, !dbg !3294
  br label %if.end23, !dbg !3292

if.else20:                                        ; preds = %lor.lhs.false
  %26 = load i32, i32* %ctl_reg, align 4, !dbg !3295
  %or21 = or i32 %26, 1, !dbg !3296
  %27 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3297
  %ctl_reg22 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %27, i32 0, i32 3, !dbg !3298
  store i32 %or21, i32* %ctl_reg22, align 4, !dbg !3299
  br label %if.end23

if.end23:                                         ; preds = %if.else20, %if.then18
  %28 = load i32, i32* %data_regsz, align 4, !dbg !3300
  %cmp24 = icmp eq i32 %28, 1, !dbg !3300
  %29 = zext i1 %cmp24 to i64, !dbg !3300
  %cond26 = select i1 %cmp24, i64 15, i64 63, !dbg !3300
  %30 = load i32, i32* %len.addr, align 4, !dbg !3300
  %shl = shl i32 %30, 0, !dbg !3300
  %conv27 = zext i32 %shl to i64, !dbg !3300
  %and28 = and i64 %cond26, %conv27, !dbg !3300
  %conv29 = trunc i64 %and28 to i32, !dbg !3300
  %31 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3300
  %base30 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %31, i32 0, i32 1, !dbg !3300
  %32 = load i8*, i8** %base30, align 8, !dbg !3300
  %add.ptr31 = getelementptr i8, i8* %32, i64 36, !dbg !3300
  call void @iowrite32(i32 %conv29, i8* %add.ptr31) #6, !dbg !3300
  %33 = load i32, i32* %cmd, align 4, !dbg !3301
  %cmp32 = icmp eq i32 %33, 0, !dbg !3303
  br i1 %cmp32, label %if.then37, label %lor.lhs.false34, !dbg !3304

lor.lhs.false34:                                  ; preds = %if.end23
  %34 = load i32, i32* %cmd, align 4, !dbg !3305
  %cmp35 = icmp eq i32 %34, 2, !dbg !3306
  br i1 %cmp35, label %if.then37, label %if.end59, !dbg !3307

if.then37:                                        ; preds = %lor.lhs.false34, %if.end23
  store i32 0, i32* %cnt, align 4, !dbg !3308
  store i32 0, i32* %i, align 4, !dbg !3311
  br label %for.cond, !dbg !3312

for.cond:                                         ; preds = %for.inc55, %if.then37
  %35 = load i32, i32* %cnt, align 4, !dbg !3313
  %36 = load i32, i32* %len.addr, align 4, !dbg !3315
  %cmp38 = icmp ult i32 %35, %36, !dbg !3316
  br i1 %cmp38, label %for.body, label %for.end58, !dbg !3317

for.body:                                         ; preds = %for.cond
  call void @llvm.dbg.declare(metadata i32* %word, metadata !3318, metadata !DIExpression()), !dbg !3320
  store i32 0, i32* %word, align 4, !dbg !3320
  store i32 0, i32* %byte, align 4, !dbg !3321
  br label %for.cond40, !dbg !3323

for.cond40:                                       ; preds = %for.inc, %for.body
  %37 = load i32, i32* %byte, align 4, !dbg !3324
  %38 = load i32, i32* %data_regsz, align 4, !dbg !3326
  %cmp41 = icmp slt i32 %37, %38, !dbg !3327
  br i1 %cmp41, label %for.body43, label %for.end, !dbg !3328

for.body43:                                       ; preds = %for.cond40
  %39 = load i32, i32* %word, align 4, !dbg !3329
  %shr = lshr i32 %39, 8, !dbg !3329
  store i32 %shr, i32* %word, align 4, !dbg !3329
  %40 = load i32, i32* %cnt, align 4, !dbg !3331
  %41 = load i32, i32* %byte, align 4, !dbg !3333
  %add = add i32 %40, %41, !dbg !3334
  %42 = load i32, i32* %len.addr, align 4, !dbg !3335
  %cmp44 = icmp ult i32 %add, %42, !dbg !3336
  br i1 %cmp44, label %if.then46, label %if.end51, !dbg !3337

if.then46:                                        ; preds = %for.body43
  %43 = load i8*, i8** %buf.addr, align 8, !dbg !3338
  %44 = load i32, i32* %cnt, align 4, !dbg !3339
  %45 = load i32, i32* %byte, align 4, !dbg !3340
  %add47 = add i32 %44, %45, !dbg !3341
  %idxprom = sext i32 %add47 to i64, !dbg !3338
  %arrayidx = getelementptr i8, i8* %43, i64 %idxprom, !dbg !3338
  %46 = load i8, i8* %arrayidx, align 1, !dbg !3338
  %conv48 = zext i8 %46 to i32, !dbg !3338
  %47 = load i32, i32* %data_regsz, align 4, !dbg !3342
  %sub = sub i32 %47, 1, !dbg !3343
  %mul = mul i32 8, %sub, !dbg !3344
  %shl49 = shl i32 %conv48, %mul, !dbg !3345
  %48 = load i32, i32* %word, align 4, !dbg !3346
  %or50 = or i32 %48, %shl49, !dbg !3346
  store i32 %or50, i32* %word, align 4, !dbg !3346
  br label %if.end51, !dbg !3347

if.end51:                                         ; preds = %if.then46, %for.body43
  br label %for.inc, !dbg !3348

for.inc:                                          ; preds = %if.end51
  %49 = load i32, i32* %byte, align 4, !dbg !3349
  %inc = add i32 %49, 1, !dbg !3349
  store i32 %inc, i32* %byte, align 4, !dbg !3349
  br label %for.cond40, !dbg !3350, !llvm.loop !3351

for.end:                                          ; preds = %for.cond40
  %50 = load i32, i32* %word, align 4, !dbg !3353
  %51 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3353
  %base52 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %51, i32 0, i32 1, !dbg !3353
  %52 = load i8*, i8** %base52, align 8, !dbg !3353
  %53 = load i32, i32* %i, align 4, !dbg !3353
  %conv53 = sext i32 %53 to i64, !dbg !3353
  %54 = mul i64 %conv53, 4, !dbg !3353
  %55 = add i64 4, %54, !dbg !3353
  %add.ptr54 = getelementptr i8, i8* %52, i64 %55, !dbg !3353
  call void @iowrite32(i32 %50, i8* %add.ptr54) #6, !dbg !3353
  br label %for.inc55, !dbg !3354

for.inc55:                                        ; preds = %for.end
  %56 = load i32, i32* %data_regsz, align 4, !dbg !3355
  %57 = load i32, i32* %cnt, align 4, !dbg !3356
  %add56 = add i32 %57, %56, !dbg !3356
  store i32 %add56, i32* %cnt, align 4, !dbg !3356
  %58 = load i32, i32* %i, align 4, !dbg !3357
  %inc57 = add i32 %58, 1, !dbg !3357
  store i32 %inc57, i32* %i, align 4, !dbg !3357
  br label %for.cond, !dbg !3358, !llvm.loop !3359

for.end58:                                        ; preds = %for.cond
  br label %if.end59, !dbg !3361

if.end59:                                         ; preds = %for.end58, %lor.lhs.false34
  %59 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3362
  %60 = load i32, i32* %cmd, align 4, !dbg !3363
  %call60 = call i32 @brcmstb_send_i2c_cmd(%struct.brcmstb_i2c_dev* %59, i32 %60) #6, !dbg !3364
  store i32 %call60, i32* %rc, align 4, !dbg !3365
  %61 = load i32, i32* %rc, align 4, !dbg !3366
  %cmp61 = icmp ne i32 %61, 0, !dbg !3368
  br i1 %cmp61, label %if.then63, label %if.end64, !dbg !3369

if.then63:                                        ; preds = %if.end59
  %62 = load i32, i32* %rc, align 4, !dbg !3370
  store i32 %62, i32* %retval, align 4, !dbg !3372
  br label %return, !dbg !3372

if.end64:                                         ; preds = %if.end59
  %63 = load i32, i32* %cmd, align 4, !dbg !3373
  %cmp65 = icmp eq i32 %63, 1, !dbg !3375
  br i1 %cmp65, label %if.then70, label %lor.lhs.false67, !dbg !3376

lor.lhs.false67:                                  ; preds = %if.end64
  %64 = load i32, i32* %cmd, align 4, !dbg !3377
  %cmp68 = icmp eq i32 %64, 3, !dbg !3378
  br i1 %cmp68, label %if.then70, label %if.end99, !dbg !3379

if.then70:                                        ; preds = %lor.lhs.false67, %if.end64
  store i32 0, i32* %cnt, align 4, !dbg !3380
  store i32 0, i32* %i, align 4, !dbg !3383
  br label %for.cond71, !dbg !3384

for.cond71:                                       ; preds = %for.inc95, %if.then70
  %65 = load i32, i32* %cnt, align 4, !dbg !3385
  %66 = load i32, i32* %len.addr, align 4, !dbg !3387
  %cmp72 = icmp ult i32 %65, %66, !dbg !3388
  br i1 %cmp72, label %for.body74, label %for.end98, !dbg !3389

for.body74:                                       ; preds = %for.cond71
  call void @llvm.dbg.declare(metadata i32* %data, metadata !3390, metadata !DIExpression()), !dbg !3392
  %67 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3393
  %base75 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %67, i32 0, i32 1, !dbg !3393
  %68 = load i8*, i8** %base75, align 8, !dbg !3393
  %69 = load i32, i32* %i, align 4, !dbg !3393
  %conv76 = sext i32 %69 to i64, !dbg !3393
  %70 = mul i64 %conv76, 4, !dbg !3393
  %71 = add i64 48, %70, !dbg !3393
  %add.ptr77 = getelementptr i8, i8* %68, i64 %71, !dbg !3393
  %call78 = call i32 @ioread32(i8* %add.ptr77) #6, !dbg !3393
  store i32 %call78, i32* %data, align 4, !dbg !3392
  store i32 0, i32* %byte, align 4, !dbg !3394
  br label %for.cond79, !dbg !3396

for.cond79:                                       ; preds = %for.inc92, %for.body74
  %72 = load i32, i32* %byte, align 4, !dbg !3397
  %73 = load i32, i32* %data_regsz, align 4, !dbg !3399
  %cmp80 = icmp slt i32 %72, %73, !dbg !3400
  br i1 %cmp80, label %land.rhs, label %land.end, !dbg !3401

land.rhs:                                         ; preds = %for.cond79
  %74 = load i32, i32* %byte, align 4, !dbg !3402
  %75 = load i32, i32* %cnt, align 4, !dbg !3403
  %add82 = add i32 %74, %75, !dbg !3404
  %76 = load i32, i32* %len.addr, align 4, !dbg !3405
  %cmp83 = icmp ult i32 %add82, %76, !dbg !3406
  br label %land.end

land.end:                                         ; preds = %land.rhs, %for.cond79
  %77 = phi i1 [ false, %for.cond79 ], [ %cmp83, %land.rhs ], !dbg !3407
  br i1 %77, label %for.body85, label %for.end94, !dbg !3408

for.body85:                                       ; preds = %land.end
  %78 = load i32, i32* %data, align 4, !dbg !3409
  %and86 = and i32 %78, 255, !dbg !3411
  %conv87 = trunc i32 %and86 to i8, !dbg !3409
  %79 = load i8*, i8** %buf.addr, align 8, !dbg !3412
  %80 = load i32, i32* %cnt, align 4, !dbg !3413
  %81 = load i32, i32* %byte, align 4, !dbg !3414
  %add88 = add i32 %80, %81, !dbg !3415
  %idxprom89 = sext i32 %add88 to i64, !dbg !3412
  %arrayidx90 = getelementptr i8, i8* %79, i64 %idxprom89, !dbg !3412
  store i8 %conv87, i8* %arrayidx90, align 1, !dbg !3416
  %82 = load i32, i32* %data, align 4, !dbg !3417
  %shr91 = lshr i32 %82, 8, !dbg !3417
  store i32 %shr91, i32* %data, align 4, !dbg !3417
  br label %for.inc92, !dbg !3418

for.inc92:                                        ; preds = %for.body85
  %83 = load i32, i32* %byte, align 4, !dbg !3419
  %inc93 = add i32 %83, 1, !dbg !3419
  store i32 %inc93, i32* %byte, align 4, !dbg !3419
  br label %for.cond79, !dbg !3420, !llvm.loop !3421

for.end94:                                        ; preds = %land.end
  br label %for.inc95, !dbg !3423

for.inc95:                                        ; preds = %for.end94
  %84 = load i32, i32* %data_regsz, align 4, !dbg !3424
  %85 = load i32, i32* %cnt, align 4, !dbg !3425
  %add96 = add i32 %85, %84, !dbg !3425
  store i32 %add96, i32* %cnt, align 4, !dbg !3425
  %86 = load i32, i32* %i, align 4, !dbg !3426
  %inc97 = add i32 %86, 1, !dbg !3426
  store i32 %inc97, i32* %i, align 4, !dbg !3426
  br label %for.cond71, !dbg !3427, !llvm.loop !3428

for.end98:                                        ; preds = %for.cond71
  br label %if.end99, !dbg !3430

if.end99:                                         ; preds = %for.end98, %lor.lhs.false67
  store i32 0, i32* %retval, align 4, !dbg !3431
  br label %return, !dbg !3431

return:                                           ; preds = %if.end99, %if.then63
  %87 = load i32, i32* %retval, align 4, !dbg !3432
  ret i32 %87, !dbg !3432
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #2 !dbg !3433 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3436, metadata !DIExpression()), !dbg !3437
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3438
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !3439
  %1 = load i8*, i8** %driver_data, align 8, !dbg !3439
  ret i8* %1, !dbg !3440
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_write_data_byte(%struct.brcmstb_i2c_dev* %dev, i8* %buf, i32 %nak_expected) #2 !dbg !3441 {
entry:
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %buf.addr = alloca i8*, align 8
  %nak_expected.addr = alloca i32, align 4
  %cmd = alloca i32, align 4
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3444, metadata !DIExpression()), !dbg !3445
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3446, metadata !DIExpression()), !dbg !3447
  store i32 %nak_expected, i32* %nak_expected.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %nak_expected.addr, metadata !3448, metadata !DIExpression()), !dbg !3449
  call void @llvm.dbg.declare(metadata i32* %cmd, metadata !3450, metadata !DIExpression()), !dbg !3451
  %0 = load i32, i32* %nak_expected.addr, align 4, !dbg !3452
  %tobool = icmp ne i32 %0, 0, !dbg !3452
  %1 = zext i1 %tobool to i64, !dbg !3452
  %cond = select i1 %tobool, i32 0, i32 2, !dbg !3452
  store i32 %cond, i32* %cmd, align 4, !dbg !3451
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3453
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %2, i32 0, i32 1, !dbg !3453
  %3 = load i8*, i8** %base, align 8, !dbg !3453
  %add.ptr = getelementptr i8, i8* %3, i64 36, !dbg !3453
  call void @iowrite32(i32 1, i8* %add.ptr) #6, !dbg !3453
  %4 = load i8*, i8** %buf.addr, align 8, !dbg !3454
  %5 = load i8, i8* %4, align 1, !dbg !3454
  %conv = zext i8 %5 to i32, !dbg !3454
  %6 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3454
  %base1 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %6, i32 0, i32 1, !dbg !3454
  %7 = load i8*, i8** %base1, align 8, !dbg !3454
  %add.ptr2 = getelementptr i8, i8* %7, i64 4, !dbg !3454
  call void @iowrite32(i32 %conv, i8* %add.ptr2) #6, !dbg !3454
  %8 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3455
  %9 = load i32, i32* %cmd, align 4, !dbg !3456
  %call = call i32 @brcmstb_send_i2c_cmd(%struct.brcmstb_i2c_dev* %8, i32 %9) #6, !dbg !3457
  ret i32 %call, !dbg !3458
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i8 @i2c_8bit_addr_from_msg(%struct.i2c_msg* %msg) #2 !dbg !3459 {
entry:
  %msg.addr = alloca %struct.i2c_msg*, align 8
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3464, metadata !DIExpression()), !dbg !3465
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3466
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 0, !dbg !3467
  %1 = load i16, i16* %addr, align 8, !dbg !3467
  %conv = zext i16 %1 to i32, !dbg !3466
  %shl = shl i32 %conv, 1, !dbg !3468
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3469
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 1, !dbg !3470
  %3 = load i16, i16* %flags, align 2, !dbg !3470
  %conv1 = zext i16 %3 to i32, !dbg !3469
  %and = and i32 %conv1, 1, !dbg !3471
  %tobool = icmp ne i32 %and, 0, !dbg !3469
  %4 = zext i1 %tobool to i64, !dbg !3469
  %cond = select i1 %tobool, i32 1, i32 0, !dbg !3469
  %or = or i32 %shl, %cond, !dbg !3472
  %conv2 = trunc i32 %or to i8, !dbg !3473
  ret i8 %conv2, !dbg !3474
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_send_i2c_cmd(%struct.brcmstb_i2c_dev* %dev, i32 %cmd) #2 !dbg !3475 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %cmd.addr = alloca i32, align 4
  %rc = alloca i32, align 4
  %pi2creg = alloca %struct.bsc_regs*, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3478, metadata !DIExpression()), !dbg !3479
  store i32 %cmd, i32* %cmd.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %cmd.addr, metadata !3480, metadata !DIExpression()), !dbg !3481
  call void @llvm.dbg.declare(metadata i32* %rc, metadata !3482, metadata !DIExpression()), !dbg !3483
  store i32 0, i32* %rc, align 4, !dbg !3483
  call void @llvm.dbg.declare(metadata %struct.bsc_regs** %pi2creg, metadata !3484, metadata !DIExpression()), !dbg !3485
  %0 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3486
  %bsc_regmap = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %0, i32 0, i32 3, !dbg !3487
  %1 = load %struct.bsc_regs*, %struct.bsc_regs** %bsc_regmap, align 8, !dbg !3487
  store %struct.bsc_regs* %1, %struct.bsc_regs** %pi2creg, align 8, !dbg !3485
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3488
  %call = call i32 @brcmstb_i2c_wait_if_busy(%struct.brcmstb_i2c_dev* %2) #6, !dbg !3489
  store i32 %call, i32* %rc, align 4, !dbg !3490
  %3 = load i32, i32* %rc, align 4, !dbg !3491
  %cmp = icmp slt i32 %3, 0, !dbg !3493
  br i1 %cmp, label %if.then, label %if.end, !dbg !3494

if.then:                                          ; preds = %entry
  %4 = load i32, i32* %rc, align 4, !dbg !3495
  store i32 %4, i32* %retval, align 4, !dbg !3496
  br label %return, !dbg !3496

if.end:                                           ; preds = %entry
  %5 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3497
  %irq = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %5, i32 0, i32 2, !dbg !3499
  %6 = load i32, i32* %irq, align 8, !dbg !3499
  %cmp1 = icmp sge i32 %6, 0, !dbg !3500
  br i1 %cmp1, label %if.then2, label %if.end3, !dbg !3501

if.then2:                                         ; preds = %if.end
  %7 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3502
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %7, i32 0, i32 5, !dbg !3503
  call void @reinit_completion(%struct.completion* %done) #6, !dbg !3504
  br label %if.end3, !dbg !3504

if.end3:                                          ; preds = %if.then2, %if.end
  %8 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3505
  call void @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %8, i1 zeroext true) #6, !dbg !3506
  %9 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3507
  %iic_enable = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %9, i32 0, i32 4, !dbg !3508
  %10 = load i32, i32* %iic_enable, align 4, !dbg !3509
  %or = or i32 %10, 1, !dbg !3509
  store i32 %or, i32* %iic_enable, align 4, !dbg !3509
  %11 = load %struct.bsc_regs*, %struct.bsc_regs** %pi2creg, align 8, !dbg !3510
  %iic_enable4 = getelementptr inbounds %struct.bsc_regs, %struct.bsc_regs* %11, i32 0, i32 4, !dbg !3510
  %12 = load i32, i32* %iic_enable4, align 4, !dbg !3510
  %13 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3510
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %13, i32 0, i32 1, !dbg !3510
  %14 = load i8*, i8** %base, align 8, !dbg !3510
  %add.ptr = getelementptr i8, i8* %14, i64 44, !dbg !3510
  call void @iowrite32(i32 %12, i8* %add.ptr) #6, !dbg !3510
  %15 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3511
  %call5 = call i32 @brcmstb_i2c_wait_for_completion(%struct.brcmstb_i2c_dev* %15) #6, !dbg !3512
  store i32 %call5, i32* %rc, align 4, !dbg !3513
  %16 = load i32, i32* %rc, align 4, !dbg !3514
  %tobool = icmp ne i32 %16, 0, !dbg !3514
  br i1 %tobool, label %if.then6, label %if.end7, !dbg !3516

if.then6:                                         ; preds = %if.end3
  br label %cmd_out, !dbg !3517

if.end7:                                          ; preds = %if.end3
  %17 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3519
  %base8 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %17, i32 0, i32 1, !dbg !3519
  %18 = load i8*, i8** %base8, align 8, !dbg !3519
  %add.ptr9 = getelementptr i8, i8* %18, i64 44, !dbg !3519
  %call10 = call i32 @ioread32(i8* %add.ptr9) #6, !dbg !3519
  %and = and i32 %call10, 4, !dbg !3521
  %tobool11 = icmp ne i32 %and, 0, !dbg !3521
  br i1 %tobool11, label %if.then12, label %if.end13, !dbg !3522

if.then12:                                        ; preds = %if.end7
  store i32 -121, i32* %rc, align 4, !dbg !3523
  br label %if.end13, !dbg !3525

if.end13:                                         ; preds = %if.then12, %if.end7
  br label %cmd_out, !dbg !3526

cmd_out:                                          ; preds = %if.end13, %if.then6
  call void @llvm.dbg.label(metadata !3527), !dbg !3528
  %19 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3529
  %base14 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %19, i32 0, i32 1, !dbg !3529
  %20 = load i8*, i8** %base14, align 8, !dbg !3529
  %add.ptr15 = getelementptr i8, i8* %20, i64 36, !dbg !3529
  call void @iowrite32(i32 0, i8* %add.ptr15) #6, !dbg !3529
  %21 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3530
  %base16 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %21, i32 0, i32 1, !dbg !3530
  %22 = load i8*, i8** %base16, align 8, !dbg !3530
  %add.ptr17 = getelementptr i8, i8* %22, i64 44, !dbg !3530
  call void @iowrite32(i32 0, i8* %add.ptr17) #6, !dbg !3530
  %23 = load i32, i32* %rc, align 4, !dbg !3531
  store i32 %23, i32* %retval, align 4, !dbg !3532
  br label %return, !dbg !3532

return:                                           ; preds = %cmd_out, %if.then
  %24 = load i32, i32* %retval, align 4, !dbg !3533
  ret i32 %24, !dbg !3533
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_wait_if_busy(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !3534 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3535, metadata !DIExpression()), !dbg !3541
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %timeout = alloca i64, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3543, metadata !DIExpression()), !dbg !3544
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !3545, metadata !DIExpression()), !dbg !3546
  %0 = load volatile i64, i64* @jiffies, align 8, !dbg !3547
  store i32 100, i32* %m.addr.i, align 4
  %1 = load i32, i32* %m.addr.i, align 4, !dbg !3548
  %2 = call i1 @llvm.is.constant.i32(i32 %1) #8, !dbg !3550
  br i1 %2, label %if.then.i, label %if.else.i, !dbg !3551

if.then.i:                                        ; preds = %entry
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !3552
  %cmp.i = icmp slt i32 %3, 0, !dbg !3555
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3556

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3557
  br label %msecs_to_jiffies.exit, !dbg !3557

if.end.i:                                         ; preds = %if.then.i
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !3558
  %call.i = call i64 @_msecs_to_jiffies(i32 %4) #9, !dbg !3559
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3560
  br label %msecs_to_jiffies.exit, !dbg !3560

if.else.i:                                        ; preds = %entry
  %5 = load i32, i32* %m.addr.i, align 4, !dbg !3561
  %call2.i = call i64 @__msecs_to_jiffies(i32 %5) #9, !dbg !3563
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3564
  br label %msecs_to_jiffies.exit, !dbg !3564

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %6 = load i64, i64* %retval.i, align 8, !dbg !3565
  %add = add i64 %0, %6, !dbg !3566
  store i64 %add, i64* %timeout, align 8, !dbg !3546
  br label %while.cond, !dbg !3567

while.cond:                                       ; preds = %if.end, %msecs_to_jiffies.exit
  %7 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3568
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %7, i32 0, i32 1, !dbg !3568
  %8 = load i8*, i8** %base, align 8, !dbg !3568
  %add.ptr = getelementptr i8, i8* %8, i64 44, !dbg !3568
  %call1 = call i32 @ioread32(i8* %add.ptr) #6, !dbg !3568
  %and = and i32 %call1, 2, !dbg !3569
  %tobool = icmp ne i32 %and, 0, !dbg !3567
  br i1 %tobool, label %while.body, label %while.end, !dbg !3567

while.body:                                       ; preds = %while.cond
  %9 = load i64, i64* %timeout, align 8, !dbg !3570
  %10 = load volatile i64, i64* @jiffies, align 8, !dbg !3570
  %sub = sub i64 %9, %10, !dbg !3570
  %cmp = icmp slt i64 %sub, 0, !dbg !3570
  br i1 %cmp, label %if.then, label %if.end, !dbg !3573

if.then:                                          ; preds = %while.body
  store i32 -110, i32* %retval, align 4, !dbg !3574
  br label %return, !dbg !3574

if.end:                                           ; preds = %while.body
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !3575, !srcloc !3581
  br label %while.cond, !dbg !3567, !llvm.loop !3582

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !3584
  br label %return, !dbg !3584

return:                                           ; preds = %while.end, %if.then
  %11 = load i32, i32* %retval, align 4, !dbg !3585
  ret i32 %11, !dbg !3585
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @reinit_completion(%struct.completion* %x) #2 !dbg !3586 {
entry:
  %x.addr = alloca %struct.completion*, align 8
  store %struct.completion* %x, %struct.completion** %x.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.completion** %x.addr, metadata !3587, metadata !DIExpression()), !dbg !3588
  %0 = load %struct.completion*, %struct.completion** %x.addr, align 8, !dbg !3589
  %done = getelementptr inbounds %struct.completion, %struct.completion* %0, i32 0, i32 0, !dbg !3590
  store i32 0, i32* %done, align 8, !dbg !3591
  ret void, !dbg !3592
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_wait_for_completion(%struct.brcmstb_i2c_dev* %dev) #2 !dbg !3593 {
entry:
  %retval.i = alloca i64, align 8
  %m.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr.i, metadata !3535, metadata !DIExpression()), !dbg !3594
  %dev.addr = alloca %struct.brcmstb_i2c_dev*, align 8
  %ret = alloca i32, align 4
  %timeout = alloca i64, align 8
  %bsc_intrp = alloca i32, align 4
  %time_left = alloca i64, align 8
  store %struct.brcmstb_i2c_dev* %dev, %struct.brcmstb_i2c_dev** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %dev.addr, metadata !3596, metadata !DIExpression()), !dbg !3597
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3598, metadata !DIExpression()), !dbg !3599
  store i32 0, i32* %ret, align 4, !dbg !3599
  call void @llvm.dbg.declare(metadata i64* %timeout, metadata !3600, metadata !DIExpression()), !dbg !3601
  store i32 100, i32* %m.addr.i, align 4
  %0 = load i32, i32* %m.addr.i, align 4, !dbg !3602
  %1 = call i1 @llvm.is.constant.i32(i32 %0) #8, !dbg !3603
  br i1 %1, label %if.then.i, label %if.else.i, !dbg !3604

if.then.i:                                        ; preds = %entry
  %2 = load i32, i32* %m.addr.i, align 4, !dbg !3605
  %cmp.i = icmp slt i32 %2, 0, !dbg !3606
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !3607

if.then1.i:                                       ; preds = %if.then.i
  store i64 4611686018427387902, i64* %retval.i, align 8, !dbg !3608
  br label %msecs_to_jiffies.exit, !dbg !3608

if.end.i:                                         ; preds = %if.then.i
  %3 = load i32, i32* %m.addr.i, align 4, !dbg !3609
  %call.i = call i64 @_msecs_to_jiffies(i32 %3) #9, !dbg !3610
  store i64 %call.i, i64* %retval.i, align 8, !dbg !3611
  br label %msecs_to_jiffies.exit, !dbg !3611

if.else.i:                                        ; preds = %entry
  %4 = load i32, i32* %m.addr.i, align 4, !dbg !3612
  %call2.i = call i64 @__msecs_to_jiffies(i32 %4) #9, !dbg !3613
  store i64 %call2.i, i64* %retval.i, align 8, !dbg !3614
  br label %msecs_to_jiffies.exit, !dbg !3614

msecs_to_jiffies.exit:                            ; preds = %if.then1.i, %if.end.i, %if.else.i
  %5 = load i64, i64* %retval.i, align 8, !dbg !3615
  store i64 %5, i64* %timeout, align 8, !dbg !3601
  %6 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3616
  %irq = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %6, i32 0, i32 2, !dbg !3618
  %7 = load i32, i32* %irq, align 8, !dbg !3618
  %cmp = icmp sge i32 %7, 0, !dbg !3619
  br i1 %cmp, label %if.then, label %if.else, !dbg !3620

if.then:                                          ; preds = %msecs_to_jiffies.exit
  %8 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3621
  %done = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %8, i32 0, i32 5, !dbg !3624
  %9 = load i64, i64* %timeout, align 8, !dbg !3625
  %call1 = call i64 @wait_for_completion_timeout(%struct.completion* %done, i64 %9) #6, !dbg !3626
  %tobool = icmp ne i64 %call1, 0, !dbg !3626
  br i1 %tobool, label %if.end, label %if.then2, !dbg !3627

if.then2:                                         ; preds = %if.then
  store i32 -110, i32* %ret, align 4, !dbg !3628
  br label %if.end, !dbg !3629

if.end:                                           ; preds = %if.then2, %if.then
  br label %if.end8, !dbg !3630

if.else:                                          ; preds = %msecs_to_jiffies.exit
  call void @llvm.dbg.declare(metadata i32* %bsc_intrp, metadata !3631, metadata !DIExpression()), !dbg !3633
  call void @llvm.dbg.declare(metadata i64* %time_left, metadata !3634, metadata !DIExpression()), !dbg !3635
  %10 = load volatile i64, i64* @jiffies, align 8, !dbg !3636
  %11 = load i64, i64* %timeout, align 8, !dbg !3637
  %add = add i64 %10, %11, !dbg !3638
  store i64 %add, i64* %time_left, align 8, !dbg !3635
  br label %do.body, !dbg !3639

do.body:                                          ; preds = %do.cond, %if.else
  %12 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3640
  %base = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %12, i32 0, i32 1, !dbg !3640
  %13 = load i8*, i8** %base, align 8, !dbg !3640
  %add.ptr = getelementptr i8, i8* %13, i64 44, !dbg !3640
  %call3 = call i32 @ioread32(i8* %add.ptr) #6, !dbg !3640
  %and = and i32 %call3, 2, !dbg !3642
  store i32 %and, i32* %bsc_intrp, align 4, !dbg !3643
  %14 = load i64, i64* %time_left, align 8, !dbg !3644
  %15 = load volatile i64, i64* @jiffies, align 8, !dbg !3644
  %sub = sub i64 %14, %15, !dbg !3644
  %cmp4 = icmp slt i64 %sub, 0, !dbg !3644
  br i1 %cmp4, label %if.then5, label %if.end6, !dbg !3646

if.then5:                                         ; preds = %do.body
  store i32 -110, i32* %ret, align 4, !dbg !3647
  br label %do.end, !dbg !3649

if.end6:                                          ; preds = %do.body
  call void asm sideeffect "rep; nop", "~{memory},~{dirflag},~{fpsr},~{flags}"() #8, !dbg !3650, !srcloc !3581
  br label %do.cond, !dbg !3653

do.cond:                                          ; preds = %if.end6
  %16 = load i32, i32* %bsc_intrp, align 4, !dbg !3654
  %tobool7 = icmp ne i32 %16, 0, !dbg !3655
  %lnot = xor i1 %tobool7, true, !dbg !3655
  br i1 %lnot, label %do.body, label %do.end, !dbg !3653, !llvm.loop !3656

do.end:                                           ; preds = %do.cond, %if.then5
  br label %if.end8

if.end8:                                          ; preds = %do.end, %if.end
  %17 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3658
  %irq9 = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %17, i32 0, i32 2, !dbg !3660
  %18 = load i32, i32* %irq9, align 8, !dbg !3660
  %cmp10 = icmp slt i32 %18, 0, !dbg !3661
  br i1 %cmp10, label %if.then12, label %lor.lhs.false, !dbg !3662

lor.lhs.false:                                    ; preds = %if.end8
  %19 = load i32, i32* %ret, align 4, !dbg !3663
  %cmp11 = icmp eq i32 %19, -110, !dbg !3664
  br i1 %cmp11, label %if.then12, label %if.end13, !dbg !3665

if.then12:                                        ; preds = %lor.lhs.false, %if.end8
  %20 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %dev.addr, align 8, !dbg !3666
  call void @brcmstb_i2c_enable_disable_irq(%struct.brcmstb_i2c_dev* %20, i1 zeroext false) #6, !dbg !3667
  br label %if.end13, !dbg !3667

if.end13:                                         ; preds = %if.then12, %lor.lhs.false
  %21 = load i32, i32* %ret, align 4, !dbg !3668
  ret i32 %21, !dbg !3669
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i32(i32) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @_msecs_to_jiffies(i32 %m) #2 !dbg !3670 {
entry:
  %m.addr = alloca i32, align 4
  store i32 %m, i32* %m.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %m.addr, metadata !3671, metadata !DIExpression()), !dbg !3672
  %0 = load i32, i32* %m.addr, align 4, !dbg !3673
  %conv = zext i32 %0 to i64, !dbg !3673
  %add = add i64 %conv, 4, !dbg !3674
  %sub = sub i64 %add, 1, !dbg !3675
  %div = sdiv i64 %sub, 4, !dbg !3676
  ret i64 %div, !dbg !3677
}

; Function Attrs: noredzone
declare dso_local i64 @__msecs_to_jiffies(i32) #1

; Function Attrs: noredzone
declare dso_local i64 @wait_for_completion_timeout(%struct.completion*, i64) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @platform_get_drvdata(%struct.platform_device* %pdev) #2 !dbg !3678 {
entry:
  %pdev.addr = alloca %struct.platform_device*, align 8
  store %struct.platform_device* %pdev, %struct.platform_device** %pdev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.platform_device** %pdev.addr, metadata !3683, metadata !DIExpression()), !dbg !3684
  %0 = load %struct.platform_device*, %struct.platform_device** %pdev.addr, align 8, !dbg !3685
  %dev = getelementptr inbounds %struct.platform_device, %struct.platform_device* %0, i32 0, i32 3, !dbg !3686
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #6, !dbg !3687
  ret i8* %call, !dbg !3688
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_suspend(%struct.device* %dev) #2 !dbg !3689 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %i2c_dev = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3690, metadata !DIExpression()), !dbg !3691
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %i2c_dev, metadata !3692, metadata !DIExpression()), !dbg !3693
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3694
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !3695
  %1 = bitcast i8* %call to %struct.brcmstb_i2c_dev*, !dbg !3695
  store %struct.brcmstb_i2c_dev* %1, %struct.brcmstb_i2c_dev** %i2c_dev, align 8, !dbg !3693
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %i2c_dev, align 8, !dbg !3696
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %2, i32 0, i32 4, !dbg !3697
  call void @i2c_mark_adapter_suspended(%struct.i2c_adapter* %adapter) #6, !dbg !3698
  ret i32 0, !dbg !3699
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @brcmstb_i2c_resume(%struct.device* %dev) #2 !dbg !3700 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %i2c_dev = alloca %struct.brcmstb_i2c_dev*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3701, metadata !DIExpression()), !dbg !3702
  call void @llvm.dbg.declare(metadata %struct.brcmstb_i2c_dev** %i2c_dev, metadata !3703, metadata !DIExpression()), !dbg !3704
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3705
  %call = call i8* @dev_get_drvdata(%struct.device* %0) #6, !dbg !3706
  %1 = bitcast i8* %call to %struct.brcmstb_i2c_dev*, !dbg !3706
  store %struct.brcmstb_i2c_dev* %1, %struct.brcmstb_i2c_dev** %i2c_dev, align 8, !dbg !3704
  %2 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %i2c_dev, align 8, !dbg !3707
  call void @brcmstb_i2c_set_bsc_reg_defaults(%struct.brcmstb_i2c_dev* %2) #6, !dbg !3708
  %3 = load %struct.brcmstb_i2c_dev*, %struct.brcmstb_i2c_dev** %i2c_dev, align 8, !dbg !3709
  %adapter = getelementptr inbounds %struct.brcmstb_i2c_dev, %struct.brcmstb_i2c_dev* %3, i32 0, i32 4, !dbg !3710
  call void @i2c_mark_adapter_resumed(%struct.i2c_adapter* %adapter) #6, !dbg !3711
  ret i32 0, !dbg !3712
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_mark_adapter_suspended(%struct.i2c_adapter* %adap) #2 !dbg !3713 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3714, metadata !DIExpression()), !dbg !3715
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3716
  call void @i2c_lock_bus(%struct.i2c_adapter* %0, i32 1) #6, !dbg !3717
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3718
  %locked_flags = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %1, i32 0, i32 10, !dbg !3719
  call void @set_bit(i64 0, i64* %locked_flags) #6, !dbg !3720
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3721
  call void @i2c_unlock_bus(%struct.i2c_adapter* %2, i32 1) #6, !dbg !3722
  ret void, !dbg !3723
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_lock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #2 !dbg !3724 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3725, metadata !DIExpression()), !dbg !3726
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3727, metadata !DIExpression()), !dbg !3728
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3729
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !3730
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !3730
  %lock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 0, !dbg !3731
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %lock_bus, align 8, !dbg !3731
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3732
  %4 = load i32, i32* %flags.addr, align 4, !dbg !3733
  call void %2(%struct.i2c_adapter* %3, i32 %4) #6, !dbg !3729
  ret void, !dbg !3734
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @set_bit(i64 %nr, i64* %addr) #2 !dbg !3735 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3741, metadata !DIExpression()), !dbg !3744
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3746, metadata !DIExpression()), !dbg !3747
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3748, metadata !DIExpression()), !dbg !3755
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3757, metadata !DIExpression()), !dbg !3758
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3759, metadata !DIExpression()), !dbg !3760
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3761, metadata !DIExpression()), !dbg !3762
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3763
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3764
  %div = sdiv i64 %1, 64, !dbg !3764
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3765
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3763
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3766
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3767
  %conv.i = trunc i64 %4 to i32, !dbg !3767
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !3768
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3769
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3769
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !3769
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3770
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3771
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3772
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #8, !dbg !3774
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3775

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3776
  %12 = bitcast i64* %11 to i8*, !dbg !3776
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3776
  %shr.i = ashr i64 %13, 3, !dbg !3776
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3776
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3778
  %and.i = and i64 %14, 7, !dbg !3778
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3778
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3778
  call void asm sideeffect "orb ${1:b},$0", "=*m,iq,*m,~{memory},~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %shl.i, i8* %add.ptr.i) #8, !dbg !3779, !srcloc !3780
  br label %arch_set_bit.exit, !dbg !3781

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3782
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3784
  call void asm sideeffect " btsq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #8, !dbg !3785, !srcloc !3786
  br label %arch_set_bit.exit

arch_set_bit.exit:                                ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3787
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_unlock_bus(%struct.i2c_adapter* %adapter, i32 %flags) #2 !dbg !3788 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  %flags.addr = alloca i32, align 4
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3789, metadata !DIExpression()), !dbg !3790
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3791, metadata !DIExpression()), !dbg !3792
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3793
  %lock_ops = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 4, !dbg !3794
  %1 = load %struct.i2c_lock_operations*, %struct.i2c_lock_operations** %lock_ops, align 8, !dbg !3794
  %unlock_bus = getelementptr inbounds %struct.i2c_lock_operations, %struct.i2c_lock_operations* %1, i32 0, i32 2, !dbg !3795
  %2 = load void (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)** %unlock_bus, align 8, !dbg !3795
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adapter.addr, align 8, !dbg !3796
  %4 = load i32, i32* %flags.addr, align 4, !dbg !3797
  call void %2(%struct.i2c_adapter* %3, i32 %4) #6, !dbg !3793
  ret void, !dbg !3798
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i1 @kasan_check_write(i8* %p, i32 %size) #2 !dbg !3799 {
entry:
  %p.addr = alloca i8*, align 8
  %size.addr = alloca i32, align 4
  store i8* %p, i8** %p.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %p.addr, metadata !3803, metadata !DIExpression()), !dbg !3804
  store i32 %size, i32* %size.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %size.addr, metadata !3805, metadata !DIExpression()), !dbg !3806
  ret i1 true, !dbg !3807
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @kcsan_check_access(i8* %ptr, i64 %size, i32 %type) #2 !dbg !3808 {
entry:
  %ptr.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %type.addr = alloca i32, align 4
  store i8* %ptr, i8** %ptr.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %ptr.addr, metadata !3812, metadata !DIExpression()), !dbg !3813
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3814, metadata !DIExpression()), !dbg !3815
  store i32 %type, i32* %type.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %type.addr, metadata !3816, metadata !DIExpression()), !dbg !3817
  ret void, !dbg !3818
}

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #5

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_mark_adapter_resumed(%struct.i2c_adapter* %adap) #2 !dbg !3819 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !3820, metadata !DIExpression()), !dbg !3821
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3822
  call void @i2c_lock_bus(%struct.i2c_adapter* %0, i32 1) #6, !dbg !3823
  %1 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3824
  %locked_flags = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %1, i32 0, i32 10, !dbg !3825
  call void @clear_bit(i64 0, i64* %locked_flags) #6, !dbg !3826
  %2 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !3827
  call void @i2c_unlock_bus(%struct.i2c_adapter* %2, i32 1) #6, !dbg !3828
  ret void, !dbg !3829
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @clear_bit(i64 %nr, i64* %addr) #2 !dbg !3830 {
entry:
  %nr.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr.i, metadata !3831, metadata !DIExpression()), !dbg !3833
  %addr.addr.i = alloca i64*, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr.i, metadata !3835, metadata !DIExpression()), !dbg !3836
  %v.addr.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %v.addr.i, metadata !3748, metadata !DIExpression()), !dbg !3837
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !3757, metadata !DIExpression()), !dbg !3839
  %nr.addr = alloca i64, align 8
  %addr.addr = alloca i64*, align 8
  store i64 %nr, i64* %nr.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %nr.addr, metadata !3840, metadata !DIExpression()), !dbg !3841
  store i64* %addr, i64** %addr.addr, align 8
  call void @llvm.dbg.declare(metadata i64** %addr.addr, metadata !3842, metadata !DIExpression()), !dbg !3843
  %0 = load i64*, i64** %addr.addr, align 8, !dbg !3844
  %1 = load i64, i64* %nr.addr, align 8, !dbg !3845
  %div = sdiv i64 %1, 64, !dbg !3845
  %add.ptr = getelementptr i64, i64* %0, i64 %div, !dbg !3846
  %2 = bitcast i64* %add.ptr to i8*, !dbg !3844
  store i8* %2, i8** %v.addr.i, align 8
  store i64 8, i64* %size.addr.i, align 8
  %3 = load i8*, i8** %v.addr.i, align 8, !dbg !3847
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !3848
  %conv.i = trunc i64 %4 to i32, !dbg !3848
  %call.i = call zeroext i1 @kasan_check_write(i8* %3, i32 %conv.i) #9, !dbg !3849
  %5 = load i8*, i8** %v.addr.i, align 8, !dbg !3850
  %6 = load i64, i64* %size.addr.i, align 8, !dbg !3850
  call void @kcsan_check_access(i8* %5, i64 %6, i32 5) #9, !dbg !3850
  %7 = load i64, i64* %nr.addr, align 8, !dbg !3851
  %8 = load i64*, i64** %addr.addr, align 8, !dbg !3852
  store i64 %7, i64* %nr.addr.i, align 8
  store i64* %8, i64** %addr.addr.i, align 8
  %9 = load i64, i64* %nr.addr.i, align 8, !dbg !3853
  %10 = call i1 @llvm.is.constant.i64(i64 %9) #8, !dbg !3855
  br i1 %10, label %if.then.i, label %if.else.i, !dbg !3856

if.then.i:                                        ; preds = %entry
  %11 = load i64*, i64** %addr.addr.i, align 8, !dbg !3857
  %12 = bitcast i64* %11 to i8*, !dbg !3857
  %13 = load i64, i64* %nr.addr.i, align 8, !dbg !3857
  %shr.i = ashr i64 %13, 3, !dbg !3857
  %add.ptr.i = getelementptr i8, i8* %12, i64 %shr.i, !dbg !3857
  %14 = load i64, i64* %nr.addr.i, align 8, !dbg !3859
  %and.i = and i64 %14, 7, !dbg !3859
  %sh_prom.i = trunc i64 %and.i to i32, !dbg !3859
  %shl.i = shl i32 1, %sh_prom.i, !dbg !3859
  %neg.i = xor i32 %shl.i, -1, !dbg !3860
  call void asm sideeffect "andb ${1:b},$0", "=*m,iq,*m,~{dirflag},~{fpsr},~{flags}"(i8* %add.ptr.i, i32 %neg.i, i8* %add.ptr.i) #8, !dbg !3861, !srcloc !3862
  br label %arch_clear_bit.exit, !dbg !3863

if.else.i:                                        ; preds = %entry
  %15 = load i64*, i64** %addr.addr.i, align 8, !dbg !3864
  %16 = load i64, i64* %nr.addr.i, align 8, !dbg !3866
  call void asm sideeffect " btrq  $1,$0", "*m,Ir,~{memory},~{dirflag},~{fpsr},~{flags}"(i64* %15, i64 %16) #8, !dbg !3867, !srcloc !3868
  br label %arch_clear_bit.exit

arch_clear_bit.exit:                              ; preds = %if.then.i, %if.else.i
  ret void, !dbg !3869
}

attributes #0 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { nounwind readnone speculatable willreturn }
attributes #4 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #5 = { nounwind readnone willreturn }
attributes #6 = { noredzone }
attributes #7 = { cold noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2380, !2381, !2382, !2383}
!llvm.ident = !{!2384}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_brcmstb_i2c_driver_init174", scope: !2, file: !3, line: 756, type: !88, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !81, globals: !2193, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/i2c/busses/i2c-brcmstb.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69, !75}
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
!50 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irq_domain_bus_token", file: !51, line: 76, baseType: !7, size: 32, elements: !52)
!51 = !DIFile(filename: "./include/linux/irqdomain.h", directory: "/home/lizy2001/genbc/linux")
!52 = !{!53, !54, !55, !56, !57, !58, !59, !60, !61, !62, !63}
!53 = !DIEnumerator(name: "DOMAIN_BUS_ANY", value: 0, isUnsigned: true)
!54 = !DIEnumerator(name: "DOMAIN_BUS_WIRED", value: 1, isUnsigned: true)
!55 = !DIEnumerator(name: "DOMAIN_BUS_GENERIC_MSI", value: 2, isUnsigned: true)
!56 = !DIEnumerator(name: "DOMAIN_BUS_PCI_MSI", value: 3, isUnsigned: true)
!57 = !DIEnumerator(name: "DOMAIN_BUS_PLATFORM_MSI", value: 4, isUnsigned: true)
!58 = !DIEnumerator(name: "DOMAIN_BUS_NEXUS", value: 5, isUnsigned: true)
!59 = !DIEnumerator(name: "DOMAIN_BUS_IPI", value: 6, isUnsigned: true)
!60 = !DIEnumerator(name: "DOMAIN_BUS_FSL_MC_MSI", value: 7, isUnsigned: true)
!61 = !DIEnumerator(name: "DOMAIN_BUS_TI_SCI_INTA_MSI", value: 8, isUnsigned: true)
!62 = !DIEnumerator(name: "DOMAIN_BUS_WAKEUP", value: 9, isUnsigned: true)
!63 = !DIEnumerator(name: "DOMAIN_BUS_VMD_MSI", value: 10, isUnsigned: true)
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, file: !65, line: 10, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "./include/linux/stddef.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68}
!67 = !DIEnumerator(name: "false", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "true", value: 1, isUnsigned: true)
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "irqreturn", file: !70, line: 11, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/irqreturn.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74}
!72 = !DIEnumerator(name: "IRQ_NONE", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "IRQ_HANDLED", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "IRQ_WAKE_THREAD", value: 2, isUnsigned: true)
!75 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "bsc_xfer_cmd", file: !3, line: 97, baseType: !7, size: 32, elements: !76)
!76 = !{!77, !78, !79, !80}
!77 = !DIEnumerator(name: "CMD_WR", value: 0, isUnsigned: true)
!78 = !DIEnumerator(name: "CMD_RD", value: 1, isUnsigned: true)
!79 = !DIEnumerator(name: "CMD_WR_NOACK", value: 2, isUnsigned: true)
!80 = !DIEnumerator(name: "CMD_RD_NOACK", value: 3, isUnsigned: true)
!81 = !{!82, !85, !87, !88, !89, !200, !2188, !98, !2190, !2192}
!82 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !83, size: 64)
!83 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !84, line: 76, flags: DIFlagFwdDecl)
!84 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!85 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !86, line: 148, baseType: !7)
!86 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!87 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!88 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device", file: !91, line: 22, size: 6208, elements: !92)
!91 = !DIFile(filename: "./include/linux/platform_device.h", directory: "/home/lizy2001/genbc/linux")
!92 = !{!93, !97, !99, !102, !2157, !2158, !2159, !2160, !2174, !2182, !2183, !2186}
!93 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !90, file: !91, line: 23, baseType: !94, size: 64)
!94 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !95, size: 64)
!95 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !96)
!96 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!97 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !90, file: !91, line: 24, baseType: !98, size: 32, offset: 64)
!98 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!99 = !DIDerivedType(tag: DW_TAG_member, name: "id_auto", scope: !90, file: !91, line: 25, baseType: !100, size: 8, offset: 96)
!100 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !86, line: 30, baseType: !101)
!101 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !90, file: !91, line: 26, baseType: !103, size: 5568, offset: 128)
!103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !104)
!104 = !{!105, !1604, !1606, !1609, !1610, !1661, !1755, !1756, !1757, !1758, !1759, !1768, !1873, !1886, !2082, !2083, !2087, !2089, !2090, !2091, !2095, !2101, !2102, !2105, !2106, !2107, !2110, !2111, !2112, !2113, !2145, !2146, !2147, !2150, !2153, !2154, !2155, !2156}
!105 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !103, file: !30, line: 462, baseType: !106, size: 512)
!106 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !107, line: 64, size: 512, elements: !108)
!107 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!108 = !{!109, !110, !116, !118, !178, !1441, !1594, !1599, !1600, !1601, !1602, !1603}
!109 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !106, file: !107, line: 65, baseType: !94, size: 64)
!110 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !106, file: !107, line: 66, baseType: !111, size: 128, offset: 64)
!111 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !86, line: 178, size: 128, elements: !112)
!112 = !{!113, !115}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !111, file: !86, line: 179, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !111, size: 64)
!115 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !111, file: !86, line: 179, baseType: !114, size: 64, offset: 64)
!116 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !106, file: !107, line: 67, baseType: !117, size: 64, offset: 192)
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!118 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !106, file: !107, line: 68, baseType: !119, size: 64, offset: 256)
!119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !120, size: 64)
!120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !107, line: 192, size: 704, elements: !121)
!121 = !{!122, !123, !139, !140}
!122 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !120, file: !107, line: 193, baseType: !111, size: 128)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !120, file: !107, line: 194, baseType: !124, offset: 128)
!124 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !125, line: 83, baseType: !126)
!125 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!126 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !125, line: 71, elements: !127)
!127 = !{!128}
!128 = !DIDerivedType(tag: DW_TAG_member, scope: !126, file: !125, line: 72, baseType: !129)
!129 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !126, file: !125, line: 72, elements: !130)
!130 = !{!131}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !129, file: !125, line: 73, baseType: !132)
!132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !125, line: 20, elements: !133)
!133 = !{!134}
!134 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !132, file: !125, line: 21, baseType: !135)
!135 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !136, line: 25, baseType: !137)
!136 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!137 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !136, line: 25, elements: !138)
!138 = !{}
!139 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !120, file: !107, line: 195, baseType: !106, size: 512, offset: 128)
!140 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !120, file: !107, line: 196, baseType: !141, size: 64, offset: 640)
!141 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !142, size: 64)
!142 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !143)
!143 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !107, line: 156, size: 192, elements: !144)
!144 = !{!145, !150, !155}
!145 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !143, file: !107, line: 157, baseType: !146, size: 64)
!146 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !147)
!147 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !148, size: 64)
!148 = !DISubroutineType(types: !149)
!149 = !{!98, !119, !117}
!150 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !143, file: !107, line: 158, baseType: !151, size: 64, offset: 64)
!151 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !152)
!152 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !153, size: 64)
!153 = !DISubroutineType(types: !154)
!154 = !{!94, !119, !117}
!155 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !143, file: !107, line: 159, baseType: !156, size: 64, offset: 128)
!156 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !157)
!157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !158, size: 64)
!158 = !DISubroutineType(types: !159)
!159 = !{!98, !119, !117, !160}
!160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !161, size: 64)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !107, line: 148, size: 20736, elements: !162)
!162 = !{!163, !168, !172, !173, !177}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !161, file: !107, line: 149, baseType: !164, size: 192)
!164 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 192, elements: !166)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !96, size: 64)
!166 = !{!167}
!167 = !DISubrange(count: 3)
!168 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !161, file: !107, line: 150, baseType: !169, size: 4096, offset: 192)
!169 = !DICompositeType(tag: DW_TAG_array_type, baseType: !165, size: 4096, elements: !170)
!170 = !{!171}
!171 = !DISubrange(count: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !161, file: !107, line: 151, baseType: !98, size: 32, offset: 4288)
!173 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !161, file: !107, line: 152, baseType: !174, size: 16384, offset: 4320)
!174 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 16384, elements: !175)
!175 = !{!176}
!176 = !DISubrange(count: 2048)
!177 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !161, file: !107, line: 153, baseType: !98, size: 32, offset: 20704)
!178 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !106, file: !107, line: 69, baseType: !179, size: 64, offset: 320)
!179 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !180, size: 64)
!180 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !107, line: 138, size: 448, elements: !181)
!181 = !{!182, !186, !215, !217, !1389, !1420, !1424}
!182 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !180, file: !107, line: 139, baseType: !183, size: 64)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !184, size: 64)
!184 = !DISubroutineType(types: !185)
!185 = !{null, !117}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !180, file: !107, line: 140, baseType: !187, size: 64, offset: 64)
!187 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !188, size: 64)
!188 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !189)
!189 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !190, line: 230, size: 128, elements: !191)
!190 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!191 = !{!192, !208}
!192 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !189, file: !190, line: 231, baseType: !193, size: 64)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!196, !117, !201, !165}
!196 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !86, line: 60, baseType: !197)
!197 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !198, line: 73, baseType: !199)
!198 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!199 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !198, line: 15, baseType: !200)
!200 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !190, line: 30, size: 128, elements: !203)
!203 = !{!204, !205}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !202, file: !190, line: 31, baseType: !94, size: 64)
!205 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !202, file: !190, line: 32, baseType: !206, size: 16, offset: 64)
!206 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !86, line: 19, baseType: !207)
!207 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!208 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !189, file: !190, line: 232, baseType: !209, size: 64, offset: 64)
!209 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !210, size: 64)
!210 = !DISubroutineType(types: !211)
!211 = !{!196, !117, !201, !94, !212}
!212 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !86, line: 55, baseType: !213)
!213 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !198, line: 72, baseType: !214)
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !198, line: 16, baseType: !87)
!215 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !180, file: !107, line: 141, baseType: !216, size: 64, offset: 128)
!216 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !201, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !180, file: !107, line: 142, baseType: !218, size: 64, offset: 192)
!218 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !221)
!221 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !190, line: 84, size: 320, elements: !222)
!222 = !{!223, !224, !228, !1386, !1387}
!223 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !221, file: !190, line: 85, baseType: !94, size: 64)
!224 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !221, file: !190, line: 86, baseType: !225, size: 64, offset: 64)
!225 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !226, size: 64)
!226 = !DISubroutineType(types: !227)
!227 = !{!206, !117, !201, !98}
!228 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !221, file: !190, line: 88, baseType: !229, size: 64, offset: 128)
!229 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !230, size: 64)
!230 = !DISubroutineType(types: !231)
!231 = !{!206, !117, !232, !98}
!232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !233, size: 64)
!233 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !190, line: 168, size: 448, elements: !234)
!234 = !{!235, !236, !237, !238, !248, !249}
!235 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !233, file: !190, line: 169, baseType: !202, size: 128)
!236 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !233, file: !190, line: 170, baseType: !212, size: 64, offset: 128)
!237 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !233, file: !190, line: 171, baseType: !88, size: 64, offset: 192)
!238 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !233, file: !190, line: 172, baseType: !239, size: 64, offset: 256)
!239 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !240, size: 64)
!240 = !DISubroutineType(types: !241)
!241 = !{!196, !242, !117, !232, !165, !245, !212}
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !244, line: 526, flags: DIFlagFwdDecl)
!244 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!245 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !86, line: 46, baseType: !246)
!246 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !198, line: 88, baseType: !247)
!247 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!248 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !233, file: !190, line: 174, baseType: !239, size: 64, offset: 320)
!249 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !233, file: !190, line: 176, baseType: !250, size: 64, offset: 384)
!250 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!251 = !DISubroutineType(types: !252)
!252 = !{!98, !242, !117, !232, !253}
!253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !254, size: 64)
!254 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !255, line: 305, size: 1472, elements: !256)
!255 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!256 = !{!257, !258, !259, !260, !261, !269, !270, !1360, !1366, !1367, !1372, !1373, !1376, !1380, !1381, !1382, !1383, !1384}
!257 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !254, file: !255, line: 308, baseType: !87, size: 64)
!258 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !254, file: !255, line: 309, baseType: !87, size: 64, offset: 64)
!259 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !254, file: !255, line: 313, baseType: !253, size: 64, offset: 128)
!260 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !254, file: !255, line: 313, baseType: !253, size: 64, offset: 192)
!261 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !254, file: !255, line: 315, baseType: !262, size: 192, align: 64, offset: 256)
!262 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !263, line: 24, size: 192, align: 64, elements: !264)
!263 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!264 = !{!265, !266, !268}
!265 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !262, file: !263, line: 25, baseType: !87, size: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !262, file: !263, line: 26, baseType: !267, size: 64, offset: 64)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!268 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !262, file: !263, line: 27, baseType: !267, size: 64, offset: 128)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !254, file: !255, line: 323, baseType: !87, size: 64, offset: 448)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !254, file: !255, line: 327, baseType: !271, size: 64, offset: 512)
!271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !272, size: 64)
!272 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !255, line: 388, size: 7296, elements: !273)
!273 = !{!274, !1356}
!274 = !DIDerivedType(tag: DW_TAG_member, scope: !272, file: !255, line: 389, baseType: !275, size: 7296)
!275 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !272, file: !255, line: 389, size: 7296, elements: !276)
!276 = !{!277, !278, !282, !288, !292, !293, !294, !295, !296, !304, !309, !310, !311, !312, !321, !322, !323, !332, !333, !334, !335, !336, !337, !338, !339, !340, !341, !342, !343, !344, !345, !346, !347, !348, !349, !350, !351, !352, !353, !354, !358, !366, !369, !417, !418, !1326, !1327, !1330, !1334, !1335, !1338, !1339, !1340, !1343, !1355}
!277 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !275, file: !255, line: 390, baseType: !253, size: 64)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !275, file: !255, line: 391, baseType: !279, size: 64, offset: 64)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !263, line: 31, size: 64, elements: !280)
!280 = !{!281}
!281 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !279, file: !263, line: 32, baseType: !267, size: 64)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !275, file: !255, line: 392, baseType: !283, size: 64, offset: 128)
!283 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !284, line: 23, baseType: !285)
!284 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!285 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !286, line: 31, baseType: !287)
!286 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!287 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !275, file: !255, line: 394, baseType: !289, size: 64, offset: 192)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DISubroutineType(types: !291)
!291 = !{!87, !242, !87, !87, !87, !87}
!292 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !275, file: !255, line: 398, baseType: !87, size: 64, offset: 256)
!293 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !275, file: !255, line: 399, baseType: !87, size: 64, offset: 320)
!294 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !275, file: !255, line: 405, baseType: !87, size: 64, offset: 384)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !275, file: !255, line: 406, baseType: !87, size: 64, offset: 448)
!296 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !275, file: !255, line: 407, baseType: !297, size: 64, offset: 512)
!297 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !298, size: 64)
!298 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !244, line: 286, baseType: !299)
!299 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !244, line: 286, size: 64, elements: !300)
!300 = !{!301}
!301 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !299, file: !244, line: 286, baseType: !302, size: 64)
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !303, line: 18, baseType: !87)
!303 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!304 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !275, file: !255, line: 416, baseType: !305, size: 32, offset: 576)
!305 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !86, line: 168, baseType: !306)
!306 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 166, size: 32, elements: !307)
!307 = !{!308}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !306, file: !86, line: 167, baseType: !98, size: 32)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !275, file: !255, line: 428, baseType: !305, size: 32, offset: 608)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !275, file: !255, line: 437, baseType: !305, size: 32, offset: 640)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !275, file: !255, line: 447, baseType: !305, size: 32, offset: 672)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !275, file: !255, line: 450, baseType: !313, size: 64, offset: 704)
!313 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !314, line: 13, baseType: !315)
!314 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!315 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !86, line: 175, baseType: !316)
!316 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !86, line: 173, size: 64, elements: !317)
!317 = !{!318}
!318 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !316, file: !86, line: 174, baseType: !319, size: 64)
!319 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !284, line: 22, baseType: !320)
!320 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !286, line: 30, baseType: !247)
!321 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !275, file: !255, line: 452, baseType: !98, size: 32, offset: 768)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !275, file: !255, line: 454, baseType: !124, offset: 800)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !275, file: !255, line: 457, baseType: !324, size: 256, offset: 832)
!324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !325, line: 35, size: 256, elements: !326)
!325 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!326 = !{!327, !328, !329, !331}
!327 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !324, file: !325, line: 36, baseType: !313, size: 64)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !324, file: !325, line: 42, baseType: !313, size: 64, offset: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !324, file: !325, line: 46, baseType: !330, offset: 128)
!330 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !125, line: 29, baseType: !132)
!331 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !324, file: !325, line: 47, baseType: !111, size: 128, offset: 128)
!332 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !275, file: !255, line: 459, baseType: !111, size: 128, offset: 1088)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !275, file: !255, line: 466, baseType: !87, size: 64, offset: 1216)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !275, file: !255, line: 467, baseType: !87, size: 64, offset: 1280)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !275, file: !255, line: 469, baseType: !87, size: 64, offset: 1344)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !275, file: !255, line: 470, baseType: !87, size: 64, offset: 1408)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !275, file: !255, line: 471, baseType: !315, size: 64, offset: 1472)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !275, file: !255, line: 472, baseType: !87, size: 64, offset: 1536)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !275, file: !255, line: 473, baseType: !87, size: 64, offset: 1600)
!340 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !275, file: !255, line: 474, baseType: !87, size: 64, offset: 1664)
!341 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !275, file: !255, line: 475, baseType: !87, size: 64, offset: 1728)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !275, file: !255, line: 477, baseType: !124, offset: 1792)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !275, file: !255, line: 478, baseType: !87, size: 64, offset: 1792)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !275, file: !255, line: 478, baseType: !87, size: 64, offset: 1856)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !275, file: !255, line: 478, baseType: !87, size: 64, offset: 1920)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !275, file: !255, line: 478, baseType: !87, size: 64, offset: 1984)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !275, file: !255, line: 479, baseType: !87, size: 64, offset: 2048)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !275, file: !255, line: 479, baseType: !87, size: 64, offset: 2112)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !275, file: !255, line: 479, baseType: !87, size: 64, offset: 2176)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !275, file: !255, line: 480, baseType: !87, size: 64, offset: 2240)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !275, file: !255, line: 480, baseType: !87, size: 64, offset: 2304)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !275, file: !255, line: 480, baseType: !87, size: 64, offset: 2368)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !275, file: !255, line: 480, baseType: !87, size: 64, offset: 2432)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !275, file: !255, line: 482, baseType: !355, size: 2816, offset: 2496)
!355 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 2816, elements: !356)
!356 = !{!357}
!357 = !DISubrange(count: 44)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !275, file: !255, line: 488, baseType: !359, size: 256, offset: 5312)
!359 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !360, line: 60, size: 256, elements: !361)
!360 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!361 = !{!362}
!362 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !359, file: !360, line: 61, baseType: !363, size: 256)
!363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !313, size: 256, elements: !364)
!364 = !{!365}
!365 = !DISubrange(count: 4)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !275, file: !255, line: 490, baseType: !367, size: 64, offset: 5568)
!367 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !368, size: 64)
!368 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !255, line: 490, flags: DIFlagFwdDecl)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !275, file: !255, line: 493, baseType: !370, size: 896, offset: 5632)
!370 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !371, line: 53, baseType: !372)
!371 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!372 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !371, line: 13, size: 896, elements: !373)
!373 = !{!374, !375, !376, !377, !380, !381, !388, !389, !409, !410, !413}
!374 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !372, file: !371, line: 18, baseType: !283, size: 64)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !372, file: !371, line: 28, baseType: !315, size: 64, offset: 64)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !372, file: !371, line: 31, baseType: !324, size: 256, offset: 128)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !372, file: !371, line: 32, baseType: !378, size: 64, offset: 384)
!378 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !379, size: 64)
!379 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !371, line: 32, flags: DIFlagFwdDecl)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !372, file: !371, line: 37, baseType: !207, size: 16, offset: 448)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !372, file: !371, line: 40, baseType: !382, size: 192, offset: 512)
!382 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !383, line: 53, size: 192, elements: !384)
!383 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!384 = !{!385, !386, !387}
!385 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !382, file: !383, line: 54, baseType: !313, size: 64)
!386 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !382, file: !383, line: 55, baseType: !124, offset: 64)
!387 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !382, file: !383, line: 59, baseType: !111, size: 128, offset: 64)
!388 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !372, file: !371, line: 41, baseType: !88, size: 64, offset: 704)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !372, file: !371, line: 42, baseType: !390, size: 64, offset: 768)
!390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !391, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !392)
!392 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !393, line: 13, size: 896, elements: !394)
!393 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!394 = !{!395, !396, !397, !398, !399, !400, !401, !402, !403, !404, !405, !406, !407, !408}
!395 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !392, file: !393, line: 14, baseType: !88, size: 64)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !392, file: !393, line: 15, baseType: !87, size: 64, offset: 64)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !392, file: !393, line: 17, baseType: !87, size: 64, offset: 128)
!398 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !392, file: !393, line: 17, baseType: !87, size: 64, offset: 192)
!399 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !392, file: !393, line: 19, baseType: !200, size: 64, offset: 256)
!400 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !392, file: !393, line: 21, baseType: !200, size: 64, offset: 320)
!401 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !392, file: !393, line: 22, baseType: !200, size: 64, offset: 384)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !392, file: !393, line: 23, baseType: !200, size: 64, offset: 448)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !392, file: !393, line: 24, baseType: !200, size: 64, offset: 512)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !392, file: !393, line: 25, baseType: !200, size: 64, offset: 576)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !392, file: !393, line: 26, baseType: !200, size: 64, offset: 640)
!406 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !392, file: !393, line: 27, baseType: !200, size: 64, offset: 704)
!407 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !392, file: !393, line: 28, baseType: !200, size: 64, offset: 768)
!408 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !392, file: !393, line: 29, baseType: !200, size: 64, offset: 832)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !372, file: !371, line: 44, baseType: !305, size: 32, offset: 832)
!410 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !372, file: !371, line: 50, baseType: !411, size: 16, offset: 864)
!411 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !284, line: 19, baseType: !412)
!412 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !286, line: 24, baseType: !207)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !372, file: !371, line: 51, baseType: !414, size: 16, offset: 880)
!414 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !284, line: 18, baseType: !415)
!415 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !286, line: 23, baseType: !416)
!416 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !275, file: !255, line: 495, baseType: !87, size: 64, offset: 6528)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !275, file: !255, line: 497, baseType: !419, size: 64, offset: 6592)
!419 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !420, size: 64)
!420 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !255, line: 381, size: 384, elements: !421)
!421 = !{!422, !423, !1325}
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !420, file: !255, line: 382, baseType: !305, size: 32)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !420, file: !255, line: 383, baseType: !424, size: 128, offset: 64)
!424 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !255, line: 376, size: 128, elements: !425)
!425 = !{!426, !1323}
!426 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !424, file: !255, line: 377, baseType: !427, size: 64)
!427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !428, size: 64)
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !429, line: 640, size: 48640, elements: !430)
!429 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!430 = !{!431, !439, !441, !442, !448, !449, !450, !451, !452, !453, !454, !455, !459, !477, !488, !583, !584, !585, !596, !597, !599, !600, !601, !602, !608, !609, !610, !611, !612, !613, !614, !615, !616, !617, !618, !619, !620, !621, !622, !623, !681, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !737, !739, !740, !741, !753, !755, !756, !757, !758, !759, !765, !766, !767, !768, !769, !770, !771, !783, !788, !792, !793, !794, !797, !801, !804, !807, !810, !813, !816, !819, !822, !828, !829, !830, !836, !837, !838, !839, !840, !849, !850, !851, !852, !853, !858, !859, !860, !863, !864, !867, !870, !873, !876, !879, !882, !883, !963, !966, !969, !970, !973, !974, !975, !981, !982, !983, !996, !997, !998, !1008, !1013, !1016, !1114, !1115, !1116, !1117, !1118, !1119, !1120, !1121, !1138, !1139, !1140, !1141, !1142, !1143, !1144, !1145, !1146}
!431 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !428, file: !429, line: 646, baseType: !432, size: 128)
!432 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !433, line: 56, size: 128, elements: !434)
!433 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!434 = !{!435, !436}
!435 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !432, file: !433, line: 57, baseType: !87, size: 64)
!436 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !432, file: !433, line: 58, baseType: !437, size: 32, offset: 64)
!437 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !284, line: 21, baseType: !438)
!438 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !286, line: 27, baseType: !7)
!439 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !428, file: !429, line: 649, baseType: !440, size: 64, offset: 128)
!440 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !200)
!441 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !428, file: !429, line: 657, baseType: !88, size: 64, offset: 192)
!442 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !428, file: !429, line: 658, baseType: !443, size: 32, offset: 256)
!443 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !444, line: 113, baseType: !445)
!444 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !444, line: 111, size: 32, elements: !446)
!446 = !{!447}
!447 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !445, file: !444, line: 112, baseType: !305, size: 32)
!448 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !428, file: !429, line: 660, baseType: !7, size: 32, offset: 288)
!449 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !428, file: !429, line: 661, baseType: !7, size: 32, offset: 320)
!450 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !428, file: !429, line: 684, baseType: !98, size: 32, offset: 352)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !428, file: !429, line: 686, baseType: !98, size: 32, offset: 384)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !428, file: !429, line: 687, baseType: !98, size: 32, offset: 416)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !428, file: !429, line: 688, baseType: !98, size: 32, offset: 448)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !428, file: !429, line: 689, baseType: !7, size: 32, offset: 480)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !428, file: !429, line: 691, baseType: !456, size: 64, offset: 512)
!456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !457, size: 64)
!457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !458)
!458 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !429, line: 691, flags: DIFlagFwdDecl)
!459 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !428, file: !429, line: 692, baseType: !460, size: 832, offset: 576)
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !429, line: 451, size: 832, elements: !461)
!461 = !{!462, !467, !468, !469, !470, !471, !472, !473, !474, !475}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !460, file: !429, line: 453, baseType: !463, size: 128)
!463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !429, line: 325, size: 128, elements: !464)
!464 = !{!465, !466}
!465 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !463, file: !429, line: 326, baseType: !87, size: 64)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !463, file: !429, line: 327, baseType: !437, size: 32, offset: 64)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !460, file: !429, line: 454, baseType: !262, size: 192, align: 64, offset: 128)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !460, file: !429, line: 455, baseType: !111, size: 128, offset: 320)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !460, file: !429, line: 456, baseType: !7, size: 32, offset: 448)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !460, file: !429, line: 458, baseType: !283, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !460, file: !429, line: 459, baseType: !283, size: 64, offset: 576)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !460, file: !429, line: 460, baseType: !283, size: 64, offset: 640)
!473 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !460, file: !429, line: 461, baseType: !283, size: 64, offset: 704)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !460, file: !429, line: 463, baseType: !283, size: 64, offset: 768)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !460, file: !429, line: 465, baseType: !476, offset: 832)
!476 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !429, line: 415, elements: !138)
!477 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !428, file: !429, line: 693, baseType: !478, size: 384, offset: 1408)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !429, line: 489, size: 384, elements: !479)
!479 = !{!480, !481, !482, !483, !484, !485, !486}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !478, file: !429, line: 490, baseType: !111, size: 128)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !478, file: !429, line: 491, baseType: !87, size: 64, offset: 128)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !478, file: !429, line: 492, baseType: !87, size: 64, offset: 192)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !478, file: !429, line: 493, baseType: !7, size: 32, offset: 256)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !478, file: !429, line: 494, baseType: !207, size: 16, offset: 288)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !478, file: !429, line: 495, baseType: !207, size: 16, offset: 304)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !478, file: !429, line: 497, baseType: !487, size: 64, offset: 320)
!487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !478, size: 64)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !428, file: !429, line: 697, baseType: !489, size: 1792, offset: 1792)
!489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !429, line: 507, size: 1792, elements: !490)
!490 = !{!491, !492, !493, !494, !495, !496, !497, !498, !499, !500, !501, !502, !503, !504, !580, !581}
!491 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !489, file: !429, line: 508, baseType: !262, size: 192, align: 64)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !489, file: !429, line: 515, baseType: !283, size: 64, offset: 192)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !489, file: !429, line: 516, baseType: !283, size: 64, offset: 256)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !489, file: !429, line: 517, baseType: !283, size: 64, offset: 320)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !489, file: !429, line: 518, baseType: !283, size: 64, offset: 384)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !489, file: !429, line: 519, baseType: !283, size: 64, offset: 448)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !489, file: !429, line: 526, baseType: !319, size: 64, offset: 512)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !489, file: !429, line: 527, baseType: !283, size: 64, offset: 576)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !489, file: !429, line: 528, baseType: !7, size: 32, offset: 640)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !489, file: !429, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !489, file: !429, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !489, file: !429, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !489, file: !429, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!504 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !489, file: !429, line: 563, baseType: !505, size: 512, offset: 704)
!505 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !506)
!506 = !{!507, !515, !516, !521, !573, !577, !578, !579}
!507 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !505, file: !6, line: 119, baseType: !508, size: 256)
!508 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !509, line: 9, size: 256, elements: !510)
!509 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!510 = !{!511, !512}
!511 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !508, file: !509, line: 10, baseType: !262, size: 192, align: 64)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !508, file: !509, line: 11, baseType: !513, size: 64, offset: 192)
!513 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !514, line: 29, baseType: !319)
!514 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!515 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !505, file: !6, line: 120, baseType: !513, size: 64, offset: 256)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !505, file: !6, line: 121, baseType: !517, size: 64, offset: 320)
!517 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !518, size: 64)
!518 = !DISubroutineType(types: !519)
!519 = !{!5, !520}
!520 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!521 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !505, file: !6, line: 122, baseType: !522, size: 64, offset: 384)
!522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !523, size: 64)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !524)
!524 = !{!525, !545, !546, !549, !559, !560, !568, !572}
!525 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !523, file: !6, line: 160, baseType: !526, size: 64)
!526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !527, size: 64)
!527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !528)
!528 = !{!529, !530, !531, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541}
!529 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !527, file: !6, line: 215, baseType: !330)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !527, file: !6, line: 216, baseType: !7, size: 32)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !527, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !527, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !527, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !527, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !527, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !527, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !527, file: !6, line: 233, baseType: !513, size: 64, offset: 128)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !527, file: !6, line: 234, baseType: !520, size: 64, offset: 192)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !527, file: !6, line: 235, baseType: !513, size: 64, offset: 256)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !527, file: !6, line: 236, baseType: !520, size: 64, offset: 320)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !527, file: !6, line: 237, baseType: !542, size: 4096, offset: 512)
!542 = !DICompositeType(tag: DW_TAG_array_type, baseType: !523, size: 4096, elements: !543)
!543 = !{!544}
!544 = !DISubrange(count: 8)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !523, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !523, file: !6, line: 162, baseType: !547, size: 32, offset: 96)
!547 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !86, line: 27, baseType: !548)
!548 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !198, line: 96, baseType: !98)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !523, file: !6, line: 163, baseType: !550, size: 32, offset: 128)
!550 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !551, line: 276, baseType: !552)
!551 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!552 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !551, line: 276, size: 32, elements: !553)
!553 = !{!554}
!554 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !552, file: !551, line: 276, baseType: !555, size: 32)
!555 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !551, line: 70, baseType: !556)
!556 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !551, line: 65, size: 32, elements: !557)
!557 = !{!558}
!558 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !556, file: !551, line: 66, baseType: !7, size: 32)
!559 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !523, file: !6, line: 164, baseType: !520, size: 64, offset: 192)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !523, file: !6, line: 165, baseType: !561, size: 128, offset: 256)
!561 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !509, line: 14, size: 128, elements: !562)
!562 = !{!563}
!563 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !561, file: !509, line: 15, baseType: !564, size: 128)
!564 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !263, line: 125, size: 128, elements: !565)
!565 = !{!566, !567}
!566 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !564, file: !263, line: 126, baseType: !279, size: 64)
!567 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !564, file: !263, line: 127, baseType: !267, size: 64, offset: 64)
!568 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !523, file: !6, line: 166, baseType: !569, size: 64, offset: 384)
!569 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !570, size: 64)
!570 = !DISubroutineType(types: !571)
!571 = !{!513}
!572 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !523, file: !6, line: 167, baseType: !513, size: 64, offset: 448)
!573 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !505, file: !6, line: 123, baseType: !574, size: 8, offset: 448)
!574 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !284, line: 17, baseType: !575)
!575 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !286, line: 21, baseType: !576)
!576 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !505, file: !6, line: 124, baseType: !574, size: 8, offset: 456)
!578 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !505, file: !6, line: 125, baseType: !574, size: 8, offset: 464)
!579 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !505, file: !6, line: 126, baseType: !574, size: 8, offset: 472)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !489, file: !429, line: 572, baseType: !505, size: 512, offset: 1216)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !489, file: !429, line: 580, baseType: !582, size: 64, offset: 1728)
!582 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !489, size: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !428, file: !429, line: 721, baseType: !7, size: 32, offset: 3584)
!584 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !428, file: !429, line: 722, baseType: !98, size: 32, offset: 3616)
!585 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !428, file: !429, line: 723, baseType: !586, size: 64, offset: 3648)
!586 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !587, size: 64)
!587 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !588)
!588 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !589, line: 17, baseType: !590)
!589 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!590 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !589, line: 17, size: 64, elements: !591)
!591 = !{!592}
!592 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !590, file: !589, line: 17, baseType: !593, size: 64)
!593 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, size: 64, elements: !594)
!594 = !{!595}
!595 = !DISubrange(count: 1)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !428, file: !429, line: 724, baseType: !588, size: 64, offset: 3712)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !428, file: !429, line: 749, baseType: !598, offset: 3776)
!598 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !429, line: 290, elements: !138)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !428, file: !429, line: 751, baseType: !111, size: 128, offset: 3776)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !428, file: !429, line: 757, baseType: !271, size: 64, offset: 3904)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !428, file: !429, line: 758, baseType: !271, size: 64, offset: 3968)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !428, file: !429, line: 761, baseType: !603, size: 320, offset: 4032)
!603 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !360, line: 34, size: 320, elements: !604)
!604 = !{!605, !606}
!605 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !603, file: !360, line: 35, baseType: !283, size: 64)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !603, file: !360, line: 36, baseType: !607, size: 256, offset: 64)
!607 = !DICompositeType(tag: DW_TAG_array_type, baseType: !253, size: 256, elements: !364)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !428, file: !429, line: 766, baseType: !98, size: 32, offset: 4352)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !428, file: !429, line: 767, baseType: !98, size: 32, offset: 4384)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !428, file: !429, line: 768, baseType: !98, size: 32, offset: 4416)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !428, file: !429, line: 770, baseType: !98, size: 32, offset: 4448)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !428, file: !429, line: 772, baseType: !87, size: 64, offset: 4480)
!613 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !428, file: !429, line: 775, baseType: !7, size: 32, offset: 4544)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !428, file: !429, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !428, file: !429, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !428, file: !429, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !428, file: !429, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!618 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !428, file: !429, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!619 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !428, file: !429, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!620 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !428, file: !429, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !428, file: !429, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!622 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !428, file: !429, line: 831, baseType: !87, size: 64, offset: 4672)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !428, file: !429, line: 833, baseType: !624, size: 384, offset: 4736)
!624 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !625)
!625 = !{!626, !631}
!626 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !624, file: !12, line: 26, baseType: !627, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!628 = !DISubroutineType(types: !629)
!629 = !{!200, !630}
!630 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !624, size: 64)
!631 = !DIDerivedType(tag: DW_TAG_member, scope: !624, file: !12, line: 27, baseType: !632, size: 320, offset: 64)
!632 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !624, file: !12, line: 27, size: 320, elements: !633)
!633 = !{!634, !644, !671}
!634 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !632, file: !12, line: 36, baseType: !635, size: 320)
!635 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !12, line: 29, size: 320, elements: !636)
!636 = !{!637, !639, !640, !641, !642, !643}
!637 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !635, file: !12, line: 30, baseType: !638, size: 64)
!638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !437, size: 64)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !635, file: !12, line: 31, baseType: !437, size: 32, offset: 64)
!640 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !635, file: !12, line: 32, baseType: !437, size: 32, offset: 96)
!641 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !635, file: !12, line: 33, baseType: !437, size: 32, offset: 128)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !635, file: !12, line: 34, baseType: !283, size: 64, offset: 192)
!643 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !635, file: !12, line: 35, baseType: !638, size: 64, offset: 256)
!644 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !632, file: !12, line: 46, baseType: !645, size: 192)
!645 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !12, line: 38, size: 192, elements: !646)
!646 = !{!647, !648, !649, !670}
!647 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !645, file: !12, line: 39, baseType: !547, size: 32)
!648 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !645, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!649 = !DIDerivedType(tag: DW_TAG_member, scope: !645, file: !12, line: 41, baseType: !650, size: 64, offset: 64)
!650 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !645, file: !12, line: 41, size: 64, elements: !651)
!651 = !{!652, !660}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !650, file: !12, line: 42, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !654, size: 64)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !655, line: 7, size: 128, elements: !656)
!655 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!656 = !{!657, !659}
!657 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !654, file: !655, line: 8, baseType: !658, size: 64)
!658 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !198, line: 93, baseType: !247)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !654, file: !655, line: 9, baseType: !247, size: 64, offset: 64)
!660 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !650, file: !12, line: 43, baseType: !661, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !662, size: 64)
!662 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !663, line: 7, size: 64, elements: !664)
!663 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!664 = !{!665, !669}
!665 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !662, file: !663, line: 8, baseType: !666, size: 32)
!666 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !663, line: 5, baseType: !667)
!667 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !284, line: 20, baseType: !668)
!668 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !286, line: 26, baseType: !98)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !662, file: !663, line: 9, baseType: !667, size: 32, offset: 32)
!670 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !645, file: !12, line: 45, baseType: !283, size: 64, offset: 128)
!671 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !632, file: !12, line: 54, baseType: !672, size: 256)
!672 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !632, file: !12, line: 48, size: 256, elements: !673)
!673 = !{!674, !677, !678, !679, !680}
!674 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !672, file: !12, line: 49, baseType: !675, size: 64)
!675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !676, size: 64)
!676 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!677 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !672, file: !12, line: 50, baseType: !98, size: 32, offset: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !672, file: !12, line: 51, baseType: !98, size: 32, offset: 96)
!679 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !672, file: !12, line: 52, baseType: !87, size: 64, offset: 128)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !672, file: !12, line: 53, baseType: !87, size: 64, offset: 192)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !428, file: !429, line: 835, baseType: !682, size: 32, offset: 5120)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !86, line: 22, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !198, line: 28, baseType: !98)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !428, file: !429, line: 836, baseType: !682, size: 32, offset: 5152)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !428, file: !429, line: 840, baseType: !87, size: 64, offset: 5184)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !428, file: !429, line: 849, baseType: !427, size: 64, offset: 5248)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !428, file: !429, line: 852, baseType: !427, size: 64, offset: 5312)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !428, file: !429, line: 857, baseType: !111, size: 128, offset: 5376)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !428, file: !429, line: 858, baseType: !111, size: 128, offset: 5504)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !428, file: !429, line: 859, baseType: !427, size: 64, offset: 5632)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !428, file: !429, line: 867, baseType: !111, size: 128, offset: 5696)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !428, file: !429, line: 868, baseType: !111, size: 128, offset: 5824)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !428, file: !429, line: 871, baseType: !694, size: 64, offset: 5952)
!694 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !695, size: 64)
!695 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !696, line: 59, size: 768, elements: !697)
!696 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!697 = !{!698, !699, !700, !701, !712, !713, !720, !729}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !695, file: !696, line: 61, baseType: !443, size: 32)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !695, file: !696, line: 62, baseType: !7, size: 32, offset: 32)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !695, file: !696, line: 63, baseType: !124, offset: 64)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !695, file: !696, line: 65, baseType: !702, size: 256, offset: 64)
!702 = !DICompositeType(tag: DW_TAG_array_type, baseType: !703, size: 256, elements: !364)
!703 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !86, line: 182, size: 64, elements: !704)
!704 = !{!705}
!705 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !703, file: !86, line: 183, baseType: !706, size: 64)
!706 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !707, size: 64)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !86, line: 186, size: 128, elements: !708)
!708 = !{!709, !710}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !707, file: !86, line: 187, baseType: !706, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !707, file: !86, line: 187, baseType: !711, size: 64, offset: 64)
!711 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !706, size: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !695, file: !696, line: 66, baseType: !703, size: 64, offset: 320)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !695, file: !696, line: 68, baseType: !714, size: 128, offset: 384)
!714 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !715, line: 40, baseType: !716)
!715 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!716 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !715, line: 36, size: 128, elements: !717)
!717 = !{!718, !719}
!718 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !716, file: !715, line: 37, baseType: !124)
!719 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !716, file: !715, line: 38, baseType: !111, size: 128)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !695, file: !696, line: 69, baseType: !721, size: 128, align: 64, offset: 512)
!721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !86, line: 216, size: 128, align: 64, elements: !722)
!722 = !{!723, !725}
!723 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !721, file: !86, line: 217, baseType: !724, size: 64)
!724 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !721, file: !86, line: 218, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !727, size: 64)
!727 = !DISubroutineType(types: !728)
!728 = !{null, !724}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !695, file: !696, line: 70, baseType: !730, size: 128, offset: 640)
!730 = !DICompositeType(tag: DW_TAG_array_type, baseType: !731, size: 128, elements: !594)
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !696, line: 54, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !731, file: !696, line: 55, baseType: !98, size: 32)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !731, file: !696, line: 56, baseType: !735, size: 64, offset: 64)
!735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!736 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !696, line: 56, flags: DIFlagFwdDecl)
!737 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !428, file: !429, line: 872, baseType: !738, size: 512, offset: 6016)
!738 = !DICompositeType(tag: DW_TAG_array_type, baseType: !707, size: 512, elements: !364)
!739 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !428, file: !429, line: 873, baseType: !111, size: 128, offset: 6528)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !428, file: !429, line: 874, baseType: !111, size: 128, offset: 6656)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !428, file: !429, line: 876, baseType: !742, size: 64, offset: 6784)
!742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !743, size: 64)
!743 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !744, line: 26, size: 192, elements: !745)
!744 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!745 = !{!746, !747}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !743, file: !744, line: 27, baseType: !7, size: 32)
!747 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !743, file: !744, line: 28, baseType: !748, size: 128, offset: 64)
!748 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !749, line: 43, size: 128, elements: !750)
!749 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!750 = !{!751, !752}
!751 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !748, file: !749, line: 44, baseType: !330)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !748, file: !749, line: 45, baseType: !111, size: 128)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !428, file: !429, line: 879, baseType: !754, size: 64, offset: 6848)
!754 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !428, file: !429, line: 882, baseType: !754, size: 64, offset: 6912)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !428, file: !429, line: 884, baseType: !283, size: 64, offset: 6976)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !428, file: !429, line: 885, baseType: !283, size: 64, offset: 7040)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !428, file: !429, line: 890, baseType: !283, size: 64, offset: 7104)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !428, file: !429, line: 891, baseType: !760, size: 128, offset: 7168)
!760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !429, line: 242, size: 128, elements: !761)
!761 = !{!762, !763, !764}
!762 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !760, file: !429, line: 244, baseType: !283, size: 64)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !760, file: !429, line: 245, baseType: !283, size: 64, offset: 64)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !760, file: !429, line: 246, baseType: !330, offset: 128)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !428, file: !429, line: 900, baseType: !87, size: 64, offset: 7296)
!766 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !428, file: !429, line: 901, baseType: !87, size: 64, offset: 7360)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !428, file: !429, line: 904, baseType: !283, size: 64, offset: 7424)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !428, file: !429, line: 907, baseType: !283, size: 64, offset: 7488)
!769 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !428, file: !429, line: 910, baseType: !87, size: 64, offset: 7552)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !428, file: !429, line: 911, baseType: !87, size: 64, offset: 7616)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !428, file: !429, line: 914, baseType: !772, size: 640, offset: 7680)
!772 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !773, line: 123, size: 640, elements: !774)
!773 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!774 = !{!775, !781, !782}
!775 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !772, file: !773, line: 124, baseType: !776, size: 576)
!776 = !DICompositeType(tag: DW_TAG_array_type, baseType: !777, size: 576, elements: !166)
!777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !773, line: 108, size: 192, elements: !778)
!778 = !{!779, !780}
!779 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !777, file: !773, line: 109, baseType: !283, size: 64)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !777, file: !773, line: 110, baseType: !561, size: 128, offset: 64)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !772, file: !773, line: 125, baseType: !7, size: 32, offset: 576)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !772, file: !773, line: 126, baseType: !7, size: 32, offset: 608)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !428, file: !429, line: 917, baseType: !784, size: 192, offset: 8320)
!784 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !773, line: 134, size: 192, elements: !785)
!785 = !{!786, !787}
!786 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !784, file: !773, line: 135, baseType: !721, size: 128, align: 64)
!787 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !784, file: !773, line: 136, baseType: !7, size: 32, offset: 128)
!788 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !428, file: !429, line: 923, baseType: !789, size: 64, offset: 8512)
!789 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !790, size: 64)
!790 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !791)
!791 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !429, line: 923, flags: DIFlagFwdDecl)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !428, file: !429, line: 926, baseType: !789, size: 64, offset: 8576)
!793 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !428, file: !429, line: 929, baseType: !789, size: 64, offset: 8640)
!794 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !428, file: !429, line: 933, baseType: !795, size: 64, offset: 8704)
!795 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !796, size: 64)
!796 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !429, line: 933, flags: DIFlagFwdDecl)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !428, file: !429, line: 943, baseType: !798, size: 128, offset: 8768)
!798 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 128, elements: !799)
!799 = !{!800}
!800 = !DISubrange(count: 16)
!801 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !428, file: !429, line: 945, baseType: !802, size: 64, offset: 8896)
!802 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !803, size: 64)
!803 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !429, line: 49, flags: DIFlagFwdDecl)
!804 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !428, file: !429, line: 956, baseType: !805, size: 64, offset: 8960)
!805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !806, size: 64)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !429, line: 45, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !428, file: !429, line: 959, baseType: !808, size: 64, offset: 9024)
!808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !809, size: 64)
!809 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !429, line: 959, flags: DIFlagFwdDecl)
!810 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !428, file: !429, line: 962, baseType: !811, size: 64, offset: 9088)
!811 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !812, size: 64)
!812 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !429, line: 66, flags: DIFlagFwdDecl)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !428, file: !429, line: 966, baseType: !814, size: 64, offset: 9152)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !815, size: 64)
!815 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !429, line: 50, flags: DIFlagFwdDecl)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !428, file: !429, line: 969, baseType: !817, size: 64, offset: 9216)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !773, line: 223, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !428, file: !429, line: 970, baseType: !820, size: 64, offset: 9280)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !429, line: 62, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !428, file: !429, line: 971, baseType: !823, size: 64, offset: 9344)
!823 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !824, line: 25, baseType: !825)
!824 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!825 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !824, line: 23, size: 64, elements: !826)
!826 = !{!827}
!827 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !825, file: !824, line: 24, baseType: !593, size: 64)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !428, file: !429, line: 972, baseType: !823, size: 64, offset: 9408)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !428, file: !429, line: 974, baseType: !823, size: 64, offset: 9472)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !428, file: !429, line: 975, baseType: !831, size: 192, offset: 9536)
!831 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !832, line: 30, size: 192, elements: !833)
!832 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!833 = !{!834, !835}
!834 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !831, file: !832, line: 31, baseType: !111, size: 128)
!835 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !831, file: !832, line: 32, baseType: !823, size: 64, offset: 128)
!836 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !428, file: !429, line: 976, baseType: !87, size: 64, offset: 9728)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !428, file: !429, line: 977, baseType: !212, size: 64, offset: 9792)
!838 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !428, file: !429, line: 978, baseType: !7, size: 32, offset: 9856)
!839 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !428, file: !429, line: 980, baseType: !724, size: 64, offset: 9920)
!840 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !428, file: !429, line: 989, baseType: !841, size: 128, offset: 9984)
!841 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !842, line: 35, size: 128, elements: !843)
!842 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!843 = !{!844, !845, !846}
!844 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !841, file: !842, line: 36, baseType: !98, size: 32)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !841, file: !842, line: 37, baseType: !305, size: 32, offset: 32)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !841, file: !842, line: 38, baseType: !847, size: 64, offset: 64)
!847 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !848, size: 64)
!848 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !842, line: 23, flags: DIFlagFwdDecl)
!849 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !428, file: !429, line: 992, baseType: !283, size: 64, offset: 10112)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !428, file: !429, line: 993, baseType: !283, size: 64, offset: 10176)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !428, file: !429, line: 996, baseType: !124, offset: 10240)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !428, file: !429, line: 999, baseType: !330, offset: 10240)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !428, file: !429, line: 1001, baseType: !854, size: 64, offset: 10240)
!854 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !429, line: 636, size: 64, elements: !855)
!855 = !{!856}
!856 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !854, file: !429, line: 637, baseType: !857, size: 64)
!857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !428, file: !429, line: 1005, baseType: !564, size: 128, offset: 10304)
!859 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !428, file: !429, line: 1007, baseType: !427, size: 64, offset: 10432)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !428, file: !429, line: 1009, baseType: !861, size: 64, offset: 10496)
!861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !862, size: 64)
!862 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !429, line: 1009, flags: DIFlagFwdDecl)
!863 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !428, file: !429, line: 1043, baseType: !88, size: 64, offset: 10560)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !428, file: !429, line: 1046, baseType: !865, size: 64, offset: 10624)
!865 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !866, size: 64)
!866 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !429, line: 41, flags: DIFlagFwdDecl)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !428, file: !429, line: 1050, baseType: !868, size: 64, offset: 10688)
!868 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!869 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !429, line: 42, flags: DIFlagFwdDecl)
!870 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !428, file: !429, line: 1054, baseType: !871, size: 64, offset: 10752)
!871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !872, size: 64)
!872 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !429, line: 55, flags: DIFlagFwdDecl)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !428, file: !429, line: 1056, baseType: !874, size: 64, offset: 10816)
!874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !875, size: 64)
!875 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !429, line: 40, flags: DIFlagFwdDecl)
!876 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !428, file: !429, line: 1058, baseType: !877, size: 64, offset: 10880)
!877 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !878, size: 64)
!878 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !429, line: 47, flags: DIFlagFwdDecl)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !428, file: !429, line: 1061, baseType: !880, size: 64, offset: 10944)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !429, line: 43, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !428, file: !429, line: 1064, baseType: !87, size: 64, offset: 11008)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !428, file: !429, line: 1065, baseType: !884, size: 64, offset: 11072)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !832, line: 14, baseType: !886)
!886 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !832, line: 12, size: 384, elements: !887)
!887 = !{!888}
!888 = !DIDerivedType(tag: DW_TAG_member, scope: !886, file: !832, line: 13, baseType: !889, size: 384)
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !886, file: !832, line: 13, size: 384, elements: !890)
!890 = !{!891, !892, !893, !894}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !889, file: !832, line: 13, baseType: !98, size: 32)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !889, file: !832, line: 13, baseType: !98, size: 32, offset: 32)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !889, file: !832, line: 13, baseType: !98, size: 32, offset: 64)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !889, file: !832, line: 13, baseType: !895, size: 256, offset: 128)
!895 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !896, line: 32, size: 256, elements: !897)
!896 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!897 = !{!898, !904, !917, !923, !932, !952, !957}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !895, file: !896, line: 37, baseType: !899, size: 64)
!899 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 34, size: 64, elements: !900)
!900 = !{!901, !902}
!901 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !899, file: !896, line: 35, baseType: !683, size: 32)
!902 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !899, file: !896, line: 36, baseType: !903, size: 32, offset: 32)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !198, line: 49, baseType: !7)
!904 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !895, file: !896, line: 45, baseType: !905, size: 192)
!905 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 40, size: 192, elements: !906)
!906 = !{!907, !909, !910, !916}
!907 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !905, file: !896, line: 41, baseType: !908, size: 32)
!908 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !198, line: 95, baseType: !98)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !905, file: !896, line: 42, baseType: !98, size: 32, offset: 32)
!910 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !905, file: !896, line: 43, baseType: !911, size: 64, offset: 64)
!911 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !896, line: 11, baseType: !912)
!912 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !896, line: 8, size: 64, elements: !913)
!913 = !{!914, !915}
!914 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !912, file: !896, line: 9, baseType: !98, size: 32)
!915 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !912, file: !896, line: 10, baseType: !88, size: 64)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !905, file: !896, line: 44, baseType: !98, size: 32, offset: 128)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !895, file: !896, line: 52, baseType: !918, size: 128)
!918 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 48, size: 128, elements: !919)
!919 = !{!920, !921, !922}
!920 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !918, file: !896, line: 49, baseType: !683, size: 32)
!921 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !918, file: !896, line: 50, baseType: !903, size: 32, offset: 32)
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !918, file: !896, line: 51, baseType: !911, size: 64, offset: 64)
!923 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !895, file: !896, line: 61, baseType: !924, size: 256)
!924 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 55, size: 256, elements: !925)
!925 = !{!926, !927, !928, !929, !931}
!926 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !924, file: !896, line: 56, baseType: !683, size: 32)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !924, file: !896, line: 57, baseType: !903, size: 32, offset: 32)
!928 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !924, file: !896, line: 58, baseType: !98, size: 32, offset: 64)
!929 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !924, file: !896, line: 59, baseType: !930, size: 64, offset: 128)
!930 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !198, line: 94, baseType: !199)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !924, file: !896, line: 60, baseType: !930, size: 64, offset: 192)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !895, file: !896, line: 95, baseType: !933, size: 256)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 64, size: 256, elements: !934)
!934 = !{!935, !936}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !933, file: !896, line: 65, baseType: !88, size: 64)
!936 = !DIDerivedType(tag: DW_TAG_member, scope: !933, file: !896, line: 77, baseType: !937, size: 192, offset: 64)
!937 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !933, file: !896, line: 77, size: 192, elements: !938)
!938 = !{!939, !940, !947}
!939 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !937, file: !896, line: 82, baseType: !416, size: 16)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !937, file: !896, line: 88, baseType: !941, size: 192)
!941 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !896, line: 84, size: 192, elements: !942)
!942 = !{!943, !945, !946}
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !941, file: !896, line: 85, baseType: !944, size: 64)
!944 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 64, elements: !543)
!945 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !941, file: !896, line: 86, baseType: !88, size: 64, offset: 64)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !941, file: !896, line: 87, baseType: !88, size: 64, offset: 128)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !937, file: !896, line: 93, baseType: !948, size: 96)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !937, file: !896, line: 90, size: 96, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !948, file: !896, line: 91, baseType: !944, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !948, file: !896, line: 92, baseType: !438, size: 32, offset: 64)
!952 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !895, file: !896, line: 101, baseType: !953, size: 128)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 98, size: 128, elements: !954)
!954 = !{!955, !956}
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !953, file: !896, line: 99, baseType: !200, size: 64)
!956 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !953, file: !896, line: 100, baseType: !98, size: 32, offset: 64)
!957 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !895, file: !896, line: 108, baseType: !958, size: 128)
!958 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !895, file: !896, line: 104, size: 128, elements: !959)
!959 = !{!960, !961, !962}
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !958, file: !896, line: 105, baseType: !88, size: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !958, file: !896, line: 106, baseType: !98, size: 32, offset: 64)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !958, file: !896, line: 107, baseType: !7, size: 32, offset: 96)
!963 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !428, file: !429, line: 1067, baseType: !964, offset: 11136)
!964 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !965, line: 12, elements: !138)
!965 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!966 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !428, file: !429, line: 1099, baseType: !967, size: 64, offset: 11136)
!967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !968, size: 64)
!968 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !429, line: 56, flags: DIFlagFwdDecl)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !428, file: !429, line: 1103, baseType: !111, size: 128, offset: 11200)
!970 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !428, file: !429, line: 1104, baseType: !971, size: 64, offset: 11328)
!971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !972, size: 64)
!972 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !429, line: 46, flags: DIFlagFwdDecl)
!973 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !428, file: !429, line: 1105, baseType: !382, size: 192, offset: 11392)
!974 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !428, file: !429, line: 1106, baseType: !7, size: 32, offset: 11584)
!975 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !428, file: !429, line: 1109, baseType: !976, size: 128, offset: 11648)
!976 = !DICompositeType(tag: DW_TAG_array_type, baseType: !977, size: 128, elements: !979)
!977 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !978, size: 64)
!978 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !429, line: 51, flags: DIFlagFwdDecl)
!979 = !{!980}
!980 = !DISubrange(count: 2)
!981 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !428, file: !429, line: 1110, baseType: !382, size: 192, offset: 11776)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !428, file: !429, line: 1111, baseType: !111, size: 128, offset: 11968)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !428, file: !429, line: 1173, baseType: !984, size: 64, offset: 12096)
!984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !985, size: 64)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !986, line: 62, size: 256, align: 256, elements: !987)
!986 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!987 = !{!988, !989, !990, !995}
!988 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !985, file: !986, line: 75, baseType: !438, size: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !985, file: !986, line: 90, baseType: !438, size: 32, offset: 32)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !985, file: !986, line: 124, baseType: !991, size: 64, offset: 64)
!991 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !985, file: !986, line: 109, size: 64, elements: !992)
!992 = !{!993, !994}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !991, file: !986, line: 110, baseType: !285, size: 64)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !991, file: !986, line: 112, baseType: !285, size: 64)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !985, file: !986, line: 144, baseType: !438, size: 32, offset: 128)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !428, file: !429, line: 1174, baseType: !437, size: 32, offset: 12160)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !428, file: !429, line: 1179, baseType: !87, size: 64, offset: 12224)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !428, file: !429, line: 1182, baseType: !999, size: 128, offset: 12288)
!999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !360, line: 76, size: 128, elements: !1000)
!1000 = !{!1001, !1006, !1007}
!1001 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !999, file: !360, line: 85, baseType: !1002, size: 64)
!1002 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1003, line: 7, size: 64, elements: !1004)
!1003 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1004 = !{!1005}
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1002, file: !1003, line: 12, baseType: !590, size: 64)
!1006 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !999, file: !360, line: 88, baseType: !100, size: 8, offset: 64)
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !999, file: !360, line: 95, baseType: !100, size: 8, offset: 72)
!1008 = !DIDerivedType(tag: DW_TAG_member, scope: !428, file: !429, line: 1184, baseType: !1009, size: 128, offset: 12416)
!1009 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !428, file: !429, line: 1184, size: 128, elements: !1010)
!1010 = !{!1011, !1012}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1009, file: !429, line: 1185, baseType: !443, size: 32)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1009, file: !429, line: 1186, baseType: !721, size: 128, align: 64)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !428, file: !429, line: 1190, baseType: !1014, size: 64, offset: 12544)
!1014 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1015, size: 64)
!1015 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !429, line: 53, flags: DIFlagFwdDecl)
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !428, file: !429, line: 1192, baseType: !1017, size: 128, offset: 12608)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !360, line: 64, size: 128, elements: !1018)
!1018 = !{!1019, !1112, !1113}
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1017, file: !360, line: 65, baseType: !1020, size: 64)
!1020 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1021, size: 64)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !255, line: 68, size: 512, align: 128, elements: !1022)
!1022 = !{!1023, !1024, !1104, !1111}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1021, file: !255, line: 69, baseType: !87, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !255, line: 77, baseType: !1025, size: 320, offset: 64)
!1025 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !255, line: 77, size: 320, elements: !1026)
!1026 = !{!1027, !1036, !1041, !1069, !1077, !1083, !1096, !1103}
!1027 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 78, baseType: !1028, size: 320)
!1028 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 78, size: 320, elements: !1029)
!1029 = !{!1030, !1031, !1034, !1035}
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1028, file: !255, line: 84, baseType: !111, size: 128)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1028, file: !255, line: 86, baseType: !1032, size: 64, offset: 128)
!1032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1033, size: 64)
!1033 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !255, line: 26, flags: DIFlagFwdDecl)
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1028, file: !255, line: 87, baseType: !87, size: 64, offset: 192)
!1035 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1028, file: !255, line: 94, baseType: !87, size: 64, offset: 256)
!1036 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 96, baseType: !1037, size: 64)
!1037 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 96, size: 64, elements: !1038)
!1038 = !{!1039}
!1039 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1037, file: !255, line: 101, baseType: !1040, size: 64)
!1040 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !86, line: 143, baseType: !283)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 103, baseType: !1042, size: 320)
!1042 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 103, size: 320, elements: !1043)
!1043 = !{!1044, !1054, !1057, !1058}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !255, line: 104, baseType: !1045, size: 128)
!1045 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !255, line: 104, size: 128, elements: !1046)
!1046 = !{!1047, !1048}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1045, file: !255, line: 105, baseType: !111, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, scope: !1045, file: !255, line: 106, baseType: !1049, size: 128)
!1049 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1045, file: !255, line: 106, size: 128, elements: !1050)
!1050 = !{!1051, !1052, !1053}
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1049, file: !255, line: 107, baseType: !1020, size: 64)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1049, file: !255, line: 109, baseType: !98, size: 32, offset: 64)
!1053 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1049, file: !255, line: 110, baseType: !98, size: 32, offset: 96)
!1054 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1042, file: !255, line: 117, baseType: !1055, size: 64, offset: 128)
!1055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1056, size: 64)
!1056 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !255, line: 117, flags: DIFlagFwdDecl)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1042, file: !255, line: 119, baseType: !88, size: 64, offset: 192)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !255, line: 120, baseType: !1059, size: 64, offset: 256)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1042, file: !255, line: 120, size: 64, elements: !1060)
!1060 = !{!1061, !1062, !1063}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1059, file: !255, line: 121, baseType: !88, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1059, file: !255, line: 122, baseType: !87, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !255, line: 123, baseType: !1064, size: 32)
!1064 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1059, file: !255, line: 123, size: 32, elements: !1065)
!1065 = !{!1066, !1067, !1068}
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1064, file: !255, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1067 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1064, file: !255, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1064, file: !255, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1069 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 130, baseType: !1070, size: 192)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 130, size: 192, elements: !1071)
!1071 = !{!1072, !1073, !1074, !1075, !1076}
!1072 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1070, file: !255, line: 131, baseType: !87, size: 64)
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1070, file: !255, line: 134, baseType: !576, size: 8, offset: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1070, file: !255, line: 135, baseType: !576, size: 8, offset: 72)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1070, file: !255, line: 136, baseType: !305, size: 32, offset: 96)
!1076 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1070, file: !255, line: 137, baseType: !7, size: 32, offset: 128)
!1077 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 139, baseType: !1078, size: 256)
!1078 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 139, size: 256, elements: !1079)
!1079 = !{!1080, !1081, !1082}
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1078, file: !255, line: 140, baseType: !87, size: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1078, file: !255, line: 141, baseType: !305, size: 32, offset: 64)
!1082 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1078, file: !255, line: 143, baseType: !111, size: 128, offset: 128)
!1083 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 145, baseType: !1084, size: 256)
!1084 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 145, size: 256, elements: !1085)
!1085 = !{!1086, !1087, !1089, !1090, !1095}
!1086 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1084, file: !255, line: 146, baseType: !87, size: 64)
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1084, file: !255, line: 147, baseType: !1088, size: 64, offset: 64)
!1088 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !244, line: 509, baseType: !1020)
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1084, file: !255, line: 148, baseType: !87, size: 64, offset: 128)
!1090 = !DIDerivedType(tag: DW_TAG_member, scope: !1084, file: !255, line: 149, baseType: !1091, size: 64, offset: 192)
!1091 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1084, file: !255, line: 149, size: 64, elements: !1092)
!1092 = !{!1093, !1094}
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1091, file: !255, line: 150, baseType: !271, size: 64)
!1094 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1091, file: !255, line: 151, baseType: !305, size: 32)
!1095 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1084, file: !255, line: 156, baseType: !124, offset: 256)
!1096 = !DIDerivedType(tag: DW_TAG_member, scope: !1025, file: !255, line: 159, baseType: !1097, size: 128)
!1097 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1025, file: !255, line: 159, size: 128, elements: !1098)
!1098 = !{!1099, !1102}
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1097, file: !255, line: 161, baseType: !1100, size: 64)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !255, line: 161, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1097, file: !255, line: 162, baseType: !88, size: 64, offset: 64)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1025, file: !255, line: 176, baseType: !721, size: 128, align: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1021, file: !255, line: 179, baseType: !1105, size: 32, offset: 384)
!1105 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1021, file: !255, line: 179, size: 32, elements: !1106)
!1106 = !{!1107, !1108, !1109, !1110}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1105, file: !255, line: 184, baseType: !305, size: 32)
!1108 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1105, file: !255, line: 192, baseType: !7, size: 32)
!1109 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1105, file: !255, line: 194, baseType: !7, size: 32)
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1105, file: !255, line: 195, baseType: !98, size: 32)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1021, file: !255, line: 199, baseType: !305, size: 32, offset: 416)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1017, file: !360, line: 67, baseType: !438, size: 32, offset: 64)
!1113 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1017, file: !360, line: 68, baseType: !438, size: 32, offset: 96)
!1114 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !428, file: !429, line: 1206, baseType: !98, size: 32, offset: 12736)
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !428, file: !429, line: 1207, baseType: !98, size: 32, offset: 12768)
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !428, file: !429, line: 1209, baseType: !87, size: 64, offset: 12800)
!1117 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !428, file: !429, line: 1219, baseType: !283, size: 64, offset: 12864)
!1118 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !428, file: !429, line: 1220, baseType: !283, size: 64, offset: 12928)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !428, file: !429, line: 1317, baseType: !98, size: 32, offset: 12992)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !428, file: !429, line: 1319, baseType: !427, size: 64, offset: 13056)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !428, file: !429, line: 1322, baseType: !1122, size: 64, offset: 13120)
!1122 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1123, size: 64)
!1123 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1124, line: 56, size: 512, elements: !1125)
!1124 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1125 = !{!1126, !1127, !1128, !1129, !1130, !1132, !1133, !1135}
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1123, file: !1124, line: 57, baseType: !1122, size: 64)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1123, file: !1124, line: 58, baseType: !88, size: 64, offset: 64)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1123, file: !1124, line: 59, baseType: !87, size: 64, offset: 128)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1123, file: !1124, line: 60, baseType: !87, size: 64, offset: 192)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1123, file: !1124, line: 61, baseType: !1131, size: 64, offset: 256)
!1131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1020, size: 64)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1123, file: !1124, line: 62, baseType: !7, size: 32, offset: 320)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1123, file: !1124, line: 63, baseType: !1134, size: 64, offset: 384)
!1134 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !86, line: 153, baseType: !283)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1123, file: !1124, line: 64, baseType: !1136, size: 64, offset: 448)
!1136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1137, size: 64)
!1137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !428, file: !429, line: 1326, baseType: !443, size: 32, offset: 13184)
!1139 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !428, file: !429, line: 1342, baseType: !88, size: 64, offset: 13248)
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !428, file: !429, line: 1343, baseType: !285, size: 64, offset: 13312)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !428, file: !429, line: 1344, baseType: !283, size: 64, offset: 13376)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !428, file: !429, line: 1345, baseType: !285, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !428, file: !429, line: 1346, baseType: !285, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !428, file: !429, line: 1347, baseType: !285, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !428, file: !429, line: 1348, baseType: !721, size: 128, align: 64, offset: 13504)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !428, file: !429, line: 1358, baseType: !1147, size: 34816, offset: 13824)
!1147 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1148, line: 485, size: 34816, elements: !1149)
!1148 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1149 = !{!1150, !1168, !1169, !1170, !1171, !1172, !1173, !1174, !1175, !1179, !1180, !1181, !1182, !1183, !1184, !1187, !1188, !1189}
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1147, file: !1148, line: 487, baseType: !1151, size: 192)
!1151 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1152, size: 192, elements: !166)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1153, line: 16, size: 64, elements: !1154)
!1153 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1154 = !{!1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163, !1164, !1165, !1166, !1167}
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1152, file: !1153, line: 17, baseType: !411, size: 16)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1152, file: !1153, line: 18, baseType: !411, size: 16, offset: 16)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1152, file: !1153, line: 19, baseType: !411, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1152, file: !1153, line: 19, baseType: !411, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1152, file: !1153, line: 19, baseType: !411, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1152, file: !1153, line: 19, baseType: !411, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1152, file: !1153, line: 19, baseType: !411, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1152, file: !1153, line: 20, baseType: !411, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1152, file: !1153, line: 20, baseType: !411, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1164 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1152, file: !1153, line: 20, baseType: !411, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1165 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1152, file: !1153, line: 20, baseType: !411, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1166 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1152, file: !1153, line: 20, baseType: !411, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1152, file: !1153, line: 20, baseType: !411, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1168 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1147, file: !1148, line: 491, baseType: !87, size: 64, offset: 192)
!1169 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1147, file: !1148, line: 495, baseType: !207, size: 16, offset: 256)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1147, file: !1148, line: 496, baseType: !207, size: 16, offset: 272)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1147, file: !1148, line: 497, baseType: !207, size: 16, offset: 288)
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1147, file: !1148, line: 498, baseType: !207, size: 16, offset: 304)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1147, file: !1148, line: 502, baseType: !87, size: 64, offset: 320)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1147, file: !1148, line: 503, baseType: !87, size: 64, offset: 384)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1147, file: !1148, line: 514, baseType: !1176, size: 256, offset: 448)
!1176 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1177, size: 256, elements: !364)
!1177 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1178, size: 64)
!1178 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1148, line: 483, flags: DIFlagFwdDecl)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1147, file: !1148, line: 516, baseType: !87, size: 64, offset: 704)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1147, file: !1148, line: 518, baseType: !87, size: 64, offset: 768)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1147, file: !1148, line: 520, baseType: !87, size: 64, offset: 832)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1147, file: !1148, line: 521, baseType: !87, size: 64, offset: 896)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1147, file: !1148, line: 522, baseType: !87, size: 64, offset: 960)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1147, file: !1148, line: 528, baseType: !1185, size: 64, offset: 1024)
!1185 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1186, size: 64)
!1186 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1148, line: 10, flags: DIFlagFwdDecl)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1147, file: !1148, line: 535, baseType: !87, size: 64, offset: 1088)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1147, file: !1148, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1147, file: !1148, line: 540, baseType: !1190, size: 33280, offset: 1536)
!1190 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1191, line: 317, size: 33280, elements: !1192)
!1191 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1192 = !{!1193, !1194, !1195}
!1193 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1190, file: !1191, line: 330, baseType: !7, size: 32)
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1190, file: !1191, line: 337, baseType: !87, size: 64, offset: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1190, file: !1191, line: 348, baseType: !1196, size: 32768, offset: 512)
!1196 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1191, line: 304, size: 32768, elements: !1197)
!1197 = !{!1198, !1213, !1252, !1302, !1319}
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1196, file: !1191, line: 305, baseType: !1199, size: 896)
!1199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1191, line: 12, size: 896, elements: !1200)
!1200 = !{!1201, !1202, !1203, !1204, !1205, !1206, !1207, !1208, !1212}
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1199, file: !1191, line: 13, baseType: !437, size: 32)
!1202 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1199, file: !1191, line: 14, baseType: !437, size: 32, offset: 32)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1199, file: !1191, line: 15, baseType: !437, size: 32, offset: 64)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1199, file: !1191, line: 16, baseType: !437, size: 32, offset: 96)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1199, file: !1191, line: 17, baseType: !437, size: 32, offset: 128)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1199, file: !1191, line: 18, baseType: !437, size: 32, offset: 160)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1199, file: !1191, line: 19, baseType: !437, size: 32, offset: 192)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1199, file: !1191, line: 22, baseType: !1209, size: 640, offset: 224)
!1209 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 640, elements: !1210)
!1210 = !{!1211}
!1211 = !DISubrange(count: 20)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1199, file: !1191, line: 25, baseType: !437, size: 32, offset: 864)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1196, file: !1191, line: 306, baseType: !1214, size: 4096, align: 128)
!1214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1191, line: 34, size: 4096, align: 128, elements: !1215)
!1215 = !{!1216, !1217, !1218, !1219, !1220, !1235, !1236, !1237, !1241, !1243, !1247}
!1216 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1214, file: !1191, line: 35, baseType: !411, size: 16)
!1217 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1214, file: !1191, line: 36, baseType: !411, size: 16, offset: 16)
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1214, file: !1191, line: 37, baseType: !411, size: 16, offset: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1214, file: !1191, line: 38, baseType: !411, size: 16, offset: 48)
!1220 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1191, line: 39, baseType: !1221, size: 128, offset: 64)
!1221 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1191, line: 39, size: 128, elements: !1222)
!1222 = !{!1223, !1228}
!1223 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1191, line: 40, baseType: !1224, size: 128)
!1224 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1191, line: 40, size: 128, elements: !1225)
!1225 = !{!1226, !1227}
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1224, file: !1191, line: 41, baseType: !283, size: 64)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1224, file: !1191, line: 42, baseType: !283, size: 64, offset: 64)
!1228 = !DIDerivedType(tag: DW_TAG_member, scope: !1221, file: !1191, line: 44, baseType: !1229, size: 128)
!1229 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1221, file: !1191, line: 44, size: 128, elements: !1230)
!1230 = !{!1231, !1232, !1233, !1234}
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1229, file: !1191, line: 45, baseType: !437, size: 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1229, file: !1191, line: 46, baseType: !437, size: 32, offset: 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1229, file: !1191, line: 47, baseType: !437, size: 32, offset: 64)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1229, file: !1191, line: 48, baseType: !437, size: 32, offset: 96)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1214, file: !1191, line: 51, baseType: !437, size: 32, offset: 192)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1214, file: !1191, line: 52, baseType: !437, size: 32, offset: 224)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1214, file: !1191, line: 55, baseType: !1238, size: 1024, offset: 256)
!1238 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 1024, elements: !1239)
!1239 = !{!1240}
!1240 = !DISubrange(count: 32)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1214, file: !1191, line: 58, baseType: !1242, size: 2048, offset: 1280)
!1242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 2048, elements: !170)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1214, file: !1191, line: 60, baseType: !1244, size: 384, offset: 3328)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 384, elements: !1245)
!1245 = !{!1246}
!1246 = !DISubrange(count: 12)
!1247 = !DIDerivedType(tag: DW_TAG_member, scope: !1214, file: !1191, line: 62, baseType: !1248, size: 384, offset: 3712)
!1248 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1214, file: !1191, line: 62, size: 384, elements: !1249)
!1249 = !{!1250, !1251}
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1248, file: !1191, line: 63, baseType: !1244, size: 384)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1248, file: !1191, line: 64, baseType: !1244, size: 384)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1196, file: !1191, line: 307, baseType: !1253, size: 1088)
!1253 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1191, line: 79, size: 1088, elements: !1254)
!1254 = !{!1255, !1256, !1257, !1258, !1259, !1260, !1261, !1262, !1263, !1264, !1265, !1266, !1267, !1268, !1269, !1301}
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1253, file: !1191, line: 80, baseType: !437, size: 32)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1253, file: !1191, line: 81, baseType: !437, size: 32, offset: 32)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1253, file: !1191, line: 82, baseType: !437, size: 32, offset: 64)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1253, file: !1191, line: 83, baseType: !437, size: 32, offset: 96)
!1259 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1253, file: !1191, line: 84, baseType: !437, size: 32, offset: 128)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1253, file: !1191, line: 85, baseType: !437, size: 32, offset: 160)
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1253, file: !1191, line: 86, baseType: !437, size: 32, offset: 192)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1253, file: !1191, line: 88, baseType: !1209, size: 640, offset: 224)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1253, file: !1191, line: 89, baseType: !574, size: 8, offset: 864)
!1264 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1253, file: !1191, line: 90, baseType: !574, size: 8, offset: 872)
!1265 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1253, file: !1191, line: 91, baseType: !574, size: 8, offset: 880)
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1253, file: !1191, line: 92, baseType: !574, size: 8, offset: 888)
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1253, file: !1191, line: 93, baseType: !574, size: 8, offset: 896)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1253, file: !1191, line: 94, baseType: !574, size: 8, offset: 904)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1253, file: !1191, line: 95, baseType: !1270, size: 64, offset: 960)
!1270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1271, size: 64)
!1271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1272, line: 11, size: 128, elements: !1273)
!1272 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1273 = !{!1274, !1275}
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1271, file: !1272, line: 12, baseType: !200, size: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1271, file: !1272, line: 13, baseType: !1276, size: 64, offset: 64)
!1276 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1277, size: 64)
!1277 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1278, line: 56, size: 1344, elements: !1279)
!1278 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1279 = !{!1280, !1281, !1282, !1283, !1284, !1285, !1286, !1287, !1288, !1289, !1290, !1291, !1292, !1293, !1294, !1295, !1296, !1297, !1298, !1299, !1300}
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1277, file: !1278, line: 61, baseType: !87, size: 64)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1277, file: !1278, line: 62, baseType: !87, size: 64, offset: 64)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1277, file: !1278, line: 63, baseType: !87, size: 64, offset: 128)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1277, file: !1278, line: 64, baseType: !87, size: 64, offset: 192)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1277, file: !1278, line: 65, baseType: !87, size: 64, offset: 256)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1277, file: !1278, line: 66, baseType: !87, size: 64, offset: 320)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1277, file: !1278, line: 68, baseType: !87, size: 64, offset: 384)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1277, file: !1278, line: 69, baseType: !87, size: 64, offset: 448)
!1288 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1277, file: !1278, line: 70, baseType: !87, size: 64, offset: 512)
!1289 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1277, file: !1278, line: 71, baseType: !87, size: 64, offset: 576)
!1290 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1277, file: !1278, line: 72, baseType: !87, size: 64, offset: 640)
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1277, file: !1278, line: 73, baseType: !87, size: 64, offset: 704)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1277, file: !1278, line: 74, baseType: !87, size: 64, offset: 768)
!1293 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1277, file: !1278, line: 75, baseType: !87, size: 64, offset: 832)
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1277, file: !1278, line: 76, baseType: !87, size: 64, offset: 896)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1277, file: !1278, line: 81, baseType: !87, size: 64, offset: 960)
!1296 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1277, file: !1278, line: 83, baseType: !87, size: 64, offset: 1024)
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1277, file: !1278, line: 84, baseType: !87, size: 64, offset: 1088)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1277, file: !1278, line: 85, baseType: !87, size: 64, offset: 1152)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1277, file: !1278, line: 86, baseType: !87, size: 64, offset: 1216)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1277, file: !1278, line: 87, baseType: !87, size: 64, offset: 1280)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1253, file: !1191, line: 96, baseType: !437, size: 32, offset: 1024)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1196, file: !1191, line: 308, baseType: !1303, size: 4608, align: 512)
!1303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1191, line: 289, size: 4608, align: 512, elements: !1304)
!1304 = !{!1305, !1306, !1315}
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1303, file: !1191, line: 290, baseType: !1214, size: 4096, align: 128)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1303, file: !1191, line: 291, baseType: !1307, size: 512, offset: 4096)
!1307 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1191, line: 268, size: 512, elements: !1308)
!1308 = !{!1309, !1310, !1311}
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1307, file: !1191, line: 269, baseType: !283, size: 64)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1307, file: !1191, line: 270, baseType: !283, size: 64, offset: 64)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1307, file: !1191, line: 271, baseType: !1312, size: 384, offset: 128)
!1312 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 384, elements: !1313)
!1313 = !{!1314}
!1314 = !DISubrange(count: 6)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1303, file: !1191, line: 292, baseType: !1316, offset: 4608)
!1316 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, elements: !1317)
!1317 = !{!1318}
!1318 = !DISubrange(count: 0)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1196, file: !1191, line: 309, baseType: !1320, size: 32768)
!1320 = !DICompositeType(tag: DW_TAG_array_type, baseType: !574, size: 32768, elements: !1321)
!1321 = !{!1322}
!1322 = !DISubrange(count: 4096)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !424, file: !255, line: 378, baseType: !1324, size: 64, offset: 64)
!1324 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !424, size: 64)
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !420, file: !255, line: 384, baseType: !743, size: 192, offset: 192)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !275, file: !255, line: 500, baseType: !124, offset: 6656)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !275, file: !255, line: 501, baseType: !1328, size: 64, offset: 6656)
!1328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1329, size: 64)
!1329 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !255, line: 387, flags: DIFlagFwdDecl)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !275, file: !255, line: 516, baseType: !1331, size: 64, offset: 6720)
!1331 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1332, size: 64)
!1332 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1333, line: 18, flags: DIFlagFwdDecl)
!1333 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !275, file: !255, line: 519, baseType: !242, size: 64, offset: 6784)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !275, file: !255, line: 521, baseType: !1336, size: 64, offset: 6848)
!1336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1337, size: 64)
!1337 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !255, line: 521, flags: DIFlagFwdDecl)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !275, file: !255, line: 545, baseType: !305, size: 32, offset: 6912)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !275, file: !255, line: 548, baseType: !100, size: 8, offset: 6944)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !275, file: !255, line: 550, baseType: !1341, offset: 6952)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1342, line: 142, elements: !138)
!1342 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !275, file: !255, line: 554, baseType: !1344, size: 256, offset: 6976)
!1344 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1345, line: 102, size: 256, elements: !1346)
!1345 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1346 = !{!1347, !1348, !1349}
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1344, file: !1345, line: 103, baseType: !313, size: 64)
!1348 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1344, file: !1345, line: 104, baseType: !111, size: 128, offset: 64)
!1349 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1344, file: !1345, line: 105, baseType: !1350, size: 64, offset: 192)
!1350 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1345, line: 21, baseType: !1351)
!1351 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1352, size: 64)
!1352 = !DISubroutineType(types: !1353)
!1353 = !{null, !1354}
!1354 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1344, size: 64)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !275, file: !255, line: 557, baseType: !437, size: 32, offset: 7232)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !272, file: !255, line: 565, baseType: !1357, offset: 7296)
!1357 = !DICompositeType(tag: DW_TAG_array_type, baseType: !87, elements: !1358)
!1358 = !{!1359}
!1359 = !DISubrange(count: -1)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !254, file: !255, line: 333, baseType: !1361, size: 64, offset: 576)
!1361 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !244, line: 284, baseType: !1362)
!1362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !244, line: 284, size: 64, elements: !1363)
!1363 = !{!1364}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1362, file: !244, line: 284, baseType: !1365, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !303, line: 19, baseType: !87)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !254, file: !255, line: 334, baseType: !87, size: 64, offset: 640)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !254, file: !255, line: 343, baseType: !1368, size: 256, offset: 704)
!1368 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !254, file: !255, line: 340, size: 256, elements: !1369)
!1369 = !{!1370, !1371}
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1368, file: !255, line: 341, baseType: !262, size: 192, align: 64)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1368, file: !255, line: 342, baseType: !87, size: 64, offset: 192)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !254, file: !255, line: 351, baseType: !111, size: 128, offset: 960)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !254, file: !255, line: 353, baseType: !1374, size: 64, offset: 1088)
!1374 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1375, size: 64)
!1375 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !255, line: 353, flags: DIFlagFwdDecl)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !254, file: !255, line: 356, baseType: !1377, size: 64, offset: 1152)
!1377 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1378, size: 64)
!1378 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1379)
!1379 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !255, line: 356, flags: DIFlagFwdDecl)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !254, file: !255, line: 359, baseType: !87, size: 64, offset: 1216)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !254, file: !255, line: 361, baseType: !242, size: 64, offset: 1280)
!1382 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !254, file: !255, line: 362, baseType: !88, size: 64, offset: 1344)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !254, file: !255, line: 365, baseType: !313, size: 64, offset: 1408)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !254, file: !255, line: 373, baseType: !1385, offset: 1472)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !255, line: 296, elements: !138)
!1386 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !221, file: !190, line: 90, baseType: !216, size: 64, offset: 192)
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !221, file: !190, line: 91, baseType: !1388, size: 64, offset: 256)
!1388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !232, size: 64)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !180, file: !107, line: 143, baseType: !1390, size: 64, offset: 256)
!1390 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1391, size: 64)
!1391 = !DISubroutineType(types: !1392)
!1392 = !{!1393, !117}
!1393 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1394, size: 64)
!1394 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1395)
!1395 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1396)
!1396 = !{!1397, !1398, !1402, !1406, !1412, !1416}
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1395, file: !18, line: 40, baseType: !17, size: 32)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1395, file: !18, line: 41, baseType: !1399, size: 64, offset: 64)
!1399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1400 = !DISubroutineType(types: !1401)
!1401 = !{!100}
!1402 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1395, file: !18, line: 42, baseType: !1403, size: 64, offset: 128)
!1403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1404, size: 64)
!1404 = !DISubroutineType(types: !1405)
!1405 = !{!88}
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1395, file: !18, line: 43, baseType: !1407, size: 64, offset: 192)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1136, !1410}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1395, file: !18, line: 44, baseType: !1413, size: 64, offset: 256)
!1413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1414, size: 64)
!1414 = !DISubroutineType(types: !1415)
!1415 = !{!1136}
!1416 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1395, file: !18, line: 45, baseType: !1417, size: 64, offset: 320)
!1417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1418, size: 64)
!1418 = !DISubroutineType(types: !1419)
!1419 = !{null, !88}
!1420 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !180, file: !107, line: 144, baseType: !1421, size: 64, offset: 320)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!1136, !117}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !180, file: !107, line: 145, baseType: !1425, size: 64, offset: 384)
!1425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1426, size: 64)
!1426 = !DISubroutineType(types: !1427)
!1427 = !{null, !117, !1428, !1434}
!1428 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1429, size: 64)
!1429 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1333, line: 23, baseType: !1430)
!1430 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 21, size: 32, elements: !1431)
!1431 = !{!1432}
!1432 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1430, file: !1333, line: 22, baseType: !1433, size: 32)
!1433 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !86, line: 32, baseType: !903)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1333, line: 28, baseType: !1436)
!1436 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1333, line: 26, size: 32, elements: !1437)
!1437 = !{!1438}
!1438 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1436, file: !1333, line: 27, baseType: !1439, size: 32)
!1439 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !86, line: 33, baseType: !1440)
!1440 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !198, line: 50, baseType: !7)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !106, file: !107, line: 70, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1444, line: 123, size: 1024, elements: !1445)
!1444 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1445 = !{!1446, !1447, !1448, !1449, !1450, !1451, !1452, !1453, !1587, !1588, !1589, !1590, !1591}
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1443, file: !1444, line: 124, baseType: !305, size: 32)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1443, file: !1444, line: 125, baseType: !305, size: 32, offset: 32)
!1448 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1443, file: !1444, line: 135, baseType: !1442, size: 64, offset: 64)
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1443, file: !1444, line: 136, baseType: !94, size: 64, offset: 128)
!1450 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1443, file: !1444, line: 138, baseType: !262, size: 192, align: 64, offset: 192)
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1443, file: !1444, line: 140, baseType: !1136, size: 64, offset: 384)
!1452 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1443, file: !1444, line: 141, baseType: !7, size: 32, offset: 448)
!1453 = !DIDerivedType(tag: DW_TAG_member, scope: !1443, file: !1444, line: 142, baseType: !1454, size: 256, offset: 512)
!1454 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1443, file: !1444, line: 142, size: 256, elements: !1455)
!1455 = !{!1456, !1510, !1514}
!1456 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1454, file: !1444, line: 143, baseType: !1457, size: 192)
!1457 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1444, line: 91, size: 192, elements: !1458)
!1458 = !{!1459, !1460, !1461}
!1459 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1457, file: !1444, line: 92, baseType: !87, size: 64)
!1460 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1457, file: !1444, line: 94, baseType: !279, size: 64, offset: 64)
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1457, file: !1444, line: 100, baseType: !1462, size: 64, offset: 128)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1444, line: 180, size: 704, elements: !1464)
!1464 = !{!1465, !1466, !1467, !1480, !1481, !1482, !1508, !1509}
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1463, file: !1444, line: 182, baseType: !1442, size: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1463, file: !1444, line: 183, baseType: !7, size: 32, offset: 64)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1463, file: !1444, line: 186, baseType: !1468, size: 192, offset: 128)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1469, line: 19, size: 192, elements: !1470)
!1469 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1470 = !{!1471, !1478, !1479}
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1468, file: !1469, line: 20, baseType: !1472, size: 128)
!1472 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1473, line: 292, size: 128, elements: !1474)
!1473 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1474 = !{!1475, !1476, !1477}
!1475 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1472, file: !1473, line: 293, baseType: !124)
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1472, file: !1473, line: 295, baseType: !85, size: 32)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1472, file: !1473, line: 296, baseType: !88, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1468, file: !1469, line: 21, baseType: !7, size: 32, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1468, file: !1469, line: 22, baseType: !7, size: 32, offset: 160)
!1480 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1463, file: !1444, line: 187, baseType: !437, size: 32, offset: 320)
!1481 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1463, file: !1444, line: 188, baseType: !437, size: 32, offset: 352)
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1463, file: !1444, line: 189, baseType: !1483, size: 64, offset: 384)
!1483 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1484, size: 64)
!1484 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1444, line: 168, size: 320, elements: !1485)
!1485 = !{!1486, !1492, !1496, !1500, !1504}
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1484, file: !1444, line: 169, baseType: !1487, size: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!98, !1490, !1462}
!1490 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1491, size: 64)
!1491 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !244, line: 539, flags: DIFlagFwdDecl)
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1484, file: !1444, line: 171, baseType: !1493, size: 64, offset: 64)
!1493 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1494 = !DISubroutineType(types: !1495)
!1495 = !{!98, !1442, !94, !206}
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1484, file: !1444, line: 173, baseType: !1497, size: 64, offset: 128)
!1497 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1498, size: 64)
!1498 = !DISubroutineType(types: !1499)
!1499 = !{!98, !1442}
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1484, file: !1444, line: 174, baseType: !1501, size: 64, offset: 192)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!98, !1442, !1442, !94}
!1504 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1484, file: !1444, line: 176, baseType: !1505, size: 64, offset: 256)
!1505 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1506, size: 64)
!1506 = !DISubroutineType(types: !1507)
!1507 = !{!98, !1490, !1442, !1462}
!1508 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1463, file: !1444, line: 192, baseType: !111, size: 128, offset: 448)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1463, file: !1444, line: 194, baseType: !714, size: 128, offset: 576)
!1510 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1454, file: !1444, line: 144, baseType: !1511, size: 64)
!1511 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1444, line: 103, size: 64, elements: !1512)
!1512 = !{!1513}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1511, file: !1444, line: 104, baseType: !1442, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1454, file: !1444, line: 145, baseType: !1515, size: 256)
!1515 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1444, line: 107, size: 256, elements: !1516)
!1516 = !{!1517, !1582, !1585, !1586}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1515, file: !1444, line: 108, baseType: !1518, size: 64)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1444, line: 217, size: 768, elements: !1521)
!1521 = !{!1522, !1542, !1546, !1550, !1555, !1559, !1563, !1567, !1568, !1569, !1570, !1578}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1520, file: !1444, line: 222, baseType: !1523, size: 64)
!1523 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1524, size: 64)
!1524 = !DISubroutineType(types: !1525)
!1525 = !{!98, !1526}
!1526 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1527, size: 64)
!1527 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1444, line: 197, size: 1088, elements: !1528)
!1528 = !{!1529, !1530, !1531, !1532, !1533, !1534, !1535, !1536, !1537, !1538, !1539, !1540, !1541}
!1529 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1527, file: !1444, line: 199, baseType: !1442, size: 64)
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1527, file: !1444, line: 200, baseType: !242, size: 64, offset: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1527, file: !1444, line: 201, baseType: !1490, size: 64, offset: 128)
!1532 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1527, file: !1444, line: 202, baseType: !88, size: 64, offset: 192)
!1533 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1527, file: !1444, line: 205, baseType: !382, size: 192, offset: 256)
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1527, file: !1444, line: 206, baseType: !382, size: 192, offset: 448)
!1535 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1527, file: !1444, line: 207, baseType: !98, size: 32, offset: 640)
!1536 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1527, file: !1444, line: 208, baseType: !111, size: 128, offset: 704)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1527, file: !1444, line: 209, baseType: !165, size: 64, offset: 832)
!1538 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1527, file: !1444, line: 211, baseType: !212, size: 64, offset: 896)
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1527, file: !1444, line: 212, baseType: !100, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1540 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1527, file: !1444, line: 213, baseType: !100, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1527, file: !1444, line: 214, baseType: !1377, size: 64, offset: 1024)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1520, file: !1444, line: 223, baseType: !1543, size: 64, offset: 64)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{null, !1526}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1520, file: !1444, line: 236, baseType: !1547, size: 64, offset: 128)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{!98, !1490, !88}
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1520, file: !1444, line: 238, baseType: !1551, size: 64, offset: 192)
!1551 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1552, size: 64)
!1552 = !DISubroutineType(types: !1553)
!1553 = !{!88, !1490, !1554}
!1554 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !245, size: 64)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1520, file: !1444, line: 239, baseType: !1556, size: 64, offset: 256)
!1556 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1557, size: 64)
!1557 = !DISubroutineType(types: !1558)
!1558 = !{!88, !1490, !88, !1554}
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1520, file: !1444, line: 240, baseType: !1560, size: 64, offset: 320)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1490, !88}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1520, file: !1444, line: 242, baseType: !1564, size: 64, offset: 384)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!196, !1526, !165, !212, !245}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1520, file: !1444, line: 252, baseType: !212, size: 64, offset: 448)
!1568 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1520, file: !1444, line: 259, baseType: !100, size: 8, offset: 512)
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1520, file: !1444, line: 260, baseType: !1564, size: 64, offset: 576)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1520, file: !1444, line: 263, baseType: !1571, size: 64, offset: 640)
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1572, size: 64)
!1572 = !DISubroutineType(types: !1573)
!1573 = !{!1574, !1526, !1576}
!1574 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1575, line: 52, baseType: !7)
!1575 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1576 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1577, size: 64)
!1577 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1444, line: 27, flags: DIFlagFwdDecl)
!1578 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1520, file: !1444, line: 266, baseType: !1579, size: 64, offset: 704)
!1579 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1580, size: 64)
!1580 = !DISubroutineType(types: !1581)
!1581 = !{!98, !1526, !253}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1515, file: !1444, line: 109, baseType: !1583, size: 64, offset: 64)
!1583 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1584, size: 64)
!1584 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1444, line: 31, flags: DIFlagFwdDecl)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1515, file: !1444, line: 110, baseType: !245, size: 64, offset: 128)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1515, file: !1444, line: 111, baseType: !1442, size: 64, offset: 192)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1443, file: !1444, line: 148, baseType: !88, size: 64, offset: 768)
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1443, file: !1444, line: 154, baseType: !283, size: 64, offset: 832)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1443, file: !1444, line: 156, baseType: !207, size: 16, offset: 896)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1443, file: !1444, line: 157, baseType: !206, size: 16, offset: 912)
!1591 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1443, file: !1444, line: 158, baseType: !1592, size: 64, offset: 960)
!1592 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1593, size: 64)
!1593 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1444, line: 32, flags: DIFlagFwdDecl)
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !106, file: !107, line: 71, baseType: !1595, size: 32, offset: 448)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1596, line: 19, size: 32, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1595, file: !1596, line: 20, baseType: !443, size: 32)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !106, file: !107, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1600 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !106, file: !107, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !106, file: !107, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !106, file: !107, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !106, file: !107, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !103, file: !30, line: 463, baseType: !1605, size: 64, offset: 512)
!1605 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !103, size: 64)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !103, file: !30, line: 465, baseType: !1607, size: 64, offset: 576)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1609 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !103, file: !30, line: 467, baseType: !94, size: 64, offset: 640)
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !103, file: !30, line: 468, baseType: !1611, size: 64, offset: 704)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1613)
!1613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1614)
!1614 = !{!1615, !1616, !1617, !1621, !1626, !1630}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1613, file: !30, line: 88, baseType: !94, size: 64)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1613, file: !30, line: 89, baseType: !218, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1613, file: !30, line: 90, baseType: !1618, size: 64, offset: 128)
!1618 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1619, size: 64)
!1619 = !DISubroutineType(types: !1620)
!1620 = !{!98, !1605, !160}
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1613, file: !30, line: 91, baseType: !1622, size: 64, offset: 192)
!1622 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1623, size: 64)
!1623 = !DISubroutineType(types: !1624)
!1624 = !{!165, !1605, !1625, !1428, !1434}
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1613, file: !30, line: 93, baseType: !1627, size: 64, offset: 256)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DISubroutineType(types: !1629)
!1629 = !{null, !1605}
!1630 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1613, file: !30, line: 95, baseType: !1631, size: 64, offset: 320)
!1631 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1632, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1633)
!1633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1634)
!1634 = !{!1635, !1639, !1640, !1641, !1642, !1643, !1644, !1645, !1646, !1647, !1648, !1649, !1650, !1651, !1652, !1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660}
!1635 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1633, file: !37, line: 279, baseType: !1636, size: 64)
!1636 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1637, size: 64)
!1637 = !DISubroutineType(types: !1638)
!1638 = !{!98, !1605}
!1639 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1633, file: !37, line: 280, baseType: !1627, size: 64, offset: 64)
!1640 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1633, file: !37, line: 281, baseType: !1636, size: 64, offset: 128)
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1633, file: !37, line: 282, baseType: !1636, size: 64, offset: 192)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1633, file: !37, line: 283, baseType: !1636, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1633, file: !37, line: 284, baseType: !1636, size: 64, offset: 320)
!1644 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1633, file: !37, line: 285, baseType: !1636, size: 64, offset: 384)
!1645 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1633, file: !37, line: 286, baseType: !1636, size: 64, offset: 448)
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1633, file: !37, line: 287, baseType: !1636, size: 64, offset: 512)
!1647 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1633, file: !37, line: 288, baseType: !1636, size: 64, offset: 576)
!1648 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1633, file: !37, line: 289, baseType: !1636, size: 64, offset: 640)
!1649 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1633, file: !37, line: 290, baseType: !1636, size: 64, offset: 704)
!1650 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1633, file: !37, line: 291, baseType: !1636, size: 64, offset: 768)
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1633, file: !37, line: 292, baseType: !1636, size: 64, offset: 832)
!1652 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1633, file: !37, line: 293, baseType: !1636, size: 64, offset: 896)
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1633, file: !37, line: 294, baseType: !1636, size: 64, offset: 960)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1633, file: !37, line: 295, baseType: !1636, size: 64, offset: 1024)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1633, file: !37, line: 296, baseType: !1636, size: 64, offset: 1088)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1633, file: !37, line: 297, baseType: !1636, size: 64, offset: 1152)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1633, file: !37, line: 298, baseType: !1636, size: 64, offset: 1216)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1633, file: !37, line: 299, baseType: !1636, size: 64, offset: 1280)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1633, file: !37, line: 300, baseType: !1636, size: 64, offset: 1344)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1633, file: !37, line: 301, baseType: !1636, size: 64, offset: 1408)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !103, file: !30, line: 470, baseType: !1662, size: 64, offset: 768)
!1662 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1663, size: 64)
!1663 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1664, line: 82, size: 1408, elements: !1665)
!1664 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1665 = !{!1666, !1667, !1668, !1669, !1670, !1671, !1672, !1732, !1733, !1734, !1735, !1736, !1737, !1738, !1739, !1740, !1741, !1742, !1743, !1744, !1748, !1751, !1754}
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1663, file: !1664, line: 83, baseType: !94, size: 64)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1663, file: !1664, line: 84, baseType: !94, size: 64, offset: 64)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1663, file: !1664, line: 85, baseType: !1605, size: 64, offset: 128)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1663, file: !1664, line: 86, baseType: !218, size: 64, offset: 192)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1663, file: !1664, line: 87, baseType: !218, size: 64, offset: 256)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1663, file: !1664, line: 88, baseType: !218, size: 64, offset: 320)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1663, file: !1664, line: 90, baseType: !1673, size: 64, offset: 384)
!1673 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1674, size: 64)
!1674 = !DISubroutineType(types: !1675)
!1675 = !{!98, !1605, !1676}
!1676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1677, size: 64)
!1677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1678)
!1678 = !{!1679, !1680, !1681, !1682, !1683, !1684, !1685, !1699, !1712, !1713, !1714, !1715, !1716, !1724, !1725, !1726, !1727, !1728, !1729}
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1677, file: !24, line: 96, baseType: !94, size: 64)
!1680 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1677, file: !24, line: 97, baseType: !1662, size: 64, offset: 64)
!1681 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1677, file: !24, line: 99, baseType: !82, size: 64, offset: 128)
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1677, file: !24, line: 100, baseType: !94, size: 64, offset: 192)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1677, file: !24, line: 102, baseType: !100, size: 8, offset: 256)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1677, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1677, file: !24, line: 105, baseType: !1686, size: 64, offset: 320)
!1686 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1687, size: 64)
!1687 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1688)
!1688 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1689, line: 262, size: 1600, elements: !1690)
!1689 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1690 = !{!1691, !1693, !1694, !1698}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1688, file: !1689, line: 263, baseType: !1692, size: 256)
!1692 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 256, elements: !1239)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1688, file: !1689, line: 264, baseType: !1692, size: 256, offset: 256)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1688, file: !1689, line: 265, baseType: !1695, size: 1024, offset: 512)
!1695 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 1024, elements: !1696)
!1696 = !{!1697}
!1697 = !DISubrange(count: 128)
!1698 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1688, file: !1689, line: 266, baseType: !1136, size: 64, offset: 1536)
!1699 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1677, file: !24, line: 106, baseType: !1700, size: 64, offset: 384)
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1702)
!1702 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1689, line: 210, size: 256, elements: !1703)
!1703 = !{!1704, !1708, !1710, !1711}
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1702, file: !1689, line: 211, baseType: !1705, size: 72)
!1705 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 72, elements: !1706)
!1706 = !{!1707}
!1707 = !DISubrange(count: 9)
!1708 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1702, file: !1689, line: 212, baseType: !1709, size: 64, offset: 128)
!1709 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1689, line: 14, baseType: !87)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1702, file: !1689, line: 213, baseType: !438, size: 32, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1702, file: !1689, line: 214, baseType: !438, size: 32, offset: 224)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1677, file: !24, line: 108, baseType: !1636, size: 64, offset: 448)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1677, file: !24, line: 109, baseType: !1627, size: 64, offset: 512)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1677, file: !24, line: 110, baseType: !1636, size: 64, offset: 576)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1677, file: !24, line: 111, baseType: !1627, size: 64, offset: 640)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1677, file: !24, line: 112, baseType: !1717, size: 64, offset: 704)
!1717 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!1718 = !DISubroutineType(types: !1719)
!1719 = !{!98, !1605, !1720}
!1720 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1721)
!1721 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1722)
!1722 = !{!1723}
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1721, file: !37, line: 51, baseType: !98, size: 32)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1677, file: !24, line: 113, baseType: !1636, size: 64, offset: 768)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1677, file: !24, line: 114, baseType: !218, size: 64, offset: 832)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1677, file: !24, line: 115, baseType: !218, size: 64, offset: 896)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1677, file: !24, line: 117, baseType: !1631, size: 64, offset: 960)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1677, file: !24, line: 118, baseType: !1627, size: 64, offset: 1024)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1677, file: !24, line: 120, baseType: !1730, size: 64, offset: 1088)
!1730 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1731, size: 64)
!1731 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1663, file: !1664, line: 91, baseType: !1618, size: 64, offset: 448)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1663, file: !1664, line: 92, baseType: !1636, size: 64, offset: 512)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1663, file: !1664, line: 93, baseType: !1627, size: 64, offset: 576)
!1735 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1663, file: !1664, line: 94, baseType: !1636, size: 64, offset: 640)
!1736 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1663, file: !1664, line: 95, baseType: !1627, size: 64, offset: 704)
!1737 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1663, file: !1664, line: 97, baseType: !1636, size: 64, offset: 768)
!1738 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1663, file: !1664, line: 98, baseType: !1636, size: 64, offset: 832)
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1663, file: !1664, line: 100, baseType: !1717, size: 64, offset: 896)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1663, file: !1664, line: 101, baseType: !1636, size: 64, offset: 960)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1663, file: !1664, line: 103, baseType: !1636, size: 64, offset: 1024)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1663, file: !1664, line: 105, baseType: !1636, size: 64, offset: 1088)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1663, file: !1664, line: 107, baseType: !1631, size: 64, offset: 1152)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1663, file: !1664, line: 109, baseType: !1745, size: 64, offset: 1216)
!1745 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1746, size: 64)
!1746 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1747)
!1747 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1664, line: 109, flags: DIFlagFwdDecl)
!1748 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1663, file: !1664, line: 111, baseType: !1749, size: 64, offset: 1280)
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1750, size: 64)
!1750 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1664, line: 111, flags: DIFlagFwdDecl)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1663, file: !1664, line: 112, baseType: !1752, offset: 1344)
!1752 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1753, line: 187, elements: !138)
!1753 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1663, file: !1664, line: 114, baseType: !100, size: 8, offset: 1344)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !103, file: !30, line: 471, baseType: !1676, size: 64, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !103, file: !30, line: 473, baseType: !88, size: 64, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !103, file: !30, line: 475, baseType: !88, size: 64, offset: 960)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !103, file: !30, line: 480, baseType: !382, size: 192, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !103, file: !30, line: 484, baseType: !1760, size: 576, offset: 1216)
!1760 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1761)
!1761 = !{!1762, !1763, !1764, !1765, !1766, !1767}
!1762 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1760, file: !30, line: 362, baseType: !111, size: 128)
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1760, file: !30, line: 363, baseType: !111, size: 128, offset: 128)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1760, file: !30, line: 364, baseType: !111, size: 128, offset: 256)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1760, file: !30, line: 365, baseType: !111, size: 128, offset: 384)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1760, file: !30, line: 366, baseType: !100, size: 8, offset: 512)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1760, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !103, file: !30, line: 485, baseType: !1769, size: 2304, offset: 1792)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1770)
!1770 = !{!1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784, !1785, !1786, !1824, !1825, !1826, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1866, !1870}
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1769, file: !37, line: 566, baseType: !1720, size: 32)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1769, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1769, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1769, file: !37, line: 569, baseType: !100, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1769, file: !37, line: 570, baseType: !100, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1769, file: !37, line: 571, baseType: !100, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1769, file: !37, line: 572, baseType: !100, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1769, file: !37, line: 573, baseType: !100, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1769, file: !37, line: 574, baseType: !100, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1769, file: !37, line: 575, baseType: !100, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1769, file: !37, line: 576, baseType: !100, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1769, file: !37, line: 577, baseType: !437, size: 32, offset: 64)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1769, file: !37, line: 578, baseType: !124, offset: 96)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1769, file: !37, line: 580, baseType: !111, size: 128, offset: 128)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1769, file: !37, line: 581, baseType: !743, size: 192, offset: 256)
!1786 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1769, file: !37, line: 582, baseType: !1787, size: 64, offset: 448)
!1787 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1788, size: 64)
!1788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1789, line: 43, size: 1472, elements: !1790)
!1789 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1790 = !{!1791, !1792, !1793, !1794, !1795, !1798, !1810, !1811, !1812, !1813, !1814, !1815, !1816, !1817, !1818, !1819, !1820, !1821, !1822, !1823}
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1788, file: !1789, line: 44, baseType: !94, size: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1788, file: !1789, line: 45, baseType: !98, size: 32, offset: 64)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1788, file: !1789, line: 46, baseType: !111, size: 128, offset: 128)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1788, file: !1789, line: 47, baseType: !124, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1788, file: !1789, line: 48, baseType: !1796, size: 64, offset: 256)
!1796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1797, size: 64)
!1797 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1788, file: !1789, line: 49, baseType: !1799, size: 320, offset: 320)
!1799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1800, line: 11, size: 320, elements: !1801)
!1800 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1801 = !{!1802, !1803, !1804, !1809}
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1799, file: !1800, line: 16, baseType: !707, size: 128)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1799, file: !1800, line: 17, baseType: !87, size: 64, offset: 128)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1799, file: !1800, line: 18, baseType: !1805, size: 64, offset: 192)
!1805 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1806, size: 64)
!1806 = !DISubroutineType(types: !1807)
!1807 = !{null, !1808}
!1808 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1799, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1799, file: !1800, line: 19, baseType: !437, size: 32, offset: 256)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1788, file: !1789, line: 50, baseType: !87, size: 64, offset: 640)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1788, file: !1789, line: 51, baseType: !513, size: 64, offset: 704)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1788, file: !1789, line: 52, baseType: !513, size: 64, offset: 768)
!1813 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1788, file: !1789, line: 53, baseType: !513, size: 64, offset: 832)
!1814 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1788, file: !1789, line: 54, baseType: !513, size: 64, offset: 896)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1788, file: !1789, line: 55, baseType: !513, size: 64, offset: 960)
!1816 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1788, file: !1789, line: 56, baseType: !87, size: 64, offset: 1024)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1788, file: !1789, line: 57, baseType: !87, size: 64, offset: 1088)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1788, file: !1789, line: 58, baseType: !87, size: 64, offset: 1152)
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1788, file: !1789, line: 59, baseType: !87, size: 64, offset: 1216)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1788, file: !1789, line: 60, baseType: !87, size: 64, offset: 1280)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1788, file: !1789, line: 61, baseType: !1605, size: 64, offset: 1344)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1788, file: !1789, line: 62, baseType: !100, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1788, file: !1789, line: 63, baseType: !100, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1824 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1769, file: !37, line: 583, baseType: !100, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1825 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1769, file: !37, line: 584, baseType: !100, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1769, file: !37, line: 585, baseType: !100, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1769, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1769, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1769, file: !37, line: 592, baseType: !505, size: 512, offset: 576)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1769, file: !37, line: 593, baseType: !283, size: 64, offset: 1088)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1769, file: !37, line: 594, baseType: !1344, size: 256, offset: 1152)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1769, file: !37, line: 595, baseType: !714, size: 128, offset: 1408)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1769, file: !37, line: 596, baseType: !1796, size: 64, offset: 1536)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1769, file: !37, line: 597, baseType: !305, size: 32, offset: 1600)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1769, file: !37, line: 598, baseType: !305, size: 32, offset: 1632)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1769, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1769, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1769, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1769, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1769, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1769, file: !37, line: 604, baseType: !100, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1769, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1769, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1769, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1769, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1769, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1769, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1769, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1769, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1769, file: !37, line: 613, baseType: !98, size: 32, offset: 1792)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1769, file: !37, line: 614, baseType: !98, size: 32, offset: 1824)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1769, file: !37, line: 615, baseType: !283, size: 64, offset: 1856)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1769, file: !37, line: 616, baseType: !283, size: 64, offset: 1920)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1769, file: !37, line: 617, baseType: !283, size: 64, offset: 1984)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1769, file: !37, line: 618, baseType: !283, size: 64, offset: 2048)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1769, file: !37, line: 620, baseType: !1857, size: 64, offset: 2112)
!1857 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1858, size: 64)
!1858 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1859)
!1859 = !{!1860, !1861, !1862, !1863}
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1858, file: !37, line: 537, baseType: !124)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1858, file: !37, line: 538, baseType: !7, size: 32)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1858, file: !37, line: 540, baseType: !111, size: 128, offset: 64)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1858, file: !37, line: 543, baseType: !1864, size: 64, offset: 192)
!1864 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1865, size: 64)
!1865 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1769, file: !37, line: 621, baseType: !1867, size: 64, offset: 2176)
!1867 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1868, size: 64)
!1868 = !DISubroutineType(types: !1869)
!1869 = !{null, !1605, !667}
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1769, file: !37, line: 622, baseType: !1871, size: 64, offset: 2240)
!1871 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1872, size: 64)
!1872 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !103, file: !30, line: 486, baseType: !1874, size: 64, offset: 4096)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1883, !1884, !1885}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1875, file: !37, line: 643, baseType: !1633, size: 1472)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1875, file: !37, line: 644, baseType: !1636, size: 64, offset: 1472)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1875, file: !37, line: 645, baseType: !1880, size: 64, offset: 1536)
!1880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1881, size: 64)
!1881 = !DISubroutineType(types: !1882)
!1882 = !{null, !1605, !100}
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1875, file: !37, line: 646, baseType: !1636, size: 64, offset: 1600)
!1884 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1875, file: !37, line: 647, baseType: !1627, size: 64, offset: 1664)
!1885 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1875, file: !37, line: 648, baseType: !1627, size: 64, offset: 1728)
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !103, file: !30, line: 493, baseType: !1887, size: 64, offset: 4160)
!1887 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1888, size: 64)
!1888 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1889)
!1889 = !{!1890, !1891, !1892, !2066, !2067, !2068, !2069, !2070, !2071, !2074, !2075, !2076, !2077, !2078, !2079, !2080}
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1888, file: !51, line: 163, baseType: !111, size: 128)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1888, file: !51, line: 164, baseType: !94, size: 64, offset: 128)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1888, file: !51, line: 165, baseType: !1893, size: 64, offset: 192)
!1893 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1894, size: 64)
!1894 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1895)
!1895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1896)
!1896 = !{!1897, !2015, !2026, !2031, !2035, !2043, !2047, !2051, !2058, !2062}
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1895, file: !51, line: 106, baseType: !1898, size: 64)
!1898 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1899, size: 64)
!1899 = !DISubroutineType(types: !1900)
!1900 = !{!98, !1887, !1901, !50}
!1901 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1902, size: 64)
!1902 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1903, line: 51, size: 1344, elements: !1904)
!1903 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1904 = !{!1905, !1906, !1908, !1909, !1999, !2008, !2009, !2010, !2011, !2012, !2013, !2014}
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1902, file: !1903, line: 52, baseType: !94, size: 64)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1902, file: !1903, line: 53, baseType: !1907, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1903, line: 28, baseType: !437)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1902, file: !1903, line: 54, baseType: !94, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1902, file: !1903, line: 55, baseType: !1910, size: 192, offset: 192)
!1910 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1911, line: 17, size: 192, elements: !1912)
!1911 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1912 = !{!1913, !1915, !1998}
!1913 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1910, file: !1911, line: 18, baseType: !1914, size: 64)
!1914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1910, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1910, file: !1911, line: 19, baseType: !1916, size: 64, offset: 64)
!1916 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1917, size: 64)
!1917 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1918)
!1918 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1911, line: 110, size: 1152, elements: !1919)
!1919 = !{!1920, !1924, !1928, !1934, !1940, !1944, !1948, !1953, !1957, !1958, !1962, !1966, !1970, !1981, !1982, !1983, !1984, !1994}
!1920 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1918, file: !1911, line: 111, baseType: !1921, size: 64)
!1921 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1922, size: 64)
!1922 = !DISubroutineType(types: !1923)
!1923 = !{!1914, !1914}
!1924 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1918, file: !1911, line: 112, baseType: !1925, size: 64, offset: 64)
!1925 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1926, size: 64)
!1926 = !DISubroutineType(types: !1927)
!1927 = !{null, !1914}
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1918, file: !1911, line: 113, baseType: !1929, size: 64, offset: 128)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{!100, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1933, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1910)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1918, file: !1911, line: 114, baseType: !1935, size: 64, offset: 192)
!1935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1936, size: 64)
!1936 = !DISubroutineType(types: !1937)
!1937 = !{!1136, !1932, !1938}
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !103)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1918, file: !1911, line: 116, baseType: !1941, size: 64, offset: 256)
!1941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1942, size: 64)
!1942 = !DISubroutineType(types: !1943)
!1943 = !{!100, !1932, !94}
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1918, file: !1911, line: 118, baseType: !1945, size: 64, offset: 320)
!1945 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1946, size: 64)
!1946 = !DISubroutineType(types: !1947)
!1947 = !{!98, !1932, !94, !7, !88, !212}
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1918, file: !1911, line: 123, baseType: !1949, size: 64, offset: 384)
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DISubroutineType(types: !1951)
!1951 = !{!98, !1932, !94, !1952, !212}
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1918, file: !1911, line: 126, baseType: !1954, size: 64, offset: 448)
!1954 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1955, size: 64)
!1955 = !DISubroutineType(types: !1956)
!1956 = !{!94, !1932}
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1918, file: !1911, line: 127, baseType: !1954, size: 64, offset: 512)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1918, file: !1911, line: 128, baseType: !1959, size: 64, offset: 576)
!1959 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1960, size: 64)
!1960 = !DISubroutineType(types: !1961)
!1961 = !{!1914, !1932}
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1918, file: !1911, line: 130, baseType: !1963, size: 64, offset: 640)
!1963 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1964, size: 64)
!1964 = !DISubroutineType(types: !1965)
!1965 = !{!1914, !1932, !1914}
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1918, file: !1911, line: 133, baseType: !1967, size: 64, offset: 704)
!1967 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1968, size: 64)
!1968 = !DISubroutineType(types: !1969)
!1969 = !{!1914, !1932, !94}
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1918, file: !1911, line: 135, baseType: !1971, size: 64, offset: 768)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!98, !1932, !94, !94, !7, !7, !1974}
!1974 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1975, size: 64)
!1975 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1911, line: 43, size: 640, elements: !1976)
!1976 = !{!1977, !1978, !1979}
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1975, file: !1911, line: 44, baseType: !1914, size: 64)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1975, file: !1911, line: 45, baseType: !7, size: 32, offset: 64)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1975, file: !1911, line: 46, baseType: !1980, size: 512, offset: 128)
!1980 = !DICompositeType(tag: DW_TAG_array_type, baseType: !283, size: 512, elements: !543)
!1981 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1918, file: !1911, line: 140, baseType: !1963, size: 64, offset: 832)
!1982 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1918, file: !1911, line: 143, baseType: !1959, size: 64, offset: 896)
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1918, file: !1911, line: 145, baseType: !1921, size: 64, offset: 960)
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1918, file: !1911, line: 146, baseType: !1985, size: 64, offset: 1024)
!1985 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1986, size: 64)
!1986 = !DISubroutineType(types: !1987)
!1987 = !{!98, !1932, !1988}
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1911, line: 29, size: 128, elements: !1990)
!1990 = !{!1991, !1992, !1993}
!1991 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !1989, file: !1911, line: 30, baseType: !7, size: 32)
!1992 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1989, file: !1911, line: 31, baseType: !7, size: 32, offset: 32)
!1993 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !1989, file: !1911, line: 32, baseType: !1932, size: 64, offset: 64)
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1918, file: !1911, line: 148, baseType: !1995, size: 64, offset: 1088)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DISubroutineType(types: !1997)
!1997 = !{!98, !1932, !1605}
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1910, file: !1911, line: 20, baseType: !1605, size: 64, offset: 128)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1902, file: !1903, line: 57, baseType: !2000, size: 64, offset: 384)
!2000 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2001, size: 64)
!2001 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1903, line: 31, size: 704, elements: !2002)
!2002 = !{!2003, !2004, !2005, !2006, !2007}
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2001, file: !1903, line: 32, baseType: !165, size: 64)
!2004 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2001, file: !1903, line: 33, baseType: !98, size: 32, offset: 64)
!2005 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2001, file: !1903, line: 34, baseType: !88, size: 64, offset: 128)
!2006 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2001, file: !1903, line: 35, baseType: !2000, size: 64, offset: 192)
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2001, file: !1903, line: 43, baseType: !233, size: 448, offset: 256)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1902, file: !1903, line: 58, baseType: !2000, size: 64, offset: 448)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1902, file: !1903, line: 59, baseType: !1901, size: 64, offset: 512)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1902, file: !1903, line: 60, baseType: !1901, size: 64, offset: 576)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1902, file: !1903, line: 61, baseType: !1901, size: 64, offset: 640)
!2012 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1902, file: !1903, line: 63, baseType: !106, size: 512, offset: 704)
!2013 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1902, file: !1903, line: 65, baseType: !87, size: 64, offset: 1216)
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1902, file: !1903, line: 66, baseType: !88, size: 64, offset: 1280)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1895, file: !51, line: 108, baseType: !2016, size: 64, offset: 64)
!2016 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2017, size: 64)
!2017 = !DISubroutineType(types: !2018)
!2018 = !{!98, !1887, !2019, !50}
!2019 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2020, size: 64)
!2020 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2021)
!2021 = !{!2022, !2023, !2024}
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2020, file: !51, line: 64, baseType: !1914, size: 64)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2020, file: !51, line: 65, baseType: !98, size: 32, offset: 64)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2020, file: !51, line: 66, baseType: !2025, size: 512, offset: 96)
!2025 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 512, elements: !799)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1895, file: !51, line: 110, baseType: !2027, size: 64, offset: 128)
!2027 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2028, size: 64)
!2028 = !DISubroutineType(types: !2029)
!2029 = !{!98, !1887, !7, !2030}
!2030 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !86, line: 164, baseType: !87)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1895, file: !51, line: 111, baseType: !2032, size: 64, offset: 192)
!2032 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2033, size: 64)
!2033 = !DISubroutineType(types: !2034)
!2034 = !{null, !1887, !7}
!2035 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1895, file: !51, line: 112, baseType: !2036, size: 64, offset: 256)
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = !DISubroutineType(types: !2038)
!2038 = !{!98, !1887, !1901, !2039, !7, !2041, !2042}
!2039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2040, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !437)
!2041 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !87, size: 64)
!2042 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1895, file: !51, line: 117, baseType: !2044, size: 64, offset: 320)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!98, !1887, !7, !7, !88}
!2047 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1895, file: !51, line: 119, baseType: !2048, size: 64, offset: 384)
!2048 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2049, size: 64)
!2049 = !DISubroutineType(types: !2050)
!2050 = !{null, !1887, !7, !7}
!2051 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1895, file: !51, line: 121, baseType: !2052, size: 64, offset: 448)
!2052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2053, size: 64)
!2053 = !DISubroutineType(types: !2054)
!2054 = !{!98, !1887, !2055, !100}
!2055 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2056, size: 64)
!2056 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2057, line: 11, flags: DIFlagFwdDecl)
!2057 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1895, file: !51, line: 122, baseType: !2059, size: 64, offset: 512)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{null, !1887, !2055}
!2062 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1895, file: !51, line: 123, baseType: !2063, size: 64, offset: 576)
!2063 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2064, size: 64)
!2064 = !DISubroutineType(types: !2065)
!2065 = !{!98, !1887, !2019, !2041, !2042}
!2066 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1888, file: !51, line: 166, baseType: !88, size: 64, offset: 256)
!2067 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1888, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1888, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2069 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1888, file: !51, line: 171, baseType: !1914, size: 64, offset: 384)
!2070 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1888, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2071 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1888, file: !51, line: 173, baseType: !2072, size: 64, offset: 512)
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2074 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1888, file: !51, line: 175, baseType: !1887, size: 64, offset: 576)
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1888, file: !51, line: 182, baseType: !2030, size: 64, offset: 640)
!2076 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1888, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1888, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2078 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1888, file: !51, line: 185, baseType: !1472, size: 128, offset: 768)
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1888, file: !51, line: 186, baseType: !382, size: 192, offset: 896)
!2080 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1888, file: !51, line: 187, baseType: !2081, offset: 1088)
!2081 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1358)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !103, file: !30, line: 499, baseType: !111, size: 128, offset: 4224)
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !103, file: !30, line: 502, baseType: !2084, size: 64, offset: 4352)
!2084 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2085, size: 64)
!2085 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2086)
!2086 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !103, file: !30, line: 504, baseType: !2088, size: 64, offset: 4416)
!2088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !283, size: 64)
!2089 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !103, file: !30, line: 505, baseType: !283, size: 64, offset: 4480)
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !103, file: !30, line: 510, baseType: !283, size: 64, offset: 4544)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !103, file: !30, line: 511, baseType: !2092, size: 64, offset: 4608)
!2092 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2093, size: 64)
!2093 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2094)
!2094 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !103, file: !30, line: 513, baseType: !2096, size: 64, offset: 4672)
!2096 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2097, size: 64)
!2097 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2098)
!2098 = !{!2099, !2100}
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2097, file: !30, line: 293, baseType: !7, size: 32)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2097, file: !30, line: 294, baseType: !87, size: 64, offset: 64)
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !103, file: !30, line: 515, baseType: !111, size: 128, offset: 4736)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !103, file: !30, line: 526, baseType: !2103, offset: 4864)
!2103 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2104, line: 5, elements: !138)
!2104 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !103, file: !30, line: 528, baseType: !1901, size: 64, offset: 4864)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !103, file: !30, line: 529, baseType: !1914, size: 64, offset: 4928)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !103, file: !30, line: 534, baseType: !2108, size: 32, offset: 4992)
!2108 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !86, line: 16, baseType: !2109)
!2109 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !86, line: 13, baseType: !437)
!2110 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !103, file: !30, line: 535, baseType: !437, size: 32, offset: 5024)
!2111 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !103, file: !30, line: 537, baseType: !124, offset: 5056)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !103, file: !30, line: 538, baseType: !111, size: 128, offset: 5056)
!2113 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !103, file: !30, line: 540, baseType: !2114, size: 64, offset: 5184)
!2114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2115, size: 64)
!2115 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2116, line: 54, size: 960, elements: !2117)
!2116 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2117 = !{!2118, !2119, !2120, !2121, !2122, !2123, !2124, !2128, !2132, !2133, !2134, !2135, !2139, !2143, !2144}
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2115, file: !2116, line: 55, baseType: !94, size: 64)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2115, file: !2116, line: 56, baseType: !82, size: 64, offset: 64)
!2120 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2115, file: !2116, line: 58, baseType: !218, size: 64, offset: 128)
!2121 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2115, file: !2116, line: 59, baseType: !218, size: 64, offset: 192)
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2115, file: !2116, line: 60, baseType: !117, size: 64, offset: 256)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2115, file: !2116, line: 62, baseType: !1618, size: 64, offset: 320)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2115, file: !2116, line: 63, baseType: !2125, size: 64, offset: 384)
!2125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2126, size: 64)
!2126 = !DISubroutineType(types: !2127)
!2127 = !{!165, !1605, !1625}
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2115, file: !2116, line: 65, baseType: !2129, size: 64, offset: 448)
!2129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2130, size: 64)
!2130 = !DISubroutineType(types: !2131)
!2131 = !{null, !2114}
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2115, file: !2116, line: 66, baseType: !1627, size: 64, offset: 512)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2115, file: !2116, line: 68, baseType: !1636, size: 64, offset: 576)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2115, file: !2116, line: 70, baseType: !1393, size: 64, offset: 640)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2115, file: !2116, line: 71, baseType: !2136, size: 64, offset: 704)
!2136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2137, size: 64)
!2137 = !DISubroutineType(types: !2138)
!2138 = !{!1136, !1605}
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2115, file: !2116, line: 73, baseType: !2140, size: 64, offset: 768)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{null, !1605, !1428, !1434}
!2143 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2115, file: !2116, line: 75, baseType: !1631, size: 64, offset: 832)
!2144 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2115, file: !2116, line: 77, baseType: !1749, size: 64, offset: 896)
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !103, file: !30, line: 541, baseType: !218, size: 64, offset: 5248)
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !103, file: !30, line: 543, baseType: !1627, size: 64, offset: 5312)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !103, file: !30, line: 544, baseType: !2148, size: 64, offset: 5376)
!2148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2149, size: 64)
!2149 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !103, file: !30, line: 545, baseType: !2151, size: 64, offset: 5440)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2153 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !103, file: !30, line: 547, baseType: !100, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2154 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !103, file: !30, line: 548, baseType: !100, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !103, file: !30, line: 549, baseType: !100, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !103, file: !30, line: 550, baseType: !100, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2157 = !DIDerivedType(tag: DW_TAG_member, name: "platform_dma_mask", scope: !90, file: !91, line: 27, baseType: !283, size: 64, offset: 5696)
!2158 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !90, file: !91, line: 28, baseType: !2097, size: 128, offset: 5760)
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "num_resources", scope: !90, file: !91, line: 29, baseType: !437, size: 32, offset: 5888)
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "resource", scope: !90, file: !91, line: 30, baseType: !2161, size: 64, offset: 5952)
!2161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2162, size: 64)
!2162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "resource", file: !2163, line: 20, size: 512, elements: !2164)
!2163 = !DIFile(filename: "./include/linux/ioport.h", directory: "/home/lizy2001/genbc/linux")
!2164 = !{!2165, !2167, !2168, !2169, !2170, !2171, !2172, !2173}
!2165 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !2162, file: !2163, line: 21, baseType: !2166, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_typedef, name: "resource_size_t", file: !86, line: 158, baseType: !1134)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "end", scope: !2162, file: !2163, line: 22, baseType: !2166, size: 64, offset: 64)
!2168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2162, file: !2163, line: 23, baseType: !94, size: 64, offset: 128)
!2169 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2162, file: !2163, line: 24, baseType: !87, size: 64, offset: 192)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "desc", scope: !2162, file: !2163, line: 25, baseType: !87, size: 64, offset: 256)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2162, file: !2163, line: 26, baseType: !2161, size: 64, offset: 320)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2162, file: !2163, line: 26, baseType: !2161, size: 64, offset: 384)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2162, file: !2163, line: 26, baseType: !2161, size: 64, offset: 448)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "id_entry", scope: !90, file: !91, line: 32, baseType: !2175, size: 64, offset: 6016)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2177)
!2177 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_device_id", file: !1689, line: 586, size: 256, elements: !2178)
!2178 = !{!2179, !2181}
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2177, file: !1689, line: 587, baseType: !2180, size: 160)
!2180 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 160, elements: !1210)
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2177, file: !1689, line: 588, baseType: !1709, size: 64, offset: 192)
!2182 = !DIDerivedType(tag: DW_TAG_member, name: "driver_override", scope: !90, file: !91, line: 33, baseType: !165, size: 64, offset: 6080)
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "mfd_cell", scope: !90, file: !91, line: 36, baseType: !2184, size: 64, offset: 6144)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = !DICompositeType(tag: DW_TAG_structure_type, name: "mfd_cell", file: !91, line: 18, flags: DIFlagFwdDecl)
!2186 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !90, file: !91, line: 39, baseType: !2187, offset: 6208)
!2187 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pdev_archdata", file: !2104, line: 8, elements: !138)
!2188 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2189, size: 64)
!2189 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !7)
!2190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2191, size: 64)
!2191 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !96)
!2192 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!2193 = !{!0, !2194, !2201, !2206, !2208, !2213, !2218, !2239, !2244, !2253, !2375, !2378}
!2194 = !DIGlobalVariableExpression(var: !2195, expr: !DIExpression())
!2195 = distinct !DIGlobalVariable(name: "__exitcall_brcmstb_i2c_driver_exit", scope: !2, file: !3, line: 756, type: !2196, isLocal: true, isDefinition: true)
!2196 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2197, line: 117, baseType: !2198)
!2197 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2198 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2199, size: 64)
!2199 = !DISubroutineType(types: !2200)
!2200 = !{null}
!2201 = !DIGlobalVariableExpression(var: !2202, expr: !DIExpression())
!2202 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author175", scope: !2, file: !3, line: 758, type: !2203, isLocal: true, isDefinition: true, align: 8)
!2203 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 408, elements: !2204)
!2204 = !{!2205}
!2205 = !DISubrange(count: 51)
!2206 = !DIGlobalVariableExpression(var: !2207, expr: !DIExpression())
!2207 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description176", scope: !2, file: !3, line: 759, type: !2203, isLocal: true, isDefinition: true, align: 8)
!2208 = !DIGlobalVariableExpression(var: !2209, expr: !DIExpression())
!2209 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file177", scope: !2, file: !3, line: 760, type: !2210, isLocal: true, isDefinition: true, align: 8)
!2210 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 384, elements: !2211)
!2211 = !{!2212}
!2212 = !DISubrange(count: 48)
!2213 = !DIGlobalVariableExpression(var: !2214, expr: !DIExpression())
!2214 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license178", scope: !2, file: !3, line: 760, type: !2215, isLocal: true, isDefinition: true, align: 8)
!2215 = !DICompositeType(tag: DW_TAG_array_type, baseType: !95, size: 216, elements: !2216)
!2216 = !{!2217}
!2217 = !DISubrange(count: 27)
!2218 = !DIGlobalVariableExpression(var: !2219, expr: !DIExpression())
!2219 = distinct !DIGlobalVariable(name: "brcmstb_i2c_driver", scope: !2, file: !3, line: 747, type: !2220, isLocal: true, isDefinition: true)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "platform_driver", file: !91, line: 200, size: 1600, elements: !2221)
!2221 = !{!2222, !2226, !2227, !2231, !2235, !2236, !2237, !2238}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !2220, file: !91, line: 201, baseType: !2223, size: 64)
!2223 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2224, size: 64)
!2224 = !DISubroutineType(types: !2225)
!2225 = !{!98, !89}
!2226 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2220, file: !91, line: 202, baseType: !2223, size: 64, offset: 64)
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !2220, file: !91, line: 203, baseType: !2228, size: 64, offset: 128)
!2228 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2229, size: 64)
!2229 = !DISubroutineType(types: !2230)
!2230 = !{null, !89}
!2231 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !2220, file: !91, line: 204, baseType: !2232, size: 64, offset: 192)
!2232 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2233, size: 64)
!2233 = !DISubroutineType(types: !2234)
!2234 = !{!98, !89, !1720}
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !2220, file: !91, line: 205, baseType: !2223, size: 64, offset: 256)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2220, file: !91, line: 206, baseType: !1677, size: 1152, offset: 320)
!2237 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !2220, file: !91, line: 207, baseType: !2175, size: 64, offset: 1472)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_deferred_probe", scope: !2220, file: !91, line: 208, baseType: !100, size: 8, offset: 1536)
!2239 = !DIGlobalVariableExpression(var: !2240, expr: !DIExpression())
!2240 = distinct !DIGlobalVariable(name: "__key", scope: !2241, file: !744, line: 88, type: !1752, isLocal: true, isDefinition: true)
!2241 = distinct !DISubprogram(name: "__init_completion", scope: !744, file: !744, line: 85, type: !2242, scopeLine: 86, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2242 = !DISubroutineType(types: !2243)
!2243 = !{null, !742}
!2244 = !DIGlobalVariableExpression(var: !2245, expr: !DIExpression())
!2245 = distinct !DIGlobalVariable(name: "bsc_clk", scope: !2, file: !3, line: 122, type: !2246, isLocal: true, isDefinition: true)
!2246 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2247, size: 768, elements: !543)
!2247 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2248)
!2248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsc_clk_param", file: !3, line: 91, size: 96, elements: !2249)
!2249 = !{!2250, !2251, !2252}
!2250 = !DIDerivedType(tag: DW_TAG_member, name: "hz", scope: !2248, file: !3, line: 92, baseType: !437, size: 32)
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "scl_mask", scope: !2248, file: !3, line: 93, baseType: !437, size: 32, offset: 32)
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "div_mask", scope: !2248, file: !3, line: 94, baseType: !437, size: 32, offset: 64)
!2253 = !DIGlobalVariableExpression(var: !2254, expr: !DIExpression())
!2254 = distinct !DIGlobalVariable(name: "brcmstb_i2c_algo", scope: !2, file: !3, line: 540, type: !2255, isLocal: true, isDefinition: true)
!2255 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2256)
!2256 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !2257, line: 519, size: 320, elements: !2258)
!2257 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2258 = !{!2259, !2356, !2357, !2370, !2371}
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !2256, file: !2257, line: 529, baseType: !2260, size: 64)
!2260 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2261, size: 64)
!2261 = !DISubroutineType(types: !2262)
!2262 = !{!98, !2263, !2347, !98}
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !2257, line: 695, size: 7552, elements: !2265)
!2265 = !{!2266, !2267, !2268, !2270, !2271, !2285, !2292, !2293, !2294, !2295, !2296, !2297, !2298, !2300, !2301, !2302, !2303, !2335, !2346}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2264, file: !2257, line: 696, baseType: !82, size: 64)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2264, file: !2257, line: 697, baseType: !7, size: 32, offset: 64)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !2264, file: !2257, line: 698, baseType: !2269, size: 64, offset: 128)
!2269 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2255, size: 64)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !2264, file: !2257, line: 699, baseType: !88, size: 64, offset: 192)
!2271 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !2264, file: !2257, line: 702, baseType: !2272, size: 64, offset: 256)
!2272 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2273, size: 64)
!2273 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2274)
!2274 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !2257, line: 557, size: 192, elements: !2275)
!2275 = !{!2276, !2280, !2284}
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !2274, file: !2257, line: 558, baseType: !2277, size: 64)
!2277 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2278, size: 64)
!2278 = !DISubroutineType(types: !2279)
!2279 = !{null, !2263, !7}
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !2274, file: !2257, line: 559, baseType: !2281, size: 64, offset: 64)
!2281 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2282, size: 64)
!2282 = !DISubroutineType(types: !2283)
!2283 = !{!98, !2263, !7}
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !2274, file: !2257, line: 560, baseType: !2277, size: 64, offset: 128)
!2285 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !2264, file: !2257, line: 703, baseType: !2286, size: 192, offset: 320)
!2286 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !2287, line: 30, size: 192, elements: !2288)
!2287 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!2288 = !{!2289, !2290, !2291}
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !2286, file: !2287, line: 31, baseType: !330)
!2290 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !2286, file: !2287, line: 32, baseType: !564, size: 128)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2286, file: !2287, line: 33, baseType: !427, size: 64, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !2264, file: !2257, line: 704, baseType: !2286, size: 192, offset: 512)
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !2264, file: !2257, line: 706, baseType: !98, size: 32, offset: 704)
!2294 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !2264, file: !2257, line: 707, baseType: !98, size: 32, offset: 736)
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2264, file: !2257, line: 708, baseType: !103, size: 5568, offset: 768)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !2264, file: !2257, line: 709, baseType: !87, size: 64, offset: 6336)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !2264, file: !2257, line: 713, baseType: !98, size: 32, offset: 6400)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2264, file: !2257, line: 714, baseType: !2299, size: 384, offset: 6432)
!2299 = !DICompositeType(tag: DW_TAG_array_type, baseType: !96, size: 384, elements: !2211)
!2300 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !2264, file: !2257, line: 715, baseType: !743, size: 192, offset: 6848)
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !2264, file: !2257, line: 717, baseType: !382, size: 192, offset: 7040)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !2264, file: !2257, line: 718, baseType: !111, size: 128, offset: 7232)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !2264, file: !2257, line: 720, baseType: !2304, size: 64, offset: 7360)
!2304 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2305, size: 64)
!2305 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !2257, line: 618, size: 832, elements: !2306)
!2306 = !{!2307, !2311, !2312, !2316, !2317, !2318, !2319, !2323, !2324, !2327, !2328, !2331, !2334}
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2305, file: !2257, line: 619, baseType: !2308, size: 64)
!2308 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2309, size: 64)
!2309 = !DISubroutineType(types: !2310)
!2310 = !{!98, !2263}
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2305, file: !2257, line: 621, baseType: !2308, size: 64, offset: 64)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2305, file: !2257, line: 622, baseType: !2313, size: 64, offset: 128)
!2313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2314, size: 64)
!2314 = !DISubroutineType(types: !2315)
!2315 = !{null, !2263, !98}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2305, file: !2257, line: 623, baseType: !2308, size: 64, offset: 192)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2305, file: !2257, line: 624, baseType: !2313, size: 64, offset: 256)
!2318 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2305, file: !2257, line: 625, baseType: !2308, size: 64, offset: 320)
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2305, file: !2257, line: 627, baseType: !2320, size: 64, offset: 384)
!2320 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2321, size: 64)
!2321 = !DISubroutineType(types: !2322)
!2322 = !{null, !2263}
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2305, file: !2257, line: 628, baseType: !2320, size: 64, offset: 448)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2305, file: !2257, line: 631, baseType: !2325, size: 64, offset: 512)
!2325 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2326, size: 64)
!2326 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !2257, line: 631, flags: DIFlagFwdDecl)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2305, file: !2257, line: 632, baseType: !2325, size: 64, offset: 576)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2305, file: !2257, line: 633, baseType: !2329, size: 64, offset: 640)
!2329 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2330, size: 64)
!2330 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !2257, line: 633, flags: DIFlagFwdDecl)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2305, file: !2257, line: 634, baseType: !2332, size: 64, offset: 704)
!2332 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2333, size: 64)
!2333 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !2257, line: 634, flags: DIFlagFwdDecl)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2305, file: !2257, line: 635, baseType: !2332, size: 64, offset: 768)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !2264, file: !2257, line: 721, baseType: !2336, size: 64, offset: 7424)
!2336 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2337, size: 64)
!2337 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2338)
!2338 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !2257, line: 664, size: 192, elements: !2339)
!2339 = !{!2340, !2341, !2342, !2343, !2344, !2345}
!2340 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2338, file: !2257, line: 665, baseType: !283, size: 64)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2338, file: !2257, line: 666, baseType: !98, size: 32, offset: 64)
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2338, file: !2257, line: 667, baseType: !411, size: 16, offset: 96)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2338, file: !2257, line: 668, baseType: !411, size: 16, offset: 112)
!2344 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2338, file: !2257, line: 669, baseType: !411, size: 16, offset: 128)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2338, file: !2257, line: 670, baseType: !411, size: 16, offset: 144)
!2346 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !2264, file: !2257, line: 723, baseType: !1887, size: 64, offset: 7488)
!2347 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2348, size: 64)
!2348 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !2349, line: 69, size: 128, elements: !2350)
!2349 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!2350 = !{!2351, !2352, !2353, !2354}
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !2348, file: !2349, line: 70, baseType: !412, size: 16)
!2352 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2348, file: !2349, line: 71, baseType: !412, size: 16, offset: 16)
!2353 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !2348, file: !2349, line: 84, baseType: !412, size: 16, offset: 32)
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !2348, file: !2349, line: 85, baseType: !2355, size: 64, offset: 64)
!2355 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !575, size: 64)
!2356 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !2256, file: !2257, line: 531, baseType: !2260, size: 64, offset: 64)
!2357 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !2256, file: !2257, line: 533, baseType: !2358, size: 64, offset: 128)
!2358 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2359, size: 64)
!2359 = !DISubroutineType(types: !2360)
!2360 = !{!98, !2263, !411, !207, !96, !574, !98, !2361}
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !2349, line: 135, size: 272, elements: !2363)
!2363 = !{!2364, !2365, !2366}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !2362, file: !2349, line: 136, baseType: !575, size: 8)
!2365 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !2362, file: !2349, line: 137, baseType: !412, size: 16)
!2366 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !2362, file: !2349, line: 138, baseType: !2367, size: 272)
!2367 = !DICompositeType(tag: DW_TAG_array_type, baseType: !575, size: 272, elements: !2368)
!2368 = !{!2369}
!2369 = !DISubrange(count: 34)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !2256, file: !2257, line: 536, baseType: !2358, size: 64, offset: 192)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !2256, file: !2257, line: 541, baseType: !2372, size: 64, offset: 256)
!2372 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2373, size: 64)
!2373 = !DISubroutineType(types: !2374)
!2374 = !{!437, !2263}
!2375 = !DIGlobalVariableExpression(var: !2376, expr: !DIExpression())
!2376 = distinct !DIGlobalVariable(name: "brcmstb_i2c_of_match", scope: !2, file: !3, line: 739, type: !2377, isLocal: true, isDefinition: true)
!2377 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1687, size: 6400, elements: !364)
!2378 = !DIGlobalVariableExpression(var: !2379, expr: !DIExpression())
!2379 = distinct !DIGlobalVariable(name: "brcmstb_i2c_pm", scope: !2, file: !3, line: 736, type: !1632, isLocal: true, isDefinition: true)
!2380 = !{i32 7, !"Dwarf Version", i32 4}
!2381 = !{i32 2, !"Debug Info Version", i32 3}
!2382 = !{i32 1, !"wchar_size", i32 2}
!2383 = !{i32 1, !"Code Model", i32 2}
!2384 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2385 = distinct !DISubprogram(name: "brcmstb_i2c_driver_init", scope: !3, file: !3, line: 756, type: !2386, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2386 = !DISubroutineType(types: !2387)
!2387 = !{!98}
!2388 = !DILocation(line: 756, column: 1, scope: !2385)
!2389 = distinct !DISubprogram(name: "brcmstb_i2c_driver_exit", scope: !3, file: !3, line: 756, type: !2199, scopeLine: 756, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2390 = !DILocation(line: 756, column: 1, scope: !2389)
!2391 = distinct !DISubprogram(name: "brcmstb_i2c_probe", scope: !3, file: !3, line: 608, type: !2224, scopeLine: 609, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2392 = !DILocalVariable(name: "pdev", arg: 1, scope: !2391, file: !3, line: 608, type: !89)
!2393 = !DILocation(line: 608, column: 54, scope: !2391)
!2394 = !DILocalVariable(name: "rc", scope: !2391, file: !3, line: 610, type: !98)
!2395 = !DILocation(line: 610, column: 6, scope: !2391)
!2396 = !DILocalVariable(name: "dev", scope: !2391, file: !3, line: 611, type: !2397)
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2398, size: 64)
!2398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "brcmstb_i2c_dev", file: !3, line: 165, size: 8064, elements: !2399)
!2399 = !{!2400, !2401, !2402, !2403, !2416, !2417, !2418, !2419}
!2400 = !DIDerivedType(tag: DW_TAG_member, name: "device", scope: !2398, file: !3, line: 166, baseType: !1605, size: 64)
!2401 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !2398, file: !3, line: 167, baseType: !88, size: 64, offset: 64)
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "irq", scope: !2398, file: !3, line: 168, baseType: !98, size: 32, offset: 128)
!2403 = !DIDerivedType(tag: DW_TAG_member, name: "bsc_regmap", scope: !2398, file: !3, line: 169, baseType: !2404, size: 64, offset: 192)
!2404 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2405, size: 64)
!2405 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bsc_regs", file: !3, line: 80, size: 704, elements: !2406)
!2406 = !{!2407, !2408, !2410, !2411, !2412, !2413, !2414, !2415}
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "chip_address", scope: !2405, file: !3, line: 81, baseType: !437, size: 32)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "data_in", scope: !2405, file: !3, line: 82, baseType: !2409, size: 256, offset: 32)
!2409 = !DICompositeType(tag: DW_TAG_array_type, baseType: !437, size: 256, elements: !543)
!2410 = !DIDerivedType(tag: DW_TAG_member, name: "cnt_reg", scope: !2405, file: !3, line: 83, baseType: !437, size: 32, offset: 288)
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "ctl_reg", scope: !2405, file: !3, line: 84, baseType: !437, size: 32, offset: 320)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "iic_enable", scope: !2405, file: !3, line: 85, baseType: !437, size: 32, offset: 352)
!2413 = !DIDerivedType(tag: DW_TAG_member, name: "data_out", scope: !2405, file: !3, line: 86, baseType: !2409, size: 256, offset: 384)
!2414 = !DIDerivedType(tag: DW_TAG_member, name: "ctlhi_reg", scope: !2405, file: !3, line: 87, baseType: !437, size: 32, offset: 640)
!2415 = !DIDerivedType(tag: DW_TAG_member, name: "scl_param", scope: !2405, file: !3, line: 88, baseType: !437, size: 32, offset: 672)
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "adapter", scope: !2398, file: !3, line: 170, baseType: !2264, size: 7552, offset: 256)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !2398, file: !3, line: 171, baseType: !743, size: 192, offset: 7808)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "clk_freq_hz", scope: !2398, file: !3, line: 172, baseType: !437, size: 32, offset: 8000)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "data_regsz", scope: !2398, file: !3, line: 173, baseType: !98, size: 32, offset: 8032)
!2420 = !DILocation(line: 611, column: 26, scope: !2391)
!2421 = !DILocalVariable(name: "adap", scope: !2391, file: !3, line: 612, type: !2263)
!2422 = !DILocation(line: 612, column: 22, scope: !2391)
!2423 = !DILocalVariable(name: "iomem", scope: !2391, file: !3, line: 613, type: !2161)
!2424 = !DILocation(line: 613, column: 19, scope: !2391)
!2425 = !DILocalVariable(name: "int_name", scope: !2391, file: !3, line: 614, type: !94)
!2426 = !DILocation(line: 614, column: 14, scope: !2391)
!2427 = !DILocation(line: 617, column: 22, scope: !2391)
!2428 = !DILocation(line: 617, column: 28, scope: !2391)
!2429 = !DILocation(line: 617, column: 8, scope: !2391)
!2430 = !DILocation(line: 617, column: 6, scope: !2391)
!2431 = !DILocation(line: 618, column: 7, scope: !2432)
!2432 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 618, column: 6)
!2433 = !DILocation(line: 618, column: 6, scope: !2391)
!2434 = !DILocation(line: 619, column: 3, scope: !2432)
!2435 = !DILocation(line: 621, column: 34, scope: !2391)
!2436 = !DILocation(line: 621, column: 40, scope: !2391)
!2437 = !DILocation(line: 621, column: 20, scope: !2391)
!2438 = !DILocation(line: 621, column: 2, scope: !2391)
!2439 = !DILocation(line: 621, column: 7, scope: !2391)
!2440 = !DILocation(line: 621, column: 18, scope: !2391)
!2441 = !DILocation(line: 622, column: 7, scope: !2442)
!2442 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 622, column: 6)
!2443 = !DILocation(line: 622, column: 12, scope: !2442)
!2444 = !DILocation(line: 622, column: 6, scope: !2391)
!2445 = !DILocation(line: 623, column: 3, scope: !2442)
!2446 = !DILocation(line: 625, column: 23, scope: !2391)
!2447 = !DILocation(line: 625, column: 29, scope: !2391)
!2448 = !DILocation(line: 625, column: 2, scope: !2391)
!2449 = !DILocation(line: 626, column: 17, scope: !2391)
!2450 = !DILocation(line: 626, column: 23, scope: !2391)
!2451 = !DILocation(line: 626, column: 2, scope: !2391)
!2452 = !DILocation(line: 626, column: 7, scope: !2391)
!2453 = !DILocation(line: 626, column: 14, scope: !2391)
!2454 = !DILocation(line: 627, column: 2, scope: !2391)
!2455 = !DILocation(line: 630, column: 32, scope: !2391)
!2456 = !DILocation(line: 630, column: 10, scope: !2391)
!2457 = !DILocation(line: 630, column: 8, scope: !2391)
!2458 = !DILocation(line: 631, column: 36, scope: !2391)
!2459 = !DILocation(line: 631, column: 41, scope: !2391)
!2460 = !DILocation(line: 631, column: 49, scope: !2391)
!2461 = !DILocation(line: 631, column: 14, scope: !2391)
!2462 = !DILocation(line: 631, column: 2, scope: !2391)
!2463 = !DILocation(line: 631, column: 7, scope: !2391)
!2464 = !DILocation(line: 631, column: 12, scope: !2391)
!2465 = !DILocation(line: 632, column: 13, scope: !2466)
!2466 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 632, column: 6)
!2467 = !DILocation(line: 632, column: 18, scope: !2466)
!2468 = !DILocation(line: 632, column: 6, scope: !2466)
!2469 = !DILocation(line: 632, column: 6, scope: !2391)
!2470 = !DILocation(line: 633, column: 6, scope: !2471)
!2471 = distinct !DILexicalBlock(scope: !2466, file: !3, line: 632, column: 25)
!2472 = !DILocation(line: 634, column: 3, scope: !2471)
!2473 = !DILocation(line: 637, column: 30, scope: !2474)
!2474 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 637, column: 6)
!2475 = !DILocation(line: 637, column: 35, scope: !2474)
!2476 = !DILocation(line: 637, column: 43, scope: !2474)
!2477 = !DILocation(line: 637, column: 6, scope: !2474)
!2478 = !DILocation(line: 637, column: 6, scope: !2391)
!2479 = !DILocation(line: 639, column: 28, scope: !2480)
!2480 = distinct !DILexicalBlock(scope: !2474, file: !3, line: 638, column: 35)
!2481 = !DILocation(line: 639, column: 8, scope: !2480)
!2482 = !DILocation(line: 639, column: 6, scope: !2480)
!2483 = !DILocation(line: 640, column: 7, scope: !2484)
!2484 = distinct !DILexicalBlock(scope: !2480, file: !3, line: 640, column: 7)
!2485 = !DILocation(line: 640, column: 7, scope: !2480)
!2486 = !DILocation(line: 641, column: 4, scope: !2484)
!2487 = !DILocation(line: 642, column: 2, scope: !2480)
!2488 = !DILocation(line: 644, column: 31, scope: !2391)
!2489 = !DILocation(line: 644, column: 36, scope: !2391)
!2490 = !DILocation(line: 644, column: 44, scope: !2391)
!2491 = !DILocation(line: 644, column: 7, scope: !2391)
!2492 = !DILocation(line: 644, column: 5, scope: !2391)
!2493 = !DILocation(line: 646, column: 6, scope: !2494)
!2494 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 646, column: 6)
!2495 = !DILocation(line: 646, column: 9, scope: !2494)
!2496 = !DILocation(line: 646, column: 6, scope: !2391)
!2497 = !DILocation(line: 647, column: 12, scope: !2494)
!2498 = !DILocation(line: 647, column: 3, scope: !2494)
!2499 = !DILocation(line: 650, column: 39, scope: !2391)
!2500 = !DILocation(line: 650, column: 13, scope: !2391)
!2501 = !DILocation(line: 650, column: 2, scope: !2391)
!2502 = !DILocation(line: 650, column: 7, scope: !2391)
!2503 = !DILocation(line: 650, column: 11, scope: !2391)
!2504 = !DILocation(line: 653, column: 33, scope: !2391)
!2505 = !DILocation(line: 653, column: 2, scope: !2391)
!2506 = !DILocation(line: 656, column: 6, scope: !2507)
!2507 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 656, column: 6)
!2508 = !DILocation(line: 656, column: 11, scope: !2507)
!2509 = !DILocation(line: 656, column: 15, scope: !2507)
!2510 = !DILocation(line: 656, column: 6, scope: !2391)
!2511 = !DILocation(line: 657, column: 26, scope: !2512)
!2512 = distinct !DILexicalBlock(scope: !2507, file: !3, line: 656, column: 21)
!2513 = !DILocation(line: 657, column: 32, scope: !2512)
!2514 = !DILocation(line: 657, column: 37, scope: !2512)
!2515 = !DILocation(line: 657, column: 42, scope: !2512)
!2516 = !DILocation(line: 659, column: 11, scope: !2512)
!2517 = !DILocation(line: 659, column: 22, scope: !2512)
!2518 = !DILocation(line: 659, column: 33, scope: !2512)
!2519 = !DILocation(line: 659, column: 39, scope: !2512)
!2520 = !DILocation(line: 660, column: 11, scope: !2512)
!2521 = !DILocation(line: 657, column: 8, scope: !2512)
!2522 = !DILocation(line: 657, column: 6, scope: !2512)
!2523 = !DILocation(line: 662, column: 7, scope: !2524)
!2524 = distinct !DILexicalBlock(scope: !2512, file: !3, line: 662, column: 7)
!2525 = !DILocation(line: 662, column: 7, scope: !2512)
!2526 = !DILocation(line: 664, column: 4, scope: !2527)
!2527 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 662, column: 11)
!2528 = !DILocation(line: 664, column: 9, scope: !2527)
!2529 = !DILocation(line: 664, column: 13, scope: !2527)
!2530 = !DILocation(line: 665, column: 3, scope: !2527)
!2531 = !DILocation(line: 666, column: 2, scope: !2512)
!2532 = !DILocation(line: 668, column: 27, scope: !2533)
!2533 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 668, column: 6)
!2534 = !DILocation(line: 668, column: 32, scope: !2533)
!2535 = !DILocation(line: 668, column: 40, scope: !2533)
!2536 = !DILocation(line: 669, column: 26, scope: !2533)
!2537 = !DILocation(line: 669, column: 31, scope: !2533)
!2538 = !DILocation(line: 668, column: 6, scope: !2533)
!2539 = !DILocation(line: 668, column: 6, scope: !2391)
!2540 = !DILocation(line: 670, column: 3, scope: !2541)
!2541 = distinct !DILexicalBlock(scope: !2533, file: !3, line: 669, column: 45)
!2542 = !DILocation(line: 672, column: 33, scope: !2541)
!2543 = !DILocation(line: 672, column: 3, scope: !2541)
!2544 = !DILocation(line: 672, column: 8, scope: !2541)
!2545 = !DILocation(line: 672, column: 20, scope: !2541)
!2546 = !DILocation(line: 673, column: 2, scope: !2541)
!2547 = !DILocation(line: 676, column: 30, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 676, column: 6)
!2549 = !DILocation(line: 676, column: 35, scope: !2548)
!2550 = !DILocation(line: 676, column: 43, scope: !2548)
!2551 = !DILocation(line: 676, column: 6, scope: !2548)
!2552 = !DILocation(line: 676, column: 6, scope: !2391)
!2553 = !DILocation(line: 678, column: 3, scope: !2548)
!2554 = !DILocation(line: 678, column: 8, scope: !2548)
!2555 = !DILocation(line: 678, column: 19, scope: !2548)
!2556 = !DILocation(line: 680, column: 3, scope: !2548)
!2557 = !DILocation(line: 680, column: 8, scope: !2548)
!2558 = !DILocation(line: 680, column: 19, scope: !2548)
!2559 = !DILocation(line: 682, column: 35, scope: !2391)
!2560 = !DILocation(line: 682, column: 2, scope: !2391)
!2561 = !DILocation(line: 685, column: 10, scope: !2391)
!2562 = !DILocation(line: 685, column: 15, scope: !2391)
!2563 = !DILocation(line: 685, column: 7, scope: !2391)
!2564 = !DILocation(line: 686, column: 19, scope: !2391)
!2565 = !DILocation(line: 686, column: 25, scope: !2391)
!2566 = !DILocation(line: 686, column: 2, scope: !2391)
!2567 = !DILocation(line: 687, column: 2, scope: !2391)
!2568 = !DILocation(line: 687, column: 8, scope: !2391)
!2569 = !DILocation(line: 687, column: 14, scope: !2391)
!2570 = !DILocation(line: 688, column: 10, scope: !2391)
!2571 = !DILocation(line: 688, column: 16, scope: !2391)
!2572 = !DILocation(line: 688, column: 2, scope: !2391)
!2573 = !DILocation(line: 689, column: 6, scope: !2574)
!2574 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 689, column: 6)
!2575 = !DILocation(line: 689, column: 6, scope: !2391)
!2576 = !DILocation(line: 690, column: 11, scope: !2574)
!2577 = !DILocation(line: 690, column: 17, scope: !2574)
!2578 = !DILocation(line: 690, column: 23, scope: !2574)
!2579 = !DILocation(line: 690, column: 3, scope: !2574)
!2580 = !DILocation(line: 691, column: 2, scope: !2391)
!2581 = !DILocation(line: 691, column: 8, scope: !2391)
!2582 = !DILocation(line: 691, column: 13, scope: !2391)
!2583 = !DILocation(line: 692, column: 22, scope: !2391)
!2584 = !DILocation(line: 692, column: 28, scope: !2391)
!2585 = !DILocation(line: 692, column: 2, scope: !2391)
!2586 = !DILocation(line: 692, column: 8, scope: !2391)
!2587 = !DILocation(line: 692, column: 12, scope: !2391)
!2588 = !DILocation(line: 692, column: 19, scope: !2391)
!2589 = !DILocation(line: 693, column: 22, scope: !2391)
!2590 = !DILocation(line: 693, column: 28, scope: !2391)
!2591 = !DILocation(line: 693, column: 32, scope: !2391)
!2592 = !DILocation(line: 693, column: 2, scope: !2391)
!2593 = !DILocation(line: 693, column: 8, scope: !2391)
!2594 = !DILocation(line: 693, column: 12, scope: !2391)
!2595 = !DILocation(line: 693, column: 20, scope: !2391)
!2596 = !DILocation(line: 694, column: 23, scope: !2391)
!2597 = !DILocation(line: 694, column: 7, scope: !2391)
!2598 = !DILocation(line: 694, column: 5, scope: !2391)
!2599 = !DILocation(line: 695, column: 6, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2391, file: !3, line: 695, column: 6)
!2601 = !DILocation(line: 695, column: 6, scope: !2391)
!2602 = !DILocation(line: 696, column: 3, scope: !2600)
!2603 = !DILocation(line: 698, column: 2, scope: !2391)
!2604 = !DILocation(line: 702, column: 2, scope: !2391)
!2605 = !DILabel(scope: !2391, name: "probe_errorout", file: !3, line: 704)
!2606 = !DILocation(line: 704, column: 1, scope: !2391)
!2607 = !DILocation(line: 705, column: 9, scope: !2391)
!2608 = !DILocation(line: 705, column: 2, scope: !2391)
!2609 = !DILocation(line: 706, column: 1, scope: !2391)
!2610 = distinct !DISubprogram(name: "brcmstb_i2c_remove", scope: !3, file: !3, line: 708, type: !2224, scopeLine: 709, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2611 = !DILocalVariable(name: "pdev", arg: 1, scope: !2610, file: !3, line: 708, type: !89)
!2612 = !DILocation(line: 708, column: 55, scope: !2610)
!2613 = !DILocalVariable(name: "dev", scope: !2610, file: !3, line: 710, type: !2397)
!2614 = !DILocation(line: 710, column: 26, scope: !2610)
!2615 = !DILocation(line: 710, column: 53, scope: !2610)
!2616 = !DILocation(line: 710, column: 32, scope: !2610)
!2617 = !DILocation(line: 712, column: 19, scope: !2610)
!2618 = !DILocation(line: 712, column: 24, scope: !2610)
!2619 = !DILocation(line: 712, column: 2, scope: !2610)
!2620 = !DILocation(line: 713, column: 2, scope: !2610)
!2621 = distinct !DISubprogram(name: "devm_kzalloc", scope: !30, file: !30, line: 215, type: !2622, scopeLine: 216, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2622 = !DISubroutineType(types: !2623)
!2623 = !{!88, !1605, !212, !85}
!2624 = !DILocalVariable(name: "dev", arg: 1, scope: !2621, file: !30, line: 215, type: !1605)
!2625 = !DILocation(line: 215, column: 49, scope: !2621)
!2626 = !DILocalVariable(name: "size", arg: 2, scope: !2621, file: !30, line: 215, type: !212)
!2627 = !DILocation(line: 215, column: 61, scope: !2621)
!2628 = !DILocalVariable(name: "gfp", arg: 3, scope: !2621, file: !30, line: 215, type: !85)
!2629 = !DILocation(line: 215, column: 73, scope: !2621)
!2630 = !DILocation(line: 217, column: 22, scope: !2621)
!2631 = !DILocation(line: 217, column: 27, scope: !2621)
!2632 = !DILocation(line: 217, column: 33, scope: !2621)
!2633 = !DILocation(line: 217, column: 37, scope: !2621)
!2634 = !DILocation(line: 217, column: 9, scope: !2621)
!2635 = !DILocation(line: 217, column: 2, scope: !2621)
!2636 = distinct !DISubprogram(name: "platform_set_drvdata", scope: !91, file: !91, line: 236, type: !2637, scopeLine: 238, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2637 = !DISubroutineType(types: !2638)
!2638 = !{null, !89, !88}
!2639 = !DILocalVariable(name: "pdev", arg: 1, scope: !2636, file: !91, line: 236, type: !89)
!2640 = !DILocation(line: 236, column: 65, scope: !2636)
!2641 = !DILocalVariable(name: "data", arg: 2, scope: !2636, file: !91, line: 237, type: !88)
!2642 = !DILocation(line: 237, column: 12, scope: !2636)
!2643 = !DILocation(line: 239, column: 19, scope: !2636)
!2644 = !DILocation(line: 239, column: 25, scope: !2636)
!2645 = !DILocation(line: 239, column: 30, scope: !2636)
!2646 = !DILocation(line: 239, column: 2, scope: !2636)
!2647 = !DILocation(line: 240, column: 1, scope: !2636)
!2648 = !DILocalVariable(name: "x", arg: 1, scope: !2241, file: !744, line: 85, type: !742)
!2649 = !DILocation(line: 85, column: 57, scope: !2241)
!2650 = !DILocation(line: 87, column: 2, scope: !2241)
!2651 = !DILocation(line: 87, column: 5, scope: !2241)
!2652 = !DILocation(line: 87, column: 10, scope: !2241)
!2653 = !DILocation(line: 88, column: 2, scope: !2241)
!2654 = !DILocation(line: 88, column: 2, scope: !2655)
!2655 = distinct !DILexicalBlock(scope: !2241, file: !744, line: 88, column: 2)
!2656 = !DILocation(line: 89, column: 1, scope: !2241)
!2657 = distinct !DISubprogram(name: "IS_ERR", scope: !2658, file: !2658, line: 34, type: !2659, scopeLine: 35, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2658 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!100, !1136}
!2661 = !DILocalVariable(name: "ptr", arg: 1, scope: !2657, file: !2658, line: 34, type: !1136)
!2662 = !DILocation(line: 34, column: 60, scope: !2657)
!2663 = !DILocation(line: 36, column: 9, scope: !2657)
!2664 = !DILocation(line: 36, column: 2, scope: !2657)
!2665 = distinct !DISubprogram(name: "bcm2711_release_bsc", scope: !3, file: !3, line: 586, type: !2666, scopeLine: 587, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2666 = !DISubroutineType(types: !2667)
!2667 = !{!98, !2397}
!2668 = !DILocalVariable(name: "dev", arg: 1, scope: !2665, file: !3, line: 586, type: !2397)
!2669 = !DILocation(line: 586, column: 56, scope: !2665)
!2670 = !DILocalVariable(name: "pdev", scope: !2665, file: !3, line: 588, type: !89)
!2671 = !DILocation(line: 588, column: 26, scope: !2665)
!2672 = !DILocalVariable(name: "__mptr", scope: !2673, file: !3, line: 588, type: !88)
!2673 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 588, column: 33)
!2674 = !DILocation(line: 588, column: 33, scope: !2673)
!2675 = !DILocation(line: 588, column: 33, scope: !2676)
!2676 = distinct !DILexicalBlock(scope: !2673, file: !3, line: 588, column: 33)
!2677 = !DILocalVariable(name: "iomem", scope: !2665, file: !3, line: 589, type: !2161)
!2678 = !DILocation(line: 589, column: 19, scope: !2665)
!2679 = !DILocalVariable(name: "autoi2c", scope: !2665, file: !3, line: 590, type: !88)
!2680 = !DILocation(line: 590, column: 16, scope: !2665)
!2681 = !DILocation(line: 593, column: 39, scope: !2665)
!2682 = !DILocation(line: 593, column: 10, scope: !2665)
!2683 = !DILocation(line: 593, column: 8, scope: !2665)
!2684 = !DILocation(line: 594, column: 35, scope: !2665)
!2685 = !DILocation(line: 594, column: 41, scope: !2665)
!2686 = !DILocation(line: 594, column: 46, scope: !2665)
!2687 = !DILocation(line: 594, column: 12, scope: !2665)
!2688 = !DILocation(line: 594, column: 10, scope: !2665)
!2689 = !DILocation(line: 595, column: 13, scope: !2690)
!2690 = distinct !DILexicalBlock(scope: !2665, file: !3, line: 595, column: 6)
!2691 = !DILocation(line: 595, column: 6, scope: !2690)
!2692 = !DILocation(line: 595, column: 6, scope: !2665)
!2693 = !DILocation(line: 596, column: 18, scope: !2690)
!2694 = !DILocation(line: 596, column: 10, scope: !2690)
!2695 = !DILocation(line: 596, column: 3, scope: !2690)
!2696 = !DILocation(line: 598, column: 36, scope: !2665)
!2697 = !DILocation(line: 598, column: 44, scope: !2665)
!2698 = !DILocation(line: 598, column: 2, scope: !2665)
!2699 = !DILocation(line: 599, column: 16, scope: !2665)
!2700 = !DILocation(line: 599, column: 22, scope: !2665)
!2701 = !DILocation(line: 599, column: 27, scope: !2665)
!2702 = !DILocation(line: 599, column: 2, scope: !2665)
!2703 = !DILocation(line: 602, column: 2, scope: !2665)
!2704 = !DILocation(line: 602, column: 7, scope: !2665)
!2705 = !DILocation(line: 602, column: 19, scope: !2665)
!2706 = !DILocation(line: 602, column: 30, scope: !2665)
!2707 = !DILocation(line: 603, column: 2, scope: !2665)
!2708 = !DILocation(line: 605, column: 2, scope: !2665)
!2709 = !DILocation(line: 606, column: 1, scope: !2665)
!2710 = distinct !DISubprogram(name: "brcmstb_i2c_enable_disable_irq", scope: !3, file: !3, line: 201, type: !2711, scopeLine: 203, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2711 = !DISubroutineType(types: !2712)
!2712 = !{null, !2397, !100}
!2713 = !DILocalVariable(name: "dev", arg: 1, scope: !2710, file: !3, line: 201, type: !2397)
!2714 = !DILocation(line: 201, column: 68, scope: !2710)
!2715 = !DILocalVariable(name: "int_en", arg: 2, scope: !2710, file: !3, line: 202, type: !100)
!2716 = !DILocation(line: 202, column: 14, scope: !2710)
!2717 = !DILocation(line: 205, column: 6, scope: !2718)
!2718 = distinct !DILexicalBlock(scope: !2710, file: !3, line: 205, column: 6)
!2719 = !DILocation(line: 205, column: 6, scope: !2710)
!2720 = !DILocation(line: 207, column: 3, scope: !2718)
!2721 = !DILocation(line: 207, column: 8, scope: !2718)
!2722 = !DILocation(line: 207, column: 20, scope: !2718)
!2723 = !DILocation(line: 207, column: 28, scope: !2718)
!2724 = !DILocation(line: 210, column: 3, scope: !2718)
!2725 = !DILocation(line: 210, column: 8, scope: !2718)
!2726 = !DILocation(line: 210, column: 20, scope: !2718)
!2727 = !DILocation(line: 210, column: 28, scope: !2718)
!2728 = !DILocation(line: 212, column: 2, scope: !2710)
!2729 = !{i32 -2142623426}
!2730 = !DILocation(line: 213, column: 2, scope: !2710)
!2731 = !DILocation(line: 214, column: 1, scope: !2710)
!2732 = distinct !DISubprogram(name: "devm_request_irq", scope: !2733, file: !2733, line: 203, type: !2734, scopeLine: 205, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2733 = !DIFile(filename: "./include/linux/interrupt.h", directory: "/home/lizy2001/genbc/linux")
!2734 = !DISubroutineType(types: !2735)
!2735 = !{!98, !1605, !7, !2736, !87, !94, !88}
!2736 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_handler_t", file: !2733, line: 92, baseType: !2737)
!2737 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2738, size: 64)
!2738 = !DISubroutineType(types: !2739)
!2739 = !{!2740, !98, !88}
!2740 = !DIDerivedType(tag: DW_TAG_typedef, name: "irqreturn_t", file: !70, line: 17, baseType: !69)
!2741 = !DILocalVariable(name: "dev", arg: 1, scope: !2732, file: !2733, line: 203, type: !1605)
!2742 = !DILocation(line: 203, column: 33, scope: !2732)
!2743 = !DILocalVariable(name: "irq", arg: 2, scope: !2732, file: !2733, line: 203, type: !7)
!2744 = !DILocation(line: 203, column: 51, scope: !2732)
!2745 = !DILocalVariable(name: "handler", arg: 3, scope: !2732, file: !2733, line: 203, type: !2736)
!2746 = !DILocation(line: 203, column: 70, scope: !2732)
!2747 = !DILocalVariable(name: "irqflags", arg: 4, scope: !2732, file: !2733, line: 204, type: !87)
!2748 = !DILocation(line: 204, column: 18, scope: !2732)
!2749 = !DILocalVariable(name: "devname", arg: 5, scope: !2732, file: !2733, line: 204, type: !94)
!2750 = !DILocation(line: 204, column: 40, scope: !2732)
!2751 = !DILocalVariable(name: "dev_id", arg: 6, scope: !2732, file: !2733, line: 204, type: !88)
!2752 = !DILocation(line: 204, column: 55, scope: !2732)
!2753 = !DILocation(line: 206, column: 35, scope: !2732)
!2754 = !DILocation(line: 206, column: 40, scope: !2732)
!2755 = !DILocation(line: 206, column: 45, scope: !2732)
!2756 = !DILocation(line: 206, column: 60, scope: !2732)
!2757 = !DILocation(line: 207, column: 7, scope: !2732)
!2758 = !DILocation(line: 207, column: 16, scope: !2732)
!2759 = !DILocation(line: 206, column: 9, scope: !2732)
!2760 = !DILocation(line: 206, column: 2, scope: !2732)
!2761 = distinct !DISubprogram(name: "brcmstb_i2c_isr", scope: !3, file: !3, line: 216, type: !2738, scopeLine: 217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2762 = !DILocalVariable(name: "irq", arg: 1, scope: !2761, file: !3, line: 216, type: !98)
!2763 = !DILocation(line: 216, column: 40, scope: !2761)
!2764 = !DILocalVariable(name: "devid", arg: 2, scope: !2761, file: !3, line: 216, type: !88)
!2765 = !DILocation(line: 216, column: 51, scope: !2761)
!2766 = !DILocalVariable(name: "dev", scope: !2761, file: !3, line: 218, type: !2397)
!2767 = !DILocation(line: 218, column: 26, scope: !2761)
!2768 = !DILocation(line: 218, column: 32, scope: !2761)
!2769 = !DILocalVariable(name: "status_bsc_ctl", scope: !2761, file: !3, line: 219, type: !437)
!2770 = !DILocation(line: 219, column: 6, scope: !2761)
!2771 = !DILocation(line: 219, column: 23, scope: !2761)
!2772 = !DILocalVariable(name: "status_iic_intrp", scope: !2761, file: !3, line: 220, type: !437)
!2773 = !DILocation(line: 220, column: 6, scope: !2761)
!2774 = !DILocation(line: 220, column: 25, scope: !2761)
!2775 = !DILocation(line: 225, column: 8, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !2761, file: !3, line: 225, column: 6)
!2777 = !DILocation(line: 225, column: 23, scope: !2776)
!2778 = !DILocation(line: 225, column: 6, scope: !2761)
!2779 = !DILocation(line: 226, column: 3, scope: !2776)
!2780 = !DILocation(line: 228, column: 33, scope: !2761)
!2781 = !DILocation(line: 228, column: 2, scope: !2761)
!2782 = !DILocation(line: 229, column: 12, scope: !2761)
!2783 = !DILocation(line: 229, column: 17, scope: !2761)
!2784 = !DILocation(line: 229, column: 2, scope: !2761)
!2785 = !DILocation(line: 232, column: 2, scope: !2761)
!2786 = !DILocation(line: 233, column: 1, scope: !2761)
!2787 = distinct !DISubprogram(name: "of_property_read_u32", scope: !1903, file: !1903, line: 1214, type: !2788, scopeLine: 1217, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2788 = !DISubroutineType(types: !2789)
!2789 = !{!98, !2790, !94, !638}
!2790 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2791, size: 64)
!2791 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1902)
!2792 = !DILocalVariable(name: "np", arg: 1, scope: !2787, file: !1903, line: 1214, type: !2790)
!2793 = !DILocation(line: 1214, column: 66, scope: !2787)
!2794 = !DILocalVariable(name: "propname", arg: 2, scope: !2787, file: !1903, line: 1215, type: !94)
!2795 = !DILocation(line: 1215, column: 24, scope: !2787)
!2796 = !DILocalVariable(name: "out_value", arg: 3, scope: !2787, file: !1903, line: 1216, type: !638)
!2797 = !DILocation(line: 1216, column: 17, scope: !2787)
!2798 = !DILocation(line: 1218, column: 36, scope: !2787)
!2799 = !DILocation(line: 1218, column: 40, scope: !2787)
!2800 = !DILocation(line: 1218, column: 50, scope: !2787)
!2801 = !DILocation(line: 1218, column: 9, scope: !2787)
!2802 = !DILocation(line: 1218, column: 2, scope: !2787)
!2803 = distinct !DISubprogram(name: "brcmstb_i2c_set_bsc_reg_defaults", scope: !3, file: !3, line: 570, type: !2804, scopeLine: 571, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2804 = !DISubroutineType(types: !2805)
!2805 = !{null, !2397}
!2806 = !DILocalVariable(name: "dev", arg: 1, scope: !2803, file: !3, line: 570, type: !2397)
!2807 = !DILocation(line: 570, column: 70, scope: !2803)
!2808 = !DILocation(line: 572, column: 33, scope: !2809)
!2809 = distinct !DILexicalBlock(scope: !2803, file: !3, line: 572, column: 6)
!2810 = !DILocation(line: 572, column: 6, scope: !2809)
!2811 = !DILocation(line: 572, column: 38, scope: !2809)
!2812 = !DILocation(line: 572, column: 6, scope: !2803)
!2813 = !DILocation(line: 574, column: 3, scope: !2809)
!2814 = !DILocation(line: 574, column: 8, scope: !2809)
!2815 = !DILocation(line: 574, column: 20, scope: !2809)
!2816 = !DILocation(line: 574, column: 30, scope: !2809)
!2817 = !DILocation(line: 576, column: 3, scope: !2809)
!2818 = !DILocation(line: 576, column: 8, scope: !2809)
!2819 = !DILocation(line: 576, column: 20, scope: !2809)
!2820 = !DILocation(line: 576, column: 30, scope: !2809)
!2821 = !DILocation(line: 578, column: 2, scope: !2803)
!2822 = !DILocation(line: 580, column: 28, scope: !2803)
!2823 = !DILocation(line: 580, column: 2, scope: !2803)
!2824 = !DILocation(line: 581, column: 1, scope: !2803)
!2825 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !2257, file: !2257, line: 732, type: !2826, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2826 = !DISubroutineType(types: !2827)
!2827 = !{null, !2263, !88}
!2828 = !DILocalVariable(name: "adap", arg: 1, scope: !2825, file: !2257, line: 732, type: !2263)
!2829 = !DILocation(line: 732, column: 57, scope: !2825)
!2830 = !DILocalVariable(name: "data", arg: 2, scope: !2825, file: !2257, line: 732, type: !88)
!2831 = !DILocation(line: 732, column: 69, scope: !2825)
!2832 = !DILocation(line: 734, column: 19, scope: !2825)
!2833 = !DILocation(line: 734, column: 25, scope: !2825)
!2834 = !DILocation(line: 734, column: 30, scope: !2825)
!2835 = !DILocation(line: 734, column: 2, scope: !2825)
!2836 = !DILocation(line: 735, column: 1, scope: !2825)
!2837 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2838, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2838 = !DISubroutineType(types: !2839)
!2839 = !{null, !1605, !88}
!2840 = !DILocalVariable(name: "dev", arg: 1, scope: !2837, file: !30, line: 660, type: !1605)
!2841 = !DILocation(line: 660, column: 51, scope: !2837)
!2842 = !DILocalVariable(name: "data", arg: 2, scope: !2837, file: !30, line: 660, type: !88)
!2843 = !DILocation(line: 660, column: 62, scope: !2837)
!2844 = !DILocation(line: 662, column: 21, scope: !2837)
!2845 = !DILocation(line: 662, column: 2, scope: !2837)
!2846 = !DILocation(line: 662, column: 7, scope: !2837)
!2847 = !DILocation(line: 662, column: 19, scope: !2837)
!2848 = !DILocation(line: 663, column: 1, scope: !2837)
!2849 = distinct !DISubprogram(name: "PTR_ERR", scope: !2658, file: !2658, line: 29, type: !2850, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2850 = !DISubroutineType(types: !2851)
!2851 = !{!200, !1136}
!2852 = !DILocalVariable(name: "ptr", arg: 1, scope: !2849, file: !2658, line: 29, type: !1136)
!2853 = !DILocation(line: 29, column: 61, scope: !2849)
!2854 = !DILocation(line: 31, column: 16, scope: !2849)
!2855 = !DILocation(line: 31, column: 9, scope: !2849)
!2856 = !DILocation(line: 31, column: 2, scope: !2849)
!2857 = distinct !DISubprogram(name: "writel", scope: !2858, file: !2858, line: 67, type: !2859, scopeLine: 67, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2858 = !DIFile(filename: "./arch/x86/include/asm/io.h", directory: "/home/lizy2001/genbc/linux")
!2859 = !DISubroutineType(types: !2860)
!2860 = !{null, !7, !2861}
!2861 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2862, size: 64)
!2862 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: null)
!2863 = !DILocalVariable(name: "val", arg: 1, scope: !2857, file: !2858, line: 67, type: !7)
!2864 = !DILocation(line: 67, column: 1, scope: !2857)
!2865 = !DILocalVariable(name: "addr", arg: 2, scope: !2857, file: !2858, line: 67, type: !2861)
!2866 = !{i32 -2142878457}
!2867 = distinct !DISubprogram(name: "of_property_read_u32_array", scope: !1903, file: !1903, line: 494, type: !2868, scopeLine: 497, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2868 = !DISubroutineType(types: !2869)
!2869 = !{!98, !2790, !94, !638, !212}
!2870 = !DILocalVariable(name: "np", arg: 1, scope: !2867, file: !1903, line: 494, type: !2790)
!2871 = !DILocation(line: 494, column: 72, scope: !2867)
!2872 = !DILocalVariable(name: "propname", arg: 2, scope: !2867, file: !1903, line: 495, type: !94)
!2873 = !DILocation(line: 495, column: 23, scope: !2867)
!2874 = !DILocalVariable(name: "out_values", arg: 3, scope: !2867, file: !1903, line: 496, type: !638)
!2875 = !DILocation(line: 496, column: 16, scope: !2867)
!2876 = !DILocalVariable(name: "sz", arg: 4, scope: !2867, file: !1903, line: 496, type: !212)
!2877 = !DILocation(line: 496, column: 35, scope: !2867)
!2878 = !DILocalVariable(name: "ret", scope: !2867, file: !1903, line: 498, type: !98)
!2879 = !DILocation(line: 498, column: 6, scope: !2867)
!2880 = !DILocation(line: 498, column: 48, scope: !2867)
!2881 = !DILocation(line: 498, column: 52, scope: !2867)
!2882 = !DILocation(line: 498, column: 62, scope: !2867)
!2883 = !DILocation(line: 499, column: 13, scope: !2867)
!2884 = !DILocation(line: 498, column: 12, scope: !2867)
!2885 = !DILocation(line: 500, column: 6, scope: !2886)
!2886 = distinct !DILexicalBlock(scope: !2867, file: !1903, line: 500, column: 6)
!2887 = !DILocation(line: 500, column: 10, scope: !2886)
!2888 = !DILocation(line: 500, column: 6, scope: !2867)
!2889 = !DILocation(line: 501, column: 3, scope: !2886)
!2890 = !DILocation(line: 503, column: 10, scope: !2886)
!2891 = !DILocation(line: 503, column: 3, scope: !2886)
!2892 = !DILocation(line: 504, column: 1, scope: !2867)
!2893 = distinct !DISubprogram(name: "brcmstb_i2c_get_data_regsz", scope: !3, file: !3, line: 196, type: !2666, scopeLine: 197, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2894 = !DILocalVariable(name: "dev", arg: 1, scope: !2893, file: !3, line: 196, type: !2397)
!2895 = !DILocation(line: 196, column: 70, scope: !2893)
!2896 = !DILocation(line: 198, column: 9, scope: !2893)
!2897 = !DILocation(line: 198, column: 14, scope: !2893)
!2898 = !DILocation(line: 198, column: 2, scope: !2893)
!2899 = distinct !DISubprogram(name: "brcmstb_i2c_set_bus_speed", scope: !3, file: !3, line: 545, type: !2804, scopeLine: 546, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2900 = !DILocalVariable(name: "dev", arg: 1, scope: !2899, file: !3, line: 545, type: !2397)
!2901 = !DILocation(line: 545, column: 63, scope: !2899)
!2902 = !DILocalVariable(name: "i", scope: !2899, file: !3, line: 547, type: !98)
!2903 = !DILocation(line: 547, column: 6, scope: !2899)
!2904 = !DILocalVariable(name: "num_speeds", scope: !2899, file: !3, line: 547, type: !98)
!2905 = !DILocation(line: 547, column: 13, scope: !2899)
!2906 = !DILocalVariable(name: "clk_freq_hz", scope: !2899, file: !3, line: 548, type: !437)
!2907 = !DILocation(line: 548, column: 6, scope: !2899)
!2908 = !DILocation(line: 548, column: 20, scope: !2899)
!2909 = !DILocation(line: 548, column: 25, scope: !2899)
!2910 = !DILocation(line: 550, column: 9, scope: !2911)
!2911 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 550, column: 2)
!2912 = !DILocation(line: 550, column: 7, scope: !2911)
!2913 = !DILocation(line: 550, column: 14, scope: !2914)
!2914 = distinct !DILexicalBlock(scope: !2911, file: !3, line: 550, column: 2)
!2915 = !DILocation(line: 550, column: 18, scope: !2914)
!2916 = !DILocation(line: 550, column: 16, scope: !2914)
!2917 = !DILocation(line: 550, column: 2, scope: !2911)
!2918 = !DILocation(line: 551, column: 15, scope: !2919)
!2919 = distinct !DILexicalBlock(scope: !2920, file: !3, line: 551, column: 7)
!2920 = distinct !DILexicalBlock(scope: !2914, file: !3, line: 550, column: 35)
!2921 = !DILocation(line: 551, column: 7, scope: !2919)
!2922 = !DILocation(line: 551, column: 18, scope: !2919)
!2923 = !DILocation(line: 551, column: 24, scope: !2919)
!2924 = !DILocation(line: 551, column: 21, scope: !2919)
!2925 = !DILocation(line: 551, column: 7, scope: !2920)
!2926 = !DILocation(line: 552, column: 4, scope: !2927)
!2927 = distinct !DILexicalBlock(scope: !2919, file: !3, line: 551, column: 37)
!2928 = !DILocation(line: 552, column: 9, scope: !2927)
!2929 = !DILocation(line: 552, column: 21, scope: !2927)
!2930 = !DILocation(line: 552, column: 29, scope: !2927)
!2931 = !DILocation(line: 554, column: 41, scope: !2927)
!2932 = !DILocation(line: 554, column: 33, scope: !2927)
!2933 = !DILocation(line: 554, column: 44, scope: !2927)
!2934 = !DILocation(line: 555, column: 20, scope: !2927)
!2935 = !DILocation(line: 555, column: 12, scope: !2927)
!2936 = !DILocation(line: 555, column: 23, scope: !2927)
!2937 = !DILocation(line: 554, column: 53, scope: !2927)
!2938 = !DILocation(line: 554, column: 4, scope: !2927)
!2939 = !DILocation(line: 554, column: 9, scope: !2927)
!2940 = !DILocation(line: 554, column: 21, scope: !2927)
!2941 = !DILocation(line: 554, column: 29, scope: !2927)
!2942 = !DILocation(line: 556, column: 4, scope: !2927)
!2943 = !DILocation(line: 557, column: 4, scope: !2927)
!2944 = !DILocation(line: 559, column: 2, scope: !2920)
!2945 = !DILocation(line: 550, column: 31, scope: !2914)
!2946 = !DILocation(line: 550, column: 2, scope: !2914)
!2947 = distinct !{!2947, !2917, !2948}
!2948 = !DILocation(line: 559, column: 2, scope: !2911)
!2949 = !DILocation(line: 562, column: 6, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2899, file: !3, line: 562, column: 6)
!2951 = !DILocation(line: 562, column: 11, scope: !2950)
!2952 = !DILocation(line: 562, column: 8, scope: !2950)
!2953 = !DILocation(line: 562, column: 6, scope: !2899)
!2954 = !DILocation(line: 563, column: 8, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2950, file: !3, line: 562, column: 23)
!2956 = !DILocation(line: 563, column: 32, scope: !2955)
!2957 = !DILocation(line: 563, column: 60, scope: !2955)
!2958 = !DILocation(line: 563, column: 5, scope: !2955)
!2959 = !DILocation(line: 565, column: 3, scope: !2955)
!2960 = !DILocation(line: 567, column: 2, scope: !2955)
!2961 = !DILocation(line: 568, column: 1, scope: !2899)
!2962 = distinct !DISubprogram(name: "brcmstb_i2c_xfer", scope: !3, file: !3, line: 455, type: !2261, scopeLine: 457, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!2963 = !DILocalVariable(name: "adapter", arg: 1, scope: !2962, file: !3, line: 455, type: !2263)
!2964 = !DILocation(line: 455, column: 49, scope: !2962)
!2965 = !DILocalVariable(name: "msgs", arg: 2, scope: !2962, file: !3, line: 456, type: !2347)
!2966 = !DILocation(line: 456, column: 23, scope: !2962)
!2967 = !DILocalVariable(name: "num", arg: 3, scope: !2962, file: !3, line: 456, type: !98)
!2968 = !DILocation(line: 456, column: 35, scope: !2962)
!2969 = !DILocalVariable(name: "dev", scope: !2962, file: !3, line: 458, type: !2397)
!2970 = !DILocation(line: 458, column: 26, scope: !2962)
!2971 = !DILocation(line: 458, column: 49, scope: !2962)
!2972 = !DILocation(line: 458, column: 32, scope: !2962)
!2973 = !DILocalVariable(name: "pmsg", scope: !2962, file: !3, line: 459, type: !2347)
!2974 = !DILocation(line: 459, column: 18, scope: !2962)
!2975 = !DILocalVariable(name: "rc", scope: !2962, file: !3, line: 460, type: !98)
!2976 = !DILocation(line: 460, column: 6, scope: !2962)
!2977 = !DILocalVariable(name: "i", scope: !2962, file: !3, line: 461, type: !98)
!2978 = !DILocation(line: 461, column: 6, scope: !2962)
!2979 = !DILocalVariable(name: "bytes_to_xfer", scope: !2962, file: !3, line: 462, type: !98)
!2980 = !DILocation(line: 462, column: 6, scope: !2962)
!2981 = !DILocalVariable(name: "tmp_buf", scope: !2962, file: !3, line: 463, type: !2982)
!2982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !574, size: 64)
!2983 = !DILocation(line: 463, column: 6, scope: !2962)
!2984 = !DILocalVariable(name: "len", scope: !2962, file: !3, line: 464, type: !98)
!2985 = !DILocation(line: 464, column: 6, scope: !2962)
!2986 = !DILocalVariable(name: "xfersz", scope: !2962, file: !3, line: 465, type: !98)
!2987 = !DILocation(line: 465, column: 6, scope: !2962)
!2988 = !DILocation(line: 465, column: 38, scope: !2962)
!2989 = !DILocation(line: 465, column: 15, scope: !2962)
!2990 = !DILocalVariable(name: "cond", scope: !2962, file: !3, line: 466, type: !437)
!2991 = !DILocation(line: 466, column: 6, scope: !2962)
!2992 = !DILocalVariable(name: "cond_per_msg", scope: !2962, file: !3, line: 466, type: !437)
!2993 = !DILocation(line: 466, column: 12, scope: !2962)
!2994 = !DILocation(line: 469, column: 9, scope: !2995)
!2995 = distinct !DILexicalBlock(scope: !2962, file: !3, line: 469, column: 2)
!2996 = !DILocation(line: 469, column: 7, scope: !2995)
!2997 = !DILocation(line: 469, column: 14, scope: !2998)
!2998 = distinct !DILexicalBlock(scope: !2995, file: !3, line: 469, column: 2)
!2999 = !DILocation(line: 469, column: 18, scope: !2998)
!3000 = !DILocation(line: 469, column: 16, scope: !2998)
!3001 = !DILocation(line: 469, column: 2, scope: !2995)
!3002 = !DILocation(line: 470, column: 11, scope: !3003)
!3003 = distinct !DILexicalBlock(scope: !2998, file: !3, line: 469, column: 28)
!3004 = !DILocation(line: 470, column: 16, scope: !3003)
!3005 = !DILocation(line: 470, column: 8, scope: !3003)
!3006 = !DILocation(line: 471, column: 9, scope: !3003)
!3007 = !DILocation(line: 471, column: 15, scope: !3003)
!3008 = !DILocation(line: 471, column: 7, scope: !3003)
!3009 = !DILocation(line: 472, column: 13, scope: !3003)
!3010 = !DILocation(line: 472, column: 19, scope: !3003)
!3011 = !DILocation(line: 472, column: 11, scope: !3003)
!3012 = !DILocation(line: 479, column: 7, scope: !3013)
!3013 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 479, column: 7)
!3014 = !DILocation(line: 479, column: 12, scope: !3013)
!3015 = !DILocation(line: 479, column: 16, scope: !3013)
!3016 = !DILocation(line: 479, column: 9, scope: !3013)
!3017 = !DILocation(line: 479, column: 21, scope: !3013)
!3018 = !DILocation(line: 479, column: 25, scope: !3013)
!3019 = !DILocation(line: 479, column: 30, scope: !3013)
!3020 = !DILocation(line: 479, column: 32, scope: !3013)
!3021 = !DILocation(line: 479, column: 37, scope: !3013)
!3022 = !DILocation(line: 479, column: 43, scope: !3013)
!3023 = !DILocation(line: 479, column: 7, scope: !3003)
!3024 = !DILocation(line: 480, column: 9, scope: !3013)
!3025 = !DILocation(line: 480, column: 4, scope: !3013)
!3026 = !DILocation(line: 482, column: 9, scope: !3013)
!3027 = !DILocation(line: 484, column: 30, scope: !3003)
!3028 = !DILocation(line: 484, column: 35, scope: !3003)
!3029 = !DILocation(line: 484, column: 3, scope: !3003)
!3030 = !DILocation(line: 487, column: 9, scope: !3031)
!3031 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 487, column: 7)
!3032 = !DILocation(line: 487, column: 15, scope: !3031)
!3033 = !DILocation(line: 487, column: 21, scope: !3031)
!3034 = !DILocation(line: 487, column: 7, scope: !3003)
!3035 = !DILocation(line: 488, column: 29, scope: !3036)
!3036 = distinct !DILexicalBlock(scope: !3031, file: !3, line: 487, column: 39)
!3037 = !DILocation(line: 488, column: 34, scope: !3036)
!3038 = !DILocation(line: 488, column: 9, scope: !3036)
!3039 = !DILocation(line: 488, column: 7, scope: !3036)
!3040 = !DILocation(line: 489, column: 8, scope: !3041)
!3041 = distinct !DILexicalBlock(scope: !3036, file: !3, line: 489, column: 8)
!3042 = !DILocation(line: 489, column: 11, scope: !3041)
!3043 = !DILocation(line: 489, column: 8, scope: !3036)
!3044 = !DILocation(line: 493, column: 5, scope: !3045)
!3045 = distinct !DILexicalBlock(scope: !3041, file: !3, line: 489, column: 16)
!3046 = !DILocation(line: 495, column: 3, scope: !3036)
!3047 = !DILocation(line: 497, column: 18, scope: !3003)
!3048 = !DILocation(line: 497, column: 16, scope: !3003)
!3049 = !DILocation(line: 500, column: 3, scope: !3003)
!3050 = !DILocation(line: 500, column: 10, scope: !3003)
!3051 = !DILocalVariable(name: "__UNIQUE_ID___x171", scope: !3052, file: !3, line: 501, type: !98)
!3052 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 501, column: 20)
!3053 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 500, column: 15)
!3054 = !DILocation(line: 501, column: 20, scope: !3052)
!3055 = !DILocalVariable(name: "__UNIQUE_ID___y172", scope: !3052, file: !3, line: 501, type: !98)
!3056 = !DILocation(line: 501, column: 18, scope: !3053)
!3057 = !DILocation(line: 503, column: 8, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 503, column: 8)
!3059 = !DILocation(line: 503, column: 15, scope: !3058)
!3060 = !DILocation(line: 503, column: 12, scope: !3058)
!3061 = !DILocation(line: 503, column: 8, scope: !3053)
!3062 = !DILocation(line: 504, column: 9, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 504, column: 9)
!3064 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 503, column: 23)
!3065 = !DILocation(line: 504, column: 15, scope: !3063)
!3066 = !DILocation(line: 504, column: 19, scope: !3063)
!3067 = !DILocation(line: 504, column: 11, scope: !3063)
!3068 = !DILocation(line: 504, column: 9, scope: !3064)
!3069 = !DILocation(line: 505, column: 21, scope: !3063)
!3070 = !DILocation(line: 505, column: 34, scope: !3063)
!3071 = !DILocation(line: 505, column: 19, scope: !3063)
!3072 = !DILocation(line: 505, column: 6, scope: !3063)
!3073 = !DILocation(line: 508, column: 21, scope: !3063)
!3074 = !DILocation(line: 508, column: 19, scope: !3063)
!3075 = !DILocation(line: 509, column: 4, scope: !3064)
!3076 = !DILocation(line: 510, column: 21, scope: !3077)
!3077 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 509, column: 11)
!3078 = !DILocation(line: 510, column: 34, scope: !3077)
!3079 = !DILocation(line: 510, column: 51, scope: !3077)
!3080 = !DILocation(line: 510, column: 18, scope: !3077)
!3081 = !DILocation(line: 514, column: 31, scope: !3053)
!3082 = !DILocation(line: 514, column: 36, scope: !3053)
!3083 = !DILocation(line: 514, column: 4, scope: !3053)
!3084 = !DILocation(line: 516, column: 35, scope: !3053)
!3085 = !DILocation(line: 516, column: 40, scope: !3053)
!3086 = !DILocation(line: 517, column: 14, scope: !3053)
!3087 = !DILocation(line: 517, column: 29, scope: !3053)
!3088 = !DILocation(line: 516, column: 9, scope: !3053)
!3089 = !DILocation(line: 516, column: 7, scope: !3053)
!3090 = !DILocation(line: 518, column: 8, scope: !3091)
!3091 = distinct !DILexicalBlock(scope: !3053, file: !3, line: 518, column: 8)
!3092 = !DILocation(line: 518, column: 11, scope: !3091)
!3093 = !DILocation(line: 518, column: 8, scope: !3053)
!3094 = !DILocation(line: 519, column: 5, scope: !3091)
!3095 = !DILocation(line: 521, column: 12, scope: !3053)
!3096 = !DILocation(line: 521, column: 8, scope: !3053)
!3097 = !DILocation(line: 522, column: 15, scope: !3053)
!3098 = !DILocation(line: 522, column: 12, scope: !3053)
!3099 = !DILocation(line: 524, column: 17, scope: !3053)
!3100 = distinct !{!3100, !3049, !3101}
!3101 = !DILocation(line: 525, column: 3, scope: !3003)
!3102 = !DILocation(line: 526, column: 2, scope: !3003)
!3103 = !DILocation(line: 469, column: 24, scope: !2998)
!3104 = !DILocation(line: 469, column: 2, scope: !2998)
!3105 = distinct !{!3105, !3001, !3106}
!3106 = !DILocation(line: 526, column: 2, scope: !2995)
!3107 = !DILocation(line: 528, column: 7, scope: !2962)
!3108 = !DILocation(line: 528, column: 5, scope: !2962)
!3109 = !DILocation(line: 528, column: 2, scope: !2962)
!3110 = !DILabel(scope: !2962, name: "out", file: !3, line: 529)
!3111 = !DILocation(line: 529, column: 1, scope: !2962)
!3112 = !DILocation(line: 530, column: 9, scope: !2962)
!3113 = !DILocation(line: 530, column: 2, scope: !2962)
!3114 = distinct !DISubprogram(name: "brcmstb_i2c_functionality", scope: !3, file: !3, line: 534, type: !2373, scopeLine: 535, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3115 = !DILocalVariable(name: "adap", arg: 1, scope: !3114, file: !3, line: 534, type: !2263)
!3116 = !DILocation(line: 534, column: 58, scope: !3114)
!3117 = !DILocation(line: 536, column: 2, scope: !3114)
!3118 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !2257, file: !2257, line: 727, type: !3119, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3119 = !DISubroutineType(types: !3120)
!3120 = !{!88, !3121}
!3121 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3122, size: 64)
!3122 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2264)
!3123 = !DILocalVariable(name: "adap", arg: 1, scope: !3118, file: !2257, line: 727, type: !3121)
!3124 = !DILocation(line: 727, column: 64, scope: !3118)
!3125 = !DILocation(line: 729, column: 26, scope: !3118)
!3126 = !DILocation(line: 729, column: 32, scope: !3118)
!3127 = !DILocation(line: 729, column: 9, scope: !3118)
!3128 = !DILocation(line: 729, column: 2, scope: !3118)
!3129 = distinct !DISubprogram(name: "brcmstb_i2c_get_xfersz", scope: !3, file: !3, line: 191, type: !2666, scopeLine: 192, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3130 = !DILocalVariable(name: "dev", arg: 1, scope: !3129, file: !3, line: 191, type: !2397)
!3131 = !DILocation(line: 191, column: 66, scope: !3129)
!3132 = !DILocation(line: 193, column: 24, scope: !3129)
!3133 = !DILocation(line: 193, column: 29, scope: !3129)
!3134 = !DILocation(line: 193, column: 22, scope: !3129)
!3135 = !DILocation(line: 193, column: 2, scope: !3129)
!3136 = distinct !DISubprogram(name: "brcmstb_set_i2c_start_stop", scope: !3, file: !3, line: 280, type: !3137, scopeLine: 282, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3137 = !DISubroutineType(types: !3138)
!3138 = !{null, !2397, !437}
!3139 = !DILocalVariable(name: "dev", arg: 1, scope: !3136, file: !3, line: 280, type: !2397)
!3140 = !DILocation(line: 280, column: 64, scope: !3136)
!3141 = !DILocalVariable(name: "cond_flag", arg: 2, scope: !3136, file: !3, line: 281, type: !437)
!3142 = !DILocation(line: 281, column: 16, scope: !3136)
!3143 = !DILocalVariable(name: "regval", scope: !3136, file: !3, line: 283, type: !437)
!3144 = !DILocation(line: 283, column: 6, scope: !3136)
!3145 = !DILocation(line: 283, column: 15, scope: !3136)
!3146 = !DILocation(line: 283, column: 20, scope: !3136)
!3147 = !DILocation(line: 283, column: 32, scope: !3136)
!3148 = !DILocation(line: 285, column: 33, scope: !3136)
!3149 = !DILocation(line: 285, column: 40, scope: !3136)
!3150 = !DILocation(line: 285, column: 62, scope: !3136)
!3151 = !DILocation(line: 285, column: 60, scope: !3136)
!3152 = !DILocation(line: 285, column: 2, scope: !3136)
!3153 = !DILocation(line: 285, column: 7, scope: !3136)
!3154 = !DILocation(line: 285, column: 19, scope: !3136)
!3155 = !DILocation(line: 285, column: 30, scope: !3136)
!3156 = !DILocation(line: 286, column: 1, scope: !3136)
!3157 = distinct !DISubprogram(name: "brcmstb_i2c_do_addr", scope: !3, file: !3, line: 420, type: !3158, scopeLine: 422, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3158 = !DISubroutineType(types: !3159)
!3159 = !{!98, !2397, !2347}
!3160 = !DILocalVariable(name: "dev", arg: 1, scope: !3157, file: !3, line: 420, type: !2397)
!3161 = !DILocation(line: 420, column: 56, scope: !3157)
!3162 = !DILocalVariable(name: "msg", arg: 2, scope: !3157, file: !3, line: 421, type: !2347)
!3163 = !DILocation(line: 421, column: 27, scope: !3157)
!3164 = !DILocalVariable(name: "addr", scope: !3157, file: !3, line: 423, type: !576)
!3165 = !DILocation(line: 423, column: 16, scope: !3157)
!3166 = !DILocation(line: 425, column: 6, scope: !3167)
!3167 = distinct !DILexicalBlock(scope: !3157, file: !3, line: 425, column: 6)
!3168 = !DILocation(line: 425, column: 11, scope: !3167)
!3169 = !DILocation(line: 425, column: 17, scope: !3167)
!3170 = !DILocation(line: 425, column: 6, scope: !3157)
!3171 = !DILocation(line: 427, column: 19, scope: !3172)
!3172 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 425, column: 30)
!3173 = !DILocation(line: 427, column: 24, scope: !3172)
!3174 = !DILocation(line: 427, column: 29, scope: !3172)
!3175 = !DILocation(line: 427, column: 38, scope: !3172)
!3176 = !DILocation(line: 427, column: 15, scope: !3172)
!3177 = !DILocation(line: 427, column: 10, scope: !3172)
!3178 = !DILocation(line: 427, column: 8, scope: !3172)
!3179 = !DILocation(line: 428, column: 3, scope: !3172)
!3180 = !DILocation(line: 431, column: 10, scope: !3172)
!3181 = !DILocation(line: 431, column: 15, scope: !3172)
!3182 = !DILocation(line: 431, column: 20, scope: !3172)
!3183 = !DILocation(line: 431, column: 8, scope: !3172)
!3184 = !DILocation(line: 432, column: 35, scope: !3185)
!3185 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 432, column: 7)
!3186 = !DILocation(line: 432, column: 7, scope: !3185)
!3187 = !DILocation(line: 432, column: 50, scope: !3185)
!3188 = !DILocation(line: 432, column: 7, scope: !3172)
!3189 = !DILocation(line: 433, column: 4, scope: !3185)
!3190 = !DILocation(line: 435, column: 7, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3172, file: !3, line: 435, column: 7)
!3192 = !DILocation(line: 435, column: 12, scope: !3191)
!3193 = !DILocation(line: 435, column: 18, scope: !3191)
!3194 = !DILocation(line: 435, column: 7, scope: !3172)
!3195 = !DILocation(line: 437, column: 31, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3191, file: !3, line: 435, column: 30)
!3197 = !DILocation(line: 437, column: 4, scope: !3196)
!3198 = !DILocation(line: 440, column: 20, scope: !3196)
!3199 = !DILocation(line: 440, column: 25, scope: !3196)
!3200 = !DILocation(line: 440, column: 30, scope: !3196)
!3201 = !DILocation(line: 440, column: 39, scope: !3196)
!3202 = !DILocation(line: 440, column: 16, scope: !3196)
!3203 = !DILocation(line: 440, column: 45, scope: !3196)
!3204 = !DILocation(line: 440, column: 11, scope: !3196)
!3205 = !DILocation(line: 440, column: 9, scope: !3196)
!3206 = !DILocation(line: 441, column: 36, scope: !3207)
!3207 = distinct !DILexicalBlock(scope: !3196, file: !3, line: 441, column: 8)
!3208 = !DILocation(line: 441, column: 8, scope: !3207)
!3209 = !DILocation(line: 441, column: 51, scope: !3207)
!3210 = !DILocation(line: 441, column: 8, scope: !3196)
!3211 = !DILocation(line: 442, column: 5, scope: !3207)
!3212 = !DILocation(line: 444, column: 3, scope: !3196)
!3213 = !DILocation(line: 445, column: 2, scope: !3172)
!3214 = !DILocation(line: 446, column: 33, scope: !3215)
!3215 = distinct !DILexicalBlock(scope: !3167, file: !3, line: 445, column: 9)
!3216 = !DILocation(line: 446, column: 10, scope: !3215)
!3217 = !DILocation(line: 446, column: 8, scope: !3215)
!3218 = !DILocation(line: 448, column: 3, scope: !3215)
!3219 = !DILocation(line: 451, column: 2, scope: !3157)
!3220 = !DILocation(line: 452, column: 1, scope: !3157)
!3221 = distinct !DISubprogram(name: "brcmstb_i2c_xfer_bsc_data", scope: !3, file: !3, line: 334, type: !3222, scopeLine: 337, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3222 = !DISubroutineType(types: !3223)
!3223 = !{!98, !2397, !2982, !7, !2347}
!3224 = !DILocalVariable(name: "dev", arg: 1, scope: !3221, file: !3, line: 334, type: !2397)
!3225 = !DILocation(line: 334, column: 62, scope: !3221)
!3226 = !DILocalVariable(name: "buf", arg: 2, scope: !3221, file: !3, line: 335, type: !2982)
!3227 = !DILocation(line: 335, column: 14, scope: !3221)
!3228 = !DILocalVariable(name: "len", arg: 3, scope: !3221, file: !3, line: 335, type: !7)
!3229 = !DILocation(line: 335, column: 32, scope: !3221)
!3230 = !DILocalVariable(name: "pmsg", arg: 4, scope: !3221, file: !3, line: 336, type: !2347)
!3231 = !DILocation(line: 336, column: 26, scope: !3221)
!3232 = !DILocalVariable(name: "cnt", scope: !3221, file: !3, line: 338, type: !98)
!3233 = !DILocation(line: 338, column: 6, scope: !3221)
!3234 = !DILocalVariable(name: "byte", scope: !3221, file: !3, line: 338, type: !98)
!3235 = !DILocation(line: 338, column: 11, scope: !3221)
!3236 = !DILocalVariable(name: "i", scope: !3221, file: !3, line: 338, type: !98)
!3237 = !DILocation(line: 338, column: 17, scope: !3221)
!3238 = !DILocalVariable(name: "rc", scope: !3221, file: !3, line: 338, type: !98)
!3239 = !DILocation(line: 338, column: 20, scope: !3221)
!3240 = !DILocalVariable(name: "cmd", scope: !3221, file: !3, line: 339, type: !75)
!3241 = !DILocation(line: 339, column: 20, scope: !3221)
!3242 = !DILocalVariable(name: "ctl_reg", scope: !3221, file: !3, line: 340, type: !437)
!3243 = !DILocation(line: 340, column: 6, scope: !3221)
!3244 = !DILocalVariable(name: "pi2creg", scope: !3221, file: !3, line: 341, type: !2404)
!3245 = !DILocation(line: 341, column: 19, scope: !3221)
!3246 = !DILocation(line: 341, column: 29, scope: !3221)
!3247 = !DILocation(line: 341, column: 34, scope: !3221)
!3248 = !DILocalVariable(name: "no_ack", scope: !3221, file: !3, line: 342, type: !98)
!3249 = !DILocation(line: 342, column: 6, scope: !3221)
!3250 = !DILocation(line: 342, column: 15, scope: !3221)
!3251 = !DILocation(line: 342, column: 21, scope: !3221)
!3252 = !DILocation(line: 342, column: 27, scope: !3221)
!3253 = !DILocalVariable(name: "data_regsz", scope: !3221, file: !3, line: 343, type: !98)
!3254 = !DILocation(line: 343, column: 6, scope: !3221)
!3255 = !DILocation(line: 343, column: 46, scope: !3221)
!3256 = !DILocation(line: 343, column: 19, scope: !3221)
!3257 = !DILocation(line: 346, column: 6, scope: !3258)
!3258 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 346, column: 6)
!3259 = !DILocation(line: 346, column: 6, scope: !3221)
!3260 = !DILocation(line: 347, column: 10, scope: !3261)
!3261 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 346, column: 14)
!3262 = !DILocation(line: 347, column: 16, scope: !3261)
!3263 = !DILocation(line: 347, column: 22, scope: !3261)
!3264 = !DILocation(line: 347, column: 9, scope: !3261)
!3265 = !DILocation(line: 347, column: 7, scope: !3261)
!3266 = !DILocation(line: 349, column: 3, scope: !3261)
!3267 = !DILocation(line: 349, column: 12, scope: !3261)
!3268 = !DILocation(line: 349, column: 22, scope: !3261)
!3269 = !DILocation(line: 350, column: 2, scope: !3261)
!3270 = !DILocation(line: 351, column: 10, scope: !3271)
!3271 = distinct !DILexicalBlock(scope: !3258, file: !3, line: 350, column: 9)
!3272 = !DILocation(line: 351, column: 16, scope: !3271)
!3273 = !DILocation(line: 351, column: 22, scope: !3271)
!3274 = !DILocation(line: 351, column: 9, scope: !3271)
!3275 = !DILocation(line: 351, column: 7, scope: !3271)
!3276 = !DILocation(line: 352, column: 3, scope: !3271)
!3277 = !DILocation(line: 352, column: 12, scope: !3271)
!3278 = !DILocation(line: 352, column: 22, scope: !3271)
!3279 = !DILocation(line: 354, column: 2, scope: !3221)
!3280 = !DILocation(line: 357, column: 12, scope: !3221)
!3281 = !DILocation(line: 357, column: 21, scope: !3221)
!3282 = !DILocation(line: 357, column: 29, scope: !3221)
!3283 = !DILocation(line: 357, column: 10, scope: !3221)
!3284 = !DILocation(line: 358, column: 6, scope: !3285)
!3285 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 358, column: 6)
!3286 = !DILocation(line: 358, column: 10, scope: !3285)
!3287 = !DILocation(line: 358, column: 20, scope: !3285)
!3288 = !DILocation(line: 358, column: 23, scope: !3285)
!3289 = !DILocation(line: 358, column: 27, scope: !3285)
!3290 = !DILocation(line: 358, column: 6, scope: !3221)
!3291 = !DILocation(line: 359, column: 22, scope: !3285)
!3292 = !DILocation(line: 359, column: 3, scope: !3285)
!3293 = !DILocation(line: 359, column: 12, scope: !3285)
!3294 = !DILocation(line: 359, column: 20, scope: !3285)
!3295 = !DILocation(line: 361, column: 22, scope: !3285)
!3296 = !DILocation(line: 361, column: 30, scope: !3285)
!3297 = !DILocation(line: 361, column: 3, scope: !3285)
!3298 = !DILocation(line: 361, column: 12, scope: !3285)
!3299 = !DILocation(line: 361, column: 20, scope: !3285)
!3300 = !DILocation(line: 364, column: 2, scope: !3221)
!3301 = !DILocation(line: 369, column: 6, scope: !3302)
!3302 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 369, column: 6)
!3303 = !DILocation(line: 369, column: 10, scope: !3302)
!3304 = !DILocation(line: 369, column: 20, scope: !3302)
!3305 = !DILocation(line: 369, column: 23, scope: !3302)
!3306 = !DILocation(line: 369, column: 27, scope: !3302)
!3307 = !DILocation(line: 369, column: 6, scope: !3221)
!3308 = !DILocation(line: 370, column: 12, scope: !3309)
!3309 = distinct !DILexicalBlock(scope: !3310, file: !3, line: 370, column: 3)
!3310 = distinct !DILexicalBlock(scope: !3302, file: !3, line: 369, column: 44)
!3311 = !DILocation(line: 370, column: 19, scope: !3309)
!3312 = !DILocation(line: 370, column: 8, scope: !3309)
!3313 = !DILocation(line: 370, column: 24, scope: !3314)
!3314 = distinct !DILexicalBlock(scope: !3309, file: !3, line: 370, column: 3)
!3315 = !DILocation(line: 370, column: 30, scope: !3314)
!3316 = !DILocation(line: 370, column: 28, scope: !3314)
!3317 = !DILocation(line: 370, column: 3, scope: !3309)
!3318 = !DILocalVariable(name: "word", scope: !3319, file: !3, line: 371, type: !437)
!3319 = distinct !DILexicalBlock(scope: !3314, file: !3, line: 370, column: 59)
!3320 = !DILocation(line: 371, column: 8, scope: !3319)
!3321 = !DILocation(line: 373, column: 14, scope: !3322)
!3322 = distinct !DILexicalBlock(scope: !3319, file: !3, line: 373, column: 4)
!3323 = !DILocation(line: 373, column: 9, scope: !3322)
!3324 = !DILocation(line: 373, column: 19, scope: !3325)
!3325 = distinct !DILexicalBlock(scope: !3322, file: !3, line: 373, column: 4)
!3326 = !DILocation(line: 373, column: 26, scope: !3325)
!3327 = !DILocation(line: 373, column: 24, scope: !3325)
!3328 = !DILocation(line: 373, column: 4, scope: !3322)
!3329 = !DILocation(line: 374, column: 10, scope: !3330)
!3330 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 373, column: 46)
!3331 = !DILocation(line: 375, column: 10, scope: !3332)
!3332 = distinct !DILexicalBlock(scope: !3330, file: !3, line: 375, column: 9)
!3333 = !DILocation(line: 375, column: 16, scope: !3332)
!3334 = !DILocation(line: 375, column: 14, scope: !3332)
!3335 = !DILocation(line: 375, column: 24, scope: !3332)
!3336 = !DILocation(line: 375, column: 22, scope: !3332)
!3337 = !DILocation(line: 375, column: 9, scope: !3330)
!3338 = !DILocation(line: 376, column: 14, scope: !3332)
!3339 = !DILocation(line: 376, column: 18, scope: !3332)
!3340 = !DILocation(line: 376, column: 24, scope: !3332)
!3341 = !DILocation(line: 376, column: 22, scope: !3332)
!3342 = !DILocation(line: 377, column: 24, scope: !3332)
!3343 = !DILocation(line: 377, column: 35, scope: !3332)
!3344 = !DILocation(line: 377, column: 21, scope: !3332)
!3345 = !DILocation(line: 376, column: 30, scope: !3332)
!3346 = !DILocation(line: 376, column: 11, scope: !3332)
!3347 = !DILocation(line: 376, column: 6, scope: !3332)
!3348 = !DILocation(line: 378, column: 4, scope: !3330)
!3349 = !DILocation(line: 373, column: 42, scope: !3325)
!3350 = !DILocation(line: 373, column: 4, scope: !3325)
!3351 = distinct !{!3351, !3328, !3352}
!3352 = !DILocation(line: 378, column: 4, scope: !3322)
!3353 = !DILocation(line: 379, column: 4, scope: !3319)
!3354 = !DILocation(line: 380, column: 3, scope: !3319)
!3355 = !DILocation(line: 370, column: 42, scope: !3314)
!3356 = !DILocation(line: 370, column: 39, scope: !3314)
!3357 = !DILocation(line: 370, column: 55, scope: !3314)
!3358 = !DILocation(line: 370, column: 3, scope: !3314)
!3359 = distinct !{!3359, !3317, !3360}
!3360 = !DILocation(line: 380, column: 3, scope: !3309)
!3361 = !DILocation(line: 381, column: 2, scope: !3310)
!3362 = !DILocation(line: 384, column: 28, scope: !3221)
!3363 = !DILocation(line: 384, column: 33, scope: !3221)
!3364 = !DILocation(line: 384, column: 7, scope: !3221)
!3365 = !DILocation(line: 384, column: 5, scope: !3221)
!3366 = !DILocation(line: 386, column: 6, scope: !3367)
!3367 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 386, column: 6)
!3368 = !DILocation(line: 386, column: 9, scope: !3367)
!3369 = !DILocation(line: 386, column: 6, scope: !3221)
!3370 = !DILocation(line: 388, column: 10, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3367, file: !3, line: 386, column: 15)
!3372 = !DILocation(line: 388, column: 3, scope: !3371)
!3373 = !DILocation(line: 392, column: 6, scope: !3374)
!3374 = distinct !DILexicalBlock(scope: !3221, file: !3, line: 392, column: 6)
!3375 = !DILocation(line: 392, column: 10, scope: !3374)
!3376 = !DILocation(line: 392, column: 20, scope: !3374)
!3377 = !DILocation(line: 392, column: 23, scope: !3374)
!3378 = !DILocation(line: 392, column: 27, scope: !3374)
!3379 = !DILocation(line: 392, column: 6, scope: !3221)
!3380 = !DILocation(line: 393, column: 12, scope: !3381)
!3381 = distinct !DILexicalBlock(scope: !3382, file: !3, line: 393, column: 3)
!3382 = distinct !DILexicalBlock(scope: !3374, file: !3, line: 392, column: 44)
!3383 = !DILocation(line: 393, column: 19, scope: !3381)
!3384 = !DILocation(line: 393, column: 8, scope: !3381)
!3385 = !DILocation(line: 393, column: 24, scope: !3386)
!3386 = distinct !DILexicalBlock(scope: !3381, file: !3, line: 393, column: 3)
!3387 = !DILocation(line: 393, column: 30, scope: !3386)
!3388 = !DILocation(line: 393, column: 28, scope: !3386)
!3389 = !DILocation(line: 393, column: 3, scope: !3381)
!3390 = !DILocalVariable(name: "data", scope: !3391, file: !3, line: 394, type: !437)
!3391 = distinct !DILexicalBlock(scope: !3386, file: !3, line: 393, column: 59)
!3392 = !DILocation(line: 394, column: 8, scope: !3391)
!3393 = !DILocation(line: 394, column: 15, scope: !3391)
!3394 = !DILocation(line: 396, column: 14, scope: !3395)
!3395 = distinct !DILexicalBlock(scope: !3391, file: !3, line: 396, column: 4)
!3396 = !DILocation(line: 396, column: 9, scope: !3395)
!3397 = !DILocation(line: 396, column: 19, scope: !3398)
!3398 = distinct !DILexicalBlock(scope: !3395, file: !3, line: 396, column: 4)
!3399 = !DILocation(line: 396, column: 26, scope: !3398)
!3400 = !DILocation(line: 396, column: 24, scope: !3398)
!3401 = !DILocation(line: 396, column: 37, scope: !3398)
!3402 = !DILocation(line: 397, column: 11, scope: !3398)
!3403 = !DILocation(line: 397, column: 18, scope: !3398)
!3404 = !DILocation(line: 397, column: 16, scope: !3398)
!3405 = !DILocation(line: 397, column: 25, scope: !3398)
!3406 = !DILocation(line: 397, column: 23, scope: !3398)
!3407 = !DILocation(line: 0, scope: !3398)
!3408 = !DILocation(line: 396, column: 4, scope: !3395)
!3409 = !DILocation(line: 398, column: 23, scope: !3410)
!3410 = distinct !DILexicalBlock(scope: !3398, file: !3, line: 397, column: 38)
!3411 = !DILocation(line: 398, column: 28, scope: !3410)
!3412 = !DILocation(line: 398, column: 5, scope: !3410)
!3413 = !DILocation(line: 398, column: 9, scope: !3410)
!3414 = !DILocation(line: 398, column: 15, scope: !3410)
!3415 = !DILocation(line: 398, column: 13, scope: !3410)
!3416 = !DILocation(line: 398, column: 21, scope: !3410)
!3417 = !DILocation(line: 399, column: 10, scope: !3410)
!3418 = !DILocation(line: 400, column: 4, scope: !3410)
!3419 = !DILocation(line: 397, column: 34, scope: !3398)
!3420 = !DILocation(line: 396, column: 4, scope: !3398)
!3421 = distinct !{!3421, !3408, !3422}
!3422 = !DILocation(line: 400, column: 4, scope: !3395)
!3423 = !DILocation(line: 401, column: 3, scope: !3391)
!3424 = !DILocation(line: 393, column: 42, scope: !3386)
!3425 = !DILocation(line: 393, column: 39, scope: !3386)
!3426 = !DILocation(line: 393, column: 55, scope: !3386)
!3427 = !DILocation(line: 393, column: 3, scope: !3386)
!3428 = distinct !{!3428, !3389, !3429}
!3429 = !DILocation(line: 401, column: 3, scope: !3381)
!3430 = !DILocation(line: 402, column: 2, scope: !3382)
!3431 = !DILocation(line: 404, column: 2, scope: !3221)
!3432 = !DILocation(line: 405, column: 1, scope: !3221)
!3433 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !3434, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3434 = !DISubroutineType(types: !3435)
!3435 = !{!88, !1938}
!3436 = !DILocalVariable(name: "dev", arg: 1, scope: !3433, file: !30, line: 655, type: !1938)
!3437 = !DILocation(line: 655, column: 58, scope: !3433)
!3438 = !DILocation(line: 657, column: 9, scope: !3433)
!3439 = !DILocation(line: 657, column: 14, scope: !3433)
!3440 = !DILocation(line: 657, column: 2, scope: !3433)
!3441 = distinct !DISubprogram(name: "brcmstb_i2c_write_data_byte", scope: !3, file: !3, line: 408, type: !3442, scopeLine: 410, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3442 = !DISubroutineType(types: !3443)
!3443 = !{!98, !2397, !2982, !7}
!3444 = !DILocalVariable(name: "dev", arg: 1, scope: !3441, file: !3, line: 408, type: !2397)
!3445 = !DILocation(line: 408, column: 64, scope: !3441)
!3446 = !DILocalVariable(name: "buf", arg: 2, scope: !3441, file: !3, line: 409, type: !2982)
!3447 = !DILocation(line: 409, column: 16, scope: !3441)
!3448 = !DILocalVariable(name: "nak_expected", arg: 3, scope: !3441, file: !3, line: 409, type: !7)
!3449 = !DILocation(line: 409, column: 34, scope: !3441)
!3450 = !DILocalVariable(name: "cmd", scope: !3441, file: !3, line: 411, type: !75)
!3451 = !DILocation(line: 411, column: 20, scope: !3441)
!3452 = !DILocation(line: 411, column: 26, scope: !3441)
!3453 = !DILocation(line: 413, column: 2, scope: !3441)
!3454 = !DILocation(line: 414, column: 2, scope: !3441)
!3455 = !DILocation(line: 416, column: 30, scope: !3441)
!3456 = !DILocation(line: 416, column: 35, scope: !3441)
!3457 = !DILocation(line: 416, column: 9, scope: !3441)
!3458 = !DILocation(line: 416, column: 2, scope: !3441)
!3459 = distinct !DISubprogram(name: "i2c_8bit_addr_from_msg", scope: !2257, file: !2257, line: 905, type: !3460, scopeLine: 906, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3460 = !DISubroutineType(types: !3461)
!3461 = !{!574, !3462}
!3462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3463, size: 64)
!3463 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2348)
!3464 = !DILocalVariable(name: "msg", arg: 1, scope: !3459, file: !2257, line: 905, type: !3462)
!3465 = !DILocation(line: 905, column: 63, scope: !3459)
!3466 = !DILocation(line: 907, column: 10, scope: !3459)
!3467 = !DILocation(line: 907, column: 15, scope: !3459)
!3468 = !DILocation(line: 907, column: 20, scope: !3459)
!3469 = !DILocation(line: 907, column: 29, scope: !3459)
!3470 = !DILocation(line: 907, column: 34, scope: !3459)
!3471 = !DILocation(line: 907, column: 40, scope: !3459)
!3472 = !DILocation(line: 907, column: 26, scope: !3459)
!3473 = !DILocation(line: 907, column: 9, scope: !3459)
!3474 = !DILocation(line: 907, column: 2, scope: !3459)
!3475 = distinct !DISubprogram(name: "brcmstb_send_i2c_cmd", scope: !3, file: !3, line: 289, type: !3476, scopeLine: 291, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3476 = !DISubroutineType(types: !3477)
!3477 = !{!98, !2397, !75}
!3478 = !DILocalVariable(name: "dev", arg: 1, scope: !3475, file: !3, line: 289, type: !2397)
!3479 = !DILocation(line: 289, column: 57, scope: !3475)
!3480 = !DILocalVariable(name: "cmd", arg: 2, scope: !3475, file: !3, line: 290, type: !75)
!3481 = !DILocation(line: 290, column: 23, scope: !3475)
!3482 = !DILocalVariable(name: "rc", scope: !3475, file: !3, line: 292, type: !98)
!3483 = !DILocation(line: 292, column: 6, scope: !3475)
!3484 = !DILocalVariable(name: "pi2creg", scope: !3475, file: !3, line: 293, type: !2404)
!3485 = !DILocation(line: 293, column: 19, scope: !3475)
!3486 = !DILocation(line: 293, column: 29, scope: !3475)
!3487 = !DILocation(line: 293, column: 34, scope: !3475)
!3488 = !DILocation(line: 296, column: 32, scope: !3475)
!3489 = !DILocation(line: 296, column: 7, scope: !3475)
!3490 = !DILocation(line: 296, column: 5, scope: !3475)
!3491 = !DILocation(line: 297, column: 6, scope: !3492)
!3492 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 297, column: 6)
!3493 = !DILocation(line: 297, column: 9, scope: !3492)
!3494 = !DILocation(line: 297, column: 6, scope: !3475)
!3495 = !DILocation(line: 298, column: 10, scope: !3492)
!3496 = !DILocation(line: 298, column: 3, scope: !3492)
!3497 = !DILocation(line: 301, column: 6, scope: !3498)
!3498 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 301, column: 6)
!3499 = !DILocation(line: 301, column: 11, scope: !3498)
!3500 = !DILocation(line: 301, column: 15, scope: !3498)
!3501 = !DILocation(line: 301, column: 6, scope: !3475)
!3502 = !DILocation(line: 302, column: 22, scope: !3498)
!3503 = !DILocation(line: 302, column: 27, scope: !3498)
!3504 = !DILocation(line: 302, column: 3, scope: !3498)
!3505 = !DILocation(line: 305, column: 33, scope: !3475)
!3506 = !DILocation(line: 305, column: 2, scope: !3475)
!3507 = !DILocation(line: 308, column: 2, scope: !3475)
!3508 = !DILocation(line: 308, column: 11, scope: !3475)
!3509 = !DILocation(line: 308, column: 22, scope: !3475)
!3510 = !DILocation(line: 309, column: 2, scope: !3475)
!3511 = !DILocation(line: 312, column: 39, scope: !3475)
!3512 = !DILocation(line: 312, column: 7, scope: !3475)
!3513 = !DILocation(line: 312, column: 5, scope: !3475)
!3514 = !DILocation(line: 313, column: 6, scope: !3515)
!3515 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 313, column: 6)
!3516 = !DILocation(line: 313, column: 6, scope: !3475)
!3517 = !DILocation(line: 316, column: 3, scope: !3518)
!3518 = distinct !DILexicalBlock(scope: !3515, file: !3, line: 313, column: 10)
!3519 = !DILocation(line: 320, column: 6, scope: !3520)
!3520 = distinct !DILexicalBlock(scope: !3475, file: !3, line: 319, column: 6)
!3521 = !DILocation(line: 320, column: 33, scope: !3520)
!3522 = !DILocation(line: 319, column: 6, scope: !3475)
!3523 = !DILocation(line: 321, column: 6, scope: !3524)
!3524 = distinct !DILexicalBlock(scope: !3520, file: !3, line: 320, column: 58)
!3525 = !DILocation(line: 324, column: 2, scope: !3524)
!3526 = !DILocation(line: 320, column: 35, scope: !3520)
!3527 = !DILabel(scope: !3475, name: "cmd_out", file: !3, line: 326)
!3528 = !DILocation(line: 326, column: 1, scope: !3475)
!3529 = !DILocation(line: 327, column: 2, scope: !3475)
!3530 = !DILocation(line: 328, column: 2, scope: !3475)
!3531 = !DILocation(line: 330, column: 9, scope: !3475)
!3532 = !DILocation(line: 330, column: 2, scope: !3475)
!3533 = !DILocation(line: 331, column: 1, scope: !3475)
!3534 = distinct !DISubprogram(name: "brcmstb_i2c_wait_if_busy", scope: !3, file: !3, line: 236, type: !2666, scopeLine: 237, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3535 = !DILocalVariable(name: "m", arg: 1, scope: !3536, file: !3537, line: 363, type: !3540)
!3536 = distinct !DISubprogram(name: "msecs_to_jiffies", scope: !3537, file: !3537, line: 363, type: !3538, scopeLine: 364, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3537 = !DIFile(filename: "./include/linux/jiffies.h", directory: "/home/lizy2001/genbc/linux")
!3538 = !DISubroutineType(types: !3539)
!3539 = !{!87, !3540}
!3540 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !7)
!3541 = !DILocation(line: 363, column: 74, scope: !3536, inlinedAt: !3542)
!3542 = distinct !DILocation(line: 238, column: 36, scope: !3534)
!3543 = !DILocalVariable(name: "dev", arg: 1, scope: !3534, file: !3, line: 236, type: !2397)
!3544 = !DILocation(line: 236, column: 61, scope: !3534)
!3545 = !DILocalVariable(name: "timeout", scope: !3534, file: !3, line: 238, type: !87)
!3546 = !DILocation(line: 238, column: 16, scope: !3534)
!3547 = !DILocation(line: 238, column: 26, scope: !3534)
!3548 = !DILocation(line: 365, column: 27, scope: !3549, inlinedAt: !3542)
!3549 = distinct !DILexicalBlock(scope: !3536, file: !3537, line: 365, column: 6)
!3550 = !DILocation(line: 365, column: 6, scope: !3549, inlinedAt: !3542)
!3551 = !DILocation(line: 365, column: 6, scope: !3536, inlinedAt: !3542)
!3552 = !DILocation(line: 366, column: 12, scope: !3553, inlinedAt: !3542)
!3553 = distinct !DILexicalBlock(scope: !3554, file: !3537, line: 366, column: 7)
!3554 = distinct !DILexicalBlock(scope: !3549, file: !3537, line: 365, column: 31)
!3555 = !DILocation(line: 366, column: 14, scope: !3553, inlinedAt: !3542)
!3556 = !DILocation(line: 366, column: 7, scope: !3554, inlinedAt: !3542)
!3557 = !DILocation(line: 367, column: 4, scope: !3553, inlinedAt: !3542)
!3558 = !DILocation(line: 368, column: 28, scope: !3554, inlinedAt: !3542)
!3559 = !DILocation(line: 368, column: 10, scope: !3554, inlinedAt: !3542)
!3560 = !DILocation(line: 368, column: 3, scope: !3554, inlinedAt: !3542)
!3561 = !DILocation(line: 370, column: 29, scope: !3562, inlinedAt: !3542)
!3562 = distinct !DILexicalBlock(scope: !3549, file: !3537, line: 369, column: 9)
!3563 = !DILocation(line: 370, column: 10, scope: !3562, inlinedAt: !3542)
!3564 = !DILocation(line: 370, column: 3, scope: !3562, inlinedAt: !3542)
!3565 = !DILocation(line: 372, column: 1, scope: !3536, inlinedAt: !3542)
!3566 = !DILocation(line: 238, column: 34, scope: !3534)
!3567 = !DILocation(line: 240, column: 2, scope: !3534)
!3568 = !DILocation(line: 240, column: 10, scope: !3534)
!3569 = !DILocation(line: 240, column: 37, scope: !3534)
!3570 = !DILocation(line: 241, column: 7, scope: !3571)
!3571 = distinct !DILexicalBlock(scope: !3572, file: !3, line: 241, column: 7)
!3572 = distinct !DILexicalBlock(scope: !3534, file: !3, line: 240, column: 63)
!3573 = !DILocation(line: 241, column: 7, scope: !3572)
!3574 = !DILocation(line: 242, column: 4, scope: !3571)
!3575 = !DILocation(line: 13, column: 2, scope: !3576, inlinedAt: !3578)
!3576 = distinct !DISubprogram(name: "rep_nop", scope: !3577, file: !3577, line: 11, type: !2199, scopeLine: 12, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3577 = !DIFile(filename: "./arch/x86/include/asm/vdso/processor.h", directory: "/home/lizy2001/genbc/linux")
!3578 = distinct !DILocation(line: 18, column: 2, scope: !3579, inlinedAt: !3580)
!3579 = distinct !DISubprogram(name: "cpu_relax", scope: !3577, file: !3577, line: 16, type: !2199, scopeLine: 17, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3580 = distinct !DILocation(line: 243, column: 3, scope: !3572)
!3581 = !{i32 1785562}
!3582 = distinct !{!3582, !3567, !3583}
!3583 = !DILocation(line: 244, column: 2, scope: !3534)
!3584 = !DILocation(line: 245, column: 2, scope: !3534)
!3585 = !DILocation(line: 246, column: 1, scope: !3534)
!3586 = distinct !DISubprogram(name: "reinit_completion", scope: !744, file: !744, line: 98, type: !2242, scopeLine: 99, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3587 = !DILocalVariable(name: "x", arg: 1, scope: !3586, file: !744, line: 98, type: !742)
!3588 = !DILocation(line: 98, column: 57, scope: !3586)
!3589 = !DILocation(line: 100, column: 2, scope: !3586)
!3590 = !DILocation(line: 100, column: 5, scope: !3586)
!3591 = !DILocation(line: 100, column: 10, scope: !3586)
!3592 = !DILocation(line: 101, column: 1, scope: !3586)
!3593 = distinct !DISubprogram(name: "brcmstb_i2c_wait_for_completion", scope: !3, file: !3, line: 249, type: !2666, scopeLine: 250, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3594 = !DILocation(line: 363, column: 74, scope: !3536, inlinedAt: !3595)
!3595 = distinct !DILocation(line: 252, column: 26, scope: !3593)
!3596 = !DILocalVariable(name: "dev", arg: 1, scope: !3593, file: !3, line: 249, type: !2397)
!3597 = !DILocation(line: 249, column: 68, scope: !3593)
!3598 = !DILocalVariable(name: "ret", scope: !3593, file: !3, line: 251, type: !98)
!3599 = !DILocation(line: 251, column: 6, scope: !3593)
!3600 = !DILocalVariable(name: "timeout", scope: !3593, file: !3, line: 252, type: !87)
!3601 = !DILocation(line: 252, column: 16, scope: !3593)
!3602 = !DILocation(line: 365, column: 27, scope: !3549, inlinedAt: !3595)
!3603 = !DILocation(line: 365, column: 6, scope: !3549, inlinedAt: !3595)
!3604 = !DILocation(line: 365, column: 6, scope: !3536, inlinedAt: !3595)
!3605 = !DILocation(line: 366, column: 12, scope: !3553, inlinedAt: !3595)
!3606 = !DILocation(line: 366, column: 14, scope: !3553, inlinedAt: !3595)
!3607 = !DILocation(line: 366, column: 7, scope: !3554, inlinedAt: !3595)
!3608 = !DILocation(line: 367, column: 4, scope: !3553, inlinedAt: !3595)
!3609 = !DILocation(line: 368, column: 28, scope: !3554, inlinedAt: !3595)
!3610 = !DILocation(line: 368, column: 10, scope: !3554, inlinedAt: !3595)
!3611 = !DILocation(line: 368, column: 3, scope: !3554, inlinedAt: !3595)
!3612 = !DILocation(line: 370, column: 29, scope: !3562, inlinedAt: !3595)
!3613 = !DILocation(line: 370, column: 10, scope: !3562, inlinedAt: !3595)
!3614 = !DILocation(line: 370, column: 3, scope: !3562, inlinedAt: !3595)
!3615 = !DILocation(line: 372, column: 1, scope: !3536, inlinedAt: !3595)
!3616 = !DILocation(line: 254, column: 6, scope: !3617)
!3617 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 254, column: 6)
!3618 = !DILocation(line: 254, column: 11, scope: !3617)
!3619 = !DILocation(line: 254, column: 15, scope: !3617)
!3620 = !DILocation(line: 254, column: 6, scope: !3593)
!3621 = !DILocation(line: 255, column: 37, scope: !3622)
!3622 = distinct !DILexicalBlock(scope: !3623, file: !3, line: 255, column: 7)
!3623 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 254, column: 21)
!3624 = !DILocation(line: 255, column: 42, scope: !3622)
!3625 = !DILocation(line: 255, column: 48, scope: !3622)
!3626 = !DILocation(line: 255, column: 8, scope: !3622)
!3627 = !DILocation(line: 255, column: 7, scope: !3623)
!3628 = !DILocation(line: 256, column: 8, scope: !3622)
!3629 = !DILocation(line: 256, column: 4, scope: !3622)
!3630 = !DILocation(line: 257, column: 2, scope: !3623)
!3631 = !DILocalVariable(name: "bsc_intrp", scope: !3632, file: !3, line: 259, type: !437)
!3632 = distinct !DILexicalBlock(scope: !3617, file: !3, line: 257, column: 9)
!3633 = !DILocation(line: 259, column: 7, scope: !3632)
!3634 = !DILocalVariable(name: "time_left", scope: !3632, file: !3, line: 260, type: !87)
!3635 = !DILocation(line: 260, column: 17, scope: !3632)
!3636 = !DILocation(line: 260, column: 29, scope: !3632)
!3637 = !DILocation(line: 260, column: 39, scope: !3632)
!3638 = !DILocation(line: 260, column: 37, scope: !3632)
!3639 = !DILocation(line: 262, column: 3, scope: !3632)
!3640 = !DILocation(line: 263, column: 16, scope: !3641)
!3641 = distinct !DILexicalBlock(scope: !3632, file: !3, line: 262, column: 6)
!3642 = !DILocation(line: 263, column: 43, scope: !3641)
!3643 = !DILocation(line: 263, column: 14, scope: !3641)
!3644 = !DILocation(line: 265, column: 8, scope: !3645)
!3645 = distinct !DILexicalBlock(scope: !3641, file: !3, line: 265, column: 8)
!3646 = !DILocation(line: 265, column: 8, scope: !3641)
!3647 = !DILocation(line: 266, column: 9, scope: !3648)
!3648 = distinct !DILexicalBlock(scope: !3645, file: !3, line: 265, column: 40)
!3649 = !DILocation(line: 267, column: 5, scope: !3648)
!3650 = !DILocation(line: 13, column: 2, scope: !3576, inlinedAt: !3651)
!3651 = distinct !DILocation(line: 18, column: 2, scope: !3579, inlinedAt: !3652)
!3652 = distinct !DILocation(line: 269, column: 4, scope: !3641)
!3653 = !DILocation(line: 270, column: 3, scope: !3641)
!3654 = !DILocation(line: 270, column: 13, scope: !3632)
!3655 = !DILocation(line: 270, column: 12, scope: !3632)
!3656 = distinct !{!3656, !3639, !3657}
!3657 = !DILocation(line: 270, column: 22, scope: !3632)
!3658 = !DILocation(line: 273, column: 6, scope: !3659)
!3659 = distinct !DILexicalBlock(scope: !3593, file: !3, line: 273, column: 6)
!3660 = !DILocation(line: 273, column: 11, scope: !3659)
!3661 = !DILocation(line: 273, column: 15, scope: !3659)
!3662 = !DILocation(line: 273, column: 19, scope: !3659)
!3663 = !DILocation(line: 273, column: 22, scope: !3659)
!3664 = !DILocation(line: 273, column: 26, scope: !3659)
!3665 = !DILocation(line: 273, column: 6, scope: !3593)
!3666 = !DILocation(line: 274, column: 34, scope: !3659)
!3667 = !DILocation(line: 274, column: 3, scope: !3659)
!3668 = !DILocation(line: 276, column: 9, scope: !3593)
!3669 = !DILocation(line: 276, column: 2, scope: !3593)
!3670 = distinct !DISubprogram(name: "_msecs_to_jiffies", scope: !3537, file: !3537, line: 308, type: !3538, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3671 = !DILocalVariable(name: "m", arg: 1, scope: !3670, file: !3537, line: 308, type: !3540)
!3672 = !DILocation(line: 308, column: 66, scope: !3670)
!3673 = !DILocation(line: 310, column: 10, scope: !3670)
!3674 = !DILocation(line: 310, column: 12, scope: !3670)
!3675 = !DILocation(line: 310, column: 34, scope: !3670)
!3676 = !DILocation(line: 310, column: 39, scope: !3670)
!3677 = !DILocation(line: 310, column: 2, scope: !3670)
!3678 = distinct !DISubprogram(name: "platform_get_drvdata", scope: !91, file: !91, line: 231, type: !3679, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3679 = !DISubroutineType(types: !3680)
!3680 = !{!88, !3681}
!3681 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3682, size: 64)
!3682 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !90)
!3683 = !DILocalVariable(name: "pdev", arg: 1, scope: !3678, file: !91, line: 231, type: !3681)
!3684 = !DILocation(line: 231, column: 72, scope: !3678)
!3685 = !DILocation(line: 233, column: 26, scope: !3678)
!3686 = !DILocation(line: 233, column: 32, scope: !3678)
!3687 = !DILocation(line: 233, column: 9, scope: !3678)
!3688 = !DILocation(line: 233, column: 2, scope: !3678)
!3689 = distinct !DISubprogram(name: "brcmstb_i2c_suspend", scope: !3, file: !3, line: 717, type: !1637, scopeLine: 718, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3690 = !DILocalVariable(name: "dev", arg: 1, scope: !3689, file: !3, line: 717, type: !1605)
!3691 = !DILocation(line: 717, column: 47, scope: !3689)
!3692 = !DILocalVariable(name: "i2c_dev", scope: !3689, file: !3, line: 719, type: !2397)
!3693 = !DILocation(line: 719, column: 26, scope: !3689)
!3694 = !DILocation(line: 719, column: 52, scope: !3689)
!3695 = !DILocation(line: 719, column: 36, scope: !3689)
!3696 = !DILocation(line: 721, column: 30, scope: !3689)
!3697 = !DILocation(line: 721, column: 39, scope: !3689)
!3698 = !DILocation(line: 721, column: 2, scope: !3689)
!3699 = !DILocation(line: 722, column: 2, scope: !3689)
!3700 = distinct !DISubprogram(name: "brcmstb_i2c_resume", scope: !3, file: !3, line: 725, type: !1637, scopeLine: 726, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3701 = !DILocalVariable(name: "dev", arg: 1, scope: !3700, file: !3, line: 725, type: !1605)
!3702 = !DILocation(line: 725, column: 46, scope: !3700)
!3703 = !DILocalVariable(name: "i2c_dev", scope: !3700, file: !3, line: 727, type: !2397)
!3704 = !DILocation(line: 727, column: 26, scope: !3700)
!3705 = !DILocation(line: 727, column: 52, scope: !3700)
!3706 = !DILocation(line: 727, column: 36, scope: !3700)
!3707 = !DILocation(line: 729, column: 35, scope: !3700)
!3708 = !DILocation(line: 729, column: 2, scope: !3700)
!3709 = !DILocation(line: 730, column: 28, scope: !3700)
!3710 = !DILocation(line: 730, column: 37, scope: !3700)
!3711 = !DILocation(line: 730, column: 2, scope: !3700)
!3712 = !DILocation(line: 732, column: 2, scope: !3700)
!3713 = distinct !DISubprogram(name: "i2c_mark_adapter_suspended", scope: !2257, file: !2257, line: 804, type: !2321, scopeLine: 805, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3714 = !DILocalVariable(name: "adap", arg: 1, scope: !3713, file: !2257, line: 804, type: !2263)
!3715 = !DILocation(line: 804, column: 67, scope: !3713)
!3716 = !DILocation(line: 806, column: 15, scope: !3713)
!3717 = !DILocation(line: 806, column: 2, scope: !3713)
!3718 = !DILocation(line: 807, column: 33, scope: !3713)
!3719 = !DILocation(line: 807, column: 39, scope: !3713)
!3720 = !DILocation(line: 807, column: 2, scope: !3713)
!3721 = !DILocation(line: 808, column: 17, scope: !3713)
!3722 = !DILocation(line: 808, column: 2, scope: !3713)
!3723 = !DILocation(line: 809, column: 1, scope: !3713)
!3724 = distinct !DISubprogram(name: "i2c_lock_bus", scope: !2257, file: !2257, line: 763, type: !2278, scopeLine: 764, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3725 = !DILocalVariable(name: "adapter", arg: 1, scope: !3724, file: !2257, line: 763, type: !2263)
!3726 = !DILocation(line: 763, column: 34, scope: !3724)
!3727 = !DILocalVariable(name: "flags", arg: 2, scope: !3724, file: !2257, line: 763, type: !7)
!3728 = !DILocation(line: 763, column: 56, scope: !3724)
!3729 = !DILocation(line: 765, column: 2, scope: !3724)
!3730 = !DILocation(line: 765, column: 11, scope: !3724)
!3731 = !DILocation(line: 765, column: 21, scope: !3724)
!3732 = !DILocation(line: 765, column: 30, scope: !3724)
!3733 = !DILocation(line: 765, column: 39, scope: !3724)
!3734 = !DILocation(line: 766, column: 1, scope: !3724)
!3735 = distinct !DISubprogram(name: "set_bit", scope: !3736, file: !3736, line: 26, type: !3737, scopeLine: 27, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3736 = !DIFile(filename: "./include/asm-generic/bitops/instrumented-atomic.h", directory: "/home/lizy2001/genbc/linux")
!3737 = !DISubroutineType(types: !3738)
!3738 = !{null, !200, !3739}
!3739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3740, size: 64)
!3740 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !87)
!3741 = !DILocalVariable(name: "nr", arg: 1, scope: !3742, file: !3743, line: 52, type: !200)
!3742 = distinct !DISubprogram(name: "arch_set_bit", scope: !3743, file: !3743, line: 52, type: !3737, scopeLine: 53, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3743 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3744 = !DILocation(line: 52, column: 19, scope: !3742, inlinedAt: !3745)
!3745 = distinct !DILocation(line: 29, column: 2, scope: !3735)
!3746 = !DILocalVariable(name: "addr", arg: 2, scope: !3742, file: !3743, line: 52, type: !3739)
!3747 = !DILocation(line: 52, column: 47, scope: !3742, inlinedAt: !3745)
!3748 = !DILocalVariable(name: "v", arg: 1, scope: !3749, file: !3750, line: 84, type: !3753)
!3749 = distinct !DISubprogram(name: "instrument_atomic_write", scope: !3750, file: !3750, line: 84, type: !3751, scopeLine: 85, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3750 = !DIFile(filename: "./include/linux/instrumented.h", directory: "/home/lizy2001/genbc/linux")
!3751 = !DISubroutineType(types: !3752)
!3752 = !{null, !3753, !212}
!3753 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3754, size: 64)
!3754 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2862)
!3755 = !DILocation(line: 84, column: 74, scope: !3749, inlinedAt: !3756)
!3756 = distinct !DILocation(line: 28, column: 2, scope: !3735)
!3757 = !DILocalVariable(name: "size", arg: 2, scope: !3749, file: !3750, line: 84, type: !212)
!3758 = !DILocation(line: 84, column: 84, scope: !3749, inlinedAt: !3756)
!3759 = !DILocalVariable(name: "nr", arg: 1, scope: !3735, file: !3736, line: 26, type: !200)
!3760 = !DILocation(line: 26, column: 33, scope: !3735)
!3761 = !DILocalVariable(name: "addr", arg: 2, scope: !3735, file: !3736, line: 26, type: !3739)
!3762 = !DILocation(line: 26, column: 61, scope: !3735)
!3763 = !DILocation(line: 28, column: 26, scope: !3735)
!3764 = !DILocation(line: 28, column: 33, scope: !3735)
!3765 = !DILocation(line: 28, column: 31, scope: !3735)
!3766 = !DILocation(line: 86, column: 20, scope: !3749, inlinedAt: !3756)
!3767 = !DILocation(line: 86, column: 23, scope: !3749, inlinedAt: !3756)
!3768 = !DILocation(line: 86, column: 2, scope: !3749, inlinedAt: !3756)
!3769 = !DILocation(line: 87, column: 2, scope: !3749, inlinedAt: !3756)
!3770 = !DILocation(line: 29, column: 15, scope: !3735)
!3771 = !DILocation(line: 29, column: 19, scope: !3735)
!3772 = !DILocation(line: 54, column: 27, scope: !3773, inlinedAt: !3745)
!3773 = distinct !DILexicalBlock(scope: !3742, file: !3743, line: 54, column: 6)
!3774 = !DILocation(line: 54, column: 6, scope: !3773, inlinedAt: !3745)
!3775 = !DILocation(line: 54, column: 6, scope: !3742, inlinedAt: !3745)
!3776 = !DILocation(line: 56, column: 6, scope: !3777, inlinedAt: !3745)
!3777 = distinct !DILexicalBlock(scope: !3773, file: !3743, line: 54, column: 32)
!3778 = !DILocation(line: 57, column: 12, scope: !3777, inlinedAt: !3745)
!3779 = !DILocation(line: 55, column: 3, scope: !3777, inlinedAt: !3745)
!3780 = !{i32 -2147153880}
!3781 = !DILocation(line: 59, column: 2, scope: !3777, inlinedAt: !3745)
!3782 = !DILocation(line: 61, column: 8, scope: !3783, inlinedAt: !3745)
!3783 = distinct !DILexicalBlock(scope: !3773, file: !3743, line: 59, column: 9)
!3784 = !DILocation(line: 61, column: 32, scope: !3783, inlinedAt: !3745)
!3785 = !DILocation(line: 60, column: 3, scope: !3783, inlinedAt: !3745)
!3786 = !{i32 -2147153748}
!3787 = !DILocation(line: 30, column: 1, scope: !3735)
!3788 = distinct !DISubprogram(name: "i2c_unlock_bus", scope: !2257, file: !2257, line: 789, type: !2278, scopeLine: 790, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3789 = !DILocalVariable(name: "adapter", arg: 1, scope: !3788, file: !2257, line: 789, type: !2263)
!3790 = !DILocation(line: 789, column: 36, scope: !3788)
!3791 = !DILocalVariable(name: "flags", arg: 2, scope: !3788, file: !2257, line: 789, type: !7)
!3792 = !DILocation(line: 789, column: 58, scope: !3788)
!3793 = !DILocation(line: 791, column: 2, scope: !3788)
!3794 = !DILocation(line: 791, column: 11, scope: !3788)
!3795 = !DILocation(line: 791, column: 21, scope: !3788)
!3796 = !DILocation(line: 791, column: 32, scope: !3788)
!3797 = !DILocation(line: 791, column: 41, scope: !3788)
!3798 = !DILocation(line: 792, column: 1, scope: !3788)
!3799 = distinct !DISubprogram(name: "kasan_check_write", scope: !3800, file: !3800, line: 38, type: !3801, scopeLine: 39, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3800 = !DIFile(filename: "./include/linux/kasan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3801 = !DISubroutineType(types: !3802)
!3802 = !{!100, !3753, !7}
!3803 = !DILocalVariable(name: "p", arg: 1, scope: !3799, file: !3800, line: 38, type: !3753)
!3804 = !DILocation(line: 38, column: 59, scope: !3799)
!3805 = !DILocalVariable(name: "size", arg: 2, scope: !3799, file: !3800, line: 38, type: !7)
!3806 = !DILocation(line: 38, column: 75, scope: !3799)
!3807 = !DILocation(line: 40, column: 2, scope: !3799)
!3808 = distinct !DISubprogram(name: "kcsan_check_access", scope: !3809, file: !3809, line: 178, type: !3810, scopeLine: 179, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3809 = !DIFile(filename: "./include/linux/kcsan-checks.h", directory: "/home/lizy2001/genbc/linux")
!3810 = !DISubroutineType(types: !3811)
!3811 = !{null, !3753, !212, !98}
!3812 = !DILocalVariable(name: "ptr", arg: 1, scope: !3808, file: !3809, line: 178, type: !3753)
!3813 = !DILocation(line: 178, column: 60, scope: !3808)
!3814 = !DILocalVariable(name: "size", arg: 2, scope: !3808, file: !3809, line: 178, type: !212)
!3815 = !DILocation(line: 178, column: 72, scope: !3808)
!3816 = !DILocalVariable(name: "type", arg: 3, scope: !3808, file: !3809, line: 179, type: !98)
!3817 = !DILocation(line: 179, column: 15, scope: !3808)
!3818 = !DILocation(line: 179, column: 23, scope: !3808)
!3819 = distinct !DISubprogram(name: "i2c_mark_adapter_resumed", scope: !2257, file: !2257, line: 819, type: !2321, scopeLine: 820, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3820 = !DILocalVariable(name: "adap", arg: 1, scope: !3819, file: !2257, line: 819, type: !2263)
!3821 = !DILocation(line: 819, column: 65, scope: !3819)
!3822 = !DILocation(line: 821, column: 15, scope: !3819)
!3823 = !DILocation(line: 821, column: 2, scope: !3819)
!3824 = !DILocation(line: 822, column: 35, scope: !3819)
!3825 = !DILocation(line: 822, column: 41, scope: !3819)
!3826 = !DILocation(line: 822, column: 2, scope: !3819)
!3827 = !DILocation(line: 823, column: 17, scope: !3819)
!3828 = !DILocation(line: 823, column: 2, scope: !3819)
!3829 = !DILocation(line: 824, column: 1, scope: !3819)
!3830 = distinct !DISubprogram(name: "clear_bit", scope: !3736, file: !3736, line: 39, type: !3737, scopeLine: 40, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3831 = !DILocalVariable(name: "nr", arg: 1, scope: !3832, file: !3743, line: 72, type: !200)
!3832 = distinct !DISubprogram(name: "arch_clear_bit", scope: !3743, file: !3743, line: 72, type: !3737, scopeLine: 73, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !138)
!3833 = !DILocation(line: 72, column: 21, scope: !3832, inlinedAt: !3834)
!3834 = distinct !DILocation(line: 42, column: 2, scope: !3830)
!3835 = !DILocalVariable(name: "addr", arg: 2, scope: !3832, file: !3743, line: 72, type: !3739)
!3836 = !DILocation(line: 72, column: 49, scope: !3832, inlinedAt: !3834)
!3837 = !DILocation(line: 84, column: 74, scope: !3749, inlinedAt: !3838)
!3838 = distinct !DILocation(line: 41, column: 2, scope: !3830)
!3839 = !DILocation(line: 84, column: 84, scope: !3749, inlinedAt: !3838)
!3840 = !DILocalVariable(name: "nr", arg: 1, scope: !3830, file: !3736, line: 39, type: !200)
!3841 = !DILocation(line: 39, column: 35, scope: !3830)
!3842 = !DILocalVariable(name: "addr", arg: 2, scope: !3830, file: !3736, line: 39, type: !3739)
!3843 = !DILocation(line: 39, column: 63, scope: !3830)
!3844 = !DILocation(line: 41, column: 26, scope: !3830)
!3845 = !DILocation(line: 41, column: 33, scope: !3830)
!3846 = !DILocation(line: 41, column: 31, scope: !3830)
!3847 = !DILocation(line: 86, column: 20, scope: !3749, inlinedAt: !3838)
!3848 = !DILocation(line: 86, column: 23, scope: !3749, inlinedAt: !3838)
!3849 = !DILocation(line: 86, column: 2, scope: !3749, inlinedAt: !3838)
!3850 = !DILocation(line: 87, column: 2, scope: !3749, inlinedAt: !3838)
!3851 = !DILocation(line: 42, column: 17, scope: !3830)
!3852 = !DILocation(line: 42, column: 21, scope: !3830)
!3853 = !DILocation(line: 74, column: 27, scope: !3854, inlinedAt: !3834)
!3854 = distinct !DILexicalBlock(scope: !3832, file: !3743, line: 74, column: 6)
!3855 = !DILocation(line: 74, column: 6, scope: !3854, inlinedAt: !3834)
!3856 = !DILocation(line: 74, column: 6, scope: !3832, inlinedAt: !3834)
!3857 = !DILocation(line: 76, column: 6, scope: !3858, inlinedAt: !3834)
!3858 = distinct !DILexicalBlock(scope: !3854, file: !3743, line: 74, column: 32)
!3859 = !DILocation(line: 77, column: 13, scope: !3858, inlinedAt: !3834)
!3860 = !DILocation(line: 77, column: 12, scope: !3858, inlinedAt: !3834)
!3861 = !DILocation(line: 75, column: 3, scope: !3858, inlinedAt: !3834)
!3862 = !{i32 -2147152926}
!3863 = !DILocation(line: 78, column: 2, scope: !3858, inlinedAt: !3834)
!3864 = !DILocation(line: 80, column: 8, scope: !3865, inlinedAt: !3834)
!3865 = distinct !DILexicalBlock(scope: !3854, file: !3743, line: 78, column: 9)
!3866 = !DILocation(line: 80, column: 32, scope: !3865, inlinedAt: !3834)
!3867 = !DILocation(line: 79, column: 3, scope: !3865, inlinedAt: !3834)
!3868 = !{i32 -2147152794}
!3869 = !DILocation(line: 43, column: 1, scope: !3830)
