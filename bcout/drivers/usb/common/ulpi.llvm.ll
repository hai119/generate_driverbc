; ModuleID = '../bcout/drivers/usb/common/ulpi.llvm.bc'
source_filename = "drivers/usb/common/ulpi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

module asm ".section\09\22.initcall4.init\22, \22a\22\09"
module asm "__initcall_ulpi_init4:\09\09\09"
module asm ".long\09ulpi_init - .\09\09\09"
module asm ".previous\09\09\09\09\09"

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
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
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
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.class = type { i8*, %struct.module*, %struct.attribute_group**, %struct.attribute_group**, %struct.kobject*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*)*, void (%struct.class*)*, void (%struct.device*)*, i32 (%struct.device*)*, %struct.kobj_ns_type_operations*, i8* (%struct.device*)*, void (%struct.device*, %struct.kuid_t*, %struct.kgid_t*)*, %struct.dev_pm_ops*, %struct.subsys_private* }
%struct.iommu_group = type opaque
%struct.dev_iommu = type opaque
%struct.attribute_group = type { i8*, i16 (%struct.kobject*, %struct.attribute*, i32)*, i16 (%struct.kobject*, %struct.bin_attribute*, i32)*, %struct.attribute**, %struct.bin_attribute** }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.lock_class_key = type {}
%struct.kmem_cache = type opaque
%struct.device_attribute = type { %struct.attribute, i64 (%struct.device*, %struct.device_attribute*, i8*)*, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* }
%struct.ulpi = type { %struct.ulpi_device_id, %struct.ulpi_ops*, %struct.device }
%struct.ulpi_device_id = type { i16, i16, i64 }
%struct.ulpi_ops = type { i32 (%struct.device*, i8)*, i32 (%struct.device*, i8, i8)* }
%struct.ulpi_driver = type { %struct.ulpi_device_id*, i32 (%struct.ulpi*)*, void (%struct.ulpi*)*, %struct.device_driver }
%struct.acpi_device = type { i32, i8*, %struct.fwnode_handle, %struct.acpi_device*, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.acpi_device_status, %struct.acpi_device_flags, %struct.acpi_device_pnp, %struct.acpi_device_power, %struct.acpi_device_wakeup, %struct.acpi_device_perf, %struct.acpi_device_dir, %struct.acpi_device_data, %struct.acpi_scan_handler*, %struct.acpi_hotplug_context*, %struct.acpi_driver*, %struct.acpi_gpio_mapping*, i8*, %struct.device, i32, i32, %struct.list_head, %struct.mutex, void (%struct.acpi_device*)* }
%struct.acpi_device_status = type { i32 }
%struct.acpi_device_flags = type { i32 }
%struct.acpi_device_pnp = type { [8 x i8], %struct.acpi_pnp_type, i64, i8*, %struct.list_head, [40 x i8], [20 x i8], %union.acpi_object* }
%struct.acpi_pnp_type = type { i32 }
%union.acpi_object = type { %struct.anon.43 }
%struct.anon.43 = type { i32, i32, i64, i32 }
%struct.acpi_device_power = type { i32, %struct.acpi_device_power_flags, [5 x %struct.acpi_device_power_state] }
%struct.acpi_device_power_flags = type { i32 }
%struct.acpi_device_power_state = type { %struct.anon.45, i32, i32, %struct.list_head }
%struct.anon.45 = type { i8 }
%struct.acpi_device_wakeup = type { i8*, i64, i64, %struct.list_head, %struct.acpi_device_wakeup_flags, %struct.acpi_device_wakeup_context, %struct.wakeup_source*, i32, i32 }
%struct.acpi_device_wakeup_flags = type { i8 }
%struct.acpi_device_wakeup_context = type { void (%struct.acpi_device_wakeup_context*)*, %struct.device* }
%struct.acpi_device_perf = type { i32, %struct.acpi_device_perf_flags, i32, %struct.acpi_device_perf_state* }
%struct.acpi_device_perf_flags = type { i8 }
%struct.acpi_device_perf_state = type { %struct.anon.46, i8, i8, i32 }
%struct.anon.46 = type { i8 }
%struct.acpi_device_dir = type { %struct.proc_dir_entry* }
%struct.proc_dir_entry = type opaque
%struct.acpi_device_data = type { %union.acpi_object*, %struct.list_head, %union.acpi_object*, %struct.list_head }
%struct.acpi_scan_handler = type { %struct.acpi_device_id*, %struct.list_head, i1 (i8*, %struct.acpi_device_id**)*, i32 (%struct.acpi_device*, %struct.acpi_device_id*)*, void (%struct.acpi_device*)*, void (%struct.device*)*, void (%struct.device*)*, %struct.acpi_hotplug_profile }
%struct.acpi_hotplug_profile = type { %struct.kobject, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*)*, i8 }
%struct.acpi_hotplug_context = type { %struct.acpi_device*, i32 (%struct.acpi_device*, i32)*, void (%struct.acpi_device*, i32)*, void (%struct.acpi_device*)* }
%struct.acpi_driver = type { [80 x i8], [80 x i8], %struct.acpi_device_id*, i32, %struct.acpi_device_ops, %struct.device_driver, %struct.module* }
%struct.acpi_device_ops = type { i32 (%struct.acpi_device*)*, i32 (%struct.acpi_device*)*, void (%struct.acpi_device*, i32)* }
%struct.acpi_gpio_mapping = type opaque

@ulpi_bus = internal global %struct.bus_type { i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* null, %struct.device* null, %struct.attribute_group** null, %struct.attribute_group** null, %struct.attribute_group** null, i32 (%struct.device*, %struct.device_driver*)* @ulpi_match, i32 (%struct.device*, %struct.kobj_uevent_env*)* @ulpi_uevent, i32 (%struct.device*)* @ulpi_probe, void (%struct.device*)* null, i32 (%struct.device*)* @ulpi_remove, void (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*, i32)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, i32 (%struct.device*)* null, %struct.dev_pm_ops* null, %struct.iommu_ops* null, %struct.subsys_private* null, %struct.lock_class_key zeroinitializer, i8 0 }, align 8, !dbg !0
@__UNIQUE_ID___addressable_ulpi_init179 = internal global i8* bitcast (i32 ()* @ulpi_init to i8*), section ".discard.addressable", align 8, !dbg !2467
@__exitcall_ulpi_exit = internal global void ()* @ulpi_exit, section ".exitcall.exit", align 8, !dbg !2469
@__UNIQUE_ID_author180 = internal constant [30 x i8] c"ulpi.author=Intel Corporation\00", section ".modinfo", align 1, !dbg !2476
@__UNIQUE_ID_file181 = internal constant [34 x i8] c"ulpi.file=drivers/usb/common/ulpi\00", section ".modinfo", align 1, !dbg !2481
@__UNIQUE_ID_license182 = internal constant [20 x i8] c"ulpi.license=GPL v2\00", section ".modinfo", align 1, !dbg !2486
@__UNIQUE_ID_description183 = internal constant [34 x i8] c"ulpi.description=USB ULPI PHY bus\00", section ".modinfo", align 1, !dbg !2489
@.str = private unnamed_addr constant [5 x i8] c"ulpi\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"MODALIAS=ulpi:v%04xp%04x\00", align 1
@kmalloc_caches = external dso_local global [3 x [14 x %struct.kmem_cache*]], align 16
@.str.2 = private unnamed_addr constant [21 x i8] c"include/linux/slab.h\00", align 1
@ulpi_dev_type = internal constant %struct.device_type { i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.4, i32 0, i32 0), %struct.attribute_group** getelementptr inbounds ([2 x %struct.attribute_group*], [2 x %struct.attribute_group*]* @ulpi_dev_attr_groups, i32 0, i32 0), i32 (%struct.device*, %struct.kobj_uevent_env*)* null, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)* null, void (%struct.device*)* @ulpi_dev_release, %struct.dev_pm_ops* null }, align 8, !dbg !2491
@.str.3 = private unnamed_addr constant [8 x i8] c"%s.ulpi\00", align 1
@.str.4 = private unnamed_addr constant [12 x i8] c"ulpi_device\00", align 1
@ulpi_dev_attr_groups = internal global [2 x %struct.attribute_group*] [%struct.attribute_group* @ulpi_dev_attr_group, %struct.attribute_group* null], align 16, !dbg !2493
@ulpi_dev_attr_group = internal global %struct.attribute_group { i8* null, i16 (%struct.kobject*, %struct.attribute*, i32)* null, i16 (%struct.kobject*, %struct.bin_attribute*, i32)* null, %struct.attribute** getelementptr inbounds ([2 x %struct.attribute*], [2 x %struct.attribute*]* @ulpi_dev_attrs, i32 0, i32 0), %struct.bin_attribute** null }, align 8, !dbg !2496
@ulpi_dev_attrs = internal global [2 x %struct.attribute*] [%struct.attribute* getelementptr inbounds (%struct.device_attribute, %struct.device_attribute* @dev_attr_modalias, i32 0, i32 0), %struct.attribute* null], align 16, !dbg !2498
@dev_attr_modalias = internal global %struct.device_attribute { %struct.attribute { i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.5, i32 0, i32 0), i16 292 }, i64 (%struct.device*, %struct.device_attribute*, i8*)* @modalias_show, i64 (%struct.device*, %struct.device_attribute*, i8*, i64)* null }, align 8, !dbg !2501
@.str.5 = private unnamed_addr constant [9 x i8] c"modalias\00", align 1
@.str.6 = private unnamed_addr constant [17 x i8] c"ulpi:v%04xp%04x\0A\00", align 1
@.str.7 = private unnamed_addr constant [16 x i8] c"ulpi:v%04xp%04x\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (i8** @__UNIQUE_ID___addressable_ulpi_init179 to i8*), i8* bitcast (void ()* @ulpi_exit to i8*), i8* bitcast (void ()** @__exitcall_ulpi_exit to i8*), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__UNIQUE_ID_author180, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_file181, i32 0, i32 0), i8* getelementptr inbounds ([20 x i8], [20 x i8]* @__UNIQUE_ID_license182, i32 0, i32 0), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_description183, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ulpi_read(%struct.ulpi* %ulpi, i8 zeroext %addr) #0 !dbg !2520 {
entry:
  %ulpi.addr = alloca %struct.ulpi*, align 8
  %addr.addr = alloca i8, align 1
  store %struct.ulpi* %ulpi, %struct.ulpi** %ulpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi.addr, metadata !2523, metadata !DIExpression()), !dbg !2524
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !2525, metadata !DIExpression()), !dbg !2526
  %0 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2527
  %ops = getelementptr inbounds %struct.ulpi, %struct.ulpi* %0, i32 0, i32 1, !dbg !2528
  %1 = load %struct.ulpi_ops*, %struct.ulpi_ops** %ops, align 8, !dbg !2528
  %read = getelementptr inbounds %struct.ulpi_ops, %struct.ulpi_ops* %1, i32 0, i32 0, !dbg !2529
  %2 = load i32 (%struct.device*, i8)*, i32 (%struct.device*, i8)** %read, align 8, !dbg !2529
  %3 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2530
  %dev = getelementptr inbounds %struct.ulpi, %struct.ulpi* %3, i32 0, i32 2, !dbg !2531
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2532
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2532
  %5 = load i8, i8* %addr.addr, align 1, !dbg !2533
  %call = call i32 %2(%struct.device* %4, i8 zeroext %5) #7, !dbg !2527
  ret i32 %call, !dbg !2534
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @ulpi_write(%struct.ulpi* %ulpi, i8 zeroext %addr, i8 zeroext %val) #0 !dbg !2535 {
entry:
  %ulpi.addr = alloca %struct.ulpi*, align 8
  %addr.addr = alloca i8, align 1
  %val.addr = alloca i8, align 1
  store %struct.ulpi* %ulpi, %struct.ulpi** %ulpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi.addr, metadata !2538, metadata !DIExpression()), !dbg !2539
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !2540, metadata !DIExpression()), !dbg !2541
  store i8 %val, i8* %val.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %val.addr, metadata !2542, metadata !DIExpression()), !dbg !2543
  %0 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2544
  %ops = getelementptr inbounds %struct.ulpi, %struct.ulpi* %0, i32 0, i32 1, !dbg !2545
  %1 = load %struct.ulpi_ops*, %struct.ulpi_ops** %ops, align 8, !dbg !2545
  %write = getelementptr inbounds %struct.ulpi_ops, %struct.ulpi_ops* %1, i32 0, i32 1, !dbg !2546
  %2 = load i32 (%struct.device*, i8, i8)*, i32 (%struct.device*, i8, i8)** %write, align 8, !dbg !2546
  %3 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2547
  %dev = getelementptr inbounds %struct.ulpi, %struct.ulpi* %3, i32 0, i32 2, !dbg !2548
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2549
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2549
  %5 = load i8, i8* %addr.addr, align 1, !dbg !2550
  %6 = load i8, i8* %val.addr, align 1, !dbg !2551
  %call = call i32 %2(%struct.device* %4, i8 zeroext %5, i8 zeroext %6) #7, !dbg !2544
  ret i32 %call, !dbg !2552
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @__ulpi_register_driver(%struct.ulpi_driver* %drv, %struct.module* %module) #0 !dbg !2553 {
entry:
  %retval = alloca i32, align 4
  %drv.addr = alloca %struct.ulpi_driver*, align 8
  %module.addr = alloca %struct.module*, align 8
  store %struct.ulpi_driver* %drv, %struct.ulpi_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi_driver** %drv.addr, metadata !2556, metadata !DIExpression()), !dbg !2557
  store %struct.module* %module, %struct.module** %module.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.module** %module.addr, metadata !2558, metadata !DIExpression()), !dbg !2559
  %0 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv.addr, align 8, !dbg !2560
  %probe = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %0, i32 0, i32 1, !dbg !2562
  %1 = load i32 (%struct.ulpi*)*, i32 (%struct.ulpi*)** %probe, align 8, !dbg !2562
  %tobool = icmp ne i32 (%struct.ulpi*)* %1, null, !dbg !2560
  br i1 %tobool, label %if.end, label %if.then, !dbg !2563

if.then:                                          ; preds = %entry
  store i32 -22, i32* %retval, align 4, !dbg !2564
  br label %return, !dbg !2564

if.end:                                           ; preds = %entry
  %2 = load %struct.module*, %struct.module** %module.addr, align 8, !dbg !2565
  %3 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv.addr, align 8, !dbg !2566
  %driver = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %3, i32 0, i32 3, !dbg !2567
  %owner = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver, i32 0, i32 2, !dbg !2568
  store %struct.module* %2, %struct.module** %owner, align 8, !dbg !2569
  %4 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv.addr, align 8, !dbg !2570
  %driver1 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %4, i32 0, i32 3, !dbg !2571
  %bus = getelementptr inbounds %struct.device_driver, %struct.device_driver* %driver1, i32 0, i32 1, !dbg !2572
  store %struct.bus_type* @ulpi_bus, %struct.bus_type** %bus, align 8, !dbg !2573
  %5 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv.addr, align 8, !dbg !2574
  %driver2 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %5, i32 0, i32 3, !dbg !2575
  %call = call i32 @driver_register(%struct.device_driver* %driver2) #7, !dbg !2576
  store i32 %call, i32* %retval, align 4, !dbg !2577
  br label %return, !dbg !2577

return:                                           ; preds = %if.end, %if.then
  %6 = load i32, i32* %retval, align 4, !dbg !2578
  ret i32 %6, !dbg !2578
}

; Function Attrs: noredzone
declare dso_local i32 @driver_register(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ulpi_unregister_driver(%struct.ulpi_driver* %drv) #0 !dbg !2579 {
entry:
  %drv.addr = alloca %struct.ulpi_driver*, align 8
  store %struct.ulpi_driver* %drv, %struct.ulpi_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi_driver** %drv.addr, metadata !2582, metadata !DIExpression()), !dbg !2583
  %0 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv.addr, align 8, !dbg !2584
  %driver = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %0, i32 0, i32 3, !dbg !2585
  call void @driver_unregister(%struct.device_driver* %driver) #7, !dbg !2586
  ret void, !dbg !2587
}

; Function Attrs: noredzone
declare dso_local void @driver_unregister(%struct.device_driver*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.ulpi* @ulpi_register_interface(%struct.device* %dev, %struct.ulpi_ops* %ops) #0 !dbg !2588 {
entry:
  %retval = alloca %struct.ulpi*, align 8
  %dev.addr = alloca %struct.device*, align 8
  %ops.addr = alloca %struct.ulpi_ops*, align 8
  %ulpi = alloca %struct.ulpi*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  store %struct.ulpi_ops* %ops, %struct.ulpi_ops** %ops.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi_ops** %ops.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2597, metadata !DIExpression()), !dbg !2598
  %call = call i8* @kzalloc(i64 720, i32 3264) #7, !dbg !2599
  %0 = bitcast i8* %call to %struct.ulpi*, !dbg !2599
  store %struct.ulpi* %0, %struct.ulpi** %ulpi, align 8, !dbg !2600
  %1 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !2601
  %tobool = icmp ne %struct.ulpi* %1, null, !dbg !2601
  br i1 %tobool, label %if.end, label %if.then, !dbg !2603

if.then:                                          ; preds = %entry
  %call1 = call i8* @ERR_PTR(i64 -12) #7, !dbg !2604
  %2 = bitcast i8* %call1 to %struct.ulpi*, !dbg !2604
  store %struct.ulpi* %2, %struct.ulpi** %retval, align 8, !dbg !2605
  br label %return, !dbg !2605

if.end:                                           ; preds = %entry
  %3 = load %struct.ulpi_ops*, %struct.ulpi_ops** %ops.addr, align 8, !dbg !2606
  %4 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !2607
  %ops2 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %4, i32 0, i32 1, !dbg !2608
  store %struct.ulpi_ops* %3, %struct.ulpi_ops** %ops2, align 8, !dbg !2609
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2610
  %6 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !2611
  %call3 = call i32 @ulpi_register(%struct.device* %5, %struct.ulpi* %6) #7, !dbg !2612
  store i32 %call3, i32* %ret, align 4, !dbg !2613
  %7 = load i32, i32* %ret, align 4, !dbg !2614
  %tobool4 = icmp ne i32 %7, 0, !dbg !2614
  br i1 %tobool4, label %if.then5, label %if.end7, !dbg !2616

if.then5:                                         ; preds = %if.end
  %8 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !2617
  %9 = bitcast %struct.ulpi* %8 to i8*, !dbg !2617
  call void @kfree(i8* %9) #7, !dbg !2619
  %10 = load i32, i32* %ret, align 4, !dbg !2620
  %conv = sext i32 %10 to i64, !dbg !2620
  %call6 = call i8* @ERR_PTR(i64 %conv) #7, !dbg !2621
  %11 = bitcast i8* %call6 to %struct.ulpi*, !dbg !2621
  store %struct.ulpi* %11, %struct.ulpi** %retval, align 8, !dbg !2622
  br label %return, !dbg !2622

if.end7:                                          ; preds = %if.end
  %12 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !2623
  store %struct.ulpi* %12, %struct.ulpi** %retval, align 8, !dbg !2624
  br label %return, !dbg !2624

return:                                           ; preds = %if.end7, %if.then5, %if.then
  %13 = load %struct.ulpi*, %struct.ulpi** %retval, align 8, !dbg !2625
  ret %struct.ulpi* %13, !dbg !2625
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kzalloc(i64 %size, i32 %flags) #0 !dbg !2626 {
entry:
  %s.addr.i.i = alloca %struct.kmem_cache*, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr.i.i, metadata !2629, metadata !DIExpression()), !dbg !2633
  %flags.addr.i17.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i17.i, metadata !2639, metadata !DIExpression()), !dbg !2640
  %size.addr.i18.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i18.i, metadata !2641, metadata !DIExpression()), !dbg !2642
  %ret.i.i = alloca i8*, align 8
  call void @llvm.dbg.declare(metadata i8** %ret.i.i, metadata !2643, metadata !DIExpression()), !dbg !2644
  %retval.i12.i = alloca i32, align 4
  %flags.addr.i13.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i13.i, metadata !2645, metadata !DIExpression()), !dbg !2649
  %retval.i.i = alloca i32, align 4
  %size.addr.i11.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i11.i, metadata !2651, metadata !DIExpression()), !dbg !2655
  %size.addr.i.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i.i, metadata !2657, metadata !DIExpression()), !dbg !2661
  %flags.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i.i, metadata !2666, metadata !DIExpression()), !dbg !2667
  %order.addr.i.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.addr.i.i.i, metadata !2668, metadata !DIExpression()), !dbg !2669
  %size.addr.i.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i.i, metadata !2670, metadata !DIExpression()), !dbg !2671
  %flags.addr.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i.i, metadata !2672, metadata !DIExpression()), !dbg !2673
  %order.i.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %order.i.i, metadata !2674, metadata !DIExpression()), !dbg !2675
  %retval.i = alloca i8*, align 8
  %size.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr.i, metadata !2676, metadata !DIExpression()), !dbg !2677
  %flags.addr.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr.i, metadata !2678, metadata !DIExpression()), !dbg !2679
  %index.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %index.i, metadata !2680, metadata !DIExpression()), !dbg !2681
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !2682, metadata !DIExpression()), !dbg !2683
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !2684, metadata !DIExpression()), !dbg !2685
  %0 = load i64, i64* %size.addr, align 8, !dbg !2686
  %1 = load i32, i32* %flags.addr, align 4, !dbg !2687
  %or = or i32 %1, 256, !dbg !2688
  store i64 %0, i64* %size.addr.i, align 8
  store i32 %or, i32* %flags.addr.i, align 4
  %2 = load i64, i64* %size.addr.i, align 8, !dbg !2689
  %3 = call i1 @llvm.is.constant.i64(i64 %2) #8, !dbg !2690
  br i1 %3, label %if.then.i, label %if.end9.i, !dbg !2691

if.then.i:                                        ; preds = %entry
  %4 = load i64, i64* %size.addr.i, align 8, !dbg !2692
  %cmp.i = icmp ugt i64 %4, 8192, !dbg !2693
  br i1 %cmp.i, label %if.then1.i, label %if.end.i, !dbg !2694

if.then1.i:                                       ; preds = %if.then.i
  %5 = load i64, i64* %size.addr.i, align 8, !dbg !2695
  %6 = load i32, i32* %flags.addr.i, align 4, !dbg !2696
  store i64 %5, i64* %size.addr.i.i, align 8
  store i32 %6, i32* %flags.addr.i.i, align 4
  %7 = load i64, i64* %size.addr.i.i, align 8, !dbg !2697
  %call.i.i = call i32 @get_order(i64 %7) #9, !dbg !2698
  store i32 %call.i.i, i32* %order.i.i, align 4, !dbg !2675
  %8 = load i64, i64* %size.addr.i.i, align 8, !dbg !2699
  %9 = load i32, i32* %flags.addr.i.i, align 4, !dbg !2700
  %10 = load i32, i32* %order.i.i, align 4, !dbg !2701
  store i64 %8, i64* %size.addr.i.i.i, align 8
  store i32 %9, i32* %flags.addr.i.i.i, align 4
  store i32 %10, i32* %order.addr.i.i.i, align 4
  %11 = load i64, i64* %size.addr.i.i.i, align 8, !dbg !2702
  %12 = load i32, i32* %flags.addr.i.i.i, align 4, !dbg !2703
  %13 = load i32, i32* %order.addr.i.i.i, align 4, !dbg !2704
  %call.i.i.i = call noalias i8* @kmalloc_order(i64 %11, i32 %12, i32 %13) #10, !dbg !2705
  %ptrint.i.i.i = ptrtoint i8* %call.i.i.i to i64, !dbg !2705
  %maskedptr.i.i.i = and i64 %ptrint.i.i.i, 4095, !dbg !2705
  %maskcond.i.i.i = icmp eq i64 %maskedptr.i.i.i, 0, !dbg !2705
  call void @llvm.assume(i1 %maskcond.i.i.i) #8, !dbg !2705
  store i8* %call.i.i.i, i8** %retval.i, align 8, !dbg !2706
  br label %kmalloc.exit, !dbg !2706

if.end.i:                                         ; preds = %if.then.i
  %14 = load i64, i64* %size.addr.i, align 8, !dbg !2707
  store i64 %14, i64* %size.addr.i11.i, align 8
  %15 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2708
  %tobool.i.i = icmp ne i64 %15, 0, !dbg !2708
  br i1 %tobool.i.i, label %if.end.i.i, label %if.then.i.i, !dbg !2710

if.then.i.i:                                      ; preds = %if.end.i
  store i32 0, i32* %retval.i.i, align 4, !dbg !2711
  br label %kmalloc_index.exit.i, !dbg !2711

if.end.i.i:                                       ; preds = %if.end.i
  %16 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2712
  %cmp.i.i = icmp ule i64 %16, 8, !dbg !2714
  br i1 %cmp.i.i, label %if.then1.i.i, label %if.end2.i.i, !dbg !2715

if.then1.i.i:                                     ; preds = %if.end.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2716
  br label %kmalloc_index.exit.i, !dbg !2716

if.end2.i.i:                                      ; preds = %if.end.i.i
  %17 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2717
  %cmp3.i.i = icmp ugt i64 %17, 64, !dbg !2719
  br i1 %cmp3.i.i, label %land.lhs.true.i.i, label %if.end6.i.i, !dbg !2720

land.lhs.true.i.i:                                ; preds = %if.end2.i.i
  %18 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2721
  %cmp4.i.i = icmp ule i64 %18, 96, !dbg !2722
  br i1 %cmp4.i.i, label %if.then5.i.i, label %if.end6.i.i, !dbg !2723

if.then5.i.i:                                     ; preds = %land.lhs.true.i.i
  store i32 1, i32* %retval.i.i, align 4, !dbg !2724
  br label %kmalloc_index.exit.i, !dbg !2724

if.end6.i.i:                                      ; preds = %land.lhs.true.i.i, %if.end2.i.i
  %19 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2725
  %cmp7.i.i = icmp ugt i64 %19, 128, !dbg !2727
  br i1 %cmp7.i.i, label %land.lhs.true8.i.i, label %if.end11.i.i, !dbg !2728

land.lhs.true8.i.i:                               ; preds = %if.end6.i.i
  %20 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2729
  %cmp9.i.i = icmp ule i64 %20, 192, !dbg !2730
  br i1 %cmp9.i.i, label %if.then10.i.i, label %if.end11.i.i, !dbg !2731

if.then10.i.i:                                    ; preds = %land.lhs.true8.i.i
  store i32 2, i32* %retval.i.i, align 4, !dbg !2732
  br label %kmalloc_index.exit.i, !dbg !2732

if.end11.i.i:                                     ; preds = %land.lhs.true8.i.i, %if.end6.i.i
  %21 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2733
  %cmp12.i.i = icmp ule i64 %21, 8, !dbg !2735
  br i1 %cmp12.i.i, label %if.then13.i.i, label %if.end14.i.i, !dbg !2736

if.then13.i.i:                                    ; preds = %if.end11.i.i
  store i32 3, i32* %retval.i.i, align 4, !dbg !2737
  br label %kmalloc_index.exit.i, !dbg !2737

if.end14.i.i:                                     ; preds = %if.end11.i.i
  %22 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2738
  %cmp15.i.i = icmp ule i64 %22, 16, !dbg !2740
  br i1 %cmp15.i.i, label %if.then16.i.i, label %if.end17.i.i, !dbg !2741

if.then16.i.i:                                    ; preds = %if.end14.i.i
  store i32 4, i32* %retval.i.i, align 4, !dbg !2742
  br label %kmalloc_index.exit.i, !dbg !2742

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %23 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2743
  %cmp18.i.i = icmp ule i64 %23, 32, !dbg !2745
  br i1 %cmp18.i.i, label %if.then19.i.i, label %if.end20.i.i, !dbg !2746

if.then19.i.i:                                    ; preds = %if.end17.i.i
  store i32 5, i32* %retval.i.i, align 4, !dbg !2747
  br label %kmalloc_index.exit.i, !dbg !2747

if.end20.i.i:                                     ; preds = %if.end17.i.i
  %24 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2748
  %cmp21.i.i = icmp ule i64 %24, 64, !dbg !2750
  br i1 %cmp21.i.i, label %if.then22.i.i, label %if.end23.i.i, !dbg !2751

if.then22.i.i:                                    ; preds = %if.end20.i.i
  store i32 6, i32* %retval.i.i, align 4, !dbg !2752
  br label %kmalloc_index.exit.i, !dbg !2752

if.end23.i.i:                                     ; preds = %if.end20.i.i
  %25 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2753
  %cmp24.i.i = icmp ule i64 %25, 128, !dbg !2755
  br i1 %cmp24.i.i, label %if.then25.i.i, label %if.end26.i.i, !dbg !2756

if.then25.i.i:                                    ; preds = %if.end23.i.i
  store i32 7, i32* %retval.i.i, align 4, !dbg !2757
  br label %kmalloc_index.exit.i, !dbg !2757

if.end26.i.i:                                     ; preds = %if.end23.i.i
  %26 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2758
  %cmp27.i.i = icmp ule i64 %26, 256, !dbg !2760
  br i1 %cmp27.i.i, label %if.then28.i.i, label %if.end29.i.i, !dbg !2761

if.then28.i.i:                                    ; preds = %if.end26.i.i
  store i32 8, i32* %retval.i.i, align 4, !dbg !2762
  br label %kmalloc_index.exit.i, !dbg !2762

if.end29.i.i:                                     ; preds = %if.end26.i.i
  %27 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2763
  %cmp30.i.i = icmp ule i64 %27, 512, !dbg !2765
  br i1 %cmp30.i.i, label %if.then31.i.i, label %if.end32.i.i, !dbg !2766

if.then31.i.i:                                    ; preds = %if.end29.i.i
  store i32 9, i32* %retval.i.i, align 4, !dbg !2767
  br label %kmalloc_index.exit.i, !dbg !2767

if.end32.i.i:                                     ; preds = %if.end29.i.i
  %28 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2768
  %cmp33.i.i = icmp ule i64 %28, 1024, !dbg !2770
  br i1 %cmp33.i.i, label %if.then34.i.i, label %if.end35.i.i, !dbg !2771

if.then34.i.i:                                    ; preds = %if.end32.i.i
  store i32 10, i32* %retval.i.i, align 4, !dbg !2772
  br label %kmalloc_index.exit.i, !dbg !2772

if.end35.i.i:                                     ; preds = %if.end32.i.i
  %29 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2773
  %cmp36.i.i = icmp ule i64 %29, 2048, !dbg !2775
  br i1 %cmp36.i.i, label %if.then37.i.i, label %if.end38.i.i, !dbg !2776

if.then37.i.i:                                    ; preds = %if.end35.i.i
  store i32 11, i32* %retval.i.i, align 4, !dbg !2777
  br label %kmalloc_index.exit.i, !dbg !2777

if.end38.i.i:                                     ; preds = %if.end35.i.i
  %30 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2778
  %cmp39.i.i = icmp ule i64 %30, 4096, !dbg !2780
  br i1 %cmp39.i.i, label %if.then40.i.i, label %if.end41.i.i, !dbg !2781

if.then40.i.i:                                    ; preds = %if.end38.i.i
  store i32 12, i32* %retval.i.i, align 4, !dbg !2782
  br label %kmalloc_index.exit.i, !dbg !2782

if.end41.i.i:                                     ; preds = %if.end38.i.i
  %31 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2783
  %cmp42.i.i = icmp ule i64 %31, 8192, !dbg !2785
  br i1 %cmp42.i.i, label %if.then43.i.i, label %if.end44.i.i, !dbg !2786

if.then43.i.i:                                    ; preds = %if.end41.i.i
  store i32 13, i32* %retval.i.i, align 4, !dbg !2787
  br label %kmalloc_index.exit.i, !dbg !2787

if.end44.i.i:                                     ; preds = %if.end41.i.i
  %32 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2788
  %cmp45.i.i = icmp ule i64 %32, 16384, !dbg !2790
  br i1 %cmp45.i.i, label %if.then46.i.i, label %if.end47.i.i, !dbg !2791

if.then46.i.i:                                    ; preds = %if.end44.i.i
  store i32 14, i32* %retval.i.i, align 4, !dbg !2792
  br label %kmalloc_index.exit.i, !dbg !2792

if.end47.i.i:                                     ; preds = %if.end44.i.i
  %33 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2793
  %cmp48.i.i = icmp ule i64 %33, 32768, !dbg !2795
  br i1 %cmp48.i.i, label %if.then49.i.i, label %if.end50.i.i, !dbg !2796

if.then49.i.i:                                    ; preds = %if.end47.i.i
  store i32 15, i32* %retval.i.i, align 4, !dbg !2797
  br label %kmalloc_index.exit.i, !dbg !2797

if.end50.i.i:                                     ; preds = %if.end47.i.i
  %34 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2798
  %cmp51.i.i = icmp ule i64 %34, 65536, !dbg !2800
  br i1 %cmp51.i.i, label %if.then52.i.i, label %if.end53.i.i, !dbg !2801

if.then52.i.i:                                    ; preds = %if.end50.i.i
  store i32 16, i32* %retval.i.i, align 4, !dbg !2802
  br label %kmalloc_index.exit.i, !dbg !2802

if.end53.i.i:                                     ; preds = %if.end50.i.i
  %35 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2803
  %cmp54.i.i = icmp ule i64 %35, 131072, !dbg !2805
  br i1 %cmp54.i.i, label %if.then55.i.i, label %if.end56.i.i, !dbg !2806

if.then55.i.i:                                    ; preds = %if.end53.i.i
  store i32 17, i32* %retval.i.i, align 4, !dbg !2807
  br label %kmalloc_index.exit.i, !dbg !2807

if.end56.i.i:                                     ; preds = %if.end53.i.i
  %36 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2808
  %cmp57.i.i = icmp ule i64 %36, 262144, !dbg !2810
  br i1 %cmp57.i.i, label %if.then58.i.i, label %if.end59.i.i, !dbg !2811

if.then58.i.i:                                    ; preds = %if.end56.i.i
  store i32 18, i32* %retval.i.i, align 4, !dbg !2812
  br label %kmalloc_index.exit.i, !dbg !2812

if.end59.i.i:                                     ; preds = %if.end56.i.i
  %37 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2813
  %cmp60.i.i = icmp ule i64 %37, 524288, !dbg !2815
  br i1 %cmp60.i.i, label %if.then61.i.i, label %if.end62.i.i, !dbg !2816

if.then61.i.i:                                    ; preds = %if.end59.i.i
  store i32 19, i32* %retval.i.i, align 4, !dbg !2817
  br label %kmalloc_index.exit.i, !dbg !2817

if.end62.i.i:                                     ; preds = %if.end59.i.i
  %38 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2818
  %cmp63.i.i = icmp ule i64 %38, 1048576, !dbg !2820
  br i1 %cmp63.i.i, label %if.then64.i.i, label %if.end65.i.i, !dbg !2821

if.then64.i.i:                                    ; preds = %if.end62.i.i
  store i32 20, i32* %retval.i.i, align 4, !dbg !2822
  br label %kmalloc_index.exit.i, !dbg !2822

if.end65.i.i:                                     ; preds = %if.end62.i.i
  %39 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2823
  %cmp66.i.i = icmp ule i64 %39, 2097152, !dbg !2825
  br i1 %cmp66.i.i, label %if.then67.i.i, label %if.end68.i.i, !dbg !2826

if.then67.i.i:                                    ; preds = %if.end65.i.i
  store i32 21, i32* %retval.i.i, align 4, !dbg !2827
  br label %kmalloc_index.exit.i, !dbg !2827

if.end68.i.i:                                     ; preds = %if.end65.i.i
  %40 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2828
  %cmp69.i.i = icmp ule i64 %40, 4194304, !dbg !2830
  br i1 %cmp69.i.i, label %if.then70.i.i, label %if.end71.i.i, !dbg !2831

if.then70.i.i:                                    ; preds = %if.end68.i.i
  store i32 22, i32* %retval.i.i, align 4, !dbg !2832
  br label %kmalloc_index.exit.i, !dbg !2832

if.end71.i.i:                                     ; preds = %if.end68.i.i
  %41 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2833
  %cmp72.i.i = icmp ule i64 %41, 8388608, !dbg !2835
  br i1 %cmp72.i.i, label %if.then73.i.i, label %if.end74.i.i, !dbg !2836

if.then73.i.i:                                    ; preds = %if.end71.i.i
  store i32 23, i32* %retval.i.i, align 4, !dbg !2837
  br label %kmalloc_index.exit.i, !dbg !2837

if.end74.i.i:                                     ; preds = %if.end71.i.i
  %42 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2838
  %cmp75.i.i = icmp ule i64 %42, 16777216, !dbg !2840
  br i1 %cmp75.i.i, label %if.then76.i.i, label %if.end77.i.i, !dbg !2841

if.then76.i.i:                                    ; preds = %if.end74.i.i
  store i32 24, i32* %retval.i.i, align 4, !dbg !2842
  br label %kmalloc_index.exit.i, !dbg !2842

if.end77.i.i:                                     ; preds = %if.end74.i.i
  %43 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2843
  %cmp78.i.i = icmp ule i64 %43, 33554432, !dbg !2845
  br i1 %cmp78.i.i, label %if.then79.i.i, label %if.end80.i.i, !dbg !2846

if.then79.i.i:                                    ; preds = %if.end77.i.i
  store i32 25, i32* %retval.i.i, align 4, !dbg !2847
  br label %kmalloc_index.exit.i, !dbg !2847

if.end80.i.i:                                     ; preds = %if.end77.i.i
  %44 = load i64, i64* %size.addr.i11.i, align 8, !dbg !2848
  %cmp81.i.i = icmp ule i64 %44, 67108864, !dbg !2850
  br i1 %cmp81.i.i, label %if.then82.i.i, label %if.end83.i.i, !dbg !2851

if.then82.i.i:                                    ; preds = %if.end80.i.i
  store i32 26, i32* %retval.i.i, align 4, !dbg !2852
  br label %kmalloc_index.exit.i, !dbg !2852

if.end83.i.i:                                     ; preds = %if.end80.i.i
  call void asm sideeffect "1:\09.byte 0x0f, 0x0b\0A.pushsection __bug_table,\22aw\22\0A2:\09.long 1b - 2b\09# bug_entry::bug_addr\0A\09.long ${0:c} - 2b\09# bug_entry::file\0A\09.word ${1:c}\09# bug_entry::line\0A\09.word ${2:c}\09# bug_entry::flags\0A\09.org 2b+${3:c}\0A.popsection", "i,i,i,i,~{dirflag},~{fpsr},~{flags}"(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i32 382, i32 0, i64 12) #8, !dbg !2853, !srcloc !2856
  call void asm sideeffect "${0:c}:\0A\09.pushsection .discard.unreachable\0A\09.long ${0:c}b - .\0A\09.popsection\0A\09", "i,~{dirflag},~{fpsr},~{flags}"(i32 160) #8, !dbg !2857, !srcloc !2860
  unreachable, !dbg !2861

kmalloc_index.exit.i:                             ; preds = %if.then82.i.i, %if.then79.i.i, %if.then76.i.i, %if.then73.i.i, %if.then70.i.i, %if.then67.i.i, %if.then64.i.i, %if.then61.i.i, %if.then58.i.i, %if.then55.i.i, %if.then52.i.i, %if.then49.i.i, %if.then46.i.i, %if.then43.i.i, %if.then40.i.i, %if.then37.i.i, %if.then34.i.i, %if.then31.i.i, %if.then28.i.i, %if.then25.i.i, %if.then22.i.i, %if.then19.i.i, %if.then16.i.i, %if.then13.i.i, %if.then10.i.i, %if.then5.i.i, %if.then1.i.i, %if.then.i.i
  %45 = load i32, i32* %retval.i.i, align 4, !dbg !2862
  store i32 %45, i32* %index.i, align 4, !dbg !2863
  %46 = load i32, i32* %index.i, align 4, !dbg !2864
  %tobool.i = icmp ne i32 %46, 0, !dbg !2864
  br i1 %tobool.i, label %if.end4.i, label %if.then3.i, !dbg !2866

if.then3.i:                                       ; preds = %kmalloc_index.exit.i
  store i8* inttoptr (i64 16 to i8*), i8** %retval.i, align 8, !dbg !2867
  br label %kmalloc.exit, !dbg !2867

if.end4.i:                                        ; preds = %kmalloc_index.exit.i
  %47 = load i32, i32* %flags.addr.i, align 4, !dbg !2868
  store i32 %47, i32* %flags.addr.i13.i, align 4
  %48 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2869
  %and.i.i = and i32 %48, 17, !dbg !2869
  %cmp.i14.i = icmp eq i32 %and.i.i, 0, !dbg !2869
  %lnot.i.i = xor i1 %cmp.i14.i, true, !dbg !2869
  %lnot.ext.i.i = zext i1 %cmp.i14.i to i32, !dbg !2869
  %conv.i.i = sext i32 %lnot.ext.i.i to i64, !dbg !2869
  br i1 %cmp.i14.i, label %if.then.i15.i, label %if.end.i16.i, !dbg !2871

if.then.i15.i:                                    ; preds = %if.end4.i
  store i32 0, i32* %retval.i12.i, align 4, !dbg !2872
  br label %kmalloc_type.exit.i, !dbg !2872

if.end.i16.i:                                     ; preds = %if.end4.i
  %49 = load i32, i32* %flags.addr.i13.i, align 4, !dbg !2873
  %and2.i.i = and i32 %49, 1, !dbg !2874
  %tobool3.i.i = icmp ne i32 %and2.i.i, 0, !dbg !2873
  %50 = zext i1 %tobool3.i.i to i64, !dbg !2873
  %cond.i.i = select i1 %tobool3.i.i, i32 2, i32 1, !dbg !2873
  store i32 %cond.i.i, i32* %retval.i12.i, align 4, !dbg !2875
  br label %kmalloc_type.exit.i, !dbg !2875

kmalloc_type.exit.i:                              ; preds = %if.end.i16.i, %if.then.i15.i
  %51 = load i32, i32* %retval.i12.i, align 4, !dbg !2876
  %idxprom.i = zext i32 %51 to i64, !dbg !2877
  %arrayidx.i = getelementptr [3 x [14 x %struct.kmem_cache*]], [3 x [14 x %struct.kmem_cache*]]* @kmalloc_caches, i64 0, i64 %idxprom.i, !dbg !2877
  %52 = load i32, i32* %index.i, align 4, !dbg !2878
  %idxprom6.i = zext i32 %52 to i64, !dbg !2877
  %arrayidx7.i = getelementptr [14 x %struct.kmem_cache*], [14 x %struct.kmem_cache*]* %arrayidx.i, i64 0, i64 %idxprom6.i, !dbg !2877
  %53 = load %struct.kmem_cache*, %struct.kmem_cache** %arrayidx7.i, align 8, !dbg !2877
  %54 = load i32, i32* %flags.addr.i, align 4, !dbg !2879
  %55 = load i64, i64* %size.addr.i, align 8, !dbg !2880
  store %struct.kmem_cache* %53, %struct.kmem_cache** %s.addr.i.i, align 8
  store i32 %54, i32* %flags.addr.i17.i, align 4
  store i64 %55, i64* %size.addr.i18.i, align 8
  %56 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2881
  %57 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2882
  %call.i19.i = call noalias i8* @kmem_cache_alloc(%struct.kmem_cache* %56, i32 %57) #10, !dbg !2883
  %ptrint.i.i = ptrtoint i8* %call.i19.i to i64, !dbg !2883
  %maskedptr.i.i = and i64 %ptrint.i.i, 7, !dbg !2883
  %maskcond.i.i = icmp eq i64 %maskedptr.i.i, 0, !dbg !2883
  call void @llvm.assume(i1 %maskcond.i.i) #8, !dbg !2883
  store i8* %call.i19.i, i8** %ret.i.i, align 8, !dbg !2644
  %58 = load %struct.kmem_cache*, %struct.kmem_cache** %s.addr.i.i, align 8, !dbg !2884
  %59 = load i8*, i8** %ret.i.i, align 8, !dbg !2885
  %60 = load i64, i64* %size.addr.i18.i, align 8, !dbg !2886
  %61 = load i32, i32* %flags.addr.i17.i, align 4, !dbg !2887
  %call1.i.i = call i8* @kasan_kmalloc(%struct.kmem_cache* %58, i8* %59, i64 %60, i32 %61) #10, !dbg !2888
  store i8* %call1.i.i, i8** %ret.i.i, align 8, !dbg !2889
  %62 = load i8*, i8** %ret.i.i, align 8, !dbg !2890
  store i8* %62, i8** %retval.i, align 8, !dbg !2891
  br label %kmalloc.exit, !dbg !2891

if.end9.i:                                        ; preds = %entry
  %63 = load i64, i64* %size.addr.i, align 8, !dbg !2892
  %64 = load i32, i32* %flags.addr.i, align 4, !dbg !2893
  %call10.i = call noalias i8* @__kmalloc(i64 %63, i32 %64) #10, !dbg !2894
  %ptrint.i = ptrtoint i8* %call10.i to i64, !dbg !2894
  %maskedptr.i = and i64 %ptrint.i, 7, !dbg !2894
  %maskcond.i = icmp eq i64 %maskedptr.i, 0, !dbg !2894
  call void @llvm.assume(i1 %maskcond.i) #8, !dbg !2894
  store i8* %call10.i, i8** %retval.i, align 8, !dbg !2895
  br label %kmalloc.exit, !dbg !2895

kmalloc.exit:                                     ; preds = %if.then1.i, %if.then3.i, %kmalloc_type.exit.i, %if.end9.i
  %65 = load i8*, i8** %retval.i, align 8, !dbg !2896
  ret i8* %65, !dbg !2897
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @ERR_PTR(i64 %error) #0 !dbg !2898 {
entry:
  %error.addr = alloca i64, align 8
  store i64 %error, i64* %error.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %error.addr, metadata !2902, metadata !DIExpression()), !dbg !2903
  %0 = load i64, i64* %error.addr, align 8, !dbg !2904
  %1 = inttoptr i64 %0 to i8*, !dbg !2905
  ret i8* %1, !dbg !2906
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_register(%struct.device* %dev, %struct.ulpi* %ulpi) #0 !dbg !2907 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %ulpi.addr = alloca %struct.ulpi*, align 8
  %ret = alloca i32, align 4
  %__to_acpi_device_node_fwnode = alloca %struct.fwnode_handle*, align 8
  %tmp = alloca %struct.acpi_device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp8 = alloca %struct.acpi_device*, align 8
  %__to_acpi_device_node_fwnode10 = alloca %struct.fwnode_handle*, align 8
  %tmp12 = alloca %struct.acpi_device*, align 8
  %__mptr15 = alloca i8*, align 8
  %tmp18 = alloca %struct.acpi_device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2910, metadata !DIExpression()), !dbg !2911
  store %struct.ulpi* %ulpi, %struct.ulpi** %ulpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi.addr, metadata !2912, metadata !DIExpression()), !dbg !2913
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2914, metadata !DIExpression()), !dbg !2915
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2916
  %1 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2917
  %dev1 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %1, i32 0, i32 2, !dbg !2918
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev1, i32 0, i32 1, !dbg !2919
  store %struct.device* %0, %struct.device** %parent, align 8, !dbg !2920
  %2 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2921
  %dev2 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %2, i32 0, i32 2, !dbg !2922
  %bus = getelementptr inbounds %struct.device, %struct.device* %dev2, i32 0, i32 5, !dbg !2923
  store %struct.bus_type* @ulpi_bus, %struct.bus_type** %bus, align 8, !dbg !2924
  %3 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2925
  %dev3 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %3, i32 0, i32 2, !dbg !2926
  %type = getelementptr inbounds %struct.device, %struct.device* %dev3, i32 0, i32 4, !dbg !2927
  store %struct.device_type* @ulpi_dev_type, %struct.device_type** %type, align 8, !dbg !2928
  %4 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2929
  %dev4 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %4, i32 0, i32 2, !dbg !2930
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2931
  %call = call i8* @dev_name(%struct.device* %5) #7, !dbg !2932
  %call5 = call i32 (%struct.device*, i8*, ...) @dev_set_name(%struct.device* %dev4, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i8* %call) #7, !dbg !2933
  %6 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2934
  %dev6 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %6, i32 0, i32 2, !dbg !2934
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode, metadata !2935, metadata !DIExpression()), !dbg !2937
  %7 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2937
  %fwnode = getelementptr inbounds %struct.device, %struct.device* %7, i32 0, i32 24, !dbg !2937
  %8 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode, align 8, !dbg !2937
  store %struct.fwnode_handle* %8, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2937
  %9 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2937
  %call7 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %9) #7, !dbg !2937
  br i1 %call7, label %cond.true, label %cond.false, !dbg !2937

cond.true:                                        ; preds = %entry
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !2938, metadata !DIExpression()), !dbg !2940
  %10 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode, align 8, !dbg !2940
  %11 = bitcast %struct.fwnode_handle* %10 to i8*, !dbg !2940
  store i8* %11, i8** %__mptr, align 8, !dbg !2940
  br label %do.body, !dbg !2940

do.body:                                          ; preds = %cond.true
  br label %do.end, !dbg !2941

do.end:                                           ; preds = %do.body
  %12 = load i8*, i8** %__mptr, align 8, !dbg !2940
  %add.ptr = getelementptr i8, i8* %12, i64 -16, !dbg !2940
  %13 = bitcast i8* %add.ptr to %struct.acpi_device*, !dbg !2940
  store %struct.acpi_device* %13, %struct.acpi_device** %tmp8, align 8, !dbg !2941
  %14 = load %struct.acpi_device*, %struct.acpi_device** %tmp8, align 8, !dbg !2940
  br label %cond.end, !dbg !2937

cond.false:                                       ; preds = %entry
  br label %cond.end, !dbg !2937

cond.end:                                         ; preds = %cond.false, %do.end
  %cond = phi %struct.acpi_device* [ %14, %do.end ], [ null, %cond.false ], !dbg !2937
  store %struct.acpi_device* %cond, %struct.acpi_device** %tmp, align 8, !dbg !2937
  %15 = load %struct.acpi_device*, %struct.acpi_device** %tmp, align 8, !dbg !2937
  %tobool = icmp ne %struct.acpi_device* %15, null, !dbg !2934
  br i1 %tobool, label %cond.true9, label %cond.false24, !dbg !2934

cond.true9:                                       ; preds = %cond.end
  call void @llvm.dbg.declare(metadata %struct.fwnode_handle** %__to_acpi_device_node_fwnode10, metadata !2943, metadata !DIExpression()), !dbg !2945
  %16 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2945
  %fwnode11 = getelementptr inbounds %struct.device, %struct.device* %16, i32 0, i32 24, !dbg !2945
  %17 = load %struct.fwnode_handle*, %struct.fwnode_handle** %fwnode11, align 8, !dbg !2945
  store %struct.fwnode_handle* %17, %struct.fwnode_handle** %__to_acpi_device_node_fwnode10, align 8, !dbg !2945
  %18 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode10, align 8, !dbg !2945
  %call13 = call zeroext i1 @is_acpi_device_node(%struct.fwnode_handle* %18) #7, !dbg !2945
  br i1 %call13, label %cond.true14, label %cond.false20, !dbg !2945

cond.true14:                                      ; preds = %cond.true9
  call void @llvm.dbg.declare(metadata i8** %__mptr15, metadata !2946, metadata !DIExpression()), !dbg !2948
  %19 = load %struct.fwnode_handle*, %struct.fwnode_handle** %__to_acpi_device_node_fwnode10, align 8, !dbg !2948
  %20 = bitcast %struct.fwnode_handle* %19 to i8*, !dbg !2948
  store i8* %20, i8** %__mptr15, align 8, !dbg !2948
  br label %do.body16, !dbg !2948

do.body16:                                        ; preds = %cond.true14
  br label %do.end17, !dbg !2949

do.end17:                                         ; preds = %do.body16
  %21 = load i8*, i8** %__mptr15, align 8, !dbg !2948
  %add.ptr19 = getelementptr i8, i8* %21, i64 -16, !dbg !2948
  %22 = bitcast i8* %add.ptr19 to %struct.acpi_device*, !dbg !2948
  store %struct.acpi_device* %22, %struct.acpi_device** %tmp18, align 8, !dbg !2949
  %23 = load %struct.acpi_device*, %struct.acpi_device** %tmp18, align 8, !dbg !2948
  br label %cond.end21, !dbg !2945

cond.false20:                                     ; preds = %cond.true9
  br label %cond.end21, !dbg !2945

cond.end21:                                       ; preds = %cond.false20, %do.end17
  %cond22 = phi %struct.acpi_device* [ %23, %do.end17 ], [ null, %cond.false20 ], !dbg !2945
  store %struct.acpi_device* %cond22, %struct.acpi_device** %tmp12, align 8, !dbg !2945
  %24 = load %struct.acpi_device*, %struct.acpi_device** %tmp12, align 8, !dbg !2945
  %call23 = call %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %24) #7, !dbg !2934
  br label %cond.end25, !dbg !2934

cond.false24:                                     ; preds = %cond.end
  br label %cond.end25, !dbg !2934

cond.end25:                                       ; preds = %cond.false24, %cond.end21
  %cond26 = phi %struct.fwnode_handle* [ %call23, %cond.end21 ], [ null, %cond.false24 ], !dbg !2934
  call void @set_primary_fwnode(%struct.device* %dev6, %struct.fwnode_handle* %cond26) #7, !dbg !2934
  %25 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2951
  %call27 = call i32 @ulpi_of_register(%struct.ulpi* %25) #7, !dbg !2952
  store i32 %call27, i32* %ret, align 4, !dbg !2953
  %26 = load i32, i32* %ret, align 4, !dbg !2954
  %tobool28 = icmp ne i32 %26, 0, !dbg !2954
  br i1 %tobool28, label %if.then, label %if.end, !dbg !2956

if.then:                                          ; preds = %cond.end25
  %27 = load i32, i32* %ret, align 4, !dbg !2957
  store i32 %27, i32* %retval, align 4, !dbg !2958
  br label %return, !dbg !2958

if.end:                                           ; preds = %cond.end25
  %28 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2959
  %call29 = call i32 @ulpi_read_id(%struct.ulpi* %28) #7, !dbg !2960
  store i32 %call29, i32* %ret, align 4, !dbg !2961
  %29 = load i32, i32* %ret, align 4, !dbg !2962
  %tobool30 = icmp ne i32 %29, 0, !dbg !2962
  br i1 %tobool30, label %if.then31, label %if.end32, !dbg !2964

if.then31:                                        ; preds = %if.end
  %30 = load i32, i32* %ret, align 4, !dbg !2965
  store i32 %30, i32* %retval, align 4, !dbg !2966
  br label %return, !dbg !2966

if.end32:                                         ; preds = %if.end
  %31 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2967
  %dev33 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %31, i32 0, i32 2, !dbg !2968
  %call34 = call i32 @device_register(%struct.device* %dev33) #7, !dbg !2969
  store i32 %call34, i32* %ret, align 4, !dbg !2970
  %32 = load i32, i32* %ret, align 4, !dbg !2971
  %tobool35 = icmp ne i32 %32, 0, !dbg !2971
  br i1 %tobool35, label %if.then36, label %if.end37, !dbg !2973

if.then36:                                        ; preds = %if.end32
  %33 = load i32, i32* %ret, align 4, !dbg !2974
  store i32 %33, i32* %retval, align 4, !dbg !2975
  br label %return, !dbg !2975

if.end37:                                         ; preds = %if.end32
  store i32 0, i32* %retval, align 4, !dbg !2976
  br label %return, !dbg !2976

return:                                           ; preds = %if.end37, %if.then36, %if.then31, %if.then
  %34 = load i32, i32* %retval, align 4, !dbg !2977
  ret i32 %34, !dbg !2977
}

; Function Attrs: noredzone
declare dso_local void @kfree(i8*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @ulpi_unregister_interface(%struct.ulpi* %ulpi) #0 !dbg !2978 {
entry:
  %ulpi.addr = alloca %struct.ulpi*, align 8
  store %struct.ulpi* %ulpi, %struct.ulpi** %ulpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi.addr, metadata !2979, metadata !DIExpression()), !dbg !2980
  %0 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2981
  %dev = getelementptr inbounds %struct.ulpi, %struct.ulpi* %0, i32 0, i32 2, !dbg !2982
  %of_node = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 23, !dbg !2983
  %1 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !2983
  call void @of_node_put(%struct.device_node* %1) #7, !dbg !2984
  %2 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !2985
  %dev1 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %2, i32 0, i32 2, !dbg !2986
  call void @device_unregister(%struct.device* %dev1) #7, !dbg !2987
  ret void, !dbg !2988
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @of_node_put(%struct.device_node* %node) #0 !dbg !2989 {
entry:
  %node.addr = alloca %struct.device_node*, align 8
  store %struct.device_node* %node, %struct.device_node** %node.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_node** %node.addr, metadata !2992, metadata !DIExpression()), !dbg !2993
  ret void, !dbg !2994
}

; Function Attrs: noredzone
declare dso_local void @device_unregister(%struct.device*) #2

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_init() #3 section ".init.text" !dbg !2995 {
entry:
  %call = call i32 @bus_register(%struct.bus_type* @ulpi_bus) #7, !dbg !2998
  ret i32 %call, !dbg !2999
}

; Function Attrs: cold noinline noredzone nounwind optnone sspstrong
define internal void @ulpi_exit() #3 section ".exit.text" !dbg !3000 {
entry:
  call void @bus_unregister(%struct.bus_type* @ulpi_bus) #7, !dbg !3001
  ret void, !dbg !3002
}

; Function Attrs: noredzone
declare dso_local void @bus_unregister(%struct.bus_type*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_match(%struct.device* %dev, %struct.device_driver* %driver) #0 !dbg !3003 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %driver.addr = alloca %struct.device_driver*, align 8
  %drv = alloca %struct.ulpi_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ulpi_driver*, align 8
  %ulpi = alloca %struct.ulpi*, align 8
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.ulpi*, align 8
  %id = alloca %struct.ulpi_device_id*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3004, metadata !DIExpression()), !dbg !3005
  store %struct.device_driver* %driver, %struct.device_driver** %driver.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %driver.addr, metadata !3006, metadata !DIExpression()), !dbg !3007
  call void @llvm.dbg.declare(metadata %struct.ulpi_driver** %drv, metadata !3008, metadata !DIExpression()), !dbg !3009
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3010, metadata !DIExpression()), !dbg !3012
  %0 = load %struct.device_driver*, %struct.device_driver** %driver.addr, align 8, !dbg !3012
  %1 = bitcast %struct.device_driver* %0 to i8*, !dbg !3012
  store i8* %1, i8** %__mptr, align 8, !dbg !3012
  br label %do.body, !dbg !3012

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3013

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3012
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3012
  %3 = bitcast i8* %add.ptr to %struct.ulpi_driver*, !dbg !3012
  store %struct.ulpi_driver* %3, %struct.ulpi_driver** %tmp, align 8, !dbg !3013
  %4 = load %struct.ulpi_driver*, %struct.ulpi_driver** %tmp, align 8, !dbg !3012
  store %struct.ulpi_driver* %4, %struct.ulpi_driver** %drv, align 8, !dbg !3009
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi, metadata !3015, metadata !DIExpression()), !dbg !3016
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3017, metadata !DIExpression()), !dbg !3019
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3019
  %6 = bitcast %struct.device* %5 to i8*, !dbg !3019
  store i8* %6, i8** %__mptr1, align 8, !dbg !3019
  br label %do.body2, !dbg !3019

do.body2:                                         ; preds = %do.end
  br label %do.end3, !dbg !3020

do.end3:                                          ; preds = %do.body2
  %7 = load i8*, i8** %__mptr1, align 8, !dbg !3019
  %add.ptr5 = getelementptr i8, i8* %7, i64 -24, !dbg !3019
  %8 = bitcast i8* %add.ptr5 to %struct.ulpi*, !dbg !3019
  store %struct.ulpi* %8, %struct.ulpi** %tmp4, align 8, !dbg !3020
  %9 = load %struct.ulpi*, %struct.ulpi** %tmp4, align 8, !dbg !3019
  store %struct.ulpi* %9, %struct.ulpi** %ulpi, align 8, !dbg !3016
  call void @llvm.dbg.declare(metadata %struct.ulpi_device_id** %id, metadata !3022, metadata !DIExpression()), !dbg !3023
  %10 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3024
  %id6 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %10, i32 0, i32 0, !dbg !3026
  %vendor = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id6, i32 0, i32 0, !dbg !3027
  %11 = load i16, i16* %vendor, align 8, !dbg !3027
  %conv = zext i16 %11 to i32, !dbg !3024
  %cmp = icmp eq i32 %conv, 0, !dbg !3028
  br i1 %cmp, label %if.then, label %if.end, !dbg !3029

if.then:                                          ; preds = %do.end3
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3030
  %13 = load %struct.device_driver*, %struct.device_driver** %driver.addr, align 8, !dbg !3031
  %call = call i32 @of_driver_match_device(%struct.device* %12, %struct.device_driver* %13) #7, !dbg !3032
  store i32 %call, i32* %retval, align 4, !dbg !3033
  br label %return, !dbg !3033

if.end:                                           ; preds = %do.end3
  %14 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv, align 8, !dbg !3034
  %id_table = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %14, i32 0, i32 0, !dbg !3036
  %15 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %id_table, align 8, !dbg !3036
  store %struct.ulpi_device_id* %15, %struct.ulpi_device_id** %id, align 8, !dbg !3037
  br label %for.cond, !dbg !3038

for.cond:                                         ; preds = %for.inc, %if.end
  %16 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %id, align 8, !dbg !3039
  %vendor8 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %16, i32 0, i32 0, !dbg !3041
  %17 = load i16, i16* %vendor8, align 8, !dbg !3041
  %tobool = icmp ne i16 %17, 0, !dbg !3042
  br i1 %tobool, label %for.body, label %for.end, !dbg !3042

for.body:                                         ; preds = %for.cond
  %18 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %id, align 8, !dbg !3043
  %vendor9 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %18, i32 0, i32 0, !dbg !3045
  %19 = load i16, i16* %vendor9, align 8, !dbg !3045
  %conv10 = zext i16 %19 to i32, !dbg !3043
  %20 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3046
  %id11 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %20, i32 0, i32 0, !dbg !3047
  %vendor12 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id11, i32 0, i32 0, !dbg !3048
  %21 = load i16, i16* %vendor12, align 8, !dbg !3048
  %conv13 = zext i16 %21 to i32, !dbg !3046
  %cmp14 = icmp eq i32 %conv10, %conv13, !dbg !3049
  br i1 %cmp14, label %land.lhs.true, label %if.end23, !dbg !3050

land.lhs.true:                                    ; preds = %for.body
  %22 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %id, align 8, !dbg !3051
  %product = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %22, i32 0, i32 1, !dbg !3052
  %23 = load i16, i16* %product, align 2, !dbg !3052
  %conv16 = zext i16 %23 to i32, !dbg !3051
  %24 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3053
  %id17 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %24, i32 0, i32 0, !dbg !3054
  %product18 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id17, i32 0, i32 1, !dbg !3055
  %25 = load i16, i16* %product18, align 2, !dbg !3055
  %conv19 = zext i16 %25 to i32, !dbg !3053
  %cmp20 = icmp eq i32 %conv16, %conv19, !dbg !3056
  br i1 %cmp20, label %if.then22, label %if.end23, !dbg !3057

if.then22:                                        ; preds = %land.lhs.true
  store i32 1, i32* %retval, align 4, !dbg !3058
  br label %return, !dbg !3058

if.end23:                                         ; preds = %land.lhs.true, %for.body
  br label %for.inc, !dbg !3055

for.inc:                                          ; preds = %if.end23
  %26 = load %struct.ulpi_device_id*, %struct.ulpi_device_id** %id, align 8, !dbg !3059
  %incdec.ptr = getelementptr %struct.ulpi_device_id, %struct.ulpi_device_id* %26, i32 1, !dbg !3059
  store %struct.ulpi_device_id* %incdec.ptr, %struct.ulpi_device_id** %id, align 8, !dbg !3059
  br label %for.cond, !dbg !3060, !llvm.loop !3061

for.end:                                          ; preds = %for.cond
  store i32 0, i32* %retval, align 4, !dbg !3063
  br label %return, !dbg !3063

return:                                           ; preds = %for.end, %if.then22, %if.then
  %27 = load i32, i32* %retval, align 4, !dbg !3064
  ret i32 %27, !dbg !3064
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_uevent(%struct.device* %dev, %struct.kobj_uevent_env* %env) #0 !dbg !3065 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %env.addr = alloca %struct.kobj_uevent_env*, align 8
  %ulpi = alloca %struct.ulpi*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ulpi*, align 8
  %ret = alloca i32, align 4
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3066, metadata !DIExpression()), !dbg !3067
  store %struct.kobj_uevent_env* %env, %struct.kobj_uevent_env** %env.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobj_uevent_env** %env.addr, metadata !3068, metadata !DIExpression()), !dbg !3069
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi, metadata !3070, metadata !DIExpression()), !dbg !3071
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3072, metadata !DIExpression()), !dbg !3074
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3074
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3074
  store i8* %1, i8** %__mptr, align 8, !dbg !3074
  br label %do.body, !dbg !3074

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3075

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3074
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3074
  %3 = bitcast i8* %add.ptr to %struct.ulpi*, !dbg !3074
  store %struct.ulpi* %3, %struct.ulpi** %tmp, align 8, !dbg !3075
  %4 = load %struct.ulpi*, %struct.ulpi** %tmp, align 8, !dbg !3074
  store %struct.ulpi* %4, %struct.ulpi** %ulpi, align 8, !dbg !3071
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3077, metadata !DIExpression()), !dbg !3078
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3079
  %6 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3080
  %call = call i32 @of_device_uevent_modalias(%struct.device* %5, %struct.kobj_uevent_env* %6) #7, !dbg !3081
  store i32 %call, i32* %ret, align 4, !dbg !3082
  %7 = load i32, i32* %ret, align 4, !dbg !3083
  %cmp = icmp ne i32 %7, -19, !dbg !3085
  br i1 %cmp, label %if.then, label %if.end, !dbg !3086

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %ret, align 4, !dbg !3087
  store i32 %8, i32* %retval, align 4, !dbg !3088
  br label %return, !dbg !3088

if.end:                                           ; preds = %do.end
  %9 = load %struct.kobj_uevent_env*, %struct.kobj_uevent_env** %env.addr, align 8, !dbg !3089
  %10 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3091
  %id = getelementptr inbounds %struct.ulpi, %struct.ulpi* %10, i32 0, i32 0, !dbg !3092
  %vendor = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id, i32 0, i32 0, !dbg !3093
  %11 = load i16, i16* %vendor, align 8, !dbg !3093
  %conv = zext i16 %11 to i32, !dbg !3091
  %12 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3094
  %id1 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %12, i32 0, i32 0, !dbg !3095
  %product = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id1, i32 0, i32 1, !dbg !3096
  %13 = load i16, i16* %product, align 2, !dbg !3096
  %conv2 = zext i16 %13 to i32, !dbg !3094
  %call3 = call i32 (%struct.kobj_uevent_env*, i8*, ...) @add_uevent_var(%struct.kobj_uevent_env* %9, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %conv, i32 %conv2) #7, !dbg !3097
  %tobool = icmp ne i32 %call3, 0, !dbg !3097
  br i1 %tobool, label %if.then4, label %if.end5, !dbg !3098

if.then4:                                         ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !3099
  br label %return, !dbg !3099

if.end5:                                          ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3100
  br label %return, !dbg !3100

return:                                           ; preds = %if.end5, %if.then4, %if.then
  %14 = load i32, i32* %retval, align 4, !dbg !3101
  ret i32 %14, !dbg !3101
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_probe(%struct.device* %dev) #0 !dbg !3102 {
entry:
  %retval = alloca i32, align 4
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.ulpi_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ulpi_driver*, align 8
  %ret = alloca i32, align 4
  %__mptr1 = alloca i8*, align 8
  %tmp4 = alloca %struct.ulpi*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  call void @llvm.dbg.declare(metadata %struct.ulpi_driver** %drv, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3107, metadata !DIExpression()), !dbg !3109
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3109
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3109
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3109
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !3109
  store i8* %2, i8** %__mptr, align 8, !dbg !3109
  br label %do.body, !dbg !3109

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3110

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3109
  %add.ptr = getelementptr i8, i8* %3, i64 -24, !dbg !3109
  %4 = bitcast i8* %add.ptr to %struct.ulpi_driver*, !dbg !3109
  store %struct.ulpi_driver* %4, %struct.ulpi_driver** %tmp, align 8, !dbg !3110
  %5 = load %struct.ulpi_driver*, %struct.ulpi_driver** %tmp, align 8, !dbg !3109
  store %struct.ulpi_driver* %5, %struct.ulpi_driver** %drv, align 8, !dbg !3106
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3112, metadata !DIExpression()), !dbg !3113
  %6 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3114
  %of_node = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 23, !dbg !3115
  %7 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3115
  %call = call i32 @of_clk_set_defaults(%struct.device_node* %7, i1 zeroext false) #7, !dbg !3116
  store i32 %call, i32* %ret, align 4, !dbg !3117
  %8 = load i32, i32* %ret, align 4, !dbg !3118
  %cmp = icmp slt i32 %8, 0, !dbg !3120
  br i1 %cmp, label %if.then, label %if.end, !dbg !3121

if.then:                                          ; preds = %do.end
  %9 = load i32, i32* %ret, align 4, !dbg !3122
  store i32 %9, i32* %retval, align 4, !dbg !3123
  br label %return, !dbg !3123

if.end:                                           ; preds = %do.end
  %10 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv, align 8, !dbg !3124
  %probe = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %10, i32 0, i32 1, !dbg !3125
  %11 = load i32 (%struct.ulpi*)*, i32 (%struct.ulpi*)** %probe, align 8, !dbg !3125
  call void @llvm.dbg.declare(metadata i8** %__mptr1, metadata !3126, metadata !DIExpression()), !dbg !3128
  %12 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3128
  %13 = bitcast %struct.device* %12 to i8*, !dbg !3128
  store i8* %13, i8** %__mptr1, align 8, !dbg !3128
  br label %do.body2, !dbg !3128

do.body2:                                         ; preds = %if.end
  br label %do.end3, !dbg !3129

do.end3:                                          ; preds = %do.body2
  %14 = load i8*, i8** %__mptr1, align 8, !dbg !3128
  %add.ptr5 = getelementptr i8, i8* %14, i64 -24, !dbg !3128
  %15 = bitcast i8* %add.ptr5 to %struct.ulpi*, !dbg !3128
  store %struct.ulpi* %15, %struct.ulpi** %tmp4, align 8, !dbg !3129
  %16 = load %struct.ulpi*, %struct.ulpi** %tmp4, align 8, !dbg !3128
  %call6 = call i32 %11(%struct.ulpi* %16) #7, !dbg !3124
  store i32 %call6, i32* %retval, align 4, !dbg !3131
  br label %return, !dbg !3131

return:                                           ; preds = %do.end3, %if.then
  %17 = load i32, i32* %retval, align 4, !dbg !3132
  ret i32 %17, !dbg !3132
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_remove(%struct.device* %dev) #0 !dbg !3133 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv = alloca %struct.ulpi_driver*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ulpi_driver*, align 8
  %__mptr2 = alloca i8*, align 8
  %tmp5 = alloca %struct.ulpi*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3134, metadata !DIExpression()), !dbg !3135
  call void @llvm.dbg.declare(metadata %struct.ulpi_driver** %drv, metadata !3136, metadata !DIExpression()), !dbg !3137
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3138, metadata !DIExpression()), !dbg !3140
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3140
  %driver = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 6, !dbg !3140
  %1 = load %struct.device_driver*, %struct.device_driver** %driver, align 8, !dbg !3140
  %2 = bitcast %struct.device_driver* %1 to i8*, !dbg !3140
  store i8* %2, i8** %__mptr, align 8, !dbg !3140
  br label %do.body, !dbg !3140

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3141

do.end:                                           ; preds = %do.body
  %3 = load i8*, i8** %__mptr, align 8, !dbg !3140
  %add.ptr = getelementptr i8, i8* %3, i64 -24, !dbg !3140
  %4 = bitcast i8* %add.ptr to %struct.ulpi_driver*, !dbg !3140
  store %struct.ulpi_driver* %4, %struct.ulpi_driver** %tmp, align 8, !dbg !3141
  %5 = load %struct.ulpi_driver*, %struct.ulpi_driver** %tmp, align 8, !dbg !3140
  store %struct.ulpi_driver* %5, %struct.ulpi_driver** %drv, align 8, !dbg !3137
  %6 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv, align 8, !dbg !3143
  %remove = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %6, i32 0, i32 2, !dbg !3145
  %7 = load void (%struct.ulpi*)*, void (%struct.ulpi*)** %remove, align 8, !dbg !3145
  %tobool = icmp ne void (%struct.ulpi*)* %7, null, !dbg !3143
  br i1 %tobool, label %if.then, label %if.end, !dbg !3146

if.then:                                          ; preds = %do.end
  %8 = load %struct.ulpi_driver*, %struct.ulpi_driver** %drv, align 8, !dbg !3147
  %remove1 = getelementptr inbounds %struct.ulpi_driver, %struct.ulpi_driver* %8, i32 0, i32 2, !dbg !3148
  %9 = load void (%struct.ulpi*)*, void (%struct.ulpi*)** %remove1, align 8, !dbg !3148
  call void @llvm.dbg.declare(metadata i8** %__mptr2, metadata !3149, metadata !DIExpression()), !dbg !3151
  %10 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3151
  %11 = bitcast %struct.device* %10 to i8*, !dbg !3151
  store i8* %11, i8** %__mptr2, align 8, !dbg !3151
  br label %do.body3, !dbg !3151

do.body3:                                         ; preds = %if.then
  br label %do.end4, !dbg !3152

do.end4:                                          ; preds = %do.body3
  %12 = load i8*, i8** %__mptr2, align 8, !dbg !3151
  %add.ptr6 = getelementptr i8, i8* %12, i64 -24, !dbg !3151
  %13 = bitcast i8* %add.ptr6 to %struct.ulpi*, !dbg !3151
  store %struct.ulpi* %13, %struct.ulpi** %tmp5, align 8, !dbg !3152
  %14 = load %struct.ulpi*, %struct.ulpi** %tmp5, align 8, !dbg !3151
  call void %9(%struct.ulpi* %14) #7, !dbg !3147
  br label %if.end, !dbg !3147

if.end:                                           ; preds = %do.end4, %do.end
  ret i32 0, !dbg !3154
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @of_driver_match_device(%struct.device* %dev, %struct.device_driver* %drv) #0 !dbg !3155 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %drv.addr = alloca %struct.device_driver*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3161, metadata !DIExpression()), !dbg !3162
  store %struct.device_driver* %drv, %struct.device_driver** %drv.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_driver** %drv.addr, metadata !3163, metadata !DIExpression()), !dbg !3164
  %0 = load %struct.device_driver*, %struct.device_driver** %drv.addr, align 8, !dbg !3165
  %of_match_table = getelementptr inbounds %struct.device_driver, %struct.device_driver* %0, i32 0, i32 6, !dbg !3166
  %1 = load %struct.of_device_id*, %struct.of_device_id** %of_match_table, align 8, !dbg !3166
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3167
  %call = call %struct.of_device_id* @of_match_device(%struct.of_device_id* %1, %struct.device* %2) #7, !dbg !3168
  %cmp = icmp ne %struct.of_device_id* %call, null, !dbg !3169
  %conv = zext i1 %cmp to i32, !dbg !3169
  ret i32 %conv, !dbg !3170
}

; Function Attrs: noredzone
declare dso_local %struct.of_device_id* @of_match_device(%struct.of_device_id*, %struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @of_device_uevent_modalias(%struct.device*, %struct.kobj_uevent_env*) #2

; Function Attrs: noredzone
declare dso_local i32 @add_uevent_var(%struct.kobj_uevent_env*, i8*, ...) #2

; Function Attrs: noredzone
declare dso_local i32 @of_clk_set_defaults(%struct.device_node*, i1 zeroext) #2

; Function Attrs: nounwind readnone willreturn
declare i1 @llvm.is.constant.i64(i64) #4

; Function Attrs: noredzone
declare dso_local noalias i8* @__kmalloc(i64, i32) #2

; Function Attrs: nounwind willreturn
declare void @llvm.assume(i1) #5

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @get_order(i64 %size) #6 !dbg !3171 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3175, metadata !DIExpression()), !dbg !3180
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3182, metadata !DIExpression()), !dbg !3183
  %retval = alloca i32, align 4
  %size.addr = alloca i64, align 8
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3184, metadata !DIExpression()), !dbg !3185
  %0 = load i64, i64* %size.addr, align 8, !dbg !3186
  %1 = call i1 @llvm.is.constant.i64(i64 %0), !dbg !3188
  br i1 %1, label %if.then, label %if.end447, !dbg !3189

if.then:                                          ; preds = %entry
  %2 = load i64, i64* %size.addr, align 8, !dbg !3190
  %tobool = icmp ne i64 %2, 0, !dbg !3190
  br i1 %tobool, label %if.end, label %if.then1, !dbg !3193

if.then1:                                         ; preds = %if.then
  store i32 52, i32* %retval, align 4, !dbg !3194
  br label %return, !dbg !3194

if.end:                                           ; preds = %if.then
  %3 = load i64, i64* %size.addr, align 8, !dbg !3195
  %cmp = icmp ult i64 %3, 4096, !dbg !3197
  br i1 %cmp, label %if.then2, label %if.end3, !dbg !3198

if.then2:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3199
  br label %return, !dbg !3199

if.end3:                                          ; preds = %if.end
  %4 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub = sub i64 %4, 1, !dbg !3200
  %5 = call i1 @llvm.is.constant.i64(i64 %sub), !dbg !3200
  br i1 %5, label %cond.true, label %cond.false442, !dbg !3200

cond.true:                                        ; preds = %if.end3
  %6 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub4 = sub i64 %6, 1, !dbg !3200
  %7 = call i1 @llvm.is.constant.i64(i64 %sub4), !dbg !3200
  br i1 %7, label %cond.true5, label %cond.false439, !dbg !3200

cond.true5:                                       ; preds = %cond.true
  %8 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub6 = sub i64 %8, 1, !dbg !3200
  %cmp7 = icmp ult i64 %sub6, 2, !dbg !3200
  br i1 %cmp7, label %cond.true8, label %cond.false, !dbg !3200

cond.true8:                                       ; preds = %cond.true5
  br label %cond.end437, !dbg !3200

cond.false:                                       ; preds = %cond.true5
  %9 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub9 = sub i64 %9, 1, !dbg !3200
  %and = and i64 %sub9, -9223372036854775808, !dbg !3200
  %tobool10 = icmp ne i64 %and, 0, !dbg !3200
  br i1 %tobool10, label %cond.true11, label %cond.false12, !dbg !3200

cond.true11:                                      ; preds = %cond.false
  br label %cond.end435, !dbg !3200

cond.false12:                                     ; preds = %cond.false
  %10 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub13 = sub i64 %10, 1, !dbg !3200
  %and14 = and i64 %sub13, 4611686018427387904, !dbg !3200
  %tobool15 = icmp ne i64 %and14, 0, !dbg !3200
  br i1 %tobool15, label %cond.true16, label %cond.false17, !dbg !3200

cond.true16:                                      ; preds = %cond.false12
  br label %cond.end433, !dbg !3200

cond.false17:                                     ; preds = %cond.false12
  %11 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub18 = sub i64 %11, 1, !dbg !3200
  %and19 = and i64 %sub18, 2305843009213693952, !dbg !3200
  %tobool20 = icmp ne i64 %and19, 0, !dbg !3200
  br i1 %tobool20, label %cond.true21, label %cond.false22, !dbg !3200

cond.true21:                                      ; preds = %cond.false17
  br label %cond.end431, !dbg !3200

cond.false22:                                     ; preds = %cond.false17
  %12 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub23 = sub i64 %12, 1, !dbg !3200
  %and24 = and i64 %sub23, 1152921504606846976, !dbg !3200
  %tobool25 = icmp ne i64 %and24, 0, !dbg !3200
  br i1 %tobool25, label %cond.true26, label %cond.false27, !dbg !3200

cond.true26:                                      ; preds = %cond.false22
  br label %cond.end429, !dbg !3200

cond.false27:                                     ; preds = %cond.false22
  %13 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub28 = sub i64 %13, 1, !dbg !3200
  %and29 = and i64 %sub28, 576460752303423488, !dbg !3200
  %tobool30 = icmp ne i64 %and29, 0, !dbg !3200
  br i1 %tobool30, label %cond.true31, label %cond.false32, !dbg !3200

cond.true31:                                      ; preds = %cond.false27
  br label %cond.end427, !dbg !3200

cond.false32:                                     ; preds = %cond.false27
  %14 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub33 = sub i64 %14, 1, !dbg !3200
  %and34 = and i64 %sub33, 288230376151711744, !dbg !3200
  %tobool35 = icmp ne i64 %and34, 0, !dbg !3200
  br i1 %tobool35, label %cond.true36, label %cond.false37, !dbg !3200

cond.true36:                                      ; preds = %cond.false32
  br label %cond.end425, !dbg !3200

cond.false37:                                     ; preds = %cond.false32
  %15 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub38 = sub i64 %15, 1, !dbg !3200
  %and39 = and i64 %sub38, 144115188075855872, !dbg !3200
  %tobool40 = icmp ne i64 %and39, 0, !dbg !3200
  br i1 %tobool40, label %cond.true41, label %cond.false42, !dbg !3200

cond.true41:                                      ; preds = %cond.false37
  br label %cond.end423, !dbg !3200

cond.false42:                                     ; preds = %cond.false37
  %16 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub43 = sub i64 %16, 1, !dbg !3200
  %and44 = and i64 %sub43, 72057594037927936, !dbg !3200
  %tobool45 = icmp ne i64 %and44, 0, !dbg !3200
  br i1 %tobool45, label %cond.true46, label %cond.false47, !dbg !3200

cond.true46:                                      ; preds = %cond.false42
  br label %cond.end421, !dbg !3200

cond.false47:                                     ; preds = %cond.false42
  %17 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub48 = sub i64 %17, 1, !dbg !3200
  %and49 = and i64 %sub48, 36028797018963968, !dbg !3200
  %tobool50 = icmp ne i64 %and49, 0, !dbg !3200
  br i1 %tobool50, label %cond.true51, label %cond.false52, !dbg !3200

cond.true51:                                      ; preds = %cond.false47
  br label %cond.end419, !dbg !3200

cond.false52:                                     ; preds = %cond.false47
  %18 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub53 = sub i64 %18, 1, !dbg !3200
  %and54 = and i64 %sub53, 18014398509481984, !dbg !3200
  %tobool55 = icmp ne i64 %and54, 0, !dbg !3200
  br i1 %tobool55, label %cond.true56, label %cond.false57, !dbg !3200

cond.true56:                                      ; preds = %cond.false52
  br label %cond.end417, !dbg !3200

cond.false57:                                     ; preds = %cond.false52
  %19 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub58 = sub i64 %19, 1, !dbg !3200
  %and59 = and i64 %sub58, 9007199254740992, !dbg !3200
  %tobool60 = icmp ne i64 %and59, 0, !dbg !3200
  br i1 %tobool60, label %cond.true61, label %cond.false62, !dbg !3200

cond.true61:                                      ; preds = %cond.false57
  br label %cond.end415, !dbg !3200

cond.false62:                                     ; preds = %cond.false57
  %20 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub63 = sub i64 %20, 1, !dbg !3200
  %and64 = and i64 %sub63, 4503599627370496, !dbg !3200
  %tobool65 = icmp ne i64 %and64, 0, !dbg !3200
  br i1 %tobool65, label %cond.true66, label %cond.false67, !dbg !3200

cond.true66:                                      ; preds = %cond.false62
  br label %cond.end413, !dbg !3200

cond.false67:                                     ; preds = %cond.false62
  %21 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub68 = sub i64 %21, 1, !dbg !3200
  %and69 = and i64 %sub68, 2251799813685248, !dbg !3200
  %tobool70 = icmp ne i64 %and69, 0, !dbg !3200
  br i1 %tobool70, label %cond.true71, label %cond.false72, !dbg !3200

cond.true71:                                      ; preds = %cond.false67
  br label %cond.end411, !dbg !3200

cond.false72:                                     ; preds = %cond.false67
  %22 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub73 = sub i64 %22, 1, !dbg !3200
  %and74 = and i64 %sub73, 1125899906842624, !dbg !3200
  %tobool75 = icmp ne i64 %and74, 0, !dbg !3200
  br i1 %tobool75, label %cond.true76, label %cond.false77, !dbg !3200

cond.true76:                                      ; preds = %cond.false72
  br label %cond.end409, !dbg !3200

cond.false77:                                     ; preds = %cond.false72
  %23 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub78 = sub i64 %23, 1, !dbg !3200
  %and79 = and i64 %sub78, 562949953421312, !dbg !3200
  %tobool80 = icmp ne i64 %and79, 0, !dbg !3200
  br i1 %tobool80, label %cond.true81, label %cond.false82, !dbg !3200

cond.true81:                                      ; preds = %cond.false77
  br label %cond.end407, !dbg !3200

cond.false82:                                     ; preds = %cond.false77
  %24 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub83 = sub i64 %24, 1, !dbg !3200
  %and84 = and i64 %sub83, 281474976710656, !dbg !3200
  %tobool85 = icmp ne i64 %and84, 0, !dbg !3200
  br i1 %tobool85, label %cond.true86, label %cond.false87, !dbg !3200

cond.true86:                                      ; preds = %cond.false82
  br label %cond.end405, !dbg !3200

cond.false87:                                     ; preds = %cond.false82
  %25 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub88 = sub i64 %25, 1, !dbg !3200
  %and89 = and i64 %sub88, 140737488355328, !dbg !3200
  %tobool90 = icmp ne i64 %and89, 0, !dbg !3200
  br i1 %tobool90, label %cond.true91, label %cond.false92, !dbg !3200

cond.true91:                                      ; preds = %cond.false87
  br label %cond.end403, !dbg !3200

cond.false92:                                     ; preds = %cond.false87
  %26 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub93 = sub i64 %26, 1, !dbg !3200
  %and94 = and i64 %sub93, 70368744177664, !dbg !3200
  %tobool95 = icmp ne i64 %and94, 0, !dbg !3200
  br i1 %tobool95, label %cond.true96, label %cond.false97, !dbg !3200

cond.true96:                                      ; preds = %cond.false92
  br label %cond.end401, !dbg !3200

cond.false97:                                     ; preds = %cond.false92
  %27 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub98 = sub i64 %27, 1, !dbg !3200
  %and99 = and i64 %sub98, 35184372088832, !dbg !3200
  %tobool100 = icmp ne i64 %and99, 0, !dbg !3200
  br i1 %tobool100, label %cond.true101, label %cond.false102, !dbg !3200

cond.true101:                                     ; preds = %cond.false97
  br label %cond.end399, !dbg !3200

cond.false102:                                    ; preds = %cond.false97
  %28 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub103 = sub i64 %28, 1, !dbg !3200
  %and104 = and i64 %sub103, 17592186044416, !dbg !3200
  %tobool105 = icmp ne i64 %and104, 0, !dbg !3200
  br i1 %tobool105, label %cond.true106, label %cond.false107, !dbg !3200

cond.true106:                                     ; preds = %cond.false102
  br label %cond.end397, !dbg !3200

cond.false107:                                    ; preds = %cond.false102
  %29 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub108 = sub i64 %29, 1, !dbg !3200
  %and109 = and i64 %sub108, 8796093022208, !dbg !3200
  %tobool110 = icmp ne i64 %and109, 0, !dbg !3200
  br i1 %tobool110, label %cond.true111, label %cond.false112, !dbg !3200

cond.true111:                                     ; preds = %cond.false107
  br label %cond.end395, !dbg !3200

cond.false112:                                    ; preds = %cond.false107
  %30 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub113 = sub i64 %30, 1, !dbg !3200
  %and114 = and i64 %sub113, 4398046511104, !dbg !3200
  %tobool115 = icmp ne i64 %and114, 0, !dbg !3200
  br i1 %tobool115, label %cond.true116, label %cond.false117, !dbg !3200

cond.true116:                                     ; preds = %cond.false112
  br label %cond.end393, !dbg !3200

cond.false117:                                    ; preds = %cond.false112
  %31 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub118 = sub i64 %31, 1, !dbg !3200
  %and119 = and i64 %sub118, 2199023255552, !dbg !3200
  %tobool120 = icmp ne i64 %and119, 0, !dbg !3200
  br i1 %tobool120, label %cond.true121, label %cond.false122, !dbg !3200

cond.true121:                                     ; preds = %cond.false117
  br label %cond.end391, !dbg !3200

cond.false122:                                    ; preds = %cond.false117
  %32 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub123 = sub i64 %32, 1, !dbg !3200
  %and124 = and i64 %sub123, 1099511627776, !dbg !3200
  %tobool125 = icmp ne i64 %and124, 0, !dbg !3200
  br i1 %tobool125, label %cond.true126, label %cond.false127, !dbg !3200

cond.true126:                                     ; preds = %cond.false122
  br label %cond.end389, !dbg !3200

cond.false127:                                    ; preds = %cond.false122
  %33 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub128 = sub i64 %33, 1, !dbg !3200
  %and129 = and i64 %sub128, 549755813888, !dbg !3200
  %tobool130 = icmp ne i64 %and129, 0, !dbg !3200
  br i1 %tobool130, label %cond.true131, label %cond.false132, !dbg !3200

cond.true131:                                     ; preds = %cond.false127
  br label %cond.end387, !dbg !3200

cond.false132:                                    ; preds = %cond.false127
  %34 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub133 = sub i64 %34, 1, !dbg !3200
  %and134 = and i64 %sub133, 274877906944, !dbg !3200
  %tobool135 = icmp ne i64 %and134, 0, !dbg !3200
  br i1 %tobool135, label %cond.true136, label %cond.false137, !dbg !3200

cond.true136:                                     ; preds = %cond.false132
  br label %cond.end385, !dbg !3200

cond.false137:                                    ; preds = %cond.false132
  %35 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub138 = sub i64 %35, 1, !dbg !3200
  %and139 = and i64 %sub138, 137438953472, !dbg !3200
  %tobool140 = icmp ne i64 %and139, 0, !dbg !3200
  br i1 %tobool140, label %cond.true141, label %cond.false142, !dbg !3200

cond.true141:                                     ; preds = %cond.false137
  br label %cond.end383, !dbg !3200

cond.false142:                                    ; preds = %cond.false137
  %36 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub143 = sub i64 %36, 1, !dbg !3200
  %and144 = and i64 %sub143, 68719476736, !dbg !3200
  %tobool145 = icmp ne i64 %and144, 0, !dbg !3200
  br i1 %tobool145, label %cond.true146, label %cond.false147, !dbg !3200

cond.true146:                                     ; preds = %cond.false142
  br label %cond.end381, !dbg !3200

cond.false147:                                    ; preds = %cond.false142
  %37 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub148 = sub i64 %37, 1, !dbg !3200
  %and149 = and i64 %sub148, 34359738368, !dbg !3200
  %tobool150 = icmp ne i64 %and149, 0, !dbg !3200
  br i1 %tobool150, label %cond.true151, label %cond.false152, !dbg !3200

cond.true151:                                     ; preds = %cond.false147
  br label %cond.end379, !dbg !3200

cond.false152:                                    ; preds = %cond.false147
  %38 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub153 = sub i64 %38, 1, !dbg !3200
  %and154 = and i64 %sub153, 17179869184, !dbg !3200
  %tobool155 = icmp ne i64 %and154, 0, !dbg !3200
  br i1 %tobool155, label %cond.true156, label %cond.false157, !dbg !3200

cond.true156:                                     ; preds = %cond.false152
  br label %cond.end377, !dbg !3200

cond.false157:                                    ; preds = %cond.false152
  %39 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub158 = sub i64 %39, 1, !dbg !3200
  %and159 = and i64 %sub158, 8589934592, !dbg !3200
  %tobool160 = icmp ne i64 %and159, 0, !dbg !3200
  br i1 %tobool160, label %cond.true161, label %cond.false162, !dbg !3200

cond.true161:                                     ; preds = %cond.false157
  br label %cond.end375, !dbg !3200

cond.false162:                                    ; preds = %cond.false157
  %40 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub163 = sub i64 %40, 1, !dbg !3200
  %and164 = and i64 %sub163, 4294967296, !dbg !3200
  %tobool165 = icmp ne i64 %and164, 0, !dbg !3200
  br i1 %tobool165, label %cond.true166, label %cond.false167, !dbg !3200

cond.true166:                                     ; preds = %cond.false162
  br label %cond.end373, !dbg !3200

cond.false167:                                    ; preds = %cond.false162
  %41 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub168 = sub i64 %41, 1, !dbg !3200
  %and169 = and i64 %sub168, 2147483648, !dbg !3200
  %tobool170 = icmp ne i64 %and169, 0, !dbg !3200
  br i1 %tobool170, label %cond.true171, label %cond.false172, !dbg !3200

cond.true171:                                     ; preds = %cond.false167
  br label %cond.end371, !dbg !3200

cond.false172:                                    ; preds = %cond.false167
  %42 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub173 = sub i64 %42, 1, !dbg !3200
  %and174 = and i64 %sub173, 1073741824, !dbg !3200
  %tobool175 = icmp ne i64 %and174, 0, !dbg !3200
  br i1 %tobool175, label %cond.true176, label %cond.false177, !dbg !3200

cond.true176:                                     ; preds = %cond.false172
  br label %cond.end369, !dbg !3200

cond.false177:                                    ; preds = %cond.false172
  %43 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub178 = sub i64 %43, 1, !dbg !3200
  %and179 = and i64 %sub178, 536870912, !dbg !3200
  %tobool180 = icmp ne i64 %and179, 0, !dbg !3200
  br i1 %tobool180, label %cond.true181, label %cond.false182, !dbg !3200

cond.true181:                                     ; preds = %cond.false177
  br label %cond.end367, !dbg !3200

cond.false182:                                    ; preds = %cond.false177
  %44 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub183 = sub i64 %44, 1, !dbg !3200
  %and184 = and i64 %sub183, 268435456, !dbg !3200
  %tobool185 = icmp ne i64 %and184, 0, !dbg !3200
  br i1 %tobool185, label %cond.true186, label %cond.false187, !dbg !3200

cond.true186:                                     ; preds = %cond.false182
  br label %cond.end365, !dbg !3200

cond.false187:                                    ; preds = %cond.false182
  %45 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub188 = sub i64 %45, 1, !dbg !3200
  %and189 = and i64 %sub188, 134217728, !dbg !3200
  %tobool190 = icmp ne i64 %and189, 0, !dbg !3200
  br i1 %tobool190, label %cond.true191, label %cond.false192, !dbg !3200

cond.true191:                                     ; preds = %cond.false187
  br label %cond.end363, !dbg !3200

cond.false192:                                    ; preds = %cond.false187
  %46 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub193 = sub i64 %46, 1, !dbg !3200
  %and194 = and i64 %sub193, 67108864, !dbg !3200
  %tobool195 = icmp ne i64 %and194, 0, !dbg !3200
  br i1 %tobool195, label %cond.true196, label %cond.false197, !dbg !3200

cond.true196:                                     ; preds = %cond.false192
  br label %cond.end361, !dbg !3200

cond.false197:                                    ; preds = %cond.false192
  %47 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub198 = sub i64 %47, 1, !dbg !3200
  %and199 = and i64 %sub198, 33554432, !dbg !3200
  %tobool200 = icmp ne i64 %and199, 0, !dbg !3200
  br i1 %tobool200, label %cond.true201, label %cond.false202, !dbg !3200

cond.true201:                                     ; preds = %cond.false197
  br label %cond.end359, !dbg !3200

cond.false202:                                    ; preds = %cond.false197
  %48 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub203 = sub i64 %48, 1, !dbg !3200
  %and204 = and i64 %sub203, 16777216, !dbg !3200
  %tobool205 = icmp ne i64 %and204, 0, !dbg !3200
  br i1 %tobool205, label %cond.true206, label %cond.false207, !dbg !3200

cond.true206:                                     ; preds = %cond.false202
  br label %cond.end357, !dbg !3200

cond.false207:                                    ; preds = %cond.false202
  %49 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub208 = sub i64 %49, 1, !dbg !3200
  %and209 = and i64 %sub208, 8388608, !dbg !3200
  %tobool210 = icmp ne i64 %and209, 0, !dbg !3200
  br i1 %tobool210, label %cond.true211, label %cond.false212, !dbg !3200

cond.true211:                                     ; preds = %cond.false207
  br label %cond.end355, !dbg !3200

cond.false212:                                    ; preds = %cond.false207
  %50 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub213 = sub i64 %50, 1, !dbg !3200
  %and214 = and i64 %sub213, 4194304, !dbg !3200
  %tobool215 = icmp ne i64 %and214, 0, !dbg !3200
  br i1 %tobool215, label %cond.true216, label %cond.false217, !dbg !3200

cond.true216:                                     ; preds = %cond.false212
  br label %cond.end353, !dbg !3200

cond.false217:                                    ; preds = %cond.false212
  %51 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub218 = sub i64 %51, 1, !dbg !3200
  %and219 = and i64 %sub218, 2097152, !dbg !3200
  %tobool220 = icmp ne i64 %and219, 0, !dbg !3200
  br i1 %tobool220, label %cond.true221, label %cond.false222, !dbg !3200

cond.true221:                                     ; preds = %cond.false217
  br label %cond.end351, !dbg !3200

cond.false222:                                    ; preds = %cond.false217
  %52 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub223 = sub i64 %52, 1, !dbg !3200
  %and224 = and i64 %sub223, 1048576, !dbg !3200
  %tobool225 = icmp ne i64 %and224, 0, !dbg !3200
  br i1 %tobool225, label %cond.true226, label %cond.false227, !dbg !3200

cond.true226:                                     ; preds = %cond.false222
  br label %cond.end349, !dbg !3200

cond.false227:                                    ; preds = %cond.false222
  %53 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub228 = sub i64 %53, 1, !dbg !3200
  %and229 = and i64 %sub228, 524288, !dbg !3200
  %tobool230 = icmp ne i64 %and229, 0, !dbg !3200
  br i1 %tobool230, label %cond.true231, label %cond.false232, !dbg !3200

cond.true231:                                     ; preds = %cond.false227
  br label %cond.end347, !dbg !3200

cond.false232:                                    ; preds = %cond.false227
  %54 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub233 = sub i64 %54, 1, !dbg !3200
  %and234 = and i64 %sub233, 262144, !dbg !3200
  %tobool235 = icmp ne i64 %and234, 0, !dbg !3200
  br i1 %tobool235, label %cond.true236, label %cond.false237, !dbg !3200

cond.true236:                                     ; preds = %cond.false232
  br label %cond.end345, !dbg !3200

cond.false237:                                    ; preds = %cond.false232
  %55 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub238 = sub i64 %55, 1, !dbg !3200
  %and239 = and i64 %sub238, 131072, !dbg !3200
  %tobool240 = icmp ne i64 %and239, 0, !dbg !3200
  br i1 %tobool240, label %cond.true241, label %cond.false242, !dbg !3200

cond.true241:                                     ; preds = %cond.false237
  br label %cond.end343, !dbg !3200

cond.false242:                                    ; preds = %cond.false237
  %56 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub243 = sub i64 %56, 1, !dbg !3200
  %and244 = and i64 %sub243, 65536, !dbg !3200
  %tobool245 = icmp ne i64 %and244, 0, !dbg !3200
  br i1 %tobool245, label %cond.true246, label %cond.false247, !dbg !3200

cond.true246:                                     ; preds = %cond.false242
  br label %cond.end341, !dbg !3200

cond.false247:                                    ; preds = %cond.false242
  %57 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub248 = sub i64 %57, 1, !dbg !3200
  %and249 = and i64 %sub248, 32768, !dbg !3200
  %tobool250 = icmp ne i64 %and249, 0, !dbg !3200
  br i1 %tobool250, label %cond.true251, label %cond.false252, !dbg !3200

cond.true251:                                     ; preds = %cond.false247
  br label %cond.end339, !dbg !3200

cond.false252:                                    ; preds = %cond.false247
  %58 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub253 = sub i64 %58, 1, !dbg !3200
  %and254 = and i64 %sub253, 16384, !dbg !3200
  %tobool255 = icmp ne i64 %and254, 0, !dbg !3200
  br i1 %tobool255, label %cond.true256, label %cond.false257, !dbg !3200

cond.true256:                                     ; preds = %cond.false252
  br label %cond.end337, !dbg !3200

cond.false257:                                    ; preds = %cond.false252
  %59 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub258 = sub i64 %59, 1, !dbg !3200
  %and259 = and i64 %sub258, 8192, !dbg !3200
  %tobool260 = icmp ne i64 %and259, 0, !dbg !3200
  br i1 %tobool260, label %cond.true261, label %cond.false262, !dbg !3200

cond.true261:                                     ; preds = %cond.false257
  br label %cond.end335, !dbg !3200

cond.false262:                                    ; preds = %cond.false257
  %60 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub263 = sub i64 %60, 1, !dbg !3200
  %and264 = and i64 %sub263, 4096, !dbg !3200
  %tobool265 = icmp ne i64 %and264, 0, !dbg !3200
  br i1 %tobool265, label %cond.true266, label %cond.false267, !dbg !3200

cond.true266:                                     ; preds = %cond.false262
  br label %cond.end333, !dbg !3200

cond.false267:                                    ; preds = %cond.false262
  %61 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub268 = sub i64 %61, 1, !dbg !3200
  %and269 = and i64 %sub268, 2048, !dbg !3200
  %tobool270 = icmp ne i64 %and269, 0, !dbg !3200
  br i1 %tobool270, label %cond.true271, label %cond.false272, !dbg !3200

cond.true271:                                     ; preds = %cond.false267
  br label %cond.end331, !dbg !3200

cond.false272:                                    ; preds = %cond.false267
  %62 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub273 = sub i64 %62, 1, !dbg !3200
  %and274 = and i64 %sub273, 1024, !dbg !3200
  %tobool275 = icmp ne i64 %and274, 0, !dbg !3200
  br i1 %tobool275, label %cond.true276, label %cond.false277, !dbg !3200

cond.true276:                                     ; preds = %cond.false272
  br label %cond.end329, !dbg !3200

cond.false277:                                    ; preds = %cond.false272
  %63 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub278 = sub i64 %63, 1, !dbg !3200
  %and279 = and i64 %sub278, 512, !dbg !3200
  %tobool280 = icmp ne i64 %and279, 0, !dbg !3200
  br i1 %tobool280, label %cond.true281, label %cond.false282, !dbg !3200

cond.true281:                                     ; preds = %cond.false277
  br label %cond.end327, !dbg !3200

cond.false282:                                    ; preds = %cond.false277
  %64 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub283 = sub i64 %64, 1, !dbg !3200
  %and284 = and i64 %sub283, 256, !dbg !3200
  %tobool285 = icmp ne i64 %and284, 0, !dbg !3200
  br i1 %tobool285, label %cond.true286, label %cond.false287, !dbg !3200

cond.true286:                                     ; preds = %cond.false282
  br label %cond.end325, !dbg !3200

cond.false287:                                    ; preds = %cond.false282
  %65 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub288 = sub i64 %65, 1, !dbg !3200
  %and289 = and i64 %sub288, 128, !dbg !3200
  %tobool290 = icmp ne i64 %and289, 0, !dbg !3200
  br i1 %tobool290, label %cond.true291, label %cond.false292, !dbg !3200

cond.true291:                                     ; preds = %cond.false287
  br label %cond.end323, !dbg !3200

cond.false292:                                    ; preds = %cond.false287
  %66 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub293 = sub i64 %66, 1, !dbg !3200
  %and294 = and i64 %sub293, 64, !dbg !3200
  %tobool295 = icmp ne i64 %and294, 0, !dbg !3200
  br i1 %tobool295, label %cond.true296, label %cond.false297, !dbg !3200

cond.true296:                                     ; preds = %cond.false292
  br label %cond.end321, !dbg !3200

cond.false297:                                    ; preds = %cond.false292
  %67 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub298 = sub i64 %67, 1, !dbg !3200
  %and299 = and i64 %sub298, 32, !dbg !3200
  %tobool300 = icmp ne i64 %and299, 0, !dbg !3200
  br i1 %tobool300, label %cond.true301, label %cond.false302, !dbg !3200

cond.true301:                                     ; preds = %cond.false297
  br label %cond.end319, !dbg !3200

cond.false302:                                    ; preds = %cond.false297
  %68 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub303 = sub i64 %68, 1, !dbg !3200
  %and304 = and i64 %sub303, 16, !dbg !3200
  %tobool305 = icmp ne i64 %and304, 0, !dbg !3200
  br i1 %tobool305, label %cond.true306, label %cond.false307, !dbg !3200

cond.true306:                                     ; preds = %cond.false302
  br label %cond.end317, !dbg !3200

cond.false307:                                    ; preds = %cond.false302
  %69 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub308 = sub i64 %69, 1, !dbg !3200
  %and309 = and i64 %sub308, 8, !dbg !3200
  %tobool310 = icmp ne i64 %and309, 0, !dbg !3200
  br i1 %tobool310, label %cond.true311, label %cond.false312, !dbg !3200

cond.true311:                                     ; preds = %cond.false307
  br label %cond.end, !dbg !3200

cond.false312:                                    ; preds = %cond.false307
  %70 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub313 = sub i64 %70, 1, !dbg !3200
  %and314 = and i64 %sub313, 4, !dbg !3200
  %tobool315 = icmp ne i64 %and314, 0, !dbg !3200
  %71 = zext i1 %tobool315 to i64, !dbg !3200
  %cond = select i1 %tobool315, i32 2, i32 1, !dbg !3200
  br label %cond.end, !dbg !3200

cond.end:                                         ; preds = %cond.false312, %cond.true311
  %cond316 = phi i32 [ 3, %cond.true311 ], [ %cond, %cond.false312 ], !dbg !3200
  br label %cond.end317, !dbg !3200

cond.end317:                                      ; preds = %cond.end, %cond.true306
  %cond318 = phi i32 [ 4, %cond.true306 ], [ %cond316, %cond.end ], !dbg !3200
  br label %cond.end319, !dbg !3200

cond.end319:                                      ; preds = %cond.end317, %cond.true301
  %cond320 = phi i32 [ 5, %cond.true301 ], [ %cond318, %cond.end317 ], !dbg !3200
  br label %cond.end321, !dbg !3200

cond.end321:                                      ; preds = %cond.end319, %cond.true296
  %cond322 = phi i32 [ 6, %cond.true296 ], [ %cond320, %cond.end319 ], !dbg !3200
  br label %cond.end323, !dbg !3200

cond.end323:                                      ; preds = %cond.end321, %cond.true291
  %cond324 = phi i32 [ 7, %cond.true291 ], [ %cond322, %cond.end321 ], !dbg !3200
  br label %cond.end325, !dbg !3200

cond.end325:                                      ; preds = %cond.end323, %cond.true286
  %cond326 = phi i32 [ 8, %cond.true286 ], [ %cond324, %cond.end323 ], !dbg !3200
  br label %cond.end327, !dbg !3200

cond.end327:                                      ; preds = %cond.end325, %cond.true281
  %cond328 = phi i32 [ 9, %cond.true281 ], [ %cond326, %cond.end325 ], !dbg !3200
  br label %cond.end329, !dbg !3200

cond.end329:                                      ; preds = %cond.end327, %cond.true276
  %cond330 = phi i32 [ 10, %cond.true276 ], [ %cond328, %cond.end327 ], !dbg !3200
  br label %cond.end331, !dbg !3200

cond.end331:                                      ; preds = %cond.end329, %cond.true271
  %cond332 = phi i32 [ 11, %cond.true271 ], [ %cond330, %cond.end329 ], !dbg !3200
  br label %cond.end333, !dbg !3200

cond.end333:                                      ; preds = %cond.end331, %cond.true266
  %cond334 = phi i32 [ 12, %cond.true266 ], [ %cond332, %cond.end331 ], !dbg !3200
  br label %cond.end335, !dbg !3200

cond.end335:                                      ; preds = %cond.end333, %cond.true261
  %cond336 = phi i32 [ 13, %cond.true261 ], [ %cond334, %cond.end333 ], !dbg !3200
  br label %cond.end337, !dbg !3200

cond.end337:                                      ; preds = %cond.end335, %cond.true256
  %cond338 = phi i32 [ 14, %cond.true256 ], [ %cond336, %cond.end335 ], !dbg !3200
  br label %cond.end339, !dbg !3200

cond.end339:                                      ; preds = %cond.end337, %cond.true251
  %cond340 = phi i32 [ 15, %cond.true251 ], [ %cond338, %cond.end337 ], !dbg !3200
  br label %cond.end341, !dbg !3200

cond.end341:                                      ; preds = %cond.end339, %cond.true246
  %cond342 = phi i32 [ 16, %cond.true246 ], [ %cond340, %cond.end339 ], !dbg !3200
  br label %cond.end343, !dbg !3200

cond.end343:                                      ; preds = %cond.end341, %cond.true241
  %cond344 = phi i32 [ 17, %cond.true241 ], [ %cond342, %cond.end341 ], !dbg !3200
  br label %cond.end345, !dbg !3200

cond.end345:                                      ; preds = %cond.end343, %cond.true236
  %cond346 = phi i32 [ 18, %cond.true236 ], [ %cond344, %cond.end343 ], !dbg !3200
  br label %cond.end347, !dbg !3200

cond.end347:                                      ; preds = %cond.end345, %cond.true231
  %cond348 = phi i32 [ 19, %cond.true231 ], [ %cond346, %cond.end345 ], !dbg !3200
  br label %cond.end349, !dbg !3200

cond.end349:                                      ; preds = %cond.end347, %cond.true226
  %cond350 = phi i32 [ 20, %cond.true226 ], [ %cond348, %cond.end347 ], !dbg !3200
  br label %cond.end351, !dbg !3200

cond.end351:                                      ; preds = %cond.end349, %cond.true221
  %cond352 = phi i32 [ 21, %cond.true221 ], [ %cond350, %cond.end349 ], !dbg !3200
  br label %cond.end353, !dbg !3200

cond.end353:                                      ; preds = %cond.end351, %cond.true216
  %cond354 = phi i32 [ 22, %cond.true216 ], [ %cond352, %cond.end351 ], !dbg !3200
  br label %cond.end355, !dbg !3200

cond.end355:                                      ; preds = %cond.end353, %cond.true211
  %cond356 = phi i32 [ 23, %cond.true211 ], [ %cond354, %cond.end353 ], !dbg !3200
  br label %cond.end357, !dbg !3200

cond.end357:                                      ; preds = %cond.end355, %cond.true206
  %cond358 = phi i32 [ 24, %cond.true206 ], [ %cond356, %cond.end355 ], !dbg !3200
  br label %cond.end359, !dbg !3200

cond.end359:                                      ; preds = %cond.end357, %cond.true201
  %cond360 = phi i32 [ 25, %cond.true201 ], [ %cond358, %cond.end357 ], !dbg !3200
  br label %cond.end361, !dbg !3200

cond.end361:                                      ; preds = %cond.end359, %cond.true196
  %cond362 = phi i32 [ 26, %cond.true196 ], [ %cond360, %cond.end359 ], !dbg !3200
  br label %cond.end363, !dbg !3200

cond.end363:                                      ; preds = %cond.end361, %cond.true191
  %cond364 = phi i32 [ 27, %cond.true191 ], [ %cond362, %cond.end361 ], !dbg !3200
  br label %cond.end365, !dbg !3200

cond.end365:                                      ; preds = %cond.end363, %cond.true186
  %cond366 = phi i32 [ 28, %cond.true186 ], [ %cond364, %cond.end363 ], !dbg !3200
  br label %cond.end367, !dbg !3200

cond.end367:                                      ; preds = %cond.end365, %cond.true181
  %cond368 = phi i32 [ 29, %cond.true181 ], [ %cond366, %cond.end365 ], !dbg !3200
  br label %cond.end369, !dbg !3200

cond.end369:                                      ; preds = %cond.end367, %cond.true176
  %cond370 = phi i32 [ 30, %cond.true176 ], [ %cond368, %cond.end367 ], !dbg !3200
  br label %cond.end371, !dbg !3200

cond.end371:                                      ; preds = %cond.end369, %cond.true171
  %cond372 = phi i32 [ 31, %cond.true171 ], [ %cond370, %cond.end369 ], !dbg !3200
  br label %cond.end373, !dbg !3200

cond.end373:                                      ; preds = %cond.end371, %cond.true166
  %cond374 = phi i32 [ 32, %cond.true166 ], [ %cond372, %cond.end371 ], !dbg !3200
  br label %cond.end375, !dbg !3200

cond.end375:                                      ; preds = %cond.end373, %cond.true161
  %cond376 = phi i32 [ 33, %cond.true161 ], [ %cond374, %cond.end373 ], !dbg !3200
  br label %cond.end377, !dbg !3200

cond.end377:                                      ; preds = %cond.end375, %cond.true156
  %cond378 = phi i32 [ 34, %cond.true156 ], [ %cond376, %cond.end375 ], !dbg !3200
  br label %cond.end379, !dbg !3200

cond.end379:                                      ; preds = %cond.end377, %cond.true151
  %cond380 = phi i32 [ 35, %cond.true151 ], [ %cond378, %cond.end377 ], !dbg !3200
  br label %cond.end381, !dbg !3200

cond.end381:                                      ; preds = %cond.end379, %cond.true146
  %cond382 = phi i32 [ 36, %cond.true146 ], [ %cond380, %cond.end379 ], !dbg !3200
  br label %cond.end383, !dbg !3200

cond.end383:                                      ; preds = %cond.end381, %cond.true141
  %cond384 = phi i32 [ 37, %cond.true141 ], [ %cond382, %cond.end381 ], !dbg !3200
  br label %cond.end385, !dbg !3200

cond.end385:                                      ; preds = %cond.end383, %cond.true136
  %cond386 = phi i32 [ 38, %cond.true136 ], [ %cond384, %cond.end383 ], !dbg !3200
  br label %cond.end387, !dbg !3200

cond.end387:                                      ; preds = %cond.end385, %cond.true131
  %cond388 = phi i32 [ 39, %cond.true131 ], [ %cond386, %cond.end385 ], !dbg !3200
  br label %cond.end389, !dbg !3200

cond.end389:                                      ; preds = %cond.end387, %cond.true126
  %cond390 = phi i32 [ 40, %cond.true126 ], [ %cond388, %cond.end387 ], !dbg !3200
  br label %cond.end391, !dbg !3200

cond.end391:                                      ; preds = %cond.end389, %cond.true121
  %cond392 = phi i32 [ 41, %cond.true121 ], [ %cond390, %cond.end389 ], !dbg !3200
  br label %cond.end393, !dbg !3200

cond.end393:                                      ; preds = %cond.end391, %cond.true116
  %cond394 = phi i32 [ 42, %cond.true116 ], [ %cond392, %cond.end391 ], !dbg !3200
  br label %cond.end395, !dbg !3200

cond.end395:                                      ; preds = %cond.end393, %cond.true111
  %cond396 = phi i32 [ 43, %cond.true111 ], [ %cond394, %cond.end393 ], !dbg !3200
  br label %cond.end397, !dbg !3200

cond.end397:                                      ; preds = %cond.end395, %cond.true106
  %cond398 = phi i32 [ 44, %cond.true106 ], [ %cond396, %cond.end395 ], !dbg !3200
  br label %cond.end399, !dbg !3200

cond.end399:                                      ; preds = %cond.end397, %cond.true101
  %cond400 = phi i32 [ 45, %cond.true101 ], [ %cond398, %cond.end397 ], !dbg !3200
  br label %cond.end401, !dbg !3200

cond.end401:                                      ; preds = %cond.end399, %cond.true96
  %cond402 = phi i32 [ 46, %cond.true96 ], [ %cond400, %cond.end399 ], !dbg !3200
  br label %cond.end403, !dbg !3200

cond.end403:                                      ; preds = %cond.end401, %cond.true91
  %cond404 = phi i32 [ 47, %cond.true91 ], [ %cond402, %cond.end401 ], !dbg !3200
  br label %cond.end405, !dbg !3200

cond.end405:                                      ; preds = %cond.end403, %cond.true86
  %cond406 = phi i32 [ 48, %cond.true86 ], [ %cond404, %cond.end403 ], !dbg !3200
  br label %cond.end407, !dbg !3200

cond.end407:                                      ; preds = %cond.end405, %cond.true81
  %cond408 = phi i32 [ 49, %cond.true81 ], [ %cond406, %cond.end405 ], !dbg !3200
  br label %cond.end409, !dbg !3200

cond.end409:                                      ; preds = %cond.end407, %cond.true76
  %cond410 = phi i32 [ 50, %cond.true76 ], [ %cond408, %cond.end407 ], !dbg !3200
  br label %cond.end411, !dbg !3200

cond.end411:                                      ; preds = %cond.end409, %cond.true71
  %cond412 = phi i32 [ 51, %cond.true71 ], [ %cond410, %cond.end409 ], !dbg !3200
  br label %cond.end413, !dbg !3200

cond.end413:                                      ; preds = %cond.end411, %cond.true66
  %cond414 = phi i32 [ 52, %cond.true66 ], [ %cond412, %cond.end411 ], !dbg !3200
  br label %cond.end415, !dbg !3200

cond.end415:                                      ; preds = %cond.end413, %cond.true61
  %cond416 = phi i32 [ 53, %cond.true61 ], [ %cond414, %cond.end413 ], !dbg !3200
  br label %cond.end417, !dbg !3200

cond.end417:                                      ; preds = %cond.end415, %cond.true56
  %cond418 = phi i32 [ 54, %cond.true56 ], [ %cond416, %cond.end415 ], !dbg !3200
  br label %cond.end419, !dbg !3200

cond.end419:                                      ; preds = %cond.end417, %cond.true51
  %cond420 = phi i32 [ 55, %cond.true51 ], [ %cond418, %cond.end417 ], !dbg !3200
  br label %cond.end421, !dbg !3200

cond.end421:                                      ; preds = %cond.end419, %cond.true46
  %cond422 = phi i32 [ 56, %cond.true46 ], [ %cond420, %cond.end419 ], !dbg !3200
  br label %cond.end423, !dbg !3200

cond.end423:                                      ; preds = %cond.end421, %cond.true41
  %cond424 = phi i32 [ 57, %cond.true41 ], [ %cond422, %cond.end421 ], !dbg !3200
  br label %cond.end425, !dbg !3200

cond.end425:                                      ; preds = %cond.end423, %cond.true36
  %cond426 = phi i32 [ 58, %cond.true36 ], [ %cond424, %cond.end423 ], !dbg !3200
  br label %cond.end427, !dbg !3200

cond.end427:                                      ; preds = %cond.end425, %cond.true31
  %cond428 = phi i32 [ 59, %cond.true31 ], [ %cond426, %cond.end425 ], !dbg !3200
  br label %cond.end429, !dbg !3200

cond.end429:                                      ; preds = %cond.end427, %cond.true26
  %cond430 = phi i32 [ 60, %cond.true26 ], [ %cond428, %cond.end427 ], !dbg !3200
  br label %cond.end431, !dbg !3200

cond.end431:                                      ; preds = %cond.end429, %cond.true21
  %cond432 = phi i32 [ 61, %cond.true21 ], [ %cond430, %cond.end429 ], !dbg !3200
  br label %cond.end433, !dbg !3200

cond.end433:                                      ; preds = %cond.end431, %cond.true16
  %cond434 = phi i32 [ 62, %cond.true16 ], [ %cond432, %cond.end431 ], !dbg !3200
  br label %cond.end435, !dbg !3200

cond.end435:                                      ; preds = %cond.end433, %cond.true11
  %cond436 = phi i32 [ 63, %cond.true11 ], [ %cond434, %cond.end433 ], !dbg !3200
  br label %cond.end437, !dbg !3200

cond.end437:                                      ; preds = %cond.end435, %cond.true8
  %cond438 = phi i32 [ 0, %cond.true8 ], [ %cond436, %cond.end435 ], !dbg !3200
  br label %cond.end440, !dbg !3200

cond.false439:                                    ; preds = %cond.true
  br label %cond.end440, !dbg !3200

cond.end440:                                      ; preds = %cond.false439, %cond.end437
  %cond441 = phi i32 [ %cond438, %cond.end437 ], [ -1, %cond.false439 ], !dbg !3200
  br label %cond.end444, !dbg !3200

cond.false442:                                    ; preds = %if.end3
  %72 = load i64, i64* %size.addr, align 8, !dbg !3200
  %sub443 = sub i64 %72, 1, !dbg !3200
  %call = call i32 @__ilog2_u64(i64 %sub443) #9, !dbg !3200
  br label %cond.end444, !dbg !3200

cond.end444:                                      ; preds = %cond.false442, %cond.end440
  %cond445 = phi i32 [ %cond441, %cond.end440 ], [ %call, %cond.false442 ], !dbg !3200
  %sub446 = sub i32 %cond445, 12, !dbg !3201
  %add = add i32 %sub446, 1, !dbg !3202
  store i32 %add, i32* %retval, align 4, !dbg !3203
  br label %return, !dbg !3203

if.end447:                                        ; preds = %entry
  %73 = load i64, i64* %size.addr, align 8, !dbg !3204
  %dec = add i64 %73, -1, !dbg !3204
  store i64 %dec, i64* %size.addr, align 8, !dbg !3204
  %74 = load i64, i64* %size.addr, align 8, !dbg !3205
  %shr = lshr i64 %74, 12, !dbg !3205
  store i64 %shr, i64* %size.addr, align 8, !dbg !3205
  %75 = load i64, i64* %size.addr, align 8, !dbg !3206
  store i64 %75, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3183
  %76 = load i32, i32* %bitpos.i, align 4, !dbg !3207
  %77 = load i64, i64* %x.addr.i, align 8, !dbg !3208
  %78 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %77, i32 %76) #11, !dbg !3207, !srcloc !3209
  store i32 %78, i32* %bitpos.i, align 4, !dbg !3207
  %79 = load i32, i32* %bitpos.i, align 4, !dbg !3210
  %add.i = add i32 %79, 1, !dbg !3211
  store i32 %add.i, i32* %retval, align 4, !dbg !3212
  br label %return, !dbg !3212

return:                                           ; preds = %if.end447, %cond.end444, %if.then2, %if.then1
  %80 = load i32, i32* %retval, align 4, !dbg !3213
  ret i32 %80, !dbg !3213
}

; Function Attrs: noinline noredzone nounwind optnone readnone sspstrong
define internal i32 @__ilog2_u64(i64 %n) #6 !dbg !3214 {
entry:
  %x.addr.i = alloca i64, align 8
  call void @llvm.dbg.declare(metadata i64* %x.addr.i, metadata !3175, metadata !DIExpression()), !dbg !3218
  %bitpos.i = alloca i32, align 4
  call void @llvm.dbg.declare(metadata i32* %bitpos.i, metadata !3182, metadata !DIExpression()), !dbg !3220
  %n.addr = alloca i64, align 8
  store i64 %n, i64* %n.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %n.addr, metadata !3221, metadata !DIExpression()), !dbg !3222
  %0 = load i64, i64* %n.addr, align 8, !dbg !3223
  store i64 %0, i64* %x.addr.i, align 8
  store i32 -1, i32* %bitpos.i, align 4, !dbg !3220
  %1 = load i32, i32* %bitpos.i, align 4, !dbg !3224
  %2 = load i64, i64* %x.addr.i, align 8, !dbg !3225
  %3 = call i32 asm "bsrq $1,${0:q}", "=r,rm,0,~{dirflag},~{fpsr},~{flags}"(i64 %2, i32 %1) #11, !dbg !3224, !srcloc !3209
  store i32 %3, i32* %bitpos.i, align 4, !dbg !3224
  %4 = load i32, i32* %bitpos.i, align 4, !dbg !3226
  %add.i = add i32 %4, 1, !dbg !3227
  %sub = sub i32 %add.i, 1, !dbg !3228
  ret i32 %sub, !dbg !3229
}

; Function Attrs: noredzone
declare dso_local noalias i8* @kmalloc_order(i64, i32, i32) #2

; Function Attrs: noredzone
declare dso_local noalias i8* @kmem_cache_alloc(%struct.kmem_cache*, i32) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kasan_kmalloc(%struct.kmem_cache* %s, i8* %object, i64 %size, i32 %flags) #0 !dbg !3230 {
entry:
  %s.addr = alloca %struct.kmem_cache*, align 8
  %object.addr = alloca i8*, align 8
  %size.addr = alloca i64, align 8
  %flags.addr = alloca i32, align 4
  store %struct.kmem_cache* %s, %struct.kmem_cache** %s.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kmem_cache** %s.addr, metadata !3234, metadata !DIExpression()), !dbg !3235
  store i8* %object, i8** %object.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %object.addr, metadata !3236, metadata !DIExpression()), !dbg !3237
  store i64 %size, i64* %size.addr, align 8
  call void @llvm.dbg.declare(metadata i64* %size.addr, metadata !3238, metadata !DIExpression()), !dbg !3239
  store i32 %flags, i32* %flags.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %flags.addr, metadata !3240, metadata !DIExpression()), !dbg !3241
  %0 = load i8*, i8** %object.addr, align 8, !dbg !3242
  ret i8* %0, !dbg !3243
}

; Function Attrs: noredzone
declare dso_local i32 @dev_set_name(%struct.device*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_name(%struct.device* %dev) #0 !dbg !3244 {
entry:
  %retval = alloca i8*, align 8
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3247, metadata !DIExpression()), !dbg !3248
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3249
  %init_name = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 3, !dbg !3251
  %1 = load i8*, i8** %init_name, align 8, !dbg !3251
  %tobool = icmp ne i8* %1, null, !dbg !3249
  br i1 %tobool, label %if.then, label %if.end, !dbg !3252

if.then:                                          ; preds = %entry
  %2 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3253
  %init_name1 = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 3, !dbg !3254
  %3 = load i8*, i8** %init_name1, align 8, !dbg !3254
  store i8* %3, i8** %retval, align 8, !dbg !3255
  br label %return, !dbg !3255

if.end:                                           ; preds = %entry
  %4 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3256
  %kobj = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 0, !dbg !3257
  %call = call i8* @kobject_name(%struct.kobject* %kobj) #7, !dbg !3258
  store i8* %call, i8** %retval, align 8, !dbg !3259
  br label %return, !dbg !3259

return:                                           ; preds = %if.end, %if.then
  %5 = load i8*, i8** %retval, align 8, !dbg !3260
  ret i8* %5, !dbg !3260
}

; Function Attrs: noredzone
declare dso_local void @set_primary_fwnode(%struct.device*, %struct.fwnode_handle*) #2

; Function Attrs: noredzone
declare dso_local zeroext i1 @is_acpi_device_node(%struct.fwnode_handle*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal %struct.fwnode_handle* @acpi_fwnode_handle(%struct.acpi_device* %adev) #0 !dbg !3261 {
entry:
  %adev.addr = alloca %struct.acpi_device*, align 8
  store %struct.acpi_device* %adev, %struct.acpi_device** %adev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.acpi_device** %adev.addr, metadata !3264, metadata !DIExpression()), !dbg !3265
  %0 = load %struct.acpi_device*, %struct.acpi_device** %adev.addr, align 8, !dbg !3266
  %fwnode = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %0, i32 0, i32 2, !dbg !3267
  ret %struct.fwnode_handle* %fwnode, !dbg !3268
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_of_register(%struct.ulpi* %ulpi) #0 !dbg !3269 {
entry:
  %retval = alloca i32, align 4
  %ulpi.addr = alloca %struct.ulpi*, align 8
  %np = alloca %struct.device_node*, align 8
  %child = alloca %struct.device_node*, align 8
  %parent = alloca %struct.device*, align 8
  store %struct.ulpi* %ulpi, %struct.ulpi** %ulpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi.addr, metadata !3270, metadata !DIExpression()), !dbg !3271
  call void @llvm.dbg.declare(metadata %struct.device_node** %np, metadata !3272, metadata !DIExpression()), !dbg !3273
  store %struct.device_node* null, %struct.device_node** %np, align 8, !dbg !3273
  call void @llvm.dbg.declare(metadata %struct.device_node** %child, metadata !3274, metadata !DIExpression()), !dbg !3275
  call void @llvm.dbg.declare(metadata %struct.device** %parent, metadata !3276, metadata !DIExpression()), !dbg !3277
  %0 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3278
  %dev = getelementptr inbounds %struct.ulpi, %struct.ulpi* %0, i32 0, i32 2, !dbg !3279
  %parent1 = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !3280
  %1 = load %struct.device*, %struct.device** %parent1, align 8, !dbg !3280
  store %struct.device* %1, %struct.device** %parent, align 8, !dbg !3281
  %2 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3282
  %of_node = getelementptr inbounds %struct.device, %struct.device* %2, i32 0, i32 23, !dbg !3284
  %3 = load %struct.device_node*, %struct.device_node** %of_node, align 8, !dbg !3284
  %tobool = icmp ne %struct.device_node* %3, null, !dbg !3282
  br i1 %tobool, label %if.then, label %if.else, !dbg !3285

if.then:                                          ; preds = %entry
  %4 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3286
  %of_node2 = getelementptr inbounds %struct.device, %struct.device* %4, i32 0, i32 23, !dbg !3287
  %5 = load %struct.device_node*, %struct.device_node** %of_node2, align 8, !dbg !3287
  %call = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %5, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3288
  store %struct.device_node* %call, %struct.device_node** %np, align 8, !dbg !3289
  br label %if.end12, !dbg !3290

if.else:                                          ; preds = %entry
  %6 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3291
  %parent3 = getelementptr inbounds %struct.device, %struct.device* %6, i32 0, i32 1, !dbg !3293
  %7 = load %struct.device*, %struct.device** %parent3, align 8, !dbg !3293
  %tobool4 = icmp ne %struct.device* %7, null, !dbg !3291
  br i1 %tobool4, label %land.lhs.true, label %if.end, !dbg !3294

land.lhs.true:                                    ; preds = %if.else
  %8 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3295
  %parent5 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 1, !dbg !3296
  %9 = load %struct.device*, %struct.device** %parent5, align 8, !dbg !3296
  %of_node6 = getelementptr inbounds %struct.device, %struct.device* %9, i32 0, i32 23, !dbg !3297
  %10 = load %struct.device_node*, %struct.device_node** %of_node6, align 8, !dbg !3297
  %tobool7 = icmp ne %struct.device_node* %10, null, !dbg !3295
  br i1 %tobool7, label %if.then8, label %if.end, !dbg !3298

if.then8:                                         ; preds = %land.lhs.true
  %11 = load %struct.device*, %struct.device** %parent, align 8, !dbg !3299
  %parent9 = getelementptr inbounds %struct.device, %struct.device* %11, i32 0, i32 1, !dbg !3300
  %12 = load %struct.device*, %struct.device** %parent9, align 8, !dbg !3300
  %of_node10 = getelementptr inbounds %struct.device, %struct.device* %12, i32 0, i32 23, !dbg !3301
  %13 = load %struct.device_node*, %struct.device_node** %of_node10, align 8, !dbg !3301
  %call11 = call %struct.device_node* @of_get_child_by_name(%struct.device_node* %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0)) #7, !dbg !3302
  store %struct.device_node* %call11, %struct.device_node** %np, align 8, !dbg !3303
  br label %if.end, !dbg !3304

if.end:                                           ; preds = %if.then8, %land.lhs.true, %if.else
  br label %if.end12

if.end12:                                         ; preds = %if.end, %if.then
  %14 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3305
  %tobool13 = icmp ne %struct.device_node* %14, null, !dbg !3305
  br i1 %tobool13, label %if.end15, label %if.then14, !dbg !3307

if.then14:                                        ; preds = %if.end12
  store i32 0, i32* %retval, align 4, !dbg !3308
  br label %return, !dbg !3308

if.end15:                                         ; preds = %if.end12
  %15 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3309
  %call16 = call %struct.device_node* @of_get_next_available_child(%struct.device_node* %15, %struct.device_node* null) #7, !dbg !3310
  store %struct.device_node* %call16, %struct.device_node** %child, align 8, !dbg !3311
  %16 = load %struct.device_node*, %struct.device_node** %np, align 8, !dbg !3312
  call void @of_node_put(%struct.device_node* %16) #7, !dbg !3313
  %17 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3314
  %tobool17 = icmp ne %struct.device_node* %17, null, !dbg !3314
  br i1 %tobool17, label %if.end19, label %if.then18, !dbg !3316

if.then18:                                        ; preds = %if.end15
  store i32 -22, i32* %retval, align 4, !dbg !3317
  br label %return, !dbg !3317

if.end19:                                         ; preds = %if.end15
  %18 = load %struct.device_node*, %struct.device_node** %child, align 8, !dbg !3318
  %19 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3319
  %dev20 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %19, i32 0, i32 2, !dbg !3320
  %of_node21 = getelementptr inbounds %struct.device, %struct.device* %dev20, i32 0, i32 23, !dbg !3321
  store %struct.device_node* %18, %struct.device_node** %of_node21, align 8, !dbg !3322
  store i32 0, i32* %retval, align 4, !dbg !3323
  br label %return, !dbg !3323

return:                                           ; preds = %if.end19, %if.then18, %if.then14
  %20 = load i32, i32* %retval, align 4, !dbg !3324
  ret i32 %20, !dbg !3324
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @ulpi_read_id(%struct.ulpi* %ulpi) #0 !dbg !3325 {
entry:
  %retval = alloca i32, align 4
  %ulpi.addr = alloca %struct.ulpi*, align 8
  %ret = alloca i32, align 4
  store %struct.ulpi* %ulpi, %struct.ulpi** %ulpi.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3328, metadata !DIExpression()), !dbg !3329
  %0 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3330
  %call = call i32 @ulpi_write(%struct.ulpi* %0, i8 zeroext 22, i8 zeroext -86) #7, !dbg !3331
  store i32 %call, i32* %ret, align 4, !dbg !3332
  %1 = load i32, i32* %ret, align 4, !dbg !3333
  %cmp = icmp slt i32 %1, 0, !dbg !3335
  br i1 %cmp, label %if.then, label %if.end, !dbg !3336

if.then:                                          ; preds = %entry
  br label %err, !dbg !3337

if.end:                                           ; preds = %entry
  %2 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3338
  %call1 = call i32 @ulpi_read(%struct.ulpi* %2, i8 zeroext 22) #7, !dbg !3339
  store i32 %call1, i32* %ret, align 4, !dbg !3340
  %3 = load i32, i32* %ret, align 4, !dbg !3341
  %cmp2 = icmp slt i32 %3, 0, !dbg !3343
  br i1 %cmp2, label %if.then3, label %if.end4, !dbg !3344

if.then3:                                         ; preds = %if.end
  %4 = load i32, i32* %ret, align 4, !dbg !3345
  store i32 %4, i32* %retval, align 4, !dbg !3346
  br label %return, !dbg !3346

if.end4:                                          ; preds = %if.end
  %5 = load i32, i32* %ret, align 4, !dbg !3347
  %cmp5 = icmp ne i32 %5, 170, !dbg !3349
  br i1 %cmp5, label %if.then6, label %if.end7, !dbg !3350

if.then6:                                         ; preds = %if.end4
  br label %err, !dbg !3351

if.end7:                                          ; preds = %if.end4
  %6 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3352
  %call8 = call i32 @ulpi_read(%struct.ulpi* %6, i8 zeroext 0) #7, !dbg !3353
  %conv = trunc i32 %call8 to i16, !dbg !3353
  %7 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3354
  %id = getelementptr inbounds %struct.ulpi, %struct.ulpi* %7, i32 0, i32 0, !dbg !3355
  %vendor = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id, i32 0, i32 0, !dbg !3356
  store i16 %conv, i16* %vendor, align 8, !dbg !3357
  %8 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3358
  %call9 = call i32 @ulpi_read(%struct.ulpi* %8, i8 zeroext 1) #7, !dbg !3359
  %shl = shl i32 %call9, 8, !dbg !3360
  %9 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3361
  %id10 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %9, i32 0, i32 0, !dbg !3362
  %vendor11 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id10, i32 0, i32 0, !dbg !3363
  %10 = load i16, i16* %vendor11, align 8, !dbg !3364
  %conv12 = zext i16 %10 to i32, !dbg !3364
  %or = or i32 %conv12, %shl, !dbg !3364
  %conv13 = trunc i32 %or to i16, !dbg !3364
  store i16 %conv13, i16* %vendor11, align 8, !dbg !3364
  %11 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3365
  %call14 = call i32 @ulpi_read(%struct.ulpi* %11, i8 zeroext 2) #7, !dbg !3366
  %conv15 = trunc i32 %call14 to i16, !dbg !3366
  %12 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3367
  %id16 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %12, i32 0, i32 0, !dbg !3368
  %product = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id16, i32 0, i32 1, !dbg !3369
  store i16 %conv15, i16* %product, align 2, !dbg !3370
  %13 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3371
  %call17 = call i32 @ulpi_read(%struct.ulpi* %13, i8 zeroext 3) #7, !dbg !3372
  %shl18 = shl i32 %call17, 8, !dbg !3373
  %14 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3374
  %id19 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %14, i32 0, i32 0, !dbg !3375
  %product20 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id19, i32 0, i32 1, !dbg !3376
  %15 = load i16, i16* %product20, align 2, !dbg !3377
  %conv21 = zext i16 %15 to i32, !dbg !3377
  %or22 = or i32 %conv21, %shl18, !dbg !3377
  %conv23 = trunc i32 %or22 to i16, !dbg !3377
  store i16 %conv23, i16* %product20, align 2, !dbg !3377
  %16 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3378
  %id24 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %16, i32 0, i32 0, !dbg !3380
  %vendor25 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id24, i32 0, i32 0, !dbg !3381
  %17 = load i16, i16* %vendor25, align 8, !dbg !3381
  %conv26 = zext i16 %17 to i32, !dbg !3378
  %cmp27 = icmp eq i32 %conv26, 0, !dbg !3382
  br i1 %cmp27, label %if.then29, label %if.end30, !dbg !3383

if.then29:                                        ; preds = %if.end7
  br label %err, !dbg !3384

if.end30:                                         ; preds = %if.end7
  %18 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3385
  %id31 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %18, i32 0, i32 0, !dbg !3386
  %vendor32 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id31, i32 0, i32 0, !dbg !3387
  %19 = load i16, i16* %vendor32, align 8, !dbg !3387
  %conv33 = zext i16 %19 to i32, !dbg !3385
  %20 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3388
  %id34 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %20, i32 0, i32 0, !dbg !3389
  %product35 = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id34, i32 0, i32 1, !dbg !3390
  %21 = load i16, i16* %product35, align 2, !dbg !3390
  %conv36 = zext i16 %21 to i32, !dbg !3388
  %call37 = call i32 (i8*, ...) @request_module(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.7, i64 0, i64 0), i32 %conv33, i32 %conv36) #7, !dbg !3391
  store i32 0, i32* %retval, align 4, !dbg !3392
  br label %return, !dbg !3392

err:                                              ; preds = %if.then29, %if.then6, %if.then
  call void @llvm.dbg.label(metadata !3393), !dbg !3394
  %22 = load %struct.ulpi*, %struct.ulpi** %ulpi.addr, align 8, !dbg !3395
  %dev = getelementptr inbounds %struct.ulpi, %struct.ulpi* %22, i32 0, i32 2, !dbg !3396
  %call38 = call i32 @of_device_request_module(%struct.device* %dev) #7, !dbg !3397
  store i32 0, i32* %retval, align 4, !dbg !3398
  br label %return, !dbg !3398

return:                                           ; preds = %err, %if.end30, %if.then3
  %23 = load i32, i32* %retval, align 4, !dbg !3399
  ret i32 %23, !dbg !3399
}

; Function Attrs: noredzone
declare dso_local i32 @device_register(%struct.device*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @ulpi_dev_release(%struct.device* %dev) #0 !dbg !3400 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ulpi*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3401, metadata !DIExpression()), !dbg !3402
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3403, metadata !DIExpression()), !dbg !3405
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3405
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3405
  store i8* %1, i8** %__mptr, align 8, !dbg !3405
  br label %do.body, !dbg !3405

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3406

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3405
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3405
  %3 = bitcast i8* %add.ptr to %struct.ulpi*, !dbg !3405
  store %struct.ulpi* %3, %struct.ulpi** %tmp, align 8, !dbg !3406
  %4 = load %struct.ulpi*, %struct.ulpi** %tmp, align 8, !dbg !3405
  %5 = bitcast %struct.ulpi* %4 to i8*, !dbg !3408
  call void @kfree(i8* %5) #7, !dbg !3409
  ret void, !dbg !3410
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i64 @modalias_show(%struct.device* %dev, %struct.device_attribute* %attr, i8* %buf) #0 !dbg !3411 {
entry:
  %retval = alloca i64, align 8
  %dev.addr = alloca %struct.device*, align 8
  %attr.addr = alloca %struct.device_attribute*, align 8
  %buf.addr = alloca i8*, align 8
  %len = alloca i32, align 4
  %ulpi = alloca %struct.ulpi*, align 8
  %__mptr = alloca i8*, align 8
  %tmp = alloca %struct.ulpi*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !3412, metadata !DIExpression()), !dbg !3413
  store %struct.device_attribute* %attr, %struct.device_attribute** %attr.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device_attribute** %attr.addr, metadata !3414, metadata !DIExpression()), !dbg !3415
  store i8* %buf, i8** %buf.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %buf.addr, metadata !3416, metadata !DIExpression()), !dbg !3417
  call void @llvm.dbg.declare(metadata i32* %len, metadata !3418, metadata !DIExpression()), !dbg !3419
  call void @llvm.dbg.declare(metadata %struct.ulpi** %ulpi, metadata !3420, metadata !DIExpression()), !dbg !3421
  call void @llvm.dbg.declare(metadata i8** %__mptr, metadata !3422, metadata !DIExpression()), !dbg !3424
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3424
  %1 = bitcast %struct.device* %0 to i8*, !dbg !3424
  store i8* %1, i8** %__mptr, align 8, !dbg !3424
  br label %do.body, !dbg !3424

do.body:                                          ; preds = %entry
  br label %do.end, !dbg !3425

do.end:                                           ; preds = %do.body
  %2 = load i8*, i8** %__mptr, align 8, !dbg !3424
  %add.ptr = getelementptr i8, i8* %2, i64 -24, !dbg !3424
  %3 = bitcast i8* %add.ptr to %struct.ulpi*, !dbg !3424
  store %struct.ulpi* %3, %struct.ulpi** %tmp, align 8, !dbg !3425
  %4 = load %struct.ulpi*, %struct.ulpi** %tmp, align 8, !dbg !3424
  store %struct.ulpi* %4, %struct.ulpi** %ulpi, align 8, !dbg !3421
  %5 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !3427
  %6 = load i8*, i8** %buf.addr, align 8, !dbg !3428
  %call = call i64 @of_device_modalias(%struct.device* %5, i8* %6, i64 4096) #7, !dbg !3429
  %conv = trunc i64 %call to i32, !dbg !3429
  store i32 %conv, i32* %len, align 4, !dbg !3430
  %7 = load i32, i32* %len, align 4, !dbg !3431
  %cmp = icmp ne i32 %7, -19, !dbg !3433
  br i1 %cmp, label %if.then, label %if.end, !dbg !3434

if.then:                                          ; preds = %do.end
  %8 = load i32, i32* %len, align 4, !dbg !3435
  %conv2 = sext i32 %8 to i64, !dbg !3435
  store i64 %conv2, i64* %retval, align 8, !dbg !3436
  br label %return, !dbg !3436

if.end:                                           ; preds = %do.end
  %9 = load i8*, i8** %buf.addr, align 8, !dbg !3437
  %10 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3438
  %id = getelementptr inbounds %struct.ulpi, %struct.ulpi* %10, i32 0, i32 0, !dbg !3439
  %vendor = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id, i32 0, i32 0, !dbg !3440
  %11 = load i16, i16* %vendor, align 8, !dbg !3440
  %conv3 = zext i16 %11 to i32, !dbg !3438
  %12 = load %struct.ulpi*, %struct.ulpi** %ulpi, align 8, !dbg !3441
  %id4 = getelementptr inbounds %struct.ulpi, %struct.ulpi* %12, i32 0, i32 0, !dbg !3442
  %product = getelementptr inbounds %struct.ulpi_device_id, %struct.ulpi_device_id* %id4, i32 0, i32 1, !dbg !3443
  %13 = load i16, i16* %product, align 2, !dbg !3443
  %conv5 = zext i16 %13 to i32, !dbg !3441
  %call6 = call i32 (i8*, i8*, ...) @sprintf(i8* %9, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.6, i64 0, i64 0), i32 %conv3, i32 %conv5) #7, !dbg !3444
  %conv7 = sext i32 %call6 to i64, !dbg !3444
  store i64 %conv7, i64* %retval, align 8, !dbg !3445
  br label %return, !dbg !3445

return:                                           ; preds = %if.end, %if.then
  %14 = load i64, i64* %retval, align 8, !dbg !3446
  ret i64 %14, !dbg !3446
}

; Function Attrs: noredzone
declare dso_local i64 @of_device_modalias(%struct.device*, i8*, i64) #2

; Function Attrs: noredzone
declare dso_local i32 @sprintf(i8*, i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @kobject_name(%struct.kobject* %kobj) #0 !dbg !3447 {
entry:
  %kobj.addr = alloca %struct.kobject*, align 8
  store %struct.kobject* %kobj, %struct.kobject** %kobj.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.kobject** %kobj.addr, metadata !3452, metadata !DIExpression()), !dbg !3453
  %0 = load %struct.kobject*, %struct.kobject** %kobj.addr, align 8, !dbg !3454
  %name = getelementptr inbounds %struct.kobject, %struct.kobject* %0, i32 0, i32 0, !dbg !3455
  %1 = load i8*, i8** %name, align 8, !dbg !3455
  ret i8* %1, !dbg !3456
}

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_child_by_name(%struct.device_node*, i8*) #2

; Function Attrs: noredzone
declare dso_local %struct.device_node* @of_get_next_available_child(%struct.device_node*, %struct.device_node*) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @request_module(i8* %name, ...) #0 !dbg !3457 {
entry:
  %name.addr = alloca i8*, align 8
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !3461, metadata !DIExpression()), !dbg !3462
  ret i32 -38, !dbg !3463
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.label(metadata) #1

; Function Attrs: noredzone
declare dso_local i32 @of_device_request_module(%struct.device*) #2

; Function Attrs: noredzone
declare dso_local i32 @bus_register(%struct.bus_type*) #2

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { cold noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { nounwind readnone willreturn }
attributes #5 = { nounwind willreturn }
attributes #6 = { noinline noredzone nounwind optnone readnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #7 = { noredzone }
attributes #8 = { nounwind }
attributes #9 = { noredzone nounwind readnone }
attributes #10 = { noredzone nounwind }
attributes #11 = { nounwind readonly }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2515, !2516, !2517, !2518}
!llvm.ident = !{!2519}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "ulpi_bus", scope: !2, file: !3, line: 91, type: !1679, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !76, globals: !2466, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/usb/common/ulpi.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64, !69}
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
!69 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "kmalloc_cache_type", file: !70, line: 305, baseType: !7, size: 32, elements: !71)
!70 = !DIFile(filename: "./include/linux/slab.h", directory: "/home/lizy2001/genbc/linux")
!71 = !{!72, !73, !74, !75}
!72 = !DIEnumerator(name: "KMALLOC_NORMAL", value: 0, isUnsigned: true)
!73 = !DIEnumerator(name: "KMALLOC_RECLAIM", value: 1, isUnsigned: true)
!74 = !DIEnumerator(name: "KMALLOC_DMA", value: 2, isUnsigned: true)
!75 = !DIEnumerator(name: "NR_KMALLOC_TYPES", value: 3, isUnsigned: true)
!76 = !{!77, !79, !80, !103, !2184}
!77 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !78, line: 148, baseType: !7)
!78 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!79 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!80 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !81, size: 64)
!81 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi_driver", file: !82, line: 42, size: 1344, elements: !83)
!82 = !DIFile(filename: "./include/linux/ulpi/driver.h", directory: "/home/lizy2001/genbc/linux")
!83 = !{!84, !98, !2179, !2183}
!84 = !DIDerivedType(tag: DW_TAG_member, name: "id_table", scope: !81, file: !82, line: 43, baseType: !85, size: 64)
!85 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !86, size: 64)
!86 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !87)
!87 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi_device_id", file: !88, line: 743, size: 128, elements: !89)
!88 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!89 = !{!90, !94, !95}
!90 = !DIDerivedType(tag: DW_TAG_member, name: "vendor", scope: !87, file: !88, line: 744, baseType: !91, size: 16)
!91 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !92, line: 24, baseType: !93)
!92 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!93 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!94 = !DIDerivedType(tag: DW_TAG_member, name: "product", scope: !87, file: !88, line: 745, baseType: !91, size: 16, offset: 16)
!95 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !87, file: !88, line: 746, baseType: !96, size: 64, offset: 64)
!96 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !88, line: 14, baseType: !97)
!97 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!98 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !81, file: !82, line: 44, baseType: !99, size: 64, offset: 64)
!99 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !100, size: 64)
!100 = !DISubroutineType(types: !101)
!101 = !{!102, !103}
!102 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi", file: !82, line: 17, size: 5760, elements: !105)
!105 = !{!106, !107, !2178}
!106 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !104, file: !82, line: 18, baseType: !87, size: 128)
!107 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !104, file: !82, line: 19, baseType: !108, size: 64, offset: 128)
!108 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !109, size: 64)
!109 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !110)
!110 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "ulpi_ops", file: !111, line: 15, size: 128, elements: !112)
!111 = !DIFile(filename: "./include/linux/ulpi/interface.h", directory: "/home/lizy2001/genbc/linux")
!112 = !{!113, !2174}
!113 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !110, file: !111, line: 16, baseType: !114, size: 64)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{!102, !117, !589}
!117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !118, size: 64)
!118 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !119)
!119 = !{!120, !1621, !1622, !1625, !1626, !1677, !1772, !1773, !1774, !1775, !1776, !1785, !1890, !1903, !2099, !2100, !2104, !2106, !2107, !2108, !2112, !2118, !2119, !2122, !2123, !2124, !2127, !2128, !2129, !2130, !2162, !2163, !2164, !2167, !2170, !2171, !2172, !2173}
!120 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !118, file: !30, line: 462, baseType: !121, size: 512)
!121 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !122, line: 64, size: 512, elements: !123)
!122 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!123 = !{!124, !128, !134, !136, !196, !1458, !1611, !1616, !1617, !1618, !1619, !1620}
!124 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !121, file: !122, line: 65, baseType: !125, size: 64)
!125 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !126, size: 64)
!126 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !127)
!127 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !121, file: !122, line: 66, baseType: !129, size: 128, offset: 64)
!129 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !78, line: 178, size: 128, elements: !130)
!130 = !{!131, !133}
!131 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !129, file: !78, line: 179, baseType: !132, size: 64)
!132 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !129, size: 64)
!133 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !129, file: !78, line: 179, baseType: !132, size: 64, offset: 64)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !121, file: !122, line: 67, baseType: !135, size: 64, offset: 192)
!135 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !121, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !121, file: !122, line: 68, baseType: !137, size: 64, offset: 256)
!137 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !138, size: 64)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !122, line: 192, size: 704, elements: !139)
!139 = !{!140, !141, !157, !158}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !138, file: !122, line: 193, baseType: !129, size: 128)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !138, file: !122, line: 194, baseType: !142, offset: 128)
!142 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !143, line: 83, baseType: !144)
!143 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !143, line: 71, elements: !145)
!145 = !{!146}
!146 = !DIDerivedType(tag: DW_TAG_member, scope: !144, file: !143, line: 72, baseType: !147)
!147 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !144, file: !143, line: 72, elements: !148)
!148 = !{!149}
!149 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !147, file: !143, line: 73, baseType: !150)
!150 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !143, line: 20, elements: !151)
!151 = !{!152}
!152 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !150, file: !143, line: 21, baseType: !153)
!153 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !154, line: 25, baseType: !155)
!154 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!155 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !154, line: 25, elements: !156)
!156 = !{}
!157 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !138, file: !122, line: 195, baseType: !121, size: 512, offset: 128)
!158 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !138, file: !122, line: 196, baseType: !159, size: 64, offset: 640)
!159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !160, size: 64)
!160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !161)
!161 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !122, line: 156, size: 192, elements: !162)
!162 = !{!163, !168, !173}
!163 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !161, file: !122, line: 157, baseType: !164, size: 64)
!164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !165)
!165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !166, size: 64)
!166 = !DISubroutineType(types: !167)
!167 = !{!102, !137, !135}
!168 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !161, file: !122, line: 158, baseType: !169, size: 64, offset: 64)
!169 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !170)
!170 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !171, size: 64)
!171 = !DISubroutineType(types: !172)
!172 = !{!125, !137, !135}
!173 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !161, file: !122, line: 159, baseType: !174, size: 64, offset: 128)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !176, size: 64)
!176 = !DISubroutineType(types: !177)
!177 = !{!102, !137, !135, !178}
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !122, line: 148, size: 20736, elements: !180)
!180 = !{!181, !186, !190, !191, !195}
!181 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !179, file: !122, line: 149, baseType: !182, size: 192)
!182 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 192, elements: !184)
!183 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !127, size: 64)
!184 = !{!185}
!185 = !DISubrange(count: 3)
!186 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !179, file: !122, line: 150, baseType: !187, size: 4096, offset: 192)
!187 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 4096, elements: !188)
!188 = !{!189}
!189 = !DISubrange(count: 64)
!190 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !179, file: !122, line: 151, baseType: !102, size: 32, offset: 4288)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !179, file: !122, line: 152, baseType: !192, size: 16384, offset: 4320)
!192 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 16384, elements: !193)
!193 = !{!194}
!194 = !DISubrange(count: 2048)
!195 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !179, file: !122, line: 153, baseType: !102, size: 32, offset: 20704)
!196 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !121, file: !122, line: 69, baseType: !197, size: 64, offset: 320)
!197 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !198, size: 64)
!198 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !122, line: 138, size: 448, elements: !199)
!199 = !{!200, !204, !232, !234, !1406, !1437, !1441}
!200 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !198, file: !122, line: 139, baseType: !201, size: 64)
!201 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !202, size: 64)
!202 = !DISubroutineType(types: !203)
!203 = !{null, !135}
!204 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !198, file: !122, line: 140, baseType: !205, size: 64, offset: 64)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !207)
!207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !208, line: 230, size: 128, elements: !209)
!208 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!209 = !{!210, !225}
!210 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !207, file: !208, line: 231, baseType: !211, size: 64)
!211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !212, size: 64)
!212 = !DISubroutineType(types: !213)
!213 = !{!214, !135, !219, !183}
!214 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !78, line: 60, baseType: !215)
!215 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !216, line: 73, baseType: !217)
!216 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!217 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !216, line: 15, baseType: !218)
!218 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !220, size: 64)
!220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !208, line: 30, size: 128, elements: !221)
!221 = !{!222, !223}
!222 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !220, file: !208, line: 31, baseType: !125, size: 64)
!223 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !220, file: !208, line: 32, baseType: !224, size: 16, offset: 64)
!224 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !78, line: 19, baseType: !93)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !207, file: !208, line: 232, baseType: !226, size: 64, offset: 64)
!226 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !227, size: 64)
!227 = !DISubroutineType(types: !228)
!228 = !{!214, !135, !219, !125, !229}
!229 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !78, line: 55, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !216, line: 72, baseType: !231)
!231 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !216, line: 16, baseType: !97)
!232 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !198, file: !122, line: 141, baseType: !233, size: 64, offset: 128)
!233 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !219, size: 64)
!234 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !198, file: !122, line: 142, baseType: !235, size: 64, offset: 192)
!235 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !236, size: 64)
!236 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !237, size: 64)
!237 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !238)
!238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !208, line: 84, size: 320, elements: !239)
!239 = !{!240, !241, !245, !1403, !1404}
!240 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !238, file: !208, line: 85, baseType: !125, size: 64)
!241 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !238, file: !208, line: 86, baseType: !242, size: 64, offset: 64)
!242 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !243, size: 64)
!243 = !DISubroutineType(types: !244)
!244 = !{!224, !135, !219, !102}
!245 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !238, file: !208, line: 88, baseType: !246, size: 64, offset: 128)
!246 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !247, size: 64)
!247 = !DISubroutineType(types: !248)
!248 = !{!224, !135, !249, !102}
!249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !250, size: 64)
!250 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !208, line: 168, size: 448, elements: !251)
!251 = !{!252, !253, !254, !255, !265, !266}
!252 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !250, file: !208, line: 169, baseType: !220, size: 128)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !250, file: !208, line: 170, baseType: !229, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !250, file: !208, line: 171, baseType: !79, size: 64, offset: 192)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !250, file: !208, line: 172, baseType: !256, size: 64, offset: 256)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = !DISubroutineType(types: !258)
!258 = !{!214, !259, !135, !249, !183, !262, !229}
!259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !260, size: 64)
!260 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !261, line: 526, flags: DIFlagFwdDecl)
!261 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!262 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !78, line: 46, baseType: !263)
!263 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !216, line: 88, baseType: !264)
!264 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !250, file: !208, line: 174, baseType: !256, size: 64, offset: 320)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !250, file: !208, line: 176, baseType: !267, size: 64, offset: 384)
!267 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !268, size: 64)
!268 = !DISubroutineType(types: !269)
!269 = !{!102, !259, !135, !249, !270}
!270 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !271, size: 64)
!271 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !272, line: 305, size: 1472, elements: !273)
!272 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!273 = !{!274, !275, !276, !277, !278, !286, !287, !1377, !1383, !1384, !1389, !1390, !1393, !1397, !1398, !1399, !1400, !1401}
!274 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !271, file: !272, line: 308, baseType: !97, size: 64)
!275 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !271, file: !272, line: 309, baseType: !97, size: 64, offset: 64)
!276 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !271, file: !272, line: 313, baseType: !270, size: 64, offset: 128)
!277 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !271, file: !272, line: 313, baseType: !270, size: 64, offset: 192)
!278 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !271, file: !272, line: 315, baseType: !279, size: 192, align: 64, offset: 256)
!279 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !280, line: 24, size: 192, align: 64, elements: !281)
!280 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!281 = !{!282, !283, !285}
!282 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !279, file: !280, line: 25, baseType: !97, size: 64)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !279, file: !280, line: 26, baseType: !284, size: 64, offset: 64)
!284 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !279, size: 64)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !279, file: !280, line: 27, baseType: !284, size: 64, offset: 128)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !271, file: !272, line: 323, baseType: !97, size: 64, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !271, file: !272, line: 327, baseType: !288, size: 64, offset: 512)
!288 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !289, size: 64)
!289 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !272, line: 388, size: 7296, elements: !290)
!290 = !{!291, !1373}
!291 = !DIDerivedType(tag: DW_TAG_member, scope: !289, file: !272, line: 389, baseType: !292, size: 7296)
!292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !289, file: !272, line: 389, size: 7296, elements: !293)
!293 = !{!294, !295, !299, !304, !308, !309, !310, !311, !312, !320, !325, !326, !327, !328, !337, !338, !339, !348, !349, !350, !351, !352, !353, !354, !355, !356, !357, !358, !359, !360, !361, !362, !363, !364, !365, !366, !367, !368, !369, !370, !374, !382, !385, !432, !433, !1343, !1344, !1347, !1351, !1352, !1355, !1356, !1357, !1360, !1372}
!294 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !292, file: !272, line: 390, baseType: !270, size: 64)
!295 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !292, file: !272, line: 391, baseType: !296, size: 64, offset: 64)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !280, line: 31, size: 64, elements: !297)
!297 = !{!298}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !296, file: !280, line: 32, baseType: !284, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !292, file: !272, line: 392, baseType: !300, size: 64, offset: 128)
!300 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !301, line: 23, baseType: !302)
!301 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!302 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !92, line: 31, baseType: !303)
!303 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!304 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !292, file: !272, line: 394, baseType: !305, size: 64, offset: 192)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !306, size: 64)
!306 = !DISubroutineType(types: !307)
!307 = !{!97, !259, !97, !97, !97, !97}
!308 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !292, file: !272, line: 398, baseType: !97, size: 64, offset: 256)
!309 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !292, file: !272, line: 399, baseType: !97, size: 64, offset: 320)
!310 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !292, file: !272, line: 405, baseType: !97, size: 64, offset: 384)
!311 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !292, file: !272, line: 406, baseType: !97, size: 64, offset: 448)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !292, file: !272, line: 407, baseType: !313, size: 64, offset: 512)
!313 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !314, size: 64)
!314 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !261, line: 286, baseType: !315)
!315 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !261, line: 286, size: 64, elements: !316)
!316 = !{!317}
!317 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !315, file: !261, line: 286, baseType: !318, size: 64)
!318 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !319, line: 18, baseType: !97)
!319 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!320 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !292, file: !272, line: 416, baseType: !321, size: 32, offset: 576)
!321 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !78, line: 168, baseType: !322)
!322 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 166, size: 32, elements: !323)
!323 = !{!324}
!324 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !322, file: !78, line: 167, baseType: !102, size: 32)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !292, file: !272, line: 428, baseType: !321, size: 32, offset: 608)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !292, file: !272, line: 437, baseType: !321, size: 32, offset: 640)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !292, file: !272, line: 447, baseType: !321, size: 32, offset: 672)
!328 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !292, file: !272, line: 450, baseType: !329, size: 64, offset: 704)
!329 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !330, line: 13, baseType: !331)
!330 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!331 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !78, line: 175, baseType: !332)
!332 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !78, line: 173, size: 64, elements: !333)
!333 = !{!334}
!334 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !332, file: !78, line: 174, baseType: !335, size: 64)
!335 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !301, line: 22, baseType: !336)
!336 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !92, line: 30, baseType: !264)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !292, file: !272, line: 452, baseType: !102, size: 32, offset: 768)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !292, file: !272, line: 454, baseType: !142, offset: 800)
!339 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !292, file: !272, line: 457, baseType: !340, size: 256, offset: 832)
!340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !341, line: 35, size: 256, elements: !342)
!341 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!342 = !{!343, !344, !345, !347}
!343 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !340, file: !341, line: 36, baseType: !329, size: 64)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !340, file: !341, line: 42, baseType: !329, size: 64, offset: 64)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !340, file: !341, line: 46, baseType: !346, offset: 128)
!346 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !143, line: 29, baseType: !150)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !340, file: !341, line: 47, baseType: !129, size: 128, offset: 128)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !292, file: !272, line: 459, baseType: !129, size: 128, offset: 1088)
!349 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !292, file: !272, line: 466, baseType: !97, size: 64, offset: 1216)
!350 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !292, file: !272, line: 467, baseType: !97, size: 64, offset: 1280)
!351 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !292, file: !272, line: 469, baseType: !97, size: 64, offset: 1344)
!352 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !292, file: !272, line: 470, baseType: !97, size: 64, offset: 1408)
!353 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !292, file: !272, line: 471, baseType: !331, size: 64, offset: 1472)
!354 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !292, file: !272, line: 472, baseType: !97, size: 64, offset: 1536)
!355 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !292, file: !272, line: 473, baseType: !97, size: 64, offset: 1600)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !292, file: !272, line: 474, baseType: !97, size: 64, offset: 1664)
!357 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !292, file: !272, line: 475, baseType: !97, size: 64, offset: 1728)
!358 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !292, file: !272, line: 477, baseType: !142, offset: 1792)
!359 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !292, file: !272, line: 478, baseType: !97, size: 64, offset: 1792)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !292, file: !272, line: 478, baseType: !97, size: 64, offset: 1856)
!361 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !292, file: !272, line: 478, baseType: !97, size: 64, offset: 1920)
!362 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !292, file: !272, line: 478, baseType: !97, size: 64, offset: 1984)
!363 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !292, file: !272, line: 479, baseType: !97, size: 64, offset: 2048)
!364 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !292, file: !272, line: 479, baseType: !97, size: 64, offset: 2112)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !292, file: !272, line: 479, baseType: !97, size: 64, offset: 2176)
!366 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !292, file: !272, line: 480, baseType: !97, size: 64, offset: 2240)
!367 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !292, file: !272, line: 480, baseType: !97, size: 64, offset: 2304)
!368 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !292, file: !272, line: 480, baseType: !97, size: 64, offset: 2368)
!369 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !292, file: !272, line: 480, baseType: !97, size: 64, offset: 2432)
!370 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !292, file: !272, line: 482, baseType: !371, size: 2816, offset: 2496)
!371 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 2816, elements: !372)
!372 = !{!373}
!373 = !DISubrange(count: 44)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !292, file: !272, line: 488, baseType: !375, size: 256, offset: 5312)
!375 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !376, line: 60, size: 256, elements: !377)
!376 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!377 = !{!378}
!378 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !375, file: !376, line: 61, baseType: !379, size: 256)
!379 = !DICompositeType(tag: DW_TAG_array_type, baseType: !329, size: 256, elements: !380)
!380 = !{!381}
!381 = !DISubrange(count: 4)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !292, file: !272, line: 490, baseType: !383, size: 64, offset: 5568)
!383 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !384, size: 64)
!384 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !272, line: 490, flags: DIFlagFwdDecl)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !292, file: !272, line: 493, baseType: !386, size: 896, offset: 5632)
!386 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !387, line: 53, baseType: !388)
!387 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!388 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !387, line: 13, size: 896, elements: !389)
!389 = !{!390, !391, !392, !393, !396, !397, !404, !405, !425, !426, !428}
!390 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !388, file: !387, line: 18, baseType: !300, size: 64)
!391 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !388, file: !387, line: 28, baseType: !331, size: 64, offset: 64)
!392 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !388, file: !387, line: 31, baseType: !340, size: 256, offset: 128)
!393 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !388, file: !387, line: 32, baseType: !394, size: 64, offset: 384)
!394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !395, size: 64)
!395 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !387, line: 32, flags: DIFlagFwdDecl)
!396 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !388, file: !387, line: 37, baseType: !93, size: 16, offset: 448)
!397 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !388, file: !387, line: 40, baseType: !398, size: 192, offset: 512)
!398 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !399, line: 53, size: 192, elements: !400)
!399 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!400 = !{!401, !402, !403}
!401 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !398, file: !399, line: 54, baseType: !329, size: 64)
!402 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !398, file: !399, line: 55, baseType: !142, offset: 64)
!403 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !398, file: !399, line: 59, baseType: !129, size: 128, offset: 64)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !388, file: !387, line: 41, baseType: !79, size: 64, offset: 704)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !388, file: !387, line: 42, baseType: !406, size: 64, offset: 768)
!406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !407, size: 64)
!407 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !408)
!408 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !409, line: 13, size: 896, elements: !410)
!409 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!410 = !{!411, !412, !413, !414, !415, !416, !417, !418, !419, !420, !421, !422, !423, !424}
!411 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !408, file: !409, line: 14, baseType: !79, size: 64)
!412 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !408, file: !409, line: 15, baseType: !97, size: 64, offset: 64)
!413 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !408, file: !409, line: 17, baseType: !97, size: 64, offset: 128)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !408, file: !409, line: 17, baseType: !97, size: 64, offset: 192)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !408, file: !409, line: 19, baseType: !218, size: 64, offset: 256)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !408, file: !409, line: 21, baseType: !218, size: 64, offset: 320)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !408, file: !409, line: 22, baseType: !218, size: 64, offset: 384)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !408, file: !409, line: 23, baseType: !218, size: 64, offset: 448)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !408, file: !409, line: 24, baseType: !218, size: 64, offset: 512)
!420 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !408, file: !409, line: 25, baseType: !218, size: 64, offset: 576)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !408, file: !409, line: 26, baseType: !218, size: 64, offset: 640)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !408, file: !409, line: 27, baseType: !218, size: 64, offset: 704)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !408, file: !409, line: 28, baseType: !218, size: 64, offset: 768)
!424 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !408, file: !409, line: 29, baseType: !218, size: 64, offset: 832)
!425 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !388, file: !387, line: 44, baseType: !321, size: 32, offset: 832)
!426 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !388, file: !387, line: 50, baseType: !427, size: 16, offset: 864)
!427 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !301, line: 19, baseType: !91)
!428 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !388, file: !387, line: 51, baseType: !429, size: 16, offset: 880)
!429 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !301, line: 18, baseType: !430)
!430 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !92, line: 23, baseType: !431)
!431 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!432 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !292, file: !272, line: 495, baseType: !97, size: 64, offset: 6528)
!433 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !292, file: !272, line: 497, baseType: !434, size: 64, offset: 6592)
!434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !435, size: 64)
!435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !272, line: 381, size: 384, elements: !436)
!436 = !{!437, !438, !1342}
!437 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !435, file: !272, line: 382, baseType: !321, size: 32)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !435, file: !272, line: 383, baseType: !439, size: 128, offset: 64)
!439 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !272, line: 376, size: 128, elements: !440)
!440 = !{!441, !1340}
!441 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !439, file: !272, line: 377, baseType: !442, size: 64)
!442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !443, size: 64)
!443 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !444, line: 640, size: 48640, elements: !445)
!444 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!445 = !{!446, !454, !456, !457, !463, !464, !465, !466, !467, !468, !469, !470, !474, !492, !503, !598, !599, !600, !611, !612, !614, !615, !616, !617, !623, !624, !625, !626, !627, !628, !629, !630, !631, !632, !633, !634, !635, !636, !637, !638, !696, !699, !700, !701, !702, !703, !704, !705, !706, !707, !708, !752, !754, !755, !756, !768, !770, !771, !772, !773, !774, !780, !781, !782, !783, !784, !785, !786, !798, !803, !807, !808, !809, !812, !816, !819, !822, !825, !828, !831, !834, !837, !843, !844, !845, !851, !852, !853, !854, !855, !864, !865, !866, !867, !868, !873, !874, !875, !878, !879, !882, !885, !888, !891, !894, !897, !898, !978, !981, !984, !985, !988, !989, !990, !996, !997, !998, !1011, !1012, !1013, !1025, !1030, !1033, !1131, !1132, !1133, !1134, !1135, !1136, !1137, !1138, !1155, !1156, !1157, !1158, !1159, !1160, !1161, !1162, !1163}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !443, file: !444, line: 646, baseType: !447, size: 128)
!447 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !448, line: 56, size: 128, elements: !449)
!448 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!449 = !{!450, !451}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !447, file: !448, line: 57, baseType: !97, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !447, file: !448, line: 58, baseType: !452, size: 32, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !301, line: 21, baseType: !453)
!453 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !92, line: 27, baseType: !7)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !443, file: !444, line: 649, baseType: !455, size: 64, offset: 128)
!455 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !218)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !443, file: !444, line: 657, baseType: !79, size: 64, offset: 192)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !443, file: !444, line: 658, baseType: !458, size: 32, offset: 256)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !459, line: 113, baseType: !460)
!459 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !459, line: 111, size: 32, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !460, file: !459, line: 112, baseType: !321, size: 32)
!463 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !443, file: !444, line: 660, baseType: !7, size: 32, offset: 288)
!464 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !443, file: !444, line: 661, baseType: !7, size: 32, offset: 320)
!465 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !443, file: !444, line: 684, baseType: !102, size: 32, offset: 352)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !443, file: !444, line: 686, baseType: !102, size: 32, offset: 384)
!467 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !443, file: !444, line: 687, baseType: !102, size: 32, offset: 416)
!468 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !443, file: !444, line: 688, baseType: !102, size: 32, offset: 448)
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !443, file: !444, line: 689, baseType: !7, size: 32, offset: 480)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !443, file: !444, line: 691, baseType: !471, size: 64, offset: 512)
!471 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !472, size: 64)
!472 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !473)
!473 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !444, line: 691, flags: DIFlagFwdDecl)
!474 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !443, file: !444, line: 692, baseType: !475, size: 832, offset: 576)
!475 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !444, line: 451, size: 832, elements: !476)
!476 = !{!477, !482, !483, !484, !485, !486, !487, !488, !489, !490}
!477 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !475, file: !444, line: 453, baseType: !478, size: 128)
!478 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !444, line: 325, size: 128, elements: !479)
!479 = !{!480, !481}
!480 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !478, file: !444, line: 326, baseType: !97, size: 64)
!481 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !478, file: !444, line: 327, baseType: !452, size: 32, offset: 64)
!482 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !475, file: !444, line: 454, baseType: !279, size: 192, align: 64, offset: 128)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !475, file: !444, line: 455, baseType: !129, size: 128, offset: 320)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !475, file: !444, line: 456, baseType: !7, size: 32, offset: 448)
!485 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !475, file: !444, line: 458, baseType: !300, size: 64, offset: 512)
!486 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !475, file: !444, line: 459, baseType: !300, size: 64, offset: 576)
!487 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !475, file: !444, line: 460, baseType: !300, size: 64, offset: 640)
!488 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !475, file: !444, line: 461, baseType: !300, size: 64, offset: 704)
!489 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !475, file: !444, line: 463, baseType: !300, size: 64, offset: 768)
!490 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !475, file: !444, line: 465, baseType: !491, offset: 832)
!491 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !444, line: 415, elements: !156)
!492 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !443, file: !444, line: 693, baseType: !493, size: 384, offset: 1408)
!493 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !444, line: 489, size: 384, elements: !494)
!494 = !{!495, !496, !497, !498, !499, !500, !501}
!495 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !493, file: !444, line: 490, baseType: !129, size: 128)
!496 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !493, file: !444, line: 491, baseType: !97, size: 64, offset: 128)
!497 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !493, file: !444, line: 492, baseType: !97, size: 64, offset: 192)
!498 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !493, file: !444, line: 493, baseType: !7, size: 32, offset: 256)
!499 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !493, file: !444, line: 494, baseType: !93, size: 16, offset: 288)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !493, file: !444, line: 495, baseType: !93, size: 16, offset: 304)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !493, file: !444, line: 497, baseType: !502, size: 64, offset: 320)
!502 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !493, size: 64)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !443, file: !444, line: 697, baseType: !504, size: 1792, offset: 1792)
!504 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !444, line: 507, size: 1792, elements: !505)
!505 = !{!506, !507, !508, !509, !510, !511, !512, !513, !514, !515, !516, !517, !518, !519, !595, !596}
!506 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !504, file: !444, line: 508, baseType: !279, size: 192, align: 64)
!507 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !504, file: !444, line: 515, baseType: !300, size: 64, offset: 192)
!508 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !504, file: !444, line: 516, baseType: !300, size: 64, offset: 256)
!509 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !504, file: !444, line: 517, baseType: !300, size: 64, offset: 320)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !504, file: !444, line: 518, baseType: !300, size: 64, offset: 384)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !504, file: !444, line: 519, baseType: !300, size: 64, offset: 448)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !504, file: !444, line: 526, baseType: !335, size: 64, offset: 512)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !504, file: !444, line: 527, baseType: !300, size: 64, offset: 576)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !504, file: !444, line: 528, baseType: !7, size: 32, offset: 640)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !504, file: !444, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !504, file: !444, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!517 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !504, file: !444, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!518 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !504, file: !444, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!519 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !504, file: !444, line: 563, baseType: !520, size: 512, offset: 704)
!520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !521)
!521 = !{!522, !530, !531, !536, !588, !592, !593, !594}
!522 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !520, file: !6, line: 119, baseType: !523, size: 256)
!523 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !524, line: 9, size: 256, elements: !525)
!524 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!525 = !{!526, !527}
!526 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !523, file: !524, line: 10, baseType: !279, size: 192, align: 64)
!527 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !523, file: !524, line: 11, baseType: !528, size: 64, offset: 192)
!528 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !529, line: 29, baseType: !335)
!529 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!530 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !520, file: !6, line: 120, baseType: !528, size: 64, offset: 256)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !520, file: !6, line: 121, baseType: !532, size: 64, offset: 320)
!532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !533, size: 64)
!533 = !DISubroutineType(types: !534)
!534 = !{!5, !535}
!535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !520, size: 64)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !520, file: !6, line: 122, baseType: !537, size: 64, offset: 384)
!537 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !538, size: 64)
!538 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !539)
!539 = !{!540, !560, !561, !564, !574, !575, !583, !587}
!540 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !538, file: !6, line: 160, baseType: !541, size: 64)
!541 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !542, size: 64)
!542 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !543)
!543 = !{!544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !555, !556}
!544 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !542, file: !6, line: 215, baseType: !346)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !542, file: !6, line: 216, baseType: !7, size: 32)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !542, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !542, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !542, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !542, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !542, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !542, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !542, file: !6, line: 233, baseType: !528, size: 64, offset: 128)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !542, file: !6, line: 234, baseType: !535, size: 64, offset: 192)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !542, file: !6, line: 235, baseType: !528, size: 64, offset: 256)
!555 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !542, file: !6, line: 236, baseType: !535, size: 64, offset: 320)
!556 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !542, file: !6, line: 237, baseType: !557, size: 4096, offset: 512)
!557 = !DICompositeType(tag: DW_TAG_array_type, baseType: !538, size: 4096, elements: !558)
!558 = !{!559}
!559 = !DISubrange(count: 8)
!560 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !538, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!561 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !538, file: !6, line: 162, baseType: !562, size: 32, offset: 96)
!562 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !78, line: 27, baseType: !563)
!563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !216, line: 96, baseType: !102)
!564 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !538, file: !6, line: 163, baseType: !565, size: 32, offset: 128)
!565 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !566, line: 276, baseType: !567)
!566 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!567 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !566, line: 276, size: 32, elements: !568)
!568 = !{!569}
!569 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !567, file: !566, line: 276, baseType: !570, size: 32)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !566, line: 70, baseType: !571)
!571 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !566, line: 65, size: 32, elements: !572)
!572 = !{!573}
!573 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !571, file: !566, line: 66, baseType: !7, size: 32)
!574 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !538, file: !6, line: 164, baseType: !535, size: 64, offset: 192)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !538, file: !6, line: 165, baseType: !576, size: 128, offset: 256)
!576 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !524, line: 14, size: 128, elements: !577)
!577 = !{!578}
!578 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !576, file: !524, line: 15, baseType: !579, size: 128)
!579 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !280, line: 125, size: 128, elements: !580)
!580 = !{!581, !582}
!581 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !579, file: !280, line: 126, baseType: !296, size: 64)
!582 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !579, file: !280, line: 127, baseType: !284, size: 64, offset: 64)
!583 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !538, file: !6, line: 166, baseType: !584, size: 64, offset: 384)
!584 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !585, size: 64)
!585 = !DISubroutineType(types: !586)
!586 = !{!528}
!587 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !538, file: !6, line: 167, baseType: !528, size: 64, offset: 448)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !520, file: !6, line: 123, baseType: !589, size: 8, offset: 448)
!589 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !301, line: 17, baseType: !590)
!590 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !92, line: 21, baseType: !591)
!591 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!592 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !520, file: !6, line: 124, baseType: !589, size: 8, offset: 456)
!593 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !520, file: !6, line: 125, baseType: !589, size: 8, offset: 464)
!594 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !520, file: !6, line: 126, baseType: !589, size: 8, offset: 472)
!595 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !504, file: !444, line: 572, baseType: !520, size: 512, offset: 1216)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !504, file: !444, line: 580, baseType: !597, size: 64, offset: 1728)
!597 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !504, size: 64)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !443, file: !444, line: 721, baseType: !7, size: 32, offset: 3584)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !443, file: !444, line: 722, baseType: !102, size: 32, offset: 3616)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !443, file: !444, line: 723, baseType: !601, size: 64, offset: 3648)
!601 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !602, size: 64)
!602 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !603)
!603 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !604, line: 17, baseType: !605)
!604 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!605 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !604, line: 17, size: 64, elements: !606)
!606 = !{!607}
!607 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !605, file: !604, line: 17, baseType: !608, size: 64)
!608 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, size: 64, elements: !609)
!609 = !{!610}
!610 = !DISubrange(count: 1)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !443, file: !444, line: 724, baseType: !603, size: 64, offset: 3712)
!612 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !443, file: !444, line: 749, baseType: !613, offset: 3776)
!613 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !444, line: 290, elements: !156)
!614 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !443, file: !444, line: 751, baseType: !129, size: 128, offset: 3776)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !443, file: !444, line: 757, baseType: !288, size: 64, offset: 3904)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !443, file: !444, line: 758, baseType: !288, size: 64, offset: 3968)
!617 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !443, file: !444, line: 761, baseType: !618, size: 320, offset: 4032)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !376, line: 34, size: 320, elements: !619)
!619 = !{!620, !621}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !618, file: !376, line: 35, baseType: !300, size: 64)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !618, file: !376, line: 36, baseType: !622, size: 256, offset: 64)
!622 = !DICompositeType(tag: DW_TAG_array_type, baseType: !270, size: 256, elements: !380)
!623 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !443, file: !444, line: 766, baseType: !102, size: 32, offset: 4352)
!624 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !443, file: !444, line: 767, baseType: !102, size: 32, offset: 4384)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !443, file: !444, line: 768, baseType: !102, size: 32, offset: 4416)
!626 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !443, file: !444, line: 770, baseType: !102, size: 32, offset: 4448)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !443, file: !444, line: 772, baseType: !97, size: 64, offset: 4480)
!628 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !443, file: !444, line: 775, baseType: !7, size: 32, offset: 4544)
!629 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !443, file: !444, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!630 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !443, file: !444, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!631 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !443, file: !444, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !443, file: !444, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!633 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !443, file: !444, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!634 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !443, file: !444, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!635 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !443, file: !444, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!636 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !443, file: !444, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !443, file: !444, line: 831, baseType: !97, size: 64, offset: 4672)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !443, file: !444, line: 833, baseType: !639, size: 384, offset: 4736)
!639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !640)
!640 = !{!641, !646}
!641 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !639, file: !12, line: 26, baseType: !642, size: 64)
!642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !643, size: 64)
!643 = !DISubroutineType(types: !644)
!644 = !{!218, !645}
!645 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !639, size: 64)
!646 = !DIDerivedType(tag: DW_TAG_member, scope: !639, file: !12, line: 27, baseType: !647, size: 320, offset: 64)
!647 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !639, file: !12, line: 27, size: 320, elements: !648)
!648 = !{!649, !659, !686}
!649 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !647, file: !12, line: 36, baseType: !650, size: 320)
!650 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !647, file: !12, line: 29, size: 320, elements: !651)
!651 = !{!652, !654, !655, !656, !657, !658}
!652 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !650, file: !12, line: 30, baseType: !653, size: 64)
!653 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !452, size: 64)
!654 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !650, file: !12, line: 31, baseType: !452, size: 32, offset: 64)
!655 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !650, file: !12, line: 32, baseType: !452, size: 32, offset: 96)
!656 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !650, file: !12, line: 33, baseType: !452, size: 32, offset: 128)
!657 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !650, file: !12, line: 34, baseType: !300, size: 64, offset: 192)
!658 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !650, file: !12, line: 35, baseType: !653, size: 64, offset: 256)
!659 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !647, file: !12, line: 46, baseType: !660, size: 192)
!660 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !647, file: !12, line: 38, size: 192, elements: !661)
!661 = !{!662, !663, !664, !685}
!662 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !660, file: !12, line: 39, baseType: !562, size: 32)
!663 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !660, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!664 = !DIDerivedType(tag: DW_TAG_member, scope: !660, file: !12, line: 41, baseType: !665, size: 64, offset: 64)
!665 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !660, file: !12, line: 41, size: 64, elements: !666)
!666 = !{!667, !675}
!667 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !665, file: !12, line: 42, baseType: !668, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !669, size: 64)
!669 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !670, line: 7, size: 128, elements: !671)
!670 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!671 = !{!672, !674}
!672 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !669, file: !670, line: 8, baseType: !673, size: 64)
!673 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !216, line: 93, baseType: !264)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !669, file: !670, line: 9, baseType: !264, size: 64, offset: 64)
!675 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !665, file: !12, line: 43, baseType: !676, size: 64)
!676 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !677, size: 64)
!677 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !678, line: 7, size: 64, elements: !679)
!678 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!679 = !{!680, !684}
!680 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !677, file: !678, line: 8, baseType: !681, size: 32)
!681 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !678, line: 5, baseType: !682)
!682 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !301, line: 20, baseType: !683)
!683 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !92, line: 26, baseType: !102)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !677, file: !678, line: 9, baseType: !682, size: 32, offset: 32)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !660, file: !12, line: 45, baseType: !300, size: 64, offset: 128)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !647, file: !12, line: 54, baseType: !687, size: 256)
!687 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !647, file: !12, line: 48, size: 256, elements: !688)
!688 = !{!689, !692, !693, !694, !695}
!689 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !687, file: !12, line: 49, baseType: !690, size: 64)
!690 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !691, size: 64)
!691 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !687, file: !12, line: 50, baseType: !102, size: 32, offset: 64)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !687, file: !12, line: 51, baseType: !102, size: 32, offset: 96)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !687, file: !12, line: 52, baseType: !97, size: 64, offset: 128)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !687, file: !12, line: 53, baseType: !97, size: 64, offset: 192)
!696 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !443, file: !444, line: 835, baseType: !697, size: 32, offset: 5120)
!697 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !78, line: 22, baseType: !698)
!698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !216, line: 28, baseType: !102)
!699 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !443, file: !444, line: 836, baseType: !697, size: 32, offset: 5152)
!700 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !443, file: !444, line: 840, baseType: !97, size: 64, offset: 5184)
!701 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !443, file: !444, line: 849, baseType: !442, size: 64, offset: 5248)
!702 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !443, file: !444, line: 852, baseType: !442, size: 64, offset: 5312)
!703 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !443, file: !444, line: 857, baseType: !129, size: 128, offset: 5376)
!704 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !443, file: !444, line: 858, baseType: !129, size: 128, offset: 5504)
!705 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !443, file: !444, line: 859, baseType: !442, size: 64, offset: 5632)
!706 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !443, file: !444, line: 867, baseType: !129, size: 128, offset: 5696)
!707 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !443, file: !444, line: 868, baseType: !129, size: 128, offset: 5824)
!708 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !443, file: !444, line: 871, baseType: !709, size: 64, offset: 5952)
!709 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !710, size: 64)
!710 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !711, line: 59, size: 768, elements: !712)
!711 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!712 = !{!713, !714, !715, !716, !727, !728, !735, !744}
!713 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !710, file: !711, line: 61, baseType: !458, size: 32)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !710, file: !711, line: 62, baseType: !7, size: 32, offset: 32)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !710, file: !711, line: 63, baseType: !142, offset: 64)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !710, file: !711, line: 65, baseType: !717, size: 256, offset: 64)
!717 = !DICompositeType(tag: DW_TAG_array_type, baseType: !718, size: 256, elements: !380)
!718 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !78, line: 182, size: 64, elements: !719)
!719 = !{!720}
!720 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !718, file: !78, line: 183, baseType: !721, size: 64)
!721 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !722, size: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !78, line: 186, size: 128, elements: !723)
!723 = !{!724, !725}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !722, file: !78, line: 187, baseType: !721, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !722, file: !78, line: 187, baseType: !726, size: 64, offset: 64)
!726 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !721, size: 64)
!727 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !710, file: !711, line: 66, baseType: !718, size: 64, offset: 320)
!728 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !710, file: !711, line: 68, baseType: !729, size: 128, offset: 384)
!729 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !730, line: 40, baseType: !731)
!730 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!731 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !730, line: 36, size: 128, elements: !732)
!732 = !{!733, !734}
!733 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !731, file: !730, line: 37, baseType: !142)
!734 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !731, file: !730, line: 38, baseType: !129, size: 128)
!735 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !710, file: !711, line: 69, baseType: !736, size: 128, align: 64, offset: 512)
!736 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !78, line: 216, size: 128, align: 64, elements: !737)
!737 = !{!738, !740}
!738 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !736, file: !78, line: 217, baseType: !739, size: 64)
!739 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !736, size: 64)
!740 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !736, file: !78, line: 218, baseType: !741, size: 64, offset: 64)
!741 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !742, size: 64)
!742 = !DISubroutineType(types: !743)
!743 = !{null, !739}
!744 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !710, file: !711, line: 70, baseType: !745, size: 128, offset: 640)
!745 = !DICompositeType(tag: DW_TAG_array_type, baseType: !746, size: 128, elements: !609)
!746 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !711, line: 54, size: 128, elements: !747)
!747 = !{!748, !749}
!748 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !746, file: !711, line: 55, baseType: !102, size: 32)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !746, file: !711, line: 56, baseType: !750, size: 64, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !751, size: 64)
!751 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !711, line: 56, flags: DIFlagFwdDecl)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !443, file: !444, line: 872, baseType: !753, size: 512, offset: 6016)
!753 = !DICompositeType(tag: DW_TAG_array_type, baseType: !722, size: 512, elements: !380)
!754 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !443, file: !444, line: 873, baseType: !129, size: 128, offset: 6528)
!755 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !443, file: !444, line: 874, baseType: !129, size: 128, offset: 6656)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !443, file: !444, line: 876, baseType: !757, size: 64, offset: 6784)
!757 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !758, size: 64)
!758 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !759, line: 26, size: 192, elements: !760)
!759 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!760 = !{!761, !762}
!761 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !758, file: !759, line: 27, baseType: !7, size: 32)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !758, file: !759, line: 28, baseType: !763, size: 128, offset: 64)
!763 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !764, line: 43, size: 128, elements: !765)
!764 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!765 = !{!766, !767}
!766 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !763, file: !764, line: 44, baseType: !346)
!767 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !763, file: !764, line: 45, baseType: !129, size: 128)
!768 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !443, file: !444, line: 879, baseType: !769, size: 64, offset: 6848)
!769 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !102, size: 64)
!770 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !443, file: !444, line: 882, baseType: !769, size: 64, offset: 6912)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !443, file: !444, line: 884, baseType: !300, size: 64, offset: 6976)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !443, file: !444, line: 885, baseType: !300, size: 64, offset: 7040)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !443, file: !444, line: 890, baseType: !300, size: 64, offset: 7104)
!774 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !443, file: !444, line: 891, baseType: !775, size: 128, offset: 7168)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !444, line: 242, size: 128, elements: !776)
!776 = !{!777, !778, !779}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !775, file: !444, line: 244, baseType: !300, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !775, file: !444, line: 245, baseType: !300, size: 64, offset: 64)
!779 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !775, file: !444, line: 246, baseType: !346, offset: 128)
!780 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !443, file: !444, line: 900, baseType: !97, size: 64, offset: 7296)
!781 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !443, file: !444, line: 901, baseType: !97, size: 64, offset: 7360)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !443, file: !444, line: 904, baseType: !300, size: 64, offset: 7424)
!783 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !443, file: !444, line: 907, baseType: !300, size: 64, offset: 7488)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !443, file: !444, line: 910, baseType: !97, size: 64, offset: 7552)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !443, file: !444, line: 911, baseType: !97, size: 64, offset: 7616)
!786 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !443, file: !444, line: 914, baseType: !787, size: 640, offset: 7680)
!787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !788, line: 123, size: 640, elements: !789)
!788 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!789 = !{!790, !796, !797}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !787, file: !788, line: 124, baseType: !791, size: 576)
!791 = !DICompositeType(tag: DW_TAG_array_type, baseType: !792, size: 576, elements: !184)
!792 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !788, line: 108, size: 192, elements: !793)
!793 = !{!794, !795}
!794 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !792, file: !788, line: 109, baseType: !300, size: 64)
!795 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !792, file: !788, line: 110, baseType: !576, size: 128, offset: 64)
!796 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !787, file: !788, line: 125, baseType: !7, size: 32, offset: 576)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !787, file: !788, line: 126, baseType: !7, size: 32, offset: 608)
!798 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !443, file: !444, line: 917, baseType: !799, size: 192, offset: 8320)
!799 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !788, line: 134, size: 192, elements: !800)
!800 = !{!801, !802}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !799, file: !788, line: 135, baseType: !736, size: 128, align: 64)
!802 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !799, file: !788, line: 136, baseType: !7, size: 32, offset: 128)
!803 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !443, file: !444, line: 923, baseType: !804, size: 64, offset: 8512)
!804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !805, size: 64)
!805 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !806)
!806 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !444, line: 923, flags: DIFlagFwdDecl)
!807 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !443, file: !444, line: 926, baseType: !804, size: 64, offset: 8576)
!808 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !443, file: !444, line: 929, baseType: !804, size: 64, offset: 8640)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !443, file: !444, line: 933, baseType: !810, size: 64, offset: 8704)
!810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !811, size: 64)
!811 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !444, line: 933, flags: DIFlagFwdDecl)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !443, file: !444, line: 943, baseType: !813, size: 128, offset: 8768)
!813 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 128, elements: !814)
!814 = !{!815}
!815 = !DISubrange(count: 16)
!816 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !443, file: !444, line: 945, baseType: !817, size: 64, offset: 8896)
!817 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !818, size: 64)
!818 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !444, line: 49, flags: DIFlagFwdDecl)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !443, file: !444, line: 956, baseType: !820, size: 64, offset: 8960)
!820 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !821, size: 64)
!821 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !444, line: 45, flags: DIFlagFwdDecl)
!822 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !443, file: !444, line: 959, baseType: !823, size: 64, offset: 9024)
!823 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !824, size: 64)
!824 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !444, line: 959, flags: DIFlagFwdDecl)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !443, file: !444, line: 962, baseType: !826, size: 64, offset: 9088)
!826 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !827, size: 64)
!827 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !444, line: 66, flags: DIFlagFwdDecl)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !443, file: !444, line: 966, baseType: !829, size: 64, offset: 9152)
!829 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !830, size: 64)
!830 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !444, line: 50, flags: DIFlagFwdDecl)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !443, file: !444, line: 969, baseType: !832, size: 64, offset: 9216)
!832 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !833, size: 64)
!833 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !788, line: 223, flags: DIFlagFwdDecl)
!834 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !443, file: !444, line: 970, baseType: !835, size: 64, offset: 9280)
!835 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !836, size: 64)
!836 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !444, line: 62, flags: DIFlagFwdDecl)
!837 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !443, file: !444, line: 971, baseType: !838, size: 64, offset: 9344)
!838 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !839, line: 25, baseType: !840)
!839 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!840 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !839, line: 23, size: 64, elements: !841)
!841 = !{!842}
!842 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !840, file: !839, line: 24, baseType: !608, size: 64)
!843 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !443, file: !444, line: 972, baseType: !838, size: 64, offset: 9408)
!844 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !443, file: !444, line: 974, baseType: !838, size: 64, offset: 9472)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !443, file: !444, line: 975, baseType: !846, size: 192, offset: 9536)
!846 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !847, line: 30, size: 192, elements: !848)
!847 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!848 = !{!849, !850}
!849 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !846, file: !847, line: 31, baseType: !129, size: 128)
!850 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !846, file: !847, line: 32, baseType: !838, size: 64, offset: 128)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !443, file: !444, line: 976, baseType: !97, size: 64, offset: 9728)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !443, file: !444, line: 977, baseType: !229, size: 64, offset: 9792)
!853 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !443, file: !444, line: 978, baseType: !7, size: 32, offset: 9856)
!854 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !443, file: !444, line: 980, baseType: !739, size: 64, offset: 9920)
!855 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !443, file: !444, line: 989, baseType: !856, size: 128, offset: 9984)
!856 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !857, line: 35, size: 128, elements: !858)
!857 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!858 = !{!859, !860, !861}
!859 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !856, file: !857, line: 36, baseType: !102, size: 32)
!860 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !856, file: !857, line: 37, baseType: !321, size: 32, offset: 32)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !856, file: !857, line: 38, baseType: !862, size: 64, offset: 64)
!862 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !863, size: 64)
!863 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !857, line: 23, flags: DIFlagFwdDecl)
!864 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !443, file: !444, line: 992, baseType: !300, size: 64, offset: 10112)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !443, file: !444, line: 993, baseType: !300, size: 64, offset: 10176)
!866 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !443, file: !444, line: 996, baseType: !142, offset: 10240)
!867 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !443, file: !444, line: 999, baseType: !346, offset: 10240)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !443, file: !444, line: 1001, baseType: !869, size: 64, offset: 10240)
!869 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !444, line: 636, size: 64, elements: !870)
!870 = !{!871}
!871 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !869, file: !444, line: 637, baseType: !872, size: 64)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !869, size: 64)
!873 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !443, file: !444, line: 1005, baseType: !579, size: 128, offset: 10304)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !443, file: !444, line: 1007, baseType: !442, size: 64, offset: 10432)
!875 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !443, file: !444, line: 1009, baseType: !876, size: 64, offset: 10496)
!876 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !877, size: 64)
!877 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !444, line: 1009, flags: DIFlagFwdDecl)
!878 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !443, file: !444, line: 1043, baseType: !79, size: 64, offset: 10560)
!879 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !443, file: !444, line: 1046, baseType: !880, size: 64, offset: 10624)
!880 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !881, size: 64)
!881 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !444, line: 41, flags: DIFlagFwdDecl)
!882 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !443, file: !444, line: 1050, baseType: !883, size: 64, offset: 10688)
!883 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !884, size: 64)
!884 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !444, line: 42, flags: DIFlagFwdDecl)
!885 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !443, file: !444, line: 1054, baseType: !886, size: 64, offset: 10752)
!886 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !887, size: 64)
!887 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !444, line: 55, flags: DIFlagFwdDecl)
!888 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !443, file: !444, line: 1056, baseType: !889, size: 64, offset: 10816)
!889 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !890, size: 64)
!890 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !444, line: 40, flags: DIFlagFwdDecl)
!891 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !443, file: !444, line: 1058, baseType: !892, size: 64, offset: 10880)
!892 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !893, size: 64)
!893 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !444, line: 47, flags: DIFlagFwdDecl)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !443, file: !444, line: 1061, baseType: !895, size: 64, offset: 10944)
!895 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !896, size: 64)
!896 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !444, line: 43, flags: DIFlagFwdDecl)
!897 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !443, file: !444, line: 1064, baseType: !97, size: 64, offset: 11008)
!898 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !443, file: !444, line: 1065, baseType: !899, size: 64, offset: 11072)
!899 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !900, size: 64)
!900 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !847, line: 14, baseType: !901)
!901 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !847, line: 12, size: 384, elements: !902)
!902 = !{!903}
!903 = !DIDerivedType(tag: DW_TAG_member, scope: !901, file: !847, line: 13, baseType: !904, size: 384)
!904 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !901, file: !847, line: 13, size: 384, elements: !905)
!905 = !{!906, !907, !908, !909}
!906 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !904, file: !847, line: 13, baseType: !102, size: 32)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !904, file: !847, line: 13, baseType: !102, size: 32, offset: 32)
!908 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !904, file: !847, line: 13, baseType: !102, size: 32, offset: 64)
!909 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !904, file: !847, line: 13, baseType: !910, size: 256, offset: 128)
!910 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !911, line: 32, size: 256, elements: !912)
!911 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!912 = !{!913, !919, !932, !938, !947, !967, !972}
!913 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !910, file: !911, line: 37, baseType: !914, size: 64)
!914 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 34, size: 64, elements: !915)
!915 = !{!916, !917}
!916 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !914, file: !911, line: 35, baseType: !698, size: 32)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !914, file: !911, line: 36, baseType: !918, size: 32, offset: 32)
!918 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !216, line: 49, baseType: !7)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !910, file: !911, line: 45, baseType: !920, size: 192)
!920 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 40, size: 192, elements: !921)
!921 = !{!922, !924, !925, !931}
!922 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !920, file: !911, line: 41, baseType: !923, size: 32)
!923 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !216, line: 95, baseType: !102)
!924 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !920, file: !911, line: 42, baseType: !102, size: 32, offset: 32)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !920, file: !911, line: 43, baseType: !926, size: 64, offset: 64)
!926 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !911, line: 11, baseType: !927)
!927 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !911, line: 8, size: 64, elements: !928)
!928 = !{!929, !930}
!929 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !927, file: !911, line: 9, baseType: !102, size: 32)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !927, file: !911, line: 10, baseType: !79, size: 64)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !920, file: !911, line: 44, baseType: !102, size: 32, offset: 128)
!932 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !910, file: !911, line: 52, baseType: !933, size: 128)
!933 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 48, size: 128, elements: !934)
!934 = !{!935, !936, !937}
!935 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !933, file: !911, line: 49, baseType: !698, size: 32)
!936 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !933, file: !911, line: 50, baseType: !918, size: 32, offset: 32)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !933, file: !911, line: 51, baseType: !926, size: 64, offset: 64)
!938 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !910, file: !911, line: 61, baseType: !939, size: 256)
!939 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 55, size: 256, elements: !940)
!940 = !{!941, !942, !943, !944, !946}
!941 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !939, file: !911, line: 56, baseType: !698, size: 32)
!942 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !939, file: !911, line: 57, baseType: !918, size: 32, offset: 32)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !939, file: !911, line: 58, baseType: !102, size: 32, offset: 64)
!944 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !939, file: !911, line: 59, baseType: !945, size: 64, offset: 128)
!945 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !216, line: 94, baseType: !217)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !939, file: !911, line: 60, baseType: !945, size: 64, offset: 192)
!947 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !910, file: !911, line: 95, baseType: !948, size: 256)
!948 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 64, size: 256, elements: !949)
!949 = !{!950, !951}
!950 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !948, file: !911, line: 65, baseType: !79, size: 64)
!951 = !DIDerivedType(tag: DW_TAG_member, scope: !948, file: !911, line: 77, baseType: !952, size: 192, offset: 64)
!952 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !948, file: !911, line: 77, size: 192, elements: !953)
!953 = !{!954, !955, !962}
!954 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !952, file: !911, line: 82, baseType: !431, size: 16)
!955 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !952, file: !911, line: 88, baseType: !956, size: 192)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !911, line: 84, size: 192, elements: !957)
!957 = !{!958, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !956, file: !911, line: 85, baseType: !959, size: 64)
!959 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 64, elements: !558)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !956, file: !911, line: 86, baseType: !79, size: 64, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !956, file: !911, line: 87, baseType: !79, size: 64, offset: 128)
!962 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !952, file: !911, line: 93, baseType: !963, size: 96)
!963 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !952, file: !911, line: 90, size: 96, elements: !964)
!964 = !{!965, !966}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !963, file: !911, line: 91, baseType: !959, size: 64)
!966 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !963, file: !911, line: 92, baseType: !453, size: 32, offset: 64)
!967 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !910, file: !911, line: 101, baseType: !968, size: 128)
!968 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 98, size: 128, elements: !969)
!969 = !{!970, !971}
!970 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !968, file: !911, line: 99, baseType: !218, size: 64)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !968, file: !911, line: 100, baseType: !102, size: 32, offset: 64)
!972 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !910, file: !911, line: 108, baseType: !973, size: 128)
!973 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !910, file: !911, line: 104, size: 128, elements: !974)
!974 = !{!975, !976, !977}
!975 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !973, file: !911, line: 105, baseType: !79, size: 64)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !973, file: !911, line: 106, baseType: !102, size: 32, offset: 64)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !973, file: !911, line: 107, baseType: !7, size: 32, offset: 96)
!978 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !443, file: !444, line: 1067, baseType: !979, offset: 11136)
!979 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !980, line: 12, elements: !156)
!980 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!981 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !443, file: !444, line: 1099, baseType: !982, size: 64, offset: 11136)
!982 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !983, size: 64)
!983 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !444, line: 56, flags: DIFlagFwdDecl)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !443, file: !444, line: 1103, baseType: !129, size: 128, offset: 11200)
!985 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !443, file: !444, line: 1104, baseType: !986, size: 64, offset: 11328)
!986 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !987, size: 64)
!987 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !444, line: 46, flags: DIFlagFwdDecl)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !443, file: !444, line: 1105, baseType: !398, size: 192, offset: 11392)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !443, file: !444, line: 1106, baseType: !7, size: 32, offset: 11584)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !443, file: !444, line: 1109, baseType: !991, size: 128, offset: 11648)
!991 = !DICompositeType(tag: DW_TAG_array_type, baseType: !992, size: 128, elements: !994)
!992 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !993, size: 64)
!993 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !444, line: 51, flags: DIFlagFwdDecl)
!994 = !{!995}
!995 = !DISubrange(count: 2)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !443, file: !444, line: 1110, baseType: !398, size: 192, offset: 11776)
!997 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !443, file: !444, line: 1111, baseType: !129, size: 128, offset: 11968)
!998 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !443, file: !444, line: 1173, baseType: !999, size: 64, offset: 12096)
!999 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1000, size: 64)
!1000 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1001, line: 62, size: 256, align: 256, elements: !1002)
!1001 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1002 = !{!1003, !1004, !1005, !1010}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1000, file: !1001, line: 75, baseType: !453, size: 32)
!1004 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1000, file: !1001, line: 90, baseType: !453, size: 32, offset: 32)
!1005 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1000, file: !1001, line: 124, baseType: !1006, size: 64, offset: 64)
!1006 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1000, file: !1001, line: 109, size: 64, elements: !1007)
!1007 = !{!1008, !1009}
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1006, file: !1001, line: 110, baseType: !302, size: 64)
!1009 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1006, file: !1001, line: 112, baseType: !302, size: 64)
!1010 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1000, file: !1001, line: 144, baseType: !453, size: 32, offset: 128)
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !443, file: !444, line: 1174, baseType: !452, size: 32, offset: 12160)
!1012 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !443, file: !444, line: 1179, baseType: !97, size: 64, offset: 12224)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !443, file: !444, line: 1182, baseType: !1014, size: 128, offset: 12288)
!1014 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !376, line: 76, size: 128, elements: !1015)
!1015 = !{!1016, !1021, !1024}
!1016 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1014, file: !376, line: 85, baseType: !1017, size: 64)
!1017 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1018, line: 7, size: 64, elements: !1019)
!1018 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1019 = !{!1020}
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1017, file: !1018, line: 12, baseType: !605, size: 64)
!1021 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1014, file: !376, line: 88, baseType: !1022, size: 8, offset: 64)
!1022 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !78, line: 30, baseType: !1023)
!1023 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1014, file: !376, line: 95, baseType: !1022, size: 8, offset: 72)
!1025 = !DIDerivedType(tag: DW_TAG_member, scope: !443, file: !444, line: 1184, baseType: !1026, size: 128, offset: 12416)
!1026 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !443, file: !444, line: 1184, size: 128, elements: !1027)
!1027 = !{!1028, !1029}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1026, file: !444, line: 1185, baseType: !458, size: 32)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1026, file: !444, line: 1186, baseType: !736, size: 128, align: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !443, file: !444, line: 1190, baseType: !1031, size: 64, offset: 12544)
!1031 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1032, size: 64)
!1032 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !444, line: 53, flags: DIFlagFwdDecl)
!1033 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !443, file: !444, line: 1192, baseType: !1034, size: 128, offset: 12608)
!1034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !376, line: 64, size: 128, elements: !1035)
!1035 = !{!1036, !1129, !1130}
!1036 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1034, file: !376, line: 65, baseType: !1037, size: 64)
!1037 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1038, size: 64)
!1038 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !272, line: 68, size: 512, align: 128, elements: !1039)
!1039 = !{!1040, !1041, !1121, !1128}
!1040 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1038, file: !272, line: 69, baseType: !97, size: 64)
!1041 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !272, line: 77, baseType: !1042, size: 320, offset: 64)
!1042 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !272, line: 77, size: 320, elements: !1043)
!1043 = !{!1044, !1053, !1058, !1086, !1094, !1100, !1113, !1120}
!1044 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 78, baseType: !1045, size: 320)
!1045 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 78, size: 320, elements: !1046)
!1046 = !{!1047, !1048, !1051, !1052}
!1047 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1045, file: !272, line: 84, baseType: !129, size: 128)
!1048 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1045, file: !272, line: 86, baseType: !1049, size: 64, offset: 128)
!1049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1050, size: 64)
!1050 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !272, line: 26, flags: DIFlagFwdDecl)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1045, file: !272, line: 87, baseType: !97, size: 64, offset: 192)
!1052 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1045, file: !272, line: 94, baseType: !97, size: 64, offset: 256)
!1053 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 96, baseType: !1054, size: 64)
!1054 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 96, size: 64, elements: !1055)
!1055 = !{!1056}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1054, file: !272, line: 101, baseType: !1057, size: 64)
!1057 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !78, line: 143, baseType: !300)
!1058 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 103, baseType: !1059, size: 320)
!1059 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 103, size: 320, elements: !1060)
!1060 = !{!1061, !1071, !1074, !1075}
!1061 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !272, line: 104, baseType: !1062, size: 128)
!1062 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !272, line: 104, size: 128, elements: !1063)
!1063 = !{!1064, !1065}
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1062, file: !272, line: 105, baseType: !129, size: 128)
!1065 = !DIDerivedType(tag: DW_TAG_member, scope: !1062, file: !272, line: 106, baseType: !1066, size: 128)
!1066 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1062, file: !272, line: 106, size: 128, elements: !1067)
!1067 = !{!1068, !1069, !1070}
!1068 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1066, file: !272, line: 107, baseType: !1037, size: 64)
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1066, file: !272, line: 109, baseType: !102, size: 32, offset: 64)
!1070 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1066, file: !272, line: 110, baseType: !102, size: 32, offset: 96)
!1071 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1059, file: !272, line: 117, baseType: !1072, size: 64, offset: 128)
!1072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1073, size: 64)
!1073 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !272, line: 117, flags: DIFlagFwdDecl)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1059, file: !272, line: 119, baseType: !79, size: 64, offset: 192)
!1075 = !DIDerivedType(tag: DW_TAG_member, scope: !1059, file: !272, line: 120, baseType: !1076, size: 64, offset: 256)
!1076 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1059, file: !272, line: 120, size: 64, elements: !1077)
!1077 = !{!1078, !1079, !1080}
!1078 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1076, file: !272, line: 121, baseType: !79, size: 64)
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1076, file: !272, line: 122, baseType: !97, size: 64)
!1080 = !DIDerivedType(tag: DW_TAG_member, scope: !1076, file: !272, line: 123, baseType: !1081, size: 32)
!1081 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1076, file: !272, line: 123, size: 32, elements: !1082)
!1082 = !{!1083, !1084, !1085}
!1083 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1081, file: !272, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1081, file: !272, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1085 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1081, file: !272, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1086 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 130, baseType: !1087, size: 192)
!1087 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 130, size: 192, elements: !1088)
!1088 = !{!1089, !1090, !1091, !1092, !1093}
!1089 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1087, file: !272, line: 131, baseType: !97, size: 64)
!1090 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1087, file: !272, line: 134, baseType: !591, size: 8, offset: 64)
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1087, file: !272, line: 135, baseType: !591, size: 8, offset: 72)
!1092 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1087, file: !272, line: 136, baseType: !321, size: 32, offset: 96)
!1093 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1087, file: !272, line: 137, baseType: !7, size: 32, offset: 128)
!1094 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 139, baseType: !1095, size: 256)
!1095 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 139, size: 256, elements: !1096)
!1096 = !{!1097, !1098, !1099}
!1097 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1095, file: !272, line: 140, baseType: !97, size: 64)
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1095, file: !272, line: 141, baseType: !321, size: 32, offset: 64)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1095, file: !272, line: 143, baseType: !129, size: 128, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 145, baseType: !1101, size: 256)
!1101 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 145, size: 256, elements: !1102)
!1102 = !{!1103, !1104, !1106, !1107, !1112}
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1101, file: !272, line: 146, baseType: !97, size: 64)
!1104 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1101, file: !272, line: 147, baseType: !1105, size: 64, offset: 64)
!1105 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !261, line: 509, baseType: !1037)
!1106 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1101, file: !272, line: 148, baseType: !97, size: 64, offset: 128)
!1107 = !DIDerivedType(tag: DW_TAG_member, scope: !1101, file: !272, line: 149, baseType: !1108, size: 64, offset: 192)
!1108 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1101, file: !272, line: 149, size: 64, elements: !1109)
!1109 = !{!1110, !1111}
!1110 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1108, file: !272, line: 150, baseType: !288, size: 64)
!1111 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1108, file: !272, line: 151, baseType: !321, size: 32)
!1112 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1101, file: !272, line: 156, baseType: !142, offset: 256)
!1113 = !DIDerivedType(tag: DW_TAG_member, scope: !1042, file: !272, line: 159, baseType: !1114, size: 128)
!1114 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1042, file: !272, line: 159, size: 128, elements: !1115)
!1115 = !{!1116, !1119}
!1116 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1114, file: !272, line: 161, baseType: !1117, size: 64)
!1117 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1118, size: 64)
!1118 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !272, line: 161, flags: DIFlagFwdDecl)
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1114, file: !272, line: 162, baseType: !79, size: 64, offset: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1042, file: !272, line: 176, baseType: !736, size: 128, align: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, scope: !1038, file: !272, line: 179, baseType: !1122, size: 32, offset: 384)
!1122 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1038, file: !272, line: 179, size: 32, elements: !1123)
!1123 = !{!1124, !1125, !1126, !1127}
!1124 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1122, file: !272, line: 184, baseType: !321, size: 32)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1122, file: !272, line: 192, baseType: !7, size: 32)
!1126 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1122, file: !272, line: 194, baseType: !7, size: 32)
!1127 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1122, file: !272, line: 195, baseType: !102, size: 32)
!1128 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1038, file: !272, line: 199, baseType: !321, size: 32, offset: 416)
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1034, file: !376, line: 67, baseType: !453, size: 32, offset: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1034, file: !376, line: 68, baseType: !453, size: 32, offset: 96)
!1131 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !443, file: !444, line: 1206, baseType: !102, size: 32, offset: 12736)
!1132 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !443, file: !444, line: 1207, baseType: !102, size: 32, offset: 12768)
!1133 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !443, file: !444, line: 1209, baseType: !97, size: 64, offset: 12800)
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !443, file: !444, line: 1219, baseType: !300, size: 64, offset: 12864)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !443, file: !444, line: 1220, baseType: !300, size: 64, offset: 12928)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !443, file: !444, line: 1317, baseType: !102, size: 32, offset: 12992)
!1137 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !443, file: !444, line: 1319, baseType: !442, size: 64, offset: 13056)
!1138 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !443, file: !444, line: 1322, baseType: !1139, size: 64, offset: 13120)
!1139 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1140, size: 64)
!1140 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1141, line: 56, size: 512, elements: !1142)
!1141 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1142 = !{!1143, !1144, !1145, !1146, !1147, !1149, !1150, !1152}
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1140, file: !1141, line: 57, baseType: !1139, size: 64)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1140, file: !1141, line: 58, baseType: !79, size: 64, offset: 64)
!1145 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1140, file: !1141, line: 59, baseType: !97, size: 64, offset: 128)
!1146 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1140, file: !1141, line: 60, baseType: !97, size: 64, offset: 192)
!1147 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1140, file: !1141, line: 61, baseType: !1148, size: 64, offset: 256)
!1148 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1037, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1140, file: !1141, line: 62, baseType: !7, size: 32, offset: 320)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1140, file: !1141, line: 63, baseType: !1151, size: 64, offset: 384)
!1151 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !78, line: 153, baseType: !300)
!1152 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1140, file: !1141, line: 64, baseType: !1153, size: 64, offset: 448)
!1153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1154, size: 64)
!1154 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !443, file: !444, line: 1326, baseType: !458, size: 32, offset: 13184)
!1156 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !443, file: !444, line: 1342, baseType: !79, size: 64, offset: 13248)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !443, file: !444, line: 1343, baseType: !302, size: 64, offset: 13312)
!1158 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !443, file: !444, line: 1344, baseType: !300, size: 64, offset: 13376)
!1159 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !443, file: !444, line: 1345, baseType: !302, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1160 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !443, file: !444, line: 1346, baseType: !302, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !443, file: !444, line: 1347, baseType: !302, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !443, file: !444, line: 1348, baseType: !736, size: 128, align: 64, offset: 13504)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !443, file: !444, line: 1358, baseType: !1164, size: 34816, offset: 13824)
!1164 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1165, line: 485, size: 34816, elements: !1166)
!1165 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1166 = !{!1167, !1185, !1186, !1187, !1188, !1189, !1190, !1191, !1192, !1196, !1197, !1198, !1199, !1200, !1201, !1204, !1205, !1206}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1164, file: !1165, line: 487, baseType: !1168, size: 192)
!1168 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1169, size: 192, elements: !184)
!1169 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1170, line: 16, size: 64, elements: !1171)
!1170 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1171 = !{!1172, !1173, !1174, !1175, !1176, !1177, !1178, !1179, !1180, !1181, !1182, !1183, !1184}
!1172 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1169, file: !1170, line: 17, baseType: !427, size: 16)
!1173 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1169, file: !1170, line: 18, baseType: !427, size: 16, offset: 16)
!1174 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1169, file: !1170, line: 19, baseType: !427, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1169, file: !1170, line: 19, baseType: !427, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1169, file: !1170, line: 19, baseType: !427, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1169, file: !1170, line: 19, baseType: !427, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1169, file: !1170, line: 19, baseType: !427, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1169, file: !1170, line: 20, baseType: !427, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1169, file: !1170, line: 20, baseType: !427, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1169, file: !1170, line: 20, baseType: !427, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1169, file: !1170, line: 20, baseType: !427, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1169, file: !1170, line: 20, baseType: !427, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1169, file: !1170, line: 20, baseType: !427, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1164, file: !1165, line: 491, baseType: !97, size: 64, offset: 192)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1164, file: !1165, line: 495, baseType: !93, size: 16, offset: 256)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1164, file: !1165, line: 496, baseType: !93, size: 16, offset: 272)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1164, file: !1165, line: 497, baseType: !93, size: 16, offset: 288)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1164, file: !1165, line: 498, baseType: !93, size: 16, offset: 304)
!1190 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1164, file: !1165, line: 502, baseType: !97, size: 64, offset: 320)
!1191 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1164, file: !1165, line: 503, baseType: !97, size: 64, offset: 384)
!1192 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1164, file: !1165, line: 514, baseType: !1193, size: 256, offset: 448)
!1193 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1194, size: 256, elements: !380)
!1194 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1195, size: 64)
!1195 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1165, line: 483, flags: DIFlagFwdDecl)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1164, file: !1165, line: 516, baseType: !97, size: 64, offset: 704)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1164, file: !1165, line: 518, baseType: !97, size: 64, offset: 768)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1164, file: !1165, line: 520, baseType: !97, size: 64, offset: 832)
!1199 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1164, file: !1165, line: 521, baseType: !97, size: 64, offset: 896)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1164, file: !1165, line: 522, baseType: !97, size: 64, offset: 960)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1164, file: !1165, line: 528, baseType: !1202, size: 64, offset: 1024)
!1202 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1203, size: 64)
!1203 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1165, line: 10, flags: DIFlagFwdDecl)
!1204 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1164, file: !1165, line: 535, baseType: !97, size: 64, offset: 1088)
!1205 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1164, file: !1165, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1164, file: !1165, line: 540, baseType: !1207, size: 33280, offset: 1536)
!1207 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1208, line: 317, size: 33280, elements: !1209)
!1208 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1209 = !{!1210, !1211, !1212}
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1207, file: !1208, line: 330, baseType: !7, size: 32)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1207, file: !1208, line: 337, baseType: !97, size: 64, offset: 64)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1207, file: !1208, line: 348, baseType: !1213, size: 32768, offset: 512)
!1213 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1208, line: 304, size: 32768, elements: !1214)
!1214 = !{!1215, !1230, !1269, !1319, !1336}
!1215 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1213, file: !1208, line: 305, baseType: !1216, size: 896)
!1216 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1208, line: 12, size: 896, elements: !1217)
!1217 = !{!1218, !1219, !1220, !1221, !1222, !1223, !1224, !1225, !1229}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1216, file: !1208, line: 13, baseType: !452, size: 32)
!1219 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1216, file: !1208, line: 14, baseType: !452, size: 32, offset: 32)
!1220 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1216, file: !1208, line: 15, baseType: !452, size: 32, offset: 64)
!1221 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1216, file: !1208, line: 16, baseType: !452, size: 32, offset: 96)
!1222 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1216, file: !1208, line: 17, baseType: !452, size: 32, offset: 128)
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1216, file: !1208, line: 18, baseType: !452, size: 32, offset: 160)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1216, file: !1208, line: 19, baseType: !452, size: 32, offset: 192)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1216, file: !1208, line: 22, baseType: !1226, size: 640, offset: 224)
!1226 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 640, elements: !1227)
!1227 = !{!1228}
!1228 = !DISubrange(count: 20)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1216, file: !1208, line: 25, baseType: !452, size: 32, offset: 864)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1213, file: !1208, line: 306, baseType: !1231, size: 4096, align: 128)
!1231 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1208, line: 34, size: 4096, align: 128, elements: !1232)
!1232 = !{!1233, !1234, !1235, !1236, !1237, !1252, !1253, !1254, !1258, !1260, !1264}
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1231, file: !1208, line: 35, baseType: !427, size: 16)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1231, file: !1208, line: 36, baseType: !427, size: 16, offset: 16)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1231, file: !1208, line: 37, baseType: !427, size: 16, offset: 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1231, file: !1208, line: 38, baseType: !427, size: 16, offset: 48)
!1237 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1208, line: 39, baseType: !1238, size: 128, offset: 64)
!1238 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !1208, line: 39, size: 128, elements: !1239)
!1239 = !{!1240, !1245}
!1240 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1208, line: 40, baseType: !1241, size: 128)
!1241 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !1208, line: 40, size: 128, elements: !1242)
!1242 = !{!1243, !1244}
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1241, file: !1208, line: 41, baseType: !300, size: 64)
!1244 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1241, file: !1208, line: 42, baseType: !300, size: 64, offset: 64)
!1245 = !DIDerivedType(tag: DW_TAG_member, scope: !1238, file: !1208, line: 44, baseType: !1246, size: 128)
!1246 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1238, file: !1208, line: 44, size: 128, elements: !1247)
!1247 = !{!1248, !1249, !1250, !1251}
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1246, file: !1208, line: 45, baseType: !452, size: 32)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1246, file: !1208, line: 46, baseType: !452, size: 32, offset: 32)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1246, file: !1208, line: 47, baseType: !452, size: 32, offset: 64)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1246, file: !1208, line: 48, baseType: !452, size: 32, offset: 96)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1231, file: !1208, line: 51, baseType: !452, size: 32, offset: 192)
!1253 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1231, file: !1208, line: 52, baseType: !452, size: 32, offset: 224)
!1254 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1231, file: !1208, line: 55, baseType: !1255, size: 1024, offset: 256)
!1255 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 1024, elements: !1256)
!1256 = !{!1257}
!1257 = !DISubrange(count: 32)
!1258 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1231, file: !1208, line: 58, baseType: !1259, size: 2048, offset: 1280)
!1259 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 2048, elements: !188)
!1260 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1231, file: !1208, line: 60, baseType: !1261, size: 384, offset: 3328)
!1261 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 384, elements: !1262)
!1262 = !{!1263}
!1263 = !DISubrange(count: 12)
!1264 = !DIDerivedType(tag: DW_TAG_member, scope: !1231, file: !1208, line: 62, baseType: !1265, size: 384, offset: 3712)
!1265 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1231, file: !1208, line: 62, size: 384, elements: !1266)
!1266 = !{!1267, !1268}
!1267 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1265, file: !1208, line: 63, baseType: !1261, size: 384)
!1268 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1265, file: !1208, line: 64, baseType: !1261, size: 384)
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1213, file: !1208, line: 307, baseType: !1270, size: 1088)
!1270 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1208, line: 79, size: 1088, elements: !1271)
!1271 = !{!1272, !1273, !1274, !1275, !1276, !1277, !1278, !1279, !1280, !1281, !1282, !1283, !1284, !1285, !1286, !1318}
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1270, file: !1208, line: 80, baseType: !452, size: 32)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1270, file: !1208, line: 81, baseType: !452, size: 32, offset: 32)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1270, file: !1208, line: 82, baseType: !452, size: 32, offset: 64)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1270, file: !1208, line: 83, baseType: !452, size: 32, offset: 96)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1270, file: !1208, line: 84, baseType: !452, size: 32, offset: 128)
!1277 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1270, file: !1208, line: 85, baseType: !452, size: 32, offset: 160)
!1278 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1270, file: !1208, line: 86, baseType: !452, size: 32, offset: 192)
!1279 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1270, file: !1208, line: 88, baseType: !1226, size: 640, offset: 224)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1270, file: !1208, line: 89, baseType: !589, size: 8, offset: 864)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1270, file: !1208, line: 90, baseType: !589, size: 8, offset: 872)
!1282 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1270, file: !1208, line: 91, baseType: !589, size: 8, offset: 880)
!1283 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1270, file: !1208, line: 92, baseType: !589, size: 8, offset: 888)
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1270, file: !1208, line: 93, baseType: !589, size: 8, offset: 896)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1270, file: !1208, line: 94, baseType: !589, size: 8, offset: 904)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1270, file: !1208, line: 95, baseType: !1287, size: 64, offset: 960)
!1287 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1288, size: 64)
!1288 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1289, line: 11, size: 128, elements: !1290)
!1289 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1290 = !{!1291, !1292}
!1291 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1288, file: !1289, line: 12, baseType: !218, size: 64)
!1292 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1288, file: !1289, line: 13, baseType: !1293, size: 64, offset: 64)
!1293 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1294, size: 64)
!1294 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1295, line: 56, size: 1344, elements: !1296)
!1295 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1296 = !{!1297, !1298, !1299, !1300, !1301, !1302, !1303, !1304, !1305, !1306, !1307, !1308, !1309, !1310, !1311, !1312, !1313, !1314, !1315, !1316, !1317}
!1297 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1294, file: !1295, line: 61, baseType: !97, size: 64)
!1298 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1294, file: !1295, line: 62, baseType: !97, size: 64, offset: 64)
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1294, file: !1295, line: 63, baseType: !97, size: 64, offset: 128)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1294, file: !1295, line: 64, baseType: !97, size: 64, offset: 192)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1294, file: !1295, line: 65, baseType: !97, size: 64, offset: 256)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1294, file: !1295, line: 66, baseType: !97, size: 64, offset: 320)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1294, file: !1295, line: 68, baseType: !97, size: 64, offset: 384)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1294, file: !1295, line: 69, baseType: !97, size: 64, offset: 448)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1294, file: !1295, line: 70, baseType: !97, size: 64, offset: 512)
!1306 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1294, file: !1295, line: 71, baseType: !97, size: 64, offset: 576)
!1307 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1294, file: !1295, line: 72, baseType: !97, size: 64, offset: 640)
!1308 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1294, file: !1295, line: 73, baseType: !97, size: 64, offset: 704)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1294, file: !1295, line: 74, baseType: !97, size: 64, offset: 768)
!1310 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1294, file: !1295, line: 75, baseType: !97, size: 64, offset: 832)
!1311 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1294, file: !1295, line: 76, baseType: !97, size: 64, offset: 896)
!1312 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1294, file: !1295, line: 81, baseType: !97, size: 64, offset: 960)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1294, file: !1295, line: 83, baseType: !97, size: 64, offset: 1024)
!1314 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1294, file: !1295, line: 84, baseType: !97, size: 64, offset: 1088)
!1315 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1294, file: !1295, line: 85, baseType: !97, size: 64, offset: 1152)
!1316 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1294, file: !1295, line: 86, baseType: !97, size: 64, offset: 1216)
!1317 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1294, file: !1295, line: 87, baseType: !97, size: 64, offset: 1280)
!1318 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1270, file: !1208, line: 96, baseType: !452, size: 32, offset: 1024)
!1319 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1213, file: !1208, line: 308, baseType: !1320, size: 4608, align: 512)
!1320 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1208, line: 289, size: 4608, align: 512, elements: !1321)
!1321 = !{!1322, !1323, !1332}
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1320, file: !1208, line: 290, baseType: !1231, size: 4096, align: 128)
!1323 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1320, file: !1208, line: 291, baseType: !1324, size: 512, offset: 4096)
!1324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1208, line: 268, size: 512, elements: !1325)
!1325 = !{!1326, !1327, !1328}
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1324, file: !1208, line: 269, baseType: !300, size: 64)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1324, file: !1208, line: 270, baseType: !300, size: 64, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1324, file: !1208, line: 271, baseType: !1329, size: 384, offset: 128)
!1329 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 384, elements: !1330)
!1330 = !{!1331}
!1331 = !DISubrange(count: 6)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1320, file: !1208, line: 292, baseType: !1333, offset: 4608)
!1333 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, elements: !1334)
!1334 = !{!1335}
!1335 = !DISubrange(count: 0)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1213, file: !1208, line: 309, baseType: !1337, size: 32768)
!1337 = !DICompositeType(tag: DW_TAG_array_type, baseType: !589, size: 32768, elements: !1338)
!1338 = !{!1339}
!1339 = !DISubrange(count: 4096)
!1340 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !439, file: !272, line: 378, baseType: !1341, size: 64, offset: 64)
!1341 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !439, size: 64)
!1342 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !435, file: !272, line: 384, baseType: !758, size: 192, offset: 192)
!1343 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !292, file: !272, line: 500, baseType: !142, offset: 6656)
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !292, file: !272, line: 501, baseType: !1345, size: 64, offset: 6656)
!1345 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1346, size: 64)
!1346 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !272, line: 387, flags: DIFlagFwdDecl)
!1347 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !292, file: !272, line: 516, baseType: !1348, size: 64, offset: 6720)
!1348 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1349, size: 64)
!1349 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !1350, line: 18, flags: DIFlagFwdDecl)
!1350 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !292, file: !272, line: 519, baseType: !259, size: 64, offset: 6784)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !292, file: !272, line: 521, baseType: !1353, size: 64, offset: 6848)
!1353 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1354, size: 64)
!1354 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !272, line: 521, flags: DIFlagFwdDecl)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !292, file: !272, line: 545, baseType: !321, size: 32, offset: 6912)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !292, file: !272, line: 548, baseType: !1022, size: 8, offset: 6944)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !292, file: !272, line: 550, baseType: !1358, offset: 6952)
!1358 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !1359, line: 142, elements: !156)
!1359 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !292, file: !272, line: 554, baseType: !1361, size: 256, offset: 6976)
!1361 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !1362, line: 102, size: 256, elements: !1363)
!1362 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!1363 = !{!1364, !1365, !1366}
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1361, file: !1362, line: 103, baseType: !329, size: 64)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1361, file: !1362, line: 104, baseType: !129, size: 128, offset: 64)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !1361, file: !1362, line: 105, baseType: !1367, size: 64, offset: 192)
!1367 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !1362, line: 21, baseType: !1368)
!1368 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1369, size: 64)
!1369 = !DISubroutineType(types: !1370)
!1370 = !{null, !1371}
!1371 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1361, size: 64)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !292, file: !272, line: 557, baseType: !452, size: 32, offset: 7232)
!1373 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !289, file: !272, line: 565, baseType: !1374, offset: 7296)
!1374 = !DICompositeType(tag: DW_TAG_array_type, baseType: !97, elements: !1375)
!1375 = !{!1376}
!1376 = !DISubrange(count: -1)
!1377 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !271, file: !272, line: 333, baseType: !1378, size: 64, offset: 576)
!1378 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !261, line: 284, baseType: !1379)
!1379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !261, line: 284, size: 64, elements: !1380)
!1380 = !{!1381}
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !1379, file: !261, line: 284, baseType: !1382, size: 64)
!1382 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !319, line: 19, baseType: !97)
!1383 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !271, file: !272, line: 334, baseType: !97, size: 64, offset: 640)
!1384 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !271, file: !272, line: 343, baseType: !1385, size: 256, offset: 704)
!1385 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !271, file: !272, line: 340, size: 256, elements: !1386)
!1386 = !{!1387, !1388}
!1387 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1385, file: !272, line: 341, baseType: !279, size: 192, align: 64)
!1388 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !1385, file: !272, line: 342, baseType: !97, size: 64, offset: 192)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !271, file: !272, line: 351, baseType: !129, size: 128, offset: 960)
!1390 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !271, file: !272, line: 353, baseType: !1391, size: 64, offset: 1088)
!1391 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1392, size: 64)
!1392 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !272, line: 353, flags: DIFlagFwdDecl)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !271, file: !272, line: 356, baseType: !1394, size: 64, offset: 1152)
!1394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1395, size: 64)
!1395 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1396)
!1396 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !272, line: 356, flags: DIFlagFwdDecl)
!1397 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !271, file: !272, line: 359, baseType: !97, size: 64, offset: 1216)
!1398 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !271, file: !272, line: 361, baseType: !259, size: 64, offset: 1280)
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !271, file: !272, line: 362, baseType: !79, size: 64, offset: 1344)
!1400 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !271, file: !272, line: 365, baseType: !329, size: 64, offset: 1408)
!1401 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !271, file: !272, line: 373, baseType: !1402, offset: 1472)
!1402 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !272, line: 296, elements: !156)
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !238, file: !208, line: 90, baseType: !233, size: 64, offset: 192)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !238, file: !208, line: 91, baseType: !1405, size: 64, offset: 256)
!1405 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !249, size: 64)
!1406 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !198, file: !122, line: 143, baseType: !1407, size: 64, offset: 256)
!1407 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1408, size: 64)
!1408 = !DISubroutineType(types: !1409)
!1409 = !{!1410, !135}
!1410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1411, size: 64)
!1411 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1412)
!1412 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1413)
!1413 = !{!1414, !1415, !1419, !1423, !1429, !1433}
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1412, file: !18, line: 40, baseType: !17, size: 32)
!1415 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1412, file: !18, line: 41, baseType: !1416, size: 64, offset: 64)
!1416 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1417, size: 64)
!1417 = !DISubroutineType(types: !1418)
!1418 = !{!1022}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1412, file: !18, line: 42, baseType: !1420, size: 64, offset: 128)
!1420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1421, size: 64)
!1421 = !DISubroutineType(types: !1422)
!1422 = !{!79}
!1423 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1412, file: !18, line: 43, baseType: !1424, size: 64, offset: 192)
!1424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1425, size: 64)
!1425 = !DISubroutineType(types: !1426)
!1426 = !{!1153, !1427}
!1427 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1428, size: 64)
!1428 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1412, file: !18, line: 44, baseType: !1430, size: 64, offset: 256)
!1430 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1431, size: 64)
!1431 = !DISubroutineType(types: !1432)
!1432 = !{!1153}
!1433 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1412, file: !18, line: 45, baseType: !1434, size: 64, offset: 320)
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = !DISubroutineType(types: !1436)
!1436 = !{null, !79}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !198, file: !122, line: 144, baseType: !1438, size: 64, offset: 320)
!1438 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1439, size: 64)
!1439 = !DISubroutineType(types: !1440)
!1440 = !{!1153, !135}
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !198, file: !122, line: 145, baseType: !1442, size: 64, offset: 384)
!1442 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1443, size: 64)
!1443 = !DISubroutineType(types: !1444)
!1444 = !{null, !135, !1445, !1451}
!1445 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1446, size: 64)
!1446 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1350, line: 23, baseType: !1447)
!1447 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 21, size: 32, elements: !1448)
!1448 = !{!1449}
!1449 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1447, file: !1350, line: 22, baseType: !1450, size: 32)
!1450 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !78, line: 32, baseType: !918)
!1451 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1350, line: 28, baseType: !1453)
!1453 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1350, line: 26, size: 32, elements: !1454)
!1454 = !{!1455}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1453, file: !1350, line: 27, baseType: !1456, size: 32)
!1456 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !78, line: 33, baseType: !1457)
!1457 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !216, line: 50, baseType: !7)
!1458 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !121, file: !122, line: 70, baseType: !1459, size: 64, offset: 384)
!1459 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1460, size: 64)
!1460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1461, line: 123, size: 1024, elements: !1462)
!1461 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1462 = !{!1463, !1464, !1465, !1466, !1467, !1468, !1469, !1470, !1604, !1605, !1606, !1607, !1608}
!1463 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1460, file: !1461, line: 124, baseType: !321, size: 32)
!1464 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1460, file: !1461, line: 125, baseType: !321, size: 32, offset: 32)
!1465 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1460, file: !1461, line: 135, baseType: !1459, size: 64, offset: 64)
!1466 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1460, file: !1461, line: 136, baseType: !125, size: 64, offset: 128)
!1467 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1460, file: !1461, line: 138, baseType: !279, size: 192, align: 64, offset: 192)
!1468 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1460, file: !1461, line: 140, baseType: !1153, size: 64, offset: 384)
!1469 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1460, file: !1461, line: 141, baseType: !7, size: 32, offset: 448)
!1470 = !DIDerivedType(tag: DW_TAG_member, scope: !1460, file: !1461, line: 142, baseType: !1471, size: 256, offset: 512)
!1471 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1460, file: !1461, line: 142, size: 256, elements: !1472)
!1472 = !{!1473, !1527, !1531}
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1471, file: !1461, line: 143, baseType: !1474, size: 192)
!1474 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1461, line: 91, size: 192, elements: !1475)
!1475 = !{!1476, !1477, !1478}
!1476 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1474, file: !1461, line: 92, baseType: !97, size: 64)
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1474, file: !1461, line: 94, baseType: !296, size: 64, offset: 64)
!1478 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1474, file: !1461, line: 100, baseType: !1479, size: 64, offset: 128)
!1479 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1480, size: 64)
!1480 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1461, line: 180, size: 704, elements: !1481)
!1481 = !{!1482, !1483, !1484, !1497, !1498, !1499, !1525, !1526}
!1482 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1480, file: !1461, line: 182, baseType: !1459, size: 64)
!1483 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1480, file: !1461, line: 183, baseType: !7, size: 32, offset: 64)
!1484 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1480, file: !1461, line: 186, baseType: !1485, size: 192, offset: 128)
!1485 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1486, line: 19, size: 192, elements: !1487)
!1486 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1487 = !{!1488, !1495, !1496}
!1488 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1485, file: !1486, line: 20, baseType: !1489, size: 128)
!1489 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1490, line: 292, size: 128, elements: !1491)
!1490 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1491 = !{!1492, !1493, !1494}
!1492 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1489, file: !1490, line: 293, baseType: !142)
!1493 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1489, file: !1490, line: 295, baseType: !77, size: 32)
!1494 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1489, file: !1490, line: 296, baseType: !79, size: 64, offset: 64)
!1495 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1485, file: !1486, line: 21, baseType: !7, size: 32, offset: 128)
!1496 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1485, file: !1486, line: 22, baseType: !7, size: 32, offset: 160)
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1480, file: !1461, line: 187, baseType: !452, size: 32, offset: 320)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1480, file: !1461, line: 188, baseType: !452, size: 32, offset: 352)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1480, file: !1461, line: 189, baseType: !1500, size: 64, offset: 384)
!1500 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1501, size: 64)
!1501 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1461, line: 168, size: 320, elements: !1502)
!1502 = !{!1503, !1509, !1513, !1517, !1521}
!1503 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1501, file: !1461, line: 169, baseType: !1504, size: 64)
!1504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1505, size: 64)
!1505 = !DISubroutineType(types: !1506)
!1506 = !{!102, !1507, !1479}
!1507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1508, size: 64)
!1508 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !261, line: 539, flags: DIFlagFwdDecl)
!1509 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1501, file: !1461, line: 171, baseType: !1510, size: 64, offset: 64)
!1510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1511, size: 64)
!1511 = !DISubroutineType(types: !1512)
!1512 = !{!102, !1459, !125, !224}
!1513 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1501, file: !1461, line: 173, baseType: !1514, size: 64, offset: 128)
!1514 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1515, size: 64)
!1515 = !DISubroutineType(types: !1516)
!1516 = !{!102, !1459}
!1517 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1501, file: !1461, line: 174, baseType: !1518, size: 64, offset: 192)
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DISubroutineType(types: !1520)
!1520 = !{!102, !1459, !1459, !125}
!1521 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1501, file: !1461, line: 176, baseType: !1522, size: 64, offset: 256)
!1522 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1523, size: 64)
!1523 = !DISubroutineType(types: !1524)
!1524 = !{!102, !1507, !1459, !1479}
!1525 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1480, file: !1461, line: 192, baseType: !129, size: 128, offset: 448)
!1526 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1480, file: !1461, line: 194, baseType: !729, size: 128, offset: 576)
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1471, file: !1461, line: 144, baseType: !1528, size: 64)
!1528 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1461, line: 103, size: 64, elements: !1529)
!1529 = !{!1530}
!1530 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1528, file: !1461, line: 104, baseType: !1459, size: 64)
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1471, file: !1461, line: 145, baseType: !1532, size: 256)
!1532 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1461, line: 107, size: 256, elements: !1533)
!1533 = !{!1534, !1599, !1602, !1603}
!1534 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1532, file: !1461, line: 108, baseType: !1535, size: 64)
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1537)
!1537 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1461, line: 217, size: 768, elements: !1538)
!1538 = !{!1539, !1559, !1563, !1567, !1572, !1576, !1580, !1584, !1585, !1586, !1587, !1595}
!1539 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1537, file: !1461, line: 222, baseType: !1540, size: 64)
!1540 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1541, size: 64)
!1541 = !DISubroutineType(types: !1542)
!1542 = !{!102, !1543}
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1461, line: 197, size: 1088, elements: !1545)
!1545 = !{!1546, !1547, !1548, !1549, !1550, !1551, !1552, !1553, !1554, !1555, !1556, !1557, !1558}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1544, file: !1461, line: 199, baseType: !1459, size: 64)
!1547 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1544, file: !1461, line: 200, baseType: !259, size: 64, offset: 64)
!1548 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1544, file: !1461, line: 201, baseType: !1507, size: 64, offset: 128)
!1549 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1544, file: !1461, line: 202, baseType: !79, size: 64, offset: 192)
!1550 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1544, file: !1461, line: 205, baseType: !398, size: 192, offset: 256)
!1551 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1544, file: !1461, line: 206, baseType: !398, size: 192, offset: 448)
!1552 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1544, file: !1461, line: 207, baseType: !102, size: 32, offset: 640)
!1553 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1544, file: !1461, line: 208, baseType: !129, size: 128, offset: 704)
!1554 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1544, file: !1461, line: 209, baseType: !183, size: 64, offset: 832)
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1544, file: !1461, line: 211, baseType: !229, size: 64, offset: 896)
!1556 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1544, file: !1461, line: 212, baseType: !1022, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1557 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1544, file: !1461, line: 213, baseType: !1022, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1558 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1544, file: !1461, line: 214, baseType: !1394, size: 64, offset: 1024)
!1559 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1537, file: !1461, line: 223, baseType: !1560, size: 64, offset: 64)
!1560 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1561, size: 64)
!1561 = !DISubroutineType(types: !1562)
!1562 = !{null, !1543}
!1563 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1537, file: !1461, line: 236, baseType: !1564, size: 64, offset: 128)
!1564 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1565, size: 64)
!1565 = !DISubroutineType(types: !1566)
!1566 = !{!102, !1507, !79}
!1567 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1537, file: !1461, line: 238, baseType: !1568, size: 64, offset: 192)
!1568 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1569, size: 64)
!1569 = !DISubroutineType(types: !1570)
!1570 = !{!79, !1507, !1571}
!1571 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !262, size: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1537, file: !1461, line: 239, baseType: !1573, size: 64, offset: 256)
!1573 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1574, size: 64)
!1574 = !DISubroutineType(types: !1575)
!1575 = !{!79, !1507, !79, !1571}
!1576 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1537, file: !1461, line: 240, baseType: !1577, size: 64, offset: 320)
!1577 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1578, size: 64)
!1578 = !DISubroutineType(types: !1579)
!1579 = !{null, !1507, !79}
!1580 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1537, file: !1461, line: 242, baseType: !1581, size: 64, offset: 384)
!1581 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1582, size: 64)
!1582 = !DISubroutineType(types: !1583)
!1583 = !{!214, !1543, !183, !229, !262}
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1537, file: !1461, line: 252, baseType: !229, size: 64, offset: 448)
!1585 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1537, file: !1461, line: 259, baseType: !1022, size: 8, offset: 512)
!1586 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1537, file: !1461, line: 260, baseType: !1581, size: 64, offset: 576)
!1587 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1537, file: !1461, line: 263, baseType: !1588, size: 64, offset: 640)
!1588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1589, size: 64)
!1589 = !DISubroutineType(types: !1590)
!1590 = !{!1591, !1543, !1593}
!1591 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1592, line: 52, baseType: !7)
!1592 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1594, size: 64)
!1594 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1461, line: 27, flags: DIFlagFwdDecl)
!1595 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1537, file: !1461, line: 266, baseType: !1596, size: 64, offset: 704)
!1596 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1597, size: 64)
!1597 = !DISubroutineType(types: !1598)
!1598 = !{!102, !1543, !270}
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1532, file: !1461, line: 109, baseType: !1600, size: 64, offset: 64)
!1600 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1601, size: 64)
!1601 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1461, line: 31, flags: DIFlagFwdDecl)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1532, file: !1461, line: 110, baseType: !262, size: 64, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1532, file: !1461, line: 111, baseType: !1459, size: 64, offset: 192)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1460, file: !1461, line: 148, baseType: !79, size: 64, offset: 768)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1460, file: !1461, line: 154, baseType: !300, size: 64, offset: 832)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1460, file: !1461, line: 156, baseType: !93, size: 16, offset: 896)
!1607 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1460, file: !1461, line: 157, baseType: !224, size: 16, offset: 912)
!1608 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1460, file: !1461, line: 158, baseType: !1609, size: 64, offset: 960)
!1609 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1610, size: 64)
!1610 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1461, line: 32, flags: DIFlagFwdDecl)
!1611 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !121, file: !122, line: 71, baseType: !1612, size: 32, offset: 448)
!1612 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1613, line: 19, size: 32, elements: !1614)
!1613 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1614 = !{!1615}
!1615 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1612, file: !1613, line: 20, baseType: !458, size: 32)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !121, file: !122, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1617 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !121, file: !122, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1618 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !121, file: !122, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1619 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !121, file: !122, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !121, file: !122, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1621 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !118, file: !30, line: 463, baseType: !117, size: 64, offset: 512)
!1622 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !118, file: !30, line: 465, baseType: !1623, size: 64, offset: 576)
!1623 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1624, size: 64)
!1624 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1625 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !118, file: !30, line: 467, baseType: !125, size: 64, offset: 640)
!1626 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !118, file: !30, line: 468, baseType: !1627, size: 64, offset: 704)
!1627 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1628, size: 64)
!1628 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1629)
!1629 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1630)
!1630 = !{!1631, !1632, !1633, !1637, !1642, !1646}
!1631 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1629, file: !30, line: 88, baseType: !125, size: 64)
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1629, file: !30, line: 89, baseType: !235, size: 64, offset: 64)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1629, file: !30, line: 90, baseType: !1634, size: 64, offset: 128)
!1634 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1635, size: 64)
!1635 = !DISubroutineType(types: !1636)
!1636 = !{!102, !117, !178}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1629, file: !30, line: 91, baseType: !1638, size: 64, offset: 192)
!1638 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1639, size: 64)
!1639 = !DISubroutineType(types: !1640)
!1640 = !{!183, !117, !1641, !1445, !1451}
!1641 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !224, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1629, file: !30, line: 93, baseType: !1643, size: 64, offset: 256)
!1643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1644, size: 64)
!1644 = !DISubroutineType(types: !1645)
!1645 = !{null, !117}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1629, file: !30, line: 95, baseType: !1647, size: 64, offset: 320)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1649)
!1649 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1650)
!1650 = !{!1651, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665, !1666, !1667, !1668, !1669, !1670, !1671, !1672, !1673, !1674, !1675, !1676}
!1651 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1649, file: !37, line: 279, baseType: !1652, size: 64)
!1652 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1653, size: 64)
!1653 = !DISubroutineType(types: !1654)
!1654 = !{!102, !117}
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1649, file: !37, line: 280, baseType: !1643, size: 64, offset: 64)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1649, file: !37, line: 281, baseType: !1652, size: 64, offset: 128)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1649, file: !37, line: 282, baseType: !1652, size: 64, offset: 192)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1649, file: !37, line: 283, baseType: !1652, size: 64, offset: 256)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1649, file: !37, line: 284, baseType: !1652, size: 64, offset: 320)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1649, file: !37, line: 285, baseType: !1652, size: 64, offset: 384)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1649, file: !37, line: 286, baseType: !1652, size: 64, offset: 448)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1649, file: !37, line: 287, baseType: !1652, size: 64, offset: 512)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1649, file: !37, line: 288, baseType: !1652, size: 64, offset: 576)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1649, file: !37, line: 289, baseType: !1652, size: 64, offset: 640)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1649, file: !37, line: 290, baseType: !1652, size: 64, offset: 704)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1649, file: !37, line: 291, baseType: !1652, size: 64, offset: 768)
!1667 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1649, file: !37, line: 292, baseType: !1652, size: 64, offset: 832)
!1668 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1649, file: !37, line: 293, baseType: !1652, size: 64, offset: 896)
!1669 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1649, file: !37, line: 294, baseType: !1652, size: 64, offset: 960)
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1649, file: !37, line: 295, baseType: !1652, size: 64, offset: 1024)
!1671 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1649, file: !37, line: 296, baseType: !1652, size: 64, offset: 1088)
!1672 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1649, file: !37, line: 297, baseType: !1652, size: 64, offset: 1152)
!1673 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1649, file: !37, line: 298, baseType: !1652, size: 64, offset: 1216)
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1649, file: !37, line: 299, baseType: !1652, size: 64, offset: 1280)
!1675 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1649, file: !37, line: 300, baseType: !1652, size: 64, offset: 1344)
!1676 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1649, file: !37, line: 301, baseType: !1652, size: 64, offset: 1408)
!1677 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !118, file: !30, line: 470, baseType: !1678, size: 64, offset: 768)
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1679, size: 64)
!1679 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1680, line: 82, size: 1408, elements: !1681)
!1680 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1681 = !{!1682, !1683, !1684, !1685, !1686, !1687, !1688, !1749, !1750, !1751, !1752, !1753, !1754, !1755, !1756, !1757, !1758, !1759, !1760, !1761, !1765, !1768, !1771}
!1682 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1679, file: !1680, line: 83, baseType: !125, size: 64)
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1679, file: !1680, line: 84, baseType: !125, size: 64, offset: 64)
!1684 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1679, file: !1680, line: 85, baseType: !117, size: 64, offset: 128)
!1685 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1679, file: !1680, line: 86, baseType: !235, size: 64, offset: 192)
!1686 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1679, file: !1680, line: 87, baseType: !235, size: 64, offset: 256)
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1679, file: !1680, line: 88, baseType: !235, size: 64, offset: 320)
!1688 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1679, file: !1680, line: 90, baseType: !1689, size: 64, offset: 384)
!1689 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1690, size: 64)
!1690 = !DISubroutineType(types: !1691)
!1691 = !{!102, !117, !1692}
!1692 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1693, size: 64)
!1693 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1694)
!1694 = !{!1695, !1696, !1697, !1701, !1702, !1703, !1704, !1717, !1729, !1730, !1731, !1732, !1733, !1741, !1742, !1743, !1744, !1745, !1746}
!1695 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1693, file: !24, line: 96, baseType: !125, size: 64)
!1696 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1693, file: !24, line: 97, baseType: !1678, size: 64, offset: 64)
!1697 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1693, file: !24, line: 99, baseType: !1698, size: 64, offset: 128)
!1698 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1699, size: 64)
!1699 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !1700, line: 189, flags: DIFlagFwdDecl)
!1700 = !DIFile(filename: "./include/linux/jump_label.h", directory: "/home/lizy2001/genbc/linux")
!1701 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1693, file: !24, line: 100, baseType: !125, size: 64, offset: 192)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1693, file: !24, line: 102, baseType: !1022, size: 8, offset: 256)
!1703 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1693, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1704 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1693, file: !24, line: 105, baseType: !1705, size: 64, offset: 320)
!1705 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1706, size: 64)
!1706 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1707)
!1707 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !88, line: 262, size: 1600, elements: !1708)
!1708 = !{!1709, !1711, !1712, !1716}
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1707, file: !88, line: 263, baseType: !1710, size: 256)
!1710 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 256, elements: !1256)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1707, file: !88, line: 264, baseType: !1710, size: 256, offset: 256)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1707, file: !88, line: 265, baseType: !1713, size: 1024, offset: 512)
!1713 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 1024, elements: !1714)
!1714 = !{!1715}
!1715 = !DISubrange(count: 128)
!1716 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1707, file: !88, line: 266, baseType: !1153, size: 64, offset: 1536)
!1717 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1693, file: !24, line: 106, baseType: !1718, size: 64, offset: 384)
!1718 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1719, size: 64)
!1719 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1720)
!1720 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !88, line: 210, size: 256, elements: !1721)
!1721 = !{!1722, !1726, !1727, !1728}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1720, file: !88, line: 211, baseType: !1723, size: 72)
!1723 = !DICompositeType(tag: DW_TAG_array_type, baseType: !590, size: 72, elements: !1724)
!1724 = !{!1725}
!1725 = !DISubrange(count: 9)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1720, file: !88, line: 212, baseType: !96, size: 64, offset: 128)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1720, file: !88, line: 213, baseType: !453, size: 32, offset: 192)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1720, file: !88, line: 214, baseType: !453, size: 32, offset: 224)
!1729 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1693, file: !24, line: 108, baseType: !1652, size: 64, offset: 448)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1693, file: !24, line: 109, baseType: !1643, size: 64, offset: 512)
!1731 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1693, file: !24, line: 110, baseType: !1652, size: 64, offset: 576)
!1732 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1693, file: !24, line: 111, baseType: !1643, size: 64, offset: 640)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1693, file: !24, line: 112, baseType: !1734, size: 64, offset: 704)
!1734 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1735, size: 64)
!1735 = !DISubroutineType(types: !1736)
!1736 = !{!102, !117, !1737}
!1737 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1738)
!1738 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1739)
!1739 = !{!1740}
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1738, file: !37, line: 51, baseType: !102, size: 32)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1693, file: !24, line: 113, baseType: !1652, size: 64, offset: 768)
!1742 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1693, file: !24, line: 114, baseType: !235, size: 64, offset: 832)
!1743 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1693, file: !24, line: 115, baseType: !235, size: 64, offset: 896)
!1744 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1693, file: !24, line: 117, baseType: !1647, size: 64, offset: 960)
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1693, file: !24, line: 118, baseType: !1643, size: 64, offset: 1024)
!1746 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1693, file: !24, line: 120, baseType: !1747, size: 64, offset: 1088)
!1747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1748, size: 64)
!1748 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1749 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1679, file: !1680, line: 91, baseType: !1634, size: 64, offset: 448)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1679, file: !1680, line: 92, baseType: !1652, size: 64, offset: 512)
!1751 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1679, file: !1680, line: 93, baseType: !1643, size: 64, offset: 576)
!1752 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1679, file: !1680, line: 94, baseType: !1652, size: 64, offset: 640)
!1753 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1679, file: !1680, line: 95, baseType: !1643, size: 64, offset: 704)
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1679, file: !1680, line: 97, baseType: !1652, size: 64, offset: 768)
!1755 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1679, file: !1680, line: 98, baseType: !1652, size: 64, offset: 832)
!1756 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1679, file: !1680, line: 100, baseType: !1734, size: 64, offset: 896)
!1757 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1679, file: !1680, line: 101, baseType: !1652, size: 64, offset: 960)
!1758 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1679, file: !1680, line: 103, baseType: !1652, size: 64, offset: 1024)
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1679, file: !1680, line: 105, baseType: !1652, size: 64, offset: 1088)
!1760 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1679, file: !1680, line: 107, baseType: !1647, size: 64, offset: 1152)
!1761 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1679, file: !1680, line: 109, baseType: !1762, size: 64, offset: 1216)
!1762 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1763, size: 64)
!1763 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1764)
!1764 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1680, line: 109, flags: DIFlagFwdDecl)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1679, file: !1680, line: 111, baseType: !1766, size: 64, offset: 1280)
!1766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1767, size: 64)
!1767 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1680, line: 111, flags: DIFlagFwdDecl)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1679, file: !1680, line: 112, baseType: !1769, offset: 1344)
!1769 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1770, line: 187, elements: !156)
!1770 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1679, file: !1680, line: 114, baseType: !1022, size: 8, offset: 1344)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !118, file: !30, line: 471, baseType: !1692, size: 64, offset: 832)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !118, file: !30, line: 473, baseType: !79, size: 64, offset: 896)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !118, file: !30, line: 475, baseType: !79, size: 64, offset: 960)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !118, file: !30, line: 480, baseType: !398, size: 192, offset: 1024)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !118, file: !30, line: 484, baseType: !1777, size: 576, offset: 1216)
!1777 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1778)
!1778 = !{!1779, !1780, !1781, !1782, !1783, !1784}
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1777, file: !30, line: 362, baseType: !129, size: 128)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1777, file: !30, line: 363, baseType: !129, size: 128, offset: 128)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1777, file: !30, line: 364, baseType: !129, size: 128, offset: 256)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1777, file: !30, line: 365, baseType: !129, size: 128, offset: 384)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1777, file: !30, line: 366, baseType: !1022, size: 8, offset: 512)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1777, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !118, file: !30, line: 485, baseType: !1786, size: 2304, offset: 1792)
!1786 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1787)
!1787 = !{!1788, !1789, !1790, !1791, !1792, !1793, !1794, !1795, !1796, !1797, !1798, !1799, !1800, !1801, !1802, !1803, !1841, !1842, !1843, !1844, !1845, !1846, !1847, !1848, !1849, !1850, !1851, !1852, !1853, !1854, !1855, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1869, !1870, !1871, !1872, !1873, !1883, !1887}
!1788 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1786, file: !37, line: 566, baseType: !1737, size: 32)
!1789 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1786, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1786, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1786, file: !37, line: 569, baseType: !1022, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1786, file: !37, line: 570, baseType: !1022, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1786, file: !37, line: 571, baseType: !1022, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1786, file: !37, line: 572, baseType: !1022, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1786, file: !37, line: 573, baseType: !1022, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1786, file: !37, line: 574, baseType: !1022, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1797 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1786, file: !37, line: 575, baseType: !1022, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1798 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1786, file: !37, line: 576, baseType: !1022, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1799 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1786, file: !37, line: 577, baseType: !452, size: 32, offset: 64)
!1800 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1786, file: !37, line: 578, baseType: !142, offset: 96)
!1801 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1786, file: !37, line: 580, baseType: !129, size: 128, offset: 128)
!1802 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1786, file: !37, line: 581, baseType: !758, size: 192, offset: 256)
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1786, file: !37, line: 582, baseType: !1804, size: 64, offset: 448)
!1804 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1805, size: 64)
!1805 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1806, line: 43, size: 1472, elements: !1807)
!1806 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1807 = !{!1808, !1809, !1810, !1811, !1812, !1815, !1827, !1828, !1829, !1830, !1831, !1832, !1833, !1834, !1835, !1836, !1837, !1838, !1839, !1840}
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1805, file: !1806, line: 44, baseType: !125, size: 64)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1805, file: !1806, line: 45, baseType: !102, size: 32, offset: 64)
!1810 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1805, file: !1806, line: 46, baseType: !129, size: 128, offset: 128)
!1811 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1805, file: !1806, line: 47, baseType: !142, offset: 256)
!1812 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1805, file: !1806, line: 48, baseType: !1813, size: 64, offset: 256)
!1813 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1814, size: 64)
!1814 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1805, file: !1806, line: 49, baseType: !1816, size: 320, offset: 320)
!1816 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1817, line: 11, size: 320, elements: !1818)
!1817 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1818 = !{!1819, !1820, !1821, !1826}
!1819 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1816, file: !1817, line: 16, baseType: !722, size: 128)
!1820 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1816, file: !1817, line: 17, baseType: !97, size: 64, offset: 128)
!1821 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1816, file: !1817, line: 18, baseType: !1822, size: 64, offset: 192)
!1822 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1823, size: 64)
!1823 = !DISubroutineType(types: !1824)
!1824 = !{null, !1825}
!1825 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1816, size: 64)
!1826 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1816, file: !1817, line: 19, baseType: !452, size: 32, offset: 256)
!1827 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1805, file: !1806, line: 50, baseType: !97, size: 64, offset: 640)
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1805, file: !1806, line: 51, baseType: !528, size: 64, offset: 704)
!1829 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1805, file: !1806, line: 52, baseType: !528, size: 64, offset: 768)
!1830 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1805, file: !1806, line: 53, baseType: !528, size: 64, offset: 832)
!1831 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1805, file: !1806, line: 54, baseType: !528, size: 64, offset: 896)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1805, file: !1806, line: 55, baseType: !528, size: 64, offset: 960)
!1833 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1805, file: !1806, line: 56, baseType: !97, size: 64, offset: 1024)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1805, file: !1806, line: 57, baseType: !97, size: 64, offset: 1088)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1805, file: !1806, line: 58, baseType: !97, size: 64, offset: 1152)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1805, file: !1806, line: 59, baseType: !97, size: 64, offset: 1216)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1805, file: !1806, line: 60, baseType: !97, size: 64, offset: 1280)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1805, file: !1806, line: 61, baseType: !117, size: 64, offset: 1344)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1805, file: !1806, line: 62, baseType: !1022, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1805, file: !1806, line: 63, baseType: !1022, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1841 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1786, file: !37, line: 583, baseType: !1022, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1842 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1786, file: !37, line: 584, baseType: !1022, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1843 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1786, file: !37, line: 585, baseType: !1022, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1844 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1786, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1845 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1786, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1846 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1786, file: !37, line: 592, baseType: !520, size: 512, offset: 576)
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1786, file: !37, line: 593, baseType: !300, size: 64, offset: 1088)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1786, file: !37, line: 594, baseType: !1361, size: 256, offset: 1152)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1786, file: !37, line: 595, baseType: !729, size: 128, offset: 1408)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1786, file: !37, line: 596, baseType: !1813, size: 64, offset: 1536)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1786, file: !37, line: 597, baseType: !321, size: 32, offset: 1600)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1786, file: !37, line: 598, baseType: !321, size: 32, offset: 1632)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1786, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1854 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1786, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1855 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1786, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1786, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1786, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1786, file: !37, line: 604, baseType: !1022, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1786, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1786, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1786, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1786, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1786, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1786, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1786, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1786, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1786, file: !37, line: 613, baseType: !102, size: 32, offset: 1792)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1786, file: !37, line: 614, baseType: !102, size: 32, offset: 1824)
!1869 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1786, file: !37, line: 615, baseType: !300, size: 64, offset: 1856)
!1870 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1786, file: !37, line: 616, baseType: !300, size: 64, offset: 1920)
!1871 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1786, file: !37, line: 617, baseType: !300, size: 64, offset: 1984)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1786, file: !37, line: 618, baseType: !300, size: 64, offset: 2048)
!1873 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1786, file: !37, line: 620, baseType: !1874, size: 64, offset: 2112)
!1874 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1875, size: 64)
!1875 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1876)
!1876 = !{!1877, !1878, !1879, !1880}
!1877 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1875, file: !37, line: 537, baseType: !142)
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1875, file: !37, line: 538, baseType: !7, size: 32)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1875, file: !37, line: 540, baseType: !129, size: 128, offset: 64)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1875, file: !37, line: 543, baseType: !1881, size: 64, offset: 192)
!1881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1882, size: 64)
!1882 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1786, file: !37, line: 621, baseType: !1884, size: 64, offset: 2176)
!1884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1885, size: 64)
!1885 = !DISubroutineType(types: !1886)
!1886 = !{null, !117, !682}
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1786, file: !37, line: 622, baseType: !1888, size: 64, offset: 2240)
!1888 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1889, size: 64)
!1889 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !118, file: !30, line: 486, baseType: !1891, size: 64, offset: 4096)
!1891 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1892, size: 64)
!1892 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !1893)
!1893 = !{!1894, !1895, !1896, !1900, !1901, !1902}
!1894 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1892, file: !37, line: 643, baseType: !1649, size: 1472)
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1892, file: !37, line: 644, baseType: !1652, size: 64, offset: 1472)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1892, file: !37, line: 645, baseType: !1897, size: 64, offset: 1536)
!1897 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1898, size: 64)
!1898 = !DISubroutineType(types: !1899)
!1899 = !{null, !117, !1022}
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1892, file: !37, line: 646, baseType: !1652, size: 64, offset: 1600)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1892, file: !37, line: 647, baseType: !1643, size: 64, offset: 1664)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1892, file: !37, line: 648, baseType: !1643, size: 64, offset: 1728)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !118, file: !30, line: 493, baseType: !1904, size: 64, offset: 4160)
!1904 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1905, size: 64)
!1905 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !1906)
!1906 = !{!1907, !1908, !1909, !2083, !2084, !2085, !2086, !2087, !2088, !2091, !2092, !2093, !2094, !2095, !2096, !2097}
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !1905, file: !51, line: 163, baseType: !129, size: 128)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1905, file: !51, line: 164, baseType: !125, size: 64, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1905, file: !51, line: 165, baseType: !1910, size: 64, offset: 192)
!1910 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1911, size: 64)
!1911 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1912)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !1913)
!1913 = !{!1914, !2032, !2043, !2048, !2052, !2060, !2064, !2068, !2075, !2079}
!1914 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1912, file: !51, line: 106, baseType: !1915, size: 64)
!1915 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1916, size: 64)
!1916 = !DISubroutineType(types: !1917)
!1917 = !{!102, !1904, !1918, !50}
!1918 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1919, size: 64)
!1919 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !1920, line: 51, size: 1344, elements: !1921)
!1920 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!1921 = !{!1922, !1923, !1925, !1926, !2016, !2025, !2026, !2027, !2028, !2029, !2030, !2031}
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1919, file: !1920, line: 52, baseType: !125, size: 64)
!1923 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !1919, file: !1920, line: 53, baseType: !1924, size: 32, offset: 64)
!1924 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !1920, line: 28, baseType: !452)
!1925 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !1919, file: !1920, line: 54, baseType: !125, size: 64, offset: 128)
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1919, file: !1920, line: 55, baseType: !1927, size: 192, offset: 192)
!1927 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !1928, line: 17, size: 192, elements: !1929)
!1928 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!1929 = !{!1930, !1932, !2015}
!1930 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !1927, file: !1928, line: 18, baseType: !1931, size: 64)
!1931 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1927, size: 64)
!1932 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1927, file: !1928, line: 19, baseType: !1933, size: 64, offset: 64)
!1933 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1934, size: 64)
!1934 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1935)
!1935 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !1928, line: 110, size: 1152, elements: !1936)
!1936 = !{!1937, !1941, !1945, !1951, !1957, !1961, !1965, !1970, !1974, !1975, !1979, !1983, !1987, !1998, !1999, !2000, !2001, !2011}
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !1935, file: !1928, line: 111, baseType: !1938, size: 64)
!1938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1939, size: 64)
!1939 = !DISubroutineType(types: !1940)
!1940 = !{!1931, !1931}
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !1935, file: !1928, line: 112, baseType: !1942, size: 64, offset: 64)
!1942 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1943, size: 64)
!1943 = !DISubroutineType(types: !1944)
!1944 = !{null, !1931}
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !1935, file: !1928, line: 113, baseType: !1946, size: 64, offset: 128)
!1946 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1947, size: 64)
!1947 = !DISubroutineType(types: !1948)
!1948 = !{!1022, !1949}
!1949 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1950, size: 64)
!1950 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1927)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !1935, file: !1928, line: 114, baseType: !1952, size: 64, offset: 192)
!1952 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1953, size: 64)
!1953 = !DISubroutineType(types: !1954)
!1954 = !{!1153, !1949, !1955}
!1955 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1956, size: 64)
!1956 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !118)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !1935, file: !1928, line: 116, baseType: !1958, size: 64, offset: 256)
!1958 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1959, size: 64)
!1959 = !DISubroutineType(types: !1960)
!1960 = !{!1022, !1949, !125}
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !1935, file: !1928, line: 118, baseType: !1962, size: 64, offset: 320)
!1962 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1963, size: 64)
!1963 = !DISubroutineType(types: !1964)
!1964 = !{!102, !1949, !125, !7, !79, !229}
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !1935, file: !1928, line: 123, baseType: !1966, size: 64, offset: 384)
!1966 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1967, size: 64)
!1967 = !DISubroutineType(types: !1968)
!1968 = !{!102, !1949, !125, !1969, !229}
!1969 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !125, size: 64)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !1935, file: !1928, line: 126, baseType: !1971, size: 64, offset: 448)
!1971 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1972, size: 64)
!1972 = !DISubroutineType(types: !1973)
!1973 = !{!125, !1949}
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !1935, file: !1928, line: 127, baseType: !1971, size: 64, offset: 512)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !1935, file: !1928, line: 128, baseType: !1976, size: 64, offset: 576)
!1976 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1977, size: 64)
!1977 = !DISubroutineType(types: !1978)
!1978 = !{!1931, !1949}
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !1935, file: !1928, line: 130, baseType: !1980, size: 64, offset: 640)
!1980 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1981, size: 64)
!1981 = !DISubroutineType(types: !1982)
!1982 = !{!1931, !1949, !1931}
!1983 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !1935, file: !1928, line: 133, baseType: !1984, size: 64, offset: 704)
!1984 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1985, size: 64)
!1985 = !DISubroutineType(types: !1986)
!1986 = !{!1931, !1949, !125}
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !1935, file: !1928, line: 135, baseType: !1988, size: 64, offset: 768)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DISubroutineType(types: !1990)
!1990 = !{!102, !1949, !125, !125, !7, !7, !1991}
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !1928, line: 43, size: 640, elements: !1993)
!1993 = !{!1994, !1995, !1996}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1992, file: !1928, line: 44, baseType: !1931, size: 64)
!1995 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !1992, file: !1928, line: 45, baseType: !7, size: 32, offset: 64)
!1996 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !1992, file: !1928, line: 46, baseType: !1997, size: 512, offset: 128)
!1997 = !DICompositeType(tag: DW_TAG_array_type, baseType: !300, size: 512, elements: !558)
!1998 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !1935, file: !1928, line: 140, baseType: !1980, size: 64, offset: 832)
!1999 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !1935, file: !1928, line: 143, baseType: !1976, size: 64, offset: 896)
!2000 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !1935, file: !1928, line: 145, baseType: !1938, size: 64, offset: 960)
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !1935, file: !1928, line: 146, baseType: !2002, size: 64, offset: 1024)
!2002 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2003, size: 64)
!2003 = !DISubroutineType(types: !2004)
!2004 = !{!102, !1949, !2005}
!2005 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2006, size: 64)
!2006 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !1928, line: 29, size: 128, elements: !2007)
!2007 = !{!2008, !2009, !2010}
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2006, file: !1928, line: 30, baseType: !7, size: 32)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2006, file: !1928, line: 31, baseType: !7, size: 32, offset: 32)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2006, file: !1928, line: 32, baseType: !1949, size: 64, offset: 64)
!2011 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !1935, file: !1928, line: 148, baseType: !2012, size: 64, offset: 1088)
!2012 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2013, size: 64)
!2013 = !DISubroutineType(types: !2014)
!2014 = !{!102, !1949, !117}
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1927, file: !1928, line: 20, baseType: !117, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !1919, file: !1920, line: 57, baseType: !2017, size: 64, offset: 384)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !1920, line: 31, size: 704, elements: !2019)
!2019 = !{!2020, !2021, !2022, !2023, !2024}
!2020 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2018, file: !1920, line: 32, baseType: !183, size: 64)
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2018, file: !1920, line: 33, baseType: !102, size: 32, offset: 64)
!2022 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2018, file: !1920, line: 34, baseType: !79, size: 64, offset: 128)
!2023 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2018, file: !1920, line: 35, baseType: !2017, size: 64, offset: 192)
!2024 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2018, file: !1920, line: 43, baseType: !250, size: 448, offset: 256)
!2025 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !1919, file: !1920, line: 58, baseType: !2017, size: 64, offset: 448)
!2026 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1919, file: !1920, line: 59, baseType: !1918, size: 64, offset: 512)
!2027 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !1919, file: !1920, line: 60, baseType: !1918, size: 64, offset: 576)
!2028 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !1919, file: !1920, line: 61, baseType: !1918, size: 64, offset: 640)
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1919, file: !1920, line: 63, baseType: !121, size: 512, offset: 704)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !1919, file: !1920, line: 65, baseType: !97, size: 64, offset: 1216)
!2031 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1919, file: !1920, line: 66, baseType: !79, size: 64, offset: 1280)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !1912, file: !51, line: 108, baseType: !2033, size: 64, offset: 64)
!2033 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2034 = !DISubroutineType(types: !2035)
!2035 = !{!102, !1904, !2036, !50}
!2036 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2037, size: 64)
!2037 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2038)
!2038 = !{!2039, !2040, !2041}
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2037, file: !51, line: 64, baseType: !1931, size: 64)
!2040 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2037, file: !51, line: 65, baseType: !102, size: 32, offset: 64)
!2041 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2037, file: !51, line: 66, baseType: !2042, size: 512, offset: 96)
!2042 = !DICompositeType(tag: DW_TAG_array_type, baseType: !452, size: 512, elements: !814)
!2043 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !1912, file: !51, line: 110, baseType: !2044, size: 64, offset: 128)
!2044 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2045, size: 64)
!2045 = !DISubroutineType(types: !2046)
!2046 = !{!102, !1904, !7, !2047}
!2047 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !78, line: 164, baseType: !97)
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !1912, file: !51, line: 111, baseType: !2049, size: 64, offset: 192)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !1904, !7}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !1912, file: !51, line: 112, baseType: !2053, size: 64, offset: 256)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!102, !1904, !1918, !2056, !7, !2058, !2059}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !452)
!2058 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !97, size: 64)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!2060 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !1912, file: !51, line: 117, baseType: !2061, size: 64, offset: 320)
!2061 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2062, size: 64)
!2062 = !DISubroutineType(types: !2063)
!2063 = !{!102, !1904, !7, !7, !79}
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !1912, file: !51, line: 119, baseType: !2065, size: 64, offset: 384)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{null, !1904, !7, !7}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1912, file: !51, line: 121, baseType: !2069, size: 64, offset: 448)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!102, !1904, !2072, !1022}
!2072 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2073, size: 64)
!2073 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2074, line: 11, flags: DIFlagFwdDecl)
!2074 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2075 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !1912, file: !51, line: 122, baseType: !2076, size: 64, offset: 512)
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2077, size: 64)
!2077 = !DISubroutineType(types: !2078)
!2078 = !{null, !1904, !2072}
!2079 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !1912, file: !51, line: 123, baseType: !2080, size: 64, offset: 576)
!2080 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2081, size: 64)
!2081 = !DISubroutineType(types: !2082)
!2082 = !{!102, !1904, !2036, !2058, !2059}
!2083 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !1905, file: !51, line: 166, baseType: !79, size: 64, offset: 256)
!2084 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1905, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2085 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !1905, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1905, file: !51, line: 171, baseType: !1931, size: 64, offset: 384)
!2087 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !1905, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2088 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !1905, file: !51, line: 173, baseType: !2089, size: 64, offset: 512)
!2089 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2090, size: 64)
!2090 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2091 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1905, file: !51, line: 175, baseType: !1904, size: 64, offset: 576)
!2092 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !1905, file: !51, line: 182, baseType: !2047, size: 64, offset: 640)
!2093 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !1905, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !1905, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2095 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !1905, file: !51, line: 185, baseType: !1489, size: 128, offset: 768)
!2096 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !1905, file: !51, line: 186, baseType: !398, size: 192, offset: 896)
!2097 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !1905, file: !51, line: 187, baseType: !2098, offset: 1088)
!2098 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !1375)
!2099 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !118, file: !30, line: 499, baseType: !129, size: 128, offset: 4224)
!2100 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !118, file: !30, line: 502, baseType: !2101, size: 64, offset: 4352)
!2101 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2102, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2103)
!2103 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2104 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !118, file: !30, line: 504, baseType: !2105, size: 64, offset: 4416)
!2105 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !300, size: 64)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !118, file: !30, line: 505, baseType: !300, size: 64, offset: 4480)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !118, file: !30, line: 510, baseType: !300, size: 64, offset: 4544)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !118, file: !30, line: 511, baseType: !2109, size: 64, offset: 4608)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2111)
!2111 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2112 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !118, file: !30, line: 513, baseType: !2113, size: 64, offset: 4672)
!2113 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2114, size: 64)
!2114 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2115)
!2115 = !{!2116, !2117}
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2114, file: !30, line: 293, baseType: !7, size: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2114, file: !30, line: 294, baseType: !97, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !118, file: !30, line: 515, baseType: !129, size: 128, offset: 4736)
!2119 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !118, file: !30, line: 526, baseType: !2120, offset: 4864)
!2120 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2121, line: 5, elements: !156)
!2121 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !118, file: !30, line: 528, baseType: !1918, size: 64, offset: 4864)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !118, file: !30, line: 529, baseType: !1931, size: 64, offset: 4928)
!2124 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !118, file: !30, line: 534, baseType: !2125, size: 32, offset: 4992)
!2125 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !78, line: 16, baseType: !2126)
!2126 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !78, line: 13, baseType: !452)
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !118, file: !30, line: 535, baseType: !452, size: 32, offset: 5024)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !118, file: !30, line: 537, baseType: !142, offset: 5056)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !118, file: !30, line: 538, baseType: !129, size: 128, offset: 5056)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !118, file: !30, line: 540, baseType: !2131, size: 64, offset: 5184)
!2131 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2132, size: 64)
!2132 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2133, line: 54, size: 960, elements: !2134)
!2133 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2134 = !{!2135, !2136, !2137, !2138, !2139, !2140, !2141, !2145, !2149, !2150, !2151, !2152, !2156, !2160, !2161}
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2132, file: !2133, line: 55, baseType: !125, size: 64)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2132, file: !2133, line: 56, baseType: !1698, size: 64, offset: 64)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2132, file: !2133, line: 58, baseType: !235, size: 64, offset: 128)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2132, file: !2133, line: 59, baseType: !235, size: 64, offset: 192)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2132, file: !2133, line: 60, baseType: !135, size: 64, offset: 256)
!2140 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2132, file: !2133, line: 62, baseType: !1634, size: 64, offset: 320)
!2141 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2132, file: !2133, line: 63, baseType: !2142, size: 64, offset: 384)
!2142 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2143, size: 64)
!2143 = !DISubroutineType(types: !2144)
!2144 = !{!183, !117, !1641}
!2145 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2132, file: !2133, line: 65, baseType: !2146, size: 64, offset: 448)
!2146 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2147, size: 64)
!2147 = !DISubroutineType(types: !2148)
!2148 = !{null, !2131}
!2149 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2132, file: !2133, line: 66, baseType: !1643, size: 64, offset: 512)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2132, file: !2133, line: 68, baseType: !1652, size: 64, offset: 576)
!2151 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2132, file: !2133, line: 70, baseType: !1410, size: 64, offset: 640)
!2152 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2132, file: !2133, line: 71, baseType: !2153, size: 64, offset: 704)
!2153 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2154, size: 64)
!2154 = !DISubroutineType(types: !2155)
!2155 = !{!1153, !117}
!2156 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2132, file: !2133, line: 73, baseType: !2157, size: 64, offset: 768)
!2157 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2158, size: 64)
!2158 = !DISubroutineType(types: !2159)
!2159 = !{null, !117, !1445, !1451}
!2160 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2132, file: !2133, line: 75, baseType: !1647, size: 64, offset: 832)
!2161 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2132, file: !2133, line: 77, baseType: !1766, size: 64, offset: 896)
!2162 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !118, file: !30, line: 541, baseType: !235, size: 64, offset: 5248)
!2163 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !118, file: !30, line: 543, baseType: !1643, size: 64, offset: 5312)
!2164 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !118, file: !30, line: 544, baseType: !2165, size: 64, offset: 5376)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2166, size: 64)
!2166 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2167 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !118, file: !30, line: 545, baseType: !2168, size: 64, offset: 5440)
!2168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2169, size: 64)
!2169 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !118, file: !30, line: 547, baseType: !1022, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2171 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !118, file: !30, line: 548, baseType: !1022, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2172 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !118, file: !30, line: 549, baseType: !1022, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2173 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !118, file: !30, line: 550, baseType: !1022, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !110, file: !111, line: 17, baseType: !2175, size: 64, offset: 64)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!102, !117, !589, !589}
!2178 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !104, file: !82, line: 20, baseType: !118, size: 5568, offset: 192)
!2179 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !81, file: !82, line: 45, baseType: !2180, size: 64, offset: 128)
!2180 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2181, size: 64)
!2181 = !DISubroutineType(types: !2182)
!2182 = !{null, !103}
!2183 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !81, file: !82, line: 46, baseType: !1693, size: 1152, offset: 192)
!2184 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2185, size: 64)
!2185 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device", file: !2186, line: 351, size: 10880, elements: !2187)
!2186 = !DIFile(filename: "./include/acpi/acpi_bus.h", directory: "/home/lizy2001/genbc/linux")
!2187 = !{!2188, !2189, !2192, !2193, !2194, !2195, !2196, !2197, !2198, !2207, !2224, !2298, !2327, !2351, !2372, !2378, !2387, !2419, !2433, !2455, !2459, !2460, !2461, !2462, !2463, !2464, !2465}
!2188 = !DIDerivedType(tag: DW_TAG_member, name: "device_type", scope: !2185, file: !2186, line: 352, baseType: !102, size: 32)
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2185, file: !2186, line: 353, baseType: !2190, size: 64, offset: 64)
!2190 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_handle", file: !2191, line: 424, baseType: !79)
!2191 = !DIFile(filename: "./include/acpi/actypes.h", directory: "/home/lizy2001/genbc/linux")
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2185, file: !2186, line: 354, baseType: !1927, size: 192, offset: 128)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2185, file: !2186, line: 355, baseType: !2184, size: 64, offset: 320)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !2185, file: !2186, line: 356, baseType: !129, size: 128, offset: 384)
!2195 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !2185, file: !2186, line: 357, baseType: !129, size: 128, offset: 512)
!2196 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_list", scope: !2185, file: !2186, line: 358, baseType: !129, size: 128, offset: 640)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "del_list", scope: !2185, file: !2186, line: 359, baseType: !129, size: 128, offset: 768)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !2185, file: !2186, line: 360, baseType: !2199, size: 32, offset: 896)
!2199 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_status", file: !2186, line: 179, size: 32, elements: !2200)
!2200 = !{!2201, !2202, !2203, !2204, !2205, !2206}
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "present", scope: !2199, file: !2186, line: 180, baseType: !452, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2199, file: !2186, line: 181, baseType: !452, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "show_in_ui", scope: !2199, file: !2186, line: 182, baseType: !452, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2204 = !DIDerivedType(tag: DW_TAG_member, name: "functional", scope: !2199, file: !2186, line: 183, baseType: !452, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "battery_present", scope: !2199, file: !2186, line: 184, baseType: !452, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2199, file: !2186, line: 185, baseType: !452, size: 27, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2207 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2185, file: !2186, line: 361, baseType: !2208, size: 32, offset: 928)
!2208 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_flags", file: !2186, line: 190, size: 32, elements: !2209)
!2209 = !{!2210, !2211, !2212, !2213, !2214, !2215, !2216, !2217, !2218, !2219, !2220, !2221, !2222, !2223}
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dynamic_status", scope: !2208, file: !2186, line: 191, baseType: !452, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2211 = !DIDerivedType(tag: DW_TAG_member, name: "removable", scope: !2208, file: !2186, line: 192, baseType: !452, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "ejectable", scope: !2208, file: !2186, line: 193, baseType: !452, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "power_manageable", scope: !2208, file: !2186, line: 194, baseType: !452, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "match_driver", scope: !2208, file: !2186, line: 195, baseType: !452, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2215 = !DIDerivedType(tag: DW_TAG_member, name: "initialized", scope: !2208, file: !2186, line: 196, baseType: !452, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2216 = !DIDerivedType(tag: DW_TAG_member, name: "visited", scope: !2208, file: !2186, line: 197, baseType: !452, size: 1, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2217 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug_notify", scope: !2208, file: !2186, line: 198, baseType: !452, size: 1, offset: 7, flags: DIFlagBitField, extraData: i64 0)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "is_dock_station", scope: !2208, file: !2186, line: 199, baseType: !452, size: 1, offset: 8, flags: DIFlagBitField, extraData: i64 0)
!2219 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible_ok", scope: !2208, file: !2186, line: 200, baseType: !452, size: 1, offset: 9, flags: DIFlagBitField, extraData: i64 0)
!2220 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma", scope: !2208, file: !2186, line: 201, baseType: !452, size: 1, offset: 10, flags: DIFlagBitField, extraData: i64 0)
!2221 = !DIDerivedType(tag: DW_TAG_member, name: "cca_seen", scope: !2208, file: !2186, line: 202, baseType: !452, size: 1, offset: 11, flags: DIFlagBitField, extraData: i64 0)
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "enumeration_by_parent", scope: !2208, file: !2186, line: 203, baseType: !452, size: 1, offset: 12, flags: DIFlagBitField, extraData: i64 0)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2208, file: !2186, line: 204, baseType: !452, size: 19, offset: 13, flags: DIFlagBitField, extraData: i64 0)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "pnp", scope: !2185, file: !2186, line: 362, baseType: !2225, size: 960, offset: 960)
!2225 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_pnp", file: !2186, line: 234, size: 960, elements: !2226)
!2226 = !{!2227, !2229, !2236, !2238, !2239, !2240, !2245, !2248}
!2227 = !DIDerivedType(tag: DW_TAG_member, name: "bus_id", scope: !2225, file: !2186, line: 235, baseType: !2228, size: 64)
!2228 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_id", file: !2186, line: 217, baseType: !959)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2225, file: !2186, line: 236, baseType: !2230, size: 32, offset: 64)
!2230 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_pnp_type", file: !2186, line: 227, size: 32, elements: !2231)
!2231 = !{!2232, !2233, !2234, !2235}
!2232 = !DIDerivedType(tag: DW_TAG_member, name: "hardware_id", scope: !2230, file: !2186, line: 228, baseType: !452, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2230, file: !2186, line: 229, baseType: !452, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "platform_id", scope: !2230, file: !2186, line: 230, baseType: !452, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2230, file: !2186, line: 231, baseType: !452, size: 29, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "bus_address", scope: !2225, file: !2186, line: 237, baseType: !2237, size: 64, offset: 128)
!2237 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_bus_address", file: !2186, line: 218, baseType: !300)
!2238 = !DIDerivedType(tag: DW_TAG_member, name: "unique_id", scope: !2225, file: !2186, line: 238, baseType: !183, size: 64, offset: 192)
!2239 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2225, file: !2186, line: 239, baseType: !129, size: 128, offset: 256)
!2240 = !DIDerivedType(tag: DW_TAG_member, name: "device_name", scope: !2225, file: !2186, line: 240, baseType: !2241, size: 320, offset: 384)
!2241 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_name", file: !2186, line: 219, baseType: !2242)
!2242 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 320, elements: !2243)
!2243 = !{!2244}
!2244 = !DISubrange(count: 40)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "device_class", scope: !2225, file: !2186, line: 241, baseType: !2246, size: 160, offset: 704)
!2246 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_device_class", file: !2186, line: 220, baseType: !2247)
!2247 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 160, elements: !1227)
!2248 = !DIDerivedType(tag: DW_TAG_member, name: "str_obj", scope: !2225, file: !2186, line: 242, baseType: !2249, size: 64, offset: 896)
!2249 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2250, size: 64)
!2250 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "acpi_object", file: !2191, line: 899, size: 192, elements: !2251)
!2251 = !{!2252, !2254, !2259, !2265, !2272, !2278, !2284, !2292}
!2252 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2250, file: !2191, line: 900, baseType: !2253, size: 32)
!2253 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_object_type", file: !2191, line: 635, baseType: !452)
!2254 = !DIDerivedType(tag: DW_TAG_member, name: "integer", scope: !2250, file: !2191, line: 904, baseType: !2255, size: 128)
!2255 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 901, size: 128, elements: !2256)
!2256 = !{!2257, !2258}
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2255, file: !2191, line: 902, baseType: !2253, size: 32)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2255, file: !2191, line: 903, baseType: !300, size: 64, offset: 64)
!2259 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !2250, file: !2191, line: 910, baseType: !2260, size: 128)
!2260 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 906, size: 128, elements: !2261)
!2261 = !{!2262, !2263, !2264}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2260, file: !2191, line: 907, baseType: !2253, size: 32)
!2263 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2260, file: !2191, line: 908, baseType: !452, size: 32, offset: 32)
!2264 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2260, file: !2191, line: 909, baseType: !183, size: 64, offset: 64)
!2265 = !DIDerivedType(tag: DW_TAG_member, name: "buffer", scope: !2250, file: !2191, line: 916, baseType: !2266, size: 128)
!2266 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 912, size: 128, elements: !2267)
!2267 = !{!2268, !2269, !2270}
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2266, file: !2191, line: 913, baseType: !2253, size: 32)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2266, file: !2191, line: 914, baseType: !452, size: 32, offset: 32)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2266, file: !2191, line: 915, baseType: !2271, size: 64, offset: 64)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !589, size: 64)
!2272 = !DIDerivedType(tag: DW_TAG_member, name: "package", scope: !2250, file: !2191, line: 922, baseType: !2273, size: 128)
!2273 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 918, size: 128, elements: !2274)
!2274 = !{!2275, !2276, !2277}
!2275 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2273, file: !2191, line: 919, baseType: !2253, size: 32)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !2273, file: !2191, line: 920, baseType: !452, size: 32, offset: 32)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "elements", scope: !2273, file: !2191, line: 921, baseType: !2249, size: 64, offset: 64)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "reference", scope: !2250, file: !2191, line: 928, baseType: !2279, size: 128)
!2279 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 924, size: 128, elements: !2280)
!2280 = !{!2281, !2282, !2283}
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2279, file: !2191, line: 925, baseType: !2253, size: 32)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "actual_type", scope: !2279, file: !2191, line: 926, baseType: !2253, size: 32, offset: 32)
!2283 = !DIDerivedType(tag: DW_TAG_member, name: "handle", scope: !2279, file: !2191, line: 927, baseType: !2190, size: 64, offset: 64)
!2284 = !DIDerivedType(tag: DW_TAG_member, name: "processor", scope: !2250, file: !2191, line: 935, baseType: !2285, size: 192)
!2285 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 930, size: 192, elements: !2286)
!2286 = !{!2287, !2288, !2289, !2291}
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2285, file: !2191, line: 931, baseType: !2253, size: 32)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "proc_id", scope: !2285, file: !2191, line: 932, baseType: !452, size: 32, offset: 32)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_address", scope: !2285, file: !2191, line: 933, baseType: !2290, size: 64, offset: 64)
!2290 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_io_address", file: !2191, line: 128, baseType: !300)
!2291 = !DIDerivedType(tag: DW_TAG_member, name: "pblk_length", scope: !2285, file: !2191, line: 934, baseType: !452, size: 32, offset: 128)
!2292 = !DIDerivedType(tag: DW_TAG_member, name: "power_resource", scope: !2250, file: !2191, line: 941, baseType: !2293, size: 96)
!2293 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2250, file: !2191, line: 937, size: 96, elements: !2294)
!2294 = !{!2295, !2296, !2297}
!2295 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !2293, file: !2191, line: 938, baseType: !2253, size: 32)
!2296 = !DIDerivedType(tag: DW_TAG_member, name: "system_level", scope: !2293, file: !2191, line: 939, baseType: !452, size: 32, offset: 32)
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "resource_order", scope: !2293, file: !2191, line: 940, baseType: !452, size: 32, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2185, file: !2186, line: 363, baseType: !2299, size: 1344, offset: 1920)
!2299 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power", file: !2186, line: 275, size: 1344, elements: !2300)
!2300 = !{!2301, !2302, !2312}
!2301 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2299, file: !2186, line: 276, baseType: !102, size: 32)
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2299, file: !2186, line: 277, baseType: !2303, size: 32, offset: 32)
!2303 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_flags", file: !2186, line: 254, size: 32, elements: !2304)
!2304 = !{!2305, !2306, !2307, !2308, !2309, !2310, !2311}
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_get", scope: !2303, file: !2186, line: 255, baseType: !452, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2306 = !DIDerivedType(tag: DW_TAG_member, name: "power_resources", scope: !2303, file: !2186, line: 256, baseType: !452, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2307 = !DIDerivedType(tag: DW_TAG_member, name: "inrush_current", scope: !2303, file: !2186, line: 257, baseType: !452, size: 1, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2308 = !DIDerivedType(tag: DW_TAG_member, name: "power_removed", scope: !2303, file: !2186, line: 258, baseType: !452, size: 1, offset: 3, flags: DIFlagBitField, extraData: i64 0)
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_parent", scope: !2303, file: !2186, line: 259, baseType: !452, size: 1, offset: 4, flags: DIFlagBitField, extraData: i64 0)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "dsw_present", scope: !2303, file: !2186, line: 260, baseType: !452, size: 1, offset: 5, flags: DIFlagBitField, extraData: i64 0)
!2311 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2303, file: !2186, line: 261, baseType: !452, size: 26, offset: 6, flags: DIFlagBitField, extraData: i64 0)
!2312 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2299, file: !2186, line: 278, baseType: !2313, size: 1280, offset: 64)
!2313 = !DICompositeType(tag: DW_TAG_array_type, baseType: !2314, size: 1280, elements: !2325)
!2314 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_power_state", file: !2186, line: 264, size: 256, elements: !2315)
!2315 = !{!2316, !2322, !2323, !2324}
!2316 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2314, file: !2186, line: 269, baseType: !2317, size: 8)
!2317 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2314, file: !2186, line: 265, size: 8, elements: !2318)
!2318 = !{!2319, !2320, !2321}
!2319 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2317, file: !2186, line: 266, baseType: !589, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "explicit_set", scope: !2317, file: !2186, line: 267, baseType: !589, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2317, file: !2186, line: 268, baseType: !589, size: 6, offset: 2, flags: DIFlagBitField, extraData: i64 0)
!2322 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2314, file: !2186, line: 270, baseType: !102, size: 32, offset: 32)
!2323 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2314, file: !2186, line: 271, baseType: !102, size: 32, offset: 64)
!2324 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2314, file: !2186, line: 272, baseType: !129, size: 128, offset: 128)
!2325 = !{!2326}
!2326 = !DISubrange(count: 5)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !2185, file: !2186, line: 364, baseType: !2328, size: 640, offset: 3264)
!2328 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup", file: !2186, line: 315, size: 640, elements: !2329)
!2329 = !{!2330, !2331, !2332, !2333, !2334, !2339, !2348, !2349, !2350}
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_device", scope: !2328, file: !2186, line: 316, baseType: !2190, size: 64)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "gpe_number", scope: !2328, file: !2186, line: 317, baseType: !300, size: 64, offset: 64)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "sleep_state", scope: !2328, file: !2186, line: 318, baseType: !300, size: 64, offset: 128)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "resources", scope: !2328, file: !2186, line: 319, baseType: !129, size: 128, offset: 192)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2328, file: !2186, line: 320, baseType: !2335, size: 8, offset: 320)
!2335 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_flags", file: !2186, line: 305, size: 8, elements: !2336)
!2336 = !{!2337, !2338}
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2335, file: !2186, line: 306, baseType: !589, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_present", scope: !2335, file: !2186, line: 307, baseType: !589, size: 1, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !2328, file: !2186, line: 321, baseType: !2340, size: 128, offset: 384)
!2340 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_wakeup_context", file: !2186, line: 310, size: 128, elements: !2341)
!2341 = !{!2342, !2347}
!2342 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !2340, file: !2186, line: 311, baseType: !2343, size: 64)
!2343 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2344, size: 64)
!2344 = !DISubroutineType(types: !2345)
!2345 = !{null, !2346}
!2346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2340, size: 64)
!2347 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2340, file: !2186, line: 312, baseType: !117, size: 64, offset: 64)
!2348 = !DIDerivedType(tag: DW_TAG_member, name: "ws", scope: !2328, file: !2186, line: 322, baseType: !1804, size: 64, offset: 512)
!2349 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_count", scope: !2328, file: !2186, line: 323, baseType: !102, size: 32, offset: 576)
!2350 = !DIDerivedType(tag: DW_TAG_member, name: "enable_count", scope: !2328, file: !2186, line: 324, baseType: !102, size: 32, offset: 608)
!2351 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2185, file: !2186, line: 365, baseType: !2352, size: 192, offset: 3904)
!2352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf", file: !2186, line: 297, size: 192, elements: !2353)
!2353 = !{!2354, !2355, !2359, !2360}
!2354 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !2352, file: !2186, line: 298, baseType: !102, size: 32)
!2355 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2352, file: !2186, line: 299, baseType: !2356, size: 8, offset: 32)
!2356 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_flags", file: !2186, line: 283, size: 8, elements: !2357)
!2357 = !{!2358}
!2358 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2356, file: !2186, line: 284, baseType: !589, size: 8, flags: DIFlagBitField, extraData: i64 0)
!2359 = !DIDerivedType(tag: DW_TAG_member, name: "state_count", scope: !2352, file: !2186, line: 300, baseType: !102, size: 32, offset: 64)
!2360 = !DIDerivedType(tag: DW_TAG_member, name: "states", scope: !2352, file: !2186, line: 301, baseType: !2361, size: 64, offset: 128)
!2361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2362, size: 64)
!2362 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_perf_state", file: !2186, line: 287, size: 64, elements: !2363)
!2363 = !{!2364, !2369, !2370, !2371}
!2364 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2362, file: !2186, line: 291, baseType: !2365, size: 8)
!2365 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !2362, file: !2186, line: 288, size: 8, elements: !2366)
!2366 = !{!2367, !2368}
!2367 = !DIDerivedType(tag: DW_TAG_member, name: "valid", scope: !2365, file: !2186, line: 289, baseType: !589, size: 1, flags: DIFlagBitField, extraData: i64 0)
!2368 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !2365, file: !2186, line: 290, baseType: !589, size: 7, offset: 1, flags: DIFlagBitField, extraData: i64 0)
!2369 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !2362, file: !2186, line: 292, baseType: !589, size: 8, offset: 8)
!2370 = !DIDerivedType(tag: DW_TAG_member, name: "performance", scope: !2362, file: !2186, line: 293, baseType: !589, size: 8, offset: 16)
!2371 = !DIDerivedType(tag: DW_TAG_member, name: "latency", scope: !2362, file: !2186, line: 294, baseType: !102, size: 32, offset: 32)
!2372 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !2185, file: !2186, line: 366, baseType: !2373, size: 64, offset: 4096)
!2373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_dir", file: !2186, line: 209, size: 64, elements: !2374)
!2374 = !{!2375}
!2375 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !2373, file: !2186, line: 210, baseType: !2376, size: 64)
!2376 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2377, size: 64)
!2377 = !DICompositeType(tag: DW_TAG_structure_type, name: "proc_dir_entry", file: !2186, line: 84, flags: DIFlagFwdDecl)
!2378 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2185, file: !2186, line: 367, baseType: !2379, size: 384, offset: 4160)
!2379 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_data", file: !2186, line: 341, size: 384, elements: !2380)
!2380 = !{!2381, !2384, !2385, !2386}
!2381 = !DIDerivedType(tag: DW_TAG_member, name: "pointer", scope: !2379, file: !2186, line: 342, baseType: !2382, size: 64)
!2382 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2383, size: 64)
!2383 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2250)
!2384 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2379, file: !2186, line: 343, baseType: !129, size: 128, offset: 64)
!2385 = !DIDerivedType(tag: DW_TAG_member, name: "of_compatible", scope: !2379, file: !2186, line: 344, baseType: !2382, size: 64, offset: 192)
!2386 = !DIDerivedType(tag: DW_TAG_member, name: "subnodes", scope: !2379, file: !2186, line: 345, baseType: !129, size: 128, offset: 256)
!2387 = !DIDerivedType(tag: DW_TAG_member, name: "handler", scope: !2185, file: !2186, line: 368, baseType: !2388, size: 64, offset: 4544)
!2388 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2389, size: 64)
!2389 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_scan_handler", file: !2186, line: 122, size: 1216, elements: !2390)
!2390 = !{!2391, !2392, !2393, !2398, !2402, !2406, !2407, !2408}
!2391 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2389, file: !2186, line: 123, baseType: !1718, size: 64)
!2392 = !DIDerivedType(tag: DW_TAG_member, name: "list_node", scope: !2389, file: !2186, line: 124, baseType: !129, size: 128, offset: 64)
!2393 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2389, file: !2186, line: 125, baseType: !2394, size: 64, offset: 192)
!2394 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2395, size: 64)
!2395 = !DISubroutineType(types: !2396)
!2396 = !{!1022, !125, !2397}
!2397 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1718, size: 64)
!2398 = !DIDerivedType(tag: DW_TAG_member, name: "attach", scope: !2389, file: !2186, line: 126, baseType: !2399, size: 64, offset: 256)
!2399 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2400, size: 64)
!2400 = !DISubroutineType(types: !2401)
!2401 = !{!102, !2184, !1718}
!2402 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !2389, file: !2186, line: 127, baseType: !2403, size: 64, offset: 320)
!2403 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2404, size: 64)
!2404 = !DISubroutineType(types: !2405)
!2405 = !{null, !2184}
!2406 = !DIDerivedType(tag: DW_TAG_member, name: "bind", scope: !2389, file: !2186, line: 128, baseType: !1643, size: 64, offset: 384)
!2407 = !DIDerivedType(tag: DW_TAG_member, name: "unbind", scope: !2389, file: !2186, line: 129, baseType: !1643, size: 64, offset: 448)
!2408 = !DIDerivedType(tag: DW_TAG_member, name: "hotplug", scope: !2389, file: !2186, line: 130, baseType: !2409, size: 704, offset: 512)
!2409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_profile", file: !2186, line: 108, size: 704, elements: !2410)
!2410 = !{!2411, !2412, !2416, !2417, !2418}
!2411 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2409, file: !2186, line: 109, baseType: !121, size: 512)
!2412 = !DIDerivedType(tag: DW_TAG_member, name: "scan_dependent", scope: !2409, file: !2186, line: 110, baseType: !2413, size: 64, offset: 512)
!2413 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2414, size: 64)
!2414 = !DISubroutineType(types: !2415)
!2415 = !{!102, !2184}
!2416 = !DIDerivedType(tag: DW_TAG_member, name: "notify_online", scope: !2409, file: !2186, line: 111, baseType: !2403, size: 64, offset: 576)
!2417 = !DIDerivedType(tag: DW_TAG_member, name: "enabled", scope: !2409, file: !2186, line: 112, baseType: !1022, size: 1, offset: 640, flags: DIFlagBitField, extraData: i64 640)
!2418 = !DIDerivedType(tag: DW_TAG_member, name: "demand_offline", scope: !2409, file: !2186, line: 113, baseType: !1022, size: 1, offset: 641, flags: DIFlagBitField, extraData: i64 640)
!2419 = !DIDerivedType(tag: DW_TAG_member, name: "hp", scope: !2185, file: !2186, line: 369, baseType: !2420, size: 64, offset: 4608)
!2420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2421, size: 64)
!2421 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_hotplug_context", file: !2186, line: 138, size: 256, elements: !2422)
!2422 = !{!2423, !2424, !2428, !2432}
!2423 = !DIDerivedType(tag: DW_TAG_member, name: "self", scope: !2421, file: !2186, line: 139, baseType: !2184, size: 64)
!2424 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2421, file: !2186, line: 140, baseType: !2425, size: 64, offset: 64)
!2425 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2426, size: 64)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!102, !2184, !452}
!2428 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !2421, file: !2186, line: 141, baseType: !2429, size: 64, offset: 128)
!2429 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2430, size: 64)
!2430 = !DISubroutineType(types: !2431)
!2431 = !{null, !2184, !452}
!2432 = !DIDerivedType(tag: DW_TAG_member, name: "fixup", scope: !2421, file: !2186, line: 142, baseType: !2403, size: 64, offset: 192)
!2433 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !2185, file: !2186, line: 370, baseType: !2434, size: 64, offset: 4672)
!2434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2435, size: 64)
!2435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_driver", file: !2186, line: 162, size: 2816, elements: !2436)
!2436 = !{!2437, !2441, !2442, !2443, !2444, !2453, !2454}
!2437 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2435, file: !2186, line: 163, baseType: !2438, size: 640)
!2438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !127, size: 640, elements: !2439)
!2439 = !{!2440}
!2440 = !DISubrange(count: 80)
!2441 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !2435, file: !2186, line: 164, baseType: !2438, size: 640, offset: 640)
!2442 = !DIDerivedType(tag: DW_TAG_member, name: "ids", scope: !2435, file: !2186, line: 165, baseType: !1718, size: 64, offset: 1280)
!2443 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2435, file: !2186, line: 166, baseType: !7, size: 32, offset: 1344)
!2444 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2435, file: !2186, line: 167, baseType: !2445, size: 192, offset: 1408)
!2445 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_ops", file: !2186, line: 154, size: 192, elements: !2446)
!2446 = !{!2447, !2449, !2451}
!2447 = !DIDerivedType(tag: DW_TAG_member, name: "add", scope: !2445, file: !2186, line: 155, baseType: !2448, size: 64)
!2448 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_add", file: !2186, line: 150, baseType: !2413)
!2449 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2445, file: !2186, line: 156, baseType: !2450, size: 64, offset: 64)
!2450 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_remove", file: !2186, line: 151, baseType: !2413)
!2451 = !DIDerivedType(tag: DW_TAG_member, name: "notify", scope: !2445, file: !2186, line: 157, baseType: !2452, size: 64, offset: 128)
!2452 = !DIDerivedType(tag: DW_TAG_typedef, name: "acpi_op_notify", file: !2186, line: 152, baseType: !2429)
!2453 = !DIDerivedType(tag: DW_TAG_member, name: "drv", scope: !2435, file: !2186, line: 168, baseType: !1693, size: 1152, offset: 1600)
!2454 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2435, file: !2186, line: 169, baseType: !1698, size: 64, offset: 2752)
!2455 = !DIDerivedType(tag: DW_TAG_member, name: "driver_gpios", scope: !2185, file: !2186, line: 371, baseType: !2456, size: 64, offset: 4736)
!2456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2457, size: 64)
!2457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2458)
!2458 = !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_gpio_mapping", file: !2186, line: 348, flags: DIFlagFwdDecl)
!2459 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !2185, file: !2186, line: 372, baseType: !79, size: 64, offset: 4800)
!2460 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2185, file: !2186, line: 373, baseType: !118, size: 5568, offset: 4864)
!2461 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_count", scope: !2185, file: !2186, line: 374, baseType: !7, size: 32, offset: 10432)
!2462 = !DIDerivedType(tag: DW_TAG_member, name: "dep_unmet", scope: !2185, file: !2186, line: 375, baseType: !7, size: 32, offset: 10464)
!2463 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_list", scope: !2185, file: !2186, line: 376, baseType: !129, size: 128, offset: 10496)
!2464 = !DIDerivedType(tag: DW_TAG_member, name: "physical_node_lock", scope: !2185, file: !2186, line: 377, baseType: !398, size: 192, offset: 10624)
!2465 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !2185, file: !2186, line: 378, baseType: !2403, size: 64, offset: 10816)
!2466 = !{!2467, !2469, !2476, !2481, !2486, !2489, !0, !2491, !2493, !2496, !2498, !2501}
!2467 = !DIGlobalVariableExpression(var: !2468, expr: !DIExpression())
!2468 = distinct !DIGlobalVariable(name: "__UNIQUE_ID___addressable_ulpi_init179", scope: !2, file: !3, line: 312, type: !79, isLocal: true, isDefinition: true)
!2469 = !DIGlobalVariableExpression(var: !2470, expr: !DIExpression())
!2470 = distinct !DIGlobalVariable(name: "__exitcall_ulpi_exit", scope: !2, file: !3, line: 318, type: !2471, isLocal: true, isDefinition: true)
!2471 = !DIDerivedType(tag: DW_TAG_typedef, name: "exitcall_t", file: !2472, line: 117, baseType: !2473)
!2472 = !DIFile(filename: "./include/linux/init.h", directory: "/home/lizy2001/genbc/linux")
!2473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2474, size: 64)
!2474 = !DISubroutineType(types: !2475)
!2475 = !{null}
!2476 = !DIGlobalVariableExpression(var: !2477, expr: !DIExpression())
!2477 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author180", scope: !2, file: !3, line: 320, type: !2478, isLocal: true, isDefinition: true, align: 8)
!2478 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 240, elements: !2479)
!2479 = !{!2480}
!2480 = !DISubrange(count: 30)
!2481 = !DIGlobalVariableExpression(var: !2482, expr: !DIExpression())
!2482 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file181", scope: !2, file: !3, line: 321, type: !2483, isLocal: true, isDefinition: true, align: 8)
!2483 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 272, elements: !2484)
!2484 = !{!2485}
!2485 = !DISubrange(count: 34)
!2486 = !DIGlobalVariableExpression(var: !2487, expr: !DIExpression())
!2487 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license182", scope: !2, file: !3, line: 321, type: !2488, isLocal: true, isDefinition: true, align: 8)
!2488 = !DICompositeType(tag: DW_TAG_array_type, baseType: !126, size: 160, elements: !1227)
!2489 = !DIGlobalVariableExpression(var: !2490, expr: !DIExpression())
!2490 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description183", scope: !2, file: !3, line: 322, type: !2483, isLocal: true, isDefinition: true, align: 8)
!2491 = !DIGlobalVariableExpression(var: !2492, expr: !DIExpression())
!2492 = distinct !DIGlobalVariable(name: "ulpi_dev_type", scope: !2, file: !3, line: 135, type: !1628, isLocal: true, isDefinition: true)
!2493 = !DIGlobalVariableExpression(var: !2494, expr: !DIExpression())
!2494 = distinct !DIGlobalVariable(name: "ulpi_dev_attr_groups", scope: !2, file: !3, line: 125, type: !2495, isLocal: true, isDefinition: true)
!2495 = !DICompositeType(tag: DW_TAG_array_type, baseType: !236, size: 128, elements: !994)
!2496 = !DIGlobalVariableExpression(var: !2497, expr: !DIExpression())
!2497 = distinct !DIGlobalVariable(name: "ulpi_dev_attr_group", scope: !2, file: !3, line: 121, type: !238, isLocal: true, isDefinition: true)
!2498 = !DIGlobalVariableExpression(var: !2499, expr: !DIExpression())
!2499 = distinct !DIGlobalVariable(name: "ulpi_dev_attrs", scope: !2, file: !3, line: 116, type: !2500, isLocal: true, isDefinition: true)
!2500 = !DICompositeType(tag: DW_TAG_array_type, baseType: !219, size: 128, elements: !994)
!2501 = !DIGlobalVariableExpression(var: !2502, expr: !DIExpression())
!2502 = distinct !DIGlobalVariable(name: "dev_attr_modalias", scope: !2, file: !3, line: 114, type: !2503, isLocal: true, isDefinition: true)
!2503 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_attribute", file: !30, line: 99, size: 256, elements: !2504)
!2504 = !{!2505, !2506, !2511}
!2505 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2503, file: !30, line: 100, baseType: !220, size: 128)
!2506 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !2503, file: !30, line: 101, baseType: !2507, size: 64, offset: 128)
!2507 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2508, size: 64)
!2508 = !DISubroutineType(types: !2509)
!2509 = !{!214, !117, !2510, !183}
!2510 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2503, size: 64)
!2511 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !2503, file: !30, line: 103, baseType: !2512, size: 64, offset: 192)
!2512 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2513, size: 64)
!2513 = !DISubroutineType(types: !2514)
!2514 = !{!214, !117, !2510, !125, !229}
!2515 = !{i32 7, !"Dwarf Version", i32 4}
!2516 = !{i32 2, !"Debug Info Version", i32 3}
!2517 = !{i32 1, !"wchar_size", i32 2}
!2518 = !{i32 1, !"Code Model", i32 2}
!2519 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2520 = distinct !DISubprogram(name: "ulpi_read", scope: !3, file: !3, line: 22, type: !2521, scopeLine: 23, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2521 = !DISubroutineType(types: !2522)
!2522 = !{!102, !103, !589}
!2523 = !DILocalVariable(name: "ulpi", arg: 1, scope: !2520, file: !3, line: 22, type: !103)
!2524 = !DILocation(line: 22, column: 28, scope: !2520)
!2525 = !DILocalVariable(name: "addr", arg: 2, scope: !2520, file: !3, line: 22, type: !589)
!2526 = !DILocation(line: 22, column: 37, scope: !2520)
!2527 = !DILocation(line: 24, column: 9, scope: !2520)
!2528 = !DILocation(line: 24, column: 15, scope: !2520)
!2529 = !DILocation(line: 24, column: 20, scope: !2520)
!2530 = !DILocation(line: 24, column: 25, scope: !2520)
!2531 = !DILocation(line: 24, column: 31, scope: !2520)
!2532 = !DILocation(line: 24, column: 35, scope: !2520)
!2533 = !DILocation(line: 24, column: 43, scope: !2520)
!2534 = !DILocation(line: 24, column: 2, scope: !2520)
!2535 = distinct !DISubprogram(name: "ulpi_write", scope: !3, file: !3, line: 28, type: !2536, scopeLine: 29, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2536 = !DISubroutineType(types: !2537)
!2537 = !{!102, !103, !589, !589}
!2538 = !DILocalVariable(name: "ulpi", arg: 1, scope: !2535, file: !3, line: 28, type: !103)
!2539 = !DILocation(line: 28, column: 29, scope: !2535)
!2540 = !DILocalVariable(name: "addr", arg: 2, scope: !2535, file: !3, line: 28, type: !589)
!2541 = !DILocation(line: 28, column: 38, scope: !2535)
!2542 = !DILocalVariable(name: "val", arg: 3, scope: !2535, file: !3, line: 28, type: !589)
!2543 = !DILocation(line: 28, column: 47, scope: !2535)
!2544 = !DILocation(line: 30, column: 9, scope: !2535)
!2545 = !DILocation(line: 30, column: 15, scope: !2535)
!2546 = !DILocation(line: 30, column: 20, scope: !2535)
!2547 = !DILocation(line: 30, column: 26, scope: !2535)
!2548 = !DILocation(line: 30, column: 32, scope: !2535)
!2549 = !DILocation(line: 30, column: 36, scope: !2535)
!2550 = !DILocation(line: 30, column: 44, scope: !2535)
!2551 = !DILocation(line: 30, column: 50, scope: !2535)
!2552 = !DILocation(line: 30, column: 2, scope: !2535)
!2553 = distinct !DISubprogram(name: "__ulpi_register_driver", scope: !3, file: !3, line: 150, type: !2554, scopeLine: 151, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2554 = !DISubroutineType(types: !2555)
!2555 = !{!102, !80, !1698}
!2556 = !DILocalVariable(name: "drv", arg: 1, scope: !2553, file: !3, line: 150, type: !80)
!2557 = !DILocation(line: 150, column: 48, scope: !2553)
!2558 = !DILocalVariable(name: "module", arg: 2, scope: !2553, file: !3, line: 150, type: !1698)
!2559 = !DILocation(line: 150, column: 68, scope: !2553)
!2560 = !DILocation(line: 152, column: 7, scope: !2561)
!2561 = distinct !DILexicalBlock(scope: !2553, file: !3, line: 152, column: 6)
!2562 = !DILocation(line: 152, column: 12, scope: !2561)
!2563 = !DILocation(line: 152, column: 6, scope: !2553)
!2564 = !DILocation(line: 153, column: 3, scope: !2561)
!2565 = !DILocation(line: 155, column: 22, scope: !2553)
!2566 = !DILocation(line: 155, column: 2, scope: !2553)
!2567 = !DILocation(line: 155, column: 7, scope: !2553)
!2568 = !DILocation(line: 155, column: 14, scope: !2553)
!2569 = !DILocation(line: 155, column: 20, scope: !2553)
!2570 = !DILocation(line: 156, column: 2, scope: !2553)
!2571 = !DILocation(line: 156, column: 7, scope: !2553)
!2572 = !DILocation(line: 156, column: 14, scope: !2553)
!2573 = !DILocation(line: 156, column: 18, scope: !2553)
!2574 = !DILocation(line: 158, column: 26, scope: !2553)
!2575 = !DILocation(line: 158, column: 31, scope: !2553)
!2576 = !DILocation(line: 158, column: 9, scope: !2553)
!2577 = !DILocation(line: 158, column: 2, scope: !2553)
!2578 = !DILocation(line: 159, column: 1, scope: !2553)
!2579 = distinct !DISubprogram(name: "ulpi_unregister_driver", scope: !3, file: !3, line: 168, type: !2580, scopeLine: 169, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2580 = !DISubroutineType(types: !2581)
!2581 = !{null, !80}
!2582 = !DILocalVariable(name: "drv", arg: 1, scope: !2579, file: !3, line: 168, type: !80)
!2583 = !DILocation(line: 168, column: 49, scope: !2579)
!2584 = !DILocation(line: 170, column: 21, scope: !2579)
!2585 = !DILocation(line: 170, column: 26, scope: !2579)
!2586 = !DILocation(line: 170, column: 2, scope: !2579)
!2587 = !DILocation(line: 171, column: 1, scope: !2579)
!2588 = distinct !DISubprogram(name: "ulpi_register_interface", scope: !3, file: !3, line: 270, type: !2589, scopeLine: 272, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2589 = !DISubroutineType(types: !2590)
!2590 = !{!103, !117, !108}
!2591 = !DILocalVariable(name: "dev", arg: 1, scope: !2588, file: !3, line: 270, type: !117)
!2592 = !DILocation(line: 270, column: 53, scope: !2588)
!2593 = !DILocalVariable(name: "ops", arg: 2, scope: !2588, file: !3, line: 271, type: !108)
!2594 = !DILocation(line: 271, column: 33, scope: !2588)
!2595 = !DILocalVariable(name: "ulpi", scope: !2588, file: !3, line: 273, type: !103)
!2596 = !DILocation(line: 273, column: 15, scope: !2588)
!2597 = !DILocalVariable(name: "ret", scope: !2588, file: !3, line: 274, type: !102)
!2598 = !DILocation(line: 274, column: 6, scope: !2588)
!2599 = !DILocation(line: 276, column: 9, scope: !2588)
!2600 = !DILocation(line: 276, column: 7, scope: !2588)
!2601 = !DILocation(line: 277, column: 7, scope: !2602)
!2602 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 277, column: 6)
!2603 = !DILocation(line: 277, column: 6, scope: !2588)
!2604 = !DILocation(line: 278, column: 10, scope: !2602)
!2605 = !DILocation(line: 278, column: 3, scope: !2602)
!2606 = !DILocation(line: 280, column: 14, scope: !2588)
!2607 = !DILocation(line: 280, column: 2, scope: !2588)
!2608 = !DILocation(line: 280, column: 8, scope: !2588)
!2609 = !DILocation(line: 280, column: 12, scope: !2588)
!2610 = !DILocation(line: 282, column: 22, scope: !2588)
!2611 = !DILocation(line: 282, column: 27, scope: !2588)
!2612 = !DILocation(line: 282, column: 8, scope: !2588)
!2613 = !DILocation(line: 282, column: 6, scope: !2588)
!2614 = !DILocation(line: 283, column: 6, scope: !2615)
!2615 = distinct !DILexicalBlock(scope: !2588, file: !3, line: 283, column: 6)
!2616 = !DILocation(line: 283, column: 6, scope: !2588)
!2617 = !DILocation(line: 284, column: 9, scope: !2618)
!2618 = distinct !DILexicalBlock(scope: !2615, file: !3, line: 283, column: 11)
!2619 = !DILocation(line: 284, column: 3, scope: !2618)
!2620 = !DILocation(line: 285, column: 18, scope: !2618)
!2621 = !DILocation(line: 285, column: 10, scope: !2618)
!2622 = !DILocation(line: 285, column: 3, scope: !2618)
!2623 = !DILocation(line: 288, column: 9, scope: !2588)
!2624 = !DILocation(line: 288, column: 2, scope: !2588)
!2625 = !DILocation(line: 289, column: 1, scope: !2588)
!2626 = distinct !DISubprogram(name: "kzalloc", scope: !70, file: !70, line: 662, type: !2627, scopeLine: 663, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2627 = !DISubroutineType(types: !2628)
!2628 = !{!79, !229, !77}
!2629 = !DILocalVariable(name: "s", arg: 1, scope: !2630, file: !70, line: 445, type: !1072)
!2630 = distinct !DISubprogram(name: "kmem_cache_alloc_trace", scope: !70, file: !70, line: 445, type: !2631, scopeLine: 447, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2631 = !DISubroutineType(types: !2632)
!2632 = !{!79, !1072, !77, !229}
!2633 = !DILocation(line: 445, column: 72, scope: !2630, inlinedAt: !2634)
!2634 = distinct !DILocation(line: 552, column: 10, scope: !2635, inlinedAt: !2638)
!2635 = distinct !DILexicalBlock(scope: !2636, file: !70, line: 540, column: 34)
!2636 = distinct !DILexicalBlock(scope: !2637, file: !70, line: 540, column: 6)
!2637 = distinct !DISubprogram(name: "kmalloc", scope: !70, file: !70, line: 538, type: !2627, scopeLine: 539, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2638 = distinct !DILocation(line: 664, column: 9, scope: !2626)
!2639 = !DILocalVariable(name: "flags", arg: 2, scope: !2630, file: !70, line: 446, type: !77)
!2640 = !DILocation(line: 446, column: 9, scope: !2630, inlinedAt: !2634)
!2641 = !DILocalVariable(name: "size", arg: 3, scope: !2630, file: !70, line: 446, type: !229)
!2642 = !DILocation(line: 446, column: 23, scope: !2630, inlinedAt: !2634)
!2643 = !DILocalVariable(name: "ret", scope: !2630, file: !70, line: 448, type: !79)
!2644 = !DILocation(line: 448, column: 8, scope: !2630, inlinedAt: !2634)
!2645 = !DILocalVariable(name: "flags", arg: 1, scope: !2646, file: !70, line: 318, type: !77)
!2646 = distinct !DISubprogram(name: "kmalloc_type", scope: !70, file: !70, line: 318, type: !2647, scopeLine: 319, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2647 = !DISubroutineType(types: !2648)
!2648 = !{!69, !77}
!2649 = !DILocation(line: 318, column: 67, scope: !2646, inlinedAt: !2650)
!2650 = distinct !DILocation(line: 553, column: 20, scope: !2635, inlinedAt: !2638)
!2651 = !DILocalVariable(name: "size", arg: 1, scope: !2652, file: !70, line: 346, type: !229)
!2652 = distinct !DISubprogram(name: "kmalloc_index", scope: !70, file: !70, line: 346, type: !2653, scopeLine: 347, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2653 = !DISubroutineType(types: !2654)
!2654 = !{!7, !229}
!2655 = !DILocation(line: 346, column: 58, scope: !2652, inlinedAt: !2656)
!2656 = distinct !DILocation(line: 547, column: 11, scope: !2635, inlinedAt: !2638)
!2657 = !DILocalVariable(name: "size", arg: 1, scope: !2658, file: !70, line: 472, type: !229)
!2658 = distinct !DISubprogram(name: "kmalloc_order_trace", scope: !70, file: !70, line: 472, type: !2659, scopeLine: 473, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2659 = !DISubroutineType(types: !2660)
!2660 = !{!79, !229, !77, !7}
!2661 = !DILocation(line: 472, column: 28, scope: !2658, inlinedAt: !2662)
!2662 = distinct !DILocation(line: 481, column: 9, scope: !2663, inlinedAt: !2664)
!2663 = distinct !DISubprogram(name: "kmalloc_large", scope: !70, file: !70, line: 478, type: !2627, scopeLine: 479, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2664 = distinct !DILocation(line: 545, column: 11, scope: !2665, inlinedAt: !2638)
!2665 = distinct !DILexicalBlock(scope: !2635, file: !70, line: 544, column: 7)
!2666 = !DILocalVariable(name: "flags", arg: 2, scope: !2658, file: !70, line: 472, type: !77)
!2667 = !DILocation(line: 472, column: 40, scope: !2658, inlinedAt: !2662)
!2668 = !DILocalVariable(name: "order", arg: 3, scope: !2658, file: !70, line: 472, type: !7)
!2669 = !DILocation(line: 472, column: 60, scope: !2658, inlinedAt: !2662)
!2670 = !DILocalVariable(name: "size", arg: 1, scope: !2663, file: !70, line: 478, type: !229)
!2671 = !DILocation(line: 478, column: 51, scope: !2663, inlinedAt: !2664)
!2672 = !DILocalVariable(name: "flags", arg: 2, scope: !2663, file: !70, line: 478, type: !77)
!2673 = !DILocation(line: 478, column: 63, scope: !2663, inlinedAt: !2664)
!2674 = !DILocalVariable(name: "order", scope: !2663, file: !70, line: 480, type: !7)
!2675 = !DILocation(line: 480, column: 15, scope: !2663, inlinedAt: !2664)
!2676 = !DILocalVariable(name: "size", arg: 1, scope: !2637, file: !70, line: 538, type: !229)
!2677 = !DILocation(line: 538, column: 45, scope: !2637, inlinedAt: !2638)
!2678 = !DILocalVariable(name: "flags", arg: 2, scope: !2637, file: !70, line: 538, type: !77)
!2679 = !DILocation(line: 538, column: 57, scope: !2637, inlinedAt: !2638)
!2680 = !DILocalVariable(name: "index", scope: !2635, file: !70, line: 542, type: !7)
!2681 = !DILocation(line: 542, column: 16, scope: !2635, inlinedAt: !2638)
!2682 = !DILocalVariable(name: "size", arg: 1, scope: !2626, file: !70, line: 662, type: !229)
!2683 = !DILocation(line: 662, column: 36, scope: !2626)
!2684 = !DILocalVariable(name: "flags", arg: 2, scope: !2626, file: !70, line: 662, type: !77)
!2685 = !DILocation(line: 662, column: 48, scope: !2626)
!2686 = !DILocation(line: 664, column: 17, scope: !2626)
!2687 = !DILocation(line: 664, column: 23, scope: !2626)
!2688 = !DILocation(line: 664, column: 29, scope: !2626)
!2689 = !DILocation(line: 540, column: 27, scope: !2636, inlinedAt: !2638)
!2690 = !DILocation(line: 540, column: 6, scope: !2636, inlinedAt: !2638)
!2691 = !DILocation(line: 540, column: 6, scope: !2637, inlinedAt: !2638)
!2692 = !DILocation(line: 544, column: 7, scope: !2665, inlinedAt: !2638)
!2693 = !DILocation(line: 544, column: 12, scope: !2665, inlinedAt: !2638)
!2694 = !DILocation(line: 544, column: 7, scope: !2635, inlinedAt: !2638)
!2695 = !DILocation(line: 545, column: 25, scope: !2665, inlinedAt: !2638)
!2696 = !DILocation(line: 545, column: 31, scope: !2665, inlinedAt: !2638)
!2697 = !DILocation(line: 480, column: 33, scope: !2663, inlinedAt: !2664)
!2698 = !DILocation(line: 480, column: 23, scope: !2663, inlinedAt: !2664)
!2699 = !DILocation(line: 481, column: 29, scope: !2663, inlinedAt: !2664)
!2700 = !DILocation(line: 481, column: 35, scope: !2663, inlinedAt: !2664)
!2701 = !DILocation(line: 481, column: 42, scope: !2663, inlinedAt: !2664)
!2702 = !DILocation(line: 474, column: 23, scope: !2658, inlinedAt: !2662)
!2703 = !DILocation(line: 474, column: 29, scope: !2658, inlinedAt: !2662)
!2704 = !DILocation(line: 474, column: 36, scope: !2658, inlinedAt: !2662)
!2705 = !DILocation(line: 474, column: 9, scope: !2658, inlinedAt: !2662)
!2706 = !DILocation(line: 545, column: 4, scope: !2665, inlinedAt: !2638)
!2707 = !DILocation(line: 547, column: 25, scope: !2635, inlinedAt: !2638)
!2708 = !DILocation(line: 348, column: 7, scope: !2709, inlinedAt: !2656)
!2709 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 348, column: 6)
!2710 = !DILocation(line: 348, column: 6, scope: !2652, inlinedAt: !2656)
!2711 = !DILocation(line: 349, column: 3, scope: !2709, inlinedAt: !2656)
!2712 = !DILocation(line: 351, column: 6, scope: !2713, inlinedAt: !2656)
!2713 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 351, column: 6)
!2714 = !DILocation(line: 351, column: 11, scope: !2713, inlinedAt: !2656)
!2715 = !DILocation(line: 351, column: 6, scope: !2652, inlinedAt: !2656)
!2716 = !DILocation(line: 352, column: 3, scope: !2713, inlinedAt: !2656)
!2717 = !DILocation(line: 354, column: 32, scope: !2718, inlinedAt: !2656)
!2718 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 354, column: 6)
!2719 = !DILocation(line: 354, column: 37, scope: !2718, inlinedAt: !2656)
!2720 = !DILocation(line: 354, column: 42, scope: !2718, inlinedAt: !2656)
!2721 = !DILocation(line: 354, column: 45, scope: !2718, inlinedAt: !2656)
!2722 = !DILocation(line: 354, column: 50, scope: !2718, inlinedAt: !2656)
!2723 = !DILocation(line: 354, column: 6, scope: !2652, inlinedAt: !2656)
!2724 = !DILocation(line: 355, column: 3, scope: !2718, inlinedAt: !2656)
!2725 = !DILocation(line: 356, column: 32, scope: !2726, inlinedAt: !2656)
!2726 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 356, column: 6)
!2727 = !DILocation(line: 356, column: 37, scope: !2726, inlinedAt: !2656)
!2728 = !DILocation(line: 356, column: 43, scope: !2726, inlinedAt: !2656)
!2729 = !DILocation(line: 356, column: 46, scope: !2726, inlinedAt: !2656)
!2730 = !DILocation(line: 356, column: 51, scope: !2726, inlinedAt: !2656)
!2731 = !DILocation(line: 356, column: 6, scope: !2652, inlinedAt: !2656)
!2732 = !DILocation(line: 357, column: 3, scope: !2726, inlinedAt: !2656)
!2733 = !DILocation(line: 358, column: 6, scope: !2734, inlinedAt: !2656)
!2734 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 358, column: 6)
!2735 = !DILocation(line: 358, column: 11, scope: !2734, inlinedAt: !2656)
!2736 = !DILocation(line: 358, column: 6, scope: !2652, inlinedAt: !2656)
!2737 = !DILocation(line: 358, column: 26, scope: !2734, inlinedAt: !2656)
!2738 = !DILocation(line: 359, column: 6, scope: !2739, inlinedAt: !2656)
!2739 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 359, column: 6)
!2740 = !DILocation(line: 359, column: 11, scope: !2739, inlinedAt: !2656)
!2741 = !DILocation(line: 359, column: 6, scope: !2652, inlinedAt: !2656)
!2742 = !DILocation(line: 359, column: 26, scope: !2739, inlinedAt: !2656)
!2743 = !DILocation(line: 360, column: 6, scope: !2744, inlinedAt: !2656)
!2744 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 360, column: 6)
!2745 = !DILocation(line: 360, column: 11, scope: !2744, inlinedAt: !2656)
!2746 = !DILocation(line: 360, column: 6, scope: !2652, inlinedAt: !2656)
!2747 = !DILocation(line: 360, column: 26, scope: !2744, inlinedAt: !2656)
!2748 = !DILocation(line: 361, column: 6, scope: !2749, inlinedAt: !2656)
!2749 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 361, column: 6)
!2750 = !DILocation(line: 361, column: 11, scope: !2749, inlinedAt: !2656)
!2751 = !DILocation(line: 361, column: 6, scope: !2652, inlinedAt: !2656)
!2752 = !DILocation(line: 361, column: 26, scope: !2749, inlinedAt: !2656)
!2753 = !DILocation(line: 362, column: 6, scope: !2754, inlinedAt: !2656)
!2754 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 362, column: 6)
!2755 = !DILocation(line: 362, column: 11, scope: !2754, inlinedAt: !2656)
!2756 = !DILocation(line: 362, column: 6, scope: !2652, inlinedAt: !2656)
!2757 = !DILocation(line: 362, column: 26, scope: !2754, inlinedAt: !2656)
!2758 = !DILocation(line: 363, column: 6, scope: !2759, inlinedAt: !2656)
!2759 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 363, column: 6)
!2760 = !DILocation(line: 363, column: 11, scope: !2759, inlinedAt: !2656)
!2761 = !DILocation(line: 363, column: 6, scope: !2652, inlinedAt: !2656)
!2762 = !DILocation(line: 363, column: 26, scope: !2759, inlinedAt: !2656)
!2763 = !DILocation(line: 364, column: 6, scope: !2764, inlinedAt: !2656)
!2764 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 364, column: 6)
!2765 = !DILocation(line: 364, column: 11, scope: !2764, inlinedAt: !2656)
!2766 = !DILocation(line: 364, column: 6, scope: !2652, inlinedAt: !2656)
!2767 = !DILocation(line: 364, column: 26, scope: !2764, inlinedAt: !2656)
!2768 = !DILocation(line: 365, column: 6, scope: !2769, inlinedAt: !2656)
!2769 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 365, column: 6)
!2770 = !DILocation(line: 365, column: 11, scope: !2769, inlinedAt: !2656)
!2771 = !DILocation(line: 365, column: 6, scope: !2652, inlinedAt: !2656)
!2772 = !DILocation(line: 365, column: 26, scope: !2769, inlinedAt: !2656)
!2773 = !DILocation(line: 366, column: 6, scope: !2774, inlinedAt: !2656)
!2774 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 366, column: 6)
!2775 = !DILocation(line: 366, column: 11, scope: !2774, inlinedAt: !2656)
!2776 = !DILocation(line: 366, column: 6, scope: !2652, inlinedAt: !2656)
!2777 = !DILocation(line: 366, column: 26, scope: !2774, inlinedAt: !2656)
!2778 = !DILocation(line: 367, column: 6, scope: !2779, inlinedAt: !2656)
!2779 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 367, column: 6)
!2780 = !DILocation(line: 367, column: 11, scope: !2779, inlinedAt: !2656)
!2781 = !DILocation(line: 367, column: 6, scope: !2652, inlinedAt: !2656)
!2782 = !DILocation(line: 367, column: 26, scope: !2779, inlinedAt: !2656)
!2783 = !DILocation(line: 368, column: 6, scope: !2784, inlinedAt: !2656)
!2784 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 368, column: 6)
!2785 = !DILocation(line: 368, column: 11, scope: !2784, inlinedAt: !2656)
!2786 = !DILocation(line: 368, column: 6, scope: !2652, inlinedAt: !2656)
!2787 = !DILocation(line: 368, column: 26, scope: !2784, inlinedAt: !2656)
!2788 = !DILocation(line: 369, column: 6, scope: !2789, inlinedAt: !2656)
!2789 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 369, column: 6)
!2790 = !DILocation(line: 369, column: 11, scope: !2789, inlinedAt: !2656)
!2791 = !DILocation(line: 369, column: 6, scope: !2652, inlinedAt: !2656)
!2792 = !DILocation(line: 369, column: 26, scope: !2789, inlinedAt: !2656)
!2793 = !DILocation(line: 370, column: 6, scope: !2794, inlinedAt: !2656)
!2794 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 370, column: 6)
!2795 = !DILocation(line: 370, column: 11, scope: !2794, inlinedAt: !2656)
!2796 = !DILocation(line: 370, column: 6, scope: !2652, inlinedAt: !2656)
!2797 = !DILocation(line: 370, column: 26, scope: !2794, inlinedAt: !2656)
!2798 = !DILocation(line: 371, column: 6, scope: !2799, inlinedAt: !2656)
!2799 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 371, column: 6)
!2800 = !DILocation(line: 371, column: 11, scope: !2799, inlinedAt: !2656)
!2801 = !DILocation(line: 371, column: 6, scope: !2652, inlinedAt: !2656)
!2802 = !DILocation(line: 371, column: 26, scope: !2799, inlinedAt: !2656)
!2803 = !DILocation(line: 372, column: 6, scope: !2804, inlinedAt: !2656)
!2804 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 372, column: 6)
!2805 = !DILocation(line: 372, column: 11, scope: !2804, inlinedAt: !2656)
!2806 = !DILocation(line: 372, column: 6, scope: !2652, inlinedAt: !2656)
!2807 = !DILocation(line: 372, column: 26, scope: !2804, inlinedAt: !2656)
!2808 = !DILocation(line: 373, column: 6, scope: !2809, inlinedAt: !2656)
!2809 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 373, column: 6)
!2810 = !DILocation(line: 373, column: 11, scope: !2809, inlinedAt: !2656)
!2811 = !DILocation(line: 373, column: 6, scope: !2652, inlinedAt: !2656)
!2812 = !DILocation(line: 373, column: 26, scope: !2809, inlinedAt: !2656)
!2813 = !DILocation(line: 374, column: 6, scope: !2814, inlinedAt: !2656)
!2814 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 374, column: 6)
!2815 = !DILocation(line: 374, column: 11, scope: !2814, inlinedAt: !2656)
!2816 = !DILocation(line: 374, column: 6, scope: !2652, inlinedAt: !2656)
!2817 = !DILocation(line: 374, column: 26, scope: !2814, inlinedAt: !2656)
!2818 = !DILocation(line: 375, column: 6, scope: !2819, inlinedAt: !2656)
!2819 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 375, column: 6)
!2820 = !DILocation(line: 375, column: 11, scope: !2819, inlinedAt: !2656)
!2821 = !DILocation(line: 375, column: 6, scope: !2652, inlinedAt: !2656)
!2822 = !DILocation(line: 375, column: 27, scope: !2819, inlinedAt: !2656)
!2823 = !DILocation(line: 376, column: 6, scope: !2824, inlinedAt: !2656)
!2824 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 376, column: 6)
!2825 = !DILocation(line: 376, column: 11, scope: !2824, inlinedAt: !2656)
!2826 = !DILocation(line: 376, column: 6, scope: !2652, inlinedAt: !2656)
!2827 = !DILocation(line: 376, column: 32, scope: !2824, inlinedAt: !2656)
!2828 = !DILocation(line: 377, column: 6, scope: !2829, inlinedAt: !2656)
!2829 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 377, column: 6)
!2830 = !DILocation(line: 377, column: 11, scope: !2829, inlinedAt: !2656)
!2831 = !DILocation(line: 377, column: 6, scope: !2652, inlinedAt: !2656)
!2832 = !DILocation(line: 377, column: 32, scope: !2829, inlinedAt: !2656)
!2833 = !DILocation(line: 378, column: 6, scope: !2834, inlinedAt: !2656)
!2834 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 378, column: 6)
!2835 = !DILocation(line: 378, column: 11, scope: !2834, inlinedAt: !2656)
!2836 = !DILocation(line: 378, column: 6, scope: !2652, inlinedAt: !2656)
!2837 = !DILocation(line: 378, column: 32, scope: !2834, inlinedAt: !2656)
!2838 = !DILocation(line: 379, column: 6, scope: !2839, inlinedAt: !2656)
!2839 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 379, column: 6)
!2840 = !DILocation(line: 379, column: 11, scope: !2839, inlinedAt: !2656)
!2841 = !DILocation(line: 379, column: 6, scope: !2652, inlinedAt: !2656)
!2842 = !DILocation(line: 379, column: 33, scope: !2839, inlinedAt: !2656)
!2843 = !DILocation(line: 380, column: 6, scope: !2844, inlinedAt: !2656)
!2844 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 380, column: 6)
!2845 = !DILocation(line: 380, column: 11, scope: !2844, inlinedAt: !2656)
!2846 = !DILocation(line: 380, column: 6, scope: !2652, inlinedAt: !2656)
!2847 = !DILocation(line: 380, column: 33, scope: !2844, inlinedAt: !2656)
!2848 = !DILocation(line: 381, column: 6, scope: !2849, inlinedAt: !2656)
!2849 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 381, column: 6)
!2850 = !DILocation(line: 381, column: 11, scope: !2849, inlinedAt: !2656)
!2851 = !DILocation(line: 381, column: 6, scope: !2652, inlinedAt: !2656)
!2852 = !DILocation(line: 381, column: 33, scope: !2849, inlinedAt: !2656)
!2853 = !DILocation(line: 382, column: 2, scope: !2854, inlinedAt: !2656)
!2854 = distinct !DILexicalBlock(scope: !2855, file: !70, line: 382, column: 2)
!2855 = distinct !DILexicalBlock(scope: !2652, file: !70, line: 382, column: 2)
!2856 = !{i32 -2143527442, i32 -2143527413, i32 -2143527367, i32 -2143527309, i32 -2143527255, i32 -2143527201, i32 -2143527146, i32 -2143527115}
!2857 = !DILocation(line: 382, column: 2, scope: !2858, inlinedAt: !2656)
!2858 = distinct !DILexicalBlock(scope: !2859, file: !70, line: 382, column: 2)
!2859 = distinct !DILexicalBlock(scope: !2855, file: !70, line: 382, column: 2)
!2860 = !{i32 -2143526672, i32 -2143526665, i32 -2143526611, i32 -2143526580, i32 -2143526550}
!2861 = !DILocation(line: 382, column: 2, scope: !2859, inlinedAt: !2656)
!2862 = !DILocation(line: 386, column: 1, scope: !2652, inlinedAt: !2656)
!2863 = !DILocation(line: 547, column: 9, scope: !2635, inlinedAt: !2638)
!2864 = !DILocation(line: 549, column: 8, scope: !2865, inlinedAt: !2638)
!2865 = distinct !DILexicalBlock(scope: !2635, file: !70, line: 549, column: 7)
!2866 = !DILocation(line: 549, column: 7, scope: !2635, inlinedAt: !2638)
!2867 = !DILocation(line: 550, column: 4, scope: !2865, inlinedAt: !2638)
!2868 = !DILocation(line: 553, column: 33, scope: !2635, inlinedAt: !2638)
!2869 = !DILocation(line: 325, column: 6, scope: !2870, inlinedAt: !2650)
!2870 = distinct !DILexicalBlock(scope: !2646, file: !70, line: 325, column: 6)
!2871 = !DILocation(line: 325, column: 6, scope: !2646, inlinedAt: !2650)
!2872 = !DILocation(line: 326, column: 3, scope: !2870, inlinedAt: !2650)
!2873 = !DILocation(line: 332, column: 9, scope: !2646, inlinedAt: !2650)
!2874 = !DILocation(line: 332, column: 15, scope: !2646, inlinedAt: !2650)
!2875 = !DILocation(line: 332, column: 2, scope: !2646, inlinedAt: !2650)
!2876 = !DILocation(line: 336, column: 1, scope: !2646, inlinedAt: !2650)
!2877 = !DILocation(line: 553, column: 5, scope: !2635, inlinedAt: !2638)
!2878 = !DILocation(line: 553, column: 41, scope: !2635, inlinedAt: !2638)
!2879 = !DILocation(line: 554, column: 5, scope: !2635, inlinedAt: !2638)
!2880 = !DILocation(line: 554, column: 12, scope: !2635, inlinedAt: !2638)
!2881 = !DILocation(line: 448, column: 31, scope: !2630, inlinedAt: !2634)
!2882 = !DILocation(line: 448, column: 34, scope: !2630, inlinedAt: !2634)
!2883 = !DILocation(line: 448, column: 14, scope: !2630, inlinedAt: !2634)
!2884 = !DILocation(line: 450, column: 22, scope: !2630, inlinedAt: !2634)
!2885 = !DILocation(line: 450, column: 25, scope: !2630, inlinedAt: !2634)
!2886 = !DILocation(line: 450, column: 30, scope: !2630, inlinedAt: !2634)
!2887 = !DILocation(line: 450, column: 36, scope: !2630, inlinedAt: !2634)
!2888 = !DILocation(line: 450, column: 8, scope: !2630, inlinedAt: !2634)
!2889 = !DILocation(line: 450, column: 6, scope: !2630, inlinedAt: !2634)
!2890 = !DILocation(line: 451, column: 9, scope: !2630, inlinedAt: !2634)
!2891 = !DILocation(line: 552, column: 3, scope: !2635, inlinedAt: !2638)
!2892 = !DILocation(line: 557, column: 19, scope: !2637, inlinedAt: !2638)
!2893 = !DILocation(line: 557, column: 25, scope: !2637, inlinedAt: !2638)
!2894 = !DILocation(line: 557, column: 9, scope: !2637, inlinedAt: !2638)
!2895 = !DILocation(line: 557, column: 2, scope: !2637, inlinedAt: !2638)
!2896 = !DILocation(line: 558, column: 1, scope: !2637, inlinedAt: !2638)
!2897 = !DILocation(line: 664, column: 2, scope: !2626)
!2898 = distinct !DISubprogram(name: "ERR_PTR", scope: !2899, file: !2899, line: 24, type: !2900, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2899 = !DIFile(filename: "./include/linux/err.h", directory: "/home/lizy2001/genbc/linux")
!2900 = !DISubroutineType(types: !2901)
!2901 = !{!79, !218}
!2902 = !DILocalVariable(name: "error", arg: 1, scope: !2898, file: !2899, line: 24, type: !218)
!2903 = !DILocation(line: 24, column: 48, scope: !2898)
!2904 = !DILocation(line: 26, column: 18, scope: !2898)
!2905 = !DILocation(line: 26, column: 9, scope: !2898)
!2906 = !DILocation(line: 26, column: 2, scope: !2898)
!2907 = distinct !DISubprogram(name: "ulpi_register", scope: !3, file: !3, line: 233, type: !2908, scopeLine: 234, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2908 = !DISubroutineType(types: !2909)
!2909 = !{!102, !117, !103}
!2910 = !DILocalVariable(name: "dev", arg: 1, scope: !2907, file: !3, line: 233, type: !117)
!2911 = !DILocation(line: 233, column: 41, scope: !2907)
!2912 = !DILocalVariable(name: "ulpi", arg: 2, scope: !2907, file: !3, line: 233, type: !103)
!2913 = !DILocation(line: 233, column: 59, scope: !2907)
!2914 = !DILocalVariable(name: "ret", scope: !2907, file: !3, line: 235, type: !102)
!2915 = !DILocation(line: 235, column: 6, scope: !2907)
!2916 = !DILocation(line: 237, column: 21, scope: !2907)
!2917 = !DILocation(line: 237, column: 2, scope: !2907)
!2918 = !DILocation(line: 237, column: 8, scope: !2907)
!2919 = !DILocation(line: 237, column: 12, scope: !2907)
!2920 = !DILocation(line: 237, column: 19, scope: !2907)
!2921 = !DILocation(line: 238, column: 2, scope: !2907)
!2922 = !DILocation(line: 238, column: 8, scope: !2907)
!2923 = !DILocation(line: 238, column: 12, scope: !2907)
!2924 = !DILocation(line: 238, column: 16, scope: !2907)
!2925 = !DILocation(line: 239, column: 2, scope: !2907)
!2926 = !DILocation(line: 239, column: 8, scope: !2907)
!2927 = !DILocation(line: 239, column: 12, scope: !2907)
!2928 = !DILocation(line: 239, column: 17, scope: !2907)
!2929 = !DILocation(line: 240, column: 16, scope: !2907)
!2930 = !DILocation(line: 240, column: 22, scope: !2907)
!2931 = !DILocation(line: 240, column: 47, scope: !2907)
!2932 = !DILocation(line: 240, column: 38, scope: !2907)
!2933 = !DILocation(line: 240, column: 2, scope: !2907)
!2934 = !DILocation(line: 242, column: 2, scope: !2907)
!2935 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2936, file: !3, line: 242, type: !1931)
!2936 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 242, column: 2)
!2937 = !DILocation(line: 242, column: 2, scope: !2936)
!2938 = !DILocalVariable(name: "__mptr", scope: !2939, file: !3, line: 242, type: !79)
!2939 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 242, column: 2)
!2940 = !DILocation(line: 242, column: 2, scope: !2939)
!2941 = !DILocation(line: 242, column: 2, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2939, file: !3, line: 242, column: 2)
!2943 = !DILocalVariable(name: "__to_acpi_device_node_fwnode", scope: !2944, file: !3, line: 242, type: !1931)
!2944 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 242, column: 2)
!2945 = !DILocation(line: 242, column: 2, scope: !2944)
!2946 = !DILocalVariable(name: "__mptr", scope: !2947, file: !3, line: 242, type: !79)
!2947 = distinct !DILexicalBlock(scope: !2944, file: !3, line: 242, column: 2)
!2948 = !DILocation(line: 242, column: 2, scope: !2947)
!2949 = !DILocation(line: 242, column: 2, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2947, file: !3, line: 242, column: 2)
!2951 = !DILocation(line: 244, column: 25, scope: !2907)
!2952 = !DILocation(line: 244, column: 8, scope: !2907)
!2953 = !DILocation(line: 244, column: 6, scope: !2907)
!2954 = !DILocation(line: 245, column: 6, scope: !2955)
!2955 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 245, column: 6)
!2956 = !DILocation(line: 245, column: 6, scope: !2907)
!2957 = !DILocation(line: 246, column: 10, scope: !2955)
!2958 = !DILocation(line: 246, column: 3, scope: !2955)
!2959 = !DILocation(line: 248, column: 21, scope: !2907)
!2960 = !DILocation(line: 248, column: 8, scope: !2907)
!2961 = !DILocation(line: 248, column: 6, scope: !2907)
!2962 = !DILocation(line: 249, column: 6, scope: !2963)
!2963 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 249, column: 6)
!2964 = !DILocation(line: 249, column: 6, scope: !2907)
!2965 = !DILocation(line: 250, column: 10, scope: !2963)
!2966 = !DILocation(line: 250, column: 3, scope: !2963)
!2967 = !DILocation(line: 252, column: 25, scope: !2907)
!2968 = !DILocation(line: 252, column: 31, scope: !2907)
!2969 = !DILocation(line: 252, column: 8, scope: !2907)
!2970 = !DILocation(line: 252, column: 6, scope: !2907)
!2971 = !DILocation(line: 253, column: 6, scope: !2972)
!2972 = distinct !DILexicalBlock(scope: !2907, file: !3, line: 253, column: 6)
!2973 = !DILocation(line: 253, column: 6, scope: !2907)
!2974 = !DILocation(line: 254, column: 10, scope: !2972)
!2975 = !DILocation(line: 254, column: 3, scope: !2972)
!2976 = !DILocation(line: 259, column: 2, scope: !2907)
!2977 = !DILocation(line: 260, column: 1, scope: !2907)
!2978 = distinct !DISubprogram(name: "ulpi_unregister_interface", scope: !3, file: !3, line: 299, type: !2181, scopeLine: 300, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2979 = !DILocalVariable(name: "ulpi", arg: 1, scope: !2978, file: !3, line: 299, type: !103)
!2980 = !DILocation(line: 299, column: 45, scope: !2978)
!2981 = !DILocation(line: 301, column: 14, scope: !2978)
!2982 = !DILocation(line: 301, column: 20, scope: !2978)
!2983 = !DILocation(line: 301, column: 24, scope: !2978)
!2984 = !DILocation(line: 301, column: 2, scope: !2978)
!2985 = !DILocation(line: 302, column: 21, scope: !2978)
!2986 = !DILocation(line: 302, column: 27, scope: !2978)
!2987 = !DILocation(line: 302, column: 2, scope: !2978)
!2988 = !DILocation(line: 303, column: 1, scope: !2978)
!2989 = distinct !DISubprogram(name: "of_node_put", scope: !1920, file: !1920, line: 129, type: !2990, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2990 = !DISubroutineType(types: !2991)
!2991 = !{null, !1918}
!2992 = !DILocalVariable(name: "node", arg: 1, scope: !2989, file: !1920, line: 129, type: !1918)
!2993 = !DILocation(line: 129, column: 52, scope: !2989)
!2994 = !DILocation(line: 129, column: 60, scope: !2989)
!2995 = distinct !DISubprogram(name: "ulpi_init", scope: !3, file: !3, line: 308, type: !2996, scopeLine: 309, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!2996 = !DISubroutineType(types: !2997)
!2997 = !{!102}
!2998 = !DILocation(line: 310, column: 9, scope: !2995)
!2999 = !DILocation(line: 310, column: 2, scope: !2995)
!3000 = distinct !DISubprogram(name: "ulpi_exit", scope: !3, file: !3, line: 314, type: !2474, scopeLine: 315, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3001 = !DILocation(line: 316, column: 2, scope: !3000)
!3002 = !DILocation(line: 317, column: 1, scope: !3000)
!3003 = distinct !DISubprogram(name: "ulpi_match", scope: !3, file: !3, line: 36, type: !1690, scopeLine: 37, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3004 = !DILocalVariable(name: "dev", arg: 1, scope: !3003, file: !3, line: 36, type: !117)
!3005 = !DILocation(line: 36, column: 38, scope: !3003)
!3006 = !DILocalVariable(name: "driver", arg: 2, scope: !3003, file: !3, line: 36, type: !1692)
!3007 = !DILocation(line: 36, column: 65, scope: !3003)
!3008 = !DILocalVariable(name: "drv", scope: !3003, file: !3, line: 38, type: !80)
!3009 = !DILocation(line: 38, column: 22, scope: !3003)
!3010 = !DILocalVariable(name: "__mptr", scope: !3011, file: !3, line: 38, type: !79)
!3011 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 38, column: 28)
!3012 = !DILocation(line: 38, column: 28, scope: !3011)
!3013 = !DILocation(line: 38, column: 28, scope: !3014)
!3014 = distinct !DILexicalBlock(scope: !3011, file: !3, line: 38, column: 28)
!3015 = !DILocalVariable(name: "ulpi", scope: !3003, file: !3, line: 39, type: !103)
!3016 = !DILocation(line: 39, column: 15, scope: !3003)
!3017 = !DILocalVariable(name: "__mptr", scope: !3018, file: !3, line: 39, type: !79)
!3018 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 39, column: 22)
!3019 = !DILocation(line: 39, column: 22, scope: !3018)
!3020 = !DILocation(line: 39, column: 22, scope: !3021)
!3021 = distinct !DILexicalBlock(scope: !3018, file: !3, line: 39, column: 22)
!3022 = !DILocalVariable(name: "id", scope: !3003, file: !3, line: 40, type: !85)
!3023 = !DILocation(line: 40, column: 31, scope: !3003)
!3024 = !DILocation(line: 43, column: 6, scope: !3025)
!3025 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 43, column: 6)
!3026 = !DILocation(line: 43, column: 12, scope: !3025)
!3027 = !DILocation(line: 43, column: 15, scope: !3025)
!3028 = !DILocation(line: 43, column: 22, scope: !3025)
!3029 = !DILocation(line: 43, column: 6, scope: !3003)
!3030 = !DILocation(line: 44, column: 33, scope: !3025)
!3031 = !DILocation(line: 44, column: 38, scope: !3025)
!3032 = !DILocation(line: 44, column: 10, scope: !3025)
!3033 = !DILocation(line: 44, column: 3, scope: !3025)
!3034 = !DILocation(line: 46, column: 12, scope: !3035)
!3035 = distinct !DILexicalBlock(scope: !3003, file: !3, line: 46, column: 2)
!3036 = !DILocation(line: 46, column: 17, scope: !3035)
!3037 = !DILocation(line: 46, column: 10, scope: !3035)
!3038 = !DILocation(line: 46, column: 7, scope: !3035)
!3039 = !DILocation(line: 46, column: 27, scope: !3040)
!3040 = distinct !DILexicalBlock(scope: !3035, file: !3, line: 46, column: 2)
!3041 = !DILocation(line: 46, column: 31, scope: !3040)
!3042 = !DILocation(line: 46, column: 2, scope: !3035)
!3043 = !DILocation(line: 47, column: 7, scope: !3044)
!3044 = distinct !DILexicalBlock(scope: !3040, file: !3, line: 47, column: 7)
!3045 = !DILocation(line: 47, column: 11, scope: !3044)
!3046 = !DILocation(line: 47, column: 21, scope: !3044)
!3047 = !DILocation(line: 47, column: 27, scope: !3044)
!3048 = !DILocation(line: 47, column: 30, scope: !3044)
!3049 = !DILocation(line: 47, column: 18, scope: !3044)
!3050 = !DILocation(line: 47, column: 37, scope: !3044)
!3051 = !DILocation(line: 48, column: 7, scope: !3044)
!3052 = !DILocation(line: 48, column: 11, scope: !3044)
!3053 = !DILocation(line: 48, column: 22, scope: !3044)
!3054 = !DILocation(line: 48, column: 28, scope: !3044)
!3055 = !DILocation(line: 48, column: 31, scope: !3044)
!3056 = !DILocation(line: 48, column: 19, scope: !3044)
!3057 = !DILocation(line: 47, column: 7, scope: !3040)
!3058 = !DILocation(line: 49, column: 4, scope: !3044)
!3059 = !DILocation(line: 46, column: 41, scope: !3040)
!3060 = !DILocation(line: 46, column: 2, scope: !3040)
!3061 = distinct !{!3061, !3042, !3062}
!3062 = !DILocation(line: 49, column: 11, scope: !3035)
!3063 = !DILocation(line: 51, column: 2, scope: !3003)
!3064 = !DILocation(line: 52, column: 1, scope: !3003)
!3065 = distinct !DISubprogram(name: "ulpi_uevent", scope: !3, file: !3, line: 54, type: !1635, scopeLine: 55, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3066 = !DILocalVariable(name: "dev", arg: 1, scope: !3065, file: !3, line: 54, type: !117)
!3067 = !DILocation(line: 54, column: 39, scope: !3065)
!3068 = !DILocalVariable(name: "env", arg: 2, scope: !3065, file: !3, line: 54, type: !178)
!3069 = !DILocation(line: 54, column: 68, scope: !3065)
!3070 = !DILocalVariable(name: "ulpi", scope: !3065, file: !3, line: 56, type: !103)
!3071 = !DILocation(line: 56, column: 15, scope: !3065)
!3072 = !DILocalVariable(name: "__mptr", scope: !3073, file: !3, line: 56, type: !79)
!3073 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 56, column: 22)
!3074 = !DILocation(line: 56, column: 22, scope: !3073)
!3075 = !DILocation(line: 56, column: 22, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3073, file: !3, line: 56, column: 22)
!3077 = !DILocalVariable(name: "ret", scope: !3065, file: !3, line: 57, type: !102)
!3078 = !DILocation(line: 57, column: 6, scope: !3065)
!3079 = !DILocation(line: 59, column: 34, scope: !3065)
!3080 = !DILocation(line: 59, column: 39, scope: !3065)
!3081 = !DILocation(line: 59, column: 8, scope: !3065)
!3082 = !DILocation(line: 59, column: 6, scope: !3065)
!3083 = !DILocation(line: 60, column: 6, scope: !3084)
!3084 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 60, column: 6)
!3085 = !DILocation(line: 60, column: 10, scope: !3084)
!3086 = !DILocation(line: 60, column: 6, scope: !3065)
!3087 = !DILocation(line: 61, column: 10, scope: !3084)
!3088 = !DILocation(line: 61, column: 3, scope: !3084)
!3089 = !DILocation(line: 63, column: 21, scope: !3090)
!3090 = distinct !DILexicalBlock(scope: !3065, file: !3, line: 63, column: 6)
!3091 = !DILocation(line: 64, column: 7, scope: !3090)
!3092 = !DILocation(line: 64, column: 13, scope: !3090)
!3093 = !DILocation(line: 64, column: 16, scope: !3090)
!3094 = !DILocation(line: 64, column: 24, scope: !3090)
!3095 = !DILocation(line: 64, column: 30, scope: !3090)
!3096 = !DILocation(line: 64, column: 33, scope: !3090)
!3097 = !DILocation(line: 63, column: 6, scope: !3090)
!3098 = !DILocation(line: 63, column: 6, scope: !3065)
!3099 = !DILocation(line: 65, column: 3, scope: !3090)
!3100 = !DILocation(line: 66, column: 2, scope: !3065)
!3101 = !DILocation(line: 67, column: 1, scope: !3065)
!3102 = distinct !DISubprogram(name: "ulpi_probe", scope: !3, file: !3, line: 69, type: !1653, scopeLine: 70, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3103 = !DILocalVariable(name: "dev", arg: 1, scope: !3102, file: !3, line: 69, type: !117)
!3104 = !DILocation(line: 69, column: 38, scope: !3102)
!3105 = !DILocalVariable(name: "drv", scope: !3102, file: !3, line: 71, type: !80)
!3106 = !DILocation(line: 71, column: 22, scope: !3102)
!3107 = !DILocalVariable(name: "__mptr", scope: !3108, file: !3, line: 71, type: !79)
!3108 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 71, column: 28)
!3109 = !DILocation(line: 71, column: 28, scope: !3108)
!3110 = !DILocation(line: 71, column: 28, scope: !3111)
!3111 = distinct !DILexicalBlock(scope: !3108, file: !3, line: 71, column: 28)
!3112 = !DILocalVariable(name: "ret", scope: !3102, file: !3, line: 72, type: !102)
!3113 = !DILocation(line: 72, column: 6, scope: !3102)
!3114 = !DILocation(line: 74, column: 28, scope: !3102)
!3115 = !DILocation(line: 74, column: 33, scope: !3102)
!3116 = !DILocation(line: 74, column: 8, scope: !3102)
!3117 = !DILocation(line: 74, column: 6, scope: !3102)
!3118 = !DILocation(line: 75, column: 6, scope: !3119)
!3119 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 75, column: 6)
!3120 = !DILocation(line: 75, column: 10, scope: !3119)
!3121 = !DILocation(line: 75, column: 6, scope: !3102)
!3122 = !DILocation(line: 76, column: 10, scope: !3119)
!3123 = !DILocation(line: 76, column: 3, scope: !3119)
!3124 = !DILocation(line: 78, column: 9, scope: !3102)
!3125 = !DILocation(line: 78, column: 14, scope: !3102)
!3126 = !DILocalVariable(name: "__mptr", scope: !3127, file: !3, line: 78, type: !79)
!3127 = distinct !DILexicalBlock(scope: !3102, file: !3, line: 78, column: 20)
!3128 = !DILocation(line: 78, column: 20, scope: !3127)
!3129 = !DILocation(line: 78, column: 20, scope: !3130)
!3130 = distinct !DILexicalBlock(scope: !3127, file: !3, line: 78, column: 20)
!3131 = !DILocation(line: 78, column: 2, scope: !3102)
!3132 = !DILocation(line: 79, column: 1, scope: !3102)
!3133 = distinct !DISubprogram(name: "ulpi_remove", scope: !3, file: !3, line: 81, type: !1653, scopeLine: 82, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3134 = !DILocalVariable(name: "dev", arg: 1, scope: !3133, file: !3, line: 81, type: !117)
!3135 = !DILocation(line: 81, column: 39, scope: !3133)
!3136 = !DILocalVariable(name: "drv", scope: !3133, file: !3, line: 83, type: !80)
!3137 = !DILocation(line: 83, column: 22, scope: !3133)
!3138 = !DILocalVariable(name: "__mptr", scope: !3139, file: !3, line: 83, type: !79)
!3139 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 83, column: 28)
!3140 = !DILocation(line: 83, column: 28, scope: !3139)
!3141 = !DILocation(line: 83, column: 28, scope: !3142)
!3142 = distinct !DILexicalBlock(scope: !3139, file: !3, line: 83, column: 28)
!3143 = !DILocation(line: 85, column: 6, scope: !3144)
!3144 = distinct !DILexicalBlock(scope: !3133, file: !3, line: 85, column: 6)
!3145 = !DILocation(line: 85, column: 11, scope: !3144)
!3146 = !DILocation(line: 85, column: 6, scope: !3133)
!3147 = !DILocation(line: 86, column: 3, scope: !3144)
!3148 = !DILocation(line: 86, column: 8, scope: !3144)
!3149 = !DILocalVariable(name: "__mptr", scope: !3150, file: !3, line: 86, type: !79)
!3150 = distinct !DILexicalBlock(scope: !3144, file: !3, line: 86, column: 15)
!3151 = !DILocation(line: 86, column: 15, scope: !3150)
!3152 = !DILocation(line: 86, column: 15, scope: !3153)
!3153 = distinct !DILexicalBlock(scope: !3150, file: !3, line: 86, column: 15)
!3154 = !DILocation(line: 88, column: 2, scope: !3133)
!3155 = distinct !DISubprogram(name: "of_driver_match_device", scope: !3156, file: !3156, line: 23, type: !3157, scopeLine: 25, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3156 = !DIFile(filename: "./include/linux/of_device.h", directory: "/home/lizy2001/genbc/linux")
!3157 = !DISubroutineType(types: !3158)
!3158 = !{!102, !117, !3159}
!3159 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3160, size: 64)
!3160 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1693)
!3161 = !DILocalVariable(name: "dev", arg: 1, scope: !3155, file: !3156, line: 23, type: !117)
!3162 = !DILocation(line: 23, column: 57, scope: !3155)
!3163 = !DILocalVariable(name: "drv", arg: 2, scope: !3155, file: !3156, line: 24, type: !3159)
!3164 = !DILocation(line: 24, column: 35, scope: !3155)
!3165 = !DILocation(line: 26, column: 25, scope: !3155)
!3166 = !DILocation(line: 26, column: 30, scope: !3155)
!3167 = !DILocation(line: 26, column: 46, scope: !3155)
!3168 = !DILocation(line: 26, column: 9, scope: !3155)
!3169 = !DILocation(line: 26, column: 51, scope: !3155)
!3170 = !DILocation(line: 26, column: 2, scope: !3155)
!3171 = distinct !DISubprogram(name: "get_order", scope: !3172, file: !3172, line: 29, type: !3173, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3172 = !DIFile(filename: "./include/asm-generic/getorder.h", directory: "/home/lizy2001/genbc/linux")
!3173 = !DISubroutineType(types: !3174)
!3174 = !{!102, !97}
!3175 = !DILocalVariable(name: "x", arg: 1, scope: !3176, file: !3177, line: 366, type: !302)
!3176 = distinct !DISubprogram(name: "fls64", scope: !3177, file: !3177, line: 366, type: !3178, scopeLine: 367, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3177 = !DIFile(filename: "./arch/x86/include/asm/bitops.h", directory: "/home/lizy2001/genbc/linux")
!3178 = !DISubroutineType(types: !3179)
!3179 = !{!102, !302}
!3180 = !DILocation(line: 366, column: 40, scope: !3176, inlinedAt: !3181)
!3181 = distinct !DILocation(line: 46, column: 9, scope: !3171)
!3182 = !DILocalVariable(name: "bitpos", scope: !3176, file: !3177, line: 368, type: !102)
!3183 = !DILocation(line: 368, column: 6, scope: !3176, inlinedAt: !3181)
!3184 = !DILocalVariable(name: "size", arg: 1, scope: !3171, file: !3172, line: 29, type: !97)
!3185 = !DILocation(line: 29, column: 63, scope: !3171)
!3186 = !DILocation(line: 31, column: 27, scope: !3187)
!3187 = distinct !DILexicalBlock(scope: !3171, file: !3172, line: 31, column: 6)
!3188 = !DILocation(line: 31, column: 6, scope: !3187)
!3189 = !DILocation(line: 31, column: 6, scope: !3171)
!3190 = !DILocation(line: 32, column: 8, scope: !3191)
!3191 = distinct !DILexicalBlock(scope: !3192, file: !3172, line: 32, column: 7)
!3192 = distinct !DILexicalBlock(scope: !3187, file: !3172, line: 31, column: 34)
!3193 = !DILocation(line: 32, column: 7, scope: !3192)
!3194 = !DILocation(line: 33, column: 4, scope: !3191)
!3195 = !DILocation(line: 35, column: 7, scope: !3196)
!3196 = distinct !DILexicalBlock(scope: !3192, file: !3172, line: 35, column: 7)
!3197 = !DILocation(line: 35, column: 12, scope: !3196)
!3198 = !DILocation(line: 35, column: 7, scope: !3192)
!3199 = !DILocation(line: 36, column: 4, scope: !3196)
!3200 = !DILocation(line: 38, column: 10, scope: !3192)
!3201 = !DILocation(line: 38, column: 28, scope: !3192)
!3202 = !DILocation(line: 38, column: 41, scope: !3192)
!3203 = !DILocation(line: 38, column: 3, scope: !3192)
!3204 = !DILocation(line: 41, column: 6, scope: !3171)
!3205 = !DILocation(line: 42, column: 7, scope: !3171)
!3206 = !DILocation(line: 46, column: 15, scope: !3171)
!3207 = !DILocation(line: 374, column: 2, scope: !3176, inlinedAt: !3181)
!3208 = !DILocation(line: 376, column: 14, scope: !3176, inlinedAt: !3181)
!3209 = !{i32 668258}
!3210 = !DILocation(line: 377, column: 9, scope: !3176, inlinedAt: !3181)
!3211 = !DILocation(line: 377, column: 16, scope: !3176, inlinedAt: !3181)
!3212 = !DILocation(line: 46, column: 2, scope: !3171)
!3213 = !DILocation(line: 48, column: 1, scope: !3171)
!3214 = distinct !DISubprogram(name: "__ilog2_u64", scope: !3215, file: !3215, line: 30, type: !3216, scopeLine: 31, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3215 = !DIFile(filename: "./include/linux/log2.h", directory: "/home/lizy2001/genbc/linux")
!3216 = !DISubroutineType(types: !3217)
!3217 = !{!102, !300}
!3218 = !DILocation(line: 366, column: 40, scope: !3176, inlinedAt: !3219)
!3219 = distinct !DILocation(line: 32, column: 9, scope: !3214)
!3220 = !DILocation(line: 368, column: 6, scope: !3176, inlinedAt: !3219)
!3221 = !DILocalVariable(name: "n", arg: 1, scope: !3214, file: !3215, line: 30, type: !300)
!3222 = !DILocation(line: 30, column: 21, scope: !3214)
!3223 = !DILocation(line: 32, column: 15, scope: !3214)
!3224 = !DILocation(line: 374, column: 2, scope: !3176, inlinedAt: !3219)
!3225 = !DILocation(line: 376, column: 14, scope: !3176, inlinedAt: !3219)
!3226 = !DILocation(line: 377, column: 9, scope: !3176, inlinedAt: !3219)
!3227 = !DILocation(line: 377, column: 16, scope: !3176, inlinedAt: !3219)
!3228 = !DILocation(line: 32, column: 18, scope: !3214)
!3229 = !DILocation(line: 32, column: 2, scope: !3214)
!3230 = distinct !DISubprogram(name: "kasan_kmalloc", scope: !3231, file: !3231, line: 137, type: !3232, scopeLine: 139, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3231 = !DIFile(filename: "./include/linux/kasan.h", directory: "/home/lizy2001/genbc/linux")
!3232 = !DISubroutineType(types: !3233)
!3233 = !{!79, !1072, !1153, !229, !77}
!3234 = !DILocalVariable(name: "s", arg: 1, scope: !3230, file: !3231, line: 137, type: !1072)
!3235 = !DILocation(line: 137, column: 54, scope: !3230)
!3236 = !DILocalVariable(name: "object", arg: 2, scope: !3230, file: !3231, line: 137, type: !1153)
!3237 = !DILocation(line: 137, column: 69, scope: !3230)
!3238 = !DILocalVariable(name: "size", arg: 3, scope: !3230, file: !3231, line: 138, type: !229)
!3239 = !DILocation(line: 138, column: 12, scope: !3230)
!3240 = !DILocalVariable(name: "flags", arg: 4, scope: !3230, file: !3231, line: 138, type: !77)
!3241 = !DILocation(line: 138, column: 24, scope: !3230)
!3242 = !DILocation(line: 140, column: 17, scope: !3230)
!3243 = !DILocation(line: 140, column: 2, scope: !3230)
!3244 = distinct !DISubprogram(name: "dev_name", scope: !30, file: !30, line: 609, type: !3245, scopeLine: 610, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3245 = !DISubroutineType(types: !3246)
!3246 = !{!125, !1955}
!3247 = !DILocalVariable(name: "dev", arg: 1, scope: !3244, file: !30, line: 609, type: !1955)
!3248 = !DILocation(line: 609, column: 57, scope: !3244)
!3249 = !DILocation(line: 612, column: 6, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3244, file: !30, line: 612, column: 6)
!3251 = !DILocation(line: 612, column: 11, scope: !3250)
!3252 = !DILocation(line: 612, column: 6, scope: !3244)
!3253 = !DILocation(line: 613, column: 10, scope: !3250)
!3254 = !DILocation(line: 613, column: 15, scope: !3250)
!3255 = !DILocation(line: 613, column: 3, scope: !3250)
!3256 = !DILocation(line: 615, column: 23, scope: !3244)
!3257 = !DILocation(line: 615, column: 28, scope: !3244)
!3258 = !DILocation(line: 615, column: 9, scope: !3244)
!3259 = !DILocation(line: 615, column: 2, scope: !3244)
!3260 = !DILocation(line: 616, column: 1, scope: !3244)
!3261 = distinct !DISubprogram(name: "acpi_fwnode_handle", scope: !2186, file: !2186, line: 438, type: !3262, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3262 = !DISubroutineType(types: !3263)
!3263 = !{!1931, !2184}
!3264 = !DILocalVariable(name: "adev", arg: 1, scope: !3261, file: !2186, line: 438, type: !2184)
!3265 = !DILocation(line: 438, column: 76, scope: !3261)
!3266 = !DILocation(line: 440, column: 10, scope: !3261)
!3267 = !DILocation(line: 440, column: 16, scope: !3261)
!3268 = !DILocation(line: 440, column: 2, scope: !3261)
!3269 = distinct !DISubprogram(name: "ulpi_of_register", scope: !3, file: !3, line: 176, type: !100, scopeLine: 177, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3270 = !DILocalVariable(name: "ulpi", arg: 1, scope: !3269, file: !3, line: 176, type: !103)
!3271 = !DILocation(line: 176, column: 42, scope: !3269)
!3272 = !DILocalVariable(name: "np", scope: !3269, file: !3, line: 178, type: !1918)
!3273 = !DILocation(line: 178, column: 22, scope: !3269)
!3274 = !DILocalVariable(name: "child", scope: !3269, file: !3, line: 178, type: !1918)
!3275 = !DILocation(line: 178, column: 34, scope: !3269)
!3276 = !DILocalVariable(name: "parent", scope: !3269, file: !3, line: 179, type: !117)
!3277 = !DILocation(line: 179, column: 17, scope: !3269)
!3278 = !DILocation(line: 182, column: 11, scope: !3269)
!3279 = !DILocation(line: 182, column: 17, scope: !3269)
!3280 = !DILocation(line: 182, column: 21, scope: !3269)
!3281 = !DILocation(line: 182, column: 9, scope: !3269)
!3282 = !DILocation(line: 183, column: 6, scope: !3283)
!3283 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 183, column: 6)
!3284 = !DILocation(line: 183, column: 14, scope: !3283)
!3285 = !DILocation(line: 183, column: 6, scope: !3269)
!3286 = !DILocation(line: 184, column: 29, scope: !3283)
!3287 = !DILocation(line: 184, column: 37, scope: !3283)
!3288 = !DILocation(line: 184, column: 8, scope: !3283)
!3289 = !DILocation(line: 184, column: 6, scope: !3283)
!3290 = !DILocation(line: 184, column: 3, scope: !3283)
!3291 = !DILocation(line: 185, column: 11, scope: !3292)
!3292 = distinct !DILexicalBlock(scope: !3283, file: !3, line: 185, column: 11)
!3293 = !DILocation(line: 185, column: 19, scope: !3292)
!3294 = !DILocation(line: 185, column: 26, scope: !3292)
!3295 = !DILocation(line: 185, column: 29, scope: !3292)
!3296 = !DILocation(line: 185, column: 37, scope: !3292)
!3297 = !DILocation(line: 185, column: 45, scope: !3292)
!3298 = !DILocation(line: 185, column: 11, scope: !3283)
!3299 = !DILocation(line: 186, column: 29, scope: !3292)
!3300 = !DILocation(line: 186, column: 37, scope: !3292)
!3301 = !DILocation(line: 186, column: 45, scope: !3292)
!3302 = !DILocation(line: 186, column: 8, scope: !3292)
!3303 = !DILocation(line: 186, column: 6, scope: !3292)
!3304 = !DILocation(line: 186, column: 3, scope: !3292)
!3305 = !DILocation(line: 187, column: 7, scope: !3306)
!3306 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 187, column: 6)
!3307 = !DILocation(line: 187, column: 6, scope: !3269)
!3308 = !DILocation(line: 188, column: 3, scope: !3306)
!3309 = !DILocation(line: 190, column: 38, scope: !3269)
!3310 = !DILocation(line: 190, column: 10, scope: !3269)
!3311 = !DILocation(line: 190, column: 8, scope: !3269)
!3312 = !DILocation(line: 191, column: 14, scope: !3269)
!3313 = !DILocation(line: 191, column: 2, scope: !3269)
!3314 = !DILocation(line: 192, column: 7, scope: !3315)
!3315 = distinct !DILexicalBlock(scope: !3269, file: !3, line: 192, column: 6)
!3316 = !DILocation(line: 192, column: 6, scope: !3269)
!3317 = !DILocation(line: 193, column: 3, scope: !3315)
!3318 = !DILocation(line: 195, column: 22, scope: !3269)
!3319 = !DILocation(line: 195, column: 2, scope: !3269)
!3320 = !DILocation(line: 195, column: 8, scope: !3269)
!3321 = !DILocation(line: 195, column: 12, scope: !3269)
!3322 = !DILocation(line: 195, column: 20, scope: !3269)
!3323 = !DILocation(line: 197, column: 2, scope: !3269)
!3324 = !DILocation(line: 198, column: 1, scope: !3269)
!3325 = distinct !DISubprogram(name: "ulpi_read_id", scope: !3, file: !3, line: 200, type: !100, scopeLine: 201, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3326 = !DILocalVariable(name: "ulpi", arg: 1, scope: !3325, file: !3, line: 200, type: !103)
!3327 = !DILocation(line: 200, column: 38, scope: !3325)
!3328 = !DILocalVariable(name: "ret", scope: !3325, file: !3, line: 202, type: !102)
!3329 = !DILocation(line: 202, column: 6, scope: !3325)
!3330 = !DILocation(line: 205, column: 19, scope: !3325)
!3331 = !DILocation(line: 205, column: 8, scope: !3325)
!3332 = !DILocation(line: 205, column: 6, scope: !3325)
!3333 = !DILocation(line: 206, column: 6, scope: !3334)
!3334 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 206, column: 6)
!3335 = !DILocation(line: 206, column: 10, scope: !3334)
!3336 = !DILocation(line: 206, column: 6, scope: !3325)
!3337 = !DILocation(line: 207, column: 3, scope: !3334)
!3338 = !DILocation(line: 209, column: 18, scope: !3325)
!3339 = !DILocation(line: 209, column: 8, scope: !3325)
!3340 = !DILocation(line: 209, column: 6, scope: !3325)
!3341 = !DILocation(line: 210, column: 6, scope: !3342)
!3342 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 210, column: 6)
!3343 = !DILocation(line: 210, column: 10, scope: !3342)
!3344 = !DILocation(line: 210, column: 6, scope: !3325)
!3345 = !DILocation(line: 211, column: 10, scope: !3342)
!3346 = !DILocation(line: 211, column: 3, scope: !3342)
!3347 = !DILocation(line: 213, column: 6, scope: !3348)
!3348 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 213, column: 6)
!3349 = !DILocation(line: 213, column: 10, scope: !3348)
!3350 = !DILocation(line: 213, column: 6, scope: !3325)
!3351 = !DILocation(line: 214, column: 3, scope: !3348)
!3352 = !DILocation(line: 216, column: 30, scope: !3325)
!3353 = !DILocation(line: 216, column: 20, scope: !3325)
!3354 = !DILocation(line: 216, column: 2, scope: !3325)
!3355 = !DILocation(line: 216, column: 8, scope: !3325)
!3356 = !DILocation(line: 216, column: 11, scope: !3325)
!3357 = !DILocation(line: 216, column: 18, scope: !3325)
!3358 = !DILocation(line: 217, column: 31, scope: !3325)
!3359 = !DILocation(line: 217, column: 21, scope: !3325)
!3360 = !DILocation(line: 217, column: 58, scope: !3325)
!3361 = !DILocation(line: 217, column: 2, scope: !3325)
!3362 = !DILocation(line: 217, column: 8, scope: !3325)
!3363 = !DILocation(line: 217, column: 11, scope: !3325)
!3364 = !DILocation(line: 217, column: 18, scope: !3325)
!3365 = !DILocation(line: 219, column: 31, scope: !3325)
!3366 = !DILocation(line: 219, column: 21, scope: !3325)
!3367 = !DILocation(line: 219, column: 2, scope: !3325)
!3368 = !DILocation(line: 219, column: 8, scope: !3325)
!3369 = !DILocation(line: 219, column: 11, scope: !3325)
!3370 = !DILocation(line: 219, column: 19, scope: !3325)
!3371 = !DILocation(line: 220, column: 32, scope: !3325)
!3372 = !DILocation(line: 220, column: 22, scope: !3325)
!3373 = !DILocation(line: 220, column: 60, scope: !3325)
!3374 = !DILocation(line: 220, column: 2, scope: !3325)
!3375 = !DILocation(line: 220, column: 8, scope: !3325)
!3376 = !DILocation(line: 220, column: 11, scope: !3325)
!3377 = !DILocation(line: 220, column: 19, scope: !3325)
!3378 = !DILocation(line: 223, column: 6, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3325, file: !3, line: 223, column: 6)
!3380 = !DILocation(line: 223, column: 12, scope: !3379)
!3381 = !DILocation(line: 223, column: 15, scope: !3379)
!3382 = !DILocation(line: 223, column: 22, scope: !3379)
!3383 = !DILocation(line: 223, column: 6, scope: !3325)
!3384 = !DILocation(line: 224, column: 3, scope: !3379)
!3385 = !DILocation(line: 226, column: 36, scope: !3325)
!3386 = !DILocation(line: 226, column: 42, scope: !3325)
!3387 = !DILocation(line: 226, column: 45, scope: !3325)
!3388 = !DILocation(line: 226, column: 53, scope: !3325)
!3389 = !DILocation(line: 226, column: 59, scope: !3325)
!3390 = !DILocation(line: 226, column: 62, scope: !3325)
!3391 = !DILocation(line: 226, column: 2, scope: !3325)
!3392 = !DILocation(line: 227, column: 2, scope: !3325)
!3393 = !DILabel(scope: !3325, name: "err", file: !3, line: 228)
!3394 = !DILocation(line: 228, column: 1, scope: !3325)
!3395 = !DILocation(line: 229, column: 28, scope: !3325)
!3396 = !DILocation(line: 229, column: 34, scope: !3325)
!3397 = !DILocation(line: 229, column: 2, scope: !3325)
!3398 = !DILocation(line: 230, column: 2, scope: !3325)
!3399 = !DILocation(line: 231, column: 1, scope: !3325)
!3400 = distinct !DISubprogram(name: "ulpi_dev_release", scope: !3, file: !3, line: 130, type: !1644, scopeLine: 131, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3401 = !DILocalVariable(name: "dev", arg: 1, scope: !3400, file: !3, line: 130, type: !117)
!3402 = !DILocation(line: 130, column: 45, scope: !3400)
!3403 = !DILocalVariable(name: "__mptr", scope: !3404, file: !3, line: 132, type: !79)
!3404 = distinct !DILexicalBlock(scope: !3400, file: !3, line: 132, column: 8)
!3405 = !DILocation(line: 132, column: 8, scope: !3404)
!3406 = !DILocation(line: 132, column: 8, scope: !3407)
!3407 = distinct !DILexicalBlock(scope: !3404, file: !3, line: 132, column: 8)
!3408 = !DILocation(line: 132, column: 8, scope: !3400)
!3409 = !DILocation(line: 132, column: 2, scope: !3400)
!3410 = !DILocation(line: 133, column: 1, scope: !3400)
!3411 = distinct !DISubprogram(name: "modalias_show", scope: !3, file: !3, line: 101, type: !2508, scopeLine: 103, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3412 = !DILocalVariable(name: "dev", arg: 1, scope: !3411, file: !3, line: 101, type: !117)
!3413 = !DILocation(line: 101, column: 45, scope: !3411)
!3414 = !DILocalVariable(name: "attr", arg: 2, scope: !3411, file: !3, line: 101, type: !2510)
!3415 = !DILocation(line: 101, column: 75, scope: !3411)
!3416 = !DILocalVariable(name: "buf", arg: 3, scope: !3411, file: !3, line: 102, type: !183)
!3417 = !DILocation(line: 102, column: 15, scope: !3411)
!3418 = !DILocalVariable(name: "len", scope: !3411, file: !3, line: 104, type: !102)
!3419 = !DILocation(line: 104, column: 6, scope: !3411)
!3420 = !DILocalVariable(name: "ulpi", scope: !3411, file: !3, line: 105, type: !103)
!3421 = !DILocation(line: 105, column: 15, scope: !3411)
!3422 = !DILocalVariable(name: "__mptr", scope: !3423, file: !3, line: 105, type: !79)
!3423 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 105, column: 22)
!3424 = !DILocation(line: 105, column: 22, scope: !3423)
!3425 = !DILocation(line: 105, column: 22, scope: !3426)
!3426 = distinct !DILexicalBlock(scope: !3423, file: !3, line: 105, column: 22)
!3427 = !DILocation(line: 107, column: 27, scope: !3411)
!3428 = !DILocation(line: 107, column: 32, scope: !3411)
!3429 = !DILocation(line: 107, column: 8, scope: !3411)
!3430 = !DILocation(line: 107, column: 6, scope: !3411)
!3431 = !DILocation(line: 108, column: 6, scope: !3432)
!3432 = distinct !DILexicalBlock(scope: !3411, file: !3, line: 108, column: 6)
!3433 = !DILocation(line: 108, column: 10, scope: !3432)
!3434 = !DILocation(line: 108, column: 6, scope: !3411)
!3435 = !DILocation(line: 109, column: 10, scope: !3432)
!3436 = !DILocation(line: 109, column: 3, scope: !3432)
!3437 = !DILocation(line: 111, column: 17, scope: !3411)
!3438 = !DILocation(line: 112, column: 10, scope: !3411)
!3439 = !DILocation(line: 112, column: 16, scope: !3411)
!3440 = !DILocation(line: 112, column: 19, scope: !3411)
!3441 = !DILocation(line: 112, column: 27, scope: !3411)
!3442 = !DILocation(line: 112, column: 33, scope: !3411)
!3443 = !DILocation(line: 112, column: 36, scope: !3411)
!3444 = !DILocation(line: 111, column: 9, scope: !3411)
!3445 = !DILocation(line: 111, column: 2, scope: !3411)
!3446 = !DILocation(line: 113, column: 1, scope: !3411)
!3447 = distinct !DISubprogram(name: "kobject_name", scope: !122, file: !122, line: 88, type: !3448, scopeLine: 89, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3448 = !DISubroutineType(types: !3449)
!3449 = !{!125, !3450}
!3450 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3451, size: 64)
!3451 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !121)
!3452 = !DILocalVariable(name: "kobj", arg: 1, scope: !3447, file: !122, line: 88, type: !3450)
!3453 = !DILocation(line: 88, column: 62, scope: !3447)
!3454 = !DILocation(line: 90, column: 9, scope: !3447)
!3455 = !DILocation(line: 90, column: 15, scope: !3447)
!3456 = !DILocation(line: 90, column: 2, scope: !3447)
!3457 = distinct !DISubprogram(name: "request_module", scope: !3458, file: !3458, line: 30, type: !3459, scopeLine: 30, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !156)
!3458 = !DIFile(filename: "./include/linux/kmod.h", directory: "/home/lizy2001/genbc/linux")
!3459 = !DISubroutineType(types: !3460)
!3460 = !{!102, !125, null}
!3461 = !DILocalVariable(name: "name", arg: 1, scope: !3457, file: !3458, line: 30, type: !125)
!3462 = !DILocation(line: 30, column: 46, scope: !3457)
!3463 = !DILocation(line: 30, column: 59, scope: !3457)
