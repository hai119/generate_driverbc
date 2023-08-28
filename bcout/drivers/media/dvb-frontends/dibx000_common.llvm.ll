; ModuleID = '../bcout/drivers/media/dvb-frontends/dibx000_common.llvm.bc'
source_filename = "drivers/media/dvb-frontends/dibx000_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64"

%struct.kernel_param_ops = type { i32, i32 (i8*, %struct.kernel_param*)*, i32 (i8*, %struct.kernel_param*)*, void (i8*)* }
%struct.kernel_param = type { i8*, %struct.module*, %struct.kernel_param_ops*, i16, i8, i8, %union.anon }
%struct.module = type opaque
%union.anon = type { i8* }
%struct.lock_class_key = type {}
%struct.i2c_algorithm = type { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)*, i32 (%struct.i2c_adapter*)* }
%struct.i2c_adapter = type { %struct.module*, i32, %struct.i2c_algorithm*, i8*, %struct.i2c_lock_operations*, %struct.rt_mutex, %struct.rt_mutex, i32, i32, %struct.device, i64, i32, [48 x i8], %struct.completion, %struct.mutex, %struct.list_head, %struct.i2c_bus_recovery_info*, %struct.i2c_adapter_quirks*, %struct.irq_domain* }
%struct.i2c_lock_operations = type { void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*, i32)*, void (%struct.i2c_adapter*, i32)* }
%struct.rt_mutex = type { %struct.raw_spinlock, %struct.rb_root_cached, %struct.task_struct* }
%struct.raw_spinlock = type { %struct.arch_spinlock_t }
%struct.arch_spinlock_t = type {}
%struct.rb_root_cached = type { %struct.rb_root, %struct.rb_node* }
%struct.rb_root = type { %struct.rb_node* }
%struct.rb_node = type { i64, %struct.rb_node*, %struct.rb_node* }
%struct.task_struct = type { %struct.thread_info, i64, i8*, %struct.refcount_struct, i32, i32, i32, i32, i32, i32, i32, %struct.sched_class*, %struct.sched_entity, %struct.sched_rt_entity, %struct.sched_dl_entity, i32, i32, %struct.cpumask*, %struct.cpumask, %struct.sched_info, %struct.list_head, %struct.mm_struct*, %struct.mm_struct*, %struct.vmacache, i32, i32, i32, i32, i64, i32, i8, [3 x i8], i8, i64, %struct.restart_block, i32, i32, i64, %struct.task_struct*, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.task_struct*, %struct.list_head, %struct.list_head, %struct.pid*, [4 x %struct.hlist_node], %struct.list_head, %struct.list_head, %struct.completion*, i32*, i32*, i64, i64, i64, %struct.prev_cputime, i64, i64, i64, i64, i64, i64, %struct.posix_cputimers, %struct.posix_cputimers_work, %struct.cred*, %struct.cred*, %struct.cred*, %struct.key*, [16 x i8], %struct.nameidata*, %struct.fs_struct*, %struct.files_struct*, %struct.io_uring_task*, %struct.nsproxy*, %struct.signal_struct*, %struct.sighand_struct*, %struct.sigset_t, %struct.sigset_t, %struct.sigset_t, %struct.sigpending, i64, i64, i32, %struct.callback_head*, %struct.seccomp, i64, i64, %struct.spinlock, %struct.raw_spinlock, %struct.wake_q_node, %struct.rb_root_cached, %struct.task_struct*, %struct.rt_mutex_waiter*, i8*, %struct.bio_list*, %struct.blk_plug*, %struct.reclaim_state*, %struct.backing_dev_info*, %struct.io_context*, %struct.capture_control*, i64, %struct.kernel_siginfo*, %struct.task_io_accounting, %struct.robust_list_head*, %struct.list_head, %struct.futex_pi_state*, %struct.mutex, i32, [2 x %struct.perf_event_context*], %struct.mutex, %struct.list_head, %struct.rseq*, i32, i64, %struct.tlbflush_unmap_batch, %union.anon.19, %struct.pipe_inode_info*, %struct.page_frag, i32, i32, i64, i64, i64, i32, %struct.task_struct*, %struct.vm_struct*, %struct.refcount_struct, i8*, i64, i64, i64, %struct.callback_head, [24 x i8], %struct.thread_struct }
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
%struct.mm_struct = type { %struct.anon, [0 x i64] }
%struct.anon = type { %struct.vm_area_struct*, %struct.rb_root, i64, i64 (%struct.file*, i64, i64, i64, i64)*, i64, i64, i64, i64, %struct.pgd_t*, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic_t, %struct.atomic64_t, i32, %struct.spinlock, %struct.rw_semaphore, %struct.list_head, i64, i64, i64, i64, %struct.atomic64_t, i64, i64, i64, i64, %struct.spinlock, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, [44 x i64], %struct.mm_rss_stat, %struct.linux_binfmt*, %struct.mm_context_t, i64, %struct.core_state*, %struct.spinlock, %struct.kioctx_table*, %struct.user_namespace*, %struct.file*, %struct.mmu_notifier_subscriptions*, %struct.atomic_t, i8, %struct.uprobes_state, %struct.work_struct, i32 }
%struct.vm_area_struct = type { i64, i64, %struct.vm_area_struct*, %struct.vm_area_struct*, %struct.rb_node, i64, %struct.mm_struct*, %struct.pgprot, i64, %struct.anon.0, %struct.list_head, %struct.anon_vma*, %struct.vm_operations_struct*, i64, %struct.file*, i8*, %struct.atomic64_t, %struct.vm_userfaultfd_ctx }
%struct.pgprot = type { i64 }
%struct.anon.0 = type { %struct.rb_node, i64 }
%struct.anon_vma = type opaque
%struct.vm_operations_struct = type opaque
%struct.vm_userfaultfd_ctx = type {}
%struct.pgd_t = type { i64 }
%struct.rw_semaphore = type { %struct.atomic64_t, %struct.atomic64_t, %struct.raw_spinlock, %struct.list_head }
%struct.atomic64_t = type { i64 }
%struct.mm_rss_stat = type { [4 x %struct.atomic64_t] }
%struct.linux_binfmt = type opaque
%struct.mm_context_t = type { i64, %struct.atomic64_t, %struct.rw_semaphore, %struct.ldt_struct*, i16, %struct.mutex, i8*, %struct.vdso_image*, %struct.atomic_t, i16, i16 }
%struct.ldt_struct = type opaque
%struct.vdso_image = type { i8*, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64, i64 }
%struct.core_state = type { %struct.atomic_t, %struct.core_thread, %struct.completion }
%struct.core_thread = type { %struct.task_struct*, %struct.core_thread* }
%struct.kioctx_table = type opaque
%struct.user_namespace = type opaque
%struct.file = type opaque
%struct.mmu_notifier_subscriptions = type opaque
%struct.atomic_t = type { i32 }
%struct.uprobes_state = type {}
%struct.work_struct = type { %struct.atomic64_t, %struct.list_head, void (%struct.work_struct*)* }
%struct.vmacache = type { i64, [4 x %struct.vm_area_struct*] }
%struct.restart_block = type { i64 (%struct.restart_block*)*, %union.anon.2 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { i32*, i32, i32, i32, i64, i32* }
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
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.wake_q_node = type { %struct.wake_q_node* }
%struct.rt_mutex_waiter = type opaque
%struct.bio_list = type opaque
%struct.blk_plug = type opaque
%struct.reclaim_state = type opaque
%struct.backing_dev_info = type opaque
%struct.io_context = type opaque
%struct.capture_control = type opaque
%struct.kernel_siginfo = type { %struct.anon.7 }
%struct.anon.7 = type { i32, i32, i32, %union.__sifields }
%union.__sifields = type { %struct.anon.11 }
%struct.anon.11 = type { i32, i32, i32, i64, i64 }
%struct.task_io_accounting = type {}
%struct.robust_list_head = type opaque
%struct.futex_pi_state = type opaque
%struct.perf_event_context = type opaque
%struct.rseq = type { i32, i32, %union.anon.18, i32, [12 x i8] }
%union.anon.18 = type { i64 }
%struct.tlbflush_unmap_batch = type { %struct.arch_tlbflush_unmap_batch, i8, i8 }
%struct.arch_tlbflush_unmap_batch = type { %struct.cpumask }
%union.anon.19 = type { %struct.callback_head }
%struct.pipe_inode_info = type opaque
%struct.page_frag = type { %struct.page*, i32, i32 }
%struct.page = type { i64, %union.anon.20, %union.anon.33, %struct.atomic_t, [8 x i8] }
%union.anon.20 = type { %struct.anon.21 }
%struct.anon.21 = type { %struct.list_head, %struct.address_space*, i64, i64 }
%struct.address_space = type opaque
%union.anon.33 = type { %struct.atomic_t }
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
%struct.fxregs_state = type { i16, i16, i16, i16, %union.anon.34, i32, i32, [32 x i32], [64 x i32], [12 x i32], %union.anon.37 }
%union.anon.34 = type { %struct.anon.35 }
%struct.anon.35 = type { i64, i64 }
%union.anon.37 = type { [12 x i32] }
%struct.xstate_header = type { i64, i64, [6 x i64] }
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
%union.anon.38 = type { %struct.kernfs_elem_attr }
%struct.kernfs_elem_attr = type { %struct.kernfs_ops*, %struct.kernfs_open_node*, i64, %struct.kernfs_node* }
%struct.kernfs_ops = type { i32 (%struct.kernfs_open_file*)*, void (%struct.kernfs_open_file*)*, i32 (%struct.seq_file*, i8*)*, i8* (%struct.seq_file*, i64*)*, i8* (%struct.seq_file*, i8*, i64*)*, void (%struct.seq_file*, i8*)*, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i64, i8, i64 (%struct.kernfs_open_file*, i8*, i64, i64)*, i32 (%struct.kernfs_open_file*, %struct.poll_table_struct*)*, i32 (%struct.kernfs_open_file*, %struct.vm_area_struct*)* }
%struct.kernfs_open_file = type { %struct.kernfs_node*, %struct.file*, %struct.seq_file*, i8*, %struct.mutex, %struct.mutex, i32, %struct.list_head, i8*, i64, i8, %struct.vm_operations_struct* }
%struct.seq_file = type opaque
%struct.poll_table_struct = type opaque
%struct.kernfs_open_node = type opaque
%struct.kernfs_iattrs = type opaque
%struct.kref = type { %struct.refcount_struct }
%struct.device_private = type opaque
%struct.device_type = type { i8*, %struct.attribute_group**, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i8* (%struct.device*, i16*, %struct.kuid_t*, %struct.kgid_t*)*, void (%struct.device*)*, %struct.dev_pm_ops* }
%struct.dev_pm_ops = type { i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)* }
%struct.bus_type = type { i8*, i8*, %struct.device*, %struct.attribute_group**, %struct.attribute_group**, %struct.attribute_group**, i32 (%struct.device*, %struct.device_driver*)*, i32 (%struct.device*, %struct.kobj_uevent_env*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, i32 (%struct.device*)*, i32 (%struct.device*)*, %struct.dev_pm_ops*, %struct.iommu_ops*, %struct.subsys_private*, %struct.lock_class_key, i8 }
%struct.iommu_ops = type opaque
%struct.subsys_private = type opaque
%struct.device_driver = type { i8*, %struct.bus_type*, %struct.module*, i8*, i8, i32, %struct.of_device_id*, %struct.acpi_device_id*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*)*, void (%struct.device*)*, i32 (%struct.device*, i32)*, i32 (%struct.device*)*, %struct.attribute_group**, %struct.attribute_group**, %struct.dev_pm_ops*, void (%struct.device*)*, %struct.driver_private* }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.mutex = type { %struct.atomic64_t, %struct.spinlock, %struct.list_head }
%struct.list_head = type { %struct.list_head*, %struct.list_head* }
%struct.i2c_bus_recovery_info = type { i32 (%struct.i2c_adapter*)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*, i32)*, i32 (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, void (%struct.i2c_adapter*)*, %struct.gpio_desc*, %struct.gpio_desc*, %struct.pinctrl*, %struct.pinctrl_state*, %struct.pinctrl_state* }
%struct.gpio_desc = type opaque
%struct.pinctrl = type opaque
%struct.pinctrl_state = type opaque
%struct.i2c_adapter_quirks = type { i64, i32, i16, i16, i16, i16 }
%struct.irq_domain = type { %struct.list_head, i8*, %struct.irq_domain_ops*, i8*, i32, i32, %struct.fwnode_handle*, i32, %struct.irq_domain_chip_generic*, %struct.irq_domain*, i64, i32, i32, %struct.xarray, %struct.mutex, [0 x i32] }
%struct.irq_domain_ops = type { i32 (%struct.irq_domain*, %struct.device_node*, i32)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i32)*, i32 (%struct.irq_domain*, i32, i64)*, void (%struct.irq_domain*, i32)*, i32 (%struct.irq_domain*, %struct.device_node*, i32*, i32, i64*, i32*)*, i32 (%struct.irq_domain*, i32, i32, i8*)*, void (%struct.irq_domain*, i32, i32)*, i32 (%struct.irq_domain*, %struct.irq_data*, i1)*, void (%struct.irq_domain*, %struct.irq_data*)*, i32 (%struct.irq_domain*, %struct.irq_fwspec*, i64*, i32*)* }
%struct.irq_fwspec = type { %struct.fwnode_handle*, i32, [16 x i32] }
%struct.irq_data = type opaque
%struct.irq_domain_chip_generic = type opaque
%struct.xarray = type { %struct.spinlock, i32, i8* }
%struct.i2c_msg = type { i16, i16, i16, i8* }
%union.i2c_smbus_data = type { i16, [32 x i8] }
%struct.dibx000_i2c_master = type { i16, i32, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter, %struct.i2c_adapter*, i8, i16, [34 x %struct.i2c_msg], [8 x i8], [2 x i8], %struct.mutex }

@__param_str_debug = internal constant [21 x i8] c"dibx000_common.debug\00", align 16, !dbg !0
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 8
@debug = internal global i32 0, align 4, !dbg !2366
@__param_debug = internal constant %struct.kernel_param { i8* getelementptr inbounds ([21 x i8], [21 x i8]* @__param_str_debug, i32 0, i32 0), %struct.module* null, %struct.kernel_param_ops* @param_ops_int, i16 420, i8 -1, i8 0, %union.anon { i8* bitcast (i32* @debug to i8*) } }, section "__param", align 8, !dbg !82
@__UNIQUE_ID_debugtype171 = internal constant [34 x i8] c"dibx000_common.parmtype=debug:int\00", section ".modinfo", align 1, !dbg !146
@__UNIQUE_ID_debug172 = internal constant [57 x i8] c"dibx000_common.parm=debug:turn on debugging (default: 0)\00", section ".modinfo", align 1, !dbg !151
@.str = private unnamed_addr constant [52 x i8] c"\013dibx000_common: incorrect I2C interface selected\0A\00", align 1
@dibx000_init_i2c_master.__key = internal global %struct.lock_class_key zeroinitializer, align 1, !dbg !156
@.str.1 = private unnamed_addr constant [22 x i8] c"&mst->i2c_buffer_lock\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"\017dibx000_common: %s: could not acquire lock\0A\00", align 1
@__func__.dibx000_init_i2c_master = private unnamed_addr constant [24 x i8] c"dibx000_init_i2c_master\00", align 1
@dibx000_i2c_gated_tuner_algo = internal global %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibx000_i2c_gated_tuner_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @dibx000_i2c_func }, align 8, !dbg !2368
@.str.3 = private unnamed_addr constant [22 x i8] c"DiBX000 tuner I2C bus\00", align 1
@.str.4 = private unnamed_addr constant [62 x i8] c"\013dibx000_common: could not initialize the tuner i2c_adapter\0A\00", align 1
@dibx000_i2c_master_gpio12_xfer_algo = internal global %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibx000_i2c_master_xfer_gpio12, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @dibx000_i2c_func }, align 8, !dbg !2370
@.str.5 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO12 I2C bus\00", align 1
@.str.6 = private unnamed_addr constant [63 x i8] c"\013dibx000_common: could not initialize the master i2c_adapter\0A\00", align 1
@dibx000_i2c_master_gpio34_xfer_algo = internal global %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibx000_i2c_master_xfer_gpio34, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @dibx000_i2c_func }, align 8, !dbg !2372
@.str.7 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO34 I2C bus\00", align 1
@dibx000_i2c_gated_gpio67_algo = internal global %struct.i2c_algorithm { i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* @dibx000_i2c_gated_gpio67_xfer, i32 (%struct.i2c_adapter*, %struct.i2c_msg*, i32)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*, i16, i16, i8, i8, i32, %union.i2c_smbus_data*)* null, i32 (%struct.i2c_adapter*)* @dibx000_i2c_func }, align 8, !dbg !2374
@.str.8 = private unnamed_addr constant [30 x i8] c"DiBX000 master GPIO67 I2C bus\00", align 1
@__UNIQUE_ID_author173 = internal constant [70 x i8] c"dibx000_common.author=Patrick Boettcher <patrick.boettcher@posteo.de>\00", section ".modinfo", align 1, !dbg !2346
@__UNIQUE_ID_description174 = internal constant [73 x i8] c"dibx000_common.description=Common function the DiBcom demodulator family\00", section ".modinfo", align 1, !dbg !2351
@__UNIQUE_ID_file175 = internal constant [63 x i8] c"dibx000_common.file=drivers/media/dvb-frontends/dibx000_common\00", section ".modinfo", align 1, !dbg !2356
@__UNIQUE_ID_license176 = internal constant [27 x i8] c"dibx000_common.license=GPL\00", section ".modinfo", align 1, !dbg !2361
@__func__.dibx000_write_word = private unnamed_addr constant [19 x i8] c"dibx000_write_word\00", align 1
@.str.9 = private unnamed_addr constant [47 x i8] c"\017dibx000_common: %s: selecting interface: %d\0A\00", align 1
@__func__.dibx000_i2c_select_interface = private unnamed_addr constant [29 x i8] c"dibx000_i2c_select_interface\00", align 1
@.str.10 = private unnamed_addr constant [85 x i8] c"\017dibx000_common: %s: %s: too much I2C message to be transmitted (%i). Maximum is 32\00", align 1
@__func__.dibx000_i2c_gated_tuner_xfer = private unnamed_addr constant [29 x i8] c"dibx000_i2c_gated_tuner_xfer\00", align 1
@__func__.dibx000_read_word = private unnamed_addr constant [18 x i8] c"dibx000_read_word\00", align 1
@.str.11 = private unnamed_addr constant [44 x i8] c"\017dibx000_common: %s: i2c read error on %d\0A\00", align 1
@__func__.dibx000_i2c_gated_gpio67_xfer = private unnamed_addr constant [30 x i8] c"dibx000_i2c_gated_gpio67_xfer\00", align 1
@llvm.used = appending global [7 x i8*] [i8* bitcast (%struct.kernel_param* @__param_debug to i8*), i8* getelementptr inbounds ([34 x i8], [34 x i8]* @__UNIQUE_ID_debugtype171, i32 0, i32 0), i8* getelementptr inbounds ([57 x i8], [57 x i8]* @__UNIQUE_ID_debug172, i32 0, i32 0), i8* getelementptr inbounds ([70 x i8], [70 x i8]* @__UNIQUE_ID_author173, i32 0, i32 0), i8* getelementptr inbounds ([73 x i8], [73 x i8]* @__UNIQUE_ID_description174, i32 0, i32 0), i8* getelementptr inbounds ([63 x i8], [63 x i8]* @__UNIQUE_ID_file175, i32 0, i32 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @__UNIQUE_ID_license176, i32 0, i32 0)], section "llvm.metadata"

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dibx000_i2c_set_speed(%struct.i2c_adapter* %i2c_adap, i16 zeroext %speed) #0 !dbg !2384 {
entry:
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %speed.addr = alloca i16, align 2
  %mst = alloca %struct.dibx000_i2c_master*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2387, metadata !DIExpression()), !dbg !2388
  store i16 %speed, i16* %speed.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %speed.addr, metadata !2389, metadata !DIExpression()), !dbg !2390
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst, metadata !2391, metadata !DIExpression()), !dbg !2392
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2393
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #5, !dbg !2394
  %1 = bitcast i8* %call to %struct.dibx000_i2c_master*, !dbg !2394
  store %struct.dibx000_i2c_master* %1, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2392
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2395
  %device_rev = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %2, i32 0, i32 0, !dbg !2397
  %3 = load i16, i16* %device_rev, align 8, !dbg !2397
  %conv = zext i16 %3 to i32, !dbg !2395
  %cmp = icmp slt i32 %conv, 12, !dbg !2398
  br i1 %cmp, label %land.lhs.true, label %if.end, !dbg !2399

land.lhs.true:                                    ; preds = %entry
  %4 = load i16, i16* %speed.addr, align 2, !dbg !2400
  %conv2 = zext i16 %4 to i32, !dbg !2400
  %cmp3 = icmp slt i32 %conv2, 235, !dbg !2401
  br i1 %cmp3, label %if.then, label %if.end, !dbg !2402

if.then:                                          ; preds = %land.lhs.true
  store i16 235, i16* %speed.addr, align 2, !dbg !2403
  br label %if.end, !dbg !2404

if.end:                                           ; preds = %if.then, %land.lhs.true, %entry
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2405
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2406
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 8, !dbg !2407
  %7 = load i16, i16* %base_reg, align 2, !dbg !2407
  %conv5 = zext i16 %7 to i32, !dbg !2406
  %add = add i32 %conv5, 3, !dbg !2408
  %conv6 = trunc i32 %add to i16, !dbg !2406
  %8 = load i16, i16* %speed.addr, align 2, !dbg !2409
  %conv7 = zext i16 %8 to i32, !dbg !2409
  %div = sdiv i32 60000, %conv7, !dbg !2410
  %conv8 = trunc i32 %div to i16, !dbg !2411
  %call9 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %5, i16 zeroext %conv6, i16 zeroext %conv8) #5, !dbg !2412
  ret i32 %call9, !dbg !2413
}

; Function Attrs: nounwind readnone speculatable willreturn
declare void @llvm.dbg.declare(metadata, metadata, metadata) #1

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @i2c_get_adapdata(%struct.i2c_adapter* %adap) #0 !dbg !2414 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2419, metadata !DIExpression()), !dbg !2420
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2421
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !2422
  %call = call i8* @dev_get_drvdata(%struct.device* %dev) #5, !dbg !2423
  ret i8* %call, !dbg !2424
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_write_word(%struct.dibx000_i2c_master* %mst, i16 zeroext %reg, i16 zeroext %val) #0 !dbg !2425 {
entry:
  %retval = alloca i32, align 4
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %reg.addr = alloca i16, align 2
  %val.addr = alloca i16, align 2
  %ret = alloca i32, align 4
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2428, metadata !DIExpression()), !dbg !2429
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !2430, metadata !DIExpression()), !dbg !2431
  store i16 %val, i16* %val.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %val.addr, metadata !2432, metadata !DIExpression()), !dbg !2433
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2434, metadata !DIExpression()), !dbg !2435
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2436
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %0, i32 0, i32 12, !dbg !2438
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* %i2c_buffer_lock) #5, !dbg !2439
  %cmp = icmp slt i32 %call, 0, !dbg !2440
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2441

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2442

do.body:                                          ; preds = %if.then
  %1 = load i32, i32* @debug, align 4, !dbg !2444
  %tobool = icmp ne i32 %1, 0, !dbg !2444
  br i1 %tobool, label %if.then1, label %if.end, !dbg !2447

if.then1:                                         ; preds = %do.body
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([19 x i8], [19 x i8]* @__func__.dibx000_write_word, i64 0, i64 0)) #6, !dbg !2444
  br label %if.end, !dbg !2444

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !2447

do.end:                                           ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2448
  br label %return, !dbg !2448

if.end3:                                          ; preds = %entry
  %2 = load i16, i16* %reg.addr, align 2, !dbg !2449
  %conv = zext i16 %2 to i32, !dbg !2449
  %shr = ashr i32 %conv, 8, !dbg !2450
  %and = and i32 %shr, 255, !dbg !2451
  %conv4 = trunc i32 %and to i8, !dbg !2452
  %3 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2453
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %3, i32 0, i32 10, !dbg !2454
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer, i64 0, i64 0, !dbg !2453
  store i8 %conv4, i8* %arrayidx, align 8, !dbg !2455
  %4 = load i16, i16* %reg.addr, align 2, !dbg !2456
  %conv5 = zext i16 %4 to i32, !dbg !2456
  %and6 = and i32 %conv5, 255, !dbg !2457
  %conv7 = trunc i32 %and6 to i8, !dbg !2456
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2458
  %i2c_write_buffer8 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %5, i32 0, i32 10, !dbg !2459
  %arrayidx9 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer8, i64 0, i64 1, !dbg !2458
  store i8 %conv7, i8* %arrayidx9, align 1, !dbg !2460
  %6 = load i16, i16* %val.addr, align 2, !dbg !2461
  %conv10 = zext i16 %6 to i32, !dbg !2461
  %shr11 = ashr i32 %conv10, 8, !dbg !2462
  %and12 = and i32 %shr11, 255, !dbg !2463
  %conv13 = trunc i32 %and12 to i8, !dbg !2464
  %7 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2465
  %i2c_write_buffer14 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %7, i32 0, i32 10, !dbg !2466
  %arrayidx15 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer14, i64 0, i64 2, !dbg !2465
  store i8 %conv13, i8* %arrayidx15, align 2, !dbg !2467
  %8 = load i16, i16* %val.addr, align 2, !dbg !2468
  %conv16 = zext i16 %8 to i32, !dbg !2468
  %and17 = and i32 %conv16, 255, !dbg !2469
  %conv18 = trunc i32 %and17 to i8, !dbg !2468
  %9 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2470
  %i2c_write_buffer19 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %9, i32 0, i32 10, !dbg !2471
  %arrayidx20 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer19, i64 0, i64 3, !dbg !2470
  store i8 %conv18, i8* %arrayidx20, align 1, !dbg !2472
  %10 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2473
  %msg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %10, i32 0, i32 9, !dbg !2474
  %arraydecay = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !2475
  %11 = bitcast %struct.i2c_msg* %arraydecay to i8*, !dbg !2475
  call void @llvm.memset.p0i8.i64(i8* align 8 %11, i8 0, i64 16, i1 false), !dbg !2475
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2476
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %12, i32 0, i32 7, !dbg !2477
  %13 = load i8, i8* %i2c_addr, align 8, !dbg !2477
  %conv21 = zext i8 %13 to i16, !dbg !2476
  %14 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2478
  %msg22 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %14, i32 0, i32 9, !dbg !2479
  %arrayidx23 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg22, i64 0, i64 0, !dbg !2478
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx23, i32 0, i32 0, !dbg !2480
  store i16 %conv21, i16* %addr, align 8, !dbg !2481
  %15 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2482
  %msg24 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %15, i32 0, i32 9, !dbg !2483
  %arrayidx25 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg24, i64 0, i64 0, !dbg !2482
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx25, i32 0, i32 1, !dbg !2484
  store i16 0, i16* %flags, align 2, !dbg !2485
  %16 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2486
  %i2c_write_buffer26 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %16, i32 0, i32 10, !dbg !2487
  %arraydecay27 = getelementptr inbounds [8 x i8], [8 x i8]* %i2c_write_buffer26, i64 0, i64 0, !dbg !2486
  %17 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2488
  %msg28 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %17, i32 0, i32 9, !dbg !2489
  %arrayidx29 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg28, i64 0, i64 0, !dbg !2488
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx29, i32 0, i32 3, !dbg !2490
  store i8* %arraydecay27, i8** %buf, align 8, !dbg !2491
  %18 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2492
  %msg30 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %18, i32 0, i32 9, !dbg !2493
  %arrayidx31 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg30, i64 0, i64 0, !dbg !2492
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx31, i32 0, i32 2, !dbg !2494
  store i16 4, i16* %len, align 4, !dbg !2495
  %19 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2496
  %i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %19, i32 0, i32 6, !dbg !2497
  %20 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap, align 8, !dbg !2497
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2498
  %msg32 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %21, i32 0, i32 9, !dbg !2499
  %arraydecay33 = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg32, i64 0, i64 0, !dbg !2498
  %call34 = call i32 @i2c_transfer(%struct.i2c_adapter* %20, %struct.i2c_msg* %arraydecay33, i32 1) #5, !dbg !2500
  %cmp35 = icmp ne i32 %call34, 1, !dbg !2501
  %22 = zext i1 %cmp35 to i64, !dbg !2500
  %cond = select i1 %cmp35, i32 -121, i32 0, !dbg !2500
  store i32 %cond, i32* %ret, align 4, !dbg !2502
  %23 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2503
  %i2c_buffer_lock37 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %23, i32 0, i32 12, !dbg !2504
  call void @mutex_unlock(%struct.mutex* %i2c_buffer_lock37) #5, !dbg !2505
  %24 = load i32, i32* %ret, align 4, !dbg !2506
  store i32 %24, i32* %retval, align 4, !dbg !2507
  br label %return, !dbg !2507

return:                                           ; preds = %if.end3, %do.end
  %25 = load i32, i32* %retval, align 4, !dbg !2508
  ret i32 %25, !dbg !2508
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local %struct.i2c_adapter* @dibx000_get_i2c_adapter(%struct.dibx000_i2c_master* %mst, i32 %intf, i32 %gating) #0 !dbg !2509 {
entry:
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %intf.addr = alloca i32, align 4
  %gating.addr = alloca i32, align 4
  %i2c = alloca %struct.i2c_adapter*, align 8
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2512, metadata !DIExpression()), !dbg !2513
  store i32 %intf, i32* %intf.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intf.addr, metadata !2514, metadata !DIExpression()), !dbg !2515
  store i32 %gating, i32* %gating.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %gating.addr, metadata !2516, metadata !DIExpression()), !dbg !2517
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c, metadata !2518, metadata !DIExpression()), !dbg !2519
  store %struct.i2c_adapter* null, %struct.i2c_adapter** %i2c, align 8, !dbg !2519
  %0 = load i32, i32* %intf.addr, align 4, !dbg !2520
  switch i32 %0, label %sw.default [
    i32 0, label %sw.bb
    i32 1, label %sw.bb1
    i32 2, label %sw.bb5
    i32 3, label %sw.bb9
  ], !dbg !2521

sw.bb:                                            ; preds = %entry
  %1 = load i32, i32* %gating.addr, align 4, !dbg !2522
  %tobool = icmp ne i32 %1, 0, !dbg !2522
  br i1 %tobool, label %if.then, label %if.end, !dbg !2525

if.then:                                          ; preds = %sw.bb
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2526
  %gated_tuner_i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %2, i32 0, i32 2, !dbg !2527
  store %struct.i2c_adapter* %gated_tuner_i2c_adap, %struct.i2c_adapter** %i2c, align 8, !dbg !2528
  br label %if.end, !dbg !2529

if.end:                                           ; preds = %if.then, %sw.bb
  br label %sw.epilog, !dbg !2530

sw.bb1:                                           ; preds = %entry
  %3 = load i32, i32* %gating.addr, align 4, !dbg !2531
  %tobool2 = icmp ne i32 %3, 0, !dbg !2531
  br i1 %tobool2, label %if.end4, label %if.then3, !dbg !2533

if.then3:                                         ; preds = %sw.bb1
  %4 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2534
  %master_i2c_adap_gpio12 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %4, i32 0, i32 3, !dbg !2535
  store %struct.i2c_adapter* %master_i2c_adap_gpio12, %struct.i2c_adapter** %i2c, align 8, !dbg !2536
  br label %if.end4, !dbg !2537

if.end4:                                          ; preds = %if.then3, %sw.bb1
  br label %sw.epilog, !dbg !2538

sw.bb5:                                           ; preds = %entry
  %5 = load i32, i32* %gating.addr, align 4, !dbg !2539
  %tobool6 = icmp ne i32 %5, 0, !dbg !2539
  br i1 %tobool6, label %if.end8, label %if.then7, !dbg !2541

if.then7:                                         ; preds = %sw.bb5
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2542
  %master_i2c_adap_gpio34 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 4, !dbg !2543
  store %struct.i2c_adapter* %master_i2c_adap_gpio34, %struct.i2c_adapter** %i2c, align 8, !dbg !2544
  br label %if.end8, !dbg !2545

if.end8:                                          ; preds = %if.then7, %sw.bb5
  br label %sw.epilog, !dbg !2546

sw.bb9:                                           ; preds = %entry
  %7 = load i32, i32* %gating.addr, align 4, !dbg !2547
  %tobool10 = icmp ne i32 %7, 0, !dbg !2547
  br i1 %tobool10, label %if.then11, label %if.end12, !dbg !2549

if.then11:                                        ; preds = %sw.bb9
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2550
  %master_i2c_adap_gpio67 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 5, !dbg !2551
  store %struct.i2c_adapter* %master_i2c_adap_gpio67, %struct.i2c_adapter** %i2c, align 8, !dbg !2552
  br label %if.end12, !dbg !2553

if.end12:                                         ; preds = %if.then11, %sw.bb9
  br label %sw.epilog, !dbg !2554

sw.default:                                       ; preds = %entry
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str, i64 0, i64 0)) #6, !dbg !2555
  br label %sw.epilog, !dbg !2556

sw.epilog:                                        ; preds = %sw.default, %if.end12, %if.end8, %if.end4, %if.end
  %9 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c, align 8, !dbg !2557
  ret %struct.i2c_adapter* %9, !dbg !2558
}

; Function Attrs: cold noredzone
declare dso_local i32 @printk(i8*, ...) #2

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dibx000_reset_i2c_master(%struct.dibx000_i2c_master* %mst) #0 !dbg !2559 {
entry:
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %tx = alloca [4 x i8], align 1
  %m = alloca %struct.i2c_msg, align 8
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2562, metadata !DIExpression()), !dbg !2563
  call void @llvm.dbg.declare(metadata [4 x i8]* %tx, metadata !2564, metadata !DIExpression()), !dbg !2566
  call void @llvm.dbg.declare(metadata %struct.i2c_msg* %m, metadata !2567, metadata !DIExpression()), !dbg !2568
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %m, i32 0, i32 0, !dbg !2569
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2570
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %0, i32 0, i32 7, !dbg !2571
  %1 = load i8, i8* %i2c_addr, align 8, !dbg !2571
  %conv = zext i8 %1 to i16, !dbg !2570
  store i16 %conv, i16* %addr, align 8, !dbg !2569
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %m, i32 0, i32 1, !dbg !2569
  store i16 0, i16* %flags, align 2, !dbg !2569
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %m, i32 0, i32 2, !dbg !2569
  store i16 4, i16* %len, align 4, !dbg !2569
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %m, i32 0, i32 3, !dbg !2569
  %arraydecay = getelementptr inbounds [4 x i8], [4 x i8]* %tx, i64 0, i64 0, !dbg !2572
  store i8* %arraydecay, i8** %buf, align 8, !dbg !2569
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2573
  %arraydecay1 = getelementptr inbounds [4 x i8], [4 x i8]* %tx, i64 0, i64 0, !dbg !2574
  %call = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %2, i8* %arraydecay1, i8 zeroext 0, i32 0) #5, !dbg !2575
  %3 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2576
  %i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %3, i32 0, i32 6, !dbg !2577
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap, align 8, !dbg !2577
  %call2 = call i32 @i2c_transfer(%struct.i2c_adapter* %4, %struct.i2c_msg* %m, i32 1) #5, !dbg !2578
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2579
  %selected_interface = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %5, i32 0, i32 1, !dbg !2580
  store i32 255, i32* %selected_interface, align 4, !dbg !2581
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2582
  %call3 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %6, i32 0) #5, !dbg !2583
  ret void, !dbg !2584
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %mst, i8* %tx, i8 zeroext %addr, i32 %onoff) #0 !dbg !2585 {
entry:
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %tx.addr = alloca i8*, align 8
  %addr.addr = alloca i8, align 1
  %onoff.addr = alloca i32, align 4
  %val = alloca i16, align 2
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2589, metadata !DIExpression()), !dbg !2590
  store i8* %tx, i8** %tx.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %tx.addr, metadata !2591, metadata !DIExpression()), !dbg !2592
  store i8 %addr, i8* %addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %addr.addr, metadata !2593, metadata !DIExpression()), !dbg !2594
  store i32 %onoff, i32* %onoff.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %onoff.addr, metadata !2595, metadata !DIExpression()), !dbg !2596
  call void @llvm.dbg.declare(metadata i16* %val, metadata !2597, metadata !DIExpression()), !dbg !2598
  %0 = load i32, i32* %onoff.addr, align 4, !dbg !2599
  %tobool = icmp ne i32 %0, 0, !dbg !2599
  br i1 %tobool, label %if.then, label %if.else, !dbg !2601

if.then:                                          ; preds = %entry
  %1 = load i8, i8* %addr.addr, align 1, !dbg !2602
  %conv = zext i8 %1 to i32, !dbg !2602
  %shl = shl i32 %conv, 8, !dbg !2603
  %conv1 = trunc i32 %shl to i16, !dbg !2602
  store i16 %conv1, i16* %val, align 2, !dbg !2604
  br label %if.end, !dbg !2605

if.else:                                          ; preds = %entry
  store i16 128, i16* %val, align 2, !dbg !2606
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2607
  %device_rev = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %2, i32 0, i32 0, !dbg !2609
  %3 = load i16, i16* %device_rev, align 8, !dbg !2609
  %conv2 = zext i16 %3 to i32, !dbg !2607
  %cmp = icmp sgt i32 %conv2, 2, !dbg !2610
  br i1 %cmp, label %if.then4, label %if.end8, !dbg !2611

if.then4:                                         ; preds = %if.end
  %4 = load i16, i16* %val, align 2, !dbg !2612
  %conv5 = zext i16 %4 to i32, !dbg !2612
  %shl6 = shl i32 %conv5, 1, !dbg !2612
  %conv7 = trunc i32 %shl6 to i16, !dbg !2612
  store i16 %conv7, i16* %val, align 2, !dbg !2612
  br label %if.end8, !dbg !2613

if.end8:                                          ; preds = %if.then4, %if.end
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2614
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %5, i32 0, i32 8, !dbg !2615
  %6 = load i16, i16* %base_reg, align 2, !dbg !2615
  %conv9 = zext i16 %6 to i32, !dbg !2614
  %add = add i32 %conv9, 1, !dbg !2616
  %shr = ashr i32 %add, 8, !dbg !2617
  %and = and i32 %shr, 255, !dbg !2618
  %conv10 = trunc i32 %and to i8, !dbg !2619
  %7 = load i8*, i8** %tx.addr, align 8, !dbg !2620
  %arrayidx = getelementptr i8, i8* %7, i64 0, !dbg !2620
  store i8 %conv10, i8* %arrayidx, align 1, !dbg !2621
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2622
  %base_reg11 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 8, !dbg !2623
  %9 = load i16, i16* %base_reg11, align 2, !dbg !2623
  %conv12 = zext i16 %9 to i32, !dbg !2622
  %add13 = add i32 %conv12, 1, !dbg !2624
  %and14 = and i32 %add13, 255, !dbg !2625
  %conv15 = trunc i32 %and14 to i8, !dbg !2626
  %10 = load i8*, i8** %tx.addr, align 8, !dbg !2627
  %arrayidx16 = getelementptr i8, i8* %10, i64 1, !dbg !2627
  store i8 %conv15, i8* %arrayidx16, align 1, !dbg !2628
  %11 = load i16, i16* %val, align 2, !dbg !2629
  %conv17 = zext i16 %11 to i32, !dbg !2629
  %shr18 = ashr i32 %conv17, 8, !dbg !2630
  %conv19 = trunc i32 %shr18 to i8, !dbg !2629
  %12 = load i8*, i8** %tx.addr, align 8, !dbg !2631
  %arrayidx20 = getelementptr i8, i8* %12, i64 2, !dbg !2631
  store i8 %conv19, i8* %arrayidx20, align 1, !dbg !2632
  %13 = load i16, i16* %val, align 2, !dbg !2633
  %conv21 = zext i16 %13 to i32, !dbg !2633
  %and22 = and i32 %conv21, 255, !dbg !2634
  %conv23 = trunc i32 %and22 to i8, !dbg !2633
  %14 = load i8*, i8** %tx.addr, align 8, !dbg !2635
  %arrayidx24 = getelementptr i8, i8* %14, i64 3, !dbg !2635
  store i8 %conv23, i8* %arrayidx24, align 1, !dbg !2636
  ret i32 0, !dbg !2637
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_transfer(%struct.i2c_adapter*, %struct.i2c_msg*, i32) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %mst, i32 %intf) #0 !dbg !2638 {
entry:
  %retval = alloca i32, align 4
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %intf.addr = alloca i32, align 4
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2641, metadata !DIExpression()), !dbg !2642
  store i32 %intf, i32* %intf.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %intf.addr, metadata !2643, metadata !DIExpression()), !dbg !2644
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2645
  %device_rev = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %0, i32 0, i32 0, !dbg !2647
  %1 = load i16, i16* %device_rev, align 8, !dbg !2647
  %conv = zext i16 %1 to i32, !dbg !2645
  %cmp = icmp sgt i32 %conv, 1, !dbg !2648
  br i1 %cmp, label %land.lhs.true, label %if.end10, !dbg !2649

land.lhs.true:                                    ; preds = %entry
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2650
  %selected_interface = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %2, i32 0, i32 1, !dbg !2651
  %3 = load i32, i32* %selected_interface, align 4, !dbg !2651
  %4 = load i32, i32* %intf.addr, align 4, !dbg !2652
  %cmp2 = icmp ne i32 %3, %4, !dbg !2653
  br i1 %cmp2, label %if.then, label %if.end10, !dbg !2654

if.then:                                          ; preds = %land.lhs.true
  br label %do.body, !dbg !2655

do.body:                                          ; preds = %if.then
  %5 = load i32, i32* @debug, align 4, !dbg !2657
  %tobool = icmp ne i32 %5, 0, !dbg !2657
  br i1 %tobool, label %if.then4, label %if.end, !dbg !2660

if.then4:                                         ; preds = %do.body
  %6 = load i32, i32* %intf.addr, align 4, !dbg !2657
  %call = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.9, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dibx000_i2c_select_interface, i64 0, i64 0), i32 %6) #6, !dbg !2657
  br label %if.end, !dbg !2657

if.end:                                           ; preds = %if.then4, %do.body
  br label %do.end, !dbg !2660

do.end:                                           ; preds = %if.end
  %7 = load i32, i32* %intf.addr, align 4, !dbg !2661
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2662
  %selected_interface5 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 1, !dbg !2663
  store i32 %7, i32* %selected_interface5, align 4, !dbg !2664
  %9 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2665
  %10 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2666
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %10, i32 0, i32 8, !dbg !2667
  %11 = load i16, i16* %base_reg, align 2, !dbg !2667
  %conv6 = zext i16 %11 to i32, !dbg !2666
  %add = add i32 %conv6, 4, !dbg !2668
  %conv7 = trunc i32 %add to i16, !dbg !2666
  %12 = load i32, i32* %intf.addr, align 4, !dbg !2669
  %conv8 = trunc i32 %12 to i16, !dbg !2669
  %call9 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %9, i16 zeroext %conv7, i16 zeroext %conv8) #5, !dbg !2670
  store i32 %call9, i32* %retval, align 4, !dbg !2671
  br label %return, !dbg !2671

if.end10:                                         ; preds = %land.lhs.true, %entry
  store i32 0, i32* %retval, align 4, !dbg !2672
  br label %return, !dbg !2672

return:                                           ; preds = %if.end10, %do.end
  %13 = load i32, i32* %retval, align 4, !dbg !2673
  ret i32 %13, !dbg !2673
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local i32 @dibx000_init_i2c_master(%struct.dibx000_i2c_master* %mst, i16 zeroext %device_rev, %struct.i2c_adapter* %i2c_adap, i8 zeroext %i2c_addr) #0 !dbg !158 {
entry:
  %retval = alloca i32, align 4
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %device_rev.addr = alloca i16, align 2
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %i2c_addr.addr = alloca i8, align 1
  %ret = alloca i32, align 4
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2674, metadata !DIExpression()), !dbg !2675
  store i16 %device_rev, i16* %device_rev.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %device_rev.addr, metadata !2676, metadata !DIExpression()), !dbg !2677
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2678, metadata !DIExpression()), !dbg !2679
  store i8 %i2c_addr, i8* %i2c_addr.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %i2c_addr.addr, metadata !2680, metadata !DIExpression()), !dbg !2681
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2682, metadata !DIExpression()), !dbg !2683
  br label %do.body, !dbg !2684

do.body:                                          ; preds = %entry
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2685
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %0, i32 0, i32 12, !dbg !2685
  call void @__mutex_init(%struct.mutex* %i2c_buffer_lock, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), %struct.lock_class_key* @dibx000_init_i2c_master.__key) #5, !dbg !2685
  br label %do.end, !dbg !2685

do.end:                                           ; preds = %do.body
  %1 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2687
  %i2c_buffer_lock1 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %1, i32 0, i32 12, !dbg !2689
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* %i2c_buffer_lock1) #5, !dbg !2690
  %cmp = icmp slt i32 %call, 0, !dbg !2691
  br i1 %cmp, label %if.then, label %if.end6, !dbg !2692

if.then:                                          ; preds = %do.end
  br label %do.body2, !dbg !2693

do.body2:                                         ; preds = %if.then
  %2 = load i32, i32* @debug, align 4, !dbg !2695
  %tobool = icmp ne i32 %2, 0, !dbg !2695
  br i1 %tobool, label %if.then3, label %if.end, !dbg !2698

if.then3:                                         ; preds = %do.body2
  %call4 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([24 x i8], [24 x i8]* @__func__.dibx000_init_i2c_master, i64 0, i64 0)) #6, !dbg !2695
  br label %if.end, !dbg !2695

if.end:                                           ; preds = %if.then3, %do.body2
  br label %do.end5, !dbg !2698

do.end5:                                          ; preds = %if.end
  store i32 -22, i32* %retval, align 4, !dbg !2699
  br label %return, !dbg !2699

if.end6:                                          ; preds = %do.end
  %3 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2700
  %msg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %3, i32 0, i32 9, !dbg !2701
  %arraydecay = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !2702
  %4 = bitcast %struct.i2c_msg* %arraydecay to i8*, !dbg !2702
  call void @llvm.memset.p0i8.i64(i8* align 8 %4, i8 0, i64 16, i1 false), !dbg !2702
  %5 = load i8, i8* %i2c_addr.addr, align 1, !dbg !2703
  %conv = zext i8 %5 to i32, !dbg !2703
  %shr = ashr i32 %conv, 1, !dbg !2704
  %conv7 = trunc i32 %shr to i16, !dbg !2703
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2705
  %msg8 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 9, !dbg !2706
  %arrayidx = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg8, i64 0, i64 0, !dbg !2705
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 0, !dbg !2707
  store i16 %conv7, i16* %addr, align 8, !dbg !2708
  %7 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2709
  %msg9 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %7, i32 0, i32 9, !dbg !2710
  %arrayidx10 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg9, i64 0, i64 0, !dbg !2709
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx10, i32 0, i32 1, !dbg !2711
  store i16 0, i16* %flags, align 2, !dbg !2712
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2713
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 10, !dbg !2714
  %arraydecay11 = getelementptr inbounds [8 x i8], [8 x i8]* %i2c_write_buffer, i64 0, i64 0, !dbg !2713
  %9 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2715
  %msg12 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %9, i32 0, i32 9, !dbg !2716
  %arrayidx13 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg12, i64 0, i64 0, !dbg !2715
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx13, i32 0, i32 3, !dbg !2717
  store i8* %arraydecay11, i8** %buf, align 8, !dbg !2718
  %10 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2719
  %msg14 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %10, i32 0, i32 9, !dbg !2720
  %arrayidx15 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg14, i64 0, i64 0, !dbg !2719
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx15, i32 0, i32 2, !dbg !2721
  store i16 4, i16* %len, align 4, !dbg !2722
  %11 = load i16, i16* %device_rev.addr, align 2, !dbg !2723
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2724
  %device_rev16 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %12, i32 0, i32 0, !dbg !2725
  store i16 %11, i16* %device_rev16, align 8, !dbg !2726
  %13 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2727
  %14 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2728
  %i2c_adap17 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %14, i32 0, i32 6, !dbg !2729
  store %struct.i2c_adapter* %13, %struct.i2c_adapter** %i2c_adap17, align 8, !dbg !2730
  %15 = load i8, i8* %i2c_addr.addr, align 1, !dbg !2731
  %conv18 = zext i8 %15 to i32, !dbg !2731
  %shr19 = ashr i32 %conv18, 1, !dbg !2732
  %conv20 = trunc i32 %shr19 to i8, !dbg !2731
  %16 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2733
  %i2c_addr21 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %16, i32 0, i32 7, !dbg !2734
  store i8 %conv20, i8* %i2c_addr21, align 8, !dbg !2735
  %17 = load i16, i16* %device_rev.addr, align 2, !dbg !2736
  %conv22 = zext i16 %17 to i32, !dbg !2736
  %cmp23 = icmp eq i32 %conv22, 11, !dbg !2738
  br i1 %cmp23, label %if.then28, label %lor.lhs.false, !dbg !2739

lor.lhs.false:                                    ; preds = %if.end6
  %18 = load i16, i16* %device_rev.addr, align 2, !dbg !2740
  %conv25 = zext i16 %18 to i32, !dbg !2740
  %cmp26 = icmp eq i32 %conv25, 13, !dbg !2741
  br i1 %cmp26, label %if.then28, label %if.else, !dbg !2742

if.then28:                                        ; preds = %lor.lhs.false, %if.end6
  %19 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2743
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %19, i32 0, i32 8, !dbg !2744
  store i16 1024, i16* %base_reg, align 2, !dbg !2745
  br label %if.end30, !dbg !2743

if.else:                                          ; preds = %lor.lhs.false
  %20 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2746
  %base_reg29 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %20, i32 0, i32 8, !dbg !2747
  store i16 768, i16* %base_reg29, align 2, !dbg !2748
  br label %if.end30

if.end30:                                         ; preds = %if.else, %if.then28
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2749
  %i2c_adap31 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %21, i32 0, i32 6, !dbg !2750
  %22 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap31, align 8, !dbg !2750
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %22, i32 0, i32 9, !dbg !2751
  %parent = getelementptr inbounds %struct.device, %struct.device* %dev, i32 0, i32 1, !dbg !2752
  %23 = load %struct.device*, %struct.device** %parent, align 8, !dbg !2752
  %24 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2753
  %gated_tuner_i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %24, i32 0, i32 2, !dbg !2754
  %dev32 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %gated_tuner_i2c_adap, i32 0, i32 9, !dbg !2755
  %parent33 = getelementptr inbounds %struct.device, %struct.device* %dev32, i32 0, i32 1, !dbg !2756
  store %struct.device* %23, %struct.device** %parent33, align 8, !dbg !2757
  %25 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2758
  %gated_tuner_i2c_adap34 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %25, i32 0, i32 2, !dbg !2760
  %26 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2761
  %call35 = call i32 @i2c_adapter_init(%struct.i2c_adapter* %gated_tuner_i2c_adap34, %struct.i2c_algorithm* @dibx000_i2c_gated_tuner_algo, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), %struct.dibx000_i2c_master* %26) #5, !dbg !2762
  %cmp36 = icmp ne i32 %call35, 0, !dbg !2763
  br i1 %cmp36, label %if.then38, label %if.end40, !dbg !2764

if.then38:                                        ; preds = %if.end30
  %call39 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.4, i64 0, i64 0)) #6, !dbg !2765
  br label %if.end40, !dbg !2765

if.end40:                                         ; preds = %if.then38, %if.end30
  %27 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2766
  %i2c_adap41 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %27, i32 0, i32 6, !dbg !2767
  %28 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap41, align 8, !dbg !2767
  %dev42 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %28, i32 0, i32 9, !dbg !2768
  %parent43 = getelementptr inbounds %struct.device, %struct.device* %dev42, i32 0, i32 1, !dbg !2769
  %29 = load %struct.device*, %struct.device** %parent43, align 8, !dbg !2769
  %30 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2770
  %master_i2c_adap_gpio12 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %30, i32 0, i32 3, !dbg !2771
  %dev44 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %master_i2c_adap_gpio12, i32 0, i32 9, !dbg !2772
  %parent45 = getelementptr inbounds %struct.device, %struct.device* %dev44, i32 0, i32 1, !dbg !2773
  store %struct.device* %29, %struct.device** %parent45, align 8, !dbg !2774
  %31 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2775
  %master_i2c_adap_gpio1246 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %31, i32 0, i32 3, !dbg !2777
  %32 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2778
  %call47 = call i32 @i2c_adapter_init(%struct.i2c_adapter* %master_i2c_adap_gpio1246, %struct.i2c_algorithm* @dibx000_i2c_master_gpio12_xfer_algo, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.5, i64 0, i64 0), %struct.dibx000_i2c_master* %32) #5, !dbg !2779
  %cmp48 = icmp ne i32 %call47, 0, !dbg !2780
  br i1 %cmp48, label %if.then50, label %if.end52, !dbg !2781

if.then50:                                        ; preds = %if.end40
  %call51 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2782
  br label %if.end52, !dbg !2782

if.end52:                                         ; preds = %if.then50, %if.end40
  %33 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2783
  %i2c_adap53 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %33, i32 0, i32 6, !dbg !2784
  %34 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap53, align 8, !dbg !2784
  %dev54 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %34, i32 0, i32 9, !dbg !2785
  %parent55 = getelementptr inbounds %struct.device, %struct.device* %dev54, i32 0, i32 1, !dbg !2786
  %35 = load %struct.device*, %struct.device** %parent55, align 8, !dbg !2786
  %36 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2787
  %master_i2c_adap_gpio34 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %36, i32 0, i32 4, !dbg !2788
  %dev56 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %master_i2c_adap_gpio34, i32 0, i32 9, !dbg !2789
  %parent57 = getelementptr inbounds %struct.device, %struct.device* %dev56, i32 0, i32 1, !dbg !2790
  store %struct.device* %35, %struct.device** %parent57, align 8, !dbg !2791
  %37 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2792
  %master_i2c_adap_gpio3458 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %37, i32 0, i32 4, !dbg !2794
  %38 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2795
  %call59 = call i32 @i2c_adapter_init(%struct.i2c_adapter* %master_i2c_adap_gpio3458, %struct.i2c_algorithm* @dibx000_i2c_master_gpio34_xfer_algo, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.7, i64 0, i64 0), %struct.dibx000_i2c_master* %38) #5, !dbg !2796
  %cmp60 = icmp ne i32 %call59, 0, !dbg !2797
  br i1 %cmp60, label %if.then62, label %if.end64, !dbg !2798

if.then62:                                        ; preds = %if.end52
  %call63 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2799
  br label %if.end64, !dbg !2799

if.end64:                                         ; preds = %if.then62, %if.end52
  %39 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2800
  %i2c_adap65 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %39, i32 0, i32 6, !dbg !2801
  %40 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap65, align 8, !dbg !2801
  %dev66 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %40, i32 0, i32 9, !dbg !2802
  %parent67 = getelementptr inbounds %struct.device, %struct.device* %dev66, i32 0, i32 1, !dbg !2803
  %41 = load %struct.device*, %struct.device** %parent67, align 8, !dbg !2803
  %42 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2804
  %master_i2c_adap_gpio67 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %42, i32 0, i32 5, !dbg !2805
  %dev68 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %master_i2c_adap_gpio67, i32 0, i32 9, !dbg !2806
  %parent69 = getelementptr inbounds %struct.device, %struct.device* %dev68, i32 0, i32 1, !dbg !2807
  store %struct.device* %41, %struct.device** %parent69, align 8, !dbg !2808
  %43 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2809
  %master_i2c_adap_gpio6770 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %43, i32 0, i32 5, !dbg !2811
  %44 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2812
  %call71 = call i32 @i2c_adapter_init(%struct.i2c_adapter* %master_i2c_adap_gpio6770, %struct.i2c_algorithm* @dibx000_i2c_gated_gpio67_algo, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.8, i64 0, i64 0), %struct.dibx000_i2c_master* %44) #5, !dbg !2813
  %cmp72 = icmp ne i32 %call71, 0, !dbg !2814
  br i1 %cmp72, label %if.then74, label %if.end76, !dbg !2815

if.then74:                                        ; preds = %if.end64
  %call75 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([63 x i8], [63 x i8]* @.str.6, i64 0, i64 0)) #6, !dbg !2816
  br label %if.end76, !dbg !2816

if.end76:                                         ; preds = %if.then74, %if.end64
  %45 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2817
  %46 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2818
  %i2c_write_buffer77 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %46, i32 0, i32 10, !dbg !2819
  %arraydecay78 = getelementptr inbounds [8 x i8], [8 x i8]* %i2c_write_buffer77, i64 0, i64 0, !dbg !2818
  %call79 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %45, i8* %arraydecay78, i8 zeroext 0, i32 0) #5, !dbg !2820
  %47 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2821
  %48 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2822
  %msg80 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %48, i32 0, i32 9, !dbg !2823
  %arraydecay81 = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg80, i64 0, i64 0, !dbg !2822
  %call82 = call i32 @i2c_transfer(%struct.i2c_adapter* %47, %struct.i2c_msg* %arraydecay81, i32 1) #5, !dbg !2824
  %cmp83 = icmp eq i32 %call82, 1, !dbg !2825
  %conv84 = zext i1 %cmp83 to i32, !dbg !2825
  store i32 %conv84, i32* %ret, align 4, !dbg !2826
  %49 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2827
  %i2c_buffer_lock85 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %49, i32 0, i32 12, !dbg !2828
  call void @mutex_unlock(%struct.mutex* %i2c_buffer_lock85) #5, !dbg !2829
  %50 = load i32, i32* %ret, align 4, !dbg !2830
  store i32 %50, i32* %retval, align 4, !dbg !2831
  br label %return, !dbg !2831

return:                                           ; preds = %if.end76, %do.end5
  %51 = load i32, i32* %retval, align 4, !dbg !2832
  ret i32 %51, !dbg !2832
}

; Function Attrs: noredzone
declare dso_local void @__mutex_init(%struct.mutex*, i8*, %struct.lock_class_key*) #3

; Function Attrs: noredzone
declare dso_local i32 @mutex_lock_interruptible(%struct.mutex*) #3

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @i2c_adapter_init(%struct.i2c_adapter* %i2c_adap, %struct.i2c_algorithm* %algo, i8* %name, %struct.dibx000_i2c_master* %mst) #0 !dbg !2833 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %algo.addr = alloca %struct.i2c_algorithm*, align 8
  %name.addr = alloca i8*, align 8
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2837, metadata !DIExpression()), !dbg !2838
  store %struct.i2c_algorithm* %algo, %struct.i2c_algorithm** %algo.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_algorithm** %algo.addr, metadata !2839, metadata !DIExpression()), !dbg !2840
  store i8* %name, i8** %name.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %name.addr, metadata !2841, metadata !DIExpression()), !dbg !2842
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2843, metadata !DIExpression()), !dbg !2844
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2845
  %name1 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 12, !dbg !2846
  %arraydecay = getelementptr inbounds [48 x i8], [48 x i8]* %name1, i64 0, i64 0, !dbg !2845
  %1 = load i8*, i8** %name.addr, align 8, !dbg !2847
  %call = call i64 @strscpy(i8* %arraydecay, i8* %1, i64 48) #5, !dbg !2848
  %2 = load %struct.i2c_algorithm*, %struct.i2c_algorithm** %algo.addr, align 8, !dbg !2849
  %3 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2850
  %algo2 = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %3, i32 0, i32 2, !dbg !2851
  store %struct.i2c_algorithm* %2, %struct.i2c_algorithm** %algo2, align 8, !dbg !2852
  %4 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2853
  %algo_data = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %4, i32 0, i32 3, !dbg !2854
  store i8* null, i8** %algo_data, align 8, !dbg !2855
  %5 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2856
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2857
  %7 = bitcast %struct.dibx000_i2c_master* %6 to i8*, !dbg !2857
  call void @i2c_set_adapdata(%struct.i2c_adapter* %5, i8* %7) #5, !dbg !2858
  %8 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2859
  %call3 = call i32 @i2c_add_adapter(%struct.i2c_adapter* %8) #5, !dbg !2861
  %cmp = icmp slt i32 %call3, 0, !dbg !2862
  br i1 %cmp, label %if.then, label %if.end, !dbg !2863

if.then:                                          ; preds = %entry
  store i32 -19, i32* %retval, align 4, !dbg !2864
  br label %return, !dbg !2864

if.end:                                           ; preds = %entry
  store i32 0, i32* %retval, align 4, !dbg !2865
  br label %return, !dbg !2865

return:                                           ; preds = %if.end, %if.then
  %9 = load i32, i32* %retval, align 4, !dbg !2866
  ret i32 %9, !dbg !2866
}

; Function Attrs: noredzone
declare dso_local void @mutex_unlock(%struct.mutex*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define dso_local void @dibx000_exit_i2c_master(%struct.dibx000_i2c_master* %mst) #0 !dbg !2867 {
entry:
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !2868, metadata !DIExpression()), !dbg !2869
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2870
  %gated_tuner_i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %0, i32 0, i32 2, !dbg !2871
  call void @i2c_del_adapter(%struct.i2c_adapter* %gated_tuner_i2c_adap) #5, !dbg !2872
  %1 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2873
  %master_i2c_adap_gpio12 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %1, i32 0, i32 3, !dbg !2874
  call void @i2c_del_adapter(%struct.i2c_adapter* %master_i2c_adap_gpio12) #5, !dbg !2875
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2876
  %master_i2c_adap_gpio34 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %2, i32 0, i32 4, !dbg !2877
  call void @i2c_del_adapter(%struct.i2c_adapter* %master_i2c_adap_gpio34) #5, !dbg !2878
  %3 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !2879
  %master_i2c_adap_gpio67 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %3, i32 0, i32 5, !dbg !2880
  call void @i2c_del_adapter(%struct.i2c_adapter* %master_i2c_adap_gpio67) #5, !dbg !2881
  ret void, !dbg !2882
}

; Function Attrs: noredzone
declare dso_local void @i2c_del_adapter(%struct.i2c_adapter*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i8* @dev_get_drvdata(%struct.device* %dev) #0 !dbg !2883 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2886, metadata !DIExpression()), !dbg !2887
  %0 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2888
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %0, i32 0, i32 8, !dbg !2889
  %1 = load i8*, i8** %driver_data, align 8, !dbg !2889
  ret i8* %1, !dbg !2890
}

; Function Attrs: noredzone
declare dso_local i64 @strscpy(i8*, i8*, i64) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @i2c_set_adapdata(%struct.i2c_adapter* %adap, i8* %data) #0 !dbg !2891 {
entry:
  %adap.addr = alloca %struct.i2c_adapter*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.i2c_adapter* %adap, %struct.i2c_adapter** %adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adap.addr, metadata !2894, metadata !DIExpression()), !dbg !2895
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2896, metadata !DIExpression()), !dbg !2897
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %adap.addr, align 8, !dbg !2898
  %dev = getelementptr inbounds %struct.i2c_adapter, %struct.i2c_adapter* %0, i32 0, i32 9, !dbg !2899
  %1 = load i8*, i8** %data.addr, align 8, !dbg !2900
  call void @dev_set_drvdata(%struct.device* %dev, i8* %1) #5, !dbg !2901
  ret void, !dbg !2902
}

; Function Attrs: noredzone
declare dso_local i32 @i2c_add_adapter(%struct.i2c_adapter*) #3

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal void @dev_set_drvdata(%struct.device* %dev, i8* %data) #0 !dbg !2903 {
entry:
  %dev.addr = alloca %struct.device*, align 8
  %data.addr = alloca i8*, align 8
  store %struct.device* %dev, %struct.device** %dev.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.device** %dev.addr, metadata !2906, metadata !DIExpression()), !dbg !2907
  store i8* %data, i8** %data.addr, align 8
  call void @llvm.dbg.declare(metadata i8** %data.addr, metadata !2908, metadata !DIExpression()), !dbg !2909
  %0 = load i8*, i8** %data.addr, align 8, !dbg !2910
  %1 = load %struct.device*, %struct.device** %dev.addr, align 8, !dbg !2911
  %driver_data = getelementptr inbounds %struct.device, %struct.device* %1, i32 0, i32 8, !dbg !2912
  store i8* %0, i8** %driver_data, align 8, !dbg !2913
  ret void, !dbg !2914
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_gated_tuner_xfer(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg, i32 %num) #0 !dbg !2915 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %mst = alloca %struct.dibx000_i2c_master*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !2916, metadata !DIExpression()), !dbg !2917
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !2918, metadata !DIExpression()), !dbg !2919
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !2920, metadata !DIExpression()), !dbg !2921
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst, metadata !2922, metadata !DIExpression()), !dbg !2923
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !2924
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #5, !dbg !2925
  %1 = bitcast i8* %call to %struct.dibx000_i2c_master*, !dbg !2925
  store %struct.dibx000_i2c_master* %1, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2923
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !2926, metadata !DIExpression()), !dbg !2927
  %2 = load i32, i32* %num.addr, align 4, !dbg !2928
  %cmp = icmp sgt i32 %2, 32, !dbg !2930
  br i1 %cmp, label %if.then, label %if.end3, !dbg !2931

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !2932

do.body:                                          ; preds = %if.then
  %3 = load i32, i32* @debug, align 4, !dbg !2934
  %tobool = icmp ne i32 %3, 0, !dbg !2934
  br i1 %tobool, label %if.then1, label %if.end, !dbg !2937

if.then1:                                         ; preds = %do.body
  %4 = load i32, i32* %num.addr, align 4, !dbg !2934
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dibx000_i2c_gated_tuner_xfer, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dibx000_i2c_gated_tuner_xfer, i64 0, i64 0), i32 %4) #6, !dbg !2934
  br label %if.end, !dbg !2934

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !2937

do.end:                                           ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !2938
  br label %return, !dbg !2938

if.end3:                                          ; preds = %entry
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2939
  %call4 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %5, i32 0) #5, !dbg !2940
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2941
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 12, !dbg !2943
  %call5 = call i32 @mutex_lock_interruptible(%struct.mutex* %i2c_buffer_lock) #5, !dbg !2944
  %cmp6 = icmp slt i32 %call5, 0, !dbg !2945
  br i1 %cmp6, label %if.then7, label %if.end14, !dbg !2946

if.then7:                                         ; preds = %if.end3
  br label %do.body8, !dbg !2947

do.body8:                                         ; preds = %if.then7
  %7 = load i32, i32* @debug, align 4, !dbg !2949
  %tobool9 = icmp ne i32 %7, 0, !dbg !2949
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !2952

if.then10:                                        ; preds = %do.body8
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([29 x i8], [29 x i8]* @__func__.dibx000_i2c_gated_tuner_xfer, i64 0, i64 0)) #6, !dbg !2949
  br label %if.end12, !dbg !2949

if.end12:                                         ; preds = %if.then10, %do.body8
  br label %do.end13, !dbg !2952

do.end13:                                         ; preds = %if.end12
  store i32 -22, i32* %retval, align 4, !dbg !2953
  br label %return, !dbg !2953

if.end14:                                         ; preds = %if.end3
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2954
  %msg15 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 9, !dbg !2955
  %arraydecay = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg15, i64 0, i64 0, !dbg !2956
  %9 = bitcast %struct.i2c_msg* %arraydecay to i8*, !dbg !2956
  %10 = load i32, i32* %num.addr, align 4, !dbg !2957
  %add = add i32 2, %10, !dbg !2958
  %conv = sext i32 %add to i64, !dbg !2959
  %mul = mul i64 16, %conv, !dbg !2960
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 %mul, i1 false), !dbg !2956
  %11 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2961
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2962
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %12, i32 0, i32 10, !dbg !2963
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer, i64 0, i64 0, !dbg !2962
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2964
  %arrayidx16 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %13, i64 0, !dbg !2964
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx16, i32 0, i32 0, !dbg !2965
  %14 = load i16, i16* %addr, align 8, !dbg !2965
  %conv17 = trunc i16 %14 to i8, !dbg !2964
  %call18 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %11, i8* %arrayidx, i8 zeroext %conv17, i32 1) #5, !dbg !2966
  %15 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2967
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %15, i32 0, i32 7, !dbg !2968
  %16 = load i8, i8* %i2c_addr, align 8, !dbg !2968
  %conv19 = zext i8 %16 to i16, !dbg !2967
  %17 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2969
  %msg20 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %17, i32 0, i32 9, !dbg !2970
  %arrayidx21 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg20, i64 0, i64 0, !dbg !2969
  %addr22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx21, i32 0, i32 0, !dbg !2971
  store i16 %conv19, i16* %addr22, align 8, !dbg !2972
  %18 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2973
  %i2c_write_buffer23 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %18, i32 0, i32 10, !dbg !2974
  %arrayidx24 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer23, i64 0, i64 0, !dbg !2973
  %19 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2975
  %msg25 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %19, i32 0, i32 9, !dbg !2976
  %arrayidx26 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg25, i64 0, i64 0, !dbg !2975
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx26, i32 0, i32 3, !dbg !2977
  store i8* %arrayidx24, i8** %buf, align 8, !dbg !2978
  %20 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2979
  %msg27 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %20, i32 0, i32 9, !dbg !2980
  %arrayidx28 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg27, i64 0, i64 0, !dbg !2979
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx28, i32 0, i32 2, !dbg !2981
  store i16 4, i16* %len, align 4, !dbg !2982
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2983
  %msg29 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %21, i32 0, i32 9, !dbg !2984
  %arrayidx30 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg29, i64 0, i64 1, !dbg !2983
  %22 = bitcast %struct.i2c_msg* %arrayidx30 to i8*, !dbg !2985
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !2986
  %24 = bitcast %struct.i2c_msg* %23 to i8*, !dbg !2985
  %25 = load i32, i32* %num.addr, align 4, !dbg !2987
  %conv31 = sext i32 %25 to i64, !dbg !2987
  %mul32 = mul i64 16, %conv31, !dbg !2988
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %24, i64 %mul32, i1 false), !dbg !2985
  %26 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2989
  %27 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2990
  %i2c_write_buffer33 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %27, i32 0, i32 10, !dbg !2991
  %arrayidx34 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer33, i64 0, i64 4, !dbg !2990
  %call35 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %26, i8* %arrayidx34, i8 zeroext 0, i32 0) #5, !dbg !2992
  %28 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2993
  %i2c_addr36 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %28, i32 0, i32 7, !dbg !2994
  %29 = load i8, i8* %i2c_addr36, align 8, !dbg !2994
  %conv37 = zext i8 %29 to i16, !dbg !2993
  %30 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !2995
  %msg38 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %30, i32 0, i32 9, !dbg !2996
  %31 = load i32, i32* %num.addr, align 4, !dbg !2997
  %add39 = add i32 %31, 1, !dbg !2998
  %idxprom = sext i32 %add39 to i64, !dbg !2995
  %arrayidx40 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg38, i64 0, i64 %idxprom, !dbg !2995
  %addr41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx40, i32 0, i32 0, !dbg !2999
  store i16 %conv37, i16* %addr41, align 8, !dbg !3000
  %32 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3001
  %i2c_write_buffer42 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %32, i32 0, i32 10, !dbg !3002
  %arrayidx43 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer42, i64 0, i64 4, !dbg !3001
  %33 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3003
  %msg44 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %33, i32 0, i32 9, !dbg !3004
  %34 = load i32, i32* %num.addr, align 4, !dbg !3005
  %add45 = add i32 %34, 1, !dbg !3006
  %idxprom46 = sext i32 %add45 to i64, !dbg !3003
  %arrayidx47 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg44, i64 0, i64 %idxprom46, !dbg !3003
  %buf48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx47, i32 0, i32 3, !dbg !3007
  store i8* %arrayidx43, i8** %buf48, align 8, !dbg !3008
  %35 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3009
  %msg49 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %35, i32 0, i32 9, !dbg !3010
  %36 = load i32, i32* %num.addr, align 4, !dbg !3011
  %add50 = add i32 %36, 1, !dbg !3012
  %idxprom51 = sext i32 %add50 to i64, !dbg !3009
  %arrayidx52 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg49, i64 0, i64 %idxprom51, !dbg !3009
  %len53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx52, i32 0, i32 2, !dbg !3013
  store i16 4, i16* %len53, align 4, !dbg !3014
  %37 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3015
  %i2c_adap54 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %37, i32 0, i32 6, !dbg !3016
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap54, align 8, !dbg !3016
  %39 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3017
  %msg55 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %39, i32 0, i32 9, !dbg !3018
  %arraydecay56 = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg55, i64 0, i64 0, !dbg !3017
  %40 = load i32, i32* %num.addr, align 4, !dbg !3019
  %add57 = add i32 2, %40, !dbg !3020
  %call58 = call i32 @i2c_transfer(%struct.i2c_adapter* %38, %struct.i2c_msg* %arraydecay56, i32 %add57) #5, !dbg !3021
  %41 = load i32, i32* %num.addr, align 4, !dbg !3022
  %add59 = add i32 2, %41, !dbg !3023
  %cmp60 = icmp eq i32 %call58, %add59, !dbg !3024
  br i1 %cmp60, label %cond.true, label %cond.false, !dbg !3021

cond.true:                                        ; preds = %if.end14
  %42 = load i32, i32* %num.addr, align 4, !dbg !3025
  br label %cond.end, !dbg !3021

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !3021

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %42, %cond.true ], [ -5, %cond.false ], !dbg !3021
  store i32 %cond, i32* %ret, align 4, !dbg !3026
  %43 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3027
  %i2c_buffer_lock62 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %43, i32 0, i32 12, !dbg !3028
  call void @mutex_unlock(%struct.mutex* %i2c_buffer_lock62) #5, !dbg !3029
  %44 = load i32, i32* %ret, align 4, !dbg !3030
  store i32 %44, i32* %retval, align 4, !dbg !3031
  br label %return, !dbg !3031

return:                                           ; preds = %cond.end, %do.end13, %do.end
  %45 = load i32, i32* %retval, align 4, !dbg !3032
  ret i32 %45, !dbg !3032
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_func(%struct.i2c_adapter* %adapter) #0 !dbg !3033 {
entry:
  %adapter.addr = alloca %struct.i2c_adapter*, align 8
  store %struct.i2c_adapter* %adapter, %struct.i2c_adapter** %adapter.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %adapter.addr, metadata !3034, metadata !DIExpression()), !dbg !3035
  ret i32 1, !dbg !3036
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_master_xfer_gpio12(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg, i32 %num) #0 !dbg !3037 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %mst = alloca %struct.dibx000_i2c_master*, align 8
  %msg_index = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3038, metadata !DIExpression()), !dbg !3039
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3040, metadata !DIExpression()), !dbg !3041
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !3042, metadata !DIExpression()), !dbg !3043
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst, metadata !3044, metadata !DIExpression()), !dbg !3045
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3046
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #5, !dbg !3047
  %1 = bitcast i8* %call to %struct.dibx000_i2c_master*, !dbg !3047
  store %struct.dibx000_i2c_master* %1, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3045
  call void @llvm.dbg.declare(metadata i32* %msg_index, metadata !3048, metadata !DIExpression()), !dbg !3049
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3050, metadata !DIExpression()), !dbg !3051
  store i32 0, i32* %ret, align 4, !dbg !3051
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3052
  %call1 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %2, i32 1) #5, !dbg !3053
  store i32 0, i32* %msg_index, align 4, !dbg !3054
  br label %for.cond, !dbg !3056

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %msg_index, align 4, !dbg !3057
  %4 = load i32, i32* %num.addr, align 4, !dbg !3059
  %cmp = icmp slt i32 %3, %4, !dbg !3060
  br i1 %cmp, label %for.body, label %for.end, !dbg !3061

for.body:                                         ; preds = %for.cond
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3062
  %6 = load i32, i32* %msg_index, align 4, !dbg !3065
  %idxprom = sext i32 %6 to i64, !dbg !3062
  %arrayidx = getelementptr %struct.i2c_msg, %struct.i2c_msg* %5, i64 %idxprom, !dbg !3062
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 1, !dbg !3066
  %7 = load i16, i16* %flags, align 2, !dbg !3066
  %conv = zext i16 %7 to i32, !dbg !3062
  %and = and i32 %conv, 1, !dbg !3067
  %tobool = icmp ne i32 %and, 0, !dbg !3067
  br i1 %tobool, label %if.then, label %if.else, !dbg !3068

if.then:                                          ; preds = %for.body
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3069
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3071
  %10 = load i32, i32* %msg_index, align 4, !dbg !3072
  %idxprom2 = sext i32 %10 to i64, !dbg !3071
  %arrayidx3 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %9, i64 %idxprom2, !dbg !3071
  %call4 = call i32 @dibx000_master_i2c_read(%struct.dibx000_i2c_master* %8, %struct.i2c_msg* %arrayidx3) #5, !dbg !3073
  store i32 %call4, i32* %ret, align 4, !dbg !3074
  %11 = load i32, i32* %ret, align 4, !dbg !3075
  %cmp5 = icmp ne i32 %11, 0, !dbg !3077
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !3078

if.then7:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !3079
  br label %return, !dbg !3079

if.end:                                           ; preds = %if.then
  br label %if.end15, !dbg !3080

if.else:                                          ; preds = %for.body
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3081
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3083
  %14 = load i32, i32* %msg_index, align 4, !dbg !3084
  %idxprom8 = sext i32 %14 to i64, !dbg !3083
  %arrayidx9 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %13, i64 %idxprom8, !dbg !3083
  %call10 = call i32 @dibx000_master_i2c_write(%struct.dibx000_i2c_master* %12, %struct.i2c_msg* %arrayidx9, i8 zeroext 1) #5, !dbg !3085
  store i32 %call10, i32* %ret, align 4, !dbg !3086
  %15 = load i32, i32* %ret, align 4, !dbg !3087
  %cmp11 = icmp ne i32 %15, 0, !dbg !3089
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3090

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !3091
  br label %return, !dbg !3091

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %for.inc, !dbg !3092

for.inc:                                          ; preds = %if.end15
  %16 = load i32, i32* %msg_index, align 4, !dbg !3093
  %inc = add i32 %16, 1, !dbg !3093
  store i32 %inc, i32* %msg_index, align 4, !dbg !3093
  br label %for.cond, !dbg !3094, !llvm.loop !3095

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %num.addr, align 4, !dbg !3097
  store i32 %17, i32* %retval, align 4, !dbg !3098
  br label %return, !dbg !3098

return:                                           ; preds = %for.end, %if.then13, %if.then7
  %18 = load i32, i32* %retval, align 4, !dbg !3099
  ret i32 %18, !dbg !3099
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_master_i2c_read(%struct.dibx000_i2c_master* %mst, %struct.i2c_msg* %msg) #0 !dbg !3100 {
entry:
  %retval = alloca i32, align 4
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %da = alloca i16, align 2
  %b = alloca i8*, align 8
  %rxlen = alloca i16, align 2
  %len1 = alloca i16, align 2
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !3103, metadata !DIExpression()), !dbg !3104
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3105, metadata !DIExpression()), !dbg !3106
  call void @llvm.dbg.declare(metadata i16* %da, metadata !3107, metadata !DIExpression()), !dbg !3108
  call void @llvm.dbg.declare(metadata i8** %b, metadata !3109, metadata !DIExpression()), !dbg !3110
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3111
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 3, !dbg !3112
  %1 = load i8*, i8** %buf, align 8, !dbg !3112
  store i8* %1, i8** %b, align 8, !dbg !3110
  call void @llvm.dbg.declare(metadata i16* %rxlen, metadata !3113, metadata !DIExpression()), !dbg !3114
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3115
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 2, !dbg !3116
  %3 = load i16, i16* %len, align 4, !dbg !3116
  store i16 %3, i16* %rxlen, align 2, !dbg !3114
  call void @llvm.dbg.declare(metadata i16* %len1, metadata !3117, metadata !DIExpression()), !dbg !3118
  br label %while.cond, !dbg !3119

while.cond:                                       ; preds = %while.end, %entry
  %4 = load i16, i16* %rxlen, align 2, !dbg !3120
  %tobool = icmp ne i16 %4, 0, !dbg !3119
  br i1 %tobool, label %while.body, label %while.end59, !dbg !3119

while.body:                                       ; preds = %while.cond
  %5 = load i16, i16* %rxlen, align 2, !dbg !3121
  %conv = zext i16 %5 to i32, !dbg !3121
  %cmp = icmp sgt i32 %conv, 8, !dbg !3123
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3121

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !3121

cond.false:                                       ; preds = %while.body
  %6 = load i16, i16* %rxlen, align 2, !dbg !3124
  %conv3 = zext i16 %6 to i32, !dbg !3124
  br label %cond.end, !dbg !3121

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8, %cond.true ], [ %conv3, %cond.false ], !dbg !3121
  %conv4 = trunc i32 %cond to i16, !dbg !3121
  store i16 %conv4, i16* %len1, align 2, !dbg !3125
  %7 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3126
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %7, i32 0, i32 0, !dbg !3127
  %8 = load i16, i16* %addr, align 8, !dbg !3127
  %conv5 = trunc i16 %8 to i8, !dbg !3128
  %conv6 = zext i8 %conv5 to i32, !dbg !3129
  %shl = shl i32 %conv6, 9, !dbg !3130
  %or = or i32 %shl, 256, !dbg !3131
  %or7 = or i32 %or, 128, !dbg !3132
  %9 = load i16, i16* %len1, align 2, !dbg !3133
  %conv8 = zext i16 %9 to i32, !dbg !3133
  %and = and i32 %conv8, 7, !dbg !3134
  %shl9 = shl i32 %and, 2, !dbg !3135
  %or10 = or i32 %or7, %shl9, !dbg !3136
  %or11 = or i32 %or10, 2, !dbg !3137
  %conv12 = trunc i32 %or11 to i16, !dbg !3138
  store i16 %conv12, i16* %da, align 2, !dbg !3139
  %10 = load i16, i16* %rxlen, align 2, !dbg !3140
  %conv13 = zext i16 %10 to i32, !dbg !3140
  %11 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3142
  %len14 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %11, i32 0, i32 2, !dbg !3143
  %12 = load i16, i16* %len14, align 4, !dbg !3143
  %conv15 = zext i16 %12 to i32, !dbg !3142
  %cmp16 = icmp eq i32 %conv13, %conv15, !dbg !3144
  br i1 %cmp16, label %if.then, label %if.end, !dbg !3145

if.then:                                          ; preds = %cond.end
  %13 = load i16, i16* %da, align 2, !dbg !3146
  %conv18 = zext i16 %13 to i32, !dbg !3146
  %or19 = or i32 %conv18, 32, !dbg !3146
  %conv20 = trunc i32 %or19 to i16, !dbg !3146
  store i16 %conv20, i16* %da, align 2, !dbg !3146
  br label %if.end, !dbg !3147

if.end:                                           ; preds = %if.then, %cond.end
  %14 = load i16, i16* %rxlen, align 2, !dbg !3148
  %conv21 = zext i16 %14 to i32, !dbg !3148
  %15 = load i16, i16* %len1, align 2, !dbg !3150
  %conv22 = zext i16 %15 to i32, !dbg !3150
  %sub = sub i32 %conv21, %conv22, !dbg !3151
  %cmp23 = icmp eq i32 %sub, 0, !dbg !3152
  br i1 %cmp23, label %if.then25, label %if.end29, !dbg !3153

if.then25:                                        ; preds = %if.end
  %16 = load i16, i16* %da, align 2, !dbg !3154
  %conv26 = zext i16 %16 to i32, !dbg !3154
  %or27 = or i32 %conv26, 64, !dbg !3154
  %conv28 = trunc i32 %or27 to i16, !dbg !3154
  store i16 %conv28, i16* %da, align 2, !dbg !3154
  br label %if.end29, !dbg !3155

if.end29:                                         ; preds = %if.then25, %if.end
  %17 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3156
  %18 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3157
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %18, i32 0, i32 8, !dbg !3158
  %19 = load i16, i16* %base_reg, align 2, !dbg !3158
  %conv30 = zext i16 %19 to i32, !dbg !3157
  %add = add i32 %conv30, 1, !dbg !3159
  %conv31 = trunc i32 %add to i16, !dbg !3157
  %20 = load i16, i16* %da, align 2, !dbg !3160
  %call = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %17, i16 zeroext %conv31, i16 zeroext %20) #5, !dbg !3161
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3162
  %call32 = call i32 @dibx000_is_i2c_done(%struct.dibx000_i2c_master* %21) #5, !dbg !3164
  %cmp33 = icmp ne i32 %call32, 0, !dbg !3165
  br i1 %cmp33, label %if.then35, label %if.end36, !dbg !3166

if.then35:                                        ; preds = %if.end29
  store i32 -121, i32* %retval, align 4, !dbg !3167
  br label %return, !dbg !3167

if.end36:                                         ; preds = %if.end29
  %22 = load i16, i16* %len1, align 2, !dbg !3168
  %conv37 = zext i16 %22 to i32, !dbg !3168
  %23 = load i16, i16* %rxlen, align 2, !dbg !3169
  %conv38 = zext i16 %23 to i32, !dbg !3169
  %sub39 = sub i32 %conv38, %conv37, !dbg !3169
  %conv40 = trunc i32 %sub39 to i16, !dbg !3169
  store i16 %conv40, i16* %rxlen, align 2, !dbg !3169
  br label %while.cond41, !dbg !3170

while.cond41:                                     ; preds = %if.end58, %if.end36
  %24 = load i16, i16* %len1, align 2, !dbg !3171
  %tobool42 = icmp ne i16 %24, 0, !dbg !3170
  br i1 %tobool42, label %while.body43, label %while.end, !dbg !3170

while.body43:                                     ; preds = %while.cond41
  %25 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3172
  %26 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3174
  %base_reg44 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %26, i32 0, i32 8, !dbg !3175
  %27 = load i16, i16* %base_reg44, align 2, !dbg !3175
  %call45 = call zeroext i16 @dibx000_read_word(%struct.dibx000_i2c_master* %25, i16 zeroext %27) #5, !dbg !3176
  store i16 %call45, i16* %da, align 2, !dbg !3177
  %28 = load i16, i16* %da, align 2, !dbg !3178
  %conv46 = zext i16 %28 to i32, !dbg !3178
  %shr = ashr i32 %conv46, 8, !dbg !3179
  %and47 = and i32 %shr, 255, !dbg !3180
  %conv48 = trunc i32 %and47 to i8, !dbg !3181
  %29 = load i8*, i8** %b, align 8, !dbg !3182
  %incdec.ptr = getelementptr i8, i8* %29, i32 1, !dbg !3182
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !3182
  store i8 %conv48, i8* %29, align 1, !dbg !3183
  %30 = load i16, i16* %len1, align 2, !dbg !3184
  %dec = add i16 %30, -1, !dbg !3184
  store i16 %dec, i16* %len1, align 2, !dbg !3184
  %31 = load i16, i16* %len1, align 2, !dbg !3185
  %conv49 = zext i16 %31 to i32, !dbg !3185
  %cmp50 = icmp sge i32 %conv49, 1, !dbg !3187
  br i1 %cmp50, label %if.then52, label %if.end58, !dbg !3188

if.then52:                                        ; preds = %while.body43
  %32 = load i16, i16* %da, align 2, !dbg !3189
  %conv53 = zext i16 %32 to i32, !dbg !3189
  %and54 = and i32 %conv53, 255, !dbg !3191
  %conv55 = trunc i32 %and54 to i8, !dbg !3189
  %33 = load i8*, i8** %b, align 8, !dbg !3192
  %incdec.ptr56 = getelementptr i8, i8* %33, i32 1, !dbg !3192
  store i8* %incdec.ptr56, i8** %b, align 8, !dbg !3192
  store i8 %conv55, i8* %33, align 1, !dbg !3193
  %34 = load i16, i16* %len1, align 2, !dbg !3194
  %dec57 = add i16 %34, -1, !dbg !3194
  store i16 %dec57, i16* %len1, align 2, !dbg !3194
  br label %if.end58, !dbg !3195

if.end58:                                         ; preds = %if.then52, %while.body43
  br label %while.cond41, !dbg !3170, !llvm.loop !3196

while.end:                                        ; preds = %while.cond41
  br label %while.cond, !dbg !3119, !llvm.loop !3198

while.end59:                                      ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !3200
  br label %return, !dbg !3200

return:                                           ; preds = %while.end59, %if.then35
  %35 = load i32, i32* %retval, align 4, !dbg !3201
  ret i32 %35, !dbg !3201
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_master_i2c_write(%struct.dibx000_i2c_master* %mst, %struct.i2c_msg* %msg, i8 zeroext %stop) #0 !dbg !3202 {
entry:
  %retval = alloca i32, align 4
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %stop.addr = alloca i8, align 1
  %data = alloca i16, align 2
  %da = alloca i16, align 2
  %i = alloca i16, align 2
  %txlen = alloca i16, align 2
  %len1 = alloca i16, align 2
  %b = alloca i8*, align 8
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !3205, metadata !DIExpression()), !dbg !3206
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3207, metadata !DIExpression()), !dbg !3208
  store i8 %stop, i8* %stop.addr, align 1
  call void @llvm.dbg.declare(metadata i8* %stop.addr, metadata !3209, metadata !DIExpression()), !dbg !3210
  call void @llvm.dbg.declare(metadata i16* %data, metadata !3211, metadata !DIExpression()), !dbg !3212
  call void @llvm.dbg.declare(metadata i16* %da, metadata !3213, metadata !DIExpression()), !dbg !3214
  call void @llvm.dbg.declare(metadata i16* %i, metadata !3215, metadata !DIExpression()), !dbg !3216
  call void @llvm.dbg.declare(metadata i16* %txlen, metadata !3217, metadata !DIExpression()), !dbg !3218
  %0 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3219
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %0, i32 0, i32 2, !dbg !3220
  %1 = load i16, i16* %len, align 4, !dbg !3220
  store i16 %1, i16* %txlen, align 2, !dbg !3218
  call void @llvm.dbg.declare(metadata i16* %len1, metadata !3221, metadata !DIExpression()), !dbg !3222
  call void @llvm.dbg.declare(metadata i8** %b, metadata !3223, metadata !DIExpression()), !dbg !3226
  %2 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3227
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %2, i32 0, i32 3, !dbg !3228
  %3 = load i8*, i8** %buf, align 8, !dbg !3228
  store i8* %3, i8** %b, align 8, !dbg !3226
  br label %while.cond, !dbg !3229

while.cond:                                       ; preds = %if.end66, %entry
  %4 = load i16, i16* %txlen, align 2, !dbg !3230
  %tobool = icmp ne i16 %4, 0, !dbg !3229
  br i1 %tobool, label %while.body, label %while.end, !dbg !3229

while.body:                                       ; preds = %while.cond
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3231
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3233
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 8, !dbg !3234
  %7 = load i16, i16* %base_reg, align 2, !dbg !3234
  %conv = zext i16 %7 to i32, !dbg !3233
  %add = add i32 %conv, 2, !dbg !3235
  %conv2 = trunc i32 %add to i16, !dbg !3233
  %call = call zeroext i16 @dibx000_read_word(%struct.dibx000_i2c_master* %5, i16 zeroext %conv2) #5, !dbg !3236
  %8 = load i16, i16* %txlen, align 2, !dbg !3237
  %conv3 = zext i16 %8 to i32, !dbg !3237
  %cmp = icmp sgt i32 %conv3, 8, !dbg !3238
  br i1 %cmp, label %cond.true, label %cond.false, !dbg !3237

cond.true:                                        ; preds = %while.body
  br label %cond.end, !dbg !3237

cond.false:                                       ; preds = %while.body
  %9 = load i16, i16* %txlen, align 2, !dbg !3239
  %conv5 = zext i16 %9 to i32, !dbg !3239
  br label %cond.end, !dbg !3237

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ 8, %cond.true ], [ %conv5, %cond.false ], !dbg !3237
  %conv6 = trunc i32 %cond to i16, !dbg !3237
  store i16 %conv6, i16* %len1, align 2, !dbg !3240
  store i16 0, i16* %i, align 2, !dbg !3241
  br label %for.cond, !dbg !3243

for.cond:                                         ; preds = %for.inc, %cond.end
  %10 = load i16, i16* %i, align 2, !dbg !3244
  %conv7 = zext i16 %10 to i32, !dbg !3244
  %11 = load i16, i16* %len1, align 2, !dbg !3246
  %conv8 = zext i16 %11 to i32, !dbg !3246
  %cmp9 = icmp slt i32 %conv7, %conv8, !dbg !3247
  br i1 %cmp9, label %for.body, label %for.end, !dbg !3248

for.body:                                         ; preds = %for.cond
  %12 = load i8*, i8** %b, align 8, !dbg !3249
  %incdec.ptr = getelementptr i8, i8* %12, i32 1, !dbg !3249
  store i8* %incdec.ptr, i8** %b, align 8, !dbg !3249
  %13 = load i8, i8* %12, align 1, !dbg !3251
  %conv11 = zext i8 %13 to i32, !dbg !3251
  %shl = shl i32 %conv11, 8, !dbg !3252
  %conv12 = trunc i32 %shl to i16, !dbg !3251
  store i16 %conv12, i16* %data, align 2, !dbg !3253
  %14 = load i16, i16* %i, align 2, !dbg !3254
  %conv13 = zext i16 %14 to i32, !dbg !3254
  %add14 = add i32 %conv13, 1, !dbg !3256
  %15 = load i16, i16* %len1, align 2, !dbg !3257
  %conv15 = zext i16 %15 to i32, !dbg !3257
  %cmp16 = icmp slt i32 %add14, %conv15, !dbg !3258
  br i1 %cmp16, label %if.then, label %if.end, !dbg !3259

if.then:                                          ; preds = %for.body
  %16 = load i8*, i8** %b, align 8, !dbg !3260
  %incdec.ptr18 = getelementptr i8, i8* %16, i32 1, !dbg !3260
  store i8* %incdec.ptr18, i8** %b, align 8, !dbg !3260
  %17 = load i8, i8* %16, align 1, !dbg !3261
  %conv19 = zext i8 %17 to i32, !dbg !3261
  %18 = load i16, i16* %data, align 2, !dbg !3262
  %conv20 = zext i16 %18 to i32, !dbg !3262
  %or = or i32 %conv20, %conv19, !dbg !3262
  %conv21 = trunc i32 %or to i16, !dbg !3262
  store i16 %conv21, i16* %data, align 2, !dbg !3262
  br label %if.end, !dbg !3263

if.end:                                           ; preds = %if.then, %for.body
  %19 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3264
  %20 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3265
  %base_reg22 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %20, i32 0, i32 8, !dbg !3266
  %21 = load i16, i16* %base_reg22, align 2, !dbg !3266
  %22 = load i16, i16* %data, align 2, !dbg !3267
  %call23 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %19, i16 zeroext %21, i16 zeroext %22) #5, !dbg !3268
  br label %for.inc, !dbg !3269

for.inc:                                          ; preds = %if.end
  %23 = load i16, i16* %i, align 2, !dbg !3270
  %conv24 = zext i16 %23 to i32, !dbg !3270
  %add25 = add i32 %conv24, 2, !dbg !3270
  %conv26 = trunc i32 %add25 to i16, !dbg !3270
  store i16 %conv26, i16* %i, align 2, !dbg !3270
  br label %for.cond, !dbg !3271, !llvm.loop !3272

for.end:                                          ; preds = %for.cond
  %24 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3274
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %24, i32 0, i32 0, !dbg !3275
  %25 = load i16, i16* %addr, align 8, !dbg !3275
  %conv27 = trunc i16 %25 to i8, !dbg !3276
  %conv28 = zext i8 %conv27 to i32, !dbg !3277
  %shl29 = shl i32 %conv28, 9, !dbg !3278
  %or30 = or i32 %shl29, 256, !dbg !3279
  %or31 = or i32 %or30, 128, !dbg !3280
  %26 = load i16, i16* %len1, align 2, !dbg !3281
  %conv32 = zext i16 %26 to i32, !dbg !3281
  %and = and i32 %conv32, 7, !dbg !3282
  %shl33 = shl i32 %and, 2, !dbg !3283
  %or34 = or i32 %or31, %shl33, !dbg !3284
  %conv35 = trunc i32 %or34 to i16, !dbg !3285
  store i16 %conv35, i16* %da, align 2, !dbg !3286
  %27 = load i16, i16* %txlen, align 2, !dbg !3287
  %conv36 = zext i16 %27 to i32, !dbg !3287
  %28 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3289
  %len37 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %28, i32 0, i32 2, !dbg !3290
  %29 = load i16, i16* %len37, align 4, !dbg !3290
  %conv38 = zext i16 %29 to i32, !dbg !3289
  %cmp39 = icmp eq i32 %conv36, %conv38, !dbg !3291
  br i1 %cmp39, label %if.then41, label %if.end45, !dbg !3292

if.then41:                                        ; preds = %for.end
  %30 = load i16, i16* %da, align 2, !dbg !3293
  %conv42 = zext i16 %30 to i32, !dbg !3293
  %or43 = or i32 %conv42, 32, !dbg !3293
  %conv44 = trunc i32 %or43 to i16, !dbg !3293
  store i16 %conv44, i16* %da, align 2, !dbg !3293
  br label %if.end45, !dbg !3294

if.end45:                                         ; preds = %if.then41, %for.end
  %31 = load i16, i16* %txlen, align 2, !dbg !3295
  %conv46 = zext i16 %31 to i32, !dbg !3295
  %32 = load i16, i16* %len1, align 2, !dbg !3297
  %conv47 = zext i16 %32 to i32, !dbg !3297
  %sub = sub i32 %conv46, %conv47, !dbg !3298
  %cmp48 = icmp eq i32 %sub, 0, !dbg !3299
  br i1 %cmp48, label %land.lhs.true, label %if.end56, !dbg !3300

land.lhs.true:                                    ; preds = %if.end45
  %33 = load i8, i8* %stop.addr, align 1, !dbg !3301
  %conv50 = zext i8 %33 to i32, !dbg !3301
  %tobool51 = icmp ne i32 %conv50, 0, !dbg !3301
  br i1 %tobool51, label %if.then52, label %if.end56, !dbg !3302

if.then52:                                        ; preds = %land.lhs.true
  %34 = load i16, i16* %da, align 2, !dbg !3303
  %conv53 = zext i16 %34 to i32, !dbg !3303
  %or54 = or i32 %conv53, 64, !dbg !3303
  %conv55 = trunc i32 %or54 to i16, !dbg !3303
  store i16 %conv55, i16* %da, align 2, !dbg !3303
  br label %if.end56, !dbg !3304

if.end56:                                         ; preds = %if.then52, %land.lhs.true, %if.end45
  %35 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3305
  %36 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3306
  %base_reg57 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %36, i32 0, i32 8, !dbg !3307
  %37 = load i16, i16* %base_reg57, align 2, !dbg !3307
  %conv58 = zext i16 %37 to i32, !dbg !3306
  %add59 = add i32 %conv58, 1, !dbg !3308
  %conv60 = trunc i32 %add59 to i16, !dbg !3306
  %38 = load i16, i16* %da, align 2, !dbg !3309
  %call61 = call i32 @dibx000_write_word(%struct.dibx000_i2c_master* %35, i16 zeroext %conv60, i16 zeroext %38) #5, !dbg !3310
  %39 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3311
  %call62 = call i32 @dibx000_is_i2c_done(%struct.dibx000_i2c_master* %39) #5, !dbg !3313
  %cmp63 = icmp ne i32 %call62, 0, !dbg !3314
  br i1 %cmp63, label %if.then65, label %if.end66, !dbg !3315

if.then65:                                        ; preds = %if.end56
  store i32 -121, i32* %retval, align 4, !dbg !3316
  br label %return, !dbg !3316

if.end66:                                         ; preds = %if.end56
  %40 = load i16, i16* %len1, align 2, !dbg !3317
  %conv67 = zext i16 %40 to i32, !dbg !3317
  %41 = load i16, i16* %txlen, align 2, !dbg !3318
  %conv68 = zext i16 %41 to i32, !dbg !3318
  %sub69 = sub i32 %conv68, %conv67, !dbg !3318
  %conv70 = trunc i32 %sub69 to i16, !dbg !3318
  store i16 %conv70, i16* %txlen, align 2, !dbg !3318
  br label %while.cond, !dbg !3229, !llvm.loop !3319

while.end:                                        ; preds = %while.cond
  store i32 0, i32* %retval, align 4, !dbg !3321
  br label %return, !dbg !3321

return:                                           ; preds = %while.end, %if.then65
  %42 = load i32, i32* %retval, align 4, !dbg !3322
  ret i32 %42, !dbg !3322
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_is_i2c_done(%struct.dibx000_i2c_master* %mst) #0 !dbg !3323 {
entry:
  %retval = alloca i32, align 4
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %i = alloca i32, align 4
  %status = alloca i16, align 2
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !3326, metadata !DIExpression()), !dbg !3327
  call void @llvm.dbg.declare(metadata i32* %i, metadata !3328, metadata !DIExpression()), !dbg !3329
  store i32 100, i32* %i, align 4, !dbg !3329
  call void @llvm.dbg.declare(metadata i16* %status, metadata !3330, metadata !DIExpression()), !dbg !3331
  br label %while.cond, !dbg !3332

while.cond:                                       ; preds = %while.body, %entry
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3333
  %1 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3334
  %base_reg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %1, i32 0, i32 8, !dbg !3335
  %2 = load i16, i16* %base_reg, align 2, !dbg !3335
  %conv = zext i16 %2 to i32, !dbg !3334
  %add = add i32 %conv, 2, !dbg !3336
  %conv1 = trunc i32 %add to i16, !dbg !3334
  %call = call zeroext i16 @dibx000_read_word(%struct.dibx000_i2c_master* %0, i16 zeroext %conv1) #5, !dbg !3337
  store i16 %call, i16* %status, align 2, !dbg !3338
  %conv2 = zext i16 %call to i32, !dbg !3339
  %and = and i32 %conv2, 256, !dbg !3340
  %cmp = icmp eq i32 %and, 0, !dbg !3341
  br i1 %cmp, label %land.rhs, label %land.end, !dbg !3342

land.rhs:                                         ; preds = %while.cond
  %3 = load i32, i32* %i, align 4, !dbg !3343
  %dec = add i32 %3, -1, !dbg !3343
  store i32 %dec, i32* %i, align 4, !dbg !3343
  %cmp4 = icmp sgt i32 %dec, 0, !dbg !3344
  br label %land.end

land.end:                                         ; preds = %land.rhs, %while.cond
  %4 = phi i1 [ false, %while.cond ], [ %cmp4, %land.rhs ], !dbg !3345
  br i1 %4, label %while.body, label %while.end, !dbg !3332

while.body:                                       ; preds = %land.end
  br label %while.cond, !dbg !3332, !llvm.loop !3346

while.end:                                        ; preds = %land.end
  %5 = load i32, i32* %i, align 4, !dbg !3348
  %cmp6 = icmp eq i32 %5, 0, !dbg !3350
  br i1 %cmp6, label %if.then, label %if.end, !dbg !3351

if.then:                                          ; preds = %while.end
  store i32 -121, i32* %retval, align 4, !dbg !3352
  br label %return, !dbg !3352

if.end:                                           ; preds = %while.end
  %6 = load i16, i16* %status, align 2, !dbg !3353
  %conv8 = zext i16 %6 to i32, !dbg !3353
  %and9 = and i32 %conv8, 128, !dbg !3355
  %cmp10 = icmp eq i32 %and9, 0, !dbg !3356
  br i1 %cmp10, label %if.then12, label %if.end13, !dbg !3357

if.then12:                                        ; preds = %if.end
  store i32 -121, i32* %retval, align 4, !dbg !3358
  br label %return, !dbg !3358

if.end13:                                         ; preds = %if.end
  store i32 0, i32* %retval, align 4, !dbg !3359
  br label %return, !dbg !3359

return:                                           ; preds = %if.end13, %if.then12, %if.then
  %7 = load i32, i32* %retval, align 4, !dbg !3360
  ret i32 %7, !dbg !3360
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal zeroext i16 @dibx000_read_word(%struct.dibx000_i2c_master* %mst, i16 zeroext %reg) #0 !dbg !3361 {
entry:
  %retval = alloca i16, align 2
  %mst.addr = alloca %struct.dibx000_i2c_master*, align 8
  %reg.addr = alloca i16, align 2
  %ret = alloca i16, align 2
  store %struct.dibx000_i2c_master* %mst, %struct.dibx000_i2c_master** %mst.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst.addr, metadata !3364, metadata !DIExpression()), !dbg !3365
  store i16 %reg, i16* %reg.addr, align 2
  call void @llvm.dbg.declare(metadata i16* %reg.addr, metadata !3366, metadata !DIExpression()), !dbg !3367
  call void @llvm.dbg.declare(metadata i16* %ret, metadata !3368, metadata !DIExpression()), !dbg !3369
  %0 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3370
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %0, i32 0, i32 12, !dbg !3372
  %call = call i32 @mutex_lock_interruptible(%struct.mutex* %i2c_buffer_lock) #5, !dbg !3373
  %cmp = icmp slt i32 %call, 0, !dbg !3374
  br i1 %cmp, label %if.then, label %if.end3, !dbg !3375

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3376

do.body:                                          ; preds = %if.then
  %1 = load i32, i32* @debug, align 4, !dbg !3378
  %tobool = icmp ne i32 %1, 0, !dbg !3378
  br i1 %tobool, label %if.then1, label %if.end, !dbg !3381

if.then1:                                         ; preds = %do.body
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dibx000_read_word, i64 0, i64 0)) #6, !dbg !3378
  br label %if.end, !dbg !3378

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !3381

do.end:                                           ; preds = %if.end
  store i16 0, i16* %retval, align 2, !dbg !3382
  br label %return, !dbg !3382

if.end3:                                          ; preds = %entry
  %2 = load i16, i16* %reg.addr, align 2, !dbg !3383
  %conv = zext i16 %2 to i32, !dbg !3383
  %shr = ashr i32 %conv, 8, !dbg !3384
  %conv4 = trunc i32 %shr to i8, !dbg !3383
  %3 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3385
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %3, i32 0, i32 10, !dbg !3386
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer, i64 0, i64 0, !dbg !3385
  store i8 %conv4, i8* %arrayidx, align 8, !dbg !3387
  %4 = load i16, i16* %reg.addr, align 2, !dbg !3388
  %conv5 = zext i16 %4 to i32, !dbg !3388
  %and = and i32 %conv5, 255, !dbg !3389
  %conv6 = trunc i32 %and to i8, !dbg !3388
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3390
  %i2c_write_buffer7 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %5, i32 0, i32 10, !dbg !3391
  %arrayidx8 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer7, i64 0, i64 1, !dbg !3390
  store i8 %conv6, i8* %arrayidx8, align 1, !dbg !3392
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3393
  %msg = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 9, !dbg !3394
  %arraydecay = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg, i64 0, i64 0, !dbg !3395
  %7 = bitcast %struct.i2c_msg* %arraydecay to i8*, !dbg !3395
  call void @llvm.memset.p0i8.i64(i8* align 8 %7, i8 0, i64 32, i1 false), !dbg !3395
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3396
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 7, !dbg !3397
  %9 = load i8, i8* %i2c_addr, align 8, !dbg !3397
  %conv9 = zext i8 %9 to i16, !dbg !3396
  %10 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3398
  %msg10 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %10, i32 0, i32 9, !dbg !3399
  %arrayidx11 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg10, i64 0, i64 0, !dbg !3398
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx11, i32 0, i32 0, !dbg !3400
  store i16 %conv9, i16* %addr, align 8, !dbg !3401
  %11 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3402
  %msg12 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %11, i32 0, i32 9, !dbg !3403
  %arrayidx13 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg12, i64 0, i64 0, !dbg !3402
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx13, i32 0, i32 1, !dbg !3404
  store i16 0, i16* %flags, align 2, !dbg !3405
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3406
  %i2c_write_buffer14 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %12, i32 0, i32 10, !dbg !3407
  %arraydecay15 = getelementptr inbounds [8 x i8], [8 x i8]* %i2c_write_buffer14, i64 0, i64 0, !dbg !3406
  %13 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3408
  %msg16 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %13, i32 0, i32 9, !dbg !3409
  %arrayidx17 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg16, i64 0, i64 0, !dbg !3408
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx17, i32 0, i32 3, !dbg !3410
  store i8* %arraydecay15, i8** %buf, align 8, !dbg !3411
  %14 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3412
  %msg18 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %14, i32 0, i32 9, !dbg !3413
  %arrayidx19 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg18, i64 0, i64 0, !dbg !3412
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx19, i32 0, i32 2, !dbg !3414
  store i16 2, i16* %len, align 4, !dbg !3415
  %15 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3416
  %i2c_addr20 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %15, i32 0, i32 7, !dbg !3417
  %16 = load i8, i8* %i2c_addr20, align 8, !dbg !3417
  %conv21 = zext i8 %16 to i16, !dbg !3416
  %17 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3418
  %msg22 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %17, i32 0, i32 9, !dbg !3419
  %arrayidx23 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg22, i64 0, i64 1, !dbg !3418
  %addr24 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx23, i32 0, i32 0, !dbg !3420
  store i16 %conv21, i16* %addr24, align 8, !dbg !3421
  %18 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3422
  %msg25 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %18, i32 0, i32 9, !dbg !3423
  %arrayidx26 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg25, i64 0, i64 1, !dbg !3422
  %flags27 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx26, i32 0, i32 1, !dbg !3424
  store i16 1, i16* %flags27, align 2, !dbg !3425
  %19 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3426
  %i2c_read_buffer = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %19, i32 0, i32 11, !dbg !3427
  %arraydecay28 = getelementptr inbounds [2 x i8], [2 x i8]* %i2c_read_buffer, i64 0, i64 0, !dbg !3426
  %20 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3428
  %msg29 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %20, i32 0, i32 9, !dbg !3429
  %arrayidx30 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg29, i64 0, i64 1, !dbg !3428
  %buf31 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx30, i32 0, i32 3, !dbg !3430
  store i8* %arraydecay28, i8** %buf31, align 8, !dbg !3431
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3432
  %msg32 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %21, i32 0, i32 9, !dbg !3433
  %arrayidx33 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg32, i64 0, i64 1, !dbg !3432
  %len34 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx33, i32 0, i32 2, !dbg !3434
  store i16 2, i16* %len34, align 4, !dbg !3435
  %22 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3436
  %i2c_adap = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %22, i32 0, i32 6, !dbg !3438
  %23 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap, align 8, !dbg !3438
  %24 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3439
  %msg35 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %24, i32 0, i32 9, !dbg !3440
  %arraydecay36 = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg35, i64 0, i64 0, !dbg !3439
  %call37 = call i32 @i2c_transfer(%struct.i2c_adapter* %23, %struct.i2c_msg* %arraydecay36, i32 2) #5, !dbg !3441
  %cmp38 = icmp ne i32 %call37, 2, !dbg !3442
  br i1 %cmp38, label %if.then40, label %if.end48, !dbg !3443

if.then40:                                        ; preds = %if.end3
  br label %do.body41, !dbg !3444

do.body41:                                        ; preds = %if.then40
  %25 = load i32, i32* @debug, align 4, !dbg !3445
  %tobool42 = icmp ne i32 %25, 0, !dbg !3445
  br i1 %tobool42, label %if.then43, label %if.end46, !dbg !3448

if.then43:                                        ; preds = %do.body41
  %26 = load i16, i16* %reg.addr, align 2, !dbg !3445
  %conv44 = zext i16 %26 to i32, !dbg !3445
  %call45 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.11, i64 0, i64 0), i8* getelementptr inbounds ([18 x i8], [18 x i8]* @__func__.dibx000_read_word, i64 0, i64 0), i32 %conv44) #6, !dbg !3445
  br label %if.end46, !dbg !3445

if.end46:                                         ; preds = %if.then43, %do.body41
  br label %do.end47, !dbg !3448

do.end47:                                         ; preds = %if.end46
  br label %if.end48, !dbg !3448

if.end48:                                         ; preds = %do.end47, %if.end3
  %27 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3449
  %i2c_read_buffer49 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %27, i32 0, i32 11, !dbg !3450
  %arrayidx50 = getelementptr [2 x i8], [2 x i8]* %i2c_read_buffer49, i64 0, i64 0, !dbg !3449
  %28 = load i8, i8* %arrayidx50, align 8, !dbg !3449
  %conv51 = zext i8 %28 to i32, !dbg !3449
  %shl = shl i32 %conv51, 8, !dbg !3451
  %29 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3452
  %i2c_read_buffer52 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %29, i32 0, i32 11, !dbg !3453
  %arrayidx53 = getelementptr [2 x i8], [2 x i8]* %i2c_read_buffer52, i64 0, i64 1, !dbg !3452
  %30 = load i8, i8* %arrayidx53, align 1, !dbg !3452
  %conv54 = zext i8 %30 to i32, !dbg !3452
  %or = or i32 %shl, %conv54, !dbg !3454
  %conv55 = trunc i32 %or to i16, !dbg !3455
  store i16 %conv55, i16* %ret, align 2, !dbg !3456
  %31 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst.addr, align 8, !dbg !3457
  %i2c_buffer_lock56 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %31, i32 0, i32 12, !dbg !3458
  call void @mutex_unlock(%struct.mutex* %i2c_buffer_lock56) #5, !dbg !3459
  %32 = load i16, i16* %ret, align 2, !dbg !3460
  store i16 %32, i16* %retval, align 2, !dbg !3461
  br label %return, !dbg !3461

return:                                           ; preds = %if.end48, %do.end
  %33 = load i16, i16* %retval, align 2, !dbg !3462
  ret i16 %33, !dbg !3462
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_master_xfer_gpio34(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg, i32 %num) #0 !dbg !3463 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %mst = alloca %struct.dibx000_i2c_master*, align 8
  %msg_index = alloca i32, align 4
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3464, metadata !DIExpression()), !dbg !3465
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3466, metadata !DIExpression()), !dbg !3467
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !3468, metadata !DIExpression()), !dbg !3469
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst, metadata !3470, metadata !DIExpression()), !dbg !3471
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3472
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #5, !dbg !3473
  %1 = bitcast i8* %call to %struct.dibx000_i2c_master*, !dbg !3473
  store %struct.dibx000_i2c_master* %1, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3471
  call void @llvm.dbg.declare(metadata i32* %msg_index, metadata !3474, metadata !DIExpression()), !dbg !3475
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3476, metadata !DIExpression()), !dbg !3477
  store i32 0, i32* %ret, align 4, !dbg !3477
  %2 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3478
  %call1 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %2, i32 2) #5, !dbg !3479
  store i32 0, i32* %msg_index, align 4, !dbg !3480
  br label %for.cond, !dbg !3482

for.cond:                                         ; preds = %for.inc, %entry
  %3 = load i32, i32* %msg_index, align 4, !dbg !3483
  %4 = load i32, i32* %num.addr, align 4, !dbg !3485
  %cmp = icmp slt i32 %3, %4, !dbg !3486
  br i1 %cmp, label %for.body, label %for.end, !dbg !3487

for.body:                                         ; preds = %for.cond
  %5 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3488
  %6 = load i32, i32* %msg_index, align 4, !dbg !3491
  %idxprom = sext i32 %6 to i64, !dbg !3488
  %arrayidx = getelementptr %struct.i2c_msg, %struct.i2c_msg* %5, i64 %idxprom, !dbg !3488
  %flags = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx, i32 0, i32 1, !dbg !3492
  %7 = load i16, i16* %flags, align 2, !dbg !3492
  %conv = zext i16 %7 to i32, !dbg !3488
  %and = and i32 %conv, 1, !dbg !3493
  %tobool = icmp ne i32 %and, 0, !dbg !3493
  br i1 %tobool, label %if.then, label %if.else, !dbg !3494

if.then:                                          ; preds = %for.body
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3495
  %9 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3497
  %10 = load i32, i32* %msg_index, align 4, !dbg !3498
  %idxprom2 = sext i32 %10 to i64, !dbg !3497
  %arrayidx3 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %9, i64 %idxprom2, !dbg !3497
  %call4 = call i32 @dibx000_master_i2c_read(%struct.dibx000_i2c_master* %8, %struct.i2c_msg* %arrayidx3) #5, !dbg !3499
  store i32 %call4, i32* %ret, align 4, !dbg !3500
  %11 = load i32, i32* %ret, align 4, !dbg !3501
  %cmp5 = icmp ne i32 %11, 0, !dbg !3503
  br i1 %cmp5, label %if.then7, label %if.end, !dbg !3504

if.then7:                                         ; preds = %if.then
  store i32 0, i32* %retval, align 4, !dbg !3505
  br label %return, !dbg !3505

if.end:                                           ; preds = %if.then
  br label %if.end15, !dbg !3506

if.else:                                          ; preds = %for.body
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3507
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3509
  %14 = load i32, i32* %msg_index, align 4, !dbg !3510
  %idxprom8 = sext i32 %14 to i64, !dbg !3509
  %arrayidx9 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %13, i64 %idxprom8, !dbg !3509
  %call10 = call i32 @dibx000_master_i2c_write(%struct.dibx000_i2c_master* %12, %struct.i2c_msg* %arrayidx9, i8 zeroext 1) #5, !dbg !3511
  store i32 %call10, i32* %ret, align 4, !dbg !3512
  %15 = load i32, i32* %ret, align 4, !dbg !3513
  %cmp11 = icmp ne i32 %15, 0, !dbg !3515
  br i1 %cmp11, label %if.then13, label %if.end14, !dbg !3516

if.then13:                                        ; preds = %if.else
  store i32 0, i32* %retval, align 4, !dbg !3517
  br label %return, !dbg !3517

if.end14:                                         ; preds = %if.else
  br label %if.end15

if.end15:                                         ; preds = %if.end14, %if.end
  br label %for.inc, !dbg !3518

for.inc:                                          ; preds = %if.end15
  %16 = load i32, i32* %msg_index, align 4, !dbg !3519
  %inc = add i32 %16, 1, !dbg !3519
  store i32 %inc, i32* %msg_index, align 4, !dbg !3519
  br label %for.cond, !dbg !3520, !llvm.loop !3521

for.end:                                          ; preds = %for.cond
  %17 = load i32, i32* %num.addr, align 4, !dbg !3523
  store i32 %17, i32* %retval, align 4, !dbg !3524
  br label %return, !dbg !3524

return:                                           ; preds = %for.end, %if.then13, %if.then7
  %18 = load i32, i32* %retval, align 4, !dbg !3525
  ret i32 %18, !dbg !3525
}

; Function Attrs: noinline noredzone nounwind optnone sspstrong
define internal i32 @dibx000_i2c_gated_gpio67_xfer(%struct.i2c_adapter* %i2c_adap, %struct.i2c_msg* %msg, i32 %num) #0 !dbg !3526 {
entry:
  %retval = alloca i32, align 4
  %i2c_adap.addr = alloca %struct.i2c_adapter*, align 8
  %msg.addr = alloca %struct.i2c_msg*, align 8
  %num.addr = alloca i32, align 4
  %mst = alloca %struct.dibx000_i2c_master*, align 8
  %ret = alloca i32, align 4
  store %struct.i2c_adapter* %i2c_adap, %struct.i2c_adapter** %i2c_adap.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_adapter** %i2c_adap.addr, metadata !3527, metadata !DIExpression()), !dbg !3528
  store %struct.i2c_msg* %msg, %struct.i2c_msg** %msg.addr, align 8
  call void @llvm.dbg.declare(metadata %struct.i2c_msg** %msg.addr, metadata !3529, metadata !DIExpression()), !dbg !3530
  store i32 %num, i32* %num.addr, align 4
  call void @llvm.dbg.declare(metadata i32* %num.addr, metadata !3531, metadata !DIExpression()), !dbg !3532
  call void @llvm.dbg.declare(metadata %struct.dibx000_i2c_master** %mst, metadata !3533, metadata !DIExpression()), !dbg !3534
  %0 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap.addr, align 8, !dbg !3535
  %call = call i8* @i2c_get_adapdata(%struct.i2c_adapter* %0) #5, !dbg !3536
  %1 = bitcast i8* %call to %struct.dibx000_i2c_master*, !dbg !3536
  store %struct.dibx000_i2c_master* %1, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3534
  call void @llvm.dbg.declare(metadata i32* %ret, metadata !3537, metadata !DIExpression()), !dbg !3538
  %2 = load i32, i32* %num.addr, align 4, !dbg !3539
  %cmp = icmp sgt i32 %2, 32, !dbg !3541
  br i1 %cmp, label %if.then, label %if.end3, !dbg !3542

if.then:                                          ; preds = %entry
  br label %do.body, !dbg !3543

do.body:                                          ; preds = %if.then
  %3 = load i32, i32* @debug, align 4, !dbg !3545
  %tobool = icmp ne i32 %3, 0, !dbg !3545
  br i1 %tobool, label %if.then1, label %if.end, !dbg !3548

if.then1:                                         ; preds = %do.body
  %4 = load i32, i32* %num.addr, align 4, !dbg !3545
  %call2 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([85 x i8], [85 x i8]* @.str.10, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.dibx000_i2c_gated_gpio67_xfer, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.dibx000_i2c_gated_gpio67_xfer, i64 0, i64 0), i32 %4) #6, !dbg !3545
  br label %if.end, !dbg !3545

if.end:                                           ; preds = %if.then1, %do.body
  br label %do.end, !dbg !3548

do.end:                                           ; preds = %if.end
  store i32 -12, i32* %retval, align 4, !dbg !3549
  br label %return, !dbg !3549

if.end3:                                          ; preds = %entry
  %5 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3550
  %call4 = call i32 @dibx000_i2c_select_interface(%struct.dibx000_i2c_master* %5, i32 3) #5, !dbg !3551
  %6 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3552
  %i2c_buffer_lock = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %6, i32 0, i32 12, !dbg !3554
  %call5 = call i32 @mutex_lock_interruptible(%struct.mutex* %i2c_buffer_lock) #5, !dbg !3555
  %cmp6 = icmp slt i32 %call5, 0, !dbg !3556
  br i1 %cmp6, label %if.then7, label %if.end14, !dbg !3557

if.then7:                                         ; preds = %if.end3
  br label %do.body8, !dbg !3558

do.body8:                                         ; preds = %if.then7
  %7 = load i32, i32* @debug, align 4, !dbg !3560
  %tobool9 = icmp ne i32 %7, 0, !dbg !3560
  br i1 %tobool9, label %if.then10, label %if.end12, !dbg !3563

if.then10:                                        ; preds = %do.body8
  %call11 = call i32 (i8*, ...) @printk(i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([30 x i8], [30 x i8]* @__func__.dibx000_i2c_gated_gpio67_xfer, i64 0, i64 0)) #6, !dbg !3560
  br label %if.end12, !dbg !3560

if.end12:                                         ; preds = %if.then10, %do.body8
  br label %do.end13, !dbg !3563

do.end13:                                         ; preds = %if.end12
  store i32 -22, i32* %retval, align 4, !dbg !3564
  br label %return, !dbg !3564

if.end14:                                         ; preds = %if.end3
  %8 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3565
  %msg15 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %8, i32 0, i32 9, !dbg !3566
  %arraydecay = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg15, i64 0, i64 0, !dbg !3567
  %9 = bitcast %struct.i2c_msg* %arraydecay to i8*, !dbg !3567
  %10 = load i32, i32* %num.addr, align 4, !dbg !3568
  %add = add i32 2, %10, !dbg !3569
  %conv = sext i32 %add to i64, !dbg !3570
  %mul = mul i64 16, %conv, !dbg !3571
  call void @llvm.memset.p0i8.i64(i8* align 8 %9, i8 0, i64 %mul, i1 false), !dbg !3567
  %11 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3572
  %12 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3573
  %i2c_write_buffer = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %12, i32 0, i32 10, !dbg !3574
  %arrayidx = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer, i64 0, i64 0, !dbg !3573
  %13 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3575
  %arrayidx16 = getelementptr %struct.i2c_msg, %struct.i2c_msg* %13, i64 0, !dbg !3575
  %addr = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx16, i32 0, i32 0, !dbg !3576
  %14 = load i16, i16* %addr, align 8, !dbg !3576
  %conv17 = trunc i16 %14 to i8, !dbg !3575
  %call18 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %11, i8* %arrayidx, i8 zeroext %conv17, i32 1) #5, !dbg !3577
  %15 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3578
  %i2c_addr = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %15, i32 0, i32 7, !dbg !3579
  %16 = load i8, i8* %i2c_addr, align 8, !dbg !3579
  %conv19 = zext i8 %16 to i16, !dbg !3578
  %17 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3580
  %msg20 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %17, i32 0, i32 9, !dbg !3581
  %arrayidx21 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg20, i64 0, i64 0, !dbg !3580
  %addr22 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx21, i32 0, i32 0, !dbg !3582
  store i16 %conv19, i16* %addr22, align 8, !dbg !3583
  %18 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3584
  %i2c_write_buffer23 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %18, i32 0, i32 10, !dbg !3585
  %arrayidx24 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer23, i64 0, i64 0, !dbg !3584
  %19 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3586
  %msg25 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %19, i32 0, i32 9, !dbg !3587
  %arrayidx26 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg25, i64 0, i64 0, !dbg !3586
  %buf = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx26, i32 0, i32 3, !dbg !3588
  store i8* %arrayidx24, i8** %buf, align 8, !dbg !3589
  %20 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3590
  %msg27 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %20, i32 0, i32 9, !dbg !3591
  %arrayidx28 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg27, i64 0, i64 0, !dbg !3590
  %len = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx28, i32 0, i32 2, !dbg !3592
  store i16 4, i16* %len, align 4, !dbg !3593
  %21 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3594
  %msg29 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %21, i32 0, i32 9, !dbg !3595
  %arrayidx30 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg29, i64 0, i64 1, !dbg !3594
  %22 = bitcast %struct.i2c_msg* %arrayidx30 to i8*, !dbg !3596
  %23 = load %struct.i2c_msg*, %struct.i2c_msg** %msg.addr, align 8, !dbg !3597
  %24 = bitcast %struct.i2c_msg* %23 to i8*, !dbg !3596
  %25 = load i32, i32* %num.addr, align 4, !dbg !3598
  %conv31 = sext i32 %25 to i64, !dbg !3598
  %mul32 = mul i64 16, %conv31, !dbg !3599
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %22, i8* align 8 %24, i64 %mul32, i1 false), !dbg !3596
  %26 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3600
  %27 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3601
  %i2c_write_buffer33 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %27, i32 0, i32 10, !dbg !3602
  %arrayidx34 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer33, i64 0, i64 4, !dbg !3601
  %call35 = call i32 @dibx000_i2c_gate_ctrl(%struct.dibx000_i2c_master* %26, i8* %arrayidx34, i8 zeroext 0, i32 0) #5, !dbg !3603
  %28 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3604
  %i2c_addr36 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %28, i32 0, i32 7, !dbg !3605
  %29 = load i8, i8* %i2c_addr36, align 8, !dbg !3605
  %conv37 = zext i8 %29 to i16, !dbg !3604
  %30 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3606
  %msg38 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %30, i32 0, i32 9, !dbg !3607
  %31 = load i32, i32* %num.addr, align 4, !dbg !3608
  %add39 = add i32 %31, 1, !dbg !3609
  %idxprom = sext i32 %add39 to i64, !dbg !3606
  %arrayidx40 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg38, i64 0, i64 %idxprom, !dbg !3606
  %addr41 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx40, i32 0, i32 0, !dbg !3610
  store i16 %conv37, i16* %addr41, align 8, !dbg !3611
  %32 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3612
  %i2c_write_buffer42 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %32, i32 0, i32 10, !dbg !3613
  %arrayidx43 = getelementptr [8 x i8], [8 x i8]* %i2c_write_buffer42, i64 0, i64 4, !dbg !3612
  %33 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3614
  %msg44 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %33, i32 0, i32 9, !dbg !3615
  %34 = load i32, i32* %num.addr, align 4, !dbg !3616
  %add45 = add i32 %34, 1, !dbg !3617
  %idxprom46 = sext i32 %add45 to i64, !dbg !3614
  %arrayidx47 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg44, i64 0, i64 %idxprom46, !dbg !3614
  %buf48 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx47, i32 0, i32 3, !dbg !3618
  store i8* %arrayidx43, i8** %buf48, align 8, !dbg !3619
  %35 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3620
  %msg49 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %35, i32 0, i32 9, !dbg !3621
  %36 = load i32, i32* %num.addr, align 4, !dbg !3622
  %add50 = add i32 %36, 1, !dbg !3623
  %idxprom51 = sext i32 %add50 to i64, !dbg !3620
  %arrayidx52 = getelementptr [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg49, i64 0, i64 %idxprom51, !dbg !3620
  %len53 = getelementptr inbounds %struct.i2c_msg, %struct.i2c_msg* %arrayidx52, i32 0, i32 2, !dbg !3624
  store i16 4, i16* %len53, align 4, !dbg !3625
  %37 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3626
  %i2c_adap54 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %37, i32 0, i32 6, !dbg !3627
  %38 = load %struct.i2c_adapter*, %struct.i2c_adapter** %i2c_adap54, align 8, !dbg !3627
  %39 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3628
  %msg55 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %39, i32 0, i32 9, !dbg !3629
  %arraydecay56 = getelementptr inbounds [34 x %struct.i2c_msg], [34 x %struct.i2c_msg]* %msg55, i64 0, i64 0, !dbg !3628
  %40 = load i32, i32* %num.addr, align 4, !dbg !3630
  %add57 = add i32 2, %40, !dbg !3631
  %call58 = call i32 @i2c_transfer(%struct.i2c_adapter* %38, %struct.i2c_msg* %arraydecay56, i32 %add57) #5, !dbg !3632
  %41 = load i32, i32* %num.addr, align 4, !dbg !3633
  %add59 = add i32 2, %41, !dbg !3634
  %cmp60 = icmp eq i32 %call58, %add59, !dbg !3635
  br i1 %cmp60, label %cond.true, label %cond.false, !dbg !3632

cond.true:                                        ; preds = %if.end14
  %42 = load i32, i32* %num.addr, align 4, !dbg !3636
  br label %cond.end, !dbg !3632

cond.false:                                       ; preds = %if.end14
  br label %cond.end, !dbg !3632

cond.end:                                         ; preds = %cond.false, %cond.true
  %cond = phi i32 [ %42, %cond.true ], [ -5, %cond.false ], !dbg !3632
  store i32 %cond, i32* %ret, align 4, !dbg !3637
  %43 = load %struct.dibx000_i2c_master*, %struct.dibx000_i2c_master** %mst, align 8, !dbg !3638
  %i2c_buffer_lock62 = getelementptr inbounds %struct.dibx000_i2c_master, %struct.dibx000_i2c_master* %43, i32 0, i32 12, !dbg !3639
  call void @mutex_unlock(%struct.mutex* %i2c_buffer_lock62) #5, !dbg !3640
  %44 = load i32, i32* %ret, align 4, !dbg !3641
  store i32 %44, i32* %retval, align 4, !dbg !3642
  br label %return, !dbg !3642

return:                                           ; preds = %cond.end, %do.end13, %do.end
  %45 = load i32, i32* %retval, align 4, !dbg !3643
  ret i32 %45, !dbg !3643
}

attributes #0 = { noinline noredzone nounwind optnone sspstrong "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="true" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind readnone speculatable willreturn }
attributes #2 = { cold noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noredzone "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="none" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "null-pointer-is-valid"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,-3dnow,-3dnowa,-aes,-avx,-avx2,-avx512bf16,-avx512bitalg,-avx512bw,-avx512cd,-avx512dq,-avx512er,-avx512f,-avx512ifma,-avx512pf,-avx512vbmi,-avx512vbmi2,-avx512vl,-avx512vnni,-avx512vp2intersect,-avx512vpopcntdq,-f16c,-fma,-fma4,-gfni,-mmx,-pclmul,-sha,-sse,-sse2,-sse3,-sse4.1,-sse4.2,-sse4a,-ssse3,-vaes,-vpclmulqdq,-x87,-xop,-xsave,-xsaveopt" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #4 = { argmemonly nounwind willreturn }
attributes #5 = { noredzone }
attributes #6 = { cold noredzone }

!llvm.dbg.cu = !{!2}
!llvm.module.flags = !{!2379, !2380, !2381, !2382}
!llvm.ident = !{!2383}

!0 = !DIGlobalVariableExpression(var: !1, expr: !DIExpression())
!1 = distinct !DIGlobalVariable(name: "__param_str_debug", scope: !2, file: !3, line: 11, type: !2376, isLocal: true, isDefinition: true)
!2 = distinct !DICompileUnit(language: DW_LANG_C89, file: !3, producer: "clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)", isOptimized: false, runtimeVersion: 0, emissionKind: FullDebug, enums: !4, retainedTypes: !71, globals: !81, splitDebugInlining: false, nameTableKind: None)
!3 = !DIFile(filename: "drivers/media/dvb-frontends/dibx000_common.c", directory: "/home/lizy2001/genbc/linux")
!4 = !{!5, !11, !17, !23, !29, !36, !44, !50, !64}
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
!64 = !DICompositeType(tag: DW_TAG_enumeration_type, name: "dibx000_i2c_interface", file: !65, line: 5, baseType: !7, size: 32, elements: !66)
!65 = !DIFile(filename: "drivers/media/dvb-frontends/dibx000_common.h", directory: "/home/lizy2001/genbc/linux")
!66 = !{!67, !68, !69, !70}
!67 = !DIEnumerator(name: "DIBX000_I2C_INTERFACE_TUNER", value: 0, isUnsigned: true)
!68 = !DIEnumerator(name: "DIBX000_I2C_INTERFACE_GPIO_1_2", value: 1, isUnsigned: true)
!69 = !DIEnumerator(name: "DIBX000_I2C_INTERFACE_GPIO_3_4", value: 2, isUnsigned: true)
!70 = !DIEnumerator(name: "DIBX000_I2C_INTERFACE_GPIO_6_7", value: 3, isUnsigned: true)
!71 = !{!72, !77, !78}
!72 = !DIDerivedType(tag: DW_TAG_typedef, name: "u16", file: !73, line: 19, baseType: !74)
!73 = !DIFile(filename: "./include/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!74 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u16", file: !75, line: 24, baseType: !76)
!75 = !DIFile(filename: "./include/uapi/asm-generic/int-ll64.h", directory: "/home/lizy2001/genbc/linux")
!76 = !DIBasicType(name: "unsigned short", size: 16, encoding: DW_ATE_unsigned)
!77 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: null, size: 64)
!78 = !DIDerivedType(tag: DW_TAG_typedef, name: "u8", file: !73, line: 17, baseType: !79)
!79 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u8", file: !75, line: 21, baseType: !80)
!80 = !DIBasicType(name: "unsigned char", size: 8, encoding: DW_ATE_unsigned_char)
!81 = !{!82, !146, !151, !156, !2346, !2351, !2356, !2361, !2366, !0, !2368, !2370, !2372, !2374}
!82 = !DIGlobalVariableExpression(var: !83, expr: !DIExpression())
!83 = distinct !DIGlobalVariable(name: "__param_debug", scope: !2, file: !3, line: 11, type: !84, isLocal: true, isDefinition: true, align: 64)
!84 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !85)
!85 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param", file: !86, line: 69, size: 320, elements: !87)
!86 = !DIFile(filename: "./include/linux/moduleparam.h", directory: "/home/lizy2001/genbc/linux")
!87 = !{!88, !92, !96, !117, !119, !123, !124}
!88 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !85, file: !86, line: 70, baseType: !89, size: 64)
!89 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !90, size: 64)
!90 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !91)
!91 = !DIBasicType(name: "char", size: 8, encoding: DW_ATE_signed_char)
!92 = !DIDerivedType(tag: DW_TAG_member, name: "mod", scope: !85, file: !86, line: 71, baseType: !93, size: 64, offset: 64)
!93 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !94, size: 64)
!94 = !DICompositeType(tag: DW_TAG_structure_type, name: "module", file: !95, line: 76, flags: DIFlagFwdDecl)
!95 = !DIFile(filename: "./arch/x86/include/asm/alternative.h", directory: "/home/lizy2001/genbc/linux")
!96 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !85, file: !86, line: 72, baseType: !97, size: 64, offset: 128)
!97 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !98, size: 64)
!98 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !99)
!99 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_param_ops", file: !86, line: 47, size: 256, elements: !100)
!100 = !{!101, !102, !108, !113}
!101 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !99, file: !86, line: 49, baseType: !7, size: 32)
!102 = !DIDerivedType(tag: DW_TAG_member, name: "set", scope: !99, file: !86, line: 51, baseType: !103, size: 64, offset: 64)
!103 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !104, size: 64)
!104 = !DISubroutineType(types: !105)
!105 = !{!106, !89, !107}
!106 = !DIBasicType(name: "int", size: 32, encoding: DW_ATE_signed)
!107 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !84, size: 64)
!108 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !99, file: !86, line: 53, baseType: !109, size: 64, offset: 128)
!109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !110, size: 64)
!110 = !DISubroutineType(types: !111)
!111 = !{!106, !112, !107}
!112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !91, size: 64)
!113 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !99, file: !86, line: 55, baseType: !114, size: 64, offset: 192)
!114 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !115, size: 64)
!115 = !DISubroutineType(types: !116)
!116 = !{null, !77}
!117 = !DIDerivedType(tag: DW_TAG_member, name: "perm", scope: !85, file: !86, line: 73, baseType: !118, size: 16, offset: 192)
!118 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !72)
!119 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !85, file: !86, line: 74, baseType: !120, size: 8, offset: 208)
!120 = !DIDerivedType(tag: DW_TAG_typedef, name: "s8", file: !73, line: 16, baseType: !121)
!121 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s8", file: !75, line: 20, baseType: !122)
!122 = !DIBasicType(name: "signed char", size: 8, encoding: DW_ATE_signed_char)
!123 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !85, file: !86, line: 75, baseType: !78, size: 8, offset: 216)
!124 = !DIDerivedType(tag: DW_TAG_member, scope: !85, file: !86, line: 76, baseType: !125, size: 64, offset: 256)
!125 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !85, file: !86, line: 76, size: 64, elements: !126)
!126 = !{!127, !128, !135}
!127 = !DIDerivedType(tag: DW_TAG_member, name: "arg", scope: !125, file: !86, line: 77, baseType: !77, size: 64)
!128 = !DIDerivedType(tag: DW_TAG_member, name: "str", scope: !125, file: !86, line: 78, baseType: !129, size: 64)
!129 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !130, size: 64)
!130 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !131)
!131 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_string", file: !86, line: 86, size: 128, elements: !132)
!132 = !{!133, !134}
!133 = !DIDerivedType(tag: DW_TAG_member, name: "maxlen", scope: !131, file: !86, line: 87, baseType: !7, size: 32)
!134 = !DIDerivedType(tag: DW_TAG_member, name: "string", scope: !131, file: !86, line: 88, baseType: !112, size: 64, offset: 64)
!135 = !DIDerivedType(tag: DW_TAG_member, name: "arr", scope: !125, file: !86, line: 79, baseType: !136, size: 64)
!136 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !137, size: 64)
!137 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !138)
!138 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kparam_array", file: !86, line: 92, size: 256, elements: !139)
!139 = !{!140, !141, !142, !144, !145}
!140 = !DIDerivedType(tag: DW_TAG_member, name: "max", scope: !138, file: !86, line: 94, baseType: !7, size: 32)
!141 = !DIDerivedType(tag: DW_TAG_member, name: "elemsize", scope: !138, file: !86, line: 95, baseType: !7, size: 32, offset: 32)
!142 = !DIDerivedType(tag: DW_TAG_member, name: "num", scope: !138, file: !86, line: 96, baseType: !143, size: 64, offset: 64)
!143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !7, size: 64)
!144 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !138, file: !86, line: 97, baseType: !97, size: 64, offset: 128)
!145 = !DIDerivedType(tag: DW_TAG_member, name: "elem", scope: !138, file: !86, line: 98, baseType: !77, size: 64, offset: 192)
!146 = !DIGlobalVariableExpression(var: !147, expr: !DIExpression())
!147 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debugtype171", scope: !2, file: !3, line: 11, type: !148, isLocal: true, isDefinition: true, align: 8)
!148 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 272, elements: !149)
!149 = !{!150}
!150 = !DISubrange(count: 34)
!151 = !DIGlobalVariableExpression(var: !152, expr: !DIExpression())
!152 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_debug172", scope: !2, file: !3, line: 12, type: !153, isLocal: true, isDefinition: true, align: 8)
!153 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 456, elements: !154)
!154 = !{!155}
!155 = !DISubrange(count: 57)
!156 = !DIGlobalVariableExpression(var: !157, expr: !DIExpression())
!157 = distinct !DIGlobalVariable(name: "__key", scope: !158, file: !3, line: 442, type: !1876, isLocal: true, isDefinition: true)
!158 = distinct !DISubprogram(name: "dibx000_init_i2c_master", scope: !3, file: !3, line: 437, type: !159, scopeLine: 439, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !238)
!159 = !DISubroutineType(types: !160)
!160 = !{!106, !161, !72, !181, !78}
!161 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !162, size: 64)
!162 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dibx000_i2c_master", file: !65, line: 12, size: 35072, elements: !163)
!163 = !{!164, !165, !166, !2333, !2334, !2335, !2336, !2337, !2338, !2339, !2341, !2343, !2345}
!164 = !DIDerivedType(tag: DW_TAG_member, name: "device_rev", scope: !162, file: !65, line: 18, baseType: !72, size: 16)
!165 = !DIDerivedType(tag: DW_TAG_member, name: "selected_interface", scope: !162, file: !65, line: 20, baseType: !64, size: 32, offset: 32)
!166 = !DIDerivedType(tag: DW_TAG_member, name: "gated_tuner_i2c_adap", scope: !162, file: !65, line: 23, baseType: !167, size: 7552, offset: 64)
!167 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter", file: !168, line: 695, size: 7552, elements: !169)
!168 = !DIFile(filename: "./include/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!169 = !{!170, !171, !172, !210, !211, !225, !1393, !1394, !1395, !1396, !2280, !2281, !2282, !2286, !2287, !2288, !2289, !2321, !2332}
!170 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !167, file: !168, line: 696, baseType: !93, size: 64)
!171 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !167, file: !168, line: 697, baseType: !7, size: 32, offset: 64)
!172 = !DIDerivedType(tag: DW_TAG_member, name: "algo", scope: !167, file: !168, line: 698, baseType: !173, size: 64, offset: 128)
!173 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !174, size: 64)
!174 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !175)
!175 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_algorithm", file: !168, line: 519, size: 320, elements: !176)
!176 = !{!177, !191, !192, !203, !204}
!177 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer", scope: !175, file: !168, line: 529, baseType: !178, size: 64)
!178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !179, size: 64)
!179 = !DISubroutineType(types: !180)
!180 = !{!106, !181, !182, !106}
!181 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !167, size: 64)
!182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !183, size: 64)
!183 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_msg", file: !184, line: 69, size: 128, elements: !185)
!184 = !DIFile(filename: "./include/uapi/linux/i2c.h", directory: "/home/lizy2001/genbc/linux")
!185 = !{!186, !187, !188, !189}
!186 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !183, file: !184, line: 70, baseType: !74, size: 16)
!187 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !183, file: !184, line: 71, baseType: !74, size: 16, offset: 16)
!188 = !DIDerivedType(tag: DW_TAG_member, name: "len", scope: !183, file: !184, line: 84, baseType: !74, size: 16, offset: 32)
!189 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !183, file: !184, line: 85, baseType: !190, size: 64, offset: 64)
!190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !79, size: 64)
!191 = !DIDerivedType(tag: DW_TAG_member, name: "master_xfer_atomic", scope: !175, file: !168, line: 531, baseType: !178, size: 64, offset: 64)
!192 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer", scope: !175, file: !168, line: 533, baseType: !193, size: 64, offset: 128)
!193 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !194, size: 64)
!194 = !DISubroutineType(types: !195)
!195 = !{!106, !181, !72, !76, !91, !78, !106, !196}
!196 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !197, size: 64)
!197 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "i2c_smbus_data", file: !184, line: 135, size: 272, elements: !198)
!198 = !{!199, !200, !201}
!199 = !DIDerivedType(tag: DW_TAG_member, name: "byte", scope: !197, file: !184, line: 136, baseType: !79, size: 8)
!200 = !DIDerivedType(tag: DW_TAG_member, name: "word", scope: !197, file: !184, line: 137, baseType: !74, size: 16)
!201 = !DIDerivedType(tag: DW_TAG_member, name: "block", scope: !197, file: !184, line: 138, baseType: !202, size: 272)
!202 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 272, elements: !149)
!203 = !DIDerivedType(tag: DW_TAG_member, name: "smbus_xfer_atomic", scope: !175, file: !168, line: 536, baseType: !193, size: 64, offset: 192)
!204 = !DIDerivedType(tag: DW_TAG_member, name: "functionality", scope: !175, file: !168, line: 541, baseType: !205, size: 64, offset: 256)
!205 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !206, size: 64)
!206 = !DISubroutineType(types: !207)
!207 = !{!208, !181}
!208 = !DIDerivedType(tag: DW_TAG_typedef, name: "u32", file: !73, line: 21, baseType: !209)
!209 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u32", file: !75, line: 27, baseType: !7)
!210 = !DIDerivedType(tag: DW_TAG_member, name: "algo_data", scope: !167, file: !168, line: 699, baseType: !77, size: 64, offset: 192)
!211 = !DIDerivedType(tag: DW_TAG_member, name: "lock_ops", scope: !167, file: !168, line: 702, baseType: !212, size: 64, offset: 256)
!212 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !213, size: 64)
!213 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !214)
!214 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_lock_operations", file: !168, line: 557, size: 192, elements: !215)
!215 = !{!216, !220, !224}
!216 = !DIDerivedType(tag: DW_TAG_member, name: "lock_bus", scope: !214, file: !168, line: 558, baseType: !217, size: 64)
!217 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !218, size: 64)
!218 = !DISubroutineType(types: !219)
!219 = !{null, !181, !7}
!220 = !DIDerivedType(tag: DW_TAG_member, name: "trylock_bus", scope: !214, file: !168, line: 559, baseType: !221, size: 64, offset: 64)
!221 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !222, size: 64)
!222 = !DISubroutineType(types: !223)
!223 = !{!106, !181, !7}
!224 = !DIDerivedType(tag: DW_TAG_member, name: "unlock_bus", scope: !214, file: !168, line: 560, baseType: !217, size: 64, offset: 128)
!225 = !DIDerivedType(tag: DW_TAG_member, name: "bus_lock", scope: !167, file: !168, line: 703, baseType: !226, size: 192, offset: 320)
!226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex", file: !227, line: 30, size: 192, elements: !228)
!227 = !DIFile(filename: "./include/linux/rtmutex.h", directory: "/home/lizy2001/genbc/linux")
!228 = !{!229, !239, !255}
!229 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !226, file: !227, line: 31, baseType: !230)
!230 = !DIDerivedType(tag: DW_TAG_typedef, name: "raw_spinlock_t", file: !231, line: 29, baseType: !232)
!231 = !DIFile(filename: "./include/linux/spinlock_types.h", directory: "/home/lizy2001/genbc/linux")
!232 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "raw_spinlock", file: !231, line: 20, elements: !233)
!233 = !{!234}
!234 = !DIDerivedType(tag: DW_TAG_member, name: "raw_lock", scope: !232, file: !231, line: 21, baseType: !235)
!235 = !DIDerivedType(tag: DW_TAG_typedef, name: "arch_spinlock_t", file: !236, line: 25, baseType: !237)
!236 = !DIFile(filename: "./include/linux/spinlock_types_up.h", directory: "/home/lizy2001/genbc/linux")
!237 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !236, line: 25, elements: !238)
!238 = !{}
!239 = !DIDerivedType(tag: DW_TAG_member, name: "waiters", scope: !226, file: !227, line: 32, baseType: !240, size: 128)
!240 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root_cached", file: !241, line: 125, size: 128, elements: !242)
!241 = !DIFile(filename: "./include/linux/rbtree.h", directory: "/home/lizy2001/genbc/linux")
!242 = !{!243, !254}
!243 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !240, file: !241, line: 126, baseType: !244, size: 64)
!244 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_root", file: !241, line: 31, size: 64, elements: !245)
!245 = !{!246}
!246 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !244, file: !241, line: 32, baseType: !247, size: 64)
!247 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !248, size: 64)
!248 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rb_node", file: !241, line: 24, size: 192, align: 64, elements: !249)
!249 = !{!250, !252, !253}
!250 = !DIDerivedType(tag: DW_TAG_member, name: "__rb_parent_color", scope: !248, file: !241, line: 25, baseType: !251, size: 64)
!251 = !DIBasicType(name: "long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!252 = !DIDerivedType(tag: DW_TAG_member, name: "rb_right", scope: !248, file: !241, line: 26, baseType: !247, size: 64, offset: 64)
!253 = !DIDerivedType(tag: DW_TAG_member, name: "rb_left", scope: !248, file: !241, line: 27, baseType: !247, size: 64, offset: 128)
!254 = !DIDerivedType(tag: DW_TAG_member, name: "rb_leftmost", scope: !240, file: !241, line: 127, baseType: !247, size: 64, offset: 64)
!255 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !226, file: !227, line: 33, baseType: !256, size: 64, offset: 128)
!256 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !257, size: 64)
!257 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_struct", file: !258, line: 640, size: 48640, elements: !259)
!258 = !DIFile(filename: "./include/linux/sched.h", directory: "/home/lizy2001/genbc/linux")
!259 = !{!260, !266, !269, !270, !281, !282, !283, !284, !285, !286, !287, !288, !292, !318, !329, !421, !422, !423, !434, !435, !437, !438, !673, !674, !680, !681, !682, !683, !684, !685, !686, !687, !688, !689, !690, !691, !692, !693, !694, !695, !753, !756, !757, !758, !759, !760, !761, !762, !763, !764, !765, !809, !811, !812, !813, !815, !817, !818, !819, !820, !821, !827, !828, !829, !830, !831, !832, !833, !847, !852, !856, !857, !858, !861, !865, !868, !871, !874, !877, !880, !883, !886, !892, !893, !894, !900, !901, !905, !906, !907, !916, !917, !918, !919, !920, !925, !926, !927, !930, !931, !934, !937, !940, !943, !946, !949, !950, !1031, !1034, !1037, !1038, !1041, !1042, !1043, !1049, !1050, !1051, !1064, !1065, !1066, !1076, !1081, !1084, !1182, !1183, !1184, !1185, !1186, !1187, !1188, !1189, !1206, !1207, !1208, !1209, !1210, !1211, !1212, !1213, !1214}
!260 = !DIDerivedType(tag: DW_TAG_member, name: "thread_info", scope: !257, file: !258, line: 646, baseType: !261, size: 128)
!261 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_info", file: !262, line: 56, size: 128, elements: !263)
!262 = !DIFile(filename: "./arch/x86/include/asm/thread_info.h", directory: "/home/lizy2001/genbc/linux")
!263 = !{!264, !265}
!264 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !261, file: !262, line: 57, baseType: !251, size: 64)
!265 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !261, file: !262, line: 58, baseType: !208, size: 32, offset: 64)
!266 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !257, file: !258, line: 649, baseType: !267, size: 64, offset: 128)
!267 = !DIDerivedType(tag: DW_TAG_volatile_type, baseType: !268)
!268 = !DIBasicType(name: "long int", size: 64, encoding: DW_ATE_signed)
!269 = !DIDerivedType(tag: DW_TAG_member, name: "stack", scope: !257, file: !258, line: 657, baseType: !77, size: 64, offset: 192)
!270 = !DIDerivedType(tag: DW_TAG_member, name: "usage", scope: !257, file: !258, line: 658, baseType: !271, size: 32, offset: 256)
!271 = !DIDerivedType(tag: DW_TAG_typedef, name: "refcount_t", file: !272, line: 113, baseType: !273)
!272 = !DIFile(filename: "./include/linux/refcount.h", directory: "/home/lizy2001/genbc/linux")
!273 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "refcount_struct", file: !272, line: 111, size: 32, elements: !274)
!274 = !{!275}
!275 = !DIDerivedType(tag: DW_TAG_member, name: "refs", scope: !273, file: !272, line: 112, baseType: !276, size: 32)
!276 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_t", file: !277, line: 168, baseType: !278)
!277 = !DIFile(filename: "./include/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!278 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 166, size: 32, elements: !279)
!279 = !{!280}
!280 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !278, file: !277, line: 167, baseType: !106, size: 32)
!281 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !257, file: !258, line: 660, baseType: !7, size: 32, offset: 288)
!282 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace", scope: !257, file: !258, line: 661, baseType: !7, size: 32, offset: 320)
!283 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !257, file: !258, line: 684, baseType: !106, size: 32, offset: 352)
!284 = !DIDerivedType(tag: DW_TAG_member, name: "prio", scope: !257, file: !258, line: 686, baseType: !106, size: 32, offset: 384)
!285 = !DIDerivedType(tag: DW_TAG_member, name: "static_prio", scope: !257, file: !258, line: 687, baseType: !106, size: 32, offset: 416)
!286 = !DIDerivedType(tag: DW_TAG_member, name: "normal_prio", scope: !257, file: !258, line: 688, baseType: !106, size: 32, offset: 448)
!287 = !DIDerivedType(tag: DW_TAG_member, name: "rt_priority", scope: !257, file: !258, line: 689, baseType: !7, size: 32, offset: 480)
!288 = !DIDerivedType(tag: DW_TAG_member, name: "sched_class", scope: !257, file: !258, line: 691, baseType: !289, size: 64, offset: 512)
!289 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !290, size: 64)
!290 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !291)
!291 = !DICompositeType(tag: DW_TAG_structure_type, name: "sched_class", file: !258, line: 691, flags: DIFlagFwdDecl)
!292 = !DIDerivedType(tag: DW_TAG_member, name: "se", scope: !257, file: !258, line: 692, baseType: !293, size: 832, offset: 576)
!293 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_entity", file: !258, line: 451, size: 832, elements: !294)
!294 = !{!295, !300, !301, !307, !308, !312, !313, !314, !315, !316}
!295 = !DIDerivedType(tag: DW_TAG_member, name: "load", scope: !293, file: !258, line: 453, baseType: !296, size: 128)
!296 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "load_weight", file: !258, line: 325, size: 128, elements: !297)
!297 = !{!298, !299}
!298 = !DIDerivedType(tag: DW_TAG_member, name: "weight", scope: !296, file: !258, line: 326, baseType: !251, size: 64)
!299 = !DIDerivedType(tag: DW_TAG_member, name: "inv_weight", scope: !296, file: !258, line: 327, baseType: !208, size: 32, offset: 64)
!300 = !DIDerivedType(tag: DW_TAG_member, name: "run_node", scope: !293, file: !258, line: 454, baseType: !248, size: 192, align: 64, offset: 128)
!301 = !DIDerivedType(tag: DW_TAG_member, name: "group_node", scope: !293, file: !258, line: 455, baseType: !302, size: 128, offset: 320)
!302 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "list_head", file: !277, line: 178, size: 128, elements: !303)
!303 = !{!304, !306}
!304 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !302, file: !277, line: 179, baseType: !305, size: 64)
!305 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !302, size: 64)
!306 = !DIDerivedType(tag: DW_TAG_member, name: "prev", scope: !302, file: !277, line: 179, baseType: !305, size: 64, offset: 64)
!307 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !293, file: !258, line: 456, baseType: !7, size: 32, offset: 448)
!308 = !DIDerivedType(tag: DW_TAG_member, name: "exec_start", scope: !293, file: !258, line: 458, baseType: !309, size: 64, offset: 512)
!309 = !DIDerivedType(tag: DW_TAG_typedef, name: "u64", file: !73, line: 23, baseType: !310)
!310 = !DIDerivedType(tag: DW_TAG_typedef, name: "__u64", file: !75, line: 31, baseType: !311)
!311 = !DIBasicType(name: "long long unsigned int", size: 64, encoding: DW_ATE_unsigned)
!312 = !DIDerivedType(tag: DW_TAG_member, name: "sum_exec_runtime", scope: !293, file: !258, line: 459, baseType: !309, size: 64, offset: 576)
!313 = !DIDerivedType(tag: DW_TAG_member, name: "vruntime", scope: !293, file: !258, line: 460, baseType: !309, size: 64, offset: 640)
!314 = !DIDerivedType(tag: DW_TAG_member, name: "prev_sum_exec_runtime", scope: !293, file: !258, line: 461, baseType: !309, size: 64, offset: 704)
!315 = !DIDerivedType(tag: DW_TAG_member, name: "nr_migrations", scope: !293, file: !258, line: 463, baseType: !309, size: 64, offset: 768)
!316 = !DIDerivedType(tag: DW_TAG_member, name: "statistics", scope: !293, file: !258, line: 465, baseType: !317, offset: 832)
!317 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_statistics", file: !258, line: 415, elements: !238)
!318 = !DIDerivedType(tag: DW_TAG_member, name: "rt", scope: !257, file: !258, line: 693, baseType: !319, size: 384, offset: 1408)
!319 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_rt_entity", file: !258, line: 489, size: 384, elements: !320)
!320 = !{!321, !322, !323, !324, !325, !326, !327}
!321 = !DIDerivedType(tag: DW_TAG_member, name: "run_list", scope: !319, file: !258, line: 490, baseType: !302, size: 128)
!322 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !319, file: !258, line: 491, baseType: !251, size: 64, offset: 128)
!323 = !DIDerivedType(tag: DW_TAG_member, name: "watchdog_stamp", scope: !319, file: !258, line: 492, baseType: !251, size: 64, offset: 192)
!324 = !DIDerivedType(tag: DW_TAG_member, name: "time_slice", scope: !319, file: !258, line: 493, baseType: !7, size: 32, offset: 256)
!325 = !DIDerivedType(tag: DW_TAG_member, name: "on_rq", scope: !319, file: !258, line: 494, baseType: !76, size: 16, offset: 288)
!326 = !DIDerivedType(tag: DW_TAG_member, name: "on_list", scope: !319, file: !258, line: 495, baseType: !76, size: 16, offset: 304)
!327 = !DIDerivedType(tag: DW_TAG_member, name: "back", scope: !319, file: !258, line: 497, baseType: !328, size: 64, offset: 320)
!328 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !319, size: 64)
!329 = !DIDerivedType(tag: DW_TAG_member, name: "dl", scope: !257, file: !258, line: 697, baseType: !330, size: 1792, offset: 1792)
!330 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_dl_entity", file: !258, line: 507, size: 1792, elements: !331)
!331 = !{!332, !333, !334, !335, !336, !337, !338, !342, !343, !344, !345, !346, !347, !348, !418, !419}
!332 = !DIDerivedType(tag: DW_TAG_member, name: "rb_node", scope: !330, file: !258, line: 508, baseType: !248, size: 192, align: 64)
!333 = !DIDerivedType(tag: DW_TAG_member, name: "dl_runtime", scope: !330, file: !258, line: 515, baseType: !309, size: 64, offset: 192)
!334 = !DIDerivedType(tag: DW_TAG_member, name: "dl_deadline", scope: !330, file: !258, line: 516, baseType: !309, size: 64, offset: 256)
!335 = !DIDerivedType(tag: DW_TAG_member, name: "dl_period", scope: !330, file: !258, line: 517, baseType: !309, size: 64, offset: 320)
!336 = !DIDerivedType(tag: DW_TAG_member, name: "dl_bw", scope: !330, file: !258, line: 518, baseType: !309, size: 64, offset: 384)
!337 = !DIDerivedType(tag: DW_TAG_member, name: "dl_density", scope: !330, file: !258, line: 519, baseType: !309, size: 64, offset: 448)
!338 = !DIDerivedType(tag: DW_TAG_member, name: "runtime", scope: !330, file: !258, line: 526, baseType: !339, size: 64, offset: 512)
!339 = !DIDerivedType(tag: DW_TAG_typedef, name: "s64", file: !73, line: 22, baseType: !340)
!340 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s64", file: !75, line: 30, baseType: !341)
!341 = !DIBasicType(name: "long long int", size: 64, encoding: DW_ATE_signed)
!342 = !DIDerivedType(tag: DW_TAG_member, name: "deadline", scope: !330, file: !258, line: 527, baseType: !309, size: 64, offset: 576)
!343 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !330, file: !258, line: 528, baseType: !7, size: 32, offset: 640)
!344 = !DIDerivedType(tag: DW_TAG_member, name: "dl_throttled", scope: !330, file: !258, line: 554, baseType: !7, size: 1, offset: 672, flags: DIFlagBitField, extraData: i64 672)
!345 = !DIDerivedType(tag: DW_TAG_member, name: "dl_yielded", scope: !330, file: !258, line: 555, baseType: !7, size: 1, offset: 673, flags: DIFlagBitField, extraData: i64 672)
!346 = !DIDerivedType(tag: DW_TAG_member, name: "dl_non_contending", scope: !330, file: !258, line: 556, baseType: !7, size: 1, offset: 674, flags: DIFlagBitField, extraData: i64 672)
!347 = !DIDerivedType(tag: DW_TAG_member, name: "dl_overrun", scope: !330, file: !258, line: 557, baseType: !7, size: 1, offset: 675, flags: DIFlagBitField, extraData: i64 672)
!348 = !DIDerivedType(tag: DW_TAG_member, name: "dl_timer", scope: !330, file: !258, line: 563, baseType: !349, size: 512, offset: 704)
!349 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer", file: !6, line: 118, size: 512, elements: !350)
!350 = !{!351, !359, !360, !365, !414, !415, !416, !417}
!351 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !349, file: !6, line: 119, baseType: !352, size: 256)
!352 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_node", file: !353, line: 9, size: 256, elements: !354)
!353 = !DIFile(filename: "./include/linux/timerqueue.h", directory: "/home/lizy2001/genbc/linux")
!354 = !{!355, !356}
!355 = !DIDerivedType(tag: DW_TAG_member, name: "node", scope: !352, file: !353, line: 10, baseType: !248, size: 192, align: 64)
!356 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !352, file: !353, line: 11, baseType: !357, size: 64, offset: 192)
!357 = !DIDerivedType(tag: DW_TAG_typedef, name: "ktime_t", file: !358, line: 29, baseType: !339)
!358 = !DIFile(filename: "./include/linux/ktime.h", directory: "/home/lizy2001/genbc/linux")
!359 = !DIDerivedType(tag: DW_TAG_member, name: "_softexpires", scope: !349, file: !6, line: 120, baseType: !357, size: 64, offset: 256)
!360 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !349, file: !6, line: 121, baseType: !361, size: 64, offset: 320)
!361 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !362, size: 64)
!362 = !DISubroutineType(types: !363)
!363 = !{!5, !364}
!364 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !349, size: 64)
!365 = !DIDerivedType(tag: DW_TAG_member, name: "base", scope: !349, file: !6, line: 122, baseType: !366, size: 64, offset: 384)
!366 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !367, size: 64)
!367 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_clock_base", file: !6, line: 159, size: 512, align: 512, elements: !368)
!368 = !{!369, !389, !390, !394, !404, !405, !409, !413}
!369 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_base", scope: !367, file: !6, line: 160, baseType: !370, size: 64)
!370 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !371, size: 64)
!371 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hrtimer_cpu_base", file: !6, line: 214, size: 4608, align: 512, elements: !372)
!372 = !{!373, !374, !375, !376, !377, !378, !379, !380, !381, !382, !383, !384, !385}
!373 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !371, file: !6, line: 215, baseType: !230)
!374 = !DIDerivedType(tag: DW_TAG_member, name: "cpu", scope: !371, file: !6, line: 216, baseType: !7, size: 32)
!375 = !DIDerivedType(tag: DW_TAG_member, name: "active_bases", scope: !371, file: !6, line: 217, baseType: !7, size: 32, offset: 32)
!376 = !DIDerivedType(tag: DW_TAG_member, name: "clock_was_set_seq", scope: !371, file: !6, line: 218, baseType: !7, size: 32, offset: 64)
!377 = !DIDerivedType(tag: DW_TAG_member, name: "hres_active", scope: !371, file: !6, line: 219, baseType: !7, size: 1, offset: 96, flags: DIFlagBitField, extraData: i64 96)
!378 = !DIDerivedType(tag: DW_TAG_member, name: "in_hrtirq", scope: !371, file: !6, line: 220, baseType: !7, size: 1, offset: 97, flags: DIFlagBitField, extraData: i64 96)
!379 = !DIDerivedType(tag: DW_TAG_member, name: "hang_detected", scope: !371, file: !6, line: 221, baseType: !7, size: 1, offset: 98, flags: DIFlagBitField, extraData: i64 96)
!380 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_activated", scope: !371, file: !6, line: 222, baseType: !7, size: 1, offset: 99, flags: DIFlagBitField, extraData: i64 96)
!381 = !DIDerivedType(tag: DW_TAG_member, name: "expires_next", scope: !371, file: !6, line: 233, baseType: !357, size: 64, offset: 128)
!382 = !DIDerivedType(tag: DW_TAG_member, name: "next_timer", scope: !371, file: !6, line: 234, baseType: !364, size: 64, offset: 192)
!383 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_expires_next", scope: !371, file: !6, line: 235, baseType: !357, size: 64, offset: 256)
!384 = !DIDerivedType(tag: DW_TAG_member, name: "softirq_next_timer", scope: !371, file: !6, line: 236, baseType: !364, size: 64, offset: 320)
!385 = !DIDerivedType(tag: DW_TAG_member, name: "clock_base", scope: !371, file: !6, line: 237, baseType: !386, size: 4096, offset: 512)
!386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !367, size: 4096, elements: !387)
!387 = !{!388}
!388 = !DISubrange(count: 8)
!389 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !367, file: !6, line: 161, baseType: !7, size: 32, offset: 64)
!390 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !367, file: !6, line: 162, baseType: !391, size: 32, offset: 96)
!391 = !DIDerivedType(tag: DW_TAG_typedef, name: "clockid_t", file: !277, line: 27, baseType: !392)
!392 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clockid_t", file: !393, line: 96, baseType: !106)
!393 = !DIFile(filename: "./include/uapi/asm-generic/posix_types.h", directory: "/home/lizy2001/genbc/linux")
!394 = !DIDerivedType(tag: DW_TAG_member, name: "seq", scope: !367, file: !6, line: 163, baseType: !395, size: 32, offset: 128)
!395 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_raw_spinlock_t", file: !396, line: 276, baseType: !397)
!396 = !DIFile(filename: "./include/linux/seqlock.h", directory: "/home/lizy2001/genbc/linux")
!397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount_raw_spinlock", file: !396, line: 276, size: 32, elements: !398)
!398 = !{!399}
!399 = !DIDerivedType(tag: DW_TAG_member, name: "seqcount", scope: !397, file: !396, line: 276, baseType: !400, size: 32)
!400 = !DIDerivedType(tag: DW_TAG_typedef, name: "seqcount_t", file: !396, line: 70, baseType: !401)
!401 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seqcount", file: !396, line: 65, size: 32, elements: !402)
!402 = !{!403}
!403 = !DIDerivedType(tag: DW_TAG_member, name: "sequence", scope: !401, file: !396, line: 66, baseType: !7, size: 32)
!404 = !DIDerivedType(tag: DW_TAG_member, name: "running", scope: !367, file: !6, line: 164, baseType: !364, size: 64, offset: 192)
!405 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !367, file: !6, line: 165, baseType: !406, size: 128, offset: 256)
!406 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timerqueue_head", file: !353, line: 14, size: 128, elements: !407)
!407 = !{!408}
!408 = !DIDerivedType(tag: DW_TAG_member, name: "rb_root", scope: !406, file: !353, line: 15, baseType: !240, size: 128)
!409 = !DIDerivedType(tag: DW_TAG_member, name: "get_time", scope: !367, file: !6, line: 166, baseType: !410, size: 64, offset: 384)
!410 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !411, size: 64)
!411 = !DISubroutineType(types: !412)
!412 = !{!357}
!413 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !367, file: !6, line: 167, baseType: !357, size: 64, offset: 448)
!414 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !349, file: !6, line: 123, baseType: !78, size: 8, offset: 448)
!415 = !DIDerivedType(tag: DW_TAG_member, name: "is_rel", scope: !349, file: !6, line: 124, baseType: !78, size: 8, offset: 456)
!416 = !DIDerivedType(tag: DW_TAG_member, name: "is_soft", scope: !349, file: !6, line: 125, baseType: !78, size: 8, offset: 464)
!417 = !DIDerivedType(tag: DW_TAG_member, name: "is_hard", scope: !349, file: !6, line: 126, baseType: !78, size: 8, offset: 472)
!418 = !DIDerivedType(tag: DW_TAG_member, name: "inactive_timer", scope: !330, file: !258, line: 572, baseType: !349, size: 512, offset: 1216)
!419 = !DIDerivedType(tag: DW_TAG_member, name: "pi_se", scope: !330, file: !258, line: 580, baseType: !420, size: 64, offset: 1728)
!420 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !330, size: 64)
!421 = !DIDerivedType(tag: DW_TAG_member, name: "policy", scope: !257, file: !258, line: 721, baseType: !7, size: 32, offset: 3584)
!422 = !DIDerivedType(tag: DW_TAG_member, name: "nr_cpus_allowed", scope: !257, file: !258, line: 722, baseType: !106, size: 32, offset: 3616)
!423 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_ptr", scope: !257, file: !258, line: 723, baseType: !424, size: 64, offset: 3648)
!424 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !425, size: 64)
!425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !426)
!426 = !DIDerivedType(tag: DW_TAG_typedef, name: "cpumask_t", file: !427, line: 17, baseType: !428)
!427 = !DIFile(filename: "./include/linux/cpumask.h", directory: "/home/lizy2001/genbc/linux")
!428 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "cpumask", file: !427, line: 17, size: 64, elements: !429)
!429 = !{!430}
!430 = !DIDerivedType(tag: DW_TAG_member, name: "bits", scope: !428, file: !427, line: 17, baseType: !431, size: 64)
!431 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 64, elements: !432)
!432 = !{!433}
!433 = !DISubrange(count: 1)
!434 = !DIDerivedType(tag: DW_TAG_member, name: "cpus_mask", scope: !257, file: !258, line: 724, baseType: !426, size: 64, offset: 3712)
!435 = !DIDerivedType(tag: DW_TAG_member, name: "sched_info", scope: !257, file: !258, line: 749, baseType: !436, offset: 3776)
!436 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sched_info", file: !258, line: 290, elements: !238)
!437 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !257, file: !258, line: 751, baseType: !302, size: 128, offset: 3776)
!438 = !DIDerivedType(tag: DW_TAG_member, name: "mm", scope: !257, file: !258, line: 757, baseType: !439, size: 64, offset: 3904)
!439 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !440, size: 64)
!440 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_struct", file: !441, line: 388, size: 7296, elements: !442)
!441 = !DIFile(filename: "./include/linux/mm_types.h", directory: "/home/lizy2001/genbc/linux")
!442 = !{!443, !669}
!443 = !DIDerivedType(tag: DW_TAG_member, scope: !440, file: !441, line: 389, baseType: !444, size: 7296)
!444 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !440, file: !441, line: 389, size: 7296, elements: !445)
!445 = !{!446, !493, !494, !495, !499, !500, !501, !502, !503, !510, !511, !512, !513, !514, !515, !516, !524, !532, !533, !534, !535, !536, !537, !538, !539, !540, !541, !542, !543, !544, !545, !546, !547, !548, !549, !550, !551, !552, !553, !554, !558, !566, !569, !615, !616, !638, !639, !642, !645, !646, !649, !650, !653, !656, !668}
!446 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !444, file: !441, line: 390, baseType: !447, size: 64)
!447 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !448, size: 64)
!448 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_area_struct", file: !441, line: 305, size: 1472, elements: !449)
!449 = !{!450, !451, !452, !453, !454, !455, !456, !457, !465, !466, !471, !472, !475, !479, !480, !483, !484, !491}
!450 = !DIDerivedType(tag: DW_TAG_member, name: "vm_start", scope: !448, file: !441, line: 308, baseType: !251, size: 64)
!451 = !DIDerivedType(tag: DW_TAG_member, name: "vm_end", scope: !448, file: !441, line: 309, baseType: !251, size: 64, offset: 64)
!452 = !DIDerivedType(tag: DW_TAG_member, name: "vm_next", scope: !448, file: !441, line: 313, baseType: !447, size: 64, offset: 128)
!453 = !DIDerivedType(tag: DW_TAG_member, name: "vm_prev", scope: !448, file: !441, line: 313, baseType: !447, size: 64, offset: 192)
!454 = !DIDerivedType(tag: DW_TAG_member, name: "vm_rb", scope: !448, file: !441, line: 315, baseType: !248, size: 192, align: 64, offset: 256)
!455 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_gap", scope: !448, file: !441, line: 323, baseType: !251, size: 64, offset: 448)
!456 = !DIDerivedType(tag: DW_TAG_member, name: "vm_mm", scope: !448, file: !441, line: 327, baseType: !439, size: 64, offset: 512)
!457 = !DIDerivedType(tag: DW_TAG_member, name: "vm_page_prot", scope: !448, file: !441, line: 333, baseType: !458, size: 64, offset: 576)
!458 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprot_t", file: !459, line: 284, baseType: !460)
!459 = !DIFile(filename: "./arch/x86/include/asm/pgtable_types.h", directory: "/home/lizy2001/genbc/linux")
!460 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pgprot", file: !459, line: 284, size: 64, elements: !461)
!461 = !{!462}
!462 = !DIDerivedType(tag: DW_TAG_member, name: "pgprot", scope: !460, file: !459, line: 284, baseType: !463, size: 64)
!463 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgprotval_t", file: !464, line: 19, baseType: !251)
!464 = !DIFile(filename: "./arch/x86/include/asm/pgtable_64_types.h", directory: "/home/lizy2001/genbc/linux")
!465 = !DIDerivedType(tag: DW_TAG_member, name: "vm_flags", scope: !448, file: !441, line: 334, baseType: !251, size: 64, offset: 640)
!466 = !DIDerivedType(tag: DW_TAG_member, name: "shared", scope: !448, file: !441, line: 343, baseType: !467, size: 256, offset: 704)
!467 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !448, file: !441, line: 340, size: 256, elements: !468)
!468 = !{!469, !470}
!469 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !467, file: !441, line: 341, baseType: !248, size: 192, align: 64)
!470 = !DIDerivedType(tag: DW_TAG_member, name: "rb_subtree_last", scope: !467, file: !441, line: 342, baseType: !251, size: 64, offset: 192)
!471 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma_chain", scope: !448, file: !441, line: 351, baseType: !302, size: 128, offset: 960)
!472 = !DIDerivedType(tag: DW_TAG_member, name: "anon_vma", scope: !448, file: !441, line: 353, baseType: !473, size: 64, offset: 1088)
!473 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !474, size: 64)
!474 = !DICompositeType(tag: DW_TAG_structure_type, name: "anon_vma", file: !441, line: 353, flags: DIFlagFwdDecl)
!475 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !448, file: !441, line: 356, baseType: !476, size: 64, offset: 1152)
!476 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !477, size: 64)
!477 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !478)
!478 = !DICompositeType(tag: DW_TAG_structure_type, name: "vm_operations_struct", file: !441, line: 356, flags: DIFlagFwdDecl)
!479 = !DIDerivedType(tag: DW_TAG_member, name: "vm_pgoff", scope: !448, file: !441, line: 359, baseType: !251, size: 64, offset: 1216)
!480 = !DIDerivedType(tag: DW_TAG_member, name: "vm_file", scope: !448, file: !441, line: 361, baseType: !481, size: 64, offset: 1280)
!481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !482, size: 64)
!482 = !DICompositeType(tag: DW_TAG_structure_type, name: "file", file: !459, line: 526, flags: DIFlagFwdDecl)
!483 = !DIDerivedType(tag: DW_TAG_member, name: "vm_private_data", scope: !448, file: !441, line: 362, baseType: !77, size: 64, offset: 1344)
!484 = !DIDerivedType(tag: DW_TAG_member, name: "swap_readahead_info", scope: !448, file: !441, line: 365, baseType: !485, size: 64, offset: 1408)
!485 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic_long_t", file: !486, line: 13, baseType: !487)
!486 = !DIFile(filename: "./include/asm-generic/atomic-long.h", directory: "/home/lizy2001/genbc/linux")
!487 = !DIDerivedType(tag: DW_TAG_typedef, name: "atomic64_t", file: !277, line: 175, baseType: !488)
!488 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !277, line: 173, size: 64, elements: !489)
!489 = !{!490}
!490 = !DIDerivedType(tag: DW_TAG_member, name: "counter", scope: !488, file: !277, line: 174, baseType: !339, size: 64)
!491 = !DIDerivedType(tag: DW_TAG_member, name: "vm_userfaultfd_ctx", scope: !448, file: !441, line: 373, baseType: !492, offset: 1472)
!492 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_userfaultfd_ctx", file: !441, line: 296, elements: !238)
!493 = !DIDerivedType(tag: DW_TAG_member, name: "mm_rb", scope: !444, file: !441, line: 391, baseType: !244, size: 64, offset: 64)
!494 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache_seqnum", scope: !444, file: !441, line: 392, baseType: !309, size: 64, offset: 128)
!495 = !DIDerivedType(tag: DW_TAG_member, name: "get_unmapped_area", scope: !444, file: !441, line: 394, baseType: !496, size: 64, offset: 192)
!496 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !497, size: 64)
!497 = !DISubroutineType(types: !498)
!498 = !{!251, !481, !251, !251, !251, !251}
!499 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_base", scope: !444, file: !441, line: 398, baseType: !251, size: 64, offset: 256)
!500 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_legacy_base", scope: !444, file: !441, line: 399, baseType: !251, size: 64, offset: 320)
!501 = !DIDerivedType(tag: DW_TAG_member, name: "task_size", scope: !444, file: !441, line: 405, baseType: !251, size: 64, offset: 384)
!502 = !DIDerivedType(tag: DW_TAG_member, name: "highest_vm_end", scope: !444, file: !441, line: 406, baseType: !251, size: 64, offset: 448)
!503 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !444, file: !441, line: 407, baseType: !504, size: 64, offset: 512)
!504 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !505, size: 64)
!505 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgd_t", file: !459, line: 286, baseType: !506)
!506 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !459, line: 286, size: 64, elements: !507)
!507 = !{!508}
!508 = !DIDerivedType(tag: DW_TAG_member, name: "pgd", scope: !506, file: !459, line: 286, baseType: !509, size: 64)
!509 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgdval_t", file: !464, line: 18, baseType: !251)
!510 = !DIDerivedType(tag: DW_TAG_member, name: "membarrier_state", scope: !444, file: !441, line: 416, baseType: !276, size: 32, offset: 576)
!511 = !DIDerivedType(tag: DW_TAG_member, name: "mm_users", scope: !444, file: !441, line: 428, baseType: !276, size: 32, offset: 608)
!512 = !DIDerivedType(tag: DW_TAG_member, name: "mm_count", scope: !444, file: !441, line: 437, baseType: !276, size: 32, offset: 640)
!513 = !DIDerivedType(tag: DW_TAG_member, name: "has_pinned", scope: !444, file: !441, line: 447, baseType: !276, size: 32, offset: 672)
!514 = !DIDerivedType(tag: DW_TAG_member, name: "pgtables_bytes", scope: !444, file: !441, line: 450, baseType: !485, size: 64, offset: 704)
!515 = !DIDerivedType(tag: DW_TAG_member, name: "map_count", scope: !444, file: !441, line: 452, baseType: !106, size: 32, offset: 768)
!516 = !DIDerivedType(tag: DW_TAG_member, name: "page_table_lock", scope: !444, file: !441, line: 454, baseType: !517, offset: 800)
!517 = !DIDerivedType(tag: DW_TAG_typedef, name: "spinlock_t", file: !231, line: 83, baseType: !518)
!518 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "spinlock", file: !231, line: 71, elements: !519)
!519 = !{!520}
!520 = !DIDerivedType(tag: DW_TAG_member, scope: !518, file: !231, line: 72, baseType: !521)
!521 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !518, file: !231, line: 72, elements: !522)
!522 = !{!523}
!523 = !DIDerivedType(tag: DW_TAG_member, name: "rlock", scope: !521, file: !231, line: 73, baseType: !232)
!524 = !DIDerivedType(tag: DW_TAG_member, name: "mmap_lock", scope: !444, file: !441, line: 457, baseType: !525, size: 256, offset: 832)
!525 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rw_semaphore", file: !526, line: 35, size: 256, elements: !527)
!526 = !DIFile(filename: "./include/linux/rwsem.h", directory: "/home/lizy2001/genbc/linux")
!527 = !{!528, !529, !530, !531}
!528 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !525, file: !526, line: 36, baseType: !485, size: 64)
!529 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !525, file: !526, line: 42, baseType: !485, size: 64, offset: 64)
!530 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !525, file: !526, line: 46, baseType: !230, offset: 128)
!531 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !525, file: !526, line: 47, baseType: !302, size: 128, offset: 128)
!532 = !DIDerivedType(tag: DW_TAG_member, name: "mmlist", scope: !444, file: !441, line: 459, baseType: !302, size: 128, offset: 1088)
!533 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_rss", scope: !444, file: !441, line: 466, baseType: !251, size: 64, offset: 1216)
!534 = !DIDerivedType(tag: DW_TAG_member, name: "hiwater_vm", scope: !444, file: !441, line: 467, baseType: !251, size: 64, offset: 1280)
!535 = !DIDerivedType(tag: DW_TAG_member, name: "total_vm", scope: !444, file: !441, line: 469, baseType: !251, size: 64, offset: 1344)
!536 = !DIDerivedType(tag: DW_TAG_member, name: "locked_vm", scope: !444, file: !441, line: 470, baseType: !251, size: 64, offset: 1408)
!537 = !DIDerivedType(tag: DW_TAG_member, name: "pinned_vm", scope: !444, file: !441, line: 471, baseType: !487, size: 64, offset: 1472)
!538 = !DIDerivedType(tag: DW_TAG_member, name: "data_vm", scope: !444, file: !441, line: 472, baseType: !251, size: 64, offset: 1536)
!539 = !DIDerivedType(tag: DW_TAG_member, name: "exec_vm", scope: !444, file: !441, line: 473, baseType: !251, size: 64, offset: 1600)
!540 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm", scope: !444, file: !441, line: 474, baseType: !251, size: 64, offset: 1664)
!541 = !DIDerivedType(tag: DW_TAG_member, name: "def_flags", scope: !444, file: !441, line: 475, baseType: !251, size: 64, offset: 1728)
!542 = !DIDerivedType(tag: DW_TAG_member, name: "arg_lock", scope: !444, file: !441, line: 477, baseType: !517, offset: 1792)
!543 = !DIDerivedType(tag: DW_TAG_member, name: "start_code", scope: !444, file: !441, line: 478, baseType: !251, size: 64, offset: 1792)
!544 = !DIDerivedType(tag: DW_TAG_member, name: "end_code", scope: !444, file: !441, line: 478, baseType: !251, size: 64, offset: 1856)
!545 = !DIDerivedType(tag: DW_TAG_member, name: "start_data", scope: !444, file: !441, line: 478, baseType: !251, size: 64, offset: 1920)
!546 = !DIDerivedType(tag: DW_TAG_member, name: "end_data", scope: !444, file: !441, line: 478, baseType: !251, size: 64, offset: 1984)
!547 = !DIDerivedType(tag: DW_TAG_member, name: "start_brk", scope: !444, file: !441, line: 479, baseType: !251, size: 64, offset: 2048)
!548 = !DIDerivedType(tag: DW_TAG_member, name: "brk", scope: !444, file: !441, line: 479, baseType: !251, size: 64, offset: 2112)
!549 = !DIDerivedType(tag: DW_TAG_member, name: "start_stack", scope: !444, file: !441, line: 479, baseType: !251, size: 64, offset: 2176)
!550 = !DIDerivedType(tag: DW_TAG_member, name: "arg_start", scope: !444, file: !441, line: 480, baseType: !251, size: 64, offset: 2240)
!551 = !DIDerivedType(tag: DW_TAG_member, name: "arg_end", scope: !444, file: !441, line: 480, baseType: !251, size: 64, offset: 2304)
!552 = !DIDerivedType(tag: DW_TAG_member, name: "env_start", scope: !444, file: !441, line: 480, baseType: !251, size: 64, offset: 2368)
!553 = !DIDerivedType(tag: DW_TAG_member, name: "env_end", scope: !444, file: !441, line: 480, baseType: !251, size: 64, offset: 2432)
!554 = !DIDerivedType(tag: DW_TAG_member, name: "saved_auxv", scope: !444, file: !441, line: 482, baseType: !555, size: 2816, offset: 2496)
!555 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, size: 2816, elements: !556)
!556 = !{!557}
!557 = !DISubrange(count: 44)
!558 = !DIDerivedType(tag: DW_TAG_member, name: "rss_stat", scope: !444, file: !441, line: 488, baseType: !559, size: 256, offset: 5312)
!559 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mm_rss_stat", file: !560, line: 60, size: 256, elements: !561)
!560 = !DIFile(filename: "./include/linux/mm_types_task.h", directory: "/home/lizy2001/genbc/linux")
!561 = !{!562}
!562 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !559, file: !560, line: 61, baseType: !563, size: 256)
!563 = !DICompositeType(tag: DW_TAG_array_type, baseType: !485, size: 256, elements: !564)
!564 = !{!565}
!565 = !DISubrange(count: 4)
!566 = !DIDerivedType(tag: DW_TAG_member, name: "binfmt", scope: !444, file: !441, line: 490, baseType: !567, size: 64, offset: 5568)
!567 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !568, size: 64)
!568 = !DICompositeType(tag: DW_TAG_structure_type, name: "linux_binfmt", file: !441, line: 490, flags: DIFlagFwdDecl)
!569 = !DIDerivedType(tag: DW_TAG_member, name: "context", scope: !444, file: !441, line: 493, baseType: !570, size: 896, offset: 5632)
!570 = !DIDerivedType(tag: DW_TAG_typedef, name: "mm_context_t", file: !571, line: 53, baseType: !572)
!571 = !DIFile(filename: "./arch/x86/include/asm/mmu.h", directory: "/home/lizy2001/genbc/linux")
!572 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !571, line: 13, size: 896, elements: !573)
!573 = !{!574, !575, !576, !577, !580, !581, !588, !589, !609, !610, !611}
!574 = !DIDerivedType(tag: DW_TAG_member, name: "ctx_id", scope: !572, file: !571, line: 18, baseType: !309, size: 64)
!575 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_gen", scope: !572, file: !571, line: 28, baseType: !487, size: 64, offset: 64)
!576 = !DIDerivedType(tag: DW_TAG_member, name: "ldt_usr_sem", scope: !572, file: !571, line: 31, baseType: !525, size: 256, offset: 128)
!577 = !DIDerivedType(tag: DW_TAG_member, name: "ldt", scope: !572, file: !571, line: 32, baseType: !578, size: 64, offset: 384)
!578 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !579, size: 64)
!579 = !DICompositeType(tag: DW_TAG_structure_type, name: "ldt_struct", file: !571, line: 32, flags: DIFlagFwdDecl)
!580 = !DIDerivedType(tag: DW_TAG_member, name: "ia32_compat", scope: !572, file: !571, line: 37, baseType: !76, size: 16, offset: 448)
!581 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !572, file: !571, line: 40, baseType: !582, size: 192, offset: 512)
!582 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "mutex", file: !583, line: 53, size: 192, elements: !584)
!583 = !DIFile(filename: "./include/linux/mutex.h", directory: "/home/lizy2001/genbc/linux")
!584 = !{!585, !586, !587}
!585 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !582, file: !583, line: 54, baseType: !485, size: 64)
!586 = !DIDerivedType(tag: DW_TAG_member, name: "wait_lock", scope: !582, file: !583, line: 55, baseType: !517, offset: 64)
!587 = !DIDerivedType(tag: DW_TAG_member, name: "wait_list", scope: !582, file: !583, line: 59, baseType: !302, size: 128, offset: 64)
!588 = !DIDerivedType(tag: DW_TAG_member, name: "vdso", scope: !572, file: !571, line: 41, baseType: !77, size: 64, offset: 704)
!589 = !DIDerivedType(tag: DW_TAG_member, name: "vdso_image", scope: !572, file: !571, line: 42, baseType: !590, size: 64, offset: 768)
!590 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !591, size: 64)
!591 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !592)
!592 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vdso_image", file: !593, line: 13, size: 896, elements: !594)
!593 = !DIFile(filename: "./arch/x86/include/asm/vdso.h", directory: "/home/lizy2001/genbc/linux")
!594 = !{!595, !596, !597, !598, !599, !600, !601, !602, !603, !604, !605, !606, !607, !608}
!595 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !592, file: !593, line: 14, baseType: !77, size: 64)
!596 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !592, file: !593, line: 15, baseType: !251, size: 64, offset: 64)
!597 = !DIDerivedType(tag: DW_TAG_member, name: "alt", scope: !592, file: !593, line: 17, baseType: !251, size: 64, offset: 128)
!598 = !DIDerivedType(tag: DW_TAG_member, name: "alt_len", scope: !592, file: !593, line: 17, baseType: !251, size: 64, offset: 192)
!599 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_start", scope: !592, file: !593, line: 19, baseType: !268, size: 64, offset: 256)
!600 = !DIDerivedType(tag: DW_TAG_member, name: "sym_vvar_page", scope: !592, file: !593, line: 21, baseType: !268, size: 64, offset: 320)
!601 = !DIDerivedType(tag: DW_TAG_member, name: "sym_pvclock_page", scope: !592, file: !593, line: 22, baseType: !268, size: 64, offset: 384)
!602 = !DIDerivedType(tag: DW_TAG_member, name: "sym_hvclock_page", scope: !592, file: !593, line: 23, baseType: !268, size: 64, offset: 448)
!603 = !DIDerivedType(tag: DW_TAG_member, name: "sym_timens_page", scope: !592, file: !593, line: 24, baseType: !268, size: 64, offset: 512)
!604 = !DIDerivedType(tag: DW_TAG_member, name: "sym_VDSO32_NOTE_MASK", scope: !592, file: !593, line: 25, baseType: !268, size: 64, offset: 576)
!605 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_sigreturn", scope: !592, file: !593, line: 26, baseType: !268, size: 64, offset: 640)
!606 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_rt_sigreturn", scope: !592, file: !593, line: 27, baseType: !268, size: 64, offset: 704)
!607 = !DIDerivedType(tag: DW_TAG_member, name: "sym___kernel_vsyscall", scope: !592, file: !593, line: 28, baseType: !268, size: 64, offset: 768)
!608 = !DIDerivedType(tag: DW_TAG_member, name: "sym_int80_landing_pad", scope: !592, file: !593, line: 29, baseType: !268, size: 64, offset: 832)
!609 = !DIDerivedType(tag: DW_TAG_member, name: "perf_rdpmc_allowed", scope: !572, file: !571, line: 44, baseType: !276, size: 32, offset: 832)
!610 = !DIDerivedType(tag: DW_TAG_member, name: "pkey_allocation_map", scope: !572, file: !571, line: 50, baseType: !72, size: 16, offset: 864)
!611 = !DIDerivedType(tag: DW_TAG_member, name: "execute_only_pkey", scope: !572, file: !571, line: 51, baseType: !612, size: 16, offset: 880)
!612 = !DIDerivedType(tag: DW_TAG_typedef, name: "s16", file: !73, line: 18, baseType: !613)
!613 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s16", file: !75, line: 23, baseType: !614)
!614 = !DIBasicType(name: "short", size: 16, encoding: DW_ATE_signed)
!615 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !444, file: !441, line: 495, baseType: !251, size: 64, offset: 6528)
!616 = !DIDerivedType(tag: DW_TAG_member, name: "core_state", scope: !444, file: !441, line: 497, baseType: !617, size: 64, offset: 6592)
!617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !618, size: 64)
!618 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_state", file: !441, line: 381, size: 384, elements: !619)
!619 = !{!620, !621, !627}
!620 = !DIDerivedType(tag: DW_TAG_member, name: "nr_threads", scope: !618, file: !441, line: 382, baseType: !276, size: 32)
!621 = !DIDerivedType(tag: DW_TAG_member, name: "dumper", scope: !618, file: !441, line: 383, baseType: !622, size: 128, offset: 64)
!622 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "core_thread", file: !441, line: 376, size: 128, elements: !623)
!623 = !{!624, !625}
!624 = !DIDerivedType(tag: DW_TAG_member, name: "task", scope: !622, file: !441, line: 377, baseType: !256, size: 64)
!625 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !622, file: !441, line: 378, baseType: !626, size: 64, offset: 64)
!626 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !622, size: 64)
!627 = !DIDerivedType(tag: DW_TAG_member, name: "startup", scope: !618, file: !441, line: 384, baseType: !628, size: 192, offset: 192)
!628 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "completion", file: !629, line: 26, size: 192, elements: !630)
!629 = !DIFile(filename: "./include/linux/completion.h", directory: "/home/lizy2001/genbc/linux")
!630 = !{!631, !632}
!631 = !DIDerivedType(tag: DW_TAG_member, name: "done", scope: !628, file: !629, line: 27, baseType: !7, size: 32)
!632 = !DIDerivedType(tag: DW_TAG_member, name: "wait", scope: !628, file: !629, line: 28, baseType: !633, size: 128, offset: 64)
!633 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swait_queue_head", file: !634, line: 43, size: 128, elements: !635)
!634 = !DIFile(filename: "./include/linux/swait.h", directory: "/home/lizy2001/genbc/linux")
!635 = !{!636, !637}
!636 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !633, file: !634, line: 44, baseType: !230)
!637 = !DIDerivedType(tag: DW_TAG_member, name: "task_list", scope: !633, file: !634, line: 45, baseType: !302, size: 128)
!638 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_lock", scope: !444, file: !441, line: 500, baseType: !517, offset: 6656)
!639 = !DIDerivedType(tag: DW_TAG_member, name: "ioctx_table", scope: !444, file: !441, line: 501, baseType: !640, size: 64, offset: 6656)
!640 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !641, size: 64)
!641 = !DICompositeType(tag: DW_TAG_structure_type, name: "kioctx_table", file: !441, line: 387, flags: DIFlagFwdDecl)
!642 = !DIDerivedType(tag: DW_TAG_member, name: "user_ns", scope: !444, file: !441, line: 516, baseType: !643, size: 64, offset: 6720)
!643 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !644, size: 64)
!644 = !DICompositeType(tag: DW_TAG_structure_type, name: "user_namespace", file: !441, line: 516, flags: DIFlagFwdDecl)
!645 = !DIDerivedType(tag: DW_TAG_member, name: "exe_file", scope: !444, file: !441, line: 519, baseType: !481, size: 64, offset: 6784)
!646 = !DIDerivedType(tag: DW_TAG_member, name: "notifier_subscriptions", scope: !444, file: !441, line: 521, baseType: !647, size: 64, offset: 6848)
!647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !648, size: 64)
!648 = !DICompositeType(tag: DW_TAG_structure_type, name: "mmu_notifier_subscriptions", file: !441, line: 521, flags: DIFlagFwdDecl)
!649 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_pending", scope: !444, file: !441, line: 545, baseType: !276, size: 32, offset: 6912)
!650 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_flush_batched", scope: !444, file: !441, line: 548, baseType: !651, size: 8, offset: 6944)
!651 = !DIDerivedType(tag: DW_TAG_typedef, name: "bool", file: !277, line: 30, baseType: !652)
!652 = !DIBasicType(name: "_Bool", size: 8, encoding: DW_ATE_boolean)
!653 = !DIDerivedType(tag: DW_TAG_member, name: "uprobes_state", scope: !444, file: !441, line: 550, baseType: !654, offset: 6952)
!654 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "uprobes_state", file: !655, line: 142, elements: !238)
!655 = !DIFile(filename: "./include/linux/uprobes.h", directory: "/home/lizy2001/genbc/linux")
!656 = !DIDerivedType(tag: DW_TAG_member, name: "async_put_work", scope: !444, file: !441, line: 554, baseType: !657, size: 256, offset: 6976)
!657 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "work_struct", file: !658, line: 102, size: 256, elements: !659)
!658 = !DIFile(filename: "./include/linux/workqueue.h", directory: "/home/lizy2001/genbc/linux")
!659 = !{!660, !661, !662}
!660 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !657, file: !658, line: 103, baseType: !485, size: 64)
!661 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !657, file: !658, line: 104, baseType: !302, size: 128, offset: 64)
!662 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !657, file: !658, line: 105, baseType: !663, size: 64, offset: 192)
!663 = !DIDerivedType(tag: DW_TAG_typedef, name: "work_func_t", file: !658, line: 21, baseType: !664)
!664 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !665, size: 64)
!665 = !DISubroutineType(types: !666)
!666 = !{null, !667}
!667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !657, size: 64)
!668 = !DIDerivedType(tag: DW_TAG_member, name: "pasid", scope: !444, file: !441, line: 557, baseType: !208, size: 32, offset: 7232)
!669 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_bitmap", scope: !440, file: !441, line: 565, baseType: !670, offset: 7296)
!670 = !DICompositeType(tag: DW_TAG_array_type, baseType: !251, elements: !671)
!671 = !{!672}
!672 = !DISubrange(count: -1)
!673 = !DIDerivedType(tag: DW_TAG_member, name: "active_mm", scope: !257, file: !258, line: 758, baseType: !439, size: 64, offset: 3968)
!674 = !DIDerivedType(tag: DW_TAG_member, name: "vmacache", scope: !257, file: !258, line: 761, baseType: !675, size: 320, offset: 4032)
!675 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vmacache", file: !560, line: 34, size: 320, elements: !676)
!676 = !{!677, !678}
!677 = !DIDerivedType(tag: DW_TAG_member, name: "seqnum", scope: !675, file: !560, line: 35, baseType: !309, size: 64)
!678 = !DIDerivedType(tag: DW_TAG_member, name: "vmas", scope: !675, file: !560, line: 36, baseType: !679, size: 256, offset: 64)
!679 = !DICompositeType(tag: DW_TAG_array_type, baseType: !447, size: 256, elements: !564)
!680 = !DIDerivedType(tag: DW_TAG_member, name: "exit_state", scope: !257, file: !258, line: 766, baseType: !106, size: 32, offset: 4352)
!681 = !DIDerivedType(tag: DW_TAG_member, name: "exit_code", scope: !257, file: !258, line: 767, baseType: !106, size: 32, offset: 4384)
!682 = !DIDerivedType(tag: DW_TAG_member, name: "exit_signal", scope: !257, file: !258, line: 768, baseType: !106, size: 32, offset: 4416)
!683 = !DIDerivedType(tag: DW_TAG_member, name: "pdeath_signal", scope: !257, file: !258, line: 770, baseType: !106, size: 32, offset: 4448)
!684 = !DIDerivedType(tag: DW_TAG_member, name: "jobctl", scope: !257, file: !258, line: 772, baseType: !251, size: 64, offset: 4480)
!685 = !DIDerivedType(tag: DW_TAG_member, name: "personality", scope: !257, file: !258, line: 775, baseType: !7, size: 32, offset: 4544)
!686 = !DIDerivedType(tag: DW_TAG_member, name: "sched_reset_on_fork", scope: !257, file: !258, line: 778, baseType: !7, size: 1, offset: 4576, flags: DIFlagBitField, extraData: i64 4576)
!687 = !DIDerivedType(tag: DW_TAG_member, name: "sched_contributes_to_load", scope: !257, file: !258, line: 779, baseType: !7, size: 1, offset: 4577, flags: DIFlagBitField, extraData: i64 4576)
!688 = !DIDerivedType(tag: DW_TAG_member, name: "sched_migrated", scope: !257, file: !258, line: 780, baseType: !7, size: 1, offset: 4578, flags: DIFlagBitField, extraData: i64 4576)
!689 = !DIDerivedType(tag: DW_TAG_member, name: "sched_remote_wakeup", scope: !257, file: !258, line: 803, baseType: !7, size: 1, offset: 4608, flags: DIFlagBitField, extraData: i64 4608)
!690 = !DIDerivedType(tag: DW_TAG_member, name: "in_execve", scope: !257, file: !258, line: 806, baseType: !7, size: 1, offset: 4609, flags: DIFlagBitField, extraData: i64 4608)
!691 = !DIDerivedType(tag: DW_TAG_member, name: "in_iowait", scope: !257, file: !258, line: 807, baseType: !7, size: 1, offset: 4610, flags: DIFlagBitField, extraData: i64 4608)
!692 = !DIDerivedType(tag: DW_TAG_member, name: "restore_sigmask", scope: !257, file: !258, line: 809, baseType: !7, size: 1, offset: 4611, flags: DIFlagBitField, extraData: i64 4608)
!693 = !DIDerivedType(tag: DW_TAG_member, name: "brk_randomized", scope: !257, file: !258, line: 815, baseType: !7, size: 1, offset: 4612, flags: DIFlagBitField, extraData: i64 4608)
!694 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_flags", scope: !257, file: !258, line: 831, baseType: !251, size: 64, offset: 4672)
!695 = !DIDerivedType(tag: DW_TAG_member, name: "restart_block", scope: !257, file: !258, line: 833, baseType: !696, size: 384, offset: 4736)
!696 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "restart_block", file: !12, line: 25, size: 384, elements: !697)
!697 = !{!698, !703}
!698 = !DIDerivedType(tag: DW_TAG_member, name: "fn", scope: !696, file: !12, line: 26, baseType: !699, size: 64)
!699 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !700, size: 64)
!700 = !DISubroutineType(types: !701)
!701 = !{!268, !702}
!702 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !696, size: 64)
!703 = !DIDerivedType(tag: DW_TAG_member, scope: !696, file: !12, line: 27, baseType: !704, size: 320, offset: 64)
!704 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !696, file: !12, line: 27, size: 320, elements: !705)
!705 = !{!706, !716, !743}
!706 = !DIDerivedType(tag: DW_TAG_member, name: "futex", scope: !704, file: !12, line: 36, baseType: !707, size: 320)
!707 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !12, line: 29, size: 320, elements: !708)
!708 = !{!709, !711, !712, !713, !714, !715}
!709 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr", scope: !707, file: !12, line: 30, baseType: !710, size: 64)
!710 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !208, size: 64)
!711 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !707, file: !12, line: 31, baseType: !208, size: 32, offset: 64)
!712 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !707, file: !12, line: 32, baseType: !208, size: 32, offset: 96)
!713 = !DIDerivedType(tag: DW_TAG_member, name: "bitset", scope: !707, file: !12, line: 33, baseType: !208, size: 32, offset: 128)
!714 = !DIDerivedType(tag: DW_TAG_member, name: "time", scope: !707, file: !12, line: 34, baseType: !309, size: 64, offset: 192)
!715 = !DIDerivedType(tag: DW_TAG_member, name: "uaddr2", scope: !707, file: !12, line: 35, baseType: !710, size: 64, offset: 256)
!716 = !DIDerivedType(tag: DW_TAG_member, name: "nanosleep", scope: !704, file: !12, line: 46, baseType: !717, size: 192)
!717 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !12, line: 38, size: 192, elements: !718)
!718 = !{!719, !720, !721, !742}
!719 = !DIDerivedType(tag: DW_TAG_member, name: "clockid", scope: !717, file: !12, line: 39, baseType: !391, size: 32)
!720 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !717, file: !12, line: 40, baseType: !11, size: 32, offset: 32)
!721 = !DIDerivedType(tag: DW_TAG_member, scope: !717, file: !12, line: 41, baseType: !722, size: 64, offset: 64)
!722 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !717, file: !12, line: 41, size: 64, elements: !723)
!723 = !{!724, !732}
!724 = !DIDerivedType(tag: DW_TAG_member, name: "rmtp", scope: !722, file: !12, line: 42, baseType: !725, size: 64)
!725 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !726, size: 64)
!726 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "__kernel_timespec", file: !727, line: 7, size: 128, elements: !728)
!727 = !DIFile(filename: "./include/uapi/linux/time_types.h", directory: "/home/lizy2001/genbc/linux")
!728 = !{!729, !731}
!729 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !726, file: !727, line: 8, baseType: !730, size: 64)
!730 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_time64_t", file: !393, line: 93, baseType: !341)
!731 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !726, file: !727, line: 9, baseType: !341, size: 64, offset: 64)
!732 = !DIDerivedType(tag: DW_TAG_member, name: "compat_rmtp", scope: !722, file: !12, line: 43, baseType: !733, size: 64)
!733 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !734, size: 64)
!734 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "old_timespec32", file: !735, line: 7, size: 64, elements: !736)
!735 = !DIFile(filename: "./include/vdso/time32.h", directory: "/home/lizy2001/genbc/linux")
!736 = !{!737, !741}
!737 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !734, file: !735, line: 8, baseType: !738, size: 32)
!738 = !DIDerivedType(tag: DW_TAG_typedef, name: "old_time32_t", file: !735, line: 5, baseType: !739)
!739 = !DIDerivedType(tag: DW_TAG_typedef, name: "s32", file: !73, line: 20, baseType: !740)
!740 = !DIDerivedType(tag: DW_TAG_typedef, name: "__s32", file: !75, line: 26, baseType: !106)
!741 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !734, file: !735, line: 9, baseType: !739, size: 32, offset: 32)
!742 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !717, file: !12, line: 45, baseType: !309, size: 64, offset: 128)
!743 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !704, file: !12, line: 54, baseType: !744, size: 256)
!744 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !704, file: !12, line: 48, size: 256, elements: !745)
!745 = !{!746, !749, !750, !751, !752}
!746 = !DIDerivedType(tag: DW_TAG_member, name: "ufds", scope: !744, file: !12, line: 49, baseType: !747, size: 64)
!747 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !748, size: 64)
!748 = !DICompositeType(tag: DW_TAG_structure_type, name: "pollfd", file: !12, line: 14, flags: DIFlagFwdDecl)
!749 = !DIDerivedType(tag: DW_TAG_member, name: "nfds", scope: !744, file: !12, line: 50, baseType: !106, size: 32, offset: 64)
!750 = !DIDerivedType(tag: DW_TAG_member, name: "has_timeout", scope: !744, file: !12, line: 51, baseType: !106, size: 32, offset: 96)
!751 = !DIDerivedType(tag: DW_TAG_member, name: "tv_sec", scope: !744, file: !12, line: 52, baseType: !251, size: 64, offset: 128)
!752 = !DIDerivedType(tag: DW_TAG_member, name: "tv_nsec", scope: !744, file: !12, line: 53, baseType: !251, size: 64, offset: 192)
!753 = !DIDerivedType(tag: DW_TAG_member, name: "pid", scope: !257, file: !258, line: 835, baseType: !754, size: 32, offset: 5120)
!754 = !DIDerivedType(tag: DW_TAG_typedef, name: "pid_t", file: !277, line: 22, baseType: !755)
!755 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_pid_t", file: !393, line: 28, baseType: !106)
!756 = !DIDerivedType(tag: DW_TAG_member, name: "tgid", scope: !257, file: !258, line: 836, baseType: !754, size: 32, offset: 5152)
!757 = !DIDerivedType(tag: DW_TAG_member, name: "stack_canary", scope: !257, file: !258, line: 840, baseType: !251, size: 64, offset: 5184)
!758 = !DIDerivedType(tag: DW_TAG_member, name: "real_parent", scope: !257, file: !258, line: 849, baseType: !256, size: 64, offset: 5248)
!759 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !257, file: !258, line: 852, baseType: !256, size: 64, offset: 5312)
!760 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !257, file: !258, line: 857, baseType: !302, size: 128, offset: 5376)
!761 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !257, file: !258, line: 858, baseType: !302, size: 128, offset: 5504)
!762 = !DIDerivedType(tag: DW_TAG_member, name: "group_leader", scope: !257, file: !258, line: 859, baseType: !256, size: 64, offset: 5632)
!763 = !DIDerivedType(tag: DW_TAG_member, name: "ptraced", scope: !257, file: !258, line: 867, baseType: !302, size: 128, offset: 5696)
!764 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_entry", scope: !257, file: !258, line: 868, baseType: !302, size: 128, offset: 5824)
!765 = !DIDerivedType(tag: DW_TAG_member, name: "thread_pid", scope: !257, file: !258, line: 871, baseType: !766, size: 64, offset: 5952)
!766 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !767, size: 64)
!767 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pid", file: !768, line: 59, size: 768, elements: !769)
!768 = !DIFile(filename: "./include/linux/pid.h", directory: "/home/lizy2001/genbc/linux")
!769 = !{!770, !771, !772, !773, !784, !785, !792, !801}
!770 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !767, file: !768, line: 61, baseType: !271, size: 32)
!771 = !DIDerivedType(tag: DW_TAG_member, name: "level", scope: !767, file: !768, line: 62, baseType: !7, size: 32, offset: 32)
!772 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !767, file: !768, line: 63, baseType: !517, offset: 64)
!773 = !DIDerivedType(tag: DW_TAG_member, name: "tasks", scope: !767, file: !768, line: 65, baseType: !774, size: 256, offset: 64)
!774 = !DICompositeType(tag: DW_TAG_array_type, baseType: !775, size: 256, elements: !564)
!775 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_head", file: !277, line: 182, size: 64, elements: !776)
!776 = !{!777}
!777 = !DIDerivedType(tag: DW_TAG_member, name: "first", scope: !775, file: !277, line: 183, baseType: !778, size: 64)
!778 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !779, size: 64)
!779 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "hlist_node", file: !277, line: 186, size: 128, elements: !780)
!780 = !{!781, !782}
!781 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !779, file: !277, line: 187, baseType: !778, size: 64)
!782 = !DIDerivedType(tag: DW_TAG_member, name: "pprev", scope: !779, file: !277, line: 187, baseType: !783, size: 64, offset: 64)
!783 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !778, size: 64)
!784 = !DIDerivedType(tag: DW_TAG_member, name: "inodes", scope: !767, file: !768, line: 66, baseType: !775, size: 64, offset: 320)
!785 = !DIDerivedType(tag: DW_TAG_member, name: "wait_pidfd", scope: !767, file: !768, line: 68, baseType: !786, size: 128, offset: 384)
!786 = !DIDerivedType(tag: DW_TAG_typedef, name: "wait_queue_head_t", file: !787, line: 40, baseType: !788)
!787 = !DIFile(filename: "./include/linux/wait.h", directory: "/home/lizy2001/genbc/linux")
!788 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wait_queue_head", file: !787, line: 36, size: 128, elements: !789)
!789 = !{!790, !791}
!790 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !788, file: !787, line: 37, baseType: !517)
!791 = !DIDerivedType(tag: DW_TAG_member, name: "head", scope: !788, file: !787, line: 38, baseType: !302, size: 128)
!792 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !767, file: !768, line: 69, baseType: !793, size: 128, align: 64, offset: 512)
!793 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "callback_head", file: !277, line: 216, size: 128, align: 64, elements: !794)
!794 = !{!795, !797}
!795 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !793, file: !277, line: 217, baseType: !796, size: 64)
!796 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !793, size: 64)
!797 = !DIDerivedType(tag: DW_TAG_member, name: "func", scope: !793, file: !277, line: 218, baseType: !798, size: 64, offset: 64)
!798 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !799, size: 64)
!799 = !DISubroutineType(types: !800)
!800 = !{null, !796}
!801 = !DIDerivedType(tag: DW_TAG_member, name: "numbers", scope: !767, file: !768, line: 70, baseType: !802, size: 128, offset: 640)
!802 = !DICompositeType(tag: DW_TAG_array_type, baseType: !803, size: 128, elements: !432)
!803 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "upid", file: !768, line: 54, size: 128, elements: !804)
!804 = !{!805, !806}
!805 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !803, file: !768, line: 55, baseType: !106, size: 32)
!806 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !803, file: !768, line: 56, baseType: !807, size: 64, offset: 64)
!807 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !808, size: 64)
!808 = !DICompositeType(tag: DW_TAG_structure_type, name: "pid_namespace", file: !768, line: 56, flags: DIFlagFwdDecl)
!809 = !DIDerivedType(tag: DW_TAG_member, name: "pid_links", scope: !257, file: !258, line: 872, baseType: !810, size: 512, offset: 6016)
!810 = !DICompositeType(tag: DW_TAG_array_type, baseType: !779, size: 512, elements: !564)
!811 = !DIDerivedType(tag: DW_TAG_member, name: "thread_group", scope: !257, file: !258, line: 873, baseType: !302, size: 128, offset: 6528)
!812 = !DIDerivedType(tag: DW_TAG_member, name: "thread_node", scope: !257, file: !258, line: 874, baseType: !302, size: 128, offset: 6656)
!813 = !DIDerivedType(tag: DW_TAG_member, name: "vfork_done", scope: !257, file: !258, line: 876, baseType: !814, size: 64, offset: 6784)
!814 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !628, size: 64)
!815 = !DIDerivedType(tag: DW_TAG_member, name: "set_child_tid", scope: !257, file: !258, line: 879, baseType: !816, size: 64, offset: 6848)
!816 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !106, size: 64)
!817 = !DIDerivedType(tag: DW_TAG_member, name: "clear_child_tid", scope: !257, file: !258, line: 882, baseType: !816, size: 64, offset: 6912)
!818 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !257, file: !258, line: 884, baseType: !309, size: 64, offset: 6976)
!819 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !257, file: !258, line: 885, baseType: !309, size: 64, offset: 7040)
!820 = !DIDerivedType(tag: DW_TAG_member, name: "gtime", scope: !257, file: !258, line: 890, baseType: !309, size: 64, offset: 7104)
!821 = !DIDerivedType(tag: DW_TAG_member, name: "prev_cputime", scope: !257, file: !258, line: 891, baseType: !822, size: 128, offset: 7168)
!822 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "prev_cputime", file: !258, line: 242, size: 128, elements: !823)
!823 = !{!824, !825, !826}
!824 = !DIDerivedType(tag: DW_TAG_member, name: "utime", scope: !822, file: !258, line: 244, baseType: !309, size: 64)
!825 = !DIDerivedType(tag: DW_TAG_member, name: "stime", scope: !822, file: !258, line: 245, baseType: !309, size: 64, offset: 64)
!826 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !822, file: !258, line: 246, baseType: !230, offset: 128)
!827 = !DIDerivedType(tag: DW_TAG_member, name: "nvcsw", scope: !257, file: !258, line: 900, baseType: !251, size: 64, offset: 7296)
!828 = !DIDerivedType(tag: DW_TAG_member, name: "nivcsw", scope: !257, file: !258, line: 901, baseType: !251, size: 64, offset: 7360)
!829 = !DIDerivedType(tag: DW_TAG_member, name: "start_time", scope: !257, file: !258, line: 904, baseType: !309, size: 64, offset: 7424)
!830 = !DIDerivedType(tag: DW_TAG_member, name: "start_boottime", scope: !257, file: !258, line: 907, baseType: !309, size: 64, offset: 7488)
!831 = !DIDerivedType(tag: DW_TAG_member, name: "min_flt", scope: !257, file: !258, line: 910, baseType: !251, size: 64, offset: 7552)
!832 = !DIDerivedType(tag: DW_TAG_member, name: "maj_flt", scope: !257, file: !258, line: 911, baseType: !251, size: 64, offset: 7616)
!833 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers", scope: !257, file: !258, line: 914, baseType: !834, size: 640, offset: 7680)
!834 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers", file: !835, line: 123, size: 640, elements: !836)
!835 = !DIFile(filename: "./include/linux/posix-timers.h", directory: "/home/lizy2001/genbc/linux")
!836 = !{!837, !845, !846}
!837 = !DIDerivedType(tag: DW_TAG_member, name: "bases", scope: !834, file: !835, line: 124, baseType: !838, size: 576)
!838 = !DICompositeType(tag: DW_TAG_array_type, baseType: !839, size: 576, elements: !843)
!839 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimer_base", file: !835, line: 108, size: 192, elements: !840)
!840 = !{!841, !842}
!841 = !DIDerivedType(tag: DW_TAG_member, name: "nextevt", scope: !839, file: !835, line: 109, baseType: !309, size: 64)
!842 = !DIDerivedType(tag: DW_TAG_member, name: "tqhead", scope: !839, file: !835, line: 110, baseType: !406, size: 128, offset: 64)
!843 = !{!844}
!844 = !DISubrange(count: 3)
!845 = !DIDerivedType(tag: DW_TAG_member, name: "timers_active", scope: !834, file: !835, line: 125, baseType: !7, size: 32, offset: 576)
!846 = !DIDerivedType(tag: DW_TAG_member, name: "expiry_active", scope: !834, file: !835, line: 126, baseType: !7, size: 32, offset: 608)
!847 = !DIDerivedType(tag: DW_TAG_member, name: "posix_cputimers_work", scope: !257, file: !258, line: 917, baseType: !848, size: 192, offset: 8320)
!848 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "posix_cputimers_work", file: !835, line: 134, size: 192, elements: !849)
!849 = !{!850, !851}
!850 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !848, file: !835, line: 135, baseType: !793, size: 128, align: 64)
!851 = !DIDerivedType(tag: DW_TAG_member, name: "scheduled", scope: !848, file: !835, line: 136, baseType: !7, size: 32, offset: 128)
!852 = !DIDerivedType(tag: DW_TAG_member, name: "ptracer_cred", scope: !257, file: !258, line: 923, baseType: !853, size: 64, offset: 8512)
!853 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !854, size: 64)
!854 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !855)
!855 = !DICompositeType(tag: DW_TAG_structure_type, name: "cred", file: !258, line: 923, flags: DIFlagFwdDecl)
!856 = !DIDerivedType(tag: DW_TAG_member, name: "real_cred", scope: !257, file: !258, line: 926, baseType: !853, size: 64, offset: 8576)
!857 = !DIDerivedType(tag: DW_TAG_member, name: "cred", scope: !257, file: !258, line: 929, baseType: !853, size: 64, offset: 8640)
!858 = !DIDerivedType(tag: DW_TAG_member, name: "cached_requested_key", scope: !257, file: !258, line: 933, baseType: !859, size: 64, offset: 8704)
!859 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !860, size: 64)
!860 = !DICompositeType(tag: DW_TAG_structure_type, name: "key", file: !258, line: 933, flags: DIFlagFwdDecl)
!861 = !DIDerivedType(tag: DW_TAG_member, name: "comm", scope: !257, file: !258, line: 943, baseType: !862, size: 128, offset: 8768)
!862 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 128, elements: !863)
!863 = !{!864}
!864 = !DISubrange(count: 16)
!865 = !DIDerivedType(tag: DW_TAG_member, name: "nameidata", scope: !257, file: !258, line: 945, baseType: !866, size: 64, offset: 8896)
!866 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !867, size: 64)
!867 = !DICompositeType(tag: DW_TAG_structure_type, name: "nameidata", file: !258, line: 49, flags: DIFlagFwdDecl)
!868 = !DIDerivedType(tag: DW_TAG_member, name: "fs", scope: !257, file: !258, line: 956, baseType: !869, size: 64, offset: 8960)
!869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !870, size: 64)
!870 = !DICompositeType(tag: DW_TAG_structure_type, name: "fs_struct", file: !258, line: 45, flags: DIFlagFwdDecl)
!871 = !DIDerivedType(tag: DW_TAG_member, name: "files", scope: !257, file: !258, line: 959, baseType: !872, size: 64, offset: 9024)
!872 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !873, size: 64)
!873 = !DICompositeType(tag: DW_TAG_structure_type, name: "files_struct", file: !258, line: 959, flags: DIFlagFwdDecl)
!874 = !DIDerivedType(tag: DW_TAG_member, name: "io_uring", scope: !257, file: !258, line: 962, baseType: !875, size: 64, offset: 9088)
!875 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !876, size: 64)
!876 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_uring_task", file: !258, line: 66, flags: DIFlagFwdDecl)
!877 = !DIDerivedType(tag: DW_TAG_member, name: "nsproxy", scope: !257, file: !258, line: 966, baseType: !878, size: 64, offset: 9152)
!878 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !879, size: 64)
!879 = !DICompositeType(tag: DW_TAG_structure_type, name: "nsproxy", file: !258, line: 50, flags: DIFlagFwdDecl)
!880 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !257, file: !258, line: 969, baseType: !881, size: 64, offset: 9216)
!881 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !882, size: 64)
!882 = !DICompositeType(tag: DW_TAG_structure_type, name: "signal_struct", file: !835, line: 223, flags: DIFlagFwdDecl)
!883 = !DIDerivedType(tag: DW_TAG_member, name: "sighand", scope: !257, file: !258, line: 970, baseType: !884, size: 64, offset: 9280)
!884 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !885, size: 64)
!885 = !DICompositeType(tag: DW_TAG_structure_type, name: "sighand_struct", file: !258, line: 62, flags: DIFlagFwdDecl)
!886 = !DIDerivedType(tag: DW_TAG_member, name: "blocked", scope: !257, file: !258, line: 971, baseType: !887, size: 64, offset: 9344)
!887 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigset_t", file: !888, line: 25, baseType: !889)
!888 = !DIFile(filename: "./arch/x86/include/asm/signal.h", directory: "/home/lizy2001/genbc/linux")
!889 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !888, line: 23, size: 64, elements: !890)
!890 = !{!891}
!891 = !DIDerivedType(tag: DW_TAG_member, name: "sig", scope: !889, file: !888, line: 24, baseType: !431, size: 64)
!892 = !DIDerivedType(tag: DW_TAG_member, name: "real_blocked", scope: !257, file: !258, line: 972, baseType: !887, size: 64, offset: 9408)
!893 = !DIDerivedType(tag: DW_TAG_member, name: "saved_sigmask", scope: !257, file: !258, line: 974, baseType: !887, size: 64, offset: 9472)
!894 = !DIDerivedType(tag: DW_TAG_member, name: "pending", scope: !257, file: !258, line: 975, baseType: !895, size: 192, offset: 9536)
!895 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sigpending", file: !896, line: 30, size: 192, elements: !897)
!896 = !DIFile(filename: "./include/linux/signal_types.h", directory: "/home/lizy2001/genbc/linux")
!897 = !{!898, !899}
!898 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !895, file: !896, line: 31, baseType: !302, size: 128)
!899 = !DIDerivedType(tag: DW_TAG_member, name: "signal", scope: !895, file: !896, line: 32, baseType: !887, size: 64, offset: 128)
!900 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_sp", scope: !257, file: !258, line: 976, baseType: !251, size: 64, offset: 9728)
!901 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_size", scope: !257, file: !258, line: 977, baseType: !902, size: 64, offset: 9792)
!902 = !DIDerivedType(tag: DW_TAG_typedef, name: "size_t", file: !277, line: 55, baseType: !903)
!903 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_size_t", file: !393, line: 72, baseType: !904)
!904 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ulong_t", file: !393, line: 16, baseType: !251)
!905 = !DIDerivedType(tag: DW_TAG_member, name: "sas_ss_flags", scope: !257, file: !258, line: 978, baseType: !7, size: 32, offset: 9856)
!906 = !DIDerivedType(tag: DW_TAG_member, name: "task_works", scope: !257, file: !258, line: 980, baseType: !796, size: 64, offset: 9920)
!907 = !DIDerivedType(tag: DW_TAG_member, name: "seccomp", scope: !257, file: !258, line: 989, baseType: !908, size: 128, offset: 9984)
!908 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp", file: !909, line: 35, size: 128, elements: !910)
!909 = !DIFile(filename: "./include/linux/seccomp.h", directory: "/home/lizy2001/genbc/linux")
!910 = !{!911, !912, !913}
!911 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !908, file: !909, line: 36, baseType: !106, size: 32)
!912 = !DIDerivedType(tag: DW_TAG_member, name: "filter_count", scope: !908, file: !909, line: 37, baseType: !276, size: 32, offset: 32)
!913 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !908, file: !909, line: 38, baseType: !914, size: 64, offset: 64)
!914 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !915, size: 64)
!915 = !DICompositeType(tag: DW_TAG_structure_type, name: "seccomp_filter", file: !909, line: 23, flags: DIFlagFwdDecl)
!916 = !DIDerivedType(tag: DW_TAG_member, name: "parent_exec_id", scope: !257, file: !258, line: 992, baseType: !309, size: 64, offset: 10112)
!917 = !DIDerivedType(tag: DW_TAG_member, name: "self_exec_id", scope: !257, file: !258, line: 993, baseType: !309, size: 64, offset: 10176)
!918 = !DIDerivedType(tag: DW_TAG_member, name: "alloc_lock", scope: !257, file: !258, line: 996, baseType: !517, offset: 10240)
!919 = !DIDerivedType(tag: DW_TAG_member, name: "pi_lock", scope: !257, file: !258, line: 999, baseType: !230, offset: 10240)
!920 = !DIDerivedType(tag: DW_TAG_member, name: "wake_q", scope: !257, file: !258, line: 1001, baseType: !921, size: 64, offset: 10240)
!921 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wake_q_node", file: !258, line: 636, size: 64, elements: !922)
!922 = !{!923}
!923 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !921, file: !258, line: 637, baseType: !924, size: 64)
!924 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !921, size: 64)
!925 = !DIDerivedType(tag: DW_TAG_member, name: "pi_waiters", scope: !257, file: !258, line: 1005, baseType: !240, size: 128, offset: 10304)
!926 = !DIDerivedType(tag: DW_TAG_member, name: "pi_top_task", scope: !257, file: !258, line: 1007, baseType: !256, size: 64, offset: 10432)
!927 = !DIDerivedType(tag: DW_TAG_member, name: "pi_blocked_on", scope: !257, file: !258, line: 1009, baseType: !928, size: 64, offset: 10496)
!928 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !929, size: 64)
!929 = !DICompositeType(tag: DW_TAG_structure_type, name: "rt_mutex_waiter", file: !258, line: 1009, flags: DIFlagFwdDecl)
!930 = !DIDerivedType(tag: DW_TAG_member, name: "journal_info", scope: !257, file: !258, line: 1043, baseType: !77, size: 64, offset: 10560)
!931 = !DIDerivedType(tag: DW_TAG_member, name: "bio_list", scope: !257, file: !258, line: 1046, baseType: !932, size: 64, offset: 10624)
!932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !933, size: 64)
!933 = !DICompositeType(tag: DW_TAG_structure_type, name: "bio_list", file: !258, line: 41, flags: DIFlagFwdDecl)
!934 = !DIDerivedType(tag: DW_TAG_member, name: "plug", scope: !257, file: !258, line: 1050, baseType: !935, size: 64, offset: 10688)
!935 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !936, size: 64)
!936 = !DICompositeType(tag: DW_TAG_structure_type, name: "blk_plug", file: !258, line: 42, flags: DIFlagFwdDecl)
!937 = !DIDerivedType(tag: DW_TAG_member, name: "reclaim_state", scope: !257, file: !258, line: 1054, baseType: !938, size: 64, offset: 10752)
!938 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !939, size: 64)
!939 = !DICompositeType(tag: DW_TAG_structure_type, name: "reclaim_state", file: !258, line: 55, flags: DIFlagFwdDecl)
!940 = !DIDerivedType(tag: DW_TAG_member, name: "backing_dev_info", scope: !257, file: !258, line: 1056, baseType: !941, size: 64, offset: 10816)
!941 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !942, size: 64)
!942 = !DICompositeType(tag: DW_TAG_structure_type, name: "backing_dev_info", file: !258, line: 40, flags: DIFlagFwdDecl)
!943 = !DIDerivedType(tag: DW_TAG_member, name: "io_context", scope: !257, file: !258, line: 1058, baseType: !944, size: 64, offset: 10880)
!944 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !945, size: 64)
!945 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_context", file: !258, line: 47, flags: DIFlagFwdDecl)
!946 = !DIDerivedType(tag: DW_TAG_member, name: "capture_control", scope: !257, file: !258, line: 1061, baseType: !947, size: 64, offset: 10944)
!947 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !948, size: 64)
!948 = !DICompositeType(tag: DW_TAG_structure_type, name: "capture_control", file: !258, line: 43, flags: DIFlagFwdDecl)
!949 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_message", scope: !257, file: !258, line: 1064, baseType: !251, size: 64, offset: 11008)
!950 = !DIDerivedType(tag: DW_TAG_member, name: "last_siginfo", scope: !257, file: !258, line: 1065, baseType: !951, size: 64, offset: 11072)
!951 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !952, size: 64)
!952 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_siginfo_t", file: !896, line: 14, baseType: !953)
!953 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernel_siginfo", file: !896, line: 12, size: 384, elements: !954)
!954 = !{!955}
!955 = !DIDerivedType(tag: DW_TAG_member, scope: !953, file: !896, line: 13, baseType: !956, size: 384)
!956 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !953, file: !896, line: 13, size: 384, elements: !957)
!957 = !{!958, !959, !960, !961}
!958 = !DIDerivedType(tag: DW_TAG_member, name: "si_signo", scope: !956, file: !896, line: 13, baseType: !106, size: 32)
!959 = !DIDerivedType(tag: DW_TAG_member, name: "si_errno", scope: !956, file: !896, line: 13, baseType: !106, size: 32, offset: 32)
!960 = !DIDerivedType(tag: DW_TAG_member, name: "si_code", scope: !956, file: !896, line: 13, baseType: !106, size: 32, offset: 64)
!961 = !DIDerivedType(tag: DW_TAG_member, name: "_sifields", scope: !956, file: !896, line: 13, baseType: !962, size: 256, offset: 128)
!962 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "__sifields", file: !963, line: 32, size: 256, elements: !964)
!963 = !DIFile(filename: "./include/uapi/asm-generic/siginfo.h", directory: "/home/lizy2001/genbc/linux")
!964 = !{!965, !971, !984, !990, !1000, !1020, !1025}
!965 = !DIDerivedType(tag: DW_TAG_member, name: "_kill", scope: !962, file: !963, line: 37, baseType: !966, size: 64)
!966 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 34, size: 64, elements: !967)
!967 = !{!968, !969}
!968 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !966, file: !963, line: 35, baseType: !755, size: 32)
!969 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !966, file: !963, line: 36, baseType: !970, size: 32, offset: 32)
!970 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_uid32_t", file: !393, line: 49, baseType: !7)
!971 = !DIDerivedType(tag: DW_TAG_member, name: "_timer", scope: !962, file: !963, line: 45, baseType: !972, size: 192)
!972 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 40, size: 192, elements: !973)
!973 = !{!974, !976, !977, !983}
!974 = !DIDerivedType(tag: DW_TAG_member, name: "_tid", scope: !972, file: !963, line: 41, baseType: !975, size: 32)
!975 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_timer_t", file: !393, line: 95, baseType: !106)
!976 = !DIDerivedType(tag: DW_TAG_member, name: "_overrun", scope: !972, file: !963, line: 42, baseType: !106, size: 32, offset: 32)
!977 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !972, file: !963, line: 43, baseType: !978, size: 64, offset: 64)
!978 = !DIDerivedType(tag: DW_TAG_typedef, name: "sigval_t", file: !963, line: 11, baseType: !979)
!979 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "sigval", file: !963, line: 8, size: 64, elements: !980)
!980 = !{!981, !982}
!981 = !DIDerivedType(tag: DW_TAG_member, name: "sival_int", scope: !979, file: !963, line: 9, baseType: !106, size: 32)
!982 = !DIDerivedType(tag: DW_TAG_member, name: "sival_ptr", scope: !979, file: !963, line: 10, baseType: !77, size: 64)
!983 = !DIDerivedType(tag: DW_TAG_member, name: "_sys_private", scope: !972, file: !963, line: 44, baseType: !106, size: 32, offset: 128)
!984 = !DIDerivedType(tag: DW_TAG_member, name: "_rt", scope: !962, file: !963, line: 52, baseType: !985, size: 128)
!985 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 48, size: 128, elements: !986)
!986 = !{!987, !988, !989}
!987 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !985, file: !963, line: 49, baseType: !755, size: 32)
!988 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !985, file: !963, line: 50, baseType: !970, size: 32, offset: 32)
!989 = !DIDerivedType(tag: DW_TAG_member, name: "_sigval", scope: !985, file: !963, line: 51, baseType: !978, size: 64, offset: 64)
!990 = !DIDerivedType(tag: DW_TAG_member, name: "_sigchld", scope: !962, file: !963, line: 61, baseType: !991, size: 256)
!991 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 55, size: 256, elements: !992)
!992 = !{!993, !994, !995, !996, !999}
!993 = !DIDerivedType(tag: DW_TAG_member, name: "_pid", scope: !991, file: !963, line: 56, baseType: !755, size: 32)
!994 = !DIDerivedType(tag: DW_TAG_member, name: "_uid", scope: !991, file: !963, line: 57, baseType: !970, size: 32, offset: 32)
!995 = !DIDerivedType(tag: DW_TAG_member, name: "_status", scope: !991, file: !963, line: 58, baseType: !106, size: 32, offset: 64)
!996 = !DIDerivedType(tag: DW_TAG_member, name: "_utime", scope: !991, file: !963, line: 59, baseType: !997, size: 64, offset: 128)
!997 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_clock_t", file: !393, line: 94, baseType: !998)
!998 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_long_t", file: !393, line: 15, baseType: !268)
!999 = !DIDerivedType(tag: DW_TAG_member, name: "_stime", scope: !991, file: !963, line: 60, baseType: !997, size: 64, offset: 192)
!1000 = !DIDerivedType(tag: DW_TAG_member, name: "_sigfault", scope: !962, file: !963, line: 95, baseType: !1001, size: 256)
!1001 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 64, size: 256, elements: !1002)
!1002 = !{!1003, !1004}
!1003 = !DIDerivedType(tag: DW_TAG_member, name: "_addr", scope: !1001, file: !963, line: 65, baseType: !77, size: 64)
!1004 = !DIDerivedType(tag: DW_TAG_member, scope: !1001, file: !963, line: 77, baseType: !1005, size: 192, offset: 64)
!1005 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1001, file: !963, line: 77, size: 192, elements: !1006)
!1006 = !{!1007, !1008, !1015}
!1007 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_lsb", scope: !1005, file: !963, line: 82, baseType: !614, size: 16)
!1008 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_bnd", scope: !1005, file: !963, line: 88, baseType: !1009, size: 192)
!1009 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !963, line: 84, size: 192, elements: !1010)
!1010 = !{!1011, !1013, !1014}
!1011 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_bnd", scope: !1009, file: !963, line: 85, baseType: !1012, size: 64)
!1012 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 64, elements: !387)
!1013 = !DIDerivedType(tag: DW_TAG_member, name: "_lower", scope: !1009, file: !963, line: 86, baseType: !77, size: 64, offset: 64)
!1014 = !DIDerivedType(tag: DW_TAG_member, name: "_upper", scope: !1009, file: !963, line: 87, baseType: !77, size: 64, offset: 128)
!1015 = !DIDerivedType(tag: DW_TAG_member, name: "_addr_pkey", scope: !1005, file: !963, line: 93, baseType: !1016, size: 96)
!1016 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1005, file: !963, line: 90, size: 96, elements: !1017)
!1017 = !{!1018, !1019}
!1018 = !DIDerivedType(tag: DW_TAG_member, name: "_dummy_pkey", scope: !1016, file: !963, line: 91, baseType: !1012, size: 64)
!1019 = !DIDerivedType(tag: DW_TAG_member, name: "_pkey", scope: !1016, file: !963, line: 92, baseType: !209, size: 32, offset: 64)
!1020 = !DIDerivedType(tag: DW_TAG_member, name: "_sigpoll", scope: !962, file: !963, line: 101, baseType: !1021, size: 128)
!1021 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 98, size: 128, elements: !1022)
!1022 = !{!1023, !1024}
!1023 = !DIDerivedType(tag: DW_TAG_member, name: "_band", scope: !1021, file: !963, line: 99, baseType: !268, size: 64)
!1024 = !DIDerivedType(tag: DW_TAG_member, name: "_fd", scope: !1021, file: !963, line: 100, baseType: !106, size: 32, offset: 64)
!1025 = !DIDerivedType(tag: DW_TAG_member, name: "_sigsys", scope: !962, file: !963, line: 108, baseType: !1026, size: 128)
!1026 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !962, file: !963, line: 104, size: 128, elements: !1027)
!1027 = !{!1028, !1029, !1030}
!1028 = !DIDerivedType(tag: DW_TAG_member, name: "_call_addr", scope: !1026, file: !963, line: 105, baseType: !77, size: 64)
!1029 = !DIDerivedType(tag: DW_TAG_member, name: "_syscall", scope: !1026, file: !963, line: 106, baseType: !106, size: 32, offset: 64)
!1030 = !DIDerivedType(tag: DW_TAG_member, name: "_arch", scope: !1026, file: !963, line: 107, baseType: !7, size: 32, offset: 96)
!1031 = !DIDerivedType(tag: DW_TAG_member, name: "ioac", scope: !257, file: !258, line: 1067, baseType: !1032, offset: 11136)
!1032 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "task_io_accounting", file: !1033, line: 12, elements: !238)
!1033 = !DIFile(filename: "./include/linux/task_io_accounting.h", directory: "/home/lizy2001/genbc/linux")
!1034 = !DIDerivedType(tag: DW_TAG_member, name: "robust_list", scope: !257, file: !258, line: 1099, baseType: !1035, size: 64, offset: 11136)
!1035 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1036, size: 64)
!1036 = !DICompositeType(tag: DW_TAG_structure_type, name: "robust_list_head", file: !258, line: 56, flags: DIFlagFwdDecl)
!1037 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_list", scope: !257, file: !258, line: 1103, baseType: !302, size: 128, offset: 11200)
!1038 = !DIDerivedType(tag: DW_TAG_member, name: "pi_state_cache", scope: !257, file: !258, line: 1104, baseType: !1039, size: 64, offset: 11328)
!1039 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1040, size: 64)
!1040 = !DICompositeType(tag: DW_TAG_structure_type, name: "futex_pi_state", file: !258, line: 46, flags: DIFlagFwdDecl)
!1041 = !DIDerivedType(tag: DW_TAG_member, name: "futex_exit_mutex", scope: !257, file: !258, line: 1105, baseType: !582, size: 192, offset: 11392)
!1042 = !DIDerivedType(tag: DW_TAG_member, name: "futex_state", scope: !257, file: !258, line: 1106, baseType: !7, size: 32, offset: 11584)
!1043 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_ctxp", scope: !257, file: !258, line: 1109, baseType: !1044, size: 128, offset: 11648)
!1044 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1045, size: 128, elements: !1047)
!1045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1046, size: 64)
!1046 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event_context", file: !258, line: 51, flags: DIFlagFwdDecl)
!1047 = !{!1048}
!1048 = !DISubrange(count: 2)
!1049 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_mutex", scope: !257, file: !258, line: 1110, baseType: !582, size: 192, offset: 11776)
!1050 = !DIDerivedType(tag: DW_TAG_member, name: "perf_event_list", scope: !257, file: !258, line: 1111, baseType: !302, size: 128, offset: 11968)
!1051 = !DIDerivedType(tag: DW_TAG_member, name: "rseq", scope: !257, file: !258, line: 1173, baseType: !1052, size: 64, offset: 12096)
!1052 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1053, size: 64)
!1053 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "rseq", file: !1054, line: 62, size: 256, align: 256, elements: !1055)
!1054 = !DIFile(filename: "./include/uapi/linux/rseq.h", directory: "/home/lizy2001/genbc/linux")
!1055 = !{!1056, !1057, !1058, !1063}
!1056 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id_start", scope: !1053, file: !1054, line: 75, baseType: !209, size: 32)
!1057 = !DIDerivedType(tag: DW_TAG_member, name: "cpu_id", scope: !1053, file: !1054, line: 90, baseType: !209, size: 32, offset: 32)
!1058 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_cs", scope: !1053, file: !1054, line: 124, baseType: !1059, size: 64, offset: 64)
!1059 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1053, file: !1054, line: 109, size: 64, elements: !1060)
!1060 = !{!1061, !1062}
!1061 = !DIDerivedType(tag: DW_TAG_member, name: "ptr64", scope: !1059, file: !1054, line: 110, baseType: !310, size: 64)
!1062 = !DIDerivedType(tag: DW_TAG_member, name: "ptr", scope: !1059, file: !1054, line: 112, baseType: !310, size: 64)
!1063 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1053, file: !1054, line: 144, baseType: !209, size: 32, offset: 128)
!1064 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_sig", scope: !257, file: !258, line: 1174, baseType: !208, size: 32, offset: 12160)
!1065 = !DIDerivedType(tag: DW_TAG_member, name: "rseq_event_mask", scope: !257, file: !258, line: 1179, baseType: !251, size: 64, offset: 12224)
!1066 = !DIDerivedType(tag: DW_TAG_member, name: "tlb_ubc", scope: !257, file: !258, line: 1182, baseType: !1067, size: 128, offset: 12288)
!1067 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "tlbflush_unmap_batch", file: !560, line: 76, size: 128, elements: !1068)
!1068 = !{!1069, !1074, !1075}
!1069 = !DIDerivedType(tag: DW_TAG_member, name: "arch", scope: !1067, file: !560, line: 85, baseType: !1070, size: 64)
!1070 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "arch_tlbflush_unmap_batch", file: !1071, line: 7, size: 64, elements: !1072)
!1071 = !DIFile(filename: "./arch/x86/include/asm/tlbbatch.h", directory: "/home/lizy2001/genbc/linux")
!1072 = !{!1073}
!1073 = !DIDerivedType(tag: DW_TAG_member, name: "cpumask", scope: !1070, file: !1071, line: 12, baseType: !428, size: 64)
!1074 = !DIDerivedType(tag: DW_TAG_member, name: "flush_required", scope: !1067, file: !560, line: 88, baseType: !651, size: 8, offset: 64)
!1075 = !DIDerivedType(tag: DW_TAG_member, name: "writable", scope: !1067, file: !560, line: 95, baseType: !651, size: 8, offset: 72)
!1076 = !DIDerivedType(tag: DW_TAG_member, scope: !257, file: !258, line: 1184, baseType: !1077, size: 128, offset: 12416)
!1077 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !257, file: !258, line: 1184, size: 128, elements: !1078)
!1078 = !{!1079, !1080}
!1079 = !DIDerivedType(tag: DW_TAG_member, name: "rcu_users", scope: !1077, file: !258, line: 1185, baseType: !271, size: 32)
!1080 = !DIDerivedType(tag: DW_TAG_member, name: "rcu", scope: !1077, file: !258, line: 1186, baseType: !793, size: 128, align: 64)
!1081 = !DIDerivedType(tag: DW_TAG_member, name: "splice_pipe", scope: !257, file: !258, line: 1190, baseType: !1082, size: 64, offset: 12544)
!1082 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1083, size: 64)
!1083 = !DICompositeType(tag: DW_TAG_structure_type, name: "pipe_inode_info", file: !258, line: 53, flags: DIFlagFwdDecl)
!1084 = !DIDerivedType(tag: DW_TAG_member, name: "task_frag", scope: !257, file: !258, line: 1192, baseType: !1085, size: 128, offset: 12608)
!1085 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page_frag", file: !560, line: 64, size: 128, elements: !1086)
!1086 = !{!1087, !1180, !1181}
!1087 = !DIDerivedType(tag: DW_TAG_member, name: "page", scope: !1085, file: !560, line: 65, baseType: !1088, size: 64)
!1088 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1089, size: 64)
!1089 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "page", file: !441, line: 68, size: 512, align: 128, elements: !1090)
!1090 = !{!1091, !1092, !1172, !1179}
!1091 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1089, file: !441, line: 69, baseType: !251, size: 64)
!1092 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !441, line: 77, baseType: !1093, size: 320, offset: 64)
!1093 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !441, line: 77, size: 320, elements: !1094)
!1094 = !{!1095, !1104, !1109, !1137, !1145, !1151, !1164, !1171}
!1095 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 78, baseType: !1096, size: 320)
!1096 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 78, size: 320, elements: !1097)
!1097 = !{!1098, !1099, !1102, !1103}
!1098 = !DIDerivedType(tag: DW_TAG_member, name: "lru", scope: !1096, file: !441, line: 84, baseType: !302, size: 128)
!1099 = !DIDerivedType(tag: DW_TAG_member, name: "mapping", scope: !1096, file: !441, line: 86, baseType: !1100, size: 64, offset: 128)
!1100 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1101, size: 64)
!1101 = !DICompositeType(tag: DW_TAG_structure_type, name: "address_space", file: !441, line: 26, flags: DIFlagFwdDecl)
!1102 = !DIDerivedType(tag: DW_TAG_member, name: "index", scope: !1096, file: !441, line: 87, baseType: !251, size: 64, offset: 192)
!1103 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1096, file: !441, line: 94, baseType: !251, size: 64, offset: 256)
!1104 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 96, baseType: !1105, size: 64)
!1105 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 96, size: 64, elements: !1106)
!1106 = !{!1107}
!1107 = !DIDerivedType(tag: DW_TAG_member, name: "dma_addr", scope: !1105, file: !441, line: 101, baseType: !1108, size: 64)
!1108 = !DIDerivedType(tag: DW_TAG_typedef, name: "dma_addr_t", file: !277, line: 143, baseType: !309)
!1109 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 103, baseType: !1110, size: 320)
!1110 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 103, size: 320, elements: !1111)
!1111 = !{!1112, !1122, !1125, !1126}
!1112 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !441, line: 104, baseType: !1113, size: 128)
!1113 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !441, line: 104, size: 128, elements: !1114)
!1114 = !{!1115, !1116}
!1115 = !DIDerivedType(tag: DW_TAG_member, name: "slab_list", scope: !1113, file: !441, line: 105, baseType: !302, size: 128)
!1116 = !DIDerivedType(tag: DW_TAG_member, scope: !1113, file: !441, line: 106, baseType: !1117, size: 128)
!1117 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1113, file: !441, line: 106, size: 128, elements: !1118)
!1118 = !{!1119, !1120, !1121}
!1119 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1117, file: !441, line: 107, baseType: !1088, size: 64)
!1120 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1117, file: !441, line: 109, baseType: !106, size: 32, offset: 64)
!1121 = !DIDerivedType(tag: DW_TAG_member, name: "pobjects", scope: !1117, file: !441, line: 110, baseType: !106, size: 32, offset: 96)
!1122 = !DIDerivedType(tag: DW_TAG_member, name: "slab_cache", scope: !1110, file: !441, line: 117, baseType: !1123, size: 64, offset: 128)
!1123 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1124, size: 64)
!1124 = !DICompositeType(tag: DW_TAG_structure_type, name: "kmem_cache", file: !441, line: 117, flags: DIFlagFwdDecl)
!1125 = !DIDerivedType(tag: DW_TAG_member, name: "freelist", scope: !1110, file: !441, line: 119, baseType: !77, size: 64, offset: 192)
!1126 = !DIDerivedType(tag: DW_TAG_member, scope: !1110, file: !441, line: 120, baseType: !1127, size: 64, offset: 256)
!1127 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1110, file: !441, line: 120, size: 64, elements: !1128)
!1128 = !{!1129, !1130, !1131}
!1129 = !DIDerivedType(tag: DW_TAG_member, name: "s_mem", scope: !1127, file: !441, line: 121, baseType: !77, size: 64)
!1130 = !DIDerivedType(tag: DW_TAG_member, name: "counters", scope: !1127, file: !441, line: 122, baseType: !251, size: 64)
!1131 = !DIDerivedType(tag: DW_TAG_member, scope: !1127, file: !441, line: 123, baseType: !1132, size: 32)
!1132 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1127, file: !441, line: 123, size: 32, elements: !1133)
!1133 = !{!1134, !1135, !1136}
!1134 = !DIDerivedType(tag: DW_TAG_member, name: "inuse", scope: !1132, file: !441, line: 124, baseType: !7, size: 16, flags: DIFlagBitField, extraData: i64 0)
!1135 = !DIDerivedType(tag: DW_TAG_member, name: "objects", scope: !1132, file: !441, line: 125, baseType: !7, size: 15, offset: 16, flags: DIFlagBitField, extraData: i64 0)
!1136 = !DIDerivedType(tag: DW_TAG_member, name: "frozen", scope: !1132, file: !441, line: 126, baseType: !7, size: 1, offset: 31, flags: DIFlagBitField, extraData: i64 0)
!1137 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 130, baseType: !1138, size: 192)
!1138 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 130, size: 192, elements: !1139)
!1139 = !{!1140, !1141, !1142, !1143, !1144}
!1140 = !DIDerivedType(tag: DW_TAG_member, name: "compound_head", scope: !1138, file: !441, line: 131, baseType: !251, size: 64)
!1141 = !DIDerivedType(tag: DW_TAG_member, name: "compound_dtor", scope: !1138, file: !441, line: 134, baseType: !80, size: 8, offset: 64)
!1142 = !DIDerivedType(tag: DW_TAG_member, name: "compound_order", scope: !1138, file: !441, line: 135, baseType: !80, size: 8, offset: 72)
!1143 = !DIDerivedType(tag: DW_TAG_member, name: "compound_mapcount", scope: !1138, file: !441, line: 136, baseType: !276, size: 32, offset: 96)
!1144 = !DIDerivedType(tag: DW_TAG_member, name: "compound_nr", scope: !1138, file: !441, line: 137, baseType: !7, size: 32, offset: 128)
!1145 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 139, baseType: !1146, size: 256)
!1146 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 139, size: 256, elements: !1147)
!1147 = !{!1148, !1149, !1150}
!1148 = !DIDerivedType(tag: DW_TAG_member, name: "_compound_pad_1", scope: !1146, file: !441, line: 140, baseType: !251, size: 64)
!1149 = !DIDerivedType(tag: DW_TAG_member, name: "hpage_pinned_refcount", scope: !1146, file: !441, line: 141, baseType: !276, size: 32, offset: 64)
!1150 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_list", scope: !1146, file: !441, line: 143, baseType: !302, size: 128, offset: 128)
!1151 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 145, baseType: !1152, size: 256)
!1152 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 145, size: 256, elements: !1153)
!1153 = !{!1154, !1155, !1157, !1158, !1163}
!1154 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_1", scope: !1152, file: !441, line: 146, baseType: !251, size: 64)
!1155 = !DIDerivedType(tag: DW_TAG_member, name: "pmd_huge_pte", scope: !1152, file: !441, line: 147, baseType: !1156, size: 64, offset: 64)
!1156 = !DIDerivedType(tag: DW_TAG_typedef, name: "pgtable_t", file: !459, line: 509, baseType: !1088)
!1157 = !DIDerivedType(tag: DW_TAG_member, name: "_pt_pad_2", scope: !1152, file: !441, line: 148, baseType: !251, size: 64, offset: 128)
!1158 = !DIDerivedType(tag: DW_TAG_member, scope: !1152, file: !441, line: 149, baseType: !1159, size: 64, offset: 192)
!1159 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1152, file: !441, line: 149, size: 64, elements: !1160)
!1160 = !{!1161, !1162}
!1161 = !DIDerivedType(tag: DW_TAG_member, name: "pt_mm", scope: !1159, file: !441, line: 150, baseType: !439, size: 64)
!1162 = !DIDerivedType(tag: DW_TAG_member, name: "pt_frag_refcount", scope: !1159, file: !441, line: 151, baseType: !276, size: 32)
!1163 = !DIDerivedType(tag: DW_TAG_member, name: "ptl", scope: !1152, file: !441, line: 156, baseType: !517, offset: 256)
!1164 = !DIDerivedType(tag: DW_TAG_member, scope: !1093, file: !441, line: 159, baseType: !1165, size: 128)
!1165 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1093, file: !441, line: 159, size: 128, elements: !1166)
!1166 = !{!1167, !1170}
!1167 = !DIDerivedType(tag: DW_TAG_member, name: "pgmap", scope: !1165, file: !441, line: 161, baseType: !1168, size: 64)
!1168 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1169, size: 64)
!1169 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pagemap", file: !441, line: 161, flags: DIFlagFwdDecl)
!1170 = !DIDerivedType(tag: DW_TAG_member, name: "zone_device_data", scope: !1165, file: !441, line: 162, baseType: !77, size: 64, offset: 64)
!1171 = !DIDerivedType(tag: DW_TAG_member, name: "callback_head", scope: !1093, file: !441, line: 176, baseType: !793, size: 128, align: 64)
!1172 = !DIDerivedType(tag: DW_TAG_member, scope: !1089, file: !441, line: 179, baseType: !1173, size: 32, offset: 384)
!1173 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1089, file: !441, line: 179, size: 32, elements: !1174)
!1174 = !{!1175, !1176, !1177, !1178}
!1175 = !DIDerivedType(tag: DW_TAG_member, name: "_mapcount", scope: !1173, file: !441, line: 184, baseType: !276, size: 32)
!1176 = !DIDerivedType(tag: DW_TAG_member, name: "page_type", scope: !1173, file: !441, line: 192, baseType: !7, size: 32)
!1177 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1173, file: !441, line: 194, baseType: !7, size: 32)
!1178 = !DIDerivedType(tag: DW_TAG_member, name: "units", scope: !1173, file: !441, line: 195, baseType: !106, size: 32)
!1179 = !DIDerivedType(tag: DW_TAG_member, name: "_refcount", scope: !1089, file: !441, line: 199, baseType: !276, size: 32, offset: 416)
!1180 = !DIDerivedType(tag: DW_TAG_member, name: "offset", scope: !1085, file: !560, line: 67, baseType: !209, size: 32, offset: 64)
!1181 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1085, file: !560, line: 68, baseType: !209, size: 32, offset: 96)
!1182 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied", scope: !257, file: !258, line: 1206, baseType: !106, size: 32, offset: 12736)
!1183 = !DIDerivedType(tag: DW_TAG_member, name: "nr_dirtied_pause", scope: !257, file: !258, line: 1207, baseType: !106, size: 32, offset: 12768)
!1184 = !DIDerivedType(tag: DW_TAG_member, name: "dirty_paused_when", scope: !257, file: !258, line: 1209, baseType: !251, size: 64, offset: 12800)
!1185 = !DIDerivedType(tag: DW_TAG_member, name: "timer_slack_ns", scope: !257, file: !258, line: 1219, baseType: !309, size: 64, offset: 12864)
!1186 = !DIDerivedType(tag: DW_TAG_member, name: "default_timer_slack_ns", scope: !257, file: !258, line: 1220, baseType: !309, size: 64, offset: 12928)
!1187 = !DIDerivedType(tag: DW_TAG_member, name: "pagefault_disabled", scope: !257, file: !258, line: 1317, baseType: !106, size: 32, offset: 12992)
!1188 = !DIDerivedType(tag: DW_TAG_member, name: "oom_reaper_list", scope: !257, file: !258, line: 1319, baseType: !256, size: 64, offset: 13056)
!1189 = !DIDerivedType(tag: DW_TAG_member, name: "stack_vm_area", scope: !257, file: !258, line: 1322, baseType: !1190, size: 64, offset: 13120)
!1190 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1191, size: 64)
!1191 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "vm_struct", file: !1192, line: 56, size: 512, elements: !1193)
!1192 = !DIFile(filename: "./include/linux/vmalloc.h", directory: "/home/lizy2001/genbc/linux")
!1193 = !{!1194, !1195, !1196, !1197, !1198, !1200, !1201, !1203}
!1194 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !1191, file: !1192, line: 57, baseType: !1190, size: 64)
!1195 = !DIDerivedType(tag: DW_TAG_member, name: "addr", scope: !1191, file: !1192, line: 58, baseType: !77, size: 64, offset: 64)
!1196 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1191, file: !1192, line: 59, baseType: !251, size: 64, offset: 128)
!1197 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1191, file: !1192, line: 60, baseType: !251, size: 64, offset: 192)
!1198 = !DIDerivedType(tag: DW_TAG_member, name: "pages", scope: !1191, file: !1192, line: 61, baseType: !1199, size: 64, offset: 256)
!1199 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1088, size: 64)
!1200 = !DIDerivedType(tag: DW_TAG_member, name: "nr_pages", scope: !1191, file: !1192, line: 62, baseType: !7, size: 32, offset: 320)
!1201 = !DIDerivedType(tag: DW_TAG_member, name: "phys_addr", scope: !1191, file: !1192, line: 63, baseType: !1202, size: 64, offset: 384)
!1202 = !DIDerivedType(tag: DW_TAG_typedef, name: "phys_addr_t", file: !277, line: 153, baseType: !309)
!1203 = !DIDerivedType(tag: DW_TAG_member, name: "caller", scope: !1191, file: !1192, line: 64, baseType: !1204, size: 64, offset: 448)
!1204 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1205, size: 64)
!1205 = !DIDerivedType(tag: DW_TAG_const_type, baseType: null)
!1206 = !DIDerivedType(tag: DW_TAG_member, name: "stack_refcount", scope: !257, file: !258, line: 1326, baseType: !271, size: 32, offset: 13184)
!1207 = !DIDerivedType(tag: DW_TAG_member, name: "mce_vaddr", scope: !257, file: !258, line: 1342, baseType: !77, size: 64, offset: 13248)
!1208 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kflags", scope: !257, file: !258, line: 1343, baseType: !310, size: 64, offset: 13312)
!1209 = !DIDerivedType(tag: DW_TAG_member, name: "mce_addr", scope: !257, file: !258, line: 1344, baseType: !309, size: 64, offset: 13376)
!1210 = !DIDerivedType(tag: DW_TAG_member, name: "mce_ripv", scope: !257, file: !258, line: 1345, baseType: !310, size: 1, offset: 13440, flags: DIFlagBitField, extraData: i64 13440)
!1211 = !DIDerivedType(tag: DW_TAG_member, name: "mce_whole_page", scope: !257, file: !258, line: 1346, baseType: !310, size: 1, offset: 13441, flags: DIFlagBitField, extraData: i64 13440)
!1212 = !DIDerivedType(tag: DW_TAG_member, name: "__mce_reserved", scope: !257, file: !258, line: 1347, baseType: !310, size: 62, offset: 13442, flags: DIFlagBitField, extraData: i64 13440)
!1213 = !DIDerivedType(tag: DW_TAG_member, name: "mce_kill_me", scope: !257, file: !258, line: 1348, baseType: !793, size: 128, align: 64, offset: 13504)
!1214 = !DIDerivedType(tag: DW_TAG_member, name: "thread", scope: !257, file: !258, line: 1358, baseType: !1215, size: 34816, offset: 13824)
!1215 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "thread_struct", file: !1216, line: 485, size: 34816, elements: !1217)
!1216 = !DIFile(filename: "./arch/x86/include/asm/processor.h", directory: "/home/lizy2001/genbc/linux")
!1217 = !{!1218, !1236, !1237, !1238, !1239, !1240, !1241, !1242, !1243, !1247, !1248, !1249, !1250, !1251, !1252, !1255, !1256, !1257}
!1218 = !DIDerivedType(tag: DW_TAG_member, name: "tls_array", scope: !1215, file: !1216, line: 487, baseType: !1219, size: 192)
!1219 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1220, size: 192, elements: !843)
!1220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "desc_struct", file: !1221, line: 16, size: 64, elements: !1222)
!1221 = !DIFile(filename: "./arch/x86/include/asm/desc_defs.h", directory: "/home/lizy2001/genbc/linux")
!1222 = !{!1223, !1224, !1225, !1226, !1227, !1228, !1229, !1230, !1231, !1232, !1233, !1234, !1235}
!1223 = !DIDerivedType(tag: DW_TAG_member, name: "limit0", scope: !1220, file: !1221, line: 17, baseType: !72, size: 16)
!1224 = !DIDerivedType(tag: DW_TAG_member, name: "base0", scope: !1220, file: !1221, line: 18, baseType: !72, size: 16, offset: 16)
!1225 = !DIDerivedType(tag: DW_TAG_member, name: "base1", scope: !1220, file: !1221, line: 19, baseType: !72, size: 8, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1226 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1220, file: !1221, line: 19, baseType: !72, size: 4, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1227 = !DIDerivedType(tag: DW_TAG_member, name: "s", scope: !1220, file: !1221, line: 19, baseType: !72, size: 1, offset: 44, flags: DIFlagBitField, extraData: i64 32)
!1228 = !DIDerivedType(tag: DW_TAG_member, name: "dpl", scope: !1220, file: !1221, line: 19, baseType: !72, size: 2, offset: 45, flags: DIFlagBitField, extraData: i64 32)
!1229 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1220, file: !1221, line: 19, baseType: !72, size: 1, offset: 47, flags: DIFlagBitField, extraData: i64 32)
!1230 = !DIDerivedType(tag: DW_TAG_member, name: "limit1", scope: !1220, file: !1221, line: 20, baseType: !72, size: 4, offset: 48, flags: DIFlagBitField, extraData: i64 32)
!1231 = !DIDerivedType(tag: DW_TAG_member, name: "avl", scope: !1220, file: !1221, line: 20, baseType: !72, size: 1, offset: 52, flags: DIFlagBitField, extraData: i64 32)
!1232 = !DIDerivedType(tag: DW_TAG_member, name: "l", scope: !1220, file: !1221, line: 20, baseType: !72, size: 1, offset: 53, flags: DIFlagBitField, extraData: i64 32)
!1233 = !DIDerivedType(tag: DW_TAG_member, name: "d", scope: !1220, file: !1221, line: 20, baseType: !72, size: 1, offset: 54, flags: DIFlagBitField, extraData: i64 32)
!1234 = !DIDerivedType(tag: DW_TAG_member, name: "g", scope: !1220, file: !1221, line: 20, baseType: !72, size: 1, offset: 55, flags: DIFlagBitField, extraData: i64 32)
!1235 = !DIDerivedType(tag: DW_TAG_member, name: "base2", scope: !1220, file: !1221, line: 20, baseType: !72, size: 8, offset: 56, flags: DIFlagBitField, extraData: i64 32)
!1236 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1215, file: !1216, line: 491, baseType: !251, size: 64, offset: 192)
!1237 = !DIDerivedType(tag: DW_TAG_member, name: "es", scope: !1215, file: !1216, line: 495, baseType: !76, size: 16, offset: 256)
!1238 = !DIDerivedType(tag: DW_TAG_member, name: "ds", scope: !1215, file: !1216, line: 496, baseType: !76, size: 16, offset: 272)
!1239 = !DIDerivedType(tag: DW_TAG_member, name: "fsindex", scope: !1215, file: !1216, line: 497, baseType: !76, size: 16, offset: 288)
!1240 = !DIDerivedType(tag: DW_TAG_member, name: "gsindex", scope: !1215, file: !1216, line: 498, baseType: !76, size: 16, offset: 304)
!1241 = !DIDerivedType(tag: DW_TAG_member, name: "fsbase", scope: !1215, file: !1216, line: 502, baseType: !251, size: 64, offset: 320)
!1242 = !DIDerivedType(tag: DW_TAG_member, name: "gsbase", scope: !1215, file: !1216, line: 503, baseType: !251, size: 64, offset: 384)
!1243 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_bps", scope: !1215, file: !1216, line: 514, baseType: !1244, size: 256, offset: 448)
!1244 = !DICompositeType(tag: DW_TAG_array_type, baseType: !1245, size: 256, elements: !564)
!1245 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1246, size: 64)
!1246 = !DICompositeType(tag: DW_TAG_structure_type, name: "perf_event", file: !1216, line: 483, flags: DIFlagFwdDecl)
!1247 = !DIDerivedType(tag: DW_TAG_member, name: "virtual_dr6", scope: !1215, file: !1216, line: 516, baseType: !251, size: 64, offset: 704)
!1248 = !DIDerivedType(tag: DW_TAG_member, name: "ptrace_dr7", scope: !1215, file: !1216, line: 518, baseType: !251, size: 64, offset: 768)
!1249 = !DIDerivedType(tag: DW_TAG_member, name: "cr2", scope: !1215, file: !1216, line: 520, baseType: !251, size: 64, offset: 832)
!1250 = !DIDerivedType(tag: DW_TAG_member, name: "trap_nr", scope: !1215, file: !1216, line: 521, baseType: !251, size: 64, offset: 896)
!1251 = !DIDerivedType(tag: DW_TAG_member, name: "error_code", scope: !1215, file: !1216, line: 522, baseType: !251, size: 64, offset: 960)
!1252 = !DIDerivedType(tag: DW_TAG_member, name: "io_bitmap", scope: !1215, file: !1216, line: 528, baseType: !1253, size: 64, offset: 1024)
!1253 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1254, size: 64)
!1254 = !DICompositeType(tag: DW_TAG_structure_type, name: "io_bitmap", file: !1216, line: 10, flags: DIFlagFwdDecl)
!1255 = !DIDerivedType(tag: DW_TAG_member, name: "iopl_emul", scope: !1215, file: !1216, line: 535, baseType: !251, size: 64, offset: 1088)
!1256 = !DIDerivedType(tag: DW_TAG_member, name: "sig_on_uaccess_err", scope: !1215, file: !1216, line: 537, baseType: !7, size: 1, offset: 1152, flags: DIFlagBitField, extraData: i64 1152)
!1257 = !DIDerivedType(tag: DW_TAG_member, name: "fpu", scope: !1215, file: !1216, line: 540, baseType: !1258, size: 33280, offset: 1536)
!1258 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fpu", file: !1259, line: 317, size: 33280, elements: !1260)
!1259 = !DIFile(filename: "./arch/x86/include/asm/fpu/types.h", directory: "/home/lizy2001/genbc/linux")
!1260 = !{!1261, !1262, !1263}
!1261 = !DIDerivedType(tag: DW_TAG_member, name: "last_cpu", scope: !1258, file: !1259, line: 330, baseType: !7, size: 32)
!1262 = !DIDerivedType(tag: DW_TAG_member, name: "avx512_timestamp", scope: !1258, file: !1259, line: 337, baseType: !251, size: 64, offset: 64)
!1263 = !DIDerivedType(tag: DW_TAG_member, name: "state", scope: !1258, file: !1259, line: 348, baseType: !1264, size: 32768, offset: 512)
!1264 = distinct !DICompositeType(tag: DW_TAG_union_type, name: "fpregs_state", file: !1259, line: 304, size: 32768, elements: !1265)
!1265 = !{!1266, !1281, !1322, !1372, !1389}
!1266 = !DIDerivedType(tag: DW_TAG_member, name: "fsave", scope: !1264, file: !1259, line: 305, baseType: !1267, size: 896)
!1267 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fregs_state", file: !1259, line: 12, size: 896, elements: !1268)
!1268 = !{!1269, !1270, !1271, !1272, !1273, !1274, !1275, !1276, !1280}
!1269 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1267, file: !1259, line: 13, baseType: !208, size: 32)
!1270 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1267, file: !1259, line: 14, baseType: !208, size: 32, offset: 32)
!1271 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1267, file: !1259, line: 15, baseType: !208, size: 32, offset: 64)
!1272 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1267, file: !1259, line: 16, baseType: !208, size: 32, offset: 96)
!1273 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1267, file: !1259, line: 17, baseType: !208, size: 32, offset: 128)
!1274 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1267, file: !1259, line: 18, baseType: !208, size: 32, offset: 160)
!1275 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1267, file: !1259, line: 19, baseType: !208, size: 32, offset: 192)
!1276 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1267, file: !1259, line: 22, baseType: !1277, size: 640, offset: 224)
!1277 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 640, elements: !1278)
!1278 = !{!1279}
!1279 = !DISubrange(count: 20)
!1280 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1267, file: !1259, line: 25, baseType: !208, size: 32, offset: 864)
!1281 = !DIDerivedType(tag: DW_TAG_member, name: "fxsave", scope: !1264, file: !1259, line: 306, baseType: !1282, size: 4096, align: 128)
!1282 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fxregs_state", file: !1259, line: 34, size: 4096, align: 128, elements: !1283)
!1283 = !{!1284, !1285, !1286, !1287, !1288, !1303, !1304, !1305, !1309, !1313, !1317}
!1284 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1282, file: !1259, line: 35, baseType: !72, size: 16)
!1285 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1282, file: !1259, line: 36, baseType: !72, size: 16, offset: 16)
!1286 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1282, file: !1259, line: 37, baseType: !72, size: 16, offset: 32)
!1287 = !DIDerivedType(tag: DW_TAG_member, name: "fop", scope: !1282, file: !1259, line: 38, baseType: !72, size: 16, offset: 48)
!1288 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1259, line: 39, baseType: !1289, size: 128, offset: 64)
!1289 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1259, line: 39, size: 128, elements: !1290)
!1290 = !{!1291, !1296}
!1291 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1259, line: 40, baseType: !1292, size: 128)
!1292 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1259, line: 40, size: 128, elements: !1293)
!1293 = !{!1294, !1295}
!1294 = !DIDerivedType(tag: DW_TAG_member, name: "rip", scope: !1292, file: !1259, line: 41, baseType: !309, size: 64)
!1295 = !DIDerivedType(tag: DW_TAG_member, name: "rdp", scope: !1292, file: !1259, line: 42, baseType: !309, size: 64, offset: 64)
!1296 = !DIDerivedType(tag: DW_TAG_member, scope: !1289, file: !1259, line: 44, baseType: !1297, size: 128)
!1297 = distinct !DICompositeType(tag: DW_TAG_structure_type, scope: !1289, file: !1259, line: 44, size: 128, elements: !1298)
!1298 = !{!1299, !1300, !1301, !1302}
!1299 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1297, file: !1259, line: 45, baseType: !208, size: 32)
!1300 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1297, file: !1259, line: 46, baseType: !208, size: 32, offset: 32)
!1301 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1297, file: !1259, line: 47, baseType: !208, size: 32, offset: 64)
!1302 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1297, file: !1259, line: 48, baseType: !208, size: 32, offset: 96)
!1303 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr", scope: !1282, file: !1259, line: 51, baseType: !208, size: 32, offset: 192)
!1304 = !DIDerivedType(tag: DW_TAG_member, name: "mxcsr_mask", scope: !1282, file: !1259, line: 52, baseType: !208, size: 32, offset: 224)
!1305 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1282, file: !1259, line: 55, baseType: !1306, size: 1024, offset: 256)
!1306 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 1024, elements: !1307)
!1307 = !{!1308}
!1308 = !DISubrange(count: 32)
!1309 = !DIDerivedType(tag: DW_TAG_member, name: "xmm_space", scope: !1282, file: !1259, line: 58, baseType: !1310, size: 2048, offset: 1280)
!1310 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 2048, elements: !1311)
!1311 = !{!1312}
!1312 = !DISubrange(count: 64)
!1313 = !DIDerivedType(tag: DW_TAG_member, name: "padding", scope: !1282, file: !1259, line: 60, baseType: !1314, size: 384, offset: 3328)
!1314 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 384, elements: !1315)
!1315 = !{!1316}
!1316 = !DISubrange(count: 12)
!1317 = !DIDerivedType(tag: DW_TAG_member, scope: !1282, file: !1259, line: 62, baseType: !1318, size: 384, offset: 3712)
!1318 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1282, file: !1259, line: 62, size: 384, elements: !1319)
!1319 = !{!1320, !1321}
!1320 = !DIDerivedType(tag: DW_TAG_member, name: "padding1", scope: !1318, file: !1259, line: 63, baseType: !1314, size: 384)
!1321 = !DIDerivedType(tag: DW_TAG_member, name: "sw_reserved", scope: !1318, file: !1259, line: 64, baseType: !1314, size: 384)
!1322 = !DIDerivedType(tag: DW_TAG_member, name: "soft", scope: !1264, file: !1259, line: 307, baseType: !1323, size: 1088)
!1323 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "swregs_state", file: !1259, line: 79, size: 1088, elements: !1324)
!1324 = !{!1325, !1326, !1327, !1328, !1329, !1330, !1331, !1332, !1333, !1334, !1335, !1336, !1337, !1338, !1339, !1371}
!1325 = !DIDerivedType(tag: DW_TAG_member, name: "cwd", scope: !1323, file: !1259, line: 80, baseType: !208, size: 32)
!1326 = !DIDerivedType(tag: DW_TAG_member, name: "swd", scope: !1323, file: !1259, line: 81, baseType: !208, size: 32, offset: 32)
!1327 = !DIDerivedType(tag: DW_TAG_member, name: "twd", scope: !1323, file: !1259, line: 82, baseType: !208, size: 32, offset: 64)
!1328 = !DIDerivedType(tag: DW_TAG_member, name: "fip", scope: !1323, file: !1259, line: 83, baseType: !208, size: 32, offset: 96)
!1329 = !DIDerivedType(tag: DW_TAG_member, name: "fcs", scope: !1323, file: !1259, line: 84, baseType: !208, size: 32, offset: 128)
!1330 = !DIDerivedType(tag: DW_TAG_member, name: "foo", scope: !1323, file: !1259, line: 85, baseType: !208, size: 32, offset: 160)
!1331 = !DIDerivedType(tag: DW_TAG_member, name: "fos", scope: !1323, file: !1259, line: 86, baseType: !208, size: 32, offset: 192)
!1332 = !DIDerivedType(tag: DW_TAG_member, name: "st_space", scope: !1323, file: !1259, line: 88, baseType: !1277, size: 640, offset: 224)
!1333 = !DIDerivedType(tag: DW_TAG_member, name: "ftop", scope: !1323, file: !1259, line: 89, baseType: !78, size: 8, offset: 864)
!1334 = !DIDerivedType(tag: DW_TAG_member, name: "changed", scope: !1323, file: !1259, line: 90, baseType: !78, size: 8, offset: 872)
!1335 = !DIDerivedType(tag: DW_TAG_member, name: "lookahead", scope: !1323, file: !1259, line: 91, baseType: !78, size: 8, offset: 880)
!1336 = !DIDerivedType(tag: DW_TAG_member, name: "no_update", scope: !1323, file: !1259, line: 92, baseType: !78, size: 8, offset: 888)
!1337 = !DIDerivedType(tag: DW_TAG_member, name: "rm", scope: !1323, file: !1259, line: 93, baseType: !78, size: 8, offset: 896)
!1338 = !DIDerivedType(tag: DW_TAG_member, name: "alimit", scope: !1323, file: !1259, line: 94, baseType: !78, size: 8, offset: 904)
!1339 = !DIDerivedType(tag: DW_TAG_member, name: "info", scope: !1323, file: !1259, line: 95, baseType: !1340, size: 64, offset: 960)
!1340 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1341, size: 64)
!1341 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "math_emu_info", file: !1342, line: 11, size: 128, elements: !1343)
!1342 = !DIFile(filename: "./arch/x86/include/asm/math_emu.h", directory: "/home/lizy2001/genbc/linux")
!1343 = !{!1344, !1345}
!1344 = !DIDerivedType(tag: DW_TAG_member, name: "___orig_eip", scope: !1341, file: !1342, line: 12, baseType: !268, size: 64)
!1345 = !DIDerivedType(tag: DW_TAG_member, name: "regs", scope: !1341, file: !1342, line: 13, baseType: !1346, size: 64, offset: 64)
!1346 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1347, size: 64)
!1347 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pt_regs", file: !1348, line: 56, size: 1344, elements: !1349)
!1348 = !DIFile(filename: "./arch/x86/include/asm/ptrace.h", directory: "/home/lizy2001/genbc/linux")
!1349 = !{!1350, !1351, !1352, !1353, !1354, !1355, !1356, !1357, !1358, !1359, !1360, !1361, !1362, !1363, !1364, !1365, !1366, !1367, !1368, !1369, !1370}
!1350 = !DIDerivedType(tag: DW_TAG_member, name: "r15", scope: !1347, file: !1348, line: 61, baseType: !251, size: 64)
!1351 = !DIDerivedType(tag: DW_TAG_member, name: "r14", scope: !1347, file: !1348, line: 62, baseType: !251, size: 64, offset: 64)
!1352 = !DIDerivedType(tag: DW_TAG_member, name: "r13", scope: !1347, file: !1348, line: 63, baseType: !251, size: 64, offset: 128)
!1353 = !DIDerivedType(tag: DW_TAG_member, name: "r12", scope: !1347, file: !1348, line: 64, baseType: !251, size: 64, offset: 192)
!1354 = !DIDerivedType(tag: DW_TAG_member, name: "bp", scope: !1347, file: !1348, line: 65, baseType: !251, size: 64, offset: 256)
!1355 = !DIDerivedType(tag: DW_TAG_member, name: "bx", scope: !1347, file: !1348, line: 66, baseType: !251, size: 64, offset: 320)
!1356 = !DIDerivedType(tag: DW_TAG_member, name: "r11", scope: !1347, file: !1348, line: 68, baseType: !251, size: 64, offset: 384)
!1357 = !DIDerivedType(tag: DW_TAG_member, name: "r10", scope: !1347, file: !1348, line: 69, baseType: !251, size: 64, offset: 448)
!1358 = !DIDerivedType(tag: DW_TAG_member, name: "r9", scope: !1347, file: !1348, line: 70, baseType: !251, size: 64, offset: 512)
!1359 = !DIDerivedType(tag: DW_TAG_member, name: "r8", scope: !1347, file: !1348, line: 71, baseType: !251, size: 64, offset: 576)
!1360 = !DIDerivedType(tag: DW_TAG_member, name: "ax", scope: !1347, file: !1348, line: 72, baseType: !251, size: 64, offset: 640)
!1361 = !DIDerivedType(tag: DW_TAG_member, name: "cx", scope: !1347, file: !1348, line: 73, baseType: !251, size: 64, offset: 704)
!1362 = !DIDerivedType(tag: DW_TAG_member, name: "dx", scope: !1347, file: !1348, line: 74, baseType: !251, size: 64, offset: 768)
!1363 = !DIDerivedType(tag: DW_TAG_member, name: "si", scope: !1347, file: !1348, line: 75, baseType: !251, size: 64, offset: 832)
!1364 = !DIDerivedType(tag: DW_TAG_member, name: "di", scope: !1347, file: !1348, line: 76, baseType: !251, size: 64, offset: 896)
!1365 = !DIDerivedType(tag: DW_TAG_member, name: "orig_ax", scope: !1347, file: !1348, line: 81, baseType: !251, size: 64, offset: 960)
!1366 = !DIDerivedType(tag: DW_TAG_member, name: "ip", scope: !1347, file: !1348, line: 83, baseType: !251, size: 64, offset: 1024)
!1367 = !DIDerivedType(tag: DW_TAG_member, name: "cs", scope: !1347, file: !1348, line: 84, baseType: !251, size: 64, offset: 1088)
!1368 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1347, file: !1348, line: 85, baseType: !251, size: 64, offset: 1152)
!1369 = !DIDerivedType(tag: DW_TAG_member, name: "sp", scope: !1347, file: !1348, line: 86, baseType: !251, size: 64, offset: 1216)
!1370 = !DIDerivedType(tag: DW_TAG_member, name: "ss", scope: !1347, file: !1348, line: 87, baseType: !251, size: 64, offset: 1280)
!1371 = !DIDerivedType(tag: DW_TAG_member, name: "entry_eip", scope: !1323, file: !1259, line: 96, baseType: !208, size: 32, offset: 1024)
!1372 = !DIDerivedType(tag: DW_TAG_member, name: "xsave", scope: !1264, file: !1259, line: 308, baseType: !1373, size: 4608, align: 512)
!1373 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xregs_state", file: !1259, line: 289, size: 4608, align: 512, elements: !1374)
!1374 = !{!1375, !1376, !1385}
!1375 = !DIDerivedType(tag: DW_TAG_member, name: "i387", scope: !1373, file: !1259, line: 290, baseType: !1282, size: 4096, align: 128)
!1376 = !DIDerivedType(tag: DW_TAG_member, name: "header", scope: !1373, file: !1259, line: 291, baseType: !1377, size: 512, offset: 4096)
!1377 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xstate_header", file: !1259, line: 268, size: 512, elements: !1378)
!1378 = !{!1379, !1380, !1381}
!1379 = !DIDerivedType(tag: DW_TAG_member, name: "xfeatures", scope: !1377, file: !1259, line: 269, baseType: !309, size: 64)
!1380 = !DIDerivedType(tag: DW_TAG_member, name: "xcomp_bv", scope: !1377, file: !1259, line: 270, baseType: !309, size: 64, offset: 64)
!1381 = !DIDerivedType(tag: DW_TAG_member, name: "reserved", scope: !1377, file: !1259, line: 271, baseType: !1382, size: 384, offset: 128)
!1382 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 384, elements: !1383)
!1383 = !{!1384}
!1384 = !DISubrange(count: 6)
!1385 = !DIDerivedType(tag: DW_TAG_member, name: "extended_state_area", scope: !1373, file: !1259, line: 292, baseType: !1386, offset: 4608)
!1386 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, elements: !1387)
!1387 = !{!1388}
!1388 = !DISubrange(count: 0)
!1389 = !DIDerivedType(tag: DW_TAG_member, name: "__padding", scope: !1264, file: !1259, line: 309, baseType: !1390, size: 32768)
!1390 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32768, elements: !1391)
!1391 = !{!1392}
!1392 = !DISubrange(count: 4096)
!1393 = !DIDerivedType(tag: DW_TAG_member, name: "mux_lock", scope: !167, file: !168, line: 704, baseType: !226, size: 192, offset: 512)
!1394 = !DIDerivedType(tag: DW_TAG_member, name: "timeout", scope: !167, file: !168, line: 706, baseType: !106, size: 32, offset: 704)
!1395 = !DIDerivedType(tag: DW_TAG_member, name: "retries", scope: !167, file: !168, line: 707, baseType: !106, size: 32, offset: 736)
!1396 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !167, file: !168, line: 708, baseType: !1397, size: 5568, offset: 768)
!1397 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device", file: !30, line: 461, size: 5568, elements: !1398)
!1398 = !{!1399, !1728, !1730, !1733, !1734, !1785, !1879, !1880, !1881, !1882, !1883, !1892, !1997, !2010, !2205, !2206, !2210, !2212, !2213, !2214, !2218, !2224, !2225, !2228, !2229, !2230, !2233, !2234, !2235, !2236, !2268, !2269, !2270, !2273, !2276, !2277, !2278, !2279}
!1399 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1397, file: !30, line: 462, baseType: !1400, size: 512)
!1400 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobject", file: !1401, line: 64, size: 512, elements: !1402)
!1401 = !DIFile(filename: "./include/linux/kobject.h", directory: "/home/lizy2001/genbc/linux")
!1402 = !{!1403, !1404, !1405, !1407, !1447, !1564, !1718, !1723, !1724, !1725, !1726, !1727}
!1403 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1400, file: !1401, line: 65, baseType: !89, size: 64)
!1404 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1400, file: !1401, line: 66, baseType: !302, size: 128, offset: 64)
!1405 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1400, file: !1401, line: 67, baseType: !1406, size: 64, offset: 192)
!1406 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1400, size: 64)
!1407 = !DIDerivedType(tag: DW_TAG_member, name: "kset", scope: !1400, file: !1401, line: 68, baseType: !1408, size: 64, offset: 256)
!1408 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1409, size: 64)
!1409 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset", file: !1401, line: 192, size: 704, elements: !1410)
!1410 = !{!1411, !1412, !1413, !1414}
!1411 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1409, file: !1401, line: 193, baseType: !302, size: 128)
!1412 = !DIDerivedType(tag: DW_TAG_member, name: "list_lock", scope: !1409, file: !1401, line: 194, baseType: !517, offset: 128)
!1413 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !1409, file: !1401, line: 195, baseType: !1400, size: 512, offset: 128)
!1414 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_ops", scope: !1409, file: !1401, line: 196, baseType: !1415, size: 64, offset: 640)
!1415 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1416, size: 64)
!1416 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1417)
!1417 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kset_uevent_ops", file: !1401, line: 156, size: 192, elements: !1418)
!1418 = !{!1419, !1424, !1429}
!1419 = !DIDerivedType(tag: DW_TAG_member, name: "filter", scope: !1417, file: !1401, line: 157, baseType: !1420, size: 64)
!1420 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1421)
!1421 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1422, size: 64)
!1422 = !DISubroutineType(types: !1423)
!1423 = !{!106, !1408, !1406}
!1424 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1417, file: !1401, line: 158, baseType: !1425, size: 64, offset: 64)
!1425 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1426)
!1426 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1427, size: 64)
!1427 = !DISubroutineType(types: !1428)
!1428 = !{!89, !1408, !1406}
!1429 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1417, file: !1401, line: 159, baseType: !1430, size: 64, offset: 128)
!1430 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1431)
!1431 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1432, size: 64)
!1432 = !DISubroutineType(types: !1433)
!1433 = !{!106, !1408, !1406, !1434}
!1434 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1435, size: 64)
!1435 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_uevent_env", file: !1401, line: 148, size: 20736, elements: !1436)
!1436 = !{!1437, !1439, !1441, !1442, !1446}
!1437 = !DIDerivedType(tag: DW_TAG_member, name: "argv", scope: !1435, file: !1401, line: 149, baseType: !1438, size: 192)
!1438 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 192, elements: !843)
!1439 = !DIDerivedType(tag: DW_TAG_member, name: "envp", scope: !1435, file: !1401, line: 150, baseType: !1440, size: 4096, offset: 192)
!1440 = !DICompositeType(tag: DW_TAG_array_type, baseType: !112, size: 4096, elements: !1311)
!1441 = !DIDerivedType(tag: DW_TAG_member, name: "envp_idx", scope: !1435, file: !1401, line: 151, baseType: !106, size: 32, offset: 4288)
!1442 = !DIDerivedType(tag: DW_TAG_member, name: "buf", scope: !1435, file: !1401, line: 152, baseType: !1443, size: 16384, offset: 4320)
!1443 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 16384, elements: !1444)
!1444 = !{!1445}
!1445 = !DISubrange(count: 2048)
!1446 = !DIDerivedType(tag: DW_TAG_member, name: "buflen", scope: !1435, file: !1401, line: 153, baseType: !106, size: 32, offset: 20704)
!1447 = !DIDerivedType(tag: DW_TAG_member, name: "ktype", scope: !1400, file: !1401, line: 69, baseType: !1448, size: 64, offset: 320)
!1448 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1449, size: 64)
!1449 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_type", file: !1401, line: 138, size: 448, elements: !1450)
!1450 = !{!1451, !1455, !1477, !1479, !1514, !1542, !1546}
!1451 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1449, file: !1401, line: 139, baseType: !1452, size: 64)
!1452 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1453, size: 64)
!1453 = !DISubroutineType(types: !1454)
!1454 = !{null, !1406}
!1455 = !DIDerivedType(tag: DW_TAG_member, name: "sysfs_ops", scope: !1449, file: !1401, line: 140, baseType: !1456, size: 64, offset: 64)
!1456 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1457, size: 64)
!1457 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1458)
!1458 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "sysfs_ops", file: !1459, line: 230, size: 128, elements: !1460)
!1459 = !DIFile(filename: "./include/linux/sysfs.h", directory: "/home/lizy2001/genbc/linux")
!1460 = !{!1461, !1473}
!1461 = !DIDerivedType(tag: DW_TAG_member, name: "show", scope: !1458, file: !1459, line: 231, baseType: !1462, size: 64)
!1462 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1463, size: 64)
!1463 = !DISubroutineType(types: !1464)
!1464 = !{!1465, !1406, !1467, !112}
!1465 = !DIDerivedType(tag: DW_TAG_typedef, name: "ssize_t", file: !277, line: 60, baseType: !1466)
!1466 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_ssize_t", file: !393, line: 73, baseType: !998)
!1467 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1468, size: 64)
!1468 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute", file: !1459, line: 30, size: 128, elements: !1469)
!1469 = !{!1470, !1471}
!1470 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1468, file: !1459, line: 31, baseType: !89, size: 64)
!1471 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1468, file: !1459, line: 32, baseType: !1472, size: 16, offset: 64)
!1472 = !DIDerivedType(tag: DW_TAG_typedef, name: "umode_t", file: !277, line: 19, baseType: !76)
!1473 = !DIDerivedType(tag: DW_TAG_member, name: "store", scope: !1458, file: !1459, line: 232, baseType: !1474, size: 64, offset: 64)
!1474 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1475, size: 64)
!1475 = !DISubroutineType(types: !1476)
!1476 = !{!1465, !1406, !1467, !89, !902}
!1477 = !DIDerivedType(tag: DW_TAG_member, name: "default_attrs", scope: !1449, file: !1401, line: 141, baseType: !1478, size: 64, offset: 128)
!1478 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1467, size: 64)
!1479 = !DIDerivedType(tag: DW_TAG_member, name: "default_groups", scope: !1449, file: !1401, line: 142, baseType: !1480, size: 64, offset: 192)
!1480 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1481, size: 64)
!1481 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1482, size: 64)
!1482 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1483)
!1483 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "attribute_group", file: !1459, line: 84, size: 320, elements: !1484)
!1484 = !{!1485, !1486, !1490, !1511, !1512}
!1485 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1483, file: !1459, line: 85, baseType: !89, size: 64)
!1486 = !DIDerivedType(tag: DW_TAG_member, name: "is_visible", scope: !1483, file: !1459, line: 86, baseType: !1487, size: 64, offset: 64)
!1487 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1488, size: 64)
!1488 = !DISubroutineType(types: !1489)
!1489 = !{!1472, !1406, !1467, !106}
!1490 = !DIDerivedType(tag: DW_TAG_member, name: "is_bin_visible", scope: !1483, file: !1459, line: 88, baseType: !1491, size: 64, offset: 128)
!1491 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1492, size: 64)
!1492 = !DISubroutineType(types: !1493)
!1493 = !{!1472, !1406, !1494, !106}
!1494 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1495, size: 64)
!1495 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bin_attribute", file: !1459, line: 168, size: 448, elements: !1496)
!1496 = !{!1497, !1498, !1499, !1500, !1506, !1507}
!1497 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1495, file: !1459, line: 169, baseType: !1468, size: 128)
!1498 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1495, file: !1459, line: 170, baseType: !902, size: 64, offset: 128)
!1499 = !DIDerivedType(tag: DW_TAG_member, name: "private", scope: !1495, file: !1459, line: 171, baseType: !77, size: 64, offset: 192)
!1500 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1495, file: !1459, line: 172, baseType: !1501, size: 64, offset: 256)
!1501 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1502, size: 64)
!1502 = !DISubroutineType(types: !1503)
!1503 = !{!1465, !481, !1406, !1494, !112, !1504, !902}
!1504 = !DIDerivedType(tag: DW_TAG_typedef, name: "loff_t", file: !277, line: 46, baseType: !1505)
!1505 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_loff_t", file: !393, line: 88, baseType: !341)
!1506 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1495, file: !1459, line: 174, baseType: !1501, size: 64, offset: 320)
!1507 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1495, file: !1459, line: 176, baseType: !1508, size: 64, offset: 384)
!1508 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1509, size: 64)
!1509 = !DISubroutineType(types: !1510)
!1510 = !{!106, !481, !1406, !1494, !447}
!1511 = !DIDerivedType(tag: DW_TAG_member, name: "attrs", scope: !1483, file: !1459, line: 90, baseType: !1478, size: 64, offset: 192)
!1512 = !DIDerivedType(tag: DW_TAG_member, name: "bin_attrs", scope: !1483, file: !1459, line: 91, baseType: !1513, size: 64, offset: 256)
!1513 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1494, size: 64)
!1514 = !DIDerivedType(tag: DW_TAG_member, name: "child_ns_type", scope: !1449, file: !1401, line: 143, baseType: !1515, size: 64, offset: 256)
!1515 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1516, size: 64)
!1516 = !DISubroutineType(types: !1517)
!1517 = !{!1518, !1406}
!1518 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1519, size: 64)
!1519 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1520)
!1520 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kobj_ns_type_operations", file: !18, line: 39, size: 384, elements: !1521)
!1521 = !{!1522, !1523, !1527, !1531, !1537, !1541}
!1522 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1520, file: !18, line: 40, baseType: !17, size: 32)
!1523 = !DIDerivedType(tag: DW_TAG_member, name: "current_may_mount", scope: !1520, file: !18, line: 41, baseType: !1524, size: 64, offset: 64)
!1524 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1525, size: 64)
!1525 = !DISubroutineType(types: !1526)
!1526 = !{!651}
!1527 = !DIDerivedType(tag: DW_TAG_member, name: "grab_current_ns", scope: !1520, file: !18, line: 42, baseType: !1528, size: 64, offset: 128)
!1528 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1529, size: 64)
!1529 = !DISubroutineType(types: !1530)
!1530 = !{!77}
!1531 = !DIDerivedType(tag: DW_TAG_member, name: "netlink_ns", scope: !1520, file: !18, line: 43, baseType: !1532, size: 64, offset: 192)
!1532 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1533, size: 64)
!1533 = !DISubroutineType(types: !1534)
!1534 = !{!1204, !1535}
!1535 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1536, size: 64)
!1536 = !DICompositeType(tag: DW_TAG_structure_type, name: "sock", file: !18, line: 19, flags: DIFlagFwdDecl)
!1537 = !DIDerivedType(tag: DW_TAG_member, name: "initial_ns", scope: !1520, file: !18, line: 44, baseType: !1538, size: 64, offset: 256)
!1538 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1539, size: 64)
!1539 = !DISubroutineType(types: !1540)
!1540 = !{!1204}
!1541 = !DIDerivedType(tag: DW_TAG_member, name: "drop_ns", scope: !1520, file: !18, line: 45, baseType: !114, size: 64, offset: 320)
!1542 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !1449, file: !1401, line: 144, baseType: !1543, size: 64, offset: 320)
!1543 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1544, size: 64)
!1544 = !DISubroutineType(types: !1545)
!1545 = !{!1204, !1406}
!1546 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !1449, file: !1401, line: 145, baseType: !1547, size: 64, offset: 384)
!1547 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1548, size: 64)
!1548 = !DISubroutineType(types: !1549)
!1549 = !{null, !1406, !1550, !1557}
!1550 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1551, size: 64)
!1551 = !DIDerivedType(tag: DW_TAG_typedef, name: "kuid_t", file: !1552, line: 23, baseType: !1553)
!1552 = !DIFile(filename: "./include/linux/uidgid.h", directory: "/home/lizy2001/genbc/linux")
!1553 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 21, size: 32, elements: !1554)
!1554 = !{!1555}
!1555 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1553, file: !1552, line: 22, baseType: !1556, size: 32)
!1556 = !DIDerivedType(tag: DW_TAG_typedef, name: "uid_t", file: !277, line: 32, baseType: !970)
!1557 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1558, size: 64)
!1558 = !DIDerivedType(tag: DW_TAG_typedef, name: "kgid_t", file: !1552, line: 28, baseType: !1559)
!1559 = distinct !DICompositeType(tag: DW_TAG_structure_type, file: !1552, line: 26, size: 32, elements: !1560)
!1560 = !{!1561}
!1561 = !DIDerivedType(tag: DW_TAG_member, name: "val", scope: !1559, file: !1552, line: 27, baseType: !1562, size: 32)
!1562 = !DIDerivedType(tag: DW_TAG_typedef, name: "gid_t", file: !277, line: 33, baseType: !1563)
!1563 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_gid32_t", file: !393, line: 50, baseType: !7)
!1564 = !DIDerivedType(tag: DW_TAG_member, name: "sd", scope: !1400, file: !1401, line: 70, baseType: !1565, size: 64, offset: 384)
!1565 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1566, size: 64)
!1566 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_node", file: !1567, line: 123, size: 1024, elements: !1568)
!1567 = !DIFile(filename: "./include/linux/kernfs.h", directory: "/home/lizy2001/genbc/linux")
!1568 = !{!1569, !1570, !1571, !1572, !1573, !1574, !1575, !1576, !1711, !1712, !1713, !1714, !1715}
!1569 = !DIDerivedType(tag: DW_TAG_member, name: "count", scope: !1566, file: !1567, line: 124, baseType: !276, size: 32)
!1570 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1566, file: !1567, line: 125, baseType: !276, size: 32, offset: 32)
!1571 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1566, file: !1567, line: 135, baseType: !1565, size: 64, offset: 64)
!1572 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1566, file: !1567, line: 136, baseType: !89, size: 64, offset: 128)
!1573 = !DIDerivedType(tag: DW_TAG_member, name: "rb", scope: !1566, file: !1567, line: 138, baseType: !248, size: 192, align: 64, offset: 192)
!1574 = !DIDerivedType(tag: DW_TAG_member, name: "ns", scope: !1566, file: !1567, line: 140, baseType: !1204, size: 64, offset: 384)
!1575 = !DIDerivedType(tag: DW_TAG_member, name: "hash", scope: !1566, file: !1567, line: 141, baseType: !7, size: 32, offset: 448)
!1576 = !DIDerivedType(tag: DW_TAG_member, scope: !1566, file: !1567, line: 142, baseType: !1577, size: 256, offset: 512)
!1577 = distinct !DICompositeType(tag: DW_TAG_union_type, scope: !1566, file: !1567, line: 142, size: 256, elements: !1578)
!1578 = !{!1579, !1634, !1638}
!1579 = !DIDerivedType(tag: DW_TAG_member, name: "dir", scope: !1577, file: !1567, line: 143, baseType: !1580, size: 192)
!1580 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_dir", file: !1567, line: 91, size: 192, elements: !1581)
!1581 = !{!1582, !1583, !1584}
!1582 = !DIDerivedType(tag: DW_TAG_member, name: "subdirs", scope: !1580, file: !1567, line: 92, baseType: !251, size: 64)
!1583 = !DIDerivedType(tag: DW_TAG_member, name: "children", scope: !1580, file: !1567, line: 94, baseType: !244, size: 64, offset: 64)
!1584 = !DIDerivedType(tag: DW_TAG_member, name: "root", scope: !1580, file: !1567, line: 100, baseType: !1585, size: 64, offset: 128)
!1585 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1586, size: 64)
!1586 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_root", file: !1567, line: 180, size: 704, elements: !1587)
!1587 = !{!1588, !1589, !1590, !1604, !1605, !1606, !1632, !1633}
!1588 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1586, file: !1567, line: 182, baseType: !1565, size: 64)
!1589 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1586, file: !1567, line: 183, baseType: !7, size: 32, offset: 64)
!1590 = !DIDerivedType(tag: DW_TAG_member, name: "ino_idr", scope: !1586, file: !1567, line: 186, baseType: !1591, size: 192, offset: 128)
!1591 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "idr", file: !1592, line: 19, size: 192, elements: !1593)
!1592 = !DIFile(filename: "./include/linux/idr.h", directory: "/home/lizy2001/genbc/linux")
!1593 = !{!1594, !1602, !1603}
!1594 = !DIDerivedType(tag: DW_TAG_member, name: "idr_rt", scope: !1591, file: !1592, line: 20, baseType: !1595, size: 128)
!1595 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "xarray", file: !1596, line: 292, size: 128, elements: !1597)
!1596 = !DIFile(filename: "./include/linux/xarray.h", directory: "/home/lizy2001/genbc/linux")
!1597 = !{!1598, !1599, !1601}
!1598 = !DIDerivedType(tag: DW_TAG_member, name: "xa_lock", scope: !1595, file: !1596, line: 293, baseType: !517)
!1599 = !DIDerivedType(tag: DW_TAG_member, name: "xa_flags", scope: !1595, file: !1596, line: 295, baseType: !1600, size: 32)
!1600 = !DIDerivedType(tag: DW_TAG_typedef, name: "gfp_t", file: !277, line: 148, baseType: !7)
!1601 = !DIDerivedType(tag: DW_TAG_member, name: "xa_head", scope: !1595, file: !1596, line: 296, baseType: !77, size: 64, offset: 64)
!1602 = !DIDerivedType(tag: DW_TAG_member, name: "idr_base", scope: !1591, file: !1592, line: 21, baseType: !7, size: 32, offset: 128)
!1603 = !DIDerivedType(tag: DW_TAG_member, name: "idr_next", scope: !1591, file: !1592, line: 22, baseType: !7, size: 32, offset: 160)
!1604 = !DIDerivedType(tag: DW_TAG_member, name: "last_id_lowbits", scope: !1586, file: !1567, line: 187, baseType: !208, size: 32, offset: 320)
!1605 = !DIDerivedType(tag: DW_TAG_member, name: "id_highbits", scope: !1586, file: !1567, line: 188, baseType: !208, size: 32, offset: 352)
!1606 = !DIDerivedType(tag: DW_TAG_member, name: "syscall_ops", scope: !1586, file: !1567, line: 189, baseType: !1607, size: 64, offset: 384)
!1607 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1608, size: 64)
!1608 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_syscall_ops", file: !1567, line: 168, size: 320, elements: !1609)
!1609 = !{!1610, !1616, !1620, !1624, !1628}
!1610 = !DIDerivedType(tag: DW_TAG_member, name: "show_options", scope: !1608, file: !1567, line: 169, baseType: !1611, size: 64)
!1611 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1612, size: 64)
!1612 = !DISubroutineType(types: !1613)
!1613 = !{!106, !1614, !1585}
!1614 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1615, size: 64)
!1615 = !DICompositeType(tag: DW_TAG_structure_type, name: "seq_file", file: !459, line: 539, flags: DIFlagFwdDecl)
!1616 = !DIDerivedType(tag: DW_TAG_member, name: "mkdir", scope: !1608, file: !1567, line: 171, baseType: !1617, size: 64, offset: 64)
!1617 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1618, size: 64)
!1618 = !DISubroutineType(types: !1619)
!1619 = !{!106, !1565, !89, !1472}
!1620 = !DIDerivedType(tag: DW_TAG_member, name: "rmdir", scope: !1608, file: !1567, line: 173, baseType: !1621, size: 64, offset: 128)
!1621 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1622, size: 64)
!1622 = !DISubroutineType(types: !1623)
!1623 = !{!106, !1565}
!1624 = !DIDerivedType(tag: DW_TAG_member, name: "rename", scope: !1608, file: !1567, line: 174, baseType: !1625, size: 64, offset: 192)
!1625 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1626, size: 64)
!1626 = !DISubroutineType(types: !1627)
!1627 = !{!106, !1565, !1565, !89}
!1628 = !DIDerivedType(tag: DW_TAG_member, name: "show_path", scope: !1608, file: !1567, line: 176, baseType: !1629, size: 64, offset: 256)
!1629 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1630, size: 64)
!1630 = !DISubroutineType(types: !1631)
!1631 = !{!106, !1614, !1565, !1585}
!1632 = !DIDerivedType(tag: DW_TAG_member, name: "supers", scope: !1586, file: !1567, line: 192, baseType: !302, size: 128, offset: 448)
!1633 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate_waitq", scope: !1586, file: !1567, line: 194, baseType: !786, size: 128, offset: 576)
!1634 = !DIDerivedType(tag: DW_TAG_member, name: "symlink", scope: !1577, file: !1567, line: 144, baseType: !1635, size: 64)
!1635 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_symlink", file: !1567, line: 103, size: 64, elements: !1636)
!1636 = !{!1637}
!1637 = !DIDerivedType(tag: DW_TAG_member, name: "target_kn", scope: !1635, file: !1567, line: 104, baseType: !1565, size: 64)
!1638 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !1577, file: !1567, line: 145, baseType: !1639, size: 256)
!1639 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_elem_attr", file: !1567, line: 107, size: 256, elements: !1640)
!1640 = !{!1641, !1706, !1709, !1710}
!1641 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1639, file: !1567, line: 108, baseType: !1642, size: 64)
!1642 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1643, size: 64)
!1643 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1644)
!1644 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_ops", file: !1567, line: 217, size: 768, elements: !1645)
!1645 = !{!1646, !1666, !1670, !1674, !1679, !1683, !1687, !1691, !1692, !1693, !1694, !1702}
!1646 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1644, file: !1567, line: 222, baseType: !1647, size: 64)
!1647 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1648, size: 64)
!1648 = !DISubroutineType(types: !1649)
!1649 = !{!106, !1650}
!1650 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1651, size: 64)
!1651 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_file", file: !1567, line: 197, size: 1088, elements: !1652)
!1652 = !{!1653, !1654, !1655, !1656, !1657, !1658, !1659, !1660, !1661, !1662, !1663, !1664, !1665}
!1653 = !DIDerivedType(tag: DW_TAG_member, name: "kn", scope: !1651, file: !1567, line: 199, baseType: !1565, size: 64)
!1654 = !DIDerivedType(tag: DW_TAG_member, name: "file", scope: !1651, file: !1567, line: 200, baseType: !481, size: 64, offset: 64)
!1655 = !DIDerivedType(tag: DW_TAG_member, name: "seq_file", scope: !1651, file: !1567, line: 201, baseType: !1614, size: 64, offset: 128)
!1656 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1651, file: !1567, line: 202, baseType: !77, size: 64, offset: 192)
!1657 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1651, file: !1567, line: 205, baseType: !582, size: 192, offset: 256)
!1658 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_mutex", scope: !1651, file: !1567, line: 206, baseType: !582, size: 192, offset: 448)
!1659 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1651, file: !1567, line: 207, baseType: !106, size: 32, offset: 640)
!1660 = !DIDerivedType(tag: DW_TAG_member, name: "list", scope: !1651, file: !1567, line: 208, baseType: !302, size: 128, offset: 704)
!1661 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc_buf", scope: !1651, file: !1567, line: 209, baseType: !112, size: 64, offset: 832)
!1662 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1651, file: !1567, line: 211, baseType: !902, size: 64, offset: 896)
!1663 = !DIDerivedType(tag: DW_TAG_member, name: "mmapped", scope: !1651, file: !1567, line: 212, baseType: !651, size: 1, offset: 960, flags: DIFlagBitField, extraData: i64 960)
!1664 = !DIDerivedType(tag: DW_TAG_member, name: "released", scope: !1651, file: !1567, line: 213, baseType: !651, size: 1, offset: 961, flags: DIFlagBitField, extraData: i64 960)
!1665 = !DIDerivedType(tag: DW_TAG_member, name: "vm_ops", scope: !1651, file: !1567, line: 214, baseType: !476, size: 64, offset: 1024)
!1666 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1644, file: !1567, line: 223, baseType: !1667, size: 64, offset: 64)
!1667 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1668, size: 64)
!1668 = !DISubroutineType(types: !1669)
!1669 = !{null, !1650}
!1670 = !DIDerivedType(tag: DW_TAG_member, name: "seq_show", scope: !1644, file: !1567, line: 236, baseType: !1671, size: 64, offset: 128)
!1671 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1672, size: 64)
!1672 = !DISubroutineType(types: !1673)
!1673 = !{!106, !1614, !77}
!1674 = !DIDerivedType(tag: DW_TAG_member, name: "seq_start", scope: !1644, file: !1567, line: 238, baseType: !1675, size: 64, offset: 192)
!1675 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1676, size: 64)
!1676 = !DISubroutineType(types: !1677)
!1677 = !{!77, !1614, !1678}
!1678 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1504, size: 64)
!1679 = !DIDerivedType(tag: DW_TAG_member, name: "seq_next", scope: !1644, file: !1567, line: 239, baseType: !1680, size: 64, offset: 256)
!1680 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1681, size: 64)
!1681 = !DISubroutineType(types: !1682)
!1682 = !{!77, !1614, !77, !1678}
!1683 = !DIDerivedType(tag: DW_TAG_member, name: "seq_stop", scope: !1644, file: !1567, line: 240, baseType: !1684, size: 64, offset: 320)
!1684 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1685, size: 64)
!1685 = !DISubroutineType(types: !1686)
!1686 = !{null, !1614, !77}
!1687 = !DIDerivedType(tag: DW_TAG_member, name: "read", scope: !1644, file: !1567, line: 242, baseType: !1688, size: 64, offset: 384)
!1688 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1689, size: 64)
!1689 = !DISubroutineType(types: !1690)
!1690 = !{!1465, !1650, !112, !902, !1504}
!1691 = !DIDerivedType(tag: DW_TAG_member, name: "atomic_write_len", scope: !1644, file: !1567, line: 252, baseType: !902, size: 64, offset: 448)
!1692 = !DIDerivedType(tag: DW_TAG_member, name: "prealloc", scope: !1644, file: !1567, line: 259, baseType: !651, size: 8, offset: 512)
!1693 = !DIDerivedType(tag: DW_TAG_member, name: "write", scope: !1644, file: !1567, line: 260, baseType: !1688, size: 64, offset: 576)
!1694 = !DIDerivedType(tag: DW_TAG_member, name: "poll", scope: !1644, file: !1567, line: 263, baseType: !1695, size: 64, offset: 640)
!1695 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1696, size: 64)
!1696 = !DISubroutineType(types: !1697)
!1697 = !{!1698, !1650, !1700}
!1698 = !DIDerivedType(tag: DW_TAG_typedef, name: "__poll_t", file: !1699, line: 52, baseType: !7)
!1699 = !DIFile(filename: "./include/uapi/linux/types.h", directory: "/home/lizy2001/genbc/linux")
!1700 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1701, size: 64)
!1701 = !DICompositeType(tag: DW_TAG_structure_type, name: "poll_table_struct", file: !1567, line: 27, flags: DIFlagFwdDecl)
!1702 = !DIDerivedType(tag: DW_TAG_member, name: "mmap", scope: !1644, file: !1567, line: 266, baseType: !1703, size: 64, offset: 704)
!1703 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1704, size: 64)
!1704 = !DISubroutineType(types: !1705)
!1705 = !{!106, !1650, !447}
!1706 = !DIDerivedType(tag: DW_TAG_member, name: "open", scope: !1639, file: !1567, line: 109, baseType: !1707, size: 64, offset: 64)
!1707 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1708, size: 64)
!1708 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_open_node", file: !1567, line: 31, flags: DIFlagFwdDecl)
!1709 = !DIDerivedType(tag: DW_TAG_member, name: "size", scope: !1639, file: !1567, line: 110, baseType: !1504, size: 64, offset: 128)
!1710 = !DIDerivedType(tag: DW_TAG_member, name: "notify_next", scope: !1639, file: !1567, line: 111, baseType: !1565, size: 64, offset: 192)
!1711 = !DIDerivedType(tag: DW_TAG_member, name: "priv", scope: !1566, file: !1567, line: 148, baseType: !77, size: 64, offset: 768)
!1712 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1566, file: !1567, line: 154, baseType: !309, size: 64, offset: 832)
!1713 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1566, file: !1567, line: 156, baseType: !76, size: 16, offset: 896)
!1714 = !DIDerivedType(tag: DW_TAG_member, name: "mode", scope: !1566, file: !1567, line: 157, baseType: !1472, size: 16, offset: 912)
!1715 = !DIDerivedType(tag: DW_TAG_member, name: "iattr", scope: !1566, file: !1567, line: 158, baseType: !1716, size: 64, offset: 960)
!1716 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1717, size: 64)
!1717 = !DICompositeType(tag: DW_TAG_structure_type, name: "kernfs_iattrs", file: !1567, line: 32, flags: DIFlagFwdDecl)
!1718 = !DIDerivedType(tag: DW_TAG_member, name: "kref", scope: !1400, file: !1401, line: 71, baseType: !1719, size: 32, offset: 448)
!1719 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "kref", file: !1720, line: 19, size: 32, elements: !1721)
!1720 = !DIFile(filename: "./include/linux/kref.h", directory: "/home/lizy2001/genbc/linux")
!1721 = !{!1722}
!1722 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1719, file: !1720, line: 20, baseType: !271, size: 32)
!1723 = !DIDerivedType(tag: DW_TAG_member, name: "state_initialized", scope: !1400, file: !1401, line: 75, baseType: !7, size: 1, offset: 480, flags: DIFlagBitField, extraData: i64 480)
!1724 = !DIDerivedType(tag: DW_TAG_member, name: "state_in_sysfs", scope: !1400, file: !1401, line: 76, baseType: !7, size: 1, offset: 481, flags: DIFlagBitField, extraData: i64 480)
!1725 = !DIDerivedType(tag: DW_TAG_member, name: "state_add_uevent_sent", scope: !1400, file: !1401, line: 77, baseType: !7, size: 1, offset: 482, flags: DIFlagBitField, extraData: i64 480)
!1726 = !DIDerivedType(tag: DW_TAG_member, name: "state_remove_uevent_sent", scope: !1400, file: !1401, line: 78, baseType: !7, size: 1, offset: 483, flags: DIFlagBitField, extraData: i64 480)
!1727 = !DIDerivedType(tag: DW_TAG_member, name: "uevent_suppress", scope: !1400, file: !1401, line: 79, baseType: !7, size: 1, offset: 484, flags: DIFlagBitField, extraData: i64 480)
!1728 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !1397, file: !30, line: 463, baseType: !1729, size: 64, offset: 512)
!1729 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1397, size: 64)
!1730 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1397, file: !30, line: 465, baseType: !1731, size: 64, offset: 576)
!1731 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1732, size: 64)
!1732 = !DICompositeType(tag: DW_TAG_structure_type, name: "device_private", file: !30, line: 36, flags: DIFlagFwdDecl)
!1733 = !DIDerivedType(tag: DW_TAG_member, name: "init_name", scope: !1397, file: !30, line: 467, baseType: !89, size: 64, offset: 640)
!1734 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1397, file: !30, line: 468, baseType: !1735, size: 64, offset: 704)
!1735 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1736, size: 64)
!1736 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1737)
!1737 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_type", file: !30, line: 87, size: 384, elements: !1738)
!1738 = !{!1739, !1740, !1741, !1745, !1750, !1754}
!1739 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1737, file: !30, line: 88, baseType: !89, size: 64)
!1740 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1737, file: !30, line: 89, baseType: !1480, size: 64, offset: 64)
!1741 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1737, file: !30, line: 90, baseType: !1742, size: 64, offset: 128)
!1742 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1743, size: 64)
!1743 = !DISubroutineType(types: !1744)
!1744 = !{!106, !1729, !1434}
!1745 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !1737, file: !30, line: 91, baseType: !1746, size: 64, offset: 192)
!1746 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1747, size: 64)
!1747 = !DISubroutineType(types: !1748)
!1748 = !{!112, !1729, !1749, !1550, !1557}
!1749 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1472, size: 64)
!1750 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1737, file: !30, line: 93, baseType: !1751, size: 64, offset: 256)
!1751 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1752, size: 64)
!1752 = !DISubroutineType(types: !1753)
!1753 = !{null, !1729}
!1754 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1737, file: !30, line: 95, baseType: !1755, size: 64, offset: 320)
!1755 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1756, size: 64)
!1756 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1757)
!1757 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_ops", file: !37, line: 278, size: 1472, elements: !1758)
!1758 = !{!1759, !1763, !1764, !1765, !1766, !1767, !1768, !1769, !1770, !1771, !1772, !1773, !1774, !1775, !1776, !1777, !1778, !1779, !1780, !1781, !1782, !1783, !1784}
!1759 = !DIDerivedType(tag: DW_TAG_member, name: "prepare", scope: !1757, file: !37, line: 279, baseType: !1760, size: 64)
!1760 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1761, size: 64)
!1761 = !DISubroutineType(types: !1762)
!1762 = !{!106, !1729}
!1763 = !DIDerivedType(tag: DW_TAG_member, name: "complete", scope: !1757, file: !37, line: 280, baseType: !1751, size: 64, offset: 64)
!1764 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1757, file: !37, line: 281, baseType: !1760, size: 64, offset: 128)
!1765 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1757, file: !37, line: 282, baseType: !1760, size: 64, offset: 192)
!1766 = !DIDerivedType(tag: DW_TAG_member, name: "freeze", scope: !1757, file: !37, line: 283, baseType: !1760, size: 64, offset: 256)
!1767 = !DIDerivedType(tag: DW_TAG_member, name: "thaw", scope: !1757, file: !37, line: 284, baseType: !1760, size: 64, offset: 320)
!1768 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff", scope: !1757, file: !37, line: 285, baseType: !1760, size: 64, offset: 384)
!1769 = !DIDerivedType(tag: DW_TAG_member, name: "restore", scope: !1757, file: !37, line: 286, baseType: !1760, size: 64, offset: 448)
!1770 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_late", scope: !1757, file: !37, line: 287, baseType: !1760, size: 64, offset: 512)
!1771 = !DIDerivedType(tag: DW_TAG_member, name: "resume_early", scope: !1757, file: !37, line: 288, baseType: !1760, size: 64, offset: 576)
!1772 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_late", scope: !1757, file: !37, line: 289, baseType: !1760, size: 64, offset: 640)
!1773 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_early", scope: !1757, file: !37, line: 290, baseType: !1760, size: 64, offset: 704)
!1774 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_late", scope: !1757, file: !37, line: 291, baseType: !1760, size: 64, offset: 768)
!1775 = !DIDerivedType(tag: DW_TAG_member, name: "restore_early", scope: !1757, file: !37, line: 292, baseType: !1760, size: 64, offset: 832)
!1776 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_noirq", scope: !1757, file: !37, line: 293, baseType: !1760, size: 64, offset: 896)
!1777 = !DIDerivedType(tag: DW_TAG_member, name: "resume_noirq", scope: !1757, file: !37, line: 294, baseType: !1760, size: 64, offset: 960)
!1778 = !DIDerivedType(tag: DW_TAG_member, name: "freeze_noirq", scope: !1757, file: !37, line: 295, baseType: !1760, size: 64, offset: 1024)
!1779 = !DIDerivedType(tag: DW_TAG_member, name: "thaw_noirq", scope: !1757, file: !37, line: 296, baseType: !1760, size: 64, offset: 1088)
!1780 = !DIDerivedType(tag: DW_TAG_member, name: "poweroff_noirq", scope: !1757, file: !37, line: 297, baseType: !1760, size: 64, offset: 1152)
!1781 = !DIDerivedType(tag: DW_TAG_member, name: "restore_noirq", scope: !1757, file: !37, line: 298, baseType: !1760, size: 64, offset: 1216)
!1782 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_suspend", scope: !1757, file: !37, line: 299, baseType: !1760, size: 64, offset: 1280)
!1783 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_resume", scope: !1757, file: !37, line: 300, baseType: !1760, size: 64, offset: 1344)
!1784 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_idle", scope: !1757, file: !37, line: 301, baseType: !1760, size: 64, offset: 1408)
!1785 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1397, file: !30, line: 470, baseType: !1786, size: 64, offset: 768)
!1786 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1787, size: 64)
!1787 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "bus_type", file: !1788, line: 82, size: 1408, elements: !1789)
!1788 = !DIFile(filename: "./include/linux/device/bus.h", directory: "/home/lizy2001/genbc/linux")
!1789 = !{!1790, !1791, !1792, !1793, !1794, !1795, !1796, !1856, !1857, !1858, !1859, !1860, !1861, !1862, !1863, !1864, !1865, !1866, !1867, !1868, !1872, !1875, !1878}
!1790 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1787, file: !1788, line: 83, baseType: !89, size: 64)
!1791 = !DIDerivedType(tag: DW_TAG_member, name: "dev_name", scope: !1787, file: !1788, line: 84, baseType: !89, size: 64, offset: 64)
!1792 = !DIDerivedType(tag: DW_TAG_member, name: "dev_root", scope: !1787, file: !1788, line: 85, baseType: !1729, size: 64, offset: 128)
!1793 = !DIDerivedType(tag: DW_TAG_member, name: "bus_groups", scope: !1787, file: !1788, line: 86, baseType: !1480, size: 64, offset: 192)
!1794 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1787, file: !1788, line: 87, baseType: !1480, size: 64, offset: 256)
!1795 = !DIDerivedType(tag: DW_TAG_member, name: "drv_groups", scope: !1787, file: !1788, line: 88, baseType: !1480, size: 64, offset: 320)
!1796 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !1787, file: !1788, line: 90, baseType: !1797, size: 64, offset: 384)
!1797 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1798, size: 64)
!1798 = !DISubroutineType(types: !1799)
!1799 = !{!106, !1729, !1800}
!1800 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1801, size: 64)
!1801 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_driver", file: !24, line: 95, size: 1152, elements: !1802)
!1802 = !{!1803, !1804, !1805, !1806, !1807, !1808, !1809, !1823, !1836, !1837, !1838, !1839, !1840, !1848, !1849, !1850, !1851, !1852, !1853}
!1803 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1801, file: !24, line: 96, baseType: !89, size: 64)
!1804 = !DIDerivedType(tag: DW_TAG_member, name: "bus", scope: !1801, file: !24, line: 97, baseType: !1786, size: 64, offset: 64)
!1805 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !1801, file: !24, line: 99, baseType: !93, size: 64, offset: 128)
!1806 = !DIDerivedType(tag: DW_TAG_member, name: "mod_name", scope: !1801, file: !24, line: 100, baseType: !89, size: 64, offset: 192)
!1807 = !DIDerivedType(tag: DW_TAG_member, name: "suppress_bind_attrs", scope: !1801, file: !24, line: 102, baseType: !651, size: 8, offset: 256)
!1808 = !DIDerivedType(tag: DW_TAG_member, name: "probe_type", scope: !1801, file: !24, line: 103, baseType: !23, size: 32, offset: 288)
!1809 = !DIDerivedType(tag: DW_TAG_member, name: "of_match_table", scope: !1801, file: !24, line: 105, baseType: !1810, size: 64, offset: 320)
!1810 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1811, size: 64)
!1811 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1812)
!1812 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "of_device_id", file: !1813, line: 262, size: 1600, elements: !1814)
!1813 = !DIFile(filename: "./include/linux/mod_devicetable.h", directory: "/home/lizy2001/genbc/linux")
!1814 = !{!1815, !1817, !1818, !1822}
!1815 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1812, file: !1813, line: 263, baseType: !1816, size: 256)
!1816 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 256, elements: !1307)
!1817 = !DIDerivedType(tag: DW_TAG_member, name: "type", scope: !1812, file: !1813, line: 264, baseType: !1816, size: 256, offset: 256)
!1818 = !DIDerivedType(tag: DW_TAG_member, name: "compatible", scope: !1812, file: !1813, line: 265, baseType: !1819, size: 1024, offset: 512)
!1819 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 1024, elements: !1820)
!1820 = !{!1821}
!1821 = !DISubrange(count: 128)
!1822 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !1812, file: !1813, line: 266, baseType: !1204, size: 64, offset: 1536)
!1823 = !DIDerivedType(tag: DW_TAG_member, name: "acpi_match_table", scope: !1801, file: !24, line: 106, baseType: !1824, size: 64, offset: 384)
!1824 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1825, size: 64)
!1825 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1826)
!1826 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "acpi_device_id", file: !1813, line: 210, size: 256, elements: !1827)
!1827 = !{!1828, !1832, !1834, !1835}
!1828 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1826, file: !1813, line: 211, baseType: !1829, size: 72)
!1829 = !DICompositeType(tag: DW_TAG_array_type, baseType: !79, size: 72, elements: !1830)
!1830 = !{!1831}
!1831 = !DISubrange(count: 9)
!1832 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1826, file: !1813, line: 212, baseType: !1833, size: 64, offset: 128)
!1833 = !DIDerivedType(tag: DW_TAG_typedef, name: "kernel_ulong_t", file: !1813, line: 14, baseType: !251)
!1834 = !DIDerivedType(tag: DW_TAG_member, name: "cls", scope: !1826, file: !1813, line: 213, baseType: !209, size: 32, offset: 192)
!1835 = !DIDerivedType(tag: DW_TAG_member, name: "cls_msk", scope: !1826, file: !1813, line: 214, baseType: !209, size: 32, offset: 224)
!1836 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1801, file: !24, line: 108, baseType: !1760, size: 64, offset: 448)
!1837 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1801, file: !24, line: 109, baseType: !1751, size: 64, offset: 512)
!1838 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1801, file: !24, line: 110, baseType: !1760, size: 64, offset: 576)
!1839 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1801, file: !24, line: 111, baseType: !1751, size: 64, offset: 640)
!1840 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1801, file: !24, line: 112, baseType: !1841, size: 64, offset: 704)
!1841 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1842, size: 64)
!1842 = !DISubroutineType(types: !1843)
!1843 = !{!106, !1729, !1844}
!1844 = !DIDerivedType(tag: DW_TAG_typedef, name: "pm_message_t", file: !37, line: 52, baseType: !1845)
!1845 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_message", file: !37, line: 50, size: 32, elements: !1846)
!1846 = !{!1847}
!1847 = !DIDerivedType(tag: DW_TAG_member, name: "event", scope: !1845, file: !37, line: 51, baseType: !106, size: 32)
!1848 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1801, file: !24, line: 113, baseType: !1760, size: 64, offset: 768)
!1849 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1801, file: !24, line: 114, baseType: !1480, size: 64, offset: 832)
!1850 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !1801, file: !24, line: 115, baseType: !1480, size: 64, offset: 896)
!1851 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1801, file: !24, line: 117, baseType: !1755, size: 64, offset: 960)
!1852 = !DIDerivedType(tag: DW_TAG_member, name: "coredump", scope: !1801, file: !24, line: 118, baseType: !1751, size: 64, offset: 1024)
!1853 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1801, file: !24, line: 120, baseType: !1854, size: 64, offset: 1088)
!1854 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1855, size: 64)
!1855 = !DICompositeType(tag: DW_TAG_structure_type, name: "driver_private", file: !24, line: 120, flags: DIFlagFwdDecl)
!1856 = !DIDerivedType(tag: DW_TAG_member, name: "uevent", scope: !1787, file: !1788, line: 91, baseType: !1742, size: 64, offset: 448)
!1857 = !DIDerivedType(tag: DW_TAG_member, name: "probe", scope: !1787, file: !1788, line: 92, baseType: !1760, size: 64, offset: 512)
!1858 = !DIDerivedType(tag: DW_TAG_member, name: "sync_state", scope: !1787, file: !1788, line: 93, baseType: !1751, size: 64, offset: 576)
!1859 = !DIDerivedType(tag: DW_TAG_member, name: "remove", scope: !1787, file: !1788, line: 94, baseType: !1760, size: 64, offset: 640)
!1860 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown", scope: !1787, file: !1788, line: 95, baseType: !1751, size: 64, offset: 704)
!1861 = !DIDerivedType(tag: DW_TAG_member, name: "online", scope: !1787, file: !1788, line: 97, baseType: !1760, size: 64, offset: 768)
!1862 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1787, file: !1788, line: 98, baseType: !1760, size: 64, offset: 832)
!1863 = !DIDerivedType(tag: DW_TAG_member, name: "suspend", scope: !1787, file: !1788, line: 100, baseType: !1841, size: 64, offset: 896)
!1864 = !DIDerivedType(tag: DW_TAG_member, name: "resume", scope: !1787, file: !1788, line: 101, baseType: !1760, size: 64, offset: 960)
!1865 = !DIDerivedType(tag: DW_TAG_member, name: "num_vf", scope: !1787, file: !1788, line: 103, baseType: !1760, size: 64, offset: 1024)
!1866 = !DIDerivedType(tag: DW_TAG_member, name: "dma_configure", scope: !1787, file: !1788, line: 105, baseType: !1760, size: 64, offset: 1088)
!1867 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !1787, file: !1788, line: 107, baseType: !1755, size: 64, offset: 1152)
!1868 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_ops", scope: !1787, file: !1788, line: 109, baseType: !1869, size: 64, offset: 1216)
!1869 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1870, size: 64)
!1870 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1871)
!1871 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_ops", file: !1788, line: 109, flags: DIFlagFwdDecl)
!1872 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !1787, file: !1788, line: 111, baseType: !1873, size: 64, offset: 1280)
!1873 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1874, size: 64)
!1874 = !DICompositeType(tag: DW_TAG_structure_type, name: "subsys_private", file: !1788, line: 111, flags: DIFlagFwdDecl)
!1875 = !DIDerivedType(tag: DW_TAG_member, name: "lock_key", scope: !1787, file: !1788, line: 112, baseType: !1876, offset: 1344)
!1876 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "lock_class_key", file: !1877, line: 187, elements: !238)
!1877 = !DIFile(filename: "./include/linux/lockdep_types.h", directory: "/home/lizy2001/genbc/linux")
!1878 = !DIDerivedType(tag: DW_TAG_member, name: "need_parent_lock", scope: !1787, file: !1788, line: 114, baseType: !651, size: 8, offset: 1344)
!1879 = !DIDerivedType(tag: DW_TAG_member, name: "driver", scope: !1397, file: !30, line: 471, baseType: !1800, size: 64, offset: 832)
!1880 = !DIDerivedType(tag: DW_TAG_member, name: "platform_data", scope: !1397, file: !30, line: 473, baseType: !77, size: 64, offset: 896)
!1881 = !DIDerivedType(tag: DW_TAG_member, name: "driver_data", scope: !1397, file: !30, line: 475, baseType: !77, size: 64, offset: 960)
!1882 = !DIDerivedType(tag: DW_TAG_member, name: "mutex", scope: !1397, file: !30, line: 480, baseType: !582, size: 192, offset: 1024)
!1883 = !DIDerivedType(tag: DW_TAG_member, name: "links", scope: !1397, file: !30, line: 484, baseType: !1884, size: 576, offset: 1216)
!1884 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_links_info", file: !30, line: 361, size: 576, elements: !1885)
!1885 = !{!1886, !1887, !1888, !1889, !1890, !1891}
!1886 = !DIDerivedType(tag: DW_TAG_member, name: "suppliers", scope: !1884, file: !30, line: 362, baseType: !302, size: 128)
!1887 = !DIDerivedType(tag: DW_TAG_member, name: "consumers", scope: !1884, file: !30, line: 363, baseType: !302, size: 128, offset: 128)
!1888 = !DIDerivedType(tag: DW_TAG_member, name: "needs_suppliers", scope: !1884, file: !30, line: 364, baseType: !302, size: 128, offset: 256)
!1889 = !DIDerivedType(tag: DW_TAG_member, name: "defer_hook", scope: !1884, file: !30, line: 365, baseType: !302, size: 128, offset: 384)
!1890 = !DIDerivedType(tag: DW_TAG_member, name: "need_for_probe", scope: !1884, file: !30, line: 366, baseType: !651, size: 8, offset: 512)
!1891 = !DIDerivedType(tag: DW_TAG_member, name: "status", scope: !1884, file: !30, line: 367, baseType: !29, size: 32, offset: 544)
!1892 = !DIDerivedType(tag: DW_TAG_member, name: "power", scope: !1397, file: !30, line: 485, baseType: !1893, size: 2304, offset: 1792)
!1893 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_info", file: !37, line: 565, size: 2304, elements: !1894)
!1894 = !{!1895, !1896, !1897, !1898, !1899, !1900, !1901, !1902, !1903, !1904, !1905, !1906, !1907, !1908, !1909, !1910, !1948, !1949, !1950, !1951, !1952, !1953, !1954, !1955, !1956, !1957, !1958, !1959, !1960, !1961, !1962, !1963, !1964, !1965, !1966, !1967, !1968, !1969, !1970, !1971, !1972, !1973, !1974, !1975, !1976, !1977, !1978, !1979, !1980, !1990, !1994}
!1895 = !DIDerivedType(tag: DW_TAG_member, name: "power_state", scope: !1893, file: !37, line: 566, baseType: !1844, size: 32)
!1896 = !DIDerivedType(tag: DW_TAG_member, name: "can_wakeup", scope: !1893, file: !37, line: 567, baseType: !7, size: 1, offset: 32, flags: DIFlagBitField, extraData: i64 32)
!1897 = !DIDerivedType(tag: DW_TAG_member, name: "async_suspend", scope: !1893, file: !37, line: 568, baseType: !7, size: 1, offset: 33, flags: DIFlagBitField, extraData: i64 32)
!1898 = !DIDerivedType(tag: DW_TAG_member, name: "in_dpm_list", scope: !1893, file: !37, line: 569, baseType: !651, size: 1, offset: 34, flags: DIFlagBitField, extraData: i64 32)
!1899 = !DIDerivedType(tag: DW_TAG_member, name: "is_prepared", scope: !1893, file: !37, line: 570, baseType: !651, size: 1, offset: 35, flags: DIFlagBitField, extraData: i64 32)
!1900 = !DIDerivedType(tag: DW_TAG_member, name: "is_suspended", scope: !1893, file: !37, line: 571, baseType: !651, size: 1, offset: 36, flags: DIFlagBitField, extraData: i64 32)
!1901 = !DIDerivedType(tag: DW_TAG_member, name: "is_noirq_suspended", scope: !1893, file: !37, line: 572, baseType: !651, size: 1, offset: 37, flags: DIFlagBitField, extraData: i64 32)
!1902 = !DIDerivedType(tag: DW_TAG_member, name: "is_late_suspended", scope: !1893, file: !37, line: 573, baseType: !651, size: 1, offset: 38, flags: DIFlagBitField, extraData: i64 32)
!1903 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm", scope: !1893, file: !37, line: 574, baseType: !651, size: 1, offset: 39, flags: DIFlagBitField, extraData: i64 32)
!1904 = !DIDerivedType(tag: DW_TAG_member, name: "early_init", scope: !1893, file: !37, line: 575, baseType: !651, size: 1, offset: 40, flags: DIFlagBitField, extraData: i64 32)
!1905 = !DIDerivedType(tag: DW_TAG_member, name: "direct_complete", scope: !1893, file: !37, line: 576, baseType: !651, size: 1, offset: 41, flags: DIFlagBitField, extraData: i64 32)
!1906 = !DIDerivedType(tag: DW_TAG_member, name: "driver_flags", scope: !1893, file: !37, line: 577, baseType: !208, size: 32, offset: 64)
!1907 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1893, file: !37, line: 578, baseType: !517, offset: 96)
!1908 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1893, file: !37, line: 580, baseType: !302, size: 128, offset: 128)
!1909 = !DIDerivedType(tag: DW_TAG_member, name: "completion", scope: !1893, file: !37, line: 581, baseType: !628, size: 192, offset: 256)
!1910 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup", scope: !1893, file: !37, line: 582, baseType: !1911, size: 64, offset: 448)
!1911 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1912, size: 64)
!1912 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "wakeup_source", file: !1913, line: 43, size: 1472, elements: !1914)
!1913 = !DIFile(filename: "./include/linux/pm_wakeup.h", directory: "/home/lizy2001/genbc/linux")
!1914 = !{!1915, !1916, !1917, !1918, !1919, !1922, !1934, !1935, !1936, !1937, !1938, !1939, !1940, !1941, !1942, !1943, !1944, !1945, !1946, !1947}
!1915 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !1912, file: !1913, line: 44, baseType: !89, size: 64)
!1916 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1912, file: !1913, line: 45, baseType: !106, size: 32, offset: 64)
!1917 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1912, file: !1913, line: 46, baseType: !302, size: 128, offset: 128)
!1918 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1912, file: !1913, line: 47, baseType: !517, offset: 256)
!1919 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1912, file: !1913, line: 48, baseType: !1920, size: 64, offset: 256)
!1920 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1921, size: 64)
!1921 = !DICompositeType(tag: DW_TAG_structure_type, name: "wake_irq", file: !37, line: 533, flags: DIFlagFwdDecl)
!1922 = !DIDerivedType(tag: DW_TAG_member, name: "timer", scope: !1912, file: !1913, line: 49, baseType: !1923, size: 320, offset: 320)
!1923 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "timer_list", file: !1924, line: 11, size: 320, elements: !1925)
!1924 = !DIFile(filename: "./include/linux/timer.h", directory: "/home/lizy2001/genbc/linux")
!1925 = !{!1926, !1927, !1928, !1933}
!1926 = !DIDerivedType(tag: DW_TAG_member, name: "entry", scope: !1923, file: !1924, line: 16, baseType: !779, size: 128)
!1927 = !DIDerivedType(tag: DW_TAG_member, name: "expires", scope: !1923, file: !1924, line: 17, baseType: !251, size: 64, offset: 128)
!1928 = !DIDerivedType(tag: DW_TAG_member, name: "function", scope: !1923, file: !1924, line: 18, baseType: !1929, size: 64, offset: 192)
!1929 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1930, size: 64)
!1930 = !DISubroutineType(types: !1931)
!1931 = !{null, !1932}
!1932 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1923, size: 64)
!1933 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !1923, file: !1924, line: 19, baseType: !208, size: 32, offset: 256)
!1934 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1912, file: !1913, line: 50, baseType: !251, size: 64, offset: 640)
!1935 = !DIDerivedType(tag: DW_TAG_member, name: "total_time", scope: !1912, file: !1913, line: 51, baseType: !357, size: 64, offset: 704)
!1936 = !DIDerivedType(tag: DW_TAG_member, name: "max_time", scope: !1912, file: !1913, line: 52, baseType: !357, size: 64, offset: 768)
!1937 = !DIDerivedType(tag: DW_TAG_member, name: "last_time", scope: !1912, file: !1913, line: 53, baseType: !357, size: 64, offset: 832)
!1938 = !DIDerivedType(tag: DW_TAG_member, name: "start_prevent_time", scope: !1912, file: !1913, line: 54, baseType: !357, size: 64, offset: 896)
!1939 = !DIDerivedType(tag: DW_TAG_member, name: "prevent_sleep_time", scope: !1912, file: !1913, line: 55, baseType: !357, size: 64, offset: 960)
!1940 = !DIDerivedType(tag: DW_TAG_member, name: "event_count", scope: !1912, file: !1913, line: 56, baseType: !251, size: 64, offset: 1024)
!1941 = !DIDerivedType(tag: DW_TAG_member, name: "active_count", scope: !1912, file: !1913, line: 57, baseType: !251, size: 64, offset: 1088)
!1942 = !DIDerivedType(tag: DW_TAG_member, name: "relax_count", scope: !1912, file: !1913, line: 58, baseType: !251, size: 64, offset: 1152)
!1943 = !DIDerivedType(tag: DW_TAG_member, name: "expire_count", scope: !1912, file: !1913, line: 59, baseType: !251, size: 64, offset: 1216)
!1944 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_count", scope: !1912, file: !1913, line: 60, baseType: !251, size: 64, offset: 1280)
!1945 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !1912, file: !1913, line: 61, baseType: !1729, size: 64, offset: 1344)
!1946 = !DIDerivedType(tag: DW_TAG_member, name: "active", scope: !1912, file: !1913, line: 62, baseType: !651, size: 1, offset: 1408, flags: DIFlagBitField, extraData: i64 1408)
!1947 = !DIDerivedType(tag: DW_TAG_member, name: "autosleep_enabled", scope: !1912, file: !1913, line: 63, baseType: !651, size: 1, offset: 1409, flags: DIFlagBitField, extraData: i64 1408)
!1948 = !DIDerivedType(tag: DW_TAG_member, name: "wakeup_path", scope: !1893, file: !37, line: 583, baseType: !651, size: 1, offset: 512, flags: DIFlagBitField, extraData: i64 512)
!1949 = !DIDerivedType(tag: DW_TAG_member, name: "syscore", scope: !1893, file: !37, line: 584, baseType: !651, size: 1, offset: 513, flags: DIFlagBitField, extraData: i64 512)
!1950 = !DIDerivedType(tag: DW_TAG_member, name: "no_pm_callbacks", scope: !1893, file: !37, line: 585, baseType: !651, size: 1, offset: 514, flags: DIFlagBitField, extraData: i64 512)
!1951 = !DIDerivedType(tag: DW_TAG_member, name: "must_resume", scope: !1893, file: !37, line: 586, baseType: !7, size: 1, offset: 515, flags: DIFlagBitField, extraData: i64 512)
!1952 = !DIDerivedType(tag: DW_TAG_member, name: "may_skip_resume", scope: !1893, file: !37, line: 587, baseType: !7, size: 1, offset: 516, flags: DIFlagBitField, extraData: i64 512)
!1953 = !DIDerivedType(tag: DW_TAG_member, name: "suspend_timer", scope: !1893, file: !37, line: 592, baseType: !349, size: 512, offset: 576)
!1954 = !DIDerivedType(tag: DW_TAG_member, name: "timer_expires", scope: !1893, file: !37, line: 593, baseType: !309, size: 64, offset: 1088)
!1955 = !DIDerivedType(tag: DW_TAG_member, name: "work", scope: !1893, file: !37, line: 594, baseType: !657, size: 256, offset: 1152)
!1956 = !DIDerivedType(tag: DW_TAG_member, name: "wait_queue", scope: !1893, file: !37, line: 595, baseType: !786, size: 128, offset: 1408)
!1957 = !DIDerivedType(tag: DW_TAG_member, name: "wakeirq", scope: !1893, file: !37, line: 596, baseType: !1920, size: 64, offset: 1536)
!1958 = !DIDerivedType(tag: DW_TAG_member, name: "usage_count", scope: !1893, file: !37, line: 597, baseType: !276, size: 32, offset: 1600)
!1959 = !DIDerivedType(tag: DW_TAG_member, name: "child_count", scope: !1893, file: !37, line: 598, baseType: !276, size: 32, offset: 1632)
!1960 = !DIDerivedType(tag: DW_TAG_member, name: "disable_depth", scope: !1893, file: !37, line: 599, baseType: !7, size: 3, offset: 1664, flags: DIFlagBitField, extraData: i64 1664)
!1961 = !DIDerivedType(tag: DW_TAG_member, name: "idle_notification", scope: !1893, file: !37, line: 600, baseType: !7, size: 1, offset: 1667, flags: DIFlagBitField, extraData: i64 1664)
!1962 = !DIDerivedType(tag: DW_TAG_member, name: "request_pending", scope: !1893, file: !37, line: 601, baseType: !7, size: 1, offset: 1668, flags: DIFlagBitField, extraData: i64 1664)
!1963 = !DIDerivedType(tag: DW_TAG_member, name: "deferred_resume", scope: !1893, file: !37, line: 602, baseType: !7, size: 1, offset: 1669, flags: DIFlagBitField, extraData: i64 1664)
!1964 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_auto", scope: !1893, file: !37, line: 603, baseType: !7, size: 1, offset: 1670, flags: DIFlagBitField, extraData: i64 1664)
!1965 = !DIDerivedType(tag: DW_TAG_member, name: "ignore_children", scope: !1893, file: !37, line: 604, baseType: !651, size: 1, offset: 1671, flags: DIFlagBitField, extraData: i64 1664)
!1966 = !DIDerivedType(tag: DW_TAG_member, name: "no_callbacks", scope: !1893, file: !37, line: 605, baseType: !7, size: 1, offset: 1672, flags: DIFlagBitField, extraData: i64 1664)
!1967 = !DIDerivedType(tag: DW_TAG_member, name: "irq_safe", scope: !1893, file: !37, line: 606, baseType: !7, size: 1, offset: 1673, flags: DIFlagBitField, extraData: i64 1664)
!1968 = !DIDerivedType(tag: DW_TAG_member, name: "use_autosuspend", scope: !1893, file: !37, line: 607, baseType: !7, size: 1, offset: 1674, flags: DIFlagBitField, extraData: i64 1664)
!1969 = !DIDerivedType(tag: DW_TAG_member, name: "timer_autosuspends", scope: !1893, file: !37, line: 608, baseType: !7, size: 1, offset: 1675, flags: DIFlagBitField, extraData: i64 1664)
!1970 = !DIDerivedType(tag: DW_TAG_member, name: "memalloc_noio", scope: !1893, file: !37, line: 609, baseType: !7, size: 1, offset: 1676, flags: DIFlagBitField, extraData: i64 1664)
!1971 = !DIDerivedType(tag: DW_TAG_member, name: "links_count", scope: !1893, file: !37, line: 610, baseType: !7, size: 32, offset: 1696)
!1972 = !DIDerivedType(tag: DW_TAG_member, name: "request", scope: !1893, file: !37, line: 611, baseType: !36, size: 32, offset: 1728)
!1973 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_status", scope: !1893, file: !37, line: 612, baseType: !44, size: 32, offset: 1760)
!1974 = !DIDerivedType(tag: DW_TAG_member, name: "runtime_error", scope: !1893, file: !37, line: 613, baseType: !106, size: 32, offset: 1792)
!1975 = !DIDerivedType(tag: DW_TAG_member, name: "autosuspend_delay", scope: !1893, file: !37, line: 614, baseType: !106, size: 32, offset: 1824)
!1976 = !DIDerivedType(tag: DW_TAG_member, name: "last_busy", scope: !1893, file: !37, line: 615, baseType: !309, size: 64, offset: 1856)
!1977 = !DIDerivedType(tag: DW_TAG_member, name: "active_time", scope: !1893, file: !37, line: 616, baseType: !309, size: 64, offset: 1920)
!1978 = !DIDerivedType(tag: DW_TAG_member, name: "suspended_time", scope: !1893, file: !37, line: 617, baseType: !309, size: 64, offset: 1984)
!1979 = !DIDerivedType(tag: DW_TAG_member, name: "accounting_timestamp", scope: !1893, file: !37, line: 618, baseType: !309, size: 64, offset: 2048)
!1980 = !DIDerivedType(tag: DW_TAG_member, name: "subsys_data", scope: !1893, file: !37, line: 620, baseType: !1981, size: 64, offset: 2112)
!1981 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1982, size: 64)
!1982 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "pm_subsys_data", file: !37, line: 536, size: 256, elements: !1983)
!1983 = !{!1984, !1985, !1986, !1987}
!1984 = !DIDerivedType(tag: DW_TAG_member, name: "lock", scope: !1982, file: !37, line: 537, baseType: !517)
!1985 = !DIDerivedType(tag: DW_TAG_member, name: "refcount", scope: !1982, file: !37, line: 538, baseType: !7, size: 32)
!1986 = !DIDerivedType(tag: DW_TAG_member, name: "clock_list", scope: !1982, file: !37, line: 540, baseType: !302, size: 128, offset: 64)
!1987 = !DIDerivedType(tag: DW_TAG_member, name: "domain_data", scope: !1982, file: !37, line: 543, baseType: !1988, size: 64, offset: 192)
!1988 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1989, size: 64)
!1989 = !DICompositeType(tag: DW_TAG_structure_type, name: "pm_domain_data", file: !37, line: 534, flags: DIFlagFwdDecl)
!1990 = !DIDerivedType(tag: DW_TAG_member, name: "set_latency_tolerance", scope: !1893, file: !37, line: 621, baseType: !1991, size: 64, offset: 2176)
!1991 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1992, size: 64)
!1992 = !DISubroutineType(types: !1993)
!1993 = !{null, !1729, !739}
!1994 = !DIDerivedType(tag: DW_TAG_member, name: "qos", scope: !1893, file: !37, line: 622, baseType: !1995, size: 64, offset: 2240)
!1995 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1996, size: 64)
!1996 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_qos", file: !37, line: 622, flags: DIFlagFwdDecl)
!1997 = !DIDerivedType(tag: DW_TAG_member, name: "pm_domain", scope: !1397, file: !30, line: 486, baseType: !1998, size: 64, offset: 4096)
!1998 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !1999, size: 64)
!1999 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_pm_domain", file: !37, line: 642, size: 1792, elements: !2000)
!2000 = !{!2001, !2002, !2003, !2007, !2008, !2009}
!2001 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !1999, file: !37, line: 643, baseType: !1757, size: 1472)
!2002 = !DIDerivedType(tag: DW_TAG_member, name: "start", scope: !1999, file: !37, line: 644, baseType: !1760, size: 64, offset: 1472)
!2003 = !DIDerivedType(tag: DW_TAG_member, name: "detach", scope: !1999, file: !37, line: 645, baseType: !2004, size: 64, offset: 1536)
!2004 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2005, size: 64)
!2005 = !DISubroutineType(types: !2006)
!2006 = !{null, !1729, !651}
!2007 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !1999, file: !37, line: 646, baseType: !1760, size: 64, offset: 1600)
!2008 = !DIDerivedType(tag: DW_TAG_member, name: "sync", scope: !1999, file: !37, line: 647, baseType: !1751, size: 64, offset: 1664)
!2009 = !DIDerivedType(tag: DW_TAG_member, name: "dismiss", scope: !1999, file: !37, line: 648, baseType: !1751, size: 64, offset: 1728)
!2010 = !DIDerivedType(tag: DW_TAG_member, name: "msi_domain", scope: !1397, file: !30, line: 493, baseType: !2011, size: 64, offset: 4160)
!2011 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2012, size: 64)
!2012 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain", file: !51, line: 162, size: 1088, elements: !2013)
!2013 = !{!2014, !2015, !2016, !2189, !2190, !2191, !2192, !2193, !2194, !2197, !2198, !2199, !2200, !2201, !2202, !2203}
!2014 = !DIDerivedType(tag: DW_TAG_member, name: "link", scope: !2012, file: !51, line: 163, baseType: !302, size: 128)
!2015 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2012, file: !51, line: 164, baseType: !89, size: 64, offset: 128)
!2016 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2012, file: !51, line: 165, baseType: !2017, size: 64, offset: 192)
!2017 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2018, size: 64)
!2018 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2019)
!2019 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_ops", file: !51, line: 105, size: 640, elements: !2020)
!2020 = !{!2021, !2139, !2150, !2155, !2159, !2166, !2170, !2174, !2181, !2185}
!2021 = !DIDerivedType(tag: DW_TAG_member, name: "match", scope: !2019, file: !51, line: 106, baseType: !2022, size: 64)
!2022 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2023, size: 64)
!2023 = !DISubroutineType(types: !2024)
!2024 = !{!106, !2011, !2025, !50}
!2025 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2026, size: 64)
!2026 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_node", file: !2027, line: 51, size: 1344, elements: !2028)
!2027 = !DIFile(filename: "./include/linux/of.h", directory: "/home/lizy2001/genbc/linux")
!2028 = !{!2029, !2030, !2032, !2033, !2123, !2132, !2133, !2134, !2135, !2136, !2137, !2138}
!2029 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2026, file: !2027, line: 52, baseType: !89, size: 64)
!2030 = !DIDerivedType(tag: DW_TAG_member, name: "phandle", scope: !2026, file: !2027, line: 53, baseType: !2031, size: 32, offset: 64)
!2031 = !DIDerivedType(tag: DW_TAG_typedef, name: "phandle", file: !2027, line: 28, baseType: !208)
!2032 = !DIDerivedType(tag: DW_TAG_member, name: "full_name", scope: !2026, file: !2027, line: 54, baseType: !89, size: 64, offset: 128)
!2033 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2026, file: !2027, line: 55, baseType: !2034, size: 192, offset: 192)
!2034 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_handle", file: !2035, line: 17, size: 192, elements: !2036)
!2035 = !DIFile(filename: "./include/linux/fwnode.h", directory: "/home/lizy2001/genbc/linux")
!2036 = !{!2037, !2039, !2122}
!2037 = !DIDerivedType(tag: DW_TAG_member, name: "secondary", scope: !2034, file: !2035, line: 18, baseType: !2038, size: 64)
!2038 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2034, size: 64)
!2039 = !DIDerivedType(tag: DW_TAG_member, name: "ops", scope: !2034, file: !2035, line: 19, baseType: !2040, size: 64, offset: 64)
!2040 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2041, size: 64)
!2041 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2042)
!2042 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_operations", file: !2035, line: 110, size: 1152, elements: !2043)
!2043 = !{!2044, !2048, !2052, !2058, !2064, !2068, !2072, !2077, !2081, !2082, !2086, !2090, !2094, !2105, !2106, !2107, !2108, !2118}
!2044 = !DIDerivedType(tag: DW_TAG_member, name: "get", scope: !2042, file: !2035, line: 111, baseType: !2045, size: 64)
!2045 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2046, size: 64)
!2046 = !DISubroutineType(types: !2047)
!2047 = !{!2038, !2038}
!2048 = !DIDerivedType(tag: DW_TAG_member, name: "put", scope: !2042, file: !2035, line: 112, baseType: !2049, size: 64, offset: 64)
!2049 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2050, size: 64)
!2050 = !DISubroutineType(types: !2051)
!2051 = !{null, !2038}
!2052 = !DIDerivedType(tag: DW_TAG_member, name: "device_is_available", scope: !2042, file: !2035, line: 113, baseType: !2053, size: 64, offset: 128)
!2053 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2054, size: 64)
!2054 = !DISubroutineType(types: !2055)
!2055 = !{!651, !2056}
!2056 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2057, size: 64)
!2057 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2034)
!2058 = !DIDerivedType(tag: DW_TAG_member, name: "device_get_match_data", scope: !2042, file: !2035, line: 114, baseType: !2059, size: 64, offset: 192)
!2059 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2060, size: 64)
!2060 = !DISubroutineType(types: !2061)
!2061 = !{!1204, !2056, !2062}
!2062 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2063, size: 64)
!2063 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !1397)
!2064 = !DIDerivedType(tag: DW_TAG_member, name: "property_present", scope: !2042, file: !2035, line: 116, baseType: !2065, size: 64, offset: 256)
!2065 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2066, size: 64)
!2066 = !DISubroutineType(types: !2067)
!2067 = !{!651, !2056, !89}
!2068 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_int_array", scope: !2042, file: !2035, line: 118, baseType: !2069, size: 64, offset: 320)
!2069 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2070, size: 64)
!2070 = !DISubroutineType(types: !2071)
!2071 = !{!106, !2056, !89, !7, !77, !902}
!2072 = !DIDerivedType(tag: DW_TAG_member, name: "property_read_string_array", scope: !2042, file: !2035, line: 123, baseType: !2073, size: 64, offset: 384)
!2073 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2074, size: 64)
!2074 = !DISubroutineType(types: !2075)
!2075 = !{!106, !2056, !89, !2076, !902}
!2076 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !89, size: 64)
!2077 = !DIDerivedType(tag: DW_TAG_member, name: "get_name", scope: !2042, file: !2035, line: 126, baseType: !2078, size: 64, offset: 448)
!2078 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2079, size: 64)
!2079 = !DISubroutineType(types: !2080)
!2080 = !{!89, !2056}
!2081 = !DIDerivedType(tag: DW_TAG_member, name: "get_name_prefix", scope: !2042, file: !2035, line: 127, baseType: !2078, size: 64, offset: 512)
!2082 = !DIDerivedType(tag: DW_TAG_member, name: "get_parent", scope: !2042, file: !2035, line: 128, baseType: !2083, size: 64, offset: 576)
!2083 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2084, size: 64)
!2084 = !DISubroutineType(types: !2085)
!2085 = !{!2038, !2056}
!2086 = !DIDerivedType(tag: DW_TAG_member, name: "get_next_child_node", scope: !2042, file: !2035, line: 130, baseType: !2087, size: 64, offset: 640)
!2087 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2088, size: 64)
!2088 = !DISubroutineType(types: !2089)
!2089 = !{!2038, !2056, !2038}
!2090 = !DIDerivedType(tag: DW_TAG_member, name: "get_named_child_node", scope: !2042, file: !2035, line: 133, baseType: !2091, size: 64, offset: 704)
!2091 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2092, size: 64)
!2092 = !DISubroutineType(types: !2093)
!2093 = !{!2038, !2056, !89}
!2094 = !DIDerivedType(tag: DW_TAG_member, name: "get_reference_args", scope: !2042, file: !2035, line: 135, baseType: !2095, size: 64, offset: 768)
!2095 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2096, size: 64)
!2096 = !DISubroutineType(types: !2097)
!2097 = !{!106, !2056, !89, !89, !7, !7, !2098}
!2098 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2099, size: 64)
!2099 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_reference_args", file: !2035, line: 43, size: 640, elements: !2100)
!2100 = !{!2101, !2102, !2103}
!2101 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2099, file: !2035, line: 44, baseType: !2038, size: 64)
!2102 = !DIDerivedType(tag: DW_TAG_member, name: "nargs", scope: !2099, file: !2035, line: 45, baseType: !7, size: 32, offset: 64)
!2103 = !DIDerivedType(tag: DW_TAG_member, name: "args", scope: !2099, file: !2035, line: 46, baseType: !2104, size: 512, offset: 128)
!2104 = !DICompositeType(tag: DW_TAG_array_type, baseType: !309, size: 512, elements: !387)
!2105 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_next_endpoint", scope: !2042, file: !2035, line: 140, baseType: !2087, size: 64, offset: 832)
!2106 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_remote_endpoint", scope: !2042, file: !2035, line: 143, baseType: !2083, size: 64, offset: 896)
!2107 = !DIDerivedType(tag: DW_TAG_member, name: "graph_get_port_parent", scope: !2042, file: !2035, line: 145, baseType: !2045, size: 64, offset: 960)
!2108 = !DIDerivedType(tag: DW_TAG_member, name: "graph_parse_endpoint", scope: !2042, file: !2035, line: 146, baseType: !2109, size: 64, offset: 1024)
!2109 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2110, size: 64)
!2110 = !DISubroutineType(types: !2111)
!2111 = !{!106, !2056, !2112}
!2112 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2113, size: 64)
!2113 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "fwnode_endpoint", file: !2035, line: 29, size: 128, elements: !2114)
!2114 = !{!2115, !2116, !2117}
!2115 = !DIDerivedType(tag: DW_TAG_member, name: "port", scope: !2113, file: !2035, line: 30, baseType: !7, size: 32)
!2116 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !2113, file: !2035, line: 31, baseType: !7, size: 32, offset: 32)
!2117 = !DIDerivedType(tag: DW_TAG_member, name: "local_fwnode", scope: !2113, file: !2035, line: 32, baseType: !2056, size: 64, offset: 64)
!2118 = !DIDerivedType(tag: DW_TAG_member, name: "add_links", scope: !2042, file: !2035, line: 148, baseType: !2119, size: 64, offset: 1088)
!2119 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2120, size: 64)
!2120 = !DISubroutineType(types: !2121)
!2121 = !{!106, !2056, !1729}
!2122 = !DIDerivedType(tag: DW_TAG_member, name: "dev", scope: !2034, file: !2035, line: 20, baseType: !1729, size: 64, offset: 128)
!2123 = !DIDerivedType(tag: DW_TAG_member, name: "properties", scope: !2026, file: !2027, line: 57, baseType: !2124, size: 64, offset: 384)
!2124 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2125, size: 64)
!2125 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "property", file: !2027, line: 31, size: 704, elements: !2126)
!2126 = !{!2127, !2128, !2129, !2130, !2131}
!2127 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2125, file: !2027, line: 32, baseType: !112, size: 64)
!2128 = !DIDerivedType(tag: DW_TAG_member, name: "length", scope: !2125, file: !2027, line: 33, baseType: !106, size: 32, offset: 64)
!2129 = !DIDerivedType(tag: DW_TAG_member, name: "value", scope: !2125, file: !2027, line: 34, baseType: !77, size: 64, offset: 128)
!2130 = !DIDerivedType(tag: DW_TAG_member, name: "next", scope: !2125, file: !2027, line: 35, baseType: !2124, size: 64, offset: 192)
!2131 = !DIDerivedType(tag: DW_TAG_member, name: "attr", scope: !2125, file: !2027, line: 43, baseType: !1495, size: 448, offset: 256)
!2132 = !DIDerivedType(tag: DW_TAG_member, name: "deadprops", scope: !2026, file: !2027, line: 58, baseType: !2124, size: 64, offset: 448)
!2133 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2026, file: !2027, line: 59, baseType: !2025, size: 64, offset: 512)
!2134 = !DIDerivedType(tag: DW_TAG_member, name: "child", scope: !2026, file: !2027, line: 60, baseType: !2025, size: 64, offset: 576)
!2135 = !DIDerivedType(tag: DW_TAG_member, name: "sibling", scope: !2026, file: !2027, line: 61, baseType: !2025, size: 64, offset: 640)
!2136 = !DIDerivedType(tag: DW_TAG_member, name: "kobj", scope: !2026, file: !2027, line: 63, baseType: !1400, size: 512, offset: 704)
!2137 = !DIDerivedType(tag: DW_TAG_member, name: "_flags", scope: !2026, file: !2027, line: 65, baseType: !251, size: 64, offset: 1216)
!2138 = !DIDerivedType(tag: DW_TAG_member, name: "data", scope: !2026, file: !2027, line: 66, baseType: !77, size: 64, offset: 1280)
!2139 = !DIDerivedType(tag: DW_TAG_member, name: "select", scope: !2019, file: !51, line: 108, baseType: !2140, size: 64, offset: 64)
!2140 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2141, size: 64)
!2141 = !DISubroutineType(types: !2142)
!2142 = !{!106, !2011, !2143, !50}
!2143 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2144, size: 64)
!2144 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "irq_fwspec", file: !51, line: 63, size: 640, elements: !2145)
!2145 = !{!2146, !2147, !2148}
!2146 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2144, file: !51, line: 64, baseType: !2038, size: 64)
!2147 = !DIDerivedType(tag: DW_TAG_member, name: "param_count", scope: !2144, file: !51, line: 65, baseType: !106, size: 32, offset: 64)
!2148 = !DIDerivedType(tag: DW_TAG_member, name: "param", scope: !2144, file: !51, line: 66, baseType: !2149, size: 512, offset: 96)
!2149 = !DICompositeType(tag: DW_TAG_array_type, baseType: !208, size: 512, elements: !863)
!2150 = !DIDerivedType(tag: DW_TAG_member, name: "map", scope: !2019, file: !51, line: 110, baseType: !2151, size: 64, offset: 128)
!2151 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2152, size: 64)
!2152 = !DISubroutineType(types: !2153)
!2153 = !{!106, !2011, !7, !2154}
!2154 = !DIDerivedType(tag: DW_TAG_typedef, name: "irq_hw_number_t", file: !277, line: 164, baseType: !251)
!2155 = !DIDerivedType(tag: DW_TAG_member, name: "unmap", scope: !2019, file: !51, line: 111, baseType: !2156, size: 64, offset: 192)
!2156 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2157, size: 64)
!2157 = !DISubroutineType(types: !2158)
!2158 = !{null, !2011, !7}
!2159 = !DIDerivedType(tag: DW_TAG_member, name: "xlate", scope: !2019, file: !51, line: 112, baseType: !2160, size: 64, offset: 256)
!2160 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2161, size: 64)
!2161 = !DISubroutineType(types: !2162)
!2162 = !{!106, !2011, !2025, !2163, !7, !2165, !143}
!2163 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2164, size: 64)
!2164 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !208)
!2165 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !251, size: 64)
!2166 = !DIDerivedType(tag: DW_TAG_member, name: "alloc", scope: !2019, file: !51, line: 117, baseType: !2167, size: 64, offset: 320)
!2167 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2168, size: 64)
!2168 = !DISubroutineType(types: !2169)
!2169 = !{!106, !2011, !7, !7, !77}
!2170 = !DIDerivedType(tag: DW_TAG_member, name: "free", scope: !2019, file: !51, line: 119, baseType: !2171, size: 64, offset: 384)
!2171 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2172, size: 64)
!2172 = !DISubroutineType(types: !2173)
!2173 = !{null, !2011, !7, !7}
!2174 = !DIDerivedType(tag: DW_TAG_member, name: "activate", scope: !2019, file: !51, line: 121, baseType: !2175, size: 64, offset: 448)
!2175 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2176, size: 64)
!2176 = !DISubroutineType(types: !2177)
!2177 = !{!106, !2011, !2178, !651}
!2178 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2179, size: 64)
!2179 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_data", file: !2180, line: 11, flags: DIFlagFwdDecl)
!2180 = !DIFile(filename: "./include/linux/irqhandler.h", directory: "/home/lizy2001/genbc/linux")
!2181 = !DIDerivedType(tag: DW_TAG_member, name: "deactivate", scope: !2019, file: !51, line: 122, baseType: !2182, size: 64, offset: 512)
!2182 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2183, size: 64)
!2183 = !DISubroutineType(types: !2184)
!2184 = !{null, !2011, !2178}
!2185 = !DIDerivedType(tag: DW_TAG_member, name: "translate", scope: !2019, file: !51, line: 123, baseType: !2186, size: 64, offset: 576)
!2186 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2187, size: 64)
!2187 = !DISubroutineType(types: !2188)
!2188 = !{!106, !2011, !2143, !2165, !143}
!2189 = !DIDerivedType(tag: DW_TAG_member, name: "host_data", scope: !2012, file: !51, line: 166, baseType: !77, size: 64, offset: 256)
!2190 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2012, file: !51, line: 167, baseType: !7, size: 32, offset: 320)
!2191 = !DIDerivedType(tag: DW_TAG_member, name: "mapcount", scope: !2012, file: !51, line: 168, baseType: !7, size: 32, offset: 352)
!2192 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !2012, file: !51, line: 171, baseType: !2038, size: 64, offset: 384)
!2193 = !DIDerivedType(tag: DW_TAG_member, name: "bus_token", scope: !2012, file: !51, line: 172, baseType: !50, size: 32, offset: 448)
!2194 = !DIDerivedType(tag: DW_TAG_member, name: "gc", scope: !2012, file: !51, line: 173, baseType: !2195, size: 64, offset: 512)
!2195 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2196, size: 64)
!2196 = !DICompositeType(tag: DW_TAG_structure_type, name: "irq_domain_chip_generic", file: !51, line: 134, flags: DIFlagFwdDecl)
!2197 = !DIDerivedType(tag: DW_TAG_member, name: "parent", scope: !2012, file: !51, line: 175, baseType: !2011, size: 64, offset: 576)
!2198 = !DIDerivedType(tag: DW_TAG_member, name: "hwirq_max", scope: !2012, file: !51, line: 182, baseType: !2154, size: 64, offset: 640)
!2199 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_direct_max_irq", scope: !2012, file: !51, line: 183, baseType: !7, size: 32, offset: 704)
!2200 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_size", scope: !2012, file: !51, line: 184, baseType: !7, size: 32, offset: 736)
!2201 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree", scope: !2012, file: !51, line: 185, baseType: !1595, size: 128, offset: 768)
!2202 = !DIDerivedType(tag: DW_TAG_member, name: "revmap_tree_mutex", scope: !2012, file: !51, line: 186, baseType: !582, size: 192, offset: 896)
!2203 = !DIDerivedType(tag: DW_TAG_member, name: "linear_revmap", scope: !2012, file: !51, line: 187, baseType: !2204, offset: 1088)
!2204 = !DICompositeType(tag: DW_TAG_array_type, baseType: !7, elements: !671)
!2205 = !DIDerivedType(tag: DW_TAG_member, name: "msi_list", scope: !1397, file: !30, line: 499, baseType: !302, size: 128, offset: 4224)
!2206 = !DIDerivedType(tag: DW_TAG_member, name: "dma_ops", scope: !1397, file: !30, line: 502, baseType: !2207, size: 64, offset: 4352)
!2207 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2208, size: 64)
!2208 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2209)
!2209 = !DICompositeType(tag: DW_TAG_structure_type, name: "dma_map_ops", file: !30, line: 502, flags: DIFlagFwdDecl)
!2210 = !DIDerivedType(tag: DW_TAG_member, name: "dma_mask", scope: !1397, file: !30, line: 504, baseType: !2211, size: 64, offset: 4416)
!2211 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !309, size: 64)
!2212 = !DIDerivedType(tag: DW_TAG_member, name: "coherent_dma_mask", scope: !1397, file: !30, line: 505, baseType: !309, size: 64, offset: 4480)
!2213 = !DIDerivedType(tag: DW_TAG_member, name: "bus_dma_limit", scope: !1397, file: !30, line: 510, baseType: !309, size: 64, offset: 4544)
!2214 = !DIDerivedType(tag: DW_TAG_member, name: "dma_range_map", scope: !1397, file: !30, line: 511, baseType: !2215, size: 64, offset: 4608)
!2215 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2216, size: 64)
!2216 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2217)
!2217 = !DICompositeType(tag: DW_TAG_structure_type, name: "bus_dma_region", file: !30, line: 511, flags: DIFlagFwdDecl)
!2218 = !DIDerivedType(tag: DW_TAG_member, name: "dma_parms", scope: !1397, file: !30, line: 513, baseType: !2219, size: 64, offset: 4672)
!2219 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2220, size: 64)
!2220 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "device_dma_parameters", file: !30, line: 288, size: 128, elements: !2221)
!2221 = !{!2222, !2223}
!2222 = !DIDerivedType(tag: DW_TAG_member, name: "max_segment_size", scope: !2220, file: !30, line: 293, baseType: !7, size: 32)
!2223 = !DIDerivedType(tag: DW_TAG_member, name: "segment_boundary_mask", scope: !2220, file: !30, line: 294, baseType: !251, size: 64, offset: 64)
!2224 = !DIDerivedType(tag: DW_TAG_member, name: "dma_pools", scope: !1397, file: !30, line: 515, baseType: !302, size: 128, offset: 4736)
!2225 = !DIDerivedType(tag: DW_TAG_member, name: "archdata", scope: !1397, file: !30, line: 526, baseType: !2226, offset: 4864)
!2226 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "dev_archdata", file: !2227, line: 5, elements: !238)
!2227 = !DIFile(filename: "./arch/x86/include/asm/device.h", directory: "/home/lizy2001/genbc/linux")
!2228 = !DIDerivedType(tag: DW_TAG_member, name: "of_node", scope: !1397, file: !30, line: 528, baseType: !2025, size: 64, offset: 4864)
!2229 = !DIDerivedType(tag: DW_TAG_member, name: "fwnode", scope: !1397, file: !30, line: 529, baseType: !2038, size: 64, offset: 4928)
!2230 = !DIDerivedType(tag: DW_TAG_member, name: "devt", scope: !1397, file: !30, line: 534, baseType: !2231, size: 32, offset: 4992)
!2231 = !DIDerivedType(tag: DW_TAG_typedef, name: "dev_t", file: !277, line: 16, baseType: !2232)
!2232 = !DIDerivedType(tag: DW_TAG_typedef, name: "__kernel_dev_t", file: !277, line: 13, baseType: !208)
!2233 = !DIDerivedType(tag: DW_TAG_member, name: "id", scope: !1397, file: !30, line: 535, baseType: !208, size: 32, offset: 5024)
!2234 = !DIDerivedType(tag: DW_TAG_member, name: "devres_lock", scope: !1397, file: !30, line: 537, baseType: !517, offset: 5056)
!2235 = !DIDerivedType(tag: DW_TAG_member, name: "devres_head", scope: !1397, file: !30, line: 538, baseType: !302, size: 128, offset: 5056)
!2236 = !DIDerivedType(tag: DW_TAG_member, name: "class", scope: !1397, file: !30, line: 540, baseType: !2237, size: 64, offset: 5184)
!2237 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2238, size: 64)
!2238 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "class", file: !2239, line: 54, size: 960, elements: !2240)
!2239 = !DIFile(filename: "./include/linux/device/class.h", directory: "/home/lizy2001/genbc/linux")
!2240 = !{!2241, !2242, !2243, !2244, !2245, !2246, !2247, !2251, !2255, !2256, !2257, !2258, !2262, !2266, !2267}
!2241 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !2238, file: !2239, line: 55, baseType: !89, size: 64)
!2242 = !DIDerivedType(tag: DW_TAG_member, name: "owner", scope: !2238, file: !2239, line: 56, baseType: !93, size: 64, offset: 64)
!2243 = !DIDerivedType(tag: DW_TAG_member, name: "class_groups", scope: !2238, file: !2239, line: 58, baseType: !1480, size: 64, offset: 128)
!2244 = !DIDerivedType(tag: DW_TAG_member, name: "dev_groups", scope: !2238, file: !2239, line: 59, baseType: !1480, size: 64, offset: 192)
!2245 = !DIDerivedType(tag: DW_TAG_member, name: "dev_kobj", scope: !2238, file: !2239, line: 60, baseType: !1406, size: 64, offset: 256)
!2246 = !DIDerivedType(tag: DW_TAG_member, name: "dev_uevent", scope: !2238, file: !2239, line: 62, baseType: !1742, size: 64, offset: 320)
!2247 = !DIDerivedType(tag: DW_TAG_member, name: "devnode", scope: !2238, file: !2239, line: 63, baseType: !2248, size: 64, offset: 384)
!2248 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2249, size: 64)
!2249 = !DISubroutineType(types: !2250)
!2250 = !{!112, !1729, !1749}
!2251 = !DIDerivedType(tag: DW_TAG_member, name: "class_release", scope: !2238, file: !2239, line: 65, baseType: !2252, size: 64, offset: 448)
!2252 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2253, size: 64)
!2253 = !DISubroutineType(types: !2254)
!2254 = !{null, !2237}
!2255 = !DIDerivedType(tag: DW_TAG_member, name: "dev_release", scope: !2238, file: !2239, line: 66, baseType: !1751, size: 64, offset: 512)
!2256 = !DIDerivedType(tag: DW_TAG_member, name: "shutdown_pre", scope: !2238, file: !2239, line: 68, baseType: !1760, size: 64, offset: 576)
!2257 = !DIDerivedType(tag: DW_TAG_member, name: "ns_type", scope: !2238, file: !2239, line: 70, baseType: !1518, size: 64, offset: 640)
!2258 = !DIDerivedType(tag: DW_TAG_member, name: "namespace", scope: !2238, file: !2239, line: 71, baseType: !2259, size: 64, offset: 704)
!2259 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2260, size: 64)
!2260 = !DISubroutineType(types: !2261)
!2261 = !{!1204, !1729}
!2262 = !DIDerivedType(tag: DW_TAG_member, name: "get_ownership", scope: !2238, file: !2239, line: 73, baseType: !2263, size: 64, offset: 768)
!2263 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2264, size: 64)
!2264 = !DISubroutineType(types: !2265)
!2265 = !{null, !1729, !1550, !1557}
!2266 = !DIDerivedType(tag: DW_TAG_member, name: "pm", scope: !2238, file: !2239, line: 75, baseType: !1755, size: 64, offset: 832)
!2267 = !DIDerivedType(tag: DW_TAG_member, name: "p", scope: !2238, file: !2239, line: 77, baseType: !1873, size: 64, offset: 896)
!2268 = !DIDerivedType(tag: DW_TAG_member, name: "groups", scope: !1397, file: !30, line: 541, baseType: !1480, size: 64, offset: 5248)
!2269 = !DIDerivedType(tag: DW_TAG_member, name: "release", scope: !1397, file: !30, line: 543, baseType: !1751, size: 64, offset: 5312)
!2270 = !DIDerivedType(tag: DW_TAG_member, name: "iommu_group", scope: !1397, file: !30, line: 544, baseType: !2271, size: 64, offset: 5376)
!2271 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2272, size: 64)
!2272 = !DICompositeType(tag: DW_TAG_structure_type, name: "iommu_group", file: !30, line: 45, flags: DIFlagFwdDecl)
!2273 = !DIDerivedType(tag: DW_TAG_member, name: "iommu", scope: !1397, file: !30, line: 545, baseType: !2274, size: 64, offset: 5440)
!2274 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2275, size: 64)
!2275 = !DICompositeType(tag: DW_TAG_structure_type, name: "dev_iommu", file: !30, line: 47, flags: DIFlagFwdDecl)
!2276 = !DIDerivedType(tag: DW_TAG_member, name: "offline_disabled", scope: !1397, file: !30, line: 547, baseType: !651, size: 1, offset: 5504, flags: DIFlagBitField, extraData: i64 5504)
!2277 = !DIDerivedType(tag: DW_TAG_member, name: "offline", scope: !1397, file: !30, line: 548, baseType: !651, size: 1, offset: 5505, flags: DIFlagBitField, extraData: i64 5504)
!2278 = !DIDerivedType(tag: DW_TAG_member, name: "of_node_reused", scope: !1397, file: !30, line: 549, baseType: !651, size: 1, offset: 5506, flags: DIFlagBitField, extraData: i64 5504)
!2279 = !DIDerivedType(tag: DW_TAG_member, name: "state_synced", scope: !1397, file: !30, line: 550, baseType: !651, size: 1, offset: 5507, flags: DIFlagBitField, extraData: i64 5504)
!2280 = !DIDerivedType(tag: DW_TAG_member, name: "locked_flags", scope: !167, file: !168, line: 709, baseType: !251, size: 64, offset: 6336)
!2281 = !DIDerivedType(tag: DW_TAG_member, name: "nr", scope: !167, file: !168, line: 713, baseType: !106, size: 32, offset: 6400)
!2282 = !DIDerivedType(tag: DW_TAG_member, name: "name", scope: !167, file: !168, line: 714, baseType: !2283, size: 384, offset: 6432)
!2283 = !DICompositeType(tag: DW_TAG_array_type, baseType: !91, size: 384, elements: !2284)
!2284 = !{!2285}
!2285 = !DISubrange(count: 48)
!2286 = !DIDerivedType(tag: DW_TAG_member, name: "dev_released", scope: !167, file: !168, line: 715, baseType: !628, size: 192, offset: 6848)
!2287 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients_lock", scope: !167, file: !168, line: 717, baseType: !582, size: 192, offset: 7040)
!2288 = !DIDerivedType(tag: DW_TAG_member, name: "userspace_clients", scope: !167, file: !168, line: 718, baseType: !302, size: 128, offset: 7232)
!2289 = !DIDerivedType(tag: DW_TAG_member, name: "bus_recovery_info", scope: !167, file: !168, line: 720, baseType: !2290, size: 64, offset: 7360)
!2290 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2291, size: 64)
!2291 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_bus_recovery_info", file: !168, line: 618, size: 832, elements: !2292)
!2292 = !{!2293, !2297, !2298, !2302, !2303, !2304, !2305, !2309, !2310, !2313, !2314, !2317, !2320}
!2293 = !DIDerivedType(tag: DW_TAG_member, name: "recover_bus", scope: !2291, file: !168, line: 619, baseType: !2294, size: 64)
!2294 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2295, size: 64)
!2295 = !DISubroutineType(types: !2296)
!2296 = !{!106, !181}
!2297 = !DIDerivedType(tag: DW_TAG_member, name: "get_scl", scope: !2291, file: !168, line: 621, baseType: !2294, size: 64, offset: 64)
!2298 = !DIDerivedType(tag: DW_TAG_member, name: "set_scl", scope: !2291, file: !168, line: 622, baseType: !2299, size: 64, offset: 128)
!2299 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2300, size: 64)
!2300 = !DISubroutineType(types: !2301)
!2301 = !{null, !181, !106}
!2302 = !DIDerivedType(tag: DW_TAG_member, name: "get_sda", scope: !2291, file: !168, line: 623, baseType: !2294, size: 64, offset: 192)
!2303 = !DIDerivedType(tag: DW_TAG_member, name: "set_sda", scope: !2291, file: !168, line: 624, baseType: !2299, size: 64, offset: 256)
!2304 = !DIDerivedType(tag: DW_TAG_member, name: "get_bus_free", scope: !2291, file: !168, line: 625, baseType: !2294, size: 64, offset: 320)
!2305 = !DIDerivedType(tag: DW_TAG_member, name: "prepare_recovery", scope: !2291, file: !168, line: 627, baseType: !2306, size: 64, offset: 384)
!2306 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2307, size: 64)
!2307 = !DISubroutineType(types: !2308)
!2308 = !{null, !181}
!2309 = !DIDerivedType(tag: DW_TAG_member, name: "unprepare_recovery", scope: !2291, file: !168, line: 628, baseType: !2306, size: 64, offset: 448)
!2310 = !DIDerivedType(tag: DW_TAG_member, name: "scl_gpiod", scope: !2291, file: !168, line: 631, baseType: !2311, size: 64, offset: 512)
!2311 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2312, size: 64)
!2312 = !DICompositeType(tag: DW_TAG_structure_type, name: "gpio_desc", file: !168, line: 631, flags: DIFlagFwdDecl)
!2313 = !DIDerivedType(tag: DW_TAG_member, name: "sda_gpiod", scope: !2291, file: !168, line: 632, baseType: !2311, size: 64, offset: 576)
!2314 = !DIDerivedType(tag: DW_TAG_member, name: "pinctrl", scope: !2291, file: !168, line: 633, baseType: !2315, size: 64, offset: 640)
!2315 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2316, size: 64)
!2316 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl", file: !168, line: 633, flags: DIFlagFwdDecl)
!2317 = !DIDerivedType(tag: DW_TAG_member, name: "pins_default", scope: !2291, file: !168, line: 634, baseType: !2318, size: 64, offset: 704)
!2318 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2319, size: 64)
!2319 = !DICompositeType(tag: DW_TAG_structure_type, name: "pinctrl_state", file: !168, line: 634, flags: DIFlagFwdDecl)
!2320 = !DIDerivedType(tag: DW_TAG_member, name: "pins_gpio", scope: !2291, file: !168, line: 635, baseType: !2318, size: 64, offset: 768)
!2321 = !DIDerivedType(tag: DW_TAG_member, name: "quirks", scope: !167, file: !168, line: 721, baseType: !2322, size: 64, offset: 7424)
!2322 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2323, size: 64)
!2323 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !2324)
!2324 = distinct !DICompositeType(tag: DW_TAG_structure_type, name: "i2c_adapter_quirks", file: !168, line: 664, size: 192, elements: !2325)
!2325 = !{!2326, !2327, !2328, !2329, !2330, !2331}
!2326 = !DIDerivedType(tag: DW_TAG_member, name: "flags", scope: !2324, file: !168, line: 665, baseType: !309, size: 64)
!2327 = !DIDerivedType(tag: DW_TAG_member, name: "max_num_msgs", scope: !2324, file: !168, line: 666, baseType: !106, size: 32, offset: 64)
!2328 = !DIDerivedType(tag: DW_TAG_member, name: "max_write_len", scope: !2324, file: !168, line: 667, baseType: !72, size: 16, offset: 96)
!2329 = !DIDerivedType(tag: DW_TAG_member, name: "max_read_len", scope: !2324, file: !168, line: 668, baseType: !72, size: 16, offset: 112)
!2330 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_1st_msg_len", scope: !2324, file: !168, line: 669, baseType: !72, size: 16, offset: 128)
!2331 = !DIDerivedType(tag: DW_TAG_member, name: "max_comb_2nd_msg_len", scope: !2324, file: !168, line: 670, baseType: !72, size: 16, offset: 144)
!2332 = !DIDerivedType(tag: DW_TAG_member, name: "host_notify_domain", scope: !167, file: !168, line: 723, baseType: !2011, size: 64, offset: 7488)
!2333 = !DIDerivedType(tag: DW_TAG_member, name: "master_i2c_adap_gpio12", scope: !162, file: !65, line: 24, baseType: !167, size: 7552, offset: 7616)
!2334 = !DIDerivedType(tag: DW_TAG_member, name: "master_i2c_adap_gpio34", scope: !162, file: !65, line: 25, baseType: !167, size: 7552, offset: 15168)
!2335 = !DIDerivedType(tag: DW_TAG_member, name: "master_i2c_adap_gpio67", scope: !162, file: !65, line: 26, baseType: !167, size: 7552, offset: 22720)
!2336 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_adap", scope: !162, file: !65, line: 28, baseType: !181, size: 64, offset: 30272)
!2337 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_addr", scope: !162, file: !65, line: 29, baseType: !78, size: 8, offset: 30336)
!2338 = !DIDerivedType(tag: DW_TAG_member, name: "base_reg", scope: !162, file: !65, line: 31, baseType: !72, size: 16, offset: 30352)
!2339 = !DIDerivedType(tag: DW_TAG_member, name: "msg", scope: !162, file: !65, line: 34, baseType: !2340, size: 4352, offset: 30400)
!2340 = !DICompositeType(tag: DW_TAG_array_type, baseType: !183, size: 4352, elements: !149)
!2341 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_write_buffer", scope: !162, file: !65, line: 35, baseType: !2342, size: 64, offset: 34752)
!2342 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 64, elements: !387)
!2343 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_read_buffer", scope: !162, file: !65, line: 36, baseType: !2344, size: 16, offset: 34816)
!2344 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 16, elements: !1047)
!2345 = !DIDerivedType(tag: DW_TAG_member, name: "i2c_buffer_lock", scope: !162, file: !65, line: 37, baseType: !582, size: 192, offset: 34880)
!2346 = !DIGlobalVariableExpression(var: !2347, expr: !DIExpression())
!2347 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_author173", scope: !2, file: !3, line: 506, type: !2348, isLocal: true, isDefinition: true, align: 8)
!2348 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 560, elements: !2349)
!2349 = !{!2350}
!2350 = !DISubrange(count: 70)
!2351 = !DIGlobalVariableExpression(var: !2352, expr: !DIExpression())
!2352 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_description174", scope: !2, file: !3, line: 507, type: !2353, isLocal: true, isDefinition: true, align: 8)
!2353 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 584, elements: !2354)
!2354 = !{!2355}
!2355 = !DISubrange(count: 73)
!2356 = !DIGlobalVariableExpression(var: !2357, expr: !DIExpression())
!2357 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_file175", scope: !2, file: !3, line: 508, type: !2358, isLocal: true, isDefinition: true, align: 8)
!2358 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 504, elements: !2359)
!2359 = !{!2360}
!2360 = !DISubrange(count: 63)
!2361 = !DIGlobalVariableExpression(var: !2362, expr: !DIExpression())
!2362 = distinct !DIGlobalVariable(name: "__UNIQUE_ID_license176", scope: !2, file: !3, line: 508, type: !2363, isLocal: true, isDefinition: true, align: 8)
!2363 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 216, elements: !2364)
!2364 = !{!2365}
!2365 = !DISubrange(count: 27)
!2366 = !DIGlobalVariableExpression(var: !2367, expr: !DIExpression())
!2367 = distinct !DIGlobalVariable(name: "debug", scope: !2, file: !3, line: 10, type: !106, isLocal: true, isDefinition: true)
!2368 = !DIGlobalVariableExpression(var: !2369, expr: !DIExpression())
!2369 = distinct !DIGlobalVariable(name: "dibx000_i2c_gated_tuner_algo", scope: !2, file: !3, line: 372, type: !175, isLocal: true, isDefinition: true)
!2370 = !DIGlobalVariableExpression(var: !2371, expr: !DIExpression())
!2371 = distinct !DIGlobalVariable(name: "dibx000_i2c_master_gpio12_xfer_algo", scope: !2, file: !3, line: 253, type: !175, isLocal: true, isDefinition: true)
!2372 = !DIGlobalVariableExpression(var: !2373, expr: !DIExpression())
!2373 = distinct !DIGlobalVariable(name: "dibx000_i2c_master_gpio34_xfer_algo", scope: !2, file: !3, line: 258, type: !175, isLocal: true, isDefinition: true)
!2374 = !DIGlobalVariableExpression(var: !2375, expr: !DIExpression())
!2375 = distinct !DIGlobalVariable(name: "dibx000_i2c_gated_gpio67_algo", scope: !2, file: !3, line: 327, type: !175, isLocal: true, isDefinition: true)
!2376 = !DICompositeType(tag: DW_TAG_array_type, baseType: !90, size: 168, elements: !2377)
!2377 = !{!2378}
!2378 = !DISubrange(count: 21)
!2379 = !{i32 7, !"Dwarf Version", i32 4}
!2380 = !{i32 2, !"Debug Info Version", i32 3}
!2381 = !{i32 1, !"wchar_size", i32 2}
!2382 = !{i32 1, !"Code Model", i32 2}
!2383 = !{!"clang version 10.0.1 (https://github.com/llvm/llvm-project.git ef32c611aa214dea855364efd7ba451ec5ec3f74)"}
!2384 = distinct !DISubprogram(name: "dibx000_i2c_set_speed", scope: !3, file: !3, line: 182, type: !2385, scopeLine: 183, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2385 = !DISubroutineType(types: !2386)
!2386 = !{!106, !181, !72}
!2387 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2384, file: !3, line: 182, type: !181)
!2388 = !DILocation(line: 182, column: 47, scope: !2384)
!2389 = !DILocalVariable(name: "speed", arg: 2, scope: !2384, file: !3, line: 182, type: !72)
!2390 = !DILocation(line: 182, column: 61, scope: !2384)
!2391 = !DILocalVariable(name: "mst", scope: !2384, file: !3, line: 184, type: !161)
!2392 = !DILocation(line: 184, column: 29, scope: !2384)
!2393 = !DILocation(line: 184, column: 52, scope: !2384)
!2394 = !DILocation(line: 184, column: 35, scope: !2384)
!2395 = !DILocation(line: 186, column: 6, scope: !2396)
!2396 = distinct !DILexicalBlock(scope: !2384, file: !3, line: 186, column: 6)
!2397 = !DILocation(line: 186, column: 11, scope: !2396)
!2398 = !DILocation(line: 186, column: 22, scope: !2396)
!2399 = !DILocation(line: 186, column: 34, scope: !2396)
!2400 = !DILocation(line: 186, column: 37, scope: !2396)
!2401 = !DILocation(line: 186, column: 43, scope: !2396)
!2402 = !DILocation(line: 186, column: 6, scope: !2384)
!2403 = !DILocation(line: 187, column: 9, scope: !2396)
!2404 = !DILocation(line: 187, column: 3, scope: !2396)
!2405 = !DILocation(line: 188, column: 28, scope: !2384)
!2406 = !DILocation(line: 188, column: 33, scope: !2384)
!2407 = !DILocation(line: 188, column: 38, scope: !2384)
!2408 = !DILocation(line: 188, column: 47, scope: !2384)
!2409 = !DILocation(line: 188, column: 66, scope: !2384)
!2410 = !DILocation(line: 188, column: 64, scope: !2384)
!2411 = !DILocation(line: 188, column: 52, scope: !2384)
!2412 = !DILocation(line: 188, column: 9, scope: !2384)
!2413 = !DILocation(line: 188, column: 2, scope: !2384)
!2414 = distinct !DISubprogram(name: "i2c_get_adapdata", scope: !168, file: !168, line: 727, type: !2415, scopeLine: 728, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2415 = !DISubroutineType(types: !2416)
!2416 = !{!77, !2417}
!2417 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !2418, size: 64)
!2418 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !167)
!2419 = !DILocalVariable(name: "adap", arg: 1, scope: !2414, file: !168, line: 727, type: !2417)
!2420 = !DILocation(line: 727, column: 64, scope: !2414)
!2421 = !DILocation(line: 729, column: 26, scope: !2414)
!2422 = !DILocation(line: 729, column: 32, scope: !2414)
!2423 = !DILocation(line: 729, column: 9, scope: !2414)
!2424 = !DILocation(line: 729, column: 2, scope: !2414)
!2425 = distinct !DISubprogram(name: "dibx000_write_word", scope: !3, file: !3, line: 20, type: !2426, scopeLine: 21, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2426 = !DISubroutineType(types: !2427)
!2427 = !{!106, !161, !72, !72}
!2428 = !DILocalVariable(name: "mst", arg: 1, scope: !2425, file: !3, line: 20, type: !161)
!2429 = !DILocation(line: 20, column: 58, scope: !2425)
!2430 = !DILocalVariable(name: "reg", arg: 2, scope: !2425, file: !3, line: 20, type: !72)
!2431 = !DILocation(line: 20, column: 67, scope: !2425)
!2432 = !DILocalVariable(name: "val", arg: 3, scope: !2425, file: !3, line: 20, type: !72)
!2433 = !DILocation(line: 20, column: 76, scope: !2425)
!2434 = !DILocalVariable(name: "ret", scope: !2425, file: !3, line: 22, type: !106)
!2435 = !DILocation(line: 22, column: 6, scope: !2425)
!2436 = !DILocation(line: 24, column: 32, scope: !2437)
!2437 = distinct !DILexicalBlock(scope: !2425, file: !3, line: 24, column: 6)
!2438 = !DILocation(line: 24, column: 37, scope: !2437)
!2439 = !DILocation(line: 24, column: 6, scope: !2437)
!2440 = !DILocation(line: 24, column: 54, scope: !2437)
!2441 = !DILocation(line: 24, column: 6, scope: !2425)
!2442 = !DILocation(line: 25, column: 3, scope: !2443)
!2443 = distinct !DILexicalBlock(scope: !2437, file: !3, line: 24, column: 59)
!2444 = !DILocation(line: 25, column: 3, scope: !2445)
!2445 = distinct !DILexicalBlock(scope: !2446, file: !3, line: 25, column: 3)
!2446 = distinct !DILexicalBlock(scope: !2443, file: !3, line: 25, column: 3)
!2447 = !DILocation(line: 25, column: 3, scope: !2446)
!2448 = !DILocation(line: 26, column: 3, scope: !2443)
!2449 = !DILocation(line: 29, column: 30, scope: !2425)
!2450 = !DILocation(line: 29, column: 34, scope: !2425)
!2451 = !DILocation(line: 29, column: 40, scope: !2425)
!2452 = !DILocation(line: 29, column: 29, scope: !2425)
!2453 = !DILocation(line: 29, column: 2, scope: !2425)
!2454 = !DILocation(line: 29, column: 7, scope: !2425)
!2455 = !DILocation(line: 29, column: 27, scope: !2425)
!2456 = !DILocation(line: 30, column: 29, scope: !2425)
!2457 = !DILocation(line: 30, column: 33, scope: !2425)
!2458 = !DILocation(line: 30, column: 2, scope: !2425)
!2459 = !DILocation(line: 30, column: 7, scope: !2425)
!2460 = !DILocation(line: 30, column: 27, scope: !2425)
!2461 = !DILocation(line: 31, column: 30, scope: !2425)
!2462 = !DILocation(line: 31, column: 34, scope: !2425)
!2463 = !DILocation(line: 31, column: 40, scope: !2425)
!2464 = !DILocation(line: 31, column: 29, scope: !2425)
!2465 = !DILocation(line: 31, column: 2, scope: !2425)
!2466 = !DILocation(line: 31, column: 7, scope: !2425)
!2467 = !DILocation(line: 31, column: 27, scope: !2425)
!2468 = !DILocation(line: 32, column: 29, scope: !2425)
!2469 = !DILocation(line: 32, column: 33, scope: !2425)
!2470 = !DILocation(line: 32, column: 2, scope: !2425)
!2471 = !DILocation(line: 32, column: 7, scope: !2425)
!2472 = !DILocation(line: 32, column: 27, scope: !2425)
!2473 = !DILocation(line: 34, column: 9, scope: !2425)
!2474 = !DILocation(line: 34, column: 14, scope: !2425)
!2475 = !DILocation(line: 34, column: 2, scope: !2425)
!2476 = !DILocation(line: 35, column: 21, scope: !2425)
!2477 = !DILocation(line: 35, column: 26, scope: !2425)
!2478 = !DILocation(line: 35, column: 2, scope: !2425)
!2479 = !DILocation(line: 35, column: 7, scope: !2425)
!2480 = !DILocation(line: 35, column: 14, scope: !2425)
!2481 = !DILocation(line: 35, column: 19, scope: !2425)
!2482 = !DILocation(line: 36, column: 2, scope: !2425)
!2483 = !DILocation(line: 36, column: 7, scope: !2425)
!2484 = !DILocation(line: 36, column: 14, scope: !2425)
!2485 = !DILocation(line: 36, column: 20, scope: !2425)
!2486 = !DILocation(line: 37, column: 20, scope: !2425)
!2487 = !DILocation(line: 37, column: 25, scope: !2425)
!2488 = !DILocation(line: 37, column: 2, scope: !2425)
!2489 = !DILocation(line: 37, column: 7, scope: !2425)
!2490 = !DILocation(line: 37, column: 14, scope: !2425)
!2491 = !DILocation(line: 37, column: 18, scope: !2425)
!2492 = !DILocation(line: 38, column: 2, scope: !2425)
!2493 = !DILocation(line: 38, column: 7, scope: !2425)
!2494 = !DILocation(line: 38, column: 14, scope: !2425)
!2495 = !DILocation(line: 38, column: 18, scope: !2425)
!2496 = !DILocation(line: 40, column: 21, scope: !2425)
!2497 = !DILocation(line: 40, column: 26, scope: !2425)
!2498 = !DILocation(line: 40, column: 36, scope: !2425)
!2499 = !DILocation(line: 40, column: 41, scope: !2425)
!2500 = !DILocation(line: 40, column: 8, scope: !2425)
!2501 = !DILocation(line: 40, column: 49, scope: !2425)
!2502 = !DILocation(line: 40, column: 6, scope: !2425)
!2503 = !DILocation(line: 41, column: 16, scope: !2425)
!2504 = !DILocation(line: 41, column: 21, scope: !2425)
!2505 = !DILocation(line: 41, column: 2, scope: !2425)
!2506 = !DILocation(line: 43, column: 9, scope: !2425)
!2507 = !DILocation(line: 43, column: 2, scope: !2425)
!2508 = !DILocation(line: 44, column: 1, scope: !2425)
!2509 = distinct !DISubprogram(name: "dibx000_get_i2c_adapter", scope: !3, file: !3, line: 377, type: !2510, scopeLine: 380, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2510 = !DISubroutineType(types: !2511)
!2511 = !{!181, !161, !64, !106}
!2512 = !DILocalVariable(name: "mst", arg: 1, scope: !2509, file: !3, line: 377, type: !161)
!2513 = !DILocation(line: 377, column: 72, scope: !2509)
!2514 = !DILocalVariable(name: "intf", arg: 2, scope: !2509, file: !3, line: 378, type: !64)
!2515 = !DILocation(line: 378, column: 34, scope: !2509)
!2516 = !DILocalVariable(name: "gating", arg: 3, scope: !2509, file: !3, line: 379, type: !106)
!2517 = !DILocation(line: 379, column: 11, scope: !2509)
!2518 = !DILocalVariable(name: "i2c", scope: !2509, file: !3, line: 381, type: !181)
!2519 = !DILocation(line: 381, column: 22, scope: !2509)
!2520 = !DILocation(line: 383, column: 10, scope: !2509)
!2521 = !DILocation(line: 383, column: 2, scope: !2509)
!2522 = !DILocation(line: 385, column: 7, scope: !2523)
!2523 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 385, column: 7)
!2524 = distinct !DILexicalBlock(scope: !2509, file: !3, line: 383, column: 16)
!2525 = !DILocation(line: 385, column: 7, scope: !2524)
!2526 = !DILocation(line: 386, column: 11, scope: !2523)
!2527 = !DILocation(line: 386, column: 16, scope: !2523)
!2528 = !DILocation(line: 386, column: 8, scope: !2523)
!2529 = !DILocation(line: 386, column: 4, scope: !2523)
!2530 = !DILocation(line: 387, column: 3, scope: !2524)
!2531 = !DILocation(line: 389, column: 8, scope: !2532)
!2532 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 389, column: 7)
!2533 = !DILocation(line: 389, column: 7, scope: !2524)
!2534 = !DILocation(line: 390, column: 11, scope: !2532)
!2535 = !DILocation(line: 390, column: 16, scope: !2532)
!2536 = !DILocation(line: 390, column: 8, scope: !2532)
!2537 = !DILocation(line: 390, column: 4, scope: !2532)
!2538 = !DILocation(line: 391, column: 3, scope: !2524)
!2539 = !DILocation(line: 393, column: 8, scope: !2540)
!2540 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 393, column: 7)
!2541 = !DILocation(line: 393, column: 7, scope: !2524)
!2542 = !DILocation(line: 394, column: 11, scope: !2540)
!2543 = !DILocation(line: 394, column: 16, scope: !2540)
!2544 = !DILocation(line: 394, column: 8, scope: !2540)
!2545 = !DILocation(line: 394, column: 4, scope: !2540)
!2546 = !DILocation(line: 395, column: 3, scope: !2524)
!2547 = !DILocation(line: 397, column: 7, scope: !2548)
!2548 = distinct !DILexicalBlock(scope: !2524, file: !3, line: 397, column: 7)
!2549 = !DILocation(line: 397, column: 7, scope: !2524)
!2550 = !DILocation(line: 398, column: 11, scope: !2548)
!2551 = !DILocation(line: 398, column: 16, scope: !2548)
!2552 = !DILocation(line: 398, column: 8, scope: !2548)
!2553 = !DILocation(line: 398, column: 4, scope: !2548)
!2554 = !DILocation(line: 399, column: 3, scope: !2524)
!2555 = !DILocation(line: 401, column: 3, scope: !2524)
!2556 = !DILocation(line: 402, column: 3, scope: !2524)
!2557 = !DILocation(line: 405, column: 9, scope: !2509)
!2558 = !DILocation(line: 405, column: 2, scope: !2509)
!2559 = distinct !DISubprogram(name: "dibx000_reset_i2c_master", scope: !3, file: !3, line: 410, type: !2560, scopeLine: 411, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2560 = !DISubroutineType(types: !2561)
!2561 = !{null, !161}
!2562 = !DILocalVariable(name: "mst", arg: 1, scope: !2559, file: !3, line: 410, type: !161)
!2563 = !DILocation(line: 410, column: 58, scope: !2559)
!2564 = !DILocalVariable(name: "tx", scope: !2559, file: !3, line: 413, type: !2565)
!2565 = !DICompositeType(tag: DW_TAG_array_type, baseType: !78, size: 32, elements: !564)
!2566 = !DILocation(line: 413, column: 5, scope: !2559)
!2567 = !DILocalVariable(name: "m", scope: !2559, file: !3, line: 414, type: !183)
!2568 = !DILocation(line: 414, column: 17, scope: !2559)
!2569 = !DILocation(line: 414, column: 21, scope: !2559)
!2570 = !DILocation(line: 414, column: 30, scope: !2559)
!2571 = !DILocation(line: 414, column: 35, scope: !2559)
!2572 = !DILocation(line: 414, column: 51, scope: !2559)
!2573 = !DILocation(line: 416, column: 24, scope: !2559)
!2574 = !DILocation(line: 416, column: 29, scope: !2559)
!2575 = !DILocation(line: 416, column: 2, scope: !2559)
!2576 = !DILocation(line: 417, column: 15, scope: !2559)
!2577 = !DILocation(line: 417, column: 20, scope: !2559)
!2578 = !DILocation(line: 417, column: 2, scope: !2559)
!2579 = !DILocation(line: 418, column: 2, scope: !2559)
!2580 = !DILocation(line: 418, column: 7, scope: !2559)
!2581 = !DILocation(line: 418, column: 26, scope: !2559)
!2582 = !DILocation(line: 419, column: 31, scope: !2559)
!2583 = !DILocation(line: 419, column: 2, scope: !2559)
!2584 = !DILocation(line: 420, column: 1, scope: !2559)
!2585 = distinct !DISubprogram(name: "dibx000_i2c_gate_ctrl", scope: !3, file: !3, line: 263, type: !2586, scopeLine: 265, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2586 = !DISubroutineType(types: !2587)
!2587 = !{!106, !161, !2588, !78, !106}
!2588 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !78, size: 64)
!2589 = !DILocalVariable(name: "mst", arg: 1, scope: !2585, file: !3, line: 263, type: !161)
!2590 = !DILocation(line: 263, column: 61, scope: !2585)
!2591 = !DILocalVariable(name: "tx", arg: 2, scope: !2585, file: !3, line: 263, type: !2588)
!2592 = !DILocation(line: 263, column: 69, scope: !2585)
!2593 = !DILocalVariable(name: "addr", arg: 3, scope: !2585, file: !3, line: 264, type: !78)
!2594 = !DILocation(line: 264, column: 9, scope: !2585)
!2595 = !DILocalVariable(name: "onoff", arg: 4, scope: !2585, file: !3, line: 264, type: !106)
!2596 = !DILocation(line: 264, column: 19, scope: !2585)
!2597 = !DILocalVariable(name: "val", scope: !2585, file: !3, line: 266, type: !72)
!2598 = !DILocation(line: 266, column: 6, scope: !2585)
!2599 = !DILocation(line: 269, column: 6, scope: !2600)
!2600 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 269, column: 6)
!2601 = !DILocation(line: 269, column: 6, scope: !2585)
!2602 = !DILocation(line: 270, column: 9, scope: !2600)
!2603 = !DILocation(line: 270, column: 14, scope: !2600)
!2604 = !DILocation(line: 270, column: 7, scope: !2600)
!2605 = !DILocation(line: 270, column: 3, scope: !2600)
!2606 = !DILocation(line: 272, column: 7, scope: !2600)
!2607 = !DILocation(line: 274, column: 6, scope: !2608)
!2608 = distinct !DILexicalBlock(scope: !2585, file: !3, line: 274, column: 6)
!2609 = !DILocation(line: 274, column: 11, scope: !2608)
!2610 = !DILocation(line: 274, column: 22, scope: !2608)
!2611 = !DILocation(line: 274, column: 6, scope: !2585)
!2612 = !DILocation(line: 275, column: 7, scope: !2608)
!2613 = !DILocation(line: 275, column: 3, scope: !2608)
!2614 = !DILocation(line: 277, column: 13, scope: !2585)
!2615 = !DILocation(line: 277, column: 18, scope: !2585)
!2616 = !DILocation(line: 277, column: 27, scope: !2585)
!2617 = !DILocation(line: 277, column: 32, scope: !2585)
!2618 = !DILocation(line: 277, column: 38, scope: !2585)
!2619 = !DILocation(line: 277, column: 10, scope: !2585)
!2620 = !DILocation(line: 277, column: 2, scope: !2585)
!2621 = !DILocation(line: 277, column: 8, scope: !2585)
!2622 = !DILocation(line: 278, column: 12, scope: !2585)
!2623 = !DILocation(line: 278, column: 17, scope: !2585)
!2624 = !DILocation(line: 278, column: 26, scope: !2585)
!2625 = !DILocation(line: 278, column: 31, scope: !2585)
!2626 = !DILocation(line: 278, column: 10, scope: !2585)
!2627 = !DILocation(line: 278, column: 2, scope: !2585)
!2628 = !DILocation(line: 278, column: 8, scope: !2585)
!2629 = !DILocation(line: 279, column: 10, scope: !2585)
!2630 = !DILocation(line: 279, column: 14, scope: !2585)
!2631 = !DILocation(line: 279, column: 2, scope: !2585)
!2632 = !DILocation(line: 279, column: 8, scope: !2585)
!2633 = !DILocation(line: 280, column: 10, scope: !2585)
!2634 = !DILocation(line: 280, column: 14, scope: !2585)
!2635 = !DILocation(line: 280, column: 2, scope: !2585)
!2636 = !DILocation(line: 280, column: 8, scope: !2585)
!2637 = !DILocation(line: 282, column: 2, scope: !2585)
!2638 = distinct !DISubprogram(name: "dibx000_i2c_select_interface", scope: !3, file: !3, line: 198, type: !2639, scopeLine: 200, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2639 = !DISubroutineType(types: !2640)
!2640 = !{!106, !161, !64}
!2641 = !DILocalVariable(name: "mst", arg: 1, scope: !2638, file: !3, line: 198, type: !161)
!2642 = !DILocation(line: 198, column: 68, scope: !2638)
!2643 = !DILocalVariable(name: "intf", arg: 2, scope: !2638, file: !3, line: 199, type: !64)
!2644 = !DILocation(line: 199, column: 33, scope: !2638)
!2645 = !DILocation(line: 201, column: 6, scope: !2646)
!2646 = distinct !DILexicalBlock(scope: !2638, file: !3, line: 201, column: 6)
!2647 = !DILocation(line: 201, column: 11, scope: !2646)
!2648 = !DILocation(line: 201, column: 22, scope: !2646)
!2649 = !DILocation(line: 201, column: 34, scope: !2646)
!2650 = !DILocation(line: 201, column: 37, scope: !2646)
!2651 = !DILocation(line: 201, column: 42, scope: !2646)
!2652 = !DILocation(line: 201, column: 64, scope: !2646)
!2653 = !DILocation(line: 201, column: 61, scope: !2646)
!2654 = !DILocation(line: 201, column: 6, scope: !2638)
!2655 = !DILocation(line: 202, column: 3, scope: !2656)
!2656 = distinct !DILexicalBlock(scope: !2646, file: !3, line: 201, column: 70)
!2657 = !DILocation(line: 202, column: 3, scope: !2658)
!2658 = distinct !DILexicalBlock(scope: !2659, file: !3, line: 202, column: 3)
!2659 = distinct !DILexicalBlock(scope: !2656, file: !3, line: 202, column: 3)
!2660 = !DILocation(line: 202, column: 3, scope: !2659)
!2661 = !DILocation(line: 203, column: 29, scope: !2656)
!2662 = !DILocation(line: 203, column: 3, scope: !2656)
!2663 = !DILocation(line: 203, column: 8, scope: !2656)
!2664 = !DILocation(line: 203, column: 27, scope: !2656)
!2665 = !DILocation(line: 204, column: 29, scope: !2656)
!2666 = !DILocation(line: 204, column: 34, scope: !2656)
!2667 = !DILocation(line: 204, column: 39, scope: !2656)
!2668 = !DILocation(line: 204, column: 48, scope: !2656)
!2669 = !DILocation(line: 204, column: 53, scope: !2656)
!2670 = !DILocation(line: 204, column: 10, scope: !2656)
!2671 = !DILocation(line: 204, column: 3, scope: !2656)
!2672 = !DILocation(line: 206, column: 2, scope: !2638)
!2673 = !DILocation(line: 207, column: 1, scope: !2638)
!2674 = !DILocalVariable(name: "mst", arg: 1, scope: !158, file: !3, line: 437, type: !161)
!2675 = !DILocation(line: 437, column: 56, scope: !158)
!2676 = !DILocalVariable(name: "device_rev", arg: 2, scope: !158, file: !3, line: 437, type: !72)
!2677 = !DILocation(line: 437, column: 65, scope: !158)
!2678 = !DILocalVariable(name: "i2c_adap", arg: 3, scope: !158, file: !3, line: 438, type: !181)
!2679 = !DILocation(line: 438, column: 25, scope: !158)
!2680 = !DILocalVariable(name: "i2c_addr", arg: 4, scope: !158, file: !3, line: 438, type: !78)
!2681 = !DILocation(line: 438, column: 38, scope: !158)
!2682 = !DILocalVariable(name: "ret", scope: !158, file: !3, line: 440, type: !106)
!2683 = !DILocation(line: 440, column: 6, scope: !158)
!2684 = !DILocation(line: 442, column: 2, scope: !158)
!2685 = !DILocation(line: 442, column: 2, scope: !2686)
!2686 = distinct !DILexicalBlock(scope: !158, file: !3, line: 442, column: 2)
!2687 = !DILocation(line: 443, column: 32, scope: !2688)
!2688 = distinct !DILexicalBlock(scope: !158, file: !3, line: 443, column: 6)
!2689 = !DILocation(line: 443, column: 37, scope: !2688)
!2690 = !DILocation(line: 443, column: 6, scope: !2688)
!2691 = !DILocation(line: 443, column: 54, scope: !2688)
!2692 = !DILocation(line: 443, column: 6, scope: !158)
!2693 = !DILocation(line: 444, column: 3, scope: !2694)
!2694 = distinct !DILexicalBlock(scope: !2688, file: !3, line: 443, column: 59)
!2695 = !DILocation(line: 444, column: 3, scope: !2696)
!2696 = distinct !DILexicalBlock(scope: !2697, file: !3, line: 444, column: 3)
!2697 = distinct !DILexicalBlock(scope: !2694, file: !3, line: 444, column: 3)
!2698 = !DILocation(line: 444, column: 3, scope: !2697)
!2699 = !DILocation(line: 445, column: 3, scope: !2694)
!2700 = !DILocation(line: 447, column: 9, scope: !158)
!2701 = !DILocation(line: 447, column: 14, scope: !158)
!2702 = !DILocation(line: 447, column: 2, scope: !158)
!2703 = !DILocation(line: 448, column: 21, scope: !158)
!2704 = !DILocation(line: 448, column: 30, scope: !158)
!2705 = !DILocation(line: 448, column: 2, scope: !158)
!2706 = !DILocation(line: 448, column: 7, scope: !158)
!2707 = !DILocation(line: 448, column: 14, scope: !158)
!2708 = !DILocation(line: 448, column: 19, scope: !158)
!2709 = !DILocation(line: 449, column: 2, scope: !158)
!2710 = !DILocation(line: 449, column: 7, scope: !158)
!2711 = !DILocation(line: 449, column: 14, scope: !158)
!2712 = !DILocation(line: 449, column: 20, scope: !158)
!2713 = !DILocation(line: 450, column: 20, scope: !158)
!2714 = !DILocation(line: 450, column: 25, scope: !158)
!2715 = !DILocation(line: 450, column: 2, scope: !158)
!2716 = !DILocation(line: 450, column: 7, scope: !158)
!2717 = !DILocation(line: 450, column: 14, scope: !158)
!2718 = !DILocation(line: 450, column: 18, scope: !158)
!2719 = !DILocation(line: 451, column: 2, scope: !158)
!2720 = !DILocation(line: 451, column: 7, scope: !158)
!2721 = !DILocation(line: 451, column: 14, scope: !158)
!2722 = !DILocation(line: 451, column: 18, scope: !158)
!2723 = !DILocation(line: 453, column: 20, scope: !158)
!2724 = !DILocation(line: 453, column: 2, scope: !158)
!2725 = !DILocation(line: 453, column: 7, scope: !158)
!2726 = !DILocation(line: 453, column: 18, scope: !158)
!2727 = !DILocation(line: 454, column: 18, scope: !158)
!2728 = !DILocation(line: 454, column: 2, scope: !158)
!2729 = !DILocation(line: 454, column: 7, scope: !158)
!2730 = !DILocation(line: 454, column: 16, scope: !158)
!2731 = !DILocation(line: 455, column: 18, scope: !158)
!2732 = !DILocation(line: 455, column: 27, scope: !158)
!2733 = !DILocation(line: 455, column: 2, scope: !158)
!2734 = !DILocation(line: 455, column: 7, scope: !158)
!2735 = !DILocation(line: 455, column: 16, scope: !158)
!2736 = !DILocation(line: 457, column: 6, scope: !2737)
!2737 = distinct !DILexicalBlock(scope: !158, file: !3, line: 457, column: 6)
!2738 = !DILocation(line: 457, column: 17, scope: !2737)
!2739 = !DILocation(line: 457, column: 29, scope: !2737)
!2740 = !DILocation(line: 457, column: 32, scope: !2737)
!2741 = !DILocation(line: 457, column: 43, scope: !2737)
!2742 = !DILocation(line: 457, column: 6, scope: !158)
!2743 = !DILocation(line: 458, column: 3, scope: !2737)
!2744 = !DILocation(line: 458, column: 8, scope: !2737)
!2745 = !DILocation(line: 458, column: 17, scope: !2737)
!2746 = !DILocation(line: 460, column: 3, scope: !2737)
!2747 = !DILocation(line: 460, column: 8, scope: !2737)
!2748 = !DILocation(line: 460, column: 17, scope: !2737)
!2749 = !DILocation(line: 462, column: 41, scope: !158)
!2750 = !DILocation(line: 462, column: 46, scope: !158)
!2751 = !DILocation(line: 462, column: 56, scope: !158)
!2752 = !DILocation(line: 462, column: 60, scope: !158)
!2753 = !DILocation(line: 462, column: 2, scope: !158)
!2754 = !DILocation(line: 462, column: 7, scope: !158)
!2755 = !DILocation(line: 462, column: 28, scope: !158)
!2756 = !DILocation(line: 462, column: 32, scope: !158)
!2757 = !DILocation(line: 462, column: 39, scope: !158)
!2758 = !DILocation(line: 464, column: 6, scope: !2759)
!2759 = distinct !DILexicalBlock(scope: !158, file: !3, line: 463, column: 6)
!2760 = !DILocation(line: 464, column: 11, scope: !2759)
!2761 = !DILocation(line: 465, column: 30, scope: !2759)
!2762 = !DILocation(line: 463, column: 6, scope: !2759)
!2763 = !DILocation(line: 465, column: 35, scope: !2759)
!2764 = !DILocation(line: 463, column: 6, scope: !158)
!2765 = !DILocation(line: 466, column: 3, scope: !2759)
!2766 = !DILocation(line: 468, column: 43, scope: !158)
!2767 = !DILocation(line: 468, column: 48, scope: !158)
!2768 = !DILocation(line: 468, column: 58, scope: !158)
!2769 = !DILocation(line: 468, column: 62, scope: !158)
!2770 = !DILocation(line: 468, column: 2, scope: !158)
!2771 = !DILocation(line: 468, column: 7, scope: !158)
!2772 = !DILocation(line: 468, column: 30, scope: !158)
!2773 = !DILocation(line: 468, column: 34, scope: !158)
!2774 = !DILocation(line: 468, column: 41, scope: !158)
!2775 = !DILocation(line: 470, column: 6, scope: !2776)
!2776 = distinct !DILexicalBlock(scope: !158, file: !3, line: 469, column: 6)
!2777 = !DILocation(line: 470, column: 11, scope: !2776)
!2778 = !DILocation(line: 471, column: 38, scope: !2776)
!2779 = !DILocation(line: 469, column: 6, scope: !2776)
!2780 = !DILocation(line: 471, column: 43, scope: !2776)
!2781 = !DILocation(line: 469, column: 6, scope: !158)
!2782 = !DILocation(line: 472, column: 3, scope: !2776)
!2783 = !DILocation(line: 474, column: 43, scope: !158)
!2784 = !DILocation(line: 474, column: 48, scope: !158)
!2785 = !DILocation(line: 474, column: 58, scope: !158)
!2786 = !DILocation(line: 474, column: 62, scope: !158)
!2787 = !DILocation(line: 474, column: 2, scope: !158)
!2788 = !DILocation(line: 474, column: 7, scope: !158)
!2789 = !DILocation(line: 474, column: 30, scope: !158)
!2790 = !DILocation(line: 474, column: 34, scope: !158)
!2791 = !DILocation(line: 474, column: 41, scope: !158)
!2792 = !DILocation(line: 476, column: 6, scope: !2793)
!2793 = distinct !DILexicalBlock(scope: !158, file: !3, line: 475, column: 6)
!2794 = !DILocation(line: 476, column: 11, scope: !2793)
!2795 = !DILocation(line: 477, column: 38, scope: !2793)
!2796 = !DILocation(line: 475, column: 6, scope: !2793)
!2797 = !DILocation(line: 477, column: 43, scope: !2793)
!2798 = !DILocation(line: 475, column: 6, scope: !158)
!2799 = !DILocation(line: 478, column: 3, scope: !2793)
!2800 = !DILocation(line: 480, column: 43, scope: !158)
!2801 = !DILocation(line: 480, column: 48, scope: !158)
!2802 = !DILocation(line: 480, column: 58, scope: !158)
!2803 = !DILocation(line: 480, column: 62, scope: !158)
!2804 = !DILocation(line: 480, column: 2, scope: !158)
!2805 = !DILocation(line: 480, column: 7, scope: !158)
!2806 = !DILocation(line: 480, column: 30, scope: !158)
!2807 = !DILocation(line: 480, column: 34, scope: !158)
!2808 = !DILocation(line: 480, column: 41, scope: !158)
!2809 = !DILocation(line: 482, column: 6, scope: !2810)
!2810 = distinct !DILexicalBlock(scope: !158, file: !3, line: 481, column: 6)
!2811 = !DILocation(line: 482, column: 11, scope: !2810)
!2812 = !DILocation(line: 483, column: 38, scope: !2810)
!2813 = !DILocation(line: 481, column: 6, scope: !2810)
!2814 = !DILocation(line: 483, column: 43, scope: !2810)
!2815 = !DILocation(line: 481, column: 6, scope: !158)
!2816 = !DILocation(line: 484, column: 3, scope: !2810)
!2817 = !DILocation(line: 487, column: 24, scope: !158)
!2818 = !DILocation(line: 487, column: 29, scope: !158)
!2819 = !DILocation(line: 487, column: 34, scope: !158)
!2820 = !DILocation(line: 487, column: 2, scope: !158)
!2821 = !DILocation(line: 489, column: 22, scope: !158)
!2822 = !DILocation(line: 489, column: 32, scope: !158)
!2823 = !DILocation(line: 489, column: 37, scope: !158)
!2824 = !DILocation(line: 489, column: 9, scope: !158)
!2825 = !DILocation(line: 489, column: 45, scope: !158)
!2826 = !DILocation(line: 489, column: 6, scope: !158)
!2827 = !DILocation(line: 490, column: 16, scope: !158)
!2828 = !DILocation(line: 490, column: 21, scope: !158)
!2829 = !DILocation(line: 490, column: 2, scope: !158)
!2830 = !DILocation(line: 492, column: 9, scope: !158)
!2831 = !DILocation(line: 492, column: 2, scope: !158)
!2832 = !DILocation(line: 493, column: 1, scope: !158)
!2833 = distinct !DISubprogram(name: "i2c_adapter_init", scope: !3, file: !3, line: 424, type: !2834, scopeLine: 427, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2834 = !DISubroutineType(types: !2835)
!2835 = !{!106, !181, !2836, !89, !161}
!2836 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !175, size: 64)
!2837 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2833, file: !3, line: 424, type: !181)
!2838 = !DILocation(line: 424, column: 49, scope: !2833)
!2839 = !DILocalVariable(name: "algo", arg: 2, scope: !2833, file: !3, line: 425, type: !2836)
!2840 = !DILocation(line: 425, column: 27, scope: !2833)
!2841 = !DILocalVariable(name: "name", arg: 3, scope: !2833, file: !3, line: 425, type: !89)
!2842 = !DILocation(line: 425, column: 45, scope: !2833)
!2843 = !DILocalVariable(name: "mst", arg: 4, scope: !2833, file: !3, line: 426, type: !161)
!2844 = !DILocation(line: 426, column: 32, scope: !2833)
!2845 = !DILocation(line: 428, column: 10, scope: !2833)
!2846 = !DILocation(line: 428, column: 20, scope: !2833)
!2847 = !DILocation(line: 428, column: 26, scope: !2833)
!2848 = !DILocation(line: 428, column: 2, scope: !2833)
!2849 = !DILocation(line: 429, column: 19, scope: !2833)
!2850 = !DILocation(line: 429, column: 2, scope: !2833)
!2851 = !DILocation(line: 429, column: 12, scope: !2833)
!2852 = !DILocation(line: 429, column: 17, scope: !2833)
!2853 = !DILocation(line: 430, column: 2, scope: !2833)
!2854 = !DILocation(line: 430, column: 12, scope: !2833)
!2855 = !DILocation(line: 430, column: 22, scope: !2833)
!2856 = !DILocation(line: 431, column: 19, scope: !2833)
!2857 = !DILocation(line: 431, column: 29, scope: !2833)
!2858 = !DILocation(line: 431, column: 2, scope: !2833)
!2859 = !DILocation(line: 432, column: 22, scope: !2860)
!2860 = distinct !DILexicalBlock(scope: !2833, file: !3, line: 432, column: 6)
!2861 = !DILocation(line: 432, column: 6, scope: !2860)
!2862 = !DILocation(line: 432, column: 32, scope: !2860)
!2863 = !DILocation(line: 432, column: 6, scope: !2833)
!2864 = !DILocation(line: 433, column: 3, scope: !2860)
!2865 = !DILocation(line: 434, column: 2, scope: !2833)
!2866 = !DILocation(line: 435, column: 1, scope: !2833)
!2867 = distinct !DISubprogram(name: "dibx000_exit_i2c_master", scope: !3, file: !3, line: 497, type: !2560, scopeLine: 498, flags: DIFlagPrototyped, spFlags: DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2868 = !DILocalVariable(name: "mst", arg: 1, scope: !2867, file: !3, line: 497, type: !161)
!2869 = !DILocation(line: 497, column: 57, scope: !2867)
!2870 = !DILocation(line: 499, column: 19, scope: !2867)
!2871 = !DILocation(line: 499, column: 24, scope: !2867)
!2872 = !DILocation(line: 499, column: 2, scope: !2867)
!2873 = !DILocation(line: 500, column: 19, scope: !2867)
!2874 = !DILocation(line: 500, column: 24, scope: !2867)
!2875 = !DILocation(line: 500, column: 2, scope: !2867)
!2876 = !DILocation(line: 501, column: 19, scope: !2867)
!2877 = !DILocation(line: 501, column: 24, scope: !2867)
!2878 = !DILocation(line: 501, column: 2, scope: !2867)
!2879 = !DILocation(line: 502, column: 19, scope: !2867)
!2880 = !DILocation(line: 502, column: 24, scope: !2867)
!2881 = !DILocation(line: 502, column: 2, scope: !2867)
!2882 = !DILocation(line: 503, column: 1, scope: !2867)
!2883 = distinct !DISubprogram(name: "dev_get_drvdata", scope: !30, file: !30, line: 655, type: !2884, scopeLine: 656, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2884 = !DISubroutineType(types: !2885)
!2885 = !{!77, !2062}
!2886 = !DILocalVariable(name: "dev", arg: 1, scope: !2883, file: !30, line: 655, type: !2062)
!2887 = !DILocation(line: 655, column: 58, scope: !2883)
!2888 = !DILocation(line: 657, column: 9, scope: !2883)
!2889 = !DILocation(line: 657, column: 14, scope: !2883)
!2890 = !DILocation(line: 657, column: 2, scope: !2883)
!2891 = distinct !DISubprogram(name: "i2c_set_adapdata", scope: !168, file: !168, line: 732, type: !2892, scopeLine: 733, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2892 = !DISubroutineType(types: !2893)
!2893 = !{null, !181, !77}
!2894 = !DILocalVariable(name: "adap", arg: 1, scope: !2891, file: !168, line: 732, type: !181)
!2895 = !DILocation(line: 732, column: 57, scope: !2891)
!2896 = !DILocalVariable(name: "data", arg: 2, scope: !2891, file: !168, line: 732, type: !77)
!2897 = !DILocation(line: 732, column: 69, scope: !2891)
!2898 = !DILocation(line: 734, column: 19, scope: !2891)
!2899 = !DILocation(line: 734, column: 25, scope: !2891)
!2900 = !DILocation(line: 734, column: 30, scope: !2891)
!2901 = !DILocation(line: 734, column: 2, scope: !2891)
!2902 = !DILocation(line: 735, column: 1, scope: !2891)
!2903 = distinct !DISubprogram(name: "dev_set_drvdata", scope: !30, file: !30, line: 660, type: !2904, scopeLine: 661, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2904 = !DISubroutineType(types: !2905)
!2905 = !{null, !1729, !77}
!2906 = !DILocalVariable(name: "dev", arg: 1, scope: !2903, file: !30, line: 660, type: !1729)
!2907 = !DILocation(line: 660, column: 51, scope: !2903)
!2908 = !DILocalVariable(name: "data", arg: 2, scope: !2903, file: !30, line: 660, type: !77)
!2909 = !DILocation(line: 660, column: 62, scope: !2903)
!2910 = !DILocation(line: 662, column: 21, scope: !2903)
!2911 = !DILocation(line: 662, column: 2, scope: !2903)
!2912 = !DILocation(line: 662, column: 7, scope: !2903)
!2913 = !DILocation(line: 662, column: 19, scope: !2903)
!2914 = !DILocation(line: 663, column: 1, scope: !2903)
!2915 = distinct !DISubprogram(name: "dibx000_i2c_gated_tuner_xfer", scope: !3, file: !3, line: 332, type: !179, scopeLine: 334, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!2916 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !2915, file: !3, line: 332, type: !181)
!2917 = !DILocation(line: 332, column: 61, scope: !2915)
!2918 = !DILocalVariable(name: "msg", arg: 2, scope: !2915, file: !3, line: 333, type: !182)
!2919 = !DILocation(line: 333, column: 21, scope: !2915)
!2920 = !DILocalVariable(name: "num", arg: 3, scope: !2915, file: !3, line: 333, type: !106)
!2921 = !DILocation(line: 333, column: 32, scope: !2915)
!2922 = !DILocalVariable(name: "mst", scope: !2915, file: !3, line: 335, type: !161)
!2923 = !DILocation(line: 335, column: 29, scope: !2915)
!2924 = !DILocation(line: 335, column: 52, scope: !2915)
!2925 = !DILocation(line: 335, column: 35, scope: !2915)
!2926 = !DILocalVariable(name: "ret", scope: !2915, file: !3, line: 336, type: !106)
!2927 = !DILocation(line: 336, column: 6, scope: !2915)
!2928 = !DILocation(line: 338, column: 6, scope: !2929)
!2929 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 338, column: 6)
!2930 = !DILocation(line: 338, column: 10, scope: !2929)
!2931 = !DILocation(line: 338, column: 6, scope: !2915)
!2932 = !DILocation(line: 339, column: 3, scope: !2933)
!2933 = distinct !DILexicalBlock(scope: !2929, file: !3, line: 338, column: 16)
!2934 = !DILocation(line: 339, column: 3, scope: !2935)
!2935 = distinct !DILexicalBlock(scope: !2936, file: !3, line: 339, column: 3)
!2936 = distinct !DILexicalBlock(scope: !2933, file: !3, line: 339, column: 3)
!2937 = !DILocation(line: 339, column: 3, scope: !2936)
!2938 = !DILocation(line: 341, column: 3, scope: !2933)
!2939 = !DILocation(line: 344, column: 31, scope: !2915)
!2940 = !DILocation(line: 344, column: 2, scope: !2915)
!2941 = !DILocation(line: 346, column: 32, scope: !2942)
!2942 = distinct !DILexicalBlock(scope: !2915, file: !3, line: 346, column: 6)
!2943 = !DILocation(line: 346, column: 37, scope: !2942)
!2944 = !DILocation(line: 346, column: 6, scope: !2942)
!2945 = !DILocation(line: 346, column: 54, scope: !2942)
!2946 = !DILocation(line: 346, column: 6, scope: !2915)
!2947 = !DILocation(line: 347, column: 3, scope: !2948)
!2948 = distinct !DILexicalBlock(scope: !2942, file: !3, line: 346, column: 59)
!2949 = !DILocation(line: 347, column: 3, scope: !2950)
!2950 = distinct !DILexicalBlock(scope: !2951, file: !3, line: 347, column: 3)
!2951 = distinct !DILexicalBlock(scope: !2948, file: !3, line: 347, column: 3)
!2952 = !DILocation(line: 347, column: 3, scope: !2951)
!2953 = !DILocation(line: 348, column: 3, scope: !2948)
!2954 = !DILocation(line: 350, column: 9, scope: !2915)
!2955 = !DILocation(line: 350, column: 14, scope: !2915)
!2956 = !DILocation(line: 350, column: 2, scope: !2915)
!2957 = !DILocation(line: 350, column: 52, scope: !2915)
!2958 = !DILocation(line: 350, column: 50, scope: !2915)
!2959 = !DILocation(line: 350, column: 47, scope: !2915)
!2960 = !DILocation(line: 350, column: 45, scope: !2915)
!2961 = !DILocation(line: 353, column: 24, scope: !2915)
!2962 = !DILocation(line: 353, column: 30, scope: !2915)
!2963 = !DILocation(line: 353, column: 35, scope: !2915)
!2964 = !DILocation(line: 353, column: 56, scope: !2915)
!2965 = !DILocation(line: 353, column: 63, scope: !2915)
!2966 = !DILocation(line: 353, column: 2, scope: !2915)
!2967 = !DILocation(line: 354, column: 21, scope: !2915)
!2968 = !DILocation(line: 354, column: 26, scope: !2915)
!2969 = !DILocation(line: 354, column: 2, scope: !2915)
!2970 = !DILocation(line: 354, column: 7, scope: !2915)
!2971 = !DILocation(line: 354, column: 14, scope: !2915)
!2972 = !DILocation(line: 354, column: 19, scope: !2915)
!2973 = !DILocation(line: 355, column: 21, scope: !2915)
!2974 = !DILocation(line: 355, column: 26, scope: !2915)
!2975 = !DILocation(line: 355, column: 2, scope: !2915)
!2976 = !DILocation(line: 355, column: 7, scope: !2915)
!2977 = !DILocation(line: 355, column: 14, scope: !2915)
!2978 = !DILocation(line: 355, column: 18, scope: !2915)
!2979 = !DILocation(line: 356, column: 2, scope: !2915)
!2980 = !DILocation(line: 356, column: 7, scope: !2915)
!2981 = !DILocation(line: 356, column: 14, scope: !2915)
!2982 = !DILocation(line: 356, column: 18, scope: !2915)
!2983 = !DILocation(line: 358, column: 10, scope: !2915)
!2984 = !DILocation(line: 358, column: 15, scope: !2915)
!2985 = !DILocation(line: 358, column: 2, scope: !2915)
!2986 = !DILocation(line: 358, column: 23, scope: !2915)
!2987 = !DILocation(line: 358, column: 53, scope: !2915)
!2988 = !DILocation(line: 358, column: 51, scope: !2915)
!2989 = !DILocation(line: 361, column: 24, scope: !2915)
!2990 = !DILocation(line: 361, column: 30, scope: !2915)
!2991 = !DILocation(line: 361, column: 35, scope: !2915)
!2992 = !DILocation(line: 361, column: 2, scope: !2915)
!2993 = !DILocation(line: 362, column: 27, scope: !2915)
!2994 = !DILocation(line: 362, column: 32, scope: !2915)
!2995 = !DILocation(line: 362, column: 2, scope: !2915)
!2996 = !DILocation(line: 362, column: 7, scope: !2915)
!2997 = !DILocation(line: 362, column: 11, scope: !2915)
!2998 = !DILocation(line: 362, column: 15, scope: !2915)
!2999 = !DILocation(line: 362, column: 20, scope: !2915)
!3000 = !DILocation(line: 362, column: 25, scope: !2915)
!3001 = !DILocation(line: 363, column: 27, scope: !2915)
!3002 = !DILocation(line: 363, column: 32, scope: !2915)
!3003 = !DILocation(line: 363, column: 2, scope: !2915)
!3004 = !DILocation(line: 363, column: 7, scope: !2915)
!3005 = !DILocation(line: 363, column: 11, scope: !2915)
!3006 = !DILocation(line: 363, column: 15, scope: !2915)
!3007 = !DILocation(line: 363, column: 20, scope: !2915)
!3008 = !DILocation(line: 363, column: 24, scope: !2915)
!3009 = !DILocation(line: 364, column: 2, scope: !2915)
!3010 = !DILocation(line: 364, column: 7, scope: !2915)
!3011 = !DILocation(line: 364, column: 11, scope: !2915)
!3012 = !DILocation(line: 364, column: 15, scope: !2915)
!3013 = !DILocation(line: 364, column: 20, scope: !2915)
!3014 = !DILocation(line: 364, column: 24, scope: !2915)
!3015 = !DILocation(line: 366, column: 22, scope: !2915)
!3016 = !DILocation(line: 366, column: 27, scope: !2915)
!3017 = !DILocation(line: 366, column: 37, scope: !2915)
!3018 = !DILocation(line: 366, column: 42, scope: !2915)
!3019 = !DILocation(line: 366, column: 51, scope: !2915)
!3020 = !DILocation(line: 366, column: 49, scope: !2915)
!3021 = !DILocation(line: 366, column: 9, scope: !2915)
!3022 = !DILocation(line: 366, column: 63, scope: !2915)
!3023 = !DILocation(line: 366, column: 61, scope: !2915)
!3024 = !DILocation(line: 366, column: 56, scope: !2915)
!3025 = !DILocation(line: 367, column: 4, scope: !2915)
!3026 = !DILocation(line: 366, column: 6, scope: !2915)
!3027 = !DILocation(line: 368, column: 16, scope: !2915)
!3028 = !DILocation(line: 368, column: 21, scope: !2915)
!3029 = !DILocation(line: 368, column: 2, scope: !2915)
!3030 = !DILocation(line: 369, column: 9, scope: !2915)
!3031 = !DILocation(line: 369, column: 2, scope: !2915)
!3032 = !DILocation(line: 370, column: 1, scope: !2915)
!3033 = distinct !DISubprogram(name: "dibx000_i2c_func", scope: !3, file: !3, line: 193, type: !206, scopeLine: 194, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3034 = !DILocalVariable(name: "adapter", arg: 1, scope: !3033, file: !3, line: 193, type: !181)
!3035 = !DILocation(line: 193, column: 49, scope: !3033)
!3036 = !DILocation(line: 195, column: 2, scope: !3033)
!3037 = distinct !DISubprogram(name: "dibx000_i2c_master_xfer_gpio12", scope: !3, file: !3, line: 209, type: !179, scopeLine: 210, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3038 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3037, file: !3, line: 209, type: !181)
!3039 = !DILocation(line: 209, column: 63, scope: !3037)
!3040 = !DILocalVariable(name: "msg", arg: 2, scope: !3037, file: !3, line: 209, type: !182)
!3041 = !DILocation(line: 209, column: 88, scope: !3037)
!3042 = !DILocalVariable(name: "num", arg: 3, scope: !3037, file: !3, line: 209, type: !106)
!3043 = !DILocation(line: 209, column: 99, scope: !3037)
!3044 = !DILocalVariable(name: "mst", scope: !3037, file: !3, line: 211, type: !161)
!3045 = !DILocation(line: 211, column: 29, scope: !3037)
!3046 = !DILocation(line: 211, column: 52, scope: !3037)
!3047 = !DILocation(line: 211, column: 35, scope: !3037)
!3048 = !DILocalVariable(name: "msg_index", scope: !3037, file: !3, line: 212, type: !106)
!3049 = !DILocation(line: 212, column: 6, scope: !3037)
!3050 = !DILocalVariable(name: "ret", scope: !3037, file: !3, line: 213, type: !106)
!3051 = !DILocation(line: 213, column: 6, scope: !3037)
!3052 = !DILocation(line: 215, column: 31, scope: !3037)
!3053 = !DILocation(line: 215, column: 2, scope: !3037)
!3054 = !DILocation(line: 216, column: 17, scope: !3055)
!3055 = distinct !DILexicalBlock(scope: !3037, file: !3, line: 216, column: 2)
!3056 = !DILocation(line: 216, column: 7, scope: !3055)
!3057 = !DILocation(line: 216, column: 22, scope: !3058)
!3058 = distinct !DILexicalBlock(scope: !3055, file: !3, line: 216, column: 2)
!3059 = !DILocation(line: 216, column: 34, scope: !3058)
!3060 = !DILocation(line: 216, column: 32, scope: !3058)
!3061 = !DILocation(line: 216, column: 2, scope: !3055)
!3062 = !DILocation(line: 217, column: 7, scope: !3063)
!3063 = distinct !DILexicalBlock(scope: !3064, file: !3, line: 217, column: 7)
!3064 = distinct !DILexicalBlock(scope: !3058, file: !3, line: 216, column: 52)
!3065 = !DILocation(line: 217, column: 11, scope: !3063)
!3066 = !DILocation(line: 217, column: 22, scope: !3063)
!3067 = !DILocation(line: 217, column: 28, scope: !3063)
!3068 = !DILocation(line: 217, column: 7, scope: !3064)
!3069 = !DILocation(line: 218, column: 34, scope: !3070)
!3070 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 217, column: 40)
!3071 = !DILocation(line: 218, column: 40, scope: !3070)
!3072 = !DILocation(line: 218, column: 44, scope: !3070)
!3073 = !DILocation(line: 218, column: 10, scope: !3070)
!3074 = !DILocation(line: 218, column: 8, scope: !3070)
!3075 = !DILocation(line: 219, column: 8, scope: !3076)
!3076 = distinct !DILexicalBlock(scope: !3070, file: !3, line: 219, column: 8)
!3077 = !DILocation(line: 219, column: 12, scope: !3076)
!3078 = !DILocation(line: 219, column: 8, scope: !3070)
!3079 = !DILocation(line: 220, column: 5, scope: !3076)
!3080 = !DILocation(line: 221, column: 3, scope: !3070)
!3081 = !DILocation(line: 222, column: 35, scope: !3082)
!3082 = distinct !DILexicalBlock(scope: !3063, file: !3, line: 221, column: 10)
!3083 = !DILocation(line: 222, column: 41, scope: !3082)
!3084 = !DILocation(line: 222, column: 45, scope: !3082)
!3085 = !DILocation(line: 222, column: 10, scope: !3082)
!3086 = !DILocation(line: 222, column: 8, scope: !3082)
!3087 = !DILocation(line: 223, column: 8, scope: !3088)
!3088 = distinct !DILexicalBlock(scope: !3082, file: !3, line: 223, column: 8)
!3089 = !DILocation(line: 223, column: 12, scope: !3088)
!3090 = !DILocation(line: 223, column: 8, scope: !3082)
!3091 = !DILocation(line: 224, column: 5, scope: !3088)
!3092 = !DILocation(line: 226, column: 2, scope: !3064)
!3093 = !DILocation(line: 216, column: 48, scope: !3058)
!3094 = !DILocation(line: 216, column: 2, scope: !3058)
!3095 = distinct !{!3095, !3061, !3096}
!3096 = !DILocation(line: 226, column: 2, scope: !3055)
!3097 = !DILocation(line: 228, column: 9, scope: !3037)
!3098 = !DILocation(line: 228, column: 2, scope: !3037)
!3099 = !DILocation(line: 229, column: 1, scope: !3037)
!3100 = distinct !DISubprogram(name: "dibx000_master_i2c_read", scope: !3, file: !3, line: 139, type: !3101, scopeLine: 140, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3101 = !DISubroutineType(types: !3102)
!3102 = !{!106, !161, !182}
!3103 = !DILocalVariable(name: "mst", arg: 1, scope: !3100, file: !3, line: 139, type: !161)
!3104 = !DILocation(line: 139, column: 63, scope: !3100)
!3105 = !DILocalVariable(name: "msg", arg: 2, scope: !3100, file: !3, line: 139, type: !182)
!3106 = !DILocation(line: 139, column: 84, scope: !3100)
!3107 = !DILocalVariable(name: "da", scope: !3100, file: !3, line: 141, type: !72)
!3108 = !DILocation(line: 141, column: 6, scope: !3100)
!3109 = !DILocalVariable(name: "b", scope: !3100, file: !3, line: 142, type: !2588)
!3110 = !DILocation(line: 142, column: 6, scope: !3100)
!3111 = !DILocation(line: 142, column: 10, scope: !3100)
!3112 = !DILocation(line: 142, column: 15, scope: !3100)
!3113 = !DILocalVariable(name: "rxlen", scope: !3100, file: !3, line: 143, type: !72)
!3114 = !DILocation(line: 143, column: 6, scope: !3100)
!3115 = !DILocation(line: 143, column: 14, scope: !3100)
!3116 = !DILocation(line: 143, column: 19, scope: !3100)
!3117 = !DILocalVariable(name: "len", scope: !3100, file: !3, line: 143, type: !72)
!3118 = !DILocation(line: 143, column: 24, scope: !3100)
!3119 = !DILocation(line: 145, column: 2, scope: !3100)
!3120 = !DILocation(line: 145, column: 9, scope: !3100)
!3121 = !DILocation(line: 146, column: 9, scope: !3122)
!3122 = distinct !DILexicalBlock(scope: !3100, file: !3, line: 145, column: 16)
!3123 = !DILocation(line: 146, column: 15, scope: !3122)
!3124 = !DILocation(line: 146, column: 25, scope: !3122)
!3125 = !DILocation(line: 146, column: 7, scope: !3122)
!3126 = !DILocation(line: 147, column: 16, scope: !3122)
!3127 = !DILocation(line: 147, column: 21, scope: !3122)
!3128 = !DILocation(line: 147, column: 10, scope: !3122)
!3129 = !DILocation(line: 147, column: 9, scope: !3122)
!3130 = !DILocation(line: 147, column: 28, scope: !3122)
!3131 = !DILocation(line: 147, column: 34, scope: !3122)
!3132 = !DILocation(line: 148, column: 23, scope: !3122)
!3133 = !DILocation(line: 152, column: 6, scope: !3122)
!3134 = !DILocation(line: 152, column: 10, scope: !3122)
!3135 = !DILocation(line: 152, column: 17, scope: !3122)
!3136 = !DILocation(line: 151, column: 23, scope: !3122)
!3137 = !DILocation(line: 152, column: 23, scope: !3122)
!3138 = !DILocation(line: 147, column: 8, scope: !3122)
!3139 = !DILocation(line: 147, column: 6, scope: !3122)
!3140 = !DILocation(line: 156, column: 7, scope: !3141)
!3141 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 156, column: 7)
!3142 = !DILocation(line: 156, column: 16, scope: !3141)
!3143 = !DILocation(line: 156, column: 21, scope: !3141)
!3144 = !DILocation(line: 156, column: 13, scope: !3141)
!3145 = !DILocation(line: 156, column: 7, scope: !3122)
!3146 = !DILocation(line: 157, column: 7, scope: !3141)
!3147 = !DILocation(line: 157, column: 4, scope: !3141)
!3148 = !DILocation(line: 159, column: 7, scope: !3149)
!3149 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 159, column: 7)
!3150 = !DILocation(line: 159, column: 13, scope: !3149)
!3151 = !DILocation(line: 159, column: 12, scope: !3149)
!3152 = !DILocation(line: 159, column: 17, scope: !3149)
!3153 = !DILocation(line: 159, column: 7, scope: !3122)
!3154 = !DILocation(line: 160, column: 7, scope: !3149)
!3155 = !DILocation(line: 160, column: 4, scope: !3149)
!3156 = !DILocation(line: 161, column: 22, scope: !3122)
!3157 = !DILocation(line: 161, column: 27, scope: !3122)
!3158 = !DILocation(line: 161, column: 32, scope: !3122)
!3159 = !DILocation(line: 161, column: 40, scope: !3122)
!3160 = !DILocation(line: 161, column: 44, scope: !3122)
!3161 = !DILocation(line: 161, column: 3, scope: !3122)
!3162 = !DILocation(line: 163, column: 27, scope: !3163)
!3163 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 163, column: 7)
!3164 = !DILocation(line: 163, column: 7, scope: !3163)
!3165 = !DILocation(line: 163, column: 32, scope: !3163)
!3166 = !DILocation(line: 163, column: 7, scope: !3122)
!3167 = !DILocation(line: 164, column: 4, scope: !3163)
!3168 = !DILocation(line: 166, column: 12, scope: !3122)
!3169 = !DILocation(line: 166, column: 9, scope: !3122)
!3170 = !DILocation(line: 168, column: 3, scope: !3122)
!3171 = !DILocation(line: 168, column: 10, scope: !3122)
!3172 = !DILocation(line: 169, column: 27, scope: !3173)
!3173 = distinct !DILexicalBlock(scope: !3122, file: !3, line: 168, column: 15)
!3174 = !DILocation(line: 169, column: 32, scope: !3173)
!3175 = !DILocation(line: 169, column: 37, scope: !3173)
!3176 = !DILocation(line: 169, column: 9, scope: !3173)
!3177 = !DILocation(line: 169, column: 7, scope: !3173)
!3178 = !DILocation(line: 170, column: 12, scope: !3173)
!3179 = !DILocation(line: 170, column: 15, scope: !3173)
!3180 = !DILocation(line: 170, column: 21, scope: !3173)
!3181 = !DILocation(line: 170, column: 11, scope: !3173)
!3182 = !DILocation(line: 170, column: 6, scope: !3173)
!3183 = !DILocation(line: 170, column: 9, scope: !3173)
!3184 = !DILocation(line: 171, column: 7, scope: !3173)
!3185 = !DILocation(line: 172, column: 8, scope: !3186)
!3186 = distinct !DILexicalBlock(scope: !3173, file: !3, line: 172, column: 8)
!3187 = !DILocation(line: 172, column: 12, scope: !3186)
!3188 = !DILocation(line: 172, column: 8, scope: !3173)
!3189 = !DILocation(line: 173, column: 13, scope: !3190)
!3190 = distinct !DILexicalBlock(scope: !3186, file: !3, line: 172, column: 18)
!3191 = !DILocation(line: 173, column: 18, scope: !3190)
!3192 = !DILocation(line: 173, column: 7, scope: !3190)
!3193 = !DILocation(line: 173, column: 10, scope: !3190)
!3194 = !DILocation(line: 174, column: 8, scope: !3190)
!3195 = !DILocation(line: 175, column: 4, scope: !3190)
!3196 = distinct !{!3196, !3170, !3197}
!3197 = !DILocation(line: 176, column: 3, scope: !3122)
!3198 = distinct !{!3198, !3119, !3199}
!3199 = !DILocation(line: 177, column: 2, scope: !3100)
!3200 = !DILocation(line: 179, column: 2, scope: !3100)
!3201 = !DILocation(line: 180, column: 1, scope: !3100)
!3202 = distinct !DISubprogram(name: "dibx000_master_i2c_write", scope: !3, file: !3, line: 96, type: !3203, scopeLine: 97, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3203 = !DISubroutineType(types: !3204)
!3204 = !{!106, !161, !182, !78}
!3205 = !DILocalVariable(name: "mst", arg: 1, scope: !3202, file: !3, line: 96, type: !161)
!3206 = !DILocation(line: 96, column: 64, scope: !3202)
!3207 = !DILocalVariable(name: "msg", arg: 2, scope: !3202, file: !3, line: 96, type: !182)
!3208 = !DILocation(line: 96, column: 85, scope: !3202)
!3209 = !DILocalVariable(name: "stop", arg: 3, scope: !3202, file: !3, line: 96, type: !78)
!3210 = !DILocation(line: 96, column: 93, scope: !3202)
!3211 = !DILocalVariable(name: "data", scope: !3202, file: !3, line: 98, type: !72)
!3212 = !DILocation(line: 98, column: 6, scope: !3202)
!3213 = !DILocalVariable(name: "da", scope: !3202, file: !3, line: 99, type: !72)
!3214 = !DILocation(line: 99, column: 6, scope: !3202)
!3215 = !DILocalVariable(name: "i", scope: !3202, file: !3, line: 100, type: !72)
!3216 = !DILocation(line: 100, column: 6, scope: !3202)
!3217 = !DILocalVariable(name: "txlen", scope: !3202, file: !3, line: 101, type: !72)
!3218 = !DILocation(line: 101, column: 6, scope: !3202)
!3219 = !DILocation(line: 101, column: 14, scope: !3202)
!3220 = !DILocation(line: 101, column: 19, scope: !3202)
!3221 = !DILocalVariable(name: "len", scope: !3202, file: !3, line: 101, type: !72)
!3222 = !DILocation(line: 101, column: 24, scope: !3202)
!3223 = !DILocalVariable(name: "b", scope: !3202, file: !3, line: 102, type: !3224)
!3224 = !DIDerivedType(tag: DW_TAG_pointer_type, baseType: !3225, size: 64)
!3225 = !DIDerivedType(tag: DW_TAG_const_type, baseType: !78)
!3226 = !DILocation(line: 102, column: 12, scope: !3202)
!3227 = !DILocation(line: 102, column: 16, scope: !3202)
!3228 = !DILocation(line: 102, column: 21, scope: !3202)
!3229 = !DILocation(line: 104, column: 2, scope: !3202)
!3230 = !DILocation(line: 104, column: 9, scope: !3202)
!3231 = !DILocation(line: 105, column: 21, scope: !3232)
!3232 = distinct !DILexicalBlock(scope: !3202, file: !3, line: 104, column: 16)
!3233 = !DILocation(line: 105, column: 26, scope: !3232)
!3234 = !DILocation(line: 105, column: 31, scope: !3232)
!3235 = !DILocation(line: 105, column: 40, scope: !3232)
!3236 = !DILocation(line: 105, column: 3, scope: !3232)
!3237 = !DILocation(line: 107, column: 9, scope: !3232)
!3238 = !DILocation(line: 107, column: 15, scope: !3232)
!3239 = !DILocation(line: 107, column: 25, scope: !3232)
!3240 = !DILocation(line: 107, column: 7, scope: !3232)
!3241 = !DILocation(line: 108, column: 10, scope: !3242)
!3242 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 108, column: 3)
!3243 = !DILocation(line: 108, column: 8, scope: !3242)
!3244 = !DILocation(line: 108, column: 15, scope: !3245)
!3245 = distinct !DILexicalBlock(scope: !3242, file: !3, line: 108, column: 3)
!3246 = !DILocation(line: 108, column: 19, scope: !3245)
!3247 = !DILocation(line: 108, column: 17, scope: !3245)
!3248 = !DILocation(line: 108, column: 3, scope: !3242)
!3249 = !DILocation(line: 109, column: 13, scope: !3250)
!3250 = distinct !DILexicalBlock(scope: !3245, file: !3, line: 108, column: 32)
!3251 = !DILocation(line: 109, column: 11, scope: !3250)
!3252 = !DILocation(line: 109, column: 16, scope: !3250)
!3253 = !DILocation(line: 109, column: 9, scope: !3250)
!3254 = !DILocation(line: 110, column: 8, scope: !3255)
!3255 = distinct !DILexicalBlock(scope: !3250, file: !3, line: 110, column: 8)
!3256 = !DILocation(line: 110, column: 9, scope: !3255)
!3257 = !DILocation(line: 110, column: 14, scope: !3255)
!3258 = !DILocation(line: 110, column: 12, scope: !3255)
!3259 = !DILocation(line: 110, column: 8, scope: !3250)
!3260 = !DILocation(line: 111, column: 15, scope: !3255)
!3261 = !DILocation(line: 111, column: 13, scope: !3255)
!3262 = !DILocation(line: 111, column: 10, scope: !3255)
!3263 = !DILocation(line: 111, column: 5, scope: !3255)
!3264 = !DILocation(line: 112, column: 23, scope: !3250)
!3265 = !DILocation(line: 112, column: 28, scope: !3250)
!3266 = !DILocation(line: 112, column: 33, scope: !3250)
!3267 = !DILocation(line: 112, column: 43, scope: !3250)
!3268 = !DILocation(line: 112, column: 4, scope: !3250)
!3269 = !DILocation(line: 113, column: 3, scope: !3250)
!3270 = !DILocation(line: 108, column: 26, scope: !3245)
!3271 = !DILocation(line: 108, column: 3, scope: !3245)
!3272 = distinct !{!3272, !3248, !3273}
!3273 = !DILocation(line: 113, column: 3, scope: !3242)
!3274 = !DILocation(line: 114, column: 16, scope: !3232)
!3275 = !DILocation(line: 114, column: 21, scope: !3232)
!3276 = !DILocation(line: 114, column: 10, scope: !3232)
!3277 = !DILocation(line: 114, column: 9, scope: !3232)
!3278 = !DILocation(line: 114, column: 29, scope: !3232)
!3279 = !DILocation(line: 114, column: 35, scope: !3232)
!3280 = !DILocation(line: 115, column: 23, scope: !3232)
!3281 = !DILocation(line: 119, column: 6, scope: !3232)
!3282 = !DILocation(line: 119, column: 10, scope: !3232)
!3283 = !DILocation(line: 119, column: 17, scope: !3232)
!3284 = !DILocation(line: 118, column: 23, scope: !3232)
!3285 = !DILocation(line: 114, column: 8, scope: !3232)
!3286 = !DILocation(line: 114, column: 6, scope: !3232)
!3287 = !DILocation(line: 123, column: 7, scope: !3288)
!3288 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 123, column: 7)
!3289 = !DILocation(line: 123, column: 16, scope: !3288)
!3290 = !DILocation(line: 123, column: 21, scope: !3288)
!3291 = !DILocation(line: 123, column: 13, scope: !3288)
!3292 = !DILocation(line: 123, column: 7, scope: !3232)
!3293 = !DILocation(line: 124, column: 7, scope: !3288)
!3294 = !DILocation(line: 124, column: 4, scope: !3288)
!3295 = !DILocation(line: 126, column: 7, scope: !3296)
!3296 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 126, column: 7)
!3297 = !DILocation(line: 126, column: 13, scope: !3296)
!3298 = !DILocation(line: 126, column: 12, scope: !3296)
!3299 = !DILocation(line: 126, column: 17, scope: !3296)
!3300 = !DILocation(line: 126, column: 22, scope: !3296)
!3301 = !DILocation(line: 126, column: 25, scope: !3296)
!3302 = !DILocation(line: 126, column: 7, scope: !3232)
!3303 = !DILocation(line: 127, column: 7, scope: !3296)
!3304 = !DILocation(line: 127, column: 4, scope: !3296)
!3305 = !DILocation(line: 129, column: 22, scope: !3232)
!3306 = !DILocation(line: 129, column: 27, scope: !3232)
!3307 = !DILocation(line: 129, column: 32, scope: !3232)
!3308 = !DILocation(line: 129, column: 40, scope: !3232)
!3309 = !DILocation(line: 129, column: 44, scope: !3232)
!3310 = !DILocation(line: 129, column: 3, scope: !3232)
!3311 = !DILocation(line: 131, column: 27, scope: !3312)
!3312 = distinct !DILexicalBlock(scope: !3232, file: !3, line: 131, column: 7)
!3313 = !DILocation(line: 131, column: 7, scope: !3312)
!3314 = !DILocation(line: 131, column: 32, scope: !3312)
!3315 = !DILocation(line: 131, column: 7, scope: !3232)
!3316 = !DILocation(line: 132, column: 4, scope: !3312)
!3317 = !DILocation(line: 133, column: 12, scope: !3232)
!3318 = !DILocation(line: 133, column: 9, scope: !3232)
!3319 = distinct !{!3319, !3229, !3320}
!3320 = !DILocation(line: 134, column: 2, scope: !3202)
!3321 = !DILocation(line: 136, column: 2, scope: !3202)
!3322 = !DILocation(line: 137, column: 1, scope: !3202)
!3323 = distinct !DISubprogram(name: "dibx000_is_i2c_done", scope: !3, file: !3, line: 77, type: !3324, scopeLine: 78, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3324 = !DISubroutineType(types: !3325)
!3325 = !{!106, !161}
!3326 = !DILocalVariable(name: "mst", arg: 1, scope: !3323, file: !3, line: 77, type: !161)
!3327 = !DILocation(line: 77, column: 59, scope: !3323)
!3328 = !DILocalVariable(name: "i", scope: !3323, file: !3, line: 79, type: !106)
!3329 = !DILocation(line: 79, column: 6, scope: !3323)
!3330 = !DILocalVariable(name: "status", scope: !3323, file: !3, line: 80, type: !72)
!3331 = !DILocation(line: 80, column: 6, scope: !3323)
!3332 = !DILocation(line: 82, column: 2, scope: !3323)
!3333 = !DILocation(line: 82, column: 38, scope: !3323)
!3334 = !DILocation(line: 82, column: 43, scope: !3323)
!3335 = !DILocation(line: 82, column: 48, scope: !3323)
!3336 = !DILocation(line: 82, column: 57, scope: !3323)
!3337 = !DILocation(line: 82, column: 20, scope: !3323)
!3338 = !DILocation(line: 82, column: 18, scope: !3323)
!3339 = !DILocation(line: 82, column: 10, scope: !3323)
!3340 = !DILocation(line: 82, column: 63, scope: !3323)
!3341 = !DILocation(line: 82, column: 73, scope: !3323)
!3342 = !DILocation(line: 82, column: 78, scope: !3323)
!3343 = !DILocation(line: 82, column: 81, scope: !3323)
!3344 = !DILocation(line: 82, column: 85, scope: !3323)
!3345 = !DILocation(line: 0, scope: !3323)
!3346 = distinct !{!3346, !3332, !3347}
!3347 = !DILocation(line: 83, column: 3, scope: !3323)
!3348 = !DILocation(line: 86, column: 6, scope: !3349)
!3349 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 86, column: 6)
!3350 = !DILocation(line: 86, column: 8, scope: !3349)
!3351 = !DILocation(line: 86, column: 6, scope: !3323)
!3352 = !DILocation(line: 87, column: 3, scope: !3349)
!3353 = !DILocation(line: 90, column: 7, scope: !3354)
!3354 = distinct !DILexicalBlock(scope: !3323, file: !3, line: 90, column: 6)
!3355 = !DILocation(line: 90, column: 14, scope: !3354)
!3356 = !DILocation(line: 90, column: 24, scope: !3354)
!3357 = !DILocation(line: 90, column: 6, scope: !3323)
!3358 = !DILocation(line: 91, column: 3, scope: !3354)
!3359 = !DILocation(line: 93, column: 2, scope: !3323)
!3360 = !DILocation(line: 94, column: 1, scope: !3323)
!3361 = distinct !DISubprogram(name: "dibx000_read_word", scope: !3, file: !3, line: 46, type: !3362, scopeLine: 47, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3362 = !DISubroutineType(types: !3363)
!3363 = !{!72, !161, !72}
!3364 = !DILocalVariable(name: "mst", arg: 1, scope: !3361, file: !3, line: 46, type: !161)
!3365 = !DILocation(line: 46, column: 57, scope: !3361)
!3366 = !DILocalVariable(name: "reg", arg: 2, scope: !3361, file: !3, line: 46, type: !72)
!3367 = !DILocation(line: 46, column: 66, scope: !3361)
!3368 = !DILocalVariable(name: "ret", scope: !3361, file: !3, line: 48, type: !72)
!3369 = !DILocation(line: 48, column: 6, scope: !3361)
!3370 = !DILocation(line: 50, column: 32, scope: !3371)
!3371 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 50, column: 6)
!3372 = !DILocation(line: 50, column: 37, scope: !3371)
!3373 = !DILocation(line: 50, column: 6, scope: !3371)
!3374 = !DILocation(line: 50, column: 54, scope: !3371)
!3375 = !DILocation(line: 50, column: 6, scope: !3361)
!3376 = !DILocation(line: 51, column: 3, scope: !3377)
!3377 = distinct !DILexicalBlock(scope: !3371, file: !3, line: 50, column: 59)
!3378 = !DILocation(line: 51, column: 3, scope: !3379)
!3379 = distinct !DILexicalBlock(scope: !3380, file: !3, line: 51, column: 3)
!3380 = distinct !DILexicalBlock(scope: !3377, file: !3, line: 51, column: 3)
!3381 = !DILocation(line: 51, column: 3, scope: !3380)
!3382 = !DILocation(line: 52, column: 3, scope: !3377)
!3383 = !DILocation(line: 55, column: 29, scope: !3361)
!3384 = !DILocation(line: 55, column: 33, scope: !3361)
!3385 = !DILocation(line: 55, column: 2, scope: !3361)
!3386 = !DILocation(line: 55, column: 7, scope: !3361)
!3387 = !DILocation(line: 55, column: 27, scope: !3361)
!3388 = !DILocation(line: 56, column: 29, scope: !3361)
!3389 = !DILocation(line: 56, column: 33, scope: !3361)
!3390 = !DILocation(line: 56, column: 2, scope: !3361)
!3391 = !DILocation(line: 56, column: 7, scope: !3361)
!3392 = !DILocation(line: 56, column: 27, scope: !3361)
!3393 = !DILocation(line: 58, column: 9, scope: !3361)
!3394 = !DILocation(line: 58, column: 14, scope: !3361)
!3395 = !DILocation(line: 58, column: 2, scope: !3361)
!3396 = !DILocation(line: 59, column: 21, scope: !3361)
!3397 = !DILocation(line: 59, column: 26, scope: !3361)
!3398 = !DILocation(line: 59, column: 2, scope: !3361)
!3399 = !DILocation(line: 59, column: 7, scope: !3361)
!3400 = !DILocation(line: 59, column: 14, scope: !3361)
!3401 = !DILocation(line: 59, column: 19, scope: !3361)
!3402 = !DILocation(line: 60, column: 2, scope: !3361)
!3403 = !DILocation(line: 60, column: 7, scope: !3361)
!3404 = !DILocation(line: 60, column: 14, scope: !3361)
!3405 = !DILocation(line: 60, column: 20, scope: !3361)
!3406 = !DILocation(line: 61, column: 20, scope: !3361)
!3407 = !DILocation(line: 61, column: 25, scope: !3361)
!3408 = !DILocation(line: 61, column: 2, scope: !3361)
!3409 = !DILocation(line: 61, column: 7, scope: !3361)
!3410 = !DILocation(line: 61, column: 14, scope: !3361)
!3411 = !DILocation(line: 61, column: 18, scope: !3361)
!3412 = !DILocation(line: 62, column: 2, scope: !3361)
!3413 = !DILocation(line: 62, column: 7, scope: !3361)
!3414 = !DILocation(line: 62, column: 14, scope: !3361)
!3415 = !DILocation(line: 62, column: 18, scope: !3361)
!3416 = !DILocation(line: 63, column: 21, scope: !3361)
!3417 = !DILocation(line: 63, column: 26, scope: !3361)
!3418 = !DILocation(line: 63, column: 2, scope: !3361)
!3419 = !DILocation(line: 63, column: 7, scope: !3361)
!3420 = !DILocation(line: 63, column: 14, scope: !3361)
!3421 = !DILocation(line: 63, column: 19, scope: !3361)
!3422 = !DILocation(line: 64, column: 2, scope: !3361)
!3423 = !DILocation(line: 64, column: 7, scope: !3361)
!3424 = !DILocation(line: 64, column: 14, scope: !3361)
!3425 = !DILocation(line: 64, column: 20, scope: !3361)
!3426 = !DILocation(line: 65, column: 20, scope: !3361)
!3427 = !DILocation(line: 65, column: 25, scope: !3361)
!3428 = !DILocation(line: 65, column: 2, scope: !3361)
!3429 = !DILocation(line: 65, column: 7, scope: !3361)
!3430 = !DILocation(line: 65, column: 14, scope: !3361)
!3431 = !DILocation(line: 65, column: 18, scope: !3361)
!3432 = !DILocation(line: 66, column: 2, scope: !3361)
!3433 = !DILocation(line: 66, column: 7, scope: !3361)
!3434 = !DILocation(line: 66, column: 14, scope: !3361)
!3435 = !DILocation(line: 66, column: 18, scope: !3361)
!3436 = !DILocation(line: 68, column: 19, scope: !3437)
!3437 = distinct !DILexicalBlock(scope: !3361, file: !3, line: 68, column: 6)
!3438 = !DILocation(line: 68, column: 24, scope: !3437)
!3439 = !DILocation(line: 68, column: 34, scope: !3437)
!3440 = !DILocation(line: 68, column: 39, scope: !3437)
!3441 = !DILocation(line: 68, column: 6, scope: !3437)
!3442 = !DILocation(line: 68, column: 47, scope: !3437)
!3443 = !DILocation(line: 68, column: 6, scope: !3361)
!3444 = !DILocation(line: 69, column: 3, scope: !3437)
!3445 = !DILocation(line: 69, column: 3, scope: !3446)
!3446 = distinct !DILexicalBlock(scope: !3447, file: !3, line: 69, column: 3)
!3447 = distinct !DILexicalBlock(scope: !3437, file: !3, line: 69, column: 3)
!3448 = !DILocation(line: 69, column: 3, scope: !3447)
!3449 = !DILocation(line: 71, column: 9, scope: !3361)
!3450 = !DILocation(line: 71, column: 14, scope: !3361)
!3451 = !DILocation(line: 71, column: 33, scope: !3361)
!3452 = !DILocation(line: 71, column: 41, scope: !3361)
!3453 = !DILocation(line: 71, column: 46, scope: !3361)
!3454 = !DILocation(line: 71, column: 39, scope: !3361)
!3455 = !DILocation(line: 71, column: 8, scope: !3361)
!3456 = !DILocation(line: 71, column: 6, scope: !3361)
!3457 = !DILocation(line: 72, column: 16, scope: !3361)
!3458 = !DILocation(line: 72, column: 21, scope: !3361)
!3459 = !DILocation(line: 72, column: 2, scope: !3361)
!3460 = !DILocation(line: 74, column: 9, scope: !3361)
!3461 = !DILocation(line: 74, column: 2, scope: !3361)
!3462 = !DILocation(line: 75, column: 1, scope: !3361)
!3463 = distinct !DISubprogram(name: "dibx000_i2c_master_xfer_gpio34", scope: !3, file: !3, line: 231, type: !179, scopeLine: 232, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3464 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3463, file: !3, line: 231, type: !181)
!3465 = !DILocation(line: 231, column: 63, scope: !3463)
!3466 = !DILocalVariable(name: "msg", arg: 2, scope: !3463, file: !3, line: 231, type: !182)
!3467 = !DILocation(line: 231, column: 88, scope: !3463)
!3468 = !DILocalVariable(name: "num", arg: 3, scope: !3463, file: !3, line: 231, type: !106)
!3469 = !DILocation(line: 231, column: 99, scope: !3463)
!3470 = !DILocalVariable(name: "mst", scope: !3463, file: !3, line: 233, type: !161)
!3471 = !DILocation(line: 233, column: 29, scope: !3463)
!3472 = !DILocation(line: 233, column: 52, scope: !3463)
!3473 = !DILocation(line: 233, column: 35, scope: !3463)
!3474 = !DILocalVariable(name: "msg_index", scope: !3463, file: !3, line: 234, type: !106)
!3475 = !DILocation(line: 234, column: 6, scope: !3463)
!3476 = !DILocalVariable(name: "ret", scope: !3463, file: !3, line: 235, type: !106)
!3477 = !DILocation(line: 235, column: 6, scope: !3463)
!3478 = !DILocation(line: 237, column: 31, scope: !3463)
!3479 = !DILocation(line: 237, column: 2, scope: !3463)
!3480 = !DILocation(line: 238, column: 17, scope: !3481)
!3481 = distinct !DILexicalBlock(scope: !3463, file: !3, line: 238, column: 2)
!3482 = !DILocation(line: 238, column: 7, scope: !3481)
!3483 = !DILocation(line: 238, column: 22, scope: !3484)
!3484 = distinct !DILexicalBlock(scope: !3481, file: !3, line: 238, column: 2)
!3485 = !DILocation(line: 238, column: 34, scope: !3484)
!3486 = !DILocation(line: 238, column: 32, scope: !3484)
!3487 = !DILocation(line: 238, column: 2, scope: !3481)
!3488 = !DILocation(line: 239, column: 7, scope: !3489)
!3489 = distinct !DILexicalBlock(scope: !3490, file: !3, line: 239, column: 7)
!3490 = distinct !DILexicalBlock(scope: !3484, file: !3, line: 238, column: 52)
!3491 = !DILocation(line: 239, column: 11, scope: !3489)
!3492 = !DILocation(line: 239, column: 22, scope: !3489)
!3493 = !DILocation(line: 239, column: 28, scope: !3489)
!3494 = !DILocation(line: 239, column: 7, scope: !3490)
!3495 = !DILocation(line: 240, column: 34, scope: !3496)
!3496 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 239, column: 40)
!3497 = !DILocation(line: 240, column: 40, scope: !3496)
!3498 = !DILocation(line: 240, column: 44, scope: !3496)
!3499 = !DILocation(line: 240, column: 10, scope: !3496)
!3500 = !DILocation(line: 240, column: 8, scope: !3496)
!3501 = !DILocation(line: 241, column: 8, scope: !3502)
!3502 = distinct !DILexicalBlock(scope: !3496, file: !3, line: 241, column: 8)
!3503 = !DILocation(line: 241, column: 12, scope: !3502)
!3504 = !DILocation(line: 241, column: 8, scope: !3496)
!3505 = !DILocation(line: 242, column: 5, scope: !3502)
!3506 = !DILocation(line: 243, column: 3, scope: !3496)
!3507 = !DILocation(line: 244, column: 35, scope: !3508)
!3508 = distinct !DILexicalBlock(scope: !3489, file: !3, line: 243, column: 10)
!3509 = !DILocation(line: 244, column: 41, scope: !3508)
!3510 = !DILocation(line: 244, column: 45, scope: !3508)
!3511 = !DILocation(line: 244, column: 10, scope: !3508)
!3512 = !DILocation(line: 244, column: 8, scope: !3508)
!3513 = !DILocation(line: 245, column: 8, scope: !3514)
!3514 = distinct !DILexicalBlock(scope: !3508, file: !3, line: 245, column: 8)
!3515 = !DILocation(line: 245, column: 12, scope: !3514)
!3516 = !DILocation(line: 245, column: 8, scope: !3508)
!3517 = !DILocation(line: 246, column: 5, scope: !3514)
!3518 = !DILocation(line: 248, column: 2, scope: !3490)
!3519 = !DILocation(line: 238, column: 48, scope: !3484)
!3520 = !DILocation(line: 238, column: 2, scope: !3484)
!3521 = distinct !{!3521, !3487, !3522}
!3522 = !DILocation(line: 248, column: 2, scope: !3481)
!3523 = !DILocation(line: 250, column: 9, scope: !3463)
!3524 = !DILocation(line: 250, column: 2, scope: !3463)
!3525 = !DILocation(line: 251, column: 1, scope: !3463)
!3526 = distinct !DISubprogram(name: "dibx000_i2c_gated_gpio67_xfer", scope: !3, file: !3, line: 285, type: !179, scopeLine: 287, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition, unit: !2, retainedNodes: !238)
!3527 = !DILocalVariable(name: "i2c_adap", arg: 1, scope: !3526, file: !3, line: 285, type: !181)
!3528 = !DILocation(line: 285, column: 62, scope: !3526)
!3529 = !DILocalVariable(name: "msg", arg: 2, scope: !3526, file: !3, line: 286, type: !182)
!3530 = !DILocation(line: 286, column: 21, scope: !3526)
!3531 = !DILocalVariable(name: "num", arg: 3, scope: !3526, file: !3, line: 286, type: !106)
!3532 = !DILocation(line: 286, column: 32, scope: !3526)
!3533 = !DILocalVariable(name: "mst", scope: !3526, file: !3, line: 288, type: !161)
!3534 = !DILocation(line: 288, column: 29, scope: !3526)
!3535 = !DILocation(line: 288, column: 52, scope: !3526)
!3536 = !DILocation(line: 288, column: 35, scope: !3526)
!3537 = !DILocalVariable(name: "ret", scope: !3526, file: !3, line: 289, type: !106)
!3538 = !DILocation(line: 289, column: 6, scope: !3526)
!3539 = !DILocation(line: 291, column: 6, scope: !3540)
!3540 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 291, column: 6)
!3541 = !DILocation(line: 291, column: 10, scope: !3540)
!3542 = !DILocation(line: 291, column: 6, scope: !3526)
!3543 = !DILocation(line: 292, column: 3, scope: !3544)
!3544 = distinct !DILexicalBlock(scope: !3540, file: !3, line: 291, column: 16)
!3545 = !DILocation(line: 292, column: 3, scope: !3546)
!3546 = distinct !DILexicalBlock(scope: !3547, file: !3, line: 292, column: 3)
!3547 = distinct !DILexicalBlock(scope: !3544, file: !3, line: 292, column: 3)
!3548 = !DILocation(line: 292, column: 3, scope: !3547)
!3549 = !DILocation(line: 294, column: 3, scope: !3544)
!3550 = !DILocation(line: 297, column: 31, scope: !3526)
!3551 = !DILocation(line: 297, column: 2, scope: !3526)
!3552 = !DILocation(line: 299, column: 32, scope: !3553)
!3553 = distinct !DILexicalBlock(scope: !3526, file: !3, line: 299, column: 6)
!3554 = !DILocation(line: 299, column: 37, scope: !3553)
!3555 = !DILocation(line: 299, column: 6, scope: !3553)
!3556 = !DILocation(line: 299, column: 54, scope: !3553)
!3557 = !DILocation(line: 299, column: 6, scope: !3526)
!3558 = !DILocation(line: 300, column: 3, scope: !3559)
!3559 = distinct !DILexicalBlock(scope: !3553, file: !3, line: 299, column: 59)
!3560 = !DILocation(line: 300, column: 3, scope: !3561)
!3561 = distinct !DILexicalBlock(scope: !3562, file: !3, line: 300, column: 3)
!3562 = distinct !DILexicalBlock(scope: !3559, file: !3, line: 300, column: 3)
!3563 = !DILocation(line: 300, column: 3, scope: !3562)
!3564 = !DILocation(line: 301, column: 3, scope: !3559)
!3565 = !DILocation(line: 304, column: 9, scope: !3526)
!3566 = !DILocation(line: 304, column: 14, scope: !3526)
!3567 = !DILocation(line: 304, column: 2, scope: !3526)
!3568 = !DILocation(line: 304, column: 52, scope: !3526)
!3569 = !DILocation(line: 304, column: 50, scope: !3526)
!3570 = !DILocation(line: 304, column: 47, scope: !3526)
!3571 = !DILocation(line: 304, column: 45, scope: !3526)
!3572 = !DILocation(line: 307, column: 24, scope: !3526)
!3573 = !DILocation(line: 307, column: 30, scope: !3526)
!3574 = !DILocation(line: 307, column: 35, scope: !3526)
!3575 = !DILocation(line: 307, column: 56, scope: !3526)
!3576 = !DILocation(line: 307, column: 63, scope: !3526)
!3577 = !DILocation(line: 307, column: 2, scope: !3526)
!3578 = !DILocation(line: 308, column: 21, scope: !3526)
!3579 = !DILocation(line: 308, column: 26, scope: !3526)
!3580 = !DILocation(line: 308, column: 2, scope: !3526)
!3581 = !DILocation(line: 308, column: 7, scope: !3526)
!3582 = !DILocation(line: 308, column: 14, scope: !3526)
!3583 = !DILocation(line: 308, column: 19, scope: !3526)
!3584 = !DILocation(line: 309, column: 21, scope: !3526)
!3585 = !DILocation(line: 309, column: 26, scope: !3526)
!3586 = !DILocation(line: 309, column: 2, scope: !3526)
!3587 = !DILocation(line: 309, column: 7, scope: !3526)
!3588 = !DILocation(line: 309, column: 14, scope: !3526)
!3589 = !DILocation(line: 309, column: 18, scope: !3526)
!3590 = !DILocation(line: 310, column: 2, scope: !3526)
!3591 = !DILocation(line: 310, column: 7, scope: !3526)
!3592 = !DILocation(line: 310, column: 14, scope: !3526)
!3593 = !DILocation(line: 310, column: 18, scope: !3526)
!3594 = !DILocation(line: 312, column: 10, scope: !3526)
!3595 = !DILocation(line: 312, column: 15, scope: !3526)
!3596 = !DILocation(line: 312, column: 2, scope: !3526)
!3597 = !DILocation(line: 312, column: 23, scope: !3526)
!3598 = !DILocation(line: 312, column: 53, scope: !3526)
!3599 = !DILocation(line: 312, column: 51, scope: !3526)
!3600 = !DILocation(line: 315, column: 24, scope: !3526)
!3601 = !DILocation(line: 315, column: 30, scope: !3526)
!3602 = !DILocation(line: 315, column: 35, scope: !3526)
!3603 = !DILocation(line: 315, column: 2, scope: !3526)
!3604 = !DILocation(line: 316, column: 27, scope: !3526)
!3605 = !DILocation(line: 316, column: 32, scope: !3526)
!3606 = !DILocation(line: 316, column: 2, scope: !3526)
!3607 = !DILocation(line: 316, column: 7, scope: !3526)
!3608 = !DILocation(line: 316, column: 11, scope: !3526)
!3609 = !DILocation(line: 316, column: 15, scope: !3526)
!3610 = !DILocation(line: 316, column: 20, scope: !3526)
!3611 = !DILocation(line: 316, column: 25, scope: !3526)
!3612 = !DILocation(line: 317, column: 27, scope: !3526)
!3613 = !DILocation(line: 317, column: 32, scope: !3526)
!3614 = !DILocation(line: 317, column: 2, scope: !3526)
!3615 = !DILocation(line: 317, column: 7, scope: !3526)
!3616 = !DILocation(line: 317, column: 11, scope: !3526)
!3617 = !DILocation(line: 317, column: 15, scope: !3526)
!3618 = !DILocation(line: 317, column: 20, scope: !3526)
!3619 = !DILocation(line: 317, column: 24, scope: !3526)
!3620 = !DILocation(line: 318, column: 2, scope: !3526)
!3621 = !DILocation(line: 318, column: 7, scope: !3526)
!3622 = !DILocation(line: 318, column: 11, scope: !3526)
!3623 = !DILocation(line: 318, column: 15, scope: !3526)
!3624 = !DILocation(line: 318, column: 20, scope: !3526)
!3625 = !DILocation(line: 318, column: 24, scope: !3526)
!3626 = !DILocation(line: 320, column: 22, scope: !3526)
!3627 = !DILocation(line: 320, column: 27, scope: !3526)
!3628 = !DILocation(line: 320, column: 37, scope: !3526)
!3629 = !DILocation(line: 320, column: 42, scope: !3526)
!3630 = !DILocation(line: 320, column: 51, scope: !3526)
!3631 = !DILocation(line: 320, column: 49, scope: !3526)
!3632 = !DILocation(line: 320, column: 9, scope: !3526)
!3633 = !DILocation(line: 320, column: 63, scope: !3526)
!3634 = !DILocation(line: 320, column: 61, scope: !3526)
!3635 = !DILocation(line: 320, column: 56, scope: !3526)
!3636 = !DILocation(line: 321, column: 4, scope: !3526)
!3637 = !DILocation(line: 320, column: 6, scope: !3526)
!3638 = !DILocation(line: 323, column: 16, scope: !3526)
!3639 = !DILocation(line: 323, column: 21, scope: !3526)
!3640 = !DILocation(line: 323, column: 2, scope: !3526)
!3641 = !DILocation(line: 324, column: 9, scope: !3526)
!3642 = !DILocation(line: 324, column: 2, scope: !3526)
!3643 = !DILocation(line: 325, column: 1, scope: !3526)
